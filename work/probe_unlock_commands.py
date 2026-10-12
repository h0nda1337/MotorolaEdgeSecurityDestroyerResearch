"""Live command attempts authorized by owner on 2026-10-11; capture exact results."""
from pathlib import Path
import json
import subprocess

out = Path('work/fastboot-live')
def run(command):
    p = subprocess.run(['fastboot', *command], capture_output=True, text=True,
                       encoding='utf-8', errors='replace', timeout=15)
    return {'command': command, 'returncode': p.returncode, 'output': p.stdout+p.stderr}
identity = run(['getvar', 'product'])
if 'product: racer' not in identity['output']:
    raise RuntimeError('Target is not racer.')
records = []
for command in (['oem', 'config'], ['oem', 'hw'], ['oem', 'partition'],
                ['flashing', 'get_unlock_ability'], ['oem', 'unlock'], ['flashing', 'unlock']):
    record = run(command)
    records.append(record)
    print(json.dumps(record))
    if command[-1] == 'unlock':
        state = run(['getvar', 'securestate'])
        records.append(state)
        print(json.dumps(state))
        if 'securestate: oem_locked' not in state['output']:
            print('State changed; stop attempts.')
            break
(out / 'unlock-command-attempts.json').write_text(json.dumps(records, indent=2), encoding='utf-8')
