00023b78  sub      sp, sp, #0x20
00023b7c  str      x30, [sp, #0x10]
00023b80  adrp     x8, #0xd0000
00023b84  adrp     x9, #0xd0000
00023b88  ldr      x8, [x8, #0x8a0]
00023b8c  ldr      x9, [x9, #0x8a0]
00023b90  str      x8, [sp, #8]
00023b94  ldr      x8, [sp, #8]
00023b98  cmp      x9, x8
00023b9c  b.ne     #0x23bbc
00023ba0  ldr      x30, [sp, #0x10]
00023ba4  adrp     x0, #0xad000
00023ba8  adrp     x1, #0xae000
00023bac  add      x0, x0, #0xd31
00023bb0  add      x1, x1, #0x1de
00023bb4  add      sp, sp, #0x20
00023bb8  b        #0x1d444
00023bbc  bl       #0x53a68
