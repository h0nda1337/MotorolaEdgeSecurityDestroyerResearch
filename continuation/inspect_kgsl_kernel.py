"""Recover KGSL symbols and code from the supplied, exact boot image offline."""
from pathlib import Path
import sys
import json
import hashlib
import logging

base = Path(__file__).resolve().parent
sys.path.insert(0, str(base / 'python-deps'))
from vmlinux_to_elf.core.kallsyms import KallsymsFinder
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM

logging.basicConfig(level=logging.INFO, format='%(message)s')
out = base / 'kernel-analysis'
data = (out / 'kernel-compressed.bin').read_bytes()
finder = KallsymsFinder(data, 64)
symbols = sorted(finder.symbols, key=lambda s: s.virtual_address)
image_base = next(s.virtual_address for s in symbols if s.name == '_text')
for symbol in symbols:
    offset = symbol.virtual_address - image_base
    if 0 <= offset < len(data):
        symbol.file_offset = offset
banner = next(s for s in symbols if s.name == 'linux_banner')
assert data[banner.file_offset:banner.file_offset+14] == b'Linux version '
all_rows = [{'name': s.name, 'va': s.virtual_address, 'offset': s.file_offset}
            for s in symbols]
(out / 'kernel-symbols.json').write_text(json.dumps(all_rows), encoding='utf-8')
targets = ['kgsl_iommu_set_svm_region', 'iommu_addr_in_svm_ranges',
           'kgsl_ioctl_gpuobj_import', '_gpuobj_map_useraddr',
           'kgsl_setup_useraddr', 'kgsl_setup_anon_useraddr',
           'arm_lpae_map_sg', 'arm_lpae_init_pte',
           'kgsl_ioctl_map_user_mem', '_map_usermem_addr']
md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
selected = []
lines = []
for index, symbol in enumerate(symbols):
    if symbol.name in targets:
        row = {'name': symbol.name, 'va': hex(symbol.virtual_address),
               'offset': hex(symbol.file_offset)}
        next_address = next((s.virtual_address for s in symbols[index+1:]
                             if s.virtual_address > symbol.virtual_address), symbol.virtual_address+0x2000)
        size = min(next_address - symbol.virtual_address, 0x8000)
        row['bytes'] = size
        selected.append(row)
        lines.append('\nFUNCTION ' + json.dumps(row))
        code = data[symbol.file_offset:symbol.file_offset+size]
        lines.extend(f'{i.address:016x} {i.mnemonic:8} {i.op_str}'
                     for i in md.disasm(code, symbol.virtual_address))
(out / 'kgsl-candidate-functions.asm').write_text('\n'.join(lines), encoding='utf-8')
result = {'kernel_sha256': hashlib.sha256(data).hexdigest(),
          'symbol_count': len(symbols), 'image_base': hex(image_base), 'linux_banner_offset': hex(banner.file_offset), 'selected': selected,
          'missing_targets': [name for name in targets if name not in {s.name for s in symbols}],
          'phone_io': False}
(out / 'kgsl-inspection.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
print(json.dumps(result, indent=2))
