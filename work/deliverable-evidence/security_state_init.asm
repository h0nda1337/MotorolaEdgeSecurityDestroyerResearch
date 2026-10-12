00020ed0  adrp     x8, #0xd0000
00020ed4  adrp     x19, #0xd0000
00020ed8  tst      w0, #0xff
00020edc  ldr      x8, [x8, #0x8a0]
00020ee0  str      x8, [sp, #8]
00020ee4  b.ne     #0x20ef4
00020ee8  ldr      w0, [x19, #0x364]
00020eec  cmn      w0, #1
00020ef0  b.ne     #0x20f14
00020ef4  bl       #0x2ad60
00020ef8  adrp     x1, #0xad000
00020efc  and      w2, w0, #0xffff
00020f00  add      x1, x1, #0xadb
00020f04  mov      w0, #1
00020f08  str      w2, [x19, #0x364]
00020f0c  bl       #0x40c20
00020f10  ldr      w0, [x19, #0x364]
00020f14  adrp     x9, #0xd0000
00020f18  ldr      x8, [sp, #8]
00020f1c  ldr      x9, [x9, #0x8a0]
00020f20  cmp      x9, x8
00020f24  b.ne     #0x20f34
00020f28  ldp      x30, x19, [sp, #0x10]
00020f2c  add      sp, sp, #0x20
00020f30  ret      
00020f34  bl       #0x53a68
00020f38  sub      sp, sp, #0x20
00020f3c  stp      x30, x19, [sp, #0x10]
00020f40  adrp     x8, #0xd0000
00020f44  adrp     x19, #0xd0000
00020f48  ldr      x8, [x8, #0x8a0]
00020f4c  str      x8, [sp, #8]
00020f50  ldr      w8, [x19, #0x364]
00020f54  cmn      w8, #1
00020f58  b.ne     #0x20f7c
00020f5c  bl       #0x2ad60
00020f60  adrp     x1, #0xad000
00020f64  and      w2, w0, #0xffff
00020f68  add      x1, x1, #0xadb
00020f6c  mov      w0, #1
00020f70  str      w2, [x19, #0x364]
00020f74  bl       #0x40c20
00020f78  ldr      w8, [x19, #0x364]
00020f7c  adrp     x9, #0xd2000
00020f80  adrp     x11, #0xd0000
00020f84  cmp      w8, #0xff
00020f88  cset     w8, eq
00020f8c  ldrb     w9, [x9, #0x975]
00020f90  ldr      x10, [sp, #8]
00020f94  ldr      x11, [x11, #0x8a0]
00020f98  cmp      x11, x10
00020f9c  b.ne     #0x20fb4
00020fa0  ldp      x30, x19, [sp, #0x10]
00020fa4  orr      w8, w8, w9
00020fa8  and      w0, w8, #1
00020fac  add      sp, sp, #0x20
00020fb0  ret      
00020fb4  bl       #0x53a68
00020fb8  sub      sp, sp, #0x20
00020fbc  stp      x30, x19, [sp, #0x10]
00020fc0  adrp     x8, #0xd0000
00020fc4  adrp     x19, #0xd0000
00020fc8  ldr      x8, [x8, #0x8a0]
00020fcc  str      x8, [sp, #8]
00020fd0  ldr      w8, [x19, #0x364]
00020fd4  cmn      w8, #1
00020fd8  b.ne     #0x20ffc
00020fdc  bl       #0x2ad60
00020fe0  adrp     x1, #0xad000
00020fe4  and      w2, w0, #0xffff
00020fe8  add      x1, x1, #0xadb
00020fec  mov      w0, #1
00020ff0  str      w2, [x19, #0x364]
00020ff4  bl       #0x40c20
00020ff8  ldr      w8, [x19, #0x364]
00020ffc  adrp     x12, #0xd0000
00021000  cmn      w8, #1
00021004  ldr      x10, [sp, #8]
00021008  mov      w11, #0xffff
0002100c  cset     w9, ne
00021010  cmp      w8, w11
00021014  ldr      x12, [x12, #0x8a0]
00021018  cset     w8, ne
0002101c  cmp      x12, x10
00021020  b.ne     #0x21034
00021024  ldp      x30, x19, [sp, #0x10]
00021028  and      w0, w9, w8
0002102c  add      sp, sp, #0x20
00021030  ret      
00021034  bl       #0x53a68
00021038  sub      sp, sp, #0x60
0002103c  str      x30, [sp, #0x30]
00021040  stp      x22, x21, [sp, #0x40]
00021044  stp      x20, x19, [sp, #0x50]
00021048  adrp     x8, #0xd0000
0002104c  ldr      x8, [x8, #0x8a0]
00021050  str      x8, [sp, #0x28]
00021054  bl       #0x29b28
00021058  adrp     x20, #0xd2000
0002105c  tst      w0, #0xff
00021060  b.ne     #0x2106c
00021064  mov      w8, #0x7070
00021068  str      w8, [x20, #0x968]
0002106c  bl       #0x6cf38
00021070  mov      x19, x0
00021074  cbz      x0, #0x210a8
00021078  bl       #0x16834
0002107c  tst      w0, #0xff
00021080  b.eq     #0x210a8
00021084  mov      w0, #-0xffffffff80000000
00021088  bl       #0x1685c
0002108c  tst      w0, #0xff
00021090  b.eq     #0x210a8
00021094  adrp     x1, #0xad000
00021098  mov      w0, #-0xffffffff80000000
0002109c  add      x1, x1, #0xaf3
000210a0  mov      x2, x19
000210a4  bl       #0x16188
000210a8  bl       #0x7fa40
000210ac  mov      x1, sp
000210b0  mov      x0, xzr
000210b4  str      wzr, [sp]
000210b8  bl       #0x5c788
000210bc  ldr      w8, [sp]
000210c0  cmp      w8, #7
000210c4  b.ne     #0x210f8
000210c8  bl       #0x6d5d8
000210cc  cbz      x0, #0x210f8
000210d0  ldrb     w8, [x0, #0x90]
000210d4  cbnz     w8, #0x210f8
000210d8  mov      w8, #1
000210dc  strb     w8, [x0, #0x90]
000210e0  bl       #0x6d578
000210e4  cbz      x0, #0x210f8
000210e8  adrp     x1, #0xad000
000210ec  mov      w0, wzr
000210f0  add      x1, x1, #0xa7f
000210f4  bl       #0x40c20
000210f8  mov      x8, sp
000210fc  bl       #0x20c68
00021100  bl       #0x29c00
00021104  and      w8, w0, #0xff
00021108  cmp      w8, #1
0002110c  b.ne     #0x21130
00021110  ldrb     w8, [sp, #7]
00021114  cbnz     w8, #0x21130
00021118  ldrb     w8, [sp, #8]
0002111c  mov      w9, #0x88ff
00021120  cmp      w8, #1
00021124  mov      w8, #0x77ee
00021128  csel     w8, w9, w8, eq
0002112c  str      w8, [x20, #0x968]
00021130  bl       #0x2a938
00021134  tst      w0, #0xff
00021138  b.eq     #0x21148
0002113c  adrp     x8, #0xd2000
00021140  mov      w9, #0x3579
00021144  str      w9, [x8, #0x990]
00021148  ldr      w8, [x20, #0x968]
0002114c  mov      w21, #0x7070
00021150  str      wzr, [sp, #0x24]
00021154  str      xzr, [sp, #0x18]
00021158  cmp      w8, w21
0002115c  b.eq     #0x2130c
00021160  bl       #0x4e2d4
00021164  cmp      w0, #1
00021168  b.ne     #0x212dc
0002116c  adrp     x0, #0xae000
00021170  add      x0, x0, #0x22f
00021174  bl       #0x7f2a0
00021178  adrp     x0, #0xae000
0002117c  add      x1, sp, #0x24
00021180  add      x0, x0, #0x23b
00021184  mov      w2, #4
00021188  bl       #0x92260
0002118c  cmp      w0, #4
00021190  b.ne     #0x211e4
00021194  bl       #0x2a130
00021198  mov      x1, x0
0002119c  adrp     x0, #0xae000
000211a0  add      x0, x0, #0x247
000211a4  bl       #0x1be9c
000211a8  cbnz     w0, #0x211b8
000211ac  adrp     x0, #0xae000
000211b0  add      x0, x0, #0x247
000211b4  bl       #0x7f2a0
000211b8  ldr      w8, [sp, #0x24]
000211bc  cmp      w8, #2
000211c0  b.eq     #0x211dc
000211c4  cmp      w8, #1
000211c8  b.ne     #0x211e4
000211cc  adrp     x8, #0xd2000
000211d0  mov      w9, #1
000211d4  strb     w9, [x8, #0x974]
000211d8  b        #0x211e4
000211dc  bl       #0x58278
000211e0  bl       #0x59bb0
000211e4  adrp     x0, #0xae000
000211e8  add      x1, sp, #0x18
000211ec  add      x0, x0, #0x256
000211f0  mov      w2, #8
000211f4  bl       #0x92260
000211f8  cbz      w0, #0x21274
000211fc  ldr      w22, [sp, #0x1c]
00021200  bl       #0x29d38
00021204  cmp      x22, w0, sxtw
00021208  b.hs     #0x2128c
0002120c  adrp     x22, #0xd0000
00021210  ldr      w8, [x22, #0x364]
00021214  cmn      w8, #1
00021218  b.ne     #0x2123c
0002121c  bl       #0x2ad60
00021220  adrp     x1, #0xad000
00021224  and      w2, w0, #0xffff
00021228  add      x1, x1, #0xadb
0002122c  mov      w0, #1
00021230  str      w2, [x22, #0x364]
00021234  bl       #0x40c20
00021238  ldr      w8, [x22, #0x364]
0002123c  cmp      w8, #0xff
00021240  b.eq     #0x212dc
00021244  adrp     x8, #0xd2000
00021248  ldrb     w8, [x8, #0x975]
0002124c  tbnz     w8, #0, #0x212dc
00021250  ldr      w19, [sp, #0x1c]
00021254  bl       #0x29d38
00021258  adrp     x1, #0xae000
0002125c  mov      w3, w0
00021260  mov      w0, #5
00021264  add      x1, x1, #0x288
00021268  mov      x2, x19
0002126c  bl       #0x40c20
00021270  b        #0x21284
00021274  adrp     x1, #0xae000
00021278  mov      w0, #5
0002127c  add      x1, x1, #0x26c
00021280  bl       #0x40c20
00021284  mov      x19, #-0x7ffffffffffffff9
00021288  b        #0x212dc
0002128c  ldr      w22, [sp, #0x1c]
00021290  bl       #0x29d38
00021294  cmp      x22, w0, sxtw
00021298  b.ls     #0x212dc
0002129c  bl       #0x2a130
000212a0  mov      x1, x0
000212a4  adrp     x0, #0xae000
000212a8  add      x0, x0, #0x247
000212ac  bl       #0x1be9c
000212b0  cbz      w0, #0x212c4
000212b4  adrp     x8, #0xd2000
000212b8  mov      w9, #1
000212bc  strb     w9, [x8, #0x974]
000212c0  b        #0x212dc
000212c4  ldr      w0, [sp, #0x1c]
000212c8  bl       #0x29e00
000212cc  tst      w0, #0xff
000212d0  b.eq     #0x21388
000212d4  bl       #0x58278
000212d8  bl       #0x59bb0
000212dc  ldr      w8, [x20, #0x968]
000212e0  cmp      w8, w21
000212e4  b.eq     #0x2130c
000212e8  adrp     x0, #0x23000
000212ec  add      x0, x0, #0xc90
000212f0  bl       #0x57278
000212f4  cbz      w0, #0x2130c
000212f8  bl       #0x24198
000212fc  adrp     x8, #0xd2000
00021300  mov      w9, #1
00021304  mov      x19, #-0x7ffffffffffffff9
00021308  strb     w9, [x8, #0xbee]
0002130c  bl       #0x2d138
00021310  tbnz     w0, #0, #0x21340
00021314  bl       #0x16834
00021318  tst      w0, #0xff
0002131c  b.eq     #0x21340
00021320  mov      w0, #-0xffffffff80000000
00021324  bl       #0x1685c
00021328  tst      w0, #0xff
0002132c  b.eq     #0x21340
00021330  adrp     x1, #0xad000
00021334  mov      w0, #-0xffffffff80000000
00021338  add      x1, x1, #0xb1a
0002133c  bl       #0x16188
00021340  cbnz     x19, #0x21360
00021344  adrp     x8, #0xd2000
00021348  mov      w9, #1
0002134c  adrp     x10, #0xd2000
00021350  adrp     x11, #0xd2000
00021354  strb     w9, [x8, #0x96c]
00021358  strb     w9, [x10, #0x978]
0002135c  strb     w9, [x11, #0x97c]
00021360  adrp     x9, #0xd0000
00021364  ldr      x8, [sp, #0x28]
00021368  ldr      x9, [x9, #0x8a0]
0002136c  cmp      x9, x8
00021370  b.ne     #0x213a0
00021374  ldp      x20, x19, [sp, #0x50]
00021378  ldr      x30, [sp, #0x30]
0002137c  ldp      x22, x21, [sp, #0x40]
00021380  add      sp, sp, #0x60
00021384  ret      
00021388  ldr      w2, [sp, #0x1c]
0002138c  adrp     x1, #0xae000
00021390  mov      w0, #5
00021394  add      x1, x1, #0x2a6
00021398  bl       #0x40c20
0002139c  b        #0x21284
000213a0  bl       #0x53a68
000213a4  udf      #0
000213a8  sub      sp, sp, #0x20
000213ac  str      x30, [sp, #0x10]
000213b0  adrp     x8, #0xd0000
000213b4  tst      w0, #1
000213b8  mov      w9, #0x3579
000213bc  adrp     x10, #0xd2000
000213c0  csel     w9, w9, wzr, ne
000213c4  ldr      x8, [x8, #0x8a0]
000213c8  str      x8, [sp, #8]
000213cc  str      w9, [x10, #0x990]
000213d0  adrp     x9, #0xd0000
000213d4  ldr      x8, [sp, #8]
000213d8  ldr      x9, [x9, #0x8a0]
000213dc  cmp      x9, x8
000213e0  b.ne     #0x213f0
000213e4  ldr      x30, [sp, #0x10]
000213e8  add      sp, sp, #0x20
000213ec  ret      
000213f0  bl       #0x53a68
000213f4  udf      #0
000213f8  sub      sp, sp, #0x20
000213fc  stp      x30, x19, [sp, #0x10]
00021400  adrp     x8, #0xd0000
00021404  mov      x1, x0
00021408  mov      w2, #5
0002140c  mov      x0, sp
00021410  mov      x19, sp
00021414  ldr      x8, [x8, #0x8a0]
00021418  str      x8, [sp, #8]
0002141c  bl       #0x1c190
00021420  ldrb     w8, [sp]
00021424  cmp      w8, #0x20
00021428  b.ne     #0x21434
0002142c  mov      x8, xzr
00021430  b        #0x21480
00021434  ldrb     w8, [sp, #1]
00021438  cmp      w8, #0x20
0002143c  b.ne     #0x21448
00021440  mov      w8, #1
00021444  b        #0x21480
00021448  ldrb     w8, [sp, #2]
0002144c  cmp      w8, #0x20
00021450  b.ne     #0x2145c
00021454  mov      w8, #2
00021458  b        #0x21480
0002145c  ldrb     w8, [sp, #3]
00021460  cmp      w8, #0x20
00021464  b.ne     #0x21470
00021468  mov      w8, #3
0002146c  b        #0x21480
00021470  ldrb     w8, [sp, #4]
00021474  cmp      w8, #0x20
00021478  b.ne     #0x214ac
0002147c  mov      w8, #4
00021480  mov      x0, sp
00021484  strb     wzr, [x19, x8]
00021488  bl       #0x1a2a0
0002148c  adrp     x9, #0xd0000
00021490  ldr      x8, [sp, #8]
00021494  ldr      x9, [x9, #0x8a0]
00021498  cmp      x9, x8
0002149c  b.ne     #0x214b4
000214a0  ldp      x30, x19, [sp, #0x10]
000214a4  add      sp, sp, #0x20
000214a8  ret      
000214ac  mov      w0, #-1
000214b0  b        #0x2148c
000214b4  bl       #0x53a68
