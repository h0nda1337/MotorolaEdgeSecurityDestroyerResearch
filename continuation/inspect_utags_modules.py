from pathlib import Path
import struct
import re
import json
import hashlib
from capstone import Cs,CS_ARCH_ARM64,CS_MODE_ARM
root=Path(__file__).parent/'xbl-inspection'
out=Path(__file__).parent/'utags-analysis'
out.mkdir(exist_ok=True)
for name in ['MotUtagsDxe','MotUtagsDictDxe']:
    matches=list(root.rglob(f'* {name}/1 PE32 image section/body.bin'))
    assert len(matches)==1
    data=matches[0].read_bytes()
    (out/f'{name}.efi').write_bytes(data)
    pe=struct.unpack_from('<I',data,0x3c)[0]
    machine,count,_,_,_,optlen,_=struct.unpack_from('<HHIIIHH',data,pe+4)
    print(name,'machine',hex(machine),'sha256',hashlib.sha256(data).hexdigest())
    sections=[]
    for n in range(count):
        at=pe+24+optlen+n*40
        sn=data[at:at+8].rstrip(b'\0').decode()
        vs,va,rs,ra=struct.unpack_from('<IIII',data,at+8)
        sections.append({'name':sn,'va':va,'raw':ra,'size':rs})
    print('Sections',sections)
    strings={m.start():m.group().decode() for m in re.finditer(rb'[ -~]{5,}',data)}
    print('Relevant strings',[(hex(a),s) for a,s in strings.items() if re.search(r'utag|fsg|valid|invalid|space|allow|zero|protect|type',s,re.I)])
    targets={a for a,s in strings.items() if 'fsg' in s}
    refs=[]
    for at in range(0,len(data)-8,8):
        value=struct.unpack_from('<Q',data,at)[0]
        if value in targets:
            print('Pointer table at',hex(at))
            for pos in range(max(at-40,0),min(at+80,len(data)-8),8):
                v=struct.unpack_from('<Q',data,pos)[0]
                print(hex(pos),hex(v),strings.get(v,''))
    md=Cs(CS_ARCH_ARM64,CS_MODE_ARM)
    lines=[]
    for s in sections:
        if s['name']=='.text':
            md.skipdata=True
            lines += [f'{i.address:08x} {i.mnemonic:8} {i.op_str}' for i in md.disasm(data[s['raw']:s['raw']+s['size']],s['va'])]
    (out/f'{name}.asm').write_text('\n'.join(lines))
