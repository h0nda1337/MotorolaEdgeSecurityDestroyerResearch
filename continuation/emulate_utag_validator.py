"""Execute the extracted ARM64 fsg-id validator and regex engine offline.

Only UEFI allocation/free and diagnostic services are substituted. No phone I/O.
The UTF-8/ASCII checks and regex compile/execute code run from the actual PE.
"""
from pathlib import Path
import json
import hashlib
from unicorn import Uc, UC_ARCH_ARM64, UC_MODE_ARM, UC_HOOK_CODE, UcError
from unicorn.arm64_const import (
    UC_ARM64_REG_X0, UC_ARM64_REG_X1, UC_ARM64_REG_X2,
    UC_ARM64_REG_X3, UC_ARM64_REG_X30, UC_ARM64_REG_SP,
    UC_ARM64_REG_PC, UC_ARM64_REG_CPACR_EL1,
)

base = Path(__file__).resolve().parent
binary = base / 'utags-analysis/MotUtagsDictDxe.efi'
data = binary.read_bytes()
assert hashlib.sha256(data).hexdigest() == '2f3a836279d61c53c67f322153251832bb80aa3008e8c6efbe22893d9d707018'
assert data[0xEEE4:0xEEE4 + 21].split(b'\0')[0] == b'^[_[:alnum:]]{1,31}$'

def run_case(value, size_override=None):
    uc = Uc(UC_ARCH_ARM64, UC_MODE_ARM)
    uc.mem_map(0, 0x20000)
    uc.mem_write(0, data)
    uc.mem_map(0x100000, 0x100000)
    uc.mem_map(0x400000, 0x1000000)
    uc.reg_write(UC_ARM64_REG_CPACR_EL1, 3 << 20)
    uc.reg_write(UC_ARM64_REG_SP, 0x1F0000)
    uc.reg_write(UC_ARM64_REG_X30, 0x18000)
    uc.mem_write(0x100000, value + b'\0')
    uc.reg_write(UC_ARM64_REG_X0, 0xEEBC)
    uc.reg_write(UC_ARM64_REG_X1, 0x100000)
    uc.reg_write(UC_ARM64_REG_X2, len(value) + 1 if size_override is None else size_override)
    uc.reg_write(UC_ARM64_REG_X3, 0xEEE4)
    state = {'heap': 0x400000, 'allocations': 0, 'finished': False}

    def hook(cpu, address, size, context):
        if address == 0x18000:
            state['finished'] = True
            cpu.emu_stop()
        elif address in (0xC658, 0xC698):
            requested = cpu.reg_read(UC_ARM64_REG_X1 if address == 0xC658 else UC_ARM64_REG_X0)
            amount = max((requested + 15) & ~15, 16)
            if amount > 0x100000 or state['heap'] + amount >= 0x1400000:
                raise RuntimeError('Emulation allocator limit exceeded')
            pointer = state['heap']
            state['heap'] += amount
            state['allocations'] += 1
            cpu.reg_write(UC_ARM64_REG_X0, pointer)
            cpu.reg_write(UC_ARM64_REG_PC, cpu.reg_read(UC_ARM64_REG_X30))
        elif address in (0xC73C, 0x1EA4):
            cpu.reg_write(UC_ARM64_REG_X0, 0)
            cpu.reg_write(UC_ARM64_REG_PC, cpu.reg_read(UC_ARM64_REG_X30))
        elif address == 0x1FA8:
            raise RuntimeError('Firmware assertion')

    uc.hook_add(UC_HOOK_CODE, hook)
    outcome = {'value_hex': value.hex(), 'input_size': len(value) + 1 if size_override is None else size_override}
    try:
        uc.emu_start(0x1C30, 0x18004, timeout=2000000, count=2000000)
        outcome.update({'completed': state['finished'], 'result': uc.reg_read(UC_ARM64_REG_X0)})
    except (UcError, RuntimeError) as error:
        outcome.update({'completed': False, 'error': str(error), 'pc': hex(uc.reg_read(UC_ARM64_REG_PC))})
    outcome['allocations'] = state['allocations']
    return outcome

cases = [b'codexprobe', b'none', b'0', b'_', b'', b'a b', b'a-b', b'""', b'a=b', b'A'*31, b'A'*32, b'a\nb', b'a\0 b']
results = [run_case(value) for value in cases]
output = {'module_sha256': hashlib.sha256(data).hexdigest(), 'entry_rva': '0x1C30', 'pattern_rva': '0xEEE4',
          'pattern': '^[_[:alnum:]]{1,31}$', 'mocked_services': ['UEFI AllocatePool', 'UEFI FreePool', 'diagnostic logging'],
          'cases': results, 'phone_io': False}
(base / 'utag-validator-emulation.json').write_text(json.dumps(output, indent=2), encoding='utf-8')
print(json.dumps(output, indent=2))
