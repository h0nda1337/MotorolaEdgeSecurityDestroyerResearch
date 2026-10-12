from pathlib import Path
import subprocess
import json
import re
import hashlib
base=Path(__file__).parent
manifest=json.loads((base/'readonly-package-manifest.json').read_text())
assert len(manifest)==4 and {x['name'] for x in manifest}=={'index.xml','pkg.xml','default.xml','programmer.elf'}
command=[r'C:\Users\USER\Documents\Codex\2026-10-11\ana\work\edl-research\blankflash\qboot.exe',
         '--port=COM27','--debug=1','blank-flash',str(base/'singleimage-readonly.bin')]
try:
    result=subprocess.run(command,cwd=base,capture_output=True,timeout=40)
    output=result.stdout+result.stderr
    status={'returncode':result.returncode,'timed_out':False}
except subprocess.TimeoutExpired as error:
    output=(error.stdout or b'')+(error.stderr or b'')
    status={'returncode':None,'timed_out':True}
(base/'qboot-readonly-private.log').write_bytes(output)
(base/'qboot-readonly-result.json').write_text(json.dumps(status,indent=2))
print(json.dumps(status))
for line in output.decode('utf-8',errors='replace').splitlines():
    if re.search(r'serial|cpu\.id|hwid|pk_hash|cpu\.serial',line,re.I):
        print('[hardware identifier omitted]')
    else:
        print(line)
