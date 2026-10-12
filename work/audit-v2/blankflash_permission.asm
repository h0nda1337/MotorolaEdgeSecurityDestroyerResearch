00021d30  sub      sp, sp, #0x20
00021d34  stp      x30, x19, [sp, #0x10]
00021d38  adrp     x8, #0xd0000
00021d3c  adrp     x9, #0xd2000
00021d40  adrp     x10, #0xd2000
00021d44  ldr      x8, [x8, #0x8a0]
00021d48  str      x8, [sp, #8]
00021d4c  ldr      w8, [x9, #0x968]
00021d50  ldr      w9, [x10, #0x990]
00021d54  mov      w10, #0x7070
00021d58  cmp      w8, w10
00021d5c  mov      w8, #0x3579
00021d60  ccmp     w9, w8, #4, ne
00021d64  b.ne     #0x21d70
00021d68  mov      w0, #1
00021d6c  b        #0x21dd4
00021d70  adrp     x19, #0xd0000
00021d74  ldr      w8, [x19, #0x364]
00021d78  cmn      w8, #1
00021d7c  b.ne     #0x21da0
00021d80  bl       #0x2ad60
00021d84  adrp     x1, #0xad000
00021d88  and      w2, w0, #0xffff
00021d8c  add      x1, x1, #0xadb
00021d90  mov      w0, #1
00021d94  str      w2, [x19, #0x364]
00021d98  bl       #0x40c20
00021d9c  ldr      w8, [x19, #0x364]
00021da0  mov      w0, #1
00021da4  cmp      w8, #0xff
00021da8  b.eq     #0x21dd4
00021dac  adrp     x8, #0xd2000
00021db0  ldrb     w8, [x8, #0x975]
00021db4  tbnz     w8, #0, #0x21dd4
00021db8  adrp     x8, #0xd2000
00021dbc  adrp     x9, #0xd2000
00021dc0  ldrb     w8, [x8, #0x96c]
00021dc4  ldrb     w9, [x9, #0xbef]
00021dc8  cmp      w8, #0
00021dcc  cset     w8, eq
00021dd0  and      w0, w9, w8
00021dd4  adrp     x9, #0xd0000
00021dd8  ldr      x8, [sp, #8]
00021ddc  ldr      x9, [x9, #0x8a0]
00021de0  cmp      x9, x8
00021de4  b.ne     #0x21df4
00021de8  ldp      x30, x19, [sp, #0x10]
00021dec  add      sp, sp, #0x20
00021df0  ret      
00021df4  bl       #0x53a68
00021df8  sub      sp, sp, #0x30
00021dfc  str      x30, [sp, #0x10]
00021e00  stp      x20, x19, [sp, #0x20]
00021e04  adrp     x8, #0xd0000
