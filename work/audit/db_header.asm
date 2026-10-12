0002ee88  sub      sp, sp, #0x40
0002ee8c  stp      x30, x23, [sp, #0x10]
0002ee90  stp      x22, x21, [sp, #0x20]
0002ee94  stp      x20, x19, [sp, #0x30]
0002ee98  adrp     x8, #0xd0000
0002ee9c  mov      x21, x0
0002eea0  mov      w0, #0x20
0002eea4  mov      x19, x3
0002eea8  mov      w22, w2
0002eeac  mov      w23, w1
0002eeb0  ldr      x8, [x8, #0x8a0]
0002eeb4  str      x8, [sp, #8]
0002eeb8  bl       #0x15710
0002eebc  cbz      x21, #0x2efc0
0002eec0  mov      x20, x0
0002eec4  cbz      x0, #0x2efc8
0002eec8  adrp     x0, #0xb2000
0002eecc  add      x0, x0, #0xcd4
0002eed0  bl       #0x38910
0002eed4  ldrb     w8, [x21]
0002eed8  ldrb     w9, [x21, #1]
0002eedc  bfi      w9, w8, #8, #8
0002eee0  cmp      w9, w23, uxth
0002eee4  b.ne     #0x2efd8
0002eee8  adrp     x0, #0xb2000
0002eeec  mov      w8, #0x10
0002eef0  add      x0, x0, #0xcfb
0002eef4  str      w8, [sp, #4]
0002eef8  bl       #0x38910
0002eefc  add      x1, sp, #4
0002ef00  mov      x0, x20
0002ef04  mov      w2, w23
0002ef08  bl       #0x2e1b0
0002ef0c  ldr      w8, [sp, #4]
0002ef10  cmp      w0, #0xf
0002ef14  b.ne     #0x2efe4
0002ef18  cmp      w8, #0x10
0002ef1c  b.ne     #0x2efe4
0002ef20  adrp     x0, #0xb2000
0002ef24  str      w8, [sp, #4]
0002ef28  add      x0, x0, #0xd2a
0002ef2c  bl       #0x38910
0002ef30  add      x0, x20, #0x10
0002ef34  add      x1, sp, #4
0002ef38  bl       #0x38888
0002ef3c  ldr      w8, [sp, #4]
0002ef40  cmp      w0, #0xf
0002ef44  b.ne     #0x2eff8
0002ef48  cmp      w8, #0x10
0002ef4c  b.ne     #0x2eff8
0002ef50  adrp     x0, #0xb2000
0002ef54  mov      w8, #0x20
0002ef58  add      x0, x0, #0xd55
0002ef5c  str      w8, [sp, #4]
0002ef60  bl       #0x38910
0002ef64  adrp     x0, #0xb2000
0002ef68  add      x0, x0, #0xd79
0002ef6c  bl       #0x38910
0002ef70  ldr      w2, [sp, #4]
0002ef74  add      x1, x21, #8
0002ef78  mov      x0, x20
0002ef7c  bl       #0x1ce00
0002ef80  cbnz     w0, #0x2f00c
0002ef84  and      w8, w22, #0xffff
0002ef88  cmp      w8, #2
0002ef8c  b.lo     #0x2efac
0002ef90  adrp     x0, #0xb2000
0002ef94  add      x0, x0, #0xd9c
0002ef98  bl       #0x38910
0002ef9c  ldrb     w8, [x21, #0x28]
0002efa0  sub      w8, w8, #1
0002efa4  cmp      w8, #1
0002efa8  b.hi     #0x2f00c
0002efac  adrp     x0, #0xb2000
0002efb0  add      x0, x0, #0xdd5
0002efb4  bl       #0x38910
0002efb8  mov      w21, #0xf
0002efbc  b        #0x2f010
0002efc0  mov      w21, #0xf0
0002efc4  b        #0x2f034
0002efc8  mov      w22, #0x12
0002efcc  mov      w21, #0x55
0002efd0  cbnz     x19, #0x2f030
0002efd4  b        #0x2f034
0002efd8  mov      w22, #8
0002efdc  mov      w21, #0x55
0002efe0  b        #0x2f024
0002efe4  cmp      w8, #0x10
0002efe8  b.eq     #0x2f00c
0002efec  adrp     x0, #0xb2000
0002eff0  add      x0, x0, #0xe49
0002eff4  b        #0x2f008
0002eff8  cmp      w8, #0x10
0002effc  b.eq     #0x2f00c
0002f000  adrp     x0, #0xb2000
0002f004  add      x0, x0, #0xdf9
0002f008  bl       #0x38910
0002f00c  mov      w21, #0x55
0002f010  mov      x0, x20
0002f014  mov      w1, wzr
0002f018  mov      w2, #0x20
0002f01c  bl       #0x1ca9c
0002f020  mov      w22, #0x11
0002f024  mov      x0, x20
0002f028  bl       #0x15910
0002f02c  cbz      x19, #0x2f034
0002f030  strb     w22, [x19]
0002f034  adrp     x9, #0xd0000
0002f038  ldr      x8, [sp, #8]
0002f03c  ldr      x9, [x9, #0x8a0]
0002f040  cmp      x9, x8
0002f044  b.ne     #0x2f060
0002f048  mov      w0, w21
0002f04c  ldp      x20, x19, [sp, #0x30]
0002f050  ldp      x22, x21, [sp, #0x20]
0002f054  ldp      x30, x23, [sp, #0x10]
0002f058  add      sp, sp, #0x40
0002f05c  ret      
0002f060  bl       #0x53a68
