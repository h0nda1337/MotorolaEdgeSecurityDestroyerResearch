from pathlib import Path
from datetime import datetime, timezone
import json
import re
import subprocess

out = Path('work/fastboot-live')
out.mkdir(exist_ok=True)
commands = [('getvar', 'product'), ('getvar', 'securestate'), ('getvar', 'token'),
            ('getvar', 'factory-modes'), ('getvar', 'iswarrantyvoid'),
            ('getvar', 'cid'), ('getvar', 'secure'), ('getvar', 'unlocked'),
            ('oem', 'help'), ('oem', 'read_sv'), ('getvar', 'all')]
records = []
for index, command in enumerate(commands):
    result = subprocess.run(['fastboot', *command], capture_output=True,
                            text=True, encoding='utf-8', errors='replace', timeout=15)
    record = {'command': list(command), 'returncode': result.returncode,
              'output': result.stdout + result.stderr}
    (out / f'{index:02d}.txt').write_text(record['output'], encoding='utf-8')
    records.append(record)
    if command != ('getvar', 'all'):
        print(json.dumps(record))
(out / 'private-transcript.json').write_text(json.dumps({
    'utc': datetime.now(timezone.utc).isoformat(), 'records': records}, indent=2), encoding='utf-8')
