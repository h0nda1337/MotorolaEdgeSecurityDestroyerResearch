from pathlib import Path
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_ARM
import re

module = Path(r'C:\Users\USER\Desktop\Motorola-Edge-Racer\Analisis-Bootloader\MotoBootModule\MotoBootModule.efi')
data = module.read_bytes()
print('Fastboot result dispatch:', {i: hex(0x6024 + value * 4)
      for i, value in enumerate(data[0xa508c:0xa5092])})
md = Cs(CS_ARCH_ARM64, CS_MODE_ARM)
md.skipdata = True
targets = {0xa358, 0x2a818, 0x75d8, 0x7d00, 0xd2700}
callers = []
regs = {}
for i in md.disasm(data[0x1000:0xa4000], 0x1000):
    if i.mnemonic in ('adr', 'adrp'):
        m = re.fullmatch(r'(x\d+), #(0x[\da-f]+)', i.op_str)
        if m:
            regs[m[1]] = int(m[2], 16)
            if i.mnemonic == 'adr' and regs[m[1]] in targets:
                print(f'Address materialization {i.address:08x}: {i.op_str}')
                callers.append(i.address)
    elif i.mnemonic == 'add':
        m = re.fullmatch(r'(x\d+), (x\d+), #(0x[\da-f]+|\d+)', i.op_str)
        if m and m[2] in regs:
            regs[m[1]] = regs[m[2]] + int(m[3], 0)
            if regs[m[1]] in targets:
                print(f'Address materialization {i.address:08x}: {i.op_str}')
                callers.append(i.address)
    elif i.mnemonic in ('ldr', 'str'):
        m = re.fullmatch(r'x\d+, \[(x\d+), #(0x[\da-f]+|\d+)\]', i.op_str)
        if m and m[1] in regs and regs[m[1]] + int(m[2], 0) == 0xd2700:
            print(f'Postflash hook list reference {i.address:08x}: {i.mnemonic} {i.op_str}')
            callers.append(i.address)
    if i.mnemonic in ('bl', 'b') and i.op_str.startswith('#0x'):
        target = int(i.op_str[1:], 16)
        if target in targets:
            print(f'{i.address:08x}: {i.mnemonic} {i.op_str}')
            callers.append(i.address)
    if i.mnemonic in ('bl', 'blr'):
        regs = {r: a for r, a in regs.items() if int(r[1:]) >= 19}
    elif i.mnemonic in ('ret', 'br'):
        regs.clear()
for target in targets:
    needle = target.to_bytes(8, 'little')
    at = data.find(needle)
    while at != -1:
        print(f'Pointer {target:08x} at {at:08x}')
        at = data.find(needle, at + 1)
md.skipdata = False
ranges = [(0x7000, 0x7820), (0x2a818, 0x2a938)]
ranges += [(max(0x1000, c-0x100), c+0x100) for c in callers]
lines = []
for start, end in ranges:
    lines.append(f'\nRANGE {start:08x}-{end:08x}')
    lines += [f'{i.address:08x} {i.mnemonic:8} {i.op_str}' for i in md.disasm(data[start:end], start)]
Path('work/audit-v2/flash_completion.asm').write_text('\n'.join(lines), encoding='utf-8')
