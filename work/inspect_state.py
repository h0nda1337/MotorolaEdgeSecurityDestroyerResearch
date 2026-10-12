from pathlib import Path
import re
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM

root = Path(r'C:\Users\USER\Desktop\Motorola-Edge-Racer')
data = (root / 'Analisis-Bootloader/MotoBootModule/MotoBootModule.efi').read_bytes()
md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
ranges = [(0x2a938, 0x2ab70), (0x2a588, 0x2a938), (0x29b28, 0x29d38),
          (0x2ab70, 0x2ae90), (0x20b90, 0x20ed0), (0x0e9d0, 0x0ebf0),
          (0xa390, 0xa700), (0x38d00, 0x38f70), (0x38bf8, 0x38d00),
          (0x9b00, 0x9f00), (0x9f00, 0xa390), (0x8c00, 0x9000),
          (0x38f70, 0x391a0), (0x5d000, 0x5d1cc), (0x436a0, 0x43970),
          (0x90b8, 0x93e0), (0x7480, 0x76b0), (0x7d00, 0x7e80),
          (0x2b110, 0x2b4d0), (0x32e78, 0x334e0), (0x39c98, 0x39f00),
          (0x6d88, 0x7000)]
output = []
for start, end in ranges:
    output.append(f'\nRANGE {start:08x} - {end:08x}')
    regs = {}
    for i in md.disasm(data[start:end], start):
        comment = ''
        if i.mnemonic == 'adrp':
            m = re.fullmatch(r'(x\d+), #(0x[\da-f]+)', i.op_str)
            if m:
                regs[m[1]] = int(m[2], 16)
        elif i.mnemonic == 'add':
            m = re.fullmatch(r'(x\d+), (x\d+), #(0x[\da-f]+|\d+)', i.op_str)
            if m and m[2] in regs:
                a = regs[m[2]] + int(m[3], 0)
                regs[m[1]] = a
                s = data[a:a+180].split(b'\0', 1)[0]
                if s and all(32 <= v < 127 or v in (9, 10, 13) for v in s):
                    comment = ' ; ' + repr(s.decode())
        output.append(f'{i.address:08x}  {i.mnemonic:8} {i.op_str}{comment}')
        if i.mnemonic in ('bl', 'blr'):
            regs = {r: a for r, a in regs.items() if int(r[1:]) >= 19}
        elif i.mnemonic == 'ret':
            regs.clear()
out = Path(r'C:\Users\USER\Documents\Codex\2026-10-11\ana\work\audit-v2\state_helpers.asm')
out.write_text('\n'.join(output) + '\n', encoding='utf-8')
print(out)
md.skipdata = True
for i in md.disasm(data[0x1000:0xa4000], 0x1000):
    if i.mnemonic == 'bl' and i.op_str in ('#0x213a8', '#0x2a938', '#0x2a588', '#0x2aa28', '#0x38d00', '#0x38bf8', '#0x38dd0', '#0xa2f0'):
        print(hex(i.address), i.mnemonic, i.op_str)
