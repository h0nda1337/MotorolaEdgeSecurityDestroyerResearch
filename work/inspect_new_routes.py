from pathlib import Path
import struct
import re
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM

data=Path(r'C:\Users\USER\Desktop\Motorola-Edge-Racer\Analisis-Bootloader\MotoBootModule\MotoBootModule.efi').read_bytes()
md=Cs(CS_ARCH_ARM64,CS_MODE_ARM)
targets={0xa84da, 0xbfc73}
for at in range(0xc0000,0xd4000,8):
    p,h,f=struct.unpack_from('<QQQ',data,at)
    if p<len(data) and 0x1000<=h<0xa4000:
        s=data[p:p+64].split(b'\0')[0]
        if s in (b'config',b'config...',b'hw',b'partition',b'flash:'):
            print('Table',hex(at),s,hex(h),hex(f))
            targets.add(h)
md.skipdata=True
regs={}
refs=[]
for i in md.disasm(data[0x1000:0xa4000],0x1000):
    m=None
    if i.mnemonic in ('adr','adrp'):
        m=re.fullmatch(r'(x\d+), #(0x[\da-f]+)',i.op_str)
        if m:
            regs[m[1]]=int(m[2],16)
            if i.mnemonic=='adr' and regs[m[1]] in targets:
                refs.append(i.address)
                print('Reference',hex(i.address),i.op_str)
    elif i.mnemonic=='add':
        m=re.fullmatch(r'(x\d+), (x\d+), #(0x[\da-f]+|\d+)',i.op_str)
        if m and m[2] in regs:
            regs[m[1]]=regs[m[2]]+int(m[3],0)
            if regs[m[1]] in targets:
                refs.append(i.address)
                print('Reference',hex(i.address),i.op_str)
    elif i.mnemonic in ('bl','b') and i.op_str.startswith('#0x'):
        if int(i.op_str[1:],16) in targets:
            refs.append(i.address)
            print('Branch',hex(i.address),i.op_str)
    if i.mnemonic in ('bl','blr'):
        regs={r:a for r,a in regs.items() if int(r[1:])>=19}
    elif i.mnemonic in ('ret','br'):
        regs.clear()
md.skipdata=False
lines=[]
ranges=[(max(c-0x100,0x1000),c+0x100) for c in refs]
ranges += [(0x387d8,0x38bf8),(0xd2a8,0xd300),(0xf7c0,0xfac0),
           (0x10150,0x10c88),(0x11a20,0x11b40),(0x1ebc8,0x1ec08),
           (0xf4b8,0xf7c0),(0x113e0,0x11580),(0x6a7b0,0x6a920)]
for start,end in ranges:
    lines.append(f'\nRANGE {start:08x}-{end:08x}')
    lines += [f'{i.address:08x} {i.mnemonic:8} {i.op_str}' for i in md.disasm(data[start:end],start)]
Path('work/audit-v2/new_routes.asm').write_text('\n'.join(lines),encoding='utf-8')
