"""Offline ARM64 experiment. No ADB/network/phone writes; mocked hardware identity.

Runs the actual module at 0x38D00 with a guarded input page. This experiment
does not reproduce UEFI, the download allocator, or the real hardware service.
"""
from pathlib import Path
import json
from unicorn import Uc, UcError, UC_ARCH_ARM64, UC_MODE_ARM, UC_HOOK_CODE, UC_HOOK_MEM_INVALID
from unicorn.arm64_const import UC_ARM64_REG_X0, UC_ARM64_REG_X1, UC_ARM64_REG_X2, UC_ARM64_REG_X3
from unicorn.arm64_const import UC_ARM64_REG_LR, UC_ARM64_REG_PC, UC_ARM64_REG_SP, UC_ARM64_REG_CPACR_EL1

module = (Path(__file__).resolve().parents[1] / 'inputs/MotoBootModule.efi').read_bytes()
binding = bytes(range(32))
input_size = 400
input_page = 0x200000
input_start = input_page + 0x1000 - input_size
sentinel = 0xf0000

def experiment(declared, wrong_binding=False):
    token = bytearray(input_size)
    token[0:2] = (1).to_bytes(2, 'big')
    token[2:4] = declared.to_bytes(2, 'big')
    token[14:16] = (2).to_bytes(2, 'big')
    token[16:48] = bytes(32) if wrong_binding else binding
    token[60:64] = bytes.fromhex('22ff11ee')
    cpu = Uc(UC_ARCH_ARM64, UC_MODE_ARM)
    cpu.mem_map(0, (len(module)+0xfff) & ~0xfff)
    cpu.mem_write(0, module)
    cpu.mem_map(sentinel, 0x1000)
    cpu.mem_map(0x100000, 0x40000)
    cpu.mem_map(input_page, 0x1000)
    cpu.mem_write(input_start, bytes(token))
    cpu.reg_write(UC_ARM64_REG_CPACR_EL1, 0x300000)
    cpu.reg_write(UC_ARM64_REG_SP, 0x13f000)
    cpu.reg_write(UC_ARM64_REG_X0, input_start)
    cpu.reg_write(UC_ARM64_REG_LR, sentinel)
    evidence = {'actual_input_bytes': input_size, 'declared_bytes': declared,
                'binding': 'wrong' if wrong_binding else 'mocked_valid', 'signature': 'all_zero'}

    def hook_code(uc, address, size, unused):
        if address == 0x38dd0:
            dest = uc.reg_read(UC_ARM64_REG_X0)
            length_pointer = uc.reg_read(UC_ARM64_REG_X1)
            uc.mem_write(dest, binding)
            uc.mem_write(length_pointer, (32).to_bytes(4, 'little'))
            uc.reg_write(UC_ARM64_REG_X0, 0xf)
            uc.reg_write(UC_ARM64_REG_PC, uc.reg_read(UC_ARM64_REG_LR))
        elif address == 0x38ec0:
            msglen = uc.reg_read(UC_ARM64_REG_X1) & 0xffffffff
            sigoffset = uc.reg_read(UC_ARM64_REG_X2) - input_start
            siglen = uc.reg_read(UC_ARM64_REG_X3) & 0xffffffff
            evidence['signature_call'] = {'message_bytes': msglen, 'signature_offset': sigoffset,
                                          'signature_bytes': siglen,
                                          'message_exceeds_input': msglen > input_size,
                                          'signature_exceeds_input': sigoffset + siglen > input_size}
        elif address == sentinel:
            evidence['result'] = 'returned'
            evidence['return_code'] = uc.reg_read(UC_ARM64_REG_X0) & 0xffffffff
            uc.emu_stop()

    def invalid_memory(uc, access, address, size, value, unused):
        evidence['result'] = 'unmapped_memory_access'
        evidence['fault'] = {'pc': hex(uc.reg_read(UC_ARM64_REG_PC)), 'address': hex(address),
                             'bytes': size, 'access_type': access,
                             'offset_from_input': address-input_start}
        return False

    cpu.hook_add(UC_HOOK_CODE, hook_code)
    cpu.hook_add(UC_HOOK_MEM_INVALID, invalid_memory)
    try:
        cpu.emu_start(0x38d00, sentinel + 4, timeout=8000000, count=2000000)
    except UcError as error:
        evidence['emulator_error'] = str(error)
    if 'result' not in evidence:
        evidence['result'] = 'instruction_or_time_limit'
        evidence['stop_pc'] = hex(cpu.reg_read(UC_ARM64_REG_PC))
    return evidence

results = [experiment(400, True)] + [experiment(n) for n in (400, 128, 127, 0, 401, 65535)]
report = {'module_sha256': __import__('hashlib').sha256(module).hexdigest(),
          'limits': ['Mocked hardware identity; zero signatures only.',
                     'Guarded page differs from the real fastboot download allocation.',
                     'A fault here is not evidence of executable control or an unlock.'],
          'cases': results}
Path('work/token-emulation.json').write_text(json.dumps(report, indent=2), encoding='utf-8')
print(json.dumps(report, indent=2))
