0002d698  sub      sp, sp, #0xa0
0002d69c  str      x30, [sp, #0x70]
0002d6a0  stp      x22, x21, [sp, #0x80]
0002d6a4  stp      x20, x19, [sp, #0x90]
0002d6a8  adrp     x8, #0xd0000
0002d6ac  ldr      x8, [x8, #0x8a0]
0002d6b0  str      x8, [sp, #0x68]
0002d6b4  cbz      x0, #0x2d7c0
0002d6b8  adrp     x9, #0xb1000
0002d6bc  mov      w8, #0x53e
0002d6c0  add      x9, x9, #0x662
0002d6c4  mov      w21, #1
0002d6c8  add      x20, sp, #0x28
0002d6cc  add      x22, sp, #8
0002d6d0  str      w8, [sp, #0x48]
0002d6d4  mov      x19, x0
0002d6d8  str      x9, [sp, #0x50]
0002d6dc  ldp      x9, x8, [x0]
0002d6e0  adrp     x0, #0xb1000
0002d6e4  strb     w21, [sp, #0x58]
0002d6e8  add      x0, x0, #0x631
0002d6ec  str      x20, [sp, #0x60]
0002d6f0  ldrb     w10, [x8]
0002d6f4  ldrb     w11, [x8, #1]
0002d6f8  add      x8, x8, #2
0002d6fc  strb     wzr, [sp, #0x38]
0002d700  str      x22, [sp, #0x40]
0002d704  str      x8, [sp, #0x30]
0002d708  bfi      w11, w10, #8, #8
0002d70c  str      w11, [sp, #0x28]
0002d710  ldrb     w8, [x9]
0002d714  ldrb     w10, [x9, #1]
0002d718  add      x9, x9, #2
0002d71c  str      x9, [sp, #0x10]
0002d720  bfi      w10, w8, #8, #8
0002d724  str      w10, [sp, #8]
0002d728  bl       #0x38910
0002d72c  add      x1, sp, #0x48
0002d730  mov      w0, #2
0002d734  strb     wzr, [sp, #0x18]
0002d738  str      xzr, [sp, #0x20]
0002d73c  bl       #0x2f280
0002d740  cbz      w0, #0x2d7c8
0002d744  adrp     x8, #0xb1000
0002d748  strb     w21, [sp, #0x58]
0002d74c  add      x8, x8, #0xba0
0002d750  str      x20, [sp, #0x60]
0002d754  adrp     x0, #0xb1000
0002d758  add      x0, x0, #0x631
0002d75c  str      x8, [sp, #0x50]
0002d760  mov      w8, #0x3e2
0002d764  str      w8, [sp, #0x48]
0002d768  ldp      x8, x9, [x19]
0002d76c  ldrb     w10, [x9]
0002d770  ldrb     w11, [x9, #1]
0002d774  add      x9, x9, #2
0002d778  strb     wzr, [sp, #0x38]
0002d77c  str      x22, [sp, #0x40]
0002d780  str      x9, [sp, #0x30]
0002d784  bfi      w11, w10, #8, #8
0002d788  str      w11, [sp, #0x28]
0002d78c  ldrb     w9, [x8]
0002d790  ldrb     w10, [x8, #1]
0002d794  add      x8, x8, #2
0002d798  str      x8, [sp, #0x10]
0002d79c  bfi      w10, w9, #8, #8
0002d7a0  str      w10, [sp, #8]
0002d7a4  bl       #0x38910
0002d7a8  add      x1, sp, #0x48
0002d7ac  mov      w0, #2
0002d7b0  strb     wzr, [sp, #0x18]
0002d7b4  str      xzr, [sp, #0x20]
0002d7b8  bl       #0x2f280
0002d7bc  cbz      w0, #0x2d7c8
0002d7c0  mov      w0, #0x55
0002d7c4  b        #0x2d7cc
0002d7c8  mov      w0, #0xf
0002d7cc  adrp     x9, #0xd0000
0002d7d0  ldr      x8, [sp, #0x68]
0002d7d4  ldr      x9, [x9, #0x8a0]
0002d7d8  cmp      x9, x8
0002d7dc  b.ne     #0x2d7f4
0002d7e0  ldp      x20, x19, [sp, #0x90]
0002d7e4  ldr      x30, [sp, #0x70]
0002d7e8  ldp      x22, x21, [sp, #0x80]
0002d7ec  add      sp, sp, #0xa0
0002d7f0  ret      
0002d7f4  bl       #0x53a68
