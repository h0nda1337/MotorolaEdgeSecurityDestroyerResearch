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
