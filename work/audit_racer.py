"""Read-only audit of supplied Motorola Racer material. Never contacts a phone.

All outputs omit device IDs and unlock-data bytes. Dependencies: capstone,
cryptography. Outputs are written only to the explicitly supplied output folder.
"""
from pathlib import Path
import argparse
import hashlib
import json
import re
import struct
from collections import Counter
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM
from cryptography import x509
from cryptography.hazmat.primitives.asymmetric import rsa


def read_text(path):
    raw = path.read_bytes()
    encoding = 'utf-16' if raw.startswith((b'\xff\xfe', b'\xfe\xff')) else 'utf-8-sig'
    return raw.decode(encoding, errors='replace')


def digest(path):
    h = hashlib.sha256()
    with path.open('rb') as stream:
        for chunk in iter(lambda: stream.read(8 * 1024 * 1024), b''):
            h.update(chunk)
    return h.hexdigest()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('root', type=Path)
    parser.add_argument('output', type=Path)
    parser.add_argument('--compare-firmware', action='store_true')
    args = parser.parse_args()
    root, out = args.root.resolve(), args.output.resolve()
    if root == out or root in out.parents:
        raise SystemExit('Output must be outside the supplied material.')
    out.mkdir(parents=True, exist_ok=True)
    files = sorted(p for p in root.rglob('*') if p.is_file())
    inventory = [{'path': str(p.relative_to(root)), 'bytes': p.stat().st_size} for p in files]
    (out / 'inventario.json').write_text(json.dumps(inventory, indent=2), encoding='utf-8')
    report = {'files': len(files), 'total_bytes': sum(p.stat().st_size for p in files)}
    report['extensions'] = dict(Counter(p.suffix.lower() or '(none)' for p in files))
    module = root / 'Analisis-Bootloader/MotoBootModule/MotoBootModule.efi'
    data = module.read_bytes()
    pe = struct.unpack_from('<I', data, 0x3c)[0]
    if data[pe:pe + 4] != b'PE\0\0':
        raise ValueError('Not PE')
    machine, count = struct.unpack_from('<HH', data, pe + 4)
    optional_size = struct.unpack_from('<H', data, pe + 20)[0]
    imagebase = struct.unpack_from('<Q', data, pe + 24 + 24)[0]
    sections = []
    for index in range(count):
        off = pe + 24 + optional_size + index * 40
        name = data[off:off + 8].split(b'\0', 1)[0].decode()
        vsize, rva, rsize, raw = struct.unpack_from('<IIII', data, off + 8)
        sections.append({'name': name, 'rva': rva, 'virtual_size': vsize,
                         'raw': raw, 'raw_size': rsize})
    report['pe'] = {'sha256': digest(module), 'machine': hex(machine),
                    'imagebase': imagebase, 'sections': sections}

    def bytes_at(rva, length):
        for section in sections:
            delta = rva - section['rva']
            if 0 <= delta and delta + length <= section['raw_size']:
                return data[section['raw'] + delta:section['raw'] + delta + length]
        raise ValueError(f'Unmapped RVA {rva:x}')

    def cstring(rva):
        raw = bytes_at(rva, min(160, len(data) - rva))
        return raw.split(b'\0', 1)[0].decode('ascii', errors='replace')

    table = []
    for off in range(0xcc760, 0xcc9a0, 0x18):
        name, handler, flags = struct.unpack('<QQQ', bytes_at(off, 24))
        table.append({'rva': hex(off), 'name': cstring(name),
                      'handler': hex(handler), 'flags': hex(flags)})
    report['oem_table'] = table
    md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
    ranges = {'unlock_lock': (0x22d08, 0x23230), 'validate_password': (0x2b978, 0x2bb58),
              'hash_core': (0x2d598, 0x2d694), 'dbvc_property': (0x23b78, 0x23bc0),
              'datablock_reader': (0x38608, 0x387d4), 'cid_load': (0x2ae90, 0x2b020),
              'cid_prov': (0x2bcc0, 0x2bf58), 'db_header': (0x2ee88, 0x2f064),
              'db_validate': (0x2e518, 0x2e77c), 'db_signatures': (0x2d698, 0x2d7f8),
              'blankflash_permission': (0x21d30, 0x21e08),
              'security_state_init': (0x20ed0, 0x214b8),
              'ssm_wrappers': (0xcc80, 0xcce0)}
    for label, (start, end) in ranges.items():
        instructions = [f'{i.address:08x}  {i.mnemonic:8} {i.op_str}'
                        for i in md.disasm(bytes_at(start, end - start), start)]
        (out / f'{label}.asm').write_text('\n'.join(instructions) + '\n', encoding='utf-8')
    md.skipdata = True
    watched = {0xd2968: 'boot_state', 0xd2990: 'factory_state_candidate',
               0xd2975: 'oem_permission_flags', 0xd0364: 'cached_cid'}
    recent = {}
    refs = []
    # This is only a linear ADRP+ADD/LDR/STR heuristic. Report as candidates.
    for ins in md.disasm(bytes_at(0x1000, 0xa4000 - 0x1000), 0x1000):
        recent = {r: v for r, v in recent.items() if ins.address - v[1] <= 96}
        if ins.mnemonic == 'adrp':
            match = re.fullmatch(r'(x\d+), #?(0x[\da-f]+)', ins.op_str)
            if match:
                recent[match[1]] = (int(match[2], 16), ins.address)
        elif ins.mnemonic == 'add':
            match = re.fullmatch(r'(x\d+), (x\d+), #?(0x[\da-f]+|\d+)', ins.op_str)
            if match and match[2] in recent:
                address = recent[match[2]][0] + int(match[3], 0)
                recent[match[1]] = (address, ins.address)
                if address in watched:
                    refs.append({'pc': hex(ins.address), 'target': hex(address),
                                 'label': watched[address], 'instruction': f'{ins.mnemonic} {ins.op_str}'})
        elif ins.mnemonic.startswith(('ldr', 'str')):
            match = re.search(r'\[(x\d+)(?:, #?(0x[\da-f]+|\d+))?\]', ins.op_str)
            if match and match[1] in recent:
                address = recent[match[1]][0] + int(match[2] or '0', 0)
                if address in watched:
                    refs.append({'pc': hex(ins.address), 'target': hex(address),
                                 'label': watched[address], 'instruction': f'{ins.mnemonic} {ins.op_str}'})
        if ins.mnemonic in ('bl', 'blr'):
            recent = {r: v for r, v in recent.items() if int(r[1:]) >= 19}
        elif ins.mnemonic in ('ret', 'b', 'br'):
            recent.clear()
    report['candidate_global_refs'] = refs
    report['certificates'] = []
    for name in ('trust-anchor-1.bin', 'trust-anchor-2.bin'):
        path = module.parent / 'TrustBlobs' / name
        certificate = x509.load_der_x509_certificate(path.read_bytes())
        key = certificate.public_key()
        report['certificates'].append({'name': name, 'sha256': digest(path),
            'subject': certificate.subject.rfc4514_string(),
            'issuer': certificate.issuer.rfc4514_string(),
            'signature_hash': certificate.signature_hash_algorithm.name,
            'public_key_type': type(key).__name__, 'rsa_bits': key.key_size if isinstance(key, rsa.RSAPublicKey) else None,
            'not_before': certificate.not_valid_before_utc.isoformat(), 'not_after': certificate.not_valid_after_utc.isoformat()})
    report['extension_oid_label_is_wrong'] = (module.parent / 'TrustBlobs/extension-oid.bin').read_bytes() == b'PKI Server'
    text = read_text(root / 'PRIVATE/unlock-data-privado.txt')
    parts = []
    for line in text.splitlines():
        match = re.search(r'\(bootloader\)\s*([a-fA-F0-9#]+)\s*$', line)
        if match:
            parts.append(match[1])
    unlock = ''.join(parts).split('#')
    if len(unlock) == 4 and all(re.fullmatch(r'[\da-fA-F]+', p) for p in unlock):
        rawparts = [bytes.fromhex(p) for p in unlock]
        report['unlock_capture'] = {'part_bytes': [len(p) for p in rawparts],
                                    'hash_bytes': len(rawparts[2]),
                                    'hash_is_all_ff': all(b == 0xff for b in rawparts[2]),
                                    'version_inferred_from_hash': {20: 1, 32: 2}.get(len(rawparts[2]))}
    else:
        report['unlock_capture'] = {'format_error': True, 'parsed_parts': len(unlock)}
    request = (root / 'PRIVATE/cid-prov-req-v1.bin').read_bytes()
    inner = request[0x54:]
    version = int.from_bytes(inner[2:4], 'big')
    tail = 0x28 if version == 1 else 0x2a
    report['cid_request'] = {'bytes': len(request), 'command': hex(int.from_bytes(inner[:2], 'big')),
                            'version': version, 'inner_bytes': len(inner),
                            'declared_inner_bytes': int.from_bytes(inner[6:8], 'big'),
                            'binding_tail_zero': inner[12:24] == bytes(12),
                            'placeholder_ones20': inner[tail + 0x10:tail + 0x24] == b'1' * 20,
                            'placeholder_ff': all(v == 0xff for v in inner[tail + 0x26:])}
    critical = ['Firmware-Exacto/bootloader.img', 'Analisis-Bootloader/Bootloader-Extraido/15_abl.elf']
    report['critical_hashes'] = {p: digest(root / p) for p in critical}
    container = (root / critical[0]).read_bytes()
    abl = (root / critical[1]).read_bytes()
    report['abl_found_exactly_in_container'] = container.find(abl) >= 0
    report['module_matches_extracted_pe'] = any(p.stat().st_size == len(data) and p.read_bytes() == data
                                              for p in (root / 'Analisis-Bootloader/ABL').rglob('body.bin'))
    if args.compare_firmware:
        rsa_dirs = [p for p in (root / 'Firmware-RSA/RomFiles').iterdir() if p.is_dir() and p.name.startswith('RACER')]
        matches = []
        for p in sorted((root / 'Firmware-Exacto').iterdir()):
            if p.is_file() and (p.suffix in ('.img', '.bin', '.nvm') or 'sparsechunk' in p.name):
                q = rsa_dirs[0] / p.name if rsa_dirs else None
                if q is not None and q.exists():
                    h = digest(p)
                    matches.append({'file': p.name, 'bytes': p.stat().st_size, 'sha256': h,
                                    'same_as_rsa': h == digest(q)})
                else:
                    matches.append({'file': p.name, 'same_as_rsa': None})
        report['firmware_comparison'] = matches
    (out / 'auditoria.json').write_text(json.dumps(report, indent=2), encoding='utf-8')
    print(json.dumps(report, indent=2))


if __name__ == '__main__':
    main()
