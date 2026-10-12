0002ae90  sub      sp, sp, #0x40
0002ae94  str      x30, [sp, #0x20]
0002ae98  stp      x20, x19, [sp, #0x30]
0002ae9c  adrp     x8, #0xd0000
0002aea0  adrp     x1, #0xb0000
0002aea4  adrp     x2, #0xb0000
0002aea8  mov      w9, #0x10
0002aeac  add      x1, x1, #0xb71
0002aeb0  add      x2, x2, #0xb7d
0002aeb4  ldr      x8, [x8, #0x8a0]
0002aeb8  mov      w0, #1
0002aebc  str      x8, [sp, #0x18]
0002aec0  str      xzr, [sp, #0x10]
0002aec4  strb     w9, [sp, #0xc]
0002aec8  bl       #0x40c20
0002aecc  add      x0, sp, #0x10
0002aed0  add      x1, sp, #0xc
0002aed4  bl       #0x2d7f8
0002aed8  mov      w8, w0
0002aedc  ldr      x0, [sp, #0x10]
0002aee0  mov      w19, wzr
0002aee4  cmp      w8, #0xf
0002aee8  b.ne     #0x2af7c
0002aeec  cbz      x0, #0x2af7c
0002aef0  ldrb     w19, [x0, #3]
0002aef4  ldrb     w8, [x0, #2]
0002aef8  mov      w20, w19
0002aefc  bfi      w20, w8, #8, #0x18
0002af00  bl       #0x23b78
0002af04  and      w8, w20, #0xffff
0002af08  cmp      w8, #1
0002af0c  tbz      w0, #0, #0x2af24
0002af10  b.hi     #0x2af28
0002af14  mov      w8, #8
0002af18  mov      w19, wzr
0002af1c  strb     w8, [sp, #0xc]
0002af20  b        #0x2af78
0002af24  b.ne     #0x2af14
0002af28  ldr      x9, [sp, #0x10]
0002af2c  and      w8, w20, #0xffff
0002af30  cmp      w8, #1
0002af34  mov      w8, #0x2a
0002af38  mov      w10, #0x28
0002af3c  adrp     x0, #0xd3000
0002af40  csel     x8, x10, x8, eq
0002af44  adrp     x11, #0xd3000
0002af48  add      x1, x9, x8
0002af4c  add      x0, x0, #0x4cc
0002af50  mov      w2, #2
0002af54  strb     w19, [x11, #0x4d0]
0002af58  bl       #0x1c190
0002af5c  adrp     x1, #0xb0000
0002af60  adrp     x2, #0xb0000
0002af64  add      x1, x1, #0xb93
0002af68  add      x2, x2, #0xb7d
0002af6c  mov      w0, #1
0002af70  mov      w19, #1
0002af74  bl       #0x40c20
0002af78  ldr      x0, [sp, #0x10]
0002af7c  cbz      x0, #0x2af84
0002af80  bl       #0x15910
0002af84  adrp     x1, #0xb0000
0002af88  adrp     x2, #0xb0000
0002af8c  add      x1, x1, #0xba1
0002af90  add      x2, x2, #0xb7d
0002af94  mov      w0, #1
0002af98  str      xzr, [sp, #0x10]
0002af9c  bl       #0x40c20
0002afa0  cbz      w19, #0x2afd0
0002afa4  adrp     x8, #0xd3000
0002afa8  ldrb     w8, [x8, #0x4d0]
0002afac  cbz      w8, #0x2afdc
0002afb0  adrp     x8, #0xd3000
0002afb4  add      x8, x8, #0x4cc
0002afb8  ldrb     w8, [x8, #1]
0002afbc  cmp      w8, #1
0002afc0  b.ne     #0x2b014
0002afc4  adrp     x1, #0xb0000
0002afc8  add      x1, x1, #0x68e
0002afcc  b        #0x2afe4
0002afd0  adrp     x1, #0xb0000
0002afd4  add      x1, x1, #0x679
0002afd8  b        #0x2afe4
0002afdc  adrp     x1, #0xb0000
0002afe0  add      x1, x1, #0x686
0002afe4  mov      w0, #1
0002afe8  bl       #0x40c20
0002afec  mov      w0, wzr
0002aff0  adrp     x9, #0xd0000
0002aff4  ldr      x8, [sp, #0x18]
0002aff8  ldr      x9, [x9, #0x8a0]
0002affc  cmp      x9, x8
0002b000  b.ne     #0x2b01c
0002b004  ldp      x20, x19, [sp, #0x30]
0002b008  ldr      x30, [sp, #0x20]
0002b00c  add      sp, sp, #0x40
0002b010  ret      
0002b014  mov      w0, #1
0002b018  b        #0x2aff0
0002b01c  bl       #0x53a68
