0002d598  sub      sp, sp, #0x120
0002d59c  str      x29, [sp, #0xe0]
0002d5a0  stp      x30, x23, [sp, #0xf0]
0002d5a4  stp      x22, x21, [sp, #0x100]
0002d5a8  stp      x20, x19, [sp, #0x110]
0002d5ac  adrp     x8, #0xd0000
0002d5b0  mov      w19, #0xf0
0002d5b4  cmp      w0, #1
0002d5b8  ldr      x8, [x8, #0x8a0]
0002d5bc  str      x8, [sp, #0xd8]
0002d5c0  b.hi     #0x2d660
0002d5c4  mov      x23, x1
0002d5c8  cbz      x1, #0x2d660
0002d5cc  mov      x21, x3
0002d5d0  cbz      x3, #0x2d660
0002d5d4  mov      x20, x4
0002d5d8  cbz      x4, #0x2d660
0002d5dc  ldr      w8, [x20]
0002d5e0  cmp      w0, #0
0002d5e4  mov      w9, #0x20
0002d5e8  mov      w10, #0x14
0002d5ec  csel     w9, w10, w9, eq
0002d5f0  cmp      w8, w9
0002d5f4  b.hs     #0x2d600
0002d5f8  mov      w19, #0x33
0002d5fc  b        #0x2d660
0002d600  cmp      w0, #0
0002d604  mov      w8, #0xd
0002d608  cinc     w0, w8, ne
0002d60c  mov      x1, sp
0002d610  mov      w22, w2
0002d614  bl       #0x30910
0002d618  cbz      w0, #0x2d624
0002d61c  mov      w19, #0x55
0002d620  b        #0x2d660
0002d624  mov      x0, sp
0002d628  mov      x1, x23
0002d62c  mov      w2, w22
0002d630  bl       #0x30c90
0002d634  mov      w19, #0x55
0002d638  cbnz     w0, #0x2d658
0002d63c  mov      x0, sp
0002d640  mov      x1, x21
0002d644  mov      x2, x20
0002d648  bl       #0x30ea8
0002d64c  mov      w8, #0xf
0002d650  cmp      w0, #0
0002d654  csel     w19, w8, w19, eq
0002d658  mov      x0, sp
0002d65c  bl       #0x31628
0002d660  adrp     x9, #0xd0000
0002d664  ldr      x8, [sp, #0xd8]
0002d668  ldr      x9, [x9, #0x8a0]
0002d66c  cmp      x9, x8
0002d670  b.ne     #0x2d690
0002d674  mov      w0, w19
0002d678  ldr      x29, [sp, #0xe0]
0002d67c  ldp      x20, x19, [sp, #0x110]
0002d680  ldp      x22, x21, [sp, #0x100]
0002d684  ldp      x30, x23, [sp, #0xf0]
0002d688  add      sp, sp, #0x120
0002d68c  ret      
0002d690  bl       #0x53a68
