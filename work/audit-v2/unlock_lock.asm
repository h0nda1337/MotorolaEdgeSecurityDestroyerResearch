00022d08  sub      sp, sp, #0x60
00022d0c  str      x30, [sp, #0x40]
00022d10  stp      x20, x19, [sp, #0x50]
00022d14  adrp     x8, #0xd0000
00022d18  mov      x19, x1
00022d1c  mov      w20, w0
00022d20  adrp     x0, #0xa7000
00022d24  add      x0, x0, #0x2d8
00022d28  ldr      x8, [x8, #0x8a0]
00022d2c  str      x8, [sp, #0x38]
00022d30  ldr      x1, [x1]
00022d34  bl       #0x1be9c
00022d38  cbz      w0, #0x22d98
00022d3c  ldr      x1, [x19]
00022d40  adrp     x0, #0xb1000
00022d44  add      x0, x0, #0x271
00022d48  bl       #0x1be9c
00022d4c  cbz      w0, #0x22de8
00022d50  ldr      x1, [x19]
00022d54  adrp     x0, #0xad000
00022d58  add      x0, x0, #0xf85
00022d5c  bl       #0x1be9c
00022d60  cbz      w0, #0x22ddc
00022d64  ldr      x1, [x19]
00022d68  adrp     x0, #0xad000
00022d6c  add      x0, x0, #0xf87
00022d70  bl       #0x1be9c
00022d74  cbz      w0, #0x22ddc
00022d78  ldr      x1, [x19]
00022d7c  adrp     x0, #0xad000
00022d80  add      x0, x0, #0xfab
00022d84  bl       #0x1be9c
00022d88  cbz      w0, #0x22e70
00022d8c  adrp     x0, #0xae000
00022d90  add      x0, x0, #0x10
00022d94  b        #0x22ed0
00022d98  adrp     x8, #0xd2000
00022d9c  ldr      w8, [x8, #0x968]
00022da0  cbnz     w8, #0x22e18
00022da4  adrp     x8, #0xd2000
00022da8  mov      w9, #0x3579
00022dac  ldr      w8, [x8, #0x990]
00022db0  cmp      w8, w9
00022db4  b.eq     #0x22e18
00022db8  cmp      w20, #2
00022dbc  b.ne     #0x22e64
00022dc0  adrp     x9, #0xd0000
00022dc4  ldr      x0, [x19, #8]
00022dc8  ldr      x8, [sp, #0x38]
00022dcc  ldr      x9, [x9, #0x8a0]
00022dd0  cmp      x9, x8
00022dd4  b.eq     #0x22e30
00022dd8  b        #0x22f98
00022ddc  adrp     x0, #0xad000
00022de0  add      x0, x0, #0xf95
00022de4  b        #0x22ed0
00022de8  adrp     x19, #0xd2000
00022dec  mov      w9, #0x77ed
00022df0  ldr      w8, [x19, #0x968]
00022df4  cmp      w8, w9
00022df8  b.gt     #0x22e40
00022dfc  cbz      w8, #0x22e58
00022e00  mov      w9, #0x7070
00022e04  cmp      w8, w9
00022e08  b.ne     #0x22e90
00022e0c  adrp     x0, #0xae000
00022e10  add      x0, x0, #0x2ea
00022e14  b        #0x22ed0
00022e18  adrp     x9, #0xd0000
00022e1c  ldr      x8, [sp, #0x38]
00022e20  ldr      x9, [x9, #0x8a0]
00022e24  cmp      x9, x8
00022e28  b.ne     #0x22f98
00022e2c  mov      x0, xzr
00022e30  ldp      x20, x19, [sp, #0x50]
00022e34  ldr      x30, [sp, #0x40]
00022e38  add      sp, sp, #0x60
00022e3c  b        #0x22fa0
00022e40  mov      w9, #0x77ee
00022e44  cmp      w8, w9
00022e48  b.eq     #0x22e9c
00022e4c  mov      w9, #0x88ff
00022e50  cmp      w8, w9
00022e54  b.ne     #0x22e90
00022e58  adrp     x0, #0xae000
00022e5c  add      x0, x0, #0x3cc
00022e60  b        #0x22ed0
00022e64  adrp     x0, #0xad000
00022e68  add      x0, x0, #0xf5a
00022e6c  b        #0x22ed0
00022e70  adrp     x0, #0xad000
00022e74  add      x0, x0, #0xfbe
00022e78  bl       #0x43c8
00022e7c  adrp     x0, #0xad000
00022e80  add      x0, x0, #0xfe7
00022e84  bl       #0x43c8
00022e88  mov      w0, #1
00022e8c  b        #0x22ed8
00022e90  adrp     x0, #0xae000
00022e94  add      x0, x0, #0x3db
00022e98  b        #0x22ed0
00022e9c  bl       #0x4e2d4
00022ea0  cmp      w0, #1
00022ea4  b.ne     #0x22eb0
00022ea8  bl       #0x247d8
00022eac  b        #0x22eb8
00022eb0  mov      w0, wzr
00022eb4  bl       #0x28968
00022eb8  tst      w0, #0xff
00022ebc  b.eq     #0x22ed4
00022ec0  bl       #0x23bc0
00022ec4  cbz      w0, #0x22efc
00022ec8  adrp     x0, #0xae000
00022ecc  add      x0, x0, #0x382
00022ed0  bl       #0x43c8
00022ed4  mov      w0, wzr
00022ed8  adrp     x9, #0xd0000
00022edc  ldr      x8, [sp, #0x38]
00022ee0  ldr      x9, [x9, #0x8a0]
00022ee4  cmp      x9, x8
00022ee8  b.ne     #0x22f98
00022eec  ldp      x20, x19, [sp, #0x50]
00022ef0  ldr      x30, [sp, #0x40]
00022ef4  add      sp, sp, #0x60
00022ef8  ret      
00022efc  mov      w8, #0x88ff
00022f00  str      w8, [x19, #0x968]
00022f04  add      x8, sp, #0x20
00022f08  bl       #0x20c68
00022f0c  mov      w8, #1
00022f10  ldr      x10, [sp, #0x30]
00022f14  strb     w8, [sp, #0x28]
00022f18  ldp      x8, x9, [sp, #0x20]
00022f1c  str      x10, [sp, #0x18]
00022f20  stp      x8, x9, [sp, #8]
00022f24  bl       #0x6d5d8
00022f28  cbz      x0, #0x22f58
00022f2c  add      x0, x0, #0x94
00022f30  add      x1, sp, #8
00022f34  mov      w2, #0x18
00022f38  bl       #0x1c190
00022f3c  bl       #0x6d578
00022f40  cbz      x0, #0x22f68
00022f44  adrp     x1, #0xad000
00022f48  mov      w0, wzr
00022f4c  add      x1, x1, #0xa7f
00022f50  bl       #0x40c20
00022f54  b        #0x22ed4
00022f58  adrp     x1, #0xad000
00022f5c  add      x1, x1, #0xaa4
00022f60  bl       #0x40c20
00022f64  b        #0x22ed4
00022f68  adrp     x0, #0xae000
00022f6c  add      x0, x0, #0x3fa
00022f70  bl       #0x43c8
00022f74  adrp     x8, #0xd1000
00022f78  adrp     x0, #0xa4000
00022f7c  add      x8, x8, #0xd18
00022f80  add      x0, x0, #0xd11
00022f84  mov      w1, #2
00022f88  ldr      x8, [x8, #0x30]
00022f8c  blr      x8
00022f90  mov      w0, #1
00022f94  b        #0x22ed8
00022f98  bl       #0x53a68
00022f9c  udf      #0
00022fa0  sub      sp, sp, #0x60
00022fa4  stp      x30, x21, [sp, #0x40]
00022fa8  stp      x20, x19, [sp, #0x50]
00022fac  adrp     x8, #0xd0000
00022fb0  adrp     x20, #0xd2000
00022fb4  mov      x19, x0
00022fb8  mov      w9, #0x77ed
00022fbc  ldr      x8, [x8, #0x8a0]
00022fc0  str      x8, [sp, #0x38]
00022fc4  ldr      w8, [x20, #0x968]
00022fc8  cmp      w8, w9
00022fcc  b.gt     #0x22fec
00022fd0  cbz      w8, #0x23010
00022fd4  mov      w9, #0x7070
00022fd8  cmp      w8, w9
00022fdc  b.ne     #0x230ec
00022fe0  adrp     x0, #0xae000
00022fe4  add      x0, x0, #0x2ea
00022fe8  b        #0x231b8
00022fec  mov      w9, #0x88ff
00022ff0  cmp      w8, w9
00022ff4  b.eq     #0x23010
00022ff8  mov      w9, #0x77ee
00022ffc  cmp      w8, w9
00023000  b.ne     #0x230ec
00023004  adrp     x0, #0xae000
00023008  add      x0, x0, #0x2d9
0002300c  b        #0x231b8
00023010  bl       #0x29218
00023014  tst      w0, #0xff
00023018  b.eq     #0x23090
0002301c  adrp     x21, #0xd0000
00023020  ldr      w8, [x21, #0x364]
00023024  cmn      w8, #1
00023028  b.ne     #0x2304c
0002302c  bl       #0x2ad60
00023030  adrp     x1, #0xad000
00023034  and      w2, w0, #0xffff
00023038  add      x1, x1, #0xadb
0002303c  mov      w0, #1
00023040  str      w2, [x21, #0x364]
00023044  bl       #0x40c20
00023048  ldr      w8, [x21, #0x364]
0002304c  cmp      w8, #0xff
00023050  b.eq     #0x23090
00023054  adrp     x8, #0xd2000
00023058  ldrb     w8, [x8, #0x975]
0002305c  tbnz     w8, #0, #0x23090
00023060  adrp     x8, #0xd2000
00023064  ldr      w9, [x20, #0x968]
00023068  mov      w10, #0x7070
0002306c  ldr      w8, [x8, #0x990]
00023070  cmp      w9, w10
00023074  b.eq     #0x2309c
00023078  mov      w10, #0x3579
0002307c  cmp      w8, w10
00023080  b.eq     #0x2309c
00023084  adrp     x0, #0xae000
00023088  add      x0, x0, #0x32c
0002308c  b        #0x231b8
00023090  adrp     x8, #0xd2000
00023094  ldr      w9, [x20, #0x968]
00023098  ldr      w8, [x8, #0x990]
0002309c  cbnz     w9, #0x230d0
000230a0  mov      w9, #0x3579
000230a4  cmp      w8, w9
000230a8  b.eq     #0x230d0
000230ac  cbz      x19, #0x230c4
000230b0  mov      w1, #0x15
000230b4  mov      x0, x19
000230b8  bl       #0x1ce64
000230bc  cmp      x0, #0x15
000230c0  b.lo     #0x230d0
000230c4  adrp     x0, #0xad000
000230c8  add      x0, x0, #0xf5a
000230cc  b        #0x231b8
000230d0  bl       #0x4e2d4
000230d4  cmp      w0, #1
000230d8  b.ne     #0x230f8
000230dc  bl       #0x247d8
000230e0  tst      w0, #0xff
000230e4  b.ne     #0x23108
000230e8  b        #0x231bc
000230ec  adrp     x0, #0xae000
000230f0  add      x0, x0, #0x30b
000230f4  b        #0x231b8
000230f8  mov      w0, #1
000230fc  bl       #0x28968
00023100  tst      w0, #0xff
00023104  b.eq     #0x231bc
00023108  ldr      w8, [x20, #0x968]
0002310c  cbnz     w8, #0x23134
00023110  adrp     x8, #0xd2000
00023114  mov      w9, #0x3579
00023118  ldr      w8, [x8, #0x990]
0002311c  cmp      w8, w9
00023120  b.eq     #0x23134
00023124  mov      x0, x19
00023128  bl       #0x2b978
0002312c  tst      w0, #0xff
00023130  b.eq     #0x231a4
00023134  bl       #0x23bc0
00023138  cbz      w0, #0x23148
0002313c  adrp     x0, #0xae000
00023140  add      x0, x0, #0x382
00023144  b        #0x231b8
00023148  bl       #0x29c48
0002314c  tst      w0, #0xff
00023150  b.eq     #0x231b0
00023154  add      x8, sp, #0x20
00023158  bl       #0x20c68
0002315c  strb     wzr, [sp, #0x27]
00023160  strb     wzr, [sp, #0x28]
00023164  ldp      x8, x9, [sp, #0x20]
00023168  ldr      x10, [sp, #0x30]
0002316c  stp      x8, x9, [sp, #8]
00023170  str      x10, [sp, #0x18]
00023174  bl       #0x6d5d8
00023178  cbz      x0, #0x231e4
0002317c  add      x0, x0, #0x94
00023180  add      x1, sp, #8
00023184  mov      w2, #0x18
00023188  bl       #0x1c190
0002318c  bl       #0x6d578
00023190  cbz      x0, #0x231f4
00023194  adrp     x1, #0xad000
00023198  mov      w0, wzr
0002319c  add      x1, x1, #0xa7f
000231a0  b        #0x231ec
000231a4  adrp     x0, #0xae000
000231a8  add      x0, x0, #0x36a
000231ac  b        #0x231b8
000231b0  adrp     x0, #0xae000
000231b4  add      x0, x0, #0x39b
000231b8  bl       #0x43c8
000231bc  mov      w0, wzr
000231c0  adrp     x9, #0xd0000
000231c4  ldr      x8, [sp, #0x38]
000231c8  ldr      x9, [x9, #0x8a0]
000231cc  cmp      x9, x8
000231d0  b.ne     #0x2322c
000231d4  ldp      x20, x19, [sp, #0x50]
000231d8  ldp      x30, x21, [sp, #0x40]
000231dc  add      sp, sp, #0x60
000231e0  ret      
000231e4  adrp     x1, #0xad000
000231e8  add      x1, x1, #0xaa4
000231ec  bl       #0x40c20
000231f0  b        #0x231bc
000231f4  adrp     x0, #0xae000
000231f8  add      x0, x0, #0x3b3
000231fc  bl       #0x43c8
00023200  adrp     x8, #0xd1000
00023204  adrp     x0, #0xa4000
00023208  add      x8, x8, #0xd18
0002320c  mov      w9, #0x77ee
00023210  add      x0, x0, #0xd11
00023214  mov      w1, #2
00023218  ldr      x8, [x8, #0x30]
0002321c  str      w9, [x20, #0x968]
00023220  blr      x8
00023224  mov      w0, #1
00023228  b        #0x231c0
0002322c  bl       #0x53a68
