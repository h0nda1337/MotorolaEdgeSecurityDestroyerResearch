0002b978  sub      sp, sp, #0xa0
0002b97c  stp      x30, x23, [sp, #0x70]
0002b980  stp      x22, x21, [sp, #0x80]
0002b984  stp      x20, x19, [sp, #0x90]
0002b988  adrp     x8, #0xd0000
0002b98c  mov      w9, #0x20
0002b990  mov      x19, x0
0002b994  ldr      x8, [x8, #0x8a0]
0002b998  str      x8, [sp, #0x68]
0002b99c  str      xzr, [sp, #0x10]
0002b9a0  str      w9, [sp, #8]
0002b9a4  bl       #0x2ae90
0002b9a8  tst      w0, #0xff
0002b9ac  b.eq     #0x2ba14
0002b9b0  add      x0, sp, #0x10
0002b9b4  add      x1, sp, #0xc
0002b9b8  bl       #0x2d7f8
0002b9bc  mov      w8, w0
0002b9c0  ldr      x0, [sp, #0x10]
0002b9c4  mov      w20, wzr
0002b9c8  cmp      w8, #0xf
0002b9cc  b.ne     #0x2bb08
0002b9d0  cbz      x0, #0x2bb08
0002b9d4  bl       #0x2ee40
0002b9d8  ldr      x8, [sp, #0x10]
0002b9dc  mov      w21, w0
0002b9e0  mov      x0, x8
0002b9e4  bl       #0x2ede8
0002b9e8  mov      w20, w0
0002b9ec  and      w8, w21, #0xffff
0002b9f0  cmp      w8, #2
0002b9f4  b.eq     #0x2ba1c
0002b9f8  cmp      w8, #1
0002b9fc  b.ne     #0x2bad8
0002ba00  adrp     x1, #0xb0000
0002ba04  mov      w21, wzr
0002ba08  mov      w22, #0x14
0002ba0c  add      x1, x1, #0x9a9
0002ba10  b        #0x2ba2c
0002ba14  mov      w20, wzr
0002ba18  b        #0x2bb14
0002ba1c  adrp     x1, #0xb0000
0002ba20  mov      w21, #1
0002ba24  mov      w22, #0x20
0002ba28  add      x1, x1, #0x97c
0002ba2c  mov      w0, #1
0002ba30  bl       #0x40c20
0002ba34  ldr      x8, [sp, #0x10]
0002ba38  add      x0, sp, #0x38
0002ba3c  mov      w2, #0x10
0002ba40  add      x23, sp, #0x38
0002ba44  add      x1, x8, #8
0002ba48  bl       #0x1c190
0002ba4c  add      x3, x23, #0x10
0002ba50  mov      w2, #0x14
0002ba54  add      x4, sp, #8
0002ba58  mov      w0, w21
0002ba5c  mov      x1, x19
0002ba60  bl       #0x2d598
0002ba64  cmp      w0, #0xf
0002ba68  b.ne     #0x2bae4
0002ba6c  add      w2, w22, #0x10
0002ba70  add      x1, sp, #0x38
0002ba74  add      x3, sp, #0x18
0002ba78  add      x4, sp, #8
0002ba7c  mov      w0, w21
0002ba80  str      w22, [sp, #8]
0002ba84  add      x19, sp, #0x18
0002ba88  bl       #0x2d598
0002ba8c  cmp      w0, #0xf
0002ba90  b.ne     #0x2baf0
0002ba94  ldr      x8, [sp, #0x10]
0002ba98  mov      x2, xzr
0002ba9c  add      w9, w20, #0x26
0002baa0  add      w10, w9, w2
0002baa4  ldrb     w3, [x19, x2]
0002baa8  ldrb     w10, [x8, w10, uxtw]
0002baac  cmp      w3, w10
0002bab0  b.ne     #0x2bb40
0002bab4  add      x2, x2, #1
0002bab8  cmp      x2, x22
0002babc  b.ne     #0x2baa0
0002bac0  add      x0, sp, #0x18
0002bac4  mov      w1, wzr
0002bac8  mov      w2, #0x20
0002bacc  bl       #0x1ca9c
0002bad0  mov      w20, #1
0002bad4  b        #0x2bb04
0002bad8  adrp     x1, #0xb0000
0002badc  add      x1, x1, #0x9d6
0002bae0  b        #0x2baf8
0002bae4  adrp     x1, #0xb0000
0002bae8  add      x1, x1, #0xa05
0002baec  b        #0x2baf8
0002baf0  adrp     x1, #0xb0000
0002baf4  add      x1, x1, #0xa20
0002baf8  mov      w0, #1
0002bafc  bl       #0x40c20
0002bb00  mov      w20, wzr
0002bb04  ldr      x0, [sp, #0x10]
0002bb08  cbz      x0, #0x2bb14
0002bb0c  bl       #0x15910
0002bb10  str      xzr, [sp, #0x10]
0002bb14  adrp     x9, #0xd0000
0002bb18  ldr      x8, [sp, #0x68]
0002bb1c  ldr      x9, [x9, #0x8a0]
0002bb20  cmp      x9, x8
0002bb24  b.ne     #0x2bb54
0002bb28  mov      w0, w20
0002bb2c  ldp      x20, x19, [sp, #0x90]
0002bb30  ldp      x22, x21, [sp, #0x80]
0002bb34  ldp      x30, x23, [sp, #0x70]
0002bb38  add      sp, sp, #0xa0
0002bb3c  ret      
0002bb40  adrp     x1, #0xb0000
0002bb44  mov      w0, #1
0002bb48  add      x1, x1, #0xa3b
0002bb4c  bl       #0x40c20
0002bb50  b        #0x2bb00
0002bb54  bl       #0x53a68
