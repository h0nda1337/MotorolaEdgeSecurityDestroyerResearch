from pathlib import Path
import hashlib
import json
import shutil
import zipfile

base = Path(__file__).resolve().parent.parent
stage = base / 'work/deliverable-evidence'
output = base / 'outputs'
audit_path = stage / 'auditoria.json'
audit = json.loads(audit_path.read_text(encoding='utf-8'))
audit['debug_token_analysis']['invalid_token_skips_postflash_hooks'] = True
audit['debug_token_analysis']['fastboot_result_dispatch'] = {
    '0': '0x6024', '1': '0x6090', '2': '0x608C',
    '3': '0x60F4', '4': '0x6090', '5': '0x61CC'}
audit['debug_token_analysis']['pkcs1_v15_padding_minimum_ff_bytes'] = 8
audit['debug_token_analysis']['length_checks_status'] = 'Guarded ARM64 emulation reproduced out-of-input reads; no invalid-signature acceptance or unlock demonstrated.'
audit['debug_token_analysis']['emulation'] = json.loads((base / 'work/token-emulation.json').read_text(encoding='utf-8'))
audit_path.write_text(json.dumps(audit, indent=2), encoding='utf-8')
shutil.copy2(base / 'work/audit-v2/flash_completion.asm', stage / 'flash_completion.asm')
shutil.copy2(base / 'work/inspect_flash_completion.py', stage / 'inspect_flash_completion.py')
shutil.copy2(base / 'work/emulate_token_parser.py', stage / 'emulate_token_parser.py')
shutil.copy2(base / 'work/token-emulation.json', stage / 'token-emulation.json')
shutil.copy2(output / 'informe-desbloqueo-racer.md', stage / 'informe-desbloqueo-racer.md')
manifest = {p.name: hashlib.sha256(p.read_bytes()).hexdigest()
            for p in sorted(stage.iterdir()) if p.is_file() and p.name != 'sha256.json'}
(stage / 'sha256.json').write_text(json.dumps(manifest, indent=2), encoding='utf-8')
archive = output / 'auditoria-racer.zip'
with zipfile.ZipFile(archive, 'w', zipfile.ZIP_DEFLATED) as package:
    for path in sorted(stage.iterdir()):
        if path.is_file():
            package.write(path, path.name)
with zipfile.ZipFile(archive) as package:
    assert package.testzip() is None
    archived = json.loads(package.read('auditoria.json'))
    assert len(archived['firmware_comparison']) == 21
    assert all(p['same_as_rsa'] for p in archived['firmware_comparison'])
    assert archived['live_device']['adb_state'] == 'device'
    assert archived['debug_token_analysis']['operational_unlock_demonstrated'] is False
print(json.dumps({'archive_files': len(manifest) + 1, 'archive_bytes': archive.stat().st_size,
                  'archive_crc_check': 'PASS', 'USB_authorized': True,
                  'bootloader_unlock_demonstrated': False}, indent=2))
