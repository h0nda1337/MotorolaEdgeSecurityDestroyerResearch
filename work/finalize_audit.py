"""Package sanitized evidence; read selected Android properties over authorized USB."""
from pathlib import Path
from datetime import datetime, timezone
import hashlib
import json
import math
import shutil
import subprocess
import zipfile
from cryptography.hazmat.primitives.asymmetric import rsa
from cryptography.hazmat.primitives.serialization import Encoding, PublicFormat

base = Path(__file__).resolve().parent.parent
source = Path(r'C:\Users\USER\Desktop\Motorola-Edge-Racer')
output = base / 'outputs'
output.mkdir(exist_ok=True)
stage = base / 'work' / 'deliverable-evidence'
stage.mkdir(exist_ok=True)

def adb(*args):
    result = subprocess.run(['adb', '-d', *args], capture_output=True,
                            text=True, encoding='utf-8', timeout=15)
    if result.returncode:
        raise RuntimeError(result.stderr.strip() or 'ADB command failed')
    return result.stdout.strip()

if adb('shell', 'getprop', 'ro.product.device') != 'racer':
    raise RuntimeError('The USB device is not racer; stop collection.')
properties = ['ro.product.model', 'ro.product.device', 'ro.boot.bootloader',
              'ro.boot.flash.locked', 'ro.boot.verifiedbootstate',
              'ro.oem_unlock_supported', 'sys.oem_unlock_allowed', 'ro.carrier',
              'ro.build.version.release', 'ro.build.version.security_patch',
              'ro.boot.hab.cid', 'ro.debuggable', 'ro.secure',
              'sys.usb.config', 'sys.usb.state']
live = {'collected_at_utc': datetime.now(timezone.utc).isoformat(),
        'transport': 'USB', 'adb_state': adb('get-state'),
        'properties': {p: adb('shell', 'getprop', p) for p in properties},
        'adb_enabled': adb('shell', 'settings', 'get', 'global', 'adb_enabled'),
        'adb_wifi_enabled': adb('shell', 'settings', 'get', 'global', 'adb_wifi_enabled'),
        'kernel': adb('shell', 'uname', '-r'), 'selinux': adb('shell', 'getenforce'),
        'cid_read_result': 'adb pull failed: Permission denied',
        'phone_flash_or_erase_performed': False}

audit = json.loads((base / 'work/audit-v2/auditoria.json').read_text(encoding='utf-8'))
first = json.loads((base / 'work/audit/auditoria.json').read_text(encoding='utf-8'))
audit['firmware_comparison'] = first['firmware_comparison']
audit['live_device'] = live
audit['method_limits'] = ['Static ARM64 analysis plus selected read-only ADB checks.',
                          'No exhaustive audit of all kernel or Android app code.',
                          'Heuristic global references are candidates, not a complete control-flow proof.']
data = (source / 'Analisis-Bootloader/MotoBootModule/MotoBootModule.efi').read_bytes()
exponent = int.from_bytes(data[0xd04b0:0xd04b3], 'big')
moduli = [int.from_bytes(data[a:a+128], 'big') for a in (0xd0430, 0xd04b3)]
keys = []
for i, (address, modulus) in enumerate(zip((0xd0430, 0xd04b3), moduli), 1):
    key = rsa.RSAPublicNumbers(exponent, modulus).public_key()
    der = key.public_bytes(Encoding.DER, PublicFormat.SubjectPublicKeyInfo)
    keys.append({'rva': hex(address), 'bits': modulus.bit_length(),
                 'exponent': exponent, 'spki_sha256': hashlib.sha256(der).hexdigest()})
    (stage / f'debug-public-key-{i}.pem').write_bytes(
        key.public_bytes(Encoding.PEM, PublicFormat.SubjectPublicKeyInfo))
audit['debug_token_analysis'] = {
    'public_keys': keys, 'public_moduli_gcd': math.gcd(*moduli),
    'virtual_partition_storage': 'cid + 0xFA00', 'reboot_read_bytes': 0x190,
    'marker_offset': '0x3C', 'marker_hex': '22ff11ee',
    'header_validator': '0x38BF8', 'token_validator': '0x38D00',
    'signature_wrapper': '0x38F70', 'rsa_verify': '0x336F0',
    'pkcs1_decoder': '0x32E78', 'factory_flag_setter': '0x213A8',
    'factory_flag_value': '0x3579', 'binding_bytes': 32,
    'signature_bytes': 128,
    'length_checks_status': 'No input-length comparison visible in 0x38D00; review candidate, no exploit proved.',
    'valid_signed_token_found': False,
    'private_signing_key_found': False,
    'operational_unlock_demonstrated': False}

(stage / 'auditoria.json').write_text(json.dumps(audit, indent=2), encoding='utf-8')
(output / 'estado-usb.json').write_text(json.dumps(live, indent=2), encoding='utf-8')
for path in (base / 'work/audit-v2').glob('*.asm'):
    shutil.copy2(path, stage / path.name)
shutil.copy2(base / 'work/audit-v2/inventario.json', stage / 'inventario.json')
for name in ('audit_racer.py', 'inspect_state.py', 'verify_unlock_key.py'):
    shutil.copy2(base / 'work' / name, stage / name)
shutil.copy2(base / 'work/verify_unlock_key.py', output / 'verificar_clave.py')

print(json.dumps({'live_usb': live['adb_state'], 'model': live['properties']['ro.product.model'],
                  'firmware_pairs': len(audit['firmware_comparison']),
                  'all_firmware_equal': all(p['same_as_rsa'] is True for p in audit['firmware_comparison']),
                  'debug_public_keys': keys, 'gcd': audit['debug_token_analysis']['public_moduli_gcd']}, indent=2))

# The report is added later, then the archive is built in a separate step.
