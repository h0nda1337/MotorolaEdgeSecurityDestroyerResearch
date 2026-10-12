from pathlib import Path
import struct
import hashlib
data=Path('work/edl-research/blankflash/singleimage.bin').read_bytes()
out=Path('work/edl-research/extracted')
out.mkdir(exist_ok=True)
pos=256
while pos+256 <= len(data):
    header=data[pos:pos+256]
    name=header[:248].split(b'\0')[0].decode('ascii')
    size=struct.unpack_from('<Q',header,248)[0]
    start=pos+256
    if not name or size>len(data)-start or '/' in name or '\\' in name:
        print('Stop',hex(pos),repr(name),size)
        break
    payload=data[start:start+size]
    (out/name).write_bytes(payload)
    print(name,size,hex(start),hashlib.sha256(payload).hexdigest())
    if name.endswith('.xml'):
        print(payload.decode('utf-8',errors='replace'))
    pos=start+((size+4095)//4096)*4096
