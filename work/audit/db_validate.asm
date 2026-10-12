0002e518  sub      sp, sp, #0x50
0002e51c  stp      x30, x25, [sp, #0x10]
0002e520  stp      x24, x23, [sp, #0x20]
0002e524  stp      x22, x21, [sp, #0x30]
0002e528  stp      x20, x19, [sp, #0x40]
0002e52c  adrp     x8, #0xd0000
0002e530  mov      w9, #0x20
0002e534  mov      x22, x0
0002e538  mov      w0, #0x20
0002e53c  mov      x19, x4
0002e540  mov      w23, w3
0002e544  ldr      x8, [x8, #0x8a0]
0002e548  mov      w24, w2
0002e54c  mov      x21, x1
0002e550  str      x8, [sp, #8]
0002e554  str      w9, [sp, #4]
0002e558  bl       #0x15710
0002e55c  mov      x20, x0
0002e560  adrp     x0, #0xb2000
0002e564  add      x0, x0, #0x405
0002e568  bl       #0x38910
0002e56c  mov      x0, x22
0002e570  mov      w1, w24
0002e574  mov      w2, w23
0002e578  mov      x3, x19
0002e57c  bl       #0x2ee88
0002e580  cmp      w0, #0xf
0002e584  b.ne     #0x2e64c
0002e588  mov      w8, #0xb
0002e58c  strb     w8, [x19]
0002e590  cbz      x20, #0x2e5d0
0002e594  ldr      x8, [x21, #0x10]
0002e598  cbz      x8, #0x2e5d0
0002e59c  ldr      x1, [x21]
0002e5a0  add      x4, sp, #4
0002e5a4  ldr      w2, [x21, #0x18]
0002e5a8  mov      w0, #1
0002e5ac  mov      x3, x20
0002e5b0  bl       #0x2d598
0002e5b4  cmp      w0, #0xf
0002e5b8  b.ne     #0x2e5d0
0002e5bc  ldr      x1, [x21, #0x10]
0002e5c0  mov      x0, x20
0002e5c4  mov      w2, #0x20
0002e5c8  bl       #0x1ce00
0002e5cc  cbz      w0, #0x2e5f4
0002e5d0  adrp     x0, #0xb2000
0002e5d4  add      x0, x0, #0x41e
0002e5d8  bl       #0x38910
0002e5dc  mov      x0, x21
0002e5e0  mov      x1, xzr
0002e5e4  mov      w2, wzr
0002e5e8  bl       #0x2d698
0002e5ec  cmp      w0, #0xf
0002e5f0  b.ne     #0x2e720
0002e5f4  adrp     x0, #0xb2000
0002e5f8  add      x0, x0, #0x459
0002e5fc  bl       #0x38910
0002e600  adrp     x0, #0xb2000
0002e604  add      x0, x0, #0x481
0002e608  bl       #0x38910
0002e60c  cbz      x20, #0x2e624
0002e610  ldr      x0, [x21, #0x10]
0002e614  cbz      x0, #0x2e624
0002e618  mov      x1, x20
0002e61c  mov      w2, #0x20
0002e620  bl       #0x1c190
0002e624  mov      w25, #0x55
0002e628  cmp      w24, #0xa9
0002e62c  b.gt     #0x2e690
0002e630  cmp      w24, #0xf
0002e634  b.eq     #0x2e6bc
0002e638  cmp      w24, #0x33
0002e63c  b.ne     #0x2e768
0002e640  mov      w23, #0x16c
0002e644  cbnz     x22, #0x2e6e0
0002e648  b        #0x2e728
0002e64c  mov      w25, #0x55
0002e650  cbnz     x19, #0x2e768
0002e654  cbz      x20, #0x2e660
0002e658  mov      x0, x20
0002e65c  bl       #0x15910
0002e660  adrp     x9, #0xd0000
0002e664  ldr      x8, [sp, #8]
0002e668  ldr      x9, [x9, #0x8a0]
0002e66c  cmp      x9, x8
0002e670  b.ne     #0x2e778
0002e674  mov      w0, w25
0002e678  ldp      x20, x19, [sp, #0x40]
0002e67c  ldp      x22, x21, [sp, #0x30]
0002e680  ldp      x24, x23, [sp, #0x20]
0002e684  ldp      x30, x25, [sp, #0x10]
0002e688  add      sp, sp, #0x50
0002e68c  ret      
0002e690  cmp      w24, #0xaa
0002e694  b.eq     #0x2e6d8
0002e698  cmp      w24, #0xf0
0002e69c  b.ne     #0x2e768
0002e6a0  and      w8, w23, #0xffff
0002e6a4  mov      w9, #0x70
0002e6a8  cmp      w8, #2
0002e6ac  mov      w8, #0x62
0002e6b0  csel     w23, w9, w8, eq
0002e6b4  cbnz     x22, #0x2e6e0
0002e6b8  b        #0x2e728
0002e6bc  and      w8, w23, #0xffff
0002e6c0  mov      w9, #0x46
0002e6c4  cmp      w8, #2
0002e6c8  mov      w8, #0x44
0002e6cc  csel     w23, w9, w8, eq
0002e6d0  cbnz     x22, #0x2e6e0
0002e6d4  b        #0x2e728
0002e6d8  mov      w23, #0x28
0002e6dc  cbz      x22, #0x2e728
0002e6e0  ldrb     w8, [x22, #2]
0002e6e4  ldrb     w9, [x22, #3]
0002e6e8  bfi      w9, w8, #8, #0x18
0002e6ec  and      w8, w9, #0xffff
0002e6f0  cmp      w8, #2
0002e6f4  b.lo     #0x2e728
0002e6f8  ldrb     w8, [x22, #0x28]
0002e6fc  cmp      w8, #1
0002e700  b.eq     #0x2e728
0002e704  cmp      w8, #2
0002e708  b.ne     #0x2e720
0002e70c  adrp     x0, #0xb2000
0002e710  mov      w24, #2
0002e714  mov      w25, #0x100
0002e718  add      x0, x0, #0x67f
0002e71c  b        #0x2e738
0002e720  mov      w25, #0x55
0002e724  b        #0x2e768
0002e728  adrp     x0, #0xb2000
0002e72c  mov      w24, #1
0002e730  mov      w25, #0x80
0002e734  add      x0, x0, #0x631
0002e738  bl       #0x38910
0002e73c  adrp     x0, #0xb2000
0002e740  add      x0, x0, #0x4af
0002e744  bl       #0x38910
0002e748  add      x3, x22, x23
0002e74c  mov      w0, w24
0002e750  mov      x1, x22
0002e754  mov      w2, w23
0002e758  mov      w4, w25
0002e75c  mov      x5, x21
0002e760  bl       #0x2d3b8
0002e764  mov      w25, w0
0002e768  mov      w8, #0xd
0002e76c  strb     w8, [x19]
0002e770  cbnz     x20, #0x2e658
0002e774  b        #0x2e660
0002e778  bl       #0x53a68
