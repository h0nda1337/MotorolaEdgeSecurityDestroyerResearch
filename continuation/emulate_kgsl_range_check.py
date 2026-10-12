"""Test the exact kernel's SVM range check offline, without live IOCTLs.

Spinlocks and the final rbtree insertion are mocked. Acceptance means only that
the range guard reaches insertion, not that a root exploit succeeds.
"""
from pathlib import Path
import json
import hashlib
import struct
from unicorn import Uc, UC_ARCH_ARM64, UC_MODE_ARM, UC_HOOK_CODE
from unicorn.arm64_const import (
    UC_ARM64_REG_X0, UC_ARM64_REG_X1, UC_ARM64_REG_X2,
    UC_ARM64_REG_X30, UC_ARM64_REG_SP, UC_ARM64_REG_PC,
)

base = Path(__file__).resolve().parent
out = base / 'kernel-analysis'
data = (out / 'kernel-compressed.bin').read_bytes()
assert hashlib.sha256(data).hexdigest() == '5c73f8fa16afb640bfd281b0d4ac4072e7e1f1690520140d780887e6913b44f1'
image_base = 0xffffff8008080000
entry = image_base + 0x6db4e8
lock = 0xffffff800933c360
unlock = 0xffffff800933c4b8
insert = 0xffffff800875c1f8
start_bound, end_bound = 0x700100000, 0x800000000

def test(name, address, length):
    uc = Uc(UC_ARCH_ARM64, UC_MODE_ARM)
    mapped = set()
    for address_to_map in [entry, lock, unlock, insert]:
        page = address_to_map & ~0xfff
        if page not in mapped:
            uc.mem_map(page, 0x1000)
            mapped.add(page)
    uc.mem_write(entry, data[0x6db4e8:0x6db4e8+264])
    uc.mem_map(0x1000, 0x1000)
    uc.mem_map(0x200000, 0x20000)
    uc.reg_write(UC_ARM64_REG_SP, 0x21f000)
    uc.reg_write(UC_ARM64_REG_X30, 0x1000)
    uc.reg_write(UC_ARM64_REG_X0, 0x200000)
    uc.reg_write(UC_ARM64_REG_X1, address)
    uc.reg_write(UC_ARM64_REG_X2, length)
    uc.mem_write(0x200080, struct.pack('<Q', 0x201000))
    for offset in [0x30, 0x40]:
        uc.mem_write(0x201000+offset, struct.pack('<QQ', start_bound, end_bound))
    calls = []
    finished = [False]

    def hook(cpu, current, size, context):
        if current == 0x1000:
            finished[0] = True
            cpu.emu_stop()
        elif current in [lock, unlock, insert]:
            if current == insert:
                calls.append({'start': hex(cpu.reg_read(UC_ARM64_REG_X1)),
                              'size': hex(cpu.reg_read(UC_ARM64_REG_X2))})
            cpu.reg_write(UC_ARM64_REG_X0, 0)
            cpu.reg_write(UC_ARM64_REG_PC, cpu.reg_read(UC_ARM64_REG_X30))

    uc.hook_add(UC_HOOK_CODE, hook)
    uc.emu_start(entry, 0x1004, count=2000)
    assert finished[0]
    return {'name': name, 'start': hex(address), 'size': hex(length),
            'end_mod_64': hex((address+length) & ((1<<64)-1)),
            'reaches_insertion': bool(calls), 'return_w0': hex(uc.reg_read(UC_ARM64_REG_X0) & 0xffffffff)}

cases = [test('ordinary_in_range', 0x700204000, 0x1000),
         test('wraps_into_valid_range', 0x700204000, 0xffffffffffefd000),
         test('zero_size', 0x700204000, 0),
         test('exceeds_svm_bounds', 0x700204000, 0x100000000),
         test('starts_before_svm', 0x7000ff000, 0x2000)]
assert cases[0]['reaches_insertion'] and cases[1]['reaches_insertion']
assert not cases[3]['reaches_insertion'] and not cases[4]['reaches_insertion']
result = {'kernel_sha256': hashlib.sha256(data).hexdigest(), 'entry_static_va': hex(entry),
          'function': 'kgsl_iommu_set_svm_region', 'mocked_svm_bounds': [hex(start_bound), hex(end_bound)],
          'mocked_services': ['spin_lock', 'spin_unlock', '_insert_gpuaddr'],
          'cases': cases, 'phone_io': False, 'root_or_unlock_demonstrated': False}
(out / 'kgsl-range-emulation.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
print(json.dumps(result, indent=2))
