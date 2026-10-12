
RANGE 0002a938 - 0002ab70
0002a938  sub      sp, sp, #0x1b0
0002a93c  stp      x29, x30, [sp, #0x1a0]
0002a940  adrp     x8, #0xd0000
0002a944  adrp     x1, #0xb0000
0002a948  mov      w0, #-1
0002a94c  add      x1, x1, #0xb8f ; 'cid'
0002a950  ldr      x8, [x8, #0x8a0]
0002a954  str      x8, [sp, #0x198]
0002a958  bl       #0x56770
0002a95c  tbnz     w0, #0x1f, #0x2a9bc
0002a960  mov      w2, #0xfa00
0002a964  mov      w3, #0x190
0002a968  add      x1, sp, #8
0002a96c  bl       #0x56bd0
0002a970  cmp      x0, #0x190
0002a974  b.lo     #0x2a9bc
0002a978  ldrb     w8, [sp, #0x44]
0002a97c  cmp      w8, #0x22
0002a980  b.ne     #0x2a9bc
0002a984  ldrb     w8, [sp, #0x45]
0002a988  cmp      w8, #0xff
0002a98c  b.ne     #0x2a9bc
0002a990  ldrb     w8, [sp, #0x46]
0002a994  cmp      w8, #0x11
0002a998  b.ne     #0x2a9bc
0002a99c  ldrb     w8, [sp, #0x47]
0002a9a0  cmp      w8, #0xee
0002a9a4  b.ne     #0x2a9bc
0002a9a8  add      x0, sp, #8
0002a9ac  bl       #0x38d00
0002a9b0  cmp      w0, #0xf
0002a9b4  cset     w0, eq
0002a9b8  b        #0x2a9c0
0002a9bc  mov      w0, wzr
0002a9c0  adrp     x9, #0xd0000
0002a9c4  ldr      x8, [sp, #0x198]
0002a9c8  ldr      x9, [x9, #0x8a0]
0002a9cc  cmp      x9, x8
0002a9d0  b.ne     #0x2a9e0
0002a9d4  ldp      x29, x30, [sp, #0x1a0]
0002a9d8  add      sp, sp, #0x1b0
0002a9dc  ret      
0002a9e0  bl       #0x53a68
0002a9e4  udf      #0
0002a9e8  sub      sp, sp, #0x20
0002a9ec  str      x30, [sp, #0x10]
0002a9f0  adrp     x8, #0xd0000
0002a9f4  adrp     x9, #0xd3000
0002a9f8  ldr      x8, [x8, #0x8a0]
0002a9fc  str      x8, [sp, #8]
0002aa00  ldrb     w0, [x9, #0x4c8]
0002aa04  adrp     x9, #0xd0000
0002aa08  ldr      x8, [sp, #8]
0002aa0c  ldr      x9, [x9, #0x8a0]
0002aa10  cmp      x9, x8
0002aa14  b.ne     #0x2aa24
0002aa18  ldr      x30, [sp, #0x10]
0002aa1c  add      sp, sp, #0x20
0002aa20  ret      
0002aa24  bl       #0x53a68
0002aa28  sub      sp, sp, #0x60
0002aa2c  str      x30, [sp, #0x40]
0002aa30  stp      x20, x19, [sp, #0x50]
0002aa34  adrp     x8, #0xd0000
0002aa38  mov      x19, x1
0002aa3c  mov      w20, w0
0002aa40  ldr      x8, [x8, #0x8a0]
0002aa44  str      x8, [sp, #0x38]
0002aa48  add      x8, sp, #0x20
0002aa4c  bl       #0x20c68
0002aa50  cmp      w20, #1
0002aa54  b.gt     #0x2aab0
0002aa58  adrp     x0, #0xb0000
0002aa5c  add      x0, x0, #0x4c6 ; 'usage: fastboot oem ssm [options]'
0002aa60  bl       #0x43c8
0002aa64  adrp     x0, #0xc2000
0002aa68  add      x0, x0, #0x4da
0002aa6c  bl       #0x43c8
0002aa70  adrp     x0, #0xa7000
0002aa74  add      x0, x0, #0x423 ; 'options:'
0002aa78  bl       #0x43c8
0002aa7c  adrp     x0, #0xb0000
0002aa80  add      x0, x0, #0x4e8 ; '  disable-verity   disable dm-verity checking '
0002aa84  bl       #0x43c8
0002aa88  adrp     x0, #0xb0000
0002aa8c  add      x0, x0, #0x517 ; '  enable-verity    re-enable dm-verity checking'
0002aa90  bl       #0x43c8
0002aa94  adrp     x0, #0xb0000
0002aa98  add      x0, x0, #0x547 ; '  adb_early_off    disable adb on early boot'
0002aa9c  bl       #0x43c8
0002aaa0  adrp     x0, #0xb0000
0002aaa4  add      x0, x0, #0x574 ; '  adb_early_on     enable adb on early boot'
0002aaa8  bl       #0x43c8
0002aaac  b        #0x2ab20
0002aab0  ldr      x0, [x19, #8]
0002aab4  adrp     x1, #0xb0000
0002aab8  add      x1, x1, #0x45a ; 'disable-verity'
0002aabc  bl       #0x1be9c
0002aac0  cbz      w0, #0x2ab1c
0002aac4  ldr      x0, [x19, #8]
0002aac8  adrp     x1, #0xb0000
0002aacc  add      x1, x1, #0x469 ; 'enable-verity'
0002aad0  bl       #0x1be9c
0002aad4  cbz      w0, #0x2ab18
0002aad8  ldr      x0, [x19, #8]
0002aadc  adrp     x1, #0xb0000
0002aae0  add      x1, x1, #0x477 ; 'disable-adb'
0002aae4  bl       #0x1be9c
0002aae8  cbz      w0, #0x2ab44
0002aaec  ldr      x0, [x19, #8]
0002aaf0  adrp     x1, #0xb0000
0002aaf4  add      x1, x1, #0x483 ; 'enable-adb'
0002aaf8  bl       #0x1be9c
0002aafc  cbnz     w0, #0x2aa58
0002ab00  adrp     x0, #0xb0000
0002ab04  mov      w8, #1
0002ab08  add      x0, x0, #0x48e ; 'NOTE: androidboot.adb_early=1 will be added to cmdline!'
0002ab0c  strb     w8, [sp, #0x30]
0002ab10  bl       #0x43c8
0002ab14  b        #0x2ab48
0002ab18  mov      w0, #1
0002ab1c  bl       #0x223b0
0002ab20  adrp     x9, #0xd0000
0002ab24  ldr      x8, [sp, #0x38]
0002ab28  ldr      x9, [x9, #0x8a0]
0002ab2c  cmp      x9, x8
0002ab30  b.ne     #0x2ab6c
0002ab34  ldp      x20, x19, [sp, #0x50]
0002ab38  ldr      x30, [sp, #0x40]
0002ab3c  add      sp, sp, #0x60
0002ab40  ret      
0002ab44  strb     wzr, [sp, #0x30]
0002ab48  ldp      x8, x9, [sp, #0x20]
0002ab4c  add      x0, sp, #8
0002ab50  ldr      x10, [sp, #0x30]
0002ab54  stp      x8, x9, [sp, #8]
0002ab58  str      x10, [sp, #0x18]
0002ab5c  bl       #0x20ae8
0002ab60  adrp     x0, #0xb0000
0002ab64  add      x0, x0, #0x43a ; 'Ok.'
0002ab68  b        #0x2aaa8
0002ab6c  bl       #0x53a68

RANGE 0002a588 - 0002a938
0002a588  sub      sp, sp, #0x90
0002a58c  str      x30, [sp, #0x60]
0002a590  stp      x22, x21, [sp, #0x70]
0002a594  stp      x20, x19, [sp, #0x80]
0002a598  adrp     x8, #0xd0000
0002a59c  mov      x19, x1
0002a5a0  mov      w20, w0
0002a5a4  ldr      x8, [x8, #0x8a0]
0002a5a8  str      x8, [sp, #0x58]
0002a5ac  mov      x8, sp
0002a5b0  bl       #0x20c68
0002a5b4  subs     w21, w20, #1
0002a5b8  b.gt     #0x2a5c4
0002a5bc  bl       #0x2a4a0
0002a5c0  b        #0x2a7bc
0002a5c4  mov      x22, x19
0002a5c8  adrp     x1, #0xb0000
0002a5cc  add      x1, x1, #0x2ff ; 'wp'
0002a5d0  ldr      x0, [x22, #8]!
0002a5d4  bl       #0x1be9c
0002a5d8  cbz      w0, #0x2a698
0002a5dc  ldr      x0, [x22]
0002a5e0  adrp     x1, #0xa6000
0002a5e4  add      x1, x1, #0xa0b ; 'prov'
0002a5e8  bl       #0x1be9c
0002a5ec  cbz      w0, #0x2a6a8
0002a5f0  ldr      x0, [x22]
0002a5f4  bl       #0x1a2a0
0002a5f8  sub      w8, w0, #1
0002a5fc  cmp      w8, #6
0002a600  b.hi     #0x2a6b8
0002a604  adrp     x9, #0xb0000
0002a608  add      x9, x9, #0x134
0002a60c  adr      x10, #0x2a61c
0002a610  ldrb     w11, [x9, x8]
0002a614  add      x10, x10, x11, lsl #2
0002a618  br       x10
0002a61c  adrp     x0, #0xb0000
0002a620  add      x0, x0, #0x302 ; 'SSM state:  '
0002a624  bl       #0x43c8
0002a628  bl       #0x22270
0002a62c  bl       #0x43c8
0002a630  adrp     x19, #0xb6000
0002a634  add      x19, x19, #0x366 ; '.'
0002a638  mov      x0, x19
0002a63c  bl       #0x43c8
0002a640  adrp     x0, #0xb0000
0002a644  add      x0, x0, #0x30f ; 'SSM kernel cmdline:'
0002a648  bl       #0x43c8
0002a64c  bl       #0x22758
0002a650  bl       #0x43c8
0002a654  mov      x0, x19
0002a658  bl       #0x43c8
0002a65c  adrp     x0, #0xb0000
0002a660  add      x0, x0, #0x323 ; 'SSM android hab check:'
0002a664  bl       #0x43c8
0002a668  bl       #0x2a130
0002a66c  bl       #0x43c8
0002a670  mov      w0, #0x800
0002a674  bl       #0x29400
0002a678  adrp     x2, #0xb0000
0002a67c  mov      w3, w0
0002a680  add      x2, x2, #0x33a ; 'SSM qsee state: 0x%x'
0002a684  add      x0, sp, #0x18
0002a688  mov      w1, #0x40
0002a68c  bl       #0x1a704
0002a690  add      x0, sp, #0x18
0002a694  b        #0x2a7b8
0002a698  mov      w0, w21
0002a69c  mov      x1, x22
0002a6a0  bl       #0x2bf58
0002a6a4  b        #0x2a7bc
0002a6a8  mov      w0, w21
0002a6ac  mov      x1, x22
0002a6b0  bl       #0x2cc78
0002a6b4  b        #0x2a7bc
0002a6b8  mov      w21, w0
0002a6bc  bl       #0x4e2d4
0002a6c0  cmp      w21, #8
0002a6c4  b.ne     #0x2a7e4
0002a6c8  cmp      w0, #2
0002a6cc  b.ne     #0x2a7e4
0002a6d0  mov      w0, wzr
0002a6d4  bl       #0x28b90
0002a6d8  adrp     x0, #0xb0000
0002a6dc  add      x0, x0, #0x3c7 ; 'Note: avb will be removed from fsmgr_flags.'
0002a6e0  bl       #0x43c8
0002a6e4  adrp     x0, #0xb0000
0002a6e8  add      x0, x0, #0x3f3 ; '      run "fastboot continue" now.'
0002a6ec  b        #0x2a7ac
0002a6f0  bl       #0x4e2d4
0002a6f4  cmp      w0, #2
0002a6f8  b.ne     #0x2a714
0002a6fc  bl       #0x218f8
0002a700  tst      w0, #0xff
0002a704  b.eq     #0x2a714
0002a708  adrp     x0, #0xb0000
0002a70c  add      x0, x0, #0x384 ; 'Note: This change requires both FDR and reboot.'
0002a710  bl       #0x43c8
0002a714  cmp      w20, #3
0002a718  b.ne     #0x2a79c
0002a71c  ldr      x0, [x19, #0x10]
0002a720  bl       #0x1cbd0
0002a724  cbz      w0, #0x2a79c
0002a728  mov      w0, #1
0002a72c  bl       #0x223b0
0002a730  adrp     x0, #0xb0000
0002a734  add      x0, x0, #0x3b4 ; 'Enabled.'
0002a738  b        #0x2a7b8
0002a73c  mov      w8, #1
0002a740  strb     w8, [sp, #4]
0002a744  b        #0x2a768
0002a748  add      x8, sp, #0x18
0002a74c  bl       #0x20b70
0002a750  b        #0x2a7b0
0002a754  adrp     x0, #0xb0000
0002a758  add      x0, x0, #0x34f ; 'Note: SE policy can not be disabled for user builds.'
0002a75c  bl       #0x43c8
0002a760  mov      w8, #1
0002a764  strb     w8, [sp, #6]
0002a768  ldp      x9, x8, [sp]
0002a76c  add      x0, sp, #0x18
0002a770  ldr      x10, [sp, #0x10]
0002a774  stp      x9, x8, [sp, #0x18]
0002a778  str      x10, [sp, #0x28]
0002a77c  bl       #0x20ae8
0002a780  b        #0x2a7b0
0002a784  bl       #0x214b8
0002a788  b        #0x2a7b0
0002a78c  adrp     x8, #0xd2000
0002a790  mov      w9, #1
0002a794  strb     w9, [x8, #0x970]
0002a798  b        #0x2a7b0
0002a79c  mov      w0, wzr
0002a7a0  bl       #0x223b0
0002a7a4  adrp     x0, #0xb0000
0002a7a8  add      x0, x0, #0x3bd ; 'Disabled.'
0002a7ac  bl       #0x43c8
0002a7b0  adrp     x0, #0xb0000
0002a7b4  add      x0, x0, #0x43a ; 'Ok.'
0002a7b8  bl       #0x43c8
0002a7bc  adrp     x9, #0xd0000
0002a7c0  ldr      x8, [sp, #0x58]
0002a7c4  ldr      x9, [x9, #0x8a0]
0002a7c8  cmp      x9, x8
0002a7cc  b.ne     #0x2a814
0002a7d0  ldp      x20, x19, [sp, #0x80]
0002a7d4  ldr      x30, [sp, #0x60]
0002a7d8  ldp      x22, x21, [sp, #0x70]
0002a7dc  add      sp, sp, #0x90
0002a7e0  ret      
0002a7e4  cmp      w21, #9
0002a7e8  b.ne     #0x2a5bc
0002a7ec  adrp     x8, #0xd3000
0002a7f0  mov      w9, #1
0002a7f4  strb     w9, [x8, #0x4c8]
0002a7f8  bl       #0x20a60
0002a7fc  adrp     x0, #0xb0000
0002a800  add      x0, x0, #0x416 ; 'Note: force using ROT prod keyring.'
0002a804  bl       #0x43c8
0002a808  adrp     x0, #0xb0000
0002a80c  add      x0, x0, #0x3f3 ; '      run "fastboot continue" now.'
0002a810  b        #0x2a7b8
0002a814  bl       #0x53a68
0002a818  sub      sp, sp, #0x1d0
0002a81c  str      x29, [sp, #0x1a0]
0002a820  stp      x30, x21, [sp, #0x1b0]
0002a824  stp      x20, x19, [sp, #0x1c0]
0002a828  adrp     x8, #0xd0000
0002a82c  mov      w20, w1
0002a830  adrp     x1, #0xb0000
0002a834  mov      x19, x0
0002a838  mov      w0, #-1
0002a83c  add      x1, x1, #0xb8f ; 'cid'
0002a840  ldr      x8, [x8, #0x8a0]
0002a844  str      x8, [sp, #0x198]
0002a848  bl       #0x56770
0002a84c  tbnz     w0, #0x1f, #0x2a904
0002a850  mov      w21, w0
0002a854  bl       #0x56940
0002a858  mov      w8, #0xfa00
0002a85c  add      x8, x8, w20, uxtw
0002a860  cmp      x8, x0
0002a864  b.ls     #0x2a87c
0002a868  adrp     x1, #0xb0000
0002a86c  mov      w0, wzr
0002a870  add      x1, x1, #0x43e ; 'Token too big for partition'
0002a874  bl       #0x40c20
0002a878  b        #0x2a904
0002a87c  cbz      x19, #0x2a8c4
0002a880  ldrb     w8, [x19, #0x3c]
0002a884  cmp      w8, #0x22
0002a888  b.ne     #0x2a904
0002a88c  ldrb     w8, [x19, #0x3d]
0002a890  cmp      w8, #0xff
0002a894  b.ne     #0x2a904
0002a898  ldrb     w8, [x19, #0x3e]
0002a89c  cmp      w8, #0x11
0002a8a0  b.ne     #0x2a904
0002a8a4  ldrb     w8, [x19, #0x3f]
0002a8a8  cmp      w8, #0xee
0002a8ac  b.ne     #0x2a904
0002a8b0  mov      x0, x19
0002a8b4  bl       #0x38d00
0002a8b8  cmp      w0, #0xf
0002a8bc  b.eq     #0x2a8dc
0002a8c0  b        #0x2a904
0002a8c4  mov      w20, #0x190
0002a8c8  add      x0, sp, #8
0002a8cc  mov      w1, wzr
0002a8d0  mov      x2, x20
0002a8d4  add      x19, sp, #8
0002a8d8  bl       #0x1ca9c
0002a8dc  mov      w20, w20
0002a8e0  mov      w2, #0xfa00
0002a8e4  mov      w0, w21
0002a8e8  mov      x1, x19
0002a8ec  mov      x3, x20
0002a8f0  bl       #0x56c28
0002a8f4  cmp      x0, x20
0002a8f8  b.ne     #0x2a904
0002a8fc  mov      w0, #1
0002a900  b        #0x2a908
0002a904  mov      w0, wzr
0002a908  adrp     x9, #0xd0000
0002a90c  ldr      x8, [sp, #0x198]
0002a910  ldr      x9, [x9, #0x8a0]
0002a914  cmp      x9, x8
0002a918  b.ne     #0x2a930
0002a91c  ldp      x20, x19, [sp, #0x1c0]
0002a920  ldr      x29, [sp, #0x1a0]
0002a924  ldp      x30, x21, [sp, #0x1b0]
0002a928  add      sp, sp, #0x1d0
0002a92c  ret      
0002a930  bl       #0x53a68
0002a934  udf      #0

RANGE 00029b28 - 00029d38
00029b28  sub      sp, sp, #0x20
00029b2c  stp      x30, x19, [sp, #0x10]
00029b30  adrp     x8, #0xd0000
00029b34  adrp     x0, #0xa6000
00029b38  add      x0, x0, #0xa0b ; 'prov'
00029b3c  ldr      x8, [x8, #0x8a0]
00029b40  str      x8, [sp, #8]
00029b44  bl       #0x5ce84
00029b48  mov      w19, w0
00029b4c  mov      w0, #2
00029b50  bl       #0x29618
00029b54  tbnz     w19, #0, #0x29b68
00029b58  cmn      w0, #1
00029b5c  b.eq     #0x29b8c
00029b60  mov      w0, #2
00029b64  bl       #0x29618
00029b68  and      w0, w0, #1
00029b6c  adrp     x9, #0xd0000
00029b70  ldr      x8, [sp, #8]
00029b74  ldr      x9, [x9, #0x8a0]
00029b78  cmp      x9, x8
00029b7c  b.ne     #0x29bbc
00029b80  ldp      x30, x19, [sp, #0x10]
00029b84  add      sp, sp, #0x20
00029b88  ret      
00029b8c  adrp     x0, #0xad000
00029b90  mov      x1, sp
00029b94  add      x0, x0, #0xc9a ; 'security_attributes'
00029b98  mov      w2, #8
00029b9c  bl       #0x92260
00029ba0  cbz      w0, #0x29bb4
00029ba4  ldrb     w8, [sp]
00029ba8  tbnz     w8, #0, #0x29bb4
00029bac  mov      w0, wzr
00029bb0  b        #0x29b6c
00029bb4  mov      w0, #1
00029bb8  b        #0x29b6c
00029bbc  bl       #0x53a68
00029bc0  sub      sp, sp, #0x20
00029bc4  str      x30, [sp, #0x10]
00029bc8  adrp     x8, #0xd0000
00029bcc  adrp     x9, #0xd0000
00029bd0  ldr      x8, [x8, #0x8a0]
00029bd4  ldr      x9, [x9, #0x8a0]
00029bd8  str      x8, [sp, #8]
00029bdc  ldr      x8, [sp, #8]
00029be0  cmp      x9, x8
00029be4  b.ne     #0x29bfc
00029be8  ldr      x30, [sp, #0x10]
00029bec  mov      w0, #2
00029bf0  mov      w1, #1
00029bf4  add      sp, sp, #0x20
00029bf8  b        #0x29970
00029bfc  bl       #0x53a68
00029c00  sub      sp, sp, #0x20
00029c04  str      x30, [sp, #0x10]
00029c08  adrp     x8, #0xd0000
00029c0c  mov      w0, #2
00029c10  ldr      x8, [x8, #0x8a0]
00029c14  str      x8, [sp, #8]
00029c18  bl       #0x29618
00029c1c  adrp     x9, #0xd0000
00029c20  ldr      x8, [sp, #8]
00029c24  ldr      x9, [x9, #0x8a0]
00029c28  cmp      x9, x8
00029c2c  b.ne     #0x29c40
00029c30  ldr      x30, [sp, #0x10]
00029c34  ubfx     w0, w0, #1, #1
00029c38  add      sp, sp, #0x20
00029c3c  ret      
00029c40  bl       #0x53a68
00029c44  udf      #0
00029c48  sub      sp, sp, #0x20
00029c4c  str      x30, [sp, #0x10]
00029c50  adrp     x8, #0xd0000
00029c54  adrp     x9, #0xd0000
00029c58  ldr      x8, [x8, #0x8a0]
00029c5c  ldr      x9, [x9, #0x8a0]
00029c60  str      x8, [sp, #8]
00029c64  ldr      x8, [sp, #8]
00029c68  cmp      x9, x8
00029c6c  b.ne     #0x29c84
00029c70  ldr      x30, [sp, #0x10]
00029c74  mov      w0, #2
00029c78  mov      w1, #2
00029c7c  add      sp, sp, #0x20
00029c80  b        #0x29970
00029c84  bl       #0x53a68
00029c88  sub      sp, sp, #0x20
00029c8c  str      x30, [sp, #0x10]
00029c90  adrp     x8, #0xd0000
00029c94  mov      w0, #3
00029c98  ldr      x8, [x8, #0x8a0]
00029c9c  str      x8, [sp, #8]
00029ca0  bl       #0x29618
00029ca4  adrp     x9, #0xd0000
00029ca8  ldr      x8, [sp, #8]
00029cac  ldr      x9, [x9, #0x8a0]
00029cb0  cmp      x9, x8
00029cb4  b.ne     #0x29cd8
00029cb8  mov      w8, w0
00029cbc  ldr      x30, [sp, #0x10]
00029cc0  fmov     d0, x8
00029cc4  cnt      v0.8b, v0.8b
00029cc8  uaddlv   h0, v0.8b
00029ccc  fmov     w0, s0
00029cd0  add      sp, sp, #0x20
00029cd4  ret      
00029cd8  bl       #0x53a68
00029cdc  udf      #0
00029ce0  sub      sp, sp, #0x20
00029ce4  str      x30, [sp, #0x10]
00029ce8  adrp     x8, #0xd0000
00029cec  adrp     x11, #0xd0000
00029cf0  and      w9, w0, #0xff
00029cf4  mov      x10, #-1
00029cf8  cmp      w9, #0x3f
00029cfc  mov      w9, #-1
00029d00  ldr      x8, [x8, #0x8a0]
00029d04  lsl      x10, x10, x0
00029d08  ldr      x11, [x11, #0x8a0]
00029d0c  csinv    w1, w9, w10, hi
00029d10  str      x8, [sp, #8]
00029d14  ldr      x8, [sp, #8]
00029d18  cmp      x11, x8
00029d1c  b.ne     #0x29d30
00029d20  ldr      x30, [sp, #0x10]
00029d24  mov      w0, #3
00029d28  add      sp, sp, #0x20
00029d2c  b        #0x29970
00029d30  bl       #0x53a68
00029d34  udf      #0

RANGE 0002ab70 - 0002ae90
0002ab70  sub      sp, sp, #0x50
0002ab74  stp      x30, x21, [sp, #0x30]
0002ab78  stp      x20, x19, [sp, #0x40]
0002ab7c  adrp     x8, #0xd0000
0002ab80  mov      w20, w1
0002ab84  adrp     x1, #0xb0000
0002ab88  adrp     x2, #0xb0000
0002ab8c  mov      w9, #0xf000
0002ab90  mov      x19, x0
0002ab94  ldr      x8, [x8, #0x8a0]
0002ab98  add      x1, x1, #0x5a0 ; '%s - START \n'
0002ab9c  add      x2, x2, #0x5ad ; 'ssm_validate_cid'
0002aba0  mov      w0, #1
0002aba4  str      x8, [sp, #0x28]
0002aba8  strh     w9, [sp, #0x24]
0002abac  bl       #0x40c20
0002abb0  mov      w21, wzr
0002abb4  cbz      x19, #0x2abd8
0002abb8  cmp      w20, #5
0002abbc  b.lo     #0x2abd8
0002abc0  add      x1, sp, #0x24
0002abc4  mov      x0, x19
0002abc8  mov      w2, #2
0002abcc  bl       #0x1ce00
0002abd0  cbz      w0, #0x2ac00
0002abd4  mov      w21, wzr
0002abd8  adrp     x9, #0xd0000
0002abdc  ldr      x8, [sp, #0x28]
0002abe0  ldr      x9, [x9, #0x8a0]
0002abe4  cmp      x9, x8
0002abe8  b.ne     #0x2ad58
0002abec  mov      w0, w21
0002abf0  ldp      x20, x19, [sp, #0x40]
0002abf4  ldp      x30, x21, [sp, #0x30]
0002abf8  add      sp, sp, #0x50
0002abfc  ret      
0002ac00  ldrb     w8, [x19, #2]
0002ac04  ldrb     w3, [x19, #3]
0002ac08  bfi      w3, w8, #8, #8
0002ac0c  cmp      w3, #2
0002ac10  b.eq     #0x2ac68
0002ac14  cmp      w3, #1
0002ac18  b.ne     #0x2ad1c
0002ac1c  cmp      w20, #0xa46
0002ac20  b.ne     #0x2abd4
0002ac24  mov      x8, x19
0002ac28  ldrb     w9, [x8, #0xe2]!
0002ac2c  ldrb     w10, [x8, #1]
0002ac30  bfi      w10, w9, #8, #8
0002ac34  cmp      w10, #0xa45
0002ac38  b.hi     #0x2abd4
0002ac3c  ldrb     w9, [x19, #0x594]
0002ac40  ldrb     w10, [x19, #0x595]
0002ac44  str      x8, [sp]
0002ac48  bfi      w10, w9, #8, #8
0002ac4c  cmp      w10, #0xa45
0002ac50  b.hi     #0x2abd4
0002ac54  add      x8, x19, #0x594
0002ac58  mov      w9, #0x964
0002ac5c  str      x8, [sp, #8]
0002ac60  str      w9, [sp, #0x18]
0002ac64  b        #0x2acdc
0002ac68  cmp      w20, #0x173
0002ac6c  b.lo     #0x2abd4
0002ac70  ldrb     w8, [x19, #0x171]
0002ac74  add      x11, x19, #0x170
0002ac78  ldrb     w10, [x19, #0x170]
0002ac7c  mov      w13, w20
0002ac80  str      x11, [sp]
0002ac84  mov      x9, x8
0002ac88  bfi      x9, x10, #8, #8
0002ac8c  add      x9, x11, x9
0002ac90  sub      x12, x9, x19
0002ac94  add      x12, x12, #4
0002ac98  cmp      x12, x13
0002ac9c  b.ge     #0x2abd4
0002aca0  ldrb     w11, [x9, #2]!
0002aca4  ldrb     w12, [x9, #1]
0002aca8  mov      x14, x12
0002acac  bfi      x14, x11, #8, #8
0002acb0  add      x14, x9, x14
0002acb4  sub      x14, x14, x19
0002acb8  add      x14, x14, #2
0002acbc  cmp      x14, x13
0002acc0  b.ne     #0x2abd4
0002acc4  bfi      w8, w10, #8, #8
0002acc8  bfi      w12, w11, #8, #8
0002accc  add      w8, w8, w12
0002acd0  str      x9, [sp, #8]
0002acd4  add      w8, w8, #4
0002acd8  str      w8, [sp, #0x18]
0002acdc  mov      x1, sp
0002ace0  add      x4, sp, #0x20
0002ace4  mov      x0, x19
0002ace8  mov      w2, #0xf0
0002acec  str      xzr, [sp, #0x10]
0002acf0  bl       #0x2e518
0002acf4  cmp      w0, #0xf
0002acf8  b.ne     #0x2ad38
0002acfc  adrp     x1, #0xb0000
0002ad00  adrp     x2, #0xb0000
0002ad04  add      x1, x1, #0x5e2 ; '%s - SUCCESS \n'
0002ad08  add      x2, x2, #0x5ad ; 'ssm_validate_cid'
0002ad0c  mov      w0, #1
0002ad10  mov      w21, #1
0002ad14  bl       #0x40c20
0002ad18  b        #0x2abd8
0002ad1c  adrp     x1, #0xb0000
0002ad20  add      x1, x1, #0x5be ; '%s - FAIL db_version not supported\n'
0002ad24  adrp     x2, #0xb0000
0002ad28  mov      w0, #1
0002ad2c  add      x2, x2, #0x5ad ; 'ssm_validate_cid'
0002ad30  bl       #0x40c20
0002ad34  b        #0x2abd4
0002ad38  ldrb     w2, [sp, #0x20]
0002ad3c  adrp     x1, #0xb0000
0002ad40  add      x1, x1, #0x5f1 ; 'dbval_validate_datablock status %d'
0002ad44  mov      w0, wzr
0002ad48  bl       #0x40c20
0002ad4c  adrp     x1, #0xb0000
0002ad50  add      x1, x1, #0x614 ; '%s - FAIL \n'
0002ad54  b        #0x2ad24
0002ad58  bl       #0x53a68
0002ad5c  udf      #0
0002ad60  sub      sp, sp, #0x30
0002ad64  stp      x30, x19, [sp, #0x20]
0002ad68  adrp     x8, #0xd0000
0002ad6c  mov      w9, #0x10
0002ad70  add      x0, sp, #0x10
0002ad74  add      x1, sp, #0xc
0002ad78  ldr      x8, [x8, #0x8a0]
0002ad7c  str      x8, [sp, #0x18]
0002ad80  str      xzr, [sp, #0x10]
0002ad84  strb     w9, [sp, #0xc]
0002ad88  bl       #0x2d7f8
0002ad8c  cmp      w0, #0xf
0002ad90  b.ne     #0x2ade0
0002ad94  ldr      x0, [sp, #0x10]
0002ad98  ldrb     w9, [x0, #2]
0002ad9c  ldrb     w8, [x0, #3]
0002ada0  bfi      w8, w9, #8, #8
0002ada4  cmp      w8, #1
0002ada8  b.eq     #0x2adec
0002adac  cmp      w8, #2
0002adb0  b.ne     #0x2ae04
0002adb4  mov      w8, #0x2a
0002adb8  mov      w9, #0x2c
0002adbc  cbz      x0, #0x2adf8
0002adc0  add      x9, x0, x9
0002adc4  ldrb     w8, [x0, x8]
0002adc8  ldrb     w10, [x9]
0002adcc  ldrb     w19, [x9, #1]
0002add0  adrp     x9, #0xd3000
0002add4  strb     w8, [x9, #0x4cc]
0002add8  bfi      w19, w10, #8, #0x18
0002addc  b        #0x2ae20
0002ade0  adrp     x1, #0xb0000
0002ade4  add      x1, x1, #0x620 ; 'CID_init read and validate fail!!\n'
0002ade8  b        #0x2ae0c
0002adec  mov      w8, #0x28
0002adf0  mov      w9, #0x2a
0002adf4  cbnz     x0, #0x2adc0
0002adf8  adrp     x1, #0xb0000
0002adfc  add      x1, x1, #0x665 ; 'Failed to init CID\n'
0002ae00  b        #0x2ae0c
0002ae04  adrp     x1, #0xb0000
0002ae08  add      x1, x1, #0x643 ; 'CID_init unsupported db version \n'
0002ae0c  mov      w0, #1
0002ae10  bl       #0x40c20
0002ae14  ldr      x0, [sp, #0x10]
0002ae18  mov      w19, #0xffff
0002ae1c  cbz      x0, #0x2ae28
0002ae20  bl       #0x15910
0002ae24  str      xzr, [sp, #0x10]
0002ae28  adrp     x9, #0xd0000
0002ae2c  ldr      x8, [sp, #0x18]
0002ae30  ldr      x9, [x9, #0x8a0]
0002ae34  cmp      x9, x8
0002ae38  b.ne     #0x2ae4c
0002ae3c  mov      w0, w19
0002ae40  ldp      x30, x19, [sp, #0x20]
0002ae44  add      sp, sp, #0x30
0002ae48  ret      
0002ae4c  bl       #0x53a68
0002ae50  sub      sp, sp, #0x20
0002ae54  str      x30, [sp, #0x10]
0002ae58  adrp     x8, #0xd0000
0002ae5c  adrp     x9, #0xd3000
0002ae60  ldr      x8, [x8, #0x8a0]
0002ae64  str      x8, [sp, #8]
0002ae68  ldrb     w0, [x9, #0x4cc]
0002ae6c  adrp     x9, #0xd0000
0002ae70  ldr      x8, [sp, #8]
0002ae74  ldr      x9, [x9, #0x8a0]
0002ae78  cmp      x9, x8
0002ae7c  b.ne     #0x2ae8c
0002ae80  ldr      x30, [sp, #0x10]
0002ae84  add      sp, sp, #0x20
0002ae88  ret      
0002ae8c  bl       #0x53a68

RANGE 00020b90 - 00020ed0
00020b90  ldr      x8, [x8, #0x8a0]
00020b94  movk     w10, #0x100, lsl #16
00020b98  mov      w11, #0x100
00020b9c  add      x1, x1, #0xac0
00020ba0  mov      w0, wzr
00020ba4  str      x8, [sp, #0x18]
00020ba8  stp      w9, w10, [x19]
00020bac  strh     w11, [x19, #8]
00020bb0  str      wzr, [x19, #0xc]
00020bb4  str      w9, [x19, #0x14]
00020bb8  strb     wzr, [x19, #0x10]
00020bbc  bl       #0x40c20
00020bc0  mov      x0, sp
00020bc4  mov      x1, x19
00020bc8  mov      w2, #0x18
00020bcc  bl       #0x1c190
00020bd0  bl       #0x6d5d8
00020bd4  cbz      x0, #0x20bfc
00020bd8  add      x0, x0, #0x94
00020bdc  mov      x1, sp
00020be0  mov      w2, #0x18
00020be4  bl       #0x1c190
00020be8  bl       #0x6d578
00020bec  cbz      x0, #0x20c0c
00020bf0  adrp     x1, #0xad000
00020bf4  add      x1, x1, #0xa7f ; 'SSM: Unable to save persistent data\n'
00020bf8  b        #0x20c04
00020bfc  adrp     x1, #0xad000
00020c00  add      x1, x1, #0xaa4 ; 'SSM: get DeviceInfo failed\n'
00020c04  mov      w0, wzr
00020c08  bl       #0x40c20
00020c0c  bl       #0x6d5d8
00020c10  cbz      x0, #0x20c3c
00020c14  ldrb     w8, [x0, #0x90]
00020c18  cbnz     w8, #0x20c3c
00020c1c  mov      w8, #1
00020c20  strb     w8, [x0, #0x90]
00020c24  bl       #0x6d578
00020c28  cbz      x0, #0x20c3c
00020c2c  adrp     x1, #0xad000
00020c30  mov      w0, wzr
00020c34  add      x1, x1, #0xa7f ; 'SSM: Unable to save persistent data\n'
00020c38  bl       #0x40c20
00020c3c  adrp     x9, #0xd0000
00020c40  ldr      x8, [sp, #0x18]
00020c44  ldr      x9, [x9, #0x8a0]
00020c48  cmp      x9, x8
00020c4c  b.ne     #0x20c64
00020c50  ldp      x30, x19, [sp, #0x20]
00020c54  mov      x0, xzr
00020c58  mov      w1, wzr
00020c5c  add      sp, sp, #0x30
00020c60  b        #0x2a818
00020c64  bl       #0x53a68
00020c68  sub      sp, sp, #0x60
00020c6c  stp      x30, x27, [sp, #0x10]
00020c70  stp      x26, x25, [sp, #0x20]
00020c74  stp      x24, x23, [sp, #0x30]
00020c78  stp      x22, x21, [sp, #0x40]
00020c7c  stp      x20, x19, [sp, #0x50]
00020c80  adrp     x9, #0xd0000
00020c84  mov      x19, x8
00020c88  ldr      x9, [x9, #0x8a0]
00020c8c  str      x9, [sp, #8]
00020c90  bl       #0x6d5d8
00020c94  cbz      x0, #0x20cfc
00020c98  mov      x1, x0
00020c9c  mov      w20, #0x7836
00020ca0  movk     w20, #0x1290, lsl #16
00020ca4  ldr      w8, [x1, #0x94]!
00020ca8  cmp      w8, w20
00020cac  b.ne     #0x20d30
00020cb0  ldr      w8, [x0, #0xa8]
00020cb4  cmp      w8, w20
00020cb8  b.ne     #0x20d60
00020cbc  ldrb     w8, [x0, #0x90]
00020cc0  adrp     x9, #0xd0000
00020cc4  ldr      x9, [x9, #0x8a0]
00020cc8  strb     w8, [x0, #0x9d]
00020ccc  ldr      x8, [sp, #8]
00020cd0  cmp      x9, x8
00020cd4  b.ne     #0x20ec0
00020cd8  mov      x0, x19
00020cdc  mov      w2, #0x18
00020ce0  ldp      x20, x19, [sp, #0x50]
00020ce4  ldp      x22, x21, [sp, #0x40]
00020ce8  ldp      x24, x23, [sp, #0x30]
00020cec  ldp      x26, x25, [sp, #0x20]
00020cf0  ldp      x30, x27, [sp, #0x10]
00020cf4  add      sp, sp, #0x60
00020cf8  b        #0x1c190
00020cfc  adrp     x9, #0xd0000
00020d00  ldr      x8, [sp, #8]
00020d04  ldr      x9, [x9, #0x8a0]
00020d08  cmp      x9, x8
00020d0c  b.ne     #0x20ec0
00020d10  mov      x8, x19
00020d14  ldp      x20, x19, [sp, #0x50]
00020d18  ldp      x22, x21, [sp, #0x40]
00020d1c  ldp      x24, x23, [sp, #0x30]
00020d20  ldp      x26, x25, [sp, #0x20]
00020d24  ldp      x30, x27, [sp, #0x10]
00020d28  add      sp, sp, #0x60
00020d2c  b        #0x20b70
00020d30  mov      w9, #0x7834
00020d34  movk     w9, #0x1290, lsl #16
00020d38  cmp      w8, w9
00020d3c  b.eq     #0x20d6c
00020d40  mov      w9, #0x7835
00020d44  movk     w9, #0x1290, lsl #16
00020d48  cmp      w8, w9
00020d4c  b.ne     #0x20d60
00020d50  ldr      w21, [x0, #0xa0]
00020d54  adrp     x1, #0xae000
00020d58  add      x1, x1, #0x20e ; 'SSM: migrate persistent data v2\n'
00020d5c  b        #0x20d78
00020d60  mov      x8, x19
00020d64  bl       #0x20b70
00020d68  b        #0x20e90
00020d6c  adrp     x1, #0xae000
00020d70  mov      w21, wzr
00020d74  add      x1, x1, #0x1ed ; 'SSM: migrate persistent data v1\n'
00020d78  ldrb     w22, [x0, #0x98]
00020d7c  ldrb     w23, [x0, #0x99]
00020d80  ldrb     w24, [x0, #0x9a]
00020d84  ldrb     w25, [x0, #0x9b]
00020d88  ldrb     w26, [x0, #0x9c]
00020d8c  ldrb     w27, [x0, #0x9d]
00020d90  mov      w0, wzr
00020d94  bl       #0x40c20
00020d98  ldrh     w8, [sp, #4]
00020d9c  ldrb     w9, [sp, #6]
00020da0  strh     w8, [sp]
00020da4  strb     w9, [sp, #2]
00020da8  bl       #0x6d5d8
00020dac  cbz      x0, #0x20e04
00020db0  ldrb     w8, [sp]
00020db4  str      w20, [x0, #0x94]
00020db8  strb     w22, [x0, #0x98]
00020dbc  strb     w23, [x0, #0x99]
00020dc0  strb     w8, [x0, #0xa5]
00020dc4  ldrb     w8, [sp, #1]
00020dc8  strb     w24, [x0, #0x9a]
00020dcc  strb     w25, [x0, #0x9b]
00020dd0  strb     w26, [x0, #0x9c]
00020dd4  strb     w8, [x0, #0xa6]
00020dd8  ldrb     w8, [sp, #2]
00020ddc  strb     w27, [x0, #0x9d]
00020de0  str      w21, [x0, #0xa0]
00020de4  strb     wzr, [x0, #0xa4]
00020de8  strb     w8, [x0, #0xa7]
00020dec  str      w20, [x0, #0xa8]
00020df0  bl       #0x6d578
00020df4  cbz      x0, #0x20e14
00020df8  adrp     x1, #0xad000
00020dfc  add      x1, x1, #0xa7f ; 'SSM: Unable to save persistent data\n'
00020e00  b        #0x20e0c
00020e04  adrp     x1, #0xad000
00020e08  add      x1, x1, #0xaa4 ; 'SSM: get DeviceInfo failed\n'
00020e0c  mov      w0, wzr
00020e10  bl       #0x40c20
00020e14  bl       #0x6d5d8
00020e18  cbz      x0, #0x20e44
00020e1c  ldrb     w8, [x0, #0x90]
00020e20  cbnz     w8, #0x20e44
00020e24  mov      w8, #1
00020e28  strb     w8, [x0, #0x90]
00020e2c  bl       #0x6d578
00020e30  cbz      x0, #0x20e44
00020e34  adrp     x1, #0xad000
00020e38  mov      w0, wzr
00020e3c  add      x1, x1, #0xa7f ; 'SSM: Unable to save persistent data\n'
00020e40  bl       #0x40c20
00020e44  mov      x0, xzr
00020e48  mov      w1, wzr
00020e4c  bl       #0x2a818
00020e50  ldrb     w8, [sp, #4]
00020e54  ldrb     w9, [sp, #5]
00020e58  ldrb     w10, [sp, #6]
00020e5c  str      w20, [x19]
00020e60  strb     w22, [x19, #4]
00020e64  strb     w23, [x19, #5]
00020e68  strb     w24, [x19, #6]
00020e6c  strb     w25, [x19, #7]
00020e70  strb     w26, [x19, #8]
00020e74  strb     w27, [x19, #9]
00020e78  str      w21, [x19, #0xc]
00020e7c  strb     wzr, [x19, #0x10]
00020e80  strb     w8, [x19, #0x11]
00020e84  strb     w9, [x19, #0x12]
00020e88  strb     w10, [x19, #0x13]
00020e8c  str      w20, [x19, #0x14]
00020e90  adrp     x9, #0xd0000
00020e94  ldr      x8, [sp, #8]
00020e98  ldr      x9, [x9, #0x8a0]
00020e9c  cmp      x9, x8
00020ea0  b.ne     #0x20ec0
00020ea4  ldp      x20, x19, [sp, #0x50]
00020ea8  ldp      x22, x21, [sp, #0x40]
00020eac  ldp      x24, x23, [sp, #0x30]
00020eb0  ldp      x26, x25, [sp, #0x20]
00020eb4  ldp      x30, x27, [sp, #0x10]
00020eb8  add      sp, sp, #0x60
00020ebc  ret      
00020ec0  bl       #0x53a68
00020ec4  udf      #0
00020ec8  sub      sp, sp, #0x20
00020ecc  stp      x30, x19, [sp, #0x10]

RANGE 0000e9d0 - 0000ebf0
0000e9d0  mov      x1, x24
0000e9d4  bl       #0x1b414
0000e9d8  ldurb    w2, [x26, #-0x85]
0000e9dc  sub      x0, x26, #0x66
0000e9e0  mov      x1, x24
0000e9e4  bl       #0x1b414
0000e9e8  adrp     x1, #0xa8000
0000e9ec  mov      w0, #1
0000e9f0  add      x1, x1, #0x99 ; 'size:%d, md5:%a\n'
0000e9f4  mov      w2, w23
0000e9f8  mov      x3, x22
0000e9fc  bl       #0x40c20
0000ea00  ldr      x0, [x20, #0x10]
0000ea04  mov      x1, x22
0000ea08  bl       #0x1b828
0000ea0c  cbz      w0, #0xea84
0000ea10  adrp     x0, #0xa8000
0000ea14  add      x0, x0, #0xaa ; 'md5sum mismatch!'
0000ea18  b        #0xea50
0000ea1c  adrp     x1, #0xa8000
0000ea20  mov      w0, #1
0000ea24  add      x1, x1, #0x72 ; 'oem ffu unknown error!\n'
0000ea28  bl       #0x40c20
0000ea2c  b        #0xea54
0000ea30  adrp     x0, #0xa8000
0000ea34  add      x0, x0, #0xe9 ; 'usage: fastboot oem ffu <size> <md5sum>'
0000ea38  bl       #0x43c8
0000ea3c  adrp     x0, #0xc2000
0000ea40  add      x0, x0, #0x4da
0000ea44  b        #0xea50
0000ea48  adrp     x0, #0xa8000
0000ea4c  add      x0, x0, #0x8a ; 'bad parameter!'
0000ea50  bl       #0x43c8
0000ea54  mov      w0, #3
0000ea58  ldr      x8, [x28]
0000ea5c  cmp      x27, x8
0000ea60  b.ne     #0xeac0
0000ea64  str      x26, [x19]
0000ea68  ldp      x20, x19, [sp, #0x50]
0000ea6c  ldp      x22, x21, [sp, #0x40]
0000ea70  ldp      x24, x23, [sp, #0x30]
0000ea74  ldp      x26, x25, [sp, #0x20]
0000ea78  ldp      x28, x27, [sp, #0x10]
0000ea7c  ldr      x30, [sp], #0x60
0000ea80  ret      
0000ea84  adrp     x0, #0xa8000
0000ea88  add      x0, x0, #0xbb ; 'Start FFU upgrade...'
0000ea8c  bl       #0x43c8
0000ea90  mov      x0, x21
0000ea94  mov      w1, w23
0000ea98  bl       #0x7b618
0000ea9c  tbnz     w0, #0x1f, #0xeab4
0000eaa0  adrp     x0, #0xa8000
0000eaa4  add      x0, x0, #0xdc ; '    success!'
0000eaa8  bl       #0x43c8
0000eaac  mov      w0, #1
0000eab0  b        #0xea58
0000eab4  adrp     x0, #0xa8000
0000eab8  add      x0, x0, #0xd0 ; '    failed!'
0000eabc  b        #0xea50
0000eac0  bl       #0x53a68
0000eac4  udf      #0
0000eac8  stp      x29, x30, [sp, #-0x60]!
0000eacc  stp      x28, x27, [sp, #0x10]
0000ead0  stp      x26, x25, [sp, #0x20]
0000ead4  stp      x24, x23, [sp, #0x30]
0000ead8  stp      x22, x21, [sp, #0x40]
0000eadc  stp      x20, x19, [sp, #0x50]
0000eae0  mov      x20, x0
0000eae4  bl       #0x6fd48
0000eae8  ldr      x23, [x0]
0000eaec  adrp     x8, #0xd0000
0000eaf0  mov      x19, x0
0000eaf4  sub      x9, x23, #0x10
0000eaf8  mov      x22, x23
0000eafc  mov      x25, x23
0000eb00  str      x9, [x0]
0000eb04  mov      x0, x20
0000eb08  ldr      x24, [x8, #0x8a0]
0000eb0c  str      wzr, [x22, #-0xc]!
0000eb10  mov      x1, x22
0000eb14  str      x24, [x25, #-8]!
0000eb18  bl       #0x84a00
0000eb1c  mov      x20, x0
0000eb20  mov      w21, #3
0000eb24  cbz      x0, #0xec3c
0000eb28  ldr      w8, [x22]
0000eb2c  cbz      w8, #0xec3c
0000eb30  ldr      x0, [x20]
0000eb34  adrp     x1, #0xa9000
0000eb38  add      x1, x1, #0x87f ; 'help'
0000eb3c  bl       #0x1be9c
0000eb40  cbz      w0, #0xeb9c
0000eb44  adrp     x8, #0xcc000
0000eb48  mov      x22, xzr
0000eb4c  add      x8, x8, #0x710
0000eb50  add      x21, x8, #8
0000eb54  ldr      x0, [x21]
0000eb58  mov      w2, #0x20
0000eb5c  ldr      x1, [x20]
0000eb60  bl       #0x1bef8
0000eb64  cbz      w0, #0xec44
0000eb68  add      x22, x22, #1
0000eb6c  add      x21, x21, #0x18
0000eb70  cmp      x22, #0x24
0000eb74  b.ne     #0xeb54
0000eb78  ldr      x1, [x20]
0000eb7c  adrp     x0, #0xa7000
0000eb80  add      x0, x0, #0x37b ; "'%a' is not a supported oem command"
0000eb84  bl       #0x43c8
0000eb88  adrp     x0, #0xa7000
0000eb8c  add      x0, x0, #0x39f ; "See 'fastboot oem help'\n"
0000eb90  bl       #0x43c8
0000eb94  mov      w21, #3
0000eb98  b        #0xec90
0000eb9c  adrp     x8, #0xcc000
0000eba0  adrp     x21, #0xa7000
0000eba4  add      x8, x8, #0x710
0000eba8  adrp     x29, #0xa6000
0000ebac  adrp     x27, #0xc2000
0000ebb0  adrp     x22, #0xa5000
0000ebb4  mov      x26, xzr
0000ebb8  add      x28, x8, #8
0000ebbc  add      x21, x21, #0x265 ; 'blankflash'
0000ebc0  add      x29, x29, #0xc17 ; '...'
0000ebc4  add      x27, x27, #0x4da
0000ebc8  add      x22, x22, #0x3ae ; '%a%a'
0000ebcc  b        #0xebf8
0000ebd0  ldurb    w8, [x28, #-7]
0000ebd4  mov      x0, x22
0000ebd8  ldr      x1, [x28]
0000ebdc  cmp      w8, #0
0000ebe0  csel     x2, x27, x29, eq
0000ebe4  bl       #0x43c8
0000ebe8  add      x26, x26, #1
0000ebec  add      x28, x28, #0x18

RANGE 0000a390 - 0000a700
0000a390  add      x1, x1, #0x4d9
0000a394  sub      x21, x27, #0x20
0000a398  mov      x29, x27
0000a39c  str      x21, [x0]
0000a3a0  ldr      x28, [x8, #0x8a0]
0000a3a4  mov      x8, x20
0000a3a8  str      x28, [x29, #-8]!
0000a3ac  ldrb     w9, [x8], #1
0000a3b0  cmp      w9, #0x3a
0000a3b4  csel     x20, x8, x20, eq
0000a3b8  mov      x0, x20
0000a3bc  bl       #0x187e4
0000a3c0  cbz      x0, #0xa410
0000a3c4  sub      x25, x0, x20
0000a3c8  mov      x24, x0
0000a3cc  add      x0, x25, #1
0000a3d0  bl       #0x15710
0000a3d4  mov      x1, x20
0000a3d8  mov      x2, x25
0000a3dc  mov      x26, x0
0000a3e0  bl       #0x182ec
0000a3e4  add      x0, x24, #1
0000a3e8  strb     wzr, [x26, x25]
0000a3ec  bl       #0x188bc
0000a3f0  mov      x20, x26
0000a3f4  cmp      w0, #8
0000a3f8  b.lt     #0xa410
0000a3fc  adrp     x0, #0xa6000
0000a400  add      x0, x0, #0x9ed ; 'Invalid Lun number passed'
0000a404  bl       #0x43c8
0000a408  mov      w20, #3
0000a40c  b        #0xa428
0000a410  mov      x0, x23
0000a414  mov      w1, w22
0000a418  bl       #0x84050
0000a41c  cbz      x0, #0xa458
0000a420  bl       #0x841c0
0000a424  mov      w20, #1
0000a428  ldr      x8, [x29]
0000a42c  cmp      x28, x8
0000a430  b.ne     #0xa590
0000a434  str      x27, [x19]
0000a438  mov      w0, w20
0000a43c  ldp      x20, x19, [sp, #0x50]
0000a440  ldp      x22, x21, [sp, #0x40]
0000a444  ldp      x24, x23, [sp, #0x30]
0000a448  ldp      x26, x25, [sp, #0x20]
0000a44c  ldp      x28, x27, [sp, #0x10]
0000a450  ldp      x29, x30, [sp], #0x60
0000a454  ret      
0000a458  adrp     x1, #0xa7000
0000a45c  mov      x0, x20
0000a460  add      x1, x1, #0x565 ; 'partition'
0000a464  bl       #0x1be9c
0000a468  cbz      w0, #0xa424
0000a46c  adrp     x1, #0xa6000
0000a470  mov      x0, x20
0000a474  add      x1, x1, #0xa07 ; 'cid_prov'
0000a478  bl       #0x1be9c
0000a47c  cbz      w0, #0xa534
0000a480  adrp     x1, #0xb0000
0000a484  mov      x0, x20
0000a488  add      x1, x1, #0xb8f ; 'cid'
0000a48c  bl       #0x1be9c
0000a490  cbz      w0, #0xa534
0000a494  adrp     x1, #0xa6000
0000a498  mov      x0, x20
0000a49c  add      x1, x1, #0x9a0 ; 'debug_token'
0000a4a0  bl       #0x1be9c
0000a4a4  cbz      w0, #0xa560
0000a4a8  adrp     x1, #0xa6000
0000a4ac  mov      x0, x20
0000a4b0  add      x1, x1, #0x9ac ; 'avb_custom_key'
0000a4b4  bl       #0x1be9c
0000a4b8  cbz      w0, #0xa424
0000a4bc  mov      x0, x20
0000a4c0  bl       #0x5cd28
0000a4c4  tbz      w0, #0, #0xa4d0
0000a4c8  bl       #0x20a60
0000a4cc  bl       #0x2a220
0000a4d0  adrp     x1, #0xb0000
0000a4d4  mov      x0, x20
0000a4d8  add      x1, x1, #0xd26 ; 'utags'
0000a4dc  bl       #0x1be9c
0000a4e0  cbz      w0, #0xa570
0000a4e4  adrp     x1, #0xc1000
0000a4e8  mov      x0, x20
0000a4ec  add      x1, x1, #0xab5 ; 'hw'
0000a4f0  bl       #0x1be9c
0000a4f4  cbz      w0, #0xa57c
0000a4f8  mov      x0, x20
0000a4fc  bl       #0x5ce84
0000a500  tbnz     w0, #0, #0xa510
0000a504  mov      x0, x20
0000a508  bl       #0x5cfb4
0000a50c  tbz      w0, #0, #0xa514
0000a510  bl       #0x2a220
0000a514  bl       #0x4e2d4
0000a518  cmp      w0, #2
0000a51c  b.ne     #0xa424
0000a520  mov      x0, x20
0000a524  bl       #0x5d11c
0000a528  tbz      w0, #0, #0xa424
0000a52c  bl       #0x23868
0000a530  b        #0xa424
0000a534  mov      w0, #1
0000a538  mov      w20, #1
0000a53c  bl       #0x20ec8
0000a540  bl       #0x218f8
0000a544  tst      w0, #0xff
0000a548  b.eq     #0xa428
0000a54c  bl       #0x20f38
0000a550  tbnz     w0, #0, #0xa424
0000a554  mov      x8, x21
0000a558  bl       #0x20b70
0000a55c  b        #0xa424
0000a560  mov      w0, #1
0000a564  mov      w20, #1
0000a568  bl       #0x213a8
0000a56c  b        #0xa428
0000a570  bl       #0x1ea30
0000a574  cbnz     w0, #0xa588
0000a578  b        #0xa4e4
0000a57c  mov      w0, #1
0000a580  bl       #0x1ea30
0000a584  cbz      w0, #0xa4f8
0000a588  mov      w20, #3
0000a58c  b        #0xa428
0000a590  bl       #0x53a68
0000a594  udf      #0
0000a598  str      x30, [sp, #-0x20]!
0000a59c  stp      x20, x19, [sp, #0x10]
0000a5a0  mov      x8, x0
0000a5a4  adrp     x1, #0xa9000
0000a5a8  add      x1, x1, #0xb67 ; 'all'
0000a5ac  ldrb     w9, [x8], #1
0000a5b0  cmp      w9, #0x3a
0000a5b4  csel     x19, x8, x0, eq
0000a5b8  mov      x0, x19
0000a5bc  bl       #0x1be9c
0000a5c0  mov      w20, w0
0000a5c4  mov      x0, x19
0000a5c8  bl       #0x5cd28
0000a5cc  tbnz     w0, #0, #0xa5d4
0000a5d0  cbnz     w20, #0xa5dc
0000a5d4  bl       #0x20a60
0000a5d8  bl       #0x2a220
0000a5dc  adrp     x1, #0xb0000
0000a5e0  mov      x0, x19
0000a5e4  add      x1, x1, #0xd26 ; 'utags'
0000a5e8  bl       #0x1be9c
0000a5ec  cbz      w20, #0xa5f4
0000a5f0  cbnz     w0, #0xa624
0000a5f4  cbz      w20, #0xa618
0000a5f8  adrp     x1, #0xa6000
0000a5fc  mov      w0, #-1
0000a600  add      x1, x1, #0xbbc ; 'utagsBackup'
0000a604  bl       #0x56770
0000a608  cmn      w0, #1
0000a60c  b.eq     #0xa618
0000a610  bl       #0x56b70
0000a614  cbnz     w0, #0xa648
0000a618  mov      w0, wzr
0000a61c  bl       #0x1ea30
0000a620  cbnz     w0, #0xa648
0000a624  adrp     x1, #0xc1000
0000a628  mov      x0, x19
0000a62c  add      x1, x1, #0xab5 ; 'hw'
0000a630  bl       #0x1be9c
0000a634  cbz      w20, #0xa63c
0000a638  cbnz     w0, #0xa650
0000a63c  mov      w0, #1
0000a640  bl       #0x1ea30
0000a644  cbz      w0, #0xa650
0000a648  mov      w0, #3
0000a64c  b        #0xa66c
0000a650  adrp     x1, #0xa6000
0000a654  mov      x0, x19
0000a658  add      x1, x1, #0x9a0 ; 'debug_token'
0000a65c  bl       #0x1be9c
0000a660  cbnz     w0, #0xa668
0000a664  bl       #0x213a8
0000a668  mov      w0, #1
0000a66c  ldp      x20, x19, [sp, #0x10]
0000a670  ldr      x30, [sp], #0x20
0000a674  ret      
0000a678  mov      w0, #1
0000a67c  ret      
0000a680  str      x30, [sp, #-0x10]!
0000a684  bl       #0x21a18
0000a688  tst      w0, #0xff
0000a68c  b.ne     #0xa69c
0000a690  bl       #0x21948
0000a694  tst      w0, #0xff
0000a698  b.eq     #0xa6d0
0000a69c  bl       #0x61bf0
0000a6a0  tst      w0, #0xff
0000a6a4  b.eq     #0xa6c4
0000a6a8  bl       #0x6be58
0000a6ac  cmp      w0, #3
0000a6b0  b.ne     #0xa6c4
0000a6b4  adrp     x0, #0xa6000
0000a6b8  add      x0, x0, #0xbe0 ; 'Slot Change is not allowed in merging state'
0000a6bc  bl       #0x43c8
0000a6c0  b        #0xa6e0
0000a6c4  mov      w0, #1
0000a6c8  ldr      x30, [sp], #0x10
0000a6cc  ret      
0000a6d0  adrp     x1, #0xa6000
0000a6d4  mov      w0, #-1
0000a6d8  add      x1, x1, #0xbc8 ; 'Command is not allowed\n'
0000a6dc  bl       #0x40c20
0000a6e0  mov      w0, #3
0000a6e4  ldr      x30, [sp], #0x10
0000a6e8  ret      
0000a6ec  udf      #0
0000a6f0  stp      x30, x23, [sp, #-0x30]!
0000a6f4  stp      x22, x21, [sp, #0x10]
0000a6f8  stp      x20, x19, [sp, #0x20]
0000a6fc  adrp     x22, #0xd2000

RANGE 00038d00 - 00038f70
00038d00  sub      sp, sp, #0x20
00038d04  stp      x30, x19, [sp, #0x10]
00038d08  adrp     x8, #0xd0000
00038d0c  mov      x19, x0
00038d10  ldr      x8, [x8, #0x8a0]
00038d14  str      x8, [sp, #8]
00038d18  bl       #0x38d98
00038d1c  mov      x0, x19
00038d20  bl       #0x38bf8
00038d24  cmp      w0, #0xf
00038d28  b.ne     #0x38d6c
00038d2c  adrp     x11, #0xd0000
00038d30  ldrb     w8, [x19, #2]
00038d34  ldrb     w9, [x19, #3]
00038d38  ldr      x10, [sp, #8]
00038d3c  ldr      x11, [x11, #0x8a0]
00038d40  cmp      x11, x10
00038d44  b.ne     #0x38d90
00038d48  bfi      w9, w8, #8, #8
00038d4c  sub      w1, w9, #0x80
00038d50  and      w8, w1, #0xffff
00038d54  mov      x0, x19
00038d58  add      x2, x19, x8
00038d5c  mov      w3, #0x80
00038d60  ldp      x30, x19, [sp, #0x10]
00038d64  add      sp, sp, #0x20
00038d68  b        #0x38ec0
00038d6c  adrp     x9, #0xd0000
00038d70  ldr      x8, [sp, #8]
00038d74  ldr      x9, [x9, #0x8a0]
00038d78  cmp      x9, x8
00038d7c  b.ne     #0x38d90
00038d80  ldp      x30, x19, [sp, #0x10]
00038d84  mov      w0, #0x55
00038d88  add      sp, sp, #0x20
00038d8c  ret      
00038d90  bl       #0x53a68
00038d94  udf      #0
00038d98  sub      sp, sp, #0x20
00038d9c  str      x30, [sp, #0x10]
00038da0  adrp     x8, #0xd0000
00038da4  adrp     x9, #0xd0000
00038da8  ldr      x8, [x8, #0x8a0]
00038dac  ldr      x9, [x9, #0x8a0]
00038db0  str      x8, [sp, #8]
00038db4  ldr      x8, [sp, #8]
00038db8  cmp      x9, x8
00038dbc  b.ne     #0x38dcc
00038dc0  ldr      x30, [sp, #0x10]
00038dc4  add      sp, sp, #0x20
00038dc8  ret      
00038dcc  bl       #0x53a68
00038dd0  sub      sp, sp, #0x30
00038dd4  str      x30, [sp, #0x10]
00038dd8  stp      x20, x19, [sp, #0x20]
00038ddc  adrp     x8, #0xd0000
00038de0  ldr      x8, [x8, #0x8a0]
00038de4  str      x8, [sp, #8]
00038de8  cbz      x1, #0x38e38
00038dec  mov      x19, x1
00038df0  mov      x20, x0
00038df4  cbz      x0, #0x38e40
00038df8  ldr      w8, [x19]
00038dfc  cmp      w8, #0x20
00038e00  b.lo     #0x38e48
00038e04  mov      x0, x20
00038e08  mov      w1, wzr
00038e0c  mov      w2, #0x20
00038e10  bl       #0x1ca9c
00038e14  mov      x0, x20
00038e18  mov      x1, x19
00038e1c  bl       #0x387d8
00038e20  adrp     x9, #0xd0000
00038e24  ldr      x8, [sp, #8]
00038e28  cmp      w0, #0xf
00038e2c  mov      w10, #0x55
00038e30  csel     w0, w0, w10, eq
00038e34  b        #0x38e5c
00038e38  mov      w0, #0xf0
00038e3c  b        #0x38e54
00038e40  mov      w0, #0xf
00038e44  b        #0x38e4c
00038e48  mov      w0, #0x33
00038e4c  mov      w8, #0x20
00038e50  str      w8, [x19]
00038e54  adrp     x9, #0xd0000
00038e58  ldr      x8, [sp, #8]
00038e5c  ldr      x9, [x9, #0x8a0]
00038e60  cmp      x9, x8
00038e64  b.ne     #0x38e78
00038e68  ldp      x20, x19, [sp, #0x20]
00038e6c  ldr      x30, [sp, #0x10]
00038e70  add      sp, sp, #0x30
00038e74  ret      
00038e78  bl       #0x53a68
00038e7c  udf      #0
00038e80  sub      sp, sp, #0x20
00038e84  str      x30, [sp, #0x10]
00038e88  adrp     x8, #0xd0000
00038e8c  adrp     x9, #0xd0000
00038e90  ldr      x8, [x8, #0x8a0]
00038e94  ldr      x9, [x9, #0x8a0]
00038e98  str      x8, [sp, #8]
00038e9c  ldr      x8, [sp, #8]
00038ea0  cmp      x9, x8
00038ea4  b.ne     #0x38eb8
00038ea8  ldr      x30, [sp, #0x10]
00038eac  mov      w2, w2
00038eb0  add      sp, sp, #0x20
00038eb4  b        #0x1ce00
00038eb8  bl       #0x53a68
00038ebc  udf      #0
00038ec0  sub      sp, sp, #0x40
00038ec4  str      x30, [sp, #0x10]
00038ec8  stp      x22, x21, [sp, #0x20]
00038ecc  stp      x20, x19, [sp, #0x30]
00038ed0  adrp     x8, #0xd0000
00038ed4  adrp     x4, #0xd0000
00038ed8  add      x4, x4, #0x430
00038edc  mov      w19, w3
00038ee0  mov      x20, x2
00038ee4  mov      w21, w1
00038ee8  ldr      x8, [x8, #0x8a0]
00038eec  mov      x22, x0
00038ef0  str      x8, [sp, #8]
00038ef4  bl       #0x38f70
00038ef8  cbz      w0, #0x38f40
00038efc  adrp     x4, #0xd0000
00038f00  mov      x0, x22
00038f04  add      x4, x4, #0x4b3
00038f08  mov      w1, w21
00038f0c  mov      x2, x20
00038f10  mov      w3, w19
00038f14  bl       #0x38f70
00038f18  adrp     x9, #0xd0000
00038f1c  ldr      x8, [sp, #8]
00038f20  cmp      w0, #0
00038f24  mov      w10, #0x55
00038f28  mov      w11, #0xf
00038f2c  ldr      x9, [x9, #0x8a0]
00038f30  csel     w0, w11, w10, eq
00038f34  cmp      x9, x8
00038f38  b.eq     #0x38f58
00038f3c  b        #0x38f6c
00038f40  adrp     x9, #0xd0000
00038f44  ldr      x8, [sp, #8]
00038f48  ldr      x9, [x9, #0x8a0]
00038f4c  cmp      x9, x8
00038f50  b.ne     #0x38f6c
00038f54  mov      w0, #0xf
00038f58  ldp      x20, x19, [sp, #0x30]
00038f5c  ldr      x30, [sp, #0x10]
00038f60  ldp      x22, x21, [sp, #0x20]
00038f64  add      sp, sp, #0x40
00038f68  ret      
00038f6c  bl       #0x53a68

RANGE 00038bf8 - 00038d00
00038bf8  sub      sp, sp, #0x40
00038bfc  stp      x30, x19, [sp, #0x30]
00038c00  adrp     x8, #0xd0000
00038c04  mov      w9, #0x20
00038c08  mov      x19, x0
00038c0c  ldr      x8, [x8, #0x8a0]
00038c10  str      x8, [sp, #0x28]
00038c14  str      w9, [sp, #4]
00038c18  bl       #0x38d98
00038c1c  ldrb     w8, [x19]
00038c20  ldrb     w9, [x19, #1]
00038c24  bfi      w9, w8, #8, #8
00038c28  cmp      w9, #1
00038c2c  b.ne     #0x38c84
00038c30  ldrb     w8, [x19, #0xe]
00038c34  ldrb     w9, [x19, #0xf]
00038c38  bfi      w9, w8, #8, #8
00038c3c  cmp      w9, #2
00038c40  b.ne     #0x38c84
00038c44  add      x0, x19, #0xc
00038c48  bl       #0x38d98
00038c4c  ldrb     w8, [x19, #0xc]
00038c50  cbnz     w8, #0x38c84
00038c54  ldrb     w8, [x19, #0xd]
00038c58  cbnz     w8, #0x38c84
00038c5c  add      x0, x19, #0x34
00038c60  bl       #0x38d98
00038c64  mov      w8, #0x34
00038c68  ldrb     w9, [x19, x8]
00038c6c  sub      x10, x8, #0x34
00038c70  cmp      x10, #1
00038c74  b.hi     #0x38c80
00038c78  add      x8, x8, #1
00038c7c  cbz      w9, #0x38c68
00038c80  cbz      w9, #0x38ca8
00038c84  mov      w0, #0x55
00038c88  adrp     x9, #0xd0000
00038c8c  ldr      x8, [sp, #0x28]
00038c90  ldr      x9, [x9, #0x8a0]
00038c94  cmp      x9, x8
00038c98  b.ne     #0x38cf8
00038c9c  ldp      x30, x19, [sp, #0x30]
00038ca0  add      sp, sp, #0x40
00038ca4  ret      
00038ca8  add      x0, sp, #8
00038cac  add      x1, sp, #4
00038cb0  bl       #0x38dd0
00038cb4  mov      w8, w0
00038cb8  mov      w0, #0x55
00038cbc  cmp      w8, #0xf
00038cc0  b.ne     #0x38c88
00038cc4  ldr      w2, [sp, #4]
00038cc8  cmp      w2, #0x20
00038ccc  b.hi     #0x38c88
00038cd0  add      x0, x19, #0x10
00038cd4  add      x1, sp, #8
00038cd8  bl       #0x38e80
00038cdc  cbnz     w0, #0x38c84
00038ce0  mov      x0, x19
00038ce4  bl       #0x38d98
00038ce8  mov      x0, x19
00038cec  bl       #0x38d98
00038cf0  mov      w0, #0xf
00038cf4  b        #0x38c88
00038cf8  bl       #0x53a68
00038cfc  udf      #0

RANGE 00009b00 - 00009f00
00009b00  mov      x0, x19
00009b04  mov      w1, #1
00009b08  bl       #0x90e6c
00009b0c  mov      w8, #3
00009b10  tst      w0, #0xff
00009b14  csinc    w0, w8, wzr, eq
00009b18  b        #0x9a70
00009b1c  bl       #0x21a80
00009b20  tst      w0, #0xff
00009b24  b.eq     #0x9a6c
00009b28  bl       #0x20f38
00009b2c  tbnz     w0, #0, #0x9a6c
00009b30  b        #0x9b4c
00009b34  bl       #0x21948
00009b38  tst      w0, #0xff
00009b3c  b.ne     #0x9a6c
00009b40  bl       #0x21a18
00009b44  tst      w0, #0xff
00009b48  b.ne     #0x9a6c
00009b4c  adrp     x0, #0xa6000
00009b50  add      x0, x0, #0xa10 ; 'flash permission denied'
00009b54  b        #0x9a48
00009b58  adrp     x0, #0xa6000
00009b5c  mov      x1, x19
00009b60  add      x0, x0, #0x9c1 ; 'Invalid partition name %a'
00009b64  bl       #0x43c8
00009b68  mov      w0, #3
00009b6c  b        #0x9a70
00009b70  str      x30, [sp, #-0x10]!
00009b74  bl       #0x21ad0
00009b78  tst      w0, #0xff
00009b7c  b.eq     #0x9b8c
00009b80  mov      w0, #1
00009b84  ldr      x30, [sp], #0x10
00009b88  ret      
00009b8c  adrp     x0, #0xa6000
00009b90  add      x0, x0, #0xa28 ; 'permission denied!'
00009b94  bl       #0x43c8
00009b98  mov      w0, #3
00009b9c  ldr      x30, [sp], #0x10
00009ba0  ret      
00009ba4  udf      #0
00009ba8  stp      x29, x30, [sp, #-0x60]!
00009bac  stp      x28, x27, [sp, #0x10]
00009bb0  stp      x26, x25, [sp, #0x20]
00009bb4  stp      x24, x23, [sp, #0x30]
00009bb8  stp      x22, x21, [sp, #0x40]
00009bbc  stp      x20, x19, [sp, #0x50]
00009bc0  mov      w21, w2
00009bc4  mov      x20, x1
00009bc8  mov      x22, x0
00009bcc  bl       #0x6fd48
00009bd0  ldr      x26, [x0]
00009bd4  adrp     x9, #0xd0000
00009bd8  adrp     x1, #0xc9000
00009bdc  mov      x19, x0
00009be0  add      x1, x1, #0x4d9 ; ':'
00009be4  sub      x8, x26, #0x50
00009be8  mov      x28, x26
00009bec  str      x8, [x0]
00009bf0  mov      x8, x22
00009bf4  ldr      x27, [x9, #0x8a0]
00009bf8  str      x27, [x28, #-8]!
00009bfc  ldrb     w9, [x8], #1
00009c00  cmp      w9, #0x3a
00009c04  stur     xzr, [x26, #-0x38]
00009c08  csel     x22, x8, x22, eq
00009c0c  mov      x0, x22
00009c10  bl       #0x187e4
00009c14  mov      w29, #-1
00009c18  cbz      x0, #0x9c6c
00009c1c  sub      x24, x0, x22
00009c20  mov      x23, x0
00009c24  add      x0, x24, #1
00009c28  bl       #0x15710
00009c2c  mov      x1, x22
00009c30  mov      x2, x24
00009c34  mov      x25, x0
00009c38  bl       #0x182ec
00009c3c  add      x0, x23, #1
00009c40  strb     wzr, [x25, x24]
00009c44  bl       #0x188bc
00009c48  mov      x23, x0
00009c4c  mov      x22, x25
00009c50  cmp      w23, #8
00009c54  b.lt     #0x9c70
00009c58  adrp     x0, #0xa6000
00009c5c  add      x0, x0, #0x9ed ; 'Invalid Lun number passed'
00009c60  bl       #0x43c8
00009c64  mov      w20, #3
00009c68  b        #0x9cf4
00009c6c  mov      w23, w29
00009c70  adrp     x1, #0xa6000
00009c74  mov      x0, x22
00009c78  add      x1, x1, #0xa07 ; 'cid_prov'
00009c7c  bl       #0x1be9c
00009c80  cbz      w0, #0x9cf0
00009c84  adrp     x1, #0xa6000
00009c88  mov      x0, x22
00009c8c  add      x1, x1, #0x9a0 ; 'debug_token'
00009c90  bl       #0x1be9c
00009c94  cbz      w0, #0x9cf0
00009c98  adrp     x1, #0xa6000
00009c9c  mov      x0, x22
00009ca0  add      x1, x1, #0x9ac ; 'avb_custom_key'
00009ca4  bl       #0x1be9c
00009ca8  cbz      w0, #0x9cf0
00009cac  adrp     x1, #0xb0000
00009cb0  mov      x0, x22
00009cb4  add      x1, x1, #0xb8f ; 'cid'
00009cb8  bl       #0x1be9c
00009cbc  cbz      w0, #0x9cd8
00009cc0  mov      x0, x20
00009cc4  mov      w1, w21
00009cc8  bl       #0x84050
00009ccc  cbz      x0, #0x9d24
00009cd0  bl       #0x841c0
00009cd4  b        #0x9cf0
00009cd8  mov      x0, x20
00009cdc  mov      w1, w21
00009ce0  bl       #0x2ab70
00009ce4  mov      w20, w0
00009ce8  tst      w20, #0xff
00009cec  b.eq     #0x9ed0
00009cf0  mov      w20, #1
00009cf4  ldr      x8, [x28]
00009cf8  cmp      x27, x8
00009cfc  b.ne     #0xa354
00009d00  str      x26, [x19]
00009d04  mov      w0, w20
00009d08  ldp      x20, x19, [sp, #0x50]
00009d0c  ldp      x22, x21, [sp, #0x40]
00009d10  ldp      x24, x23, [sp, #0x30]
00009d14  ldp      x26, x25, [sp, #0x20]
00009d18  ldp      x28, x27, [sp, #0x10]
00009d1c  ldp      x29, x30, [sp], #0x60
00009d20  ret      
00009d24  adrp     x1, #0xa7000
00009d28  mov      x0, x22
00009d2c  add      x1, x1, #0x565 ; 'partition'
00009d30  bl       #0x1be9c
00009d34  cbz      w0, #0x9d68
00009d38  mov      w0, w23
00009d3c  mov      x1, x22
00009d40  bl       #0x57528
00009d44  tbnz     w0, #0x1f, #0x9d7c
00009d48  mov      w23, w0
00009d4c  mov      x0, x20
00009d50  mov      w1, w21
00009d54  bl       #0x1f100
00009d58  tbz      w0, #0, #0x9d90
00009d5c  ldp      w9, w8, [x20, #0xc]
00009d60  mul      x24, x9, x8
00009d64  b        #0x9d94
00009d68  cmp      w21, #8, lsl #12
00009d6c  b.ls     #0x9e00
00009d70  adrp     x0, #0xa6000
00009d74  add      x0, x0, #0xa3b ; 'gpt size exeeded limits'
00009d78  b        #0x9ecc
00009d7c  adrp     x0, #0xa6000
00009d80  add      x0, x0, #0x9c1 ; 'Invalid partition name %a'
00009d84  mov      x1, x22
00009d88  bl       #0x43c8
00009d8c  b        #0x9ed0
00009d90  mov      w24, w21
00009d94  bl       #0x610d0
00009d98  tst      w0, #0xff
00009d9c  b.eq     #0x9de4
00009da0  mov      w0, w23
00009da4  bl       #0x572ac
00009da8  tbz      w0, #0, #0x9de4
00009dac  bl       #0x90b8
00009db0  tst      w0, #0xff
00009db4  b.eq     #0x9e94
00009db8  mov      x0, x20
00009dbc  mov      w1, w21
00009dc0  bl       #0x1f100
00009dc4  tbz      w0, #0, #0x9ec4
00009dc8  mov      w0, w23
00009dcc  mov      x1, x24
00009dd0  bl       #0x57170
00009dd4  cbz      w0, #0x9de4
00009dd8  adrp     x0, #0xa6000
00009ddc  add      x0, x0, #0xa53 ; 'Failed to create %a partition.'
00009de0  b        #0x9d84
00009de4  mov      w0, w23
00009de8  bl       #0x56940
00009dec  cmp      x24, x0
00009df0  b.ls     #0x9e04
00009df4  adrp     x0, #0xa6000
00009df8  add      x0, x0, #0xa72 ; 'Image size exceeds partition limits'
00009dfc  b        #0x9ecc
00009e00  mov      w23, #-1
00009e04  mov      x0, x22
00009e08  bl       #0x5ce84
00009e0c  tbz      w0, #0, #0x9e28
00009e10  mov      x0, x22
00009e14  mov      x1, x20
00009e18  mov      w2, w21
00009e1c  bl       #0x41a38
00009e20  tbnz     w0, #0, #0x9cf0
00009e24  b        #0x9ed0
00009e28  bl       #0x4e2d4
00009e2c  cmp      w0, #2
00009e30  b.ne     #0x9e54
00009e34  bl       #0x610d0
00009e38  tst      w0, #0xff
00009e3c  b.eq     #0x9e54
00009e40  adrp     x1, #0xb4000
00009e44  mov      x0, x22
00009e48  add      x1, x1, #0x314 ; 'super'
00009e4c  bl       #0x1be9c
00009e50  cbz      w0, #0x9f5c
00009e54  bl       #0x218f8
00009e58  tst      w0, #0xff
00009e5c  b.eq     #0x9cf0
00009e60  adrp     x1, #0xa7000
00009e64  mov      x0, x22
00009e68  add      x1, x1, #0x565 ; 'partition'
00009e6c  bl       #0x1be9c
00009e70  cbz      w0, #0x9edc
00009e74  mov      x0, x22
00009e78  bl       #0x5d140
00009e7c  tbz      w0, #0, #0x9ef0
00009e80  mov      x0, x20
00009e84  mov      w1, w21
00009e88  bl       #0x2d038
00009e8c  tbnz     w0, #0, #0x9cf0
00009e90  b        #0x9ed0
00009e94  bl       #0x16834
00009e98  tst      w0, #0xff
00009e9c  b.eq     #0x9ed0
00009ea0  mov      w0, #-0xffffffff80000000
00009ea4  bl       #0x1685c
00009ea8  tst      w0, #0xff
00009eac  b.eq     #0x9ed0
00009eb0  adrp     x1, #0xa5000
00009eb4  mov      w0, #-0xffffffff80000000
00009eb8  add      x1, x1, #0xd0b ; 'DAP flashing is not supported!\n'
00009ebc  bl       #0x16188
00009ec0  b        #0x9ed0
00009ec4  adrp     x0, #0xaf000
00009ec8  add      x0, x0, #0x11d ; 'Raw image is not supported for DAPs.'
00009ecc  bl       #0x43c8
00009ed0  adrp     x0, #0xa6000
00009ed4  add      x0, x0, #0xba1 ; 'Preflash validation failed'
00009ed8  b        #0x9c60
00009edc  mov      x0, x20
00009ee0  mov      w1, w21
00009ee4  bl       #0x23fc0
00009ee8  tbnz     w0, #0, #0x9cf0
00009eec  b        #0x9ed0
00009ef0  bl       #0x4e2d4
00009ef4  cmp      w0, #2
00009ef8  b.ne     #0x9f2c
00009efc  mov      x0, x22

RANGE 00009f00 - 0000a390
00009f00  bl       #0x5d164
00009f04  tbz      w0, #0, #0x9f2c
00009f08  mov      x0, x22
00009f0c  mov      x1, x20
00009f10  mov      w2, w21
00009f14  mov      w3, #1
00009f18  mov      w4, #1
00009f1c  mov      w20, #1
00009f20  bl       #0x24d80
00009f24  tbnz     w0, #0, #0x9cf4
00009f28  b        #0x9ed0
00009f2c  bl       #0x4e2d4
00009f30  cmp      w0, #2
00009f34  b.ne     #0x9f90
00009f38  mov      x0, x22
00009f3c  bl       #0x5d078
00009f40  tbz      w0, #0, #0x9f90
00009f44  mov      x0, x22
00009f48  mov      x1, x20
00009f4c  mov      w2, w21
00009f50  bl       #0x26590
00009f54  tbnz     w0, #0, #0x9cf0
00009f58  b        #0x9ed0
00009f5c  mov      x0, x20
00009f60  mov      w1, w21
00009f64  bl       #0x1f100
00009f68  tbz      w0, #0, #0xa028
00009f6c  mov      x0, x20
00009f70  mov      w1, w21
00009f74  bl       #0x1f160
00009f78  tbz      w0, #0, #0xa040
00009f7c  sub      x2, x26, #0x38
00009f80  mov      x0, x20
00009f84  mov      w1, w21
00009f88  bl       #0x3ff48
00009f8c  b        #0xa13c
00009f90  mov      x0, x22
00009f94  bl       #0x5cfb4
00009f98  tbz      w0, #0, #0xa048
00009f9c  sub      x23, x26, #0x2c
00009fa0  mov      w24, #0x24
00009fa4  mov      x0, x23
00009fa8  mov      w1, wzr
00009fac  mov      x2, x24
00009fb0  stur     wzr, [x26, #-0x30]
00009fb4  bl       #0x1ca9c
00009fb8  mov      w8, #0x2f
00009fbc  mov      x0, x23
00009fc0  mov      x1, x22
00009fc4  mov      x2, x24
00009fc8  sturb    w8, [x26, #-0x2c]
00009fcc  bl       #0x1ba8c
00009fd0  mov      x0, x23
00009fd4  bl       #0x1b710
00009fd8  cmp      w0, #2
00009fdc  b.lt     #0x9ffc
00009fe0  sub      w8, w0, #2
00009fe4  sxtw     x8, w8
00009fe8  add      x8, x26, x8
00009fec  ldurb    w9, [x8, #-0x2c]
00009ff0  cmp      w9, #0x5f
00009ff4  b.ne     #0x9ffc
00009ff8  sturb    wzr, [x8, #-0x2c]
00009ffc  mov      x0, x22
0000a000  stur     wzr, [x26, #-0x44]
0000a004  bl       #0x5d1cc
0000a008  sub      x4, x26, #0x30
0000a00c  sub      x5, x26, #0x44
0000a010  tbz      w0, #0, #0xa08c
0000a014  mov      x0, xzr
0000a018  mov      w1, wzr
0000a01c  mov      x2, x20
0000a020  mov      w3, w21
0000a024  b        #0xa09c
0000a028  sub      x22, x26, #0x38
0000a02c  mov      x0, x20
0000a030  mov      w1, w21
0000a034  mov      x2, x22
0000a038  bl       #0x3ff48
0000a03c  tbz      w0, #0, #0xa068
0000a040  mov      w0, #1
0000a044  b        #0xa13c
0000a048  mov      x0, x22
0000a04c  bl       #0x5d0d4
0000a050  tbz      w0, #0, #0xa0e4
0000a054  mov      x0, x20
0000a058  mov      w1, w21
0000a05c  bl       #0x42d00
0000a060  tbnz     w0, #0, #0x9cf0
0000a064  b        #0x9ed0
0000a068  mov      x0, x20
0000a06c  mov      w1, w21
0000a070  mov      x2, x22
0000a074  bl       #0x3f2a0
0000a078  tbz      w0, #0, #0xa138
0000a07c  bl       #0x90b8
0000a080  tst      w0, #0xff
0000a084  cset     w0, ne
0000a088  b        #0xa13c
0000a08c  mov      x0, x20
0000a090  mov      w1, #0x1000
0000a094  mov      x2, xzr
0000a098  mov      w3, wzr
0000a09c  mov      w6, wzr
0000a0a0  bl       #0x61100
0000a0a4  mov      x24, x0
0000a0a8  cbz      x0, #0xa104
0000a0ac  bl       #0x16834
0000a0b0  tst      w0, #0xff
0000a0b4  b.eq     #0xa34c
0000a0b8  mov      w0, #-0xffffffff80000000
0000a0bc  bl       #0x1685c
0000a0c0  tst      w0, #0xff
0000a0c4  b.eq     #0xa34c
0000a0c8  adrp     x1, #0xa6000
0000a0cc  mov      w0, #-0xffffffff80000000
0000a0d0  add      x1, x1, #0xa96 ; 'Invalid image Header: %r\n'
0000a0d4  mov      x2, x24
0000a0d8  bl       #0x16188
0000a0dc  mov      w20, wzr
0000a0e0  b        #0x9ce8
0000a0e4  mov      x0, x22
0000a0e8  bl       #0x5d0f8
0000a0ec  tbz      w0, #0, #0xa154
0000a0f0  mov      x0, x20
0000a0f4  mov      w1, w21
0000a0f8  bl       #0x436a0
0000a0fc  tbnz     w0, #0, #0x9cf0
0000a100  b        #0x9ed0
0000a104  ldur     w8, [x26, #-0x30]
0000a108  cmp      w8, w21
0000a10c  b.ls     #0xa1a0
0000a110  bl       #0x16834
0000a114  tst      w0, #0xff
0000a118  b.eq     #0xa34c
0000a11c  mov      w0, #-0xffffffff80000000
0000a120  bl       #0x1685c
0000a124  tst      w0, #0xff
0000a128  b.eq     #0xa34c
0000a12c  adrp     x1, #0xa6000
0000a130  add      x1, x1, #0xab0 ; 'Image is incomplete\n'
0000a134  b        #0xa1e0
0000a138  mov      w0, wzr
0000a13c  ldur     x8, [x26, #-0x38]
0000a140  and      w20, w0, #1
0000a144  cbz      x8, #0x9ce8
0000a148  mov      x0, x8
0000a14c  bl       #0x43c8
0000a150  b        #0x9ce8
0000a154  bl       #0x4e2d4
0000a158  cmp      w0, #2
0000a15c  b.ne     #0x9cf0
0000a160  mov      x0, x22
0000a164  bl       #0x5cd28
0000a168  tbz      w0, #0, #0x9cf0
0000a16c  mov      x0, x22
0000a170  mov      x1, x20
0000a174  mov      w2, w21
0000a178  bl       #0x26c98
0000a17c  tbnz     w0, #0, #0x9cf0
0000a180  tbnz     w23, #0x1f, #0x9ed0
0000a184  mov      w0, w23
0000a188  bl       #0x56b70
0000a18c  cbz      w0, #0xa2b8
0000a190  adrp     x1, #0xa6000
0000a194  mov      w0, #-1
0000a198  add      x1, x1, #0xb71 ; 'Validation failed, erasing partition %a failed\n'
0000a19c  b        #0xa2c4
0000a1a0  bl       #0x6b98
0000a1a4  ldur     w8, [x26, #-0x30]
0000a1a8  ldur     w9, [x26, #-0x44]
0000a1ac  add      w8, w8, #1, lsl #12
0000a1b0  sub      x8, x0, x8
0000a1b4  cmp      x8, x9
0000a1b8  b.hs     #0xa1f0
0000a1bc  bl       #0x16834
0000a1c0  tst      w0, #0xff
0000a1c4  b.eq     #0xa34c
0000a1c8  mov      w0, #-0xffffffff80000000
0000a1cc  bl       #0x1685c
0000a1d0  tst      w0, #0xff
0000a1d4  b.eq     #0xa34c
0000a1d8  adrp     x1, #0xa6000
0000a1dc  add      x1, x1, #0xac5 ; 'Image is too big to hold in buffer\n'
0000a1e0  mov      w0, #-0xffffffff80000000
0000a1e4  bl       #0x16188
0000a1e8  mov      w20, wzr
0000a1ec  b        #0x9ce8
0000a1f0  bl       #0x4e2d4
0000a1f4  cmp      w0, #1
0000a1f8  b.ne     #0xa254
0000a1fc  adrp     x8, #0xd2000
0000a200  sturh    wzr, [x26, #-0x4c]
0000a204  stur     w29, [x26, #-0x48]
0000a208  adrp     x0, #0xcb000
0000a20c  sub      x2, x26, #0x40
0000a210  add      x0, x0, #0xc
0000a214  ldr      x8, [x8, #0x8e8]
0000a218  mov      x1, xzr
0000a21c  ldr      x8, [x8, #0x140]
0000a220  blr      x8
0000a224  cbz      x0, #0xa278
0000a228  mov      x21, x0
0000a22c  bl       #0x16834
0000a230  tst      w0, #0xff
0000a234  b.eq     #0xa34c
0000a238  mov      w0, #-0xffffffff80000000
0000a23c  bl       #0x1685c
0000a240  tst      w0, #0xff
0000a244  b.eq     #0xa34c
0000a248  adrp     x1, #0xa6000
0000a24c  add      x1, x1, #0xae9 ; 'Unable to locate VB protocol: %r\n'
0000a250  b        #0xa340
0000a254  bl       #0x4e2d4
0000a258  cmp      w0, #2
0000a25c  b.ne     #0xa34c
0000a260  mov      x0, x22
0000a264  mov      x1, x20
0000a268  mov      w2, w21
0000a26c  bl       #0x26590
0000a270  and      w20, w0, #1
0000a274  b        #0x9ce8
0000a278  ldur     x0, [x26, #-0x40]
0000a27c  sub      x1, x26, #0x4c
0000a280  ldr      x8, [x0, #0x10]
0000a284  blr      x8
0000a288  cbz      x0, #0xa2d0
0000a28c  mov      x21, x0
0000a290  bl       #0x16834
0000a294  tst      w0, #0xff
0000a298  b.eq     #0xa34c
0000a29c  mov      w0, #-0xffffffff80000000
0000a2a0  bl       #0x1685c
0000a2a4  tst      w0, #0xff
0000a2a8  b.eq     #0xa34c
0000a2ac  adrp     x1, #0xa6000
0000a2b0  add      x1, x1, #0xb0b ; 'Error during VBDeviceInit: %r\n'
0000a2b4  b        #0xa340
0000a2b8  adrp     x1, #0xa6000
0000a2bc  mov      w0, #-1
0000a2c0  add      x1, x1, #0xb49 ; 'Validation failed, partition %a erased\n'
0000a2c4  mov      x2, x22
0000a2c8  bl       #0x40c20
0000a2cc  b        #0x9ed0
0000a2d0  ldur     x0, [x26, #-0x40]
0000a2d4  sub      x4, x26, #0x48
0000a2d8  ldur     w3, [x26, #-0x30]
0000a2dc  mov      x1, x23
0000a2e0  mov      x2, x20
0000a2e4  ldr      x8, [x0, #0x28]
0000a2e8  blr      x8
0000a2ec  mov      x21, x0
0000a2f0  cbnz     x0, #0xa31c
0000a2f4  ldur     w0, [x26, #-0x48]
0000a2f8  cmn      w0, #1
0000a2fc  b.eq     #0xa31c
0000a300  mov      x1, x20
0000a304  mov      w2, #1
0000a308  bl       #0x24320
0000a30c  cmp      w0, #0
0000a310  stur     w0, [x26, #-0x48]
0000a314  cset     w20, eq
0000a318  b        #0x9ce8
0000a31c  bl       #0x16834
0000a320  tst      w0, #0xff
0000a324  b.eq     #0xa34c
0000a328  mov      w0, #-0xffffffff80000000
0000a32c  bl       #0x1685c
0000a330  tst      w0, #0xff
0000a334  b.eq     #0xa34c
0000a338  adrp     x1, #0xa6000
0000a33c  add      x1, x1, #0xb2a ; 'VBVerifyImage failed with: %r\n'
0000a340  mov      w0, #-0xffffffff80000000
0000a344  mov      x2, x21
0000a348  b        #0xa0d8
0000a34c  mov      w20, wzr
0000a350  b        #0x9ce8
0000a354  bl       #0x53a68
0000a358  stp      x29, x30, [sp, #-0x60]!
0000a35c  stp      x28, x27, [sp, #0x10]
0000a360  stp      x26, x25, [sp, #0x20]
0000a364  stp      x24, x23, [sp, #0x30]
0000a368  stp      x22, x21, [sp, #0x40]
0000a36c  stp      x20, x19, [sp, #0x50]
0000a370  mov      w22, w2
0000a374  mov      x23, x1
0000a378  mov      x20, x0
0000a37c  bl       #0x6fd48
0000a380  ldr      x27, [x0]
0000a384  adrp     x8, #0xd0000
0000a388  adrp     x1, #0xc9000
0000a38c  mov      x19, x0

RANGE 00008c00 - 00009000
00008c00  tbz      x0, #0x3f, #0x8c4c
00008c04  b        #0x8c54
00008c08  bl       #0x16834
00008c0c  tst      w0, #0xff
00008c10  b.eq     #0x8c34
00008c14  mov      w0, #-0xffffffff80000000
00008c18  bl       #0x1685c
00008c1c  tst      w0, #0xff
00008c20  b.eq     #0x8c34
00008c24  adrp     x1, #0xa6000
00008c28  mov      w0, #-0xffffffff80000000
00008c2c  add      x1, x1, #0x395 ; 'ERROR: Fail to get the number of bytes to download.\n'
00008c30  bl       #0x16188
00008c34  adrp     x0, #0xa5000
00008c38  adrp     x1, #0xa6000
00008c3c  add      x0, x0, #0x92 ; 'INFO'
00008c40  add      x1, x1, #0x3ca ; 'Failed to get the number of bytes to download'
00008c44  bl       #0x3df8
00008c48  tbnz     x0, #0x3f, #0x8c54
00008c4c  mov      w0, #1
00008c50  bl       #0x3ec0
00008c54  mov      w0, #3
00008c58  b        #0x8d68
00008c5c  adrp     x2, #0xa6000
00008c60  sub      x0, x25, #0x208
00008c64  add      x2, x2, #0x6a2 ; 'D'
00008c68  mov      w1, #0x200
00008c6c  bl       #0x140a4
00008c70  mov      x0, x22
00008c74  and      x8, x21, #0xffffffff
00008c78  mov      w21, #0xd
00008c7c  add      x23, x20, x8
00008c80  sub      x24, x21, x8
00008c84  bl       #0x18400
00008c88  mov      x3, x0
00008c8c  mov      x0, x23
00008c90  mov      x1, x24
00008c94  mov      x2, x22
00008c98  bl       #0x17104
00008c9c  adrp     x8, #0xd2000
00008ca0  ldr      x8, [x8, #0x8e8]
00008ca4  ldr      x22, [x8, #0x160]
00008ca8  bl       #0x29f0
00008cac  ldr      x0, [x0, #0x10]
00008cb0  mov      x1, x20
00008cb4  mov      x2, x21
00008cb8  blr      x22
00008cbc  adrp     x8, #0xd2000
00008cc0  ldrb     w8, [x8, #0x6c0]
00008cc4  cmp      w8, #1
00008cc8  b.ne     #0x8ce8
00008ccc  adrp     x8, #0xd2000
00008cd0  adrp     x9, #0xd2000
00008cd4  ldr      x8, [x8, #0x638]
00008cd8  ldr      x0, [x9, #0x6c8]
00008cdc  ldr      x8, [x8, #0x58]
00008ce0  ldr      x8, [x8, #0x18]
00008ce4  blr      x8
00008ce8  adrp     x8, #0xd2000
00008cec  mov      w9, #1
00008cf0  adrp     x10, #0xd2000
00008cf4  strb     w9, [x8, #0x630]
00008cf8  strb     w9, [x10, #0x6ec]
00008cfc  bl       #0x68bd0
00008d00  adrp     x8, #0xd2000
00008d04  adrp     x9, #0xd2000
00008d08  str      w0, [x8, #0x6e8]
00008d0c  str      xzr, [x9, #0x628]
00008d10  bl       #0x29f0
00008d14  ldr      x8, [x0]
00008d18  ldr      x20, [x8, #0x10]
00008d1c  bl       #0x29f0
00008d20  ldr      x2, [x0, #0x10]
00008d24  mov      w0, #0x81
00008d28  mov      w1, #0xd
00008d2c  blr      x20
00008d30  bl       #0x16834
00008d34  tst      w0, #0xff
00008d38  b.eq     #0x8d64
00008d3c  mov      w0, #0x400000
00008d40  bl       #0x1685c
00008d44  tst      w0, #0xff
00008d48  b.eq     #0x8d64
00008d4c  bl       #0x29f0
00008d50  ldr      x2, [x0, #0x10]
00008d54  adrp     x1, #0xa6000
00008d58  add      x1, x1, #0x465 ; 'CmdDownload: Send 12 %a\n'
00008d5c  mov      w0, #0x400000
00008d60  bl       #0x16188
00008d64  mov      w0, #2
00008d68  ldr      x8, [x27]
00008d6c  cmp      x26, x8
00008d70  b.ne     #0x8da4
00008d74  str      x25, [x19]
00008d78  ldp      x20, x19, [sp, #0x40]
00008d7c  ldp      x22, x21, [sp, #0x30]
00008d80  ldp      x24, x23, [sp, #0x20]
00008d84  ldp      x26, x25, [sp, #0x10]
00008d88  ldp      x30, x27, [sp], #0x50
00008d8c  ret      
00008d90  adrp     x0, #0xa5000
00008d94  mov      w1, #0x584
00008d98  add      x0, x0, #0x7c ; 'AsciiStrLen'
00008d9c  bl       #0x18ce8
00008da0  b        #0x8b80
00008da4  bl       #0x53a68
00008da8  stp      x30, x19, [sp, #-0x10]!
00008dac  bl       #0x5a038
00008db0  cbz      x0, #0x8e48
00008db4  mov      x19, x0
00008db8  adrp     x0, #0xa6000
00008dbc  add      x0, x0, #0x684 ; '_'
00008dc0  mov      x1, x19
00008dc4  bl       #0x17afc
00008dc8  cbz      x0, #0x8de0
00008dcc  adrp     x0, #0xa6000
00008dd0  mov      x1, x19
00008dd4  add      x0, x0, #0x6ce
00008dd8  bl       #0x17afc
00008ddc  cbnz     x0, #0x8e20
00008de0  bl       #0x16834
00008de4  tst      w0, #0xff
00008de8  b.eq     #0x8e14
00008dec  mov      w0, #-0xffffffff80000000
00008df0  bl       #0x1685c
00008df4  tst      w0, #0xff
00008df8  b.eq     #0x8e14
00008dfc  adrp     x1, #0xa5000
00008e00  adrp     x2, #0xa6000
00008e04  add      x1, x1, #0xee2 ; 'Reset A/B attributes for slot %s\n'
00008e08  add      x2, x2, #0x684 ; '_'
00008e0c  mov      w0, #-0xffffffff80000000
00008e10  bl       #0x16188
00008e14  adrp     x0, #0xa6000
00008e18  add      x0, x0, #0x684 ; '_'
00008e1c  bl       #0x8ee8
00008e20  adrp     x0, #0xa6000
00008e24  mov      x1, x19
00008e28  add      x0, x0, #0x68a ; '_'
00008e2c  bl       #0x17afc
00008e30  cbz      x0, #0x8e50
00008e34  adrp     x0, #0xa6000
00008e38  mov      x1, x19
00008e3c  add      x0, x0, #0x6ce
00008e40  bl       #0x17afc
00008e44  cbz      x0, #0x8e50
00008e48  ldp      x30, x19, [sp], #0x10
00008e4c  ret      
00008e50  bl       #0x16834
00008e54  tst      w0, #0xff
00008e58  b.eq     #0x8e84
00008e5c  mov      w0, #-0xffffffff80000000
00008e60  bl       #0x1685c
00008e64  tst      w0, #0xff
00008e68  b.eq     #0x8e84
00008e6c  adrp     x1, #0xa5000
00008e70  adrp     x2, #0xa6000
00008e74  add      x1, x1, #0xee2 ; 'Reset A/B attributes for slot %s\n'
00008e78  add      x2, x2, #0x68a ; '_'
00008e7c  mov      w0, #-0xffffffff80000000
00008e80  bl       #0x16188
00008e84  adrp     x0, #0xa6000
00008e88  add      x0, x0, #0x68a ; '_'
00008e8c  ldp      x30, x19, [sp], #0x10
00008e90  b        #0x8ee8
00008e94  udf      #0
00008e98  str      x30, [sp, #-0x10]!
00008e9c  bl       #0x2aa0
00008ea0  adrp     x8, #0xd2000
00008ea4  ldrb     w8, [x8, #0x648]
00008ea8  cmp      w8, #1
00008eac  b.ne     #0x8ee0
00008eb0  bl       #0x16834
00008eb4  tst      w0, #0xff
00008eb8  b.eq     #0x8ee0
00008ebc  mov      w0, #-0xffffffff80000000
00008ec0  bl       #0x1685c
00008ec4  tst      w0, #0xff
00008ec8  b.eq     #0x8ee0
00008ecc  adrp     x1, #0xa5000
00008ed0  mov      w0, #-0xffffffff80000000
00008ed4  add      x1, x1, #0xe40 ; 'Continue detected, Exiting App...\n'
00008ed8  ldr      x30, [sp], #0x10
00008edc  b        #0x16188
00008ee0  ldr      x30, [sp], #0x10
00008ee4  ret      
00008ee8  stp      x30, x27, [sp, #-0x50]!
00008eec  stp      x26, x25, [sp, #0x10]
00008ef0  stp      x24, x23, [sp, #0x20]
00008ef4  stp      x22, x21, [sp, #0x30]
00008ef8  stp      x20, x19, [sp, #0x40]
00008efc  mov      x20, x0
00008f00  bl       #0x6fd48
00008f04  ldr      x25, [x0]
00008f08  adrp     x9, #0xd0000
00008f0c  mov      x19, x0
00008f10  sub      x8, x25, #0x80
00008f14  mov      x27, x25
00008f18  str      x8, [x0]
00008f1c  ldr      x26, [x9, #0x8a0]
00008f20  str      x26, [x27, #-8]!
00008f24  cbz      x20, #0x8f50
00008f28  adrp     x1, #0xa6000
00008f2c  mov      x0, x20
00008f30  add      x1, x1, #0x684 ; '_'
00008f34  bl       #0x17afc
00008f38  cbz      x0, #0x8f80
00008f3c  adrp     x1, #0xa6000
00008f40  mov      x0, x20
00008f44  add      x1, x1, #0x68a ; '_'
00008f48  bl       #0x17afc
00008f4c  cbz      x0, #0x8f80
00008f50  bl       #0x16834
00008f54  tst      w0, #0xff
00008f58  b.eq     #0x9028
00008f5c  mov      w0, #-0xffffffff80000000
00008f60  bl       #0x1685c
00008f64  tst      w0, #0xff
00008f68  b.eq     #0x9028
00008f6c  adrp     x1, #0xa5000
00008f70  mov      w0, #-0xffffffff80000000
00008f74  add      x1, x1, #0xf04 ; 'Invalid incoming slot\n'
00008f78  bl       #0x16188
00008f7c  b        #0x9028
00008f80  adrp     x0, #0xb9000
00008f84  add      x0, x0, #0x7ee ; 'b'
00008f88  bl       #0x17a08
00008f8c  mov      x21, x0
00008f90  lsl      x8, x0, #1
00008f94  add      x8, x8, #2
00008f98  cmp      x8, #0xb
00008f9c  b.hs     #0x9050
00008fa0  adrp     x0, #0xb9000
00008fa4  add      x21, x21, #1
00008fa8  add      x0, x0, #0x7ee ; 'b'
00008fac  bl       #0x17a08
00008fb0  mov      x22, x0
00008fb4  lsl      x23, x0, #1
00008fb8  add      x8, x23, #2
00008fbc  cmp      x8, #0xb
00008fc0  b.hs     #0x9064
00008fc4  lsl      x8, x21, #1
00008fc8  cmp      x8, #0x49
00008fcc  b.hs     #0x9078
00008fd0  cmp      x23, #0xb
00008fd4  b.hs     #0x9090
00008fd8  sub      x23, x25, #0x50
00008fdc  adrp     x2, #0xb9000
00008fe0  add      x2, x2, #0x7ee ; 'b'
00008fe4  mov      x0, x23
00008fe8  mov      x1, x21
00008fec  mov      x3, x22
00008ff0  sub      x24, x25, #0x74
00008ff4  bl       #0x16af4
00008ff8  mov      x0, x20
00008ffc  bl       #0x17a08

RANGE 00038f70 - 000391a0
00038f70  str      x29, [sp, #-0x40]!
00038f74  stp      x30, x23, [sp, #0x10]
00038f78  stp      x22, x21, [sp, #0x20]
00038f7c  stp      x20, x19, [sp, #0x30]
00038f80  sub      sp, sp, #0xa50
00038f84  adrp     x8, #0xd0000
00038f88  mov      w22, #0xd
00038f8c  mov      x23, x4
00038f90  mov      x19, x2
00038f94  mov      w20, w1
00038f98  mov      x21, x0
00038f9c  ldr      x8, [x8, #0x8a0]
00038fa0  add      x5, sp, #0x20
00038fa4  mov      w0, wzr
00038fa8  mov      w2, wzr
00038fac  mov      w1, w22
00038fb0  mov      w4, wzr
00038fb4  str      x8, [sp, #0xa48]
00038fb8  str      w3, [sp, #0x1c]
00038fbc  mov      w3, #0x400
00038fc0  bl       #0x32108
00038fc4  cbnz     w0, #0x3902c
00038fc8  adrp     x2, #0xd0000
00038fcc  mov      x4, xzr
00038fd0  mov      x5, xzr
00038fd4  mov      x6, xzr
00038fd8  mov      x7, xzr
00038fdc  add      x2, x2, #0x4b0
00038fe0  add      x0, sp, #0x20
00038fe4  mov      x1, x23
00038fe8  mov      w3, #3
00038fec  stp      xzr, xzr, [sp]
00038ff0  bl       #0x32208
00038ff4  mov      w22, w0
00038ff8  cbnz     w0, #0x39024
00038ffc  add      x0, sp, #0x20
00039000  add      x6, sp, #0x1c
00039004  mov      x1, xzr
00039008  mov      w2, #0xff
0003900c  mov      x3, x21
00039010  mov      w4, w20
00039014  mov      x5, x19
00039018  mov      w7, #1
0003901c  bl       #0x336f0
00039020  mov      w22, w0
00039024  add      x0, sp, #0x20
00039028  bl       #0x34680
0003902c  adrp     x9, #0xd0000
00039030  ldr      x8, [sp, #0xa48]
00039034  ldr      x9, [x9, #0x8a0]
00039038  cmp      x9, x8
0003903c  b.ne     #0x3905c
00039040  mov      w0, w22
00039044  add      sp, sp, #0xa50
00039048  ldp      x20, x19, [sp, #0x30]
0003904c  ldp      x22, x21, [sp, #0x20]
00039050  ldp      x30, x23, [sp, #0x10]
00039054  ldr      x29, [sp], #0x40
00039058  ret      
0003905c  bl       #0x53a68
00039060  sub      sp, sp, #0x20
00039064  str      x30, [sp, #0x10]
00039068  adrp     x8, #0xd0000
0003906c  ldr      x8, [x8, #0x8a0]
00039070  str      x8, [sp, #8]
00039074  cbz      w1, #0x390a0
00039078  mov      x8, xzr
0003907c  mov      w9, w1
00039080  ldrb     w10, [x0]
00039084  cbnz     w10, #0x390a0
00039088  add      x0, x0, #1
0003908c  add      x8, x8, #1
00039090  sub      w1, w1, #1
00039094  cmp      x8, x9
00039098  b.ne     #0x39080
0003909c  mov      w1, wzr
000390a0  adrp     x9, #0xd0000
000390a4  ldr      x8, [sp, #8]
000390a8  ldr      x9, [x9, #0x8a0]
000390ac  cmp      x9, x8
000390b0  b.ne     #0x390c4
000390b4  ldr      x30, [sp, #0x10]
000390b8  mov      w0, w1
000390bc  add      sp, sp, #0x20
000390c0  ret      
000390c4  bl       #0x53a68
000390c8  sub      sp, sp, #0x20
000390cc  str      x30, [sp, #0x10]
000390d0  adrp     x9, #0xd0000
000390d4  ldr      x9, [x9, #0x8a0]
000390d8  str      x9, [sp, #8]
000390dc  cbz      w1, #0x39114
000390e0  mov      x8, x0
000390e4  mov      x9, xzr
000390e8  mov      w10, w1
000390ec  mov      w11, w1
000390f0  lsl      w0, w1, #3
000390f4  ldrb     w12, [x8]
000390f8  cbnz     w12, #0x39138
000390fc  add      x8, x8, #1
00039100  add      x9, x9, #1
00039104  sub      w0, w0, #8
00039108  sub      w11, w11, #1
0003910c  cmp      x9, x10
00039110  b.ne     #0x390f4
00039114  mov      w0, wzr
00039118  adrp     x9, #0xd0000
0003911c  ldr      x8, [sp, #8]
00039120  ldr      x9, [x9, #0x8a0]
00039124  cmp      x9, x8
00039128  b.ne     #0x3916c
0003912c  ldr      x30, [sp, #0x10]
00039130  add      sp, sp, #0x20
00039134  ret      
00039138  lsr      w10, w11, #0x1d
0003913c  cbz      w10, #0x39148
00039140  mov      w0, #-1
00039144  b        #0x39118
00039148  sub      w9, w1, w9
0003914c  cbz      w9, #0x39114
00039150  ldrsb    w8, [x8]
00039154  tbnz     w8, #0x1f, #0x39118
00039158  sub      w0, w0, #8
0003915c  add      w0, w0, #1
00039160  ubfx     w8, w8, #1, #7
00039164  cbnz     w8, #0x3915c
00039168  b        #0x39118
0003916c  bl       #0x53a68
00039170  str      x29, [sp, #-0x40]!
00039174  stp      x30, x23, [sp, #0x10]
00039178  stp      x22, x21, [sp, #0x20]
0003917c  stp      x20, x19, [sp, #0x30]
00039180  sub      sp, sp, #1, lsl #12
00039184  sub      sp, sp, #0x10
00039188  adrp     x8, #0xd0000
0003918c  mov      x19, x1
00039190  ldr      x8, [x8, #0x8a0]
00039194  str      x8, [sp, #0x1008]
00039198  cbz      w2, #0x391f8
0003919c  mov      x10, xzr

RANGE 0005d000 - 0005d1cc
0005d000  ldr      x8, [sp, #8]
0005d004  bl       #0x5d2b8
0005d008  b.ne     #0x5d020
0005d00c  mov      x0, x19
0005d010  adrp     x1, #0xb9000
0005d014  ldp      x30, x19, [sp, #0x10]
0005d018  add      x1, x1, #0x5a2 ; 'vendor_boot'
0005d01c  b        #0x5d2c4
0005d020  bl       #0x53a68
0005d024  sub      sp, sp, #0x40
0005d028  stp      x30, x19, [sp, #0x30]
0005d02c  adrp     x8, #0xd0000
0005d030  mov      x19, x1
0005d034  add      x1, sp, #4
0005d038  ldr      x8, [x8, #0x8a0]
0005d03c  str      x8, [sp, #0x28]
0005d040  bl       #0x5cdd8
0005d044  cbz      x0, #0x5d05c
0005d048  add      x0, sp, #4
0005d04c  mov      x1, x19
0005d050  bl       #0x1be9c
0005d054  cmp      w0, #0
0005d058  cset     w0, eq
0005d05c  adrp     x9, #0xd0000
0005d060  ldr      x8, [sp, #0x28]
0005d064  bl       #0x5d2b8
0005d068  b.ne     #0x5d074
0005d06c  ldp      x30, x19, [sp, #0x30]
0005d070  b        #0x5d2f4
0005d074  bl       #0x53a68
0005d078  sub      sp, sp, #0x20
0005d07c  stp      x30, x19, [sp, #0x10]
0005d080  adrp     x8, #0xd0000
0005d084  adrp     x1, #0xbb000
0005d088  add      x1, x1, #0xdfd ; 'dto'
0005d08c  bl       #0x5d31c
0005d090  tbz      w0, #0, #0x5d0ac
0005d094  adrp     x9, #0xd0000
0005d098  ldr      x8, [sp, #8]
0005d09c  bl       #0x5d2b8
0005d0a0  b.ne     #0x5d0d0
0005d0a4  ldp      x30, x19, [sp, #0x10]
0005d0a8  b        #0x5d32c
0005d0ac  adrp     x9, #0xd0000
0005d0b0  ldr      x8, [sp, #8]
0005d0b4  bl       #0x5d2b8
0005d0b8  b.ne     #0x5d0d0
0005d0bc  mov      x0, x19
0005d0c0  adrp     x1, #0xb9000
0005d0c4  ldp      x30, x19, [sp, #0x10]
0005d0c8  add      x1, x1, #0x23d ; 'dtbo'
0005d0cc  b        #0x5d2c4
0005d0d0  bl       #0x53a68
0005d0d4  sub      sp, sp, #0x20
0005d0d8  str      x30, [sp, #0x10]
0005d0dc  bl       #0x5d284
0005d0e0  b.ne     #0x5d0f4
0005d0e4  ldr      x30, [sp, #0x10]
0005d0e8  adrp     x1, #0xb4000
0005d0ec  add      x1, x1, #0x50c ; 'modem'
0005d0f0  b        #0x5d2c4
0005d0f4  bl       #0x53a68
0005d0f8  sub      sp, sp, #0x20
0005d0fc  str      x30, [sp, #0x10]
0005d100  bl       #0x5d284
0005d104  b.ne     #0x5d118
0005d108  ldr      x30, [sp, #0x10]
0005d10c  adrp     x1, #0xb4000
0005d110  add      x1, x1, #0x603 ; 'fsg'
0005d114  b        #0x5d2c4
0005d118  bl       #0x53a68
0005d11c  sub      sp, sp, #0x20
0005d120  str      x30, [sp, #0x10]
0005d124  bl       #0x5d284
0005d128  b.ne     #0x5d13c
0005d12c  ldr      x30, [sp, #0x10]
0005d130  adrp     x1, #0xaf000
0005d134  add      x1, x1, #0xca3 ; 'vbmeta'
0005d138  b        #0x5d2c4
0005d13c  bl       #0x53a68
0005d140  sub      sp, sp, #0x20
0005d144  str      x30, [sp, #0x10]
0005d148  bl       #0x5d284
0005d14c  b.ne     #0x5d160
0005d150  ldr      x30, [sp, #0x10]
0005d154  adrp     x1, #0xa7000
0005d158  add      x1, x1, #0xe73 ; 'logo'
0005d15c  b        #0x5d2c4
0005d160  bl       #0x53a68
0005d164  sub      sp, sp, #0x30
0005d168  str      x30, [sp, #0x10]
0005d16c  stp      x20, x19, [sp, #0x20]
0005d170  adrp     x8, #0xd0000
0005d174  adrp     x20, #0xaf000
0005d178  add      x20, x20, #0xca3 ; 'vbmeta'
0005d17c  mov      x19, x0
0005d180  mov      x0, x20
0005d184  ldr      x8, [x8, #0x8a0]
0005d188  str      x8, [sp, #8]
0005d18c  bl       #0x1b710
0005d190  mov      x2, x0
0005d194  mov      x0, x19
0005d198  mov      x1, x20
0005d19c  bl       #0x1bef8
0005d1a0  adrp     x9, #0xd0000
0005d1a4  ldr      x8, [sp, #8]
0005d1a8  cmp      w0, #0
0005d1ac  cset     w0, eq
0005d1b0  bl       #0x5d2b8
0005d1b4  b.ne     #0x5d1c8
0005d1b8  ldp      x20, x19, [sp, #0x20]
0005d1bc  ldr      x30, [sp, #0x10]
0005d1c0  add      sp, sp, #0x30
0005d1c4  ret      
0005d1c8  bl       #0x53a68

RANGE 000436a0 - 00043970
000436a0  stp      x29, x30, [sp, #-0x60]!
000436a4  stp      x28, x27, [sp, #0x10]
000436a8  stp      x26, x25, [sp, #0x20]
000436ac  stp      x24, x23, [sp, #0x30]
000436b0  stp      x22, x21, [sp, #0x40]
000436b4  stp      x20, x19, [sp, #0x50]
000436b8  sub      sp, sp, #0x220
000436bc  adrp     x8, #0xd0000
000436c0  adrp     x20, #0xb4000
000436c4  mov      w19, w1
000436c8  add      x20, x20, #0x5f9 ; '/security/fsg'
000436cc  adrp     x1, #0xb4000
000436d0  mov      x22, x0
000436d4  ldr      x8, [x8, #0x8a0]
000436d8  add      x1, x1, #0x607 ; 'compatible'
000436dc  mov      x0, x20
000436e0  str      x8, [sp, #0x218]
000436e4  bl       #0x1d26c
000436e8  adrp     x1, #0xb4000
000436ec  mov      x21, x0
000436f0  add      x1, x1, #0x612 ; 'fsg-files'
000436f4  add      x2, sp, #0x14
000436f8  mov      x0, x20
000436fc  str      wzr, [sp, #0x14]
00043700  bl       #0x1d424
00043704  mov      x20, x0
00043708  mov      w0, wzr
0004370c  cbz      x22, #0x43a7c
00043710  cbz      w19, #0x43a7c
00043714  adrp     x0, #0xb4000
00043718  add      x0, x0, #0x5f9 ; '/security/fsg'
0004371c  bl       #0x1d598
00043720  tbz      w0, #0, #0x437e0
00043724  mov      x0, x22
00043728  mov      w1, w19
0004372c  bl       #0x8f590
00043730  cbz      x0, #0x43988
00043734  mov      x19, x0
00043738  cbz      x21, #0x439bc
0004373c  cbz      x20, #0x439bc
00043740  adrp     x1, #0xb4000
00043744  add      x0, sp, #0x118
00043748  add      x1, x1, #0xe39 ; '/%a'
0004374c  mov      x2, x21
00043750  bl       #0x1b414
00043754  ldr      x8, [x19, #8]
00043758  add      x1, sp, #0x118
0004375c  mov      x0, x19
00043760  blr      x8
00043764  tbnz     w0, #0x1f, #0x439f0
00043768  ldr      x8, [x19, #0x10]
0004376c  mov      w1, w0
00043770  mov      x0, x19
00043774  blr      x8
00043778  bl       #0x16834
0004377c  tst      w0, #0xff
00043780  b.eq     #0x437a4
00043784  mov      w0, #2
00043788  bl       #0x1685c
0004378c  tst      w0, #0xff
00043790  b.eq     #0x437a4
00043794  adrp     x1, #0xb4000
00043798  mov      w0, #2
0004379c  add      x1, x1, #0x668 ; 'Validating super fsg!\n'
000437a0  bl       #0x16188
000437a4  ldr      w1, [sp, #0x14]
000437a8  mov      x0, x20
000437ac  bl       #0x84738
000437b0  ldr      x8, [x0]
000437b4  mov      x22, x0
000437b8  cbz      x8, #0x43ab0
000437bc  adrp     x21, #0xb4000
000437c0  adrp     x24, #0xb4000
000437c4  adrp     x25, #0xb4000
000437c8  mov      w23, wzr
000437cc  mov      x20, x22
000437d0  add      x21, x21, #0xe39 ; '/%a'
000437d4  add      x24, x24, #0x6ae ; 'fsg file size: %d\n'
000437d8  add      x25, x25, #0x67f ; 'Checking fsg file: %a\n'
000437dc  b        #0x43820
000437e0  bl       #0x16834
000437e4  tst      w0, #0xff
000437e8  b.eq     #0x4380c
000437ec  mov      w0, #2
000437f0  bl       #0x1685c
000437f4  tst      w0, #0xff
000437f8  b.eq     #0x4380c
000437fc  adrp     x1, #0xb4000
00043800  mov      w0, #2
00043804  add      x1, x1, #0x61c ; 'bypass fsg preflash validation due to DTS!\n'
00043808  bl       #0x16188
0004380c  mov      w0, #1
00043810  b        #0x43a7c
00043814  add      w23, w23, #1
00043818  ldr      x8, [x20, #8]!
0004381c  cbz      x8, #0x43ab4
00043820  bl       #0x16834
00043824  tst      w0, #0xff
00043828  b.eq     #0x4384c
0004382c  mov      w0, #2
00043830  bl       #0x1685c
00043834  tst      w0, #0xff
00043838  b.eq     #0x4384c
0004383c  ldr      x2, [x20]
00043840  mov      w0, #2
00043844  mov      x1, x25
00043848  bl       #0x16188
0004384c  ldr      x2, [x20]
00043850  add      x0, sp, #0x18
00043854  mov      x1, x21
00043858  bl       #0x1b414
0004385c  ldr      x8, [x19, #8]
00043860  add      x1, sp, #0x18
00043864  mov      x0, x19
00043868  blr      x8
0004386c  tbnz     w0, #0x1f, #0x43954
00043870  mov      w28, w0
00043874  ldr      x8, [x19, #0x20]
00043878  mov      x0, x19
0004387c  mov      w1, w28
00043880  blr      x8
00043884  mov      w27, w0
00043888  bl       #0x16834
0004388c  tst      w0, #0xff
00043890  b.eq     #0x438b4
00043894  mov      w0, #2
00043898  bl       #0x1685c
0004389c  tst      w0, #0xff
000438a0  b.eq     #0x438b4
000438a4  mov      w0, #2
000438a8  mov      x1, x24
000438ac  mov      w2, w27
000438b0  bl       #0x16188
000438b4  tbnz     w27, #0x1f, #0x43acc
000438b8  mov      w29, w27
000438bc  mov      x0, x29
000438c0  bl       #0x15784
000438c4  cbz      x0, #0x43b04
000438c8  mov      x26, x0
000438cc  ldr      x8, [x19, #0x18]
000438d0  mov      x0, x19
000438d4  mov      w1, w28
000438d8  mov      x2, x26
000438dc  mov      x3, x29
000438e0  blr      x8
000438e4  tbnz     w0, #0x1f, #0x43b44
000438e8  mov      x0, x26
000438ec  mov      w1, w27
000438f0  bl       #0x43bf8
000438f4  mov      x0, x26
000438f8  mov      w1, w27
000438fc  bl       #0x8f590
00043900  cbz      x0, #0x43b78
00043904  mov      x27, x0
00043908  bl       #0x43ce8
0004390c  tbz      w0, #0, #0x43bc0
00043910  mov      x0, x26
00043914  bl       #0x15910
00043918  mov      x0, x27
0004391c  bl       #0x90568
00043920  tbnz     w0, #0, #0x43814
00043924  bl       #0x16834
00043928  tst      w0, #0xff
0004392c  b.eq     #0x43814
00043930  mov      w0, #-0xffffffff80000000
00043934  bl       #0x1685c
00043938  tst      w0, #0xff
0004393c  b.eq     #0x43814
00043940  adrp     x1, #0xb4000
00043944  mov      w0, #-0xffffffff80000000
00043948  add      x1, x1, #0x789 ; 'Error happened in deinit single fsg ext4!\n'
0004394c  bl       #0x16188
00043950  b        #0x43814
00043954  bl       #0x16834
00043958  tst      w0, #0xff
0004395c  b.eq     #0x43818
00043960  mov      w0, #-0xffffffff80000000
00043964  bl       #0x1685c
00043968  tst      w0, #0xff
0004396c  b.eq     #0x43818

RANGE 000090b8 - 000093e0
000090b8  str      x30, [sp, #-0x30]!
000090bc  stp      x22, x21, [sp, #0x10]
000090c0  stp      x20, x19, [sp, #0x20]
000090c4  bl       #0x6fd48
000090c8  ldr      x20, [x0]
000090cc  adrp     x9, #0xd0000
000090d0  mov      x19, x0
000090d4  sub      x8, x20, #0x10
000090d8  mov      x22, x20
000090dc  str      x8, [x0]
000090e0  ldr      x21, [x9, #0x8a0]
000090e4  sturb    wzr, [x20, #-0xc]
000090e8  str      x21, [x22, #-8]!
000090ec  bl       #0x21a18
000090f0  tst      w0, #0xff
000090f4  b.eq     #0x91a8
000090f8  adrp     x1, #0xa6000
000090fc  mov      w0, wzr
00009100  add      x1, x1, #0x6dd ; 'dap_flashing'
00009104  bl       #0x1ec08
00009108  tbz      w0, #0, #0x9160
0000910c  adrp     x1, #0xa6000
00009110  mov      w0, wzr
00009114  add      x1, x1, #0x6dd ; 'dap_flashing'
00009118  bl       #0x1e7f8
0000911c  cmp      x0, #1
00009120  b.ne     #0x9160
00009124  adrp     x1, #0xa6000
00009128  sub      x2, x20, #0xc
0000912c  add      x1, x1, #0x6dd ; 'dap_flashing'
00009130  mov      w0, wzr
00009134  mov      w3, #1
00009138  bl       #0x1e7ac
0000913c  cbz      x0, #0x9160
00009140  ldurb    w8, [x20, #-0xc]
00009144  cmp      w8, #0
00009148  cset     w9, ne
0000914c  sturb    w9, [x20, #-0xc]
00009150  cbz      w8, #0x9164
00009154  adrp     x0, #0xa6000
00009158  add      x0, x0, #0x6ea ; 'CAUTION: Flashing dynamic partition in bootloader is a lab function! Please use at your own risk!'
0000915c  b        #0x919c
00009160  sturb    wzr, [x20, #-0xc]
00009164  adrp     x0, #0xa6000
00009168  add      x0, x0, #0x74c ; 'Google Android Q Requirement:'
0000916c  bl       #0x43c8
00009170  adrp     x0, #0xa6000
00009174  add      x0, x0, #0x76a ; '  Bootloader MUST NOT allow the flashing of dynamic partitions.'
00009178  bl       #0x43c8
0000917c  adrp     x0, #0xa6000
00009180  add      x0, x0, #0x7aa ; "There're 2 options to continue:"
00009184  bl       #0x43c8
00009188  adrp     x0, #0xa6000
0000918c  add      x0, x0, #0x7ca ; '  1. Build super.img using "make superimage" and then flash super.img; OR,'
00009190  bl       #0x43c8
00009194  adrp     x0, #0xa6000
00009198  add      x0, x0, #0x815 ; '  2. Run "fastboot reboot fastboot" to launch fastbootd to flash'
0000919c  bl       #0x43c8
000091a0  ldurb    w0, [x20, #-0xc]
000091a4  b        #0x91ac
000091a8  mov      w0, wzr
000091ac  ldr      x8, [x22]
000091b0  cmp      x21, x8
000091b4  b.ne     #0x91cc
000091b8  str      x20, [x19]
000091bc  ldp      x20, x19, [sp, #0x20]
000091c0  ldp      x22, x21, [sp, #0x10]
000091c4  ldr      x30, [sp], #0x30
000091c8  ret      
000091cc  bl       #0x53a68
000091d0  stp      x30, x25, [sp, #-0x40]!
000091d4  stp      x24, x23, [sp, #0x10]
000091d8  stp      x22, x21, [sp, #0x20]
000091dc  stp      x20, x19, [sp, #0x30]
000091e0  mov      x21, x0
000091e4  bl       #0x6fd48
000091e8  ldr      x23, [x0]
000091ec  adrp     x8, #0xd0000
000091f0  mov      x19, x0
000091f4  sub      x22, x23, #0x50
000091f8  mov      x25, x23
000091fc  str      x22, [x0]
00009200  ldr      x24, [x8, #0x8a0]
00009204  str      x24, [x25, #-8]!
00009208  bl       #0x90b8
0000920c  tst      w0, #0xff
00009210  b.eq     #0x9284
00009214  bl       #0x610d0
00009218  tst      w0, #0xff
0000921c  b.eq     #0x92b4
00009220  sub      x20, x23, #0x48
00009224  mov      x0, x21
00009228  mov      x1, x20
0000922c  mov      x2, x22
00009230  bl       #0x9348
00009234  tst      w0, #0xff
00009238  b.eq     #0x931c
0000923c  adrp     x1, #0xb4000
00009240  mov      w0, #-1
00009244  add      x1, x1, #0x314 ; 'super'
00009248  bl       #0x56770
0000924c  tbnz     w0, #0x1f, #0x92c0
00009250  bl       #0x568d0
00009254  cmp      w0, #0x80
00009258  b.ne     #0x92f0
0000925c  bl       #0x16834
00009260  tst      w0, #0xff
00009264  b.eq     #0x9310
00009268  mov      w0, #-0xffffffff80000000
0000926c  bl       #0x1685c
00009270  tst      w0, #0xff
00009274  b.eq     #0x9310
00009278  adrp     x1, #0xa6000
0000927c  add      x1, x1, #0x897 ; 'Failed to get super partition lun!\n'
00009280  b        #0x92e4
00009284  bl       #0x16834
00009288  tst      w0, #0xff
0000928c  b.eq     #0x931c
00009290  mov      w0, #-0xffffffff80000000
00009294  bl       #0x1685c
00009298  tst      w0, #0xff
0000929c  b.eq     #0x931c
000092a0  adrp     x1, #0xa5000
000092a4  mov      w0, #-0xffffffff80000000
000092a8  add      x1, x1, #0xd0b ; 'DAP flashing is not supported!\n'
000092ac  bl       #0x16188
000092b0  b        #0x931c
000092b4  adrp     x0, #0xa6000
000092b8  add      x0, x0, #0x856 ; 'Dynamic partition not supported'
000092bc  b        #0x9318
000092c0  bl       #0x16834
000092c4  tst      w0, #0xff
000092c8  b.eq     #0x9310
000092cc  mov      w0, #-0xffffffff80000000
000092d0  bl       #0x1685c
000092d4  tst      w0, #0xff
000092d8  b.eq     #0x9310
000092dc  adrp     x1, #0xa6000
000092e0  add      x1, x1, #0x876 ; 'Failed to find super partition!\n'
000092e4  mov      w0, #-0xffffffff80000000
000092e8  bl       #0x16188
000092ec  b        #0x9310
000092f0  ldur     x3, [x23, #-0x50]
000092f4  mov      x1, x20
000092f8  mov      x2, xzr
000092fc  mov      x4, xzr
00009300  bl       #0x57104
00009304  tbnz     w0, #0x1f, #0x9310
00009308  mov      w0, #1
0000930c  b        #0x9320
00009310  adrp     x0, #0xa6000
00009314  add      x0, x0, #0x8bb ; 'Failed to create logical partition'
00009318  bl       #0x40b0
0000931c  mov      w0, #3
00009320  ldr      x8, [x25]
00009324  cmp      x24, x8
00009328  b.ne     #0x9344
0000932c  str      x23, [x19]
00009330  ldp      x20, x19, [sp, #0x30]
00009334  ldp      x22, x21, [sp, #0x20]
00009338  ldp      x24, x23, [sp, #0x10]
0000933c  ldp      x30, x25, [sp], #0x40
00009340  ret      
00009344  bl       #0x53a68
00009348  stp      x30, x27, [sp, #-0x50]!
0000934c  stp      x26, x25, [sp, #0x10]
00009350  stp      x24, x23, [sp, #0x20]
00009354  stp      x22, x21, [sp, #0x30]
00009358  stp      x20, x19, [sp, #0x40]
0000935c  mov      x21, x2
00009360  mov      x20, x1
00009364  mov      x22, x0
00009368  bl       #0x6fd48
0000936c  ldr      x25, [x0]
00009370  adrp     x9, #0xd0000
00009374  mov      x19, x0
00009378  sub      x8, x25, #0x90
0000937c  mov      x27, x25
00009380  str      x8, [x0]
00009384  ldr      x26, [x9, #0x8a0]
00009388  str      x26, [x27, #-8]!
0000938c  cbz      x22, #0x94d8
00009390  mov      x0, x22
00009394  bl       #0x18400
00009398  mov      x8, x0
0000939c  mov      w0, wzr
000093a0  cbz      x20, #0x94dc
000093a4  cbz      x8, #0x94dc
000093a8  mov      x0, x22
000093ac  bl       #0x18400
000093b0  cmp      x0, #0x40
000093b4  b.lo     #0x93f4
000093b8  bl       #0x16834
000093bc  tst      w0, #0xff
000093c0  b.eq     #0x94d8
000093c4  mov      w0, #-0xffffffff80000000
000093c8  bl       #0x1685c
000093cc  tst      w0, #0xff
000093d0  b.eq     #0x94d8
000093d4  mov      x0, x22
000093d8  bl       #0x18400
000093dc  adrp     x1, #0xa6000

RANGE 00007480 - 000076b0
00007480  b.ls     #0x77b8
00007484  adrp     x0, #0xa5000
00007488  adrp     x1, #0xc2000
0000748c  add      x0, x0, #0x121 ; 'OKAY'
00007490  add      x1, x1, #0x4da
00007494  bl       #0x3df8
00007498  tbnz     x0, #0x3f, #0x7908
0000749c  mov      w0, #1
000074a0  bl       #0x3ec0
000074a4  tbnz     x0, #0x3f, #0x7908
000074a8  adrp     x8, #0xd2000
000074ac  ldrb     w8, [x8, #0x6c0]
000074b0  cmp      w8, #1
000074b4  b.ne     #0x7ae8
000074b8  mov      w0, #0x60
000074bc  mov      x19, x20
000074c0  bl       #0x15784
000074c4  cbz      x0, #0x7b1c
000074c8  ldr      x8, [x23, #0x6b0]
000074cc  mov      w26, #0x24
000074d0  ldr      x9, [x21, #0x6e0]
000074d4  mov      x1, x26
000074d8  mov      x2, x22
000074dc  mov      x3, x26
000074e0  mov      x25, x0
000074e4  stp      x8, x9, [x0, #0x50]
000074e8  bl       #0x16af4
000074ec  adrp     x20, #0xd2000
000074f0  str      w26, [x25, #0x48]
000074f4  adrp     x0, #0xa5000
000074f8  adrp     x1, #0x4000
000074fc  add      x0, x0, #0x13e ; 'SparseImgFlashThread'
00007500  add      x1, x1, #0x708
00007504  ldr      x8, [x20, #0x638]
00007508  mov      x2, x25
0000750c  mov      w3, #0x18
00007510  mov      w4, #0x1000
00007514  ldr      x8, [x8, #0x18]
00007518  ldr      x8, [x8]
0000751c  blr      x8
00007520  cbz      x0, #0x7bac
00007524  mov      x25, x0
00007528  bl       #0x6f978
0000752c  ldr      x8, [x20, #0x638]
00007530  mov      x0, x25
00007534  ldr      x8, [x8, #0x18]
00007538  ldr      x8, [x8, #8]
0000753c  blr      x8
00007540  ldr      w9, [sp, #0x14]
00007544  mov      w26, #0xff3a
00007548  mov      x20, x19
0000754c  movk     w26, #0xed26, lsl #16
00007550  sxtw     x25, w0
00007554  tbz      w0, #0x1f, #0x77c0
00007558  b        #0x77d8
0000755c  adrp     x0, #0xa5000
00007560  mov      w1, #0x320
00007564  add      x0, x0, #0x81 ; 'StrLen'
00007568  bl       #0x18ce8
0000756c  b        #0x71c8
00007570  sub      x0, x27, #0xbc
00007574  bl       #0x58718
00007578  mov      x0, xzr
0000757c  bl       #0x58fa8
00007580  bl       #0x16834
00007584  tst      w0, #0xff
00007588  b.eq     #0x72d4
0000758c  mov      w0, #0x40
00007590  bl       #0x1685c
00007594  tst      w0, #0xff
00007598  b.eq     #0x72d4
0000759c  bl       #0x581a8
000075a0  mov      x2, x27
000075a4  lsr      x8, x0, #0x20
000075a8  adrp     x1, #0xa5000
000075ac  add      x1, x1, #0xcd9 ; 'Partition table updated, active slot reset to %s\n'
000075b0  str      w0, [x2, #-0xc8]!
000075b4  strh     w8, [x2, #4]
000075b8  mov      w0, #0x40
000075bc  bl       #0x16188
000075c0  mov      w0, #1
000075c4  b        #0x7158
000075c8  ldr      w1, [sp, #0x14]
000075cc  mov      x0, x28
000075d0  bl       #0x2bb58
000075d4  b        #0x75e4
000075d8  ldr      w1, [sp, #0x14]
000075dc  mov      x0, x28
000075e0  bl       #0x2a818
000075e4  ldr      x21, [sp, #0x28]
000075e8  mov      w8, #3
000075ec  tst      w0, #0xff
000075f0  csinc    w0, w8, wzr, eq
000075f4  b        #0x7154
000075f8  sub      x24, x27, #0xb4
000075fc  mov      x0, x22
00007600  mov      x1, x24
00007604  mov      w19, w26
00007608  bl       #0x180b4
0000760c  mov      w0, #-1
00007610  mov      x1, x24
00007614  bl       #0x57528
00007618  tbnz     w0, #0x1f, #0x7764
0000761c  ldr      w8, [sp, #0x14]
00007620  mov      w26, w0
00007624  mov      w23, w8
00007628  bl       #0x56940
0000762c  cmp      x0, x23
00007630  b.hs     #0x7860
00007634  mov      x25, x0
00007638  mov      x24, x20
0000763c  bl       #0x16834
00007640  tst      w0, #0xff
00007644  b.eq     #0x7668
00007648  mov      w0, #-0xffffffff80000000
0000764c  bl       #0x1685c
00007650  tst      w0, #0xff
00007654  b.eq     #0x7668
00007658  adrp     x1, #0xa5000
0000765c  mov      w0, #-0xffffffff80000000
00007660  add      x1, x1, #0xe80 ; 'Partition not big enough.\n'
00007664  bl       #0x16188
00007668  mov      x20, #2
0000766c  movk     x20, #0x8000, lsl #48
00007670  bl       #0x16834
00007674  mov      w26, w19
00007678  tst      w0, #0xff
0000767c  b.eq     #0x7930
00007680  mov      w0, #-0xffffffff80000000
00007684  bl       #0x1685c
00007688  add      x21, x20, #9
0000768c  tst      w0, #0xff
00007690  b.eq     #0x7938
00007694  adrp     x1, #0xa5000
00007698  mov      w0, #-0xffffffff80000000
0000769c  add      x1, x1, #0xe9b ; 'Partition Size:\t%d\nImage Size:\t%d\n'
000076a0  mov      x2, x25
000076a4  mov      x3, x23
000076a8  bl       #0x16188
000076ac  b        #0x7938

RANGE 00007d00 - 00007e80
00007d00  add      x1, x1, #0xc6f
00007d04  bl       #0x3df8
00007d08  tbnz     x0, #0x3f, #0x7f2c
00007d0c  mov      w0, #1
00007d10  bl       #0x3ec0
00007d14  mov      w0, #3
00007d18  b        #0x7f30
00007d1c  mov      x8, x21
00007d20  mov      x1, x20
00007d24  ldrb     w9, [x8], #1
00007d28  cmp      w9, #0x3a
00007d2c  csel     x21, x8, x21, eq
00007d30  mov      x0, x21
00007d34  bl       #0x18bc0
00007d38  adrp     x0, #0xa6000
00007d3c  add      x0, x0, #0x618 ; 'a'
00007d40  bl       #0x17a08
00007d44  mov      x22, x0
00007d48  lsl      x8, x0, #1
00007d4c  add      x8, x8, #2
00007d50  cmp      x8, #0x1f
00007d54  b.hs     #0x7eb4
00007d58  adrp     x1, #0xa6000
00007d5c  mov      x0, x20
00007d60  add      x1, x1, #0x618 ; 'a'
00007d64  mov      x2, x22
00007d68  bl       #0x17ba8
00007d6c  cbz      x0, #0x7de0
00007d70  adrp     x0, #0xa6000
00007d74  add      x0, x0, #0x66c ; 'd'
00007d78  bl       #0x17a08
00007d7c  mov      x22, x0
00007d80  lsl      x8, x0, #1
00007d84  add      x8, x8, #2
00007d88  cmp      x8, #0x19
00007d8c  b.hs     #0x7f58
00007d90  adrp     x1, #0xa6000
00007d94  mov      x0, x20
00007d98  add      x1, x1, #0x66c ; 'd'
00007d9c  mov      x2, x22
00007da0  bl       #0x17ba8
00007da4  cbz      x0, #0x7e38
00007da8  mov      w0, #-1
00007dac  mov      x1, x21
00007db0  bl       #0x57528
00007db4  tbnz     w0, #0x1f, #0x7e50
00007db8  bl       #0x56b70
00007dbc  tbnz     w0, #0x1f, #0x7e6c
00007dc0  adrp     x0, #0xa6000
00007dc4  mov      x1, x20
00007dc8  add      x0, x0, #0x690 ; 'u'
00007dcc  bl       #0x17afc
00007dd0  cbz      x0, #0x7ec8
00007dd4  mov      x0, x20
00007dd8  bl       #0x8da8
00007ddc  b        #0x7e30
00007de0  bl       #0x16834
00007de4  tst      w0, #0xff
00007de8  b.eq     #0x7e0c
00007dec  mov      w0, #0x40
00007df0  bl       #0x1685c
00007df4  tst      w0, #0xff
00007df8  b.eq     #0x7e0c
00007dfc  adrp     x1, #0xa5000
00007e00  mov      w0, #0x40
00007e04  add      x1, x1, #0xf1b ; 'erasing avb_custom_key\n'
00007e08  bl       #0x16188
00007e0c  bl       #0x6d440
00007e10  cbz      x0, #0x7e30
00007e14  adrp     x0, #0xa5000
00007e18  adrp     x1, #0xa5000
00007e1c  add      x0, x0, #0x92 ; 'INFO'
00007e20  add      x1, x1, #0xf33 ; 'Erasing avb_custom_key failed'
00007e24  bl       #0x3df8
00007e28  tbz      x0, #0x3f, #0x7d0c
00007e2c  b        #0x7f2c
00007e30  mov      w0, #1
00007e34  b        #0x7f30
00007e38  mov      w1, wzr
00007e3c  bl       #0x2a818
00007e40  mov      w8, #3
00007e44  tst      w0, #0xff
00007e48  csinc    w0, w8, wzr, eq
00007e4c  b        #0x7f30
00007e50  adrp     x0, #0xa5000
00007e54  adrp     x1, #0xa5000
00007e58  add      x0, x0, #0x92 ; 'INFO'
00007e5c  add      x1, x1, #0xd55 ; 'Partition not found'
00007e60  bl       #0x3df8
00007e64  tbz      x0, #0x3f, #0x7d0c
00007e68  b        #0x7f2c
00007e6c  adrp     x0, #0xa5000
00007e70  adrp     x1, #0xa5000
00007e74  add      x0, x0, #0x92 ; 'INFO'
00007e78  add      x1, x1, #0xf51 ; 'Erase partition failed.'
00007e7c  bl       #0x3df8

RANGE 0002b110 - 0002b4d0
0002b110  add      x1, x1, #0x714
0002b114  b        #0x2b458
0002b118  lsl      w8, w19, #1
0002b11c  add      w0, w8, #0x5d
0002b120  bl       #0x15710
0002b124  mov      x19, x0
0002b128  and      w8, w21, #0xffff
0002b12c  cmp      w8, #1
0002b130  b.ne     #0x2b49c
0002b134  ldur     x1, [x29, #-0x18]
0002b138  add      w8, w20, #6
0002b13c  add      w9, w20, #7
0002b140  add      w10, w20, #8
0002b144  add      w11, w20, #9
0002b148  ldrb     w8, [x1, w8, uxtw]
0002b14c  ldrb     w9, [x1, w9, uxtw]
0002b150  ldrb     w10, [x1, w10, uxtw]
0002b154  ldrb     w4, [x1, #8]
0002b158  stur     w8, [x29, #-0x20]
0002b15c  add      w8, w20, #0xa
0002b160  stur     w9, [x29, #-0x24]
0002b164  add      w9, w20, #0xb
0002b168  stur     w10, [x29, #-0x2c]
0002b16c  ldrb     w8, [x1, w8, uxtw]
0002b170  ldrb     w10, [x1, w11, uxtw]
0002b174  add      w11, w20, #0x36
0002b178  ldrb     w9, [x1, w9, uxtw]
0002b17c  ldrb     w3, [x1, #9]
0002b180  stur     w8, [x29, #-0x30]
0002b184  add      w8, w20, #0xd
0002b188  stur     w10, [x29, #-0x28]
0002b18c  add      w10, w20, #0xc
0002b190  stur     w9, [x29, #-0x34]
0002b194  add      w9, w20, #0x10
0002b198  ldrb     w8, [x1, w8, uxtw]
0002b19c  ldrb     w10, [x1, w10, uxtw]
0002b1a0  ldrb     w9, [x1, w9, uxtw]
0002b1a4  ldrb     w7, [x1, w11, uxtw]
0002b1a8  stur     w8, [x29, #-0x3c]
0002b1ac  add      w8, w20, #0x12
0002b1b0  stur     w10, [x29, #-0x38]
0002b1b4  add      w10, w20, #0x11
0002b1b8  stur     w9, [x29, #-0x40]
0002b1bc  add      w9, w20, #0x13
0002b1c0  ldrb     w8, [x1, w8, uxtw]
0002b1c4  ldrb     w10, [x1, w10, uxtw]
0002b1c8  ldrb     w9, [x1, w9, uxtw]
0002b1cc  ldrb     w2, [x1, #0xa]
0002b1d0  stur     w8, [x29, #-0x48]
0002b1d4  add      w8, w20, #0x15
0002b1d8  stur     w10, [x29, #-0x44]
0002b1dc  add      w10, w20, #0x14
0002b1e0  stur     w9, [x29, #-0x4c]
0002b1e4  add      w9, w20, #0x16
0002b1e8  ldrb     w8, [x1, w8, uxtw]
0002b1ec  ldrb     w10, [x1, w10, uxtw]
0002b1f0  ldrb     w9, [x1, w9, uxtw]
0002b1f4  ldrb     w0, [x1, #0xb]
0002b1f8  stur     w8, [x29, #-0x54]
0002b1fc  add      w8, w20, #0x18
0002b200  stur     w10, [x29, #-0x50]
0002b204  add      w10, w20, #0x17
0002b208  stur     w9, [x29, #-0x58]
0002b20c  add      w9, w20, #0x19
0002b210  ldrb     w8, [x1, w8, uxtw]
0002b214  ldrb     w10, [x1, w10, uxtw]
0002b218  ldrb     w9, [x1, w9, uxtw]
0002b21c  ldrb     w18, [x1, #0xc]
0002b220  stur     w8, [x29, #-0x60]
0002b224  add      w8, w20, #0x1b
0002b228  stur     w10, [x29, #-0x5c]
0002b22c  add      w10, w20, #0x1a
0002b230  stur     w9, [x29, #-0x64]
0002b234  add      w9, w20, #0x1c
0002b238  ldrb     w8, [x1, w8, uxtw]
0002b23c  ldrb     w10, [x1, w10, uxtw]
0002b240  ldrb     w9, [x1, w9, uxtw]
0002b244  ldrb     w17, [x1, #0xd]
0002b248  stur     w8, [x29, #-0x6c]
0002b24c  add      w8, w20, #0x1e
0002b250  stur     w10, [x29, #-0x68]
0002b254  add      w10, w20, #0x1d
0002b258  stur     w9, [x29, #-0x70]
0002b25c  add      w9, w20, #0x1f
0002b260  ldrb     w8, [x1, w8, uxtw]
0002b264  ldrb     w10, [x1, w10, uxtw]
0002b268  ldrb     w9, [x1, w9, uxtw]
0002b26c  ldrb     w16, [x1, #0xe]
0002b270  stur     w8, [x29, #-0x78]
0002b274  add      w8, w20, #0x21
0002b278  stur     w10, [x29, #-0x74]
0002b27c  add      w10, w20, #0x20
0002b280  stur     w9, [x29, #-0x7c]
0002b284  add      w9, w20, #0x22
0002b288  ldrb     w8, [x1, w8, uxtw]
0002b28c  ldrb     w10, [x1, w10, uxtw]
0002b290  ldrb     w15, [x1, #0xf]
0002b294  ldrb     w14, [x1, #0x10]
0002b298  stur     w8, [x29, #-0x84]
0002b29c  ldrb     w8, [x1, w9, uxtw]
0002b2a0  stur     w10, [x29, #-0x80]
0002b2a4  add      w10, w20, #0x23
0002b2a8  ldrb     w13, [x1, #0x11]
0002b2ac  ldrb     w12, [x1, #0x12]
0002b2b0  stur     w8, [x29, #-0x88]
0002b2b4  add      w8, w20, #0x27
0002b2b8  ldrb     w9, [x1, w10, uxtw]
0002b2bc  ldrb     w10, [x1, w22, uxtw]
0002b2c0  ldrb     w8, [x1, w8, uxtw]
0002b2c4  ldrb     w11, [x1, #0x13]
0002b2c8  stur     w9, [x29, #-0x8c]
0002b2cc  add      w9, w20, #0x28
0002b2d0  stur     w10, [x29, #-0x90]
0002b2d4  add      w10, w20, #0x29
0002b2d8  stur     w8, [x29, #-0x94]
0002b2dc  add      w8, w20, #0x2a
0002b2e0  ldrb     w9, [x1, w9, uxtw]
0002b2e4  ldrb     w10, [x1, w10, uxtw]
0002b2e8  ldrb     w8, [x1, w8, uxtw]
0002b2ec  stur     w9, [x29, #-0x98]
0002b2f0  add      w9, w20, #0x2b
0002b2f4  stur     w10, [x29, #-0x9c]
0002b2f8  add      w10, w20, #0x2c
0002b2fc  stur     w8, [x29, #-0xa0]
0002b300  add      w8, w20, #0x2d
0002b304  ldrb     w9, [x1, w9, uxtw]
0002b308  ldrb     w10, [x1, w10, uxtw]
0002b30c  ldrb     w30, [x1, w8, uxtw]
0002b310  add      w8, w20, #0x30
0002b314  stur     w9, [x29, #-0xa4]
0002b318  add      w9, w20, #0x2e
0002b31c  ldrb     w26, [x1, w8, uxtw]
0002b320  add      w8, w20, #0x33
0002b324  stur     w10, [x29, #-0xa8]
0002b328  add      w10, w20, #0x2f
0002b32c  ldrb     w28, [x1, w9, uxtw]
0002b330  add      w9, w20, #0x31
0002b334  ldrb     w23, [x1, w8, uxtw]
0002b338  add      w8, w20, #0x38
0002b33c  ldrb     w27, [x1, w10, uxtw]
0002b340  add      w10, w20, #0x32
0002b344  ldrb     w25, [x1, w9, uxtw]
0002b348  add      w9, w20, #0x34
0002b34c  ldrb     w5, [x1, w8, uxtw]
0002b350  ldrb     w8, [x1, #0x16]
0002b354  ldrb     w24, [x1, w10, uxtw]
0002b358  add      w10, w20, #0x35
0002b35c  ldrb     w22, [x1, w9, uxtw]
0002b360  add      w9, w20, #0x37
0002b364  add      w20, w20, #0x39
0002b368  ldrb     w21, [x1, w10, uxtw]
0002b36c  ldrb     w6, [x1, w9, uxtw]
0002b370  ldrb     w20, [x1, w20, uxtw]
0002b374  ldrb     w10, [x1, #0x14]
0002b378  ldrb     w9, [x1, #0x15]
0002b37c  ldrb     w1, [x1, #0x17]
0002b380  str      w8, [sp, #0x1c8]
0002b384  ldur     w8, [x29, #-0xa8]
0002b388  str      w2, [sp, #0x168]
0002b38c  adrp     x2, #0xb0000
0002b390  str      w1, [sp, #0x1d0]
0002b394  mov      w1, #0x84
0002b398  str      w9, [sp, #0x1c0]
0002b39c  add      x2, x2, #0x744 ; '%02X%02X%02X%02X%02X%02X%02X%02X#%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X#%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%0'
0002b3a0  str      w8, [sp, #0xe8]
0002b3a4  ldur     w8, [x29, #-0xa4]
0002b3a8  str      w10, [sp, #0x1b8]
0002b3ac  str      w11, [sp, #0x1b0]
0002b3b0  str      w12, [sp, #0x1a8]
0002b3b4  str      w8, [sp, #0xe0]
0002b3b8  ldur     w8, [x29, #-0xa0]
0002b3bc  str      w13, [sp, #0x1a0]
0002b3c0  str      w14, [sp, #0x198]
0002b3c4  str      w15, [sp, #0x190]
0002b3c8  str      w8, [sp, #0xd8]
0002b3cc  ldur     w8, [x29, #-0x9c]
0002b3d0  str      w16, [sp, #0x188]
0002b3d4  str      w17, [sp, #0x180]
0002b3d8  str      w18, [sp, #0x178]
0002b3dc  str      w8, [sp, #0xd0]
0002b3e0  ldur     w8, [x29, #-0x98]
0002b3e4  str      w0, [sp, #0x170]
0002b3e8  str      w3, [sp, #0x160]
0002b3ec  str      w4, [sp, #0x158]
0002b3f0  str      w8, [sp, #0xc8]
0002b3f4  ldur     w8, [x29, #-0x94]
0002b3f8  str      w20, [sp, #0x150]
0002b3fc  str      w5, [sp, #0x148]
0002b400  str      w6, [sp, #0x140]
0002b404  str      w8, [sp, #0xc0]
0002b408  ldur     w8, [x29, #-0x90]
0002b40c  str      w7, [sp, #0x138]
0002b410  str      w21, [sp, #0x130]
0002b414  str      w22, [sp, #0x128]
0002b418  str      w8, [sp, #0xb8]
0002b41c  ldur     w8, [x29, #-0x8c]
0002b420  str      w23, [sp, #0x120]
0002b424  str      w24, [sp, #0x118]
0002b428  str      w25, [sp, #0x110]
0002b42c  str      w8, [sp, #0xb0]
0002b430  ldur     w8, [x29, #-0x88]
0002b434  str      w26, [sp, #0x108]
0002b438  str      w27, [sp, #0x100]
0002b43c  str      w28, [sp, #0xf8]
0002b440  str      w8, [sp, #0xa8]
0002b444  ldur     w8, [x29, #-0x84]
0002b448  str      w30, [sp, #0xf0]
0002b44c  b        #0x2b8ac
0002b450  adrp     x1, #0xb0000
0002b454  add      x1, x1, #0x6ec ; 'get_unlock_data: Unsupported datablock\n'
0002b458  mov      w0, #1
0002b45c  bl       #0x40c20
0002b460  mov      x19, xzr
0002b464  adrp     x9, #0xd0000
0002b468  ldur     x8, [x29, #-0x10]
0002b46c  ldr      x9, [x9, #0x8a0]
0002b470  cmp      x9, x8
0002b474  b.ne     #0x2b974
0002b478  mov      x0, x19
0002b47c  add      sp, sp, #0x310
0002b480  ldp      x20, x19, [sp, #0x50]
0002b484  ldp      x22, x21, [sp, #0x40]
0002b488  ldp      x24, x23, [sp, #0x30]
0002b48c  ldp      x26, x25, [sp, #0x20]
0002b490  ldp      x28, x27, [sp, #0x10]
0002b494  ldp      x29, x30, [sp], #0x60
0002b498  ret      
0002b49c  cmp      w8, #2
0002b4a0  b.ne     #0x2b964
0002b4a4  ldur     x1, [x29, #-0x18]
0002b4a8  add      w8, w20, #6
0002b4ac  add      w9, w20, #7
0002b4b0  add      w10, w20, #8
0002b4b4  add      w11, w20, #9
0002b4b8  ldrb     w8, [x1, w8, uxtw]
0002b4bc  ldrb     w9, [x1, w9, uxtw]
0002b4c0  ldrb     w10, [x1, w10, uxtw]
0002b4c4  ldrb     w4, [x1, #8]
0002b4c8  stur     w8, [x29, #-0x20]
0002b4cc  add      w8, w20, #0xa

RANGE 00032e78 - 000334e0
00032e78  str      x29, [sp, #-0x40]!
00032e7c  stp      x30, x23, [sp, #0x10]
00032e80  stp      x22, x21, [sp, #0x20]
00032e84  stp      x20, x19, [sp, #0x30]
00032e88  sub      sp, sp, #0x390
00032e8c  adrp     x9, #0xd0000
00032e90  mov      w22, w4
00032e94  mov      w21, w2
00032e98  mov      x23, x3
00032e9c  mov      x19, x1
00032ea0  mov      x20, x0
00032ea4  ldr      x9, [x9, #0x8a0]
00032ea8  sub      w8, w2, #0xd
00032eac  cmp      w8, #3
00032eb0  str      x9, [sp, #0x388]
00032eb4  b.hi     #0x32ec8
00032eb8  adrp     x9, #0xb3000
00032ebc  add      x9, x9, #0x40
00032ec0  ldr      w8, [x9, w8, sxtw #2]
00032ec4  b        #0x32ecc
00032ec8  mov      w8, wzr
00032ecc  cmp      w5, #1
00032ed0  str      w8, [sp, #0x6c]
00032ed4  b.hi     #0x33494
00032ed8  cbz      w6, #0x32ef4
00032edc  cmp      w6, #1
00032ee0  b.eq     #0x32f48
00032ee4  cmp      w6, #2
00032ee8  b.ne     #0x33494
00032eec  mov      w21, wzr
00032ef0  b        #0x33498
00032ef4  ldrb     w8, [x20]
00032ef8  cbnz     w8, #0x33494
00032efc  cbz      w5, #0x331bc
00032f00  cmp      w5, #1
00032f04  b.ne     #0x33494
00032f08  ldrb     w8, [x20, #1]
00032f0c  cmp      w8, #2
00032f10  b.ne     #0x33494
00032f14  ldrb     w8, [x20, #2]
00032f18  cbz      w8, #0x33200
00032f1c  ldr      w8, [x19]
00032f20  sub      w9, w8, #1
00032f24  mov      w8, #3
00032f28  sub      x10, x8, #1
00032f2c  cmp      x10, x9
00032f30  b.hs     #0x32f40
00032f34  ldrb     w10, [x20, x8]
00032f38  add      x8, x8, #1
00032f3c  cbnz     w10, #0x32f28
00032f40  sub      w8, w8, #1
00032f44  b        #0x33204
00032f48  cbz      w8, #0x33494
00032f4c  ldr      w9, [x19]
00032f50  sub      w8, w9, w8, lsl #1
00032f54  cmp      w8, #2
00032f58  b.mi     #0x33494
00032f5c  add      x1, sp, #0x2b0
00032f60  mov      w0, w21
00032f64  bl       #0x30910
00032f68  cbnz     w0, #0x33494
00032f6c  cbz      x23, #0x32f84
00032f70  add      x0, sp, #0x2b0
00032f74  mov      x1, x23
00032f78  mov      w2, w22
00032f7c  bl       #0x30c90
00032f80  cbnz     w0, #0x33494
00032f84  add      x0, sp, #0x2b0
00032f88  add      x1, sp, #0x70
00032f8c  add      x2, sp, #0x6c
00032f90  bl       #0x30ea8
00032f94  cbnz     w0, #0x33494
00032f98  ldr      w4, [sp, #0x6c]
00032f9c  add      x3, sp, #0xb0
00032fa0  ldr      w8, [x19]
00032fa4  mov      w0, w21
00032fa8  add      w9, w4, #1
00032fac  mvn      w10, w4
00032fb0  add      x1, x20, x9
00032fb4  add      w2, w8, w10
00032fb8  bl       #0x346e0
00032fbc  cbnz     w0, #0x33494
00032fc0  ldr      w2, [sp, #0x6c]
00032fc4  cbz      w2, #0x3335c
00032fc8  sub      x8, x2, #1
00032fcc  cmp      w2, #8
00032fd0  b.lo     #0x33244
00032fd4  cmp      w2, #0xf
00032fd8  b.ls     #0x3324c
00032fdc  and      x10, x2, #0xf
00032fe0  mov      x11, xzr
00032fe4  sub      x9, x8, x10
00032fe8  add      x12, sp, #0xb0
00032fec  add      x9, x9, #1
00032ff0  add      x13, x20, #1
00032ff4  mov      x15, x12
00032ff8  ldrb     w14, [x12, #3]
00032ffc  ldrb     w16, [x12, #2]
00033000  add      x11, x11, #0x10
00033004  ldrb     w17, [x12, #1]
00033008  cmp      x11, x9
0003300c  ldrb     w18, [x12]
00033010  ldrb     w0, [x15, #4]!
00033014  ldrb     w3, [x12, #5]
00033018  bfi      x16, x14, #8, #8
0003301c  mov      x14, x12
00033020  bfi      x18, x17, #8, #8
00033024  ldrb     w1, [x15, #3]
00033028  bfi      x18, x16, #0x10, #0x10
0003302c  ldrb     w15, [x15, #2]
00033030  bfi      w0, w3, #8, #8
00033034  bfi      w15, w1, #8, #8
00033038  bfi      w0, w15, #0x10, #0x10
0003303c  bfi      x18, x0, #0x20, #0x20
00033040  str      x18, [sp, #0x40]
00033044  ldrb     w15, [x12, #9]
00033048  ldrb     w16, [x14, #8]!
0003304c  bfi      x16, x15, #8, #8
00033050  ldrb     w17, [x14, #3]
00033054  ldrb     w18, [x14, #2]
00033058  ldrb     w0, [x14, #4]!
0003305c  ldrb     w3, [x12, #0xd]
00033060  add      x12, x12, #0x10
00033064  bfi      x18, x17, #8, #8
00033068  ldrb     w1, [x14, #3]
0003306c  ldrb     w14, [x14, #2]
00033070  bfi      w0, w3, #8, #8
00033074  bfi      x16, x18, #0x10, #0x10
00033078  bfi      w14, w1, #8, #8
0003307c  bfi      w0, w14, #0x10, #0x10
00033080  mov      x14, x13
00033084  bfi      x16, x0, #0x20, #0x20
00033088  str      x16, [sp, #0x48]
0003308c  ldr      q0, [sp, #0x40]
00033090  ldrb     w15, [x13, #3]
00033094  ldrb     w16, [x13, #2]
00033098  ldrb     w17, [x13, #1]
0003309c  ldrb     w18, [x13]
000330a0  ldrb     w0, [x14, #4]!
000330a4  ldrb     w4, [x13, #5]
000330a8  bfi      x16, x15, #8, #8
000330ac  mov      x15, x13
000330b0  bfi      x18, x17, #8, #8
000330b4  ldrb     w1, [x14, #3]
000330b8  bfi      x18, x16, #0x10, #0x10
000330bc  ldrb     w3, [x14, #2]
000330c0  bfi      w0, w4, #8, #8
000330c4  bfi      w3, w1, #8, #8
000330c8  bfi      w0, w3, #0x10, #0x10
000330cc  bfi      x18, x0, #0x20, #0x20
000330d0  str      x18, [sp, #0x30]
000330d4  ldrb     w16, [x13, #9]
000330d8  ldrb     w17, [x15, #8]!
000330dc  bfi      x17, x16, #8, #8
000330e0  mov      x18, x15
000330e4  ldrb     w0, [x15, #3]
000330e8  ldrb     w1, [x15, #2]
000330ec  ldrb     w3, [x18, #4]!
000330f0  ldrb     w6, [x13, #0xd]
000330f4  bfi      x1, x0, #8, #8
000330f8  ldrb     w4, [x18, #3]
000330fc  bfi      x17, x1, #0x10, #0x10
00033100  ldrb     w5, [x18, #2]
00033104  bfi      w3, w6, #8, #8
00033108  bfi      w5, w4, #8, #8
0003310c  bfi      w3, w5, #0x10, #0x10
00033110  bfi      x17, x3, #0x20, #0x20
00033114  str      x17, [sp, #0x38]
00033118  ldr      q1, [sp, #0x30]
0003311c  eor      v0.16b, v1.16b, v0.16b
00033120  str      q0, [sp, #0x50]
00033124  ldr      x16, [sp, #0x58]
00033128  lsr      x17, x16, #0x38
0003312c  strb     w16, [x15]
00033130  lsr      x0, x16, #0x30
00033134  ldr      x1, [sp, #0x50]
00033138  strb     w17, [x18, #3]
0003313c  lsr      x17, x16, #0x20
00033140  strb     w0, [x18, #2]
00033144  lsr      x0, x16, #0x28
00033148  strb     w17, [x18]
0003314c  ubfx     x17, x16, #0x18, #8
00033150  ubfx     x18, x16, #0x10, #0x10
00033154  ubfx     x16, x16, #8, #0x18
00033158  strb     w17, [x15, #3]
0003315c  ubfx     x17, x1, #0x18, #8
00033160  strb     w18, [x15, #2]
00033164  lsr      x15, x1, #0x38
00033168  strb     w16, [x13, #9]
0003316c  lsr      x16, x1, #0x28
00033170  strb     w15, [x14, #3]
00033174  ubfx     x15, x1, #0x10, #0x10
00033178  strb     w16, [x13, #5]
0003317c  ubfx     x16, x1, #8, #0x18
00033180  strb     w0, [x13, #0xd]
00033184  strb     w1, [x13]
00033188  strb     w17, [x13, #3]
0003318c  lsr      x17, x1, #0x30
00033190  strb     w15, [x13, #2]
00033194  lsr      x15, x1, #0x20
00033198  strb     w16, [x13, #1]
0003319c  add      x13, x13, #0x10
000331a0  strb     w17, [x14, #2]
000331a4  strb     w15, [x14]
000331a8  b.ne     #0x32ff4
000331ac  cbz      x10, #0x3335c
000331b0  cmp      x10, #7
000331b4  b.hi     #0x33250
000331b8  b        #0x33334
000331bc  ldrb     w8, [x20, #1]
000331c0  cmp      w8, #1
000331c4  b.ne     #0x33494
000331c8  mov      w8, #2
000331cc  mov      w21, #1
000331d0  ldrb     w9, [x20, x8]
000331d4  cmp      w9, #0xff
000331d8  b.ne     #0x331f8
000331dc  ldr      w9, [x19]
000331e0  add      x10, x8, #1
000331e4  sub      w9, w9, #1
000331e8  cmp      x8, x9
000331ec  mov      x8, x10
000331f0  b.lo     #0x331d0
000331f4  b        #0x33498
000331f8  cbnz     w9, #0x33494
000331fc  b        #0x33204
00033200  mov      w8, #2
00033204  ldr      w9, [x19]
00033208  sub      w10, w9, #1
0003320c  cmp      w8, w10
00033210  b.hi     #0x33494
00033214  add      w8, w8, #1
00033218  cmp      w8, #0xb
0003321c  b.lo     #0x33494
00033220  subs     w9, w9, w8
00033224  str      w9, [x19]
00033228  b.eq     #0x32eec
0003322c  add      x1, x20, w8, uxtw
00033230  mov      w2, w9
00033234  mov      x0, x20
00033238  bl       #0x31ac0
0003323c  mov      w21, wzr
00033240  b        #0x33498
00033244  mov      x9, xzr
00033248  b        #0x33334
0003324c  mov      x9, xzr
00033250  add      x10, sp, #0xb0
00033254  add      x11, x10, x9
00033258  add      x10, x9, x20
0003325c  mov      x14, x11
00033260  add      x9, x9, #8
00033264  cmp      x9, x2
00033268  ldrb     w12, [x11, #3]
0003326c  ldrb     w13, [x11, #2]
00033270  ldrb     w15, [x11, #1]
00033274  ldrb     w16, [x11]
00033278  ldrb     w17, [x14, #4]!
0003327c  ldrb     w11, [x11, #5]
00033280  bfi      x13, x12, #8, #8
00033284  bfi      x16, x15, #8, #8
00033288  ldrb     w18, [x14, #3]
0003328c  bfi      x16, x13, #0x10, #0x10
00033290  ldrb     w14, [x14, #2]
00033294  bfi      w17, w11, #8, #8
00033298  ldrb     w0, [x10, #1]!
0003329c  bfi      w14, w18, #8, #8
000332a0  mov      x3, x10
000332a4  ldrb     w1, [x10, #3]
000332a8  ldrb     w4, [x10, #2]
000332ac  bfi      w17, w14, #0x10, #0x10
000332b0  ldrb     w5, [x10, #1]
000332b4  ldrb     w6, [x3, #4]!
000332b8  ldrb     w23, [x10, #5]
000332bc  bfi      x16, x17, #0x20, #0x20
000332c0  bfi      x4, x1, #8, #8
000332c4  bfi      x0, x5, #8, #8
000332c8  fmov     d0, x16
000332cc  ldrb     w7, [x3, #3]
000332d0  bfi      x0, x4, #0x10, #0x10
000332d4  ldrb     w22, [x3, #2]
000332d8  bfi      w6, w23, #8, #8
000332dc  bfi      w22, w7, #8, #8
000332e0  bfi      w6, w22, #0x10, #0x10
000332e4  bfi      x0, x6, #0x20, #0x20
000332e8  fmov     d1, x0
000332ec  eor      v0.8b, v1.8b, v0.8b
000332f0  fmov     x11, d0
000332f4  lsr      x12, x11, #0x30
000332f8  lsr      x13, x11, #0x38
000332fc  lsr      x14, x11, #0x20
00033300  strb     w11, [x10]
00033304  strb     w12, [x3, #2]
00033308  lsr      x12, x11, #0x28
0003330c  strb     w13, [x3, #3]
00033310  ubfx     x13, x11, #0x10, #0x10
00033314  strb     w14, [x3]
00033318  ubfx     x14, x11, #0x18, #8
0003331c  ubfx     x11, x11, #8, #0x18
00033320  strb     w12, [x10, #5]
00033324  strb     w13, [x10, #2]
00033328  strb     w14, [x10, #3]
0003332c  strb     w11, [x10, #1]
00033330  b.ge     #0x3335c
00033334  add      x10, x20, #1
00033338  add      x11, sp, #0xb0
0003333c  ldrb     w12, [x11, x9]
00033340  cmp      x9, x8
00033344  ldrb     w13, [x10, x9]
00033348  eor      w12, w13, w12
0003334c  add      x13, x9, #1
00033350  strb     w12, [x10, x9]
00033354  mov      x9, x13
00033358  b.lt     #0x3333c
0003335c  ldr      w8, [x19]
00033360  mvn      w9, w2
00033364  add      x1, x20, #1
00033368  add      x3, sp, #0xb0
0003336c  mov      w0, w21
00033370  add      w4, w8, w9
00033374  bl       #0x346e0
00033378  cbnz     w0, #0x33494
0003337c  ldr      w2, [sp, #0x6c]
00033380  ldr      w8, [x19]
00033384  add      w9, w2, #1
00033388  cmp      w8, w9
0003338c  add      x0, x20, w9, uxtw
00033390  b.eq     #0x333e8
00033394  mvn      w9, w2
00033398  add      w10, w8, w9
0003339c  cmp      w10, #0x10
000333a0  b.lo     #0x333bc
000333a4  add      x11, x19, #4
000333a8  cmp      x11, x0
000333ac  b.ls     #0x334e8
000333b0  add      x11, x0, x10
000333b4  cmp      x11, x19
000333b8  b.ls     #0x334e8
000333bc  mov      x10, xzr
000333c0  add      x11, sp, #0xb0
000333c4  ldrb     w8, [x11, x10]
000333c8  ldrb     w12, [x0, x10]
000333cc  eor      w8, w12, w8
000333d0  strb     w8, [x0, x10]
000333d4  add      x10, x10, #1
000333d8  ldr      w8, [x19]
000333dc  add      w12, w8, w9
000333e0  cmp      x10, x12
000333e4  b.lo     #0x333c4
000333e8  mov      w21, #1
000333ec  bfi      w21, w2, #1, #0x1f
000333f0  cmp      w21, w8
000333f4  b.hs     #0x33428
000333f8  mov      w10, w21
000333fc  mov      w9, wzr
00033400  add      x11, x20, x10
00033404  ldrb     w12, [x11], #1
00033408  cmp      w12, #0
0003340c  add      x10, x10, #1
00033410  cset     w12, ne
00033414  cmp      w8, w10
00033418  orr      w9, w9, w12
0003341c  sub      w12, w21, w9
00033420  add      w21, w12, #1
00033424  b.ne     #0x33404
00033428  add      x1, sp, #0x70
0003342c  bl       #0x318d8
00033430  ldrb     w9, [x20]
00033434  cmp      w0, #0
00033438  ldr      w8, [x19]
0003343c  mov      w12, #2
00033440  ldrb     w10, [x20, w21, uxtw]
00033444  cset     w11, eq
00033448  csinc    w12, w12, wzr, eq
0003344c  cmp      w9, #0
00033450  csel     w9, w11, w12, ne
00033454  cmp      w21, w8
00033458  cinc     w9, w9, lo
0003345c  cmp      w10, #1
00033460  cinc     w9, w9, eq
00033464  cmp      w9, #4
00033468  b.ne     #0x33494
0003346c  add      w21, w21, #1
00033470  mov      x0, x20
00033474  add      x1, x20, x21
00033478  sub      w2, w8, w21
0003347c  bl       #0x31ac0
00033480  ldr      w8, [x19]
00033484  sub      w8, w8, w21
00033488  mov      w21, wzr
0003348c  str      w8, [x19]
00033490  b        #0x33498
00033494  mov      w21, #1
00033498  add      x0, sp, #0xb0
0003349c  mov      w1, #0x200
000334a0  bl       #0x31d40
000334a4  add      x0, sp, #0x70
000334a8  mov      w1, #0x40
000334ac  bl       #0x31d40
000334b0  add      x0, sp, #0x2b0
000334b4  bl       #0x31628
000334b8  adrp     x9, #0xd0000
000334bc  ldr      x8, [sp, #0x388]
000334c0  ldr      x9, [x9, #0x8a0]
000334c4  cmp      x9, x8
000334c8  b.ne     #0x336e8
000334cc  mov      w0, w21
000334d0  add      sp, sp, #0x390
000334d4  ldp      x20, x19, [sp, #0x30]
000334d8  ldp      x22, x21, [sp, #0x20]
000334dc  ldp      x30, x23, [sp, #0x10]

RANGE 00039c98 - 00039f00
00039c98  sub      sp, sp, #0x50
00039c9c  str      x30, [sp, #0x10]
00039ca0  stp      x24, x23, [sp, #0x20]
00039ca4  stp      x22, x21, [sp, #0x30]
00039ca8  stp      x20, x19, [sp, #0x40]
00039cac  adrp     x8, #0xd0000
00039cb0  mov      w22, w2
00039cb4  and      x2, x22, #0xffff
00039cb8  mov      x19, x5
00039cbc  mov      w20, w4
00039cc0  mov      x21, x3
00039cc4  ldr      x8, [x8, #0x8a0]
00039cc8  mov      x23, x1
00039ccc  mov      x24, x0
00039cd0  str      x8, [sp, #8]
00039cd4  bl       #0x318d8
00039cd8  tbnz     w0, #0x1f, #0x39d0c
00039cdc  adrp     x9, #0xd0000
00039ce0  ldr      x8, [sp, #8]
00039ce4  ldr      x9, [x9, #0x8a0]
00039ce8  cmp      x9, x8
00039cec  b.ne     #0x39dc0
00039cf0  ldp      x20, x19, [sp, #0x40]
00039cf4  mov      w0, #0x39
00039cf8  ldp      x22, x21, [sp, #0x30]
00039cfc  ldr      x30, [sp, #0x10]
00039d00  ldp      x24, x23, [sp, #0x20]
00039d04  add      sp, sp, #0x50
00039d08  ret      
00039d0c  and      w9, w20, #0xffff
00039d10  and      w10, w22, #0xffff
00039d14  lsl      w8, w9, #1
00039d18  lsl      w9, w9, #2
00039d1c  add      w8, w8, #0x10
00039d20  cmp      w10, #0x40
00039d24  b.hi     #0x39d3c
00039d28  adrp     x10, #0x39000
00039d2c  adrp     x11, #0x39000
00039d30  add      x10, x10, #0xe28
00039d34  add      x11, x11, #0xdc8
00039d38  b        #0x39d74
00039d3c  cmp      w10, #0x80
00039d40  b.hi     #0x39d58
00039d44  adrp     x10, #0x39000
00039d48  adrp     x11, #0x39000
00039d4c  add      x10, x10, #0xee8
00039d50  add      x11, x11, #0xe88
00039d54  b        #0x39d74
00039d58  and      w10, w22, #0xffff
00039d5c  cmp      w10, #0x200
00039d60  b.hi     #0x39cdc
00039d64  adrp     x10, #0x39000
00039d68  adrp     x11, #0x39000
00039d6c  add      x10, x10, #0xfc8
00039d70  add      x11, x11, #0xf48
00039d74  cmp      w8, w9
00039d78  adrp     x9, #0xd0000
00039d7c  ldr      x8, [sp, #8]
00039d80  csel     x6, x11, x10, lo
00039d84  ldr      x9, [x9, #0x8a0]
00039d88  cmp      x9, x8
00039d8c  b.ne     #0x39dc0
00039d90  mov      x0, x24
00039d94  mov      x1, x23
00039d98  mov      w2, w22
00039d9c  mov      x3, x21
00039da0  mov      w4, w20
00039da4  mov      x5, x19
00039da8  ldp      x20, x19, [sp, #0x40]
00039dac  ldp      x22, x21, [sp, #0x30]
00039db0  ldp      x24, x23, [sp, #0x20]
00039db4  ldr      x30, [sp, #0x10]
00039db8  add      sp, sp, #0x50
00039dbc  br       x6
00039dc0  bl       #0x53a68
00039dc4  udf      #0
00039dc8  stp      x29, x30, [sp, #-0x10]!
00039dcc  sub      sp, sp, #0x710
00039dd0  adrp     x8, #0xd0000
00039dd4  add      x9, sp, #0x460
00039dd8  add      x10, sp, #0x4fc
00039ddc  add      x11, sp, #0x540
00039de0  add      x6, sp, #0x604
00039de4  add      x7, sp, #0x584
00039de8  ldr      x8, [x8, #0x8a0]
00039dec  str      x8, [sp, #0x708]
00039df0  add      x8, sp, #0x20
00039df4  stp      x11, x10, [sp]
00039df8  stp      x9, x8, [sp, #0x10]
00039dfc  bl       #0x3a030
00039e00  adrp     x9, #0xd0000
00039e04  ldr      x8, [sp, #0x708]
00039e08  ldr      x9, [x9, #0x8a0]
00039e0c  cmp      x9, x8
00039e10  b.ne     #0x39e24
00039e14  mov      w0, #0xf0
00039e18  add      sp, sp, #0x710
00039e1c  ldp      x29, x30, [sp], #0x10
00039e20  ret      
00039e24  bl       #0x53a68
00039e28  stp      x29, x30, [sp, #-0x10]!
00039e2c  sub      sp, sp, #0x2d0
00039e30  adrp     x8, #0xd0000
00039e34  add      x9, sp, #0xbc
00039e38  add      x10, sp, #0x100
00039e3c  add      x6, sp, #0x1c4
00039e40  add      x7, sp, #0x144
00039e44  ldr      x8, [x8, #0x8a0]
00039e48  str      x8, [sp, #0x2c8]
00039e4c  add      x8, sp, #0x20
00039e50  stp      x10, x9, [sp]
00039e54  stp      x8, xzr, [sp, #0x10]
00039e58  bl       #0x3a030
00039e5c  adrp     x9, #0xd0000
00039e60  ldr      x8, [sp, #0x2c8]
00039e64  ldr      x9, [x9, #0x8a0]
00039e68  cmp      x9, x8
00039e6c  b.ne     #0x39e80
00039e70  mov      w0, #0xf0
00039e74  add      sp, sp, #0x2d0
00039e78  ldp      x29, x30, [sp], #0x10
00039e7c  ret      
00039e80  bl       #0x53a68
00039e84  udf      #0
00039e88  stp      x29, x30, [sp, #-0x10]!
00039e8c  sub      sp, sp, #0xd90
00039e90  adrp     x8, #0xd0000
00039e94  add      x9, sp, #0x860
00039e98  add      x10, sp, #0x97c
00039e9c  add      x11, sp, #0xa00
00039ea0  add      x6, sp, #0xb84
00039ea4  add      x7, sp, #0xa84
00039ea8  ldr      x8, [x8, #0x8a0]
00039eac  str      x8, [sp, #0xd88]
00039eb0  add      x8, sp, #0x20
00039eb4  stp      x11, x10, [sp]
00039eb8  stp      x9, x8, [sp, #0x10]
00039ebc  bl       #0x3a030
00039ec0  adrp     x9, #0xd0000
00039ec4  ldr      x8, [sp, #0xd88]
00039ec8  ldr      x9, [x9, #0x8a0]
00039ecc  cmp      x9, x8
00039ed0  b.ne     #0x39ee4
00039ed4  mov      w0, #0xf0
00039ed8  add      sp, sp, #0xd90
00039edc  ldp      x29, x30, [sp], #0x10
00039ee0  ret      
00039ee4  bl       #0x53a68
00039ee8  stp      x29, x30, [sp, #-0x10]!
00039eec  sub      sp, sp, #0x550
00039ef0  adrp     x8, #0xd0000
00039ef4  add      x9, sp, #0x13c
00039ef8  add      x10, sp, #0x1c0
00039efc  add      x6, sp, #0x344

RANGE 00006d88 - 00007000
00006d88  str      x30, [sp, #-0x40]!
00006d8c  stp      x24, x23, [sp, #0x10]
00006d90  stp      x22, x21, [sp, #0x20]
00006d94  stp      x20, x19, [sp, #0x30]
00006d98  mov      w20, w0
00006d9c  bl       #0x6fd48
00006da0  ldr      x21, [x0]
00006da4  adrp     x8, #0xd0000
00006da8  adrp     x24, #0xd2000
00006dac  adrp     x9, #0xca000
00006db0  adrp     x10, #0xca000
00006db4  add      x9, x9, #0xc5c
00006db8  add      x10, x10, #0xc6c
00006dbc  tst      w20, #0xff
00006dc0  sub      x5, x21, #0x10
00006dc4  mov      x23, x21
00006dc8  adrp     x2, #0x6000
00006dcc  mov      x19, x0
00006dd0  csel     x4, x10, x9, eq
00006dd4  add      x2, x2, #0xeb0
00006dd8  str      x5, [x0]
00006ddc  mov      w0, #0x200
00006de0  ldr      x22, [x8, #0x8a0]
00006de4  mov      w1, #8
00006de8  stur     xzr, [x21, #-0x10]
00006dec  mov      x3, xzr
00006df0  str      x22, [x23, #-8]!
00006df4  ldr      x8, [x24, #0x8e8]
00006df8  ldr      x8, [x8, #0x170]
00006dfc  blr      x8
00006e00  cbz      x0, #0x6e34
00006e04  bl       #0x16834
00006e08  tst      w0, #0xff
00006e0c  b.eq     #0x6e58
00006e10  mov      w0, #-0xffffffff80000000
00006e14  bl       #0x1685c
00006e18  tst      w0, #0xff
00006e1c  b.eq     #0x6e58
00006e20  adrp     x1, #0xa5000
00006e24  mov      w0, #-0xffffffff80000000
00006e28  add      x1, x1, #0x9bc ; 'Failed to create logging event!\n'
00006e2c  bl       #0x16188
00006e30  b        #0x6e58
00006e34  ldr      x8, [x24, #0x8e8]
00006e38  ldur     x0, [x21, #-0x10]
00006e3c  ldr      x8, [x8, #0x68]
00006e40  blr      x8
00006e44  tbnz     x0, #0x3f, #0x6e7c
00006e48  ldr      x8, [x24, #0x8e8]
00006e4c  ldur     x0, [x21, #-0x10]
00006e50  ldr      x8, [x8, #0x70]
00006e54  blr      x8
00006e58  ldr      x8, [x23]
00006e5c  cmp      x22, x8
00006e60  b.ne     #0x6eac
00006e64  str      x21, [x19]
00006e68  ldp      x20, x19, [sp, #0x30]
00006e6c  ldp      x22, x21, [sp, #0x20]
00006e70  ldp      x24, x23, [sp, #0x10]
00006e74  ldr      x30, [sp], #0x40
00006e78  ret      
00006e7c  bl       #0x16834
00006e80  tst      w0, #0xff
00006e84  b.eq     #0x6e48
00006e88  mov      w0, #-0xffffffff80000000
00006e8c  bl       #0x1685c
00006e90  tst      w0, #0xff
00006e94  b.eq     #0x6e48
00006e98  adrp     x1, #0xa5000
00006e9c  mov      w0, #-0xffffffff80000000
00006ea0  add      x1, x1, #0x99b ; 'Failed to signal logging event!\n'
00006ea4  bl       #0x16188
00006ea8  b        #0x6e48
00006eac  bl       #0x53a68
00006eb0  ret      
00006eb4  udf      #0
00006eb8  stp      x30, x21, [sp, #-0x20]!
00006ebc  stp      x20, x19, [sp, #0x10]
00006ec0  adrp     x21, #0xd2000
00006ec4  mov      x19, x0
00006ec8  adrp     x20, #0xd2000
00006ecc  ldrb     w8, [x21, #0x618]
00006ed0  cmp      w8, #1
00006ed4  b.ne     #0x6f04
00006ed8  ldr      x8, [x20, #0x8e8]
00006edc  mov      w2, #0x86a0
00006ee0  movk     w2, #1, lsl #16
00006ee4  mov      x0, x19
00006ee8  mov      w1, #2
00006eec  ldr      x8, [x8, #0x58]
00006ef0  blr      x8
00006ef4  tbnz     x0, #0x3f, #0x6f48
00006ef8  ldp      x20, x19, [sp, #0x10]
00006efc  ldp      x30, x21, [sp], #0x20
00006f00  ret      
00006f04  adrp     x8, #0xd2000
00006f08  ldrb     w8, [x8, #0x630]
00006f0c  tbnz     w8, #0, #0x6f28
00006f10  adrp     x8, #0xd1000
00006f14  add      x8, x8, #0xd18
00006f18  ldr      x8, [x8, #0x28]
00006f1c  blr      x8
00006f20  ldrb     w8, [x21, #0x618]
00006f24  tbnz     w8, #0, #0x6f30
00006f28  mov      w0, wzr
00006f2c  bl       #0x6d88
00006f30  ldr      x8, [x20, #0x8e8]
00006f34  adrp     x9, #0xd2000
00006f38  ldr      x0, [x9, #0x548]
00006f3c  ldr      x8, [x8, #0x68]
00006f40  blr      x8
00006f44  b        #0x6f68
00006f48  adrp     x0, #0xae000
00006f4c  adrp     x1, #0xa5000
00006f50  add      x0, x0, #0x94f ; 'FAIL'
00006f54  add      x1, x1, #0xa10 ; 'Failed to set timer for waiting flash completely'
00006f58  bl       #0x3df8
00006f5c  tbnz     x0, #0x3f, #0x6f68
00006f60  mov      w0, #1
00006f64  bl       #0x3ec0
00006f68  ldr      x8, [x20, #0x8e8]
00006f6c  mov      x0, x19
00006f70  ldp      x20, x19, [sp, #0x10]
00006f74  ldr      x1, [x8, #0x70]
00006f78  ldp      x30, x21, [sp], #0x20
00006f7c  br       x1
00006f80  stp      x30, x21, [sp, #-0x20]!
00006f84  stp      x20, x19, [sp, #0x10]
00006f88  mov      x19, x1
00006f8c  cbz      x0, #0x6fbc
00006f90  adrp     x21, #0xd2000
00006f94  mov      w1, wzr
00006f98  mov      x2, xzr
00006f9c  mov      x20, x0
00006fa0  ldr      x8, [x21, #0x8e8]
00006fa4  ldr      x8, [x8, #0x58]
00006fa8  blr      x8
00006fac  ldr      x8, [x21, #0x8e8]
00006fb0  mov      x0, x20
00006fb4  ldr      x8, [x8, #0x70]
00006fb8  blr      x8
00006fbc  ldp      x0, x1, [x19]
00006fc0  bl       #0x5b18
00006fc4  mov      x0, x19
00006fc8  ldp      x20, x19, [sp, #0x10]
00006fcc  ldp      x30, x21, [sp], #0x20
00006fd0  b        #0x15910
00006fd4  udf      #0
00006fd8  sub      sp, sp, #0x90
00006fdc  stp      x29, x30, [sp, #0x30]
00006fe0  stp      x28, x27, [sp, #0x40]
00006fe4  stp      x26, x25, [sp, #0x50]
00006fe8  stp      x24, x23, [sp, #0x60]
00006fec  stp      x22, x21, [sp, #0x70]
00006ff0  stp      x20, x19, [sp, #0x80]
00006ff4  str      w2, [sp, #0x14]
00006ff8  mov      x19, x1
00006ffc  mov      x22, x0
