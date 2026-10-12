00001000 cmp      x0, #0
00001004 b.eq     #0x10bc
00001008 stp      x3, x2, [sp, #-0x10]!
0000100c stp      x1, x0, [sp, #-0x10]!
00001010 stp      x9, x8, [sp, #-0x10]!
00001014 stp      x30, x29, [sp, #-0x10]!
00001018 cmp      x1, #0
0000101c b.eq     #0x1044
00001020 ldrb     w8, [x1]
00001024 cmp      w8, #0x49
00001028 b.ne     #0x1044
0000102c ldrb     w8, [x1, #1]
00001030 cmp      w8, #0x42
00001034 b.ne     #0x1044
00001038 ldrb     w8, [x1, #2]
0000103c cmp      w8, #0x49
00001040 b.eq     #0x104c
00001044 bl       #0x10f4
00001048 b        #0x10ac
0000104c ldr      x2, [x1, #0x68]
00001050 ldr      x3, [x1, #0x70]
00001054 ldr      x9, #0x10c0
00001058 ldr      x9, [x9]
0000105c cbz      x2, #0x1084
00001060 sub      x2, x2, #1
00001064 ldr      x8, [x3], #0x18
00001068 cmp      x8, x9
0000106c b.ne     #0x105c
00001070 sub      x3, x3, #8
00001074 ldr      x3, [x3]
00001078 ldr      x1, #0x10c8
0000107c str      x3, [x1]
00001080 b        #0x10ac
00001084 stp      x1, x0, [sp, #-0x10]!
00001088 bl       #0x10f4
0000108c ldp      x1, x0, [sp], #0x10
00001090 add      x3, x1, #0x60
00001094 ldr      x1, #0x13000
00001098 ldr      x0, #0x10d0
0000109c ldr      x2, [x3]
000010a0 add      x2, x2, #0xc0
000010a4 ldr      x3, [x2]
000010a8 blr      x3
000010ac ldp      x30, x29, [sp], #0x10
000010b0 ldp      x9, x8, [sp], #0x10
000010b4 ldp      x1, x0, [sp], #0x10
000010b8 ldp      x3, x2, [sp], #0x10
000010bc b        #0x1150
000010c0 .byte    0x08, 0x30, 0x01, 0x00
000010c4 udf      #0
000010c8 .byte    0x00, 0x30, 0x01, 0x00
000010cc udf      #0
000010d0 .byte    0x08, 0x30, 0x01, 0x00
000010d4 udf      #0
000010d8 sub      sp, sp, #0x10
000010dc mov      w8, #1
000010e0 str      w8, [sp, #0xc]
000010e4 ldr      w9, [sp, #0xc]
000010e8 cbnz     w9, #0x10e4
000010ec add      sp, sp, #0x10
000010f0 ret      
000010f4 stp      x29, x30, [sp, #-0x10]!
000010f8 mov      x29, sp
000010fc bl       #0x1110
00001100 adrp     x8, #0x13000
00001104 str      x0, [x8]
00001108 ldp      x29, x30, [sp], #0x10
0000110c ret      
00001110 b        #0x278c
00001114 stp      x20, x19, [sp, #-0x20]!
00001118 stp      x29, x30, [sp, #0x10]
0000111c add      x29, sp, #0x10
00001120 mov      x20, x0
00001124 bl       #0x139c
00001128 mov      x19, x0
0000112c tbnz     x19, #0x3f, #0x1140
00001130 adrp     x8, #0x13000
00001134 mov      x0, x20
00001138 ldr      x1, [x8, #0xa8]
0000113c bl       #0x1394
00001140 ldp      x29, x30, [sp, #0x10]
00001144 mov      x0, x19
00001148 ldp      x20, x19, [sp], #0x20
0000114c ret      
00001150 str      x21, [sp, #-0x30]!
00001154 stp      x20, x19, [sp, #0x10]
00001158 stp      x29, x30, [sp, #0x20]
0000115c add      x29, sp, #0x20
00001160 adrp     x8, #0xe000
00001164 mov      x19, x1
00001168 mov      x20, x0
0000116c ldr      w8, [x8, #0x288]
00001170 cbz      w8, #0x118c
00001174 ldr      w9, [x19, #8]
00001178 cmp      w9, w8
0000117c b.hs     #0x118c
00001180 mov      x21, #0x19
00001184 movk     x21, #0x8000, lsl #48
00001188 b        #0x1228
0000118c mov      x0, x20
00001190 mov      x1, x19
00001194 bl       #0x123c
00001198 adrp     x9, #0xe000
0000119c ldrb     w10, [x9, #0x28c]
000011a0 cbz      w10, #0x1208
000011a4 adrp     x10, #0x13000
000011a8 adrp     x1, #0x13000
000011ac add      x1, x1, #0x68
000011b0 ldr      x11, [x10, #0xb0]
000011b4 add      x2, sp, #8
000011b8 mov      x0, x20
000011bc ldr      x9, [x11, #0x98]
000011c0 blr      x9
000011c4 mov      x8, x0
000011c8 tbz      x8, #0x3f, #0x11f8
000011cc adrp     x1, #0xe000
000011d0 add      x1, x1, #0x210
000011d4 mov      w0, #-0xffffffff80000000
000011d8 mov      x2, x8
000011dc bl       #0x1ea4
000011e0 adrp     x0, #0xe000
000011e4 adrp     x2, #0xe000
000011e8 add      x0, x0, #0x231
000011ec add      x2, x2, #0x244
000011f0 mov      w1, #0x7e
000011f4 bl       #0x1fa8
000011f8 ldr      x12, [sp, #8]
000011fc adrp     x10, #0x1000
00001200 add      x10, x10, #0x114
00001204 str      x10, [x12, #0x58]
00001208 mov      x0, x20
0000120c mov      x1, x19
00001210 bl       #0x1398
00001214 mov      x21, x0
00001218 tbz      x21, #0x3f, #0x1228
0000121c mov      x0, x20
00001220 mov      x1, x19
00001224 bl       #0x1394
00001228 ldp      x29, x30, [sp, #0x20]
0000122c ldp      x20, x19, [sp, #0x10]
00001230 mov      x0, x21
00001234 ldr      x21, [sp], #0x30
00001238 ret      
0000123c stp      x20, x19, [sp, #-0x20]!
00001240 stp      x29, x30, [sp, #0x10]
00001244 add      x29, sp, #0x10
00001248 mov      x19, x1
0000124c mov      x20, x0
00001250 bl       #0x22f0
00001254 mov      x8, x0
00001258 tbz      x8, #0x3f, #0x1288
0000125c adrp     x1, #0xe000
00001260 add      x1, x1, #0x210
00001264 mov      w0, #-0xffffffff80000000
00001268 mov      x2, x8
0000126c bl       #0x1ea4
00001270 adrp     x0, #0xe000
00001274 adrp     x2, #0xe000
00001278 add      x0, x0, #0x268
0000127c mov      w1, #0x126
00001280 add      x2, x2, #0x244
00001284 bl       #0x1fa8
00001288 mov      x0, x20
0000128c mov      x1, x19
00001290 bl       #0x2380
00001294 mov      x9, x0
00001298 tbz      x9, #0x3f, #0x12c8
0000129c adrp     x1, #0xe000
000012a0 add      x1, x1, #0x210
000012a4 mov      w0, #-0xffffffff80000000
000012a8 mov      x2, x9
000012ac bl       #0x1ea4
000012b0 adrp     x0, #0xe000
000012b4 adrp     x2, #0xe000
000012b8 add      x0, x0, #0x268
000012bc mov      w1, #0x129
000012c0 add      x2, x2, #0x244
000012c4 bl       #0x1fa8
000012c8 mov      x0, x20
000012cc mov      x1, x19
000012d0 bl       #0x23c0
000012d4 mov      x10, x0
000012d8 tbz      x10, #0x3f, #0x1308
000012dc adrp     x1, #0xe000
000012e0 add      x1, x1, #0x210
000012e4 mov      w0, #-0xffffffff80000000
000012e8 mov      x2, x10
000012ec bl       #0x1ea4
000012f0 adrp     x0, #0xe000
000012f4 adrp     x2, #0xe000
000012f8 add      x0, x0, #0x268
000012fc mov      w1, #0x12c
00001300 add      x2, x2, #0x244
00001304 bl       #0x1fa8
00001308 mov      x0, x20
0000130c mov      x1, x19
00001310 bl       #0x2530
00001314 mov      x11, x0
00001318 tbz      x11, #0x3f, #0x1348
0000131c adrp     x1, #0xe000
00001320 add      x1, x1, #0x210
00001324 mov      w0, #-0xffffffff80000000
00001328 mov      x2, x11
0000132c bl       #0x1ea4
00001330 adrp     x0, #0xe000
00001334 adrp     x2, #0xe000
00001338 add      x0, x0, #0x268
0000133c mov      w1, #0x12f
00001340 add      x2, x2, #0x244
00001344 bl       #0x1fa8
00001348 bl       #0x261c
0000134c mov      x12, x0
00001350 tbnz     x12, #0x3f, #0x1360
00001354 ldp      x29, x30, [sp, #0x10]
00001358 ldp      x20, x19, [sp], #0x20
0000135c ret      
00001360 adrp     x1, #0xe000
00001364 add      x1, x1, #0x210
00001368 mov      w0, #-0xffffffff80000000
0000136c mov      x2, x12
00001370 bl       #0x1ea4
00001374 ldp      x29, x30, [sp, #0x10]
00001378 adrp     x0, #0xe000
0000137c adrp     x2, #0xe000
00001380 add      x0, x0, #0x268
00001384 mov      w1, #0x132
00001388 add      x2, x2, #0x244
0000138c ldp      x20, x19, [sp], #0x20
00001390 b        #0x1fa8
00001394 ret      
00001398 b        #0x1e8c
0000139c mov      x0, xzr
000013a0 ret      
000013a4 str      x27, [sp, #-0x60]!
000013a8 stp      x26, x25, [sp, #0x10]
000013ac stp      x24, x23, [sp, #0x20]
000013b0 stp      x22, x21, [sp, #0x30]
000013b4 stp      x20, x19, [sp, #0x40]
000013b8 stp      x29, x30, [sp, #0x50]
000013bc add      x29, sp, #0x50
000013c0 adrp     x20, #0x1000
000013c4 adrp     x1, #0xe000
000013c8 adrp     x2, #0xe000
000013cc add      x20, x20, #0xba0
000013d0 add      x1, x1, #0x28d
000013d4 add      x2, x2, #0x29e
000013d8 mov      w0, wzr
000013dc mov      x3, x20
000013e0 mov      x4, xzr
000013e4 mov      x5, xzr
000013e8 bl       #0x28fc
000013ec adrp     x19, #0x1000
000013f0 adrp     x21, #0xe000
000013f4 adrp     x1, #0xe000
000013f8 adrp     x2, #0xe000
000013fc add      x19, x19, #0xc30
00001400 add      x21, x21, #0x317
00001404 add      x1, x1, #0x2d4
00001408 add      x2, x2, #0x2dc
0000140c mov      w0, wzr
00001410 mov      x3, x19
00001414 mov      x4, xzr
00001418 mov      x5, x21
0000141c bl       #0x28fc
00001420 adrp     x1, #0xe000
00001424 adrp     x2, #0xe000
00001428 add      x1, x1, #0x32b
0000142c add      x2, x2, #0x336
00001430 mov      w0, wzr
00001434 mov      x3, x20
00001438 mov      x4, xzr
0000143c mov      x5, xzr
00001440 bl       #0x28fc
00001444 adrp     x24, #0xe000
00001448 adrp     x1, #0xe000
0000144c adrp     x2, #0xe000
00001450 add      x24, x24, #0x3f7
00001454 add      x1, x1, #0x3ab
00001458 add      x2, x2, #0x3bc
0000145c mov      w0, wzr
00001460 mov      x3, x19
00001464 mov      x4, xzr
00001468 mov      x5, x24
0000146c bl       #0x28fc
00001470 adrp     x1, #0xe000
00001474 adrp     x2, #0xe000
00001478 adrp     x5, #0xe000
0000147c add      x1, x1, #0x40c
00001480 add      x2, x2, #0x414
00001484 add      x5, x5, #0x445
00001488 mov      w0, wzr
0000148c mov      x3, x19
00001490 mov      x4, xzr
00001494 bl       #0x28fc
00001498 adrp     x1, #0xe000
0000149c adrp     x2, #0xe000
000014a0 adrp     x5, #0xe000
000014a4 add      x1, x1, #0x457
000014a8 add      x2, x2, #0x45e
000014ac add      x5, x5, #0x4ad
000014b0 mov      w0, wzr
000014b4 mov      x3, x19
000014b8 mov      x4, xzr
000014bc bl       #0x28fc
000014c0 adrp     x22, #0x1000
000014c4 adrp     x25, #0xe000
000014c8 adrp     x1, #0xe000
000014cc adrp     x2, #0xe000
000014d0 add      x22, x22, #0xca0
000014d4 add      x25, x25, #0x4f5
000014d8 add      x1, x1, #0x4c1
000014dc add      x2, x2, #0x4d0
000014e0 mov      w0, wzr
000014e4 mov      x3, x22
000014e8 mov      x4, xzr
000014ec mov      x5, x25
000014f0 bl       #0x28fc
000014f4 adrp     x1, #0xe000
000014f8 adrp     x2, #0xe000
000014fc add      x1, x1, #0x4fb
00001500 add      x2, x2, #0x50c
00001504 mov      w0, wzr
00001508 mov      x3, x19
0000150c mov      x4, xzr
00001510 mov      x5, x24
00001514 bl       #0x28fc
00001518 adrp     x1, #0xe000
0000151c adrp     x2, #0xe000
00001520 adrp     x5, #0xe000
00001524 add      x1, x1, #0x53f
00001528 add      x2, x2, #0x548
0000152c add      x5, x5, #0x5ad
00001530 mov      w0, wzr
00001534 mov      x3, x19
00001538 mov      x4, xzr
0000153c bl       #0x28fc
00001540 adrp     x1, #0xe000
00001544 adrp     x2, #0xe000
00001548 adrp     x5, #0xe000
0000154c add      x1, x1, #0x5e0
00001550 add      x2, x2, #0x5e7
00001554 add      x5, x5, #0x5fe
00001558 mov      w0, wzr
0000155c mov      x3, x19
00001560 mov      x4, xzr
00001564 bl       #0x28fc
00001568 adrp     x1, #0xe000
0000156c adrp     x2, #0xe000
00001570 add      x1, x1, #0x625
00001574 add      x2, x2, #0x63a
00001578 mov      w0, wzr
0000157c mov      x3, x19
00001580 mov      x4, xzr
00001584 mov      x5, x24
00001588 bl       #0x28fc
0000158c adrp     x1, #0xe000
00001590 adrp     x2, #0xe000
00001594 adrp     x5, #0xe000
00001598 add      x1, x1, #0x67a
0000159c add      x2, x2, #0x685
000015a0 add      x5, x5, #0x702
000015a4 mov      w0, wzr
000015a8 mov      x3, x19
000015ac mov      x4, xzr
000015b0 bl       #0x28fc
000015b4 adrp     x1, #0xe000
000015b8 adrp     x2, #0xe000
000015bc add      x1, x1, #0x716
000015c0 add      x2, x2, #0x72c
000015c4 mov      w0, wzr
000015c8 mov      x3, x19
000015cc mov      x4, xzr
000015d0 mov      x5, x24
000015d4 bl       #0x28fc
000015d8 adrp     x1, #0xe000
000015dc adrp     x2, #0xe000
000015e0 add      x1, x1, #0x764
000015e4 add      x2, x2, #0x76c
000015e8 mov      w0, wzr
000015ec mov      x3, x19
000015f0 mov      x4, xzr
000015f4 mov      x5, x21
000015f8 bl       #0x28fc
000015fc adrp     x23, #0xe000
00001600 adrp     x1, #0xe000
00001604 adrp     x2, #0xe000
00001608 add      x23, x23, #0x7fe
0000160c add      x1, x1, #0x792
00001610 add      x2, x2, #0x79e
00001614 mov      w0, wzr
00001618 mov      x3, x19
0000161c mov      x4, xzr
00001620 mov      x5, x23
00001624 bl       #0x28fc
00001628 adrp     x1, #0xe000
0000162c adrp     x2, #0xe000
00001630 add      x1, x1, #0x813
00001634 add      x2, x2, #0x823
00001638 mov      w0, wzr
0000163c mov      x3, x20
00001640 mov      x4, xzr
00001644 mov      x5, xzr
00001648 bl       #0x28fc
0000164c adrp     x1, #0xe000
00001650 adrp     x2, #0xe000
00001654 add      x1, x1, #0x846
00001658 add      x2, x2, #0x84b
0000165c mov      w0, wzr
00001660 mov      x3, x19
00001664 mov      x4, xzr
00001668 mov      x5, x24
0000166c bl       #0x28fc
00001670 adrp     x1, #0xe000
00001674 adrp     x2, #0xe000
00001678 adrp     x3, #0x1000
0000167c add      x1, x1, #0x8a6
00001680 add      x2, x2, #0x8ae
00001684 add      x3, x3, #0xda8
00001688 mov      w0, wzr
0000168c mov      x4, xzr
00001690 mov      x5, xzr
00001694 bl       #0x28fc
00001698 adrp     x1, #0xe000
0000169c adrp     x2, #0xe000
000016a0 add      x1, x1, #0x972
000016a4 add      x2, x2, #0x97e
000016a8 mov      w0, wzr
000016ac mov      x3, x20
000016b0 mov      x4, xzr
000016b4 mov      x5, xzr
000016b8 bl       #0x28fc
000016bc adrp     x26, #0xe000
000016c0 adrp     x1, #0xe000
000016c4 adrp     x2, #0xe000
000016c8 add      x26, x26, #0xa4a
000016cc add      x1, x1, #0xa0d
000016d0 add      x2, x2, #0xa16
000016d4 mov      w0, wzr
000016d8 mov      x3, x19
000016dc mov      x4, xzr
000016e0 mov      x5, x26
000016e4 bl       #0x28fc
000016e8 adrp     x1, #0xe000
000016ec adrp     x2, #0xe000
000016f0 add      x1, x1, #0xa5d
000016f4 add      x2, x2, #0xa6a
000016f8 mov      w0, wzr
000016fc mov      x3, x20
00001700 mov      x4, xzr
00001704 mov      x5, xzr
00001708 bl       #0x28fc
0000170c adrp     x1, #0xe000
00001710 adrp     x2, #0xe000
00001714 adrp     x5, #0xe000
00001718 add      x1, x1, #0xab5
0000171c add      x2, x2, #0xaba
00001720 add      x5, x5, #0xaee
00001724 mov      w0, wzr
00001728 mov      x3, x19
0000172c mov      x4, xzr
00001730 bl       #0x28fc
00001734 adrp     x1, #0xe000
00001738 adrp     x2, #0xe000
0000173c add      x1, x1, #0xb1d
00001740 add      x2, x2, #0xb2b
00001744 mov      w0, wzr
00001748 mov      x3, x20
0000174c mov      x4, xzr
00001750 mov      x5, xzr
00001754 bl       #0x28fc
00001758 adrp     x1, #0xe000
0000175c adrp     x2, #0xe000
00001760 adrp     x5, #0xe000
00001764 add      x1, x1, #0xbce
00001768 add      x2, x2, #0xbd6
0000176c add      x5, x5, #0xc5a
00001770 mov      w0, wzr
00001774 mov      x3, x19
00001778 mov      x4, xzr
0000177c bl       #0x28fc
00001780 adrp     x1, #0xe000
00001784 adrp     x2, #0xe000
00001788 adrp     x5, #0xe000
0000178c add      x1, x1, #0xc74
00001790 add      x2, x2, #0xc84
00001794 add      x5, x5, #0xcde
00001798 mov      w0, wzr
0000179c mov      x3, x19
000017a0 mov      x4, xzr
000017a4 bl       #0x28fc
000017a8 adrp     x1, #0xe000
000017ac adrp     x2, #0xe000
000017b0 add      x1, x1, #0xcf5
000017b4 add      x2, x2, #0xd05
000017b8 mov      w0, wzr
000017bc mov      x3, x20
000017c0 mov      x4, xzr
000017c4 mov      x5, xzr
000017c8 bl       #0x28fc
000017cc adrp     x1, #0xe000
000017d0 adrp     x2, #0xe000
000017d4 add      x1, x1, #0xd45
000017d8 add      x2, x2, #0xd49
000017dc mov      w0, wzr
000017e0 mov      x3, x20
000017e4 mov      x4, xzr
000017e8 mov      x5, xzr
000017ec bl       #0x28fc
000017f0 adrp     x1, #0xe000
000017f4 adrp     x2, #0xe000
000017f8 adrp     x5, #0xe000
000017fc add      x1, x1, #0xdef
00001800 add      x2, x2, #0xe04
00001804 add      x5, x5, #0xea8
00001808 mov      w0, wzr
0000180c mov      x3, x19
00001810 mov      x4, xzr
00001814 bl       #0x28fc
00001818 adrp     x1, #0xe000
0000181c adrp     x2, #0xe000
00001820 adrp     x5, #0xe000
00001824 add      x1, x1, #0xebc
00001828 add      x2, x2, #0xec3
0000182c add      x5, x5, #0xee4
00001830 mov      w0, wzr
00001834 mov      x3, x19
00001838 mov      x4, xzr
0000183c bl       #0x28fc
00001840 adrp     x1, #0xe000
00001844 adrp     x2, #0xe000
00001848 add      x1, x1, #0xef9
0000184c add      x2, x2, #0xefd
00001850 mov      w0, wzr
00001854 mov      x3, xzr
00001858 mov      x4, xzr
0000185c mov      x5, xzr
00001860 bl       #0x28fc
00001864 adrp     x1, #0xe000
00001868 adrp     x2, #0xe000
0000186c add      x1, x1, #0xf58
00001870 add      x2, x2, #0xf5e
00001874 mov      w0, wzr
00001878 mov      x3, x19
0000187c mov      x4, xzr
00001880 mov      x5, x21
00001884 bl       #0x28fc
00001888 adrp     x27, #0x1000
0000188c adrp     x1, #0xe000
00001890 adrp     x2, #0xe000
00001894 add      x27, x27, #0xe08
00001898 add      x1, x1, #0xf6b
0000189c add      x2, x2, #0xf70
000018a0 mov      w0, wzr
000018a4 mov      x3, x27
000018a8 mov      x4, xzr
000018ac mov      x5, xzr
000018b0 bl       #0x28fc
000018b4 adrp     x1, #0xe000
000018b8 adrp     x2, #0xe000
000018bc add      x1, x1, #0xfaf
000018c0 add      x2, x2, #0xfb5
000018c4 mov      w0, wzr
000018c8 mov      x3, x27
000018cc mov      x4, xzr
000018d0 mov      x5, xzr
000018d4 bl       #0x28fc
000018d8 adrp     x1, #0xe000
000018dc adrp     x2, #0xf000
000018e0 add      x1, x1, #0xff5
000018e4 add      x2, x2, #4
000018e8 mov      w0, wzr
000018ec mov      x3, x19
000018f0 mov      x4, xzr
000018f4 mov      x5, x24
000018f8 bl       #0x28fc
000018fc adrp     x1, #0xf000
00001900 adrp     x2, #0xf000
00001904 add      x1, x1, #0x3f
00001908 add      x2, x2, #0x50
0000190c mov      w0, wzr
00001910 mov      x3, x22
00001914 mov      x4, xzr
00001918 mov      x5, x25
0000191c bl       #0x28fc
00001920 adrp     x24, #0xf000
00001924 adrp     x1, #0xf000
00001928 adrp     x2, #0xf000
0000192c add      x24, x24, #0x173
00001930 add      x1, x1, #0x74
00001934 add      x2, x2, #0x81
00001938 mov      w0, wzr
0000193c mov      x3, x19
00001940 mov      x4, xzr
00001944 mov      x5, x24
00001948 bl       #0x28fc
0000194c adrp     x1, #0xf000
00001950 adrp     x2, #0xf000
00001954 add      x1, x1, #0x17d
00001958 add      x2, x2, #0x18b
0000195c mov      w0, wzr
00001960 mov      x3, x19
00001964 mov      x4, xzr
00001968 mov      x5, x24
0000196c bl       #0x28fc
00001970 adrp     x1, #0xf000
00001974 adrp     x2, #0xf000
00001978 add      x1, x1, #0x244
0000197c add      x2, x2, #0x250
00001980 mov      w0, wzr
00001984 mov      x3, x19
00001988 mov      x4, xzr
0000198c mov      x5, x24
00001990 bl       #0x28fc
00001994 adrp     x1, #0xf000
00001998 adrp     x2, #0xf000
0000199c add      x1, x1, #0x307
000019a0 add      x2, x2, #0x311
000019a4 mov      w0, wzr
000019a8 mov      x3, x19
000019ac mov      x4, xzr
000019b0 mov      x5, x26
000019b4 bl       #0x28fc
000019b8 adrp     x1, #0xf000
000019bc adrp     x2, #0xf000
000019c0 adrp     x5, #0xf000
000019c4 add      x1, x1, #0x32e
000019c8 add      x2, x2, #0x333
000019cc add      x5, x5, #0x365
000019d0 mov      w0, wzr
000019d4 mov      x3, x19
000019d8 mov      x4, xzr
000019dc bl       #0x28fc
000019e0 adrp     x25, #0xf000
000019e4 adrp     x1, #0xf000
000019e8 adrp     x2, #0xf000
000019ec add      x25, x25, #0x3e5
000019f0 add      x1, x1, #0x38a
000019f4 add      x2, x2, #0x399
000019f8 mov      w0, wzr
000019fc mov      x3, x19
00001a00 mov      x4, xzr
00001a04 mov      x5, x25
00001a08 bl       #0x28fc
00001a0c adrp     x1, #0xf000
00001a10 adrp     x2, #0xf000
00001a14 add      x1, x1, #0x3f8
00001a18 add      x2, x2, #0x407
00001a1c mov      w0, wzr
00001a20 mov      x3, x19
00001a24 mov      x4, xzr
00001a28 mov      x5, x25
00001a2c bl       #0x28fc
00001a30 adrp     x1, #0xf000
00001a34 adrp     x2, #0xf000
00001a38 adrp     x5, #0xf000
00001a3c add      x1, x1, #0x43d
00001a40 add      x2, x2, #0x44a
00001a44 add      x5, x5, #0x46b
00001a48 mov      w0, wzr
00001a4c mov      x3, x19
00001a50 mov      x4, xzr
00001a54 bl       #0x28fc
00001a58 adrp     x1, #0xf000
00001a5c adrp     x2, #0xf000
00001a60 adrp     x5, #0xf000
00001a64 add      x1, x1, #0x472
00001a68 add      x2, x2, #0x47b
00001a6c add      x5, x5, #0x4a9
00001a70 mov      w0, wzr
00001a74 mov      x3, x19
00001a78 mov      x4, xzr
00001a7c bl       #0x28fc
00001a80 adrp     x1, #0xf000
00001a84 adrp     x2, #0xf000
00001a88 add      x1, x1, #0x4b2
00001a8c add      x2, x2, #0x4bd
00001a90 mov      w0, wzr
00001a94 mov      x3, x19
00001a98 mov      x4, xzr
00001a9c mov      x5, x21
00001aa0 bl       #0x28fc
00001aa4 adrp     x1, #0xf000
00001aa8 adrp     x2, #0xf000
00001aac add      x1, x1, #0x506
00001ab0 add      x2, x2, #0x50f
00001ab4 mov      w0, wzr
00001ab8 mov      x3, x19
00001abc mov      x4, xzr
00001ac0 mov      x5, x21
00001ac4 bl       #0x28fc
00001ac8 adrp     x1, #0xf000
00001acc adrp     x2, #0xf000
00001ad0 add      x1, x1, #0x549
00001ad4 add      x2, x2, #0x555
00001ad8 mov      w0, wzr
00001adc mov      x3, x20
00001ae0 mov      x4, xzr
00001ae4 mov      x5, xzr
00001ae8 bl       #0x28fc
00001aec adrp     x1, #0xf000
00001af0 adrp     x2, #0xf000
00001af4 add      x1, x1, #0x5ff
00001af8 add      x2, x2, #0x603
00001afc mov      w0, wzr
00001b00 mov      x3, x19
00001b04 mov      x4, xzr
00001b08 mov      x5, x23
00001b0c bl       #0x28fc
00001b10 adrp     x1, #0xf000
00001b14 adrp     x2, #0xf000
00001b18 adrp     x5, #0xf000
00001b1c add      x1, x1, #0x657
00001b20 add      x2, x2, #0x662
00001b24 add      x5, x5, #0x6c4
00001b28 mov      w0, wzr
00001b2c mov      x3, x22
00001b30 mov      x4, xzr
00001b34 bl       #0x28fc
00001b38 adrp     x1, #0xf000
00001b3c adrp     x2, #0xf000
00001b40 adrp     x5, #0xf000
00001b44 add      x1, x1, #0x6cb
00001b48 add      x2, x2, #0x6d7
00001b4c add      x5, x5, #0x723
00001b50 mov      w0, wzr
00001b54 mov      x3, x22
00001b58 mov      x4, xzr
00001b5c bl       #0x28fc
00001b60 mov      x3, x19
00001b64 ldp      x29, x30, [sp, #0x50]
00001b68 ldp      x20, x19, [sp, #0x40]
00001b6c ldp      x22, x21, [sp, #0x30]
00001b70 ldp      x24, x23, [sp, #0x20]
00001b74 ldp      x26, x25, [sp, #0x10]
00001b78 adrp     x1, #0xf000
00001b7c adrp     x2, #0xf000
00001b80 adrp     x5, #0xf000
00001b84 add      x1, x1, #0x729
00001b88 add      x2, x2, #0x732
00001b8c add      x5, x5, #0x748
00001b90 mov      w0, wzr
00001b94 mov      x4, xzr
00001b98 ldr      x27, [sp], #0x60
00001b9c b        #0x28fc
00001ba0 stp      x20, x19, [sp, #-0x20]!
00001ba4 stp      x29, x30, [sp, #0x10]
00001ba8 add      x29, sp, #0x10
00001bac mov      x20, x2
00001bb0 mov      x19, x0
00001bb4 cbz      x19, #0x1bf0
00001bb8 cbz      x1, #0x1bf0
00001bbc mov      w1, #0x3a
00001bc0 mov      x0, x19
00001bc4 bl       #0xb8c4
00001bc8 cbz      x0, #0x1bf4
00001bcc adrp     x1, #0xf000
00001bd0 add      x0, x0, #1
00001bd4 add      x1, x1, #0x79d
00001bd8 bl       #0xbba8
00001bdc cmp      x20, #1
00001be0 b.ne     #0x1bf4
00001be4 cbnz     w0, #0x1bf4
00001be8 mov      w0, #1
00001bec b        #0x1c24
00001bf0 cbz      x19, #0x1c20
00001bf4 bl       #0x22d4
00001bf8 adrp     x1, #0xf000
00001bfc mov      x2, x0
00001c00 add      x1, x1, #0x7a2
00001c04 mov      w0, #-0xffffffff80000000
00001c08 bl       #0x1ea4
00001c0c adrp     x1, #0xf000
00001c10 add      x1, x1, #0x7a9
00001c14 mov      w0, #-0xffffffff80000000
00001c18 mov      x2, x19
00001c1c bl       #0x1ea4
00001c20 mov      w0, wzr
00001c24 ldp      x29, x30, [sp, #0x10]
00001c28 ldp      x20, x19, [sp], #0x20
00001c2c ret      
00001c30 str      x21, [sp, #-0x30]!
00001c34 stp      x20, x19, [sp, #0x10]
00001c38 stp      x29, x30, [sp, #0x20]
00001c3c add      x29, sp, #0x20
00001c40 mov      x19, x3
00001c44 mov      x21, x2
00001c48 mov      x20, x1
00001c4c mov      w0, wzr
00001c50 cbz      x21, #0x1c90
00001c54 cbz      x19, #0x1c90
00001c58 add      x8, x20, x21
00001c5c ldurb    w8, [x8, #-1]
00001c60 cbnz     w8, #0x1c78
00001c64 mov      x0, x20
00001c68 mov      x1, x21
00001c6c bl       #0xb9a4
00001c70 cmp      x0, x21
00001c74 b.ne     #0x1c80
00001c78 mov      w0, wzr
00001c7c b        #0x1c90
00001c80 mov      x0, x19
00001c84 mov      x1, x20
00001c88 bl       #0x2964
00001c8c and      w0, w0, #1
00001c90 ldp      x29, x30, [sp, #0x20]
00001c94 ldp      x20, x19, [sp, #0x10]
00001c98 ldr      x21, [sp], #0x30
00001c9c ret      
00001ca0 stp      x22, x21, [sp, #-0x30]!
00001ca4 stp      x20, x19, [sp, #0x10]
00001ca8 stp      x29, x30, [sp, #0x20]
00001cac add      x29, sp, #0x20
00001cb0 mov      x22, x3
00001cb4 mov      x19, x0
00001cb8 mov      x20, x2
00001cbc cbz      x19, #0x1d64
00001cc0 cbz      x1, #0x1d64
00001cc4 cbz      x22, #0x1d64
00001cc8 mov      w1, #0x3a
00001ccc mov      x0, x19
00001cd0 bl       #0xb8c4
00001cd4 cbz      x0, #0x1d68
00001cd8 add      x21, x0, #1
00001cdc mov      x0, x21
00001ce0 mov      x1, x22
00001ce4 bl       #0xbba8
00001ce8 cbnz     w0, #0x1d68
00001cec adrp     x1, #0xf000
00001cf0 add      x1, x1, #0x7c8
00001cf4 mov      x0, x21
00001cf8 bl       #0xbba8
00001cfc cmp      x20, #8
00001d00 b.ne     #0x1d08
00001d04 cbz      w0, #0x1d5c
00001d08 adrp     x1, #0xe000
00001d0c add      x1, x1, #0x4f5
00001d10 mov      x0, x21
00001d14 bl       #0xbba8
00001d18 cmp      x20, #8
00001d1c b.ne     #0x1d24
00001d20 cbz      w0, #0x1d5c
00001d24 adrp     x1, #0xf000
00001d28 add      x1, x1, #0x723
00001d2c mov      x0, x21
00001d30 bl       #0xbba8
00001d34 cmp      x20, #8
00001d38 b.ne     #0x1d40
00001d3c cbz      w0, #0x1d5c
00001d40 adrp     x1, #0xf000
00001d44 add      x1, x1, #0x6c4
00001d48 mov      x0, x21
00001d4c bl       #0xbba8
00001d50 cmp      x20, #8
00001d54 b.ne     #0x1d68
00001d58 cbnz     w0, #0x1d68
00001d5c mov      w0, #1
00001d60 b        #0x1d98
00001d64 cbz      x19, #0x1d94
00001d68 bl       #0x22d4
00001d6c adrp     x1, #0xf000
00001d70 mov      x2, x0
00001d74 add      x1, x1, #0x7a2
00001d78 mov      w0, #-0xffffffff80000000
00001d7c bl       #0x1ea4
00001d80 adrp     x1, #0xf000
00001d84 add      x1, x1, #0x7a9
00001d88 mov      w0, #-0xffffffff80000000
00001d8c mov      x2, x19
00001d90 bl       #0x1ea4
00001d94 mov      w0, wzr
00001d98 ldp      x29, x30, [sp, #0x20]
00001d9c ldp      x20, x19, [sp, #0x10]
00001da0 ldp      x22, x21, [sp], #0x30
00001da4 ret      
00001da8 str      x21, [sp, #-0x30]!
00001dac stp      x20, x19, [sp, #0x10]
00001db0 stp      x29, x30, [sp, #0x20]
00001db4 add      x29, sp, #0x20
00001db8 mov      x19, x2
00001dbc mov      x20, x1
00001dc0 mov      x21, x0
00001dc4 bl       #0x1ba0
00001dc8 and      w8, w0, #0xff
00001dcc cbz      w8, #0x1de4
00001dd0 ldp      x29, x30, [sp, #0x20]
00001dd4 ldp      x20, x19, [sp, #0x10]
00001dd8 mov      w0, #1
00001ddc ldr      x21, [sp], #0x30
00001de0 ret      
00001de4 mov      x1, x20
00001de8 mov      x2, x19
00001dec ldp      x29, x30, [sp, #0x20]
00001df0 ldp      x20, x19, [sp, #0x10]
00001df4 adrp     x3, #0xf000
00001df8 add      x3, x3, #0x7cd
00001dfc mov      x0, x21
00001e00 ldr      x21, [sp], #0x30
00001e04 b        #0x1c30
00001e08 cmp      x2, #0x10
00001e0c b.ne     #0x1e78
00001e10 mov      x9, xzr
00001e14 mov      w8, wzr
00001e18 mov      w11, #5
00001e1c mov      w10, #0xa
00001e20 b        #0x1e5c
00001e24 ldrb     w13, [x1], #1
00001e28 sub      w12, w13, #0x30
00001e2c cmp      w12, #9
00001e30 b.hi     #0x1e84
00001e34 lsl      w13, w12, #1
00001e38 sdiv     w14, w13, w10
00001e3c add      w15, w12, w8
00001e40 udiv     w12, w12, w11
00001e44 tst      w9, #1
00001e48 add      x9, x9, #1
00001e4c msub     w16, w14, w10, w13
00001e50 add      w17, w12, w8
00001e54 add      w2, w17, w16
00001e58 csel     w8, w15, w2, eq
00001e5c cmp      x9, #0xe
00001e60 b.le     #0x1e24
00001e64 sdiv     w9, w8, w10
00001e68 msub     w8, w9, w10, w8
00001e6c cmp      w8, #0
00001e70 cset     w0, eq
00001e74 ret      
00001e78 adrp     x3, #0xf000
00001e7c add      x3, x3, #0x365
00001e80 b        #0x1c30
00001e84 mov      w0, wzr
00001e88 ret      
00001e8c stp      x29, x30, [sp, #-0x10]!
00001e90 mov      x29, sp
00001e94 bl       #0x13a4
00001e98 mov      x0, xzr
00001e9c ldp      x29, x30, [sp], #0x10
00001ea0 ret      
00001ea4 stp      x28, x19, [sp, #-0x20]!
00001ea8 stp      x29, x30, [sp, #0x10]
00001eac add      x29, sp, #0x10
00001eb0 sub      sp, sp, #0x300
00001eb4 adrp     x9, #0x13000
00001eb8 stp      q6, q7, [sp, #0x60]
00001ebc mov      x8, x1
00001ec0 stp      q4, q5, [sp, #0x40]
00001ec4 mov      x19, x0
00001ec8 stp      q2, q3, [sp, #0x20]
00001ecc ldr      x9, [x9]
00001ed0 stp      q0, q1, [sp]
00001ed4 stp      x6, x7, [sp, #0xa8]
00001ed8 stp      x4, x5, [sp, #0x98]
00001edc stp      x2, x3, [sp, #0x88]
00001ee0 stur     x9, [x29, #-0x18]
00001ee4 cbz      x8, #0x1f88
00001ee8 adrp     x10, #0xe000
00001eec ldr      w9, [x10, #0x280]
00001ef0 and      x10, x9, x19
00001ef4 cbz      x10, #0x1f64
00001ef8 mov      w9, #-0x80
00001efc mov      w10, #-0x30
00001f00 add      x11, x29, #0x10
00001f04 add      x0, sp, #0xf8
00001f08 stp      w10, w9, [sp, #0xf0]
00001f0c add      x10, sp, #0x88
00001f10 add      x13, x10, #0x30
00001f14 str      x11, [sp, #0xd8]
00001f18 mov      x9, sp
00001f1c add      x12, x9, #0x80
00001f20 stp      x11, x13, [sp, #0xb8]
00001f24 mov      w1, #0x200
00001f28 ldr      x11, [sp, #0xf0]
00001f2c add      x3, sp, #0xb8
00001f30 mov      x2, x8
00001f34 stp      x13, x12, [sp, #0xe0]
00001f38 stp      x12, x11, [sp, #0xc8]
00001f3c bl       #0xc7b4
00001f40 mov      w12, #0x442
00001f44 movk     w12, #0x8000, lsl #16
00001f48 and      x13, x19, x12
00001f4c cbz      x13, #0x1f64
00001f50 add      x0, sp, #0xf8
00001f54 bl       #0x2090
00001f58 mov      x1, x0
00001f5c add      x0, sp, #0xf8
00001f60 bl       #0xc508
00001f64 adrp     x8, #0x13000
00001f68 ldur     x14, [x29, #-0x18]
00001f6c ldr      x8, [x8]
00001f70 sub      x15, x8, x14
00001f74 cbnz     x15, #0x1fa4
00001f78 add      sp, sp, #0x300
00001f7c ldp      x29, x30, [sp, #0x10]
00001f80 ldp      x28, x19, [sp], #0x20
00001f84 ret      
00001f88 adrp     x0, #0xf000
00001f8c adrp     x2, #0xf000
00001f90 add      x0, x0, #0x7e5
00001f94 mov      w1, #0x4f
00001f98 add      x2, x2, #0x7f0
00001f9c bl       #0x1fa8
00001fa0 b        #0x1fa0
00001fa4 bl       #0x10d8
00001fa8 stp      x28, x21, [sp, #-0x30]!
00001fac stp      x20, x19, [sp, #0x10]
00001fb0 stp      x29, x30, [sp, #0x20]
00001fb4 add      x29, sp, #0x20
00001fb8 sub      sp, sp, #0x210
00001fbc adrp     x8, #0x13000
00001fc0 mov      x19, x2
00001fc4 mov      x20, x1
00001fc8 ldr      x8, [x8]
00001fcc mov      x21, x0
00001fd0 stur     x8, [x29, #-0x28]
00001fd4 bl       #0xc484
00001fd8 bl       #0xc494
00001fdc and      w8, w0, #0xff
00001fe0 cbz      w8, #0x1ffc
00001fe4 mov      w0, #2
00001fe8 mov      w1, #7
00001fec movk     w0, #0x9000, lsl #16
00001ff0 movk     w1, #0x300, lsl #16
00001ff4 bl       #0xc4b4
00001ff8 b        #0x2000
00001ffc bl       #0xc4a4
00002000 bl       #0xc5c8
00002004 bl       #0xc60c
00002008 adrp     x2, #0xf000
0000200c add      x2, x2, #0x807
00002010 add      x0, sp, #8
00002014 mov      w1, #0x200
00002018 mov      x3, x21
0000201c mov      x4, x20
00002020 mov      x5, x19
00002024 bl       #0xc7f4
00002028 add      x0, sp, #8
0000202c bl       #0x2090
00002030 mov      x1, x0
00002034 add      x0, sp, #8
00002038 bl       #0xc508
0000203c bl       #0xc5c8
00002040 adrp     x0, #0xf000
00002044 add      x0, x0, #0x81a
00002048 mov      w1, #1
0000204c bl       #0xc508
00002050 bl       #0xc5c8
00002054 adrp     x9, #0xe000
00002058 mov      w1, wzr
0000205c ldr      w0, [x9, #0x27c]
00002060 bl       #0xc618
00002064 adrp     x10, #0x13000
00002068 ldur     x8, [x29, #-0x28]
0000206c ldr      x10, [x10]
00002070 sub      x9, x10, x8
00002074 cbnz     x9, #0x208c
00002078 add      sp, sp, #0x210
0000207c ldp      x29, x30, [sp, #0x20]
00002080 ldp      x20, x19, [sp, #0x10]
00002084 ldp      x28, x21, [sp], #0x30
00002088 ret      
0000208c bl       #0x10d8
00002090 stp      x29, x30, [sp, #-0x10]!
00002094 mov      x29, sp
00002098 cbz      x0, #0x20d4
0000209c adrp     x9, #0xe000
000020a0 mov      x8, xzr
000020a4 ldr      w9, [x9, #0x274]
000020a8 b        #0x20c0
000020ac cbz      w9, #0x20b8
000020b0 cmp      x8, x9
000020b4 b.hs     #0x20f0
000020b8 add      x0, x0, #1
000020bc add      x8, x8, #1
000020c0 ldrb     w10, [x0]
000020c4 cbnz     w10, #0x20ac
000020c8 mov      x0, x8
000020cc ldp      x29, x30, [sp], #0x10
000020d0 ret      
000020d4 adrp     x0, #0xf000
000020d8 adrp     x2, #0xf000
000020dc add      x0, x0, #0x833
000020e0 mov      w1, #0x43a
000020e4 add      x2, x2, #0x943
000020e8 bl       #0x1fa8
000020ec b        #0x20ec
000020f0 adrp     x0, #0xf000
000020f4 adrp     x2, #0xf000
000020f8 add      x0, x0, #0x833
000020fc mov      w1, #0x442
00002100 add      x2, x2, #0xb9c
00002104 bl       #0x1fa8
00002108 b        #0x2108
0000210c mov      x8, x0
00002110 tbnz     w8, #0, #0x2144
00002114 mov      x0, xzr
00002118 cbz      x8, #0x2140
0000211c cbz      x1, #0x2140
00002120 mov      x0, xzr
00002124 sub      x9, x1, #1
00002128 b        #0x2138
0000212c cmp      x0, x9
00002130 b.hs     #0x216c
00002134 add      x0, x0, #1
00002138 ldrh     w10, [x8], #2
0000213c cbnz     w10, #0x212c
00002140 ret      
00002144 stp      x29, x30, [sp, #-0x10]!
00002148 mov      x29, sp
0000214c adrp     x0, #0xf000
00002150 adrp     x2, #0xf000
00002154 add      x0, x0, #0xd60
00002158 add      x2, x2, #0x95a
0000215c mov      w1, #0x80
00002160 bl       #0x1fa8
00002164 ldp      x29, x30, [sp], #0x10
00002168 b        #0x2168
0000216c mov      x0, x1
00002170 ret      
00002174 mov      x8, x0
00002178 mov      x0, xzr
0000217c cbz      x8, #0x21a4
00002180 cbz      x1, #0x21a4
00002184 mov      x0, xzr
00002188 sub      x9, x1, #1
0000218c b        #0x219c
00002190 cmp      x0, x9
00002194 b.hs     #0x21a8
00002198 add      x0, x0, #1
0000219c ldrb     w10, [x8], #1
000021a0 cbnz     w10, #0x2190
000021a4 ret      
000021a8 mov      x0, x1
000021ac ret      
000021b0 cbz      w1, #0x21b8
000021b4 b        #0x21e0
000021b8 stp      x29, x30, [sp, #-0x10]!
000021bc mov      x29, sp
000021c0 adrp     x0, #0x10000
000021c4 adrp     x2, #0x10000
000021c8 add      x0, x0, #0x2af
000021cc mov      w1, #0x2b
000021d0 add      x2, x2, #0x2bb
000021d4 bl       #0x1fa8
000021d8 ldp      x29, x30, [sp], #0x10
000021dc b        #0x21dc
000021e0 mov      w8, w1
000021e4 udiv     x0, x0, x8
000021e8 ret      
000021ec cbz      x2, #0x2204
000021f0 mov      w8, w1
000021f4 udiv     x9, x0, x8
000021f8 mul      w10, w9, w1
000021fc sub      x11, x0, x10
00002200 str      w11, [x2]
00002204 mov      w12, w1
00002208 udiv     x0, x0, x12
0000220c ret      
00002210 sub      sp, sp, #0x40
00002214 str      x21, [sp, #0x10]
00002218 stp      x20, x19, [sp, #0x20]
0000221c stp      x29, x30, [sp, #0x30]
00002220 add      x29, sp, #0x30
00002224 mov      x20, x1
00002228 mov      x19, x0
0000222c ldr      w1, [x20]
00002230 cbz      w1, #0x2240
00002234 mov      x0, x19
00002238 bl       #0x21b0
0000223c b        #0x22c0
00002240 add      x0, sp, #0x18
00002244 add      x1, sp, #8
00002248 bl       #0x26c4
0000224c mov      x9, #-0x4241
00002250 movk     x9, #0xfff0, lsl #16
00002254 mov      w11, #0xbdbe
00002258 add      x10, x0, x9
0000225c movk     w11, #0xfff0, lsl #16
00002260 cmp      x10, x11
00002264 b.hi     #0x22bc
00002268 ldr      x12, [sp, #0x18]
0000226c ldr      x13, [sp, #8]
00002270 cmp      x12, x13
00002274 b.hs     #0x22bc
00002278 adrp     x21, #0x13000
0000227c and      x8, x0, #0xffffffff
00002280 mov      w1, #0x4240
00002284 str      w0, [x21, #0x90]
00002288 movk     w1, #0xf, lsl #16
0000228c mov      x0, x8
00002290 bl       #0x21b0
00002294 ldr      w8, [x21, #0x90]
00002298 adrp     x9, #0x13000
0000229c mov      w1, #0x3e8
000022a0 str      w0, [x9, #0x94]
000022a4 mov      x0, x8
000022a8 bl       #0x21b0
000022ac adrp     x8, #0x13000
000022b0 str      w0, [x8, #0x98]
000022b4 ldr      w1, [x20]
000022b8 b        #0x2234
000022bc mov      w0, wzr
000022c0 ldp      x29, x30, [sp, #0x30]
000022c4 ldp      x20, x19, [sp, #0x20]
000022c8 ldr      x21, [sp, #0x10]
000022cc add      sp, sp, #0x40
000022d0 ret      
000022d4 stp      x29, x30, [sp, #-0x10]!
000022d8 mov      x29, sp
000022dc bl       #0x26c0
000022e0 adrp     x1, #0x13000
000022e4 add      x1, x1, #0x98
000022e8 ldp      x29, x30, [sp], #0x10
000022ec b        #0x2210
000022f0 stp      x29, x30, [sp, #-0x10]!
000022f4 mov      x29, sp
000022f8 adrp     x8, #0x13000
000022fc str      x0, [x8, #0xa0]
00002300 cbz      x0, #0x232c
00002304 adrp     x9, #0x13000
00002308 str      x1, [x9, #0xa8]
0000230c cbz      x1, #0x2348
00002310 ldr      x8, [x1, #0x60]
00002314 adrp     x10, #0x13000
00002318 str      x8, [x10, #0xb0]
0000231c cbz      x8, #0x2364
00002320 mov      x0, xzr
00002324 ldp      x29, x30, [sp], #0x10
00002328 ret      
0000232c adrp     x0, #0x10000
00002330 adrp     x2, #0x10000
00002334 add      x0, x0, #0x2c8
00002338 mov      w1, #0x33
0000233c add      x2, x2, #0x2e3
00002340 bl       #0x1fa8
00002344 b        #0x2344
00002348 adrp     x0, #0x10000
0000234c adrp     x2, #0x10000
00002350 add      x0, x0, #0x2c8
00002354 mov      w1, #0x39
00002358 add      x2, x2, #0x300
0000235c bl       #0x1fa8
00002360 b        #0x2360
00002364 adrp     x0, #0x10000
00002368 adrp     x2, #0x10000
0000236c add      x0, x0, #0x2c8
00002370 add      x2, x2, #0x314
00002374 mov      w1, #0x3f
00002378 bl       #0x1fa8
0000237c b        #0x237c
00002380 ldr      x8, [x1, #0x58]
00002384 adrp     x9, #0x13000
00002388 str      x8, [x9, #0xb8]
0000238c cbz      x8, #0x2398
00002390 mov      x0, xzr
00002394 ret      
00002398 stp      x29, x30, [sp, #-0x10]!
0000239c mov      x29, sp
000023a0 adrp     x0, #0x10000
000023a4 adrp     x2, #0x10000
000023a8 add      x0, x0, #0x328
000023ac mov      w1, #0x2f
000023b0 add      x2, x2, #0x346
000023b4 bl       #0x1fa8
000023b8 ldp      x29, x30, [sp], #0x10
000023bc b        #0x23bc
000023c0 mov      x0, xzr
000023c4 ret      
000023c8 stp      x24, x23, [sp, #-0x40]!
000023cc stp      x22, x21, [sp, #0x10]
000023d0 stp      x20, x19, [sp, #0x20]
000023d4 stp      x29, x30, [sp, #0x30]
000023d8 add      x29, sp, #0x30
000023dc mov      x20, x0
000023e0 mov      x19, x1
000023e4 cbz      x20, #0x2440
000023e8 cbz      x19, #0x245c
000023ec adrp     x8, #0x13000
000023f0 mov      x21, #0xe
000023f4 mov      x22, xzr
000023f8 ldr      x23, [x8, #0xa8]
000023fc mov      w24, #0x10
00002400 movk     x21, #0x8000, lsl #48
00002404 str      xzr, [x19]
00002408 b        #0x2430
0000240c ldr      x9, [x23, #0x70]
00002410 mov      x0, x20
00002414 add      x9, x9, x24
00002418 sub      x1, x9, #0x10
0000241c bl       #0xdb70
00002420 and      w8, w0, #0xff
00002424 cbnz     w8, #0x2478
00002428 add      x22, x22, #1
0000242c add      x24, x24, #0x18
00002430 ldr      x8, [x23, #0x68]
00002434 cmp      x22, x8
00002438 b.lo     #0x240c
0000243c b        #0x2488
00002440 adrp     x0, #0x10000
00002444 adrp     x2, #0x10000
00002448 add      x0, x0, #0x35a
0000244c mov      w1, #0x61
00002450 add      x2, x2, #0x364
00002454 bl       #0x1fa8
00002458 b        #0x2458
0000245c adrp     x0, #0x10000
00002460 adrp     x2, #0x10000
00002464 add      x0, x0, #0x35a
00002468 mov      w1, #0x62
0000246c add      x2, x2, #0x37e
00002470 bl       #0x1fa8
00002474 b        #0x2474
00002478 ldr      x10, [x23, #0x70]
0000247c mov      x21, xzr
00002480 ldr      x10, [x10, x24]
00002484 str      x10, [x19]
00002488 mov      x0, x21
0000248c ldp      x29, x30, [sp, #0x30]
00002490 ldp      x20, x19, [sp, #0x20]
00002494 ldp      x22, x21, [sp, #0x10]
00002498 ldp      x24, x23, [sp], #0x40
0000249c ret      
000024a0 str      x19, [sp, #-0x20]!
000024a4 stp      x29, x30, [sp, #0x10]
000024a8 add      x29, sp, #0x10
000024ac adrp     x19, #0x13000
000024b0 ldr      x0, [x19, #0xc0]
000024b4 cbnz     x0, #0x2508
000024b8 adrp     x0, #0x13000
000024bc adrp     x1, #0x13000
000024c0 add      x0, x0, #0x38
000024c4 add      x1, x1, #0xc0
000024c8 bl       #0x23c8
000024cc mov      x8, x0
000024d0 tbz      x8, #0x3f, #0x2500
000024d4 adrp     x1, #0xe000
000024d8 add      x1, x1, #0x210
000024dc mov      w0, #-0xffffffff80000000
000024e0 mov      x2, x8
000024e4 bl       #0x1ea4
000024e8 adrp     x0, #0x10000
000024ec adrp     x2, #0xe000
000024f0 add      x0, x0, #0x52a
000024f4 mov      w1, #0x36
000024f8 add      x2, x2, #0x244
000024fc bl       #0x1fa8
00002500 ldr      x0, [x19, #0xc0]
00002504 cbz      x0, #0x2514
00002508 ldp      x29, x30, [sp, #0x10]
0000250c ldr      x19, [sp], #0x20
00002510 ret      
00002514 adrp     x0, #0x10000
00002518 adrp     x2, #0x10000
0000251c add      x0, x0, #0x52a
00002520 mov      w1, #0x37
00002524 add      x2, x2, #0x533
00002528 bl       #0x1fa8
0000252c b        #0x252c
00002530 stp      x29, x30, [sp, #-0x10]!
00002534 mov      x29, sp
00002538 bl       #0x24a0
0000253c mov      x0, xzr
00002540 ldp      x29, x30, [sp], #0x10
00002544 ret      
00002548 cbz      x1, #0x257c
0000254c mov      w8, #0xffff
00002550 b        #0x2564
00002554 cmp      w9, w0, uxth
00002558 b.eq     #0x2574
0000255c ldrh     w9, [x1, #2]
00002560 add      x1, x1, x9
00002564 ldrh     w9, [x1]
00002568 cmp      w9, w8
0000256c b.ne     #0x2554
00002570 mov      x1, xzr
00002574 mov      x0, x1
00002578 ret      
0000257c stp      x29, x30, [sp, #-0x10]!
00002580 mov      x29, sp
00002584 adrp     x0, #0x10000
00002588 adrp     x2, #0x10000
0000258c add      x0, x0, #0x52a
00002590 mov      w1, #0x6c
00002594 add      x2, x2, #0x54c
00002598 bl       #0x1fa8
0000259c ldp      x29, x30, [sp], #0x10
000025a0 b        #0x25a0
000025a4 stp      x20, x19, [sp, #-0x20]!
000025a8 stp      x29, x30, [sp, #0x10]
000025ac add      x29, sp, #0x10
000025b0 mov      x19, x0
000025b4 b        #0x25d4
000025b8 add      x1, x20, #8
000025bc mov      x0, x19
000025c0 bl       #0xdb70
000025c4 and      w8, w0, #0xff
000025c8 cbnz     w8, #0x25e4
000025cc ldrh     w8, [x20, #2]
000025d0 add      x1, x20, x8
000025d4 mov      w0, #4
000025d8 bl       #0x2548
000025dc mov      x20, x0
000025e0 cbnz     x20, #0x25b8
000025e4 ldp      x29, x30, [sp, #0x10]
000025e8 mov      x0, x20
000025ec ldp      x20, x19, [sp], #0x20
000025f0 ret      
000025f4 str      x19, [sp, #-0x20]!
000025f8 stp      x29, x30, [sp, #0x10]
000025fc add      x29, sp, #0x10
00002600 mov      x19, x0
00002604 bl       #0x24a0
00002608 ldp      x29, x30, [sp, #0x10]
0000260c mov      x1, x0
00002610 mov      x0, x19
00002614 ldr      x19, [sp], #0x20
00002618 b        #0x25a4
0000261c stp      x29, x30, [sp, #-0x10]!
00002620 mov      x29, sp
00002624 bl       #0xe1cc
00002628 cbz      x0, #0x265c
0000262c adrp     x8, #0xe000
00002630 ldr      w8, [x8, #0x284]
00002634 sub      w9, w8, #1
00002638 mov      w8, #0x423e
0000263c movk     w8, #0xf, lsl #16
00002640 cmp      w9, w8
00002644 b.ls     #0x2688
00002648 bl       #0xe1d4
0000264c cbz      x0, #0x26a4
00002650 mov      x0, xzr
00002654 ldp      x29, x30, [sp], #0x10
00002658 ret      
0000265c adrp     x1, #0x10000
00002660 add      x1, x1, #0x5e3
00002664 mov      w0, #-0xffffffff80000000
00002668 bl       #0x1ea4
0000266c adrp     x0, #0x10000
00002670 adrp     x2, #0x10000
00002674 add      x0, x0, #0x577
00002678 mov      w1, #0x51
0000267c add      x2, x2, #0x63c
00002680 bl       #0x1fa8
00002684 b        #0x2684
00002688 adrp     x0, #0x10000
0000268c adrp     x2, #0x10000
00002690 add      x0, x0, #0x577
00002694 mov      w1, #0x39
00002698 add      x2, x2, #0x589
0000269c bl       #0x1fa8
000026a0 b        #0x26a0
000026a4 adrp     x0, #0x10000
000026a8 adrp     x2, #0x10000
000026ac add      x0, x0, #0x577
000026b0 mov      w1, #0x4d
000026b4 add      x2, x2, #0x5bf
000026b8 bl       #0x1fa8
000026bc b        #0x26bc
000026c0 b        #0xe1d8
000026c4 cbz      x0, #0x26cc
000026c8 str      xzr, [x0]
000026cc cbz      x1, #0x26d8
000026d0 mov      x8, #-1
000026d4 str      x8, [x1]
000026d8 b        #0xe1d4
000026dc udf      #0
000026e0 ldr      x0, #0x2800
000026e4 str      xzr, [x0]
000026e8 bl       #0xe1c4
000026ec dsb      sy
000026f0 isb      
000026f4 ldr      x0, #0x2808
000026f8 ldr      x2, #0x2810
000026fc mov      x3, #8
00002700 smc      #0
00002704 cmp      w0, #0
00002708 b.gt     #0x2700
0000270c cmp      w0, #0
00002710 b.ne     #0x272c
00002714 ldr      x0, #0x2818
00002718 bl       #0xe1bc
0000271c dsb      sy
00002720 isb      
00002724 ldr      x1, #0x2820
00002728 ldr      x0, [x1]
0000272c ldp      x29, x30, [sp], #0x10
00002730 ret      
00002734 ldr      x0, #0x2828
00002738 str      xzr, [x0]
0000273c bl       #0xe1c4
00002740 dsb      sy
00002744 isb      
00002748 ldr      x0, #0x2830
0000274c mov      x1, #0x22
00002750 ldr      x2, #0x2838
00002754 mov      x3, #8
00002758 smc      #0
0000275c cmp      w0, #0
00002760 b.gt     #0x2758
00002764 cmp      w0, #0
00002768 b.ne     #0x2784
0000276c ldr      x0, #0x2840
00002770 bl       #0xe1bc
00002774 dsb      sy
00002778 isb      
0000277c ldr      x1, #0x2848
00002780 ldr      x0, [x1]
00002784 ldp      x29, x30, [sp], #0x10
00002788 ret      
0000278c stp      x29, x30, [sp, #-0x10]!
00002790 mov      x29, sp
00002794 ldr      x0, #0x2850
00002798 ldr      x0, [x0]
0000279c adr      x1, #0x27a8
000027a0 ldr      x2, [x1, x0]
000027a4 br       x2
000027a8 udf      #0x27c0
000027ac udf      #0
000027b0 udf      #0x26e0
000027b4 udf      #0
000027b8 udf      #0x2734
000027bc udf      #0
000027c0 ldr      x0, #0x2858
000027c4 mov      x1, #1
000027c8 ldr      x2, #0x2860
000027cc smc      #0
000027d0 cmp      w0, #0
000027d4 b.gt     #0x27cc
000027d8 cmp      w0, #0
000027dc ldr      x1, #0x2868
000027e0 b.ne     #0x27f0
000027e4 mov      x0, #0x10
000027e8 str      x0, [x1]
000027ec b        #0x2734
000027f0 mov      x0, #8
000027f4 str      x0, [x1]
000027f8 b        #0x26e0
000027fc nop      
00002800 .byte    0x80, 0x30, 0x01, 0x00
00002804 udf      #0
00002808 .byte    0x02, 0x12, 0x80, 0x02
0000280c udf      #0
00002810 .byte    0x80, 0x30, 0x01, 0x00
00002814 udf      #0
00002818 .byte    0x80, 0x30, 0x01, 0x00
0000281c udf      #0
00002820 .byte    0x80, 0x30, 0x01, 0x00
00002824 udf      #0
00002828 .byte    0x80, 0x30, 0x01, 0x00
0000282c udf      #0
00002830 .byte    0x01, 0x0a, 0x00, 0x02
00002834 udf      #0
00002838 .byte    0x80, 0x30, 0x01, 0x00
0000283c udf      #0
00002840 .byte    0x80, 0x30, 0x01, 0x00
00002844 udf      #0
00002848 .byte    0x80, 0x30, 0x01, 0x00
0000284c udf      #0
00002850 .byte    0x88, 0x30, 0x01, 0x00
00002854 udf      #0
00002858 .byte    0x01, 0x06, 0x00, 0x02
0000285c udf      #0
00002860 .byte    0x02, 0x06, 0x00, 0x02
00002864 udf      #0
00002868 .byte    0x88, 0x30, 0x01, 0x00
0000286c udf      #0
00002870 str      x19, [sp, #-0x20]!
00002874 stp      x29, x30, [sp, #0x10]
00002878 add      x29, sp, #0x10
0000287c adrp     x8, #0x13000
00002880 ldr      x0, [x8, #0xc8]
00002884 cbz      x0, #0x28bc
00002888 mov      w8, #1
0000288c cbz      w8, #0x2894
00002890 cbnz     x0, #0x28b0
00002894 adrp     x0, #0x10000
00002898 adrp     x2, #0x10000
0000289c add      x0, x0, #0x63e
000028a0 mov      w1, #0x1a
000028a4 add      x2, x2, #0x649
000028a8 bl       #0x1fa8
000028ac b        #0x28ac
000028b0 ldp      x29, x30, [sp, #0x10]
000028b4 ldr      x19, [sp], #0x20
000028b8 ret      
000028bc adrp     x9, #0x13000
000028c0 adrp     x19, #0x13000
000028c4 adrp     x0, #0x13000
000028c8 ldr      x10, [x9, #0xb0]
000028cc add      x19, x19, #0xc8
000028d0 add      x0, x0, #0x48
000028d4 mov      x1, xzr
000028d8 mov      x2, x19
000028dc ldr      x9, [x10, #0x140]
000028e0 blr      x9
000028e4 mov      x8, x0
000028e8 ldr      x0, [x19]
000028ec lsr      x10, x8, #0x3f
000028f0 eor      w8, w10, #1
000028f4 cbnz     w8, #0x2890
000028f8 b        #0x2894
000028fc stp      x24, x23, [sp, #-0x40]!
00002900 stp      x22, x21, [sp, #0x10]
00002904 stp      x20, x19, [sp, #0x20]
00002908 stp      x29, x30, [sp, #0x30]
0000290c add      x29, sp, #0x30
00002910 mov      x19, x5
00002914 mov      x20, x4
00002918 mov      x21, x3
0000291c mov      x22, x2
00002920 mov      x23, x1
00002924 mov      w24, w0
00002928 bl       #0x2870
0000292c ldr      x8, [x0, #0xb8]
00002930 mov      w0, w24
00002934 mov      x1, x23
00002938 mov      x2, x22
0000293c mov      x3, x21
00002940 mov      x4, x20
00002944 mov      x5, x19
00002948 blr      x8
0000294c ldp      x29, x30, [sp, #0x30]
00002950 ldp      x20, x19, [sp, #0x20]
00002954 ldp      x22, x21, [sp, #0x10]
00002958 asr      x0, x0, #0x3f
0000295c ldp      x24, x23, [sp], #0x40
00002960 ret      
00002964 sub      sp, sp, #0x40
00002968 stp      x20, x19, [sp, #0x20]
0000296c stp      x29, x30, [sp, #0x30]
00002970 add      x29, sp, #0x30
00002974 mov      x19, x0
00002978 mov      x20, x1
0000297c mov      w2, #0xd
00002980 mov      x0, sp
00002984 mov      x1, x19
00002988 bl       #0x2a04
0000298c cbz      w0, #0x29c4
00002990 bl       #0x22d4
00002994 adrp     x1, #0xf000
00002998 mov      x2, x0
0000299c add      x1, x1, #0x7a2
000029a0 mov      w0, #-0xffffffff80000000
000029a4 bl       #0x1ea4
000029a8 adrp     x1, #0x10000
000029ac add      x1, x1, #0x67d
000029b0 mov      w0, #-0xffffffff80000000
000029b4 mov      x2, x19
000029b8 bl       #0x1ea4
000029bc mov      w0, wzr
000029c0 b        #0x29f4
000029c4 mov      x0, sp
000029c8 mov      x1, x20
000029cc mov      x2, xzr
000029d0 mov      x3, xzr
000029d4 mov      w4, wzr
000029d8 bl       #0x8448
000029dc mov      w19, w0
000029e0 mov      x0, sp
000029e4 bl       #0xb824
000029e8 mov      w0, wzr
000029ec cbnz     w19, #0x29f4
000029f0 mov      w0, #1
000029f4 ldp      x29, x30, [sp, #0x30]
000029f8 ldp      x20, x19, [sp, #0x20]
000029fc add      sp, sp, #0x40
00002a00 ret      
00002a04 sub      sp, sp, #0x170
00002a08 stp      x28, x23, [sp, #0x130]
00002a0c stp      x22, x21, [sp, #0x140]
00002a10 stp      x20, x19, [sp, #0x150]
00002a14 stp      x29, x30, [sp, #0x160]
00002a18 add      x29, sp, #0x160
00002a1c mov      w21, w2
00002a20 mov      w6, #0x11
00002a24 mov      x22, x1
00002a28 bic      w7, w6, w21
00002a2c mov      x19, x0
00002a30 cbnz     w7, #0x2a3c
00002a34 mov      w0, #0x10
00002a38 b        #0x30a8
00002a3c tbnz     w21, #5, #0x2a50
00002a40 mov      x0, x22
00002a44 bl       #0xb948
00002a48 mov      x23, x0
00002a4c b        #0x2a64
00002a50 ldr      x14, [x19, #0x10]
00002a54 subs     x23, x14, x22
00002a58 b.hs     #0x2a64
00002a5c mov      w0, #0x10
00002a60 b        #0x30a8
00002a64 mov      w0, #0x1a7
00002a68 bl       #0xc698
00002a6c mov      x20, x0
00002a70 cbz      x20, #0x2c00
00002a74 lsr      x16, x23, #1
00002a78 add      x12, x16, x16, lsl #1
00002a7c add      x14, x12, #1
00002a80 lsl      x0, x14, #2
00002a84 str      x14, [sp, #0x70]
00002a88 bl       #0xc698
00002a8c str      xzr, [sp, #0x78]
00002a90 str      x0, [sp, #0x68]
00002a94 cbz      x0, #0x2c08
00002a98 movi     v0.2d, #0000000000000000
00002a9c adrp     x15, #0x10000
00002aa0 add      x17, x22, x23
00002aa4 stp      xzr, x20, [sp, #0x80]
00002aa8 str      wzr, [sp, #0x60]
00002aac and      w8, w21, #0xffffff7f
00002ab0 ldr      q1, [x15, #0x6b0]
00002ab4 add      x16, x20, #0x120
00002ab8 stp      x22, x17, [sp, #0x50]
00002abc str      xzr, [sp, #0x128]
00002ac0 stp      q0, q0, [sp]
00002ac4 ldp      x3, x1, [sp]
00002ac8 ldp      x5, x4, [sp, #0x10]
00002acc stp      q0, q0, [sp, #0x90]
00002ad0 stp      q0, q0, [sp, #0xe0]
00002ad4 stp      q0, q0, [sp, #0xb0]
00002ad8 str      x1, [sp, #0x110]
00002adc mov      w1, wzr
00002ae0 stp      xzr, x3, [sp, #0x100]
00002ae4 str      x4, [sp, #0x120]
00002ae8 str      q0, [sp, #0xd0]
00002aec str      x5, [sp, #0x118]
00002af0 stp      xzr, xzr, [x20, #0x20]
00002af4 str      q1, [sp, #0x20]
00002af8 ldr      x6, [sp, #0x28]
00002afc str      x6, [x20, #0x18]
00002b00 ldr      x7, [sp, #0x20]
00002b04 str      w8, [x20, #0x30]
00002b08 mov      w8, #1
00002b0c str      wzr, [x20, #0x50]
00002b10 str      x7, [x20, #0x10]
00002b14 str      q0, [sp, #0x30]
00002b18 ldr      x22, [sp, #0x38]
00002b1c str      x22, [x20, #0x60]
00002b20 ldr      x23, [sp, #0x30]
00002b24 str      xzr, [x20, #0x78]
00002b28 str      x23, [x20, #0x58]
00002b2c str      q0, [sp, #0x40]
00002b30 ldr      x2, [sp, #0x48]
00002b34 str      x2, [x20, #0x88]
00002b38 mov      w2, #0x100
00002b3c ldr      x0, [sp, #0x40]
00002b40 stp      x8, x16, [x20, #0x68]
00002b44 str      x0, [x20, #0x80]
00002b48 add      x0, x20, #0xa0
00002b4c bl       #0xb8ac
00002b50 ldr      w0, [sp, #0x60]
00002b54 str      wzr, [x20, #0x90]
00002b58 cbnz     w0, #0x2bcc
00002b5c ldp      x23, x22, [sp, #0x70]
00002b60 cmp      x22, x23
00002b64 b.lo     #0x2bb8
00002b68 add      x1, x23, #1
00002b6c lsr      x9, x1, #1
00002b70 add      x12, x9, x9, lsl #1
00002b74 cmp      x23, x12
00002b78 b.hs     #0x2bb8
00002b7c ldp      x10, x3, [sp, #0x80]
00002b80 str      x12, [sp, #0x70]
00002b84 lsl      x0, x12, #2
00002b88 mov      w14, #0x8000000
00002b8c ldr      x13, [x3, #0x10]
00002b90 lsr      x15, x10, #3
00002b94 add      x11, x0, x10, lsl #5
00002b98 madd     x12, x13, x15, x11
00002b9c cmp      x12, x14
00002ba0 b.hi     #0x2d04
00002ba4 ldr      x2, [sp, #0x68]
00002ba8 mov      x1, x0
00002bac bl       #0xc794
00002bb0 cbz      x0, #0x2d04
00002bb4 str      x0, [sp, #0x68]
00002bb8 ldr      x23, [sp, #0x68]
00002bbc add      x2, x22, #1
00002bc0 mov      w9, #0x8000000
00002bc4 str      x2, [sp, #0x78]
00002bc8 str      w9, [x23, x22, lsl #2]
00002bcc ldr      x22, [sp, #0x78]
00002bd0 sub      x4, x22, #1
00002bd4 str      x4, [x20, #0x40]
00002bd8 tbnz     w21, #0, #0x2c18
00002bdc tbnz     w21, #4, #0x2c40
00002be0 add      x0, sp, #0x50
00002be4 mov      w1, #0x80
00002be8 mov      w2, #0x80
00002bec mov      x3, xzr
00002bf0 bl       #0x457c
00002bf4 ldr      w11, [sp, #0x60]
00002bf8 cbnz     w11, #0x2c30
00002bfc b        #0x2c98
00002c00 mov      w0, #0xc
00002c04 b        #0x30a8
00002c08 mov      x0, x20
00002c0c bl       #0xc73c
00002c10 mov      w0, #0xc
00002c14 b        #0x30a8
00002c18 add      x0, sp, #0x50
00002c1c mov      w1, #0x80
00002c20 mov      x2, xzr
00002c24 bl       #0x31d4
00002c28 ldr      w11, [sp, #0x60]
00002c2c cbz      w11, #0x2c98
00002c30 ldr      x9, [sp, #0x78]
00002c34 sub      x7, x9, #1
00002c38 str      x7, [x20, #0x48]
00002c3c b        #0x2e58
00002c40 ldp      x10, x17, [sp, #0x50]
00002c44 cmp      x10, x17
00002c48 b.hs     #0x2c70
00002c4c add      x21, x10, #1
00002c50 add      x0, sp, #0x50
00002c54 str      x21, [sp, #0x50]
00002c58 ldrb     w1, [x10]
00002c5c bl       #0x7770
00002c60 ldp      x10, x3, [sp, #0x50]
00002c64 cmp      x10, x3
00002c68 b.lo     #0x2c4c
00002c6c b        #0x2c28
00002c70 ldr      w21, [sp, #0x60]
00002c74 cbnz     w21, #0x2c80
00002c78 mov      w10, #0xe
00002c7c str      w10, [sp, #0x60]
00002c80 adrp     x1, #0x13000
00002c84 add      x1, x1, #0xd0
00002c88 dup      v2.2d, x1
00002c8c str      q2, [sp, #0x50]
00002c90 ldr      w11, [sp, #0x60]
00002c94 cbnz     w11, #0x2c30
00002c98 ldp      x21, x8, [sp, #0x70]
00002c9c cmp      x8, x21
00002ca0 b.lo     #0x2d3c
00002ca4 add      x5, x21, #1
00002ca8 lsr      x4, x5, #1
00002cac add      x11, x4, x4, lsl #1
00002cb0 cmp      x21, x11
00002cb4 b.hs     #0x2d3c
00002cb8 ldp      x5, x6, [sp, #0x80]
00002cbc str      x11, [sp, #0x70]
00002cc0 lsl      x0, x11, #2
00002cc4 mov      w2, #1
00002cc8 ldr      x6, [x6, #0x10]
00002ccc lsr      x7, x5, #3
00002cd0 add      x22, x0, x5, lsl #5
00002cd4 movk     w2, #0x800, lsl #16
00002cd8 madd     x23, x6, x7, x22
00002cdc cmp      x23, x2
00002ce0 b.lo     #0x2d24
00002ce4 str      x21, [sp, #0x70]
00002ce8 mov      w14, #0xc
00002cec str      w14, [sp, #0x60]
00002cf0 adrp     x0, #0x13000
00002cf4 add      x0, x0, #0xd0
00002cf8 dup      v3.2d, x0
00002cfc str      q3, [sp, #0x50]
00002d00 b        #0x2c30
00002d04 adrp     x16, #0x13000
00002d08 str      x23, [sp, #0x70]
00002d0c add      x16, x16, #0xd0
00002d10 mov      w1, #0xc
00002d14 dup      v1.2d, x16
00002d18 str      w1, [sp, #0x60]
00002d1c str      q1, [sp, #0x50]
00002d20 b        #0x2bcc
00002d24 ldr      x2, [sp, #0x68]
00002d28 mov      x1, x0
00002d2c bl       #0xc794
00002d30 cbz      x0, #0x30d0
00002d34 ldr      x8, [sp, #0x78]
00002d38 str      x0, [sp, #0x68]
00002d3c ldr      x0, [sp, #0x68]
00002d40 add      x13, x8, #1
00002d44 mov      w15, #0x8000000
00002d48 str      x13, [sp, #0x78]
00002d4c str      w15, [x0, x8, lsl #2]
00002d50 ldr      x9, [sp, #0x78]
00002d54 ldr      w16, [sp, #0x60]
00002d58 sub      x8, x9, #1
00002d5c str      x8, [x20, #0x48]
00002d60 cbnz     w16, #0x2e58
00002d64 ldr      x9, [x20, #0x70]
00002d68 mov      x8, xzr
00002d6c mov      x10, #-0x80
00002d70 sub      x11, x9, #0x80
00002d74 b        #0x2e3c
00002d78 ldr      x4, [x20, #0x28]
00002d7c cbz      x4, #0x2e44
00002d80 ldr      x17, [x20, #0x18]
00002d84 add      x12, x17, #7
00002d88 lsr      x15, x12, #3
00002d8c cbz      x15, #0x2e44
00002d90 sub      x5, x8, #0x80
00002d94 mov      x13, xzr
00002d98 sub      x12, x8, #0x81
00002d9c and      x14, x5, #0xff
00002da0 ldrb     w17, [x4, x14]
00002da4 cbnz     w17, #0x2dc0
00002da8 ldr      x16, [x20, #0x10]
00002dac add      x13, x13, #1
00002db0 cmp      x13, x15
00002db4 add      x4, x4, x16
00002db8 b.lo     #0x2da0
00002dbc b        #0x2e44
00002dc0 ldr      x15, [x20, #0x68]
00002dc4 cmp      x5, #0x7e
00002dc8 add      x16, x15, #1
00002dcc str      x16, [x20, #0x68]
00002dd0 strb     w15, [x11, x8]
00002dd4 b.gt     #0x2e44
00002dd8 add      x2, x9, x12
00002ddc ldrb     w13, [x2, #2]
00002de0 cbnz     w13, #0x2e2c
00002de4 ldr      x1, [x20, #0x18]
00002de8 add      x3, x1, #7
00002dec lsr      x13, x3, #3
00002df0 cbz      x13, #0x2e28
00002df4 ldr      x0, [x20, #0x28]
00002df8 add      x23, x12, #2
00002dfc mov      x7, xzr
00002e00 and      x17, x23, #0xff
00002e04 ldrb     w3, [x0, x14]
00002e08 ldrb     w4, [x0, x17]
00002e0c cmp      w3, w4
00002e10 b.ne     #0x2e2c
00002e14 ldr      x1, [x20, #0x10]
00002e18 add      x7, x7, #1
00002e1c cmp      x7, x13
00002e20 add      x0, x0, x1
00002e24 b.lo     #0x2e04
00002e28 strb     w15, [x2, #2]
00002e2c add      x12, x12, #1
00002e30 cmp      x12, #0x7e
00002e34 b.lt     #0x2dd8
00002e38 b        #0x2e44
00002e3c ldrb     w2, [x11, x8]
00002e40 cbz      w2, #0x2d78
00002e44 add      x10, x10, #1
00002e48 add      x8, x8, #1
00002e4c cmp      x10, #0x80
00002e50 b.ne     #0x2e3c
00002e54 ldr      x9, [sp, #0x78]
00002e58 ldr      x2, [sp, #0x68]
00002e5c lsl      x0, x9, #2
00002e60 mov      x1, x0
00002e64 str      x9, [x20, #0x38]
00002e68 bl       #0xc794
00002e6c str      x0, [x20, #8]
00002e70 cbz      x0, #0x2e84
00002e74 ldr      w6, [sp, #0x60]
00002e78 cbz      w6, #0x2eb4
00002e7c mov      x9, xzr
00002e80 b        #0x3048
00002e84 ldr      w8, [sp, #0x60]
00002e88 cbnz     w8, #0x2e94
00002e8c mov      w5, #0xc
00002e90 str      w5, [sp, #0x60]
00002e94 adrp     x8, #0x13000
00002e98 ldr      x0, [sp, #0x68]
00002e9c add      x8, x8, #0xd0
00002ea0 dup      v4.2d, x8
00002ea4 str      q4, [sp, #0x50]
00002ea8 str      x0, [x20, #8]
00002eac ldr      w6, [sp, #0x60]
00002eb0 cbnz     w6, #0x2e7c
00002eb4 add      x3, x0, #4
00002eb8 mov      x21, xzr
00002ebc mov      x8, xzr
00002ec0 mov      x13, xzr
00002ec4 mov      w9, #-0x10000000
00002ec8 mov      w10, #1
00002ecc mov      w11, #0x1880
00002ed0 mov      w12, #0x2200
00002ed4 mov      w14, #-0x78000000
00002ed8 mov      w15, #-0x70000000
00002edc mov      w16, #0x60000000
00002ee0 mov      x17, x3
00002ee4 ldr      w2, [x17], #4
00002ee8 add      w7, w2, w9
00002eec lsr      w0, w7, #0x1b
00002ef0 cmp      w0, #0xd
00002ef4 b.hi     #0x2f4c
00002ef8 lsl      w5, w10, w0
00002efc and      w1, w5, w11
00002f00 cbnz     w1, #0x2f64
00002f04 and      w4, w5, w12
00002f08 cbz      w4, #0x2f38
00002f0c mov      x17, x3
00002f10 and      w2, w2, #0x7ffffff
00002f14 add      x17, x17, w2, uxtw #2
00002f18 ldr      w2, [x17]
00002f1c and      w1, w2, #0xf8000000
00002f20 cmp      w1, w14
00002f24 b.eq     #0x2f10
00002f28 cmp      w1, w15
00002f2c ccmp     w1, w16, #4, ne
00002f30 b.ne     #0x2fd4
00002f34 b        #0x2f4c
00002f38 cbnz     w0, #0x2f4c
00002f3c cmp      x13, #0
00002f40 csel     x8, x3, x8, eq
00002f44 add      x13, x13, #1
00002f48 b        #0x2f64
00002f4c ldr      x3, [x20, #0x80]
00002f50 cmp      x13, x3
00002f54 b.ls     #0x2f60
00002f58 mov      x21, x8
00002f5c str      x13, [x20, #0x80]
00002f60 mov      x13, xzr
00002f64 mov      x3, x17
00002f68 lsr      w4, w2, #0x1b
00002f6c cmp      w4, #1
00002f70 b.ne     #0x2ee4
00002f74 cbz      x21, #0x30c0
00002f78 ldr      x11, [x20, #0x80]
00002f7c cbz      x11, #0x2fc4
00002f80 add      x0, x11, #1
00002f84 bl       #0xc698
00002f88 str      x0, [x20, #0x78]
00002f8c cbz      x0, #0x30c0
00002f90 ldr      x10, [x20, #0x80]
00002f94 cbz      x10, #0x2fc0
00002f98 mov      x6, x10
00002f9c mov      x8, x0
00002fa0 ldr      w3, [x21], #4
00002fa4 lsr      w11, w3, #0x1b
00002fa8 cmp      w11, #2
00002fac b.ne     #0x2fa0
00002fb0 sub      x6, x6, #1
00002fb4 strb     w3, [x8], #1
00002fb8 cbnz     x6, #0x2fa0
00002fbc add      x0, x0, x10
00002fc0 strb     wzr, [x0]
00002fc4 ldr      w9, [sp, #0x60]
00002fc8 cbz      w9, #0x2fe8
00002fcc mov      x9, xzr
00002fd0 b        #0x3048
00002fd4 ldr      w0, [x20, #0x50]
00002fd8 orr      w9, w0, #4
00002fdc str      w9, [x20, #0x50]
00002fe0 ldr      w9, [sp, #0x60]
00002fe4 cbnz     w9, #0x2fcc
00002fe8 ldr      x1, [x20, #8]
00002fec mov      x16, xzr
00002ff0 mov      x9, xzr
00002ff4 mov      w8, #0x8000000
00002ff8 mov      w13, #0x50000000
00002ffc mov      w17, #0x48000000
00003000 b        #0x3010
00003004 cmp      x16, x9
00003008 csel     x9, x16, x9, hi
0000300c sub      x16, x16, #1
00003010 ldr      w21, [x1, #4]!
00003014 and      w10, w21, #0xf8000000
00003018 cmp      w10, w8
0000301c b.eq     #0x3038
00003020 cmp      w10, w13
00003024 b.eq     #0x3004
00003028 cmp      w10, w17
0000302c b.ne     #0x3010
00003030 add      x16, x16, #1
00003034 b        #0x3010
00003038 cbz      x16, #0x3048
0000303c ldr      w10, [x20, #0x50]
00003040 orr      w12, w10, #4
00003044 str      w12, [x20, #0x50]
00003048 ldr      x10, [x20, #0x88]
0000304c mov      w11, #0xd245
00003050 mov      w12, #0xf265
00003054 str      x9, [x20, #0x98]
00003058 str      w11, [x20]
0000305c str      x20, [x19, #0x18]
00003060 str      x10, [x19, #8]
00003064 str      w12, [x19]
00003068 ldrb     w14, [x20, #0x50]
0000306c ldr      w4, [sp, #0x60]
00003070 tbnz     w14, #2, #0x3080
00003074 cbnz     w4, #0x309c
00003078 mov      w0, wzr
0000307c b        #0x30a8
00003080 cbnz     w4, #0x308c
00003084 mov      w15, #0xf
00003088 str      w15, [sp, #0x60]
0000308c adrp     x9, #0x13000
00003090 add      x9, x9, #0xd0
00003094 dup      v5.2d, x9
00003098 str      q5, [sp, #0x50]
0000309c mov      x0, x19
000030a0 bl       #0xb824
000030a4 ldr      w0, [sp, #0x60]
000030a8 ldp      x29, x30, [sp, #0x160]
000030ac ldp      x20, x19, [sp, #0x150]
000030b0 ldp      x22, x21, [sp, #0x140]
000030b4 ldp      x28, x23, [sp, #0x130]
000030b8 add      sp, sp, #0x170
000030bc ret      
000030c0 str      xzr, [x20, #0x80]
000030c4 ldr      w9, [sp, #0x60]
000030c8 cbnz     w9, #0x2fcc
000030cc b        #0x2fe8
000030d0 ldr      w12, [sp, #0x60]
000030d4 str      x21, [sp, #0x70]
000030d8 cbnz     w12, #0x2cf0
000030dc b        #0x2ce8
000030e0 sub      sp, sp, #0x40
000030e4 stp      x22, x21, [sp, #0x10]
000030e8 stp      x20, x19, [sp, #0x20]
000030ec stp      x29, x30, [sp, #0x30]
000030f0 add      x29, sp, #0x30
000030f4 mov      x19, x0
000030f8 mov      x20, x2
000030fc mov      w21, w1
00003100 ldr      w8, [x19, #0x10]
00003104 cbnz     w8, #0x31b0
00003108 ldp      x22, x8, [x19, #0x20]
0000310c cmp      x8, x22
00003110 b.lo     #0x319c
00003114 add      x9, x22, #1
00003118 lsr      x10, x9, #1
0000311c add      x9, x10, x10, lsl #1
00003120 cmp      x22, x9
00003124 b.hs     #0x319c
00003128 ldp      x8, x10, [x19, #0x30]
0000312c str      x9, [x19, #0x20]
00003130 lsl      x0, x9, #2
00003134 mov      w15, #1
00003138 ldr      x11, [x10, #0x10]
0000313c lsr      x12, x8, #3
00003140 add      x13, x0, x8, lsl #5
00003144 movk     w15, #0x800, lsl #16
00003148 madd     x14, x11, x12, x13
0000314c cmp      x14, x15
00003150 b.lo     #0x3184
00003154 str      x22, [x19, #0x20]
00003158 mov      w10, #0xc
0000315c str      w10, [x19, #0x10]
00003160 adrp     x16, #0x13000
00003164 add      x16, x16, #0xd0
00003168 dup      v0.2d, x16
0000316c str      q0, [sp]
00003170 ldr      x17, [sp, #8]
00003174 str      x17, [x19, #8]
00003178 ldr      x1, [sp]
0000317c str      x1, [x19]
00003180 b        #0x31b0
00003184 ldr      x2, [x19, #0x18]
00003188 mov      x1, x0
0000318c bl       #0xc794
00003190 cbz      x0, #0x31c4
00003194 ldr      x8, [x19, #0x28]
00003198 str      x0, [x19, #0x18]
0000319c ldr      x11, [x19, #0x18]
000031a0 add      x12, x8, #1
000031a4 orr      w3, w21, w20
000031a8 str      x12, [x19, #0x28]
000031ac str      w3, [x11, x8, lsl #2]
000031b0 ldp      x29, x30, [sp, #0x30]
000031b4 ldp      x20, x19, [sp, #0x20]
000031b8 ldp      x22, x21, [sp, #0x10]
000031bc add      sp, sp, #0x40
000031c0 ret      
000031c4 ldr      w9, [x19, #0x10]
000031c8 str      x22, [x19, #0x20]
000031cc cbnz     w9, #0x3160
000031d0 b        #0x3158
000031d4 stp      x28, x27, [sp, #-0x60]!
000031d8 stp      x26, x25, [sp, #0x10]
000031dc stp      x24, x23, [sp, #0x20]
000031e0 stp      x22, x21, [sp, #0x30]
000031e4 stp      x20, x19, [sp, #0x40]
000031e8 stp      x29, x30, [sp, #0x50]
000031ec add      x29, sp, #0x50
000031f0 sub      sp, sp, #0x210
000031f4 mov      w20, w1
000031f8 mov      x19, x0
000031fc cmp      x2, #0x100
00003200 b.hi     #0x3210
00003204 ldr      w8, [x19, #0x10]
00003208 cmp      w8, #0xc
0000320c b.ne     #0x3238
00003210 mov      w8, #0xc
00003214 str      w8, [x19, #0x10]
00003218 add      sp, sp, #0x210
0000321c ldp      x29, x30, [sp, #0x50]
00003220 ldp      x20, x19, [sp, #0x40]
00003224 ldp      x22, x21, [sp, #0x30]
00003228 ldp      x24, x23, [sp, #0x20]
0000322c ldp      x26, x25, [sp, #0x10]
00003230 ldp      x28, x27, [sp], #0x60
00003234 ret      
00003238 adrp     x27, #0x13000
0000323c add      x27, x27, #0xd0
00003240 sub      x7, x29, #0x54
00003244 mov      x28, xzr
00003248 dup      v0.2d, x27
0000324c mov      x21, xzr
00003250 add      x5, x2, #1
00003254 orr      x2, x7, #3
00003258 mov      w27, #1
0000325c stp      x2, x5, [sp, #0x10]
00003260 str      q0, [sp, #0x20]
00003264 b        #0x34dc
00003268 ldr      w16, [x19, #0x10]
0000326c cbnz     w16, #0x3278
00003270 mov      w23, #0xd
00003274 str      w23, [x19, #0x10]
00003278 ldr      q0, [sp, #0x20]
0000327c str      q0, [sp, #0x70]
00003280 ldr      x0, [sp, #0x78]
00003284 str      x0, [x19, #8]
00003288 adrp     x0, #0x13000
0000328c add      x0, x0, #0xd0
00003290 ldr      x9, [sp, #0x70]
00003294 mov      x13, x0
00003298 mov      x24, x13
0000329c mov      x8, x13
000032a0 str      x9, [x19]
000032a4 ldr      x26, [x19, #0x28]
000032a8 cmp      x26, x25
000032ac b.eq     #0x445c
000032b0 cmp      x8, x24
000032b4 b.hs     #0x4484
000032b8 ldrb     w7, [x8]
000032bc cmp      w7, #0x7c
000032c0 b.ne     #0x4484
000032c4 add      x23, x8, #1
000032c8 mov      x24, x21
000032cc str      x23, [x19]
000032d0 cbz      w27, #0x32fc
000032d4 mov      w5, #1
000032d8 sub      x27, x5, x25
000032dc add      x2, x27, x26
000032e0 mov      w1, #0x78000000
000032e4 mov      x0, x19
000032e8 mov      x3, x25
000032ec bl       #0x53c4
000032f0 ldr      x26, [x19, #0x28]
000032f4 mov      x28, x25
000032f8 mov      x24, x25
000032fc ldr      w27, [x19, #0x10]
00003300 cbnz     w27, #0x34d0
00003304 ldr      x27, [x19, #0x20]
00003308 mov      x3, x26
0000330c cmp      x26, x27
00003310 b.lo     #0x33a4
00003314 add      x21, x27, #1
00003318 lsr      x13, x21, #1
0000331c add      x4, x13, x13, lsl #1
00003320 mov      x3, x26
00003324 cmp      x27, x4
00003328 b.hs     #0x33a4
0000332c ldp      x17, x22, [x19, #0x30]
00003330 str      x4, [x19, #0x20]
00003334 lsl      x0, x4, #2
00003338 mov      w9, #1
0000333c ldr      x16, [x22, #0x10]
00003340 lsr      x15, x17, #3
00003344 add      x4, x0, x17, lsl #5
00003348 movk     w9, #0x800, lsl #16
0000334c madd     x3, x16, x15, x4
00003350 cmp      x3, x9
00003354 b.lo     #0x338c
00003358 str      x27, [x19, #0x20]
0000335c mov      w22, #0xc
00003360 str      w22, [x19, #0x10]
00003364 ldr      q0, [sp, #0x20]
00003368 mov      w27, wzr
0000336c str      q0, [sp, #0x60]
00003370 ldr      x1, [sp, #0x68]
00003374 ldr      x21, [x19, #0x28]
00003378 str      x1, [x19, #8]
0000337c ldr      x5, [sp, #0x60]
00003380 sub      x28, x21, #1
00003384 str      x5, [x19]
00003388 b        #0x34dc
0000338c ldr      x2, [x19, #0x18]
00003390 mov      x1, x0
00003394 bl       #0xc794
00003398 cbz      x0, #0x347c
0000339c ldr      x3, [x19, #0x28]
000033a0 str      x0, [x19, #0x18]
000033a4 sub      x26, x26, x28
000033a8 ldr      x13, [x19, #0x18]
000033ac add      x28, x3, #1
000033b0 mov      w27, wzr
000033b4 orr      w2, w26, #0x80000000
000033b8 str      x28, [x19, #0x28]
000033bc str      w2, [x13, x3, lsl #2]
000033c0 ldr      x21, [x19, #0x28]
000033c4 ldr      w2, [x19, #0x10]
000033c8 sub      x28, x21, #1
000033cc cbnz     w2, #0x34dc
000033d0 ldr      x27, [x19, #0x18]
000033d4 lsl      x22, x24, #2
000033d8 sub      w4, w21, w24
000033dc ldr      w3, [x27, x22]
000033e0 and      w3, w3, #0xf8000000
000033e4 orr      w6, w4, w3
000033e8 str      w6, [x27, x22]
000033ec mov      w27, wzr
000033f0 ldr      w5, [x19, #0x10]
000033f4 ldr      x21, [x19, #0x28]
000033f8 cbnz     w5, #0x34dc
000033fc ldr      x26, [x19, #0x20]
00003400 mov      x1, x21
00003404 cmp      x21, x26
00003408 b.lo     #0x34a4
0000340c add      x14, x26, #1
00003410 lsr      x24, x14, #1
00003414 add      x5, x24, x24, lsl #1
00003418 mov      x1, x21
0000341c cmp      x26, x5
00003420 b.hs     #0x34a4
00003424 ldp      x7, x24, [x19, #0x30]
00003428 str      x5, [x19, #0x20]
0000342c lsl      x0, x5, #2
00003430 mov      w23, #1
00003434 ldr      x8, [x24, #0x10]
00003438 lsr      x10, x7, #3
0000343c add      x2, x0, x7, lsl #5
00003440 movk     w23, #0x800, lsl #16
00003444 madd     x12, x8, x10, x2
00003448 cmp      x12, x23
0000344c b.lo     #0x348c
00003450 str      x26, [x19, #0x20]
00003454 mov      w27, #0xc
00003458 str      w27, [x19, #0x10]
0000345c ldr      q0, [sp, #0x20]
00003460 mov      w27, wzr
00003464 str      q0, [sp, #0x50]
00003468 ldr      x11, [sp, #0x58]
0000346c str      x11, [x19, #8]
00003470 ldr      x23, [sp, #0x50]
00003474 str      x23, [x19]
00003478 b        #0x34dc
0000347c ldr      w0, [x19, #0x10]
00003480 str      x27, [x19, #0x20]
00003484 cbnz     w0, #0x3364
00003488 b        #0x335c
0000348c ldr      x2, [x19, #0x18]
00003490 mov      x1, x0
00003494 bl       #0xc794
00003498 cbz      x0, #0x34c0
0000349c ldr      x1, [x19, #0x28]
000034a0 str      x0, [x19, #0x18]
000034a4 ldr      x26, [x19, #0x18]
000034a8 add      x15, x1, #1
000034ac mov      w12, #-0x78000000
000034b0 mov      w27, wzr
000034b4 str      x15, [x19, #0x28]
000034b8 str      w12, [x26, x1, lsl #2]
000034bc b        #0x34dc
000034c0 ldr      w6, [x19, #0x10]
000034c4 str      x26, [x19, #0x20]
000034c8 cbnz     w6, #0x345c
000034cc b        #0x3454
000034d0 mov      w27, wzr
000034d4 sub      x28, x26, #1
000034d8 mov      x21, x26
000034dc ldp      x8, x24, [x19]
000034e0 ldr      x25, [x19, #0x28]
000034e4 b        #0x3708
000034e8 mov      w3, #0x100
000034ec b        #0x3dd4
000034f0 ldr      x2, [x19, #0x18]
000034f4 mov      x1, x0
000034f8 bl       #0xc794
000034fc cbz      x0, #0x35d8
00003500 ldr      x4, [x19, #0x28]
00003504 str      x0, [x19, #0x18]
00003508 ldr      x7, [x19, #0x18]
0000350c add      x2, x4, #1
00003510 mov      w17, #0x28000000
00003514 mov      w9, wzr
00003518 str      x2, [x19, #0x28]
0000351c str      w17, [x7, x4, lsl #2]
00003520 b        #0x3ac0
00003524 ldr      w6, [x19, #0x10]
00003528 str      x22, [x19, #0x20]
0000352c cbnz     w6, #0x37e4
00003530 b        #0x37dc
00003534 ldr      w13, [x19, #0x10]
00003538 str      x22, [x19, #0x20]
0000353c cbnz     w13, #0x38bc
00003540 b        #0x38b4
00003544 ldr      w3, [x19, #0x10]
00003548 str      x24, [x19, #0x20]
0000354c cbnz     w3, #0x3a58
00003550 b        #0x3a50
00003554 ldr      w16, [x19, #0x10]
00003558 str      x22, [x19, #0x20]
0000355c cbnz     w16, #0x4110
00003560 b        #0x4108
00003564 ldr      w0, [x19, #0x10]
00003568 str      x22, [x19, #0x20]
0000356c cbnz     w0, #0x3e9c
00003570 b        #0x3e94
00003574 ldr      w13, [x19, #0x10]
00003578 str      x23, [x19, #0x20]
0000357c cbnz     w13, #0x3f04
00003580 b        #0x3efc
00003584 ldr      w4, [x19, #0x10]
00003588 str      x22, [x19, #0x20]
0000358c cbnz     w4, #0x3f70
00003590 b        #0x3f68
00003594 ldr      w16, [x19, #0x10]
00003598 str      x22, [x19, #0x20]
0000359c cbnz     w16, #0x42ec
000035a0 b        #0x42e4
000035a4 mov      w3, wzr
000035a8 ldr      w15, [x19, #0x10]
000035ac cbnz     w15, #0x35b4
000035b0 str      w4, [x19, #0x10]
000035b4 ldr      q0, [sp, #0x20]
000035b8 str      q0, [sp, #0x110]
000035bc ldr      x24, [sp, #0x118]
000035c0 str      x24, [x19, #8]
000035c4 ldr      x7, [sp, #0x110]
000035c8 str      x7, [x19]
000035cc cmp      w2, w3
000035d0 b.le     #0x3dd4
000035d4 b        #0x3ca4
000035d8 ldr      w9, [x19, #0x10]
000035dc str      x24, [x19, #0x20]
000035e0 cbnz     w9, #0x397c
000035e4 b        #0x3974
000035e8 ldr      x2, [x19, #0x18]
000035ec mov      x1, x0
000035f0 bl       #0xc794
000035f4 cbz      x0, #0x36b4
000035f8 ldr      x17, [x19, #0x28]
000035fc str      x0, [x19, #0x18]
00003600 ldr      x7, [x19, #0x18]
00003604 add      x2, x17, #1
00003608 mov      w8, #-0x78000000
0000360c str      x2, [x19, #0x28]
00003610 str      w8, [x7, x17, lsl #2]
00003614 ldr      w24, [x19, #0x10]
00003618 cbnz     w24, #0x440c
0000361c ldr      x14, [x19, #0x28]
00003620 ldr      x13, [x19, #0x18]
00003624 add      x8, x13, x14, lsl #2
00003628 ldur     w9, [x8, #-4]
0000362c and      w11, w9, #0xf8000000
00003630 orr      w9, w11, #1
00003634 stur     w9, [x8, #-4]
00003638 ldr      w11, [x19, #0x10]
0000363c cbnz     w11, #0x440c
00003640 ldp      x26, x16, [x19, #0x20]
00003644 cmp      x16, x26
00003648 b.lo     #0x36dc
0000364c add      x11, x26, #1
00003650 lsr      x17, x11, #1
00003654 add      x3, x17, x17, lsl #1
00003658 cmp      x26, x3
0000365c b.hs     #0x36dc
00003660 ldp      x16, x9, [x19, #0x30]
00003664 str      x3, [x19, #0x20]
00003668 lsl      x0, x3, #2
0000366c mov      w22, #1
00003670 ldr      x15, [x9, #0x10]
00003674 lsr      x4, x16, #3
00003678 add      x3, x0, x16, lsl #5
0000367c movk     w22, #0x800, lsl #16
00003680 madd     x1, x15, x4, x3
00003684 cmp      x1, x22
00003688 b.lo     #0x36c4
0000368c str      x26, [x19, #0x20]
00003690 mov      w17, #0xc
00003694 str      w17, [x19, #0x10]
00003698 ldr      q0, [sp, #0x20]
0000369c str      q0, [sp, #0xb0]
000036a0 ldr      x5, [sp, #0xb8]
000036a4 str      x5, [x19, #8]
000036a8 ldr      x26, [sp, #0xb0]
000036ac str      x26, [x19]
000036b0 b        #0x440c
000036b4 ldr      w23, [x19, #0x10]
000036b8 str      x24, [x19, #0x20]
000036bc cbnz     w23, #0x43c0
000036c0 b        #0x43b8
000036c4 ldr      x2, [x19, #0x18]
000036c8 mov      x1, x0
000036cc bl       #0xc794
000036d0 cbz      x0, #0x36f8
000036d4 ldr      x16, [x19, #0x28]
000036d8 str      x0, [x19, #0x18]
000036dc ldr      x0, [x19, #0x18]
000036e0 mov      w1, #-0x70000000
000036e4 add      x10, x16, #1
000036e8 add      w12, w1, #2
000036ec str      x10, [x19, #0x28]
000036f0 str      w12, [x0, x16, lsl #2]
000036f4 b        #0x440c
000036f8 ldr      w8, [x19, #0x10]
000036fc str      x26, [x19, #0x20]
00003700 cbnz     w8, #0x3698
00003704 b        #0x3690
00003708 cmp      x8, x24
0000370c b.hs     #0x32a4
00003710 ldrb     w13, [x8]
00003714 cmp      w13, #0x7c
00003718 ccmp     w13, w20, #4, ne
0000371c b.eq     #0x32a4
00003720 add      x22, x8, #1
00003724 ldr      x26, [x19, #0x28]
00003728 str      x22, [x19]
0000372c ldrb     w1, [x8]
00003730 sub      w12, w1, #0x24
00003734 cmp      w12, #0x58
00003738 b.hi     #0x3ab4
0000373c adrp     x11, #0x10000
00003740 add      x11, x11, #0x6c0
00003744 ldr      x7, [x11, x12, lsl #3]
00003748 br       x7
0000374c ldr      w1, [x19, #0x10]
00003750 cbnz     w1, #0x375c
00003754 mov      w9, #0xd
00003758 str      w9, [x19, #0x10]
0000375c ldr      q0, [sp, #0x20]
00003760 mov      w9, wzr
00003764 stur     q0, [x29, #-0xa0]
00003768 ldur     x23, [x29, #-0x98]
0000376c str      x23, [x19, #8]
00003770 ldur     x8, [x29, #-0xa0]
00003774 str      x8, [x19]
00003778 b        #0x3ac0
0000377c ldr      w5, [x19, #0x10]
00003780 cbnz     w5, #0x401c
00003784 ldr      x22, [x19, #0x20]
00003788 mov      x9, x26
0000378c cmp      x26, x22
00003790 b.lo     #0x4008
00003794 add      x14, x22, #1
00003798 lsr      x17, x14, #1
0000379c add      x11, x17, x17, lsl #1
000037a0 mov      x9, x26
000037a4 cmp      x22, x11
000037a8 b.hs     #0x4008
000037ac ldp      x1, x15, [x19, #0x30]
000037b0 str      x11, [x19, #0x20]
000037b4 lsl      x0, x11, #2
000037b8 mov      w24, #1
000037bc ldr      x3, [x15, #0x10]
000037c0 lsr      x4, x1, #3
000037c4 add      x5, x0, x1, lsl #5
000037c8 movk     w24, #0x800, lsl #16
000037cc madd     x6, x3, x4, x5
000037d0 cmp      x6, x24
000037d4 b.lo     #0x3ff0
000037d8 str      x22, [x19, #0x20]
000037dc mov      w3, #0xc
000037e0 str      w3, [x19, #0x10]
000037e4 ldr      q0, [sp, #0x20]
000037e8 stur     q0, [x29, #-0xc0]
000037ec ldur     x24, [x29, #-0xb8]
000037f0 str      x24, [x19, #8]
000037f4 ldur     x7, [x29, #-0xc0]
000037f8 str      x7, [x19]
000037fc b        #0x401c
00003800 cmp      x22, x24
00003804 b.lo     #0x3830
00003808 ldr      w10, [x19, #0x10]
0000380c cbnz     w10, #0x3818
00003810 mov      w14, #8
00003814 str      w14, [x19, #0x10]
00003818 ldr      q0, [sp, #0x20]
0000381c stur     q0, [x29, #-0xf0]
00003820 ldur     x0, [x29, #-0xe8]
00003824 str      x0, [x19, #8]
00003828 ldur     x2, [x29, #-0xf0]
0000382c str      x2, [x19]
00003830 ldr      x24, [x19, #0x38]
00003834 ldr      x13, [x24, #0x88]
00003838 add      x14, x13, #1
0000383c str      x14, [x24, #0x88]
00003840 ldr      x15, [x19, #0x38]
00003844 ldr      x24, [x15, #0x88]
00003848 cmp      x24, #9
0000384c b.hi     #0x385c
00003850 ldr      x23, [x19, #0x28]
00003854 add      x16, x19, x24, lsl #3
00003858 str      x23, [x16, #0x40]
0000385c ldr      w12, [x19, #0x10]
00003860 cbnz     w12, #0x4074
00003864 ldp      x22, x14, [x19, #0x20]
00003868 cmp      x14, x22
0000386c b.lo     #0x405c
00003870 add      x17, x22, #1
00003874 lsr      x8, x17, #1
00003878 add      x9, x8, x8, lsl #1
0000387c cmp      x22, x9
00003880 b.hs     #0x405c
00003884 ldp      x10, x1, [x19, #0x30]
00003888 str      x9, [x19, #0x20]
0000388c lsl      x0, x9, #2
00003890 ldr      x12, [x1, #0x10]
00003894 lsr      x11, x10, #3
00003898 add      x9, x0, x10, lsl #5
0000389c madd     x14, x12, x11, x9
000038a0 mov      w11, #1
000038a4 movk     w11, #0x800, lsl #16
000038a8 cmp      x14, x11
000038ac b.lo     #0x4044
000038b0 str      x22, [x19, #0x20]
000038b4 mov      w4, #0xc
000038b8 str      w4, [x19, #0x10]
000038bc ldr      q0, [sp, #0x20]
000038c0 stur     q0, [x29, #-0x100]
000038c4 ldur     x22, [x29, #-0xf8]
000038c8 str      x22, [x19, #8]
000038cc ldur     x13, [x29, #-0x100]
000038d0 str      x13, [x19]
000038d4 b        #0x4074
000038d8 ldr      w0, [x19, #0x10]
000038dc cbnz     w0, #0x38e8
000038e0 mov      w16, #8
000038e4 str      w16, [x19, #0x10]
000038e8 ldr      q0, [sp, #0x20]
000038ec mov      w9, wzr
000038f0 stur     q0, [x29, #-0xe0]
000038f4 ldur     x8, [x29, #-0xd8]
000038f8 str      x8, [x19, #8]
000038fc ldur     x10, [x29, #-0xe0]
00003900 str      x10, [x19]
00003904 b        #0x3ac0
00003908 ldr      x13, [x19, #0x38]
0000390c ldrb     w23, [x13, #0x30]
00003910 tbnz     w23, #3, #0x3d74
00003914 ldr      w24, [x19, #0x10]
00003918 cbnz     w24, #0x3abc
0000391c ldr      x24, [x19, #0x20]
00003920 mov      x4, x26
00003924 cmp      x26, x24
00003928 b.lo     #0x3508
0000392c add      x6, x24, #1
00003930 lsr      x10, x6, #1
00003934 add      x14, x10, x10, lsl #1
00003938 mov      x4, x26
0000393c cmp      x24, x14
00003940 b.hs     #0x3508
00003944 ldr      x12, [x19, #0x30]
00003948 lsl      x0, x14, #2
0000394c str      x14, [x19, #0x20]
00003950 mov      w10, #1
00003954 ldr      x11, [x13, #0x10]
00003958 movk     w10, #0x800, lsl #16
0000395c lsr      x9, x12, #3
00003960 add      x14, x0, x12, lsl #5
00003964 madd     x22, x11, x9, x14
00003968 cmp      x22, x10
0000396c b.lo     #0x34f0
00003970 str      x24, [x19, #0x20]
00003974 mov      w6, #0xc
00003978 str      w6, [x19, #0x10]
0000397c ldr      q0, [sp, #0x20]
00003980 mov      w9, wzr
00003984 stur     q0, [x29, #-0x90]
00003988 ldur     x13, [x29, #-0x88]
0000398c str      x13, [x19, #8]
00003990 ldur     x15, [x29, #-0x90]
00003994 str      x15, [x19]
00003998 b        #0x3ac0
0000399c mov      x0, x19
000039a0 bl       #0x5598
000039a4 b        #0x3abc
000039a8 cmp      x22, x24
000039ac b.lo     #0x39e0
000039b0 ldr      w11, [x19, #0x10]
000039b4 cbnz     w11, #0x39c0
000039b8 mov      w2, #5
000039bc str      w2, [x19, #0x10]
000039c0 ldr      q0, [sp, #0x20]
000039c4 adrp     x22, #0x13000
000039c8 add      x22, x22, #0xd0
000039cc stur     q0, [x29, #-0x80]
000039d0 ldur     x16, [x29, #-0x78]
000039d4 str      x16, [x19, #8]
000039d8 ldur     x17, [x29, #-0x80]
000039dc str      x17, [x19]
000039e0 add      x8, x22, #1
000039e4 str      x8, [x19]
000039e8 ldrb     w1, [x22]
000039ec b        #0x3ab4
000039f0 ldr      w2, [x19, #0x10]
000039f4 cbnz     w2, #0x4158
000039f8 ldr      x24, [x19, #0x20]
000039fc mov      x11, x26
00003a00 cmp      x26, x24
00003a04 b.lo     #0x4144
00003a08 add      x9, x24, #1
00003a0c lsr      x12, x9, #1
00003a10 add      x12, x12, x12, lsl #1
00003a14 mov      x11, x26
00003a18 cmp      x24, x12
00003a1c b.hs     #0x4144
00003a20 ldp      x11, x0, [x19, #0x30]
00003a24 str      x12, [x19, #0x20]
00003a28 mov      w2, #1
00003a2c movk     w2, #0x800, lsl #16
00003a30 ldr      x9, [x0, #0x10]
00003a34 lsr      x14, x11, #3
00003a38 lsl      x0, x12, #2
00003a3c add      x22, x0, x11, lsl #5
00003a40 madd     x13, x9, x14, x22
00003a44 cmp      x13, x2
00003a48 b.lo     #0x412c
00003a4c str      x24, [x19, #0x20]
00003a50 mov      w7, #0xc
00003a54 str      w7, [x19, #0x10]
00003a58 ldr      q0, [sp, #0x20]
00003a5c stur     q0, [x29, #-0xd0]
00003a60 ldur     x15, [x29, #-0xc8]
00003a64 str      x15, [x19, #8]
00003a68 ldur     x16, [x29, #-0xd0]
00003a6c str      x16, [x19]
00003a70 b        #0x4158
00003a74 cmp      x22, x24
00003a78 b.hs     #0x3ab4
00003a7c ldrb     w4, [x22]
00003a80 sub      w5, w4, #0x30
00003a84 cmp      w5, #9
00003a88 b.hi     #0x3ab4
00003a8c ldr      w8, [x19, #0x10]
00003a90 cbnz     w8, #0x3a9c
00003a94 mov      w11, #0xd
00003a98 str      w11, [x19, #0x10]
00003a9c ldr      q0, [sp, #0x20]
00003aa0 stur     q0, [x29, #-0x70]
00003aa4 ldur     x3, [x29, #-0x68]
00003aa8 str      x3, [x19, #8]
00003aac ldur     x4, [x29, #-0x70]
00003ab0 str      x4, [x19]
00003ab4 mov      x0, x19
00003ab8 bl       #0x7770
00003abc mov      w9, wzr
00003ac0 ldp      x8, x24, [x19]
00003ac4 cmp      x8, x24
00003ac8 b.hs     #0x3708
00003acc ldrb     w10, [x8]
00003ad0 sub      w6, w10, #0x2a
00003ad4 cmp      w6, #2
00003ad8 b.lo     #0x3b08
00003adc cmp      w10, #0x3f
00003ae0 b.eq     #0x3b08
00003ae4 cmp      w10, #0x7b
00003ae8 b.ne     #0x3708
00003aec add      x23, x8, #1
00003af0 cmp      x23, x24
00003af4 b.hs     #0x3708
00003af8 ldrb     w7, [x23]
00003afc sub      w2, w7, #0x30
00003b00 cmp      w2, #9
00003b04 b.hi     #0x3708
00003b08 add      x11, x8, #1
00003b0c str      x11, [x19]
00003b10 cbz      w9, #0x3b48
00003b14 ldr      w12, [x19, #0x10]
00003b18 cbnz     w12, #0x3b24
00003b1c mov      w24, #0xd
00003b20 str      w24, [x19, #0x10]
00003b24 ldr      q0, [sp, #0x20]
00003b28 adrp     x24, #0x13000
00003b2c add      x24, x24, #0xd0
00003b30 mov      x11, x24
00003b34 str      q0, [sp, #0x130]
00003b38 ldr      x1, [sp, #0x138]
00003b3c str      x1, [x19, #8]
00003b40 ldr      x5, [sp, #0x130]
00003b44 str      x5, [x19]
00003b48 cmp      w10, #0x3e
00003b4c b.gt     #0x3b9c
00003b50 cmp      w10, #0x2a
00003b54 b.eq     #0x3cfc
00003b58 cmp      w10, #0x2b
00003b5c b.ne     #0x440c
00003b60 ldr      x5, [x19, #0x28]
00003b64 mov      w6, #1
00003b68 sub      x24, x6, x26
00003b6c mov      x0, x19
00003b70 mov      w1, #0x48000000
00003b74 add      x2, x24, x5
00003b78 mov      x3, x26
00003b7c bl       #0x53c4
00003b80 ldr      w17, [x19, #0x10]
00003b84 cbnz     w17, #0x440c
00003b88 ldp      x22, x24, [x19, #0x20]
00003b8c cmp      x24, x22
00003b90 b.hs     #0x3e4c
00003b94 mov      x7, x24
00003b98 b        #0x4214
00003b9c cmp      w10, #0x3f
00003ba0 b.eq     #0x3d38
00003ba4 cmp      w10, #0x7b
00003ba8 b.ne     #0x440c
00003bac cmp      x11, x24
00003bb0 b.hs     #0x3da4
00003bb4 mov      w2, wzr
00003bb8 mov      w10, wzr
00003bbc mov      w4, #0xa
00003bc0 cmp      w2, #0xff
00003bc4 b.gt     #0x3e10
00003bc8 ldrb     w8, [x11]
00003bcc sub      w13, w8, #0x30
00003bd0 cmp      w13, #9
00003bd4 b.hi     #0x3e10
00003bd8 add      x9, x11, #1
00003bdc add      w10, w10, #1
00003be0 cmp      x9, x24
00003be4 str      x9, [x19]
00003be8 ldrb     w12, [x11]
00003bec mov      x11, x9
00003bf0 madd     w14, w2, w4, w12
00003bf4 sub      w2, w14, #0x30
00003bf8 b.lo     #0x3bc0
00003bfc cmp      w2, #0xff
00003c00 b.gt     #0x3dac
00003c04 cmp      w10, #0
00003c08 b.le     #0x3dac
00003c0c cmp      x9, x24
00003c10 b.hs     #0x3f8c
00003c14 ldrb     w16, [x9]
00003c18 cmp      w16, #0x2c
00003c1c b.ne     #0x3f8c
00003c20 add      x22, x9, #1
00003c24 str      x22, [x19]
00003c28 ldrb     w11, [x9, #1]
00003c2c sub      w15, w11, #0x30
00003c30 cmp      w15, #9
00003c34 b.hi     #0x34e8
00003c38 cmp      x22, x24
00003c3c b.hs     #0x35a4
00003c40 mov      w3, wzr
00003c44 mov      w8, wzr
00003c48 add      x12, x9, #2
00003c4c cmp      w3, #0xff
00003c50 b.gt     #0x3c8c
00003c54 and      w9, w11, #0xff
00003c58 sub      w17, w9, #0x30
00003c5c cmp      w17, #9
00003c60 b.hi     #0x3c8c
00003c64 str      x12, [x19]
00003c68 add      w8, w8, #1
00003c6c ldurb    w13, [x12, #-1]
00003c70 cmp      x12, x24
00003c74 madd     w0, w3, w4, w13
00003c78 sub      w3, w0, #0x30
00003c7c b.hs     #0x3c8c
00003c80 ldrb     w11, [x12], #1
00003c84 cmp      w3, #0xff
00003c88 b.le     #0x3c54
00003c8c cmp      w3, #0xff
00003c90 b.gt     #0x35a8
00003c94 cmp      w8, #0
00003c98 b.le     #0x35a8
00003c9c cmp      w2, w3
00003ca0 b.le     #0x3dd4
00003ca4 ldr      w14, [x19, #0x10]
00003ca8 cbnz     w14, #0x3cb0
00003cac str      w4, [x19, #0x10]
00003cb0 ldr      q0, [sp, #0x20]
00003cb4 str      q0, [sp, #0x100]
00003cb8 ldr      x8, [sp, #0x108]
00003cbc str      x8, [x19, #8]
00003cc0 ldr      x10, [sp, #0x100]
00003cc4 str      x10, [x19]
00003cc8 b        #0x3dd4
00003ccc ldr      w22, [x19, #0x10]
00003cd0 cbnz     w22, #0x3cdc
00003cd4 mov      w5, #0xe
00003cd8 str      w5, [x19, #0x10]
00003cdc ldr      q0, [sp, #0x20]
00003ce0 mov      w9, wzr
00003ce4 stur     q0, [x29, #-0xb0]
00003ce8 ldur     x2, [x29, #-0xa8]
00003cec str      x2, [x19, #8]
00003cf0 ldur     x0, [x29, #-0xb0]
00003cf4 str      x0, [x19]
00003cf8 b        #0x3ac0
00003cfc ldr      x6, [x19, #0x28]
00003d00 mov      w24, #1
00003d04 sub      x24, x24, x26
00003d08 mov      x0, x19
00003d0c mov      w1, #0x48000000
00003d10 add      x2, x6, x24
00003d14 mov      x3, x26
00003d18 bl       #0x53c4
00003d1c ldr      w10, [x19, #0x10]
00003d20 cbnz     w10, #0x4268
00003d24 ldp      x23, x22, [x19, #0x20]
00003d28 cmp      x22, x23
00003d2c b.hs     #0x3eb4
00003d30 mov      x5, x22
00003d34 b        #0x424c
00003d38 ldr      x14, [x19, #0x28]
00003d3c mov      w13, #1
00003d40 sub      x16, x13, x26
00003d44 mov      w1, #0x78000000
00003d48 mov      x0, x19
00003d4c add      x2, x16, x14
00003d50 mov      x3, x26
00003d54 bl       #0x53c4
00003d58 ldr      w3, [x19, #0x10]
00003d5c cbnz     w3, #0x440c
00003d60 ldp      x22, x24, [x19, #0x20]
00003d64 cmp      x24, x22
00003d68 b.hs     #0x3f20
00003d6c mov      x2, x24
00003d70 b        #0x4320
00003d74 sub      x6, x29, #0x54
00003d78 mov      w0, #0xa5e
00003d7c movk     w0, #0x5d, lsl #16
00003d80 str      x6, [x19]
00003d84 ldr      x8, [sp, #0x10]
00003d88 str      x8, [x19, #8]
00003d8c stur     w0, [x29, #-0x54]
00003d90 mov      x0, x19
00003d94 bl       #0x5598
00003d98 mov      w9, wzr
00003d9c stp      x22, x24, [x19]
00003da0 b        #0x3ac0
00003da4 mov      w2, wzr
00003da8 mov      w4, #0xa
00003dac ldr      w10, [x19, #0x10]
00003db0 cbnz     w10, #0x3db8
00003db4 str      w4, [x19, #0x10]
00003db8 ldr      q0, [sp, #0x20]
00003dbc mov      w3, w2
00003dc0 str      q0, [sp, #0x120]
00003dc4 ldr      x22, [sp, #0x128]
00003dc8 str      x22, [x19, #8]
00003dcc ldr      x6, [sp, #0x120]
00003dd0 str      x6, [x19]
00003dd4 mov      x0, x19
00003dd8 mov      x1, x26
00003ddc mov      x4, xzr
00003de0 bl       #0x793c
00003de4 ldp      x10, x8, [x19]
00003de8 cmp      x10, x8
00003dec b.hs     #0x3e08
00003df0 ldrb     w9, [x10]
00003df4 cmp      w9, #0x7d
00003df8 b.ne     #0x3e20
00003dfc add      x12, x10, #1
00003e00 str      x12, [x19]
00003e04 b        #0x440c
00003e08 mov      w12, #0xa
00003e0c b        #0x3f98
00003e10 mov      x9, x11
00003e14 cmp      w2, #0xff
00003e18 b.le     #0x3c04
00003e1c b        #0x3dac
00003e20 add      x10, x10, #1
00003e24 mov      w12, #0xa
00003e28 b        #0x3e30
00003e2c ldrb     w9, [x10], #1
00003e30 and      w11, w9, #0xff
00003e34 cmp      w11, #0x7d
00003e38 b.eq     #0x3f94
00003e3c cmp      x10, x8
00003e40 str      x10, [x19]
00003e44 b.lo     #0x3e2c
00003e48 b        #0x3f98
00003e4c add      x13, x22, #1
00003e50 lsr      x7, x13, #1
00003e54 add      x16, x7, x7, lsl #1
00003e58 mov      x7, x24
00003e5c cmp      x22, x16
00003e60 b.hs     #0x4214
00003e64 ldp      x2, x14, [x19, #0x30]
00003e68 str      x16, [x19, #0x20]
00003e6c lsl      x0, x16, #2
00003e70 mov      w7, #1
00003e74 ldr      x8, [x14, #0x10]
00003e78 lsr      x10, x2, #3
00003e7c add      x12, x0, x2, lsl #5
00003e80 movk     w7, #0x800, lsl #16
00003e84 madd     x11, x8, x10, x12
00003e88 cmp      x11, x7
00003e8c b.lo     #0x41fc
00003e90 str      x22, [x19, #0x20]
00003e94 mov      w16, #0xc
00003e98 str      w16, [x19, #0x10]
00003e9c ldr      q0, [sp, #0x20]
00003ea0 str      q0, [sp, #0xa0]
00003ea4 ldr      x0, [sp, #0xa8]
00003ea8 str      x0, [x19, #8]
00003eac ldr      x23, [sp, #0xa0]
00003eb0 b        #0x3fe8
00003eb4 add      x11, x23, #1
00003eb8 lsr      x7, x11, #1
00003ebc add      x13, x7, x7, lsl #1
00003ec0 mov      x5, x22
00003ec4 cmp      x23, x13
00003ec8 b.hs     #0x424c
00003ecc ldp      x2, x9, [x19, #0x30]
00003ed0 str      x13, [x19, #0x20]
00003ed4 lsl      x0, x13, #2
00003ed8 mov      w14, #1
00003edc ldr      x8, [x9, #0x10]
00003ee0 lsr      x10, x2, #3
00003ee4 add      x12, x0, x2, lsl #5
00003ee8 movk     w14, #0x800, lsl #16
00003eec madd     x11, x8, x10, x12
00003ef0 cmp      x11, x14
00003ef4 b.lo     #0x4234
00003ef8 str      x23, [x19, #0x20]
00003efc mov      w15, #0xc
00003f00 str      w15, [x19, #0x10]
00003f04 ldr      q0, [sp, #0x20]
00003f08 str      q0, [sp, #0x90]
00003f0c ldr      x0, [sp, #0x98]
00003f10 str      x0, [x19, #8]
00003f14 ldr      x23, [sp, #0x90]
00003f18 str      x23, [x19]
00003f1c b        #0x4268
00003f20 add      x16, x22, #1
00003f24 lsr      x17, x16, #1
00003f28 add      x17, x17, x17, lsl #1
00003f2c mov      x2, x24
00003f30 cmp      x22, x17
00003f34 b.hs     #0x4320
00003f38 ldp      x3, x1, [x19, #0x30]
00003f3c str      x17, [x19, #0x20]
00003f40 lsl      x0, x17, #2
00003f44 mov      w6, #1
00003f48 ldr      x15, [x1, #0x10]
00003f4c lsr      x4, x3, #3
00003f50 add      x1, x0, x3, lsl #5
00003f54 movk     w6, #0x800, lsl #16
00003f58 madd     x5, x15, x4, x1
00003f5c cmp      x5, x6
00003f60 b.lo     #0x4308
00003f64 str      x22, [x19, #0x20]
00003f68 mov      w2, #0xc
00003f6c str      w2, [x19, #0x10]
00003f70 ldr      q0, [sp, #0x20]
00003f74 str      q0, [sp, #0xd0]
00003f78 ldr      x26, [sp, #0xd8]
00003f7c str      x26, [x19, #8]
00003f80 ldr      x22, [sp, #0xd0]
00003f84 str      x22, [x19]
00003f88 b        #0x440c
00003f8c mov      w3, w2
00003f90 b        #0x3dd4
00003f94 sub      x10, x10, #1
00003f98 ldr      w11, [x19, #0x10]
00003f9c cmp      x10, x8
00003fa0 b.hs     #0x3fb0
00003fa4 cbnz     w11, #0x3fd4
00003fa8 str      w12, [x19, #0x10]
00003fac b        #0x3fd4
00003fb0 cbnz     w11, #0x3fbc
00003fb4 mov      w8, #9
00003fb8 str      w8, [x19, #0x10]
00003fbc ldr      q0, [sp, #0x20]
00003fc0 str      q0, [sp, #0xf0]
00003fc4 ldr      x2, [sp, #0xf8]
00003fc8 str      x2, [x19, #8]
00003fcc ldr      x12, [sp, #0xf0]
00003fd0 str      x12, [x19]
00003fd4 ldr      q0, [sp, #0x20]
00003fd8 str      q0, [sp, #0xe0]
00003fdc ldr      x11, [sp, #0xe8]
00003fe0 str      x11, [x19, #8]
00003fe4 ldr      x23, [sp, #0xe0]
00003fe8 str      x23, [x19]
00003fec b        #0x440c
00003ff0 ldr      x2, [x19, #0x18]
00003ff4 mov      x1, x0
00003ff8 bl       #0xc794
00003ffc cbz      x0, #0x3524
00004000 ldr      x9, [x19, #0x28]
00004004 str      x0, [x19, #0x18]
00004008 ldr      x16, [x19, #0x18]
0000400c add      x17, x9, #1
00004010 mov      w10, #0x20000000
00004014 str      x17, [x19, #0x28]
00004018 str      w10, [x16, x9, lsl #2]
0000401c ldr      x1, [x19, #0x38]
00004020 mov      w9, wzr
00004024 ldr      w7, [x1, #0x50]
00004028 orr      w0, w7, #2
0000402c str      w0, [x1, #0x50]
00004030 ldr      x3, [x19, #0x38]
00004034 ldr      x4, [x3, #0x60]
00004038 add      x5, x4, #1
0000403c str      x5, [x3, #0x60]
00004040 b        #0x3ac0
00004044 ldr      x2, [x19, #0x18]
00004048 mov      x1, x0
0000404c bl       #0xc794
00004050 cbz      x0, #0x3534
00004054 ldr      x14, [x19, #0x28]
00004058 str      x0, [x19, #0x18]
0000405c ldr      x3, [x19, #0x18]
00004060 mov      w13, #0x68000000
00004064 add      x4, x14, #1
00004068 orr      w15, w24, w13
0000406c str      x4, [x19, #0x28]
00004070 str      w15, [x3, x14, lsl #2]
00004074 ldp      x10, x15, [x19]
00004078 cmp      x10, x15
0000407c b.hs     #0x408c
00004080 ldrb     w14, [x10]
00004084 cmp      w14, #0x29
00004088 b.eq     #0x409c
0000408c ldr      x2, [sp, #0x18]
00004090 mov      x0, x19
00004094 mov      w1, #0x29
00004098 bl       #0x31d4
0000409c cmp      x24, #9
000040a0 b.hi     #0x40b0
000040a4 ldr      x16, [x19, #0x28]
000040a8 add      x5, x19, x24, lsl #3
000040ac str      x16, [x5, #0x90]
000040b0 ldr      w14, [x19, #0x10]
000040b4 cbnz     w14, #0x41ac
000040b8 ldp      x22, x15, [x19, #0x20]
000040bc cmp      x15, x22
000040c0 b.lo     #0x4198
000040c4 add      x6, x22, #1
000040c8 lsr      x17, x6, #1
000040cc add      x10, x17, x17, lsl #1
000040d0 cmp      x22, x10
000040d4 b.hs     #0x4198
000040d8 ldp      x1, x7, [x19, #0x30]
000040dc str      x10, [x19, #0x20]
000040e0 lsl      x0, x10, #2
000040e4 mov      w12, #1
000040e8 ldr      x3, [x7, #0x10]
000040ec lsr      x4, x1, #3
000040f0 add      x5, x0, x1, lsl #5
000040f4 movk     w12, #0x800, lsl #16
000040f8 madd     x6, x3, x4, x5
000040fc cmp      x6, x12
00004100 b.lo     #0x4180
00004104 str      x22, [x19, #0x20]
00004108 mov      w5, #0xc
0000410c str      w5, [x19, #0x10]
00004110 ldr      q0, [sp, #0x20]
00004114 str      q0, [sp, #0x150]
00004118 ldr      x24, [sp, #0x158]
0000411c str      x24, [x19, #8]
00004120 ldr      x7, [sp, #0x150]
00004124 str      x7, [x19]
00004128 b        #0x41ac
0000412c ldr      x2, [x19, #0x18]
00004130 mov      x1, x0
00004134 bl       #0xc794
00004138 cbz      x0, #0x3544
0000413c ldr      x11, [x19, #0x28]
00004140 str      x0, [x19, #0x18]
00004144 ldr      x10, [x19, #0x18]
00004148 add      x22, x11, #1
0000414c mov      w3, #0x18000000
00004150 str      x22, [x19, #0x28]
00004154 str      w3, [x10, x11, lsl #2]
00004158 ldr      x12, [x19, #0x38]
0000415c mov      w9, #1
00004160 ldr      w4, [x12, #0x50]
00004164 orr      w17, w4, #1
00004168 str      w17, [x12, #0x50]
0000416c ldr      x23, [x19, #0x38]
00004170 ldr      x24, [x23, #0x58]
00004174 add      x13, x24, #1
00004178 str      x13, [x23, #0x58]
0000417c b        #0x3ac0
00004180 ldr      x2, [x19, #0x18]
00004184 mov      x1, x0
00004188 bl       #0xc794
0000418c cbz      x0, #0x3554
00004190 ldr      x15, [x19, #0x28]
00004194 str      x0, [x19, #0x18]
00004198 ldr      x2, [x19, #0x18]
0000419c add      x8, x15, #1
000041a0 orr      w16, w24, #0x70000000
000041a4 str      x8, [x19, #0x28]
000041a8 str      w16, [x2, x15, lsl #2]
000041ac ldp      x0, x2, [x19]
000041b0 cmp      x0, x2
000041b4 b.hs     #0x41cc
000041b8 add      x11, x0, #1
000041bc str      x11, [x19]
000041c0 ldrb     w15, [x0]
000041c4 cmp      w15, #0x29
000041c8 b.eq     #0x3abc
000041cc ldr      w17, [x19, #0x10]
000041d0 cbnz     w17, #0x41dc
000041d4 mov      w15, #8
000041d8 str      w15, [x19, #0x10]
000041dc ldr      q0, [sp, #0x20]
000041e0 mov      w9, wzr
000041e4 str      q0, [sp, #0x140]
000041e8 ldr      x0, [sp, #0x148]
000041ec str      x0, [x19, #8]
000041f0 ldr      x23, [sp, #0x140]
000041f4 str      x23, [x19]
000041f8 b        #0x3ac0
000041fc ldr      x2, [x19, #0x18]
00004200 mov      x1, x0
00004204 bl       #0xc794
00004208 cbz      x0, #0x3564
0000420c ldr      x7, [x19, #0x28]
00004210 str      x0, [x19, #0x18]
00004214 sub      x9, x24, x26
00004218 ldr      x24, [x19, #0x18]
0000421c mov      w10, #0x50000000
00004220 add      x15, x7, #1
00004224 orr      w2, w9, w10
00004228 str      x15, [x19, #0x28]
0000422c str      w2, [x24, x7, lsl #2]
00004230 b        #0x440c
00004234 ldr      x2, [x19, #0x18]
00004238 mov      x1, x0
0000423c bl       #0xc794
00004240 cbz      x0, #0x3574
00004244 ldr      x5, [x19, #0x28]
00004248 str      x0, [x19, #0x18]
0000424c sub      x9, x22, x26
00004250 ldr      x0, [x19, #0x18]
00004254 mov      w13, #0x50000000
00004258 add      x10, x5, #1
0000425c orr      w15, w9, w13
00004260 str      x10, [x19, #0x28]
00004264 str      w15, [x0, x5, lsl #2]
00004268 ldr      x14, [x19, #0x28]
0000426c mov      x0, x19
00004270 mov      w1, #0x58000000
00004274 mov      x3, x26
00004278 add      x2, x14, x24
0000427c bl       #0x53c4
00004280 ldr      w14, [x19, #0x10]
00004284 cbnz     w14, #0x440c
00004288 ldp      x22, x24, [x19, #0x20]
0000428c cmp      x24, x22
00004290 b.hs     #0x429c
00004294 mov      x6, x24
00004298 b        #0x43f4
0000429c add      x12, x22, #1
000042a0 lsr      x13, x12, #1
000042a4 add      x15, x13, x13, lsl #1
000042a8 mov      x6, x24
000042ac cmp      x22, x15
000042b0 b.hs     #0x43f4
000042b4 ldp      x16, x23, [x19, #0x30]
000042b8 str      x15, [x19, #0x20]
000042bc lsl      x0, x15, #2
000042c0 mov      w8, #1
000042c4 ldr      x17, [x23, #0x10]
000042c8 lsr      x3, x16, #3
000042cc add      x15, x0, x16, lsl #5
000042d0 movk     w8, #0x800, lsl #16
000042d4 madd     x4, x17, x3, x15
000042d8 cmp      x4, x8
000042dc b.lo     #0x43dc
000042e0 str      x22, [x19, #0x20]
000042e4 mov      w14, #0xc
000042e8 str      w14, [x19, #0x10]
000042ec ldr      q0, [sp, #0x20]
000042f0 str      q0, [sp, #0x80]
000042f4 ldr      x26, [sp, #0x88]
000042f8 str      x26, [x19, #8]
000042fc ldr      x22, [sp, #0x80]
00004300 str      x22, [x19]
00004304 b        #0x440c
00004308 ldr      x2, [x19, #0x18]
0000430c mov      x1, x0
00004310 bl       #0xc794
00004314 cbz      x0, #0x3584
00004318 ldr      x2, [x19, #0x28]
0000431c str      x0, [x19, #0x18]
00004320 sub      x6, x24, x26
00004324 ldr      x17, [x19, #0x18]
00004328 add      x3, x2, #1
0000432c orr      w1, w6, #0x80000000
00004330 str      x3, [x19, #0x28]
00004334 str      w1, [x17, x2, lsl #2]
00004338 ldr      w5, [x19, #0x10]
0000433c cbnz     w5, #0x440c
00004340 ldr      x4, [x19, #0x18]
00004344 lsl      x24, x26, #2
00004348 ldr      w6, [x19, #0x28]
0000434c ldr      w7, [x4, x24]
00004350 sub      w22, w6, w26
00004354 and      w10, w7, #0xf8000000
00004358 orr      w7, w22, w10
0000435c str      w7, [x4, x24]
00004360 ldr      w1, [x19, #0x10]
00004364 cbnz     w1, #0x440c
00004368 ldp      x24, x17, [x19, #0x20]
0000436c cmp      x17, x24
00004370 b.lo     #0x3600
00004374 add      x5, x24, #1
00004378 lsr      x2, x5, #1
0000437c add      x1, x2, x2, lsl #1
00004380 cmp      x24, x1
00004384 b.hs     #0x3600
00004388 ldp      x8, x6, [x19, #0x30]
0000438c str      x1, [x19, #0x20]
00004390 lsl      x0, x1, #2
00004394 mov      w26, #1
00004398 ldr      x10, [x6, #0x10]
0000439c lsr      x12, x8, #3
000043a0 add      x11, x0, x8, lsl #5
000043a4 movk     w26, #0x800, lsl #16
000043a8 madd     x23, x10, x12, x11
000043ac cmp      x23, x26
000043b0 b.lo     #0x35e8
000043b4 str      x24, [x19, #0x20]
000043b8 mov      w0, #0xc
000043bc str      w0, [x19, #0x10]
000043c0 ldr      q0, [sp, #0x20]
000043c4 str      q0, [sp, #0xc0]
000043c8 ldr      x0, [sp, #0xc8]
000043cc str      x0, [x19, #8]
000043d0 ldr      x9, [sp, #0xc0]
000043d4 str      x9, [x19]
000043d8 b        #0x440c
000043dc ldr      x2, [x19, #0x18]
000043e0 mov      x1, x0
000043e4 bl       #0xc794
000043e8 cbz      x0, #0x3594
000043ec ldr      x6, [x19, #0x28]
000043f0 str      x0, [x19, #0x18]
000043f4 sub      x1, x24, x26
000043f8 ldr      x26, [x19, #0x18]
000043fc add      x22, x6, #1
00004400 orr      w3, w1, #0x60000000
00004404 str      x22, [x19, #0x28]
00004408 str      w3, [x26, x6, lsl #2]
0000440c ldp      x8, x24, [x19]
00004410 cmp      x8, x24
00004414 b.hs     #0x3708
00004418 ldrb     w12, [x8]
0000441c cmp      w12, #0x7b
00004420 b.eq     #0x443c
00004424 sub      w4, w12, #0x2a
00004428 cmp      w4, #2
0000442c b.lo     #0x3268
00004430 cmp      w12, #0x3f
00004434 b.ne     #0x3708
00004438 b        #0x3268
0000443c add      x26, x8, #1
00004440 cmp      x26, x24
00004444 b.hs     #0x3708
00004448 ldrb     w5, [x26]
0000444c sub      w6, w5, #0x30
00004450 cmp      w6, #9
00004454 b.hi     #0x3708
00004458 b        #0x3268
0000445c ldr      w20, [x19, #0x10]
00004460 cbnz     w20, #0x446c
00004464 mov      w17, #0xe
00004468 str      w17, [x19, #0x10]
0000446c ldr      q0, [sp, #0x20]
00004470 str      q0, [sp, #0x40]
00004474 ldr      x25, [sp, #0x48]
00004478 str      x25, [x19, #8]
0000447c ldr      x14, [sp, #0x40]
00004480 str      x14, [x19]
00004484 cbnz     w27, #0x3218
00004488 ldr      w7, [x19, #0x10]
0000448c cbnz     w7, #0x3218
00004490 ldr      x16, [x19, #0x18]
00004494 lsl      x0, x21, #2
00004498 sub      w1, w26, w21
0000449c ldr      w22, [x16, x0]
000044a0 and      w27, w22, #0xf8000000
000044a4 orr      w9, w1, w27
000044a8 str      w9, [x16, x0]
000044ac ldr      w23, [x19, #0x10]
000044b0 cbnz     w23, #0x3218
000044b4 ldp      x21, x25, [x19, #0x20]
000044b8 cmp      x25, x21
000044bc b.hs     #0x44c8
000044c0 mov      x8, x25
000044c4 b        #0x454c
000044c8 add      x1, x21, #1
000044cc lsr      x14, x1, #1
000044d0 add      x6, x14, x14, lsl #1
000044d4 mov      x8, x25
000044d8 cmp      x21, x6
000044dc b.hs     #0x454c
000044e0 ldp      x27, x17, [x19, #0x30]
000044e4 str      x6, [x19, #0x20]
000044e8 lsl      x0, x6, #2
000044ec mov      w4, #1
000044f0 ldr      x13, [x17, #0x10]
000044f4 lsr      x17, x27, #3
000044f8 add      x16, x0, x27, lsl #5
000044fc movk     w4, #0x800, lsl #16
00004500 madd     x15, x13, x17, x16
00004504 cmp      x15, x4
00004508 b.lo     #0x4534
0000450c str      x21, [x19, #0x20]
00004510 mov      w9, #0xc
00004514 str      w9, [x19, #0x10]
00004518 ldr      q0, [sp, #0x20]
0000451c str      q0, [sp, #0x30]
00004520 ldr      x25, [sp, #0x38]
00004524 str      x25, [x19, #8]
00004528 ldr      x3, [sp, #0x30]
0000452c str      x3, [x19]
00004530 b        #0x3218
00004534 ldr      x2, [x19, #0x18]
00004538 mov      x1, x0
0000453c bl       #0xc794
00004540 cbz      x0, #0x456c
00004544 ldr      x8, [x19, #0x28]
00004548 str      x0, [x19, #0x18]
0000454c sub      x1, x25, x28
00004550 ldr      x3, [x19, #0x18]
00004554 mov      w10, #-0x70000000
00004558 add      x4, x8, #1
0000455c orr      w11, w1, w10
00004560 str      x4, [x19, #0x28]
00004564 str      w11, [x3, x8, lsl #2]
00004568 b        #0x3218
0000456c ldr      w24, [x19, #0x10]
00004570 str      x21, [x19, #0x20]
00004574 cbnz     w24, #0x4518
00004578 b        #0x4510
0000457c sub      sp, sp, #0x1f0
00004580 stp      x28, x27, [sp, #0x190]
00004584 stp      x26, x25, [sp, #0x1a0]
00004588 stp      x24, x23, [sp, #0x1b0]
0000458c stp      x22, x21, [sp, #0x1c0]
00004590 stp      x20, x19, [sp, #0x1d0]
00004594 stp      x29, x30, [sp, #0x1e0]
00004598 add      x29, sp, #0x1e0
0000459c mov      x25, x3
000045a0 mov      w20, w2
000045a4 mov      w21, w1
000045a8 mov      x19, x0
000045ac cmp      x25, #0x100
000045b0 b.hi     #0x45c0
000045b4 ldr      w9, [x19, #0x10]
000045b8 cmp      w9, #0xc
000045bc b.ne     #0x45e8
000045c0 mov      w12, #0xc
000045c4 str      w12, [x19, #0x10]
000045c8 ldp      x29, x30, [sp, #0x1e0]
000045cc ldp      x20, x19, [sp, #0x1d0]
000045d0 ldp      x22, x21, [sp, #0x1c0]
000045d4 ldp      x24, x23, [sp, #0x1b0]
000045d8 ldp      x26, x25, [sp, #0x1a0]
000045dc ldp      x28, x27, [sp, #0x190]
000045e0 add      sp, sp, #0x1f0
000045e4 ret      
000045e8 ldp      x8, x22, [x19]
000045ec ldr      x24, [x19, #0x28]
000045f0 cmp      x8, x22
000045f4 b.hs     #0x4624
000045f8 ldrb     w12, [x8]
000045fc cmp      w12, #0x5e
00004600 b.ne     #0x4624
00004604 add      x23, x8, #1
00004608 str      x23, [x19]
0000460c cbnz     w9, #0x46d0
00004610 ldr      x23, [x19, #0x20]
00004614 cmp      x24, x23
00004618 b.hs     #0x4630
0000461c mov      x6, x24
00004620 b        #0x46bc
00004624 cmp      x8, x22
00004628 b.lo     #0x46fc
0000462c b        #0x5364
00004630 add      x26, x23, #1
00004634 lsr      x4, x26, #1
00004638 add      x9, x4, x4, lsl #1
0000463c mov      x6, x24
00004640 cmp      x23, x9
00004644 b.hs     #0x46bc
00004648 ldp      x5, x28, [x19, #0x30]
0000464c str      x9, [x19, #0x20]
00004650 lsl      x0, x9, #2
00004654 mov      w26, #1
00004658 ldr      x6, [x28, #0x10]
0000465c lsr      x7, x5, #3
00004660 add      x27, x0, x5, lsl #5
00004664 movk     w26, #0x800, lsl #16
00004668 madd     x2, x6, x7, x27
0000466c cmp      x2, x26
00004670 b.lo     #0x46a4
00004674 str      x23, [x19, #0x20]
00004678 mov      w14, #0xc
0000467c str      w14, [x19, #0x10]
00004680 adrp     x0, #0x13000
00004684 add      x0, x0, #0xd0
00004688 dup      v0.2d, x0
0000468c stur     q0, [x29, #-0x70]
00004690 ldur     x8, [x29, #-0x68]
00004694 str      x8, [x19, #8]
00004698 ldur     x28, [x29, #-0x70]
0000469c str      x28, [x19]
000046a0 b        #0x46d0
000046a4 ldr      x2, [x19, #0x18]
000046a8 mov      x1, x0
000046ac bl       #0xc794
000046b0 cbz      x0, #0x53b4
000046b4 ldr      x6, [x19, #0x28]
000046b8 str      x0, [x19, #0x18]
000046bc ldr      x11, [x19, #0x18]
000046c0 add      x12, x6, #1
000046c4 mov      w15, #0x18000000
000046c8 str      x12, [x19, #0x28]
000046cc str      w15, [x11, x6, lsl #2]
000046d0 ldr      x13, [x19, #0x38]
000046d4 ldr      w16, [x13, #0x50]
000046d8 orr      w8, w16, #1
000046dc str      w8, [x13, #0x50]
000046e0 ldr      x14, [x19, #0x38]
000046e4 ldr      x15, [x14, #0x58]
000046e8 add      x16, x15, #1
000046ec str      x16, [x14, #0x58]
000046f0 ldp      x8, x22, [x19]
000046f4 cmp      x8, x22
000046f8 b.hs     #0x5364
000046fc sub      x5, x29, #0x54
00004700 orr      x6, x5, #3
00004704 adrp     x23, #0x10000
00004708 mov      w10, wzr
0000470c stp      x6, x24, [sp, #0x10]
00004710 adrp     x6, #0x13000
00004714 add      x6, x6, #0xd0
00004718 add      x2, x25, #1
0000471c mov      w9, #1
00004720 dup      v2.2d, x6
00004724 add      x23, x23, #0x988
00004728 str      x2, [sp, #8]
0000472c str      q2, [sp, #0x20]
00004730 b        #0x4994
00004734 mov      w3, w2
00004738 b        #0x5088
0000473c ldr      w11, [x19, #0x10]
00004740 str      x26, [x19, #0x20]
00004744 cbnz     w11, #0x4abc
00004748 b        #0x4ab4
0000474c ldr      w13, [x19, #0x10]
00004750 str      x25, [x19, #0x20]
00004754 cbnz     w13, #0x4dbc
00004758 b        #0x4db4
0000475c ldr      w15, [x19, #0x10]
00004760 str      x26, [x19, #0x20]
00004764 cbnz     w15, #0x5040
00004768 b        #0x5038
0000476c ldr      w0, [x19, #0x10]
00004770 str      x28, [x19, #0x20]
00004774 cbnz     w0, #0x5228
00004778 b        #0x5220
0000477c sub      x13, x10, #1
00004780 b        #0x5104
00004784 mov      w3, w2
00004788 b        #0x5088
0000478c ldr      x2, [x19, #0x18]
00004790 mov      x1, x0
00004794 bl       #0xc794
00004798 cbz      x0, #0x495c
0000479c ldr      x16, [x19, #0x28]
000047a0 str      x0, [x19, #0x18]
000047a4 ldr      x10, [x19, #0x18]
000047a8 mov      w26, #0x68000000
000047ac add      x25, x16, #1
000047b0 orr      w26, w22, w26
000047b4 str      x25, [x19, #0x28]
000047b8 str      w26, [x10, x16, lsl #2]
000047bc ldp      x8, x1, [x19]
000047c0 cmp      x8, x1
000047c4 b.hs     #0x4800
000047c8 add      x9, x8, #1
000047cc cmp      x9, x1
000047d0 b.hs     #0x47ec
000047d4 ldrb     w13, [x8]
000047d8 cmp      w13, #0x5c
000047dc b.ne     #0x47ec
000047e0 ldrb     w14, [x9]
000047e4 cmp      w14, #0x29
000047e8 b.eq     #0x4800
000047ec ldr      x3, [sp, #8]
000047f0 mov      x0, x19
000047f4 mov      w1, #0x5c
000047f8 mov      w2, #0x29
000047fc bl       #0x457c
00004800 cmp      x22, #9
00004804 b.hi     #0x4814
00004808 ldr      x9, [x19, #0x28]
0000480c add      x26, x19, x22, lsl #3
00004810 str      x9, [x26, #0x90]
00004814 ldr      w9, [x19, #0x10]
00004818 cbnz     w9, #0x48bc
0000481c ldp      x26, x17, [x19, #0x20]
00004820 cmp      x17, x26
00004824 b.lo     #0x48a8
00004828 add      x28, x26, #1
0000482c lsr      x11, x28, #1
00004830 add      x12, x11, x11, lsl #1
00004834 cmp      x26, x12
00004838 b.hs     #0x48a8
0000483c ldp      x13, x11, [x19, #0x30]
00004840 str      x12, [x19, #0x20]
00004844 lsl      x0, x12, #2
00004848 mov      w2, #1
0000484c ldr      x14, [x11, #0x10]
00004850 lsr      x15, x13, #3
00004854 add      x12, x0, x13, lsl #5
00004858 movk     w2, #0x800, lsl #16
0000485c madd     x16, x14, x15, x12
00004860 cmp      x16, x2
00004864 b.lo     #0x4890
00004868 str      x26, [x19, #0x20]
0000486c mov      w16, #0xc
00004870 str      w16, [x19, #0x10]
00004874 ldr      q0, [sp, #0x20]
00004878 str      q0, [sp, #0xf0]
0000487c ldr      x22, [sp, #0xf8]
00004880 str      x22, [x19, #8]
00004884 ldr      x17, [sp, #0xf0]
00004888 str      x17, [x19]
0000488c b        #0x48bc
00004890 ldr      x2, [x19, #0x18]
00004894 mov      x1, x0
00004898 bl       #0xc794
0000489c cbz      x0, #0x496c
000048a0 ldr      x17, [x19, #0x28]
000048a4 str      x0, [x19, #0x18]
000048a8 ldr      x12, [x19, #0x18]
000048ac add      x13, x17, #1
000048b0 orr      w15, w22, #0x70000000
000048b4 str      x13, [x19, #0x28]
000048b8 str      w15, [x12, x17, lsl #2]
000048bc ldp      x0, x3, [x19]
000048c0 cmp      x0, x3
000048c4 b.hs     #0x48f8
000048c8 add      x10, x0, #1
000048cc cmp      x10, x3
000048d0 b.hs     #0x48f8
000048d4 ldrb     w16, [x0]
000048d8 cmp      w16, #0x5c
000048dc b.ne     #0x48f8
000048e0 ldrb     w17, [x10]
000048e4 cmp      w17, #0x29
000048e8 b.ne     #0x48f8
000048ec add      x22, x0, #2
000048f0 str      x22, [x19]
000048f4 b        #0x4e10
000048f8 ldr      w10, [x19, #0x10]
000048fc cbnz     w10, #0x4908
00004900 mov      w25, #8
00004904 str      w25, [x19, #0x10]
00004908 ldr      q0, [sp, #0x20]
0000490c str      q0, [sp, #0xe0]
00004910 ldr      x1, [sp, #0xe8]
00004914 str      x1, [x19, #8]
00004918 ldr      x3, [sp, #0xe0]
0000491c str      x3, [x19]
00004920 b        #0x4e10
00004924 mov      w3, #0x100
00004928 b        #0x5088
0000492c ldr      x2, [x19, #0x18]
00004930 mov      x1, x0
00004934 bl       #0xc794
00004938 cbz      x0, #0x4984
0000493c ldr      x7, [x19, #0x28]
00004940 str      x0, [x19, #0x18]
00004944 ldr      x0, [x19, #0x18]
00004948 add      x3, x7, #1
0000494c mov      w11, #0x28000000
00004950 str      x3, [x19, #0x28]
00004954 str      w11, [x0, x7, lsl #2]
00004958 b        #0x4e10
0000495c ldr      w25, [x19, #0x10]
00004960 str      x28, [x19, #0x20]
00004964 cbnz     w25, #0x4bdc
00004968 b        #0x4bd4
0000496c ldr      w22, [x19, #0x10]
00004970 str      x26, [x19, #0x20]
00004974 cbnz     w22, #0x4874
00004978 b        #0x486c
0000497c mov      w3, #0x100
00004980 b        #0x5088
00004984 ldr      w5, [x19, #0x10]
00004988 str      x22, [x19, #0x20]
0000498c cbnz     w5, #0x4cd4
00004990 b        #0x4ccc
00004994 add      x28, x8, #1
00004998 cmp      x28, x22
0000499c b.hs     #0x49b8
000049a0 ldrb     w17, [x8]
000049a4 cmp      w17, w21
000049a8 b.ne     #0x49b8
000049ac ldrb     w0, [x28]
000049b0 cmp      w0, w20
000049b4 b.eq     #0x5288
000049b8 str      x28, [x19]
000049bc ldrb     w24, [x8]
000049c0 ldr      x27, [x19, #0x28]
000049c4 cmp      w24, #0x5c
000049c8 b.ne     #0x4a1c
000049cc cmp      x28, x22
000049d0 b.lo     #0x4a08
000049d4 ldr      w1, [x19, #0x10]
000049d8 cbnz     w1, #0x49e4
000049dc mov      w22, #5
000049e0 str      w22, [x19, #0x10]
000049e4 ldr      q0, [sp, #0x20]
000049e8 stur     q0, [x29, #-0x80]
000049ec ldur     x22, [x29, #-0x78]
000049f0 str      x22, [x19, #8]
000049f4 adrp     x22, #0x13000
000049f8 add      x22, x22, #0xd0
000049fc ldur     x10, [x29, #-0x80]
00004a00 mov      x28, x22
00004a04 str      x10, [x19]
00004a08 add      x17, x28, #1
00004a0c str      x17, [x19]
00004a10 ldrb     w2, [x28]
00004a14 mov      x28, x17
00004a18 orr      w24, w2, #0x100
00004a1c cmp      w24, #0x127
00004a20 b.le     #0x4ad8
00004a24 sub      w22, w24, #0x128
00004a28 cmp      w22, #0x55
00004a2c b.hi     #0x4c50
00004a30 ldr      x9, [x23, x22, lsl #3]
00004a34 br       x9
00004a38 and      w14, w24, #0xfffffeff
00004a3c sxtw     x15, w14
00004a40 sub      x22, x15, #0x30
00004a44 add      x25, x19, x22, lsl #3
00004a48 mov      x28, x25
00004a4c ldr      x6, [x28, #0x90]!
00004a50 ldr      w8, [x19, #0x10]
00004a54 cbz      x6, #0x4afc
00004a58 cbnz     w8, #0x4d48
00004a5c ldr      x26, [x19, #0x20]
00004a60 mov      x5, x27
00004a64 cmp      x27, x26
00004a68 b.lo     #0x4d34
00004a6c add      x16, x26, #1
00004a70 lsr      x7, x16, #1
00004a74 add      x13, x7, x7, lsl #1
00004a78 mov      x5, x27
00004a7c cmp      x26, x13
00004a80 b.hs     #0x4d34
00004a84 ldp      x2, x17, [x19, #0x30]
00004a88 str      x13, [x19, #0x20]
00004a8c lsl      x0, x13, #2
00004a90 ldr      x8, [x17, #0x10]
00004a94 lsr      x10, x2, #3
00004a98 add      x9, x0, x2, lsl #5
00004a9c madd     x11, x8, x10, x9
00004aa0 mov      w9, #1
00004aa4 movk     w9, #0x800, lsl #16
00004aa8 cmp      x11, x9
00004aac b.lo     #0x4d1c
00004ab0 str      x26, [x19, #0x20]
00004ab4 mov      w17, #0xc
00004ab8 str      w17, [x19, #0x10]
00004abc ldr      q0, [sp, #0x20]
00004ac0 stur     q0, [x29, #-0xa0]
00004ac4 ldur     x26, [x29, #-0x98]
00004ac8 str      x26, [x19, #8]
00004acc ldur     x0, [x29, #-0xa0]
00004ad0 str      x0, [x19]
00004ad4 b        #0x4d48
00004ad8 cmp      w24, #0x2a
00004adc b.eq     #0x4c24
00004ae0 cmp      w24, #0x2e
00004ae4 b.eq     #0x4c60
00004ae8 cmp      w24, #0x5b
00004aec b.ne     #0x4c50
00004af0 mov      x0, x19
00004af4 bl       #0x5598
00004af8 b        #0x4e10
00004afc cbnz     w8, #0x4b08
00004b00 mov      w22, #6
00004b04 str      w22, [x19, #0x10]
00004b08 ldr      q0, [sp, #0x20]
00004b0c stur     q0, [x29, #-0xc0]
00004b10 ldur     x1, [x29, #-0xb8]
00004b14 str      x1, [x19, #8]
00004b18 ldur     x3, [x29, #-0xc0]
00004b1c str      x3, [x19]
00004b20 b        #0x4e04
00004b24 ldr      w8, [x19, #0x10]
00004b28 cbnz     w8, #0x4b34
00004b2c mov      w9, #8
00004b30 str      w9, [x19, #0x10]
00004b34 ldr      q0, [sp, #0x20]
00004b38 stur     q0, [x29, #-0xd0]
00004b3c ldur     x4, [x29, #-0xc8]
00004b40 str      x4, [x19, #8]
00004b44 ldur     x5, [x29, #-0xd0]
00004b48 str      x5, [x19]
00004b4c b        #0x4e10
00004b50 ldr      x2, [x19, #0x38]
00004b54 ldr      x4, [x2, #0x88]
00004b58 add      x5, x4, #1
00004b5c str      x5, [x2, #0x88]
00004b60 ldr      x6, [x19, #0x38]
00004b64 ldr      x22, [x6, #0x88]
00004b68 cmp      x22, #9
00004b6c b.hi     #0x4b7c
00004b70 ldr      x5, [x19, #0x28]
00004b74 add      x7, x19, x22, lsl #3
00004b78 str      x5, [x7, #0x40]
00004b7c ldr      w7, [x19, #0x10]
00004b80 cbnz     w7, #0x47bc
00004b84 ldp      x28, x16, [x19, #0x20]
00004b88 cmp      x16, x28
00004b8c b.lo     #0x47a4
00004b90 add      x8, x28, #1
00004b94 lsr      x6, x8, #1
00004b98 add      x11, x6, x6, lsl #1
00004b9c cmp      x28, x11
00004ba0 b.hs     #0x47a4
00004ba4 ldp      x7, x9, [x19, #0x30]
00004ba8 str      x11, [x19, #0x20]
00004bac lsl      x0, x11, #2
00004bb0 mov      w11, #1
00004bb4 ldr      x2, [x9, #0x10]
00004bb8 lsr      x26, x7, #3
00004bbc add      x8, x0, x7, lsl #5
00004bc0 movk     w11, #0x800, lsl #16
00004bc4 madd     x10, x2, x26, x8
00004bc8 cmp      x10, x11
00004bcc b.lo     #0x478c
00004bd0 str      x28, [x19, #0x20]
00004bd4 mov      w15, #0xc
00004bd8 str      w15, [x19, #0x10]
00004bdc ldr      q0, [sp, #0x20]
00004be0 stur     q0, [x29, #-0xe0]
00004be4 ldur     x0, [x29, #-0xd8]
00004be8 str      x0, [x19, #8]
00004bec ldur     x28, [x29, #-0xe0]
00004bf0 str      x28, [x19]
00004bf4 b        #0x47bc
00004bf8 ldr      w6, [x19, #0x10]
00004bfc cbnz     w6, #0x4c08
00004c00 mov      w8, #0xd
00004c04 str      w8, [x19, #0x10]
00004c08 ldr      q0, [sp, #0x20]
00004c0c str      q0, [sp, #0xd0]
00004c10 ldr      x3, [sp, #0xd8]
00004c14 str      x3, [x19, #8]
00004c18 ldr      x4, [sp, #0xd0]
00004c1c str      x4, [x19]
00004c20 b        #0x4e10
00004c24 cbnz     w9, #0x4c50
00004c28 ldr      w14, [x19, #0x10]
00004c2c cbnz     w14, #0x4c38
00004c30 mov      w10, #0xd
00004c34 str      w10, [x19, #0x10]
00004c38 ldr      q0, [sp, #0x20]
00004c3c stur     q0, [x29, #-0x90]
00004c40 ldur     x4, [x29, #-0x88]
00004c44 str      x4, [x19, #8]
00004c48 ldur     x5, [x29, #-0x90]
00004c4c str      x5, [x19]
00004c50 and      w1, w24, #0xfffffeff
00004c54 mov      x0, x19
00004c58 bl       #0x7770
00004c5c b        #0x4e10
00004c60 ldr      x14, [x19, #0x38]
00004c64 ldrb     w3, [x14, #0x30]
00004c68 tbnz     w3, #3, #0x4cf0
00004c6c ldr      w4, [x19, #0x10]
00004c70 cbnz     w4, #0x4e10
00004c74 ldr      x22, [x19, #0x20]
00004c78 mov      x7, x27
00004c7c cmp      x27, x22
00004c80 b.lo     #0x4944
00004c84 add      x1, x22, #1
00004c88 lsr      x11, x1, #1
00004c8c add      x10, x11, x11, lsl #1
00004c90 mov      x7, x27
00004c94 cmp      x22, x10
00004c98 b.hs     #0x4944
00004c9c ldr      x12, [x19, #0x30]
00004ca0 lsl      x0, x10, #2
00004ca4 str      x10, [x19, #0x20]
00004ca8 ldr      x13, [x14, #0x10]
00004cac lsr      x14, x12, #3
00004cb0 add      x15, x0, x12, lsl #5
00004cb4 madd     x16, x13, x14, x15
00004cb8 mov      w13, #1
00004cbc movk     w13, #0x800, lsl #16
00004cc0 cmp      x16, x13
00004cc4 b.lo     #0x492c
00004cc8 str      x22, [x19, #0x20]
00004ccc mov      w12, #0xc
00004cd0 str      w12, [x19, #0x10]
00004cd4 ldr      q0, [sp, #0x20]
00004cd8 str      q0, [sp, #0xc0]
00004cdc ldr      x17, [sp, #0xc8]
00004ce0 str      x17, [x19, #8]
00004ce4 ldr      x1, [sp, #0xc0]
00004ce8 str      x1, [x19]
00004cec b        #0x4e10
00004cf0 sub      x4, x29, #0x54
00004cf4 mov      w1, #0xa5e
00004cf8 movk     w1, #0x5d, lsl #16
00004cfc str      x4, [x19]
00004d00 mov      x0, x19
00004d04 ldr      x7, [sp, #0x10]
00004d08 str      x7, [x19, #8]
00004d0c stur     w1, [x29, #-0x54]
00004d10 bl       #0x5598
00004d14 stp      x28, x22, [x19]
00004d18 b        #0x4e10
00004d1c ldr      x2, [x19, #0x18]
00004d20 mov      x1, x0
00004d24 bl       #0xc794
00004d28 cbz      x0, #0x473c
00004d2c ldr      x5, [x19, #0x28]
00004d30 str      x0, [x19, #0x18]
00004d34 ldr      x1, [x19, #0x18]
00004d38 add      x0, x5, #1
00004d3c orr      w4, w22, #0x38000000
00004d40 str      x0, [x19, #0x28]
00004d44 str      w4, [x1, x5, lsl #2]
00004d48 ldr      x3, [x25, #0x40]
00004d4c mov      x0, x19
00004d50 ldr      x2, [x28]
00004d54 add      x1, x3, #1
00004d58 bl       #0x834c
00004d5c ldr      w12, [x19, #0x10]
00004d60 cbnz     w12, #0x4e04
00004d64 ldp      x25, x1, [x19, #0x20]
00004d68 cmp      x1, x25
00004d6c b.lo     #0x4df0
00004d70 add      x2, x25, #1
00004d74 lsr      x28, x2, #1
00004d78 add      x14, x28, x28, lsl #1
00004d7c cmp      x25, x14
00004d80 b.hs     #0x4df0
00004d84 ldp      x13, x4, [x19, #0x30]
00004d88 str      x14, [x19, #0x20]
00004d8c lsl      x0, x14, #2
00004d90 mov      w10, #1
00004d94 ldr      x15, [x4, #0x10]
00004d98 lsr      x12, x13, #3
00004d9c add      x14, x0, x13, lsl #5
00004da0 movk     w10, #0x800, lsl #16
00004da4 madd     x16, x15, x12, x14
00004da8 cmp      x16, x10
00004dac b.lo     #0x4dd8
00004db0 str      x25, [x19, #0x20]
00004db4 mov      w0, #0xc
00004db8 str      w0, [x19, #0x10]
00004dbc ldr      q0, [sp, #0x20]
00004dc0 stur     q0, [x29, #-0xb0]
00004dc4 ldur     x22, [x29, #-0xa8]
00004dc8 str      x22, [x19, #8]
00004dcc ldur     x17, [x29, #-0xb0]
00004dd0 str      x17, [x19]
00004dd4 b        #0x4e04
00004dd8 ldr      x2, [x19, #0x18]
00004ddc mov      x1, x0
00004de0 bl       #0xc794
00004de4 cbz      x0, #0x474c
00004de8 ldr      x1, [x19, #0x28]
00004dec str      x0, [x19, #0x18]
00004df0 ldr      x5, [x19, #0x18]
00004df4 add      x6, x1, #1
00004df8 orr      w0, w22, #0x40000000
00004dfc str      x6, [x19, #0x28]
00004e00 str      w0, [x5, x1, lsl #2]
00004e04 ldr      x7, [x19, #0x38]
00004e08 mov      w9, #1
00004e0c str      w9, [x7, #0x90]
00004e10 ldp      x8, x22, [x19]
00004e14 cmp      x8, x22
00004e18 b.hs     #0x4fe0
00004e1c mov      x3, x8
00004e20 ldrb     w11, [x3], #1
00004e24 cmp      w11, #0x2a
00004e28 b.ne     #0x4e6c
00004e2c ldr      x6, [x19, #0x28]
00004e30 mov      w7, #1
00004e34 sub      x22, x7, x27
00004e38 str      x3, [x19]
00004e3c mov      x0, x19
00004e40 mov      w1, #0x48000000
00004e44 add      x2, x6, x22
00004e48 mov      x3, x27
00004e4c bl       #0x53c4
00004e50 ldr      w24, [x19, #0x10]
00004e54 cbnz     w24, #0x51a4
00004e58 ldp      x26, x28, [x19, #0x20]
00004e5c cmp      x28, x26
00004e60 b.hs     #0x4ff0
00004e64 mov      x2, x28
00004e68 b        #0x5188
00004e6c cmp      x3, x22
00004e70 b.hs     #0x4fe0
00004e74 cmp      w11, #0x5c
00004e78 b.ne     #0x4fe0
00004e7c ldrb     w5, [x3]
00004e80 cmp      w5, #0x7b
00004e84 b.ne     #0x4fe0
00004e88 add      x12, x8, #2
00004e8c mov      w2, wzr
00004e90 cmp      x12, x22
00004e94 str      x12, [x19]
00004e98 b.hs     #0x505c
00004e9c mov      w10, wzr
00004ea0 mov      w4, #0xa
00004ea4 cmp      w2, #0xff
00004ea8 b.gt     #0x5160
00004eac ldrb     w6, [x12]
00004eb0 sub      w7, w6, #0x30
00004eb4 cmp      w7, #9
00004eb8 b.hi     #0x5160
00004ebc add      x9, x12, #1
00004ec0 add      w10, w10, #1
00004ec4 cmp      x9, x22
00004ec8 str      x9, [x19]
00004ecc ldrb     w1, [x12]
00004ed0 mov      x12, x9
00004ed4 madd     w2, w2, w4, w1
00004ed8 sub      w2, w2, #0x30
00004edc b.lo     #0x4ea4
00004ee0 cmp      w2, #0xff
00004ee4 b.gt     #0x5060
00004ee8 cmp      w10, #0
00004eec b.le     #0x5060
00004ef0 cmp      x9, x22
00004ef4 b.hs     #0x4734
00004ef8 ldrb     w3, [x9]
00004efc cmp      w3, #0x2c
00004f00 b.ne     #0x4784
00004f04 add      x25, x9, #1
00004f08 cmp      x25, x22
00004f0c str      x25, [x19]
00004f10 b.hs     #0x4924
00004f14 ldrb     w10, [x25]
00004f18 sub      w24, w10, #0x30
00004f1c cmp      w24, #9
00004f20 b.hi     #0x497c
00004f24 mov      w3, wzr
00004f28 mov      w8, wzr
00004f2c add      x11, x9, #2
00004f30 cmp      w3, #0xff
00004f34 b.gt     #0x4f74
00004f38 and      w9, w10, #0xff
00004f3c sub      w10, w9, #0x30
00004f40 cmp      w10, #9
00004f44 b.hi     #0x4f74
00004f48 str      x11, [x19]
00004f4c mov      w5, #0xa
00004f50 ldurb    w4, [x11, #-1]
00004f54 add      w8, w8, #1
00004f58 cmp      x11, x22
00004f5c madd     w9, w3, w5, w4
00004f60 sub      w3, w9, #0x30
00004f64 b.hs     #0x4f74
00004f68 ldrb     w10, [x11], #1
00004f6c cmp      w3, #0xff
00004f70 b.le     #0x4f38
00004f74 cmp      w3, #0xff
00004f78 b.gt     #0x4f84
00004f7c cmp      w8, #0
00004f80 b.gt     #0x4fac
00004f84 ldr      w5, [x19, #0x10]
00004f88 cbnz     w5, #0x4f94
00004f8c mov      w7, #0xa
00004f90 str      w7, [x19, #0x10]
00004f94 ldr      q0, [sp, #0x20]
00004f98 str      q0, [sp, #0xa0]
00004f9c ldr      x7, [sp, #0xa8]
00004fa0 str      x7, [x19, #8]
00004fa4 ldr      x8, [sp, #0xa0]
00004fa8 str      x8, [x19]
00004fac cmp      w2, w3
00004fb0 b.le     #0x5088
00004fb4 ldr      w6, [x19, #0x10]
00004fb8 cbnz     w6, #0x4fc4
00004fbc mov      w6, #0xa
00004fc0 str      w6, [x19, #0x10]
00004fc4 ldr      q0, [sp, #0x20]
00004fc8 str      q0, [sp, #0x90]
00004fcc ldr      x10, [sp, #0x98]
00004fd0 str      x10, [x19, #8]
00004fd4 ldr      x9, [sp, #0x90]
00004fd8 str      x9, [x19]
00004fdc b        #0x5088
00004fe0 cmp      w24, #0x24
00004fe4 b.ne     #0x5274
00004fe8 mov      w10, #1
00004fec b        #0x527c
00004ff0 add      x8, x26, #1
00004ff4 lsr      x2, x8, #1
00004ff8 add      x15, x2, x2, lsl #1
00004ffc mov      x2, x28
00005000 cmp      x26, x15
00005004 b.hs     #0x5188
00005008 ldp      x8, x9, [x19, #0x30]
0000500c str      x15, [x19, #0x20]
00005010 lsl      x0, x15, #2
00005014 ldr      x10, [x9, #0x10]
00005018 lsr      x9, x8, #3
0000501c add      x11, x0, x8, lsl #5
00005020 mov      w8, #1
00005024 movk     w8, #0x800, lsl #16
00005028 madd     x13, x10, x9, x11
0000502c cmp      x13, x8
00005030 b.lo     #0x5170
00005034 str      x26, [x19, #0x20]
00005038 mov      w13, #0xc
0000503c str      w13, [x19, #0x10]
00005040 ldr      q0, [sp, #0x20]
00005044 str      q0, [sp, #0x60]
00005048 ldr      x26, [sp, #0x68]
0000504c str      x26, [x19, #8]
00005050 ldr      x0, [sp, #0x60]
00005054 str      x0, [x19]
00005058 b        #0x51a4
0000505c mov      w4, #0xa
00005060 ldr      w3, [x19, #0x10]
00005064 cbnz     w3, #0x506c
00005068 str      w4, [x19, #0x10]
0000506c ldr      q0, [sp, #0x20]
00005070 mov      w3, w2
00005074 str      q0, [sp, #0xb0]
00005078 ldr      x4, [sp, #0xb8]
0000507c str      x4, [x19, #8]
00005080 ldr      x6, [sp, #0xb0]
00005084 str      x6, [x19]
00005088 mov      x0, x19
0000508c mov      x1, x27
00005090 mov      x4, xzr
00005094 bl       #0x793c
00005098 ldp      x13, x8, [x19]
0000509c cmp      x13, x8
000050a0 b.hs     #0x5104
000050a4 add      x10, x13, #1
000050a8 cmp      x10, x8
000050ac b.hs     #0x50fc
000050b0 ldrb     w11, [x13]
000050b4 cmp      w11, #0x5c
000050b8 b.ne     #0x50d4
000050bc ldrb     w12, [x10]
000050c0 cmp      w12, #0x7d
000050c4 b.ne     #0x50d4
000050c8 add      x13, x13, #2
000050cc str      x13, [x19]
000050d0 b        #0x5274
000050d4 ldurb    w13, [x10, #-1]
000050d8 cmp      w13, #0x5c
000050dc b.ne     #0x50ec
000050e0 ldrb     w14, [x10]
000050e4 cmp      w14, #0x7d
000050e8 b.eq     #0x477c
000050ec str      x10, [x19]
000050f0 add      x10, x10, #1
000050f4 cmp      x10, x8
000050f8 b.lo     #0x50d4
000050fc mov      x13, x10
00005100 str      x10, [x19]
00005104 ldr      w11, [x19, #0x10]
00005108 cmp      x13, x8
0000510c b.hs     #0x5120
00005110 cbnz     w11, #0x5144
00005114 mov      w3, #0xa
00005118 str      w3, [x19, #0x10]
0000511c b        #0x5144
00005120 cbnz     w11, #0x512c
00005124 mov      w2, #9
00005128 str      w2, [x19, #0x10]
0000512c ldr      q0, [sp, #0x20]
00005130 str      q0, [sp, #0x80]
00005134 ldr      x2, [sp, #0x88]
00005138 str      x2, [x19, #8]
0000513c ldr      x11, [sp, #0x80]
00005140 str      x11, [x19]
00005144 ldr      q0, [sp, #0x20]
00005148 str      q0, [sp, #0x70]
0000514c ldr      x13, [sp, #0x78]
00005150 str      x13, [x19, #8]
00005154 ldr      x26, [sp, #0x70]
00005158 str      x26, [x19]
0000515c b        #0x5274
00005160 mov      x9, x12
00005164 cmp      w2, #0xff
00005168 b.le     #0x4ee8
0000516c b        #0x5060
00005170 ldr      x2, [x19, #0x18]
00005174 mov      x1, x0
00005178 bl       #0xc794
0000517c cbz      x0, #0x475c
00005180 ldr      x2, [x19, #0x28]
00005184 str      x0, [x19, #0x18]
00005188 sub      x28, x28, x27
0000518c ldr      x10, [x19, #0x18]
00005190 mov      w24, #0x50000000
00005194 add      x25, x2, #1
00005198 orr      w16, w28, w24
0000519c str      x25, [x19, #0x28]
000051a0 str      w16, [x10, x2, lsl #2]
000051a4 ldr      x15, [x19, #0x28]
000051a8 mov      x0, x19
000051ac mov      w1, #0x58000000
000051b0 mov      x3, x27
000051b4 add      x2, x15, x22
000051b8 bl       #0x53c4
000051bc ldr      w17, [x19, #0x10]
000051c0 cbnz     w17, #0x5274
000051c4 ldp      x28, x22, [x19, #0x20]
000051c8 cmp      x22, x28
000051cc b.hs     #0x51d8
000051d0 mov      x4, x22
000051d4 b        #0x525c
000051d8 add      x26, x28, #1
000051dc lsr      x12, x26, #1
000051e0 add      x16, x12, x12, lsl #1
000051e4 mov      x4, x22
000051e8 cmp      x28, x16
000051ec b.hs     #0x525c
000051f0 ldp      x14, x11, [x19, #0x30]
000051f4 str      x16, [x19, #0x20]
000051f8 lsl      x0, x16, #2
000051fc mov      w7, #1
00005200 ldr      x17, [x11, #0x10]
00005204 lsr      x1, x14, #3
00005208 add      x16, x0, x14, lsl #5
0000520c movk     w7, #0x800, lsl #16
00005210 madd     x3, x17, x1, x16
00005214 cmp      x3, x7
00005218 b.lo     #0x5244
0000521c str      x28, [x19, #0x20]
00005220 mov      w14, #0xc
00005224 str      w14, [x19, #0x10]
00005228 ldr      q0, [sp, #0x20]
0000522c str      q0, [sp, #0x50]
00005230 ldr      x27, [sp, #0x58]
00005234 str      x27, [x19, #8]
00005238 ldr      x22, [sp, #0x50]
0000523c str      x22, [x19]
00005240 b        #0x5274
00005244 ldr      x2, [x19, #0x18]
00005248 mov      x1, x0
0000524c bl       #0xc794
00005250 cbz      x0, #0x476c
00005254 ldr      x4, [x19, #0x28]
00005258 str      x0, [x19, #0x18]
0000525c sub      x5, x22, x27
00005260 ldr      x28, [x19, #0x18]
00005264 add      x12, x4, #1
00005268 orr      w1, w5, #0x60000000
0000526c str      x12, [x19, #0x28]
00005270 str      w1, [x28, x4, lsl #2]
00005274 ldp      x8, x22, [x19]
00005278 mov      w10, wzr
0000527c mov      w9, wzr
00005280 cmp      x8, x22
00005284 b.lo     #0x4994
00005288 ldr      x24, [sp, #0x18]
0000528c cbz      w10, #0x5364
00005290 ldr      x23, [x19, #0x28]
00005294 ldr      w20, [x19, #0x10]
00005298 sub      x15, x23, #1
0000529c str      x15, [x19, #0x28]
000052a0 cbnz     w20, #0x5344
000052a4 ldr      x25, [x19, #0x20]
000052a8 cmp      x15, x25
000052ac b.lo     #0x5330
000052b0 add      x22, x25, #1
000052b4 lsr      x0, x22, #1
000052b8 add      x17, x0, x0, lsl #1
000052bc cmp      x25, x17
000052c0 b.hs     #0x5330
000052c4 ldp      x28, x14, [x19, #0x30]
000052c8 str      x17, [x19, #0x20]
000052cc lsl      x0, x17, #2
000052d0 mov      w1, #1
000052d4 ldr      x15, [x14, #0x10]
000052d8 lsr      x12, x28, #3
000052dc add      x14, x0, x28, lsl #5
000052e0 movk     w1, #0x800, lsl #16
000052e4 madd     x17, x15, x12, x14
000052e8 cmp      x17, x1
000052ec b.lo     #0x5318
000052f0 str      x25, [x19, #0x20]
000052f4 mov      w23, #0xc
000052f8 str      w23, [x19, #0x10]
000052fc ldr      q0, [sp, #0x20]
00005300 str      q0, [sp, #0x40]
00005304 ldr      x16, [sp, #0x48]
00005308 str      x16, [x19, #8]
0000530c ldr      x3, [sp, #0x40]
00005310 str      x3, [x19]
00005314 b        #0x5344
00005318 ldr      x2, [x19, #0x18]
0000531c mov      x1, x0
00005320 bl       #0xc794
00005324 cbz      x0, #0x53a4
00005328 ldr      x15, [x19, #0x28]
0000532c str      x0, [x19, #0x18]
00005330 ldr      x16, [x19, #0x18]
00005334 add      x17, x15, #1
00005338 mov      w2, #0x20000000
0000533c str      x17, [x19, #0x28]
00005340 str      w2, [x16, x15, lsl #2]
00005344 ldr      x15, [x19, #0x38]
00005348 ldr      w7, [x15, #0x50]
0000534c orr      w8, w7, #2
00005350 str      w8, [x15, #0x50]
00005354 ldr      x1, [x19, #0x38]
00005358 ldr      x0, [x1, #0x60]
0000535c add      x3, x0, #1
00005360 str      x3, [x1, #0x60]
00005364 ldr      x27, [x19, #0x28]
00005368 cmp      x27, x24
0000536c b.ne     #0x45c8
00005370 ldr      w25, [x19, #0x10]
00005374 cbnz     w25, #0x5380
00005378 mov      w26, #0xe
0000537c str      w26, [x19, #0x10]
00005380 adrp     x22, #0x13000
00005384 add      x22, x22, #0xd0
00005388 dup      v1.2d, x22
0000538c str      q1, [sp, #0x30]
00005390 ldr      x5, [sp, #0x38]
00005394 str      x5, [x19, #8]
00005398 ldr      x4, [sp, #0x30]
0000539c str      x4, [x19]
000053a0 b        #0x45c8
000053a4 ldr      w21, [x19, #0x10]
000053a8 str      x25, [x19, #0x20]
000053ac cbnz     w21, #0x52fc
000053b0 b        #0x52f4
000053b4 ldr      w13, [x19, #0x10]
000053b8 str      x23, [x19, #0x20]
000053bc cbnz     w13, #0x4680
000053c0 b        #0x4678
000053c4 stp      x22, x21, [sp, #-0x30]!
000053c8 stp      x20, x19, [sp, #0x10]
000053cc stp      x29, x30, [sp, #0x20]
000053d0 add      x29, sp, #0x20
000053d4 mov      x19, x0
000053d8 mov      x20, x3
000053dc ldr      w8, [x19, #0x10]
000053e0 cbnz     w8, #0x5588
000053e4 ldr      x21, [x19, #0x28]
000053e8 mov      x0, x19
000053ec bl       #0x30e0
000053f0 ldr      x8, [x19, #0x18]
000053f4 ldr      x9, [x19, #0x48]
000053f8 ldr      w21, [x8, x21, lsl #2]
000053fc cmp      x9, x20
00005400 b.lo     #0x540c
00005404 add      x10, x9, #1
00005408 str      x10, [x19, #0x48]
0000540c ldr      x10, [x19, #0x98]
00005410 cmp      x10, x20
00005414 b.lo     #0x5420
00005418 add      x11, x10, #1
0000541c str      x11, [x19, #0x98]
00005420 ldr      x11, [x19, #0x50]
00005424 cmp      x11, x20
00005428 b.lo     #0x5434
0000542c add      x12, x11, #1
00005430 str      x12, [x19, #0x50]
00005434 ldr      x12, [x19, #0xa0]
00005438 cmp      x12, x20
0000543c b.lo     #0x5448
00005440 add      x13, x12, #1
00005444 str      x13, [x19, #0xa0]
00005448 ldr      x13, [x19, #0x58]
0000544c cmp      x13, x20
00005450 b.lo     #0x545c
00005454 add      x14, x13, #1
00005458 str      x14, [x19, #0x58]
0000545c ldr      x14, [x19, #0xa8]
00005460 cmp      x14, x20
00005464 b.lo     #0x5470
00005468 add      x15, x14, #1
0000546c str      x15, [x19, #0xa8]
00005470 ldr      x15, [x19, #0x60]
00005474 cmp      x15, x20
00005478 b.lo     #0x5484
0000547c add      x16, x15, #1
00005480 str      x16, [x19, #0x60]
00005484 ldr      x16, [x19, #0xb0]
00005488 cmp      x16, x20
0000548c b.lo     #0x5498
00005490 add      x17, x16, #1
00005494 str      x17, [x19, #0xb0]
00005498 ldr      x17, [x19, #0x68]
0000549c cmp      x17, x20
000054a0 b.lo     #0x54ac
000054a4 add      x0, x17, #1
000054a8 str      x0, [x19, #0x68]
000054ac ldr      x0, [x19, #0xb8]
000054b0 cmp      x0, x20
000054b4 b.lo     #0x54c0
000054b8 add      x3, x0, #1
000054bc str      x3, [x19, #0xb8]
000054c0 ldr      x3, [x19, #0x70]
000054c4 cmp      x3, x20
000054c8 b.lo     #0x54d4
000054cc add      x4, x3, #1
000054d0 str      x4, [x19, #0x70]
000054d4 ldr      x4, [x19, #0xc0]
000054d8 cmp      x4, x20
000054dc b.lo     #0x54e8
000054e0 add      x5, x4, #1
000054e4 str      x5, [x19, #0xc0]
000054e8 ldr      x5, [x19, #0x78]
000054ec cmp      x5, x20
000054f0 b.lo     #0x54fc
000054f4 add      x6, x5, #1
000054f8 str      x6, [x19, #0x78]
000054fc ldr      x6, [x19, #0xc8]
00005500 cmp      x6, x20
00005504 b.lo     #0x5510
00005508 add      x7, x6, #1
0000550c str      x7, [x19, #0xc8]
00005510 ldr      x7, [x19, #0x80]
00005514 cmp      x7, x20
00005518 b.lo     #0x5524
0000551c add      x1, x7, #1
00005520 str      x1, [x19, #0x80]
00005524 ldr      x1, [x19, #0xd0]
00005528 cmp      x1, x20
0000552c b.lo     #0x5538
00005530 add      x2, x1, #1
00005534 str      x2, [x19, #0xd0]
00005538 ldr      x2, [x19, #0x88]
0000553c cmp      x2, x20
00005540 b.lo     #0x554c
00005544 add      x9, x2, #1
00005548 str      x9, [x19, #0x88]
0000554c ldr      x9, [x19, #0xd8]
00005550 cmp      x9, x20
00005554 b.lo     #0x5560
00005558 add      x10, x9, #1
0000555c str      x10, [x19, #0xd8]
00005560 ldr      x9, [x19, #0x28]
00005564 lsl      x22, x20, #2
00005568 add      x1, x8, x22
0000556c add      x0, x1, #4
00005570 sub      x8, x9, x20
00005574 lsl      x8, x8, #2
00005578 sub      x2, x8, #4
0000557c bl       #0xb9dc
00005580 ldr      x19, [x19, #0x18]
00005584 str      w21, [x19, x22]
00005588 ldp      x29, x30, [sp, #0x20]
0000558c ldp      x20, x19, [sp, #0x10]
00005590 ldp      x22, x21, [sp], #0x30
00005594 ret      
00005598 stp      x28, x27, [sp, #-0x60]!
0000559c stp      x26, x25, [sp, #0x10]
000055a0 stp      x24, x23, [sp, #0x20]
000055a4 stp      x22, x21, [sp, #0x30]
000055a8 stp      x20, x19, [sp, #0x40]
000055ac stp      x29, x30, [sp, #0x50]
000055b0 add      x29, sp, #0x50
000055b4 sub      sp, sp, #0x1e0
000055b8 mov      x19, x0
000055bc mov      x26, x19
000055c0 ldr      x22, [x26, #0x38]!
000055c4 ldr      x27, [x22, #0x18]
000055c8 add      x24, x27, #1
000055cc str      x24, [x22, #0x18]
000055d0 ldp      x21, x25, [x26, #-8]
000055d4 ldr      x20, [x25, #0x10]
000055d8 cmp      x27, x21
000055dc b.hs     #0x56a0
000055e0 ldp      x13, x6, [x25, #0x20]
000055e4 lsr      x23, x27, #3
000055e8 and      w4, w27, #7
000055ec add      x21, x13, x27, lsl #5
000055f0 madd     x1, x20, x23, x6
000055f4 mov      w13, #1
000055f8 mov      x22, x21
000055fc mov      x25, x21
00005600 mov      x24, x21
00005604 mov      x23, x21
00005608 lsl      w14, w13, w4
0000560c strb     w14, [x22, #8]!
00005610 strb     wzr, [x25, #9]!
00005614 str      xzr, [x24, #0x10]!
00005618 str      xzr, [x23, #0x18]!
0000561c str      x1, [x21]
00005620 cbz      x21, #0x66dc
00005624 ldp      x0, x10, [x19]
00005628 add      x27, x0, #5
0000562c cmp      x27, x10
00005630 b.hs     #0x564c
00005634 adrp     x1, #0x10000
00005638 add      x1, x1, #0xcd8
0000563c mov      w2, #6
00005640 bl       #0xbbd0
00005644 cbz      w0, #0x5798
00005648 ldp      x0, x10, [x19]
0000564c add      x15, x0, #5
00005650 cmp      x15, x10
00005654 b.hs     #0x5670
00005658 adrp     x1, #0x10000
0000565c add      x1, x1, #0xcdf
00005660 mov      w2, #6
00005664 bl       #0xbbd0
00005668 cbz      w0, #0x581c
0000566c ldp      x0, x10, [x19]
00005670 cmp      x0, x10
00005674 b.hs     #0x56ec
00005678 ldrb     w5, [x0]
0000567c cmp      w5, #0x5e
00005680 b.ne     #0x56ec
00005684 add      x0, x0, #1
00005688 mov      w9, #1
0000568c str      w9, [sp, #0xc]
00005690 str      x0, [x19]
00005694 cmp      x0, x10
00005698 b.lo     #0x56f8
0000569c b        #0x59c4
000056a0 add      x5, x21, #8
000056a4 ldr      x2, [x19, #0x20]
000056a8 lsr      x28, x5, #3
000056ac lsl      x0, x5, #5
000056b0 str      x5, [x19, #0x30]
000056b4 mov      w11, #0x8000000
000056b8 ldr      x21, [x25, #0x10]
000056bc madd     x8, x21, x28, x0
000056c0 add      x9, x8, x2, lsl #2
000056c4 cmp      x9, x11
000056c8 b.hi     #0x66ac
000056cc ldr      x2, [x25, #0x20]
000056d0 mul      x21, x28, x20
000056d4 cbz      x2, #0x5738
000056d8 mov      x1, x0
000056dc bl       #0xc794
000056e0 ldr      x6, [x26]
000056e4 str      x0, [x6, #0x20]
000056e8 b        #0x5744
000056ec str      wzr, [sp, #0xc]
000056f0 cmp      x0, x10
000056f4 b.hs     #0x59c4
000056f8 ldrb     w3, [x0]
000056fc cmp      w3, #0x2d
00005700 b.eq     #0x599c
00005704 cmp      w3, #0x5d
00005708 b.ne     #0x59c4
0000570c add      x7, x0, #1
00005710 str      x7, [x19]
00005714 ldr      x5, [x21]
00005718 ldrb     w6, [x22]
0000571c ldrb     w7, [x5, #0x5d]
00005720 orr      w4, w7, w6
00005724 strb     w4, [x5, #0x5d]
00005728 ldrb     w7, [x25]
0000572c add      w8, w7, #0x5d
00005730 strb     w8, [x25]
00005734 b        #0x59c4
00005738 bl       #0xc698
0000573c ldr      x23, [x26]
00005740 str      x0, [x23, #0x20]
00005744 ldr      x0, [x26]
00005748 ldr      x2, [x0, #0x28]
0000574c cbz      x2, #0x5784
00005750 mov      x0, x21
00005754 mov      x1, x21
00005758 bl       #0xc794
0000575c ldr      x12, [x26]
00005760 str      x0, [x12, #0x28]
00005764 cbz      x27, #0x667c
00005768 sub      x1, x27, #1
0000576c mov      x13, #0x3fffffffffffffff
00005770 cmp      x1, x13
00005774 b.hs     #0x58a0
00005778 ldr      x12, [x26]
0000577c ldp      x2, x9, [x12, #0x20]
00005780 b        #0x58ac
00005784 mov      x0, x21
00005788 bl       #0xc698
0000578c ldr      x10, [x26]
00005790 str      x0, [x10, #0x28]
00005794 b        #0x667c
00005798 ldr      w8, [x19, #0x10]
0000579c cbnz     w8, #0x6828
000057a0 ldp      x26, x22, [x19, #0x20]
000057a4 cmp      x22, x26
000057a8 b.lo     #0x6814
000057ac add      x11, x26, #1
000057b0 lsr      x24, x11, #1
000057b4 add      x24, x24, x24, lsl #1
000057b8 cmp      x26, x24
000057bc b.hs     #0x6814
000057c0 ldp      x25, x21, [x19, #0x30]
000057c4 str      x24, [x19, #0x20]
000057c8 lsl      x0, x24, #2
000057cc mov      w12, #1
000057d0 ldr      x28, [x21, #0x10]
000057d4 lsr      x2, x25, #3
000057d8 add      x8, x0, x25, lsl #5
000057dc movk     w12, #0x800, lsl #16
000057e0 madd     x9, x28, x2, x8
000057e4 cmp      x9, x12
000057e8 b.lo     #0x67fc
000057ec str      x26, [x19, #0x20]
000057f0 mov      w16, #0xc
000057f4 str      w16, [x19, #0x10]
000057f8 adrp     x0, #0x13000
000057fc add      x0, x0, #0xd0
00005800 dup      v16.2d, x0
00005804 str      q16, [sp, #0x20]
00005808 ldr      x14, [sp, #0x28]
0000580c str      x14, [x19, #8]
00005810 ldr      x15, [sp, #0x20]
00005814 str      x15, [x19]
00005818 b        #0x6828
0000581c ldr      w1, [x19, #0x10]
00005820 cbnz     w1, #0x6864
00005824 ldp      x21, x11, [x19, #0x20]
00005828 cmp      x11, x21
0000582c b.lo     #0x6850
00005830 add      x9, x21, #1
00005834 lsr      x3, x9, #1
00005838 add      x25, x3, x3, lsl #1
0000583c cmp      x21, x25
00005840 b.hs     #0x6850
00005844 ldp      x10, x1, [x19, #0x30]
00005848 str      x25, [x19, #0x20]
0000584c lsl      x0, x25, #2
00005850 mov      w7, #1
00005854 ldr      x4, [x1, #0x10]
00005858 lsr      x17, x10, #3
0000585c add      x11, x0, x10, lsl #5
00005860 movk     w7, #0x800, lsl #16
00005864 madd     x5, x4, x17, x11
00005868 cmp      x5, x7
0000586c b.lo     #0x6838
00005870 str      x21, [x19, #0x20]
00005874 mov      w3, #0xc
00005878 str      w3, [x19, #0x10]
0000587c adrp     x16, #0x13000
00005880 add      x16, x16, #0xd0
00005884 dup      v17.2d, x16
00005888 str      q17, [sp, #0x30]
0000588c ldr      x22, [sp, #0x38]
00005890 str      x22, [x19, #8]
00005894 ldr      x21, [sp, #0x30]
00005898 str      x21, [x19]
0000589c b        #0x6864
000058a0 mov      x2, xzr
000058a4 mov      x12, xzr
000058a8 mov      x9, xzr
000058ac add      x4, x19, #0x40
000058b0 add      x8, x2, x27, lsl #5
000058b4 cmp      x4, x2
000058b8 sub      x14, x8, #0x18
000058bc cset     w8, ls
000058c0 cmp      x14, x26
000058c4 add      x13, x12, #0x30
000058c8 cset     w3, ls
000058cc cmp      x13, x2
000058d0 add      x15, x12, #0x20
000058d4 cset     w16, ls
000058d8 cmp      x14, x15
000058dc cset     w4, ls
000058e0 lsr      x12, x1, #0x39
000058e4 cbnz     x12, #0x5984
000058e8 orr      w22, w8, w3
000058ec cbz      w22, #0x5984
000058f0 orr      w10, w16, w4
000058f4 tbz      w10, #0, #0x5984
000058f8 cmp      x27, #0xf
000058fc b.le     #0x63e4
00005900 and      x10, x27, #0xf
00005904 sub      x0, x1, x10
00005908 mov      x6, xzr
0000590c mov      x7, x9
00005910 sub      x8, x0, #0xf
00005914 mov      x10, x2
00005918 lsl      x23, x20, #1
0000591c add      x12, x7, x20
00005920 str      x7, [x10]
00005924 str      x7, [x10, #0x20]
00005928 cmp      x6, x8
0000592c str      x7, [x10, #0x40]
00005930 add      x6, x6, #0x10
00005934 str      x7, [x10, #0x60]
00005938 str      x7, [x10, #0x80]
0000593c str      x7, [x10, #0xa0]
00005940 str      x7, [x10, #0xc0]
00005944 str      x7, [x10, #0xe0]
00005948 add      x7, x7, x23
0000594c str      x12, [x10, #0x100]
00005950 str      x12, [x10, #0x120]
00005954 str      x12, [x10, #0x140]
00005958 str      x12, [x10, #0x160]
0000595c str      x12, [x10, #0x180]
00005960 str      x12, [x10, #0x1a0]
00005964 str      x12, [x10, #0x1c0]
00005968 str      x12, [x10, #0x1e0]
0000596c add      x10, x10, #0x200
00005970 b.ne     #0x591c
00005974 add      x25, x0, #1
00005978 cmp      x25, x1
0000597c b.le     #0x63e8
00005980 b        #0x667c
00005984 and      x22, x27, #7
00005988 cmp      x1, #7
0000598c b.hs     #0x658c
00005990 mov      x13, xzr
00005994 cbnz     x22, #0x6650
00005998 b        #0x667c
0000599c add      x6, x0, #1
000059a0 str      x6, [x19]
000059a4 ldr      x0, [x21]
000059a8 ldrb     w27, [x22]
000059ac ldrb     w20, [x0, #0x2d]
000059b0 orr      w11, w20, w27
000059b4 strb     w11, [x0, #0x2d]
000059b8 ldrb     w10, [x25]
000059bc add      w13, w10, #0x2d
000059c0 strb     w13, [x25]
000059c4 ldp      x0, x8, [x19]
000059c8 cmp      x0, x8
000059cc b.hs     #0x61a4
000059d0 adrp     x20, #0x13000
000059d4 add      x20, x20, #0xd0
000059d8 dup      v0.2d, x20
000059dc str      q0, [sp, #0x10]
000059e0 b        #0x6198
000059e4 add      x15, x0, #1
000059e8 cmp      x15, x8
000059ec b.hs     #0x5a04
000059f0 cmp      w14, #0x2d
000059f4 b.ne     #0x5a04
000059f8 ldrb     w9, [x15]
000059fc cmp      w9, #0x5d
00005a00 b.eq     #0x61a4
00005a04 cmp      x0, x8
00005a08 b.hs     #0x5b30
00005a0c cmp      w14, #0x5b
00005a10 b.eq     #0x5a20
00005a14 cmp      w14, #0x2d
00005a18 b.ne     #0x5b30
00005a1c b        #0x66fc
00005a20 cmp      x15, x8
00005a24 b.hs     #0x5b30
00005a28 ldrb     w1, [x15]
00005a2c cmp      w1, #0x3d
00005a30 b.ne     #0x5b3c
00005a34 add      x27, x0, #2
00005a38 cmp      x27, x8
00005a3c str      x27, [x19]
00005a40 b.lo     #0x5a7c
00005a44 ldr      w4, [x19, #0x10]
00005a48 cbnz     w4, #0x5a54
00005a4c mov      w11, #7
00005a50 str      w11, [x19, #0x10]
00005a54 stur     q0, [x29, #-0x90]
00005a58 adrp     x2, #0x13000
00005a5c ldur     x3, [x29, #-0x88]
00005a60 add      x2, x2, #0xd0
00005a64 mov      x5, x2
00005a68 mov      x8, x5
00005a6c mov      x27, x5
00005a70 str      x3, [x19, #8]
00005a74 ldur     x10, [x29, #-0x90]
00005a78 str      x10, [x19]
00005a7c ldrb     w9, [x27]
00005a80 cmp      w9, #0x5d
00005a84 b.eq     #0x5a90
00005a88 cmp      w9, #0x2d
00005a8c b.ne     #0x5c94
00005a90 ldr      w27, [x19, #0x10]
00005a94 cbnz     w27, #0x5aa0
00005a98 mov      w13, #3
00005a9c str      w13, [x19, #0x10]
00005aa0 stur     q0, [x29, #-0xa0]
00005aa4 ldur     x4, [x29, #-0x98]
00005aa8 str      x4, [x19, #8]
00005aac ldur     x17, [x29, #-0xa0]
00005ab0 str      x17, [x19]
00005ab4 stur     q0, [x29, #-0xb0]
00005ab8 mov      w6, wzr
00005abc ldur     x11, [x29, #-0xa8]
00005ac0 str      x11, [x19, #8]
00005ac4 ldur     x5, [x29, #-0xb0]
00005ac8 str      x5, [x19]
00005acc ldr      x27, [x21]
00005ad0 ldrb     w10, [x22]
00005ad4 ldrb     w9, [x27, x6]
00005ad8 orr      w12, w9, w10
00005adc strb     w12, [x27, x6]
00005ae0 ldrb     w13, [x25]
00005ae4 add      w14, w13, w6
00005ae8 strb     w14, [x25]
00005aec ldp      x28, x8, [x19]
00005af0 cmp      x28, x8
00005af4 b.hs     #0x6720
00005af8 add      x1, x28, #1
00005afc cmp      x1, x8
00005b00 b.hs     #0x6744
00005b04 ldrb     w17, [x28]
00005b08 cmp      w17, #0x3d
00005b0c b.ne     #0x6744
00005b10 ldrb     w1, [x1]
00005b14 cmp      w1, #0x5d
00005b18 b.ne     #0x6744
00005b1c add      x0, x28, #2
00005b20 str      x0, [x19]
00005b24 cmp      x0, x8
00005b28 b.lo     #0x6198
00005b2c b        #0x61a4
00005b30 mov      w1, wzr
00005b34 cmp      w1, #0x3d
00005b38 b.eq     #0x5a34
00005b3c cmp      w1, #0x3a
00005b40 b.ne     #0x5bd4
00005b44 add      x28, x0, #2
00005b48 cmp      x28, x8
00005b4c str      x28, [x19]
00005b50 b.lo     #0x5b84
00005b54 ldr      w10, [x19, #0x10]
00005b58 cbnz     w10, #0x5b64
00005b5c mov      w12, #7
00005b60 str      w12, [x19, #0x10]
00005b64 stur     q0, [x29, #-0xf0]
00005b68 adrp     x28, #0x13000
00005b6c ldur     x20, [x29, #-0xe8]
00005b70 add      x28, x28, #0xd0
00005b74 mov      x8, x28
00005b78 str      x20, [x19, #8]
00005b7c ldur     x13, [x29, #-0xf0]
00005b80 str      x13, [x19]
00005b84 ldrb     w16, [x28]
00005b88 cmp      w16, #0x5d
00005b8c b.eq     #0x5b98
00005b90 cmp      w16, #0x2d
00005b94 b.ne     #0x5d54
00005b98 ldr      w9, [x19, #0x10]
00005b9c cbnz     w9, #0x5ba8
00005ba0 mov      w10, #4
00005ba4 str      w10, [x19, #0x10]
00005ba8 stur     q0, [x29, #-0x100]
00005bac adrp     x27, #0x13000
00005bb0 ldur     x6, [x29, #-0xf8]
00005bb4 add      x27, x27, #0xd0
00005bb8 mov      x15, x27
00005bbc mov      x28, x15
00005bc0 mov      x4, x15
00005bc4 str      x6, [x19, #8]
00005bc8 ldur     x1, [x29, #-0x100]
00005bcc str      x1, [x19]
00005bd0 b        #0x5da0
00005bd4 mov      x0, x19
00005bd8 bl       #0x8104
00005bdc ldp      x9, x20, [x19]
00005be0 mov      w27, w0
00005be4 cmp      x9, x20
00005be8 b.hs     #0x5c38
00005bec ldrb     w0, [x9]
00005bf0 cmp      w0, #0x2d
00005bf4 b.ne     #0x5c38
00005bf8 ldr      q0, [sp, #0x10]
00005bfc add      x2, x9, #1
00005c00 cmp      x2, x20
00005c04 b.hs     #0x5d94
00005c08 ldrb     w6, [x2]
00005c0c mov      w0, w27
00005c10 cmp      w6, #0x5d
00005c14 b.eq     #0x5c40
00005c18 str      x2, [x19]
00005c1c ldrb     w2, [x2]
00005c20 cmp      w2, #0x2d
00005c24 b.ne     #0x5ec4
00005c28 add      x11, x9, #2
00005c2c mov      w0, #0x2d
00005c30 str      x11, [x19]
00005c34 b        #0x5c40
00005c38 mov      w0, w27
00005c3c ldr      q0, [sp, #0x10]
00005c40 and      w15, w0, #0xff
00005c44 and      w17, w27, #0xff
00005c48 cmp      w17, w15
00005c4c b.hi     #0x6774
00005c50 ldr      x14, [x21]
00005c54 and      w13, w17, #0xff
00005c58 ldrb     w2, [x22]
00005c5c add      w8, w17, #1
00005c60 cmp      w17, w15
00005c64 ldrb     w3, [x14, x13]
00005c68 orr      w5, w3, w2
00005c6c strb     w5, [x14, x13]
00005c70 ldrb     w6, [x25]
00005c74 add      w7, w17, w6
00005c78 mov      w17, w8
00005c7c strb     w7, [x25]
00005c80 b.lt     #0x5c50
00005c84 ldp      x0, x8, [x19]
00005c88 cmp      x0, x8
00005c8c b.lo     #0x6198
00005c90 b        #0x61a4
00005c94 mov      x5, x27
00005c98 mov      x3, x27
00005c9c cmp      x27, x8
00005ca0 b.hs     #0x5cf8
00005ca4 add      x3, x27, #1
00005ca8 cmp      x3, x8
00005cac b.hs     #0x5cf0
00005cb0 mov      x5, x27
00005cb4 b        #0x5cc4
00005cb8 ldrb     w9, [x3]
00005cbc mov      x5, x3
00005cc0 mov      x3, x4
00005cc4 and      w10, w9, #0xff
00005cc8 cmp      w10, #0x3d
00005ccc b.ne     #0x5cdc
00005cd0 ldrb     w16, [x3]
00005cd4 cmp      w16, #0x5d
00005cd8 b.eq     #0x5f00
00005cdc add      x4, x3, #1
00005ce0 str      x3, [x19]
00005ce4 cmp      x4, x8
00005ce8 b.lo     #0x5cb8
00005cec mov      x3, x4
00005cf0 mov      x5, x3
00005cf4 str      x3, [x19]
00005cf8 cmp      x3, x8
00005cfc b.hs     #0x5f0c
00005d00 sub      x28, x5, x27
00005d04 adrp     x5, #0x11000
00005d08 add      x5, x5, #0x330
00005d0c adrp     x0, #0x10000
00005d10 add      x20, x5, #8
00005d14 add      x0, x0, #0xf07
00005d18 mov      x1, x27
00005d1c mov      x2, x28
00005d20 bl       #0xbbd0
00005d24 cbnz     w0, #0x5d34
00005d28 ldur     x17, [x20, #-8]
00005d2c ldrb     w11, [x17, x28]
00005d30 cbz      w11, #0x5eb8
00005d34 ldr      x0, [x20, #8]
00005d38 add      x20, x20, #0x10
00005d3c cbnz     x0, #0x5d18
00005d40 ldr      q0, [sp, #0x10]
00005d44 cmp      x28, #1
00005d48 b.ne     #0x5e8c
00005d4c ldrb     w6, [x27]
00005d50 b        #0x5acc
00005d54 cmp      x28, x8
00005d58 b.hs     #0x5d8c
00005d5c add      x4, x28, #1
00005d60 b        #0x5d68
00005d64 ldrb     w16, [x4], #1
00005d68 orr      w11, w16, #0x20
00005d6c and      w9, w11, #0xff
00005d70 sub      w12, w9, #0x61
00005d74 cmp      w12, #0x19
00005d78 b.hi     #0x5d9c
00005d7c cmp      x4, x8
00005d80 str      x4, [x19]
00005d84 b.lo     #0x5d64
00005d88 b        #0x5da0
00005d8c mov      x4, x28
00005d90 b        #0x5da0
00005d94 mov      w0, w27
00005d98 b        #0x5c40
00005d9c sub      x4, x4, #1
00005da0 sub      x27, x4, x28
00005da4 adrp     x0, #0x10000
00005da8 add      x0, x0, #0xce6
00005dac mov      x1, x28
00005db0 mov      x2, x27
00005db4 bl       #0xbbd0
00005db8 cbnz     w0, #0x5dcc
00005dbc adrp     x8, #0x11000
00005dc0 add      x8, x8, #0x1f8
00005dc4 cmp      x27, #5
00005dc8 b.eq     #0x603c
00005dcc adrp     x0, #0x10000
00005dd0 add      x0, x0, #0xd2c
00005dd4 mov      x1, x28
00005dd8 mov      x2, x27
00005ddc bl       #0xbbd0
00005de0 cmp      x27, #5
00005de4 b.ne     #0x5dfc
00005de8 cbnz     w0, #0x5dfc
00005dec adrp     x6, #0x11000
00005df0 add      x6, x6, #0x1f8
00005df4 add      x8, x6, #0x18
00005df8 b        #0x603c
00005dfc adrp     x0, #0x10000
00005e00 add      x0, x0, #0xd67
00005e04 mov      x1, x28
00005e08 mov      x2, x27
00005e0c bl       #0xbbd0
00005e10 cmp      x27, #5
00005e14 b.ne     #0x5e2c
00005e18 cbnz     w0, #0x5e2c
00005e1c adrp     x15, #0x11000
00005e20 add      x15, x15, #0x1f8
00005e24 add      x8, x15, #0x30
00005e28 b        #0x603c
00005e2c adrp     x0, #0x10000
00005e30 add      x0, x0, #0xd70
00005e34 mov      x1, x28
00005e38 mov      x2, x27
00005e3c bl       #0xbbd0
00005e40 cmp      x27, #5
00005e44 b.ne     #0x5e5c
00005e48 cbnz     w0, #0x5e5c
00005e4c adrp     x10, #0x11000
00005e50 add      x10, x10, #0x1f8
00005e54 add      x8, x10, #0x48
00005e58 b        #0x603c
00005e5c adrp     x0, #0x10000
00005e60 add      x0, x0, #0xd97
00005e64 mov      x1, x28
00005e68 mov      x2, x27
00005e6c bl       #0xbbd0
00005e70 cmp      x27, #5
00005e74 b.ne     #0x5ed0
00005e78 cbnz     w0, #0x5ed0
00005e7c adrp     x14, #0x11000
00005e80 add      x14, x14, #0x1f8
00005e84 add      x8, x14, #0x60
00005e88 b        #0x603c
00005e8c ldr      w0, [x19, #0x10]
00005e90 cbnz     w0, #0x5e9c
00005e94 mov      w16, #3
00005e98 str      w16, [x19, #0x10]
00005e9c stur     q0, [x29, #-0xc0]
00005ea0 mov      w6, wzr
00005ea4 ldur     x7, [x29, #-0xb8]
00005ea8 str      x7, [x19, #8]
00005eac ldur     x16, [x29, #-0xc0]
00005eb0 str      x16, [x19]
00005eb4 b        #0x5acc
00005eb8 ldrb     w6, [x20]
00005ebc ldr      q0, [sp, #0x10]
00005ec0 b        #0x5acc
00005ec4 mov      x0, x19
00005ec8 bl       #0x8104
00005ecc b        #0x5c3c
00005ed0 adrp     x0, #0x10000
00005ed4 add      x0, x0, #0xda8
00005ed8 mov      x1, x28
00005edc mov      x2, x27
00005ee0 bl       #0xbbd0
00005ee4 cmp      x27, #5
00005ee8 b.ne     #0x5f20
00005eec cbnz     w0, #0x5f20
00005ef0 adrp     x11, #0x11000
00005ef4 add      x11, x11, #0x1f8
00005ef8 add      x8, x11, #0x78
00005efc b        #0x603c
00005f00 sub      x3, x3, #1
00005f04 cmp      x3, x8
00005f08 b.lo     #0x5d00
00005f0c ldr      w20, [x19, #0x10]
00005f10 cbnz     w20, #0x5ab4
00005f14 mov      w14, #7
00005f18 str      w14, [x19, #0x10]
00005f1c b        #0x5ab4
00005f20 adrp     x0, #0x10000
00005f24 add      x0, x0, #0xe0d
00005f28 mov      x1, x28
00005f2c mov      x2, x27
00005f30 bl       #0xbbd0
00005f34 cmp      x27, #5
00005f38 b.ne     #0x5f50
00005f3c cbnz     w0, #0x5f50
00005f40 adrp     x13, #0x11000
00005f44 add      x13, x13, #0x1f8
00005f48 add      x8, x13, #0x90
00005f4c b        #0x603c
00005f50 adrp     x0, #0x10000
00005f54 add      x0, x0, #0xe2e
00005f58 mov      x1, x28
00005f5c mov      x2, x27
00005f60 bl       #0xbbd0
00005f64 cmp      x27, #5
00005f68 b.ne     #0x5f80
00005f6c cbnz     w0, #0x5f80
00005f70 adrp     x16, #0x11000
00005f74 add      x16, x16, #0x1f8
00005f78 add      x8, x16, #0xa8
00005f7c b        #0x603c
00005f80 adrp     x0, #0x10000
00005f84 add      x0, x0, #0xe94
00005f88 mov      x1, x28
00005f8c mov      x2, x27
00005f90 bl       #0xbbd0
00005f94 cmp      x27, #5
00005f98 b.ne     #0x5fb0
00005f9c cbnz     w0, #0x5fb0
00005fa0 adrp     x12, #0x11000
00005fa4 add      x12, x12, #0x1f8
00005fa8 add      x8, x12, #0xc0
00005fac b        #0x603c
00005fb0 adrp     x0, #0x10000
00005fb4 add      x0, x0, #0xebb
00005fb8 mov      x1, x28
00005fbc mov      x2, x27
00005fc0 bl       #0xbbd0
00005fc4 cmp      x27, #5
00005fc8 b.ne     #0x5fe0
00005fcc cbnz     w0, #0x5fe0
00005fd0 adrp     x0, #0x11000
00005fd4 add      x0, x0, #0x1f8
00005fd8 add      x8, x0, #0xd8
00005fdc b        #0x603c
00005fe0 adrp     x0, #0x10000
00005fe4 add      x0, x0, #0xec8
00005fe8 mov      x1, x28
00005fec mov      x2, x27
00005ff0 bl       #0xbbd0
00005ff4 cmp      x27, #5
00005ff8 b.ne     #0x6010
00005ffc cbnz     w0, #0x6010
00006000 adrp     x3, #0x11000
00006004 add      x3, x3, #0x1f8
00006008 add      x8, x3, #0xf0
0000600c b        #0x603c
00006010 adrp     x0, #0x10000
00006014 add      x0, x0, #0xee9
00006018 mov      x1, x28
0000601c mov      x2, x27
00006020 bl       #0xbbd0
00006024 cmp      x27, #6
00006028 b.ne     #0x616c
0000602c cbnz     w0, #0x616c
00006030 adrp     x7, #0x11000
00006034 add      x7, x7, #0x1f8
00006038 add      x8, x7, #0x108
0000603c ldr      x7, [x8, #8]
00006040 ldrb     w10, [x7]
00006044 cbz      w10, #0x6078
00006048 add      x9, x7, #1
0000604c ldr      x12, [x21]
00006050 and      w4, w10, #0xff
00006054 ldrb     w13, [x22]
00006058 ldrb     w14, [x12, x4]
0000605c orr      w15, w14, w13
00006060 strb     w15, [x12, x4]
00006064 ldrb     w16, [x25]
00006068 add      w17, w16, w10
0000606c strb     w17, [x25]
00006070 ldrb     w10, [x9], #1
00006074 cbnz     w10, #0x604c
00006078 ldr      x28, [x8, #0x10]
0000607c ldrb     w8, [x28]
00006080 cbz      w8, #0x6124
00006084 ldr      x27, [x24]
00006088 mov      x0, x28
0000608c bl       #0xb948
00006090 ldr      x8, [x24]
00006094 ldr      x2, [x23]
00006098 add      x10, x0, x8
0000609c add      x0, x10, #1
000060a0 str      x0, [x24]
000060a4 cbz      x2, #0x60dc
000060a8 mov      x1, x0
000060ac bl       #0xc794
000060b0 str      x0, [x23]
000060b4 cbz      x0, #0x60e8
000060b8 add      x8, x0, x27
000060bc sub      x0, x8, #1
000060c0 mov      x1, x28
000060c4 bl       #0xbb84
000060c8 ldr      x0, [x23]
000060cc ldr      x14, [x24]
000060d0 add      x16, x0, x14
000060d4 sturb    wzr, [x16, #-1]
000060d8 b        #0x6110
000060dc bl       #0xc698
000060e0 str      x0, [x23]
000060e4 cbnz     x0, #0x60b8
000060e8 ldr      w1, [x19, #0x10]
000060ec cbnz     w1, #0x60f8
000060f0 mov      w1, #0xc
000060f4 str      w1, [x19, #0x10]
000060f8 ldr      q0, [sp, #0x10]
000060fc str      q0, [sp, #0x110]
00006100 ldr      x9, [sp, #0x118]
00006104 str      x9, [x19, #8]
00006108 ldr      x12, [sp, #0x110]
0000610c str      x12, [x19]
00006110 mov      x0, x28
00006114 bl       #0xb948
00006118 add      x28, x28, x0
0000611c ldrb     w2, [x28, #1]!
00006120 cbnz     w2, #0x6084
00006124 ldp      x16, x8, [x19]
00006128 cmp      x16, x8
0000612c b.hs     #0x67a4
00006130 ldr      q0, [sp, #0x10]
00006134 add      x15, x16, #1
00006138 cmp      x15, x8
0000613c b.hs     #0x67cc
00006140 ldrb     w14, [x16]
00006144 cmp      w14, #0x3a
00006148 b.ne     #0x67cc
0000614c ldrb     w15, [x15]
00006150 cmp      w15, #0x5d
00006154 b.ne     #0x67cc
00006158 add      x0, x16, #2
0000615c str      x0, [x19]
00006160 cmp      x0, x8
00006164 b.lo     #0x6198
00006168 b        #0x61a4
0000616c ldr      w12, [x19, #0x10]
00006170 cbnz     w12, #0x617c
00006174 mov      w27, #4
00006178 str      w27, [x19, #0x10]
0000617c ldr      q0, [sp, #0x10]
00006180 str      q0, [sp, #0x120]
00006184 ldr      x28, [sp, #0x128]
00006188 str      x28, [x19, #8]
0000618c ldr      x2, [sp, #0x120]
00006190 str      x2, [x19]
00006194 b        #0x6124
00006198 ldrb     w14, [x0]
0000619c cmp      w14, #0x5d
000061a0 b.ne     #0x59e4
000061a4 cmp      x0, x8
000061a8 b.hs     #0x61f0
000061ac ldrb     w3, [x0]
000061b0 cmp      w3, #0x2d
000061b4 b.ne     #0x61f0
000061b8 add      x24, x0, #1
000061bc str      x24, [x19]
000061c0 ldr      x23, [x21]
000061c4 ldrb     w4, [x22]
000061c8 ldrb     w27, [x23, #0x2d]
000061cc orr      w20, w27, w4
000061d0 strb     w20, [x23, #0x2d]
000061d4 ldrb     w4, [x25]
000061d8 add      w5, w4, #0x2d
000061dc strb     w5, [x25]
000061e0 ldp      x0, x8, [x19]
000061e4 cmp      x0, x8
000061e8 b.hs     #0x63b0
000061ec b        #0x61f8
000061f0 cmp      x0, x8
000061f4 b.hs     #0x63b0
000061f8 add      x15, x0, #1
000061fc str      x15, [x19]
00006200 ldrb     w7, [x0]
00006204 cmp      w7, #0x5d
00006208 b.ne     #0x63b0
0000620c ldr      w10, [x19, #0x10]
00006210 cbnz     w10, #0x66dc
00006214 ldr      x3, [x26]
00006218 ldrb     w9, [x3, #0x30]
0000621c tbz      w9, #1, #0x68d4
00006220 ldr      x16, [x3, #0x10]
00006224 sub      x28, x16, #1
00006228 tbnz     x28, #0x3f, #0x68d4
0000622c and      x24, x16, #1
00006230 cbz      x28, #0x6360
00006234 sub      x23, x16, x24
00006238 ldr      x9, [x21]
0000623c and      x1, x28, #0xff
00006240 ldrb     w13, [x22]
00006244 ldrb     w12, [x9, x1]
00006248 and      w14, w13, w12
0000624c and      w8, w14, #0xff
00006250 cbz      w8, #0x62c4
00006254 orr      w11, w28, #0x20
00006258 sub      w10, w11, #0x61
0000625c cmp      w10, #0x19
00006260 b.hi     #0x62c4
00006264 sub      w13, w28, #0x41
00006268 cmp      w13, #0x19
0000626c b.hi     #0x6284
00006270 mov      w0, w28
00006274 bl       #0xbc48
00006278 cmp      x28, w0, sxtw
0000627c b.ne     #0x62a0
00006280 b        #0x62c4
00006284 mov      w0, w28
00006288 sub      w9, w28, #0x61
0000628c cmp      w9, #0x1a
00006290 b.hs     #0x6298
00006294 bl       #0xbc0c
00006298 cmp      x28, w0, sxtw
0000629c b.eq     #0x62c4
000062a0 ldr      x7, [x21]
000062a4 and      w5, w0, #0xff
000062a8 ldrb     w8, [x22]
000062ac ldrb     w1, [x7, x5]
000062b0 orr      w2, w1, w8
000062b4 strb     w2, [x7, x5]
000062b8 ldrb     w3, [x25]
000062bc add      w5, w0, w3
000062c0 strb     w5, [x25]
000062c4 sub      x27, x28, #1
000062c8 ldr      x2, [x21]
000062cc and      x3, x27, #0xff
000062d0 ldrb     w16, [x22]
000062d4 ldrb     w15, [x2, x3]
000062d8 and      w17, w16, w15
000062dc and      w11, w17, #0xff
000062e0 cbz      w11, #0x6354
000062e4 orr      w14, w27, #0x20
000062e8 sub      w16, w14, #0x61
000062ec cmp      w16, #0x19
000062f0 b.hi     #0x6354
000062f4 sub      w3, w28, #0x42
000062f8 cmp      w3, #0x1a
000062fc b.hs     #0x6314
00006300 mov      w0, w27
00006304 bl       #0xbc48
00006308 cmp      x27, w0, sxtw
0000630c b.ne     #0x6330
00006310 b        #0x6354
00006314 mov      w0, w27
00006318 sub      w7, w28, #0x62
0000631c cmp      w7, #0x1a
00006320 b.hs     #0x6328
00006324 bl       #0xbc0c
00006328 cmp      x27, w0, sxtw
0000632c b.eq     #0x6354
00006330 ldr      x27, [x21]
00006334 and      w17, w0, #0xff
00006338 ldrb     w8, [x22]
0000633c ldrb     w3, [x27, x17]
00006340 orr      w4, w3, w8
00006344 strb     w4, [x27, x17]
00006348 ldrb     w20, [x25]
0000634c add      w5, w0, w20
00006350 strb     w5, [x25]
00006354 sub      x23, x23, #2
00006358 sub      x28, x28, #2
0000635c cbnz     x23, #0x6238
00006360 cbz      x24, #0x68d4
00006364 ldr      x6, [x21]
00006368 and      x0, x28, #0xff
0000636c ldrb     w7, [x22]
00006370 ldrb     w6, [x6, x0]
00006374 and      w4, w7, w6
00006378 and      w12, w4, #0xff
0000637c cbz      w12, #0x68d4
00006380 orr      w12, w28, #0x20
00006384 sub      w14, w12, #0x61
00006388 cmp      w14, #0x19
0000638c b.hi     #0x68d4
00006390 sub      w15, w28, #0x41
00006394 cmp      w15, #0x1a
00006398 b.hs     #0x6894
0000639c mov      w0, w28
000063a0 bl       #0xbc48
000063a4 cmp      x28, w0, sxtw
000063a8 b.ne     #0x68b0
000063ac b        #0x68d4
000063b0 ldr      w11, [x19, #0x10]
000063b4 cbnz     w11, #0x63c0
000063b8 mov      w0, #7
000063bc str      w0, [x19, #0x10]
000063c0 adrp     x6, #0x13000
000063c4 add      x6, x6, #0xd0
000063c8 dup      v18.2d, x6
000063cc str      q18, [sp, #0xd0]
000063d0 ldr      x1, [sp, #0xd8]
000063d4 str      x1, [x19, #8]
000063d8 ldr      x28, [sp, #0xd0]
000063dc str      x28, [x19]
000063e0 b        #0x66dc
000063e4 mov      x25, xzr
000063e8 and      x11, x27, #8
000063ec cmp      x11, #7
000063f0 b.ls     #0x64bc
000063f4 add      x22, x25, #1
000063f8 add      x8, x25, #2
000063fc add      x14, x25, #3
00006400 add      x11, x25, #4
00006404 lsr      x15, x25, #3
00006408 lsr      x6, x22, #3
0000640c mul      x10, x20, x15
00006410 lsr      x24, x8, #3
00006414 mul      x5, x20, x6
00006418 lsr      x28, x14, #3
0000641c mul      x7, x20, x24
00006420 mul      x0, x20, x28
00006424 lsr      x23, x11, #3
00006428 add      x13, x25, #5
0000642c mul      x15, x20, x23
00006430 add      x16, x25, #6
00006434 add      x12, x25, #7
00006438 add      x4, x9, x10
0000643c add      x17, x9, x5
00006440 add      x3, x9, x7
00006444 add      x10, x9, x0
00006448 lsr      x5, x13, #3
0000644c lsr      x7, x16, #3
00006450 mul      x24, x20, x5
00006454 lsr      x0, x12, #3
00006458 mul      x28, x20, x7
0000645c add      x6, x9, x15
00006460 mul      x15, x20, x0
00006464 add      x23, x9, x24
00006468 add      x5, x9, x28
0000646c add      x24, x9, x15
00006470 lsl      x7, x25, #5
00006474 add      x25, x25, #8
00006478 lsl      x22, x22, #5
0000647c str      x4, [x2, x7]
00006480 lsl      x8, x8, #5
00006484 lsl      x14, x14, #5
00006488 str      x17, [x2, x22]
0000648c lsl      x11, x11, #5
00006490 str      x3, [x2, x8]
00006494 lsl      x13, x13, #5
00006498 str      x10, [x2, x14]
0000649c lsl      x16, x16, #5
000064a0 str      x6, [x2, x11]
000064a4 lsl      x12, x12, #5
000064a8 str      x23, [x2, x13]
000064ac cmp      x25, x1
000064b0 str      x5, [x2, x16]
000064b4 str      x24, [x2, x12]
000064b8 b.gt     #0x667c
000064bc and      x12, x27, #4
000064c0 cmp      x12, #3
000064c4 b.ls     #0x6530
000064c8 add      x0, x25, #1
000064cc add      x3, x25, #2
000064d0 add      x7, x25, #3
000064d4 lsr      x4, x25, #3
000064d8 lsr      x10, x0, #3
000064dc mul      x17, x20, x4
000064e0 lsr      x23, x3, #3
000064e4 mul      x28, x20, x10
000064e8 lsr      x5, x7, #3
000064ec mul      x15, x20, x23
000064f0 mul      x22, x20, x5
000064f4 add      x6, x9, x17
000064f8 add      x24, x9, x28
000064fc add      x8, x9, x15
00006500 add      x14, x9, x22
00006504 lsl      x11, x25, #5
00006508 add      x25, x25, #4
0000650c lsl      x0, x0, #5
00006510 str      x6, [x2, x11]
00006514 lsl      x3, x3, #5
00006518 lsl      x7, x7, #5
0000651c str      x24, [x2, x0]
00006520 cmp      x25, x1
00006524 str      x8, [x2, x3]
00006528 str      x14, [x2, x7]
0000652c b.gt     #0x667c
00006530 and      x13, x27, #2
00006534 cmp      x13, #1
00006538 b.ls     #0x6574
0000653c add      x4, x25, #1
00006540 lsr      x13, x25, #3
00006544 lsr      x12, x4, #3
00006548 mul      x16, x20, x13
0000654c mul      x10, x20, x12
00006550 lsl      x17, x25, #5
00006554 add      x6, x9, x16
00006558 add      x28, x9, x10
0000655c add      x25, x25, #2
00006560 lsl      x4, x4, #5
00006564 str      x6, [x2, x17]
00006568 cmp      x25, x1
0000656c str      x28, [x2, x4]
00006570 b.gt     #0x667c
00006574 lsr      x11, x25, #3
00006578 mul      x13, x20, x11
0000657c lsl      x25, x25, #5
00006580 add      x8, x9, x13
00006584 str      x8, [x2, x25]
00006588 b        #0x667c
0000658c mov      x16, xzr
00006590 mov      x13, xzr
00006594 sub      x11, x27, x22
00006598 ldr      x9, [x26]
0000659c lsr      x15, x13, #3
000065a0 mul      x17, x15, x20
000065a4 add      x13, x13, #8
000065a8 sub      x11, x11, #8
000065ac ldp      x1, x14, [x9, #0x20]
000065b0 add      x3, x14, x17
000065b4 str      x3, [x1, x16]
000065b8 ldr      x2, [x26]
000065bc ldp      x4, x10, [x2, #0x20]
000065c0 add      x5, x10, x17
000065c4 add      x28, x4, x16
000065c8 str      x5, [x28, #0x20]
000065cc ldr      x25, [x26]
000065d0 ldp      x23, x7, [x25, #0x20]
000065d4 add      x6, x7, x17
000065d8 add      x3, x23, x16
000065dc str      x6, [x3, #0x40]
000065e0 ldr      x7, [x26]
000065e4 ldp      x25, x24, [x7, #0x20]
000065e8 add      x1, x24, x17
000065ec add      x24, x25, x16
000065f0 str      x1, [x24, #0x60]
000065f4 ldr      x5, [x26]
000065f8 ldp      x0, x28, [x5, #0x20]
000065fc add      x2, x28, x17
00006600 add      x23, x0, x16
00006604 str      x2, [x23, #0x80]
00006608 ldr      x6, [x26]
0000660c ldp      x9, x8, [x6, #0x20]
00006610 add      x12, x8, x17
00006614 add      x0, x9, x16
00006618 str      x12, [x0, #0xa0]
0000661c ldr      x10, [x26]
00006620 ldp      x15, x14, [x10, #0x20]
00006624 add      x3, x14, x17
00006628 add      x12, x15, x16
0000662c str      x3, [x12, #0xc0]
00006630 ldr      x4, [x26]
00006634 ldp      x4, x10, [x4, #0x20]
00006638 add      x17, x10, x17
0000663c add      x8, x4, x16
00006640 add      x16, x16, #0x100
00006644 str      x17, [x8, #0xe0]
00006648 cbnz     x11, #0x6598
0000664c cbz      x22, #0x667c
00006650 lsl      x14, x13, #5
00006654 ldr      x16, [x26]
00006658 lsr      x5, x13, #3
0000665c mul      x7, x5, x20
00006660 add      x13, x13, #1
00006664 sub      x22, x22, #1
00006668 ldp      x17, x11, [x16, #0x20]
0000666c add      x16, x11, x7
00006670 str      x16, [x17, x14]
00006674 add      x14, x14, #0x20
00006678 cbnz     x22, #0x6654
0000667c ldr      x25, [x26]
00006680 ldr      x22, [x25, #0x20]
00006684 cbz      x22, #0x66ac
00006688 ldr      x0, [x25, #0x28]
0000668c cbz      x0, #0x66ac
00006690 sub      x21, x21, x20
00006694 add      x0, x0, x21
00006698 mov      w1, wzr
0000669c mov      x2, x20
000066a0 bl       #0xb8ac
000066a4 ldr      x25, [x26]
000066a8 b        #0x55e0
000066ac ldr      w9, [x19, #0x10]
000066b0 cbnz     w9, #0x66bc
000066b4 mov      w12, #0xc
000066b8 str      w12, [x19, #0x10]
000066bc adrp     x27, #0x13000
000066c0 add      x27, x27, #0xd0
000066c4 dup      v7.2d, x27
000066c8 stur     q7, [x29, #-0x70]
000066cc ldur     x26, [x29, #-0x68]
000066d0 str      x26, [x19, #8]
000066d4 ldur     x20, [x29, #-0x70]
000066d8 str      x20, [x19]
000066dc add      sp, sp, #0x1e0
000066e0 ldp      x29, x30, [sp, #0x50]
000066e4 ldp      x20, x19, [sp, #0x40]
000066e8 ldp      x22, x21, [sp, #0x30]
000066ec ldp      x24, x23, [sp, #0x20]
000066f0 ldp      x26, x25, [sp, #0x10]
000066f4 ldp      x28, x27, [sp], #0x60
000066f8 ret      
000066fc ldr      w0, [x19, #0x10]
00006700 cbnz     w0, #0x670c
00006704 mov      w22, #0xb
00006708 str      w22, [x19, #0x10]
0000670c stur     q0, [x29, #-0x80]
00006710 ldur     x27, [x29, #-0x78]
00006714 str      x27, [x19, #8]
00006718 ldur     x26, [x29, #-0x80]
0000671c b        #0x6764
00006720 ldr      w22, [x19, #0x10]
00006724 cbnz     w22, #0x6730
00006728 mov      w15, #7
0000672c str      w15, [x19, #0x10]
00006730 stur     q0, [x29, #-0xd0]
00006734 ldur     x22, [x29, #-0xc8]
00006738 str      x22, [x19, #8]
0000673c ldur     x21, [x29, #-0xd0]
00006740 str      x21, [x19]
00006744 ldr      w16, [x19, #0x10]
00006748 cbnz     w16, #0x6754
0000674c mov      w17, #3
00006750 str      w17, [x19, #0x10]
00006754 stur     q0, [x29, #-0xe0]
00006758 ldur     x27, [x29, #-0xd8]
0000675c str      x27, [x19, #8]
00006760 ldur     x26, [x29, #-0xe0]
00006764 str      x26, [x19]
00006768 ldr      w11, [x19, #0x10]
0000676c cbnz     w11, #0x63c0
00006770 b        #0x63b8
00006774 ldr      w8, [x19, #0x10]
00006778 cbnz     w8, #0x6784
0000677c mov      w1, #0xb
00006780 str      w1, [x19, #0x10]
00006784 str      q0, [sp, #0xe0]
00006788 ldr      x20, [sp, #0xe8]
0000678c str      x20, [x19, #8]
00006790 ldr      x13, [sp, #0xe0]
00006794 str      x13, [x19]
00006798 ldr      w11, [x19, #0x10]
0000679c cbnz     w11, #0x63c0
000067a0 b        #0x63b8
000067a4 ldr      w3, [x19, #0x10]
000067a8 ldr      q0, [sp, #0x10]
000067ac cbnz     w3, #0x67b8
000067b0 mov      w5, #7
000067b4 str      w5, [x19, #0x10]
000067b8 str      q0, [sp, #0x100]
000067bc ldr      x23, [sp, #0x108]
000067c0 str      x23, [x19, #8]
000067c4 ldr      x24, [sp, #0x100]
000067c8 str      x24, [x19]
000067cc ldr      w6, [x19, #0x10]
000067d0 cbnz     w6, #0x67dc
000067d4 mov      w7, #4
000067d8 str      w7, [x19, #0x10]
000067dc str      q0, [sp, #0xf0]
000067e0 ldr      x25, [sp, #0xf8]
000067e4 str      x25, [x19, #8]
000067e8 ldr      x15, [sp, #0xf0]
000067ec str      x15, [x19]
000067f0 ldr      w11, [x19, #0x10]
000067f4 cbnz     w11, #0x63c0
000067f8 b        #0x63b8
000067fc ldr      x2, [x19, #0x18]
00006800 mov      x1, x0
00006804 bl       #0xc794
00006808 cbz      x0, #0x6874
0000680c ldr      x22, [x19, #0x28]
00006810 str      x0, [x19, #0x18]
00006814 ldr      x26, [x19, #0x18]
00006818 add      x14, x22, #1
0000681c mov      w17, #-0x68000000
00006820 str      x14, [x19, #0x28]
00006824 str      w17, [x26, x22, lsl #2]
00006828 ldr      x22, [x19]
0000682c add      x13, x22, #6
00006830 str      x13, [x19]
00006834 b        #0x66dc
00006838 ldr      x2, [x19, #0x18]
0000683c mov      x1, x0
00006840 bl       #0xc794
00006844 cbz      x0, #0x6884
00006848 ldr      x11, [x19, #0x28]
0000684c str      x0, [x19, #0x18]
00006850 ldr      x2, [x19, #0x18]
00006854 add      x28, x11, #1
00006858 mov      w5, #-0x60000000
0000685c str      x28, [x19, #0x28]
00006860 str      w5, [x2, x11, lsl #2]
00006864 ldr      x25, [x19]
00006868 add      x3, x25, #6
0000686c str      x3, [x19]
00006870 b        #0x66dc
00006874 ldr      w15, [x19, #0x10]
00006878 str      x26, [x19, #0x20]
0000687c cbnz     w15, #0x57f8
00006880 b        #0x57f0
00006884 ldr      w2, [x19, #0x10]
00006888 str      x21, [x19, #0x20]
0000688c cbnz     w2, #0x587c
00006890 b        #0x5874
00006894 mov      w0, w28
00006898 sub      w16, w28, #0x61
0000689c cmp      w16, #0x19
000068a0 b.hi     #0x68a8
000068a4 bl       #0xbc0c
000068a8 cmp      x28, w0, sxtw
000068ac b.eq     #0x68d4
000068b0 ldr      x28, [x21]
000068b4 and      w12, w0, #0xff
000068b8 ldrb     w27, [x22]
000068bc ldrb     w20, [x28, x12]
000068c0 orr      w11, w20, w27
000068c4 strb     w11, [x28, x12]
000068c8 ldrb     w10, [x25]
000068cc add      w0, w0, w10
000068d0 strb     w0, [x25]
000068d4 ldr      w15, [sp, #0xc]
000068d8 cbz      w15, #0x6ab4
000068dc ldr      x8, [x26]
000068e0 ldr      x28, [x8, #0x10]
000068e4 sub      x3, x28, #1
000068e8 tbnz     x3, #0x3f, #0x6a8c
000068ec and      x4, x28, #3
000068f0 cmp      x3, #3
000068f4 b.lo     #0x6a38
000068f8 sub      x23, x28, x4
000068fc sub      x8, x28, #4
00006900 add      w10, w8, #3
00006904 ldr      x6, [x21]
00006908 and      x14, x10, #0xff
0000690c ldrb     w0, [x22]
00006910 ldrb     w27, [x6, x14]
00006914 and      w9, w0, w27
00006918 cbz      w9, #0x6930
0000691c bic      w12, w27, w0
00006920 strb     w12, [x6, x14]
00006924 ldrb     w13, [x25]
00006928 sub      w0, w13, w3
0000692c b        #0x6944
00006930 orr      w15, w0, w27
00006934 strb     w15, [x6, x14]
00006938 ldrb     w16, [x25]
0000693c add      w17, w8, w16
00006940 add      w0, w17, #3
00006944 add      w16, w8, #2
00006948 ldr      x24, [x21]
0000694c and      x27, x16, #0xff
00006950 strb     w0, [x25]
00006954 ldrb     w5, [x22]
00006958 ldrb     w17, [x24, x27]
0000695c and      w14, w5, w17
00006960 cbz      w14, #0x697c
00006964 bic      w9, w17, w5
00006968 strb     w9, [x24, x27]
0000696c sub      x9, x3, #1
00006970 ldrb     w13, [x25]
00006974 sub      w2, w13, w9
00006978 b        #0x6990
0000697c orr      w16, w5, w17
00006980 strb     w16, [x24, x27]
00006984 ldrb     w14, [x25]
00006988 add      w11, w8, w14
0000698c add      w2, w11, #2
00006990 add      w1, w8, #1
00006994 ldr      x7, [x21]
00006998 and      x10, x1, #0xff
0000699c strb     w2, [x25]
000069a0 ldrb     w6, [x22]
000069a4 ldrb     w1, [x7, x10]
000069a8 and      w11, w6, w1
000069ac cbz      w11, #0x69c8
000069b0 bic      w12, w1, w6
000069b4 sub      x2, x3, #2
000069b8 strb     w12, [x7, x10]
000069bc ldrb     w10, [x25]
000069c0 sub      w6, w10, w2
000069c4 b        #0x69dc
000069c8 orr      w27, w6, w1
000069cc strb     w27, [x7, x10]
000069d0 ldrb     w1, [x25]
000069d4 add      w12, w8, w1
000069d8 add      w6, w12, #1
000069dc ldr      x5, [x21]
000069e0 and      x12, x8, #0xff
000069e4 strb     w6, [x25]
000069e8 ldrb     w7, [x22]
000069ec ldrb     w2, [x5, x12]
000069f0 and      w0, w7, w2
000069f4 cbz      w0, #0x6a10
000069f8 bic      w7, w2, w7
000069fc sub      x28, x3, #3
00006a00 strb     w7, [x5, x12]
00006a04 ldrb     w2, [x25]
00006a08 sub      w14, w2, w28
00006a0c b        #0x6a20
00006a10 orr      w6, w7, w2
00006a14 strb     w6, [x5, x12]
00006a18 ldrb     w17, [x25]
00006a1c add      w14, w8, w17
00006a20 sub      x3, x3, #4
00006a24 strb     w14, [x25]
00006a28 sub      x23, x23, #4
00006a2c sub      x8, x8, #4
00006a30 cbnz     x23, #0x6900
00006a34 add      x3, x8, #3
00006a38 cbz      x4, #0x6a88
00006a3c ldr      x0, [x21]
00006a40 and      x13, x3, #0xff
00006a44 ldrb     w11, [x22]
00006a48 ldrb     w20, [x0, x13]
00006a4c and      w17, w11, w20
00006a50 cbz      w17, #0x6a68
00006a54 bic      w8, w20, w11
00006a58 strb     w8, [x0, x13]
00006a5c ldrb     w1, [x25]
00006a60 sub      w15, w1, w3
00006a64 b        #0x6a78
00006a68 orr      w2, w11, w20
00006a6c strb     w2, [x0, x13]
00006a70 ldrb     w5, [x25]
00006a74 add      w15, w3, w5
00006a78 sub      x4, x4, #1
00006a7c strb     w15, [x25]
00006a80 sub      x3, x3, #1
00006a84 cbnz     x4, #0x6a3c
00006a88 ldr      x8, [x26]
00006a8c ldrb     w3, [x8, #0x30]
00006a90 tbz      w3, #3, #0x6ab4
00006a94 ldr      x4, [x21]
00006a98 ldrb     w6, [x22]
00006a9c ldrb     w7, [x4, #0xa]
00006aa0 bic      w27, w7, w6
00006aa4 strb     w27, [x4, #0xa]
00006aa8 ldrb     w1, [x25]
00006aac add      w0, w1, #0xf6
00006ab0 strb     w0, [x25]
00006ab4 ldr      x9, [x26]
00006ab8 ldr      x8, [x9, #0x10]
00006abc cbz      x8, #0x7024
00006ac0 ldr      x10, [x21]
00006ac4 sub      x12, x8, #1
00006ac8 ldrb     w11, [x22]
00006acc cmp      x12, #0x80
00006ad0 b.hs     #0x6b1c
00006ad4 cmp      x8, #0xf
00006ad8 b.le     #0x6be0
00006adc and      x27, x8, #0xf
00006ae0 dup      v0.16b, w11
00006ae4 sub      x13, x12, x27
00006ae8 sub      x24, x13, #0xf
00006aec lsr      x23, x24, #4
00006af0 add      x17, x23, #1
00006af4 and      x14, x17, #3
00006af8 cmp      x24, #0x30
00006afc b.hs     #0x6bec
00006b00 movi     v1.2d, #0000000000000000
00006b04 mov      x15, xzr
00006b08 mov      v3.16b, v1.16b
00006b0c mov      v2.16b, v1.16b
00006b10 mov      v4.16b, v1.16b
00006b14 cbnz     x14, #0x6ee8
00006b18 b        #0x6fac
00006b1c and      x15, x8, #7
00006b20 mov      w13, wzr
00006b24 mov      x14, xzr
00006b28 sub      x17, x8, x15
00006b2c mov      w4, #5
00006b30 and      x27, x14, #0xf8
00006b34 orr      x24, x27, #1
00006b38 orr      x23, x27, #2
00006b3c orr      x1, x27, #3
00006b40 ldrb     w20, [x10, x27]
00006b44 orr      x2, x27, #4
00006b48 ldrb     w0, [x10, x24]
00006b4c orr      x12, x27, x4
00006b50 ldrb     w16, [x10, x23]
00006b54 orr      x3, x27, #6
00006b58 ldrb     w1, [x10, x1]
00006b5c orr      x7, x27, #7
00006b60 ldrb     w2, [x10, x2]
00006b64 tst      w20, w11
00006b68 ldrb     w12, [x10, x12]
00006b6c cinc     w13, w13, ne
00006b70 ldrb     w3, [x10, x3]
00006b74 tst      w0, w11
00006b78 ldrb     w7, [x10, x7]
00006b7c cinc     w5, w13, ne
00006b80 tst      w16, w11
00006b84 cinc     w6, w5, ne
00006b88 tst      w1, w11
00006b8c cinc     w27, w6, ne
00006b90 tst      w2, w11
00006b94 cinc     w20, w27, ne
00006b98 tst      w12, w11
00006b9c cinc     w0, w20, ne
00006ba0 tst      w3, w11
00006ba4 cinc     w16, w0, ne
00006ba8 tst      w7, w11
00006bac add      x14, x14, #8
00006bb0 sub      x17, x17, #8
00006bb4 cinc     w13, w16, ne
00006bb8 cbnz     x17, #0x6b30
00006bbc cbz      x15, #0x6ff4
00006bc0 and      x17, x14, #0xff
00006bc4 sub      x15, x15, #1
00006bc8 add      x14, x14, #1
00006bcc ldrb     w4, [x10, x17]
00006bd0 tst      w4, w11
00006bd4 cinc     w13, w13, ne
00006bd8 cbnz     x15, #0x6bc0
00006bdc b        #0x6ff4
00006be0 mov      w13, wzr
00006be4 mov      x27, xzr
00006be8 b        #0x6fd4
00006bec movi     v1.2d, #0000000000000000
00006bf0 mov      x15, xzr
00006bf4 movi     v5.16b, #1
00006bf8 sub      x16, x17, x14
00006bfc mov      v3.16b, v1.16b
00006c00 mov      v2.16b, v1.16b
00006c04 mov      v4.16b, v1.16b
00006c08 and      x17, x15, #0xc0
00006c0c add      x28, x10, x17
00006c10 mov      x2, x28
00006c14 mov      x0, x28
00006c18 ldrb     w5, [x28, #3]
00006c1c sub      x16, x16, #4
00006c20 ldrb     w1, [x28, #2]
00006c24 add      x15, x15, #0x40
00006c28 ldrb     w23, [x28, #1]
00006c2c ldrb     w3, [x28]
00006c30 ldrb     w4, [x2, #4]!
00006c34 ldrb     w27, [x28, #5]
00006c38 bfi      x1, x5, #8, #8
00006c3c bfi      x3, x23, #8, #8
00006c40 ldrb     w20, [x2, #3]
00006c44 bfi      x3, x1, #0x10, #0x10
00006c48 ldrb     w6, [x2, #2]
00006c4c bfi      w4, w27, #8, #8
00006c50 bfi      w6, w20, #8, #8
00006c54 bfi      w4, w6, #0x10, #0x10
00006c58 bfi      x3, x4, #0x20, #0x20
00006c5c str      x3, [sp, #0x90]
00006c60 orr      x3, x17, #0x10
00006c64 ldrb     w24, [x28, #9]
00006c68 ldrb     w7, [x0, #8]!
00006c6c bfi      x7, x24, #8, #8
00006c70 ldrb     w27, [x0, #3]
00006c74 ldrb     w20, [x0, #2]
00006c78 ldrb     w6, [x0, #4]!
00006c7c ldrb     w2, [x28, #0xd]
00006c80 bfi      x20, x27, #8, #8
00006c84 ldrb     w1, [x0, #3]
00006c88 ldrb     w4, [x0, #2]
00006c8c bfi      w6, w2, #8, #8
00006c90 bfi      x7, x20, #0x10, #0x10
00006c94 bfi      w4, w1, #8, #8
00006c98 add      x1, x10, x3
00006c9c bfi      w6, w4, #0x10, #0x10
00006ca0 mov      x4, x1
00006ca4 bfi      x7, x6, #0x20, #0x20
00006ca8 str      x7, [sp, #0x98]
00006cac ldr      q6, [sp, #0x90]
00006cb0 ldrb     w28, [x1, #3]
00006cb4 ldrb     w2, [x1, #2]
00006cb8 ldrb     w0, [x1, #1]
00006cbc ldrb     w5, [x1]
00006cc0 cmtst    v30.16b, v6.16b, v0.16b
00006cc4 ldrb     w23, [x4, #4]!
00006cc8 ldrb     w20, [x1, #5]
00006ccc bfi      x2, x28, #8, #8
00006cd0 orr      x28, x17, #0x20
00006cd4 bfi      x5, x0, #8, #8
00006cd8 ldrb     w3, [x4, #3]
00006cdc bfi      x5, x2, #0x10, #0x10
00006ce0 ldrb     w7, [x4, #2]
00006ce4 bfi      w23, w20, #8, #8
00006ce8 add      x2, x10, x28
00006cec and      v31.16b, v30.16b, v5.16b
00006cf0 orr      x17, x17, #0x30
00006cf4 bfi      w7, w3, #8, #8
00006cf8 bfi      w23, w7, #0x10, #0x10
00006cfc mov      x7, x1
00006d00 ushll2   v18.8h, v31.16b, #0
00006d04 bfi      x5, x23, #0x20, #0x20
00006d08 str      x5, [sp, #0xc0]
00006d0c ldrb     w3, [x1, #9]
00006d10 ldrb     w4, [x7, #8]!
00006d14 uaddw    v2.4s, v2.4s, v18.4h
00006d18 uaddw2   v4.4s, v4.4s, v18.8h
00006d1c bfi      x4, x3, #8, #8
00006d20 ldrb     w24, [x7, #3]
00006d24 ldrb     w27, [x7, #2]
00006d28 ldrb     w20, [x7, #4]!
00006d2c ldrb     w6, [x1, #0xd]
00006d30 bfi      x27, x24, #8, #8
00006d34 ldrb     w0, [x7, #3]
00006d38 mov      x24, x2
00006d3c ldrb     w5, [x7, #2]
00006d40 bfi      w20, w6, #8, #8
00006d44 bfi      x4, x27, #0x10, #0x10
00006d48 mov      x27, x2
00006d4c bfi      w5, w0, #8, #8
00006d50 bfi      w20, w5, #0x10, #0x10
00006d54 bfi      x4, x20, #0x20, #0x20
00006d58 str      x4, [sp, #0xc8]
00006d5c ldr      q7, [sp, #0xc0]
00006d60 ldrb     w1, [x2, #3]
00006d64 ldrb     w7, [x2, #2]
00006d68 ldrb     w6, [x2, #1]
00006d6c ldrb     w28, [x2]
00006d70 cmtst    v6.16b, v7.16b, v0.16b
00006d74 ldrb     w0, [x27, #4]!
00006d78 ldrb     w3, [x2, #5]
00006d7c bfi      x7, x1, #8, #8
00006d80 ushll    v7.8h, v31.8b, #0
00006d84 bfi      x28, x6, #8, #8
00006d88 ldrb     w4, [x27, #3]
00006d8c bfi      x28, x7, #0x10, #0x10
00006d90 ldrb     w27, [x27, #2]
00006d94 bfi      w0, w3, #8, #8
00006d98 and      v17.16b, v6.16b, v5.16b
00006d9c uaddw    v1.4s, v1.4s, v7.4h
00006da0 bfi      w27, w4, #8, #8
00006da4 uaddw2   v3.4s, v3.4s, v7.8h
00006da8 bfi      w0, w27, #0x10, #0x10
00006dac ushll    v19.8h, v17.8b, #0
00006db0 bfi      x28, x0, #0x20, #0x20
00006db4 ushll2   v21.8h, v17.16b, #0
00006db8 str      x28, [sp, #0xb0]
00006dbc ldrb     w5, [x2, #9]
00006dc0 ldrb     w23, [x24, #8]!
00006dc4 uaddw    v23.4s, v1.4s, v19.4h
00006dc8 uaddw2   v24.4s, v3.4s, v19.8h
00006dcc bfi      x23, x5, #8, #8
00006dd0 uaddw    v26.4s, v2.4s, v21.4h
00006dd4 ldrb     w3, [x24, #3]
00006dd8 add      x5, x10, x17
00006ddc ldrb     w4, [x24, #2]
00006de0 uaddw2   v29.4s, v4.4s, v21.8h
00006de4 ldrb     w27, [x24, #4]!
00006de8 ldrb     w2, [x2, #0xd]
00006dec bfi      x4, x3, #8, #8
00006df0 ldrb     w1, [x24, #3]
00006df4 ldrb     w7, [x24, #2]
00006df8 bfi      w27, w2, #8, #8
00006dfc bfi      x23, x4, #0x10, #0x10
00006e00 bfi      w7, w1, #8, #8
00006e04 bfi      w27, w7, #0x10, #0x10
00006e08 bfi      x23, x27, #0x20, #0x20
00006e0c str      x23, [sp, #0xb8]
00006e10 mov      x23, x5
00006e14 ldr      q16, [sp, #0xb0]
00006e18 ldrb     w17, [x5, #3]
00006e1c ldrb     w2, [x5, #2]
00006e20 ldrb     w24, [x5, #1]
00006e24 ldrb     w20, [x5]
00006e28 cmtst    v16.16b, v16.16b, v0.16b
00006e2c ldrb     w1, [x23, #4]!
00006e30 ldrb     w4, [x5, #5]
00006e34 bfi      x2, x17, #8, #8
00006e38 bfi      x20, x24, #8, #8
00006e3c ldrb     w0, [x23, #3]
00006e40 bfi      x20, x2, #0x10, #0x10
00006e44 ldrb     w6, [x23, #2]
00006e48 bfi      w1, w4, #8, #8
00006e4c and      v20.16b, v16.16b, v5.16b
00006e50 bfi      w6, w0, #8, #8
00006e54 bfi      w1, w6, #0x10, #0x10
00006e58 mov      x6, x5
00006e5c ushll    v25.8h, v20.8b, #0
00006e60 bfi      x20, x1, #0x20, #0x20
00006e64 ushll2   v28.8h, v20.16b, #0
00006e68 str      x20, [sp, #0xa0]
00006e6c ldrb     w7, [x5, #9]
00006e70 ldrb     w28, [x6, #8]!
00006e74 uaddw    v30.4s, v23.4s, v25.4h
00006e78 uaddw2   v31.4s, v24.4s, v25.8h
00006e7c bfi      x28, x7, #8, #8
00006e80 uaddw    v7.4s, v26.4s, v28.4h
00006e84 ldrb     w0, [x6, #3]
00006e88 uaddw2   v18.4s, v29.4s, v28.8h
00006e8c ldrb     w23, [x6, #2]
00006e90 ldrb     w3, [x6, #4]!
00006e94 ldrb     w5, [x5, #0xd]
00006e98 bfi      x23, x0, #8, #8
00006e9c ldrb     w17, [x6, #3]
00006ea0 ldrb     w20, [x6, #2]
00006ea4 bfi      w3, w5, #8, #8
00006ea8 bfi      x28, x23, #0x10, #0x10
00006eac bfi      w20, w17, #8, #8
00006eb0 bfi      w3, w20, #0x10, #0x10
00006eb4 bfi      x28, x3, #0x20, #0x20
00006eb8 str      x28, [sp, #0xa8]
00006ebc ldr      q6, [sp, #0xa0]
00006ec0 cmtst    v22.16b, v6.16b, v0.16b
00006ec4 and      v27.16b, v22.16b, v5.16b
00006ec8 ushll    v6.8h, v27.8b, #0
00006ecc ushll2   v17.8h, v27.16b, #0
00006ed0 uaddw    v1.4s, v30.4s, v6.4h
00006ed4 uaddw2   v3.4s, v31.4s, v6.8h
00006ed8 uaddw    v2.4s, v7.4s, v17.4h
00006edc uaddw2   v4.4s, v18.4s, v17.8h
00006ee0 cbnz     x16, #0x6c08
00006ee4 cbz      x14, #0x6fac
00006ee8 movi     v6.16b, #1
00006eec and      x17, x15, #0xf0
00006ef0 add      x5, x10, x17
00006ef4 mov      x6, x5
00006ef8 mov      x1, x5
00006efc ldrb     w17, [x5, #3]
00006f00 sub      x14, x14, #1
00006f04 ldrb     w24, [x5, #2]
00006f08 add      x15, x15, #0x10
00006f0c ldrb     w7, [x5, #1]
00006f10 ldrb     w16, [x5]
00006f14 ldrb     w27, [x6, #4]!
00006f18 ldrb     w0, [x5, #5]
00006f1c bfi      x24, x17, #8, #8
00006f20 bfi      x16, x7, #8, #8
00006f24 ldrb     w3, [x6, #3]
00006f28 bfi      x16, x24, #0x10, #0x10
00006f2c ldrb     w2, [x6, #2]
00006f30 bfi      w27, w0, #8, #8
00006f34 bfi      w2, w3, #8, #8
00006f38 bfi      w27, w2, #0x10, #0x10
00006f3c bfi      x16, x27, #0x20, #0x20
00006f40 str      x16, [sp, #0x80]
00006f44 ldrb     w20, [x5, #9]
00006f48 ldrb     w28, [x1, #8]!
00006f4c bfi      x28, x20, #8, #8
00006f50 ldrb     w6, [x1, #3]
00006f54 ldrb     w2, [x1, #2]
00006f58 ldrb     w0, [x1, #4]!
00006f5c ldrb     w5, [x5, #0xd]
00006f60 bfi      x2, x6, #8, #8
00006f64 ldrb     w7, [x1, #3]
00006f68 ldrb     w17, [x1, #2]
00006f6c bfi      w0, w5, #8, #8
00006f70 bfi      x28, x2, #0x10, #0x10
00006f74 bfi      w17, w7, #8, #8
00006f78 bfi      w0, w17, #0x10, #0x10
00006f7c bfi      x28, x0, #0x20, #0x20
00006f80 str      x28, [sp, #0x88]
00006f84 ldr      q5, [sp, #0x80]
00006f88 cmtst    v21.16b, v5.16b, v0.16b
00006f8c and      v22.16b, v21.16b, v6.16b
00006f90 ushll    v23.8h, v22.8b, #0
00006f94 ushll2   v24.8h, v22.16b, #0
00006f98 uaddw    v1.4s, v1.4s, v23.4h
00006f9c uaddw2   v3.4s, v3.4s, v23.8h
00006fa0 uaddw    v2.4s, v2.4s, v24.4h
00006fa4 uaddw2   v4.4s, v4.4s, v24.8h
00006fa8 cbnz     x14, #0x6eec
00006fac add      v25.4s, v1.4s, v3.4s
00006fb0 add      x27, x13, #1
00006fb4 add      v26.4s, v2.4s, v4.4s
00006fb8 cmp      x27, x12
00006fbc add      v27.4s, v25.4s, v26.4s
00006fc0 ext      v28.16b, v27.16b, v27.16b, #8
00006fc4 add      v0.2s, v27.2s, v28.2s
00006fc8 addp     v29.2s, v0.2s, v0.2s
00006fcc fmov     w13, s29
00006fd0 b.gt     #0x6ff4
00006fd4 and      x15, x27, #0xff
00006fd8 add      x14, x27, #1
00006fdc ldrb     w15, [x10, x15]
00006fe0 tst      w15, w11
00006fe4 cinc     w13, w13, ne
00006fe8 cmp      x27, x12
00006fec mov      x27, x14
00006ff0 b.lt     #0x6fd4
00006ff4 cmp      w13, #1
00006ff8 b.ne     #0x7024
00006ffc mov      x23, xzr
00007000 and      x14, x23, #0xff
00007004 ldrb     w14, [x10, x14]
00007008 and      w15, w14, w11
0000700c cbnz     w15, #0x7100
00007010 add      x23, x23, #1
00007014 cmp      x23, x8
00007018 b.lo     #0x7000
0000701c mov      w28, wzr
00007020 b        #0x7104
00007024 ldr      x11, [x9, #0x18]
00007028 cmp      x11, #1
0000702c b.lt     #0x70d0
00007030 ldr      x28, [x9, #0x20]
00007034 ldrb     w9, [x25]
00007038 add      x11, x28, x11, lsl #5
0000703c cbz      x8, #0x70b0
00007040 cmp      x28, x21
00007044 b.eq     #0x70a0
00007048 ldrb     w6, [x28, #9]
0000704c cmp      w6, w9
00007050 b.ne     #0x70a0
00007054 ldr      x10, [x28]
00007058 mov      x1, xzr
0000705c ldrb     w12, [x28, #8]
00007060 ldr      x2, [x21]
00007064 ldrb     w13, [x22]
00007068 and      x17, x1, #0xff
0000706c ldrb     w4, [x10, x17]
00007070 ldrb     w3, [x2, x17]
00007074 tst      w4, w12
00007078 cset     w27, ne
0000707c tst      w3, w13
00007080 cset     w7, ne
00007084 eor      w0, w27, w7
00007088 tbnz     w0, #0, #0x7098
0000708c add      x1, x1, #1
00007090 cmp      x1, x8
00007094 b.lo     #0x7068
00007098 cmp      x1, x8
0000709c b.eq     #0x70e0
000070a0 add      x28, x28, #0x20
000070a4 cmp      x28, x11
000070a8 b.lo     #0x7040
000070ac b        #0x70d0
000070b0 cmp      x28, x21
000070b4 b.eq     #0x70c4
000070b8 ldrb     w5, [x28, #9]
000070bc cmp      w5, w9
000070c0 b.eq     #0x70e0
000070c4 add      x28, x28, #0x20
000070c8 cmp      x28, x11
000070cc b.lo     #0x70b0
000070d0 mov      x28, x21
000070d4 ldr      w22, [x19, #0x10]
000070d8 cbnz     w22, #0x66dc
000070dc b        #0x7328
000070e0 cbz      x8, #0x7304
000070e4 and      x7, x8, #7
000070e8 sub      x15, x8, #1
000070ec cmp      x15, #7
000070f0 b.hs     #0x7140
000070f4 mov      x5, xzr
000070f8 cbnz     x7, #0x72cc
000070fc b        #0x7304
00007100 and      w28, w23, #0xff
00007104 ldrb     w11, [x9, #0x30]
00007108 ldr      x27, [x9, #0x70]
0000710c tbz      w11, #1, #0x73c8
00007110 orr      w13, w28, #0x20
00007114 sub      w6, w13, #0x61
00007118 cmp      w6, #0x19
0000711c b.hi     #0x73c8
00007120 sub      w2, w28, #0x41
00007124 cmp      w2, #0x19
00007128 b.hi     #0x73ac
0000712c mov      w0, w28
00007130 bl       #0xbc48
00007134 cmp      w0, w28
00007138 b.eq     #0x73c8
0000713c b        #0x7490
00007140 sub      x9, x8, x7
00007144 mov      w10, #-7
00007148 mov      w12, #7
0000714c mov      w13, #0xf9
00007150 mov      w14, #0xfa
00007154 mov      w16, #0xfb
00007158 mov      w3, #0xfd
0000715c sub      w8, w12, #7
00007160 ldr      x5, [x21]
00007164 and      x6, x8, #0xf8
00007168 ldrb     w2, [x22]
0000716c sub      w0, w12, #5
00007170 sub      w23, w12, #3
00007174 ldrb     w1, [x5, x6]
00007178 sub      x9, x9, #8
0000717c bic      w20, w1, w2
00007180 sub      w1, w12, #6
00007184 strb     w20, [x5, x6]
00007188 and      x6, x1, x13
0000718c ldrb     w15, [x25]
00007190 ldr      x2, [x21]
00007194 ldrb     w17, [x22]
00007198 add      w5, w10, w15
0000719c add      w8, w5, #7
000071a0 strb     w8, [x25]
000071a4 ldrb     w8, [x2, x6]
000071a8 bic      w5, w8, w17
000071ac strb     w5, [x2, x6]
000071b0 and      x2, x0, x14
000071b4 ldrb     w6, [x25]
000071b8 ldr      x4, [x21]
000071bc ldrb     w27, [x22]
000071c0 add      w15, w10, w6
000071c4 add      w17, w15, #6
000071c8 strb     w17, [x25]
000071cc ldrb     w0, [x4, x2]
000071d0 bic      w1, w0, w27
000071d4 sub      w27, w12, #4
000071d8 and      x8, x27, x16
000071dc strb     w1, [x4, x2]
000071e0 ldrb     w4, [x25]
000071e4 ldr      x24, [x21]
000071e8 ldrb     w2, [x22]
000071ec add      w6, w10, w4
000071f0 add      w1, w6, #5
000071f4 strb     w1, [x25]
000071f8 ldrb     w20, [x24, x8]
000071fc bic      w15, w20, w2
00007200 strb     w15, [x24, x8]
00007204 and      x15, x23, #0xfc
00007208 ldrb     w17, [x25]
0000720c ldrb     w8, [x22]
00007210 add      w0, w10, w17
00007214 ldr      x17, [x21]
00007218 add      w2, w0, #4
0000721c strb     w2, [x25]
00007220 ldrb     w5, [x17, x15]
00007224 bic      w6, w5, w8
00007228 sub      w8, w12, #2
0000722c and      x0, x8, x3
00007230 strb     w6, [x17, x15]
00007234 sub      w6, w12, #1
00007238 ldrb     w27, [x25]
0000723c ldr      x5, [x21]
00007240 ldrb     w1, [x22]
00007244 add      w4, w10, w27
00007248 add      w15, w4, #3
0000724c strb     w15, [x25]
00007250 ldrb     w4, [x5, x0]
00007254 bic      w2, w4, w1
00007258 and      x4, x12, #0xff
0000725c add      x12, x12, #8
00007260 strb     w2, [x5, x0]
00007264 and      x2, x6, #0xfe
00007268 ldrb     w0, [x25]
0000726c ldr      x1, [x21]
00007270 ldrb     w20, [x22]
00007274 add      w5, w10, w0
00007278 add      w8, w5, #2
0000727c strb     w8, [x25]
00007280 ldrb     w15, [x1, x2]
00007284 bic      w17, w15, w20
00007288 strb     w17, [x1, x2]
0000728c ldrb     w8, [x25]
00007290 ldr      x0, [x21]
00007294 ldrb     w5, [x22]
00007298 add      w17, w10, w8
0000729c add      w6, w17, #1
000072a0 strb     w6, [x25]
000072a4 ldrb     w6, [x0, x4]
000072a8 bic      w27, w6, w5
000072ac strb     w27, [x0, x4]
000072b0 ldrb     w1, [x25]
000072b4 add      w4, w10, w1
000072b8 sub      w10, w10, #8
000072bc strb     w4, [x25]
000072c0 cbnz     x9, #0x715c
000072c4 sub      x5, x12, #7
000072c8 cbz      x7, #0x7304
000072cc neg      w12, w5
000072d0 ldr      x3, [x21]
000072d4 and      x14, x5, #0xff
000072d8 ldrb     w9, [x22]
000072dc add      x5, x5, #1
000072e0 sub      x7, x7, #1
000072e4 ldrb     w13, [x3, x14]
000072e8 bic      w16, w13, w9
000072ec strb     w16, [x3, x14]
000072f0 ldrb     w14, [x25]
000072f4 add      w10, w12, w14
000072f8 sub      w12, w12, #1
000072fc strb     w10, [x25]
00007300 cbnz     x7, #0x72d0
00007304 sub      x11, x11, #0x20
00007308 cmp      x11, x21
0000730c b.ne     #0x7320
00007310 ldr      x7, [x26]
00007314 ldr      x13, [x7, #0x18]
00007318 sub      x9, x13, #1
0000731c str      x9, [x7, #0x18]
00007320 ldr      w22, [x19, #0x10]
00007324 cbnz     w22, #0x66dc
00007328 ldr      x3, [x19, #0x38]
0000732c ldp      x23, x13, [x19, #0x20]
00007330 ldr      x22, [x3, #0x20]
00007334 cmp      x13, x23
00007338 b.lo     #0x7470
0000733c add      x16, x23, #1
00007340 lsr      x25, x16, #1
00007344 add      x26, x25, x25, lsl #1
00007348 cmp      x23, x26
0000734c b.hs     #0x7470
00007350 ldr      x21, [x19, #0x30]
00007354 lsl      x0, x26, #2
00007358 str      x26, [x19, #0x20]
0000735c mov      w15, #1
00007360 ldr      x12, [x3, #0x10]
00007364 movk     w15, #0x800, lsl #16
00007368 lsr      x26, x21, #3
0000736c add      x9, x0, x21, lsl #5
00007370 madd     x14, x12, x26, x9
00007374 cmp      x14, x15
00007378 b.lo     #0x7458
0000737c str      x23, [x19, #0x20]
00007380 mov      w12, #0xc
00007384 str      w12, [x19, #0x10]
00007388 adrp     x22, #0x13000
0000738c add      x22, x22, #0xd0
00007390 dup      v20.2d, x22
00007394 str      q20, [sp, #0x40]
00007398 ldr      x23, [sp, #0x48]
0000739c str      x23, [x19, #8]
000073a0 ldr      x3, [sp, #0x40]
000073a4 str      x3, [x19]
000073a8 b        #0x66dc
000073ac sub      w3, w28, #0x61
000073b0 cmp      w3, #0x19
000073b4 b.hi     #0x73c8
000073b8 mov      w0, w28
000073bc bl       #0xbc0c
000073c0 cmp      w0, w28
000073c4 b.ne     #0x7490
000073c8 ldr      w9, [x19, #0x10]
000073cc cbz      w9, #0x73dc
000073d0 ldrb     w13, [x27, x28]
000073d4 cbnz     w13, #0x7530
000073d8 b        #0x751c
000073dc ldp      x24, x17, [x19, #0x20]
000073e0 cmp      x17, x24
000073e4 b.lo     #0x7500
000073e8 add      x8, x24, #1
000073ec lsr      x14, x8, #1
000073f0 add      x1, x14, x14, lsl #1
000073f4 cmp      x24, x1
000073f8 b.hs     #0x7500
000073fc ldp      x23, x15, [x19, #0x30]
00007400 str      x1, [x19, #0x20]
00007404 lsl      x0, x1, #2
00007408 mov      w17, #1
0000740c ldr      x15, [x15, #0x10]
00007410 lsr      x3, x23, #3
00007414 add      x10, x0, x23, lsl #5
00007418 movk     w17, #0x800, lsl #16
0000741c madd     x4, x15, x3, x10
00007420 cmp      x4, x17
00007424 b.lo     #0x74e8
00007428 str      x24, [x19, #0x20]
0000742c mov      w8, #0xc
00007430 str      w8, [x19, #0x10]
00007434 adrp     x24, #0x13000
00007438 add      x24, x24, #0xd0
0000743c dup      v19.2d, x24
00007440 str      q19, [sp, #0x50]
00007444 ldr      x11, [sp, #0x58]
00007448 str      x11, [x19, #8]
0000744c ldr      x5, [sp, #0x50]
00007450 str      x5, [x19]
00007454 b        #0x73d0
00007458 ldr      x2, [x19, #0x18]
0000745c mov      x1, x0
00007460 bl       #0xc794
00007464 cbz      x0, #0x7750
00007468 ldr      x13, [x19, #0x28]
0000746c str      x0, [x19, #0x18]
00007470 sub      x10, x28, x22
00007474 ldr      x12, [x19, #0x18]
00007478 lsr      x4, x10, #5
0000747c add      x28, x13, #1
00007480 orr      w10, w4, #0x30000000
00007484 str      x28, [x19, #0x28]
00007488 str      w10, [x12, x13, lsl #2]
0000748c b        #0x66dc
00007490 ldr      x2, [x19, #8]
00007494 sub      x11, x29, #0x54
00007498 orr      x13, x11, #2
0000749c mov      w10, #0x5d
000074a0 mov      x0, x19
000074a4 str      x2, [sp, #0x68]
000074a8 ldr      x8, [x19]
000074ac str      x8, [sp, #0x60]
000074b0 ldr      q0, [sp, #0x60]
000074b4 str      q0, [sp, #0x10]
000074b8 stp      x11, x13, [x19]
000074bc sturb    w28, [x29, #-0x54]
000074c0 sturb    w10, [x29, #-0x53]
000074c4 sturb    wzr, [x29, #-0x52]
000074c8 bl       #0x5598
000074cc ldr      q0, [sp, #0x10]
000074d0 str      q0, [sp, #0x70]
000074d4 ldr      x9, [sp, #0x78]
000074d8 str      x9, [x19, #8]
000074dc ldr      x0, [sp, #0x70]
000074e0 str      x0, [x19]
000074e4 b        #0x7530
000074e8 ldr      x2, [x19, #0x18]
000074ec mov      x1, x0
000074f0 bl       #0xc794
000074f4 cbz      x0, #0x7760
000074f8 ldr      x17, [x19, #0x28]
000074fc str      x0, [x19, #0x18]
00007500 ldr      x9, [x19, #0x18]
00007504 add      x5, x17, #1
00007508 orr      w4, w28, #0x10000000
0000750c str      x5, [x19, #0x28]
00007510 str      w4, [x9, x17, lsl #2]
00007514 ldrb     w13, [x27, x28]
00007518 cbnz     w13, #0x7530
0000751c ldr      x19, [x26]
00007520 ldr      x6, [x19, #0x68]
00007524 add      x0, x6, #1
00007528 str      x0, [x19, #0x68]
0000752c strb     w6, [x27, x28]
00007530 ldr      x28, [x26]
00007534 mov      x27, #0x3fffffffffffffff
00007538 ldp      x16, x7, [x28, #0x18]
0000753c ldr      x19, [x28, #0x10]
00007540 add      x5, x7, x16, lsl #5
00007544 sub      x9, x19, #1
00007548 cmp      x9, x27
0000754c b.lo     #0x7554
00007550 cbz      x19, #0x7730
00007554 and      x6, x19, #7
00007558 cmp      x9, #7
0000755c b.hs     #0x756c
00007560 mov      x7, xzr
00007564 cbnz     x6, #0x76f8
00007568 b        #0x7730
0000756c sub      x19, x19, x6
00007570 mov      w8, #-7
00007574 mov      w10, #7
00007578 mov      w11, #0xf9
0000757c mov      w12, #0xfa
00007580 mov      w15, #0xfb
00007584 mov      w17, #0xfd
00007588 sub      w16, w10, #7
0000758c ldr      x4, [x21]
00007590 and      x27, x16, #0xf8
00007594 ldrb     w1, [x22]
00007598 sub      w24, w10, #6
0000759c and      x20, x24, x11
000075a0 ldrb     w2, [x4, x27]
000075a4 sub      x19, x19, #8
000075a8 bic      w3, w2, w1
000075ac sub      w1, w10, #5
000075b0 strb     w3, [x4, x27]
000075b4 sub      w3, w10, #4
000075b8 ldrb     w27, [x25]
000075bc and      x28, x3, x15
000075c0 ldr      x23, [x21]
000075c4 add      w7, w8, w27
000075c8 add      w13, w7, #7
000075cc ldrb     w7, [x22]
000075d0 strb     w13, [x25]
000075d4 and      x13, x1, x12
000075d8 ldrb     w0, [x23, x20]
000075dc bic      w16, w0, w7
000075e0 strb     w16, [x23, x20]
000075e4 and      x23, x10, #0xff
000075e8 ldrb     w20, [x25]
000075ec ldr      x2, [x21]
000075f0 ldrb     w4, [x22]
000075f4 add      w9, w8, w20
000075f8 add      w14, w9, #6
000075fc strb     w14, [x25]
00007600 ldrb     w14, [x2, x13]
00007604 bic      w9, w14, w4
00007608 sub      w14, w10, #3
0000760c strb     w9, [x2, x13]
00007610 and      x9, x14, #0xfc
00007614 ldrb     w13, [x25]
00007618 ldr      x7, [x21]
0000761c ldrb     w2, [x22]
00007620 add      w16, w8, w13
00007624 add      w1, w16, #5
00007628 strb     w1, [x25]
0000762c ldrb     w1, [x7, x28]
00007630 bic      w3, w1, w2
00007634 strb     w3, [x7, x28]
00007638 ldrb     w27, [x25]
0000763c ldr      x13, [x21]
00007640 ldrb     w7, [x22]
00007644 add      w0, w8, w27
00007648 add      w2, w0, #4
0000764c strb     w2, [x25]
00007650 ldrb     w0, [x13, x9]
00007654 bic      w16, w0, w7
00007658 sub      w0, w10, #2
0000765c and      x1, x0, x17
00007660 strb     w16, [x13, x9]
00007664 sub      w16, w10, #1
00007668 ldrb     w20, [x25]
0000766c and      x27, x16, #0xfe
00007670 ldr      x28, [x21]
00007674 add      x10, x10, #8
00007678 ldrb     w14, [x22]
0000767c add      w3, w8, w20
00007680 add      w4, w3, #3
00007684 strb     w4, [x25]
00007688 ldrb     w4, [x28, x1]
0000768c bic      w9, w4, w14
00007690 strb     w9, [x28, x1]
00007694 ldrb     w13, [x25]
00007698 ldr      x4, [x21]
0000769c ldrb     w2, [x22]
000076a0 add      w7, w8, w13
000076a4 add      w13, w7, #2
000076a8 strb     w13, [x25]
000076ac ldrb     w1, [x4, x27]
000076b0 bic      w3, w1, w2
000076b4 strb     w3, [x4, x27]
000076b8 ldrb     w27, [x25]
000076bc ldr      x24, [x21]
000076c0 ldrb     w7, [x22]
000076c4 add      w9, w8, w27
000076c8 add      w14, w9, #1
000076cc strb     w14, [x25]
000076d0 ldrb     w0, [x24, x23]
000076d4 bic      w16, w0, w7
000076d8 strb     w16, [x24, x23]
000076dc ldrb     w20, [x25]
000076e0 add      w14, w8, w20
000076e4 sub      w8, w8, #8
000076e8 strb     w14, [x25]
000076ec cbnz     x19, #0x7588
000076f0 sub      x7, x10, #7
000076f4 cbz      x6, #0x7730
000076f8 neg      w11, w7
000076fc ldr      x12, [x21]
00007700 and      x10, x7, #0xff
00007704 ldrb     w15, [x22]
00007708 add      x7, x7, #1
0000770c sub      x6, x6, #1
00007710 ldrb     w17, [x12, x10]
00007714 bic      w8, w17, w15
00007718 strb     w8, [x12, x10]
0000771c ldrb     w12, [x25]
00007720 add      w10, w11, w12
00007724 sub      w11, w11, #1
00007728 strb     w10, [x25]
0000772c cbnz     x6, #0x76fc
00007730 sub      x22, x5, #0x20
00007734 cmp      x22, x21
00007738 b.ne     #0x66dc
0000773c ldr      x21, [x26]
00007740 ldr      x26, [x21, #0x18]
00007744 sub      x25, x26, #1
00007748 str      x25, [x21, #0x18]
0000774c b        #0x66dc
00007750 ldr      w11, [x19, #0x10]
00007754 str      x23, [x19, #0x20]
00007758 cbnz     w11, #0x7388
0000775c b        #0x7380
00007760 ldr      w17, [x19, #0x10]
00007764 str      x24, [x19, #0x20]
00007768 cbnz     w17, #0x7434
0000776c b        #0x742c
00007770 sub      sp, sp, #0x80
00007774 stp      x22, x21, [sp, #0x50]
00007778 stp      x20, x19, [sp, #0x60]
0000777c stp      x29, x30, [sp, #0x70]
00007780 add      x29, sp, #0x70
00007784 mov      x19, x0
00007788 mov      w20, w1
0000778c ldr      x9, [x19, #0x38]
00007790 ldrb     w8, [x9, #0x30]
00007794 ldr      x22, [x9, #0x70]
00007798 tbz      w8, #1, #0x77ec
0000779c and      w21, w20, #0xff
000077a0 orr      w8, w21, #0x20
000077a4 sub      w8, w8, #0x61
000077a8 cmp      w8, #0x19
000077ac b.hi     #0x77ec
000077b0 sub      w9, w21, #0x41
000077b4 cmp      w9, #0x19
000077b8 b.hi     #0x77d0
000077bc mov      w0, w21
000077c0 bl       #0xbc48
000077c4 cmp      w0, w21
000077c8 b.eq     #0x77ec
000077cc b        #0x7870
000077d0 sub      w10, w21, #0x61
000077d4 cmp      w10, #0x19
000077d8 b.hi     #0x77ec
000077dc mov      w0, w21
000077e0 bl       #0xbc0c
000077e4 cmp      w0, w21
000077e8 b.ne     #0x7870
000077ec ldr      w10, [x19, #0x10]
000077f0 cbnz     w10, #0x78f8
000077f4 ldp      x21, x8, [x19, #0x20]
000077f8 cmp      x8, x21
000077fc b.lo     #0x78e0
00007800 add      x11, x21, #1
00007804 lsr      x14, x11, #1
00007808 add      x9, x14, x14, lsl #1
0000780c cmp      x21, x9
00007810 b.hs     #0x78e0
00007814 ldp      x15, x13, [x19, #0x30]
00007818 str      x9, [x19, #0x20]
0000781c lsl      x0, x9, #2
00007820 mov      w4, #1
00007824 ldr      x16, [x13, #0x10]
00007828 lsr      x17, x15, #3
0000782c add      x1, x0, x15, lsl #5
00007830 movk     w4, #0x800, lsl #16
00007834 madd     x3, x16, x17, x1
00007838 cmp      x3, x4
0000783c b.lo     #0x78c8
00007840 str      x21, [x19, #0x20]
00007844 mov      w12, #0xc
00007848 str      w12, [x19, #0x10]
0000784c adrp     x5, #0x13000
00007850 add      x5, x5, #0xd0
00007854 dup      v0.2d, x5
00007858 str      q0, [sp, #0x10]
0000785c ldr      x6, [sp, #0x18]
00007860 str      x6, [x19, #8]
00007864 ldr      x7, [sp, #0x10]
00007868 str      x7, [x19]
0000786c b        #0x78f8
00007870 ldr      x10, [x19, #8]
00007874 mov      w9, #0x5d
00007878 mov      x0, x19
0000787c str      x10, [sp, #0x28]
00007880 sub      x10, x29, #0x24
00007884 ldr      x11, [x19]
00007888 orr      x12, x10, #2
0000788c str      x11, [sp, #0x20]
00007890 ldr      q0, [sp, #0x20]
00007894 str      q0, [sp]
00007898 stp      x10, x12, [x19]
0000789c sturb    w20, [x29, #-0x24]
000078a0 sturb    w9, [x29, #-0x23]
000078a4 sturb    wzr, [x29, #-0x22]
000078a8 bl       #0x5598
000078ac ldr      q0, [sp]
000078b0 str      q0, [sp, #0x30]
000078b4 ldr      x12, [sp, #0x38]
000078b8 str      x12, [x19, #8]
000078bc ldr      x13, [sp, #0x30]
000078c0 str      x13, [x19]
000078c4 b        #0x7918
000078c8 ldr      x2, [x19, #0x18]
000078cc mov      x1, x0
000078d0 bl       #0xc794
000078d4 cbz      x0, #0x792c
000078d8 ldr      x8, [x19, #0x28]
000078dc str      x0, [x19, #0x18]
000078e0 and      w11, w20, #0xff
000078e4 ldr      x14, [x19, #0x18]
000078e8 add      x15, x8, #1
000078ec orr      w12, w11, #0x10000000
000078f0 str      x15, [x19, #0x28]
000078f4 str      w12, [x14, x8, lsl #2]
000078f8 sxtw     x8, w20
000078fc ldrb     w13, [x22, x8]
00007900 cbnz     w13, #0x7918
00007904 ldr      x16, [x19, #0x38]
00007908 ldr      x17, [x16, #0x68]
0000790c add      x0, x17, #1
00007910 str      x0, [x16, #0x68]
00007914 strb     w17, [x22, x8]
00007918 ldp      x29, x30, [sp, #0x70]
0000791c ldp      x20, x19, [sp, #0x60]
00007920 ldp      x22, x21, [sp, #0x50]
00007924 add      sp, sp, #0x80
00007928 ret      
0000792c ldr      w11, [x19, #0x10]
00007930 str      x21, [x19, #0x20]
00007934 cbnz     w11, #0x784c
00007938 b        #0x7844
0000793c sub      sp, sp, #0xf0
00007940 stp      x28, x27, [sp, #0x90]
00007944 stp      x26, x25, [sp, #0xa0]
00007948 stp      x24, x23, [sp, #0xb0]
0000794c stp      x22, x21, [sp, #0xc0]
00007950 stp      x20, x19, [sp, #0xd0]
00007954 stp      x29, x30, [sp, #0xe0]
00007958 add      x29, sp, #0xe0
0000795c mov      x21, x4
00007960 mov      w22, w3
00007964 mov      w24, w2
00007968 mov      x20, x1
0000796c mov      x19, x0
00007970 cmp      x21, #0x100
00007974 b.hi     #0x7d04
00007978 adrp     x15, #0x13000
0000797c add      x15, x15, #0xd0
00007980 cmp      w22, #0x100
00007984 mov      w27, #2
00007988 dup      v0.2d, x15
0000798c cinc     w8, w27, eq
00007990 cmp      w22, #2
00007994 adrp     x26, #0x10000
00007998 csel     w25, w22, w8, lt
0000799c mov      w28, #1
000079a0 add      x26, x26, #0xc38
000079a4 str      q0, [sp]
000079a8 b        #0x7cf8
000079ac cmp      w24, #0x100
000079b0 cinc     w11, w27, eq
000079b4 cmp      w24, #2
000079b8 csel     w12, w24, w11, lt
000079bc add      w15, w25, w12, lsl #3
000079c0 cmp      w15, #0x13
000079c4 b.hi     #0x7d84
000079c8 ldr      x16, [x26, x15, lsl #3]
000079cc ldr      x23, [x19, #0x28]
000079d0 br       x16
000079d4 mov      x0, x19
000079d8 mov      x1, x20
000079dc mov      x2, x23
000079e0 add      x21, x21, #1
000079e4 bl       #0x834c
000079e8 mov      x20, x0
000079ec sub      w24, w24, #1
000079f0 cmp      x21, #0x100
000079f4 b.ls     #0x7cf8
000079f8 b        #0x7d04
000079fc sub      x11, x28, x20
00007a00 add      x2, x11, x23
00007a04 mov      w1, #0x78000000
00007a08 mov      x0, x19
00007a0c mov      x3, x20
00007a10 bl       #0x53c4
00007a14 ldr      w25, [x19, #0x10]
00007a18 cbnz     w25, #0x7ca8
00007a1c ldp      x24, x25, [x19, #0x20]
00007a20 cmp      x25, x24
00007a24 b.hs     #0x7a4c
00007a28 mov      x14, x25
00007a2c b        #0x7ad0
00007a30 mov      x0, x19
00007a34 mov      x1, x20
00007a38 mov      x2, x23
00007a3c bl       #0x834c
00007a40 mov      x20, x0
00007a44 sub      w24, w24, #1
00007a48 b        #0x7cc0
00007a4c add      x8, x24, #1
00007a50 lsr      x12, x8, #1
00007a54 add      x11, x12, x12, lsl #1
00007a58 mov      x14, x25
00007a5c cmp      x24, x11
00007a60 b.hs     #0x7ad0
00007a64 ldp      x13, x9, [x19, #0x30]
00007a68 str      x11, [x19, #0x20]
00007a6c lsl      x0, x11, #2
00007a70 mov      w1, #1
00007a74 ldr      x14, [x9, #0x10]
00007a78 lsr      x15, x13, #3
00007a7c add      x16, x0, x13, lsl #5
00007a80 movk     w1, #0x800, lsl #16
00007a84 madd     x17, x14, x15, x16
00007a88 cmp      x17, x1
00007a8c b.lo     #0x7ab8
00007a90 str      x24, [x19, #0x20]
00007a94 mov      w12, #0xc
00007a98 str      w12, [x19, #0x10]
00007a9c ldr      q0, [sp]
00007aa0 str      q0, [sp, #0x70]
00007aa4 ldr      x1, [sp, #0x78]
00007aa8 str      x1, [x19, #8]
00007aac ldr      x3, [sp, #0x70]
00007ab0 str      x3, [x19]
00007ab4 b        #0x7ca8
00007ab8 ldr      x2, [x19, #0x18]
00007abc mov      x1, x0
00007ac0 bl       #0xc794
00007ac4 cbz      x0, #0x7b8c
00007ac8 ldr      x14, [x19, #0x28]
00007acc str      x0, [x19, #0x18]
00007ad0 sub      x4, x25, x20
00007ad4 ldr      x24, [x19, #0x18]
00007ad8 add      x10, x14, #1
00007adc orr      w12, w4, #0x80000000
00007ae0 str      x10, [x19, #0x28]
00007ae4 str      w12, [x24, x14, lsl #2]
00007ae8 ldr      w9, [x19, #0x10]
00007aec cbnz     w9, #0x7ca8
00007af0 ldr      x11, [x19, #0x18]
00007af4 lsl      x5, x20, #2
00007af8 ldr      w10, [x19, #0x28]
00007afc ldr      w12, [x11, x5]
00007b00 sub      w13, w10, w20
00007b04 and      w14, w12, #0xf8000000
00007b08 orr      w6, w13, w14
00007b0c str      w6, [x11, x5]
00007b10 ldr      w11, [x19, #0x10]
00007b14 cbnz     w11, #0x7ca8
00007b18 ldp      x24, x10, [x19, #0x20]
00007b1c cmp      x10, x24
00007b20 b.lo     #0x7bb4
00007b24 add      x12, x24, #1
00007b28 lsr      x7, x12, #1
00007b2c add      x12, x7, x7, lsl #1
00007b30 cmp      x24, x12
00007b34 b.hs     #0x7bb4
00007b38 ldp      x2, x13, [x19, #0x30]
00007b3c str      x12, [x19, #0x20]
00007b40 lsl      x0, x12, #2
00007b44 mov      w16, #1
00007b48 ldr      x25, [x13, #0x10]
00007b4c lsr      x8, x2, #3
00007b50 add      x9, x0, x2, lsl #5
00007b54 movk     w16, #0x800, lsl #16
00007b58 madd     x10, x25, x8, x9
00007b5c cmp      x10, x16
00007b60 b.lo     #0x7b9c
00007b64 str      x24, [x19, #0x20]
00007b68 mov      w10, #0xc
00007b6c str      w10, [x19, #0x10]
00007b70 ldr      q0, [sp]
00007b74 str      q0, [sp, #0x60]
00007b78 ldr      x0, [sp, #0x68]
00007b7c str      x0, [x19, #8]
00007b80 ldr      x11, [sp, #0x60]
00007b84 str      x11, [x19]
00007b88 b        #0x7ca8
00007b8c ldr      w8, [x19, #0x10]
00007b90 str      x24, [x19, #0x20]
00007b94 cbnz     w8, #0x7a9c
00007b98 b        #0x7a94
00007b9c ldr      x2, [x19, #0x18]
00007ba0 mov      x1, x0
00007ba4 bl       #0xc794
00007ba8 cbz      x0, #0x7c68
00007bac ldr      x10, [x19, #0x28]
00007bb0 str      x0, [x19, #0x18]
00007bb4 ldr      x14, [x19, #0x18]
00007bb8 add      x15, x10, #1
00007bbc mov      w8, #-0x78000000
00007bc0 str      x15, [x19, #0x28]
00007bc4 str      w8, [x14, x10, lsl #2]
00007bc8 ldr      w15, [x19, #0x10]
00007bcc cbnz     w15, #0x7ca8
00007bd0 ldr      x12, [x19, #0x28]
00007bd4 ldr      x13, [x19, #0x18]
00007bd8 add      x16, x13, x12, lsl #2
00007bdc ldur     w17, [x16, #-4]
00007be0 and      w13, w17, #0xf8000000
00007be4 orr      w15, w13, #1
00007be8 stur     w15, [x16, #-4]
00007bec ldr      w16, [x19, #0x10]
00007bf0 cbnz     w16, #0x7ca8
00007bf4 ldp      x24, x11, [x19, #0x20]
00007bf8 cmp      x11, x24
00007bfc b.lo     #0x7c90
00007c00 add      x17, x24, #1
00007c04 lsr      x14, x17, #1
00007c08 add      x13, x14, x14, lsl #1
00007c0c cmp      x24, x13
00007c10 b.hs     #0x7c90
00007c14 ldp      x15, x0, [x19, #0x30]
00007c18 str      x13, [x19, #0x20]
00007c1c ldr      x16, [x0, #0x10]
00007c20 lsr      x17, x15, #3
00007c24 lsl      x0, x13, #2
00007c28 add      x1, x0, x15, lsl #5
00007c2c madd     x3, x16, x17, x1
00007c30 mov      w17, #1
00007c34 movk     w17, #0x800, lsl #16
00007c38 cmp      x3, x17
00007c3c b.lo     #0x7c78
00007c40 str      x24, [x19, #0x20]
00007c44 mov      w9, #0xc
00007c48 str      w9, [x19, #0x10]
00007c4c ldr      q0, [sp]
00007c50 str      q0, [sp, #0x50]
00007c54 ldr      x4, [sp, #0x58]
00007c58 str      x4, [x19, #8]
00007c5c ldr      x5, [sp, #0x50]
00007c60 str      x5, [x19]
00007c64 b        #0x7ca8
00007c68 ldr      w14, [x19, #0x10]
00007c6c str      x24, [x19, #0x20]
00007c70 cbnz     w14, #0x7b70
00007c74 b        #0x7b68
00007c78 ldr      x2, [x19, #0x18]
00007c7c mov      x1, x0
00007c80 bl       #0xc794
00007c84 cbz      x0, #0x7ce8
00007c88 ldr      x11, [x19, #0x28]
00007c8c str      x0, [x19, #0x18]
00007c90 ldr      x1, [x19, #0x18]
00007c94 mov      w25, #2
00007c98 add      x2, x11, #1
00007c9c movk     w25, #0x9000, lsl #16
00007ca0 str      x2, [x19, #0x28]
00007ca4 str      w25, [x1, x11, lsl #2]
00007ca8 add      x1, x20, #1
00007cac add      x2, x23, #1
00007cb0 mov      x0, x19
00007cb4 bl       #0x834c
00007cb8 mov      x20, x0
00007cbc mov      w24, #1
00007cc0 sub      w16, w22, #1
00007cc4 cmp      w16, #0x100
00007cc8 cinc     w6, w27, eq
00007ccc cmp      w22, #3
00007cd0 add      x21, x21, #1
00007cd4 csel     w25, w16, w6, lt
00007cd8 mov      w22, w16
00007cdc cmp      x21, #0x100
00007ce0 b.ls     #0x7cf8
00007ce4 b        #0x7d04
00007ce8 ldr      w0, [x19, #0x10]
00007cec str      x24, [x19, #0x20]
00007cf0 cbnz     w0, #0x7c4c
00007cf4 b        #0x7c44
00007cf8 ldr      w10, [x19, #0x10]
00007cfc cbz      w10, #0x79ac
00007d00 b        #0x7d0c
00007d04 mov      w9, #0xc
00007d08 str      w9, [x19, #0x10]
00007d0c ldp      x29, x30, [sp, #0xe0]
00007d10 ldp      x20, x19, [sp, #0xd0]
00007d14 ldp      x22, x21, [sp, #0xc0]
00007d18 ldp      x24, x23, [sp, #0xb0]
00007d1c ldp      x26, x25, [sp, #0xa0]
00007d20 ldp      x28, x27, [sp, #0x90]
00007d24 add      sp, sp, #0xf0
00007d28 ret      
00007d2c mov      w17, #1
00007d30 sub      x1, x17, x20
00007d34 add      x2, x1, x23
00007d38 mov      w1, #0x78000000
00007d3c mov      x0, x19
00007d40 mov      x3, x20
00007d44 bl       #0x53c4
00007d48 add      x1, x20, #1
00007d4c add      x4, x21, #1
00007d50 mov      w2, #1
00007d54 mov      x0, x19
00007d58 mov      w3, w22
00007d5c bl       #0x793c
00007d60 ldr      w13, [x19, #0x10]
00007d64 cbnz     w13, #0x7d0c
00007d68 ldp      x21, x25, [x19, #0x20]
00007d6c cmp      x25, x21
00007d70 b.hs     #0x7de0
00007d74 mov      x13, x25
00007d78 b        #0x7ed0
00007d7c str      x20, [x19, #0x28]
00007d80 b        #0x7d0c
00007d84 mov      w7, #0xf
00007d88 str      w7, [x19, #0x10]
00007d8c ldr      q0, [sp]
00007d90 str      q0, [sp, #0x10]
00007d94 ldr      x14, [sp, #0x18]
00007d98 str      x14, [x19, #8]
00007d9c ldr      x15, [sp, #0x10]
00007da0 str      x15, [x19]
00007da4 b        #0x7d0c
00007da8 mov      w28, #1
00007dac sub      x6, x28, x20
00007db0 add      x2, x6, x23
00007db4 mov      w1, #0x48000000
00007db8 mov      x0, x19
00007dbc mov      x3, x20
00007dc0 bl       #0x53c4
00007dc4 ldr      w3, [x19, #0x10]
00007dc8 cbnz     w3, #0x7d0c
00007dcc ldp      x26, x28, [x19, #0x20]
00007dd0 cmp      x28, x26
00007dd4 b.hs     #0x7e4c
00007dd8 mov      x12, x28
00007ddc b        #0x7fb4
00007de0 add      x16, x21, #1
00007de4 lsr      x3, x16, #1
00007de8 add      x8, x3, x3, lsl #1
00007dec mov      x13, x25
00007df0 cmp      x21, x8
00007df4 b.hs     #0x7ed0
00007df8 ldp      x4, x17, [x19, #0x30]
00007dfc str      x8, [x19, #0x20]
00007e00 lsl      x0, x8, #2
00007e04 mov      w28, #1
00007e08 ldr      x5, [x17, #0x10]
00007e0c lsr      x6, x4, #3
00007e10 add      x7, x0, x4, lsl #5
00007e14 movk     w28, #0x800, lsl #16
00007e18 madd     x2, x5, x6, x7
00007e1c cmp      x2, x28
00007e20 b.lo     #0x7eb8
00007e24 str      x21, [x19, #0x20]
00007e28 mov      w15, #0xc
00007e2c str      w15, [x19, #0x10]
00007e30 ldr      q0, [sp]
00007e34 str      q0, [sp, #0x40]
00007e38 ldr      x0, [sp, #0x48]
00007e3c str      x0, [x19, #8]
00007e40 ldr      x25, [sp, #0x40]
00007e44 str      x25, [x19]
00007e48 b        #0x7d0c
00007e4c add      x3, x26, #1
00007e50 lsr      x7, x3, #1
00007e54 add      x14, x7, x7, lsl #1
00007e58 mov      x12, x28
00007e5c cmp      x26, x14
00007e60 b.hs     #0x7fb4
00007e64 ldp      x2, x4, [x19, #0x30]
00007e68 str      x14, [x19, #0x20]
00007e6c lsl      x0, x14, #2
00007e70 mov      w11, #1
00007e74 ldr      x25, [x4, #0x10]
00007e78 lsr      x8, x2, #3
00007e7c add      x9, x0, x2, lsl #5
00007e80 movk     w11, #0x800, lsl #16
00007e84 madd     x10, x25, x8, x9
00007e88 cmp      x10, x11
00007e8c b.lo     #0x7f9c
00007e90 str      x26, [x19, #0x20]
00007e94 mov      w4, #0xc
00007e98 str      w4, [x19, #0x10]
00007e9c ldr      q0, [sp]
00007ea0 stur     q0, [x29, #-0x60]
00007ea4 ldur     x0, [x29, #-0x58]
00007ea8 str      x0, [x19, #8]
00007eac ldur     x12, [x29, #-0x60]
00007eb0 str      x12, [x19]
00007eb4 b        #0x7d0c
00007eb8 ldr      x2, [x19, #0x18]
00007ebc mov      x1, x0
00007ec0 bl       #0xc794
00007ec4 cbz      x0, #0x7f8c
00007ec8 ldr      x13, [x19, #0x28]
00007ecc str      x0, [x19, #0x18]
00007ed0 sub      x8, x25, x20
00007ed4 ldr      x0, [x19, #0x18]
00007ed8 add      x1, x13, #1
00007edc orr      w8, w8, #0x80000000
00007ee0 str      x1, [x19, #0x28]
00007ee4 str      w8, [x0, x13, lsl #2]
00007ee8 ldr      w16, [x19, #0x10]
00007eec cbnz     w16, #0x7d0c
00007ef0 ldr      x2, [x19, #0x18]
00007ef4 lsl      x9, x20, #2
00007ef8 ldr      w17, [x19, #0x28]
00007efc ldr      w0, [x2, x9]
00007f00 sub      w3, w17, w20
00007f04 and      w10, w0, #0xf8000000
00007f08 orr      w10, w3, w10
00007f0c str      w10, [x2, x9]
00007f10 ldr      w2, [x19, #0x10]
00007f14 cbnz     w2, #0x7d0c
00007f18 ldp      x20, x8, [x19, #0x20]
00007f1c cmp      x8, x20
00007f20 b.lo     #0x7ffc
00007f24 add      x3, x20, #1
00007f28 lsr      x11, x3, #1
00007f2c add      x9, x11, x11, lsl #1
00007f30 cmp      x20, x9
00007f34 b.hs     #0x7ffc
00007f38 ldp      x12, x4, [x19, #0x30]
00007f3c str      x9, [x19, #0x20]
00007f40 lsl      x0, x9, #2
00007f44 mov      w17, #1
00007f48 ldr      x13, [x4, #0x10]
00007f4c lsr      x14, x12, #3
00007f50 add      x15, x0, x12, lsl #5
00007f54 movk     w17, #0x800, lsl #16
00007f58 madd     x16, x13, x14, x15
00007f5c cmp      x16, x17
00007f60 b.lo     #0x7fe4
00007f64 str      x20, [x19, #0x20]
00007f68 mov      w5, #0xc
00007f6c str      w5, [x19, #0x10]
00007f70 ldr      q0, [sp]
00007f74 str      q0, [sp, #0x30]
00007f78 ldr      x1, [sp, #0x38]
00007f7c str      x1, [x19, #8]
00007f80 ldr      x3, [sp, #0x30]
00007f84 str      x3, [x19]
00007f88 b        #0x7d0c
00007f8c ldr      w14, [x19, #0x10]
00007f90 str      x21, [x19, #0x20]
00007f94 cbnz     w14, #0x7e30
00007f98 b        #0x7e28
00007f9c ldr      x2, [x19, #0x18]
00007fa0 mov      x1, x0
00007fa4 bl       #0xc794
00007fa8 cbz      x0, #0x7fd4
00007fac ldr      x12, [x19, #0x28]
00007fb0 str      x0, [x19, #0x18]
00007fb4 sub      x13, x28, x20
00007fb8 ldr      x6, [x19, #0x18]
00007fbc mov      w5, #0x50000000
00007fc0 add      x7, x12, #1
00007fc4 orr      w1, w13, w5
00007fc8 str      x7, [x19, #0x28]
00007fcc str      w1, [x6, x12, lsl #2]
00007fd0 b        #0x7d0c
00007fd4 ldr      w2, [x19, #0x10]
00007fd8 str      x26, [x19, #0x20]
00007fdc cbnz     w2, #0x7e9c
00007fe0 b        #0x7e94
00007fe4 ldr      x2, [x19, #0x18]
00007fe8 mov      x1, x0
00007fec bl       #0xc794
00007ff0 cbz      x0, #0x80b0
00007ff4 ldr      x8, [x19, #0x28]
00007ff8 str      x0, [x19, #0x18]
00007ffc ldr      x5, [x19, #0x18]
00008000 add      x6, x8, #1
00008004 mov      w26, #-0x78000000
00008008 str      x6, [x19, #0x28]
0000800c str      w26, [x5, x8, lsl #2]
00008010 ldr      w6, [x19, #0x10]
00008014 cbnz     w6, #0x7d0c
00008018 ldr      x4, [x19, #0x28]
0000801c ldr      x5, [x19, #0x18]
00008020 add      x7, x5, x4, lsl #2
00008024 ldur     w1, [x7, #-4]
00008028 and      w9, w1, #0xf8000000
0000802c orr      w11, w9, #1
00008030 stur     w11, [x7, #-4]
00008034 ldr      w7, [x19, #0x10]
00008038 cbnz     w7, #0x7d0c
0000803c ldp      x23, x9, [x19, #0x20]
00008040 cmp      x9, x23
00008044 b.lo     #0x80d8
00008048 add      x21, x23, #1
0000804c lsr      x6, x21, #1
00008050 add      x10, x6, x6, lsl #1
00008054 cmp      x23, x10
00008058 b.hs     #0x80d8
0000805c ldp      x7, x20, [x19, #0x30]
00008060 str      x10, [x19, #0x20]
00008064 lsl      x0, x10, #2
00008068 mov      w9, #1
0000806c ldr      x2, [x20, #0x10]
00008070 lsr      x28, x7, #3
00008074 add      x25, x0, x7, lsl #5
00008078 movk     w9, #0x800, lsl #16
0000807c madd     x8, x2, x28, x25
00008080 cmp      x8, x9
00008084 b.lo     #0x80c0
00008088 str      x23, [x19, #0x20]
0000808c mov      w26, #0xc
00008090 str      w26, [x19, #0x10]
00008094 ldr      q0, [sp]
00008098 str      q0, [sp, #0x20]
0000809c ldr      x0, [sp, #0x28]
000080a0 str      x0, [x19, #8]
000080a4 ldr      x10, [sp, #0x20]
000080a8 str      x10, [x19]
000080ac b        #0x7d0c
000080b0 ldr      w4, [x19, #0x10]
000080b4 str      x20, [x19, #0x20]
000080b8 cbnz     w4, #0x7f70
000080bc b        #0x7f68
000080c0 ldr      x2, [x19, #0x18]
000080c4 mov      x1, x0
000080c8 bl       #0xc794
000080cc cbz      x0, #0x80f4
000080d0 ldr      x9, [x19, #0x28]
000080d4 str      x0, [x19, #0x18]
000080d8 ldr      x23, [x19, #0x18]
000080dc mov      w27, #2
000080e0 add      x26, x9, #1
000080e4 movk     w27, #0x9000, lsl #16
000080e8 str      x26, [x19, #0x28]
000080ec str      w27, [x23, x9, lsl #2]
000080f0 b        #0x7d0c
000080f4 ldr      w27, [x19, #0x10]
000080f8 str      x23, [x19, #0x20]
000080fc cbnz     w27, #0x8094
00008100 b        #0x808c
00008104 sub      sp, sp, #0x70
00008108 stp      x22, x21, [sp, #0x40]
0000810c stp      x20, x19, [sp, #0x50]
00008110 stp      x29, x30, [sp, #0x60]
00008114 add      x29, sp, #0x60
00008118 mov      x19, x0
0000811c ldp      x9, x8, [x19]
00008120 cmp      x9, x8
00008124 b.hs     #0x81a8
00008128 add      x13, x9, #1
0000812c cmp      x13, x8
00008130 b.hs     #0x81d8
00008134 ldrb     w10, [x9]
00008138 cmp      w10, #0x5b
0000813c b.ne     #0x81d8
00008140 ldrb     w11, [x13]
00008144 cmp      w11, #0x2e
00008148 b.ne     #0x81d8
0000814c add      x20, x9, #2
00008150 mov      x10, x20
00008154 mov      x12, x20
00008158 cmp      x20, x8
0000815c str      x20, [x19]
00008160 b.hs     #0x8204
00008164 add      x11, x9, #3
00008168 cmp      x11, x8
0000816c b.hs     #0x81f8
00008170 mov      x10, x20
00008174 ldurb    w9, [x11, #-1]
00008178 cmp      w9, #0x2e
0000817c b.ne     #0x818c
00008180 ldrb     w12, [x11]
00008184 cmp      w12, #0x5d
00008188 b.eq     #0x829c
0000818c add      x12, x11, #1
00008190 str      x11, [x19]
00008194 mov      x10, x11
00008198 mov      x11, x12
0000819c cmp      x12, x8
000081a0 b.lo     #0x8174
000081a4 b        #0x81fc
000081a8 ldr      w8, [x19, #0x10]
000081ac cbnz     w8, #0x81b8
000081b0 mov      w9, #7
000081b4 str      w9, [x19, #0x10]
000081b8 adrp     x9, #0x13000
000081bc add      x9, x9, #0xd0
000081c0 dup      v0.2d, x9
000081c4 str      q0, [sp, #0x30]
000081c8 ldr      x11, [sp, #0x38]
000081cc str      x11, [x19, #8]
000081d0 ldr      x12, [sp, #0x30]
000081d4 str      x12, [x19]
000081d8 add      x16, x9, #1
000081dc str      x16, [x19]
000081e0 ldrb     w0, [x9]
000081e4 ldp      x29, x30, [sp, #0x60]
000081e8 ldp      x20, x19, [sp, #0x50]
000081ec ldp      x22, x21, [sp, #0x40]
000081f0 add      sp, sp, #0x70
000081f4 ret      
000081f8 mov      x12, x11
000081fc mov      x10, x12
00008200 str      x12, [x19]
00008204 cmp      x12, x8
00008208 b.hs     #0x82a8
0000820c adrp     x14, #0x11000
00008210 add      x14, x14, #0x330
00008214 adrp     x0, #0x10000
00008218 sub      x21, x10, x20
0000821c add      x22, x14, #8
00008220 add      x0, x0, #0xf07
00008224 mov      x1, x20
00008228 mov      x2, x21
0000822c bl       #0xbbd0
00008230 cbnz     w0, #0x8240
00008234 ldur     x15, [x22, #-8]
00008238 ldrb     w12, [x15, x21]
0000823c cbz      w12, #0x8294
00008240 ldr      x0, [x22, #8]
00008244 add      x22, x22, #0x10
00008248 cbnz     x0, #0x8224
0000824c cmp      x21, #1
00008250 b.ne     #0x825c
00008254 ldrb     w0, [x20]
00008258 b        #0x82dc
0000825c ldr      w13, [x19, #0x10]
00008260 cbnz     w13, #0x826c
00008264 mov      w14, #3
00008268 str      w14, [x19, #0x10]
0000826c adrp     x16, #0x13000
00008270 add      x16, x16, #0xd0
00008274 mov      w0, wzr
00008278 dup      v2.2d, x16
0000827c str      q2, [sp, #0x10]
00008280 ldr      x17, [sp, #0x18]
00008284 str      x17, [x19, #8]
00008288 ldr      x1, [sp, #0x10]
0000828c str      x1, [x19]
00008290 b        #0x82dc
00008294 ldrb     w0, [x22]
00008298 b        #0x82dc
0000829c sub      x12, x11, #1
000082a0 cmp      x12, x8
000082a4 b.lo     #0x820c
000082a8 ldr      w10, [x19, #0x10]
000082ac cbnz     w10, #0x82b8
000082b0 mov      w11, #7
000082b4 str      w11, [x19, #0x10]
000082b8 adrp     x13, #0x13000
000082bc add      x13, x13, #0xd0
000082c0 mov      w0, wzr
000082c4 dup      v1.2d, x13
000082c8 str      q1, [sp, #0x20]
000082cc ldr      x14, [sp, #0x28]
000082d0 str      x14, [x19, #8]
000082d4 ldr      x15, [sp, #0x20]
000082d8 str      x15, [x19]
000082dc ldp      x8, x9, [x19]
000082e0 cmp      x8, x9
000082e4 b.hs     #0x8318
000082e8 add      x10, x8, #1
000082ec cmp      x10, x9
000082f0 b.hs     #0x8318
000082f4 ldrb     w13, [x8]
000082f8 cmp      w13, #0x2e
000082fc b.ne     #0x8318
00008300 ldrb     w14, [x10]
00008304 cmp      w14, #0x5d
00008308 b.ne     #0x8318
0000830c add      x17, x8, #2
00008310 str      x17, [x19]
00008314 b        #0x81e4
00008318 ldr      w15, [x19, #0x10]
0000831c cbnz     w15, #0x8328
00008320 mov      w16, #3
00008324 str      w16, [x19, #0x10]
00008328 adrp     x2, #0x13000
0000832c add      x2, x2, #0xd0
00008330 dup      v3.2d, x2
00008334 str      q3, [sp]
00008338 ldr      x3, [sp, #8]
0000833c str      x3, [x19, #8]
00008340 ldr      x4, [sp]
00008344 str      x4, [x19]
00008348 b        #0x81e4
0000834c sub      sp, sp, #0x50
00008350 str      x23, [sp, #0x10]
00008354 stp      x22, x21, [sp, #0x20]
00008358 stp      x20, x19, [sp, #0x30]
0000835c stp      x29, x30, [sp, #0x40]
00008360 add      x29, sp, #0x40
00008364 mov      x20, x0
00008368 mov      x21, x1
0000836c sub      x22, x2, x21
00008370 ldr      x19, [x20, #0x28]
00008374 cbz      x22, #0x842c
00008378 ldr      x23, [x20, #0x20]
0000837c add      x9, x23, x22
00008380 cmp      x23, x9
00008384 b.hs     #0x83cc
00008388 ldp      x11, x8, [x20, #0x30]
0000838c str      x9, [x20, #0x20]
00008390 lsl      x0, x9, #2
00008394 mov      w16, #0x8000000
00008398 ldr      x12, [x8, #0x10]
0000839c lsr      x13, x11, #3
000083a0 add      x14, x0, x11, lsl #5
000083a4 madd     x15, x12, x13, x14
000083a8 cmp      x15, x16
000083ac b.hi     #0x83f8
000083b0 ldr      x2, [x20, #0x18]
000083b4 mov      x1, x0
000083b8 bl       #0xc794
000083bc cbz      x0, #0x83f8
000083c0 ldr      x10, [x20, #0x28]
000083c4 str      x0, [x20, #0x18]
000083c8 b        #0x83d4
000083cc ldr      x0, [x20, #0x18]
000083d0 mov      x10, x19
000083d4 add      x8, x0, x10, lsl #2
000083d8 add      x1, x0, x21, lsl #2
000083dc mov      x0, x8
000083e0 lsl      x2, x22, #2
000083e4 bl       #0xbc5c
000083e8 ldr      x5, [x20, #0x28]
000083ec add      x6, x5, x22
000083f0 str      x6, [x20, #0x28]
000083f4 b        #0x842c
000083f8 ldr      w8, [x20, #0x10]
000083fc str      x23, [x20, #0x20]
00008400 cbnz     w8, #0x840c
00008404 mov      w9, #0xc
00008408 str      w9, [x20, #0x10]
0000840c adrp     x17, #0x13000
00008410 add      x17, x17, #0xd0
00008414 dup      v0.2d, x17
00008418 str      q0, [sp]
0000841c ldr      x3, [sp, #8]
00008420 str      x3, [x20, #8]
00008424 ldr      x4, [sp]
00008428 str      x4, [x20]
0000842c mov      x0, x19
00008430 ldr      x23, [sp, #0x10]
00008434 ldp      x29, x30, [sp, #0x40]
00008438 ldp      x20, x19, [sp, #0x30]
0000843c ldp      x22, x21, [sp, #0x20]
00008440 add      sp, sp, #0x50
00008444 ret      
00008448 stp      x28, x27, [sp, #-0x60]!
0000844c stp      x26, x25, [sp, #0x10]
00008450 stp      x24, x23, [sp, #0x20]
00008454 stp      x22, x21, [sp, #0x30]
00008458 stp      x20, x19, [sp, #0x40]
0000845c stp      x29, x30, [sp, #0x50]
00008460 add      x29, sp, #0x50
00008464 sub      sp, sp, #0x200
00008468 ldr      w8, [x0]
0000846c mov      x23, x1
00008470 mov      w9, #0xf265
00008474 cmp      w8, w9
00008478 b.ne     #0x84d8
0000847c ldr      x26, [x0, #0x18]
00008480 mov      w11, #0xd245
00008484 ldr      w10, [x26]
00008488 cmp      w10, w11
0000848c b.ne     #0x84d8
00008490 ldrb     w12, [x26, #0x50]
00008494 tbnz     w12, #2, #0x84d8
00008498 str      x3, [sp, #0x20]
0000849c and      w27, w4, #7
000084a0 ldr      x6, [x26, #0x38]
000084a4 str      x26, [sp, #0x28]
000084a8 cmp      x6, #0x40
000084ac b.ls     #0x8500
000084b0 ldrb     w24, [x26, #0x30]
000084b4 ldp      x19, x20, [x26, #0x40]
000084b8 tst      w24, #4
000084bc csel     x13, xzr, x2, ne
000084c0 str      x13, [sp, #0x18]
000084c4 tbnz     w4, #2, #0x8524
000084c8 mov      x0, x23
000084cc bl       #0xb948
000084d0 mov      x28, x23
000084d4 b        #0x8530
000084d8 mov      w23, #2
000084dc mov      w0, w23
000084e0 add      sp, sp, #0x200
000084e4 ldp      x29, x30, [sp, #0x50]
000084e8 ldp      x20, x19, [sp, #0x40]
000084ec ldp      x22, x21, [sp, #0x30]
000084f0 ldp      x24, x23, [sp, #0x20]
000084f4 ldp      x26, x25, [sp, #0x10]
000084f8 ldp      x28, x27, [sp], #0x60
000084fc ret      
00008500 ldrb     w13, [x26, #0x30]
00008504 ldp      x24, x20, [x26, #0x40]
00008508 tst      w13, #4
0000850c csel     x21, xzr, x2, ne
00008510 tbnz     w4, #2, #0x8544
00008514 mov      x0, x23
00008518 bl       #0xb948
0000851c mov      x25, x23
00008520 b        #0x8550
00008524 ldr      x14, [sp, #0x20]
00008528 ldp      x8, x0, [x14]
0000852c add      x28, x23, x8
00008530 add      x21, x23, x0
00008534 cmp      x21, x28
00008538 b.hs     #0x8568
0000853c mov      w23, #0x10
00008540 b        #0x84dc
00008544 ldr      x16, [sp, #0x20]
00008548 ldp      x11, x0, [x16]
0000854c add      x25, x23, x11
00008550 add      x10, x23, x0
00008554 cmp      x10, x25
00008558 str      x10, [sp, #0x30]
0000855c b.hs     #0x8ba4
00008560 mov      w23, #0x10
00008564 b        #0x84dc
00008568 ldr      x1, [x26, #0x78]
0000856c cbz      x1, #0x85c8
00008570 mov      x24, x28
00008574 cmp      x28, x21
00008578 b.hs     #0x85c0
0000857c mov      x24, x28
00008580 b        #0x8588
00008584 ldr      x1, [x26, #0x78]
00008588 ldrb     w4, [x24]
0000858c ldrb     w0, [x1]
00008590 cmp      w4, w0
00008594 b.ne     #0x85b4
00008598 ldr      x2, [x26, #0x80]
0000859c sub      x10, x21, x24
000085a0 cmp      x10, x2
000085a4 b.lo     #0x85b4
000085a8 mov      x0, x24
000085ac bl       #0xb918
000085b0 cbz      w0, #0x85c0
000085b4 add      x24, x24, #1
000085b8 cmp      x24, x21
000085bc b.lo     #0x8584
000085c0 cmp      x24, x21
000085c4 b.eq     #0x91ac
000085c8 stur     x26, [x29, #-0xc0]
000085cc stur     xzr, [x29, #-0x88]
000085d0 ldr      x3, [x26, #0x38]
000085d4 stur     w27, [x29, #-0xb8]
000085d8 stp      xzr, x23, [x29, #-0xb0]
000085dc stp      x28, x21, [x29, #-0xa0]
000085e0 lsl      x0, x3, #2
000085e4 bl       #0xc698
000085e8 mov      x25, x0
000085ec stur     x25, [x29, #-0x78]
000085f0 cbz      x25, #0x91f8
000085f4 str      x21, [sp, #0x40]
000085f8 mov      w23, #4
000085fc stur     x25, [x29, #-0x70]
00008600 add      x22, x19, #1
00008604 ldr      x2, [x26, #0x38]
00008608 stur     w23, [x29, #-0x80]
0000860c lsl      x5, x2, #1
00008610 add      x4, x5, x2
00008614 add      x1, x25, x5
00008618 add      x0, x25, x4
0000861c add      x26, x25, x2
00008620 str      x1, [sp, #0x30]
00008624 stp      x1, x0, [x29, #-0x60]
00008628 mov      w1, wzr
0000862c stur     x26, [x29, #-0x68]
00008630 bl       #0xb8ac
00008634 mov      x21, x28
00008638 cmp      x28, x21
0000863c b.ne     #0x87f8
00008640 b        #0x8800
00008644 ldr      x25, [sp, #0x28]
00008648 ldr      x28, [sp, #0x18]
0000864c cbnz     x28, #0x8658
00008650 ldr      w14, [x25, #0x90]
00008654 cbz      w14, #0x97b8
00008658 ldr      x26, [sp, #0x40]
0000865c sub      x0, x29, #0xc0
00008660 mov      x1, x27
00008664 b        #0x8678
00008668 ldur     x3, [x29, #-0x90]
0000866c sub      x0, x29, #0xc0
00008670 add      x1, x3, #1
00008674 stur     x1, [x29, #-0x90]
00008678 mov      x2, x26
0000867c mov      x3, x22
00008680 mov      x4, x20
00008684 bl       #0xa87c
00008688 mov      x19, x0
0000868c cbz      x19, #0x8668
00008690 subs     x27, x28, #1
00008694 b.ne     #0x86a0
00008698 ldr      w15, [x25, #0x90]
0000869c cbz      w15, #0x91b8
000086a0 ldur     x0, [x29, #-0xb0]
000086a4 cbnz     x0, #0x86c4
000086a8 ldur     x4, [x29, #-0xc0]
000086ac ldr      x26, [x4, #0x88]
000086b0 lsl      x5, x26, #4
000086b4 add      x0, x5, #0x10
000086b8 bl       #0xc698
000086bc stur     x0, [x29, #-0xb0]
000086c0 cbz      x0, #0x981c
000086c4 ldur     x6, [x29, #-0xc0]
000086c8 mov      x9, #-1
000086cc ldr      x2, [x6, #0x88]
000086d0 cbz      x2, #0x8710
000086d4 mov      x2, xzr
000086d8 mov      w21, #2
000086dc b        #0x86ec
000086e0 ldur     x0, [x29, #-0xb0]
000086e4 add      x21, x21, #1
000086e8 add      x2, x2, #0x10
000086ec add      x7, x0, x2
000086f0 str      x9, [x7, #0x18]
000086f4 ldur     x1, [x29, #-0xb0]
000086f8 add      x1, x1, x2
000086fc str      x9, [x1, #0x10]
00008700 ldur     x23, [x29, #-0xc0]
00008704 ldr      x0, [x23, #0x88]
00008708 cmp      x21, x0
0000870c b.ls     #0x86e0
00008710 ldr      x24, [sp, #0x28]
00008714 ldr      w16, [x24, #0x90]
00008718 cbnz     w16, #0x8744
0000871c ldurb    w17, [x29, #-0xb7]
00008720 tbnz     w17, #2, #0x8744
00008724 ldur     x1, [x29, #-0x90]
00008728 sub      x0, x29, #0xc0
0000872c mov      x2, x19
00008730 mov      x3, x22
00008734 mov      x4, x20
00008738 bl       #0xac68
0000873c cbz      x0, #0x8790
00008740 b        #0x91b4
00008744 ldr      x9, [x24, #0x98]
00008748 ldur     x0, [x29, #-0x88]
0000874c cbz      x9, #0x8768
00008750 cbnz     x0, #0x8768
00008754 lsl      x2, x9, #3
00008758 add      x0, x2, #8
0000875c bl       #0xc698
00008760 ldr      x9, [x24, #0x98]
00008764 stur     x0, [x29, #-0x88]
00008768 cbnz     x0, #0x8770
0000876c cbnz     x9, #0x97fc
00008770 ldur     x1, [x29, #-0x90]
00008774 sub      x0, x29, #0xc0
00008778 mov      x2, x19
0000877c mov      x3, x22
00008780 mov      x4, x20
00008784 mov      x5, xzr
00008788 bl       #0xaf90
0000878c cbnz     x0, #0x91b4
00008790 ldur     x1, [x29, #-0x90]
00008794 cmp      x19, x1
00008798 b.ls     #0x87dc
0000879c sub      x2, x19, #1
000087a0 sub      x0, x29, #0xc0
000087a4 mov      x3, x22
000087a8 mov      x4, x20
000087ac bl       #0xa87c
000087b0 ldur     x1, [x29, #-0x90]
000087b4 mov      x19, x0
000087b8 cbz      x19, #0x87dc
000087bc sub      x0, x29, #0xc0
000087c0 mov      x2, x19
000087c4 mov      x3, x22
000087c8 mov      x4, x20
000087cc mov      x5, xzr
000087d0 bl       #0xaf90
000087d4 cbz      x0, #0x8790
000087d8 b        #0x91b4
000087dc ldur     x2, [x29, #-0x60]
000087e0 add      x21, x1, #1
000087e4 ldp      x25, x26, [x29, #-0x70]
000087e8 ldur     x28, [x29, #-0xa0]
000087ec str      x2, [sp, #0x30]
000087f0 cmp      x28, x21
000087f4 b.eq     #0x8800
000087f8 ldurb    w24, [x21, #-1]
000087fc b        #0x8804
00008800 mov      w24, #0x80
00008804 ldur     x10, [x29, #-0xc0]
00008808 mov      x0, x25
0000880c mov      w1, wzr
00008810 ldr      x2, [x10, #0x38]
00008814 bl       #0xb8ac
00008818 mov      w1, #1
0000881c mov      x2, x20
00008820 mov      x3, x25
00008824 strb     w1, [x25, x22]
00008828 mov      x1, x22
0000882c ldur     x0, [x29, #-0xc0]
00008830 mov      w4, #0x84
00008834 mov      x5, x25
00008838 str      x25, [sp, #0x48]
0000883c bl       #0xb4e8
00008840 ldur     x17, [x29, #-0xc0]
00008844 mov      x28, x0
00008848 mov      x0, x26
0000884c mov      x1, x28
00008850 ldr      x2, [x17, #0x38]
00008854 bl       #0xbc5c
00008858 mov      x27, xzr
0000885c str      x26, [sp, #0x38]
00008860 b        #0x88b8
00008864 ldur     x26, [x29, #-0xc0]
00008868 mov      x1, x28
0000886c ldr      x25, [sp, #0x30]
00008870 ldr      x2, [x26, #0x38]
00008874 mov      x0, x25
00008878 bl       #0xbc5c
0000887c ldur     x24, [x29, #-0xc0]
00008880 mov      x0, x28
00008884 ldr      x26, [sp, #0x38]
00008888 ldr      x2, [x24, #0x38]
0000888c mov      x1, x26
00008890 bl       #0xbc5c
00008894 ldur     x0, [x29, #-0xc0]
00008898 mov      x1, x22
0000889c mov      x2, x20
000088a0 mov      x3, x25
000088a4 mov      w4, w23
000088a8 mov      x5, x28
000088ac bl       #0xb4e8
000088b0 add      x21, x21, #1
000088b4 mov      w24, w23
000088b8 ldur     x6, [x29, #-0x98]
000088bc cmp      x21, x6
000088c0 b.eq     #0x88cc
000088c4 ldrb     w23, [x21]
000088c8 b        #0x88d0
000088cc mov      w23, #0x80
000088d0 ldur     x19, [x29, #-0xc0]
000088d4 mov      x0, x28
000088d8 mov      x1, x26
000088dc ldr      x2, [x19, #0x38]
000088e0 bl       #0xb918
000088e4 cmp      w0, #0
000088e8 csel     x27, x21, x27, eq
000088ec cmp      w24, #0x80
000088f0 b.eq     #0x890c
000088f4 cmp      w24, #0xa
000088f8 b.ne     #0x8938
000088fc ldur     x3, [x29, #-0xc0]
00008900 ldrb     w8, [x3, #0x30]
00008904 tbnz     w8, #3, #0x8918
00008908 b        #0x8938
0000890c ldurb    w9, [x29, #-0xb8]
00008910 tbnz     w9, #0, #0x8938
00008914 ldur     x3, [x29, #-0xc0]
00008918 ldr      x3, [x3, #0x58]
0000891c mov      w19, #0x81
00008920 cmp      w23, #0x80
00008924 b.ne     #0x8948
00008928 ldurb    w11, [x29, #-0xb8]
0000892c tbnz     w11, #1, #0x8970
00008930 ldur     x25, [x29, #-0xc0]
00008934 b        #0x895c
00008938 mov      w19, wzr
0000893c mov      x3, xzr
00008940 cmp      w23, #0x80
00008944 b.eq     #0x8928
00008948 cmp      w23, #0xa
0000894c b.ne     #0x8970
00008950 ldur     x25, [x29, #-0xc0]
00008954 ldrb     w10, [x25, #0x30]
00008958 tbz      w10, #3, #0x8970
0000895c ldr      x7, [x25, #0x60]
00008960 cmp      w19, #0x81
00008964 mov      w5, #0x82
00008968 cinc     w19, w5, eq
0000896c add      x3, x7, x3
00008970 cbz      x3, #0x8a98
00008974 and      x26, x3, #7
00008978 sub      x25, x3, #1
0000897c cmp      x25, #7
00008980 b.lo     #0x8a70
00008984 sub      x25, x3, x26
00008988 ldur     x0, [x29, #-0xc0]
0000898c mov      x1, x22
00008990 mov      x2, x20
00008994 mov      x3, x28
00008998 mov      w4, w19
0000899c mov      x5, x28
000089a0 bl       #0xb4e8
000089a4 ldur     x0, [x29, #-0xc0]
000089a8 mov      x1, x22
000089ac mov      x2, x20
000089b0 mov      x3, x28
000089b4 mov      w4, w19
000089b8 mov      x5, x28
000089bc bl       #0xb4e8
000089c0 ldur     x0, [x29, #-0xc0]
000089c4 mov      x1, x22
000089c8 mov      x2, x20
000089cc mov      x3, x28
000089d0 mov      w4, w19
000089d4 mov      x5, x28
000089d8 bl       #0xb4e8
000089dc ldur     x0, [x29, #-0xc0]
000089e0 mov      x1, x22
000089e4 mov      x2, x20
000089e8 mov      x3, x28
000089ec mov      w4, w19
000089f0 mov      x5, x28
000089f4 bl       #0xb4e8
000089f8 ldur     x0, [x29, #-0xc0]
000089fc mov      x1, x22
00008a00 mov      x2, x20
00008a04 mov      x3, x28
00008a08 mov      w4, w19
00008a0c mov      x5, x28
00008a10 bl       #0xb4e8
00008a14 ldur     x0, [x29, #-0xc0]
00008a18 mov      x1, x22
00008a1c mov      x2, x20
00008a20 mov      x3, x28
00008a24 mov      w4, w19
00008a28 mov      x5, x28
00008a2c bl       #0xb4e8
00008a30 ldur     x0, [x29, #-0xc0]
00008a34 mov      x1, x22
00008a38 mov      x2, x20
00008a3c mov      x3, x28
00008a40 mov      w4, w19
00008a44 mov      x5, x28
00008a48 bl       #0xb4e8
00008a4c ldur     x0, [x29, #-0xc0]
00008a50 mov      x1, x22
00008a54 mov      x2, x20
00008a58 mov      x3, x28
00008a5c mov      w4, w19
00008a60 mov      x5, x28
00008a64 bl       #0xb4e8
00008a68 sub      x25, x25, #8
00008a6c cbnz     x25, #0x8988
00008a70 cbz      x26, #0x8a98
00008a74 ldur     x0, [x29, #-0xc0]
00008a78 mov      x1, x22
00008a7c mov      x2, x20
00008a80 mov      x3, x28
00008a84 mov      w4, w19
00008a88 mov      x5, x28
00008a8c bl       #0xb4e8
00008a90 sub      x26, x26, #1
00008a94 cbnz     x26, #0x8a74
00008a98 cmp      w19, #0x81
00008a9c b.ne     #0x8ab0
00008aa0 mov      w2, #0x81
00008aa4 cmp      w23, #0x80
00008aa8 b.ne     #0x8ad4
00008aac b        #0x8af0
00008ab0 cmp      w24, #0x80
00008ab4 b.eq     #0x8b24
00008ab8 and      w0, w24, #0xff
00008abc bl       #0xbc24
00008ac0 cmp      w23, #0x80
00008ac4 b.eq     #0x8afc
00008ac8 cmp      w24, #0x5f
00008acc b.eq     #0x8afc
00008ad0 cbnz     w0, #0x8afc
00008ad4 mov      w0, w23
00008ad8 bl       #0xbc24
00008adc cmp      w23, #0x5f
00008ae0 b.eq     #0x8aec
00008ae4 mov      w2, w19
00008ae8 cbz      w0, #0x8af0
00008aec mov      w2, #0x85
00008af0 mov      w19, w2
00008af4 cmp      w24, #0x80
00008af8 b.eq     #0x8b24
00008afc and      w0, w24, #0xff
00008b00 bl       #0xbc24
00008b04 cmp      w24, #0x5f
00008b08 b.eq     #0x8b10
00008b0c cbz      w0, #0x8b24
00008b10 mov      w4, #0x86
00008b14 cmp      w19, #0x82
00008b18 b.eq     #0x8b34
00008b1c cmp      w23, #0x80
00008b20 b.ne     #0x8b68
00008b24 mov      w4, w19
00008b28 sub      w9, w19, #0x85
00008b2c cmp      w9, #1
00008b30 b.hi     #0x8b4c
00008b34 ldur     x0, [x29, #-0xc0]
00008b38 mov      x1, x22
00008b3c mov      x2, x20
00008b40 mov      x3, x28
00008b44 mov      x5, x28
00008b48 bl       #0xb4e8
00008b4c ldr      x12, [sp, #0x40]
00008b50 cmp      x21, x12
00008b54 b.eq     #0x8b84
00008b58 ldr      x5, [sp, #0x48]
00008b5c ldrb     w12, [x5, x20]
00008b60 cbz      w12, #0x8864
00008b64 b        #0x8b84
00008b68 mov      w0, w23
00008b6c bl       #0xbc24
00008b70 cmp      w23, #0x5f
00008b74 b.eq     #0x8b24
00008b78 mov      w4, #0x86
00008b7c cbz      w0, #0x8b34
00008b80 b        #0x8b24
00008b84 ldr      x4, [sp, #0x48]
00008b88 stur     x27, [x29, #-0x90]
00008b8c ldrb     w13, [x4, x20]
00008b90 cbnz     w13, #0x8644
00008b94 mov      w23, #1
00008b98 ldur     x0, [x29, #-0xb0]
00008b9c cbnz     x0, #0x97c4
00008ba0 b        #0x97cc
00008ba4 ldr      x1, [x26, #0x78]
00008ba8 ldr      x14, [sp, #0x30]
00008bac cbz      x1, #0x8c14
00008bb0 mov      x22, x25
00008bb4 cmp      x25, x14
00008bb8 b.hs     #0x8c0c
00008bbc mov      x22, x25
00008bc0 b        #0x8bc8
00008bc4 ldr      x1, [x26, #0x78]
00008bc8 ldrb     w14, [x22]
00008bcc ldrb     w15, [x1]
00008bd0 cmp      w14, w15
00008bd4 b.ne     #0x8bf8
00008bd8 ldr      x16, [sp, #0x30]
00008bdc ldr      x2, [x26, #0x80]
00008be0 sub      x12, x16, x22
00008be4 cmp      x12, x2
00008be8 b.lo     #0x8bf8
00008bec mov      x0, x22
00008bf0 bl       #0xb918
00008bf4 cbz      w0, #0x8c08
00008bf8 ldr      x8, [sp, #0x30]
00008bfc add      x22, x22, #1
00008c00 cmp      x22, x8
00008c04 b.lo     #0x8bc4
00008c08 ldr      x14, [sp, #0x30]
00008c0c cmp      x22, x14
00008c10 b.eq     #0x91ac
00008c14 movi     v4.2d, #0000000000000000
00008c18 add      x22, x24, #1
00008c1c mov      w15, #1
00008c20 stp      x25, x14, [x29, #-0xa0]
00008c24 stp      xzr, x23, [x29, #-0xb0]
00008c28 mov      x23, x25
00008c2c lsl      x17, x15, x22
00008c30 stur     x26, [x29, #-0xc0]
00008c34 lsl      x7, x15, x20
00008c38 stur     w27, [x29, #-0xb8]
00008c3c stur     xzr, [x29, #-0x88]
00008c40 stp      q4, q4, [x29, #-0xe0]
00008c44 ldp      x14, x13, [x29, #-0xe0]
00008c48 ldur     x16, [x29, #-0xc8]
00008c4c str      x17, [sp, #0x18]
00008c50 ldur     x17, [x29, #-0xd0]
00008c54 stp      x14, x13, [x29, #-0x78]
00008c58 stur     x16, [x29, #-0x60]
00008c5c str      x7, [sp, #0x38]
00008c60 stur     x17, [x29, #-0x68]
00008c64 str      x21, [sp, #0x10]
00008c68 cmp      x25, x23
00008c6c b.ne     #0x8e1c
00008c70 b        #0x8e24
00008c74 ldr      x10, [sp, #0x28]
00008c78 ldr      x19, [sp, #0x10]
00008c7c cbnz     x19, #0x8c98
00008c80 ldr      w3, [x10, #0x90]
00008c84 cbnz     w3, #0x8c98
00008c88 b        #0x94c8
00008c8c ldur     x1, [x29, #-0x90]
00008c90 add      x1, x1, #1
00008c94 stur     x1, [x29, #-0x90]
00008c98 sub      x0, x29, #0xc0
00008c9c mov      x2, x25
00008ca0 mov      x3, x22
00008ca4 mov      x4, x20
00008ca8 bl       #0x982c
00008cac mov      x24, x0
00008cb0 cbz      x24, #0x8c8c
00008cb4 subs     x21, x19, #1
00008cb8 b.ne     #0x8cc8
00008cbc ldr      x12, [sp, #0x28]
00008cc0 ldr      w5, [x12, #0x90]
00008cc4 cbz      w5, #0x9170
00008cc8 ldur     x0, [x29, #-0xb0]
00008ccc cbnz     x0, #0x8cec
00008cd0 ldur     x2, [x29, #-0xc0]
00008cd4 ldr      x4, [x2, #0x88]
00008cd8 lsl      x23, x4, #4
00008cdc add      x0, x23, #0x10
00008ce0 bl       #0xc698
00008ce4 stur     x0, [x29, #-0xb0]
00008ce8 cbz      x0, #0x980c
00008cec ldur     x8, [x29, #-0xc0]
00008cf0 mov      x15, #-1
00008cf4 ldr      x6, [x8, #0x88]
00008cf8 cbz      x6, #0x8d38
00008cfc mov      x1, xzr
00008d00 mov      w23, #2
00008d04 b        #0x8d14
00008d08 ldur     x0, [x29, #-0xb0]
00008d0c add      x23, x23, #1
00008d10 add      x1, x1, #0x10
00008d14 add      x0, x0, x1
00008d18 str      x15, [x0, #0x18]
00008d1c ldur     x7, [x29, #-0xb0]
00008d20 add      x9, x7, x1
00008d24 str      x15, [x9, #0x10]
00008d28 ldur     x11, [x29, #-0xc0]
00008d2c ldr      x26, [x11, #0x88]
00008d30 cmp      x23, x26
00008d34 b.ls     #0x8d08
00008d38 ldr      x17, [sp, #0x28]
00008d3c ldr      w6, [x17, #0x90]
00008d40 cbnz     w6, #0x8d6c
00008d44 ldurb    w7, [x29, #-0xb7]
00008d48 tbnz     w7, #2, #0x8d6c
00008d4c ldur     x1, [x29, #-0x90]
00008d50 sub      x0, x29, #0xc0
00008d54 mov      x2, x24
00008d58 mov      x3, x22
00008d5c mov      x4, x20
00008d60 bl       #0x9bd8
00008d64 cbz      x0, #0x8dc0
00008d68 b        #0x916c
00008d6c ldr      x11, [sp, #0x28]
00008d70 ldur     x0, [x29, #-0x88]
00008d74 ldr      x8, [x11, #0x98]
00008d78 cbz      x8, #0x8d98
00008d7c cbnz     x0, #0x8d98
00008d80 lsl      x13, x8, #3
00008d84 add      x0, x13, #8
00008d88 bl       #0xc698
00008d8c ldr      x8, [sp, #0x28]
00008d90 ldr      x8, [x8, #0x98]
00008d94 stur     x0, [x29, #-0x88]
00008d98 cbnz     x0, #0x8da0
00008d9c cbnz     x8, #0x97ec
00008da0 ldur     x1, [x29, #-0x90]
00008da4 sub      x0, x29, #0xc0
00008da8 mov      x2, x24
00008dac mov      x3, x22
00008db0 mov      x4, x20
00008db4 mov      x5, xzr
00008db8 bl       #0x9f00
00008dbc cbnz     x0, #0x916c
00008dc0 ldur     x1, [x29, #-0x90]
00008dc4 cmp      x24, x1
00008dc8 b.ls     #0x8e0c
00008dcc sub      x2, x24, #1
00008dd0 sub      x0, x29, #0xc0
00008dd4 mov      x3, x22
00008dd8 mov      x4, x20
00008ddc bl       #0x982c
00008de0 ldur     x1, [x29, #-0x90]
00008de4 mov      x24, x0
00008de8 cbz      x24, #0x8e0c
00008dec sub      x0, x29, #0xc0
00008df0 mov      x2, x24
00008df4 mov      x3, x22
00008df8 mov      x4, x20
00008dfc mov      x5, xzr
00008e00 bl       #0x9f00
00008e04 cbz      x0, #0x8dc0
00008e08 b        #0x916c
00008e0c ldur     x25, [x29, #-0xa0]
00008e10 add      x23, x1, #1
00008e14 cmp      x25, x23
00008e18 b.eq     #0x8e24
00008e1c ldurb    w21, [x23, #-1]
00008e20 b        #0x8e28
00008e24 mov      w21, #0x80
00008e28 ldur     x19, [x29, #-0xc0]
00008e2c mov      x1, x22
00008e30 ldr      x3, [sp, #0x18]
00008e34 mov      x2, x20
00008e38 ldr      x25, [sp, #0x30]
00008e3c mov      w4, #0x84
00008e40 mov      x0, x19
00008e44 mov      x5, x3
00008e48 bl       #0xa458
00008e4c mov      x28, x0
00008e50 mov      x0, xzr
00008e54 str      x28, [sp, #0x40]
00008e58 b        #0x8e8c
00008e5c ldur     x19, [x29, #-0xc0]
00008e60 mov      x1, x22
00008e64 ldr      x5, [sp, #0x40]
00008e68 mov      x2, x20
00008e6c mov      x3, x28
00008e70 mov      w4, w27
00008e74 mov      x0, x19
00008e78 bl       #0xa458
00008e7c mov      x28, x0
00008e80 ldr      x0, [sp, #0x48]
00008e84 add      x23, x23, #1
00008e88 mov      w21, w27
00008e8c ldur     x3, [x29, #-0x98]
00008e90 cmp      x23, x3
00008e94 b.eq     #0x8ea0
00008e98 ldrb     w27, [x23]
00008e9c b        #0x8ea4
00008ea0 mov      w27, #0x80
00008ea4 ldr      x5, [sp, #0x40]
00008ea8 cmp      x28, x5
00008eac csel     x0, x23, x0, eq
00008eb0 cmp      w21, #0x80
00008eb4 b.eq     #0x8eec
00008eb8 cmp      w21, #0xa
00008ebc b.ne     #0x8ec8
00008ec0 ldrb     w16, [x19, #0x30]
00008ec4 tbnz     w16, #3, #0x8ef4
00008ec8 mov      w24, wzr
00008ecc mov      x4, xzr
00008ed0 cmp      w27, #0x80
00008ed4 b.eq     #0x8f04
00008ed8 cmp      w27, #0xa
00008edc b.ne     #0x8f20
00008ee0 ldrb     w1, [x19, #0x30]
00008ee4 tbnz     w1, #3, #0x8f0c
00008ee8 b        #0x8f20
00008eec ldurb    w17, [x29, #-0xb8]
00008ef0 tbnz     w17, #0, #0x8ec8
00008ef4 ldr      x4, [x19, #0x58]
00008ef8 mov      w24, #0x81
00008efc cmp      w27, #0x80
00008f00 b.ne     #0x8ed8
00008f04 ldurb    w2, [x29, #-0xb8]
00008f08 tbnz     w2, #1, #0x8f20
00008f0c ldr      x5, [x19, #0x60]
00008f10 cmp      w24, #0x81
00008f14 mov      w3, #0x82
00008f18 cinc     w24, w3, eq
00008f1c add      x4, x5, x4
00008f20 str      x0, [sp, #0x48]
00008f24 cbz      x4, #0x906c
00008f28 and      x26, x4, #7
00008f2c sub      x7, x4, #1
00008f30 cmp      x7, #7
00008f34 b.lo     #0x903c
00008f38 sub      x25, x4, x26
00008f3c mov      x0, x19
00008f40 mov      x1, x22
00008f44 mov      x2, x20
00008f48 mov      x3, x28
00008f4c mov      w4, w24
00008f50 mov      x5, x28
00008f54 bl       #0xa458
00008f58 mov      x3, x0
00008f5c mov      x0, x19
00008f60 mov      x1, x22
00008f64 mov      x2, x20
00008f68 mov      w4, w24
00008f6c mov      x5, x3
00008f70 bl       #0xa458
00008f74 mov      x5, x0
00008f78 mov      x0, x19
00008f7c mov      x1, x22
00008f80 mov      x2, x20
00008f84 mov      x3, x5
00008f88 mov      w4, w24
00008f8c bl       #0xa458
00008f90 mov      x6, x0
00008f94 mov      x0, x19
00008f98 mov      x1, x22
00008f9c mov      x2, x20
00008fa0 mov      x3, x6
00008fa4 mov      w4, w24
00008fa8 mov      x5, x6
00008fac bl       #0xa458
00008fb0 mov      x7, x0
00008fb4 mov      x0, x19
00008fb8 mov      x1, x22
00008fbc mov      x2, x20
00008fc0 mov      x3, x7
00008fc4 mov      w4, w24
00008fc8 mov      x5, x7
00008fcc bl       #0xa458
00008fd0 mov      x8, x0
00008fd4 mov      x0, x19
00008fd8 mov      x1, x22
00008fdc mov      x2, x20
00008fe0 mov      x3, x8
00008fe4 mov      w4, w24
00008fe8 mov      x5, x8
00008fec bl       #0xa458
00008ff0 mov      x9, x0
00008ff4 mov      x0, x19
00008ff8 mov      x1, x22
00008ffc mov      x2, x20
00009000 mov      x3, x9
00009004 mov      w4, w24
00009008 mov      x5, x9
0000900c bl       #0xa458
00009010 mov      x10, x0
00009014 mov      x0, x19
00009018 mov      x1, x22
0000901c mov      x2, x20
00009020 mov      x3, x10
00009024 mov      w4, w24
00009028 mov      x5, x10
0000902c bl       #0xa458
00009030 sub      x25, x25, #8
00009034 mov      x28, x0
00009038 cbnz     x25, #0x8f3c
0000903c ldr      x25, [sp, #0x30]
00009040 cbz      x26, #0x906c
00009044 mov      x0, x19
00009048 mov      x1, x22
0000904c mov      x2, x20
00009050 mov      x3, x28
00009054 mov      w4, w24
00009058 mov      x5, x28
0000905c bl       #0xa458
00009060 sub      x26, x26, #1
00009064 mov      x28, x0
00009068 cbnz     x26, #0x9044
0000906c cmp      w24, #0x81
00009070 b.ne     #0x9084
00009074 mov      w1, #0x81
00009078 cmp      w27, #0x80
0000907c b.ne     #0x90a8
00009080 b        #0x90c4
00009084 cmp      w21, #0x80
00009088 b.eq     #0x9110
0000908c and      w0, w21, #0xff
00009090 bl       #0xbc24
00009094 cmp      w27, #0x80
00009098 b.eq     #0x90d0
0000909c cmp      w21, #0x5f
000090a0 b.eq     #0x90d0
000090a4 cbnz     w0, #0x90d0
000090a8 mov      w0, w27
000090ac bl       #0xbc24
000090b0 cmp      w27, #0x5f
000090b4 b.eq     #0x90c0
000090b8 mov      w1, w24
000090bc cbz      w0, #0x90c4
000090c0 mov      w1, #0x85
000090c4 mov      w24, w1
000090c8 cmp      w21, #0x80
000090cc b.eq     #0x9110
000090d0 and      w0, w21, #0xff
000090d4 bl       #0xbc24
000090d8 cmp      w21, #0x5f
000090dc b.eq     #0x90e4
000090e0 cbz      w0, #0x9110
000090e4 mov      w4, #0x86
000090e8 cmp      w24, #0x82
000090ec b.eq     #0x9120
000090f0 cmp      w27, #0x80
000090f4 b.eq     #0x9110
000090f8 mov      w0, w27
000090fc bl       #0xbc24
00009100 cmp      w27, #0x5f
00009104 b.eq     #0x9110
00009108 mov      w4, #0x86
0000910c cbz      w0, #0x9120
00009110 mov      w4, w24
00009114 sub      w8, w24, #0x85
00009118 cmp      w8, #1
0000911c b.hi     #0x913c
00009120 ldur     x0, [x29, #-0xc0]
00009124 mov      x1, x22
00009128 mov      x2, x20
0000912c mov      x3, x28
00009130 mov      x5, x28
00009134 bl       #0xa458
00009138 mov      x28, x0
0000913c ldr      x11, [sp, #0x38]
00009140 cmp      x23, x25
00009144 and      x10, x28, x11
00009148 b.eq     #0x9150
0000914c cbz      x10, #0x8e5c
00009150 ldr      x1, [sp, #0x48]
00009154 stur     x1, [x29, #-0x90]
00009158 cbnz     x10, #0x8c74
0000915c mov      w23, #1
00009160 ldur     x0, [x29, #-0xb0]
00009164 cbnz     x0, #0x94d4
00009168 b        #0x94dc
0000916c cbz      x19, #0x94c8
00009170 ldur     x20, [x29, #-0x90]
00009174 subs     x4, x19, #2
00009178 ldur     x2, [x29, #-0xa8]
0000917c sub      x1, x20, x2
00009180 ldr      x20, [sp, #0x20]
00009184 sub      x0, x24, x2
00009188 stp      x1, x0, [x20]
0000918c b.lo     #0x94c8
00009190 ldur     x8, [x29, #-0xc0]
00009194 and      x10, x21, #7
00009198 cmp      x4, #7
0000919c b.hs     #0x9200
000091a0 mov      w5, #1
000091a4 cbnz     x10, #0x946c
000091a8 b        #0x94c8
000091ac mov      w23, #1
000091b0 b        #0x84dc
000091b4 cbz      x28, #0x97b8
000091b8 ldur     x20, [x29, #-0x90]
000091bc mov      x15, x28
000091c0 ldur     x23, [x29, #-0xa8]
000091c4 subs     x5, x15, #2
000091c8 sub      x21, x20, x23
000091cc ldr      x20, [sp, #0x20]
000091d0 sub      x28, x19, x23
000091d4 stp      x21, x28, [x20]
000091d8 b.lo     #0x97b8
000091dc ldur     x9, [x29, #-0xc0]
000091e0 and      x11, x27, #7
000091e4 cmp      x5, #7
000091e8 b.hs     #0x94f0
000091ec mov      w6, #1
000091f0 cbnz     x11, #0x975c
000091f4 b        #0x97b8
000091f8 mov      w23, #0xc
000091fc b        #0x84dc
00009200 movi     v0.2d, #0xffffffffffffffff
00009204 sub      x12, x21, x10
00009208 mov      w26, #1
0000920c mov      w14, #0x80
00009210 ldr      x23, [x8, #0x88]
00009214 mov      x16, x26
00009218 cmp      x16, x23
0000921c b.ls     #0x923c
00009220 stur     q0, [x29, #-0xf0]
00009224 add      x15, x20, x14
00009228 ldur     x25, [x29, #-0xe8]
0000922c stur     x25, [x15, #-0x68]
00009230 ldur     x9, [x29, #-0xf0]
00009234 stur     x9, [x15, #-0x70]
00009238 b        #0x9258
0000923c ldur     x21, [x29, #-0xb0]
00009240 add      x22, x21, x14
00009244 add      x21, x20, x14
00009248 ldur     x27, [x22, #-0x68]
0000924c stur     x27, [x21, #-0x68]
00009250 ldur     x28, [x22, #-0x70]
00009254 stur     x28, [x21, #-0x70]
00009258 ldr      x11, [x8, #0x88]
0000925c cmp      x16, x11
00009260 b.hs     #0x9284
00009264 ldur     x9, [x29, #-0xb0]
00009268 add      x17, x20, x14
0000926c add      x9, x9, x14
00009270 ldur     x11, [x9, #-0x58]
00009274 stur     x11, [x17, #-0x58]
00009278 ldur     x13, [x9, #-0x60]
0000927c stur     x13, [x17, #-0x60]
00009280 b        #0x929c
00009284 stur     q0, [x29, #-0x100]
00009288 add      x11, x20, x14
0000928c ldur     x15, [x29, #-0xf8]
00009290 stur     x15, [x11, #-0x58]
00009294 ldur     x17, [x29, #-0x100]
00009298 stur     x17, [x11, #-0x60]
0000929c ldr      x7, [x8, #0x88]
000092a0 add      x17, x16, #2
000092a4 cmp      x17, x7
000092a8 b.ls     #0x92cc
000092ac str      q0, [sp, #0x140]
000092b0 add      x25, x20, x14
000092b4 ldr      x0, [sp, #0x148]
000092b8 stur     x0, [x25, #-0x48]
000092bc ldr      x20, [sp, #0x140]
000092c0 stur     x20, [x25, #-0x50]
000092c4 ldr      x20, [sp, #0x20]
000092c8 b        #0x92e8
000092cc ldur     x26, [x29, #-0xb0]
000092d0 add      x15, x20, x14
000092d4 add      x13, x26, x14
000092d8 ldur     x2, [x13, #-0x48]
000092dc stur     x2, [x15, #-0x48]
000092e0 ldur     x1, [x13, #-0x50]
000092e4 stur     x1, [x15, #-0x50]
000092e8 ldr      x23, [x8, #0x88]
000092ec add      x9, x17, #1
000092f0 cmp      x9, x23
000092f4 b.ls     #0x9314
000092f8 str      q0, [sp, #0x130]
000092fc add      x24, x20, x14
00009300 ldr      x25, [sp, #0x138]
00009304 stur     x25, [x24, #-0x38]
00009308 ldr      x5, [sp, #0x130]
0000930c stur     x5, [x24, #-0x40]
00009310 b        #0x9330
00009314 ldur     x21, [x29, #-0xb0]
00009318 add      x19, x20, x14
0000931c add      x26, x21, x14
00009320 ldur     x28, [x26, #-0x38]
00009324 stur     x28, [x19, #-0x38]
00009328 ldur     x27, [x26, #-0x40]
0000932c stur     x27, [x19, #-0x40]
00009330 ldr      x3, [x8, #0x88]
00009334 add      x11, x9, #1
00009338 cmp      x11, x3
0000933c b.ls     #0x935c
00009340 str      q0, [sp, #0x120]
00009344 add      x4, x20, x14
00009348 ldr      x13, [sp, #0x128]
0000934c stur     x13, [x4, #-0x28]
00009350 ldr      x15, [sp, #0x120]
00009354 stur     x15, [x4, #-0x30]
00009358 b        #0x9378
0000935c ldur     x6, [x29, #-0xb0]
00009360 add      x5, x20, x14
00009364 add      x3, x6, x14
00009368 ldur     x4, [x3, #-0x28]
0000936c stur     x4, [x5, #-0x28]
00009370 ldur     x9, [x3, #-0x30]
00009374 stur     x9, [x5, #-0x30]
00009378 ldr      x17, [x8, #0x88]
0000937c add      x13, x11, #1
00009380 cmp      x13, x17
00009384 b.ls     #0x93a4
00009388 str      q0, [sp, #0x110]
0000938c add      x7, x20, x14
00009390 ldr      x2, [sp, #0x118]
00009394 stur     x2, [x7, #-0x18]
00009398 ldr      x1, [sp, #0x110]
0000939c stur     x1, [x7, #-0x20]
000093a0 b        #0x93c0
000093a4 ldur     x11, [x29, #-0xb0]
000093a8 add      x1, x20, x14
000093ac add      x6, x11, x14
000093b0 ldur     x7, [x6, #-0x18]
000093b4 stur     x7, [x1, #-0x18]
000093b8 ldur     x26, [x6, #-0x20]
000093bc stur     x26, [x1, #-0x20]
000093c0 ldr      x0, [x8, #0x88]
000093c4 add      x15, x13, #1
000093c8 cmp      x15, x0
000093cc b.ls     #0x93ec
000093d0 str      q0, [sp, #0x100]
000093d4 add      x23, x20, x14
000093d8 ldr      x28, [sp, #0x108]
000093dc stur     x28, [x23, #-8]
000093e0 ldr      x27, [sp, #0x100]
000093e4 stur     x27, [x23, #-0x10]
000093e8 b        #0x940c
000093ec ldur     x20, [x29, #-0xb0]
000093f0 add      x2, x20, x14
000093f4 ldr      x20, [sp, #0x20]
000093f8 ldur     x23, [x2, #-8]
000093fc add      x0, x20, x14
00009400 stur     x23, [x0, #-8]
00009404 ldur     x21, [x2, #-0x10]
00009408 stur     x21, [x0, #-0x10]
0000940c ldr      x25, [x8, #0x88]
00009410 add      x0, x15, #1
00009414 cmp      x0, x25
00009418 b.ls     #0x9438
0000941c str      q0, [sp, #0xf0]
00009420 add      x9, x20, x14
00009424 ldr      x4, [sp, #0xf8]
00009428 str      x4, [x9, #8]
0000942c ldr      x13, [sp, #0xf0]
00009430 str      x13, [x9]
00009434 b        #0x9454
00009438 ldur     x5, [x29, #-0xb0]
0000943c add      x21, x20, x14
00009440 add      x22, x5, x14
00009444 ldr      x3, [x22, #8]
00009448 str      x3, [x21, #8]
0000944c ldr      x6, [x22]
00009450 str      x6, [x21]
00009454 sub      x12, x12, #8
00009458 add      x14, x14, #0x80
0000945c add      x26, x0, #1
00009460 cbnz     x12, #0x9210
00009464 add      x5, x16, #8
00009468 cbz      x10, #0x94c8
0000946c movi     v2.2d, #0xffffffffffffffff
00009470 lsl      x7, x5, #4
00009474 ldr      x12, [x8, #0x88]
00009478 cmp      x5, x12
0000947c b.ls     #0x949c
00009480 str      q2, [sp, #0xe0]
00009484 add      x14, x20, x7
00009488 ldr      x16, [sp, #0xe8]
0000948c str      x16, [x14, #8]
00009490 ldr      x17, [sp, #0xe0]
00009494 str      x17, [x14]
00009498 b        #0x94b8
0000949c ldur     x13, [x29, #-0xb0]
000094a0 add      x16, x20, x7
000094a4 add      x12, x13, x7
000094a8 ldr      x14, [x12, #8]
000094ac str      x14, [x16, #8]
000094b0 ldr      x15, [x12]
000094b4 str      x15, [x16]
000094b8 add      x5, x5, #1
000094bc sub      x10, x10, #1
000094c0 add      x7, x7, #0x10
000094c4 cbnz     x10, #0x9474
000094c8 mov      w23, wzr
000094cc ldur     x0, [x29, #-0xb0]
000094d0 cbz      x0, #0x94dc
000094d4 bl       #0xc73c
000094d8 stur     xzr, [x29, #-0xb0]
000094dc ldur     x0, [x29, #-0x88]
000094e0 cbz      x0, #0x84dc
000094e4 bl       #0xc73c
000094e8 stur     xzr, [x29, #-0x88]
000094ec b        #0x84dc
000094f0 movi     v1.2d, #0xffffffffffffffff
000094f4 sub      x13, x27, x11
000094f8 mov      w24, #1
000094fc mov      w15, #0x80
00009500 ldr      x27, [x9, #0x88]
00009504 mov      x17, x24
00009508 cmp      x17, x27
0000950c b.ls     #0x952c
00009510 str      q1, [sp, #0xd0]
00009514 add      x22, x20, x15
00009518 ldr      x16, [sp, #0xd8]
0000951c stur     x16, [x22, #-0x68]
00009520 ldr      x8, [sp, #0xd0]
00009524 stur     x8, [x22, #-0x70]
00009528 b        #0x9548
0000952c ldur     x25, [x29, #-0xb0]
00009530 add      x0, x20, x15
00009534 add      x8, x25, x15
00009538 ldur     x12, [x8, #-0x68]
0000953c stur     x12, [x0, #-0x68]
00009540 ldur     x14, [x8, #-0x70]
00009544 stur     x14, [x0, #-0x70]
00009548 ldr      x10, [x9, #0x88]
0000954c cmp      x17, x10
00009550 b.hs     #0x9574
00009554 ldur     x6, [x29, #-0xb0]
00009558 add      x16, x20, x15
0000955c add      x12, x6, x15
00009560 ldur     x7, [x12, #-0x58]
00009564 stur     x7, [x16, #-0x58]
00009568 ldur     x26, [x12, #-0x60]
0000956c stur     x26, [x16, #-0x60]
00009570 b        #0x958c
00009574 str      q1, [sp, #0xc0]
00009578 add      x14, x20, x15
0000957c ldr      x2, [sp, #0xc8]
00009580 stur     x2, [x14, #-0x58]
00009584 ldr      x1, [sp, #0xc0]
00009588 stur     x1, [x14, #-0x60]
0000958c ldr      x0, [x9, #0x88]
00009590 add      x19, x17, #2
00009594 cmp      x19, x0
00009598 b.ls     #0x95b8
0000959c str      q1, [sp, #0xb0]
000095a0 add      x26, x20, x15
000095a4 ldr      x28, [sp, #0xb8]
000095a8 stur     x28, [x26, #-0x48]
000095ac ldr      x27, [sp, #0xb0]
000095b0 stur     x27, [x26, #-0x50]
000095b4 b        #0x95d8
000095b8 ldur     x20, [x29, #-0xb0]
000095bc add      x10, x20, x15
000095c0 ldr      x20, [sp, #0x20]
000095c4 ldur     x23, [x10, #-0x48]
000095c8 add      x25, x20, x15
000095cc stur     x23, [x25, #-0x48]
000095d0 ldur     x21, [x10, #-0x50]
000095d4 stur     x21, [x25, #-0x50]
000095d8 ldr      x25, [x9, #0x88]
000095dc add      x10, x19, #1
000095e0 cmp      x10, x25
000095e4 b.ls     #0x9604
000095e8 str      q1, [sp, #0xa0]
000095ec add      x3, x20, x15
000095f0 ldr      x8, [sp, #0xa8]
000095f4 stur     x8, [x3, #-0x38]
000095f8 ldr      x5, [sp, #0xa0]
000095fc stur     x5, [x3, #-0x40]
00009600 b        #0x9620
00009604 ldur     x12, [x29, #-0xb0]
00009608 add      x24, x20, x15
0000960c add      x19, x12, x15
00009610 ldur     x14, [x19, #-0x38]
00009614 stur     x14, [x24, #-0x38]
00009618 ldur     x16, [x19, #-0x40]
0000961c stur     x16, [x24, #-0x40]
00009620 ldr      x3, [x9, #0x88]
00009624 add      x12, x10, #1
00009628 cmp      x12, x3
0000962c b.ls     #0x964c
00009630 str      q1, [sp, #0x90]
00009634 add      x6, x20, x15
00009638 ldr      x7, [sp, #0x98]
0000963c stur     x7, [x6, #-0x28]
00009640 ldr      x26, [sp, #0x90]
00009644 stur     x26, [x6, #-0x30]
00009648 b        #0x9668
0000964c ldur     x10, [x29, #-0xb0]
00009650 add      x5, x20, x15
00009654 add      x4, x10, x15
00009658 ldur     x6, [x4, #-0x28]
0000965c stur     x6, [x5, #-0x28]
00009660 ldur     x4, [x4, #-0x30]
00009664 stur     x4, [x5, #-0x30]
00009668 ldr      x2, [x9, #0x88]
0000966c add      x14, x12, #1
00009670 cmp      x14, x2
00009674 b.ls     #0x9694
00009678 str      q1, [sp, #0x80]
0000967c add      x2, x20, x15
00009680 ldr      x23, [sp, #0x88]
00009684 stur     x23, [x2, #-0x18]
00009688 ldr      x21, [sp, #0x80]
0000968c stur     x21, [x2, #-0x20]
00009690 b        #0x96b4
00009694 ldur     x1, [x29, #-0xb0]
00009698 add      x7, x1, x15
0000969c add      x1, x20, x15
000096a0 ldur     x0, [x7, #-0x18]
000096a4 stur     x0, [x1, #-0x18]
000096a8 ldur     x20, [x7, #-0x20]
000096ac stur     x20, [x1, #-0x20]
000096b0 ldr      x20, [sp, #0x20]
000096b4 ldr      x28, [x9, #0x88]
000096b8 add      x16, x14, #1
000096bc cmp      x16, x28
000096c0 b.ls     #0x96e0
000096c4 str      q1, [sp, #0x70]
000096c8 add      x0, x20, x15
000096cc ldr      x14, [sp, #0x78]
000096d0 stur     x14, [x0, #-8]
000096d4 ldr      x8, [sp, #0x70]
000096d8 stur     x8, [x0, #-0x10]
000096dc b        #0x96fc
000096e0 ldur     x27, [x29, #-0xb0]
000096e4 add      x8, x20, x15
000096e8 add      x23, x27, x15
000096ec ldur     x25, [x23, #-8]
000096f0 stur     x25, [x8, #-8]
000096f4 ldur     x12, [x23, #-0x10]
000096f8 stur     x12, [x8, #-0x10]
000096fc ldr      x5, [x9, #0x88]
00009700 add      x8, x16, #1
00009704 cmp      x8, x5
00009708 b.ls     #0x9728
0000970c str      q1, [sp, #0x60]
00009710 add      x12, x20, x15
00009714 ldr      x6, [sp, #0x68]
00009718 str      x6, [x12, #8]
0000971c ldr      x4, [sp, #0x60]
00009720 str      x4, [x12]
00009724 b        #0x9744
00009728 ldur     x16, [x29, #-0xb0]
0000972c add      x21, x20, x15
00009730 add      x22, x16, x15
00009734 ldr      x3, [x22, #8]
00009738 str      x3, [x21, #8]
0000973c ldr      x10, [x22]
00009740 str      x10, [x21]
00009744 sub      x13, x13, #8
00009748 add      x15, x15, #0x80
0000974c add      x24, x8, #1
00009750 cbnz     x13, #0x9500
00009754 add      x6, x17, #8
00009758 cbz      x11, #0x97b8
0000975c movi     v3.2d, #0xffffffffffffffff
00009760 lsl      x22, x6, #4
00009764 ldr      x13, [x9, #0x88]
00009768 cmp      x6, x13
0000976c b.ls     #0x978c
00009770 str      q3, [sp, #0x50]
00009774 add      x15, x20, x22
00009778 ldr      x5, [sp, #0x58]
0000977c str      x5, [x15, #8]
00009780 ldr      x4, [sp, #0x50]
00009784 str      x4, [x15]
00009788 b        #0x97a8
0000978c ldur     x15, [x29, #-0xb0]
00009790 add      x21, x20, x22
00009794 add      x13, x15, x22
00009798 ldr      x17, [x13, #8]
0000979c str      x17, [x21, #8]
000097a0 ldr      x3, [x13]
000097a4 str      x3, [x21]
000097a8 add      x6, x6, #1
000097ac sub      x11, x11, #1
000097b0 add      x22, x22, #0x10
000097b4 cbnz     x11, #0x9764
000097b8 mov      w23, wzr
000097bc ldur     x0, [x29, #-0xb0]
000097c0 cbz      x0, #0x97cc
000097c4 bl       #0xc73c
000097c8 stur     xzr, [x29, #-0xb0]
000097cc ldur     x0, [x29, #-0x88]
000097d0 cbz      x0, #0x97dc
000097d4 bl       #0xc73c
000097d8 stur     xzr, [x29, #-0x88]
000097dc ldur     x0, [x29, #-0x78]
000097e0 bl       #0xc73c
000097e4 stur     xzr, [x29, #-0x78]
000097e8 b        #0x84dc
000097ec mov      w23, #0xc
000097f0 ldur     x0, [x29, #-0xb0]
000097f4 cbnz     x0, #0x94d4
000097f8 b        #0x94dc
000097fc mov      w23, #0xc
00009800 ldur     x0, [x29, #-0xb0]
00009804 cbnz     x0, #0x97c4
00009808 b        #0x97cc
0000980c mov      w23, #0xc
00009810 ldur     x0, [x29, #-0x88]
00009814 cbnz     x0, #0x94e4
00009818 b        #0x84dc
0000981c mov      w23, #0xc
00009820 ldur     x0, [x29, #-0x88]
00009824 cbnz     x0, #0x97d4
00009828 b        #0x97dc
0000982c sub      sp, sp, #0x90
00009830 stp      x28, x27, [sp, #0x30]
00009834 stp      x26, x25, [sp, #0x40]
00009838 stp      x24, x23, [sp, #0x50]
0000983c stp      x22, x21, [sp, #0x60]
00009840 stp      x20, x19, [sp, #0x70]
00009844 stp      x29, x30, [sp, #0x80]
00009848 add      x29, sp, #0x80
0000984c mov      x24, x0
00009850 str      x2, [sp, #0x20]
00009854 mov      x19, x4
00009858 mov      x21, x3
0000985c ldr      x8, [x24, #0x20]
00009860 mov      x28, x1
00009864 ldr      x20, [x24, #0x60]
00009868 cmp      x8, x28
0000986c b.eq     #0x9878
00009870 ldurb    w23, [x28, #-1]
00009874 b        #0x987c
00009878 mov      w23, #0x80
0000987c ldr      x22, [x24]
00009880 mov      w9, #1
00009884 lsl      x3, x9, x21
00009888 mov      w4, #0x84
0000988c mov      x1, x21
00009890 mov      x0, x22
00009894 mov      x2, x19
00009898 mov      x5, x3
0000989c lsl      x14, x9, x19
000098a0 str      x14, [sp, #0x10]
000098a4 bl       #0xa458
000098a8 mov      x27, x0
000098ac str      x20, [sp, #0x18]
000098b0 mov      x25, xzr
000098b4 str      x24, [sp, #8]
000098b8 b        #0x98e8
000098bc ldr      x22, [x24]
000098c0 mov      x1, x21
000098c4 mov      x2, x19
000098c8 mov      x3, x27
000098cc mov      w4, w26
000098d0 mov      x0, x22
000098d4 mov      x5, x20
000098d8 bl       #0xa458
000098dc mov      x27, x0
000098e0 add      x28, x28, #1
000098e4 mov      w23, w26
000098e8 ldr      x10, [x24, #0x28]
000098ec cmp      x28, x10
000098f0 b.eq     #0x98fc
000098f4 ldrb     w26, [x28]
000098f8 b        #0x9900
000098fc mov      w26, #0x80
00009900 cmp      w23, #0x80
00009904 str      x28, [sp, #0x28]
00009908 b.eq     #0x9940
0000990c cmp      w23, #0xa
00009910 b.ne     #0x991c
00009914 ldrb     w8, [x22, #0x30]
00009918 tbnz     w8, #3, #0x9948
0000991c mov      w28, wzr
00009920 mov      x8, xzr
00009924 cmp      w26, #0x80
00009928 b.eq     #0x9958
0000992c cmp      w26, #0xa
00009930 b.ne     #0x9974
00009934 ldrb     w10, [x22, #0x30]
00009938 tbnz     w10, #3, #0x9960
0000993c b        #0x9974
00009940 ldrb     w9, [x24, #8]
00009944 tbnz     w9, #0, #0x991c
00009948 ldr      x8, [x22, #0x58]
0000994c mov      w28, #0x81
00009950 cmp      w26, #0x80
00009954 b.ne     #0x992c
00009958 ldrb     w11, [x24, #8]
0000995c tbnz     w11, #1, #0x9974
00009960 ldr      x11, [x22, #0x60]
00009964 cmp      w28, #0x81
00009968 mov      w12, #0x82
0000996c cinc     w28, w12, eq
00009970 add      x8, x11, x8
00009974 cbz      x8, #0x9abc
00009978 and      x20, x8, #7
0000997c sub      x9, x8, #1
00009980 cmp      x9, #7
00009984 b.lo     #0x9a8c
00009988 sub      x24, x8, x20
0000998c mov      x0, x22
00009990 mov      x1, x21
00009994 mov      x2, x19
00009998 mov      x3, x27
0000999c mov      w4, w28
000099a0 mov      x5, x27
000099a4 bl       #0xa458
000099a8 mov      x3, x0
000099ac mov      x0, x22
000099b0 mov      x1, x21
000099b4 mov      x2, x19
000099b8 mov      w4, w28
000099bc mov      x5, x3
000099c0 bl       #0xa458
000099c4 mov      x5, x0
000099c8 mov      x0, x22
000099cc mov      x1, x21
000099d0 mov      x2, x19
000099d4 mov      x3, x5
000099d8 mov      w4, w28
000099dc bl       #0xa458
000099e0 mov      x6, x0
000099e4 mov      x0, x22
000099e8 mov      x1, x21
000099ec mov      x2, x19
000099f0 mov      x3, x6
000099f4 mov      w4, w28
000099f8 mov      x5, x6
000099fc bl       #0xa458
00009a00 mov      x7, x0
00009a04 mov      x0, x22
00009a08 mov      x1, x21
00009a0c mov      x2, x19
00009a10 mov      x3, x7
00009a14 mov      w4, w28
00009a18 mov      x5, x7
00009a1c bl       #0xa458
00009a20 mov      x8, x0
00009a24 mov      x0, x22
00009a28 mov      x1, x21
00009a2c mov      x2, x19
00009a30 mov      x3, x8
00009a34 mov      w4, w28
00009a38 mov      x5, x8
00009a3c bl       #0xa458
00009a40 mov      x9, x0
00009a44 mov      x0, x22
00009a48 mov      x1, x21
00009a4c mov      x2, x19
00009a50 mov      x3, x9
00009a54 mov      w4, w28
00009a58 mov      x5, x9
00009a5c bl       #0xa458
00009a60 mov      x10, x0
00009a64 mov      x0, x22
00009a68 mov      x1, x21
00009a6c mov      x2, x19
00009a70 mov      x3, x10
00009a74 mov      w4, w28
00009a78 mov      x5, x10
00009a7c bl       #0xa458
00009a80 sub      x24, x24, #8
00009a84 mov      x27, x0
00009a88 cbnz     x24, #0x998c
00009a8c ldr      x24, [sp, #8]
00009a90 cbz      x20, #0x9abc
00009a94 mov      x0, x22
00009a98 mov      x1, x21
00009a9c mov      x2, x19
00009aa0 mov      x3, x27
00009aa4 mov      w4, w28
00009aa8 mov      x5, x27
00009aac bl       #0xa458
00009ab0 sub      x20, x20, #1
00009ab4 mov      x27, x0
00009ab8 cbnz     x20, #0x9a94
00009abc cmp      w28, #0x81
00009ac0 b.ne     #0x9ad8
00009ac4 ldr      x20, [sp, #0x18]
00009ac8 mov      w1, #0x81
00009acc cmp      w26, #0x80
00009ad0 b.ne     #0x9b00
00009ad4 b        #0x9b1c
00009ad8 ldr      x20, [sp, #0x18]
00009adc cmp      w23, #0x80
00009ae0 b.eq     #0x9b68
00009ae4 and      w0, w23, #0xff
00009ae8 bl       #0xbc24
00009aec cmp      w26, #0x80
00009af0 b.eq     #0x9b28
00009af4 cmp      w23, #0x5f
00009af8 b.eq     #0x9b28
00009afc cbnz     w0, #0x9b28
00009b00 mov      w0, w26
00009b04 bl       #0xbc24
00009b08 cmp      w26, #0x5f
00009b0c b.eq     #0x9b18
00009b10 mov      w1, w28
00009b14 cbz      w0, #0x9b1c
00009b18 mov      w1, #0x85
00009b1c mov      w28, w1
00009b20 cmp      w23, #0x80
00009b24 b.eq     #0x9b68
00009b28 and      w0, w23, #0xff
00009b2c bl       #0xbc24
00009b30 cmp      w23, #0x5f
00009b34 b.eq     #0x9b3c
00009b38 cbz      w0, #0x9b68
00009b3c mov      w4, #0x86
00009b40 cmp      w28, #0x82
00009b44 b.eq     #0x9b78
00009b48 cmp      w26, #0x80
00009b4c b.eq     #0x9b68
00009b50 mov      w0, w26
00009b54 bl       #0xbc24
00009b58 cmp      w26, #0x5f
00009b5c b.eq     #0x9b68
00009b60 mov      w4, #0x86
00009b64 cbz      w0, #0x9b78
00009b68 mov      w4, w28
00009b6c sub      w8, w28, #0x85
00009b70 cmp      w8, #1
00009b74 b.hi     #0x9b94
00009b78 ldr      x0, [x24]
00009b7c mov      x1, x21
00009b80 mov      x2, x19
00009b84 mov      x3, x27
00009b88 mov      x5, x27
00009b8c bl       #0xa458
00009b90 mov      x27, x0
00009b94 ldr      x13, [sp, #0x10]
00009b98 ldp      x12, x28, [sp, #0x20]
00009b9c tst      x27, x13
00009ba0 csel     x25, x28, x25, ne
00009ba4 cmp      x28, x12
00009ba8 b.eq     #0x9bb4
00009bac cmp      x27, x20
00009bb0 b.ne     #0x98bc
00009bb4 mov      x0, x25
00009bb8 ldp      x29, x30, [sp, #0x80]
00009bbc ldp      x20, x19, [sp, #0x70]
00009bc0 ldp      x22, x21, [sp, #0x60]
00009bc4 ldp      x24, x23, [sp, #0x50]
00009bc8 ldp      x26, x25, [sp, #0x40]
00009bcc ldp      x28, x27, [sp, #0x30]
00009bd0 add      sp, sp, #0x90
00009bd4 ret      
00009bd8 stp      x28, x27, [sp, #-0x60]!
00009bdc stp      x26, x25, [sp, #0x10]
00009be0 stp      x24, x23, [sp, #0x20]
00009be4 stp      x22, x21, [sp, #0x30]
00009be8 stp      x20, x19, [sp, #0x40]
00009bec stp      x29, x30, [sp, #0x50]
00009bf0 add      x29, sp, #0x50
00009bf4 mov      x19, x4
00009bf8 mov      x23, x3
00009bfc mov      x20, x2
00009c00 mov      x22, x1
00009c04 mov      x21, x0
00009c08 cmp      x23, x19
00009c0c b.hs     #0x9ee0
00009c10 adrp     x7, #0x11000
00009c14 mov      w27, #0x48000000
00009c18 mov      w28, #0x58000000
00009c1c add      x7, x7, #0x930
00009c20 ldr      x8, [x21]
00009c24 mov      x24, x23
00009c28 ldr      x9, [x8, #8]
00009c2c ldr      w8, [x9, x24, lsl #2]
00009c30 and      w10, w8, #0xf8000000
00009c34 cmp      w10, w27
00009c38 ccmp     w10, w28, #4, ne
00009c3c b.ne     #0x9c4c
00009c40 and      w11, w8, #0x7ffffff
00009c44 add      x25, x24, x11
00009c48 b        #0x9c7c
00009c4c mov      x25, x24
00009c50 mov      w11, #0x78000000
00009c54 cmp      w10, w11
00009c58 b.ne     #0x9c7c
00009c5c mov      w10, w8
00009c60 mov      x25, x24
00009c64 and      w12, w10, #0x7ffffff
00009c68 add      x25, x25, x12
00009c6c ldr      w10, [x9, x25, lsl #2]
00009c70 lsr      w11, w10, #0x1b
00009c74 cmp      w11, #0x12
00009c78 b.ne     #0x9c64
00009c7c lsr      w9, w8, #0x1b
00009c80 eor      w9, w9, #0x10
00009c84 add      x23, x25, #1
00009c88 sub      w10, w9, #0x12
00009c8c cmp      w10, #0xd
00009c90 b.hi     #0x9ca0
00009c94 ldr      x9, [x7, x10, lsl #3]
00009c98 br       x9
00009c9c add      x22, x22, #1
00009ca0 cmp      x23, x19
00009ca4 b.lo     #0x9c20
00009ca8 b        #0x9ee0
00009cac mov      x2, x20
00009cb0 mov      x0, x21
00009cb4 mov      x1, x22
00009cb8 mov      x3, x24
00009cbc mov      x4, x23
00009cc0 bl       #0x982c
00009cc4 mov      x26, x0
00009cc8 mov      x0, x21
00009ccc mov      x1, x26
00009cd0 mov      x2, x20
00009cd4 mov      x3, x23
00009cd8 mov      x4, x19
00009cdc bl       #0x982c
00009ce0 sub      x2, x26, #1
00009ce4 cmp      x0, x20
00009ce8 b.ne     #0x9cb0
00009cec add      x24, x24, #1
00009cf0 mov      x0, x22
00009cf4 mov      x27, x22
00009cf8 mov      x22, x0
00009cfc mov      x0, x21
00009d00 mov      x1, x22
00009d04 mov      x2, x26
00009d08 mov      x3, x24
00009d0c mov      x4, x25
00009d10 bl       #0x982c
00009d14 cbz      x0, #0x9d24
00009d18 cmp      x0, x22
00009d1c b.ne     #0x9cf4
00009d20 mov      x27, x22
00009d24 mov      x0, x21
00009d28 mov      x1, x27
00009d2c mov      x2, x22
00009d30 mov      x3, x24
00009d34 mov      x4, x25
00009d38 b        #0x9ec4
00009d3c mov      x2, x20
00009d40 mov      x0, x21
00009d44 mov      x1, x22
00009d48 mov      x3, x24
00009d4c mov      x4, x23
00009d50 bl       #0x982c
00009d54 mov      x26, x0
00009d58 mov      x0, x21
00009d5c mov      x1, x26
00009d60 mov      x2, x20
00009d64 mov      x3, x23
00009d68 mov      x4, x19
00009d6c bl       #0x982c
00009d70 sub      x2, x26, #1
00009d74 cmp      x0, x20
00009d78 b.ne     #0x9d40
00009d7c add      x24, x24, #1
00009d80 mov      x0, x21
00009d84 mov      x1, x22
00009d88 mov      x2, x26
00009d8c mov      x3, x24
00009d90 mov      x4, x25
00009d94 bl       #0x982c
00009d98 cbz      x0, #0x9db4
00009d9c mov      x0, x21
00009da0 mov      x1, x22
00009da4 mov      x2, x26
00009da8 mov      x3, x24
00009dac mov      x4, x25
00009db0 bl       #0x9bd8
00009db4 mov      x22, x26
00009db8 b        #0x9ed0
00009dbc ldp      x4, x12, [x21, #0x10]
00009dc0 and      w5, w8, #0x7ffffff
00009dc4 lsl      x15, x5, #4
00009dc8 sub      x14, x22, x12
00009dcc str      x14, [x4, x15]
00009dd0 cmp      x23, x19
00009dd4 b.lo     #0x9c20
00009dd8 b        #0x9ee0
00009ddc ldp      x6, x16, [x21, #0x10]
00009de0 and      w9, w8, #0x7ffffff
00009de4 sub      x17, x22, x16
00009de8 add      x8, x6, w9, uxtw #4
00009dec str      x17, [x8, #8]
00009df0 cmp      x23, x19
00009df4 b.lo     #0x9c20
00009df8 b        #0x9ee0
00009dfc mov      x2, x20
00009e00 mov      x0, x21
00009e04 mov      x1, x22
00009e08 mov      x3, x24
00009e0c mov      x4, x23
00009e10 bl       #0x982c
00009e14 mov      x25, x0
00009e18 mov      x0, x21
00009e1c mov      x1, x25
00009e20 mov      x2, x20
00009e24 mov      x3, x23
00009e28 mov      x4, x19
00009e2c bl       #0x982c
00009e30 sub      x2, x25, #1
00009e34 cmp      x0, x20
00009e38 b.ne     #0x9e00
00009e3c ldr      x13, [x21]
00009e40 mov      x26, x25
00009e44 ldr      x14, [x13, #8]
00009e48 ldr      w8, [x14, x24, lsl #2]
00009e4c and      x15, x8, #0x7ffffff
00009e50 add      x16, x24, x15
00009e54 sub      x27, x16, #1
00009e58 add      x24, x24, #1
00009e5c b        #0x9e90
00009e60 ldr      x17, [x21]
00009e64 add      x1, x27, #1
00009e68 add      x24, x27, #2
00009e6c ldr      x0, [x17, #8]
00009e70 ldr      w10, [x0, x1, lsl #2]
00009e74 and      x3, x10, #0x7ffffff
00009e78 add      x11, x1, x3
00009e7c add      x13, x27, x3
00009e80 ldr      w12, [x0, x11, lsl #2]
00009e84 lsr      w8, w12, #0x1b
00009e88 cmp      w8, #0x11
00009e8c csel     x27, x13, x11, eq
00009e90 mov      x0, x21
00009e94 mov      x1, x22
00009e98 mov      x2, x26
00009e9c mov      x3, x24
00009ea0 mov      x4, x27
00009ea4 bl       #0x982c
00009ea8 cmp      x0, x25
00009eac b.ne     #0x9e60
00009eb0 mov      x0, x21
00009eb4 mov      x1, x22
00009eb8 mov      x2, x26
00009ebc mov      x3, x24
00009ec0 mov      x4, x27
00009ec4 bl       #0x9bd8
00009ec8 mov      x22, x26
00009ecc mov      w27, #0x48000000
00009ed0 adrp     x7, #0x11000
00009ed4 add      x7, x7, #0x930
00009ed8 cmp      x23, x19
00009edc b.lo     #0x9c20
00009ee0 mov      x0, x22
00009ee4 ldp      x29, x30, [sp, #0x50]
00009ee8 ldp      x20, x19, [sp, #0x40]
00009eec ldp      x22, x21, [sp, #0x30]
00009ef0 ldp      x24, x23, [sp, #0x20]
00009ef4 ldp      x26, x25, [sp, #0x10]
00009ef8 ldp      x28, x27, [sp], #0x60
00009efc ret      
00009f00 sub      sp, sp, #0x70
00009f04 stp      x28, x27, [sp, #0x10]
00009f08 stp      x26, x25, [sp, #0x20]
00009f0c stp      x24, x23, [sp, #0x30]
00009f10 stp      x22, x21, [sp, #0x40]
00009f14 stp      x20, x19, [sp, #0x50]
00009f18 stp      x29, x30, [sp, #0x60]
00009f1c add      x29, sp, #0x60
00009f20 mov      x23, x4
00009f24 mov      x20, x3
00009f28 mov      x21, x2
00009f2c mov      x22, x1
00009f30 mov      x19, x0
00009f34 cmp      x20, x23
00009f38 b.hs     #0xa300
00009f3c mov      w25, #-0x70000000
00009f40 str      x5, [sp, #8]
00009f44 mov      w26, #0x17ffffff
00009f48 mov      w28, #0x27ffffff
00009f4c mov      x24, x20
00009f50 ldr      x8, [x19]
00009f54 ldr      x10, [x8, #8]
00009f58 ldr      w27, [x10, x24, lsl #2]
00009f5c and      w9, w27, #0xf8000000
00009f60 cmp      w9, w26
00009f64 b.le     #0x9f98
00009f68 cmp      w9, w28
00009f6c b.le     #0xa038
00009f70 mov      w13, #0x28000000
00009f74 cmp      w9, w13
00009f78 b.eq     #0xa0b4
00009f7c mov      w14, #0x30000000
00009f80 cmp      w9, w14
00009f84 b.eq     #0xa0c4
00009f88 mov      w15, #0x60000000
00009f8c cmp      w9, w15
00009f90 b.eq     #0xa1bc
00009f94 b        #0xa1cc
00009f98 mov      w7, #-0x60000001
00009f9c cmp      w9, w7
00009fa0 b.gt     #0xa084
00009fa4 mov      w0, #-0xffffffff80000000
00009fa8 cmp      w9, w0
00009fac b.eq     #0xa0f8
00009fb0 mov      w20, #-0x68000000
00009fb4 cmp      w9, w20
00009fb8 b.ne     #0xa1cc
00009fbc ldr      x9, [x19, #0x20]
00009fc0 cmp      x22, x9
00009fc4 b.ne     #0x9fd0
00009fc8 ldrb     w16, [x19, #8]
00009fcc tbz      w16, #0, #0xa010
00009fd0 ldr      x16, [x19, #0x28]
00009fd4 cmp      x22, x16
00009fd8 b.hs     #0x9ff0
00009fdc ldurb    w14, [x22, #-1]
00009fe0 cmp      w14, #0xa
00009fe4 b.ne     #0x9ff0
00009fe8 ldrb     w17, [x8, #0x30]
00009fec tbnz     w17, #3, #0xa010
00009ff0 cmp      x22, x9
00009ff4 b.ls     #0xa30c
00009ff8 ldurb    w0, [x22, #-1]
00009ffc bl       #0xbc24
0000a000 cbnz     w0, #0xa30c
0000a004 ldurb    w15, [x22, #-1]
0000a008 cmp      w15, #0x5f
0000a00c b.eq     #0xa30c
0000a010 ldr      x17, [x19, #0x28]
0000a014 cmp      x22, x17
0000a018 b.hs     #0xa314
0000a01c ldrb     w0, [x22]
0000a020 bl       #0xbc24
0000a024 cbnz     w0, #0xa1bc
0000a028 ldrb     w16, [x22]
0000a02c cmp      w16, #0x5f
0000a030 b.eq     #0xa1bc
0000a034 b        #0xa324
0000a038 mov      w11, #0x18000000
0000a03c cmp      w9, w11
0000a040 b.eq     #0xa11c
0000a044 mov      w12, #0x20000000
0000a048 cmp      w9, w12
0000a04c b.ne     #0xa1cc
0000a050 ldr      x11, [x19, #0x28]
0000a054 cmp      x22, x11
0000a058 b.ne     #0xa064
0000a05c ldrb     w14, [x19, #8]
0000a060 tbz      w14, #1, #0xa1bc
0000a064 cmp      x22, x11
0000a068 b.hs     #0xa30c
0000a06c ldrb     w13, [x22]
0000a070 cmp      w13, #0xa
0000a074 b.ne     #0xa30c
0000a078 ldrb     w15, [x8, #0x30]
0000a07c tbnz     w15, #3, #0xa1bc
0000a080 b        #0xa31c
0000a084 mov      w10, #-0x60000000
0000a088 cmp      w9, w10
0000a08c b.eq     #0xa154
0000a090 mov      w8, #0x10000000
0000a094 cmp      w9, w8
0000a098 b.ne     #0xa1cc
0000a09c cmp      x22, x21
0000a0a0 b.eq     #0xa30c
0000a0a4 ldrb     w10, [x22], #1
0000a0a8 cmp      w10, w27, uxtb
0000a0ac b.eq     #0xa1bc
0000a0b0 b        #0xa314
0000a0b4 cmp      x22, x21
0000a0b8 b.eq     #0xa30c
0000a0bc add      x22, x22, #1
0000a0c0 b        #0xa1bc
0000a0c4 cmp      x22, x21
0000a0c8 b.eq     #0xa30c
0000a0cc ldr      x12, [x8, #0x20]
0000a0d0 and      w16, w27, #0x7ffffff
0000a0d4 add      x17, x12, x16, lsl #5
0000a0d8 ldr      x0, [x17]
0000a0dc ldrb     w13, [x22], #1
0000a0e0 ldrb     w10, [x17, #8]
0000a0e4 ldrb     w9, [x0, x13]
0000a0e8 and      w11, w10, w9
0000a0ec and      w11, w11, #0xff
0000a0f0 cbnz     w11, #0xa1bc
0000a0f4 b        #0xa314
0000a0f8 add      x24, x24, #1
0000a0fc ldr      w8, [x10, x24, lsl #2]
0000a100 and      w1, w8, #0x7ffffff
0000a104 add      x24, x24, x1
0000a108 ldr      w8, [x10, x24, lsl #2]
0000a10c and      w2, w8, #0xf8000000
0000a110 cmp      w2, w25
0000a114 b.ne     #0xa100
0000a118 b        #0xa1bc
0000a11c ldr      x14, [x19, #0x20]
0000a120 cmp      x22, x14
0000a124 b.ne     #0xa130
0000a128 ldrb     w12, [x19, #8]
0000a12c tbz      w12, #0, #0xa1bc
0000a130 ldr      x15, [x19, #0x28]
0000a134 cmp      x22, x15
0000a138 b.hs     #0xa30c
0000a13c ldurb    w12, [x22, #-1]
0000a140 cmp      w12, #0xa
0000a144 b.ne     #0xa31c
0000a148 ldrb     w13, [x8, #0x30]
0000a14c tbnz     w13, #3, #0xa1bc
0000a150 b        #0xa31c
0000a154 ldr      x10, [x19, #0x28]
0000a158 cmp      x22, x10
0000a15c b.ne     #0xa168
0000a160 ldrb     w1, [x19, #8]
0000a164 tbz      w1, #1, #0xa198
0000a168 cmp      x22, x10
0000a16c b.hs     #0xa30c
0000a170 ldrb     w0, [x22]
0000a174 cmp      w0, #0xa
0000a178 b.ne     #0xa184
0000a17c ldrb     w2, [x8, #0x30]
0000a180 tbnz     w2, #3, #0xa198
0000a184 bl       #0xbc24
0000a188 cbnz     w0, #0xa30c
0000a18c ldrb     w17, [x22]
0000a190 cmp      w17, #0x5f
0000a194 b.eq     #0xa324
0000a198 ldr      x2, [x19, #0x20]
0000a19c cmp      x22, x2
0000a1a0 b.ls     #0xa314
0000a1a4 ldurb    w0, [x22, #-1]
0000a1a8 bl       #0xbc24
0000a1ac cbnz     w0, #0xa1bc
0000a1b0 ldurb    w1, [x22, #-1]
0000a1b4 cmp      w1, #0x5f
0000a1b8 b.ne     #0xa324
0000a1bc add      x24, x24, #1
0000a1c0 cmp      x24, x23
0000a1c4 b.lo     #0x9f50
0000a1c8 b        #0xa300
0000a1cc mov      w9, #-0x38000000
0000a1d0 mov      x0, xzr
0000a1d4 add      w3, w27, w9
0000a1d8 lsr      w13, w3, #0x1b
0000a1dc cmp      w13, #8
0000a1e0 b.hi     #0xa328
0000a1e4 adrp     x12, #0x11000
0000a1e8 add      x12, x12, #0x9a0
0000a1ec add      x20, x24, #1
0000a1f0 ldr      x4, [x12, x13, lsl #3]
0000a1f4 br       x4
0000a1f8 ldr      x14, [x19, #0x10]
0000a1fc and      w27, w27, #0x7ffffff
0000a200 add      x8, x14, w27, uxtw #4
0000a204 ldr      x15, [x8, #8]
0000a208 cmn      x15, #1
0000a20c b.eq     #0xa30c
0000a210 lsl      x5, x27, #4
0000a214 ldr      x8, [x14, x5]
0000a218 sub      x20, x15, x8
0000a21c cbz      x20, #0xa30c
0000a220 sub      x6, x21, x20
0000a224 cmp      x22, x6
0000a228 b.hi     #0xa30c
0000a22c ldr      x7, [x19, #0x18]
0000a230 mov      x0, x22
0000a234 mov      x2, x20
0000a238 add      x1, x7, x8
0000a23c bl       #0xb918
0000a240 cbnz     w0, #0xa30c
0000a244 ldr      x2, [x19]
0000a248 orr      w8, w27, #0x40000000
0000a24c ldr      x11, [x2, #8]
0000a250 ldr      w4, [x11, x24, lsl #2]
0000a254 add      x24, x24, #1
0000a258 cmp      w4, w8
0000a25c b.ne     #0xa250
0000a260 add      x22, x22, x20
0000a264 b        #0xa1c0
0000a268 ldr      x5, [sp, #8]
0000a26c mov      x0, x19
0000a270 mov      x1, x22
0000a274 mov      x2, x21
0000a278 mov      x3, x20
0000a27c mov      x4, x23
0000a280 bl       #0x9f00
0000a284 cbnz     x0, #0xa328
0000a288 and      w3, w27, #0x7ffffff
0000a28c add      x24, x20, x3
0000a290 b        #0xa1c0
0000a294 ldr      x11, [sp, #8]
0000a298 ldr      x4, [x19, #0x38]
0000a29c add      x11, x11, #1
0000a2a0 str      x11, [sp, #8]
0000a2a4 str      x22, [x4, x11, lsl #3]
0000a2a8 cmp      x20, x23
0000a2ac b.lo     #0x9f4c
0000a2b0 b        #0xa300
0000a2b4 ldr      x12, [x19, #0x38]
0000a2b8 ldr      x24, [sp, #8]
0000a2bc ldr      x0, [x12, x24, lsl #3]
0000a2c0 cmp      x22, x0
0000a2c4 b.eq     #0xa2f0
0000a2c8 and      w5, w27, #0x7ffffff
0000a2cc str      x22, [x12, x24, lsl #3]
0000a2d0 sub      x3, x20, x5
0000a2d4 mov      x0, x19
0000a2d8 mov      x1, x22
0000a2dc mov      x2, x21
0000a2e0 mov      x4, x23
0000a2e4 mov      x5, x24
0000a2e8 bl       #0x9f00
0000a2ec cbnz     x0, #0xa328
0000a2f0 sub      x24, x24, #1
0000a2f4 str      x24, [sp, #8]
0000a2f8 cmp      x20, x23
0000a2fc b.lo     #0x9f4c
0000a300 cmp      x22, x21
0000a304 csel     x0, xzr, x22, ne
0000a308 b        #0xa328
0000a30c mov      x0, xzr
0000a310 b        #0xa328
0000a314 mov      x0, xzr
0000a318 b        #0xa328
0000a31c mov      x0, xzr
0000a320 b        #0xa328
0000a324 mov      x0, xzr
0000a328 ldp      x29, x30, [sp, #0x60]
0000a32c ldp      x20, x19, [sp, #0x50]
0000a330 ldp      x22, x21, [sp, #0x40]
0000a334 ldp      x24, x23, [sp, #0x30]
0000a338 ldp      x26, x25, [sp, #0x20]
0000a33c ldp      x28, x27, [sp, #0x10]
0000a340 add      sp, sp, #0x70
0000a344 ret      
0000a348 ldp      x10, x3, [x19, #0x10]
0000a34c and      w27, w27, #0x7ffffff
0000a350 lsl      x24, x27, #4
0000a354 mov      x0, x19
0000a358 sub      x9, x22, x3
0000a35c ldr      x25, [x10, x24]
0000a360 mov      x1, x22
0000a364 mov      x2, x21
0000a368 str      x9, [x10, x24]
0000a36c mov      x3, x20
0000a370 ldr      x5, [sp, #8]
0000a374 mov      x4, x23
0000a378 bl       #0x9f00
0000a37c cbnz     x0, #0xa328
0000a380 ldr      x19, [x19, #0x10]
0000a384 str      x25, [x19, x24]
0000a388 b        #0xa328
0000a38c ldp      x9, x25, [x19, #0x10]
0000a390 and      w27, w27, #0x7ffffff
0000a394 mov      x0, x19
0000a398 mov      x1, x22
0000a39c add      x9, x9, w27, uxtw #4
0000a3a0 sub      x8, x22, x25
0000a3a4 mov      x2, x21
0000a3a8 ldr      x24, [x9, #8]
0000a3ac mov      x3, x20
0000a3b0 str      x8, [x9, #8]
0000a3b4 mov      x4, x23
0000a3b8 ldr      x5, [sp, #8]
0000a3bc bl       #0x9f00
0000a3c0 cbnz     x0, #0xa328
0000a3c4 ldr      x21, [x19, #0x10]
0000a3c8 add      x22, x21, x27, lsl #4
0000a3cc str      x24, [x22, #8]
0000a3d0 b        #0xa328
0000a3d4 and      w6, w27, #0x7ffffff
0000a3d8 add      x7, x24, x6
0000a3dc sub      x23, x7, #1
0000a3e0 mov      x0, x19
0000a3e4 mov      x1, x22
0000a3e8 mov      x2, x21
0000a3ec mov      x3, x20
0000a3f0 b        #0xa428
0000a3f4 add      x20, x23, #1
0000a3f8 add      x3, x23, #2
0000a3fc mov      x0, x19
0000a400 ldr      w1, [x9, x20, lsl #2]
0000a404 mov      x2, x21
0000a408 and      x8, x1, #0x7ffffff
0000a40c add      x20, x20, x8
0000a410 add      x23, x23, x8
0000a414 mov      x1, x22
0000a418 ldr      w6, [x9, x20, lsl #2]
0000a41c lsr      w4, w6, #0x1b
0000a420 cmp      w4, #0x11
0000a424 csel     x23, x23, x20, eq
0000a428 ldr      x5, [sp, #8]
0000a42c mov      x4, x23
0000a430 bl       #0x9f00
0000a434 cbnz     x0, #0xa328
0000a438 ldr      x24, [x19]
0000a43c ldr      x9, [x24, #8]
0000a440 ldr      w5, [x9, x23, lsl #2]
0000a444 and      w3, w5, #0xf8000000
0000a448 cmp      w3, w25
0000a44c b.ne     #0xa3f4
0000a450 mov      x0, xzr
0000a454 b        #0xa328
0000a458 cmp      x1, x2
0000a45c b.eq     #0xa874
0000a460 mov      w11, #1
0000a464 ldr      x9, [x0, #8]
0000a468 mov      w8, #-0x70000000
0000a46c lsl      x10, x11, x1
0000a470 and      w11, w4, #0xfffffffe
0000a474 cmp      w4, #0x7f
0000a478 b.le     #0xa670
0000a47c adrp     x13, #0x11000
0000a480 add      x13, x13, #0xae8
0000a484 ldr      w12, [x9, x1, lsl #2]
0000a488 lsr      w14, w12, #0x1b
0000a48c eor      w15, w14, #0x10
0000a490 cmp      w15, #0x1f
0000a494 b.hi     #0xa65c
0000a498 ldr      x17, [x13, x15, lsl #3]
0000a49c br       x17
0000a4a0 and      x7, x10, x5
0000a4a4 orr      x5, x5, x7, lsl #1
0000a4a8 b        #0xa65c
0000a4ac and      x15, x10, x5
0000a4b0 orr      x5, x5, x15, lsl #1
0000a4b4 b        #0xa65c
0000a4b8 and      x12, x10, x5
0000a4bc cbz      x12, #0xa65c
0000a4c0 add      x6, x9, x1, lsl #2
0000a4c4 ldr      w16, [x6, #4]
0000a4c8 and      w14, w16, #0xf8000000
0000a4cc cmp      w14, w8
0000a4d0 b.ne     #0xa634
0000a4d4 mov      w14, #1
0000a4d8 b        #0xa654
0000a4dc and      w17, w12, #0x7ffffff
0000a4e0 add      x0, x1, x17
0000a4e4 and      x6, x10, x5
0000a4e8 ldr      w0, [x9, x0, lsl #2]
0000a4ec orr      x7, x5, x6, lsl #1
0000a4f0 and      x5, x7, x10
0000a4f4 lsl      x15, x5, x17
0000a4f8 and      w12, w0, #0xf8000000
0000a4fc cmp      w12, w8
0000a500 csel     x12, xzr, x15, eq
0000a504 orr      x5, x12, x7
0000a508 b        #0xa65c
0000a50c and      x17, x10, x5
0000a510 orr      x5, x5, x17, lsl #1
0000a514 b        #0xa65c
0000a518 and      x16, x10, x3
0000a51c cmp      w4, #0x85
0000a520 lsl      x14, x16, #1
0000a524 csel     x17, x14, xzr, eq
0000a528 orr      x5, x17, x5
0000a52c b        #0xa65c
0000a530 and      x0, x10, x3
0000a534 cmp      w4, #0x86
0000a538 lsl      x15, x0, #1
0000a53c csel     x12, x15, xzr, eq
0000a540 orr      x5, x12, x5
0000a544 b        #0xa65c
0000a548 and      w16, w12, #0xff
0000a54c and      x12, x10, x3
0000a550 cmp      w16, w4
0000a554 lsl      x14, x12, #1
0000a558 csel     x16, x14, xzr, eq
0000a55c orr      x5, x16, x5
0000a560 b        #0xa65c
0000a564 orr      w12, w4, #2
0000a568 cmp      w12, #0x83
0000a56c b.ne     #0xa65c
0000a570 and      x15, x10, x3
0000a574 orr      x5, x5, x15, lsl #1
0000a578 b        #0xa65c
0000a57c and      x6, x10, x3
0000a580 cmp      w11, #0x82
0000a584 lsl      x7, x6, #1
0000a588 csel     x0, x7, xzr, eq
0000a58c orr      x5, x0, x5
0000a590 b        #0xa65c
0000a594 and      x6, x10, x5
0000a598 orr      x5, x5, x6, lsl #1
0000a59c b        #0xa65c
0000a5a0 and      x6, x10, x5
0000a5a4 and      w14, w12, #0x7ffffff
0000a5a8 orr      x7, x5, x6, lsl #1
0000a5ac and      x15, x7, x10
0000a5b0 lsr      x0, x10, x14
0000a5b4 tst      x0, x7
0000a5b8 lsr      x12, x15, x14
0000a5bc orr      x5, x12, x7
0000a5c0 add      w16, w14, #1
0000a5c4 cset     w6, ne
0000a5c8 tst      x5, x0
0000a5cc sub      x16, x1, x16
0000a5d0 cset     w7, eq
0000a5d4 orr      w0, w6, w7
0000a5d8 mov      w14, #1
0000a5dc cmp      w0, #0
0000a5e0 lsl      x17, x14, x16
0000a5e4 csel     x1, x1, x16, ne
0000a5e8 csel     x10, x10, x17, ne
0000a5ec b        #0xa65c
0000a5f0 and      x16, x10, x5
0000a5f4 and      w12, w12, #0x7ffffff
0000a5f8 orr      x5, x5, x16, lsl #1
0000a5fc and      x14, x5, x10
0000a600 lsl      x17, x14, x12
0000a604 orr      x5, x17, x5
0000a608 b        #0xa65c
0000a60c and      x12, x10, x5
0000a610 orr      x5, x5, x12, lsl #1
0000a614 b        #0xa65c
0000a618 and      x17, x10, x5
0000a61c and      w0, w12, #0x7ffffff
0000a620 orr      x6, x5, x17, lsl #1
0000a624 and      x7, x6, x10
0000a628 lsl      x0, x7, x0
0000a62c orr      x5, x0, x6
0000a630 b        #0xa65c
0000a634 mov      w14, #1
0000a638 and      w7, w16, #0x7ffffff
0000a63c add      x14, x14, x7
0000a640 add      x16, x14, x1
0000a644 ldr      w16, [x9, x16, lsl #2]
0000a648 and      w15, w16, #0xf8000000
0000a64c cmp      w15, w8
0000a650 b.ne     #0xa638
0000a654 lsl      x14, x12, x14
0000a658 orr      x5, x14, x5
0000a65c add      x1, x1, #1
0000a660 lsl      x10, x10, #1
0000a664 cmp      x1, x2
0000a668 b.ne     #0xa484
0000a66c b        #0xa874
0000a670 adrp     x14, #0x11000
0000a674 and      w12, w4, #0xff
0000a678 mov      w13, #1
0000a67c add      x14, x14, #0x9e8
0000a680 ldr      w15, [x9, x1, lsl #2]
0000a684 lsr      w16, w15, #0x1b
0000a688 eor      w16, w16, #0x10
0000a68c cmp      w16, #0x1f
0000a690 b.hi     #0xa864
0000a694 ldr      x6, [x14, x16, lsl #3]
0000a698 br       x6
0000a69c and      x17, x10, x5
0000a6a0 orr      x5, x5, x17, lsl #1
0000a6a4 b        #0xa864
0000a6a8 and      x15, x10, x5
0000a6ac cbz      x15, #0xa864
0000a6b0 add      x7, x9, x1, lsl #2
0000a6b4 mov      w16, #1
0000a6b8 ldr      w17, [x7, #4]
0000a6bc and      w7, w17, #0xf8000000
0000a6c0 cmp      w7, w8
0000a6c4 b.eq     #0xa6e4
0000a6c8 and      w17, w17, #0x7ffffff
0000a6cc add      x16, x16, x17
0000a6d0 add      x17, x16, x1
0000a6d4 ldr      w17, [x9, x17, lsl #2]
0000a6d8 and      w6, w17, #0xf8000000
0000a6dc cmp      w6, w8
0000a6e0 b.ne     #0xa6c8
0000a6e4 lsl      x16, x15, x16
0000a6e8 orr      x5, x16, x5
0000a6ec b        #0xa864
0000a6f0 and      w16, w15, #0x7ffffff
0000a6f4 add      x7, x1, x16
0000a6f8 and      x15, x10, x5
0000a6fc ldr      w17, [x9, x7, lsl #2]
0000a700 orr      x5, x5, x15, lsl #1
0000a704 and      x6, x5, x10
0000a708 and      w15, w17, #0xf8000000
0000a70c cmp      w15, w8
0000a710 lsl      x17, x6, x16
0000a714 csel     x16, xzr, x17, eq
0000a718 orr      x5, x16, x5
0000a71c b        #0xa864
0000a720 and      x7, x10, x5
0000a724 orr      x5, x5, x7, lsl #1
0000a728 b        #0xa864
0000a72c and      x16, x10, x3
0000a730 cmp      w4, #0x85
0000a734 lsl      x17, x16, #1
0000a738 csel     x6, x17, xzr, eq
0000a73c b        #0xa860
0000a740 and      x7, x10, x3
0000a744 lsl      x15, x7, #1
0000a748 cmp      w4, #0x86
0000a74c b        #0xa760
0000a750 and      w17, w15, #0xff
0000a754 and      x7, x10, x3
0000a758 lsl      x15, x7, #1
0000a75c cmp      w17, w4
0000a760 csel     x16, x15, xzr, eq
0000a764 orr      x5, x16, x5
0000a768 b        #0xa864
0000a76c orr      w15, w4, #2
0000a770 cmp      w15, #0x83
0000a774 b.ne     #0xa864
0000a778 and      x17, x10, x3
0000a77c orr      x5, x5, x17, lsl #1
0000a780 b        #0xa864
0000a784 and      x6, x10, x3
0000a788 cmp      w11, #0x82
0000a78c lsl      x7, x6, #1
0000a790 csel     x15, x7, xzr, eq
0000a794 orr      x5, x15, x5
0000a798 b        #0xa864
0000a79c ldr      x6, [x0, #0x20]
0000a7a0 and      w15, w15, #0x7ffffff
0000a7a4 and      x7, x10, x3
0000a7a8 add      x17, x6, x15, lsl #5
0000a7ac ldr      x6, [x17]
0000a7b0 ldrb     w15, [x17, #8]
0000a7b4 ldrb     w17, [x6, x12]
0000a7b8 and      w6, w15, w17
0000a7bc tst      w6, #0xff
0000a7c0 lsl      x15, x7, #1
0000a7c4 csel     x16, x15, xzr, ne
0000a7c8 orr      x5, x16, x5
0000a7cc b        #0xa864
0000a7d0 and      x6, x10, x5
0000a7d4 orr      x5, x5, x6, lsl #1
0000a7d8 b        #0xa864
0000a7dc and      x7, x10, x5
0000a7e0 and      w16, w15, #0x7ffffff
0000a7e4 orr      x5, x5, x7, lsl #1
0000a7e8 and      x6, x5, x10
0000a7ec add      w15, w16, #1
0000a7f0 lsr      x17, x10, x16
0000a7f4 tst      x17, x5
0000a7f8 lsr      x16, x6, x16
0000a7fc orr      x5, x16, x5
0000a800 cset     w7, ne
0000a804 tst      x5, x17
0000a808 sub      x15, x1, x15
0000a80c cset     w16, eq
0000a810 orr      w6, w7, w16
0000a814 cmp      w6, #0
0000a818 lsl      x17, x13, x15
0000a81c csel     x1, x1, x15, ne
0000a820 csel     x10, x10, x17, ne
0000a824 b        #0xa864
0000a828 and      x7, x10, x5
0000a82c and      w17, w15, #0x7ffffff
0000a830 orr      x5, x5, x7, lsl #1
0000a834 and      x15, x5, x10
0000a838 lsl      x6, x15, x17
0000a83c b        #0xa860
0000a840 and      x16, x10, x5
0000a844 orr      x5, x5, x16, lsl #1
0000a848 b        #0xa864
0000a84c and      x7, x10, x5
0000a850 and      w6, w15, #0x7ffffff
0000a854 orr      x5, x5, x7, lsl #1
0000a858 and      x15, x5, x10
0000a85c lsl      x6, x15, x6
0000a860 orr      x5, x6, x5
0000a864 add      x1, x1, #1
0000a868 lsl      x10, x10, #1
0000a86c cmp      x1, x2
0000a870 b.ne     #0xa680
0000a874 mov      x0, x5
0000a878 ret      
0000a87c sub      sp, sp, #0x80
0000a880 stp      x28, x27, [sp, #0x20]
0000a884 stp      x26, x25, [sp, #0x30]
0000a888 stp      x24, x23, [sp, #0x40]
0000a88c stp      x22, x21, [sp, #0x50]
0000a890 stp      x20, x19, [sp, #0x60]
0000a894 stp      x29, x30, [sp, #0x70]
0000a898 add      x29, sp, #0x70
0000a89c mov      x20, x0
0000a8a0 str      x2, [sp, #0x10]
0000a8a4 mov      x19, x4
0000a8a8 mov      x21, x3
0000a8ac ldr      x12, [x20, #0x60]
0000a8b0 mov      x24, x1
0000a8b4 ldr      x22, [x20, #0x50]
0000a8b8 ldr      x8, [x20, #0x20]
0000a8bc str      x12, [sp, #8]
0000a8c0 ldr      x25, [x20, #0x68]
0000a8c4 cmp      x8, x24
0000a8c8 b.eq     #0xa8d4
0000a8cc ldurb    w23, [x24, #-1]
0000a8d0 b        #0xa8d8
0000a8d4 mov      w23, #0x80
0000a8d8 ldr      x11, [x20]
0000a8dc mov      x0, x22
0000a8e0 mov      w1, wzr
0000a8e4 ldr      x2, [x11, #0x38]
0000a8e8 bl       #0xb8ac
0000a8ec mov      w8, #1
0000a8f0 mov      w4, #0x84
0000a8f4 mov      x1, x21
0000a8f8 strb     w8, [x22, x21]
0000a8fc mov      x2, x19
0000a900 ldr      x0, [x20]
0000a904 mov      x3, x22
0000a908 mov      x5, x22
0000a90c bl       #0xb4e8
0000a910 mov      x27, x0
0000a914 str      x25, [sp]
0000a918 mov      x26, xzr
0000a91c b        #0xa974
0000a920 ldr      x14, [x20]
0000a924 mov      x1, x27
0000a928 ldr      x22, [sp, #8]
0000a92c ldr      x2, [x14, #0x38]
0000a930 mov      x0, x22
0000a934 bl       #0xbc5c
0000a938 ldr      x15, [x20]
0000a93c mov      x0, x27
0000a940 mov      x1, x25
0000a944 ldr      x2, [x15, #0x38]
0000a948 bl       #0xbc5c
0000a94c ldr      x0, [x20]
0000a950 mov      x1, x21
0000a954 mov      x2, x19
0000a958 mov      x3, x22
0000a95c mov      w4, w28
0000a960 mov      x5, x27
0000a964 bl       #0xb4e8
0000a968 mov      x27, x0
0000a96c add      x24, x24, #1
0000a970 mov      w23, w28
0000a974 ldr      x9, [x20, #0x28]
0000a978 cmp      x24, x9
0000a97c b.eq     #0xa9a4
0000a980 ldrb     w28, [x24]
0000a984 cmp      w23, #0x80
0000a988 b.eq     #0xa9b0
0000a98c cmp      w23, #0xa
0000a990 b.ne     #0xa9c8
0000a994 ldr      x10, [x20]
0000a998 ldrb     w9, [x10, #0x30]
0000a99c tbnz     w9, #3, #0xa9bc
0000a9a0 b        #0xa9c8
0000a9a4 mov      w28, #0x80
0000a9a8 cmp      w23, #0x80
0000a9ac b.ne     #0xa98c
0000a9b0 ldrb     w10, [x20, #8]
0000a9b4 tbnz     w10, #0, #0xa9c8
0000a9b8 ldr      x10, [x20]
0000a9bc ldr      x8, [x10, #0x58]
0000a9c0 mov      w22, #0x81
0000a9c4 b        #0xa9d0
0000a9c8 mov      w22, wzr
0000a9cc mov      x8, xzr
0000a9d0 cmp      w28, #0x80
0000a9d4 str      x24, [sp, #0x18]
0000a9d8 b.eq     #0xa9f4
0000a9dc cmp      w28, #0xa
0000a9e0 b.ne     #0xaa14
0000a9e4 ldr      x9, [x20]
0000a9e8 ldrb     w11, [x9, #0x30]
0000a9ec tbnz     w11, #3, #0xaa00
0000a9f0 b        #0xaa14
0000a9f4 ldrb     w12, [x20, #8]
0000a9f8 tbnz     w12, #1, #0xaa14
0000a9fc ldr      x9, [x20]
0000aa00 ldr      x10, [x9, #0x60]
0000aa04 cmp      w22, #0x81
0000aa08 mov      w13, #0x82
0000aa0c cinc     w22, w13, eq
0000aa10 add      x8, x10, x8
0000aa14 cbz      x8, #0xab40
0000aa18 and      x24, x8, #7
0000aa1c sub      x12, x8, #1
0000aa20 cmp      x12, #7
0000aa24 b.lo     #0xab14
0000aa28 sub      x25, x8, x24
0000aa2c ldr      x0, [x20]
0000aa30 mov      x1, x21
0000aa34 mov      x2, x19
0000aa38 mov      x3, x27
0000aa3c mov      w4, w22
0000aa40 mov      x5, x27
0000aa44 bl       #0xb4e8
0000aa48 ldr      x0, [x20]
0000aa4c mov      x1, x21
0000aa50 mov      x2, x19
0000aa54 mov      x3, x27
0000aa58 mov      w4, w22
0000aa5c mov      x5, x27
0000aa60 bl       #0xb4e8
0000aa64 ldr      x0, [x20]
0000aa68 mov      x1, x21
0000aa6c mov      x2, x19
0000aa70 mov      x3, x27
0000aa74 mov      w4, w22
0000aa78 mov      x5, x27
0000aa7c bl       #0xb4e8
0000aa80 ldr      x0, [x20]
0000aa84 mov      x1, x21
0000aa88 mov      x2, x19
0000aa8c mov      x3, x27
0000aa90 mov      w4, w22
0000aa94 mov      x5, x27
0000aa98 bl       #0xb4e8
0000aa9c ldr      x0, [x20]
0000aaa0 mov      x1, x21
0000aaa4 mov      x2, x19
0000aaa8 mov      x3, x27
0000aaac mov      w4, w22
0000aab0 mov      x5, x27
0000aab4 bl       #0xb4e8
0000aab8 ldr      x0, [x20]
0000aabc mov      x1, x21
0000aac0 mov      x2, x19
0000aac4 mov      x3, x27
0000aac8 mov      w4, w22
0000aacc mov      x5, x27
0000aad0 bl       #0xb4e8
0000aad4 ldr      x0, [x20]
0000aad8 mov      x1, x21
0000aadc mov      x2, x19
0000aae0 mov      x3, x27
0000aae4 mov      w4, w22
0000aae8 mov      x5, x27
0000aaec bl       #0xb4e8
0000aaf0 ldr      x0, [x20]
0000aaf4 mov      x1, x21
0000aaf8 mov      x2, x19
0000aafc mov      x3, x27
0000ab00 mov      w4, w22
0000ab04 mov      x5, x27
0000ab08 bl       #0xb4e8
0000ab0c sub      x25, x25, #8
0000ab10 cbnz     x25, #0xaa2c
0000ab14 ldr      x25, [sp]
0000ab18 cbz      x24, #0xab40
0000ab1c ldr      x0, [x20]
0000ab20 mov      x1, x21
0000ab24 mov      x2, x19
0000ab28 mov      x3, x27
0000ab2c mov      w4, w22
0000ab30 mov      x5, x27
0000ab34 bl       #0xb4e8
0000ab38 sub      x24, x24, #1
0000ab3c cbnz     x24, #0xab1c
0000ab40 cmp      w22, #0x81
0000ab44 b.ne     #0xab5c
0000ab48 ldr      x24, [sp, #0x18]
0000ab4c mov      w1, #0x81
0000ab50 cmp      w28, #0x80
0000ab54 b.ne     #0xab84
0000ab58 b        #0xaba0
0000ab5c ldr      x24, [sp, #0x18]
0000ab60 cmp      w23, #0x80
0000ab64 b.eq     #0xabec
0000ab68 and      w0, w23, #0xff
0000ab6c bl       #0xbc24
0000ab70 cmp      w28, #0x80
0000ab74 b.eq     #0xabac
0000ab78 cmp      w23, #0x5f
0000ab7c b.eq     #0xabac
0000ab80 cbnz     w0, #0xabac
0000ab84 mov      w0, w28
0000ab88 bl       #0xbc24
0000ab8c cmp      w28, #0x5f
0000ab90 b.eq     #0xab9c
0000ab94 mov      w1, w22
0000ab98 cbz      w0, #0xaba0
0000ab9c mov      w1, #0x85
0000aba0 mov      w22, w1
0000aba4 cmp      w23, #0x80
0000aba8 b.eq     #0xabec
0000abac and      w0, w23, #0xff
0000abb0 bl       #0xbc24
0000abb4 cmp      w23, #0x5f
0000abb8 b.eq     #0xabc0
0000abbc cbz      w0, #0xabec
0000abc0 mov      w4, #0x86
0000abc4 cmp      w22, #0x82
0000abc8 b.eq     #0xabfc
0000abcc cmp      w28, #0x80
0000abd0 b.eq     #0xabec
0000abd4 mov      w0, w28
0000abd8 bl       #0xbc24
0000abdc cmp      w28, #0x5f
0000abe0 b.eq     #0xabec
0000abe4 mov      w4, #0x86
0000abe8 cbz      w0, #0xabfc
0000abec mov      w4, w22
0000abf0 sub      w8, w22, #0x85
0000abf4 cmp      w8, #1
0000abf8 b.hi     #0xac14
0000abfc ldr      x0, [x20]
0000ac00 mov      x1, x21
0000ac04 mov      x2, x19
0000ac08 mov      x3, x27
0000ac0c mov      x5, x27
0000ac10 bl       #0xb4e8
0000ac14 ldr      x13, [x20]
0000ac18 mov      x0, x27
0000ac1c ldrb     w9, [x27, x19]
0000ac20 mov      x1, x25
0000ac24 ldr      x2, [x13, #0x38]
0000ac28 cmp      w9, #0
0000ac2c csel     x26, x24, x26, ne
0000ac30 bl       #0xb918
0000ac34 ldr      x11, [sp, #0x10]
0000ac38 cmp      x24, x11
0000ac3c b.eq     #0xac44
0000ac40 cbnz     w0, #0xa920
0000ac44 mov      x0, x26
0000ac48 ldp      x29, x30, [sp, #0x70]
0000ac4c ldp      x20, x19, [sp, #0x60]
0000ac50 ldp      x22, x21, [sp, #0x50]
0000ac54 ldp      x24, x23, [sp, #0x40]
0000ac58 ldp      x26, x25, [sp, #0x30]
0000ac5c ldp      x28, x27, [sp, #0x20]
0000ac60 add      sp, sp, #0x80
0000ac64 ret      
0000ac68 stp      x28, x27, [sp, #-0x60]!
0000ac6c stp      x26, x25, [sp, #0x10]
0000ac70 stp      x24, x23, [sp, #0x20]
0000ac74 stp      x22, x21, [sp, #0x30]
0000ac78 stp      x20, x19, [sp, #0x40]
0000ac7c stp      x29, x30, [sp, #0x50]
0000ac80 add      x29, sp, #0x50
0000ac84 mov      x19, x4
0000ac88 mov      x23, x3
0000ac8c mov      x20, x2
0000ac90 mov      x22, x1
0000ac94 mov      x21, x0
0000ac98 cmp      x23, x19
0000ac9c b.hs     #0xaf70
0000aca0 adrp     x7, #0x11000
0000aca4 mov      w27, #0x48000000
0000aca8 mov      w28, #0x58000000
0000acac add      x7, x7, #0xbe8
0000acb0 ldr      x8, [x21]
0000acb4 mov      x24, x23
0000acb8 ldr      x9, [x8, #8]
0000acbc ldr      w8, [x9, x24, lsl #2]
0000acc0 and      w10, w8, #0xf8000000
0000acc4 cmp      w10, w27
0000acc8 ccmp     w10, w28, #4, ne
0000accc b.ne     #0xacdc
0000acd0 and      w11, w8, #0x7ffffff
0000acd4 add      x25, x24, x11
0000acd8 b        #0xad0c
0000acdc mov      x25, x24
0000ace0 mov      w11, #0x78000000
0000ace4 cmp      w10, w11
0000ace8 b.ne     #0xad0c
0000acec mov      w10, w8
0000acf0 mov      x25, x24
0000acf4 and      w12, w10, #0x7ffffff
0000acf8 add      x25, x25, x12
0000acfc ldr      w10, [x9, x25, lsl #2]
0000ad00 lsr      w11, w10, #0x1b
0000ad04 cmp      w11, #0x12
0000ad08 b.ne     #0xacf4
0000ad0c lsr      w9, w8, #0x1b
0000ad10 eor      w9, w9, #0x10
0000ad14 add      x23, x25, #1
0000ad18 sub      w10, w9, #0x12
0000ad1c cmp      w10, #0xd
0000ad20 b.hi     #0xad30
0000ad24 ldr      x9, [x7, x10, lsl #3]
0000ad28 br       x9
0000ad2c add      x22, x22, #1
0000ad30 cmp      x23, x19
0000ad34 b.lo     #0xacb0
0000ad38 b        #0xaf70
0000ad3c mov      x2, x20
0000ad40 mov      x0, x21
0000ad44 mov      x1, x22
0000ad48 mov      x3, x24
0000ad4c mov      x4, x23
0000ad50 bl       #0xa87c
0000ad54 mov      x26, x0
0000ad58 mov      x0, x21
0000ad5c mov      x1, x26
0000ad60 mov      x2, x20
0000ad64 mov      x3, x23
0000ad68 mov      x4, x19
0000ad6c bl       #0xa87c
0000ad70 sub      x2, x26, #1
0000ad74 cmp      x0, x20
0000ad78 b.ne     #0xad40
0000ad7c add      x24, x24, #1
0000ad80 mov      x0, x22
0000ad84 mov      x27, x22
0000ad88 mov      x22, x0
0000ad8c mov      x0, x21
0000ad90 mov      x1, x22
0000ad94 mov      x2, x26
0000ad98 mov      x3, x24
0000ad9c mov      x4, x25
0000ada0 bl       #0xa87c
0000ada4 cbz      x0, #0xadb4
0000ada8 cmp      x0, x22
0000adac b.ne     #0xad84
0000adb0 mov      x27, x22
0000adb4 mov      x0, x21
0000adb8 mov      x1, x27
0000adbc mov      x2, x22
0000adc0 mov      x3, x24
0000adc4 mov      x4, x25
0000adc8 b        #0xaf54
0000adcc mov      x2, x20
0000add0 mov      x0, x21
0000add4 mov      x1, x22
0000add8 mov      x3, x24
0000addc mov      x4, x23
0000ade0 bl       #0xa87c
0000ade4 mov      x26, x0
0000ade8 mov      x0, x21
0000adec mov      x1, x26
0000adf0 mov      x2, x20
0000adf4 mov      x3, x23
0000adf8 mov      x4, x19
0000adfc bl       #0xa87c
0000ae00 sub      x2, x26, #1
0000ae04 cmp      x0, x20
0000ae08 b.ne     #0xadd0
0000ae0c add      x24, x24, #1
0000ae10 mov      x0, x21
0000ae14 mov      x1, x22
0000ae18 mov      x2, x26
0000ae1c mov      x3, x24
0000ae20 mov      x4, x25
0000ae24 bl       #0xa87c
0000ae28 cbz      x0, #0xae44
0000ae2c mov      x0, x21
0000ae30 mov      x1, x22
0000ae34 mov      x2, x26
0000ae38 mov      x3, x24
0000ae3c mov      x4, x25
0000ae40 bl       #0xac68
0000ae44 mov      x22, x26
0000ae48 b        #0xaf60
0000ae4c ldp      x4, x12, [x21, #0x10]
0000ae50 and      w5, w8, #0x7ffffff
0000ae54 lsl      x15, x5, #4
0000ae58 sub      x14, x22, x12
0000ae5c str      x14, [x4, x15]
0000ae60 cmp      x23, x19
0000ae64 b.lo     #0xacb0
0000ae68 b        #0xaf70
0000ae6c ldp      x6, x16, [x21, #0x10]
0000ae70 and      w9, w8, #0x7ffffff
0000ae74 sub      x17, x22, x16
0000ae78 add      x8, x6, w9, uxtw #4
0000ae7c str      x17, [x8, #8]
0000ae80 cmp      x23, x19
0000ae84 b.lo     #0xacb0
0000ae88 b        #0xaf70
0000ae8c mov      x2, x20
0000ae90 mov      x0, x21
0000ae94 mov      x1, x22
0000ae98 mov      x3, x24
0000ae9c mov      x4, x23
0000aea0 bl       #0xa87c
0000aea4 mov      x25, x0
0000aea8 mov      x0, x21
0000aeac mov      x1, x25
0000aeb0 mov      x2, x20
0000aeb4 mov      x3, x23
0000aeb8 mov      x4, x19
0000aebc bl       #0xa87c
0000aec0 sub      x2, x25, #1
0000aec4 cmp      x0, x20
0000aec8 b.ne     #0xae90
0000aecc ldr      x13, [x21]
0000aed0 mov      x26, x25
0000aed4 ldr      x14, [x13, #8]
0000aed8 ldr      w8, [x14, x24, lsl #2]
0000aedc and      x15, x8, #0x7ffffff
0000aee0 add      x16, x24, x15
0000aee4 sub      x27, x16, #1
0000aee8 add      x24, x24, #1
0000aeec b        #0xaf20
0000aef0 ldr      x17, [x21]
0000aef4 add      x1, x27, #1
0000aef8 add      x24, x27, #2
0000aefc ldr      x0, [x17, #8]
0000af00 ldr      w10, [x0, x1, lsl #2]
0000af04 and      x3, x10, #0x7ffffff
0000af08 add      x11, x1, x3
0000af0c add      x13, x27, x3
0000af10 ldr      w12, [x0, x11, lsl #2]
0000af14 lsr      w8, w12, #0x1b
0000af18 cmp      w8, #0x11
0000af1c csel     x27, x13, x11, eq
0000af20 mov      x0, x21
0000af24 mov      x1, x22
0000af28 mov      x2, x26
0000af2c mov      x3, x24
0000af30 mov      x4, x27
0000af34 bl       #0xa87c
0000af38 cmp      x0, x25
0000af3c b.ne     #0xaef0
0000af40 mov      x0, x21
0000af44 mov      x1, x22
0000af48 mov      x2, x26
0000af4c mov      x3, x24
0000af50 mov      x4, x27
0000af54 bl       #0xac68
0000af58 mov      x22, x26
0000af5c mov      w27, #0x48000000
0000af60 adrp     x7, #0x11000
0000af64 add      x7, x7, #0xbe8
0000af68 cmp      x23, x19
0000af6c b.lo     #0xacb0
0000af70 mov      x0, x22
0000af74 ldp      x29, x30, [sp, #0x50]
0000af78 ldp      x20, x19, [sp, #0x40]
0000af7c ldp      x22, x21, [sp, #0x30]
0000af80 ldp      x24, x23, [sp, #0x20]
0000af84 ldp      x26, x25, [sp, #0x10]
0000af88 ldp      x28, x27, [sp], #0x60
0000af8c ret      
0000af90 sub      sp, sp, #0x70
0000af94 stp      x28, x27, [sp, #0x10]
0000af98 stp      x26, x25, [sp, #0x20]
0000af9c stp      x24, x23, [sp, #0x30]
0000afa0 stp      x22, x21, [sp, #0x40]
0000afa4 stp      x20, x19, [sp, #0x50]
0000afa8 stp      x29, x30, [sp, #0x60]
0000afac add      x29, sp, #0x60
0000afb0 mov      x23, x4
0000afb4 mov      x20, x3
0000afb8 mov      x21, x2
0000afbc mov      x22, x1
0000afc0 mov      x19, x0
0000afc4 cmp      x20, x23
0000afc8 b.hs     #0xb390
0000afcc mov      w25, #-0x70000000
0000afd0 str      x5, [sp, #8]
0000afd4 mov      w26, #0x17ffffff
0000afd8 mov      w28, #0x27ffffff
0000afdc mov      x24, x20
0000afe0 ldr      x8, [x19]
0000afe4 ldr      x10, [x8, #8]
0000afe8 ldr      w27, [x10, x24, lsl #2]
0000afec and      w9, w27, #0xf8000000
0000aff0 cmp      w9, w26
0000aff4 b.le     #0xb028
0000aff8 cmp      w9, w28
0000affc b.le     #0xb0c8
0000b000 mov      w13, #0x28000000
0000b004 cmp      w9, w13
0000b008 b.eq     #0xb144
0000b00c mov      w14, #0x30000000
0000b010 cmp      w9, w14
0000b014 b.eq     #0xb154
0000b018 mov      w15, #0x60000000
0000b01c cmp      w9, w15
0000b020 b.eq     #0xb24c
0000b024 b        #0xb25c
0000b028 mov      w7, #-0x60000001
0000b02c cmp      w9, w7
0000b030 b.gt     #0xb114
0000b034 mov      w0, #-0xffffffff80000000
0000b038 cmp      w9, w0
0000b03c b.eq     #0xb188
0000b040 mov      w20, #-0x68000000
0000b044 cmp      w9, w20
0000b048 b.ne     #0xb25c
0000b04c ldr      x9, [x19, #0x20]
0000b050 cmp      x22, x9
0000b054 b.ne     #0xb060
0000b058 ldrb     w16, [x19, #8]
0000b05c tbz      w16, #0, #0xb0a0
0000b060 ldr      x16, [x19, #0x28]
0000b064 cmp      x22, x16
0000b068 b.hs     #0xb080
0000b06c ldurb    w14, [x22, #-1]
0000b070 cmp      w14, #0xa
0000b074 b.ne     #0xb080
0000b078 ldrb     w17, [x8, #0x30]
0000b07c tbnz     w17, #3, #0xb0a0
0000b080 cmp      x22, x9
0000b084 b.ls     #0xb39c
0000b088 ldurb    w0, [x22, #-1]
0000b08c bl       #0xbc24
0000b090 cbnz     w0, #0xb39c
0000b094 ldurb    w15, [x22, #-1]
0000b098 cmp      w15, #0x5f
0000b09c b.eq     #0xb39c
0000b0a0 ldr      x17, [x19, #0x28]
0000b0a4 cmp      x22, x17
0000b0a8 b.hs     #0xb3a4
0000b0ac ldrb     w0, [x22]
0000b0b0 bl       #0xbc24
0000b0b4 cbnz     w0, #0xb24c
0000b0b8 ldrb     w16, [x22]
0000b0bc cmp      w16, #0x5f
0000b0c0 b.eq     #0xb24c
0000b0c4 b        #0xb3b4
0000b0c8 mov      w11, #0x18000000
0000b0cc cmp      w9, w11
0000b0d0 b.eq     #0xb1ac
0000b0d4 mov      w12, #0x20000000
0000b0d8 cmp      w9, w12
0000b0dc b.ne     #0xb25c
0000b0e0 ldr      x11, [x19, #0x28]
0000b0e4 cmp      x22, x11
0000b0e8 b.ne     #0xb0f4
0000b0ec ldrb     w14, [x19, #8]
0000b0f0 tbz      w14, #1, #0xb24c
0000b0f4 cmp      x22, x11
0000b0f8 b.hs     #0xb39c
0000b0fc ldrb     w13, [x22]
0000b100 cmp      w13, #0xa
0000b104 b.ne     #0xb39c
0000b108 ldrb     w15, [x8, #0x30]
0000b10c tbnz     w15, #3, #0xb24c
0000b110 b        #0xb3ac
0000b114 mov      w10, #-0x60000000
0000b118 cmp      w9, w10
0000b11c b.eq     #0xb1e4
0000b120 mov      w8, #0x10000000
0000b124 cmp      w9, w8
0000b128 b.ne     #0xb25c
0000b12c cmp      x22, x21
0000b130 b.eq     #0xb39c
0000b134 ldrb     w10, [x22], #1
0000b138 cmp      w10, w27, uxtb
0000b13c b.eq     #0xb24c
0000b140 b        #0xb3a4
0000b144 cmp      x22, x21
0000b148 b.eq     #0xb39c
0000b14c add      x22, x22, #1
0000b150 b        #0xb24c
0000b154 cmp      x22, x21
0000b158 b.eq     #0xb39c
0000b15c ldr      x12, [x8, #0x20]
0000b160 and      w16, w27, #0x7ffffff
0000b164 add      x17, x12, x16, lsl #5
0000b168 ldr      x0, [x17]
0000b16c ldrb     w13, [x22], #1
0000b170 ldrb     w10, [x17, #8]
0000b174 ldrb     w9, [x0, x13]
0000b178 and      w11, w10, w9
0000b17c and      w11, w11, #0xff
0000b180 cbnz     w11, #0xb24c
0000b184 b        #0xb3a4
0000b188 add      x24, x24, #1
0000b18c ldr      w8, [x10, x24, lsl #2]
0000b190 and      w1, w8, #0x7ffffff
0000b194 add      x24, x24, x1
0000b198 ldr      w8, [x10, x24, lsl #2]
0000b19c and      w2, w8, #0xf8000000
0000b1a0 cmp      w2, w25
0000b1a4 b.ne     #0xb190
0000b1a8 b        #0xb24c
0000b1ac ldr      x14, [x19, #0x20]
0000b1b0 cmp      x22, x14
0000b1b4 b.ne     #0xb1c0
0000b1b8 ldrb     w12, [x19, #8]
0000b1bc tbz      w12, #0, #0xb24c
0000b1c0 ldr      x15, [x19, #0x28]
0000b1c4 cmp      x22, x15
0000b1c8 b.hs     #0xb39c
0000b1cc ldurb    w12, [x22, #-1]
0000b1d0 cmp      w12, #0xa
0000b1d4 b.ne     #0xb3ac
0000b1d8 ldrb     w13, [x8, #0x30]
0000b1dc tbnz     w13, #3, #0xb24c
0000b1e0 b        #0xb3ac
0000b1e4 ldr      x10, [x19, #0x28]
0000b1e8 cmp      x22, x10
0000b1ec b.ne     #0xb1f8
0000b1f0 ldrb     w1, [x19, #8]
0000b1f4 tbz      w1, #1, #0xb228
0000b1f8 cmp      x22, x10
0000b1fc b.hs     #0xb39c
0000b200 ldrb     w0, [x22]
0000b204 cmp      w0, #0xa
0000b208 b.ne     #0xb214
0000b20c ldrb     w2, [x8, #0x30]
0000b210 tbnz     w2, #3, #0xb228
0000b214 bl       #0xbc24
0000b218 cbnz     w0, #0xb39c
0000b21c ldrb     w17, [x22]
0000b220 cmp      w17, #0x5f
0000b224 b.eq     #0xb3b4
0000b228 ldr      x2, [x19, #0x20]
0000b22c cmp      x22, x2
0000b230 b.ls     #0xb3a4
0000b234 ldurb    w0, [x22, #-1]
0000b238 bl       #0xbc24
0000b23c cbnz     w0, #0xb24c
0000b240 ldurb    w1, [x22, #-1]
0000b244 cmp      w1, #0x5f
0000b248 b.ne     #0xb3b4
0000b24c add      x24, x24, #1
0000b250 cmp      x24, x23
0000b254 b.lo     #0xafe0
0000b258 b        #0xb390
0000b25c mov      w9, #-0x38000000
0000b260 mov      x0, xzr
0000b264 add      w3, w27, w9
0000b268 lsr      w13, w3, #0x1b
0000b26c cmp      w13, #8
0000b270 b.hi     #0xb3b8
0000b274 adrp     x12, #0x11000
0000b278 add      x12, x12, #0xc58
0000b27c add      x20, x24, #1
0000b280 ldr      x4, [x12, x13, lsl #3]
0000b284 br       x4
0000b288 ldr      x14, [x19, #0x10]
0000b28c and      w27, w27, #0x7ffffff
0000b290 add      x8, x14, w27, uxtw #4
0000b294 ldr      x15, [x8, #8]
0000b298 cmn      x15, #1
0000b29c b.eq     #0xb39c
0000b2a0 lsl      x5, x27, #4
0000b2a4 ldr      x8, [x14, x5]
0000b2a8 sub      x20, x15, x8
0000b2ac cbz      x20, #0xb39c
0000b2b0 sub      x6, x21, x20
0000b2b4 cmp      x22, x6
0000b2b8 b.hi     #0xb39c
0000b2bc ldr      x7, [x19, #0x18]
0000b2c0 mov      x0, x22
0000b2c4 mov      x2, x20
0000b2c8 add      x1, x7, x8
0000b2cc bl       #0xb918
0000b2d0 cbnz     w0, #0xb39c
0000b2d4 ldr      x2, [x19]
0000b2d8 orr      w8, w27, #0x40000000
0000b2dc ldr      x11, [x2, #8]
0000b2e0 ldr      w4, [x11, x24, lsl #2]
0000b2e4 add      x24, x24, #1
0000b2e8 cmp      w4, w8
0000b2ec b.ne     #0xb2e0
0000b2f0 add      x22, x22, x20
0000b2f4 b        #0xb250
0000b2f8 ldr      x5, [sp, #8]
0000b2fc mov      x0, x19
0000b300 mov      x1, x22
0000b304 mov      x2, x21
0000b308 mov      x3, x20
0000b30c mov      x4, x23
0000b310 bl       #0xaf90
0000b314 cbnz     x0, #0xb3b8
0000b318 and      w3, w27, #0x7ffffff
0000b31c add      x24, x20, x3
0000b320 b        #0xb250
0000b324 ldr      x11, [sp, #8]
0000b328 ldr      x4, [x19, #0x38]
0000b32c add      x11, x11, #1
0000b330 str      x11, [sp, #8]
0000b334 str      x22, [x4, x11, lsl #3]
0000b338 cmp      x20, x23
0000b33c b.lo     #0xafdc
0000b340 b        #0xb390
0000b344 ldr      x12, [x19, #0x38]
0000b348 ldr      x24, [sp, #8]
0000b34c ldr      x0, [x12, x24, lsl #3]
0000b350 cmp      x22, x0
0000b354 b.eq     #0xb380
0000b358 and      w5, w27, #0x7ffffff
0000b35c str      x22, [x12, x24, lsl #3]
0000b360 sub      x3, x20, x5
0000b364 mov      x0, x19
0000b368 mov      x1, x22
0000b36c mov      x2, x21
0000b370 mov      x4, x23
0000b374 mov      x5, x24
0000b378 bl       #0xaf90
0000b37c cbnz     x0, #0xb3b8
0000b380 sub      x24, x24, #1
0000b384 str      x24, [sp, #8]
0000b388 cmp      x20, x23
0000b38c b.lo     #0xafdc
0000b390 cmp      x22, x21
0000b394 csel     x0, xzr, x22, ne
0000b398 b        #0xb3b8
0000b39c mov      x0, xzr
0000b3a0 b        #0xb3b8
0000b3a4 mov      x0, xzr
0000b3a8 b        #0xb3b8
0000b3ac mov      x0, xzr
0000b3b0 b        #0xb3b8
0000b3b4 mov      x0, xzr
0000b3b8 ldp      x29, x30, [sp, #0x60]
0000b3bc ldp      x20, x19, [sp, #0x50]
0000b3c0 ldp      x22, x21, [sp, #0x40]
0000b3c4 ldp      x24, x23, [sp, #0x30]
0000b3c8 ldp      x26, x25, [sp, #0x20]
0000b3cc ldp      x28, x27, [sp, #0x10]
0000b3d0 add      sp, sp, #0x70
0000b3d4 ret      
0000b3d8 ldp      x10, x3, [x19, #0x10]
0000b3dc and      w27, w27, #0x7ffffff
0000b3e0 lsl      x24, x27, #4
0000b3e4 mov      x0, x19
0000b3e8 sub      x9, x22, x3
0000b3ec ldr      x25, [x10, x24]
0000b3f0 mov      x1, x22
0000b3f4 mov      x2, x21
0000b3f8 str      x9, [x10, x24]
0000b3fc mov      x3, x20
0000b400 ldr      x5, [sp, #8]
0000b404 mov      x4, x23
0000b408 bl       #0xaf90
0000b40c cbnz     x0, #0xb3b8
0000b410 ldr      x19, [x19, #0x10]
0000b414 str      x25, [x19, x24]
0000b418 b        #0xb3b8
0000b41c ldp      x9, x25, [x19, #0x10]
0000b420 and      w27, w27, #0x7ffffff
0000b424 mov      x0, x19
0000b428 mov      x1, x22
0000b42c add      x9, x9, w27, uxtw #4
0000b430 sub      x8, x22, x25
0000b434 mov      x2, x21
0000b438 ldr      x24, [x9, #8]
0000b43c mov      x3, x20
0000b440 str      x8, [x9, #8]
0000b444 mov      x4, x23
0000b448 ldr      x5, [sp, #8]
0000b44c bl       #0xaf90
0000b450 cbnz     x0, #0xb3b8
0000b454 ldr      x21, [x19, #0x10]
0000b458 add      x22, x21, x27, lsl #4
0000b45c str      x24, [x22, #8]
0000b460 b        #0xb3b8
0000b464 and      w6, w27, #0x7ffffff
0000b468 add      x7, x24, x6
0000b46c sub      x23, x7, #1
0000b470 mov      x0, x19
0000b474 mov      x1, x22
0000b478 mov      x2, x21
0000b47c mov      x3, x20
0000b480 b        #0xb4b8
0000b484 add      x20, x23, #1
0000b488 add      x3, x23, #2
0000b48c mov      x0, x19
0000b490 ldr      w1, [x9, x20, lsl #2]
0000b494 mov      x2, x21
0000b498 and      x8, x1, #0x7ffffff
0000b49c add      x20, x20, x8
0000b4a0 add      x23, x23, x8
0000b4a4 mov      x1, x22
0000b4a8 ldr      w6, [x9, x20, lsl #2]
0000b4ac lsr      w4, w6, #0x1b
0000b4b0 cmp      w4, #0x11
0000b4b4 csel     x23, x23, x20, eq
0000b4b8 ldr      x5, [sp, #8]
0000b4bc mov      x4, x23
0000b4c0 bl       #0xaf90
0000b4c4 cbnz     x0, #0xb3b8
0000b4c8 ldr      x24, [x19]
0000b4cc ldr      x9, [x24, #8]
0000b4d0 ldr      w5, [x9, x23, lsl #2]
0000b4d4 and      w3, w5, #0xf8000000
0000b4d8 cmp      w3, w25
0000b4dc b.ne     #0xb484
0000b4e0 mov      x0, xzr
0000b4e4 b        #0xb3b8
0000b4e8 cmp      x1, x2
0000b4ec b.eq     #0xb81c
0000b4f0 adrp     x12, #0x11000
0000b4f4 and      w8, w4, #0xfffffffe
0000b4f8 and      w9, w4, #0xff
0000b4fc mov      w10, #-0x70000000
0000b500 mov      w11, w1
0000b504 add      x12, x12, #0xca0
0000b508 ldr      x13, [x0, #8]
0000b50c ldr      w14, [x13, x1, lsl #2]
0000b510 lsr      w6, w14, #0x1b
0000b514 eor      w15, w6, #0x10
0000b518 cmp      w15, #0x1f
0000b51c b.hi     #0xb80c
0000b520 ldr      x15, [x12, x15, lsl #3]
0000b524 br       x15
0000b528 add      x13, x5, w11, sxtw
0000b52c ldrb     w17, [x13]
0000b530 ldrb     w16, [x13, #1]
0000b534 orr      w6, w16, w17
0000b538 strb     w6, [x13, #1]
0000b53c b        #0xb80c
0000b540 add      x6, x5, w11, sxtw
0000b544 ldrb     w15, [x6]
0000b548 ldrb     w17, [x6, #1]
0000b54c orr      w14, w17, w15
0000b550 strb     w14, [x6, #1]
0000b554 b        #0xb80c
0000b558 sxtw     x14, w11
0000b55c ldrb     w15, [x5, x14]
0000b560 cbz      w15, #0xb80c
0000b564 add      x7, x13, x1, lsl #2
0000b568 ldr      w17, [x7, #4]
0000b56c and      w16, w17, #0xf8000000
0000b570 cmp      w16, w10
0000b574 b.ne     #0xb7dc
0000b578 mov      w16, #1
0000b57c b        #0xb7fc
0000b580 add      x15, x5, w11, sxtw
0000b584 and      w14, w14, #0x7ffffff
0000b588 ldrb     w13, [x15]
0000b58c ldrb     w16, [x15, #1]
0000b590 orr      w6, w16, w13
0000b594 strb     w6, [x15, #1]
0000b598 add      x6, x1, x14
0000b59c ldr      x16, [x0, #8]
0000b5a0 ldr      w7, [x16, x6, lsl #2]
0000b5a4 and      w15, w7, #0xf8000000
0000b5a8 cmp      w15, w10
0000b5ac b.eq     #0xb80c
0000b5b0 add      w15, w14, w11
0000b5b4 sxtw     x14, w15
0000b5b8 ldrb     w15, [x5, x14]
0000b5bc orr      w13, w15, w13
0000b5c0 strb     w13, [x5, x14]
0000b5c4 b        #0xb80c
0000b5c8 add      x13, x5, w11, sxtw
0000b5cc ldrb     w17, [x13]
0000b5d0 ldrb     w14, [x13, #1]
0000b5d4 orr      w16, w14, w17
0000b5d8 b        #0xb5f8
0000b5dc cmp      w4, #0x85
0000b5e0 b.ne     #0xb80c
0000b5e4 sxtw     x7, w11
0000b5e8 add      x13, x5, x7
0000b5ec ldrb     w15, [x3, x7]
0000b5f0 ldrb     w17, [x13, #1]
0000b5f4 orr      w16, w17, w15
0000b5f8 strb     w16, [x13, #1]
0000b5fc b        #0xb80c
0000b600 cmp      w4, #0x86
0000b604 b.ne     #0xb80c
0000b608 sxtw     x14, w11
0000b60c add      x7, x5, x14
0000b610 ldrb     w13, [x3, x14]
0000b614 ldrb     w6, [x7, #1]
0000b618 orr      w14, w6, w13
0000b61c strb     w14, [x7, #1]
0000b620 b        #0xb80c
0000b624 and      w14, w14, #0xff
0000b628 cmp      w14, w4
0000b62c b.ne     #0xb80c
0000b630 sxtw     x13, w11
0000b634 add      x16, x5, x13
0000b638 ldrb     w7, [x3, x13]
0000b63c ldrb     w14, [x16, #1]
0000b640 orr      w15, w14, w7
0000b644 strb     w15, [x16, #1]
0000b648 b        #0xb80c
0000b64c orr      w13, w4, #2
0000b650 cmp      w13, #0x83
0000b654 b.ne     #0xb80c
0000b658 sxtw     x17, w11
0000b65c add      x6, x5, x17
0000b660 ldrb     w17, [x3, x17]
0000b664 ldrb     w13, [x6, #1]
0000b668 orr      w16, w13, w17
0000b66c strb     w16, [x6, #1]
0000b670 b        #0xb80c
0000b674 cmp      w8, #0x82
0000b678 b.ne     #0xb80c
0000b67c sxtw     x6, w11
0000b680 add      x17, x5, x6
0000b684 ldrb     w6, [x3, x6]
0000b688 ldrb     w7, [x17, #1]
0000b68c orr      w14, w7, w6
0000b690 strb     w14, [x17, #1]
0000b694 b        #0xb80c
0000b698 cmp      w4, #0x7f
0000b69c b.gt     #0xb80c
0000b6a0 sxtw     x16, w11
0000b6a4 add      x14, x5, x16
0000b6a8 ldrb     w7, [x3, x16]
0000b6ac ldrb     w15, [x14, #1]
0000b6b0 orr      w17, w15, w7
0000b6b4 strb     w17, [x14, #1]
0000b6b8 b        #0xb80c
0000b6bc cmp      w4, #0x7f
0000b6c0 b.gt     #0xb80c
0000b6c4 ldr      x15, [x0, #0x20]
0000b6c8 and      w16, w14, #0x7ffffff
0000b6cc add      x15, x15, x16, lsl #5
0000b6d0 ldr      x6, [x15]
0000b6d4 ldrb     w13, [x15, #8]
0000b6d8 ldrb     w16, [x6, x9]
0000b6dc and      w6, w13, w16
0000b6e0 and      w15, w6, #0xff
0000b6e4 cbz      w15, #0xb80c
0000b6e8 sxtw     x13, w11
0000b6ec add      x17, x5, x13
0000b6f0 ldrb     w14, [x3, x13]
0000b6f4 ldrb     w7, [x17, #1]
0000b6f8 orr      w15, w7, w14
0000b6fc strb     w15, [x17, #1]
0000b700 b        #0xb80c
0000b704 add      x14, x5, w11, sxtw
0000b708 ldrb     w13, [x14]
0000b70c ldrb     w7, [x14, #1]
0000b710 orr      w15, w7, w13
0000b714 strb     w15, [x14, #1]
0000b718 b        #0xb80c
0000b71c add      x15, x5, w11, sxtw
0000b720 and      w13, w14, #0x7ffffff
0000b724 sub      w7, w11, w13
0000b728 ldrb     w17, [x15]
0000b72c sxtw     x14, w7
0000b730 ldrb     w16, [x15, #1]
0000b734 orr      w6, w16, w17
0000b738 strb     w6, [x15, #1]
0000b73c ldrb     w7, [x5, x14]
0000b740 orr      w16, w7, w17
0000b744 strb     w16, [x5, x14]
0000b748 cbnz     w7, #0xb80c
0000b74c add      w13, w13, #1
0000b750 sub      x17, x1, x13
0000b754 tst      w16, #0xff
0000b758 csel     x1, x17, x1, ne
0000b75c csel     w11, w17, w11, ne
0000b760 b        #0xb80c
0000b764 add      x16, x5, w11, sxtw
0000b768 and      w6, w14, #0x7ffffff
0000b76c add      w6, w6, w11
0000b770 ldrb     w13, [x16]
0000b774 ldrb     w15, [x16, #1]
0000b778 orr      w17, w15, w13
0000b77c sxtw     x15, w6
0000b780 strb     w17, [x16, #1]
0000b784 ldrb     w14, [x5, x15]
0000b788 orr      w16, w14, w13
0000b78c strb     w16, [x5, x15]
0000b790 b        #0xb80c
0000b794 add      x17, x5, w11, sxtw
0000b798 ldrb     w6, [x17]
0000b79c ldrb     w7, [x17, #1]
0000b7a0 orr      w13, w7, w6
0000b7a4 strb     w13, [x17, #1]
0000b7a8 b        #0xb80c
0000b7ac add      x7, x5, w11, sxtw
0000b7b0 and      w17, w14, #0x7ffffff
0000b7b4 add      w14, w17, w11
0000b7b8 ldrb     w16, [x7]
0000b7bc sxtw     x17, w14
0000b7c0 ldrb     w6, [x7, #1]
0000b7c4 orr      w13, w6, w16
0000b7c8 strb     w13, [x7, #1]
0000b7cc ldrb     w7, [x5, x17]
0000b7d0 orr      w15, w7, w16
0000b7d4 strb     w15, [x5, x17]
0000b7d8 b        #0xb80c
0000b7dc mov      w16, #1
0000b7e0 and      w6, w17, #0x7ffffff
0000b7e4 add      x16, x16, x6
0000b7e8 add      x7, x16, x1
0000b7ec ldr      w17, [x13, x7, lsl #2]
0000b7f0 and      w7, w17, #0xf8000000
0000b7f4 cmp      w7, w10
0000b7f8 b.ne     #0xb7e0
0000b7fc add      x16, x16, x14
0000b800 ldrb     w17, [x5, x16]
0000b804 orr      w14, w17, w15
0000b808 strb     w14, [x5, x16]
0000b80c add      x1, x1, #1
0000b810 add      w11, w11, #1
0000b814 cmp      x1, x2
0000b818 b.ne     #0xb508
0000b81c mov      x0, x5
0000b820 ret      
0000b824 str      x19, [sp, #-0x20]!
0000b828 stp      x29, x30, [sp, #0x10]
0000b82c add      x29, sp, #0x10
0000b830 ldr      w8, [x0]
0000b834 mov      w9, #0xf265
0000b838 cmp      w8, w9
0000b83c b.ne     #0xb8a0
0000b840 ldr      x19, [x0, #0x18]
0000b844 cbz      x19, #0xb8a0
0000b848 ldr      w10, [x19]
0000b84c mov      w11, #0xd245
0000b850 cmp      w10, w11
0000b854 b.ne     #0xb8a0
0000b858 str      wzr, [x0]
0000b85c ldr      x0, [x19, #8]
0000b860 str      wzr, [x19]
0000b864 cbz      x0, #0xb86c
0000b868 bl       #0xc73c
0000b86c ldr      x0, [x19, #0x20]
0000b870 cbz      x0, #0xb878
0000b874 bl       #0xc73c
0000b878 ldr      x0, [x19, #0x28]
0000b87c cbz      x0, #0xb884
0000b880 bl       #0xc73c
0000b884 ldr      x0, [x19, #0x78]
0000b888 cbz      x0, #0xb890
0000b88c bl       #0xc73c
0000b890 ldp      x29, x30, [sp, #0x10]
0000b894 mov      x0, x19
0000b898 ldr      x19, [sp], #0x20
0000b89c b        #0xc73c
0000b8a0 ldp      x29, x30, [sp, #0x10]
0000b8a4 ldr      x19, [sp], #0x20
0000b8a8 ret      
0000b8ac mov      x8, x0
0000b8b0 b        #0xb8bc
0000b8b4 strb     w1, [x8], #1
0000b8b8 sub      x2, x2, #1
0000b8bc cbnz     x2, #0xb8b4
0000b8c0 ret      
0000b8c4 stp      x20, x19, [sp, #-0x20]!
0000b8c8 stp      x29, x30, [sp, #0x10]
0000b8cc add      x29, sp, #0x10
0000b8d0 mov      w19, w1
0000b8d4 mov      x20, x0
0000b8d8 bl       #0xb948
0000b8dc ldp      x29, x30, [sp, #0x10]
0000b8e0 add      x2, x0, #1
0000b8e4 mov      x0, x20
0000b8e8 mov      w1, w19
0000b8ec ldp      x20, x19, [sp], #0x20
0000b8f0 b        #0xb8f4
0000b8f4 add      x0, x0, x2
0000b8f8 cbz      x2, #0xb910
0000b8fc ldrb     w8, [x0, #-1]!
0000b900 sub      x2, x2, #1
0000b904 cmp      w8, w1, uxtb
0000b908 b.ne     #0xb8f8
0000b90c ret      
0000b910 mov      x0, xzr
0000b914 ret      
0000b918 b        #0xb938
0000b91c ldrb     w9, [x0]
0000b920 ldrb     w10, [x1]
0000b924 subs     w8, w9, w10
0000b928 b.ne     #0xb940
0000b92c sub      x2, x2, #1
0000b930 add      x0, x0, #1
0000b934 add      x1, x1, #1
0000b938 cbnz     x2, #0xb91c
0000b93c mov      w8, wzr
0000b940 mov      w0, w8
0000b944 ret      
0000b948 mov      x8, x0
0000b94c b        #0xb95c
0000b950 ldrb     w9, [x8]
0000b954 cbz      w9, #0xb99c
0000b958 add      x8, x8, #1
0000b95c and      x9, x8, #7
0000b960 cbnz     x9, #0xb950
0000b964 mov      x10, #-0x101010101010102
0000b968 sub      x8, x8, #8
0000b96c movk     x10, #0xfeff
0000b970 ldr      x9, [x8, #8]!
0000b974 add      x11, x9, x10
0000b978 bic      x12, x11, x9
0000b97c and      x11, x12, #0x8080808080808080
0000b980 cbz      x11, #0xb970
0000b984 b        #0xb994
0000b988 ldrb     w9, [x8, #1]
0000b98c add      x10, x8, #1
0000b990 mov      x8, x10
0000b994 and      w9, w9, #0xff
0000b998 cbnz     w9, #0xb988
0000b99c sub      x0, x8, x0
0000b9a0 ret      
0000b9a4 stp      x20, x19, [sp, #-0x20]!
0000b9a8 stp      x29, x30, [sp, #0x10]
0000b9ac add      x29, sp, #0x10
0000b9b0 mov      x19, x1
0000b9b4 mov      w1, wzr
0000b9b8 mov      x2, x19
0000b9bc mov      x20, x0
0000b9c0 bl       #0xc250
0000b9c4 ldp      x29, x30, [sp, #0x10]
0000b9c8 sub      x8, x0, x20
0000b9cc cmp      x0, #0
0000b9d0 csel     x0, x19, x8, eq
0000b9d4 ldp      x20, x19, [sp], #0x20
0000b9d8 ret      
0000b9dc cmp      x0, x1
0000b9e0 b.eq     #0xbb80
0000b9e4 add      x8, x1, x2
0000b9e8 add      x9, x0, x2
0000b9ec cmp      x8, x0
0000b9f0 ccmp     x9, x1, #0, hi
0000b9f4 b.hi     #0xb9fc
0000b9f8 b        #0xbc5c
0000b9fc eor      w10, w1, w0
0000ba00 and      x7, x10, #7
0000ba04 cmp      x0, x1
0000ba08 b.hs     #0xba18
0000ba0c cbz      x7, #0xbab8
0000ba10 mov      x12, x0
0000ba14 b        #0xbb7c
0000ba18 cbnz     x7, #0xba98
0000ba1c mvn      x11, x2
0000ba20 add      x13, x2, #8
0000ba24 b        #0xba48
0000ba28 cbz      x2, #0xbb80
0000ba2c add      x16, x1, x2
0000ba30 add      x3, x0, x2
0000ba34 sub      x2, x2, #1
0000ba38 ldurb    w10, [x16, #-1]
0000ba3c add      x11, x11, #1
0000ba40 sub      x13, x13, #1
0000ba44 sturb    w10, [x3, #-1]
0000ba48 mov      w9, w0
0000ba4c add      w9, w9, w2
0000ba50 and      x10, x9, #7
0000ba54 cbnz     x10, #0xba28
0000ba58 add      x12, x0, x2
0000ba5c add      x15, x1, x2
0000ba60 sub      x17, x12, #8
0000ba64 sub      x3, x15, #8
0000ba68 mov      x5, x2
0000ba6c b        #0xba78
0000ba70 ldr      x10, [x3], #0xfffffffffffffff8
0000ba74 str      x10, [x17], #0xfffffffffffffff8
0000ba78 subs     x5, x5, #8
0000ba7c b.hs     #0xba70
0000ba80 cmn      x11, #8
0000ba84 mov      x6, #-8
0000ba88 csel     x7, x11, x6, hi
0000ba8c add      x8, x7, x13
0000ba90 and      x8, x8, #0xfffffffffffffff8
0000ba94 sub      x2, x2, x8
0000ba98 sub      x6, x2, #1
0000ba9c b        #0xbab0
0000baa0 ldrb     w11, [x1, x6]
0000baa4 sub      x2, x2, #1
0000baa8 strb     w11, [x0, x6]
0000baac sub      x6, x6, #1
0000bab0 cbnz     x2, #0xbaa0
0000bab4 b        #0xbb80
0000bab8 mov      x8, xzr
0000babc mvn      x9, x2
0000bac0 add      x10, x2, #8
0000bac4 mov      x14, x2
0000bac8 mov      x11, x0
0000bacc mov      x12, x1
0000bad0 b        #0xbaf8
0000bad4 cbz      x14, #0xbb80
0000bad8 ldrb     w13, [x1, x8]
0000badc sub      x14, x14, #1
0000bae0 add      x12, x12, #1
0000bae4 add      x11, x11, #1
0000bae8 add      x8, x8, #1
0000baec add      x9, x9, #1
0000baf0 strb     w13, [x4]
0000baf4 sub      x10, x10, #1
0000baf8 add      x4, x0, x8
0000bafc and      x13, x4, #7
0000bb00 cbnz     x13, #0xbad4
0000bb04 cmn      x9, #8
0000bb08 mov      x12, #-8
0000bb0c csel     x17, x9, x12, hi
0000bb10 add      x3, x17, x10
0000bb14 and      x11, x3, #0xfffffffffffffff8
0000bb18 add      x4, x0, x11
0000bb1c mov      x15, xzr
0000bb20 sub      x16, x2, x8
0000bb24 add      x12, x4, x8
0000bb28 b        #0xbb40
0000bb2c add      x14, x1, x15
0000bb30 add      x17, x0, x15
0000bb34 add      x15, x15, #8
0000bb38 ldr      x5, [x14, x8]
0000bb3c str      x5, [x17, x8]
0000bb40 subs     x16, x16, #8
0000bb44 b.hs     #0xbb2c
0000bb48 cmn      x9, #8
0000bb4c mov      x11, #-8
0000bb50 csel     x13, x9, x11, hi
0000bb54 add      x14, x13, x10
0000bb58 and      x9, x14, #0xfffffffffffffff8
0000bb5c sub      x15, x2, x9
0000bb60 add      x16, x1, x9
0000bb64 sub      x2, x15, x8
0000bb68 add      x1, x16, x8
0000bb6c b        #0xbb7c
0000bb70 ldrb     w8, [x1], #1
0000bb74 sub      x2, x2, #1
0000bb78 strb     w8, [x12], #1
0000bb7c cbnz     x2, #0xbb70
0000bb80 ret      
0000bb84 str      x19, [sp, #-0x20]!
0000bb88 stp      x29, x30, [sp, #0x10]
0000bb8c add      x29, sp, #0x10
0000bb90 mov      x19, x0
0000bb94 bl       #0xc2f0
0000bb98 ldp      x29, x30, [sp, #0x10]
0000bb9c mov      x0, x19
0000bba0 ldr      x19, [sp], #0x20
0000bba4 ret      
0000bba8 b        #0xbbb4
0000bbac add      x0, x0, #1
0000bbb0 add      x1, x1, #1
0000bbb4 ldrb     w8, [x0]
0000bbb8 ldrb     w9, [x1]
0000bbbc cmp      w8, #0
0000bbc0 ccmp     w8, w9, #0, ne
0000bbc4 b.eq     #0xbbac
0000bbc8 sub      w0, w8, w9
0000bbcc ret      
0000bbd0 cbnz     x2, #0xbbf8
0000bbd4 mov      w0, wzr
0000bbd8 ret      
0000bbdc cmp      w9, w8
0000bbe0 b.ne     #0xbc04
0000bbe4 sub      x2, x2, #1
0000bbe8 cbz      x2, #0xbc04
0000bbec cbz      w8, #0xbc04
0000bbf0 add      x0, x0, #1
0000bbf4 add      x1, x1, #1
0000bbf8 ldrb     w9, [x0]
0000bbfc ldrb     w8, [x1]
0000bc00 cbnz     w9, #0xbbdc
0000bc04 sub      w0, w9, w8
0000bc08 ret      
0000bc0c mov      w8, #0x5f
0000bc10 sub      w9, w0, #0x61
0000bc14 and      w10, w0, w8
0000bc18 cmp      w9, #0x1a
0000bc1c csel     w0, w10, w0, lo
0000bc20 ret      
0000bc24 orr      w8, w0, #0x20
0000bc28 sub      w8, w8, #0x61
0000bc2c sub      w9, w0, #0x30
0000bc30 cmp      w8, #0x1a
0000bc34 cset     w8, lo
0000bc38 cmp      w9, #0xa
0000bc3c cset     w9, lo
0000bc40 orr      w0, w9, w8
0000bc44 ret      
0000bc48 sub      w8, w0, #0x41
0000bc4c orr      w9, w0, #0x20
0000bc50 cmp      w8, #0x1a
0000bc54 csel     w0, w9, w0, lo
0000bc58 ret      
0000bc5c mov      w11, #2
0000bc60 mov      w14, #1
0000bc64 mov      x9, xzr
0000bc68 sub      x12, x11, x2
0000bc6c add      x13, x2, #0xd
0000bc70 sub      x14, x14, x2
0000bc74 add      x15, x2, #0xe
0000bc78 neg      x16, x2
0000bc7c add      x17, x2, #0xf
0000bc80 mvn      x3, x2
0000bc84 add      x4, x2, #0x10
0000bc88 mov      x6, x2
0000bc8c mov      x8, x0
0000bc90 mov      x10, x1
0000bc94 b        #0xbcd8
0000bc98 and      x5, x11, #3
0000bc9c cbz      x5, #0xbce0
0000bca0 ldrb     w11, [x11]
0000bca4 add      x10, x10, #1
0000bca8 add      x8, x8, #1
0000bcac sub      x6, x6, #1
0000bcb0 add      x12, x12, #1
0000bcb4 sub      x13, x13, #1
0000bcb8 strb     w11, [x0, x9]
0000bcbc add      x14, x14, #1
0000bcc0 sub      x15, x15, #1
0000bcc4 add      x9, x9, #1
0000bcc8 add      x16, x16, #1
0000bccc sub      x17, x17, #1
0000bcd0 add      x3, x3, #1
0000bcd4 sub      x4, x4, #1
0000bcd8 add      x11, x1, x9
0000bcdc cbnz     x6, #0xbc98
0000bce0 sub      sp, sp, #0x40
0000bce4 add      x8, x0, x9
0000bce8 and      x6, x8, #3
0000bcec sub      x10, x2, x9
0000bcf0 cbz      x6, #0xbd30
0000bcf4 cmp      x10, #0x20
0000bcf8 b.lo     #0xbd18
0000bcfc and      w3, w8, #3
0000bd00 cmp      w3, #1
0000bd04 b.eq     #0xbe48
0000bd08 cmp      w3, #2
0000bd0c b.eq     #0xbf10
0000bd10 cmp      w3, #3
0000bd14 b.eq     #0xbfcc
0000bd18 tbnz     w10, #4, #0xc07c
0000bd1c tbnz     w10, #3, #0xc1a0
0000bd20 tbnz     w10, #2, #0xc1f0
0000bd24 tbnz     w10, #1, #0xc220
0000bd28 tbnz     w10, #0, #0xc240
0000bd2c b        #0xc248
0000bd30 cmn      x3, #0x10
0000bd34 mov      x15, #-0x10
0000bd38 csel     x16, x3, x15, hi
0000bd3c add      x17, x16, x4
0000bd40 and      x8, x17, #0xfffffffffffffff0
0000bd44 add      x5, x0, x8
0000bd48 mov      x7, xzr
0000bd4c add      x5, x5, x9
0000bd50 b        #0xbda4
0000bd54 add      x6, x1, x7
0000bd58 add      x17, x6, x9
0000bd5c add      x14, x0, x7
0000bd60 add      x14, x14, x9
0000bd64 ldp      w8, w12, [x17, #8]
0000bd68 add      x7, x7, #0x10
0000bd6c bfi      x8, x12, #0x20, #0x20
0000bd70 str      x8, [sp, #8]
0000bd74 ldp      w13, w11, [x17]
0000bd78 bfi      x13, x11, #0x20, #0x20
0000bd7c str      x13, [sp]
0000bd80 ldr      q0, [sp]
0000bd84 str      q0, [sp, #0x10]
0000bd88 ldr      x15, [sp, #0x18]
0000bd8c str      w15, [x14, #8]
0000bd90 lsr      x17, x15, #0x20
0000bd94 ldr      x16, [sp, #0x10]
0000bd98 str      w17, [x14, #0xc]
0000bd9c lsr      x6, x16, #0x20
0000bda0 stp      w16, w6, [x14]
0000bda4 subs     x10, x10, #0x10
0000bda8 b.hs     #0xbd54
0000bdac cmn      x3, #0x10
0000bdb0 mov      x10, #-0x10
0000bdb4 csel     x7, x3, x10, hi
0000bdb8 add      x8, x7, x4
0000bdbc and      x12, x8, #0xfffffffffffffff0
0000bdc0 sub      x2, x2, x12
0000bdc4 sub      x8, x2, x9
0000bdc8 tbnz     w8, #3, #0xbddc
0000bdcc add      x1, x1, x12
0000bdd0 add      x1, x1, x9
0000bdd4 tbnz     w8, #2, #0xbe10
0000bdd8 b        #0xbe18
0000bddc cmn      x3, #0x10
0000bde0 csel     x3, x3, x10, hi
0000bde4 add      x4, x3, x4
0000bde8 and      x2, x4, #0xfffffffffffffff0
0000bdec add      x10, x1, x2
0000bdf0 add      x3, x10, x9
0000bdf4 add      x5, x0, x2
0000bdf8 add      x9, x5, x9
0000bdfc ldp      w10, w13, [x3]
0000be00 add      x5, x9, #8
0000be04 add      x1, x3, #8
0000be08 stp      w10, w13, [x9]
0000be0c tbz      w8, #2, #0xbe18
0000be10 ldr      w9, [x1], #4
0000be14 str      w9, [x5], #4
0000be18 tbz      w8, #1, #0xbe38
0000be1c ldrb     w14, [x1]
0000be20 add      x9, x5, #2
0000be24 ldrb     w17, [x1, #1]
0000be28 add      x1, x1, #2
0000be2c strb     w14, [x5]
0000be30 strb     w17, [x5, #1]
0000be34 mov      x5, x9
0000be38 tbz      w8, #0, #0xc248
0000be3c ldrb     w8, [x1]
0000be40 strb     w8, [x5]
0000be44 b        #0xc248
0000be48 cmn      x12, #0x11
0000be4c ldrb     w3, [x11, #1]
0000be50 mov      x15, #-0x11
0000be54 ldrb     w5, [x11, #2]
0000be58 csel     x16, x12, x15, hi
0000be5c ldr      w15, [x11]
0000be60 add      x17, x16, x13
0000be64 and      x4, x17, #0xfffffffffffffff0
0000be68 strb     w3, [x8, #1]
0000be6c add      x11, x0, x4
0000be70 strb     w5, [x8, #2]
0000be74 add      x7, x11, x9
0000be78 strb     w15, [x8]
0000be7c mov      x14, xzr
0000be80 sub      x16, x10, #3
0000be84 add      x8, x7, #3
0000be88 b        #0xbed0
0000be8c add      x6, x1, x14
0000be90 add      x11, x6, x9
0000be94 add      x7, x0, x14
0000be98 add      x5, x7, x9
0000be9c ldp      w4, w6, [x11, #4]
0000bea0 ldr      w10, [x11, #0xc]
0000bea4 sub      x16, x16, #0x10
0000bea8 add      x14, x14, #0x10
0000beac extr     w17, w4, w15, #0x18
0000beb0 ldr      w15, [x11, #0x10]
0000beb4 extr     w7, w6, w4, #0x18
0000beb8 extr     w11, w10, w6, #0x18
0000bebc stur     w17, [x5, #3]
0000bec0 extr     w3, w15, w10, #0x18
0000bec4 stur     w7, [x5, #7]
0000bec8 stur     w11, [x5, #0xb]
0000becc stur     w3, [x5, #0xf]
0000bed0 cmp      x16, #0x11
0000bed4 b.hs     #0xbe8c
0000bed8 cmn      x12, #0x11
0000bedc mov      x15, #-0x11
0000bee0 csel     x12, x12, x15, hi
0000bee4 add      x13, x12, x13
0000bee8 mov      x16, #-3
0000beec and      x13, x13, #0xfffffffffffffff0
0000bef0 sub      x3, x16, x13
0000bef4 add      x1, x1, x13
0000bef8 add      x2, x3, x2
0000befc add      x1, x1, x9
0000bf00 sub      x10, x2, x9
0000bf04 add      x11, x1, #3
0000bf08 tbz      w10, #4, #0xbd1c
0000bf0c b        #0xc07c
0000bf10 cmn      x14, #0x12
0000bf14 ldr      w16, [x11]
0000bf18 mov      x12, #-0x12
0000bf1c ldrb     w5, [x11, #1]
0000bf20 csel     x3, x14, x12, hi
0000bf24 add      x4, x3, x15
0000bf28 and      x6, x4, #0xfffffffffffffff0
0000bf2c strb     w16, [x8]
0000bf30 add      x17, x0, x6
0000bf34 strb     w5, [x8, #1]
0000bf38 add      x17, x17, x9
0000bf3c mov      x13, xzr
0000bf40 sub      x10, x10, #2
0000bf44 add      x8, x17, #2
0000bf48 b        #0xbf90
0000bf4c add      x5, x1, x13
0000bf50 add      x3, x5, x9
0000bf54 add      x11, x0, x13
0000bf58 add      x11, x11, x9
0000bf5c ldp      w4, w6, [x3, #4]
0000bf60 ldr      w17, [x3, #0xc]
0000bf64 sub      x10, x10, #0x10
0000bf68 add      x13, x13, #0x10
0000bf6c extr     w7, w4, w16, #0x10
0000bf70 ldr      w16, [x3, #0x10]
0000bf74 extr     w3, w6, w4, #0x10
0000bf78 extr     w5, w17, w6, #0x10
0000bf7c stur     w7, [x11, #2]
0000bf80 extr     w4, w16, w17, #0x10
0000bf84 stur     w3, [x11, #6]
0000bf88 stur     w5, [x11, #0xa]
0000bf8c stur     w4, [x11, #0xe]
0000bf90 cmp      x10, #0x12
0000bf94 b.hs     #0xbf4c
0000bf98 cmn      x14, #0x12
0000bf9c csel     x17, x14, x12, hi
0000bfa0 add      x5, x17, x15
0000bfa4 mov      x4, #-2
0000bfa8 and      x16, x5, #0xfffffffffffffff0
0000bfac sub      x11, x4, x16
0000bfb0 add      x14, x1, x16
0000bfb4 add      x6, x11, x2
0000bfb8 add      x12, x14, x9
0000bfbc sub      x10, x6, x9
0000bfc0 add      x11, x12, #2
0000bfc4 tbz      w10, #4, #0xbd1c
0000bfc8 b        #0xc07c
0000bfcc cmn      x16, #0x13
0000bfd0 ldr      w12, [x1, x9]
0000bfd4 mov      x13, #-0x13
0000bfd8 csel     x14, x16, x13, hi
0000bfdc add      x8, x14, x17
0000bfe0 and      x15, x8, #0xfffffffffffffff0
0000bfe4 strb     w12, [x0, x9]
0000bfe8 add      x6, x0, x15
0000bfec sub      x15, x10, #1
0000bff0 add      x10, x6, x9
0000bff4 mov      x11, xzr
0000bff8 add      x8, x10, #1
0000bffc b        #0xc044
0000c000 add      x10, x1, x11
0000c004 add      x14, x10, x9
0000c008 add      x7, x0, x11
0000c00c add      x4, x7, x9
0000c010 ldp      w10, w6, [x14, #4]
0000c014 ldr      w3, [x14, #0xc]
0000c018 sub      x15, x15, #0x10
0000c01c add      x11, x11, #0x10
0000c020 extr     w5, w10, w12, #8
0000c024 ldr      w12, [x14, #0x10]
0000c028 extr     w14, w6, w10, #8
0000c02c extr     w7, w3, w6, #8
0000c030 stur     w5, [x4, #1]
0000c034 extr     w10, w12, w3, #8
0000c038 stur     w14, [x4, #5]
0000c03c stur     w7, [x4, #9]
0000c040 stur     w10, [x4, #0xd]
0000c044 cmp      x15, #0x13
0000c048 b.hs     #0xc000
0000c04c cmn      x16, #0x13
0000c050 csel     x10, x16, x13, hi
0000c054 add      x7, x10, x17
0000c058 mvn      x15, x7
0000c05c and      x7, x7, #0xfffffffffffffff0
0000c060 orr      x5, x15, #0xf
0000c064 add      x16, x1, x7
0000c068 add      x12, x5, x2
0000c06c add      x2, x16, x9
0000c070 sub      x10, x12, x9
0000c074 add      x11, x2, #1
0000c078 tbz      w10, #4, #0xbd1c
0000c07c mov      x12, x11
0000c080 ldrb     w9, [x11, #3]
0000c084 ldrb     w13, [x11, #2]
0000c088 ldrb     w3, [x11, #1]
0000c08c ldrb     w1, [x11]
0000c090 ldrb     w2, [x12, #4]!
0000c094 ldrb     w15, [x11, #5]
0000c098 bfi      x13, x9, #8, #8
0000c09c bfi      x1, x3, #8, #8
0000c0a0 ldrb     w16, [x12, #3]
0000c0a4 bfi      x1, x13, #0x10, #0x10
0000c0a8 ldrb     w12, [x12, #2]
0000c0ac bfi      w2, w15, #8, #8
0000c0b0 mov      x13, x11
0000c0b4 bfi      w12, w16, #8, #8
0000c0b8 mov      x16, x8
0000c0bc bfi      w2, w12, #0x10, #0x10
0000c0c0 bfi      x1, x2, #0x20, #0x20
0000c0c4 str      x1, [sp, #0x20]
0000c0c8 ldrb     w4, [x11, #9]
0000c0cc ldrb     w17, [x13, #8]!
0000c0d0 bfi      x17, x4, #8, #8
0000c0d4 ldrb     w5, [x13, #3]
0000c0d8 ldrb     w14, [x13, #2]
0000c0dc ldrb     w6, [x13, #4]!
0000c0e0 bfi      x14, x5, #8, #8
0000c0e4 ldrb     w1, [x13, #3]
0000c0e8 ldrb     w2, [x13, #2]
0000c0ec bfi      x17, x14, #0x10, #0x10
0000c0f0 ldrb     w13, [x11, #0xd]
0000c0f4 add      x14, x8, #0x10
0000c0f8 add      x11, x11, #0x10
0000c0fc bfi      w2, w1, #8, #8
0000c100 bfi      w6, w13, #8, #8
0000c104 bfi      w6, w2, #0x10, #0x10
0000c108 bfi      x17, x6, #0x20, #0x20
0000c10c str      x17, [sp, #0x28]
0000c110 ldr      q0, [sp, #0x20]
0000c114 str      q0, [sp, #0x30]
0000c118 ldr      x7, [sp, #0x30]
0000c11c strb     w7, [x8]
0000c120 lsr      x12, x7, #0x28
0000c124 ldr      x15, [sp, #0x38]
0000c128 ubfx     x1, x7, #0x18, #8
0000c12c ubfx     x2, x7, #0x10, #0x10
0000c130 ubfx     x4, x7, #8, #0x18
0000c134 lsr      x17, x7, #0x20
0000c138 ubfx     x9, x15, #0x18, #8
0000c13c ubfx     x13, x15, #0x10, #0x10
0000c140 lsr      x3, x15, #0x20
0000c144 strb     w15, [x16, #8]!
0000c148 lsr      x5, x15, #0x28
0000c14c strb     w9, [x16, #3]
0000c150 ubfx     x6, x15, #8, #0x18
0000c154 strb     w13, [x16, #2]
0000c158 strb     w3, [x16, #4]!
0000c15c strb     w12, [x8, #5]
0000c160 lsr      x12, x7, #0x38
0000c164 lsr      x7, x7, #0x30
0000c168 strb     w1, [x8, #3]
0000c16c strb     w2, [x8, #2]
0000c170 lsr      x9, x15, #0x38
0000c174 strb     w4, [x8, #1]
0000c178 lsr      x15, x15, #0x30
0000c17c strb     w5, [x8, #0xd]
0000c180 strb     w6, [x8, #9]
0000c184 strb     w17, [x8, #4]!
0000c188 strb     w12, [x8, #3]
0000c18c strb     w7, [x8, #2]
0000c190 mov      x8, x14
0000c194 strb     w9, [x16, #3]
0000c198 strb     w15, [x16, #2]
0000c19c tbz      w10, #3, #0xbd20
0000c1a0 ldrb     w9, [x11]
0000c1a4 add      x15, x8, #8
0000c1a8 ldrb     w17, [x11, #1]
0000c1ac ldrb     w4, [x11, #2]
0000c1b0 ldrb     w6, [x11, #3]
0000c1b4 ldrb     w3, [x11, #4]
0000c1b8 ldrb     w5, [x11, #5]
0000c1bc ldrb     w14, [x11, #6]
0000c1c0 ldrb     w7, [x11, #7]
0000c1c4 add      x11, x11, #8
0000c1c8 strb     w9, [x8]
0000c1cc strb     w17, [x8, #1]
0000c1d0 strb     w4, [x8, #2]
0000c1d4 strb     w6, [x8, #3]
0000c1d8 strb     w3, [x8, #4]
0000c1dc strb     w5, [x8, #5]
0000c1e0 strb     w14, [x8, #6]
0000c1e4 strb     w7, [x8, #7]
0000c1e8 mov      x8, x15
0000c1ec tbz      w10, #2, #0xbd24
0000c1f0 ldrb     w16, [x11]
0000c1f4 add      x17, x8, #4
0000c1f8 ldrb     w12, [x11, #1]
0000c1fc ldrb     w15, [x11, #2]
0000c200 ldrb     w1, [x11, #3]
0000c204 add      x11, x11, #4
0000c208 strb     w16, [x8]
0000c20c strb     w12, [x8, #1]
0000c210 strb     w15, [x8, #2]
0000c214 strb     w1, [x8, #3]
0000c218 mov      x8, x17
0000c21c tbz      w10, #1, #0xbd28
0000c220 ldrb     w2, [x11]
0000c224 add      x3, x8, #2
0000c228 ldrb     w13, [x11, #1]
0000c22c add      x11, x11, #2
0000c230 strb     w2, [x8]
0000c234 strb     w13, [x8, #1]
0000c238 mov      x8, x3
0000c23c tbz      w10, #0, #0xc248
0000c240 ldrb     w11, [x11]
0000c244 strb     w11, [x8]
0000c248 add      sp, sp, #0x40
0000c24c ret      
0000c250 and      w8, w1, #0xff
0000c254 b        #0xc260
0000c258 add      x0, x0, #1
0000c25c sub      x2, x2, #1
0000c260 cbz      x2, #0xc27c
0000c264 and      x9, x0, #7
0000c268 cbz      x9, #0xc27c
0000c26c ldrb     w9, [x0]
0000c270 cmp      w9, w1, uxtb
0000c274 b.ne     #0xc258
0000c278 b        #0xc280
0000c27c cbz      x2, #0xc2e4
0000c280 ldrb     w10, [x0]
0000c284 cmp      w10, w1, uxtb
0000c288 b.eq     #0xc2e4
0000c28c mov      x11, #0x101010101010101
0000c290 mov      x9, #-0x101010101010102
0000c294 mul      x8, x8, x11
0000c298 movk     x9, #0xfeff
0000c29c b        #0xc2a8
0000c2a0 add      x0, x0, #8
0000c2a4 mov      x2, x10
0000c2a8 subs     x10, x2, #8
0000c2ac b.lo     #0xc2e0
0000c2b0 ldr      x12, [x0]
0000c2b4 eor      x13, x12, x8
0000c2b8 add      x14, x13, x9
0000c2bc bic      x15, x14, x13
0000c2c0 and      x11, x15, #0x8080808080808080
0000c2c4 cbz      x11, #0xc2a0
0000c2c8 b        #0xc2e0
0000c2cc ldrb     w8, [x0]
0000c2d0 cmp      w8, w1, uxtb
0000c2d4 b.eq     #0xc2e4
0000c2d8 add      x0, x0, #1
0000c2dc sub      x2, x2, #1
0000c2e0 cbnz     x2, #0xc2cc
0000c2e4 cmp      x2, #0
0000c2e8 csel     x0, x0, xzr, ne
0000c2ec ret      
0000c2f0 eor      w8, w1, w0
0000c2f4 and      x9, x8, #7
0000c2f8 cbnz     x9, #0xc35c
0000c2fc b        #0xc314
0000c300 ldrb     w8, [x1]
0000c304 strb     w8, [x0]
0000c308 cbz      w8, #0xc368
0000c30c add      x1, x1, #1
0000c310 add      x0, x0, #1
0000c314 and      x10, x1, #7
0000c318 cbnz     x10, #0xc300
0000c31c mov      x9, #-0x101010101010102
0000c320 mov      x8, xzr
0000c324 movk     x9, #0xfeff
0000c328 b        #0xc334
0000c32c str      x10, [x0, x8]
0000c330 add      x8, x8, #8
0000c334 ldr      x10, [x1, x8]
0000c338 add      x11, x10, x9
0000c33c bic      x12, x11, x10
0000c340 and      x11, x12, #0x8080808080808080
0000c344 cbz      x11, #0xc32c
0000c348 add      x0, x0, x8
0000c34c add      x1, x1, x8
0000c350 b        #0xc35c
0000c354 add      x1, x1, #1
0000c358 add      x0, x0, #1
0000c35c ldrb     w9, [x1]
0000c360 strb     w9, [x0]
0000c364 cbnz     w9, #0xc354
0000c368 ret      
0000c36c str      x19, [sp, #-0x20]!
0000c370 stp      x29, x30, [sp, #0x10]
0000c374 add      x29, sp, #0x10
0000c378 adrp     x19, #0x13000
0000c37c ldr      x9, [x19, #0xe0]
0000c380 cbz      x9, #0xc390
0000c384 ldp      x29, x30, [sp, #0x10]
0000c388 ldr      x19, [sp], #0x20
0000c38c ret      
0000c390 adrp     x9, #0x13000
0000c394 ldr      x8, [x9, #0xb0]
0000c398 cbz      x8, #0xc384
0000c39c ldr      x8, [x8, #0x140]
0000c3a0 cbz      x8, #0xc384
0000c3a4 adrp     x0, #0x13000
0000c3a8 adrp     x2, #0x13000
0000c3ac add      x0, x0, #0x58
0000c3b0 add      x2, x2, #0xe0
0000c3b4 mov      x1, xzr
0000c3b8 blr      x8
0000c3bc tbz      x0, #0x3f, #0xc384
0000c3c0 str      xzr, [x19, #0xe0]
0000c3c4 b        #0xc384
0000c3c8 stp      x24, x23, [sp, #-0x40]!
0000c3cc stp      x22, x21, [sp, #0x10]
0000c3d0 stp      x20, x19, [sp, #0x20]
0000c3d4 stp      x29, x30, [sp, #0x30]
0000c3d8 add      x29, sp, #0x30
0000c3dc mov      w22, w0
0000c3e0 mov      x19, x4
0000c3e4 mov      x20, x3
0000c3e8 mov      w21, w2
0000c3ec mov      w23, w1
0000c3f0 and      w24, w22, #0xff
0000c3f4 cmp      w24, #1
0000c3f8 b.ne     #0xc408
0000c3fc adrp     x9, #0xe000
0000c400 ldrb     w8, [x9, #0x272]
0000c404 tbnz     w8, #0, #0xc430
0000c408 bl       #0xc494
0000c40c cmp      w24, #2
0000c410 b.ne     #0xc41c
0000c414 and      w8, w0, #0xff
0000c418 cbnz     w8, #0xc430
0000c41c bl       #0xc4a4
0000c420 cmp      w24, #3
0000c424 b.ne     #0xc46c
0000c428 and      w9, w0, #0xff
0000c42c cbz      w9, #0xc46c
0000c430 bl       #0xc36c
0000c434 adrp     x10, #0x13000
0000c438 ldr      x8, [x10, #0xe0]
0000c43c cbz      x8, #0xc46c
0000c440 mov      w0, w22
0000c444 ldr      x5, [x8]
0000c448 mov      w2, w21
0000c44c mov      x3, x20
0000c450 mov      x4, x19
0000c454 ldp      x29, x30, [sp, #0x30]
0000c458 ldp      x20, x19, [sp, #0x20]
0000c45c ldp      x22, x21, [sp, #0x10]
0000c460 mov      w1, w23
0000c464 ldp      x24, x23, [sp], #0x40
0000c468 br       x5
0000c46c ldp      x29, x30, [sp, #0x30]
0000c470 ldp      x20, x19, [sp, #0x20]
0000c474 ldp      x22, x21, [sp, #0x10]
0000c478 mov      x0, #-0x7ffffffffffffffd
0000c47c ldp      x24, x23, [sp], #0x40
0000c480 ret      
0000c484 adrp     x8, #0xe000
0000c488 ldrb     w8, [x8, #0x272]
0000c48c and      w0, w8, #1
0000c490 ret      
0000c494 adrp     x8, #0xe000
0000c498 ldrb     w8, [x8, #0x272]
0000c49c ubfx     w0, w8, #1, #1
0000c4a0 ret      
0000c4a4 adrp     x8, #0xe000
0000c4a8 ldrb     w8, [x8, #0x272]
0000c4ac ubfx     w0, w8, #2, #1
0000c4b0 ret      
0000c4b4 adrp     x3, #0x13000
0000c4b8 add      x3, x3, #0x18
0000c4bc mov      w2, wzr
0000c4c0 mov      x4, xzr
0000c4c4 b        #0xc3c8
0000c4c8 stp      x29, x30, [sp, #-0x10]!
0000c4cc mov      x29, sp
0000c4d0 bl       #0xe1dc
0000c4d4 mov      x8, x0
0000c4d8 cbz      x8, #0xc4fc
0000c4dc ldr      x3, [x8, #0x10]
0000c4e0 adrp     x0, #0x11000
0000c4e4 adrp     x2, #0x13000
0000c4e8 add      x0, x0, #0xda0
0000c4ec add      x2, x2, #0xe8
0000c4f0 mov      w1, wzr
0000c4f4 ldp      x29, x30, [sp], #0x10
0000c4f8 br       x3
0000c4fc mov      x0, #-0x7ffffffffffffff9
0000c500 ldp      x29, x30, [sp], #0x10
0000c504 ret      
0000c508 str      x21, [sp, #-0x30]!
0000c50c stp      x20, x19, [sp, #0x10]
0000c510 stp      x29, x30, [sp, #0x20]
0000c514 add      x29, sp, #0x20
0000c518 adrp     x21, #0x13000
0000c51c mov      x19, x1
0000c520 mov      x20, x0
0000c524 ldr      x8, [x21, #0xe8]
0000c528 cbnz     x8, #0xc538
0000c52c bl       #0xc4c8
0000c530 ldr      x8, [x21, #0xe8]
0000c534 cbz      x8, #0xc554
0000c538 ldr      x2, [x8, #0x10]
0000c53c mov      x0, x20
0000c540 mov      x1, x19
0000c544 ldp      x29, x30, [sp, #0x20]
0000c548 ldp      x20, x19, [sp, #0x10]
0000c54c ldr      x21, [sp], #0x30
0000c550 br       x2
0000c554 ldp      x29, x30, [sp, #0x20]
0000c558 ldp      x20, x19, [sp, #0x10]
0000c55c mov      x0, xzr
0000c560 ldr      x21, [sp], #0x30
0000c564 ret      
0000c568 str      x21, [sp, #-0x30]!
0000c56c stp      x20, x19, [sp, #0x10]
0000c570 stp      x29, x30, [sp, #0x20]
0000c574 add      x29, sp, #0x20
0000c578 adrp     x21, #0x13000
0000c57c mov      x19, x1
0000c580 mov      x20, x0
0000c584 ldr      x8, [x21, #0xe8]
0000c588 cbnz     x8, #0xc598
0000c58c bl       #0xc4c8
0000c590 ldr      x8, [x21, #0xe8]
0000c594 cbz      x8, #0xc5b4
0000c598 ldr      x2, [x8, #0x30]
0000c59c mov      x0, x20
0000c5a0 mov      x1, x19
0000c5a4 ldp      x29, x30, [sp, #0x20]
0000c5a8 ldp      x20, x19, [sp, #0x10]
0000c5ac ldr      x21, [sp], #0x30
0000c5b0 br       x2
0000c5b4 ldp      x29, x30, [sp, #0x20]
0000c5b8 ldp      x20, x19, [sp, #0x10]
0000c5bc mov      x0, xzr
0000c5c0 ldr      x21, [sp], #0x30
0000c5c4 ret      
0000c5c8 str      x19, [sp, #-0x20]!
0000c5cc stp      x29, x30, [sp, #0x10]
0000c5d0 add      x29, sp, #0x10
0000c5d4 adrp     x19, #0x13000
0000c5d8 ldr      x8, [x19, #0xe8]
0000c5dc cbnz     x8, #0xc5ec
0000c5e0 bl       #0xc4c8
0000c5e4 ldr      x8, [x19, #0xe8]
0000c5e8 cbz      x8, #0xc5fc
0000c5ec ldr      x0, [x8, #0x28]
0000c5f0 ldp      x29, x30, [sp, #0x10]
0000c5f4 ldr      x19, [sp], #0x20
0000c5f8 br       x0
0000c5fc ldp      x29, x30, [sp, #0x10]
0000c600 mov      x0, xzr
0000c604 ldr      x19, [sp], #0x20
0000c608 ret      
0000c60c mov      w0, #3
0000c610 mov      w1, #1
0000c614 b        #0xc568
0000c618 mov      x8, x0
0000c61c and      x9, x8, #3
0000c620 cbz      x9, #0xc64c
0000c624 stp      x29, x30, [sp, #-0x10]!
0000c628 mov      x29, sp
0000c62c adrp     x0, #0x11000
0000c630 adrp     x2, #0x11000
0000c634 add      x0, x0, #0xdaf
0000c638 mov      w1, #0x21f
0000c63c add      x2, x2, #0xdcd
0000c640 bl       #0x1fa8
0000c644 ldp      x29, x30, [sp], #0x10
0000c648 b        #0xc648
0000c64c mov      w0, w1
0000c650 str      w1, [x8]
0000c654 ret      
0000c658 sub      sp, sp, #0x20
0000c65c stp      x29, x30, [sp, #0x10]
0000c660 add      x29, sp, #0x10
0000c664 adrp     x8, #0x13000
0000c668 add      x2, sp, #8
0000c66c ldr      x9, [x8, #0xb0]
0000c670 ldr      x8, [x9, #0x40]
0000c674 blr      x8
0000c678 tbnz     x0, #0x3f, #0xc684
0000c67c ldr      x0, [sp, #8]
0000c680 b        #0xc68c
0000c684 mov      x0, xzr
0000c688 str      xzr, [sp, #8]
0000c68c ldp      x29, x30, [sp, #0x10]
0000c690 add      sp, sp, #0x20
0000c694 ret      
0000c698 mov      x8, x0
0000c69c mov      w0, #4
0000c6a0 mov      x1, x8
0000c6a4 b        #0xc658
0000c6a8 str      x19, [sp, #-0x20]!
0000c6ac stp      x29, x30, [sp, #0x10]
0000c6b0 add      x29, sp, #0x10
0000c6b4 mov      x19, x1
0000c6b8 bl       #0xc658
0000c6bc cbz      x0, #0xc6d0
0000c6c0 ldp      x29, x30, [sp, #0x10]
0000c6c4 mov      x1, x19
0000c6c8 ldr      x19, [sp], #0x20
0000c6cc b        #0xdbc0
0000c6d0 ldp      x29, x30, [sp, #0x10]
0000c6d4 ldr      x19, [sp], #0x20
0000c6d8 ret      
0000c6dc stp      x22, x21, [sp, #-0x30]!
0000c6e0 stp      x20, x19, [sp, #0x10]
0000c6e4 stp      x29, x30, [sp, #0x20]
0000c6e8 add      x29, sp, #0x20
0000c6ec mov      x21, x2
0000c6f0 mov      x22, x1
0000c6f4 mov      x1, x21
0000c6f8 mov      x19, x3
0000c6fc bl       #0xc6a8
0000c700 mov      x20, x0
0000c704 cbz      x19, #0xc728
0000c708 cbz      x20, #0xc728
0000c70c cmp      x22, x21
0000c710 csel     x2, x22, x21, lo
0000c714 mov      x0, x20
0000c718 mov      x1, x19
0000c71c bl       #0xdc20
0000c720 mov      x0, x19
0000c724 bl       #0xc73c
0000c728 mov      x0, x20
0000c72c ldp      x29, x30, [sp, #0x20]
0000c730 ldp      x20, x19, [sp, #0x10]
0000c734 ldp      x22, x21, [sp], #0x30
0000c738 ret      
0000c73c stp      x29, x30, [sp, #-0x10]!
0000c740 mov      x29, sp
0000c744 adrp     x8, #0x13000
0000c748 ldr      x9, [x8, #0xb0]
0000c74c ldr      x9, [x9, #0x48]
0000c750 blr      x9
0000c754 mov      x8, x0
0000c758 tbnz     x8, #0x3f, #0xc764
0000c75c ldp      x29, x30, [sp], #0x10
0000c760 ret      
0000c764 adrp     x1, #0xe000
0000c768 add      x1, x1, #0x210
0000c76c mov      w0, #-0xffffffff80000000
0000c770 mov      x2, x8
0000c774 bl       #0x1ea4
0000c778 adrp     x0, #0x11000
0000c77c adrp     x2, #0xe000
0000c780 add      x0, x0, #0xdf3
0000c784 mov      w1, #0x333
0000c788 add      x2, x2, #0x244
0000c78c ldp      x29, x30, [sp], #0x10
0000c790 b        #0x1fa8
0000c794 mov      x8, x2
0000c798 mov      x9, x0
0000c79c mov      x10, x1
0000c7a0 mov      w0, #4
0000c7a4 mov      x1, x9
0000c7a8 mov      x2, x10
0000c7ac mov      x3, x8
0000c7b0 b        #0xc6dc
0000c7b4 sub      sp, sp, #0x30
0000c7b8 stp      x29, x30, [sp, #0x20]
0000c7bc add      x29, sp, #0x20
0000c7c0 mov      x8, x2
0000c7c4 ldp      x10, x9, [x3, #0x10]
0000c7c8 ldp      x12, x11, [x3]
0000c7cc mov      x4, sp
0000c7d0 mov      x2, xzr
0000c7d4 stp      x10, x9, [sp, #0x10]
0000c7d8 mov      x3, x8
0000c7dc stp      x12, x11, [sp]
0000c7e0 mov      x5, xzr
0000c7e4 bl       #0xc8f8
0000c7e8 ldp      x29, x30, [sp, #0x20]
0000c7ec add      sp, sp, #0x30
0000c7f0 ret      
0000c7f4 sub      sp, sp, #0x110
0000c7f8 str      x28, [sp, #0xf0]
0000c7fc stp      x29, x30, [sp, #0x100]
0000c800 add      x29, sp, #0x100
0000c804 mov      w11, #-0x80
0000c808 stp      q6, q7, [sp, #0x60]
0000c80c mov      w12, #-0x28
0000c810 stp      q4, q5, [sp, #0x40]
0000c814 mov      x8, sp
0000c818 stp      q2, q3, [sp, #0x20]
0000c81c sub      x9, x29, #0x78
0000c820 stp      q0, q1, [sp]
0000c824 stp      w12, w11, [x29, #-0x18]
0000c828 add      x8, x8, #0x80
0000c82c ldur     x11, [x29, #-0x18]
0000c830 add      x9, x9, #0x28
0000c834 stur     x3, [x29, #-0x78]
0000c838 add      x10, x29, #0x10
0000c83c sub      x3, x29, #0x50
0000c840 stp      x6, x7, [x29, #-0x60]
0000c844 stp      x4, x5, [x29, #-0x70]
0000c848 stp      x9, x8, [x29, #-0x28]
0000c84c stp      x9, x8, [x29, #-0x48]
0000c850 stur     x10, [x29, #-0x50]
0000c854 stp      x11, x10, [x29, #-0x38]
0000c858 bl       #0xc7b4
0000c85c ldp      x29, x30, [sp, #0x100]
0000c860 ldr      x28, [sp, #0xf0]
0000c864 add      sp, sp, #0x110
0000c868 ret      
0000c86c mov      x8, xzr
0000c870 lsr      x9, x3, #8
0000c874 b        #0xc890
0000c878 cmp      x4, #1
0000c87c strb     w3, [x0]
0000c880 b.eq     #0xc888
0000c884 strb     w9, [x0, #1]
0000c888 add      x0, x0, x4
0000c88c add      x8, x8, #1
0000c890 cmp      x0, x1
0000c894 ccmp     x8, x2, #0, lo
0000c898 b.lt     #0xc878
0000c89c ret      
0000c8a0 str      x21, [sp, #-0x30]!
0000c8a4 stp      x20, x19, [sp, #0x10]
0000c8a8 stp      x29, x30, [sp, #0x20]
0000c8ac add      x29, sp, #0x20
0000c8b0 adrp     x21, #0x12000
0000c8b4 mov      x20, x2
0000c8b8 mov      x19, x0
0000c8bc mov      x0, x1
0000c8c0 add      x21, x21, #0x60
0000c8c4 strb     wzr, [x19]
0000c8c8 add      x2, sp, #0xc
0000c8cc mov      w1, w20
0000c8d0 bl       #0xe0e0
0000c8d4 ldr      w8, [sp, #0xc]
0000c8d8 ldrb     w8, [x21, x8]
0000c8dc strb     w8, [x19, #1]!
0000c8e0 cbnz     x0, #0xc8c8
0000c8e4 mov      x0, x19
0000c8e8 ldp      x29, x30, [sp, #0x20]
0000c8ec ldp      x20, x19, [sp, #0x10]
0000c8f0 ldr      x21, [sp], #0x30
0000c8f4 ret      
0000c8f8 sub      sp, sp, #0x150
0000c8fc stp      x28, x27, [sp, #0xf0]
0000c900 stp      x26, x25, [sp, #0x100]
0000c904 stp      x24, x23, [sp, #0x110]
0000c908 stp      x22, x21, [sp, #0x120]
0000c90c stp      x20, x19, [sp, #0x130]
0000c910 stp      x29, x30, [sp, #0x140]
0000c914 add      x29, sp, #0x140
0000c918 adrp     x27, #0x13000
0000c91c mov      x21, x5
0000c920 mov      x28, x1
0000c924 ldr      x27, [x27]
0000c928 mov      x20, x3
0000c92c mov      x17, x2
0000c930 stur     x27, [x29, #-0x58]
0000c934 cbz      x28, #0xc95c
0000c938 cbnz     x0, #0xc980
0000c93c tbnz     w17, #0xd, #0xc980
0000c940 adrp     x0, #0x12000
0000c944 adrp     x2, #0x10000
0000c948 add      x0, x0, #0x2a5
0000c94c mov      w1, #0x242
0000c950 add      x2, x2, #0x14
0000c954 bl       #0x1fa8
0000c958 b        #0xc958
0000c95c cbnz     x20, #0xc984
0000c960 tbz      w17, #0xd, #0xc984
0000c964 adrp     x0, #0x12000
0000c968 adrp     x2, #0x12000
0000c96c add      x0, x0, #0x2a5
0000c970 mov      w1, #0x24a
0000c974 add      x2, x2, #0x44c
0000c978 bl       #0x1fa8
0000c97c b        #0xc97c
0000c980 cbz      x20, #0xc964
0000c984 tbnz     w17, #6, #0xc9bc
0000c988 adrp     x13, #0xe000
0000c98c mov      w30, #1
0000c990 ldr      w12, [x13, #0x274]
0000c994 cbz      w12, #0xc9f0
0000c998 cmp      x12, x28
0000c99c b.hs     #0xc9f0
0000c9a0 adrp     x0, #0x12000
0000c9a4 adrp     x2, #0x12000
0000c9a8 add      x0, x0, #0x2a5
0000c9ac mov      w1, #0x258
0000c9b0 add      x2, x2, #0x31e
0000c9b4 bl       #0x1fa8
0000c9b8 b        #0xc9b8
0000c9bc adrp     x12, #0xe000
0000c9c0 mov      w30, #2
0000c9c4 ldr      w11, [x12, #0x278]
0000c9c8 cbz      w11, #0xc9f0
0000c9cc cmp      x11, x28
0000c9d0 b.hs     #0xc9f0
0000c9d4 adrp     x0, #0x12000
0000c9d8 adrp     x2, #0x12000
0000c9dc add      x0, x0, #0x2a5
0000c9e0 mov      w1, #0x253
0000c9e4 add      x2, x2, #0x465
0000c9e8 bl       #0x1fa8
0000c9ec b        #0xc9ec
0000c9f0 mov      x27, x0
0000c9f4 str      x4, [sp, #0x58]
0000c9f8 str      x30, [sp, #0x98]
0000c9fc tbnz     w17, #8, #0xca44
0000ca00 adrp     x15, #0xe000
0000ca04 ldr      w25, [x15, #0x274]
0000ca08 cbz      w25, #0xca88
0000ca0c add      w22, w25, #1
0000ca10 mov      x0, x20
0000ca14 mov      x1, x22
0000ca18 mov      x24, x17
0000ca1c bl       #0x2174
0000ca20 cmp      x0, x25
0000ca24 b.ls     #0xcaa8
0000ca28 adrp     x0, #0x12000
0000ca2c adrp     x2, #0x12000
0000ca30 add      x0, x0, #0x2a5
0000ca34 mov      w1, #0x269
0000ca38 add      x2, x2, #0x534
0000ca3c bl       #0x1fa8
0000ca40 b        #0xca40
0000ca44 adrp     x14, #0xe000
0000ca48 ldr      w23, [x14, #0x278]
0000ca4c cbz      w23, #0xca98
0000ca50 add      w22, w23, #1
0000ca54 mov      x0, x20
0000ca58 mov      x1, x22
0000ca5c mov      x25, x17
0000ca60 bl       #0x210c
0000ca64 cmp      x0, x23
0000ca68 b.ls     #0xcad4
0000ca6c adrp     x0, #0x12000
0000ca70 adrp     x2, #0x12000
0000ca74 add      x0, x0, #0x2a5
0000ca78 mov      w1, #0x263
0000ca7c add      x2, x2, #0x4a8
0000ca80 bl       #0x1fa8
0000ca84 b        #0xca84
0000ca88 mov      w25, #0xff
0000ca8c mov      w23, #1
0000ca90 str      x25, [sp, #0x80]
0000ca94 b        #0xcafc
0000ca98 mov      w23, #0xffff
0000ca9c str      x23, [sp, #0x80]
0000caa0 mov      w23, #2
0000caa4 b        #0xcafc
0000caa8 mov      x0, x20
0000caac mov      x1, x22
0000cab0 bl       #0x2174
0000cab4 cmp      x0, x25
0000cab8 b.hi     #0xcb08
0000cabc ldr      x30, [sp, #0x98]
0000cac0 mov      w16, #0xff
0000cac4 mov      w23, #1
0000cac8 mov      x17, x24
0000cacc str      x16, [sp, #0x80]
0000cad0 b        #0xcafc
0000cad4 mov      x0, x20
0000cad8 mov      x1, x22
0000cadc bl       #0x210c
0000cae0 cmp      x0, x23
0000cae4 b.hi     #0xcb08
0000cae8 mov      w19, #0xffff
0000caec ldr      x30, [sp, #0x98]
0000caf0 mov      w23, #2
0000caf4 mov      x17, x25
0000caf8 str      x19, [sp, #0x80]
0000cafc mov      x16, x27
0000cb00 tbnz     w17, #0xd, #0xcb10
0000cb04 cbnz     x28, #0xcb14
0000cb08 mov      x0, xzr
0000cb0c b        #0xdaac
0000cb10 cbz      x28, #0xcb30
0000cb14 sub      x25, x28, #1
0000cb18 str      x16, [sp, #0x48]
0000cb1c cmp      x16, #0
0000cb20 madd     x13, x30, x25, x16
0000cb24 csel     x7, xzr, x13, eq
0000cb28 str      x7, [sp, #0xa0]
0000cb2c b        #0xcb3c
0000cb30 mov      x16, xzr
0000cb34 str      xzr, [sp, #0x48]
0000cb38 str      xzr, [sp, #0xa0]
0000cb3c ldr      x26, [sp, #0x80]
0000cb40 cmp      x23, #1
0000cb44 ldrb     w11, [x20]
0000cb48 str      x21, [sp, #0x60]
0000cb4c b.ne     #0xcb58
0000cb50 mov      w2, wzr
0000cb54 b        #0xcb60
0000cb58 ldrb     w9, [x20, #1]
0000cb5c lsl      w2, w9, #8
0000cb60 adrp     x24, #0x11000
0000cb64 mov      x4, xzr
0000cb68 orr      w8, w2, w11
0000cb6c add      x24, x24, #0xf48
0000cb70 mov      w19, #0xa
0000cb74 lsl      x25, x23, #1
0000cb78 b        #0xda5c
0000cb7c ldr      x28, [sp, #0xa0]
0000cb80 cmp      x16, x28
0000cb84 ldr      x28, [sp, #0x80]
0000cb88 b.lo     #0xcb90
0000cb8c cbnz     x16, #0xda6c
0000cb90 mov      w8, #0x2140
0000cb94 and      x17, x17, x8
0000cb98 cmp      w9, #0xa
0000cb9c b.eq     #0xcdc8
0000cba0 cmp      w9, #0xd
0000cba4 b.eq     #0xcde4
0000cba8 cmp      w9, #0x25
0000cbac b.ne     #0xce00
0000cbb0 ldr      x8, [sp, #0x60]
0000cbb4 mov      x13, xzr
0000cbb8 mov      x22, xzr
0000cbbc stur     x16, [x29, #-0x98]
0000cbc0 mov      w14, #1
0000cbc4 mov      w10, #1
0000cbc8 b        #0xccb8
0000cbcc tbnz     w17, #0xb, #0xcc4c
0000cbd0 orr      x17, x17, #0x200
0000cbd4 cbnz     x8, #0xcdb8
0000cbd8 ldr      x21, [sp, #0x58]
0000cbdc ldrsw    x16, [x21, #0x18]
0000cbe0 tbz      w16, #0x1f, #0xcc08
0000cbe4 ldr      x19, [sp, #0x58]
0000cbe8 add      w8, w16, #8
0000cbec adrp     x24, #0x11000
0000cbf0 add      x24, x24, #0xf48
0000cbf4 cmp      w8, #0
0000cbf8 str      w8, [x19, #0x18]
0000cbfc mov      w19, #0xa
0000cc00 ldr      x21, [sp, #0x58]
0000cc04 b.le     #0xcc98
0000cc08 ldr      x28, [x21]
0000cc0c add      x16, x28, #8
0000cc10 str      x16, [x21]
0000cc14 ldr      x13, [x28]
0000cc18 mov      x8, xzr
0000cc1c ldr      x28, [sp, #0x80]
0000cc20 mov      w10, #1
0000cc24 b        #0xccb8
0000cc28 mov      w15, #-1
0000cc2c eor      w5, w15, w17, lsr #6
0000cc30 and      x0, x5, #0x20
0000cc34 orr      x17, x0, x17
0000cc38 b        #0xcd04
0000cc3c mov      x14, xzr
0000cc40 mov      w10, wzr
0000cc44 mov      x20, x27
0000cc48 b        #0xccb8
0000cc4c cbnz     x8, #0xcdc0
0000cc50 ldr      x27, [sp, #0x58]
0000cc54 mov      x12, x17
0000cc58 mov      x1, x4
0000cc5c ldrsw    x17, [x27, #0x18]
0000cc60 tbz      w17, #0x1f, #0xcc74
0000cc64 add      w10, w17, #8
0000cc68 cmp      w10, #0
0000cc6c str      w10, [x27, #0x18]
0000cc70 b.le     #0xccac
0000cc74 ldr      x4, [x27]
0000cc78 add      x17, x4, #8
0000cc7c str      x17, [x27]
0000cc80 ldr      x14, [x4]
0000cc84 mov      x8, xzr
0000cc88 mov      w10, #1
0000cc8c mov      x4, x1
0000cc90 mov      x17, x12
0000cc94 b        #0xccb8
0000cc98 mov      x15, x17
0000cc9c ldr      x17, [x21, #8]
0000cca0 add      x28, x17, x16
0000cca4 mov      x17, x15
0000cca8 b        #0xcc14
0000ccac ldr      x4, [x27, #8]
0000ccb0 add      x4, x4, x17
0000ccb4 b        #0xcc80
0000ccb8 mov      x27, x20
0000ccbc tbz      w10, #0, #0xce2c
0000ccc0 add      x20, x27, x23
0000ccc4 cmp      x23, #1
0000ccc8 ldrb     w16, [x20]
0000cccc b.ne     #0xccd8
0000ccd0 mov      w3, wzr
0000ccd4 b        #0xcce0
0000ccd8 ldrb     w11, [x20, #1]
0000ccdc lsl      w3, w11, #8
0000cce0 orr      w15, w3, w16
0000cce4 and      x9, x28, x15
0000cce8 mov      w10, wzr
0000ccec sub      w21, w9, #0x2a
0000ccf0 cmp      w21, #0x22
0000ccf4 stur     x9, [x29, #-0x88]
0000ccf8 b.hi     #0xcd74
0000ccfc ldr      x16, [x24, x21, lsl #3]
0000cd00 br       x16
0000cd04 mov      x22, xzr
0000cd08 b        #0xcd40
0000cd0c madd     x22, x22, x19, x11
0000cd10 ldrb     w9, [x25, x27]
0000cd14 cmp      x23, #1
0000cd18 b.ne     #0xcd24
0000cd1c mov      w1, wzr
0000cd20 b        #0xcd30
0000cd24 add      x1, x25, x27
0000cd28 ldrb     w12, [x1, #1]
0000cd2c lsl      w1, w12, #8
0000cd30 orr      w6, w1, w9
0000cd34 and      x9, x28, x6
0000cd38 add      x27, x27, x23
0000cd3c stur     x9, [x29, #-0x88]
0000cd40 sub      x11, x9, #0x30
0000cd44 cmp      x11, #9
0000cd48 b.ls     #0xcd0c
0000cd4c and      x2, x17, #0x800
0000cd50 tst      x17, #0x800
0000cd54 lsr      x7, x2, #2
0000cd58 eor      x3, x7, #0x200
0000cd5c csel     x13, x22, x13, eq
0000cd60 csel     x14, x14, x22, eq
0000cd64 orr      x17, x3, x17
0000cd68 mov      w10, #1
0000cd6c mov      x20, x27
0000cd70 b        #0xccb8
0000cd74 cbz      w9, #0xcc3c
0000cd78 cmp      w9, #0x20
0000cd7c b.eq     #0xcdb0
0000cd80 cmp      w9, #0x6c
0000cd84 b.ne     #0xccb8
0000cd88 orr      x17, x17, #0x10
0000cd8c b        #0xcbc4
0000cd90 orr      x17, x17, #2
0000cd94 b        #0xcbc4
0000cd98 orr      x17, x17, #8
0000cd9c b        #0xcbc4
0000cda0 orr      x17, x17, #1
0000cda4 b        #0xcbc4
0000cda8 orr      x17, x17, #0x800
0000cdac b        #0xcbc4
0000cdb0 orr      x17, x17, #4
0000cdb4 b        #0xcbc4
0000cdb8 ldr      x13, [x8], #8
0000cdbc b        #0xcbc4
0000cdc0 ldr      x14, [x8], #8
0000cdc4 b        #0xcbc4
0000cdc8 add      x27, x20, x23
0000cdcc mov      x2, x4
0000cdd0 cmp      x23, #1
0000cdd4 ldrb     w12, [x27]
0000cdd8 b.ne     #0xce64
0000cddc mov      w6, wzr
0000cde0 b        #0xce6c
0000cde4 add      x27, x20, x23
0000cde8 mov      x11, x17
0000cdec cmp      x23, #1
0000cdf0 ldrb     w13, [x27]
0000cdf4 b.ne     #0xceac
0000cdf8 mov      w5, wzr
0000cdfc b        #0xceb4
0000ce00 mov      x22, xzr
0000ce04 str      xzr, [sp, #0x78]
0000ce08 mov      w26, wzr
0000ce0c str      wzr, [sp, #0x94]
0000ce10 mov      w24, wzr
0000ce14 str      xzr, [sp, #0x88]
0000ce18 sub      x28, x29, #0x88
0000ce1c orr      x17, x17, #0x400
0000ce20 mov      w14, #1
0000ce24 mov      x27, x20
0000ce28 b        #0xd654
0000ce2c sub      x10, x9, #0x61
0000ce30 str      x13, [sp, #0x78]
0000ce34 cmp      x10, #0x17
0000ce38 b.hi     #0xcf54
0000ce3c adrp     x1, #0x11000
0000ce40 ldur     x16, [x29, #-0x98]
0000ce44 add      x1, x1, #0xe88
0000ce48 mov      x19, x17
0000ce4c ldr      x28, [x1, x10, lsl #3]
0000ce50 br       x28
0000ce54 cbz      x8, #0xd368
0000ce58 add      x28, x8, #8
0000ce5c str      x28, [sp, #0x60]
0000ce60 b        #0xd39c
0000ce64 ldrb     w4, [x27, #1]
0000ce68 lsl      w6, w4, #8
0000ce6c orr      w4, w6, w12
0000ce70 and      x3, x28, x4
0000ce74 cmp      x3, #0xd
0000ce78 stur     x3, [x29, #-0x88]
0000ce7c b.ne     #0xcef4
0000ce80 adrp     x28, #0x12000
0000ce84 str      xzr, [sp, #0x78]
0000ce88 mov      x22, xzr
0000ce8c str      wzr, [sp, #0x94]
0000ce90 mov      w26, wzr
0000ce94 str      xzr, [sp, #0x88]
0000ce98 mov      w24, wzr
0000ce9c add      x28, x28, #0x62d
0000cea0 mov      w14, #1
0000cea4 mov      x4, x2
0000cea8 b        #0xd654
0000ceac ldrb     w0, [x27, #1]
0000ceb0 lsl      w5, w0, #8
0000ceb4 orr      w17, w5, w13
0000ceb8 and      x2, x28, x17
0000cebc cmp      x2, #0xa
0000cec0 stur     x2, [x29, #-0x88]
0000cec4 b.ne     #0xcf24
0000cec8 adrp     x28, #0x12000
0000cecc str      xzr, [sp, #0x78]
0000ced0 mov      x22, xzr
0000ced4 str      wzr, [sp, #0x94]
0000ced8 mov      w26, wzr
0000cedc str      xzr, [sp, #0x88]
0000cee0 mov      w24, wzr
0000cee4 add      x28, x28, #0x62d
0000cee8 mov      w14, #1
0000ceec mov      x17, x11
0000cef0 b        #0xd654
0000cef4 adrp     x28, #0x12000
0000cef8 str      xzr, [sp, #0x78]
0000cefc mov      x22, xzr
0000cf00 str      wzr, [sp, #0x94]
0000cf04 mov      w26, wzr
0000cf08 str      xzr, [sp, #0x88]
0000cf0c mov      w24, wzr
0000cf10 add      x28, x28, #0x62d
0000cf14 mov      w14, #1
0000cf18 mov      x27, x20
0000cf1c mov      x4, x2
0000cf20 b        #0xd654
0000cf24 adrp     x28, #0x12000
0000cf28 str      xzr, [sp, #0x78]
0000cf2c mov      x22, xzr
0000cf30 str      wzr, [sp, #0x94]
0000cf34 mov      w26, wzr
0000cf38 str      xzr, [sp, #0x88]
0000cf3c mov      w24, wzr
0000cf40 add      x28, x28, #0x630
0000cf44 mov      w14, #1
0000cf48 mov      x27, x20
0000cf4c mov      x17, x11
0000cf50 b        #0xd654
0000cf54 cmp      x9, #0xa
0000cf58 b.eq     #0xd264
0000cf5c ldur     x16, [x29, #-0x98]
0000cf60 cmp      x9, #0xd
0000cf64 b.eq     #0xd284
0000cf68 cmp      x9, #0x53
0000cf6c b.eq     #0xcf98
0000cf70 cmp      x9, #0x58
0000cf74 b.eq     #0xd038
0000cf78 str      wzr, [sp, #0x94]
0000cf7c mov      w26, wzr
0000cf80 mov      w24, wzr
0000cf84 str      xzr, [sp, #0x88]
0000cf88 sub      x28, x29, #0x88
0000cf8c str      x8, [sp, #0x60]
0000cf90 orr      x17, x17, #0x400
0000cf94 b        #0xd654
0000cf98 orr      x17, x17, #0x400
0000cf9c cbz      x8, #0xcfac
0000cfa0 mov      x9, x14
0000cfa4 add      x5, x8, #8
0000cfa8 b        #0xcfdc
0000cfac ldr      x7, [sp, #0x58]
0000cfb0 ldrsw    x2, [x7, #0x18]
0000cfb4 tbz      w2, #0x1f, #0xcfc8
0000cfb8 add      w13, w2, #8
0000cfbc cmp      w13, #0
0000cfc0 str      w13, [x7, #0x18]
0000cfc4 b.le     #0xd9fc
0000cfc8 ldr      x8, [x7]
0000cfcc add      x10, x8, #8
0000cfd0 str      x10, [x7]
0000cfd4 mov      x9, x14
0000cfd8 mov      x5, xzr
0000cfdc str      x5, [sp, #0x60]
0000cfe0 adrp     x14, #0x12000
0000cfe4 ldr      x11, [x8]
0000cfe8 and      x12, x17, #0xfffffffffffffbff
0000cfec add      x14, x14, #0x5b7
0000cff0 cmp      x11, #0
0000cff4 csel     x17, x12, x17, eq
0000cff8 csel     x28, x14, x11, eq
0000cffc tbnz     w17, #0xb, #0xd008
0000d000 mov      x14, xzr
0000d004 b        #0xd594
0000d008 str      wzr, [sp, #0x94]
0000d00c mov      w26, wzr
0000d010 mov      w24, wzr
0000d014 str      xzr, [sp, #0x88]
0000d018 mov      x14, x9
0000d01c b        #0xd654
0000d020 cbz      x8, #0xd3c0
0000d024 add      x6, x8, #8
0000d028 b        #0xd3f4
0000d02c mov      x6, #-0x37
0000d030 and      x3, x17, x6
0000d034 orr      x17, x3, #0x10
0000d038 orr      x17, x17, #0x20
0000d03c orr      x17, x17, #0x80
0000d040 mov      x15, #-0x4003
0000d044 and      x0, x17, x15
0000d048 orr      x5, x0, #0x4000
0000d04c tst      x17, #0x80
0000d050 csel     x19, x5, x17, eq
0000d054 tbnz     w19, #4, #0xd064
0000d058 cbz      x8, #0xd094
0000d05c ldrsw    x10, [x8], #8
0000d060 b        #0xd06c
0000d064 cbz      x8, #0xd0c4
0000d068 ldr      x10, [x8], #8
0000d06c str      x8, [sp, #0x60]
0000d070 b        #0xd0f4
0000d074 cbz      x8, #0xd4a4
0000d078 mov      x21, x4
0000d07c add      x4, x8, #8
0000d080 str      x4, [sp, #0x60]
0000d084 b        #0xd4e0
0000d088 cbz      x8, #0xd4fc
0000d08c add      x7, x8, #8
0000d090 b        #0xd530
0000d094 ldr      x5, [sp, #0x58]
0000d098 ldrsw    x0, [x5, #0x18]
0000d09c tbz      w0, #0x1f, #0xd0b0
0000d0a0 add      w9, w0, #8
0000d0a4 cmp      w9, #0
0000d0a8 str      w9, [x5, #0x18]
0000d0ac b.le     #0xda08
0000d0b0 ldr      x20, [x5]
0000d0b4 add      x6, x20, #8
0000d0b8 str      x6, [x5]
0000d0bc ldrsw    x10, [x20]
0000d0c0 b        #0xd0f0
0000d0c4 ldr      x6, [sp, #0x58]
0000d0c8 ldrsw    x1, [x6, #0x18]
0000d0cc tbz      w1, #0x1f, #0xd0e0
0000d0d0 add      w11, w1, #8
0000d0d4 cmp      w11, #0
0000d0d8 str      w11, [x6, #0x18]
0000d0dc b.le     #0xda14
0000d0e0 ldr      x22, [x6]
0000d0e4 add      x7, x22, #8
0000d0e8 str      x7, [x6]
0000d0ec ldr      x10, [x22]
0000d0f0 str      xzr, [sp, #0x60]
0000d0f4 and      w12, w19, #4
0000d0f8 str      x4, [sp, #0x50]
0000d0fc tst      x19, #2
0000d100 mov      w16, #0x2b
0000d104 lsl      w8, w12, #3
0000d108 csel     w2, w8, w16, eq
0000d10c str      w2, [sp, #0x94]
0000d110 tbnz     w19, #7, #0xd154
0000d114 and      x24, x19, #0xffffffffffffffdf
0000d118 tst      x19, #8
0000d11c ubfx     x22, x19, #3, #1
0000d120 csel     x19, x19, x24, eq
0000d124 csinc    x14, x14, xzr, eq
0000d128 str      x22, [sp, #0x70]
0000d12c tbnz     w19, #0xe, #0xd178
0000d130 tbz      x10, #0x3f, #0xd178
0000d134 mov      w17, #0x2d
0000d138 mov      w12, #0xa
0000d13c mov      x24, x14
0000d140 orr      x19, x19, #2
0000d144 str      w17, [sp, #0x94]
0000d148 neg      x20, x10
0000d14c mov      w2, w12
0000d150 b        #0xd198
0000d154 and      x20, x19, #0x10
0000d158 str      xzr, [sp, #0x70]
0000d15c cmp      x10, #0
0000d160 ccmp     x20, #0, #0, lt
0000d164 and      x22, x10, #0xffffffff
0000d168 mov      x24, x14
0000d16c csel     x20, x22, x10, eq
0000d170 mov      w2, #0x10
0000d174 b        #0xd198
0000d178 mov      w16, #0x4010
0000d17c and      x28, x19, x16
0000d180 and      x4, x10, #0xffffffff
0000d184 cmp      x28, #4, lsl #12
0000d188 mov      w13, #0xa
0000d18c mov      x24, x14
0000d190 csel     x20, x4, x10, eq
0000d194 mov      w2, w13
0000d198 sub      x0, x29, #0x80
0000d19c mov      x1, x20
0000d1a0 sub      x22, x29, #0x80
0000d1a4 bl       #0xc8a0
0000d1a8 mov      x11, x24
0000d1ac orr      x1, x20, x11
0000d1b0 mov      x28, x0
0000d1b4 cbz      x1, #0xd204
0000d1b8 sub      x13, x28, x22
0000d1bc ldr      x30, [sp, #0x98]
0000d1c0 mov      w5, #3
0000d1c4 ldur     x16, [x29, #-0x98]
0000d1c8 ldr      x4, [sp, #0x50]
0000d1cc udiv     x21, x13, x5
0000d1d0 ldr      x15, [sp, #0x70]
0000d1d4 add      x20, x21, x21, lsl #1
0000d1d8 subs     x8, x13, x20
0000d1dc eor      x9, x8, #3
0000d1e0 csel     x8, xzr, x9, eq
0000d1e4 str      x8, [sp, #0x88]
0000d1e8 cbz      w15, #0xd21c
0000d1ec cbz      x13, #0xd21c
0000d1f0 sub      x21, x13, #1
0000d1f4 mov      w8, #3
0000d1f8 udiv     x9, x21, x8
0000d1fc add      x13, x9, x13
0000d200 b        #0xd21c
0000d204 ldr      x30, [sp, #0x98]
0000d208 mov      x13, xzr
0000d20c ldur     x16, [x29, #-0x98]
0000d210 sub      x28, x29, #0x80
0000d214 ldr      x4, [sp, #0x50]
0000d218 str      xzr, [sp, #0x88]
0000d21c ldr      w0, [sp, #0x94]
0000d220 orr      x14, x19, #0x1000
0000d224 mov      w17, #0xa21
0000d228 mov      w26, #1
0000d22c and      x19, x19, x17
0000d230 cmp      w0, #0
0000d234 cinc     x24, x24, ne
0000d238 cinc     x22, x13, ne
0000d23c cmp      x19, #0x220
0000d240 b.ne     #0xd254
0000d244 ldp      x24, x12, [sp, #0x70]
0000d248 mov      x17, x14
0000d24c mov      x14, x12
0000d250 b        #0xd654
0000d254 mov      x17, x14
0000d258 mov      x14, x24
0000d25c ldr      x24, [sp, #0x70]
0000d260 b        #0xd654
0000d264 add      x15, x27, x23
0000d268 mov      x20, x14
0000d26c mov      x0, x4
0000d270 ldrb     w14, [x15]
0000d274 cmp      x23, #1
0000d278 b.ne     #0xd2a0
0000d27c mov      w4, wzr
0000d280 b        #0xd2a8
0000d284 mov      x21, x14
0000d288 add      x14, x27, x23
0000d28c cmp      x23, #1
0000d290 ldrb     w15, [x14]
0000d294 b.ne     #0xd2dc
0000d298 mov      w0, wzr
0000d29c b        #0xd2e4
0000d2a0 ldrb     w3, [x15, #1]
0000d2a4 lsl      w4, w3, #8
0000d2a8 orr      w16, w4, w14
0000d2ac and      x1, x28, x16
0000d2b0 cmp      x1, #0xd
0000d2b4 stur     x1, [x29, #-0x88]
0000d2b8 b.ne     #0xd318
0000d2bc adrp     x28, #0x12000
0000d2c0 str      wzr, [sp, #0x94]
0000d2c4 mov      w26, wzr
0000d2c8 str      xzr, [sp, #0x88]
0000d2cc mov      w24, wzr
0000d2d0 add      x28, x28, #0x62d
0000d2d4 mov      x27, x15
0000d2d8 b        #0xd330
0000d2dc ldrb     w2, [x14, #1]
0000d2e0 lsl      w0, w2, #8
0000d2e4 orr      w15, w0, w15
0000d2e8 and      x0, x28, x15
0000d2ec cmp      x0, #0xa
0000d2f0 stur     x0, [x29, #-0x88]
0000d2f4 b.ne     #0xd344
0000d2f8 adrp     x28, #0x12000
0000d2fc str      wzr, [sp, #0x94]
0000d300 mov      w26, wzr
0000d304 str      xzr, [sp, #0x88]
0000d308 mov      w24, wzr
0000d30c add      x28, x28, #0x62d
0000d310 mov      x27, x14
0000d314 b        #0xd35c
0000d318 adrp     x28, #0x12000
0000d31c str      wzr, [sp, #0x94]
0000d320 mov      w26, wzr
0000d324 str      xzr, [sp, #0x88]
0000d328 mov      w24, wzr
0000d32c add      x28, x28, #0x62d
0000d330 ldur     x16, [x29, #-0x98]
0000d334 mov      x4, x0
0000d338 str      x8, [sp, #0x60]
0000d33c mov      x14, x20
0000d340 b        #0xd654
0000d344 adrp     x28, #0x12000
0000d348 str      wzr, [sp, #0x94]
0000d34c mov      w26, wzr
0000d350 str      xzr, [sp, #0x88]
0000d354 mov      w24, wzr
0000d358 add      x28, x28, #0x630
0000d35c str      x8, [sp, #0x60]
0000d360 mov      x14, x21
0000d364 b        #0xd654
0000d368 ldr      x28, [sp, #0x58]
0000d36c ldrsw    x3, [x28, #0x18]
0000d370 tbz      w3, #0x1f, #0xd38c
0000d374 mov      x8, x14
0000d378 add      w14, w3, #8
0000d37c cmp      w14, #0
0000d380 str      w14, [x28, #0x18]
0000d384 mov      x14, x8
0000d388 b.le     #0xda20
0000d38c ldr      x8, [x28]
0000d390 add      x13, x8, #8
0000d394 str      x13, [x28]
0000d398 str      xzr, [sp, #0x60]
0000d39c str      wzr, [sp, #0x94]
0000d3a0 mov      w26, wzr
0000d3a4 ldrh     w11, [x8]
0000d3a8 mov      w24, wzr
0000d3ac str      xzr, [sp, #0x88]
0000d3b0 sub      x28, x29, #0x90
0000d3b4 orr      x17, x17, #0x400
0000d3b8 stur     x11, [x29, #-0x90]
0000d3bc b        #0xd654
0000d3c0 ldr      x20, [sp, #0x58]
0000d3c4 ldrsw    x5, [x20, #0x18]
0000d3c8 tbz      w5, #0x1f, #0xd3dc
0000d3cc add      w15, w5, #8
0000d3d0 cmp      w15, #0
0000d3d4 str      w15, [x20, #0x18]
0000d3d8 b.le     #0xda2c
0000d3dc ldr      x8, [x20]
0000d3e0 mov      x10, x14
0000d3e4 add      x14, x8, #8
0000d3e8 str      x14, [x20]
0000d3ec mov      x14, x10
0000d3f0 mov      x6, xzr
0000d3f4 str      x6, [sp, #0x60]
0000d3f8 ldr      x20, [x8]
0000d3fc cbz      x20, #0xd5a8
0000d400 mov      x0, x20
0000d404 sub      x28, x29, #0x80
0000d408 mov      x19, x4
0000d40c mov      x21, x17
0000d410 mov      x24, x14
0000d414 bl       #0xe164
0000d418 mov      w26, w0
0000d41c add      x0, x20, #4
0000d420 bl       #0xe110
0000d424 str      w0, [sp, #0x94]
0000d428 add      x0, x20, #6
0000d42c bl       #0xe110
0000d430 ldr      w9, [sp, #0x94]
0000d434 adrp     x3, #0x12000
0000d438 ldrb     w1, [x20, #0xf]
0000d43c and      w6, w0, #0xffff
0000d440 ldrb     w7, [x20, #8]
0000d444 mov      x2, xzr
0000d448 ldrb     w14, [x20, #9]
0000d44c sub      x0, x29, #0x80
0000d450 ldrb     w15, [x20, #0xa]
0000d454 and      w5, w9, #0xffff
0000d458 ldrb     w16, [x20, #0xb]
0000d45c add      x3, x3, #0x5d1
0000d460 ldrb     w17, [x20, #0xc]
0000d464 mov      w4, w26
0000d468 ldrb     w10, [x20, #0xd]
0000d46c ldrb     w13, [x20, #0xe]
0000d470 str      w1, [sp, #0x30]
0000d474 mov      w1, #0x26
0000d478 str      w17, [sp, #0x18]
0000d47c str      w10, [sp, #0x20]
0000d480 str      w13, [sp, #0x28]
0000d484 str      w16, [sp, #0x10]
0000d488 str      w15, [sp, #8]
0000d48c str      w14, [sp]
0000d490 bl       #0xdb00
0000d494 mov      x14, x24
0000d498 mov      x17, x21
0000d49c mov      x4, x19
0000d4a0 b        #0xd58c
0000d4a4 ldr      x9, [sp, #0x58]
0000d4a8 ldrsw    x7, [x9, #0x18]
0000d4ac tbz      w7, #0x1f, #0xd4c8
0000d4b0 mov      x13, x17
0000d4b4 add      w17, w7, #8
0000d4b8 cmp      w17, #0
0000d4bc str      w17, [x9, #0x18]
0000d4c0 mov      x17, x13
0000d4c4 b.le     #0xda38
0000d4c8 ldr      x8, [x9]
0000d4cc mov      x21, x4
0000d4d0 add      x16, x8, #8
0000d4d4 str      x16, [x9]
0000d4d8 ldur     x16, [x29, #-0x98]
0000d4dc str      xzr, [sp, #0x60]
0000d4e0 ldr      x4, [x8]
0000d4e4 mov      x19, x17
0000d4e8 tbnz     x4, #0x3f, #0xd5c4
0000d4ec mov      x9, x4
0000d4f0 cmp      x4, #5
0000d4f4 b.ls     #0xd5d8
0000d4f8 b        #0xd5f0
0000d4fc ldr      x8, [sp, #0x58]
0000d500 ldrsw    x6, [x8, #0x18]
0000d504 tbz      w6, #0x1f, #0xd51c
0000d508 add      w16, w6, #8
0000d50c cmp      w16, #0
0000d510 str      w16, [x8, #0x18]
0000d514 ldur     x16, [x29, #-0x98]
0000d518 b.le     #0xda50
0000d51c mov      x10, x8
0000d520 ldr      x8, [x10]
0000d524 add      x15, x8, #8
0000d528 str      x15, [x10]
0000d52c mov      x7, xzr
0000d530 str      x7, [sp, #0x60]
0000d534 ldr      x8, [x8]
0000d538 cbz      x8, #0xd63c
0000d53c mov      x20, x4
0000d540 ldrb     w4, [x8, #2]
0000d544 ldrb     w5, [x8, #3]
0000d548 mov      w2, #0x26
0000d54c ldrh     w6, [x8]
0000d550 adrp     x3, #0x12000
0000d554 ldrb     w7, [x8, #4]
0000d558 sub      x0, x29, #0x80
0000d55c ldrb     w9, [x8, #5]
0000d560 mov      w1, w2
0000d564 mov      x2, xzr
0000d568 add      x3, x3, #0x60e
0000d56c sub      x28, x29, #0x80
0000d570 str      w9, [sp]
0000d574 mov      x19, x17
0000d578 mov      x21, x14
0000d57c bl       #0xdb00
0000d580 mov      x14, x21
0000d584 mov      x17, x19
0000d588 mov      x4, x20
0000d58c ldur     x16, [x29, #-0x98]
0000d590 ldr      x30, [sp, #0x98]
0000d594 str      wzr, [sp, #0x94]
0000d598 mov      w26, wzr
0000d59c mov      w24, wzr
0000d5a0 str      xzr, [sp, #0x88]
0000d5a4 b        #0xd654
0000d5a8 adrp     x28, #0x12000
0000d5ac str      wzr, [sp, #0x94]
0000d5b0 mov      w26, wzr
0000d5b4 str      xzr, [sp, #0x88]
0000d5b8 mov      w24, wzr
0000d5bc add      x28, x28, #0x5c5
0000d5c0 b        #0xd654
0000d5c4 and      x8, x4, #0x7fffffffffffffff
0000d5c8 sub      x17, x8, #1
0000d5cc cmp      x17, #0x20
0000d5d0 b.hi     #0xd5f0
0000d5d4 add      x9, x8, #5
0000d5d8 adrp     x2, #0x12000
0000d5dc add      x2, x2, #0x638
0000d5e0 sub      x3, x29, #0x80
0000d5e4 ldr      x28, [x2, x9, lsl #3]
0000d5e8 cmp      x28, x3
0000d5ec b.ne     #0xd620
0000d5f0 mov      w30, #0x26
0000d5f4 adrp     x3, #0x12000
0000d5f8 sub      x0, x29, #0x80
0000d5fc mov      w1, w30
0000d600 mov      x2, xzr
0000d604 add      x3, x3, #0x628
0000d608 sub      x28, x29, #0x80
0000d60c mov      x20, x14
0000d610 bl       #0xdb00
0000d614 ldur     x16, [x29, #-0x98]
0000d618 mov      x14, x20
0000d61c ldr      x30, [sp, #0x98]
0000d620 str      wzr, [sp, #0x94]
0000d624 mov      w26, wzr
0000d628 mov      w24, wzr
0000d62c str      xzr, [sp, #0x88]
0000d630 mov      x4, x21
0000d634 mov      x17, x19
0000d638 b        #0xd654
0000d63c adrp     x28, #0x12000
0000d640 str      wzr, [sp, #0x94]
0000d644 mov      w26, wzr
0000d648 str      xzr, [sp, #0x88]
0000d64c mov      w24, wzr
0000d650 add      x28, x28, #0x602
0000d654 tst      x17, #0x400
0000d658 mov      w9, #0xff
0000d65c mov      w10, #0xffff
0000d660 csel     x20, x10, x9, ne
0000d664 ubfx     x19, x17, #0xa, #1
0000d668 tbnz     w17, #0xc, #0xd6dc
0000d66c mov      x22, xzr
0000d670 and      x11, x17, #0x400
0000d674 add      x19, x19, #1
0000d678 add      x12, x28, #1
0000d67c b        #0xd688
0000d680 add      x22, x22, #1
0000d684 add      x12, x12, x19
0000d688 ldurb    w9, [x12, #-1]
0000d68c cbz      x9, #0xd6a8
0000d690 mov      w6, w17
0000d694 tbz      w6, #0xb, #0xd6a0
0000d698 cmp      x22, x14
0000d69c b.hs     #0xd6e0
0000d6a0 ldrb     w8, [x12]
0000d6a4 b        #0xd6cc
0000d6a8 cbz      x11, #0xd6e0
0000d6ac tst      x17, #0x800
0000d6b0 ldrb     w8, [x12]
0000d6b4 cset     w10, eq
0000d6b8 cmp      x22, x14
0000d6bc cset     w13, lo
0000d6c0 cbz      w8, #0xd6e0
0000d6c4 orr      w5, w10, w13
0000d6c8 tbz      w5, #0, #0xd6e0
0000d6cc bfi      w9, w8, #8, #8
0000d6d0 and      x5, x9, x20
0000d6d4 cbnz     x5, #0xd680
0000d6d8 b        #0xd6e0
0000d6dc mvn      x19, x19
0000d6e0 cmp      x14, x22
0000d6e4 stur     x17, [x29, #-0x98]
0000d6e8 mov      w11, #0x201
0000d6ec csel     x5, x22, x14, lo
0000d6f0 and      x9, x17, x11
0000d6f4 cmp      x9, #0x200
0000d6f8 str      x5, [sp, #0x68]
0000d6fc str      x9, [sp, #0x70]
0000d700 b.ne     #0xd744
0000d704 ldr      x7, [sp, #0x78]
0000d708 sub      x2, x7, x5
0000d70c madd     x4, x2, x30, x4
0000d710 cbz      x16, #0xd744
0000d714 tbnz     w17, #0xd, #0xd744
0000d718 ldr      x1, [sp, #0xa0]
0000d71c mov      w3, #0x20
0000d720 mov      x0, x16
0000d724 mov      x21, x4
0000d728 mov      x4, x30
0000d72c bl       #0xc86c
0000d730 ldur     x17, [x29, #-0x98]
0000d734 mov      x4, x21
0000d738 ldr      x5, [sp, #0x68]
0000d73c mov      x16, x0
0000d740 ldr      x30, [sp, #0x98]
0000d744 cbz      w26, #0xd7dc
0000d748 ldr      w6, [sp, #0x94]
0000d74c cbz      w6, #0xd790
0000d750 add      x4, x4, x30
0000d754 tbnz     w17, #0xd, #0xd790
0000d758 cbz      x16, #0xd790
0000d75c ldr      w3, [sp, #0x94]
0000d760 mov      w2, #1
0000d764 ldr      x1, [sp, #0xa0]
0000d768 mov      x0, x16
0000d76c mov      x21, x4
0000d770 mov      x4, x30
0000d774 and      w3, w3, #0xff
0000d778 bl       #0xc86c
0000d77c ldur     x17, [x29, #-0x98]
0000d780 mov      x4, x21
0000d784 ldr      x5, [sp, #0x68]
0000d788 mov      x16, x0
0000d78c ldr      x30, [sp, #0x98]
0000d790 sub      x2, x5, x22
0000d794 madd     x4, x2, x30, x4
0000d798 tbnz     w17, #0xd, #0xd7d0
0000d79c cbz      x16, #0xd7d0
0000d7a0 ldr      x1, [sp, #0xa0]
0000d7a4 mov      w3, #0x30
0000d7a8 mov      x0, x16
0000d7ac mov      x21, x24
0000d7b0 mov      x24, x4
0000d7b4 mov      x4, x30
0000d7b8 bl       #0xc86c
0000d7bc ldur     x17, [x29, #-0x98]
0000d7c0 mov      x4, x24
0000d7c4 ldr      x30, [sp, #0x98]
0000d7c8 mov      x24, x21
0000d7cc mov      x16, x0
0000d7d0 ldr      w1, [sp, #0x94]
0000d7d4 cbnz     w1, #0xd85c
0000d7d8 b        #0xd864
0000d7dc sub      x26, x5, x22
0000d7e0 tbnz     w17, #0xd, #0xd814
0000d7e4 cbz      x16, #0xd814
0000d7e8 ldr      x1, [sp, #0xa0]
0000d7ec mov      w3, #0x20
0000d7f0 mov      x0, x16
0000d7f4 mov      x2, x26
0000d7f8 mov      x21, x4
0000d7fc mov      x4, x30
0000d800 bl       #0xc86c
0000d804 ldur     x17, [x29, #-0x98]
0000d808 mov      x4, x21
0000d80c ldr      x30, [sp, #0x98]
0000d810 mov      x16, x0
0000d814 madd     x4, x26, x30, x4
0000d818 ldr      w7, [sp, #0x94]
0000d81c cbz      w7, #0xd864
0000d820 add      x4, x4, x30
0000d824 tbnz     w17, #0xd, #0xd85c
0000d828 cbz      x16, #0xd85c
0000d82c ldr      w5, [sp, #0x94]
0000d830 mov      w2, #1
0000d834 ldr      x1, [sp, #0xa0]
0000d838 mov      x0, x16
0000d83c mov      x21, x4
0000d840 mov      x4, x30
0000d844 and      w3, w5, #0xff
0000d848 bl       #0xc86c
0000d84c ldur     x17, [x29, #-0x98]
0000d850 mov      x4, x21
0000d854 ldr      x30, [sp, #0x98]
0000d858 mov      x16, x0
0000d85c mov      w21, #1
0000d860 b        #0xd868
0000d864 mov      x21, xzr
0000d868 mov      x0, x16
0000d86c mov      x16, x0
0000d870 cmp      x21, x22
0000d874 b.hs     #0xd968
0000d878 ldrb     w10, [x28]
0000d87c cbnz     x10, #0xd890
0000d880 cmp      x19, #2
0000d884 b.lt     #0xd968
0000d888 ldrb     w7, [x28, #1]
0000d88c cbz      w7, #0xd968
0000d890 mov      w11, w17
0000d894 add      x4, x4, x30
0000d898 tbnz     w11, #0xd, #0xd8dc
0000d89c cbz      x16, #0xd8dc
0000d8a0 ldrb     w12, [x28, #1]
0000d8a4 mov      w2, #1
0000d8a8 ldr      x1, [sp, #0xa0]
0000d8ac mov      x0, x16
0000d8b0 mov      x26, x24
0000d8b4 mov      x24, x4
0000d8b8 bfi      w10, w12, #8, #0x18
0000d8bc and      x3, x10, x20
0000d8c0 mov      x4, x30
0000d8c4 bl       #0xc86c
0000d8c8 ldur     x17, [x29, #-0x98]
0000d8cc mov      x4, x24
0000d8d0 ldr      x30, [sp, #0x98]
0000d8d4 mov      x24, x26
0000d8d8 mov      x16, x0
0000d8dc add      x28, x28, x19
0000d8e0 add      x21, x21, #1
0000d8e4 cbz      w24, #0xd870
0000d8e8 ldr      x10, [sp, #0x88]
0000d8ec mov      x0, x16
0000d8f0 add      x10, x10, #1
0000d8f4 cmp      x10, #3
0000d8f8 str      x10, [sp, #0x88]
0000d8fc b.ne     #0xd86c
0000d900 add      x21, x21, #1
0000d904 str      xzr, [sp, #0x88]
0000d908 mov      x0, x16
0000d90c cmp      x21, x22
0000d910 b.hs     #0xd86c
0000d914 add      x4, x30, x4
0000d918 str      xzr, [sp, #0x88]
0000d91c mov      w8, w17
0000d920 mov      x0, x16
0000d924 tbnz     w8, #0xd, #0xd86c
0000d928 mov      x0, x16
0000d92c cbz      x16, #0xd86c
0000d930 ldr      x1, [sp, #0xa0]
0000d934 mov      w2, #1
0000d938 mov      x0, x16
0000d93c mov      w3, #0x2c
0000d940 mov      x26, x24
0000d944 mov      x24, x4
0000d948 mov      x4, x30
0000d94c bl       #0xc86c
0000d950 ldur     x17, [x29, #-0x98]
0000d954 mov      x4, x24
0000d958 ldr      x30, [sp, #0x98]
0000d95c mov      x24, x26
0000d960 str      xzr, [sp, #0x88]
0000d964 b        #0xd86c
0000d968 ldr      x20, [sp, #0x70]
0000d96c cmp      x20, #0x201
0000d970 b.ne     #0xd9c0
0000d974 ldp      x0, x26, [sp, #0x78]
0000d978 ldr      x1, [sp, #0x68]
0000d97c adrp     x24, #0x11000
0000d980 add      x24, x24, #0xf48
0000d984 mov      w19, #0xa
0000d988 sub      x2, x0, x1
0000d98c madd     x4, x2, x30, x4
0000d990 tbnz     w17, #0xd, #0xd9d0
0000d994 cbz      x16, #0xd9d0
0000d998 ldr      x1, [sp, #0xa0]
0000d99c mov      w3, #0x20
0000d9a0 mov      x0, x16
0000d9a4 mov      x22, x4
0000d9a8 mov      x4, x30
0000d9ac bl       #0xc86c
0000d9b0 ldr      x30, [sp, #0x98]
0000d9b4 mov      x4, x22
0000d9b8 mov      x16, x0
0000d9bc b        #0xd9d0
0000d9c0 ldr      x26, [sp, #0x80]
0000d9c4 adrp     x24, #0x11000
0000d9c8 add      x24, x24, #0xf48
0000d9cc mov      w19, #0xa
0000d9d0 add      x20, x27, x23
0000d9d4 cmp      x23, #1
0000d9d8 ldrb     w17, [x20]
0000d9dc b.ne     #0xd9e8
0000d9e0 mov      w7, wzr
0000d9e4 b        #0xd9f0
0000d9e8 ldrb     w14, [x20, #1]
0000d9ec lsl      w7, w14, #8
0000d9f0 orr      w8, w7, w17
0000d9f4 ldur     x17, [x29, #-0x98]
0000d9f8 b        #0xda5c
0000d9fc ldr      x19, [x7, #8]
0000da00 add      x8, x19, x2
0000da04 b        #0xcfd4
0000da08 ldr      x2, [x5, #8]
0000da0c add      x20, x2, x0
0000da10 b        #0xd0bc
0000da14 ldr      x22, [x6, #8]
0000da18 add      x22, x22, x1
0000da1c b        #0xd0ec
0000da20 ldr      x10, [x28, #8]
0000da24 add      x8, x10, x3
0000da28 b        #0xd398
0000da2c ldr      x12, [x20, #8]
0000da30 add      x8, x12, x5
0000da34 b        #0xd3f0
0000da38 mov      x21, x4
0000da3c mov      x4, x14
0000da40 ldr      x14, [x9, #8]
0000da44 add      x8, x14, x7
0000da48 mov      x14, x4
0000da4c b        #0xd4dc
0000da50 ldr      x13, [x8, #8]
0000da54 add      x8, x13, x6
0000da58 b        #0xd52c
0000da5c sxtw     x14, w8
0000da60 and      x9, x26, x14
0000da64 stur     x9, [x29, #-0x88]
0000da68 cbnz     x9, #0xcb7c
0000da6c tbnz     w17, #0xd, #0xdaa8
0000da70 cbz      x16, #0xdae0
0000da74 ldr      x3, [sp, #0xa0]
0000da78 mov      w2, #1
0000da7c mov      x0, x16
0000da80 mov      x4, x30
0000da84 mov      x26, x30
0000da88 add      x1, x3, x30
0000da8c mov      x3, xzr
0000da90 mov      x25, x16
0000da94 bl       #0xc86c
0000da98 ldr      x6, [sp, #0x48]
0000da9c sub      x23, x25, x6
0000daa0 sdiv     x0, x23, x26
0000daa4 b        #0xdaac
0000daa8 udiv     x0, x4, x30
0000daac adrp     x23, #0x13000
0000dab0 ldur     x25, [x29, #-0x58]
0000dab4 ldr      x23, [x23]
0000dab8 sub      x27, x23, x25
0000dabc cbnz     x27, #0xdafc
0000dac0 ldp      x29, x30, [sp, #0x140]
0000dac4 ldp      x20, x19, [sp, #0x130]
0000dac8 ldp      x22, x21, [sp, #0x120]
0000dacc ldp      x24, x23, [sp, #0x110]
0000dad0 ldp      x26, x25, [sp, #0x100]
0000dad4 ldp      x28, x27, [sp, #0xf0]
0000dad8 add      sp, sp, #0x150
0000dadc ret      
0000dae0 adrp     x0, #0x12000
0000dae4 adrp     x2, #0xf000
0000dae8 add      x0, x0, #0x2a5
0000daec mov      w1, #0x4c7
0000daf0 add      x2, x2, #0x81c
0000daf4 bl       #0x1fa8
0000daf8 b        #0xdaf8
0000dafc bl       #0x10d8
0000db00 sub      sp, sp, #0xf0
0000db04 stp      x29, x30, [sp, #0xe0]
0000db08 add      x29, sp, #0xe0
0000db0c mov      w10, #-0x80
0000db10 stp      q6, q7, [sp, #0x60]
0000db14 mov      w12, #-0x20
0000db18 stp      q4, q5, [sp, #0x40]
0000db1c mov      x8, sp
0000db20 stp      q2, q3, [sp, #0x20]
0000db24 sub      x9, x29, #0x60
0000db28 stp      q0, q1, [sp]
0000db2c stp      w12, w10, [x29, #-8]
0000db30 add      x8, x8, #0x80
0000db34 ldur     x10, [x29, #-8]
0000db38 add      x9, x9, #0x20
0000db3c stp      x4, x5, [x29, #-0x60]
0000db40 add      x11, x29, #0x10
0000db44 sub      x4, x29, #0x40
0000db48 stp      x6, x7, [x29, #-0x50]
0000db4c mov      x5, xzr
0000db50 stp      x9, x8, [x29, #-0x18]
0000db54 stp      x9, x8, [x29, #-0x38]
0000db58 stur     x11, [x29, #-0x40]
0000db5c stp      x10, x11, [x29, #-0x28]
0000db60 bl       #0xc8f8
0000db64 ldp      x29, x30, [sp, #0xe0]
0000db68 add      sp, sp, #0xf0
0000db6c ret      
0000db70 stp      x29, x30, [sp, #-0x10]!
0000db74 mov      x29, sp
0000db78 cbz      x0, #0xdb88
0000db7c cbz      x1, #0xdba4
0000db80 ldp      x29, x30, [sp], #0x10
0000db84 b        #0xe0c0
0000db88 adrp     x0, #0x12000
0000db8c adrp     x2, #0x12000
0000db90 add      x0, x0, #0x770
0000db94 mov      w1, #0x59
0000db98 add      x2, x2, #0x7b8
0000db9c bl       #0x1fa8
0000dba0 b        #0xdba0
0000dba4 adrp     x0, #0x12000
0000dba8 adrp     x2, #0x12000
0000dbac add      x0, x0, #0x770
0000dbb0 mov      w1, #0x5a
0000dbb4 add      x2, x2, #0x7ce
0000dbb8 bl       #0x1fa8
0000dbbc b        #0xdbbc
0000dbc0 cbz      x1, #0xdbfc
0000dbc4 stp      x29, x30, [sp, #-0x10]!
0000dbc8 mov      x29, sp
0000dbcc ldp      x29, x30, [sp], #0x10
0000dbd0 cbz      x0, #0xdc00
0000dbd4 neg      x8, x0
0000dbd8 cmp      x8, x1
0000dbdc b.hs     #0xdc1c
0000dbe0 adrp     x0, #0x12000
0000dbe4 adrp     x2, #0x12000
0000dbe8 add      x0, x0, #0x874
0000dbec mov      w1, #0x36
0000dbf0 add      x2, x2, #0x816
0000dbf4 bl       #0x1fa8
0000dbf8 b        #0xdbf8
0000dbfc ret      
0000dc00 adrp     x0, #0x12000
0000dc04 adrp     x2, #0xf000
0000dc08 add      x0, x0, #0x874
0000dc0c mov      w1, #0x35
0000dc10 add      x2, x2, #0x81c
0000dc14 bl       #0x1fa8
0000dc18 b        #0xdc18
0000dc1c b        #0xdcc4
0000dc20 cbz      x2, #0xdc90
0000dc24 stp      x29, x30, [sp, #-0x10]!
0000dc28 mov      x29, sp
0000dc2c sub      x8, x2, #1
0000dc30 mvn      x9, x0
0000dc34 cmp      x8, x9
0000dc38 ldp      x29, x30, [sp], #0x10
0000dc3c b.ls     #0xdc5c
0000dc40 adrp     x0, #0x12000
0000dc44 adrp     x2, #0x12000
0000dc48 add      x0, x0, #0x885
0000dc4c add      x2, x2, #0x896
0000dc50 mov      w1, #0x38
0000dc54 bl       #0x1fa8
0000dc58 b        #0xdc58
0000dc5c mvn      x10, x1
0000dc60 cmp      x8, x10
0000dc64 b.ls     #0xdc84
0000dc68 adrp     x0, #0x12000
0000dc6c adrp     x2, #0x12000
0000dc70 add      x0, x0, #0x885
0000dc74 mov      w1, #0x39
0000dc78 add      x2, x2, #0x8d9
0000dc7c bl       #0x1fa8
0000dc80 b        #0xdc80
0000dc84 cmp      x0, x1
0000dc88 b.eq     #0xdc90
0000dc8c b        #0xe00c
0000dc90 ret      
0000dc94 udf      #0
0000dc98 udf      #0
0000dc9c udf      #0
0000dca0 dup      v0.8h, w2
0000dca4 lsl      x1, x1, #1
0000dca8 b        #0xdcd0
0000dcac dup      v0.4s, w2
0000dcb0 lsl      x1, x1, #2
0000dcb4 b        #0xdcd0
0000dcb8 dup      v0.2d, x2
0000dcbc lsl      x1, x1, #3
0000dcc0 b        #0xdcd0
0000dcc4 movi     v0.16b, #0
0000dcc8 b        #0xdcd0
0000dccc dup      v0.16b, w2
0000dcd0 add      x4, x0, x1
0000dcd4 mov      x2, v0.d[0]
0000dcd8 cmp      x1, #0x60
0000dcdc b.hi     #0xdd54
0000dce0 cmp      x1, #0x10
0000dce4 b.hs     #0xdd20
0000dce8 tbz      w1, #3, #0xdcfc
0000dcec str      x2, [x0]
0000dcf0 stur     x2, [x4, #-8]
0000dcf4 ret      
0000dcf8 nop      
0000dcfc tbz      w1, #2, #0xdd0c
0000dd00 str      w2, [x0]
0000dd04 stur     w2, [x4, #-4]
0000dd08 ret      
0000dd0c cbz      x1, #0xdd1c
0000dd10 strb     w2, [x0]
0000dd14 tbz      w1, #1, #0xdd1c
0000dd18 sturh    w2, [x4, #-2]
0000dd1c ret      
0000dd20 str      q0, [x0]
0000dd24 tbnz     w1, #6, #0xdd40
0000dd28 stur     q0, [x4, #-0x10]
0000dd2c tbz      w1, #5, #0xdd38
0000dd30 str      q0, [x0, #0x10]
0000dd34 stur     q0, [x4, #-0x20]
0000dd38 ret      
0000dd3c nop      
0000dd40 str      q0, [x0, #0x10]
0000dd44 stp      q0, q0, [x0, #0x20]
0000dd48 stp      q0, q0, [x4, #-0x20]
0000dd4c ret      
0000dd50 nop      
0000dd54 and      x3, x0, #0xfffffffffffffff0
0000dd58 str      q0, [x0]
0000dd5c cmp      x1, #0x100
0000dd60 ccmp     x2, #0, #0, hs
0000dd64 b.eq     #0xdd90
0000dd68 sub      x1, x4, x3
0000dd6c add      x3, x3, #0x10
0000dd70 sub      x1, x1, #0x50
0000dd74 stp      q0, q0, [x3], #0x40
0000dd78 stp      q0, q0, [x3, #-0x20]
0000dd7c subs     x1, x1, #0x40
0000dd80 b.hi     #0xdd74
0000dd84 stp      q0, q0, [x4, #-0x40]
0000dd88 stp      q0, q0, [x4, #-0x20]
0000dd8c ret      
0000dd90 mrs      x5, dczid_el0
0000dd94 tbnz     w5, #4, #0xdd68
0000dd98 and      w5, w5, #0xf
0000dd9c cmp      w5, #4
0000dda0 b.ne     #0xddf0
0000dda4 str      q0, [x3, #0x10]
0000dda8 stp      q0, q0, [x3, #0x20]
0000ddac and      x3, x3, #0xffffffffffffffc0
0000ddb0 stp      q0, q0, [x3, #0x40]
0000ddb4 stp      q0, q0, [x3, #0x60]
0000ddb8 sub      x1, x4, x3
0000ddbc sub      x1, x1, #0x100
0000ddc0 add      x3, x3, #0x80
0000ddc4 nop      
0000ddc8 dc       zva, x3
0000ddcc add      x3, x3, #0x40
0000ddd0 subs     x1, x1, #0x40
0000ddd4 b.hi     #0xddc8
0000ddd8 stp      q0, q0, [x3]
0000dddc stp      q0, q0, [x3, #0x20]
0000dde0 stp      q0, q0, [x4, #-0x40]
0000dde4 stp      q0, q0, [x4, #-0x20]
0000dde8 ret      
0000ddec nop      
0000ddf0 cmp      w5, #5
0000ddf4 b.ne     #0xde3c
0000ddf8 str      q0, [x3, #0x10]
0000ddfc stp      q0, q0, [x3, #0x20]
0000de00 stp      q0, q0, [x3, #0x40]
0000de04 stp      q0, q0, [x3, #0x60]
0000de08 and      x3, x3, #0xffffffffffffff80
0000de0c sub      x1, x4, x3
0000de10 sub      x1, x1, #0x100
0000de14 add      x3, x3, #0x80
0000de18 dc       zva, x3
0000de1c add      x3, x3, #0x80
0000de20 subs     x1, x1, #0x80
0000de24 b.hi     #0xde18
0000de28 stp      q0, q0, [x4, #-0x80]
0000de2c stp      q0, q0, [x4, #-0x60]
0000de30 stp      q0, q0, [x4, #-0x40]
0000de34 stp      q0, q0, [x4, #-0x20]
0000de38 ret      
0000de3c mov      w6, #4
0000de40 lsl      w7, w6, w5
0000de44 add      x5, x7, #0x40
0000de48 cmp      x1, x5
0000de4c b.lo     #0xdd68
0000de50 sub      x6, x7, #1
0000de54 add      x5, x3, x7
0000de58 add      x3, x3, #0x10
0000de5c subs     x1, x5, x3
0000de60 bic      x5, x5, x6
0000de64 b.eq     #0xde78
0000de68 stp      q0, q0, [x3], #0x40
0000de6c stp      q0, q0, [x3, #-0x20]
0000de70 subs     x1, x1, #0x40
0000de74 b.hi     #0xde68
0000de78 mov      x3, x5
0000de7c sub      x1, x4, x5
0000de80 subs     x1, x1, x7
0000de84 b.lo     #0xde98
0000de88 dc       zva, x3
0000de8c add      x3, x3, x7
0000de90 subs     x1, x1, x7
0000de94 b.hs     #0xde88
0000de98 add      x1, x1, x7
0000de9c b        #0xdd7c
0000dea0 prfm     pldl1keep, [x1]
0000dea4 add      x4, x1, x2
0000dea8 add      x5, x0, x2
0000deac cmp      x2, #0x10
0000deb0 b.ls     #0xdef0
0000deb4 cmp      x2, #0x60
0000deb8 b.hi     #0xdf80
0000debc sub      x9, x2, #1
0000dec0 ldp      x6, x7, [x1]
0000dec4 tbnz     w9, #6, #0xdf50
0000dec8 ldp      x12, x13, [x4, #-0x10]
0000decc tbz      w9, #5, #0xdee0
0000ded0 ldp      x8, x9, [x1, #0x10]
0000ded4 ldp      x10, x11, [x4, #-0x20]
0000ded8 stp      x8, x9, [x0, #0x10]
0000dedc stp      x10, x11, [x5, #-0x20]
0000dee0 stp      x6, x7, [x0]
0000dee4 stp      x12, x13, [x5, #-0x10]
0000dee8 ret      
0000deec nop      
0000def0 cmp      x2, #8
0000def4 b.lo     #0xdf10
0000def8 ldr      x6, [x1]
0000defc ldur     x7, [x4, #-8]
0000df00 str      x6, [x0]
0000df04 stur     x7, [x5, #-8]
0000df08 ret      
0000df0c nop      
0000df10 tbz      w2, #2, #0xdf28
0000df14 ldr      w6, [x1]
0000df18 ldur     w7, [x4, #-4]
0000df1c str      w6, [x0]
0000df20 stur     w7, [x5, #-4]
0000df24 ret      
0000df28 cbz      x2, #0xdf48
0000df2c lsr      x9, x2, #1
0000df30 ldrb     w6, [x1]
0000df34 ldurb    w7, [x4, #-1]
0000df38 ldrb     w8, [x1, x9]
0000df3c strb     w6, [x0]
0000df40 strb     w8, [x0, x9]
0000df44 sturb    w7, [x5, #-1]
0000df48 ret      
0000df4c nop      
0000df50 ldp      x8, x9, [x1, #0x10]
0000df54 ldp      x10, x11, [x1, #0x20]
0000df58 ldp      x12, x13, [x1, #0x30]
0000df5c ldp      x14, x15, [x4, #-0x20]
0000df60 ldp      x4, x3, [x4, #-0x10]
0000df64 stp      x6, x7, [x0]
0000df68 stp      x8, x9, [x0, #0x10]
0000df6c stp      x10, x11, [x0, #0x20]
0000df70 stp      x12, x13, [x0, #0x30]
0000df74 stp      x14, x15, [x5, #-0x20]
0000df78 stp      x4, x3, [x5, #-0x10]
0000df7c ret      
0000df80 and      x9, x0, #0xf
0000df84 and      x3, x0, #0xfffffffffffffff0
0000df88 ldp      x12, x13, [x1]
0000df8c sub      x1, x1, x9
0000df90 add      x2, x2, x9
0000df94 ldp      x6, x7, [x1, #0x10]
0000df98 stp      x12, x13, [x0]
0000df9c ldp      x8, x9, [x1, #0x20]
0000dfa0 ldp      x10, x11, [x1, #0x30]
0000dfa4 ldp      x12, x13, [x1, #0x40]!
0000dfa8 subs     x2, x2, #0x90
0000dfac b.ls     #0xdfd8
0000dfb0 stp      x6, x7, [x3, #0x10]
0000dfb4 ldp      x6, x7, [x1, #0x10]
0000dfb8 stp      x8, x9, [x3, #0x20]
0000dfbc ldp      x8, x9, [x1, #0x20]
0000dfc0 stp      x10, x11, [x3, #0x30]
0000dfc4 ldp      x10, x11, [x1, #0x30]
0000dfc8 stp      x12, x13, [x3, #0x40]!
0000dfcc ldp      x12, x13, [x1, #0x40]!
0000dfd0 subs     x2, x2, #0x40
0000dfd4 b.hi     #0xdfb0
0000dfd8 ldp      x14, x15, [x4, #-0x40]
0000dfdc stp      x6, x7, [x3, #0x10]
0000dfe0 ldp      x6, x7, [x4, #-0x30]
0000dfe4 stp      x8, x9, [x3, #0x20]
0000dfe8 ldp      x8, x9, [x4, #-0x20]
0000dfec stp      x10, x11, [x3, #0x30]
0000dff0 ldp      x10, x11, [x4, #-0x10]
0000dff4 stp      x12, x13, [x3, #0x40]
0000dff8 stp      x14, x15, [x5, #-0x40]
0000dffc stp      x6, x7, [x5, #-0x30]
0000e000 stp      x8, x9, [x5, #-0x20]
0000e004 stp      x10, x11, [x5, #-0x10]
0000e008 ret      
0000e00c sub      x3, x0, x1
0000e010 cmp      x2, #0x60
0000e014 ccmp     x3, x2, #2, hi
0000e018 b.hs     #0xdea0
0000e01c cbz      x3, #0xe0b4
0000e020 add      x5, x0, x2
0000e024 add      x4, x1, x2
0000e028 and      x3, x5, #0xf
0000e02c ldp      x12, x13, [x4, #-0x10]
0000e030 sub      x4, x4, x3
0000e034 sub      x2, x2, x3
0000e038 ldp      x6, x7, [x4, #-0x10]
0000e03c stp      x12, x13, [x5, #-0x10]
0000e040 ldp      x8, x9, [x4, #-0x20]
0000e044 ldp      x10, x11, [x4, #-0x30]
0000e048 ldp      x12, x13, [x4, #-0x40]!
0000e04c sub      x5, x5, x3
0000e050 subs     x2, x2, #0x80
0000e054 b.ls     #0xe084
0000e058 nop      
0000e05c stp      x6, x7, [x5, #-0x10]
0000e060 ldp      x6, x7, [x4, #-0x10]
0000e064 stp      x8, x9, [x5, #-0x20]
0000e068 ldp      x8, x9, [x4, #-0x20]
0000e06c stp      x10, x11, [x5, #-0x30]
0000e070 ldp      x10, x11, [x4, #-0x30]
0000e074 stp      x12, x13, [x5, #-0x40]!
0000e078 ldp      x12, x13, [x4, #-0x40]!
0000e07c subs     x2, x2, #0x40
0000e080 b.hi     #0xe05c
0000e084 ldp      x14, x15, [x1, #0x30]
0000e088 stp      x6, x7, [x5, #-0x10]
0000e08c ldp      x6, x7, [x1, #0x20]
0000e090 stp      x8, x9, [x5, #-0x20]
0000e094 ldp      x8, x9, [x1, #0x10]
0000e098 stp      x10, x11, [x5, #-0x30]
0000e09c ldp      x10, x11, [x1]
0000e0a0 stp      x12, x13, [x5, #-0x40]
0000e0a4 stp      x14, x15, [x0, #0x30]
0000e0a8 stp      x6, x7, [x0, #0x20]
0000e0ac stp      x8, x9, [x0, #0x10]
0000e0b0 stp      x10, x11, [x0]
0000e0b4 ret      
0000e0b8 udf      #0
0000e0bc udf      #0
0000e0c0 mov      x2, xzr
0000e0c4 ldp      x3, x4, [x0]
0000e0c8 cbz      x1, #0xe0d0
0000e0cc ldp      x1, x2, [x1]
0000e0d0 cmp      x1, x3
0000e0d4 ccmp     x2, x4, #0, eq
0000e0d8 cset     w0, eq
0000e0dc ret      
0000e0e0 cbz      w1, #0xe0e8
0000e0e4 b        #0x21ec
0000e0e8 stp      x29, x30, [sp, #-0x10]!
0000e0ec mov      x29, sp
0000e0f0 adrp     x0, #0x12000
0000e0f4 adrp     x2, #0x10000
0000e0f8 add      x0, x0, #0x917
0000e0fc mov      w1, #0x2f
0000e100 add      x2, x2, #0x2bb
0000e104 bl       #0x1fa8
0000e108 ldp      x29, x30, [sp], #0x10
0000e10c b        #0xe10c
0000e110 sub      sp, sp, #0x20
0000e114 stp      x29, x30, [sp, #0x10]
0000e118 add      x29, sp, #0x10
0000e11c cbz      x0, #0xe148
0000e120 ldrb     w8, [x0]
0000e124 sturb    w8, [x29, #-4]
0000e128 ldrb     w9, [x0, #1]
0000e12c strb     w9, [sp, #8]
0000e130 ldurb    w0, [x29, #-4]
0000e134 ldrb     w10, [sp, #8]
0000e138 ldp      x29, x30, [sp, #0x10]
0000e13c bfi      w0, w10, #8, #8
0000e140 add      sp, sp, #0x20
0000e144 ret      
0000e148 adrp     x0, #0x12000
0000e14c adrp     x2, #0xf000
0000e150 add      x0, x0, #0x92c
0000e154 mov      w1, #0x2a
0000e158 add      x2, x2, #0x81c
0000e15c bl       #0x1fa8
0000e160 b        #0xe160
0000e164 stp      x20, x19, [sp, #-0x20]!
0000e168 stp      x29, x30, [sp, #0x10]
0000e16c add      x29, sp, #0x10
0000e170 mov      x19, x0
0000e174 cbz      x19, #0xe1a0
0000e178 mov      x0, x19
0000e17c bl       #0xe110
0000e180 mov      w20, w0
0000e184 add      x0, x19, #2
0000e188 bl       #0xe110
0000e18c ldp      x29, x30, [sp, #0x10]
0000e190 bfi      w20, w0, #0x10, #0x10
0000e194 mov      w0, w20
0000e198 ldp      x20, x19, [sp], #0x20
0000e19c ret      
0000e1a0 adrp     x0, #0x12000
0000e1a4 adrp     x2, #0xf000
0000e1a8 add      x0, x0, #0x92c
0000e1ac mov      w1, #0x9e
0000e1b0 add      x2, x2, #0x81c
0000e1b4 bl       #0x1fa8
0000e1b8 b        #0xe1b8
0000e1bc dc       ivac, x0
0000e1c0 ret      
0000e1c4 dc       cvac, x0
0000e1c8 ret      
0000e1cc mov      x0, #1
0000e1d0 ret      
0000e1d4 b        #0xe200
0000e1d8 b        #0xe208
0000e1dc stp      x29, x30, [sp, #-0x10]!
0000e1e0 mov      x29, sp
0000e1e4 adrp     x0, #0x13000
0000e1e8 add      x0, x0, #0x28
0000e1ec bl       #0x25f4
0000e1f0 cbz      x0, #0xe1f8
0000e1f4 ldr      x0, [x0, #0x18]
0000e1f8 ldp      x29, x30, [sp], #0x10
0000e1fc ret      
0000e200 mrs      x0, cntfrq_el0
0000e204 ret      
0000e208 mrs      x0, cntvct_el0
0000e20c ret      
0000e210 .byte    0x0a, 0x41, 0x53, 0x53
0000e214 .byte    0x45, 0x52, 0x54, 0x5f
0000e218 .byte    0x45, 0x46, 0x49, 0x5f
0000e21c .byte    0x45, 0x52, 0x52, 0x4f
0000e220 .byte    0x52, 0x20, 0x28, 0x53
0000e224 .byte    0x74, 0x61, 0x74, 0x75
0000e228 .byte    0x73, 0x20, 0x3d, 0x20
0000e22c bic      w5, w17, w9, lsl #28
0000e230 ldpsw    x0, x17, [x0, #-0x70]
0000e234 addhnt   z22.b, z11.h, z18.h
0000e238 ldrh     w14, [x3, #0x193a]
0000e23c umin     v16.8h, v26.8h, v9.8h
0000e240 .byte    0x74, 0x2e, 0x63, 0x00
0000e244 .byte    0x21, 0x45, 0x46, 0x49
0000e248 .byte    0x5f, 0x45, 0x52, 0x52
0000e24c stnp     w15, w20, [x18, #-0x100]
0000e250 .byte    0x53, 0x74, 0x61, 0x74
0000e254 .byte    0x75, 0x73, 0x29, 0x00
0000e258 .byte    0x4d, 0x6f, 0x74, 0x55
0000e25c .byte    0x74, 0x61, 0x67, 0x73
0000e260 .byte    0x44, 0x69, 0x63, 0x74
0000e264 .byte    0x44, 0x78, 0x65, 0x00
0000e268 uqshl    v1.2d, v10.2d, #0x34
0000e26c umax     v7.4h, v10.4h, v14.4h
0000e270 .byte    0x63, 0x00, 0x06, 0x00
0000e274 .byte    0x40, 0x42, 0x0f, 0x00
0000e278 .byte    0x40, 0x42, 0x0f, 0x00
0000e27c .byte    0x00, 0x40, 0x26, 0x0c
0000e280 .byte    0x0f, 0xee, 0x0f, 0x80
0000e284 .byte    0x00, 0xf8, 0x24, 0x01
0000e288 udf      #0
0000e28c .byte    0x00, 0x61, 0x62, 0x5f
0000e290 uqshl    v1.2d, v11.2d, #0x34
0000e294 .byte    0x5f, 0x72, 0x65, 0x63
0000e298 .byte    0x6f, 0x76, 0x65, 0x72
0000e29c .byte    0x79, 0x00, 0x41, 0x75
0000e2a0 ands     w20, w27, #0xfffffff
0000e2a4 .byte    0x65, 0x63, 0x6f, 0x76
0000e2a8 .byte    0x65, 0x72, 0x79, 0x20
0000e2ac ldp      d6, d28, [x19, #-0x110]
0000e2b0 .byte    0x20, 0x6e, 0x6f, 0x20
0000e2b4 .byte    0x62, 0x6f, 0x6f, 0x74
0000e2b8 fnmls    z1.h, p0/m, z19.h, z12.h
0000e2bc .byte    0x20, 0x41, 0x2f, 0x42
0000e2c0 fcmla    v0.8h, v25.8h, v12.h[1], #0x10e
0000e2c4 stnp     w20, w15, [x27, #-0x100]
0000e2c8 ssubwb   z20.h, z18.h, z21.b
0000e2cc .byte    0x7c, 0x46, 0x41, 0x4c
0000e2d0 .byte    0x53, 0x45, 0x29, 0x00
0000e2d4 .byte    0x62, 0x61, 0x72, 0x63
0000e2d8 .byte    0x6f, 0x64, 0x65, 0x00
0000e2dc ldpsw    x4, x25, [x10, #-0x50]
0000e2e0 .byte    0x63, 0x65, 0x20, 0x73
0000e2e4 .byte    0x65, 0x72, 0x69, 0x61
0000e2e8 .byte    0x6c, 0x20, 0x6e, 0x75
0000e2ec .byte    0x6d, 0x62, 0x65, 0x72
0000e2f0 .byte    0x0a, 0x28, 0x75, 0x73
0000e2f4 .byte    0x65, 0x64, 0x20, 0x69
0000e2f8 .byte    0x6e, 0x74, 0x65, 0x72
0000e2fc fcvtxn2  v3.4s, v3.2d
0000e300 ldnp     d7, d24, [x11, #-0x1e0]
0000e304 ldpsw    x25, x8, [x3, #-0x48]
0000e308 .byte    0x74, 0x68, 0x20, 0x27
0000e30c ldpsw    x19, x25, [x11, #-0x70]
0000e310 .byte    0x61, 0x6c, 0x6e, 0x6f
0000e314 .byte    0x27, 0x29, 0x00, 0x5e
0000e318 .byte    0x5b, 0x5b, 0x3a, 0x61
0000e31c ldp      d12, d27, [x19, #-0xb0]
0000e320 .byte    0x3a, 0x5d, 0x5d, 0x7b
0000e324 adds     w17, w1, #0xccb
0000e328 .byte    0x7d, 0x24, 0x00, 0x62
0000e32c sqdmlsl  s1, h19, v5.h[2]
0000e330 .byte    0x62, 0x6f, 0x61, 0x72
0000e334 mla      v4.8h, v3.8h, v4.h[1]
0000e338 .byte    0x20, 0x69, 0x6e, 0x64
0000e33c .byte    0x69, 0x63, 0x61, 0x74
0000e340 .byte    0x65, 0x20, 0x74, 0x68
0000e344 fmls     z5.h, p0/m, z3.h, z4.h
0000e348 fnmls    z22.h, p2/m, z11.h, z3.h
0000e34c .byte    0x20, 0x69, 0x73, 0x20
0000e350 .byte    0x61, 0x20, 0x62, 0x61
0000e354 .byte    0x72, 0x65, 0x20, 0x62
0000e358 .byte    0x6f, 0x61, 0x72, 0x64
0000e35c .byte    0x20, 0x28, 0x54, 0x52
0000e360 .byte    0x55, 0x45, 0x7c, 0x46
0000e364 uaddwt   z1.h, z2.h, z19.b
0000e368 .byte    0x29, 0x20, 0x73, 0x75
0000e36c .byte    0x63, 0x68, 0x20, 0x74
0000e370 .byte    0x68, 0x61, 0x74, 0x20
0000e374 fnmls    z21.h, p3/m, z19.h, z14.h
0000e378 .byte    0x63, 0x65, 0x73, 0x73
0000e37c .byte    0x61, 0x72, 0x79, 0x20
0000e380 .byte    0x69, 0x6e, 0x69, 0x74
0000e384 ldpsw    x9, x24, [x11, #-0xa0]
0000e388 ldpsw    x26, x24, [x11, #-0x60]
0000e38c .byte    0x6f, 0x6e, 0x73, 0x20
0000e390 .byte    0x28, 0x6c, 0x69, 0x6b
0000e394 ldpsw    x5, x8, [x3, #-0xe0]
0000e398 .byte    0x73, 0x70, 0x6c, 0x61
0000e39c .byte    0x79, 0x29, 0x20, 0x61
0000e3a0 .byte    0x72, 0x65, 0x20, 0x73
0000e3a4 adr      x11, #0xef0d3
0000e3a8 .byte    0x65, 0x64, 0x00, 0x76
0000e3ac ldpsw    x5, x28, [x19, #-0x68]
0000e3b0 .byte    0x6f, 0x6e, 0x2e, 0x62
0000e3b4 .byte    0x61, 0x73, 0x65, 0x62
0000e3b8 .byte    0x61, 0x6e, 0x64, 0x00
0000e3bc fnmls    z13.h, p3/m, z26.h, z4.h
0000e3c0 fmls     z13.h, p0/m, z3.h, z18.h
0000e3c4 .byte    0x6c, 0x65, 0x61, 0x73
0000e3c8 fmls     z5.h, p0/m, z3.h, z22.h
0000e3cc fcmla    v18.8h, v27.8h, v9.h[1], #0x10e
0000e3d0 .byte    0x6e, 0x0a, 0x28, 0x61
0000e3d4 ldp      d21, d29, [x3, #-0x110]
0000e3d8 .byte    0x61, 0x74, 0x69, 0x63
0000e3dc ldrh     w1, [x3, #0x1636]
0000e3e0 .byte    0x20, 0x75, 0x70, 0x64
0000e3e4 .byte    0x61, 0x74, 0x65, 0x64
0000e3e8 .byte    0x20, 0x6f, 0x6e, 0x20
0000e3ec .byte    0x65, 0x61, 0x63, 0x68
0000e3f0 umlsl2   v0.4s, v17.8h, v15.h[2]
0000e3f4 .byte    0x74, 0x29, 0x00, 0x5e
0000e3f8 adr      x27, #0x82f63
0000e3fc .byte    0x72, 0x69, 0x6e, 0x74
0000e400 .byte    0x3a, 0x5d, 0x5d, 0x7b
0000e404 cbnz     w17, #0x72988
0000e408 .byte    0x35, 0x7d, 0x24, 0x00
0000e40c .byte    0x62, 0x61, 0x74, 0x74
0000e410 .byte    0x65, 0x72, 0x79, 0x00
0000e414 .byte    0x42, 0x61, 0x74, 0x74
0000e418 .byte    0x65, 0x72, 0x79, 0x20
0000e41c fnmls    z4.h, p1/m, z11.h, z20.h
0000e420 uqshl    v3.2d, v3.2d, #0x29
0000e424 umlal2   v14.4s, v3.8h, v3.h[2]
0000e428 uqshl    v14.2d, v3.2d, #0x32
0000e42c .byte    0x6c, 0x0a, 0x28, 0x22
0000e430 .byte    0x74, 0x65, 0x73, 0x74
0000e434 .byte    0x22, 0x20, 0x6f, 0x72
0000e438 umlal2   v0.4s, v17.8h, v14.h[2]
0000e43c .byte    0x5f, 0x65, 0x70, 0x72
0000e440 stp      w15, w27, [x11, #-0xf0]
0000e444 fnmla    z0.h, p7/m, z16.h, z20.h
0000e448 .byte    0x73, 0x74, 0x24, 0x7c
0000e44c .byte    0x5e, 0x6e, 0x6f, 0x5f
0000e450 fcmla    v5.8h, v3.8h, v18.h[1], #0x10e
0000e454 .byte    0x6d, 0x24, 0x00, 0x62
0000e458 ldpsw    x1, x29, [x3, #-0x60]
0000e45c .byte    0x64, 0x00, 0x42, 0x61
0000e460 .byte    0x74, 0x74, 0x65, 0x72
0000e464 .byte    0x79, 0x20, 0x49, 0x6e
0000e468 ldnp     d19, d29, [x3, #-0x1f0]
0000e46c .byte    0x6c, 0x65, 0x64, 0x20
0000e470 .byte    0x69, 0x6e, 0x20, 0x44
0000e474 .byte    0x65, 0x76, 0x69, 0x63
0000e478 b.pl     #0x5e5c4
0000e47c umlal2   v15.4s, v3.8h, v3.h[2]
0000e480 ldpsw    x14, x29, [x3, #-0xf8]
0000e484 .byte    0x6e, 0x20, 0x74, 0x68
0000e488 fcmne    p5.h, p0/z, z3.h, #0.0
0000e48c ldnp     d18, d26, [x11, #-0x1f0]
0000e490 ldp      d0, d19, [x17, #-0xb0]
0000e494 .byte    0x62, 0x65, 0x72, 0x20
0000e498 .byte    0x6f, 0x66, 0x20, 0x74
0000e49c .byte    0x68, 0x65, 0x20, 0x42
0000e4a0 fnmls    z1.h, p5/m, z3.h, z20.h
0000e4a4 .byte    0x72, 0x79, 0x20, 0x43
0000e4a8 ldp      w5, w27, [x3, #-0xa0]
0000e4ac .byte    0x00, 0x5e, 0x5b, 0x5b
0000e4b0 rsubhn2  v26.8h, v9.4s, v12.4s
0000e4b4 .byte    0x75, 0x6d, 0x3a, 0x5d
0000e4b8 stnp     s29, s30, [x26, #-0x78]
0000e4bc cmpls    p1.h, p5/z, z9.h, #0x74
0000e4c0 mls      v0.8h, v16.8h, v15.h[2]
0000e4c4 .byte    0x74, 0x43, 0x79, 0x63
0000e4c8 sqshlu   v12.2d, v11.2d, #3
0000e4cc .byte    0x75, 0x6e, 0x74, 0x00
0000e4d0 ands     w20, w26, #0xfffffff
0000e4d4 .byte    0x65, 0x63, 0x6f, 0x72
0000e4d8 .byte    0x64, 0x20, 0x74, 0x68
0000e4dc .byte    0x65, 0x20, 0x6e, 0x75
0000e4e0 .byte    0x6d, 0x62, 0x65, 0x72
0000e4e4 .byte    0x20, 0x6f, 0x66, 0x20
0000e4e8 .byte    0x62, 0x6f, 0x6f, 0x74
0000e4ec .byte    0x20, 0x63, 0x79, 0x63
0000e4f0 umax     v12.4h, v11.4h, v19.4h
0000e4f4 uqshl    v0.2d, v8.2d, #0x2c
0000e4f8 .byte    0x6e, 0x67, 0x00, 0x42
0000e4fc .byte    0x6f, 0x6f, 0x74, 0x43
0000e500 fnmls    z25.h, p0/m, z27.h, z12.h
0000e504 .byte    0x53, 0x75, 0x63, 0x63
0000e508 .byte    0x65, 0x73, 0x73, 0x00
0000e50c ands     w20, w26, #0xfffffff
0000e510 .byte    0x65, 0x63, 0x6f, 0x72
0000e514 .byte    0x64, 0x20, 0x74, 0x68
0000e518 usubl2   v5.4s, v3.8h, v9.8h
0000e51c .byte    0x64, 0x65, 0x78, 0x20
0000e520 stnp     d15, d25, [x19, #-0x200]
0000e524 .byte    0x61, 0x73, 0x74, 0x20
0000e528 .byte    0x73, 0x75, 0x63, 0x63
0000e52c .byte    0x65, 0x73, 0x73, 0x66
0000e530 .byte    0x75, 0x6c, 0x20, 0x62
0000e534 .byte    0x6f, 0x6f, 0x74, 0x20
0000e538 ldnp     d3, d30, [x11, #-0x1d0]
0000e53c .byte    0x65, 0x2e, 0x00, 0x62
0000e540 ldp      d15, d27, [x27, #-0xc0]
0000e544 .byte    0x6f, 0x64, 0x65, 0x00
0000e548 .byte    0x54, 0x6f, 0x20, 0x66
0000e54c fnmls    z15.h, p4/m, z19.h, z3.h
0000e550 .byte    0x20, 0x63, 0x65, 0x72
0000e554 rsubhn2  v20.8h, v11.4s, v9.4s
0000e558 umlsl2   v0.4s, v17.8h, v15.h[2]
0000e55c .byte    0x74, 0x6d, 0x6f, 0x64
0000e560 .byte    0x65, 0x0a, 0x28, 0x76
0000e564 .byte    0x61, 0x6c, 0x69, 0x64
0000e568 ldnp     d0, d29, [x17, #-0x1f0]
0000e56c .byte    0x75, 0x65, 0x73, 0x20
0000e570 .byte    0x61, 0x72, 0x65, 0x20
0000e574 .byte    0x22, 0x66, 0x61, 0x73
0000e578 umlsl2   v20.4s, v19.8h, v15.h[2]
0000e57c .byte    0x74, 0x22, 0x2c, 0x20
0000e580 .byte    0x22, 0x66, 0x61, 0x63
0000e584 ldrh     w20, [x27, #0x1936]
0000e588 .byte    0x22, 0x2c, 0x0a, 0x22
0000e58c .byte    0x62, 0x70, 0x2d, 0x74
0000e590 .byte    0x6f, 0x6f, 0x6c, 0x73
0000e594 .byte    0x22, 0x2c, 0x20, 0x22
0000e598 ldp      d17, d24, [x27, #-0x110]
0000e59c .byte    0x22, 0x2c, 0x20, 0x61
0000e5a0 .byte    0x6e, 0x64, 0x20, 0x22
0000e5a4 ldp      d14, d27, [x27, #-0xe0]
0000e5a8 stp      w1, w27, [x3, #-0xf0]
0000e5ac .byte    0x00, 0x5e, 0x66, 0x61
0000e5b0 uqshl    v19.2d, v3.2d, #0x22
0000e5b4 .byte    0x6f, 0x74, 0x24, 0x7c
0000e5b8 .byte    0x5e, 0x66, 0x61, 0x63
0000e5bc ldrh     w20, [x27, #0x1936]
0000e5c0 .byte    0x24, 0x7c, 0x5e, 0x62
0000e5c4 .byte    0x70, 0x2d, 0x74, 0x6f
0000e5c8 cmplo    p15.h, p3/z, z3.h, #0x4d
0000e5cc .byte    0x7c, 0x5e, 0x71, 0x63
0000e5d0 .byte    0x6f, 0x6d, 0x24, 0x7c
0000e5d4 .byte    0x5e, 0x6e, 0x6f, 0x72
0000e5d8 cmplo    p13.h, p0/z, z11.h, #0x31
0000e5dc .byte    0x7c, 0x5e, 0x24, 0x00
0000e5e0 ldp      d2, d29, [x3, #0x1f0]
0000e5e4 .byte    0x61, 0x63, 0x00, 0x42
0000e5e8 .byte    0x6c, 0x75, 0x65, 0x74
0000e5ec .byte    0x6f, 0x6f, 0x74, 0x68
0000e5f0 .byte    0x20, 0x4d, 0x61, 0x63
0000e5f4 bfdot    z0.s, z9.h, z4.h[0]
0000e5f8 .byte    0x72, 0x65, 0x73, 0x73
0000e5fc .byte    0x2e, 0x00, 0x28, 0x5b
0000e600 .byte    0x5b, 0x3a, 0x78, 0x64
0000e604 .byte    0x69, 0x67, 0x69, 0x74
0000e608 .byte    0x3a, 0x5d, 0x5d, 0x7b
0000e60c stp      w18, wzr, [x9, #-0x30]
0000e610 ldnp     w27, w13, [x11, #-0x18]
0000e614 strh     w27, [x26, w26, uxtw #1]
0000e618 ldpsw    x4, x26, [x11, #-0xc8]
0000e61c .byte    0x74, 0x3a, 0x5d, 0x5d
0000e620 ldp      w27, w12, [x19, #-0x18]
0000e624 uabdl    v0.4s, v16.4h, v15.4h
0000e628 ldnp     d2, d29, [x11, #-0x170]
0000e62c ldpsw    x4, x11, [x19, #-0xd0]
0000e630 .byte    0x6e, 0x67, 0x65, 0x72
0000e634 uabdl2   v16.4s, v19.8h, v9.8h
0000e638 mla      v20.8h, v3.8h, v3.h[1]
0000e63c .byte    0x66, 0x74, 0x77, 0x61
0000e640 .byte    0x72, 0x65, 0x20, 0x62
0000e644 .byte    0x75, 0x69, 0x6c, 0x64
0000e648 umax     v0.8h, v17.8h, v9.8h
0000e64c adr      x7, #0xf32fb
0000e650 .byte    0x72, 0x69, 0x6e, 0x74
0000e654 .byte    0x0a, 0x28, 0x61, 0x75
0000e658 .byte    0x74, 0x6f, 0x6d, 0x61
0000e65c .byte    0x74, 0x69, 0x63, 0x61
0000e660 .byte    0x6c, 0x6c, 0x79, 0x20
0000e664 .byte    0x75, 0x70, 0x64, 0x61
0000e668 .byte    0x74, 0x65, 0x64, 0x20
0000e66c .byte    0x6f, 0x6e, 0x20, 0x65
0000e670 .byte    0x61, 0x63, 0x68, 0x20
0000e674 .byte    0x62, 0x6f, 0x6f, 0x74
0000e678 .byte    0x29, 0x00, 0x62, 0x75
0000e67c .byte    0x69, 0x6c, 0x64, 0x5f
0000e680 .byte    0x76, 0x61, 0x72, 0x73
0000e684 .byte    0x00, 0x54, 0x6f, 0x20
0000e688 .byte    0x70, 0x72, 0x6f, 0x76
0000e68c .byte    0x69, 0x64, 0x65, 0x20
0000e690 .byte    0x75, 0x73, 0x65, 0x72
0000e694 .byte    0x73, 0x70, 0x61, 0x63
0000e698 adr      x5, #0xd0aa7
0000e69c .byte    0x70, 0x6c, 0x69, 0x63
0000e6a0 uqshl    v1.2d, v3.2d, #0x29
0000e6a4 fmls     z14.h, p0/m, z3.h, z18.h
0000e6a8 stp      d1, d25, [x3, #-0x200]
0000e6ac rsubhn2  v5.8h, v27.4s, v8.4s
0000e6b0 ldnp     d9, d24, [x27, #-0x1f0]
0000e6b4 ldpsw    x10, x24, [x16, #-0x58]
0000e6b8 .byte    0x6c, 0x64, 0x20, 0x76
0000e6bc .byte    0x61, 0x72, 0x69, 0x61
0000e6c0 .byte    0x74, 0x69, 0x6f, 0x6e
0000e6c4 .byte    0x73, 0x20, 0x6f, 0x66
0000e6c8 fnmls    z0.h, p5/m, z1.h, z8.h
0000e6cc fcmla    v0.8h, v1.8h, v18.h[1], #0x10e
0000e6d0 .byte    0x64, 0x75, 0x63, 0x74
0000e6d4 .byte    0x0a, 0x3c, 0x62, 0x75
0000e6d8 .byte    0x69, 0x6c, 0x64, 0x5f
0000e6dc .byte    0x76, 0x61, 0x72, 0x20
0000e6e0 ldpsw    x19, x29, [x3, #-0x70]
0000e6e4 .byte    0x6e, 0x67, 0x3e, 0x20
0000e6e8 ldpsw    x19, x29, [x3, #-0x70]
0000e6ec .byte    0x6e, 0x67, 0x20, 0x77
0000e6f0 .byte    0x6f, 0x75, 0x6c, 0x64
0000e6f4 .byte    0x20, 0x62, 0x65, 0x20
0000e6f8 .byte    0x61, 0x6e, 0x79, 0x20
0000e6fc .byte    0x63, 0x6f, 0x6c, 0x6f
0000e700 .byte    0x72, 0x00, 0x5e, 0x5b
0000e704 ldnp     d27, d14, [x18, #-0x1f0]
0000e708 .byte    0x70, 0x68, 0x61, 0x3a
0000e70c adds     w29, w10, #0xed7, lsl #12
0000e710 str      h12, [x25, #0x1898]
0000e714 mla      v4.8h, v1.8h, v2.h[3]
0000e718 ldpsw    x14, x24, [x17, #-0x58]
0000e71c .byte    0x6c, 0x64, 0x2e, 0x76
0000e720 ldpsw    x5, x28, [x19, #-0x68]
0000e724 subs     w15, w19, #0xb9b
0000e728 .byte    0x63, 0x6f, 0x6d, 0x00
0000e72c .byte    0x51, 0x43, 0x4f, 0x4d
0000e730 .byte    0x20, 0x6d, 0x65, 0x74
0000e734 .byte    0x61, 0x20, 0x62, 0x75
0000e738 .byte    0x69, 0x6c, 0x64, 0x20
0000e73c stnp     w9, w17, [x2, #0x50]
0000e740 uqshl    v1.2d, v11.2d, #0x34
0000e744 ldpsw    x13, x24, [x11, #-0x60]
0000e748 ldnp     d3, d24, [x11, #-0x140]
0000e74c adr      x25, #0xf8b5b
0000e750 fnmls    z4.h, p0/m, z11.h, z20.h
0000e754 usubl2   v4.4s, v3.8h, v15.8h
0000e758 .byte    0x20, 0x65, 0x61, 0x63
0000e75c umlal2   v8.4s, v3.8h, v2.h[2]
0000e760 .byte    0x6f, 0x74, 0x29, 0x00
0000e764 .byte    0x63, 0x61, 0x72, 0x72
0000e768 .byte    0x69, 0x65, 0x72, 0x00
0000e76c .byte    0x43, 0x61, 0x72, 0x72
0000e770 .byte    0x69, 0x65, 0x72, 0x20
0000e774 ldnp     s9, s17, [x2, #-0x68]
0000e778 fnmls    z0.h, p4/m, z25.h, z5.h
0000e77c .byte    0x20, 0x68, 0x74, 0x74
0000e780 .byte    0x70, 0x3a, 0x2f, 0x2f
0000e784 umin     v7.4h, v27.4h, v15.4h
0000e788 stnp     d7, d27, [x3, #-0x110]
0000e78c .byte    0x6f, 0x6a, 0x4c, 0x68
0000e790 .byte    0x33, 0x00, 0x63, 0x61
0000e794 fnmls    z18.h, p4/m, z19.h, z9.h
0000e798 .byte    0x72, 0x5f, 0x73, 0x6b
0000e79c fadd     z21.h, z3.h, z4.h
0000e7a0 fnmls    z22.h, p2/m, z11.h, z3.h
0000e7a4 fcmla    v0.8h, v25.8h, v20.h[1], #0x10e
0000e7a8 subs     w3, w27, w13, uxtx #2
0000e7ac ldpsw    x5, x25, [x11, #-0x80]
0000e7b0 .byte    0x6e, 0x67, 0x20, 0x75
0000e7b4 .byte    0x6e, 0x69, 0x74, 0x20
0000e7b8 .byte    0x66, 0x6f, 0x72, 0x20
0000e7bc .byte    0x43, 0x61, 0x72, 0x72
0000e7c0 bic      w9, w11, w18, lsr #25
0000e7c4 .byte    0x28, 0x6c, 0x65, 0x73
0000e7c8 .byte    0x73, 0x20, 0x6f, 0x72
0000e7cc .byte    0x20, 0x65, 0x71, 0x75
0000e7d0 .byte    0x61, 0x6c, 0x20, 0x74
0000e7d4 .byte    0x68, 0x61, 0x6e, 0x20
0000e7d8 .byte    0x31, 0x35, 0x20, 0x61
0000e7dc .byte    0x6c, 0x70, 0x68, 0x61
0000e7e0 fnmls    z14.h, p5/m, z11.h, z13.h
0000e7e4 .byte    0x72, 0x69, 0x63, 0x20
0000e7e8 .byte    0x6f, 0x72, 0x20, 0x68
0000e7ec fnmls    z25.h, p4/m, z3.h, z8.h
0000e7f0 .byte    0x6e, 0x20, 0x63, 0x68
0000e7f4 .byte    0x61, 0x72, 0x61, 0x63
0000e7f8 .byte    0x74, 0x65, 0x72, 0x73
0000e7fc .byte    0x29, 0x00, 0x5e, 0x5b
0000e800 .byte    0x2d, 0x5b, 0x3a, 0x61
0000e804 ldp      d12, d27, [x19, #-0xb0]
0000e808 .byte    0x3a, 0x5d, 0x5d, 0x7b
0000e80c cbnz     w17, #0x70d90
0000e810 .byte    0x7d, 0x24, 0x00, 0x63
0000e814 .byte    0x68, 0x61, 0x72, 0x67
0000e818 fcmla    z5.h, p4/m, z19.h, z31.h, #0x10e
0000e81c .byte    0x69, 0x73, 0x61, 0x62
0000e820 .byte    0x6c, 0x65, 0x00, 0x44
0000e824 .byte    0x69, 0x73, 0x61, 0x62
0000e828 .byte    0x6c, 0x65, 0x20, 0x63
0000e82c .byte    0x68, 0x61, 0x72, 0x67
0000e830 stp      d5, d28, [x19, #-0x200]
0000e834 .byte    0x6f, 0x64, 0x65, 0x3f
0000e838 .byte    0x20, 0x28, 0x54, 0x52
0000e83c .byte    0x55, 0x45, 0x7c, 0x46
0000e840 uaddwt   z1.h, z2.h, z19.b
0000e844 ldp      d9, d0, [x1, #-0x1d0]
0000e848 sub      w4, w3, w0, lsl #27
0000e84c fnmls    z5.h, p4/m, z19.h, z14.h
0000e850 umlal2   v12.4s, v3.8h, v3.h[2]
0000e854 umin     v13.8h, v11.8h, v1.8h
0000e858 ldpsw    x4, x8, [x3, #-0xa0]
0000e85c sqshlu   v14.4s, v11.4s, #0
0000e860 ldnp     d22, d25, [x11, #-0xe0]
0000e864 .byte    0x61, 0x79, 0x0a, 0x20
0000e868 .byte    0x61, 0x64, 0x64, 0x2f
0000e86c ldpsw    x13, x27, [x27, #-0xe0]
0000e870 .byte    0x66, 0x79, 0x20, 0x6f
0000e874 uqshl    v16.2d, v3.2d, #0x29
0000e878 .byte    0x6e, 0x3a, 0x20, 0x3c
0000e87c ldpsw    x15, x28, [x3, #-0x60]
0000e880 str      b15, [x19, #0xf9b]
0000e884 ldnp     d28, d29, [x17, #-0x1f0]
0000e888 bic      w21, w11, w30, lsl #25
0000e88c ldp      d0, d28, [x17, #-0x1b0]
0000e890 .byte    0x6f, 0x76, 0x65, 0x20
0000e894 ldpsw    x15, x28, [x3, #-0x60]
0000e898 .byte    0x6f, 0x6e, 0x3a, 0x20
0000e89c adr      x13, #0xed023
0000e8a0 .byte    0x74, 0x69, 0x6f, 0x6e
0000e8a4 mla      v30.8h, v1.8h, v3.h[2]
0000e8a8 ldnp     d14, d28, [x27, #-0x110]
0000e8ac mla      v5.8h, v3.8h, v3.h[0]
0000e8b0 .byte    0x6e, 0x66, 0x69, 0x67
0000e8b4 .byte    0x20, 0x6b, 0x65, 0x72
0000e8b8 .byte    0x6e, 0x65, 0x6c, 0x20
0000e8bc .byte    0x63, 0x6f, 0x6e, 0x73
0000e8c0 .byte    0x6f, 0x6c, 0x65, 0x20
0000e8c4 bic      w12, w27, w7, lsr #27
0000e8c8 usubl2   v0.4s, v1.8h, v5.8h
0000e8cc fnmls    z1.h, p0/m, z19.h, z12.h
0000e8d0 .byte    0x7c, 0x54, 0x52, 0x55
0000e8d4 .byte    0x45, 0x20, 0x20, 0x20
0000e8d8 .byte    0x20, 0x20, 0x2d, 0x20
0000e8dc .byte    0x65, 0x6e, 0x61, 0x62
0000e8e0 .byte    0x6c, 0x65, 0x20, 0x77
0000e8e4 .byte    0x69, 0x74, 0x68, 0x20
0000e8e8 .byte    0x64, 0x65, 0x66, 0x61
0000e8ec .byte    0x75, 0x6c, 0x74, 0x20
0000e8f0 .byte    0x73, 0x65, 0x74, 0x74
0000e8f4 .byte    0x69, 0x6e, 0x67, 0x73
0000e8f8 fmul     z10.h, z0.h, z0.h[0]
0000e8fc .byte    0x69, 0x73, 0x61, 0x62
0000e900 .byte    0x6c, 0x65, 0x7c, 0x46
0000e904 uaddwt   z1.h, z2.h, z19.b
0000e908 stp      s0, s8, [x1, #-0x100]
0000e90c .byte    0x20, 0x64, 0x69, 0x73
0000e910 fnmls    z1.h, p0/m, z19.h, z12.h
0000e914 .byte    0x0a, 0x20, 0x20, 0x3c
0000e918 .byte    0x63, 0x6f, 0x6e, 0x66
0000e91c .byte    0x69, 0x67, 0x20, 0x73
0000e920 uabdl2   v20.4s, v19.8h, v9.8h
0000e924 stp      s7, s15, [x19, #-0x100]
0000e928 .byte    0x20, 0x65, 0x6e, 0x61
0000e92c .byte    0x62, 0x6c, 0x65, 0x20
0000e930 .byte    0x77, 0x69, 0x74, 0x68
0000e934 .byte    0x20, 0x63, 0x75, 0x73
0000e938 ldpsw    x20, x27, [x27, #-0x98]
0000e93c .byte    0x7a, 0x65, 0x64, 0x20
0000e940 .byte    0x73, 0x65, 0x74, 0x74
0000e944 .byte    0x69, 0x6e, 0x67, 0x73
0000e948 stnp     w10, w8, [x0, #-0x100]
0000e94c uqsub    v5.4h, v19.4h, v7.4h
0000e950 .byte    0x3a, 0x20, 0x22, 0x74
0000e954 .byte    0x74, 0x79, 0x4d, 0x53
0000e958 stnp     s13, s12, [x2, #-0xf0]
0000e95c .byte    0x20, 0x22, 0x74, 0x74
0000e960 .byte    0x79, 0x4d, 0x53, 0x4d
0000e964 adds     w16, w1, #0xc4b
0000e968 adr      x21, #0x6efad
0000e96c .byte    0x2c, 0x6e, 0x38, 0x22
0000e970 mla      v9.8h, v1.8h, v3.h[2]
0000e974 .byte    0x6e, 0x74, 0x5f, 0x73
0000e978 .byte    0x70, 0x6c, 0x61, 0x73
0000e97c .byte    0x68, 0x00, 0x45, 0x6e
0000e980 fnmls    z1.h, p0/m, z19.h, z12.h
0000e984 .byte    0x20, 0x6f, 0x72, 0x20
0000e988 .byte    0x64, 0x69, 0x73, 0x61
0000e98c .byte    0x62, 0x6c, 0x65, 0x20
0000e990 adr      x4, #0xf56bf
0000e994 .byte    0x6c, 0x61, 0x79, 0x20
0000e998 .byte    0x63, 0x6f, 0x6e, 0x74
0000e99c .byte    0x69, 0x6e, 0x75, 0x6f
0000e9a0 .byte    0x75, 0x73, 0x20, 0x73
0000e9a4 .byte    0x70, 0x6c, 0x61, 0x73
0000e9a8 .byte    0x68, 0x20, 0x73, 0x63
0000e9ac umax     v18.8h, v11.8h, v5.8h
0000e9b0 .byte    0x20, 0x62, 0x65, 0x66
0000e9b4 .byte    0x6f, 0x72, 0x65, 0x20
0000e9b8 fnmls    z5.h, p3/m, z19.h, z20.h
0000e9bc .byte    0x72, 0x69, 0x6e, 0x67
0000e9c0 .byte    0x20, 0x6b, 0x65, 0x72
0000e9c4 umax     v14.4h, v11.4h, v12.4h
0000e9c8 ldrh     w10, [x0, #0x1114]
0000e9cc .byte    0x20, 0x64, 0x65, 0x66
0000e9d0 .byte    0x61, 0x75, 0x6c, 0x74
0000e9d4 ldpsw    x0, x29, [x1, #-0xc0]
0000e9d8 .byte    0x73, 0x20, 0x69, 0x73
0000e9dc .byte    0x20, 0x65, 0x6e, 0x61
0000e9e0 .byte    0x62, 0x6c, 0x65, 0x64
0000e9e4 .byte    0x20, 0x61, 0x73, 0x20
0000e9e8 .byte    0x6c, 0x6f, 0x6e, 0x67
0000e9ec .byte    0x20, 0x61, 0x73, 0x20
0000e9f0 ldpsw    x1, x8, [x3, #-0xe0]
0000e9f4 .byte    0x73, 0x70, 0x6c, 0x61
0000e9f8 .byte    0x79, 0x20, 0x70, 0x61
0000e9fc .byte    0x6e, 0x65, 0x6c, 0x20
0000ea00 .byte    0x69, 0x73, 0x20, 0x61
0000ea04 .byte    0x74, 0x74, 0x61, 0x63
0000ea08 ldp      w8, w25, [x11, #-0xe0]
0000ea0c .byte    0x00, 0x63, 0x75, 0x73
0000ea10 .byte    0x74, 0x5f, 0x6d, 0x64
0000ea14 mla      v21.8h, v1.8h, v13.h[0]
0000ea18 .byte    0x74, 0x6f, 0x4d, 0x61
0000ea1c .byte    0x6b, 0x65, 0x72, 0x20
0000ea20 .byte    0x63, 0x75, 0x73, 0x74
0000ea24 .byte    0x6f, 0x6d, 0x69, 0x7a
0000ea28 uqshl    v1.2d, v3.2d, #0x29
0000ea2c cmla     z14.h, z3.h, z13.h, #0
0000ea30 .byte    0x35, 0x0a, 0x28, 0x33
0000ea34 fmls     z18.h, p0/m, z1.h, z8.h
0000ea38 fnmls    z24.h, p0/m, z11.h, z4.h
0000ea3c .byte    0x63, 0x69, 0x6d, 0x61
0000ea40 ldpsw    x12, x8, [x3, #-0xe0]
0000ea44 .byte    0x67, 0x69, 0x74, 0x73
0000ea48 .byte    0x29, 0x00, 0x5e, 0x5b
0000ea4c .byte    0x5b, 0x3a, 0x78, 0x64
0000ea50 .byte    0x69, 0x67, 0x69, 0x74
0000ea54 .byte    0x3a, 0x5d, 0x5d, 0x7b
0000ea58 cmpls    p3.h, p4/z, z17.h, #0x74
0000ea5c adr      x0, #0xd16df
0000ea60 .byte    0x5f, 0x66, 0x6c, 0x61
0000ea64 .byte    0x73, 0x68, 0x69, 0x6e
0000ea68 stnp     d7, d0, [x3, #-0x180]
0000ea6c .byte    0x61, 0x62, 0x20, 0x66
0000ea70 .byte    0x75, 0x6e, 0x63, 0x74
0000ea74 ldp      w9, w27, [x27, #-0x90]
0000ea78 .byte    0x0a, 0x49, 0x6e, 0x64
0000ea7c .byte    0x69, 0x63, 0x61, 0x74
0000ea80 .byte    0x65, 0x20, 0x69, 0x66
0000ea84 .byte    0x20, 0x66, 0x6c, 0x61
0000ea88 .byte    0x73, 0x68, 0x69, 0x6e
0000ea8c .byte    0x67, 0x20, 0x64, 0x61
0000ea90 .byte    0x70, 0x20, 0x70, 0x61
0000ea94 .byte    0x72, 0x74, 0x69, 0x74
0000ea98 .byte    0x69, 0x6f, 0x6e, 0x20
0000ea9c .byte    0x69, 0x73, 0x20, 0x65
0000eaa0 ldnp     d14, d24, [x11, #-0x1e0]
0000eaa4 bic      w5, w3, w14, lsl #25
0000eaa8 .byte    0x28, 0x54, 0x52, 0x55
0000eaac .byte    0x45, 0x7c, 0x46, 0x41
0000eab0 ldp      w12, w20, [x26, #0x28]
0000eab4 .byte    0x00, 0x64, 0x61, 0x74
0000eab8 .byte    0x65, 0x00, 0x4d, 0x61
0000eabc .byte    0x6e, 0x75, 0x66, 0x61
0000eac0 .byte    0x63, 0x74, 0x6f, 0x72
0000eac4 .byte    0x69, 0x6e, 0x67, 0x20
0000eac8 fnmls    z4.h, p0/m, z11.h, z20.h
0000eacc .byte    0x0a, 0x28, 0x6d, 0x6d
0000ead0 ldp      s13, s25, [x1, #-0xe0]
0000ead4 ldrh     w25, [x11, #0x1cbc]
0000ead8 usubl    v12.4s, v1.4h, v5.4h
0000eadc .byte    0x67, 0x2e, 0x3a, 0x20
0000eae0 stp      s2, s12, [x9, #-0x70]
0000eae4 orr      w19, w9, #0xfff80000
0000eae8 .byte    0x30, 0x31, 0x33, 0x22
0000eaec .byte    0x29, 0x00, 0x5e, 0x5b
0000eaf0 ldpsw    x27, x14, [x18, #-0xe0]
0000eaf4 .byte    0x67, 0x69, 0x74, 0x3a
0000eaf8 .byte    0x5d, 0x5d, 0x7b, 0x32
0000eafc .byte    0x7d, 0x2d, 0x5b, 0x5b
0000eb00 .byte    0x3a, 0x64, 0x69, 0x67
0000eb04 .byte    0x69, 0x74, 0x3a, 0x5d
0000eb08 str      h29, [x26, #0x193c]
0000eb0c ccmn     w25, #0x1b, #0xd, pl
0000eb10 ldpsw    x4, x26, [x11, #-0xc8]
0000eb14 .byte    0x74, 0x3a, 0x5d, 0x5d
0000eb18 cmpls    p11.h, p5/z, z3.h, #0x74
0000eb1c .byte    0x00, 0x64, 0x69, 0x73
0000eb20 fnmls    z1.h, p0/m, z19.h, z12.h
0000eb24 .byte    0x2d, 0x72, 0x65, 0x73
0000eb28 b.pl     #0xf9b4
0000eb2c ldpsw    x15, x8, [x3, #-0xe0]
0000eb30 ldnp     d19, d24, [x11, #-0x1e0]
0000eb34 umlal2   v5.4s, v3.8h, v0.h[3]
0000eb38 .byte    0x77, 0x65, 0x72, 0x20
0000eb3c .byte    0x6b, 0x65, 0x79, 0x20
0000eb40 ands     w8, w26, #0x3fffff
0000eb44 .byte    0x65, 0x73, 0x65, 0x74
0000eb48 .byte    0x20, 0x28, 0x54, 0x52
0000eb4c .byte    0x55, 0x45, 0x7c, 0x46
0000eb50 uaddwt   z1.h, z2.h, z19.b
0000eb54 ldpsw    x9, x2, [x17, #0x20]
0000eb58 ldnp     d19, d24, [x11, #-0x1e0]
0000eb5c .byte    0x69, 0x6e, 0x67, 0x20
0000eb60 ands     w8, w26, #0x3fffff
0000eb64 .byte    0x65, 0x73, 0x65, 0x74
0000eb68 ldnp     d0, d24, [x9, #-0x140]
0000eb6c .byte    0x6f, 0x77, 0x73, 0x20
0000eb70 uqshl    v1.2d, v11.2d, #0x34
0000eb74 fnmls    z13.h, p0/m, z11.h, z20.h
0000eb78 .byte    0x64, 0x20, 0x52, 0x46
0000eb7c .byte    0x20, 0x74, 0x65, 0x73
0000eb80 .byte    0x74, 0x69, 0x6e, 0x67
0000eb84 .byte    0x20, 0x74, 0x6f, 0x20
0000eb88 .byte    0x68, 0x6f, 0x6c, 0x64
0000eb8c fnmls    z0.h, p5/m, z1.h, z8.h
0000eb90 .byte    0x20, 0x70, 0x6f, 0x77
0000eb94 subs     w5, w19, w0, uxtx #4
0000eb98 .byte    0x65, 0x79, 0x20, 0x77
0000eb9c .byte    0x69, 0x74, 0x68, 0x20
0000eba0 .byte    0x61, 0x20, 0x72, 0x75
0000eba4 .byte    0x62, 0x62, 0x65, 0x72
0000eba8 rsubhn2  v0.8h, v17.4s, v1.4s
0000ebac ldpsw    x4, x8, [x3, #-0x48]
0000ebb0 .byte    0x74, 0x68, 0x6f, 0x75
0000ebb4 .byte    0x74, 0x20, 0x63, 0x61
0000ebb8 uabdl2   v21.4s, v27.8h, v9.8h
0000ebbc ldrh     w7, [x3, #0x1190]
0000ebc0 umin     v3.8h, v3.8h, v9.8h
0000ebc4 fmls     z7.h, p0/m, z3.h, z18.h
0000ebc8 .byte    0x62, 0x6f, 0x6f, 0x74
0000ebcc ldpsw    x19, x0, [x3, #-0xe0]
0000ebd0 .byte    0x73, 0x70, 0x6c, 0x61
0000ebd4 ldpsw    x25, x0, [x3, #0x20]
0000ebd8 .byte    0x73, 0x70, 0x6c, 0x61
0000ebdc .byte    0x79, 0x20, 0x70, 0x61
0000ebe0 .byte    0x6e, 0x65, 0x6c, 0x20
0000ebe4 ldnp     d3, d27, [x11, #-0x1c0]
0000ebe8 .byte    0x69, 0x6e, 0x65, 0x20
0000ebec .byte    0x63, 0x6f, 0x6e, 0x74
0000ebf0 bic      w18, w27, w12, lsr #27
0000ebf4 .byte    0x20, 0x20, 0x70, 0x72
0000ebf8 .byte    0x69, 0x6d, 0x61, 0x72
0000ebfc .byte    0x79, 0x3a, 0x30, 0x20
0000ec00 .byte    0x20, 0x20, 0x20, 0x20
0000ec04 ldpsw    x13, x8, [x1, #-0xe0]
0000ec08 ldnp     d19, d24, [x11, #-0x1e0]
0000ec0c .byte    0x65, 0x20, 0x70, 0x72
0000ec10 .byte    0x69, 0x6d, 0x61, 0x72
0000ec14 ldpsw    x25, x8, [x3, #-0xe0]
0000ec18 .byte    0x73, 0x70, 0x6c, 0x61
0000ec1c ldp      d25, d8, [x3, #-0x1d0]
0000ec20 umin     v4.8h, v3.8h, v9.8h
0000ec24 .byte    0x65, 0x0a, 0x20, 0x20
0000ec28 sqshlu   v19.2d, v11.2d, #0x23
0000ec2c .byte    0x6e, 0x64, 0x61, 0x72
0000ec30 .byte    0x79, 0x3a, 0x30, 0x20
0000ec34 .byte    0x20, 0x20, 0x2d, 0x20
0000ec38 .byte    0x64, 0x69, 0x73, 0x61
0000ec3c .byte    0x62, 0x6c, 0x65, 0x20
0000ec40 sqshlu   v19.2d, v11.2d, #0x23
0000ec44 .byte    0x6e, 0x64, 0x61, 0x72
0000ec48 ldpsw    x25, x8, [x3, #-0xe0]
0000ec4c .byte    0x73, 0x70, 0x6c, 0x61
0000ec50 ldp      d25, d8, [x3, #-0x1d0]
0000ec54 umin     v4.8h, v3.8h, v9.8h
0000ec58 adr      x5, #0xcac67
0000ec5c .byte    0x72, 0x69, 0x6d, 0x61
0000ec60 adr      x18, #0x83b8d
0000ec64 .byte    0x24, 0x7c, 0x5e, 0x73
0000ec68 rsubhn2  v5.8h, v27.4s, v15.4s
0000ec6c ldrh     w4, [x11, #0x1930]
0000ec70 .byte    0x3a, 0x30, 0x24, 0x00
0000ec74 .byte    0x64, 0x74, 0x5f, 0x6e
0000ec78 .byte    0x6f, 0x64, 0x65, 0x5f
0000ec7c .byte    0x6f, 0x66, 0x66, 0x73
0000ec80 .byte    0x65, 0x74, 0x73, 0x00
0000ec84 .byte    0x4f, 0x66, 0x66, 0x73
0000ec88 .byte    0x65, 0x74, 0x73, 0x20
0000ec8c subs     w15, w19, w0, uxtx #1
0000ec90 fnmls    z5.h, p4/m, z19.h, z14.h
0000ec94 b.gt     #0x970a0
0000ec98 .byte    0x20, 0x6e, 0x6f, 0x64
0000ec9c stnp     w5, w28, [x27, #0x50]
0000eca0 .byte    0x54, 0x6f, 0x20, 0x63
0000eca4 .byte    0x6f, 0x6e, 0x74, 0x61
0000eca8 .byte    0x69, 0x6e, 0x20, 0x74
0000ecac .byte    0x68, 0x65, 0x20, 0x61
0000ecb0 .byte    0x6c, 0x6c, 0x20, 0x74
0000ecb4 subs     w8, w11, w0, uxtx #1
0000ecb8 fnmls    z5.h, p4/m, z19.h, z14.h
0000ecbc b.gt     #0x970c8
0000ecc0 .byte    0x20, 0x6e, 0x6f, 0x64
0000ecc4 .byte    0x65, 0x20, 0x6f, 0x66
0000ecc8 .byte    0x66, 0x73, 0x65, 0x74
0000eccc .byte    0x73, 0x20, 0x61, 0x63
0000ecd0 .byte    0x63, 0x65, 0x73, 0x73
0000ecd4 .byte    0x65, 0x64, 0x20, 0x62
0000ecd8 subs     w25, w3, w12, lsr #8
0000ecdc .byte    0x29, 0x00, 0x5e, 0x5b
0000ece0 .byte    0x3d, 0x2f, 0x5b, 0x3a
0000ece4 .byte    0x61, 0x6c, 0x6e, 0x75
0000ece8 .byte    0x6d, 0x3a, 0x5d, 0x5d
0000ecec adds     w27, w11, #0xb0c
0000ecf0 cmpls    p2.h, p5/z, z25.h, #0x74
0000ecf4 .byte    0x00, 0x65, 0x6e, 0x61
0000ecf8 .byte    0x62, 0x6c, 0x65, 0x5f
0000ecfc adr      x4, #0xe9bab
0000ed00 .byte    0x5f, 0x67, 0x70, 0x74
0000ed04 .byte    0x00, 0x49, 0x6e, 0x64
0000ed08 .byte    0x69, 0x63, 0x61, 0x74
0000ed0c .byte    0x65, 0x20, 0x69, 0x66
0000ed10 fnmls    z0.h, p5/m, z1.h, z8.h
0000ed14 ldp      d0, d27, [x25, #-0x1b0]
0000ed18 ldp      d0, d24, [x25, #-0x110]
0000ed1c .byte    0x6d, 0x61, 0x6e, 0x64
0000ed20 .byte    0x20, 0x74, 0x6f, 0x20
0000ed24 adr      x4, #0xe9bd3
0000ed28 .byte    0x20, 0x67, 0x70, 0x74
0000ed2c .byte    0x20, 0x69, 0x73, 0x20
0000ed30 .byte    0x65, 0x6e, 0x61, 0x62
0000ed34 .byte    0x6c, 0x65, 0x64, 0x20
0000ed38 .byte    0x28, 0x54, 0x52, 0x55
0000ed3c .byte    0x45, 0x7c, 0x46, 0x41
0000ed40 ldp      w12, w20, [x26, #0x28]
0000ed44 .byte    0x00, 0x65, 0x73, 0x64
0000ed48 .byte    0x00, 0x45, 0x6e, 0x61
0000ed4c .byte    0x62, 0x6c, 0x65, 0x20
0000ed50 .byte    0x6f, 0x72, 0x20, 0x64
0000ed54 .byte    0x69, 0x73, 0x61, 0x62
0000ed58 .byte    0x6c, 0x65, 0x20, 0x64
0000ed5c ldnp     d9, d28, [x27, #-0x100]
0000ed60 .byte    0x61, 0x79, 0x20, 0x65
0000ed64 .byte    0x6c, 0x65, 0x63, 0x74
0000ed68 .byte    0x72, 0x6f, 0x73, 0x74
0000ed6c .byte    0x61, 0x74, 0x69, 0x63
0000ed70 .byte    0x20, 0x64, 0x69, 0x73
0000ed74 .byte    0x63, 0x68, 0x61, 0x72
0000ed78 .byte    0x67, 0x65, 0x20, 0x64
0000ed7c .byte    0x65, 0x74, 0x65, 0x63
0000ed80 .byte    0x74, 0x69, 0x6f, 0x6e
0000ed84 .byte    0x20, 0x61, 0x6e, 0x64
0000ed88 .byte    0x20, 0x72, 0x65, 0x63
0000ed8c .byte    0x6f, 0x76, 0x65, 0x72
0000ed90 usubl2   v25.4s, v3.8h, v9.8h
0000ed94 .byte    0x20, 0x6b, 0x65, 0x72
0000ed98 .byte    0x6e, 0x65, 0x6c, 0x20
0000ed9c adr      x4, #0xf5acb
0000eda0 .byte    0x6c, 0x61, 0x79, 0x20
0000eda4 .byte    0x64, 0x72, 0x69, 0x76
0000eda8 stnp     w5, w28, [x19, #0x50]
0000edac .byte    0x62, 0x79, 0x20, 0x64
0000edb0 .byte    0x65, 0x66, 0x61, 0x75
0000edb4 .byte    0x6c, 0x74, 0x20, 0x74
0000edb8 .byte    0x68, 0x69, 0x73, 0x20
0000edbc .byte    0x69, 0x73, 0x20, 0x65
0000edc0 ldnp     d14, d24, [x11, #-0x1e0]
0000edc4 .byte    0x65, 0x64, 0x20, 0x61
0000edc8 umlal2   v19.4s, v3.8h, v12.h[2]
0000edcc .byte    0x6e, 0x67, 0x20, 0x61
0000edd0 .byte    0x73, 0x20, 0x61, 0x20
0000edd4 adr      x4, #0xf5b03
0000edd8 .byte    0x6c, 0x61, 0x79, 0x20
0000eddc fnmls    z16.h, p0/m, z11.h, z14.h
0000ede0 .byte    0x6c, 0x20, 0x69, 0x73
0000ede4 .byte    0x20, 0x61, 0x74, 0x74
0000ede8 fnmls    z1.h, p0/m, z27.h, z8.h
0000edec .byte    0x64, 0x29, 0x00, 0x66
0000edf0 umlsl2   v1.4s, v27.8h, v4.h[3]
0000edf4 subs     w18, w11, wzr, lsr #30
0000edf8 .byte    0x69, 0x6c, 0x6c, 0x5f
0000edfc fnmls    z20.h, p2/m, z11.h, z13.h
0000ee00 .byte    0x6f, 0x75, 0x74, 0x00
0000ee04 fnmls    z20.h, p2/m, z10.h, z13.h
0000ee08 .byte    0x6f, 0x75, 0x74, 0x20
0000ee0c .byte    0x74, 0x6f, 0x20, 0x73
0000ee10 .byte    0x68, 0x75, 0x74, 0x64
0000ee14 .byte    0x6f, 0x77, 0x6e, 0x20
0000ee18 .byte    0x69, 0x6e, 0x20, 0x66
0000ee1c umlsl2   v1.4s, v27.8h, v4.h[3]
0000ee20 .byte    0x72, 0x79, 0x20, 0x69
0000ee24 .byte    0x66, 0x20, 0x75, 0x73
0000ee28 .byte    0x62, 0x20, 0x69, 0x73
0000ee2c .byte    0x20, 0x64, 0x69, 0x73
0000ee30 umin     v3.8h, v27.8h, v14.8h
0000ee34 fnmls    z5.h, p0/m, z27.h, z20.h
0000ee38 .byte    0x64, 0x2e, 0x0a, 0x42
0000ee3c fmls     z25.h, p0/m, z3.h, z4.h
0000ee40 ldnp     d6, d24, [x11, #-0xb0]
0000ee44 .byte    0x74, 0x2c, 0x20, 0x74
0000ee48 .byte    0x68, 0x69, 0x73, 0x20
0000ee4c .byte    0x66, 0x65, 0x61, 0x74
0000ee50 .byte    0x75, 0x72, 0x65, 0x20
0000ee54 .byte    0x69, 0x73, 0x20, 0x64
0000ee58 .byte    0x69, 0x73, 0x61, 0x62
0000ee5c umax     v12.4h, v11.4h, v4.4h
0000ee60 adr      x10, #0x4f261
0000ee64 .byte    0x20, 0x2d, 0x20, 0x73
0000ee68 .byte    0x68, 0x75, 0x74, 0x64
0000ee6c .byte    0x6f, 0x77, 0x6e, 0x20
0000ee70 fnmls    z9.h, p3/m, z11.h, z13.h
0000ee74 .byte    0x64, 0x69, 0x61, 0x74
0000ee78 bic      w5, w3, w25, lsr #27
0000ee7c .byte    0x20, 0x20, 0x6e, 0x20
0000ee80 .byte    0x2d, 0x20, 0x73, 0x68
0000ee84 uqshl    v21.2d, v3.2d, #0x24
0000ee88 adr      x23, #0x4fc57
0000ee8c fnmls    z8.h, p3/m, z27.h, z14.h
0000ee90 .byte    0x20, 0x69, 0x6e, 0x20
0000ee94 fmls     z14.h, p0/m, z3.h, z19.h
0000ee98 .byte    0x63, 0x6f, 0x6e, 0x64
0000ee9c adds     w19, w19, #0x80e
0000eea0 adds     w0, w17, #0x81f
0000eea4 .byte    0x30, 0x30, 0x0a, 0x00
0000eea8 adr      x30, #0x713b1
0000eeac adds     w16, w1, #0x6df, lsl #12
0000eeb0 .byte    0x2d, 0x39, 0x5d, 0x3f
0000eeb4 strb     w27, [x2, #0xb4c]
0000eeb8 .byte    0x5d, 0x29, 0x24, 0x00
0000eebc ldp      s6, s28, [x27, #-0xc8]
0000eec0 .byte    0x69, 0x64, 0x00, 0x46
0000eec4 .byte    0x53, 0x47, 0x20, 0x49
0000eec8 .byte    0x44, 0x73, 0x2c, 0x20
0000eecc .byte    0x73, 0x65, 0x65, 0x20
0000eed0 adr      x8, #0xf7d5f
0000eed4 .byte    0x3a, 0x2f, 0x2f, 0x67
0000eed8 .byte    0x6f, 0x6f, 0x2e, 0x67
0000eedc adr      x12, #0xdd4ca
0000eee0 .byte    0x6d, 0x68, 0x55, 0x00
0000eee4 .byte    0x5e, 0x5b, 0x5f, 0x5b
0000eee8 rsubhn2  v26.8h, v9.4s, v12.4s
0000eeec .byte    0x75, 0x6d, 0x3a, 0x5d
0000eef0 stnp     s29, s30, [x26, #-0x78]
0000eef4 cmpls    p3.h, p4/z, z9.h, #0x74
0000eef8 ldpsw    x0, x25, [x16, #-0x60]
0000eefc .byte    0x00, 0x46, 0x61, 0x63
0000ef00 ldrh     w20, [x27, #0x1936]
0000ef04 .byte    0x20, 0x74, 0x72, 0x61
0000ef08 .byte    0x63, 0x6b, 0x69, 0x6e
0000ef0c usubl2   v7.4s, v3.8h, v9.8h
0000ef10 ldp      d6, d27, [x27, #-0xe0]
0000ef14 uqshl    v1.2d, v3.2d, #0x29
0000ef18 usubl2   v14.4s, v3.8h, v9.8h
0000ef1c rsubhn2  v0.8h, v17.4s, v9.4s
0000ef20 .byte    0x61, 0x72, 0x79, 0x20
0000ef24 ldp      d6, d27, [x27, #-0xe0]
0000ef28 stnp     w1, w29, [x3, #0x50]
0000ef2c .byte    0x6e, 0x6f, 0x74, 0x20
0000ef30 .byte    0x63, 0x6f, 0x6e, 0x66
0000ef34 .byte    0x69, 0x67, 0x75, 0x72
0000ef38 fnmls    z1.h, p0/m, z19.h, z12.h
0000ef3c .byte    0x20, 0x76, 0x69, 0x61
0000ef40 .byte    0x20, 0x27, 0x66, 0x61
0000ef44 uqshl    v19.2d, v3.2d, #0x22
0000ef48 uqshl    v15.4s, v3.4s, #0
0000ef4c .byte    0x65, 0x6d, 0x20, 0x63
0000ef50 ldpsw    x15, x27, [x19, #-0xd0]
0000ef54 .byte    0x67, 0x27, 0x29, 0x00
0000ef58 ldpsw    x9, x24, [x27, #-0xe8]
0000ef5c fadd     z4.h, z3.h, z4.h
0000ef60 fnmls    z22.h, p2/m, z11.h, z3.h
0000ef64 .byte    0x20, 0x49, 0x43, 0x43
0000ef68 .byte    0x49, 0x44, 0x00, 0x69
0000ef6c .byte    0x6d, 0x65, 0x69, 0x00
0000ef70 ldpsw    x4, x25, [x10, #-0x50]
0000ef74 .byte    0x63, 0x65, 0x20, 0x49
0000ef78 and      w13, w10, w9, lsr #17
0000ef7c .byte    0x28, 0x31, 0x35, 0x20
0000ef80 ldpsw    x4, x25, [x11, #-0xe8]
0000ef84 .byte    0x6d, 0x61, 0x6c, 0x20
0000ef88 ldpsw    x4, x26, [x11, #-0xc8]
0000ef8c .byte    0x74, 0x73, 0x20, 0x69
0000ef90 .byte    0x6e, 0x63, 0x6c, 0x75
0000ef94 .byte    0x64, 0x69, 0x6e, 0x67
0000ef98 fnmls    z0.h, p5/m, z1.h, z8.h
0000ef9c .byte    0x20, 0x63, 0x6f, 0x72
0000efa0 .byte    0x72, 0x65, 0x63, 0x74
0000efa4 fnmls    z0.h, p0/m, z25.h, z8.h
0000efa8 .byte    0x63, 0x6b, 0x73, 0x75
0000efac .byte    0x6d, 0x29, 0x00, 0x69
0000efb0 .byte    0x6d, 0x65, 0x69, 0x32
0000efb4 .byte    0x00, 0x44, 0x65, 0x76
0000efb8 .byte    0x69, 0x63, 0x65, 0x20
0000efbc .byte    0x49, 0x4d, 0x45, 0x49
0000efc0 adds     w18, w17, #0xa02
0000efc4 fmls     z21.h, p0/m, z1.h, z4.h
0000efc8 .byte    0x63, 0x69, 0x6d, 0x61
0000efcc ldpsw    x12, x8, [x3, #-0xe0]
0000efd0 .byte    0x67, 0x69, 0x74, 0x73
0000efd4 .byte    0x20, 0x69, 0x6e, 0x63
0000efd8 ldpsw    x12, x29, [x11, #-0xe0]
0000efdc .byte    0x6e, 0x67, 0x20, 0x74
0000efe0 .byte    0x68, 0x65, 0x20, 0x63
0000efe4 fnmls    z15.h, p4/m, z19.h, z18.h
0000efe8 .byte    0x63, 0x74, 0x20, 0x63
0000efec .byte    0x68, 0x65, 0x63, 0x6b
0000eff0 ldp      w19, w29, [x11, #-0x98]
0000eff4 .byte    0x00, 0x6b, 0x65, 0x72
0000eff8 umax     v14.4h, v11.4h, v12.4h
0000effc .byte    0x76, 0x65, 0x72, 0x73
0000f000 .byte    0x69, 0x6f, 0x6e, 0x00
0000f004 umax     v11.8h, v11.8h, v18.8h
0000f008 .byte    0x65, 0x6c, 0x20, 0x76
0000f00c ldpsw    x5, x28, [x19, #-0x68]
0000f010 .byte    0x6f, 0x6e, 0x20, 0x73
0000f014 uabdl2   v20.4s, v19.8h, v9.8h
0000f018 .byte    0x67, 0x0a, 0x28, 0x61
0000f01c ldp      d21, d29, [x3, #-0x110]
0000f020 .byte    0x61, 0x74, 0x69, 0x63
0000f024 ldrh     w1, [x3, #0x1636]
0000f028 .byte    0x20, 0x75, 0x70, 0x64
0000f02c .byte    0x61, 0x74, 0x65, 0x64
0000f030 .byte    0x20, 0x6f, 0x6e, 0x20
0000f034 .byte    0x65, 0x61, 0x63, 0x68
0000f038 umlsl2   v0.4s, v17.8h, v15.h[2]
0000f03c st1      {v20.4s, v21.4s, v22.4s, v23.4s}, [x11]
0000f040 .byte    0x6f, 0x67, 0x66, 0x73
0000f044 fnmls    z18.h, p1/m, z10.h, z19.h
0000f048 ldp      d20, d19, [x19, #-0xb0]
0000f04c .byte    0x62, 0x65, 0x72, 0x00
0000f050 ands     w20, w26, #0xfffffff
0000f054 .byte    0x65, 0x63, 0x6f, 0x72
0000f058 .byte    0x64, 0x20, 0x77, 0x68
0000f05c stnp     d5, d27, [x19, #-0x200]
0000f060 .byte    0x6f, 0x67, 0x66, 0x73
0000f064 .byte    0x20, 0x69, 0x73, 0x20
0000f068 .byte    0x72, 0x65, 0x2d, 0x63
0000f06c .byte    0x72, 0x65, 0x61, 0x74
0000f070 .byte    0x65, 0x64, 0x2e, 0x00
0000f074 ldnp     d12, d27, [x27, #-0x190]
0000f078 ldnp     d5, d29, [x19, #-0x1b0]
0000f07c ldp      d14, d28, [x17, #-0x1f0]
0000f080 .byte    0x00, 0x53, 0x65, 0x74
0000f084 .byte    0x20, 0x52, 0x41, 0x4d
0000f088 .byte    0x20, 0x6c, 0x6f, 0x67
0000f08c .byte    0x20, 0x6c, 0x65, 0x76
0000f090 stnp     w5, w27, [x3, #-0x100]
0000f094 .byte    0x44, 0x2c, 0x20, 0x49
0000f098 ldnp     s12, s8, [x1, #0x28]
0000f09c .byte    0x20, 0x43, 0x20, 0x6f
0000f0a0 ldp      w18, w8, [x3, #0xc0]
0000f0a4 ldr      x10, #0x4f4a4
0000f0a8 .byte    0x20, 0x2d, 0x20, 0x65
0000f0ac .byte    0x6d, 0x65, 0x72, 0x67
0000f0b0 ldrh     w5, [x19, #0x11b6]
0000f0b4 .byte    0x20, 0x6d, 0x65, 0x73
0000f0b8 fnmls    z19.h, p0/m, z11.h, z7.h
0000f0bc usubl2   v19.4s, v3.8h, v15.8h
0000f0c0 .byte    0x6c, 0x79, 0x0a, 0x20
0000f0c4 stp      s0, s16, [x25, #-0x100]
0000f0c8 .byte    0x20, 0x61, 0x64, 0x64
0000f0cc ldpsw    x0, x24, [x25, #-0x70]
0000f0d0 .byte    0x74, 0x69, 0x63, 0x61
0000f0d4 fmls     z12.h, p0/m, z3.h, z13.h
0000f0d8 .byte    0x73, 0x73, 0x61, 0x67
0000f0dc .byte    0x65, 0x73, 0x0a, 0x20
0000f0e0 stp      s0, s17, [x9, #-0x100]
0000f0e4 .byte    0x20, 0x61, 0x64, 0x64
0000f0e8 .byte    0x20, 0x65, 0x72, 0x72
0000f0ec stp      d15, d28, [x19, #-0x200]
0000f0f0 .byte    0x65, 0x73, 0x73, 0x61
0000f0f4 bic      w7, w11, w19, lsr #25
0000f0f8 .byte    0x20, 0x20, 0x49, 0x20
0000f0fc fmul     z13.h, z1.h, z1.h[4]
0000f100 usubl2   v4.4s, v3.8h, v9.8h
0000f104 ldp      d6, d27, [x27, #-0xe0]
0000f108 uqshl    v1.2d, v3.2d, #0x29
0000f10c .byte    0x6e, 0x61, 0x6c, 0x20
0000f110 .byte    0x6d, 0x65, 0x73, 0x73
0000f114 .byte    0x61, 0x67, 0x65, 0x73
0000f118 .byte    0x0a, 0x20, 0x20, 0x44
0000f11c .byte    0x20, 0x2d, 0x20, 0x61
0000f120 .byte    0x64, 0x64, 0x20, 0x64
0000f124 .byte    0x65, 0x62, 0x75, 0x67
0000f128 .byte    0x20, 0x6d, 0x65, 0x73
0000f12c fnmls    z19.h, p0/m, z11.h, z7.h
0000f130 .byte    0x73, 0x0a, 0x52, 0x41
0000f134 umlal2   v13.4s, v2.8h, v12.h[2]
0000f138 .byte    0x67, 0x73, 0x20, 0x61
0000f13c adr      x18, #0x4fdeb
0000f140 ldpsw    x5, x28, [x19, #-0x68]
0000f144 .byte    0x73, 0x74, 0x65, 0x64
0000f148 .byte    0x20, 0x74, 0x6f, 0x20
0000f14c .byte    0x6c, 0x6f, 0x67, 0x73
0000f150 .byte    0x20, 0x70, 0x61, 0x72
0000f154 ldpsw    x20, x26, [x11, #-0x60]
0000f158 .byte    0x6f, 0x6e, 0x20, 0x61
0000f15c ldp      d20, d8, [x3, #-0x170]
0000f160 .byte    0x70, 0x6f, 0x72, 0x74
0000f164 .byte    0x61, 0x6e, 0x74, 0x63
0000f168 .byte    0x68, 0x65, 0x63, 0x6b
0000f16c umin     v16.8h, v27.8h, v9.8h
0000f170 .byte    0x74, 0x73, 0x00, 0x5e
0000f174 saddwt   z27.h, z2.h, z9.b
0000f178 cmpge    p3.h, p6/z, z2.h, z29.d
0000f17c .byte    0x00, 0x6c, 0x6f, 0x67
0000f180 fnmls    z12.h, p1/m, z11.h, z22.h
0000f184 .byte    0x6c, 0x2e, 0x75, 0x61
0000f188 ubfx     w18, w3, #0, #0x1e
0000f18c .byte    0x65, 0x74, 0x20, 0x55
0000f190 fcmla    v1.4h, v18.4h, v20.h[0], #0xb4
0000f194 ldpsw    x19, x25, [x11, #-0x70]
0000f198 stnp     d1, d27, [x3, #-0x200]
0000f19c stnp     d15, d25, [x27, #-0x200]
0000f1a0 ldnp     d5, d29, [x19, #-0x1b0]
0000f1a4 ldnp     s0, s10, [x1, #0x20]
0000f1a8 .byte    0x20, 0x49, 0x2c, 0x20
0000f1ac .byte    0x45, 0x2c, 0x20, 0x43
0000f1b0 .byte    0x20, 0x6f, 0x72, 0x20
0000f1b4 .byte    0x58, 0x29, 0x0a, 0x20
0000f1b8 stp      s0, s22, [x1, #-0x100]
0000f1bc fnmls    z0.h, p1/m, z9.h, z13.h
0000f1c0 umax     v18.8h, v27.8h, v5.8h
0000f1c4 stp      d3, d30, [x11, #-0x200]
0000f1c8 .byte    0x65, 0x73, 0x73, 0x61
0000f1cc .byte    0x67, 0x65, 0x73, 0x20
0000f1d0 ldrh     w15, [x19, #0x1636]
0000f1d4 .byte    0x0a, 0x20, 0x20, 0x43
0000f1d8 .byte    0x20, 0x2d, 0x20, 0x61
0000f1dc .byte    0x64, 0x64, 0x20, 0x63
0000f1e0 ldpsw    x18, x26, [x11, #-0x60]
0000f1e4 .byte    0x63, 0x61, 0x6c, 0x20
0000f1e8 .byte    0x6d, 0x65, 0x73, 0x73
0000f1ec .byte    0x61, 0x67, 0x65, 0x73
0000f1f0 .byte    0x0a, 0x20, 0x20, 0x45
0000f1f4 .byte    0x20, 0x2d, 0x20, 0x61
0000f1f8 .byte    0x64, 0x64, 0x20, 0x65
0000f1fc .byte    0x72, 0x72, 0x6f, 0x72
0000f200 .byte    0x20, 0x6d, 0x65, 0x73
0000f204 fnmls    z19.h, p0/m, z11.h, z7.h
0000f208 .byte    0x73, 0x0a, 0x20, 0x20
0000f20c .byte    0x49, 0x20, 0x2d, 0x20
0000f210 .byte    0x61, 0x64, 0x64, 0x20
0000f214 .byte    0x69, 0x6e, 0x66, 0x6f
0000f218 .byte    0x72, 0x6d, 0x61, 0x74
0000f21c .byte    0x69, 0x6f, 0x6e, 0x61
0000f220 fmls     z12.h, p0/m, z3.h, z13.h
0000f224 .byte    0x73, 0x73, 0x61, 0x67
0000f228 .byte    0x65, 0x73, 0x0a, 0x20
0000f22c stp      s0, s17, [x1, #-0x100]
0000f230 .byte    0x20, 0x61, 0x64, 0x64
0000f234 .byte    0x20, 0x64, 0x65, 0x62
0000f238 stp      d21, d25, [x27, #-0x200]
0000f23c .byte    0x65, 0x73, 0x73, 0x61
0000f240 .byte    0x67, 0x65, 0x73, 0x00
0000f244 ldnp     d12, d27, [x27, #-0x190]
0000f248 ldnp     d5, d29, [x19, #-0x1b0]
0000f24c .byte    0x2e, 0x75, 0x69, 0x00
0000f250 .byte    0x53, 0x65, 0x74, 0x20
0000f254 .byte    0x6f, 0x6e, 0x2d, 0x73
0000f258 fnmls    z3.h, p4/m, z19.h, z5.h
0000f25c umlal2   v14.4s, v3.8h, v12.h[2]
0000f260 fmls     z7.h, p0/m, z3.h, z12.h
0000f264 .byte    0x76, 0x65, 0x6c, 0x20
0000f268 .byte    0x28, 0x44, 0x2c, 0x20
0000f26c .byte    0x49, 0x2c, 0x20, 0x45
0000f270 .byte    0x2c, 0x20, 0x43, 0x20
0000f274 ldr      x15, #0x500c0
0000f278 .byte    0x29, 0x0a, 0x20, 0x20
0000f27c .byte    0x58, 0x20, 0x2d, 0x20
0000f280 .byte    0x65, 0x6d, 0x65, 0x72
0000f284 .byte    0x67, 0x65, 0x6e, 0x63
0000f288 fmls     z25.h, p0/m, z3.h, z13.h
0000f28c .byte    0x73, 0x73, 0x61, 0x67
0000f290 .byte    0x65, 0x73, 0x20, 0x6f
0000f294 bic      w14, w3, w25, lsr #27
0000f298 .byte    0x20, 0x20, 0x43, 0x20
0000f29c fmul     z13.h, z1.h, z1.h[4]
0000f2a0 .byte    0x64, 0x20, 0x63, 0x72
0000f2a4 .byte    0x69, 0x74, 0x69, 0x63
0000f2a8 stp      d1, d27, [x3, #-0x200]
0000f2ac .byte    0x65, 0x73, 0x73, 0x61
0000f2b0 bic      w7, w11, w19, lsr #25
0000f2b4 .byte    0x20, 0x20, 0x45, 0x20
0000f2b8 fmul     z13.h, z1.h, z1.h[4]
0000f2bc .byte    0x64, 0x20, 0x65, 0x72
0000f2c0 .byte    0x72, 0x6f, 0x72, 0x20
0000f2c4 .byte    0x6d, 0x65, 0x73, 0x73
0000f2c8 .byte    0x61, 0x67, 0x65, 0x73
0000f2cc .byte    0x0a, 0x20, 0x20, 0x49
0000f2d0 .byte    0x20, 0x2d, 0x20, 0x61
0000f2d4 .byte    0x64, 0x64, 0x20, 0x69
0000f2d8 .byte    0x6e, 0x66, 0x6f, 0x72
0000f2dc ldpsw    x13, x24, [x11, #-0x60]
0000f2e0 ldnp     d15, d27, [x19, #-0x1f0]
0000f2e4 .byte    0x20, 0x6d, 0x65, 0x73
0000f2e8 fnmls    z19.h, p0/m, z11.h, z7.h
0000f2ec .byte    0x73, 0x0a, 0x20, 0x20
0000f2f0 .byte    0x44, 0x20, 0x2d, 0x20
0000f2f4 .byte    0x61, 0x64, 0x64, 0x20
0000f2f8 .byte    0x64, 0x65, 0x62, 0x75
0000f2fc fmls     z7.h, p0/m, z3.h, z13.h
0000f300 .byte    0x73, 0x73, 0x61, 0x67
0000f304 stp      d5, d28, [x27]
0000f308 .byte    0x64, 0x35, 0x2d, 0x63
0000f30c .byte    0x6c, 0x6f, 0x67, 0x6f
0000f310 cbnz     w0, #0x97cb0
0000f314 fnmls    z0.h, p0/m, z25.h, z8.h
0000f318 .byte    0x63, 0x6b, 0x73, 0x75
0000f31c .byte    0x6d, 0x20, 0x6f, 0x66
0000f320 umlsl2   v0.4s, v25.8h, v12.h[2]
0000f324 .byte    0x67, 0x6f, 0x20, 0x69
0000f328 fnmls    z13.h, p0/m, z11.h, z7.h
0000f32c fmla     z14.h, p0/m, z1.h, z13.h
0000f330 .byte    0x69, 0x64, 0x00, 0x44
0000f334 .byte    0x65, 0x76, 0x69, 0x63
0000f338 .byte    0x65, 0x20, 0x4d, 0x45
0000f33c stnp     w9, w17, [x2, #0x50]
0000f340 .byte    0x31, 0x34, 0x20, 0x68
0000f344 .byte    0x65, 0x78, 0x61, 0x64
0000f348 ldp      d5, d24, [x27, #-0x170]
0000f34c .byte    0x61, 0x6c, 0x20, 0x6f
0000f350 ldeorb   w17, w18, [x3]
0000f354 .byte    0x20, 0x64, 0x65, 0x63
0000f358 ldnp     d9, d27, [x11, #-0x1f0]
0000f35c .byte    0x20, 0x64, 0x69, 0x67
0000f360 ldp      w9, w29, [x3, #-0x68]
0000f364 .byte    0x00, 0x5e, 0x5b, 0x5b
0000f368 ldpsw    x26, x30, [x1, #-0xe0]
0000f36c .byte    0x67, 0x69, 0x74, 0x3a
0000f370 adds     w29, w10, #0xed7, lsl #12
0000f374 .byte    0x34, 0x7d, 0x24, 0x7c
0000f378 .byte    0x5e, 0x5b, 0x5b, 0x3a
0000f37c ldpsw    x4, x26, [x11, #-0xc8]
0000f380 .byte    0x74, 0x3a, 0x5d, 0x5d
0000f384 str      h27, [x11, #0x1c18]
0000f388 fmla     z4.h, p0/m, z1.h, z13.h
0000f38c .byte    0x6d, 0x74, 0x65, 0x73
0000f390 ldnp     d20, d23, [x27, #-0x1e0]
0000f394 .byte    0x6f, 0x63, 0x6b, 0x73
0000f398 ldp      d0, d19, [x16, #-0xb0]
0000f39c .byte    0x62, 0x65, 0x72, 0x20
0000f3a0 stp      d15, d25, [x19, #-0x200]
0000f3a4 .byte    0x65, 0x6d, 0x6f, 0x72
0000f3a8 ldnp     d25, d8, [x3, #-0x1e0]
0000f3ac .byte    0x6f, 0x63, 0x6b, 0x73
0000f3b0 ldnp     d0, d24, [x9, #-0x140]
0000f3b4 .byte    0x6f, 0x63, 0x61, 0x74
0000f3b8 .byte    0x65, 0x64, 0x20, 0x74
0000f3bc fmls     z15.h, p0/m, z3.h, z13.h
0000f3c0 .byte    0x6d, 0x74, 0x65, 0x73
0000f3c4 .byte    0x74, 0x20, 0x61, 0x75
0000f3c8 .byte    0x74, 0x6f, 0x6d, 0x61
0000f3cc .byte    0x74, 0x69, 0x6f, 0x6e
0000f3d0 adr      x10, #0x4f7d1
0000f3d4 .byte    0x20, 0x2d, 0x20, 0x61
0000f3d8 ldp      s21, s29, [x3, #-0x88]
0000f3dc .byte    0x61, 0x6c, 0x6c, 0x6f
0000f3e0 fnmls    z3.h, p0/m, z11.h, z20.h
0000f3e4 .byte    0x00, 0x5e, 0x5b, 0x5b
0000f3e8 .byte    0x3a, 0x64, 0x69, 0x67
0000f3ec .byte    0x69, 0x74, 0x3a, 0x5d
0000f3f0 stnp     s29, s30, [x26, #-0x78]
0000f3f4 .byte    0x37, 0x7d, 0x24, 0x00
0000f3f8 .byte    0x6d, 0x65, 0x6d, 0x74
0000f3fc sqdmlsl  s5, h27, v4.h[3]
0000f400 ldnp     d3, d30, [x11, #-0x1d0]
0000f404 tbx      v5.16b, {v27.16b, v28.16b, v29.16b, v30.16b}, v0.16b
0000f408 fnmls    z21.h, p3/m, z11.h, z2.h
0000f40c .byte    0x72, 0x20, 0x6f, 0x66
0000f410 .byte    0x20, 0x63, 0x79, 0x63
0000f414 .byte    0x6c, 0x65, 0x73, 0x20
0000f418 stp      d9, d27, [x19, #-0x200]
0000f41c fnmls    z5.h, p3/m, z11.h, z20.h
0000f420 .byte    0x73, 0x74, 0x20, 0x61
0000f424 ldp      d21, d29, [x3, #-0x110]
0000f428 uqshl    v1.2d, v3.2d, #0x29
0000f42c .byte    0x6e, 0x0a, 0x20, 0x20
0000f430 .byte    0x30, 0x20, 0x2d, 0x20
0000f434 ldpsw    x9, x27, [x19, #-0xd0]
0000f438 fnmls    z14.h, p2/m, z11.h, z20.h
0000f43c ldp      d0, d27, [x8, #-0x1b0]
0000f440 .byte    0x74, 0x65, 0x73, 0x74
0000f444 .byte    0x5f, 0x6d, 0x6f, 0x64
0000f448 fadd     z5.h, z3.h, z13.h
0000f44c .byte    0x6d, 0x74, 0x65, 0x73
0000f450 umlal2   v20.4s, v3.8h, v13.h[2]
0000f454 .byte    0x64, 0x65, 0x0a, 0x20
0000f458 .byte    0x20, 0x61, 0x75, 0x74
0000f45c .byte    0x6f, 0x20, 0x2d, 0x20
0000f460 uqshl    v1.2d, v11.2d, #0x34
0000f464 ldpsw    x13, x24, [x11, #-0x60]
0000f468 .byte    0x6f, 0x6e, 0x00, 0x5e
0000f46c uqshl    v1.2d, v11.2d, #0x34
0000f470 .byte    0x24, 0x00, 0x6e, 0x75
0000f474 ldpsw    x13, x11, [x11, #-0x68]
0000f478 tbx      v13.16b, {v27.16b, v28.16b, v29.16b, v30.16b}, v0.16b
0000f47c fnmls    z21.h, p3/m, z11.h, z2.h
0000f480 .byte    0x72, 0x20, 0x6f, 0x66
0000f484 .byte    0x20, 0x53, 0x49, 0x4d
0000f488 fcmla    v0.8h, v25.8h, v12.h[1], #0x10e
0000f48c stnp     w20, w28, [x27, #0x50]
0000f490 .byte    0x53, 0x65, 0x74, 0x20
0000f494 .byte    0x69, 0x6e, 0x20, 0x74
0000f498 ands     w8, w11, #0x3ffffff
0000f49c fnmls    z1.h, p3/m, z19.h, z7.h
0000f4a0 .byte    0x20, 0x31, 0x20, 0x74
0000f4a4 stp      w15, w8, [x3, #-0x60]
0000f4a8 adds     w0, w16, #0x6d7, lsl #12
0000f4ac .byte    0x32, 0x33, 0x34, 0x5d
0000f4b0 mla      v4.8h, v1.8h, v2.h[3]
0000f4b4 .byte    0x2e, 0x63, 0x61, 0x72
0000f4b8 .byte    0x72, 0x69, 0x65, 0x72
0000f4bc uabdl    v0.4s, v16.4h, v15.4h
0000f4c0 .byte    0x63, 0x61, 0x72, 0x72
0000f4c4 .byte    0x69, 0x65, 0x72, 0x20
0000f4c8 .byte    0x76, 0x61, 0x6c, 0x75
0000f4cc .byte    0x65, 0x20, 0x70, 0x61
0000f4d0 .byte    0x73, 0x73, 0x65, 0x64
0000f4d4 sqshlu   v0.2d, v17.2d, #0x32
0000f4d8 fmls     z13.h, p0/m, z3.h, z11.h
0000f4dc ldnp     d18, d27, [x19, #-0x1b0]
0000f4e0 .byte    0x0a, 0x28, 0x61, 0x75
0000f4e4 .byte    0x74, 0x6f, 0x6d, 0x61
0000f4e8 .byte    0x74, 0x69, 0x63, 0x61
0000f4ec .byte    0x6c, 0x6c, 0x79, 0x20
0000f4f0 .byte    0x75, 0x70, 0x64, 0x61
0000f4f4 .byte    0x74, 0x65, 0x64, 0x20
0000f4f8 .byte    0x6f, 0x6e, 0x20, 0x65
0000f4fc .byte    0x61, 0x63, 0x68, 0x20
0000f500 .byte    0x62, 0x6f, 0x6f, 0x74
0000f504 fmla     z9.h, p0/m, z1.h, z19.h
0000f508 ldnp     d18, d26, [x11, #-0x1f0]
0000f50c .byte    0x6e, 0x6f, 0x00, 0x44
0000f510 .byte    0x65, 0x76, 0x69, 0x63
0000f514 fmls     z5.h, p0/m, z3.h, z19.h
0000f518 ldnp     d18, d26, [x11, #-0x1f0]
0000f51c ldp      d0, d27, [x17, #-0xb0]
0000f520 bic      w2, w11, w18, lsr #25
0000f524 fnmls    z8.h, p5/m, z9.h, z19.h
0000f528 usubl2   v4.4s, v3.8h, v9.8h
0000f52c .byte    0x74, 0x65, 0x72, 0x63
0000f530 .byte    0x68, 0x61, 0x6e, 0x67
0000f534 ldrh     w1, [x19, #0x1630]
0000f538 .byte    0x20, 0x77, 0x69, 0x74
0000f53c .byte    0x68, 0x20, 0x27, 0x62
0000f540 fcmla    v1.8h, v19.8h, v3.h[1], #0x10e
0000f544 stp      w4, w25, [x11, #-0xc8]
0000f548 ldpsw    x0, x28, [x24, #-0xa8]
0000f54c .byte    0x70, 0x5f, 0x6f, 0x72
0000f550 fnmls    z1.h, p3/m, z19.h, z7.h
0000f554 .byte    0x00, 0x49, 0x6e, 0x64
0000f558 .byte    0x69, 0x63, 0x61, 0x74
0000f55c .byte    0x65, 0x20, 0x69, 0x66
0000f560 fnmls    z0.h, p5/m, z1.h, z8.h
0000f564 .byte    0x20, 0x56, 0x65, 0x72
0000f568 fnmls    z9.h, p1/m, z19.h, z9.h
0000f56c umlal2   v4.4s, v3.8h, v2.h[0]
0000f570 sqshl    v15.4s, v3.4s, #0
0000f574 .byte    0x72, 0x61, 0x6e, 0x67
0000f578 .byte    0x65, 0x20, 0x57, 0x61
0000f57c umin     v18.8h, v19.8h, v9.8h
0000f580 .byte    0x67, 0x20, 0x73, 0x63
0000f584 umax     v18.8h, v11.8h, v5.8h
0000f588 ldnp     d10, d29, [x24, #-0x170]
0000f58c fmls     z12.h, p0/m, z3.h, z2.h
0000f590 ldpsw    x0, x28, [x25, #-0xa8]
0000f594 .byte    0x70, 0x70, 0x65, 0x64
0000f598 .byte    0x20, 0x28, 0x54, 0x52
0000f59c .byte    0x55, 0x45, 0x7c, 0x46
0000f5a0 uaddwt   z1.h, z2.h, z19.b
0000f5a4 smov     x9, v17.h[2]
0000f5a8 .byte    0x4f, 0x54, 0x45, 0x3a
0000f5ac .byte    0x20, 0x31, 0x2e, 0x20
0000f5b0 ldrh     w15, [x18, #0x1636]
0000f5b4 .byte    0x20, 0x77, 0x6f, 0x72
0000f5b8 .byte    0x6b, 0x73, 0x20, 0x6f
0000f5bc umlal2   v14.4s, v3.8h, v14.h[2]
0000f5c0 fmls     z14.h, p3/m, z11.h, z19.h
0000f5c4 fnmls    z3.h, p5/m, z11.h, z18.h
0000f5c8 fcmla    v0.8h, v1.8h, v8.h[1], #0x10e
0000f5cc bic      w14, w11, w14, lsl #25
0000f5d0 .byte    0x20, 0x20, 0x20, 0x20
0000f5d4 usubl    v0.8h, v1.8b, v18.8b
0000f5d8 .byte    0x20, 0x41, 0x20, 0x77
0000f5dc ldpsw    x1, x28, [x19, #-0x90]
0000f5e0 .byte    0x6e, 0x67, 0x20, 0x74
0000f5e4 .byte    0x65, 0x78, 0x74, 0x20
0000f5e8 ldnp     d23, d26, [x11, #-0x140]
0000f5ec .byte    0x20, 0x62, 0x65, 0x20
0000f5f0 .byte    0x73, 0x68, 0x6f, 0x77
0000f5f4 usubl2   v14.4s, v3.8h, v15.8h
0000f5f8 .byte    0x20, 0x6c, 0x6f, 0x67
0000f5fc .byte    0x6f, 0x2e, 0x00, 0x73
0000f600 sqrdmlsh z11.b, z11.b, z0.b
0000f604 .byte    0x65, 0x76, 0x69, 0x63
0000f608 .byte    0x65, 0x20, 0x73, 0x74
0000f60c ldp      s15, s24, [x27, #-0xa8]
0000f610 adr      x11, #0xda2bf
0000f614 .byte    0x69, 0x6e, 0x67, 0x20
0000f618 .byte    0x75, 0x6e, 0x69, 0x74
0000f61c fmls     z10.h, p2/m, z0.h, z12.h
0000f620 .byte    0x73, 0x73, 0x20, 0x6f
0000f624 subs     w18, w3, #0x948, lsl #12
0000f628 .byte    0x75, 0x61, 0x6c, 0x20
0000f62c fcvtxn2  v20.4s, v3.2d
0000f630 .byte    0x20, 0x31, 0x35, 0x20
0000f634 .byte    0x61, 0x6c, 0x70, 0x68
0000f638 ldp      d1, d27, [x19, #-0xb0]
0000f63c .byte    0x65, 0x72, 0x69, 0x63
0000f640 .byte    0x20, 0x6f, 0x72, 0x20
0000f644 .byte    0x68, 0x79, 0x70, 0x68
0000f648 .byte    0x65, 0x6e, 0x20, 0x63
0000f64c .byte    0x68, 0x61, 0x72, 0x61
0000f650 .byte    0x63, 0x74, 0x65, 0x72
0000f654 .byte    0x73, 0x29, 0x00, 0x73
0000f658 sqshlu   v15.4s, v3.4s, #0xe
0000f65c fnmls    z6.h, p1/m, z19.h, z19.h
0000f660 .byte    0x74, 0x00, 0x53, 0x4f
0000f664 fmls     z4.h, p0/m, z2.h, z8.h
0000f668 .byte    0x61, 0x64, 0x65, 0x72
0000f66c .byte    0x20, 0x6f, 0x66, 0x66
0000f670 bic      w19, w11, w20, lsr #25
0000f674 fnmls    z8.h, p5/m, z9.h, z19.h
0000f678 usubl2   v4.4s, v3.8h, v9.8h
0000f67c umax     v20.8h, v11.8h, v18.8h
0000f680 .byte    0x61, 0x6c, 0x79, 0x20
0000f684 .byte    0x62, 0x79, 0x20, 0x62
0000f688 ldnp     d15, d27, [x27, #-0xc0]
0000f68c fnmls    z15.h, p0/m, z11.h, z4.h
0000f690 umlal2   v18.4s, v3.8h, v4.h[3]
0000f694 .byte    0x20, 0x74, 0x72, 0x61
0000f698 .byte    0x63, 0x6b, 0x20, 0x53
0000f69c .byte    0x4f, 0x44, 0x20, 0x68
0000f6a0 fnmls    z5.h, p0/m, z11.h, z4.h
0000f6a4 .byte    0x72, 0x20, 0x61, 0x63
0000f6a8 .byte    0x72, 0x6f, 0x73, 0x73
0000f6ac .byte    0x20, 0x62, 0x6c, 0x61
0000f6b0 ldnp     d14, d26, [x27, #-0x1a0]
0000f6b4 .byte    0x61, 0x73, 0x68, 0x20
0000f6b8 umin     v2.8h, v27.8h, v21.8h
0000f6bc ldpsw    x4, x24, [x11, #-0x70]
0000f6c0 .byte    0x65, 0x73, 0x29, 0x00
0000f6c4 .byte    0x75, 0x6c, 0x6c, 0x6f
0000f6c8 .byte    0x6e, 0x67, 0x00, 0x74
0000f6cc umin     v9.4h, v11.4h, v5.4h
0000f6d0 .byte    0x6f, 0x66, 0x66, 0x73
0000f6d4 .byte    0x65, 0x74, 0x00, 0x55
0000f6d8 .byte    0x54, 0x43, 0x20, 0x74
0000f6dc .byte    0x69, 0x6d, 0x65, 0x20
0000f6e0 .byte    0x6f, 0x66, 0x66, 0x73
0000f6e4 .byte    0x65, 0x74, 0x20, 0x69
0000f6e8 fmls     z14.h, p0/m, z3.h, z19.h
0000f6ec .byte    0x63, 0x6f, 0x6e, 0x64
0000f6f0 ldpsw    x19, x8, [x3, #-0x68]
0000f6f4 .byte    0x6e, 0x63, 0x65, 0x20
0000f6f8 .byte    0x45, 0x70, 0x6f, 0x63
0000f6fc .byte    0x68, 0x0a, 0x28, 0x61
0000f700 ldp      d21, d29, [x3, #-0x110]
0000f704 .byte    0x61, 0x74, 0x69, 0x63
0000f708 ldrh     w1, [x3, #0x1636]
0000f70c .byte    0x20, 0x75, 0x70, 0x64
0000f710 .byte    0x61, 0x74, 0x65, 0x64
0000f714 .byte    0x20, 0x6f, 0x6e, 0x20
0000f718 .byte    0x65, 0x61, 0x63, 0x68
0000f71c umlsl2   v0.4s, v17.8h, v15.h[2]
0000f720 stnp     d20, d10, [x11]
0000f724 .byte    0x6c, 0x6f, 0x6e, 0x67
0000f728 .byte    0x00, 0x77, 0x69, 0x66
0000f72c .byte    0x69, 0x5f, 0x6d, 0x61
0000f730 .byte    0x63, 0x00, 0x57, 0x49
0000f734 st2      {v6.h, v7.h}[5], [x10]
0000f738 .byte    0x61, 0x63, 0x20, 0x41
0000f73c fnmls    z4.h, p1/m, z3.h, z18.h
0000f740 .byte    0x73, 0x73, 0x28, 0x65
0000f744 .byte    0x73, 0x29, 0x2e, 0x00
0000f748 ccmn     w25, #0x1b, #8, pl
0000f74c .byte    0x78, 0x64, 0x69, 0x67
0000f750 .byte    0x69, 0x74, 0x3a, 0x5d
0000f754 str      h29, [x26, #0x193c]
0000f758 cbnz     w26, #0x105c7c
0000f75c .byte    0x7d, 0x28, 0x5b, 0x5b
0000f760 ldpsw    x26, x30, [x1, #-0xe0]
0000f764 .byte    0x67, 0x69, 0x74, 0x3a
0000f768 .byte    0x5d, 0x5d, 0x7b, 0x32
0000f76c stnp     s29, s10, [x11, #-0xc0]
0000f770 ccmn     w25, #0x1b, #8, pl
0000f774 .byte    0x78, 0x64, 0x69, 0x67
0000f778 .byte    0x69, 0x74, 0x3a, 0x5d
0000f77c str      h29, [x26, #0x193c]
0000f780 cbnz     w26, #0x105ca4
0000f784 .byte    0x7d, 0x28, 0x5b, 0x5b
0000f788 ldpsw    x26, x30, [x1, #-0xe0]
0000f78c .byte    0x67, 0x69, 0x74, 0x3a
0000f790 .byte    0x5d, 0x5d, 0x7b, 0x32
0000f794 .byte    0x7d, 0x29, 0x29, 0x7b
0000f798 str      h16, [x1, #0x1896]
0000f79c umlsl2   v0.4s, v16.8h, v15.h[2]
0000f7a0 cmpge    p12.h, p0/z, z3.h, #0xfffffffffffffffb
0000f7a4 .byte    0x38, 0x75, 0x5d, 0x20
0000f7a8 ldnp     d0, d21, [x16, #-0x1f0]
0000f7ac .byte    0x69, 0x64, 0x61, 0x74
0000f7b0 .byte    0x69, 0x6f, 0x6e, 0x20
0000f7b4 ldnp     d6, d24, [x11, #-0x170]
0000f7b8 .byte    0x65, 0x64, 0x20, 0x66
0000f7bc .byte    0x6f, 0x72, 0x20, 0x55
0000f7c0 .byte    0x54, 0x41, 0x47, 0x20
0000f7c4 .byte    0x25, 0x61, 0x0a, 0x00
0000f7c8 .byte    0x6c, 0x6f, 0x6e, 0x67
0000f7cc .byte    0x00, 0x5e, 0x74, 0x74
0000f7d0 .byte    0x79, 0x5b, 0x2c, 0x5b
0000f7d4 rsubhn2  v26.8h, v9.4s, v12.4s
0000f7d8 .byte    0x75, 0x6d, 0x3a, 0x5d
0000f7dc stnp     s29, s30, [x26, #-0x78]
0000f7e0 cmpls    p3.h, p4/z, z9.h, #0x74
0000f7e4 .byte    0x00, 0x44, 0x65, 0x62
0000f7e8 ldpsw    x21, x25, [x27, #0x60]
0000f7ec .byte    0x62, 0x2e, 0x63, 0x00
0000f7f0 ldp      d6, d27, [x26, #-0xe0]
0000f7f4 .byte    0x61, 0x74, 0x20, 0x21
0000f7f8 stnp     w29, w8, [x1, #-0xc0]
0000f7fc .byte    0x76, 0x6f, 0x69, 0x64
0000f800 .byte    0x20, 0x2a, 0x29, 0x20
0000f804 .byte    0x30, 0x29, 0x00, 0x41
0000f808 .byte    0x53, 0x53, 0x45, 0x52
0000f80c .byte    0x54, 0x20, 0x25, 0x61
0000f810 .byte    0x20, 0x2b, 0x25, 0x64
0000f814 .byte    0x3a, 0x20, 0x25, 0x61
0000f818 .byte    0x0a, 0x00, 0x20, 0x00
0000f81c .byte    0x42, 0x75, 0x66, 0x66
0000f820 .byte    0x65, 0x72, 0x20, 0x21
0000f824 stnp     w29, w8, [x1, #-0xc0]
0000f828 .byte    0x76, 0x6f, 0x69, 0x64
0000f82c .byte    0x20, 0x2a, 0x29, 0x20
0000f830 ubfx     w16, w9, #0, #0xb
0000f834 uabdl2   v20.4s, v19.8h, v9.8h
0000f838 .byte    0x67, 0x2e, 0x63, 0x00
0000f83c .byte    0x44, 0x65, 0x73, 0x74
0000f840 .byte    0x69, 0x6e, 0x61, 0x74
0000f844 .byte    0x69, 0x6f, 0x6e, 0x20
0000f848 stnp     w1, w15, [x9, #-0x100]
0000f84c ldpsw    x8, x29, [x17, #-0x88]
0000f850 stp      w4, w8, [x3, #-0xb0]
0000f854 .byte    0x20, 0x30, 0x29, 0x00
0000f858 .byte    0x28, 0x28, 0x55, 0x49
0000f85c ldp      w14, w21, [x2, #0x70]
0000f860 .byte    0x20, 0x44, 0x65, 0x73
0000f864 .byte    0x74, 0x69, 0x6e, 0x61
0000f868 .byte    0x74, 0x69, 0x6f, 0x6e
0000f86c adr      x0, #0x4fd31
0000f870 adr      x24, #0x6fe7d
0000f874 adr      x16, #0x6fe79
0000f878 str      b17, [x9, #0x80a]
0000f87c .byte    0x3d, 0x20, 0x30, 0x00
0000f880 .byte    0x28, 0x55, 0x49, 0x4e
0000f884 stnp     w20, w19, [x18, #-0xb8]
0000f888 .byte    0x44, 0x65, 0x73, 0x74
0000f88c .byte    0x69, 0x6e, 0x61, 0x74
0000f890 .byte    0x69, 0x6f, 0x6e, 0x20
0000f894 umlal2   v13.4s, v1.8h, v3.h[1]
0000f898 fnmls    z21.h, p4/m, z19.h, z3.h
0000f89c .byte    0x29, 0x20, 0x3e, 0x20
0000f8a0 .byte    0x53, 0x74, 0x72, 0x4c
0000f8a4 stnp     w5, w27, [x19, #-0x100]
0000f8a8 .byte    0x53, 0x6f, 0x75, 0x72
0000f8ac .byte    0x63, 0x65, 0x29, 0x00
0000f8b0 .byte    0x28, 0x55, 0x49, 0x4e
0000f8b4 stnp     w20, w19, [x18, #-0xb8]
0000f8b8 .byte    0x53, 0x6f, 0x75, 0x72
0000f8bc stp      s3, s25, [x11, #-0x100]
0000f8c0 .byte    0x20, 0x44, 0x65, 0x73
0000f8c4 .byte    0x74, 0x69, 0x6e, 0x61
0000f8c8 .byte    0x74, 0x69, 0x6f, 0x6e
0000f8cc .byte    0x29, 0x20, 0x3e, 0x20
0000f8d0 .byte    0x53, 0x74, 0x72, 0x4c
0000f8d4 stnp     w5, w27, [x19, #-0x100]
0000f8d8 .byte    0x53, 0x6f, 0x75, 0x72
0000f8dc .byte    0x63, 0x65, 0x29, 0x00
0000f8e0 .byte    0x28, 0x55, 0x49, 0x4e
0000f8e4 stnp     w20, w19, [x18, #-0xb8]
0000f8e8 .byte    0x53, 0x6f, 0x75, 0x72
0000f8ec stp      s3, s25, [x11, #-0x100]
0000f8f0 .byte    0x20, 0x44, 0x65, 0x73
0000f8f4 .byte    0x74, 0x69, 0x6e, 0x61
0000f8f8 .byte    0x74, 0x69, 0x6f, 0x6e
0000f8fc str      b9, [x1, #0xf88]
0000f900 uqshl    v0.8h, v1.8h, v5.8h
0000f904 .byte    0x67, 0x74, 0x68, 0x00
0000f908 .byte    0x4c, 0x65, 0x6e, 0x67
0000f90c str      b20, [x3, x0]
0000f910 .byte    0x3d, 0x20, 0x5f, 0x67
0000f914 .byte    0x50, 0x63, 0x64, 0x5f
0000f918 fnmls    z6.h, p2/m, z10.h, z24.h
0000f91c .byte    0x64, 0x41, 0x74, 0x42
0000f920 .byte    0x75, 0x69, 0x6c, 0x64
0000f924 .byte    0x5f, 0x50, 0x63, 0x64
0000f928 ldpsw    x13, x24, [x10, #-0x40]
0000f92c .byte    0x6d, 0x75, 0x6d, 0x55
0000f930 umlsl2   v14.4s, v11.8h, v3.h[6]
0000f934 .byte    0x64, 0x65, 0x53, 0x74
0000f938 .byte    0x72, 0x69, 0x6e, 0x67
0000f93c .byte    0x4c, 0x65, 0x6e, 0x67
0000f940 ubfx     w20, w3, #0, #0x1b
0000f944 uabdl2   v20.4s, v19.8h, v9.8h
0000f948 str      b7, [x3, #0x848]
0000f94c .byte    0x20, 0x28, 0x28, 0x76
0000f950 .byte    0x6f, 0x69, 0x64, 0x20
0000f954 adr      x10, #0x4fe79
0000f958 stnp     w9, w0, [x1, #-0xc0]
0000f95c bc.pl    #0xac284
0000f960 .byte    0x4e, 0x29, 0x20, 0x53
0000f964 uabdl2   v20.4s, v19.8h, v9.8h
0000f968 .byte    0x67, 0x20, 0x26, 0x20
0000f96c adr      x16, #0x70871
0000f970 adr      x16, #0x6ff75
0000f974 .byte    0x30, 0x31, 0x29, 0x20
0000f978 adr      x29, #0x5011d
0000f97c uqshl    v0.8h, v0.8h, v5.8h
0000f980 .byte    0x67, 0x74, 0x68, 0x20
0000f984 .byte    0x3c, 0x20, 0x5f, 0x67
0000f988 .byte    0x50, 0x63, 0x64, 0x5f
0000f98c fnmls    z6.h, p2/m, z10.h, z24.h
0000f990 .byte    0x64, 0x41, 0x74, 0x42
0000f994 .byte    0x75, 0x69, 0x6c, 0x64
0000f998 .byte    0x5f, 0x50, 0x63, 0x64
0000f99c ldpsw    x13, x24, [x10, #-0x40]
0000f9a0 .byte    0x6d, 0x75, 0x6d, 0x55
0000f9a4 umlsl2   v14.4s, v11.8h, v3.h[6]
0000f9a8 .byte    0x64, 0x65, 0x53, 0x74
0000f9ac .byte    0x72, 0x69, 0x6e, 0x67
0000f9b0 .byte    0x4c, 0x65, 0x6e, 0x67
0000f9b4 ubfx     w20, w3, #0, #0x1b
0000f9b8 ldpsw    x20, x28, [x19, #0x98]
0000f9bc stnp     w26, w25, [x11, #-0x100]
0000f9c0 .byte    0x46, 0x69, 0x72, 0x73
0000f9c4 .byte    0x74, 0x53, 0x74, 0x72
0000f9c8 ldp      w9, w27, [x19, #-0xc8]
0000f9cc .byte    0x20, 0x21, 0x3d, 0x20
0000f9d0 .byte    0x30, 0x00, 0x53, 0x74
0000f9d4 .byte    0x72, 0x53, 0x69, 0x7a
0000f9d8 .byte    0x65, 0x20, 0x28, 0x53
0000f9dc rsubhn2  v5.8h, v27.4s, v15.4s
0000f9e0 .byte    0x64, 0x53, 0x74, 0x72
0000f9e4 ldp      w9, w27, [x19, #-0xc8]
0000f9e8 .byte    0x20, 0x21, 0x3d, 0x20
0000f9ec .byte    0x30, 0x00, 0x53, 0x74
0000f9f0 .byte    0x72, 0x53, 0x69, 0x7a
0000f9f4 .byte    0x65, 0x20, 0x28, 0x44
0000f9f8 ldpsw    x5, x28, [x27, #-0x60]
0000f9fc ldpsw    x14, x24, [x11, #-0x60]
0000fa00 .byte    0x6f, 0x6e, 0x29, 0x20
0000fa04 adr      x1, #0x501a9
0000fa08 .byte    0x00, 0x53, 0x74, 0x72
0000fa0c fnmls    z19.h, p2/m, z10.h, z26.h
0000fa10 .byte    0x20, 0x28, 0x53, 0x74
0000fa14 .byte    0x72, 0x69, 0x6e, 0x67
0000fa18 str      b9, [x1, #0x848]
0000fa1c ubfx     w0, w1, #0, #0xd
0000fa20 ldpsw    x20, x28, [x19, #0x98]
0000fa24 stnp     w26, w25, [x11, #-0x100]
0000fa28 .byte    0x53, 0x65, 0x61, 0x72
0000fa2c .byte    0x63, 0x68, 0x53, 0x74
0000fa30 .byte    0x72, 0x69, 0x6e, 0x67
0000fa34 str      b9, [x1, #0x848]
0000fa38 ubfx     w0, w1, #0, #0xd
0000fa3c ldpsw    x20, x28, [x19, #0x98]
0000fa40 stnp     w26, w25, [x11, #-0x100]
0000fa44 .byte    0x53, 0x6f, 0x75, 0x72
0000fa48 .byte    0x63, 0x65, 0x29, 0x20
0000fa4c adr      x1, #0x501f1
0000fa50 .byte    0x00, 0x28, 0x55, 0x49
0000fa54 ldp      w14, w21, [x2, #0x70]
0000fa58 fmaxnmv  h0, p2, z1.h
0000fa5c uabd     v19.8h, v3.8h, v9.8h
0000fa60 uqshl    v1.2d, v3.2d, #0x29
0000fa64 .byte    0x6e, 0x20, 0x2d, 0x20
0000fa68 .byte    0x28, 0x43, 0x48, 0x41
0000fa6c orn      w18, w2, w0, lsl #14
0000fa70 umlal2   v9.4s, v1.8h, v3.h[1]
0000fa74 fnmls    z21.h, p4/m, z19.h, z3.h
0000fa78 str      b9, [x1, #0xf88]
0000fa7c .byte    0x20, 0x53, 0x74, 0x72
0000fa80 fnmls    z19.h, p2/m, z10.h, z26.h
0000fa84 umlal2   v0.4s, v1.8h, v3.h[5]
0000fa88 fnmls    z21.h, p4/m, z19.h, z3.h
0000fa8c .byte    0x29, 0x00, 0x28, 0x55
0000fa90 .byte    0x49, 0x4e, 0x54, 0x4e
0000fa94 stnp     w9, w8, [x1, #-0xc0]
0000fa98 .byte    0x43, 0x48, 0x41, 0x52
0000fa9c stp      w24, w8, [x1, #-0xb0]
0000faa0 .byte    0x20, 0x53, 0x6f, 0x75
0000faa4 .byte    0x72, 0x63, 0x65, 0x20
0000faa8 fmaxnmv  h13, p0, z1.h
0000faac uabd     v19.8h, v3.8h, v9.8h
0000fab0 uqshl    v1.2d, v3.2d, #0x29
0000fab4 .byte    0x6e, 0x29, 0x20, 0x3e
0000fab8 .byte    0x20, 0x53, 0x74, 0x72
0000fabc .byte    0x4c, 0x65, 0x6e, 0x20
0000fac0 .byte    0x28, 0x53, 0x6f, 0x75
0000fac4 ldp      w18, w24, [x27, #-0xd8]
0000fac8 umlal2   v0.4s, v16.8h, v3.h[5]
0000facc fnmls    z21.h, p4/m, z19.h, z3.h
0000fad0 adr      x0, #0x50255
0000fad4 adr      x24, #0x70101
0000fad8 .byte    0x00, 0x41, 0x73, 0x63
0000fadc .byte    0x69, 0x69, 0x53, 0x74
0000fae0 .byte    0x72, 0x53, 0x69, 0x7a
0000fae4 eor      w5, w3, #0xff000001
0000fae8 .byte    0x65, 0x74, 0x75, 0x72
0000faec ldnp     d14, d21, [x19, #-0x1f0]
0000faf0 .byte    0x75, 0x65, 0x29, 0x20
0000faf4 adr      x1, #0x50299
0000faf8 .byte    0x00, 0x28, 0x55, 0x49
0000fafc ldp      w14, w21, [x2, #0x70]
0000fb00 .byte    0x28, 0x44, 0x65, 0x73
0000fb04 .byte    0x74, 0x69, 0x6e, 0x61
0000fb08 .byte    0x74, 0x69, 0x6f, 0x6e
0000fb0c .byte    0x20, 0x2d, 0x20, 0x53
0000fb10 .byte    0x6f, 0x75, 0x72, 0x63
0000fb14 .byte    0x65, 0x29, 0x20, 0x3e
0000fb18 .byte    0x20, 0x41, 0x73, 0x63
0000fb1c .byte    0x69, 0x69, 0x53, 0x74
0000fb20 uqshl    v18.8h, v3.8h, v5.8h
0000fb24 umlal2   v0.4s, v1.8h, v3.h[5]
0000fb28 fnmls    z21.h, p4/m, z19.h, z3.h
0000fb2c .byte    0x29, 0x00, 0x28, 0x55
0000fb30 .byte    0x49, 0x4e, 0x54, 0x4e
0000fb34 umlal2   v9.4s, v1.8h, v3.h[5]
0000fb38 fnmls    z21.h, p4/m, z19.h, z3.h
0000fb3c .byte    0x20, 0x2d, 0x20, 0x44
0000fb40 ldpsw    x5, x28, [x27, #-0x60]
0000fb44 ldpsw    x14, x24, [x11, #-0x60]
0000fb48 .byte    0x6f, 0x6e, 0x29, 0x20
0000fb4c .byte    0x3e, 0x20, 0x41, 0x73
0000fb50 .byte    0x63, 0x69, 0x69, 0x53
0000fb54 fcmne    p4.h, p4/z, z19.h, z12.h
0000fb58 .byte    0x6e, 0x20, 0x28, 0x53
0000fb5c .byte    0x6f, 0x75, 0x72, 0x63
0000fb60 st1      {v5.4s, v6.4s, v7.4s, v8.4s}, [x11]
0000fb64 .byte    0x65, 0x6e, 0x67, 0x74
0000fb68 str      b8, [x3, #0xf08]
0000fb6c adr      x0, #0xde752
0000fb70 .byte    0x63, 0x64, 0x5f, 0x46
0000fb74 .byte    0x69, 0x78, 0x65, 0x64
0000fb78 .byte    0x41, 0x74, 0x42, 0x75
0000fb7c .byte    0x69, 0x6c, 0x64, 0x5f
0000fb80 .byte    0x50, 0x63, 0x64, 0x4d
0000fb84 ldp      d1, d30, [x3, #-0x170]
0000fb88 .byte    0x75, 0x6d, 0x41, 0x73
0000fb8c .byte    0x63, 0x69, 0x69, 0x53
0000fb90 uabdl2   v20.4s, v19.8h, v9.8h
0000fb94 uqshl    v7.8h, v3.8h, v5.8h
0000fb98 .byte    0x67, 0x74, 0x68, 0x00
0000fb9c .byte    0x4c, 0x65, 0x6e, 0x67
0000fba0 str      b20, [x3, x0]
0000fba4 adr      x0, #0xde78a
0000fba8 .byte    0x63, 0x64, 0x5f, 0x46
0000fbac .byte    0x69, 0x78, 0x65, 0x64
0000fbb0 .byte    0x41, 0x74, 0x42, 0x75
0000fbb4 .byte    0x69, 0x6c, 0x64, 0x5f
0000fbb8 .byte    0x50, 0x63, 0x64, 0x4d
0000fbbc ldp      d1, d30, [x3, #-0x170]
0000fbc0 .byte    0x75, 0x6d, 0x41, 0x73
0000fbc4 .byte    0x63, 0x69, 0x69, 0x53
0000fbc8 uabdl2   v20.4s, v19.8h, v9.8h
0000fbcc uqshl    v7.8h, v3.8h, v5.8h
0000fbd0 .byte    0x67, 0x74, 0x68, 0x00
0000fbd4 ldpsw    x1, x28, [x26, #-0xe8]
0000fbd8 .byte    0x69, 0x53, 0x74, 0x72
0000fbdc fnmls    z19.h, p2/m, z10.h, z26.h
0000fbe0 ldpsw    x0, x10, [x1, #0x30]
0000fbe4 .byte    0x72, 0x73, 0x74, 0x53
0000fbe8 uabdl2   v20.4s, v19.8h, v9.8h
0000fbec .byte    0x67, 0x29, 0x00, 0x41
0000fbf0 ldpsw    x19, x24, [x27, #-0xb8]
0000fbf4 .byte    0x53, 0x74, 0x72, 0x53
0000fbf8 .byte    0x69, 0x7a, 0x65, 0x20
0000fbfc .byte    0x28, 0x53, 0x65, 0x63
0000fc00 .byte    0x6f, 0x6e, 0x64, 0x53
0000fc04 uabdl2   v20.4s, v19.8h, v9.8h
0000fc08 .byte    0x67, 0x29, 0x00, 0x41
0000fc0c ldpsw    x19, x24, [x27, #-0xb8]
0000fc10 .byte    0x53, 0x74, 0x72, 0x53
0000fc14 .byte    0x69, 0x7a, 0x65, 0x20
0000fc18 .byte    0x28, 0x44, 0x65, 0x73
0000fc1c .byte    0x74, 0x69, 0x6e, 0x61
0000fc20 .byte    0x74, 0x69, 0x6f, 0x6e
0000fc24 str      b9, [x1, #0x848]
0000fc28 .byte    0x20, 0x30, 0x00, 0x41
0000fc2c ldpsw    x19, x24, [x27, #-0xb8]
0000fc30 .byte    0x53, 0x74, 0x72, 0x53
0000fc34 .byte    0x69, 0x7a, 0x65, 0x20
0000fc38 .byte    0x28, 0x53, 0x74, 0x72
0000fc3c ldp      w9, w27, [x19, #-0xc8]
0000fc40 .byte    0x20, 0x21, 0x3d, 0x20
0000fc44 .byte    0x30, 0x00, 0x41, 0x73
0000fc48 .byte    0x63, 0x69, 0x69, 0x53
0000fc4c ldpsw    x20, x28, [x19, #0x98]
0000fc50 stnp     w26, w25, [x11, #-0x100]
0000fc54 .byte    0x53, 0x65, 0x61, 0x72
0000fc58 .byte    0x63, 0x68, 0x53, 0x74
0000fc5c .byte    0x72, 0x69, 0x6e, 0x67
0000fc60 str      b9, [x1, #0x848]
0000fc64 .byte    0x20, 0x30, 0x00, 0x41
0000fc68 ldpsw    x19, x24, [x27, #-0xb8]
0000fc6c .byte    0x53, 0x74, 0x72, 0x53
0000fc70 .byte    0x69, 0x7a, 0x65, 0x20
0000fc74 .byte    0x28, 0x53, 0x6f, 0x75
0000fc78 ldp      w18, w24, [x27, #-0xd8]
0000fc7c .byte    0x20, 0x21, 0x3d, 0x20
0000fc80 .byte    0x30, 0x00, 0x28, 0x55
0000fc84 .byte    0x49, 0x4e, 0x54, 0x4e
0000fc88 stnp     w9, w8, [x1, #-0xc0]
0000fc8c .byte    0x43, 0x48, 0x41, 0x52
0000fc90 stp      w24, w8, [x1, #-0xb0]
0000fc94 .byte    0x20, 0x44, 0x65, 0x73
0000fc98 .byte    0x74, 0x69, 0x6e, 0x61
0000fc9c .byte    0x74, 0x69, 0x6f, 0x6e
0000fca0 .byte    0x20, 0x2d, 0x20, 0x53
0000fca4 .byte    0x6f, 0x75, 0x72, 0x63
0000fca8 .byte    0x65, 0x29, 0x20, 0x3e
0000fcac .byte    0x20, 0x41, 0x73, 0x63
0000fcb0 .byte    0x69, 0x69, 0x53, 0x74
0000fcb4 uqshl    v18.8h, v3.8h, v5.8h
0000fcb8 umlal2   v0.4s, v1.8h, v3.h[5]
0000fcbc fnmls    z21.h, p4/m, z19.h, z3.h
0000fcc0 .byte    0x29, 0x00, 0x28, 0x55
0000fcc4 .byte    0x49, 0x4e, 0x54, 0x4e
0000fcc8 .byte    0x29, 0x20, 0x28, 0x53
0000fccc .byte    0x6f, 0x75, 0x72, 0x63
0000fcd0 .byte    0x65, 0x20, 0x2d, 0x20
0000fcd4 .byte    0x28, 0x43, 0x48, 0x41
0000fcd8 orn      w18, w2, w0, lsl #14
0000fcdc fmaxnmv  h9, p0, z1.h
0000fce0 uabd     v19.8h, v3.8h, v9.8h
0000fce4 uqshl    v1.2d, v3.2d, #0x29
0000fce8 .byte    0x6e, 0x29, 0x20, 0x3e
0000fcec .byte    0x3d, 0x20, 0x28, 0x41
0000fcf0 ldpsw    x19, x24, [x27, #-0xb8]
0000fcf4 .byte    0x53, 0x74, 0x72, 0x53
0000fcf8 .byte    0x69, 0x7a, 0x65, 0x20
0000fcfc .byte    0x28, 0x53, 0x6f, 0x75
0000fd00 ldp      w18, w24, [x27, #-0xd8]
0000fd04 .byte    0x20, 0x2a, 0x20, 0x73
0000fd08 fcmla    v9.8h, v19.8h, v5.h[3], #0x10e
0000fd0c .byte    0x66, 0x20, 0x28, 0x43
0000fd10 adds     w8, w10, #0x490, lsl #12
0000fd14 .byte    0x36, 0x29, 0x29, 0x00
0000fd18 .byte    0x53, 0x74, 0x72, 0x53
0000fd1c .byte    0x69, 0x7a, 0x65, 0x20
0000fd20 .byte    0x28, 0x52, 0x65, 0x74
0000fd24 .byte    0x75, 0x72, 0x6e, 0x56
0000fd28 fnmls    z1.h, p3/m, z3.h, z21.h
0000fd2c str      b9, [x1, #0x848]
0000fd30 .byte    0x20, 0x30, 0x00, 0x56
0000fd34 fnmls    z1.h, p3/m, z3.h, z21.h
0000fd38 adds     w0, w1, #0x80f
0000fd3c .byte    0x30, 0x30, 0x00, 0x56
0000fd40 fnmls    z1.h, p3/m, z3.h, z21.h
0000fd44 adr      x0, #0x504c9
0000fd48 .byte    0x78, 0x61, 0x30, 0x00
0000fd4c ldnp     d8, d21, [x17, #-0x1f0]
0000fd50 .byte    0x75, 0x65, 0x20, 0x26
0000fd54 .byte    0x20, 0x30, 0x78, 0x66
0000fd58 .byte    0x29, 0x20, 0x3c, 0x20
0000fd5c .byte    0x30, 0x78, 0x61, 0x00
0000fd60 fnmls    z19.h, p0/m, z10.h, z6.h
0000fd64 ldpsw    x19, x29, [x2, #-0x70]
0000fd68 .byte    0x6e, 0x67, 0x2e, 0x63
0000fd6c .byte    0x00, 0x28, 0x28, 0x55
0000fd70 .byte    0x49, 0x4e, 0x54, 0x4e
0000fd74 umlal2   v9.4s, v1.8h, v3.h[1]
0000fd78 fnmls    z21.h, p4/m, z19.h, z3.h
0000fd7c adr      x0, #0x50241
0000fd80 adr      x24, #0x7038d
0000fd84 adr      x16, #0x70389
0000fd88 str      b17, [x9, #0x80a]
0000fd8c .byte    0x3d, 0x20, 0x30, 0x00
0000fd90 .byte    0x28, 0x44, 0x65, 0x73
0000fd94 .byte    0x74, 0x69, 0x6e, 0x61
0000fd98 .byte    0x74, 0x69, 0x6f, 0x6e
0000fd9c .byte    0x20, 0x21, 0x3d, 0x20
0000fda0 umlal2   v8.4s, v1.8h, v6.h[7]
0000fda4 orn      w9, w3, w0, lsl #25
0000fda8 stp      w9, w8, [x1, #-0x80]
0000fdac .byte    0x29, 0x00, 0x28, 0x53
0000fdb0 .byte    0x6f, 0x75, 0x72, 0x63
0000fdb4 str      b5, [x3, #0x848]
0000fdb8 .byte    0x20, 0x28, 0x28, 0x76
0000fdbc .byte    0x6f, 0x69, 0x64, 0x20
0000fdc0 adr      x10, #0x502e5
0000fdc4 stnp     w9, w10, [x9]
0000fdc8 .byte    0x44, 0x65, 0x73, 0x74
0000fdcc .byte    0x4d, 0x61, 0x78, 0x20
0000fdd0 stnp     w28, w15, [x9, #-0x100]
0000fdd4 .byte    0x5f, 0x67, 0x50, 0x63
0000fdd8 ldpsw    x4, x23, [x27, #0x30]
0000fddc .byte    0x78, 0x65, 0x64, 0x41
0000fde0 ldpsw    x20, x16, [x19, #-0x58]
0000fde4 adr      x12, #0xcea72
0000fde8 .byte    0x63, 0x64, 0x4d, 0x61
0000fdec .byte    0x78, 0x69, 0x6d, 0x75
0000fdf0 ldpsw    x13, x21, [x11, #-0x90]
0000fdf4 fnmls    z3.h, p3/m, z27.h, z4.h
0000fdf8 ldpsw    x19, x29, [x2, #-0x70]
0000fdfc fcmeq    p14.h, p1/z, z27.h, z12.h
0000fe00 .byte    0x6e, 0x67, 0x74, 0x68
0000fe04 stnp     w9, w10, [x9]
0000fe08 .byte    0x44, 0x65, 0x73, 0x74
0000fe0c .byte    0x4d, 0x61, 0x78, 0x20
0000fe10 adr      x1, #0x505b5
0000fe14 .byte    0x29, 0x00, 0x28, 0x44
0000fe18 .byte    0x65, 0x73, 0x74, 0x4d
0000fe1c .byte    0x61, 0x78, 0x20, 0x3e
0000fe20 .byte    0x20, 0x53, 0x6f, 0x75
0000fe24 .byte    0x72, 0x63, 0x65, 0x4c
0000fe28 .byte    0x65, 0x6e, 0x29, 0x00
0000fe2c fnmls    z9.h, p3/m, z18.h, z20.h
0000fe30 ldnp     d18, d27, [x19, #-0x1f0]
0000fe34 fnmls    z19.h, p0/m, z10.h, z6.h
0000fe38 ldpsw    x19, x29, [x2, #-0x70]
0000fe3c sqshlu   v14.2d, v27.2d, #0xe
0000fe40 sqshl    v19.2d, v2.2d, #0x32
0000fe44 ldnp     d22, d25, [x11, #-0xe0]
0000fe48 stnp     w1, w28, [x3, #-0x100]
0000fe4c .byte    0x44, 0x65, 0x73, 0x74
0000fe50 .byte    0x69, 0x6e, 0x61, 0x74
0000fe54 ldnp     s9, s27, [x27, #-0x90]
0000fe58 .byte    0x20, 0x44, 0x65, 0x73
0000fe5c .byte    0x74, 0x4d, 0x61, 0x78
0000fe60 .byte    0x2c, 0x20, 0x28, 0x43
0000fe64 adds     w8, w10, #0x490, lsl #12
0000fe68 stp      w22, w8, [x1, #-0xb0]
0000fe6c .byte    0x53, 0x6f, 0x75, 0x72
0000fe70 .byte    0x63, 0x65, 0x2c, 0x20
0000fe74 .byte    0x53, 0x6f, 0x75, 0x72
0000fe78 fcmeq    p3.h, p1/z, z11.h, z12.h
0000fe7c .byte    0x6e, 0x20, 0x2b, 0x20
0000fe80 stnp     w17, w10, [x9]
0000fe84 .byte    0x4c, 0x65, 0x6e, 0x67
0000fe88 str      b20, [x3, x0]
0000fe8c .byte    0x3d, 0x20, 0x28, 0x5f
0000fe90 .byte    0x67, 0x50, 0x63, 0x64
0000fe94 .byte    0x5f, 0x46, 0x69, 0x78
0000fe98 .byte    0x65, 0x64, 0x41, 0x74
0000fe9c ldnp     d2, d29, [x10, #-0x170]
0000fea0 .byte    0x64, 0x5f, 0x50, 0x63
0000fea4 .byte    0x64, 0x4d, 0x61, 0x78
0000fea8 ldp      d9, d27, [x11, #-0xb0]
0000feac .byte    0x55, 0x6e, 0x69, 0x63
0000feb0 .byte    0x6f, 0x64, 0x65, 0x53
0000feb4 uabdl2   v20.4s, v19.8h, v9.8h
0000feb8 uqshl    v7.8h, v3.8h, v5.8h
0000febc ldp      w7, w29, [x3, #-0xc0]
0000fec0 .byte    0x29, 0x00, 0x28, 0x43
0000fec4 .byte    0x6f, 0x70, 0x79, 0x4c
0000fec8 .byte    0x65, 0x6e, 0x20, 0x21
0000fecc stp      w29, w8, [x1, #-0x80]
0000fed0 umlal2   v0.4s, v0.8h, v3.h[4]
0000fed4 fcmne    p0.h, p6/z, z11.h, z12.h
0000fed8 .byte    0x6e, 0x20, 0x3e, 0x20
0000fedc .byte    0x53, 0x6f, 0x75, 0x72
0000fee0 fcmeq    p3.h, p1/z, z11.h, z12.h
0000fee4 stnp     w14, w10, [x11]
0000fee8 ldpsw    x19, x29, [x2, #-0x70]
0000feec .byte    0x6e, 0x67, 0x20, 0x21
0000fef0 stnp     w29, w8, [x1, #-0xc0]
0000fef4 .byte    0x76, 0x6f, 0x69, 0x64
0000fef8 .byte    0x20, 0x2a, 0x29, 0x20
0000fefc .byte    0x30, 0x29, 0x29, 0x00
0000ff00 .byte    0x28, 0x44, 0x61, 0x74
0000ff04 str      b1, [x3, #0x848]
0000ff08 .byte    0x20, 0x28, 0x28, 0x76
0000ff0c .byte    0x6f, 0x69, 0x64, 0x20
0000ff10 adr      x10, #0x50435
0000ff14 stnp     w9, w10, [x9]
0000ff18 uabd     v19.8h, v2.8h, v18.8h
0000ff1c .byte    0x4c, 0x65, 0x6e, 0x53
0000ff20 .byte    0x20, 0x28, 0x53, 0x74
0000ff24 .byte    0x72, 0x69, 0x6e, 0x67
0000ff28 .byte    0x2c, 0x20, 0x28, 0x5f
0000ff2c .byte    0x67, 0x50, 0x63, 0x64
0000ff30 .byte    0x5f, 0x46, 0x69, 0x78
0000ff34 .byte    0x65, 0x64, 0x41, 0x74
0000ff38 ldnp     d2, d29, [x10, #-0x170]
0000ff3c .byte    0x64, 0x5f, 0x50, 0x63
0000ff40 .byte    0x64, 0x4d, 0x61, 0x78
0000ff44 ldp      d9, d27, [x11, #-0xb0]
0000ff48 .byte    0x55, 0x6e, 0x69, 0x63
0000ff4c .byte    0x6f, 0x64, 0x65, 0x53
0000ff50 uabdl2   v20.4s, v19.8h, v9.8h
0000ff54 uqshl    v7.8h, v3.8h, v5.8h
0000ff58 ldp      w7, w29, [x3, #-0xc0]
0000ff5c adds     w0, w25, #0x80a
0000ff60 str      b9, [x1, #0xf08]
0000ff64 .byte    0x20, 0x28, 0x5f, 0x67
0000ff68 .byte    0x50, 0x63, 0x64, 0x5f
0000ff6c fnmls    z6.h, p2/m, z10.h, z24.h
0000ff70 .byte    0x64, 0x41, 0x74, 0x42
0000ff74 .byte    0x75, 0x69, 0x6c, 0x64
0000ff78 .byte    0x5f, 0x50, 0x63, 0x64
0000ff7c ldpsw    x13, x24, [x10, #-0x40]
0000ff80 .byte    0x6d, 0x75, 0x6d, 0x55
0000ff84 umlsl2   v14.4s, v11.8h, v3.h[6]
0000ff88 .byte    0x64, 0x65, 0x53, 0x74
0000ff8c .byte    0x72, 0x69, 0x6e, 0x67
0000ff90 .byte    0x4c, 0x65, 0x6e, 0x67
0000ff94 stp      w20, w26, [x3, #-0xb8]
0000ff98 fcmla    z0.h, p2/m, z0.h, z1.h, #0x5a
0000ff9c .byte    0x64, 0x72, 0x65, 0x73
0000ffa0 str      b19, [x3, #0x848]
0000ffa4 .byte    0x20, 0x28, 0x28, 0x76
0000ffa8 .byte    0x6f, 0x69, 0x64, 0x20
0000ffac adr      x10, #0x504d1
0000ffb0 .byte    0x29, 0x29, 0x00, 0x41
0000ffb4 fnmls    z4.h, p1/m, z3.h, z18.h
0000ffb8 .byte    0x73, 0x73, 0x49, 0x6e
0000ffbc .byte    0x64, 0x65, 0x78, 0x20
0000ffc0 .byte    0x2b, 0x20, 0x31, 0x20
0000ffc4 .byte    0x3c, 0x20, 0x28, 0x73
0000ffc8 fcmla    v9.8h, v19.8h, v5.h[3], #0x10e
0000ffcc .byte    0x66, 0x20, 0x28, 0x41
0000ffd0 fnmls    z4.h, p1/m, z3.h, z18.h
0000ffd4 .byte    0x73, 0x73, 0x2d, 0x3e
0000ffd8 .byte    0x41, 0x64, 0x64, 0x72
0000ffdc .byte    0x29, 0x20, 0x2f, 0x20
0000ffe0 fnmls    z19.h, p2/m, z11.h, z26.h
0000ffe4 stnp     w15, w25, [x19, #-0x100]
0000ffe8 bfdot    z8.s, z9.h, z4.h[0]
0000ffec .byte    0x72, 0x65, 0x73, 0x73
0000fff0 fcmla    z13.h, p7/m, z17.h, z1.h, #0x5a
0000fff4 .byte    0x64, 0x72, 0x29, 0x5b
0000fff8 stp      w16, w23, [x9, #-0xb8]
0000fffc .byte    0x00, 0x28, 0x47, 0x75
00010000 .byte    0x69, 0x64, 0x20, 0x21
00010004 stnp     w29, w8, [x1, #-0xc0]
00010008 .byte    0x76, 0x6f, 0x69, 0x64
0001000c .byte    0x20, 0x2a, 0x29, 0x20
00010010 .byte    0x30, 0x29, 0x29, 0x00
00010014 .byte    0x28, 0x42, 0x75, 0x66
00010018 .byte    0x66, 0x65, 0x72, 0x20
0001001c stnp     w1, w15, [x9, #-0x100]
00010020 ldpsw    x8, x29, [x17, #-0x88]
00010024 stp      w4, w8, [x3, #-0xb0]
00010028 stp      w0, w12, [x1, #-0xb8]
0001002c .byte    0x00, 0x28, 0x28, 0x4c
00010030 .byte    0x65, 0x6e, 0x67, 0x74
00010034 .byte    0x68, 0x20, 0x26, 0x20
00010038 adr      x16, #0x70f3d
0001003c adr      x16, #0x70641
00010040 .byte    0x30, 0x31, 0x29, 0x20
00010044 adr      x29, #0x507e9
00010048 .byte    0x29, 0x00, 0x28, 0x4d
0001004c .byte    0x61, 0x78, 0x42, 0x75
00010050 .byte    0x66, 0x66, 0x65, 0x72
00010054 fnmls    z19.h, p2/m, z10.h, z26.h
00010058 .byte    0x20, 0x3e, 0x3d, 0x20
0001005c .byte    0x4c, 0x65, 0x6e, 0x67
00010060 .byte    0x74, 0x68, 0x20, 0x2f
00010064 .byte    0x20, 0x32, 0x29, 0x00
00010068 .byte    0x28, 0x44, 0x65, 0x73
0001006c .byte    0x74, 0x4d, 0x61, 0x78
00010070 .byte    0x20, 0x3c, 0x3d, 0x20
00010074 adr      x8, #0xdec5a
00010078 .byte    0x63, 0x64, 0x5f, 0x46
0001007c .byte    0x69, 0x78, 0x65, 0x64
00010080 .byte    0x41, 0x74, 0x42, 0x75
00010084 .byte    0x69, 0x6c, 0x64, 0x5f
00010088 .byte    0x50, 0x63, 0x64, 0x4d
0001008c ldp      d1, d30, [x3, #-0x170]
00010090 .byte    0x75, 0x6d, 0x41, 0x73
00010094 .byte    0x63, 0x69, 0x69, 0x53
00010098 uabdl2   v20.4s, v19.8h, v9.8h
0001009c uqshl    v7.8h, v3.8h, v5.8h
000100a0 ldp      w7, w29, [x3, #-0xc0]
000100a4 .byte    0x29, 0x00, 0x49, 0x6e
000100a8 umax     v20.8h, v11.8h, v18.8h
000100ac .byte    0x61, 0x6c, 0x53, 0x61
000100b0 .byte    0x66, 0x65, 0x53, 0x74
000100b4 .byte    0x72, 0x69, 0x6e, 0x67
000100b8 .byte    0x4e, 0x6f, 0x41, 0x73
000100bc .byte    0x63, 0x69, 0x69, 0x53
000100c0 .byte    0x74, 0x72, 0x4f, 0x76
000100c4 .byte    0x65, 0x72, 0x6c, 0x61
000100c8 .byte    0x70, 0x20, 0x28, 0x44
000100cc ldpsw    x5, x28, [x27, #-0x60]
000100d0 ldpsw    x14, x24, [x11, #-0x60]
000100d4 .byte    0x6f, 0x6e, 0x2c, 0x20
000100d8 .byte    0x44, 0x65, 0x73, 0x74
000100dc ldnp     s13, s24, [x10, #-0x40]
000100e0 .byte    0x20, 0x28, 0x43, 0x48
000100e4 .byte    0x41, 0x52, 0x38, 0x20
000100e8 umlal2   v10.4s, v9.8h, v3.h[5]
000100ec fnmls    z21.h, p4/m, z19.h, z3.h
000100f0 umlal2   v12.4s, v1.8h, v3.h[1]
000100f4 fnmls    z21.h, p4/m, z19.h, z3.h
000100f8 .byte    0x4c, 0x65, 0x6e, 0x20
000100fc stp      w11, w8, [x1, #-0x78]
00010100 .byte    0x00, 0x28, 0x4c, 0x65
00010104 .byte    0x6e, 0x67, 0x74, 0x68
00010108 .byte    0x20, 0x3c, 0x3d, 0x20
0001010c adr      x8, #0xdecf2
00010110 .byte    0x63, 0x64, 0x5f, 0x46
00010114 .byte    0x69, 0x78, 0x65, 0x64
00010118 .byte    0x41, 0x74, 0x42, 0x75
0001011c .byte    0x69, 0x6c, 0x64, 0x5f
00010120 .byte    0x50, 0x63, 0x64, 0x4d
00010124 ldp      d1, d30, [x3, #-0x170]
00010128 .byte    0x75, 0x6d, 0x41, 0x73
0001012c .byte    0x63, 0x69, 0x69, 0x53
00010130 uabdl2   v20.4s, v19.8h, v9.8h
00010134 uqshl    v7.8h, v3.8h, v5.8h
00010138 ldp      w7, w29, [x3, #-0xc0]
0001013c .byte    0x29, 0x00, 0x28, 0x41
00010140 ldpsw    x19, x24, [x27, #-0xb8]
00010144 uabd     v19.8h, v2.8h, v18.8h
00010148 .byte    0x4c, 0x65, 0x6e, 0x53
0001014c .byte    0x20, 0x28, 0x53, 0x74
00010150 .byte    0x72, 0x69, 0x6e, 0x67
00010154 .byte    0x2c, 0x20, 0x28, 0x5f
00010158 .byte    0x67, 0x50, 0x63, 0x64
0001015c .byte    0x5f, 0x46, 0x69, 0x78
00010160 .byte    0x65, 0x64, 0x41, 0x74
00010164 ldnp     d2, d29, [x10, #-0x170]
00010168 .byte    0x64, 0x5f, 0x50, 0x63
0001016c .byte    0x64, 0x4d, 0x61, 0x78
00010170 ldp      d9, d27, [x11, #-0xb0]
00010174 ldpsw    x1, x28, [x26, #-0xe8]
00010178 .byte    0x69, 0x53, 0x74, 0x72
0001017c .byte    0x69, 0x6e, 0x67, 0x4c
00010180 .byte    0x65, 0x6e, 0x67, 0x74
00010184 adds     w8, w11, w0, uxth #2
00010188 .byte    0x20, 0x31, 0x29, 0x20
0001018c stnp     w28, w15, [x9, #-0x100]
00010190 .byte    0x5f, 0x67, 0x50, 0x63
00010194 ldpsw    x4, x23, [x27, #0x30]
00010198 .byte    0x78, 0x65, 0x64, 0x41
0001019c ldpsw    x20, x16, [x19, #-0x58]
000101a0 adr      x12, #0xcee2e
000101a4 .byte    0x63, 0x64, 0x4d, 0x61
000101a8 .byte    0x78, 0x69, 0x6d, 0x75
000101ac .byte    0x6d, 0x41, 0x73, 0x63
000101b0 .byte    0x69, 0x69, 0x53, 0x74
000101b4 .byte    0x72, 0x69, 0x6e, 0x67
000101b8 .byte    0x4c, 0x65, 0x6e, 0x67
000101bc stp      w20, w26, [x3, #-0xb8]
000101c0 .byte    0x00, 0x21, 0x49, 0x6e
000101c4 umax     v20.8h, v11.8h, v18.8h
000101c8 .byte    0x61, 0x6c, 0x53, 0x61
000101cc .byte    0x66, 0x65, 0x53, 0x74
000101d0 .byte    0x72, 0x69, 0x6e, 0x67
000101d4 .byte    0x49, 0x73, 0x4f, 0x76
000101d8 .byte    0x65, 0x72, 0x6c, 0x61
000101dc .byte    0x70, 0x20, 0x28, 0x44
000101e0 ldpsw    x5, x28, [x27, #-0x60]
000101e4 ldpsw    x14, x24, [x11, #-0x60]
000101e8 .byte    0x6f, 0x6e, 0x2c, 0x20
000101ec .byte    0x44, 0x65, 0x73, 0x74
000101f0 ldnp     s13, s24, [x10, #-0x40]
000101f4 umlal2   v0.4s, v1.8h, v6.h[7]
000101f8 orn      w9, w3, w0, lsl #25
000101fc .byte    0x29, 0x53, 0x6f, 0x75
00010200 ldnp     s18, s24, [x27, #-0xd8]
00010204 umlal2   v0.4s, v1.8h, v3.h[5]
00010208 fnmls    z21.h, p4/m, z19.h, z3.h
0001020c .byte    0x4c, 0x65, 0x6e, 0x20
00010210 stp      w11, w8, [x1, #-0x78]
00010214 .byte    0x20, 0x2a, 0x20, 0x73
00010218 fcmla    v9.8h, v19.8h, v5.h[3], #0x10e
0001021c .byte    0x66, 0x28, 0x43, 0x48
00010220 tbz      w1, #6, #0x12c68
00010224 stnp     w9, w10, [x9]
00010228 .byte    0x44, 0x65, 0x73, 0x74
0001022c .byte    0x69, 0x6e, 0x61, 0x74
00010230 .byte    0x69, 0x6f, 0x6e, 0x4c
00010234 .byte    0x65, 0x6e, 0x67, 0x74
00010238 str      b8, [x3, #0x848]
0001023c .byte    0x20, 0x28, 0x28, 0x76
00010240 .byte    0x6f, 0x69, 0x64, 0x20
00010244 adr      x10, #0x50769
00010248 .byte    0x29, 0x29, 0x00, 0x21
0001024c fnmls    z9.h, p3/m, z18.h, z20.h
00010250 ldnp     d18, d27, [x19, #-0x1f0]
00010254 fnmls    z19.h, p0/m, z10.h, z6.h
00010258 ldpsw    x19, x29, [x2, #-0x70]
0001025c .byte    0x6e, 0x67, 0x49, 0x73
00010260 .byte    0x4f, 0x76, 0x65, 0x72
00010264 .byte    0x6c, 0x61, 0x70, 0x20
00010268 .byte    0x28, 0x44, 0x65, 0x73
0001026c .byte    0x74, 0x69, 0x6e, 0x61
00010270 .byte    0x74, 0x69, 0x6f, 0x6e
00010274 fmaxnmv  h12, p0, z1.h
00010278 .byte    0x73, 0x74, 0x4d, 0x61
0001027c .byte    0x78, 0x20, 0x2a, 0x20
00010280 fnmls    z19.h, p2/m, z11.h, z26.h
00010284 .byte    0x6f, 0x66, 0x28, 0x43
00010288 adds     w8, w10, #0x490, lsl #12
0001028c .byte    0x36, 0x29, 0x2c, 0x20
00010290 ldpsw    x8, x29, [x17, #-0x88]
00010294 stp      w4, w8, [x3, #-0xb0]
00010298 .byte    0x53, 0x6f, 0x75, 0x72
0001029c .byte    0x63, 0x65, 0x2c, 0x20
000102a0 .byte    0x53, 0x6f, 0x75, 0x72
000102a4 fcmeq    p3.h, p1/z, z11.h, z12.h
000102a8 .byte    0x6e, 0x20, 0x2b, 0x20
000102ac cmla     z17.b, z9.b, z0.b, #0xb4
000102b0 tbz      w9, #0xa, #0xb17c
000102b4 orr      w20, w1, #0xffffefff
000102b8 .byte    0x2e, 0x63, 0x00, 0x44
000102bc .byte    0x69, 0x76, 0x69, 0x73
000102c0 .byte    0x6f, 0x72, 0x20, 0x21
000102c4 .byte    0x3d, 0x20, 0x30, 0x00
000102c8 ldpsw    x21, x25, [x10, #-0xd0]
000102cc .byte    0x42, 0x6f, 0x6f, 0x74
000102d0 .byte    0x53, 0x65, 0x72, 0x76
000102d4 .byte    0x69, 0x63, 0x65, 0x73
000102d8 ldnp     d20, d24, [x10, #-0x1e0]
000102dc .byte    0x65, 0x4c, 0x69, 0x62
000102e0 .byte    0x2e, 0x63, 0x00, 0x67
000102e4 .byte    0x49, 0x6d, 0x61, 0x67
000102e8 uqxtn2   v5.8h, v3.4s
000102ec .byte    0x64, 0x6c, 0x65, 0x20
000102f0 stnp     w1, w15, [x9, #-0x100]
000102f4 ldpsw    x8, x29, [x17, #-0x88]
000102f8 stp      w4, w8, [x3, #-0xb0]
000102fc .byte    0x20, 0x30, 0x29, 0x00
00010300 .byte    0x67, 0x53, 0x54, 0x20
00010304 stnp     w1, w15, [x9, #-0x100]
00010308 ldpsw    x8, x29, [x17, #-0x88]
0001030c stp      w4, w8, [x3, #-0xb0]
00010310 .byte    0x20, 0x30, 0x29, 0x00
00010314 .byte    0x67, 0x42, 0x53, 0x20
00010318 stnp     w1, w15, [x9, #-0x100]
0001031c ldpsw    x8, x29, [x17, #-0x88]
00010320 stp      w4, w8, [x3, #-0xb0]
00010324 .byte    0x20, 0x30, 0x29, 0x00
00010328 ldpsw    x21, x25, [x10, #-0xd0]
0001032c .byte    0x52, 0x75, 0x6e, 0x74
00010330 .byte    0x69, 0x6d, 0x65, 0x53
00010334 ldpsw    x5, x28, [x19, #-0x50]
00010338 b.lo     #0xf6fe4
0001033c fnmls    z1.h, p0/m, z19.h, z12.h
00010340 .byte    0x4c, 0x69, 0x62, 0x2e
00010344 .byte    0x63, 0x00, 0x67, 0x52
00010348 str      b20, [x2, #0x848]
0001034c .byte    0x20, 0x28, 0x28, 0x76
00010350 .byte    0x6f, 0x69, 0x64, 0x20
00010354 adr      x10, #0x50879
00010358 fadd     z9.h, z1.h, z21.h
0001035c ldpsw    x6, x26, [x11, #0x60]
00010360 .byte    0x62, 0x2e, 0x63, 0x00
00010364 ldnp     d20, d24, [x10, #-0x1e0]
00010368 ldpsw    x5, x17, [x27, #-0x58]
0001036c str      b4, [x3, #0x848]
00010370 .byte    0x20, 0x28, 0x28, 0x76
00010374 .byte    0x6f, 0x69, 0x64, 0x20
00010378 adr      x10, #0x5089d
0001037c .byte    0x29, 0x00, 0x54, 0x61
00010380 .byte    0x62, 0x6c, 0x65, 0x20
00010384 stnp     w1, w15, [x9, #-0x100]
00010388 ldpsw    x8, x29, [x17, #-0x88]
0001038c stp      w4, w8, [x3, #-0xb0]
00010390 .byte    0x20, 0x30, 0x29, 0x00
00010394 .byte    0x50, 0x72, 0x6f, 0x74
00010398 ldnp     d15, d24, [x27, #-0x110]
0001039c .byte    0x47, 0x75, 0x69, 0x64
000103a0 .byte    0x20, 0x21, 0x3d, 0x20
000103a4 umlal2   v8.4s, v1.8h, v6.h[7]
000103a8 orn      w9, w3, w0, lsl #25
000103ac stp      w9, w8, [x1, #-0x80]
000103b0 .byte    0x00, 0x4e, 0x6f, 0x74
000103b4 .byte    0x69, 0x66, 0x79, 0x46
000103b8 .byte    0x75, 0x6e, 0x63, 0x74
000103bc .byte    0x69, 0x6f, 0x6e, 0x20
000103c0 stnp     w1, w15, [x9, #-0x100]
000103c4 ldpsw    x8, x29, [x17, #-0x88]
000103c8 stp      w4, w8, [x3, #-0xb0]
000103cc .byte    0x20, 0x30, 0x29, 0x00
000103d0 ldpsw    x18, x25, [x10, #-0xc8]
000103d4 .byte    0x73, 0x74, 0x72, 0x61
000103d8 .byte    0x74, 0x69, 0x6f, 0x6e
000103dc .byte    0x20, 0x21, 0x3d, 0x20
000103e0 umlal2   v8.4s, v1.8h, v6.h[7]
000103e4 orn      w9, w3, w0, lsl #25
000103e8 stp      w9, w8, [x1, #-0x80]
000103ec ldp      d0, d19, [x16, #-0x1f0]
000103f0 str      b5, [x3, #0x848]
000103f4 .byte    0x20, 0x28, 0x28, 0x76
000103f8 .byte    0x6f, 0x69, 0x64, 0x20
000103fc adr      x10, #0x50921
00010400 mla      v9.8h, v1.8h, v14.h[0]
00010404 ldrh     w20, [x11, #0x1334]
00010408 .byte    0x54, 0x70, 0x6c, 0x20
0001040c .byte    0x3c, 0x3d, 0x20, 0x33
00010410 mla      v17.8h, v1.8h, v12.h[0]
00010414 .byte    0x63, 0x6b, 0x20, 0x21
00010418 stnp     w29, w8, [x1, #-0xc0]
0001041c .byte    0x76, 0x6f, 0x69, 0x64
00010420 .byte    0x20, 0x2a, 0x29, 0x20
00010424 adr      x16, #0x1094a
00010428 .byte    0x72, 0x69, 0x6f, 0x72
0001042c .byte    0x69, 0x74, 0x79, 0x20
00010430 .byte    0x3c, 0x3d, 0x20, 0x33
00010434 mla      v17.8h, v1.8h, v12.h[0]
00010438 .byte    0x63, 0x6b, 0x2d, 0x3e
0001043c .byte    0x4c, 0x6f, 0x63, 0x6b
00010440 .byte    0x20, 0x3d, 0x3d, 0x20
00010444 .byte    0x45, 0x66, 0x69, 0x4c
00010448 .byte    0x6f, 0x63, 0x6b, 0x52
0001044c .byte    0x65, 0x6c, 0x65, 0x61
00010450 .byte    0x73, 0x65, 0x64, 0x00
00010454 .byte    0x4c, 0x6f, 0x63, 0x6b
00010458 .byte    0x2d, 0x3e, 0x4c, 0x6f
0001045c .byte    0x63, 0x6b, 0x20, 0x21
00010460 .byte    0x3d, 0x20, 0x45, 0x66
00010464 .byte    0x69, 0x4c, 0x6f, 0x63
00010468 ldpsw    x11, x21, [x11, #-0x90]
0001046c ldpsw    x14, x26, [x11, #-0x60]
00010470 .byte    0x61, 0x6c, 0x69, 0x7a
00010474 st1      {v5.8h, v6.8h, v7.8h}, [x3]
00010478 ldp      s15, s24, [x27, #-0xa8]
0001047c .byte    0x3e, 0x4c, 0x6f, 0x63
00010480 str      b11, [x3, #0xf48]
00010484 ldpsw    x0, x17, [x9, #-0xd0]
00010488 .byte    0x4c, 0x6f, 0x63, 0x6b
0001048c .byte    0x41, 0x63, 0x71, 0x75
00010490 .byte    0x69, 0x72, 0x65, 0x64
00010494 ldpsw    x0, x17, [x24, #-0x58]
00010498 str      b4, [x3, #0x848]
0001049c .byte    0x20, 0x28, 0x28, 0x76
000104a0 .byte    0x6f, 0x69, 0x64, 0x20
000104a4 adr      x10, #0x509c9
000104a8 .byte    0x29, 0x00, 0x4e, 0x61
000104ac .byte    0x6d, 0x65, 0x20, 0x21
000104b0 stnp     w29, w8, [x1, #-0xc0]
000104b4 .byte    0x76, 0x6f, 0x69, 0x64
000104b8 .byte    0x20, 0x2a, 0x29, 0x20
000104bc .byte    0x30, 0x29, 0x20, 0x26
000104c0 .byte    0x26, 0x20, 0x47, 0x75
000104c4 .byte    0x69, 0x64, 0x20, 0x21
000104c8 stnp     w29, w8, [x1, #-0xc0]
000104cc .byte    0x76, 0x6f, 0x69, 0x64
000104d0 .byte    0x20, 0x2a, 0x29, 0x20
000104d4 .byte    0x30, 0x29, 0x20, 0x26
000104d8 .byte    0x26, 0x20, 0x56, 0x61
000104dc .byte    0x6c, 0x75, 0x65, 0x20
000104e0 stnp     w1, w15, [x9, #-0x100]
000104e4 ldpsw    x8, x29, [x17, #-0x88]
000104e8 stp      w4, w8, [x3, #-0xb0]
000104ec .byte    0x20, 0x30, 0x29, 0x00
000104f0 ldnp     d10, d21, [x17, #-0x1f0]
000104f4 .byte    0x75, 0x65, 0x20, 0x21
000104f8 stnp     w29, w8, [x1, #-0xc0]
000104fc .byte    0x76, 0x6f, 0x69, 0x64
00010500 .byte    0x20, 0x2a, 0x29, 0x20
00010504 ubfx     w16, w9, #0, #0xb
00010508 fcmla    v21.8h, v3.8h, v16.h[1], #0x10e
0001050c .byte    0x72, 0x74, 0x65, 0x64
00010510 .byte    0x4c, 0x61, 0x6e, 0x67
00010514 fnmls    z21.h, p0/m, z11.h, z7.h
00010518 str      b19, [x3, #0x848]
0001051c .byte    0x20, 0x28, 0x28, 0x76
00010520 .byte    0x6f, 0x69, 0x64, 0x20
00010524 adr      x10, #0x50a49
00010528 mla      v9.8h, v1.8h, v8.h[0]
0001052c .byte    0x62, 0x4c, 0x69, 0x62
00010530 stp      d14, d24, [x25]
00010534 .byte    0x48, 0x6f, 0x62, 0x4c
00010538 .byte    0x69, 0x73, 0x74, 0x20
0001053c stnp     w1, w15, [x9, #-0x100]
00010540 ldpsw    x8, x29, [x17, #-0x88]
00010544 stp      w4, w8, [x3, #-0xb0]
00010548 .byte    0x20, 0x30, 0x29, 0x00
0001054c .byte    0x48, 0x6f, 0x62, 0x53
00010550 .byte    0x74, 0x61, 0x72, 0x74
00010554 .byte    0x20, 0x21, 0x3d, 0x20
00010558 umlal2   v8.4s, v1.8h, v6.h[7]
0001055c orn      w9, w3, w0, lsl #25
00010560 stp      w9, w8, [x1, #-0x80]
00010564 .byte    0x00, 0x28, 0x28, 0x42
00010568 uaddwt   z15.h, z26.h, z12.b
0001056c stnp     w1, w19, [x18, #-0xb8]
00010570 adds     w16, w9, #0xf4f
00010574 .byte    0x29, 0x29, 0x00, 0x41
00010578 .byte    0x72, 0x6d, 0x41, 0x72
0001057c ldpsw    x3, x26, [x3, #0xa0]
00010580 .byte    0x6d, 0x65, 0x72, 0x4c
00010584 .byte    0x69, 0x62, 0x2e, 0x63
00010588 .byte    0x00, 0x28, 0x5f, 0x67
0001058c .byte    0x50, 0x63, 0x64, 0x5f
00010590 fnmls    z6.h, p2/m, z10.h, z24.h
00010594 .byte    0x64, 0x41, 0x74, 0x42
00010598 .byte    0x75, 0x69, 0x6c, 0x64
0001059c .byte    0x5f, 0x50, 0x63, 0x64
000105a0 .byte    0x41, 0x72, 0x6d, 0x41
000105a4 bc.hs    #0xe1210
000105a8 .byte    0x69, 0x6d, 0x65, 0x72
000105ac subs     w6, w18, #0x95c, lsl #12
000105b0 .byte    0x49, 0x6e, 0x48, 0x7a
000105b4 adr      x15, #0x70bd9
000105b8 adr      x16, #0x70bbd
000105bc .byte    0x55, 0x29, 0x00, 0x41
000105c0 fcmne    p2.h, p3/z, z11.h, z7.h
000105c4 ldpsw    x14, x25, [x11, #-0x70]
000105c8 ldp      d3, d21, [x3, #-0x170]
000105cc fcmeq    p5.h, p4/z, z19.h, z7.h
000105d0 ldp      d20, d21, [x3, #-0x170]
000105d4 .byte    0x65, 0x72, 0x46, 0x72
000105d8 stnp     w5, w28, [x11, #-0x100]
000105dc str      b9, [x1, #0x848]
000105e0 .byte    0x20, 0x30, 0x00, 0x41
000105e4 .byte    0x52, 0x4d, 0x20, 0x41
000105e8 ldpsw    x18, x24, [x27, #-0xc0]
000105ec .byte    0x74, 0x65, 0x63, 0x74
000105f0 ldnp     d21, d28, [x19, #-0x1f0]
000105f4 ldp      d0, d21, [x1, #-0x170]
000105f8 .byte    0x65, 0x72, 0x20, 0x69
000105fc umlal2   v19.4s, v3.8h, v14.h[2]
00010600 .byte    0x74, 0x20, 0x61, 0x76
00010604 .byte    0x61, 0x69, 0x6c, 0x61
00010608 .byte    0x62, 0x6c, 0x65, 0x20
0001060c .byte    0x69, 0x6e, 0x20, 0x74
00010610 .byte    0x68, 0x65, 0x20, 0x43
00010614 .byte    0x50, 0x55, 0x2c, 0x20
00010618 .byte    0x68, 0x65, 0x6e, 0x63
0001061c .byte    0x65, 0x20, 0x74, 0x68
00010620 stnp     d9, d28, [x27, #-0x200]
00010624 .byte    0x69, 0x62, 0x72, 0x61
00010628 .byte    0x72, 0x79, 0x20, 0x63
0001062c .byte    0x61, 0x6e, 0x6e, 0x6f
00010630 fmls     z20.h, p0/m, z3.h, z2.h
00010634 fnmls    z0.h, p5/m, z9.h, z19.h
00010638 .byte    0x64, 0x2e, 0x0a, 0x00
0001063c .byte    0x30, 0x00, 0x55, 0x74
00010640 .byte    0x61, 0x67, 0x73, 0x4c
00010644 .byte    0x69, 0x62, 0x2e, 0x63
00010648 stnp     w0, w8, [x8, #-0xc0]
0001064c b.hi     #0xacf70
00010650 eor      w14, w10, #0xff000007
00010654 .byte    0x45, 0x54, 0x55, 0x52
00010658 b.al     #0xb7240
0001065c .byte    0x41, 0x54, 0x55, 0x53
00010660 .byte    0x29, 0x28, 0x53, 0x74
00010664 .byte    0x61, 0x74, 0x75, 0x73
00010668 .byte    0x29, 0x29, 0x20, 0x3c
0001066c .byte    0x20, 0x30, 0x29, 0x20
00010670 stp      d6, d9, [x17, #-0x200]
00010674 .byte    0x50, 0x72, 0x6f, 0x74
00010678 ldnp     d15, d24, [x27, #-0x110]
0001067c .byte    0x00, 0x45, 0x52, 0x52
00010680 .byte    0x4f, 0x52, 0x3a, 0x20
00010684 ldnp     d3, d27, [x27, #-0xb0]
00010688 umlal2   v4.4s, v3.8h, v14.h[2]
0001068c umlal2   v20.4s, v3.8h, v3.h[2]
00010690 ldnp     d13, d28, [x3, #-0x170]
00010694 fmls     z5.h, p0/m, z3.h, z18.h
00010698 .byte    0x67, 0x65, 0x78, 0x3a
0001069c bic      w0, w9, w1, lsr #9
000106a0 udf      #0
000106a4 udf      #0
000106a8 udf      #0
000106ac udf      #0
000106b0 udf      #0x100
000106b4 udf      #0
000106b8 udf      #0
000106bc udf      #0
000106c0 udf      #0x377c
000106c4 udf      #0
000106c8 udf      #0x3ab4
000106cc udf      #0
000106d0 udf      #0x3ab4
000106d4 udf      #0
000106d8 udf      #0x3ab4
000106dc udf      #0
000106e0 udf      #0x3800
000106e4 udf      #0
000106e8 udf      #0x38d8
000106ec udf      #0
000106f0 udf      #0x374c
000106f4 udf      #0
000106f8 udf      #0x374c
000106fc udf      #0
00010700 udf      #0x3ab4
00010704 udf      #0
00010708 udf      #0x3ab4
0001070c udf      #0
00010710 udf      #0x3908
00010714 udf      #0
00010718 udf      #0x3ab4
0001071c udf      #0
00010720 udf      #0x3ab4
00010724 udf      #0
00010728 udf      #0x3ab4
0001072c udf      #0
00010730 udf      #0x3ab4
00010734 udf      #0
00010738 udf      #0x3ab4
0001073c udf      #0
00010740 udf      #0x3ab4
00010744 udf      #0
00010748 udf      #0x3ab4
0001074c udf      #0
00010750 udf      #0x3ab4
00010754 udf      #0
00010758 udf      #0x3ab4
0001075c udf      #0
00010760 udf      #0x3ab4
00010764 udf      #0
00010768 udf      #0x3ab4
0001076c udf      #0
00010770 udf      #0x3ab4
00010774 udf      #0
00010778 udf      #0x3ab4
0001077c udf      #0
00010780 udf      #0x3ab4
00010784 udf      #0
00010788 udf      #0x3ab4
0001078c udf      #0
00010790 udf      #0x3ab4
00010794 udf      #0
00010798 udf      #0x374c
0001079c udf      #0
000107a0 udf      #0x3ab4
000107a4 udf      #0
000107a8 udf      #0x3ab4
000107ac udf      #0
000107b0 udf      #0x3ab4
000107b4 udf      #0
000107b8 udf      #0x3ab4
000107bc udf      #0
000107c0 udf      #0x3ab4
000107c4 udf      #0
000107c8 udf      #0x3ab4
000107cc udf      #0
000107d0 udf      #0x3ab4
000107d4 udf      #0
000107d8 udf      #0x3ab4
000107dc udf      #0
000107e0 udf      #0x3ab4
000107e4 udf      #0
000107e8 udf      #0x3ab4
000107ec udf      #0
000107f0 udf      #0x3ab4
000107f4 udf      #0
000107f8 udf      #0x3ab4
000107fc udf      #0
00010800 udf      #0x3ab4
00010804 udf      #0
00010808 udf      #0x3ab4
0001080c udf      #0
00010810 udf      #0x3ab4
00010814 udf      #0
00010818 udf      #0x3ab4
0001081c udf      #0
00010820 udf      #0x3ab4
00010824 udf      #0
00010828 udf      #0x3ab4
0001082c udf      #0
00010830 udf      #0x3ab4
00010834 udf      #0
00010838 udf      #0x3ab4
0001083c udf      #0
00010840 udf      #0x3ab4
00010844 udf      #0
00010848 udf      #0x3ab4
0001084c udf      #0
00010850 udf      #0x3ab4
00010854 udf      #0
00010858 udf      #0x3ab4
0001085c udf      #0
00010860 udf      #0x3ab4
00010864 udf      #0
00010868 udf      #0x3ab4
0001086c udf      #0
00010870 udf      #0x3ab4
00010874 udf      #0
00010878 udf      #0x399c
0001087c udf      #0
00010880 udf      #0x39a8
00010884 udf      #0
00010888 udf      #0x3ab4
0001088c udf      #0
00010890 udf      #0x39f0
00010894 udf      #0
00010898 udf      #0x3ab4
0001089c udf      #0
000108a0 udf      #0x3ab4
000108a4 udf      #0
000108a8 udf      #0x3ab4
000108ac udf      #0
000108b0 udf      #0x3ab4
000108b4 udf      #0
000108b8 udf      #0x3ab4
000108bc udf      #0
000108c0 udf      #0x3ab4
000108c4 udf      #0
000108c8 udf      #0x3ab4
000108cc udf      #0
000108d0 udf      #0x3ab4
000108d4 udf      #0
000108d8 udf      #0x3ab4
000108dc udf      #0
000108e0 udf      #0x3ab4
000108e4 udf      #0
000108e8 udf      #0x3ab4
000108ec udf      #0
000108f0 udf      #0x3ab4
000108f4 udf      #0
000108f8 udf      #0x3ab4
000108fc udf      #0
00010900 udf      #0x3ab4
00010904 udf      #0
00010908 udf      #0x3ab4
0001090c udf      #0
00010910 udf      #0x3ab4
00010914 udf      #0
00010918 udf      #0x3ab4
0001091c udf      #0
00010920 udf      #0x3ab4
00010924 udf      #0
00010928 udf      #0x3ab4
0001092c udf      #0
00010930 udf      #0x3ab4
00010934 udf      #0
00010938 udf      #0x3ab4
0001093c udf      #0
00010940 udf      #0x3ab4
00010944 udf      #0
00010948 udf      #0x3ab4
0001094c udf      #0
00010950 udf      #0x3ab4
00010954 udf      #0
00010958 udf      #0x3ab4
0001095c udf      #0
00010960 udf      #0x3ab4
00010964 udf      #0
00010968 udf      #0x3ab4
0001096c udf      #0
00010970 udf      #0x3ab4
00010974 udf      #0
00010978 udf      #0x3a74
0001097c udf      #0
00010980 udf      #0x3ccc
00010984 udf      #0
00010988 udf      #0x4b50
0001098c udf      #0
00010990 udf      #0x4b24
00010994 udf      #0
00010998 udf      #0x4c50
0001099c udf      #0
000109a0 udf      #0x4c50
000109a4 udf      #0
000109a8 udf      #0x4c50
000109ac udf      #0
000109b0 udf      #0x4c50
000109b4 udf      #0
000109b8 udf      #0x4c50
000109bc udf      #0
000109c0 udf      #0x4c50
000109c4 udf      #0
000109c8 udf      #0x4c50
000109cc udf      #0
000109d0 udf      #0x4a38
000109d4 udf      #0
000109d8 udf      #0x4a38
000109dc udf      #0
000109e0 udf      #0x4a38
000109e4 udf      #0
000109e8 udf      #0x4a38
000109ec udf      #0
000109f0 udf      #0x4a38
000109f4 udf      #0
000109f8 udf      #0x4a38
000109fc udf      #0
00010a00 udf      #0x4a38
00010a04 udf      #0
00010a08 udf      #0x4a38
00010a0c udf      #0
00010a10 udf      #0x4a38
00010a14 udf      #0
00010a18 udf      #0x4c50
00010a1c udf      #0
00010a20 udf      #0x4c50
00010a24 udf      #0
00010a28 udf      #0x4c50
00010a2c udf      #0
00010a30 udf      #0x4c50
00010a34 udf      #0
00010a38 udf      #0x4c50
00010a3c udf      #0
00010a40 udf      #0x4c50
00010a44 udf      #0
00010a48 udf      #0x4c50
00010a4c udf      #0
00010a50 udf      #0x4c50
00010a54 udf      #0
00010a58 udf      #0x4c50
00010a5c udf      #0
00010a60 udf      #0x4c50
00010a64 udf      #0
00010a68 udf      #0x4c50
00010a6c udf      #0
00010a70 udf      #0x4c50
00010a74 udf      #0
00010a78 udf      #0x4c50
00010a7c udf      #0
00010a80 udf      #0x4c50
00010a84 udf      #0
00010a88 udf      #0x4c50
00010a8c udf      #0
00010a90 udf      #0x4c50
00010a94 udf      #0
00010a98 udf      #0x4c50
00010a9c udf      #0
00010aa0 udf      #0x4c50
00010aa4 udf      #0
00010aa8 udf      #0x4c50
00010aac udf      #0
00010ab0 udf      #0x4c50
00010ab4 udf      #0
00010ab8 udf      #0x4c50
00010abc udf      #0
00010ac0 udf      #0x4c50
00010ac4 udf      #0
00010ac8 udf      #0x4c50
00010acc udf      #0
00010ad0 udf      #0x4c50
00010ad4 udf      #0
00010ad8 udf      #0x4c50
00010adc udf      #0
00010ae0 udf      #0x4c50
00010ae4 udf      #0
00010ae8 udf      #0x4c50
00010aec udf      #0
00010af0 udf      #0x4c50
00010af4 udf      #0
00010af8 udf      #0x4c50
00010afc udf      #0
00010b00 udf      #0x4c50
00010b04 udf      #0
00010b08 udf      #0x4c50
00010b0c udf      #0
00010b10 udf      #0x4c50
00010b14 udf      #0
00010b18 udf      #0x4c50
00010b1c udf      #0
00010b20 udf      #0x4c50
00010b24 udf      #0
00010b28 udf      #0x4c50
00010b2c udf      #0
00010b30 udf      #0x4c50
00010b34 udf      #0
00010b38 udf      #0x4c50
00010b3c udf      #0
00010b40 udf      #0x4c50
00010b44 udf      #0
00010b48 udf      #0x4c50
00010b4c udf      #0
00010b50 udf      #0x4c50
00010b54 udf      #0
00010b58 udf      #0x4c50
00010b5c udf      #0
00010b60 udf      #0x4c50
00010b64 udf      #0
00010b68 udf      #0x4c50
00010b6c udf      #0
00010b70 udf      #0x4c50
00010b74 udf      #0
00010b78 udf      #0x4c50
00010b7c udf      #0
00010b80 udf      #0x4c50
00010b84 udf      #0
00010b88 udf      #0x4c50
00010b8c udf      #0
00010b90 udf      #0x4c50
00010b94 udf      #0
00010b98 udf      #0x4c50
00010b9c udf      #0
00010ba0 udf      #0x4c50
00010ba4 udf      #0
00010ba8 udf      #0x4c50
00010bac udf      #0
00010bb0 udf      #0x4c50
00010bb4 udf      #0
00010bb8 udf      #0x4c50
00010bbc udf      #0
00010bc0 udf      #0x4c50
00010bc4 udf      #0
00010bc8 udf      #0x4c50
00010bcc udf      #0
00010bd0 udf      #0x4c50
00010bd4 udf      #0
00010bd8 udf      #0x4c50
00010bdc udf      #0
00010be0 udf      #0x4c50
00010be4 udf      #0
00010be8 udf      #0x4c50
00010bec udf      #0
00010bf0 udf      #0x4c50
00010bf4 udf      #0
00010bf8 udf      #0x4c50
00010bfc udf      #0
00010c00 udf      #0x4c50
00010c04 udf      #0
00010c08 udf      #0x4c50
00010c0c udf      #0
00010c10 udf      #0x4c50
00010c14 udf      #0
00010c18 udf      #0x4c50
00010c1c udf      #0
00010c20 udf      #0x4bf8
00010c24 udf      #0
00010c28 udf      #0x4c50
00010c2c udf      #0
00010c30 udf      #0x4b24
00010c34 udf      #0
00010c38 udf      #0x7d7c
00010c3c udf      #0
00010c40 udf      #0x7d2c
00010c44 udf      #0
00010c48 udf      #0x7d2c
00010c4c udf      #0
00010c50 udf      #0x7d2c
00010c54 udf      #0
00010c58 udf      #0x7d84
00010c5c udf      #0
00010c60 udf      #0x7d84
00010c64 udf      #0
00010c68 udf      #0x7d84
00010c6c udf      #0
00010c70 udf      #0x7d84
00010c74 udf      #0
00010c78 udf      #0x7d84
00010c7c udf      #0
00010c80 udf      #0x7d0c
00010c84 udf      #0
00010c88 udf      #0x79fc
00010c8c udf      #0
00010c90 udf      #0x7da8
00010c94 udf      #0
00010c98 udf      #0x7d84
00010c9c udf      #0
00010ca0 udf      #0x7d84
00010ca4 udf      #0
00010ca8 udf      #0x7d84
00010cac udf      #0
00010cb0 udf      #0x7d84
00010cb4 udf      #0
00010cb8 udf      #0x7d84
00010cbc udf      #0
00010cc0 udf      #0x7d84
00010cc4 udf      #0
00010cc8 udf      #0x7a30
00010ccc udf      #0
00010cd0 udf      #0x79d4
00010cd4 udf      #0
00010cd8 .byte    0x5b, 0x3a, 0x3c, 0x3a
00010cdc .byte    0x5d, 0x5d, 0x00, 0x5b
00010ce0 .byte    0x3a, 0x3e, 0x3a, 0x5d
00010ce4 ldnp     d29, d0, [x2, #-0x1f0]
00010ce8 .byte    0x6e, 0x75, 0x6d, 0x00
00010cec smlalb   z1.h, z18.b, z3.b
00010cf0 .byte    0x45, 0x46, 0x47, 0x48
00010cf4 .byte    0x49, 0x4a, 0x4b, 0x4c
00010cf8 adr      x13, #0xaf6c2
00010cfc bc.ne    #0xb7744
00010d00 ldr      x21, #0xbf7c8
00010d04 .byte    0x59, 0x5a, 0x61, 0x62
00010d08 .byte    0x63, 0x64, 0x65, 0x66
00010d0c bics     w7, w3, w9, lsr #26
00010d10 umin     v11.8h, v3.8h, v13.8h
00010d14 .byte    0x6f, 0x70, 0x71, 0x72
00010d18 .byte    0x73, 0x74, 0x75, 0x76
00010d1c .byte    0x77, 0x78, 0x79, 0x7a
00010d20 .byte    0x30, 0x31, 0x32, 0x33
00010d24 tbnz     w20, #6, #0xd3c8
00010d28 udf      #0x3938
00010d2c .byte    0x61, 0x6c, 0x70, 0x68
00010d30 .byte    0x61, 0x00, 0x41, 0x42
00010d34 .byte    0x43, 0x44, 0x45, 0x46
00010d38 eor      w7, w2, w9, lsr #18
00010d3c .byte    0x4b, 0x4c, 0x4d, 0x4e
00010d40 .byte    0x4f, 0x50, 0x51, 0x52
00010d44 .byte    0x53, 0x54, 0x55, 0x56
00010d48 .byte    0x57, 0x58, 0x59, 0x5a
00010d4c .byte    0x61, 0x62, 0x63, 0x64
00010d50 .byte    0x65, 0x66, 0x67, 0x68
00010d54 ldnp     d9, d26, [x19, #-0x150]
00010d58 adr      x13, #0xefb27
00010d5c .byte    0x71, 0x72, 0x73, 0x74
00010d60 .byte    0x75, 0x76, 0x77, 0x78
00010d64 .byte    0x79, 0x7a, 0x00, 0x62
00010d68 .byte    0x6c, 0x61, 0x6e, 0x6b
00010d6c .byte    0x00, 0x20, 0x09, 0x00
00010d70 .byte    0x63, 0x6e, 0x74, 0x72
00010d74 stxrb    w7, w12, [x3]
00010d78 .byte    0x09, 0x0a, 0x0b, 0x0c
00010d7c .byte    0x0d, 0x01, 0x02, 0x03
00010d80 dup      v4.4h, v8.h[1]
00010d84 and      w15, w0, #0xf8000
00010d88 b        #0xfffffffff8555dd4
00010d8c .byte    0x17, 0x18, 0x19, 0x1a
00010d90 .byte    0x1b, 0x1c, 0x1d, 0x1e
00010d94 .byte    0x1f, 0x7f, 0x00, 0x64
00010d98 .byte    0x69, 0x67, 0x69, 0x74
00010d9c orr      w0, w0, #0xfff8000
00010da0 tbz      w19, #6, #0xb424
00010da4 .byte    0x37, 0x38, 0x39, 0x00
00010da8 adr      x7, #0xd3bf7
00010dac .byte    0x68, 0x00, 0x41, 0x42
00010db0 .byte    0x43, 0x44, 0x45, 0x46
00010db4 eor      w7, w2, w9, lsr #18
00010db8 .byte    0x4b, 0x4c, 0x4d, 0x4e
00010dbc .byte    0x4f, 0x50, 0x51, 0x52
00010dc0 .byte    0x53, 0x54, 0x55, 0x56
00010dc4 .byte    0x57, 0x58, 0x59, 0x5a
00010dc8 .byte    0x61, 0x62, 0x63, 0x64
00010dcc .byte    0x65, 0x66, 0x67, 0x68
00010dd0 ldnp     d9, d26, [x19, #-0x150]
00010dd4 adr      x13, #0xefba3
00010dd8 .byte    0x71, 0x72, 0x73, 0x74
00010ddc .byte    0x75, 0x76, 0x77, 0x78
00010de0 adds     w25, w19, #0xc1e
00010de4 cbnz     w18, #0x79448
00010de8 strb     w22, [x25, #0xe0d]
00010dec cmplo    p1.b, p0/z, z17.b, #0xc
00010df0 stnp     w5, w9, [x17, #-0xc8]
00010df4 stnp     s9, s10, [x17, #-0xa8]
00010df8 .byte    0x2d, 0x2e, 0x2f, 0x3a
00010dfc .byte    0x3b, 0x3c, 0x3d, 0x3e
00010e00 ldr      d31, #0xc7604
00010e04 .byte    0x5d, 0x5e, 0x5f, 0x60
00010e08 .byte    0x7b, 0x7c, 0x7d, 0x7e
00010e0c .byte    0x00, 0x6c, 0x6f, 0x77
00010e10 .byte    0x65, 0x72, 0x00, 0x61
00010e14 fnmls    z2.h, p0/m, z27.h, z4.h
00010e18 ldpsw    x6, x25, [x27, #-0xc0]
00010e1c ldp      d10, d26, [x27, #-0x140]
00010e20 subs     w14, w27, #0xc1b, lsl #12
00010e24 .byte    0x72, 0x73, 0x74, 0x75
00010e28 ldrh     w22, [x27, #0x1c3a]
00010e2c .byte    0x7a, 0x00, 0x70, 0x72
00010e30 .byte    0x69, 0x6e, 0x74, 0x00
00010e34 smlalb   z1.h, z18.b, z3.b
00010e38 .byte    0x45, 0x46, 0x47, 0x48
00010e3c .byte    0x49, 0x4a, 0x4b, 0x4c
00010e40 adr      x13, #0xaf80a
00010e44 bc.ne    #0xb788c
00010e48 ldr      x21, #0xbf910
00010e4c .byte    0x59, 0x5a, 0x61, 0x62
00010e50 .byte    0x63, 0x64, 0x65, 0x66
00010e54 bics     w7, w3, w9, lsr #26
00010e58 umin     v11.8h, v3.8h, v13.8h
00010e5c .byte    0x6f, 0x70, 0x71, 0x72
00010e60 .byte    0x73, 0x74, 0x75, 0x76
00010e64 .byte    0x77, 0x78, 0x79, 0x7a
00010e68 .byte    0x30, 0x31, 0x32, 0x33
00010e6c tbnz     w20, #6, #0xd510
00010e70 .byte    0x38, 0x39, 0x21, 0x22
00010e74 .byte    0x23, 0x24, 0x25, 0x26
00010e78 orn      w7, w1, w9, lsl #10
00010e7c uqsub    v11.8b, v1.8b, v13.8b
00010e80 .byte    0x2f, 0x3a, 0x3b, 0x3c
00010e84 .byte    0x3d, 0x3e, 0x3f, 0x40
00010e88 .byte    0x5b, 0x5c, 0x5d, 0x5e
00010e8c .byte    0x5f, 0x60, 0x7b, 0x7c
00010e90 .byte    0x7d, 0x7e, 0x20, 0x00
00010e94 .byte    0x70, 0x75, 0x6e, 0x63
00010e98 .byte    0x74, 0x00, 0x21, 0x22
00010e9c .byte    0x23, 0x24, 0x25, 0x26
00010ea0 orn      w7, w1, w9, lsl #10
00010ea4 uqsub    v11.8b, v1.8b, v13.8b
00010ea8 .byte    0x2f, 0x3a, 0x3b, 0x3c
00010eac .byte    0x3d, 0x3e, 0x3f, 0x40
00010eb0 .byte    0x5b, 0x5c, 0x5d, 0x5e
00010eb4 .byte    0x5f, 0x60, 0x7b, 0x7c
00010eb8 .byte    0x7d, 0x7e, 0x00, 0x73
00010ebc fnmls    z16.h, p0/m, z11.h, z3.h
00010ec0 add      w0, w8, w10, lsl #2
00010ec4 .byte    0x0c, 0x0d, 0x20, 0x00
00010ec8 fnmls    z21.h, p4/m, z3.h, z16.h
00010ecc .byte    0x72, 0x00, 0x41, 0x42
00010ed0 .byte    0x43, 0x44, 0x45, 0x46
00010ed4 eor      w7, w2, w9, lsr #18
00010ed8 .byte    0x4b, 0x4c, 0x4d, 0x4e
00010edc .byte    0x4f, 0x50, 0x51, 0x52
00010ee0 .byte    0x53, 0x54, 0x55, 0x56
00010ee4 .byte    0x57, 0x58, 0x59, 0x5a
00010ee8 ldpsw    x0, x30, [x0, #-0xe0]
00010eec .byte    0x67, 0x69, 0x74, 0x00
00010ef0 .byte    0x30, 0x31, 0x32, 0x33
00010ef4 tbnz     w20, #6, #0xd598
00010ef8 .byte    0x38, 0x39, 0x41, 0x42
00010efc .byte    0x43, 0x44, 0x45, 0x46
00010f00 .byte    0x61, 0x62, 0x63, 0x64
00010f04 .byte    0x65, 0x66, 0x00, 0x4e
00010f08 ubfx     w21, w2, #0, #0x14
00010f0c ubfx     w15, w2, #0, #0x13
00010f10 .byte    0x54, 0x58, 0x00, 0x45
00010f14 .byte    0x54, 0x58, 0x00, 0x45
00010f18 .byte    0x4f, 0x54, 0x00, 0x45
00010f1c .byte    0x4e, 0x51, 0x00, 0x41
00010f20 .byte    0x43, 0x4b, 0x00, 0x42
00010f24 .byte    0x45, 0x4c, 0x00, 0x61
00010f28 .byte    0x6c, 0x65, 0x72, 0x74
00010f2c .byte    0x00, 0x42, 0x53, 0x00
00010f30 .byte    0x62, 0x61, 0x63, 0x6b
00010f34 .byte    0x73, 0x70, 0x61, 0x63
00010f38 b.pl     #0xa0f44
00010f3c .byte    0x00, 0x74, 0x61, 0x62
00010f40 .byte    0x00, 0x4c, 0x46, 0x00
00010f44 ldnp     d14, d25, [x11, #-0x90]
00010f48 .byte    0x69, 0x6e, 0x65, 0x00
00010f4c .byte    0x56, 0x54, 0x00, 0x76
00010f50 ldpsw    x5, x28, [x19, #-0x60]
00010f54 ldp      s3, s24, [x11, #-0xa0]
00010f58 .byte    0x74, 0x61, 0x62, 0x00
00010f5c .byte    0x46, 0x46, 0x00, 0x66
00010f60 ldp      s15, s28, [x19, #-0x98]
00010f64 .byte    0x66, 0x65, 0x65, 0x64
00010f68 .byte    0x00, 0x43, 0x52, 0x00
00010f6c .byte    0x63, 0x61, 0x72, 0x72
00010f70 fnmls    z9.h, p0/m, z11.h, z7.h
00010f74 .byte    0x2d, 0x72, 0x65, 0x74
00010f78 .byte    0x75, 0x72, 0x6e, 0x00
00010f7c ubfx     w19, w26, #0, #0x14
00010f80 .byte    0x49, 0x00, 0x44, 0x4c
00010f84 .byte    0x45, 0x00, 0x44, 0x43
00010f88 .byte    0x31, 0x00, 0x44, 0x43
00010f8c .byte    0x32, 0x00, 0x44, 0x43
00010f90 .byte    0x33, 0x00, 0x44, 0x43
00010f94 .byte    0x34, 0x00, 0x4e, 0x41
00010f98 ldapurh  w11, [x2, #-0xd0]
00010f9c b.al     #0x9afa4
00010fa0 .byte    0x42, 0x00, 0x43, 0x41
00010fa4 .byte    0x4e, 0x00, 0x45, 0x4d
00010fa8 .byte    0x00, 0x53, 0x55, 0x42
00010fac .byte    0x00, 0x45, 0x53, 0x43
00010fb0 cbz      w0, #0xb78d0
00010fb4 .byte    0x00, 0x46, 0x53, 0x00
00010fb8 .byte    0x49, 0x53, 0x33, 0x00
00010fbc .byte    0x47, 0x53, 0x00, 0x49
00010fc0 eor      w19, w18, #0x1fff
00010fc4 .byte    0x53, 0x00, 0x49, 0x53
00010fc8 .byte    0x31, 0x00, 0x55, 0x53
00010fcc .byte    0x00, 0x65, 0x78, 0x63
00010fd0 .byte    0x6c, 0x61, 0x6d, 0x61
00010fd4 .byte    0x74, 0x69, 0x6f, 0x6e
00010fd8 .byte    0x2d, 0x6d, 0x61, 0x72
00010fdc .byte    0x6b, 0x00, 0x71, 0x75
00010fe0 .byte    0x6f, 0x74, 0x61, 0x74
00010fe4 ldp      s9, s27, [x27, #-0x90]
00010fe8 .byte    0x6d, 0x61, 0x72, 0x6b
00010fec ldp      d0, d27, [x16, #-0xb0]
00010ff0 ldp      s2, s25, [x11, #-0x70]
00010ff4 .byte    0x73, 0x69, 0x67, 0x6e
00010ff8 ldnp     d0, d25, [x0, #-0x110]
00010ffc ldp      s12, s24, [x11, #-0x70]
00011000 .byte    0x73, 0x69, 0x67, 0x6e
00011004 .byte    0x00, 0x70, 0x65, 0x72
00011008 .byte    0x63, 0x65, 0x6e, 0x74
0001100c .byte    0x2d, 0x73, 0x69, 0x67
00011010 ldp      d14, d0, [x3, #-0x1f0]
00011014 .byte    0x70, 0x65, 0x72, 0x73
00011018 .byte    0x61, 0x6e, 0x64, 0x00
0001101c .byte    0x61, 0x70, 0x6f, 0x73
00011020 adr      x20, #0xefe6f
00011024 stnp     d8, d25, [x11]
00011028 ldp      s5, s25, [x19, #-0x60]
0001102c fnmls    z16.h, p0/m, z11.h, z18.h
00011030 fnmls    z14.h, p5/m, z3.h, z8.h
00011034 .byte    0x73, 0x69, 0x73, 0x00
00011038 .byte    0x72, 0x69, 0x67, 0x68
0001103c .byte    0x74, 0x2d, 0x70, 0x61
00011040 .byte    0x72, 0x65, 0x6e, 0x74
00011044 ldpsw    x8, x25, [x11, #-0x68]
00011048 .byte    0x73, 0x00, 0x61, 0x73
0001104c ldpsw    x20, x25, [x11, #-0x70]
00011050 adr      x19, #0x11dbf
00011054 ldp      s12, s29, [x11, #-0x68]
00011058 .byte    0x73, 0x69, 0x67, 0x6e
0001105c ldp      d0, d24, [x24, #-0x110]
00011060 .byte    0x6d, 0x61, 0x00, 0x68
00011064 fnmls    z25.h, p4/m, z3.h, z8.h
00011068 ldrh     w14, [x3, #0x1400]
0001106c .byte    0x70, 0x68, 0x65, 0x6e
00011070 umin     v13.8h, v9.8h, v9.8h
00011074 adr      x21, #0x11ee3
00011078 fcmla    v5.8h, v19.8h, v9.h[1], #0x10e
0001107c .byte    0x64, 0x00, 0x66, 0x75
00011080 .byte    0x6c, 0x6c, 0x2d, 0x73
00011084 .byte    0x74, 0x6f, 0x70, 0x00
00011088 .byte    0x73, 0x6c, 0x61, 0x73
0001108c mla      v8.8h, v3.8h, v3.h[3]
00011090 .byte    0x6c, 0x69, 0x64, 0x75
00011094 fmla     z19.h, p0/m, z3.h, z26.h
00011098 .byte    0x72, 0x6f, 0x00, 0x6f
0001109c .byte    0x6e, 0x65, 0x00, 0x74
000110a0 .byte    0x77, 0x6f, 0x00, 0x74
000110a4 fnmls    z8.h, p4/m, z19.h, z5.h
000110a8 .byte    0x00, 0x66, 0x6f, 0x75
000110ac ldpsw    x18, x0, [x3, #-0xd0]
000110b0 .byte    0x76, 0x65, 0x00, 0x73
000110b4 .byte    0x69, 0x78, 0x00, 0x73
000110b8 uabd     v5.8h, v19.8h, v5.8h
000110bc .byte    0x00, 0x65, 0x69, 0x67
000110c0 .byte    0x68, 0x74, 0x00, 0x6e
000110c4 .byte    0x69, 0x6e, 0x65, 0x00
000110c8 .byte    0x63, 0x6f, 0x6c, 0x6f
000110cc fmla     z14.h, p0/m, z3.h, z19.h
000110d0 umlsl2   v13.4s, v11.8h, v3.h[6]
000110d4 .byte    0x6c, 0x6f, 0x6e, 0x00
000110d8 .byte    0x6c, 0x65, 0x73, 0x73
000110dc .byte    0x2d, 0x74, 0x68, 0x61
000110e0 ldpsw    x14, x11, [x11, #-0x68]
000110e4 .byte    0x67, 0x6e, 0x00, 0x65
000110e8 ldnp     d17, d29, [x11, #-0x1f0]
000110ec ldpsw    x19, x11, [x11, #-0x68]
000110f0 .byte    0x67, 0x6e, 0x00, 0x67
000110f4 .byte    0x72, 0x65, 0x61, 0x74
000110f8 .byte    0x65, 0x72, 0x2d, 0x74
000110fc ldp      s8, s24, [x11, #-0x90]
00011100 .byte    0x73, 0x69, 0x67, 0x6e
00011104 fnmls    z0.h, p4/m, z8.h, z21.h
00011108 uqshl    v19.2d, v3.2d, #0x29
0001110c .byte    0x6e, 0x2d, 0x6d, 0x61
00011110 .byte    0x72, 0x6b, 0x00, 0x63
00011114 fnmls    z15.h, p3/m, z11.h, z13.h
00011118 .byte    0x72, 0x63, 0x69, 0x61
0001111c .byte    0x6c, 0x2d, 0x61, 0x74
00011120 .byte    0x00, 0x6c, 0x65, 0x66
00011124 subs     w20, w11, #0xccb, lsl #12
00011128 fnmls    z21.h, p0/m, z11.h, z18.h
0001112c .byte    0x2d, 0x62, 0x72, 0x61
00011130 .byte    0x63, 0x6b, 0x65, 0x74
00011134 .byte    0x00, 0x62, 0x61, 0x63
00011138 .byte    0x6b, 0x73, 0x6c, 0x61
0001113c ands     w19, w3, #0x7ffffff
00011140 .byte    0x65, 0x76, 0x65, 0x72
00011144 .byte    0x73, 0x65, 0x2d, 0x73
00011148 .byte    0x6f, 0x6c, 0x69, 0x64
0001114c ands     w21, w27, #0x1fffffff
00011150 .byte    0x69, 0x67, 0x68, 0x74
00011154 .byte    0x2d, 0x73, 0x71, 0x75
00011158 ldp      s1, s28, [x19, #-0xd8]
0001115c .byte    0x62, 0x72, 0x61, 0x63
00011160 .byte    0x6b, 0x65, 0x74, 0x00
00011164 .byte    0x63, 0x69, 0x72, 0x63
00011168 ldnp     d21, d27, [x11, #-0x1a0]
0001116c .byte    0x65, 0x78, 0x00, 0x63
00011170 .byte    0x69, 0x72, 0x63, 0x75
00011174 fnmls    z13.h, p1/m, z19.h, z12.h
00011178 .byte    0x78, 0x2d, 0x61, 0x63
0001117c .byte    0x63, 0x65, 0x6e, 0x74
00011180 .byte    0x00, 0x75, 0x6e, 0x64
00011184 .byte    0x65, 0x72, 0x73, 0x63
00011188 .byte    0x6f, 0x72, 0x65, 0x00
0001118c ldp      s12, s27, [x27, #-0x48]
00011190 fnmls    z12.h, p2/m, z11.h, z14.h
00011194 .byte    0x00, 0x67, 0x72, 0x61
00011198 .byte    0x76, 0x65, 0x2d, 0x61
0001119c rsubhn2  v3.8h, v27.4s, v5.4s
000111a0 fmla     z20.h, p0/m, z3.h, z12.h
000111a4 .byte    0x66, 0x74, 0x2d, 0x62
000111a8 fnmls    z18.h, p0/m, z11.h, z3.h
000111ac .byte    0x00, 0x6c, 0x65, 0x66
000111b0 .byte    0x74, 0x2d, 0x63, 0x75
000111b4 ldp      s18, s27, [x3, #-0x38]
000111b8 .byte    0x62, 0x72, 0x61, 0x63
000111bc .byte    0x6b, 0x65, 0x74, 0x00
000111c0 .byte    0x76, 0x65, 0x72, 0x74
000111c4 ldnp     d9, d24, [x27, #-0x1f0]
000111c8 umin     v13.8h, v1.8h, v9.8h
000111cc ldpsw    x5, x0, [x3, #-0x70]
000111d0 ldp      s7, s26, [x3, #-0x60]
000111d4 .byte    0x62, 0x72, 0x61, 0x63
000111d8 ldpsw    x5, x0, [x3, #-0x70]
000111dc ldp      s7, s26, [x3, #-0x60]
000111e0 ldnp     d3, d29, [x11, #-0xe0]
000111e4 .byte    0x79, 0x2d, 0x62, 0x72
000111e8 fnmls    z1.h, p0/m, z27.h, z11.h
000111ec ldpsw    x20, x0, [x3, #-0x60]
000111f0 .byte    0x6c, 0x64, 0x65, 0x00
000111f4 .byte    0x44, 0x45, 0x4c, 0x00
000111f8 .byte    0xe6, 0x0c, 0x01, 0x00
000111fc udf      #0
00011200 .byte    0xec, 0x0c, 0x01, 0x00
00011204 udf      #0
00011208 .byte    0x2b, 0x0d, 0x01, 0x00
0001120c udf      #0
00011210 .byte    0x2c, 0x0d, 0x01, 0x00
00011214 udf      #0
00011218 .byte    0x32, 0x0d, 0x01, 0x00
0001121c udf      #0
00011220 .byte    0x2b, 0x0d, 0x01, 0x00
00011224 udf      #0
00011228 .byte    0x67, 0x0d, 0x01, 0x00
0001122c udf      #0
00011230 .byte    0x6d, 0x0d, 0x01, 0x00
00011234 udf      #0
00011238 .byte    0x2b, 0x0d, 0x01, 0x00
0001123c udf      #0
00011240 .byte    0x70, 0x0d, 0x01, 0x00
00011244 udf      #0
00011248 .byte    0x76, 0x0d, 0x01, 0x00
0001124c udf      #0
00011250 .byte    0x2b, 0x0d, 0x01, 0x00
00011254 udf      #0
00011258 .byte    0x97, 0x0d, 0x01, 0x00
0001125c udf      #0
00011260 .byte    0x9d, 0x0d, 0x01, 0x00
00011264 udf      #0
00011268 .byte    0x2b, 0x0d, 0x01, 0x00
0001126c udf      #0
00011270 .byte    0xa8, 0x0d, 0x01, 0x00
00011274 udf      #0
00011278 .byte    0xae, 0x0d, 0x01, 0x00
0001127c udf      #0
00011280 .byte    0x2b, 0x0d, 0x01, 0x00
00011284 udf      #0
00011288 .byte    0x0d, 0x0e, 0x01, 0x00
0001128c udf      #0
00011290 .byte    0x13, 0x0e, 0x01, 0x00
00011294 udf      #0
00011298 .byte    0x2b, 0x0d, 0x01, 0x00
0001129c udf      #0
000112a0 .byte    0x2e, 0x0e, 0x01, 0x00
000112a4 udf      #0
000112a8 .byte    0x34, 0x0e, 0x01, 0x00
000112ac udf      #0
000112b0 .byte    0x2b, 0x0d, 0x01, 0x00
000112b4 udf      #0
000112b8 .byte    0x94, 0x0e, 0x01, 0x00
000112bc udf      #0
000112c0 .byte    0x9a, 0x0e, 0x01, 0x00
000112c4 udf      #0
000112c8 .byte    0x2b, 0x0d, 0x01, 0x00
000112cc udf      #0
000112d0 .byte    0xbb, 0x0e, 0x01, 0x00
000112d4 udf      #0
000112d8 .byte    0xc1, 0x0e, 0x01, 0x00
000112dc udf      #0
000112e0 .byte    0x2b, 0x0d, 0x01, 0x00
000112e4 udf      #0
000112e8 .byte    0xc8, 0x0e, 0x01, 0x00
000112ec udf      #0
000112f0 .byte    0xce, 0x0e, 0x01, 0x00
000112f4 udf      #0
000112f8 .byte    0x2b, 0x0d, 0x01, 0x00
000112fc udf      #0
00011300 .byte    0xe9, 0x0e, 0x01, 0x00
00011304 udf      #0
00011308 .byte    0xf0, 0x0e, 0x01, 0x00
0001130c udf      #0
00011310 .byte    0x2b, 0x0d, 0x01, 0x00
00011314 udf      #0
00011318 udf      #0
0001131c udf      #0
00011320 udf      #0
00011324 udf      #0
00011328 .byte    0x2b, 0x0d, 0x01, 0x00
0001132c udf      #0
00011330 .byte    0x07, 0x0f, 0x01, 0x00
00011334 udf      #0
00011338 udf      #0
0001133c udf      #0
00011340 .byte    0x0b, 0x0f, 0x01, 0x00
00011344 udf      #0
00011348 udf      #1
0001134c udf      #0
00011350 .byte    0x0f, 0x0f, 0x01, 0x00
00011354 udf      #0
00011358 udf      #2
0001135c udf      #0
00011360 .byte    0x13, 0x0f, 0x01, 0x00
00011364 udf      #0
00011368 udf      #3
0001136c udf      #0
00011370 .byte    0x17, 0x0f, 0x01, 0x00
00011374 udf      #0
00011378 udf      #4
0001137c udf      #0
00011380 .byte    0x1b, 0x0f, 0x01, 0x00
00011384 udf      #0
00011388 udf      #5
0001138c udf      #0
00011390 .byte    0x1f, 0x0f, 0x01, 0x00
00011394 udf      #0
00011398 udf      #6
0001139c udf      #0
000113a0 .byte    0x23, 0x0f, 0x01, 0x00
000113a4 udf      #0
000113a8 udf      #7
000113ac udf      #0
000113b0 .byte    0x27, 0x0f, 0x01, 0x00
000113b4 udf      #0
000113b8 udf      #7
000113bc udf      #0
000113c0 .byte    0x2d, 0x0f, 0x01, 0x00
000113c4 udf      #0
000113c8 udf      #8
000113cc udf      #0
000113d0 .byte    0x30, 0x0f, 0x01, 0x00
000113d4 udf      #0
000113d8 udf      #8
000113dc udf      #0
000113e0 .byte    0x3a, 0x0f, 0x01, 0x00
000113e4 udf      #0
000113e8 udf      #9
000113ec udf      #0
000113f0 .byte    0x3d, 0x0f, 0x01, 0x00
000113f4 udf      #0
000113f8 udf      #9
000113fc udf      #0
00011400 .byte    0x41, 0x0f, 0x01, 0x00
00011404 udf      #0
00011408 udf      #0xa
0001140c udf      #0
00011410 .byte    0x44, 0x0f, 0x01, 0x00
00011414 udf      #0
00011418 udf      #0xa
0001141c udf      #0
00011420 .byte    0x4c, 0x0f, 0x01, 0x00
00011424 udf      #0
00011428 udf      #0xb
0001142c udf      #0
00011430 .byte    0x4f, 0x0f, 0x01, 0x00
00011434 udf      #0
00011438 udf      #0xb
0001143c udf      #0
00011440 .byte    0x5c, 0x0f, 0x01, 0x00
00011444 udf      #0
00011448 udf      #0xc
0001144c udf      #0
00011450 .byte    0x5f, 0x0f, 0x01, 0x00
00011454 udf      #0
00011458 udf      #0xc
0001145c udf      #0
00011460 .byte    0x69, 0x0f, 0x01, 0x00
00011464 udf      #0
00011468 udf      #0xd
0001146c udf      #0
00011470 .byte    0x6c, 0x0f, 0x01, 0x00
00011474 udf      #0
00011478 udf      #0xd
0001147c udf      #0
00011480 .byte    0x7c, 0x0f, 0x01, 0x00
00011484 udf      #0
00011488 udf      #0xe
0001148c udf      #0
00011490 .byte    0x7f, 0x0f, 0x01, 0x00
00011494 udf      #0
00011498 udf      #0xf
0001149c udf      #0
000114a0 .byte    0x82, 0x0f, 0x01, 0x00
000114a4 udf      #0
000114a8 udf      #0x10
000114ac udf      #0
000114b0 .byte    0x86, 0x0f, 0x01, 0x00
000114b4 udf      #0
000114b8 udf      #0x11
000114bc udf      #0
000114c0 .byte    0x8a, 0x0f, 0x01, 0x00
000114c4 udf      #0
000114c8 udf      #0x12
000114cc udf      #0
000114d0 .byte    0x8e, 0x0f, 0x01, 0x00
000114d4 udf      #0
000114d8 udf      #0x13
000114dc udf      #0
000114e0 .byte    0x92, 0x0f, 0x01, 0x00
000114e4 udf      #0
000114e8 udf      #0x14
000114ec udf      #0
000114f0 .byte    0x96, 0x0f, 0x01, 0x00
000114f4 udf      #0
000114f8 udf      #0x15
000114fc udf      #0
00011500 .byte    0x9a, 0x0f, 0x01, 0x00
00011504 udf      #0
00011508 udf      #0x16
0001150c udf      #0
00011510 .byte    0x9e, 0x0f, 0x01, 0x00
00011514 udf      #0
00011518 udf      #0x17
0001151c udf      #0
00011520 .byte    0xa2, 0x0f, 0x01, 0x00
00011524 udf      #0
00011528 udf      #0x18
0001152c udf      #0
00011530 .byte    0xa6, 0x0f, 0x01, 0x00
00011534 udf      #0
00011538 udf      #0x19
0001153c udf      #0
00011540 .byte    0xa9, 0x0f, 0x01, 0x00
00011544 udf      #0
00011548 udf      #0x1a
0001154c udf      #0
00011550 .byte    0xad, 0x0f, 0x01, 0x00
00011554 udf      #0
00011558 udf      #0x1b
0001155c udf      #0
00011560 .byte    0xb1, 0x0f, 0x01, 0x00
00011564 udf      #0
00011568 udf      #0x1c
0001156c udf      #0
00011570 .byte    0xb5, 0x0f, 0x01, 0x00
00011574 udf      #0
00011578 udf      #0x1c
0001157c udf      #0
00011580 .byte    0xb8, 0x0f, 0x01, 0x00
00011584 udf      #0
00011588 udf      #0x1d
0001158c udf      #0
00011590 .byte    0xbc, 0x0f, 0x01, 0x00
00011594 udf      #0
00011598 udf      #0x1d
0001159c udf      #0
000115a0 .byte    0xbf, 0x0f, 0x01, 0x00
000115a4 udf      #0
000115a8 udf      #0x1e
000115ac udf      #0
000115b0 .byte    0xc3, 0x0f, 0x01, 0x00
000115b4 udf      #0
000115b8 udf      #0x1e
000115bc udf      #0
000115c0 .byte    0xc6, 0x0f, 0x01, 0x00
000115c4 udf      #0
000115c8 udf      #0x1f
000115cc udf      #0
000115d0 .byte    0xca, 0x0f, 0x01, 0x00
000115d4 udf      #0
000115d8 udf      #0x1f
000115dc udf      #0
000115e0 .byte    0xbb, 0x0e, 0x01, 0x00
000115e4 udf      #0
000115e8 udf      #0x20
000115ec udf      #0
000115f0 .byte    0xcd, 0x0f, 0x01, 0x00
000115f4 udf      #0
000115f8 udf      #0x21
000115fc udf      #0
00011600 .byte    0xde, 0x0f, 0x01, 0x00
00011604 udf      #0
00011608 udf      #0x22
0001160c udf      #0
00011610 .byte    0xed, 0x0f, 0x01, 0x00
00011614 udf      #0
00011618 udf      #0x23
0001161c udf      #0
00011620 .byte    0xf9, 0x0f, 0x01, 0x00
00011624 udf      #0
00011628 udf      #0x24
0001162c udf      #0
00011630 .byte    0x05, 0x10, 0x01, 0x00
00011634 udf      #0
00011638 udf      #0x25
0001163c udf      #0
00011640 .byte    0x12, 0x10, 0x01, 0x00
00011644 udf      #0
00011648 udf      #0x26
0001164c udf      #0
00011650 .byte    0x1c, 0x10, 0x01, 0x00
00011654 udf      #0
00011658 udf      #0x27
0001165c udf      #0
00011660 .byte    0x27, 0x10, 0x01, 0x00
00011664 udf      #0
00011668 udf      #0x28
0001166c udf      #0
00011670 .byte    0x38, 0x10, 0x01, 0x00
00011674 udf      #0
00011678 udf      #0x29
0001167c udf      #0
00011680 .byte    0x4a, 0x10, 0x01, 0x00
00011684 udf      #0
00011688 udf      #0x2a
0001168c udf      #0
00011690 .byte    0x53, 0x10, 0x01, 0x00
00011694 udf      #0
00011698 udf      #0x2b
0001169c udf      #0
000116a0 .byte    0x5d, 0x10, 0x01, 0x00
000116a4 udf      #0
000116a8 udf      #0x2c
000116ac udf      #0
000116b0 .byte    0x63, 0x10, 0x01, 0x00
000116b4 udf      #0
000116b8 udf      #0x2d
000116bc udf      #0
000116c0 .byte    0x6a, 0x10, 0x01, 0x00
000116c4 udf      #0
000116c8 udf      #0x2d
000116cc udf      #0
000116d0 .byte    0x77, 0x10, 0x01, 0x00
000116d4 udf      #0
000116d8 udf      #0x2e
000116dc udf      #0
000116e0 .byte    0x7e, 0x10, 0x01, 0x00
000116e4 udf      #0
000116e8 udf      #0x2e
000116ec udf      #0
000116f0 .byte    0x88, 0x10, 0x01, 0x00
000116f4 udf      #0
000116f8 udf      #0x2f
000116fc udf      #0
00011700 .byte    0x8e, 0x10, 0x01, 0x00
00011704 udf      #0
00011708 udf      #0x2f
0001170c udf      #0
00011710 .byte    0x96, 0x10, 0x01, 0x00
00011714 udf      #0
00011718 udf      #0x30
0001171c udf      #0
00011720 .byte    0x9b, 0x10, 0x01, 0x00
00011724 udf      #0
00011728 udf      #0x31
0001172c udf      #0
00011730 .byte    0x9f, 0x10, 0x01, 0x00
00011734 udf      #0
00011738 udf      #0x32
0001173c udf      #0
00011740 .byte    0xa3, 0x10, 0x01, 0x00
00011744 udf      #0
00011748 udf      #0x33
0001174c udf      #0
00011750 .byte    0xa9, 0x10, 0x01, 0x00
00011754 udf      #0
00011758 udf      #0x34
0001175c udf      #0
00011760 .byte    0xae, 0x10, 0x01, 0x00
00011764 udf      #0
00011768 udf      #0x35
0001176c udf      #0
00011770 .byte    0xb3, 0x10, 0x01, 0x00
00011774 udf      #0
00011778 udf      #0x36
0001177c udf      #0
00011780 .byte    0xb7, 0x10, 0x01, 0x00
00011784 udf      #0
00011788 udf      #0x37
0001178c udf      #0
00011790 .byte    0xbd, 0x10, 0x01, 0x00
00011794 udf      #0
00011798 udf      #0x38
0001179c udf      #0
000117a0 .byte    0xc3, 0x10, 0x01, 0x00
000117a4 udf      #0
000117a8 udf      #0x39
000117ac udf      #0
000117b0 .byte    0xc8, 0x10, 0x01, 0x00
000117b4 udf      #0
000117b8 udf      #0x3a
000117bc udf      #0
000117c0 .byte    0xce, 0x10, 0x01, 0x00
000117c4 udf      #0
000117c8 udf      #0x3b
000117cc udf      #0
000117d0 .byte    0xd8, 0x10, 0x01, 0x00
000117d4 udf      #0
000117d8 udf      #0x3c
000117dc udf      #0
000117e0 .byte    0xe7, 0x10, 0x01, 0x00
000117e4 udf      #0
000117e8 udf      #0x3d
000117ec udf      #0
000117f0 .byte    0xf3, 0x10, 0x01, 0x00
000117f4 udf      #0
000117f8 udf      #0x3e
000117fc udf      #0
00011800 .byte    0x05, 0x11, 0x01, 0x00
00011804 udf      #0
00011808 udf      #0x3f
0001180c udf      #0
00011810 .byte    0x13, 0x11, 0x01, 0x00
00011814 udf      #0
00011818 udf      #0x40
0001181c udf      #0
00011820 .byte    0x21, 0x11, 0x01, 0x00
00011824 udf      #0
00011828 udf      #0x5b
0001182c udf      #0
00011830 .byte    0x35, 0x11, 0x01, 0x00
00011834 udf      #0
00011838 udf      #0x5c
0001183c udf      #0
00011840 .byte    0x3f, 0x11, 0x01, 0x00
00011844 udf      #0
00011848 udf      #0x5c
0001184c udf      #0
00011850 .byte    0x4f, 0x11, 0x01, 0x00
00011854 udf      #0
00011858 udf      #0x5d
0001185c udf      #0
00011860 .byte    0x64, 0x11, 0x01, 0x00
00011864 udf      #0
00011868 udf      #0x5e
0001186c udf      #0
00011870 .byte    0x6f, 0x11, 0x01, 0x00
00011874 udf      #0
00011878 udf      #0x5e
0001187c udf      #0
00011880 .byte    0x81, 0x11, 0x01, 0x00
00011884 udf      #0
00011888 udf      #0x5f
0001188c udf      #0
00011890 .byte    0x8c, 0x11, 0x01, 0x00
00011894 udf      #0
00011898 udf      #0x5f
0001189c udf      #0
000118a0 .byte    0x95, 0x11, 0x01, 0x00
000118a4 udf      #0
000118a8 udf      #0x60
000118ac udf      #0
000118b0 .byte    0xa2, 0x11, 0x01, 0x00
000118b4 udf      #0
000118b8 udf      #0x7b
000118bc udf      #0
000118c0 .byte    0xad, 0x11, 0x01, 0x00
000118c4 udf      #0
000118c8 udf      #0x7b
000118cc udf      #0
000118d0 .byte    0xc0, 0x11, 0x01, 0x00
000118d4 udf      #0
000118d8 udf      #0x7c
000118dc udf      #0
000118e0 .byte    0xce, 0x11, 0x01, 0x00
000118e4 udf      #0
000118e8 udf      #0x7d
000118ec udf      #0
000118f0 .byte    0xda, 0x11, 0x01, 0x00
000118f4 udf      #0
000118f8 udf      #0x7d
000118fc udf      #0
00011900 .byte    0xee, 0x11, 0x01, 0x00
00011904 udf      #0
00011908 udf      #0x7e
0001190c udf      #0
00011910 .byte    0xf4, 0x11, 0x01, 0x00
00011914 udf      #0
00011918 udf      #0x7f
0001191c udf      #0
00011920 udf      #0
00011924 udf      #0
00011928 udf      #0
0001192c udf      #0
00011930 udf      #0x9c9c
00011934 udf      #0
00011938 udf      #0x9ca0
0001193c udf      #0
00011940 udf      #0x9ca0
00011944 udf      #0
00011948 udf      #0x9c9c
0001194c udf      #0
00011950 udf      #0x9c9c
00011954 udf      #0
00011958 udf      #0x9ca0
0001195c udf      #0
00011960 udf      #0x9ca0
00011964 udf      #0
00011968 udf      #0x9cac
0001196c udf      #0
00011970 udf      #0x9ca0
00011974 udf      #0
00011978 udf      #0x9d3c
0001197c udf      #0
00011980 udf      #0x9ca0
00011984 udf      #0
00011988 udf      #0x9dbc
0001198c udf      #0
00011990 udf      #0x9ddc
00011994 udf      #0
00011998 udf      #0x9dfc
0001199c udf      #0
000119a0 udf      #0xa1f8
000119a4 udf      #0
000119a8 udf      #0xa328
000119ac udf      #0
000119b0 udf      #0xa294
000119b4 udf      #0
000119b8 udf      #0xa2b4
000119bc udf      #0
000119c0 udf      #0xa268
000119c4 udf      #0
000119c8 udf      #0xa328
000119cc udf      #0
000119d0 udf      #0xa348
000119d4 udf      #0
000119d8 udf      #0xa38c
000119dc udf      #0
000119e0 udf      #0xa3d4
000119e4 udf      #0
000119e8 udf      #0xa6a8
000119ec udf      #0
000119f0 udf      #0xa6f0
000119f4 udf      #0
000119f8 udf      #0xa720
000119fc udf      #0
00011a00 udf      #0xa72c
00011a04 udf      #0
00011a08 udf      #0xa740
00011a0c udf      #0
00011a10 udf      #0xa864
00011a14 udf      #0
00011a18 udf      #0xa864
00011a1c udf      #0
00011a20 udf      #0xa864
00011a24 udf      #0
00011a28 udf      #0xa864
00011a2c udf      #0
00011a30 udf      #0xa864
00011a34 udf      #0
00011a38 udf      #0xa864
00011a3c udf      #0
00011a40 udf      #0xa864
00011a44 udf      #0
00011a48 udf      #0xa864
00011a4c udf      #0
00011a50 udf      #0xa864
00011a54 udf      #0
00011a58 udf      #0xa864
00011a5c udf      #0
00011a60 udf      #0xa864
00011a64 udf      #0
00011a68 udf      #0xa864
00011a6c udf      #0
00011a70 udf      #0xa864
00011a74 udf      #0
00011a78 udf      #0xa750
00011a7c udf      #0
00011a80 udf      #0xa76c
00011a84 udf      #0
00011a88 udf      #0xa784
00011a8c udf      #0
00011a90 udf      #0xa778
00011a94 udf      #0
00011a98 udf      #0xa79c
00011a9c udf      #0
00011aa0 udf      #0xa69c
00011aa4 udf      #0
00011aa8 udf      #0xa69c
00011aac udf      #0
00011ab0 udf      #0xa7d0
00011ab4 udf      #0
00011ab8 udf      #0xa7dc
00011abc udf      #0
00011ac0 udf      #0xa828
00011ac4 udf      #0
00011ac8 udf      #0xa840
00011acc udf      #0
00011ad0 udf      #0xa69c
00011ad4 udf      #0
00011ad8 udf      #0xa69c
00011adc udf      #0
00011ae0 udf      #0xa84c
00011ae4 udf      #0
00011ae8 udf      #0xa4b8
00011aec udf      #0
00011af0 udf      #0xa4dc
00011af4 udf      #0
00011af8 udf      #0xa50c
00011afc udf      #0
00011b00 udf      #0xa518
00011b04 udf      #0
00011b08 udf      #0xa530
00011b0c udf      #0
00011b10 udf      #0xa65c
00011b14 udf      #0
00011b18 udf      #0xa65c
00011b1c udf      #0
00011b20 udf      #0xa65c
00011b24 udf      #0
00011b28 udf      #0xa65c
00011b2c udf      #0
00011b30 udf      #0xa65c
00011b34 udf      #0
00011b38 udf      #0xa65c
00011b3c udf      #0
00011b40 udf      #0xa65c
00011b44 udf      #0
00011b48 udf      #0xa65c
00011b4c udf      #0
00011b50 udf      #0xa65c
00011b54 udf      #0
00011b58 udf      #0xa65c
00011b5c udf      #0
00011b60 udf      #0xa65c
00011b64 udf      #0
00011b68 udf      #0xa65c
00011b6c udf      #0
00011b70 udf      #0xa65c
00011b74 udf      #0
00011b78 udf      #0xa548
00011b7c udf      #0
00011b80 udf      #0xa564
00011b84 udf      #0
00011b88 udf      #0xa57c
00011b8c udf      #0
00011b90 udf      #0xa65c
00011b94 udf      #0
00011b98 udf      #0xa65c
00011b9c udf      #0
00011ba0 udf      #0xa4a0
00011ba4 udf      #0
00011ba8 udf      #0xa4a0
00011bac udf      #0
00011bb0 udf      #0xa594
00011bb4 udf      #0
00011bb8 udf      #0xa5a0
00011bbc udf      #0
00011bc0 udf      #0xa5f0
00011bc4 udf      #0
00011bc8 udf      #0xa60c
00011bcc udf      #0
00011bd0 udf      #0xa4ac
00011bd4 udf      #0
00011bd8 udf      #0xa4ac
00011bdc udf      #0
00011be0 udf      #0xa618
00011be4 udf      #0
00011be8 udf      #0xad2c
00011bec udf      #0
00011bf0 udf      #0xad30
00011bf4 udf      #0
00011bf8 udf      #0xad30
00011bfc udf      #0
00011c00 udf      #0xad2c
00011c04 udf      #0
00011c08 udf      #0xad2c
00011c0c udf      #0
00011c10 udf      #0xad30
00011c14 udf      #0
00011c18 udf      #0xad30
00011c1c udf      #0
00011c20 udf      #0xad3c
00011c24 udf      #0
00011c28 udf      #0xad30
00011c2c udf      #0
00011c30 udf      #0xadcc
00011c34 udf      #0
00011c38 udf      #0xad30
00011c3c udf      #0
00011c40 udf      #0xae4c
00011c44 udf      #0
00011c48 udf      #0xae6c
00011c4c udf      #0
00011c50 udf      #0xae8c
00011c54 udf      #0
00011c58 udf      #0xb288
00011c5c udf      #0
00011c60 udf      #0xb3b8
00011c64 udf      #0
00011c68 udf      #0xb324
00011c6c udf      #0
00011c70 udf      #0xb344
00011c74 udf      #0
00011c78 udf      #0xb2f8
00011c7c udf      #0
00011c80 udf      #0xb3b8
00011c84 udf      #0
00011c88 udf      #0xb3d8
00011c8c udf      #0
00011c90 udf      #0xb41c
00011c94 udf      #0
00011c98 udf      #0xb464
00011c9c udf      #0
00011ca0 udf      #0xb558
00011ca4 udf      #0
00011ca8 udf      #0xb580
00011cac udf      #0
00011cb0 udf      #0xb5c8
00011cb4 udf      #0
00011cb8 udf      #0xb5dc
00011cbc udf      #0
00011cc0 udf      #0xb600
00011cc4 udf      #0
00011cc8 udf      #0xb80c
00011ccc udf      #0
00011cd0 udf      #0xb80c
00011cd4 udf      #0
00011cd8 udf      #0xb80c
00011cdc udf      #0
00011ce0 udf      #0xb80c
00011ce4 udf      #0
00011ce8 udf      #0xb80c
00011cec udf      #0
00011cf0 udf      #0xb80c
00011cf4 udf      #0
00011cf8 udf      #0xb80c
00011cfc udf      #0
00011d00 udf      #0xb80c
00011d04 udf      #0
00011d08 udf      #0xb80c
00011d0c udf      #0
00011d10 udf      #0xb80c
00011d14 udf      #0
00011d18 udf      #0xb80c
00011d1c udf      #0
00011d20 udf      #0xb80c
00011d24 udf      #0
00011d28 udf      #0xb80c
00011d2c udf      #0
00011d30 udf      #0xb624
00011d34 udf      #0
00011d38 udf      #0xb64c
00011d3c udf      #0
00011d40 udf      #0xb674
00011d44 udf      #0
00011d48 udf      #0xb698
00011d4c udf      #0
00011d50 udf      #0xb6bc
00011d54 udf      #0
00011d58 udf      #0xb528
00011d5c udf      #0
00011d60 udf      #0xb528
00011d64 udf      #0
00011d68 udf      #0xb704
00011d6c udf      #0
00011d70 udf      #0xb71c
00011d74 udf      #0
00011d78 udf      #0xb764
00011d7c udf      #0
00011d80 udf      #0xb794
00011d84 udf      #0
00011d88 udf      #0xb540
00011d8c udf      #0
00011d90 udf      #0xb540
00011d94 udf      #0
00011d98 udf      #0xb7ac
00011d9c udf      #0
00011da0 ldpsw    x19, x25, [x10, #-0x70]
00011da4 .byte    0x61, 0x6c, 0x50, 0x6f
00011da8 .byte    0x72, 0x74, 0x20, 0x4c
00011dac .byte    0x69, 0x62, 0x00, 0x49
00011db0 .byte    0x6f, 0x4c, 0x69, 0x62
00011db4 uabdl    v1.4s, v18.4h, v13.4h
00011db8 .byte    0x63, 0x00, 0x28, 0x41
00011dbc fnmls    z4.h, p1/m, z3.h, z18.h
00011dc0 .byte    0x73, 0x73, 0x20, 0x26
00011dc4 .byte    0x20, 0x31, 0x29, 0x20
00011dc8 adr      x29, #0x5256d
00011dcc fcmla    z0.h, p2/m, z0.h, z1.h, #0x5a
00011dd0 .byte    0x64, 0x72, 0x65, 0x73
00011dd4 .byte    0x73, 0x20, 0x26, 0x20
00011dd8 str      b19, [x9, #0x80a]
00011ddc .byte    0x3d, 0x20, 0x30, 0x00
00011de0 bfdot    z8.s, z9.h, z4.h[0]
00011de4 .byte    0x72, 0x65, 0x73, 0x73
00011de8 tbnz     w0, #4, #0x122ac
00011dec str      b9, [x1, #0xf48]
00011df0 st3      {v0.b, v1.b, v2.b}[0xc], [x1]
00011df4 .byte    0x65, 0x6d, 0x6f, 0x72
00011df8 ldnp     d25, d16, [x11, #-0x140]
00011dfc .byte    0x6f, 0x63, 0x61, 0x74
00011e00 .byte    0x69, 0x6f, 0x6e, 0x4c
00011e04 .byte    0x69, 0x62, 0x2e, 0x63
00011e08 .byte    0x00, 0x50, 0x61, 0x67
00011e0c .byte    0x65, 0x73, 0x20, 0x21
00011e10 .byte    0x3d, 0x20, 0x30, 0x00
00011e14 ldpsw    x8, x16, [x9, #-0xa0]
00011e18 fnmls    z7.h, p3/m, z19.h, z13.h
00011e1c .byte    0x6e, 0x74, 0x20, 0x26
00011e20 ldnp     d0, d10, [x1, #0x10]
00011e24 ldp      d9, d25, [x27, #-0x120]
00011e28 .byte    0x65, 0x6e, 0x74, 0x20
00011e2c stp      w13, w8, [x1, #-0x78]
00011e30 str      b9, [x1, #0xf48]
00011e34 eor      w0, w1, #0x1fff
00011e38 adr      x5, #0xeaa66
00011e3c .byte    0x61, 0x67, 0x65, 0x73
00011e40 adr      x0, #0x52606
00011e44 .byte    0x61, 0x67, 0x65, 0x73
00011e48 ldnp     d0, d16, [x8, #-0x140]
00011e4c .byte    0x6f, 0x63, 0x61, 0x74
00011e50 .byte    0x69, 0x6f, 0x6e, 0x53
00011e54 .byte    0x69, 0x7a, 0x65, 0x20
00011e58 stnp     w28, w15, [x9, #-0x100]
00011e5c .byte    0x30, 0x78, 0x46, 0x46
00011e60 .byte    0x46, 0x46, 0x46, 0x46
00011e64 .byte    0x46, 0x46, 0x46, 0x46
00011e68 .byte    0x46, 0x46, 0x46, 0x46
00011e6c .byte    0x46, 0x46, 0x55, 0x4c
00011e70 .byte    0x4c, 0x20, 0x2d, 0x20
00011e74 .byte    0x28, 0x55, 0x49, 0x4e
00011e78 .byte    0x54, 0x4e, 0x29, 0x20
00011e7c .byte    0x42, 0x75, 0x66, 0x66
00011e80 adds     w5, w19, w0, uxtx #4
00011e84 .byte    0x20, 0x31, 0x29, 0x00
00011e88 udf      #0xcf9c
00011e8c udf      #0
00011e90 udf      #0xcf78
00011e94 udf      #0
00011e98 udf      #0xce54
00011e9c udf      #0
00011ea0 udf      #0xd054
00011ea4 udf      #0
00011ea8 udf      #0xcf78
00011eac udf      #0
00011eb0 udf      #0xcf78
00011eb4 udf      #0
00011eb8 udf      #0xd020
00011ebc udf      #0
00011ec0 udf      #0xcf78
00011ec4 udf      #0
00011ec8 udf      #0xcf78
00011ecc udf      #0
00011ed0 udf      #0xcf78
00011ed4 udf      #0
00011ed8 udf      #0xcf78
00011edc udf      #0
00011ee0 udf      #0xcf78
00011ee4 udf      #0
00011ee8 udf      #0xcf78
00011eec udf      #0
00011ef0 udf      #0xcf78
00011ef4 udf      #0
00011ef8 udf      #0xcf78
00011efc udf      #0
00011f00 udf      #0xd02c
00011f04 udf      #0
00011f08 udf      #0xcf78
00011f0c udf      #0
00011f10 udf      #0xd074
00011f14 udf      #0
00011f18 udf      #0xcf98
00011f1c udf      #0
00011f20 udf      #0xd088
00011f24 udf      #0
00011f28 udf      #0xd040
00011f2c udf      #0
00011f30 udf      #0xcf78
00011f34 udf      #0
00011f38 udf      #0xcf78
00011f3c udf      #0
00011f40 udf      #0xd03c
00011f44 udf      #0
00011f48 udf      #0xcbcc
00011f4c udf      #0
00011f50 udf      #0xcd90
00011f54 udf      #0
00011f58 udf      #0xcd98
00011f5c udf      #0
00011f60 udf      #0xcda0
00011f64 udf      #0
00011f68 udf      #0xcda8
00011f6c udf      #0
00011f70 udf      #0xccb8
00011f74 udf      #0
00011f78 udf      #0xcc28
00011f7c udf      #0
00011f80 udf      #0xcd04
00011f84 udf      #0
00011f88 udf      #0xcd04
00011f8c udf      #0
00011f90 udf      #0xcd04
00011f94 udf      #0
00011f98 udf      #0xcd04
00011f9c udf      #0
00011fa0 udf      #0xcd04
00011fa4 udf      #0
00011fa8 udf      #0xcd04
00011fac udf      #0
00011fb0 udf      #0xcd04
00011fb4 udf      #0
00011fb8 udf      #0xcd04
00011fbc udf      #0
00011fc0 udf      #0xcd04
00011fc4 udf      #0
00011fc8 udf      #0xccb8
00011fcc udf      #0
00011fd0 udf      #0xccb8
00011fd4 udf      #0
00011fd8 udf      #0xccb8
00011fdc udf      #0
00011fe0 udf      #0xccb8
00011fe4 udf      #0
00011fe8 udf      #0xccb8
00011fec udf      #0
00011ff0 udf      #0xccb8
00011ff4 udf      #0
00011ff8 udf      #0xccb8
00011ffc udf      #0
00012000 udf      #0xccb8
00012004 udf      #0
00012008 udf      #0xccb8
0001200c udf      #0
00012010 udf      #0xccb8
00012014 udf      #0
00012018 udf      #0xccb8
0001201c udf      #0
00012020 udf      #0xccb8
00012024 udf      #0
00012028 udf      #0xccb8
0001202c udf      #0
00012030 udf      #0xccb8
00012034 udf      #0
00012038 udf      #0xccb8
0001203c udf      #0
00012040 udf      #0xccb8
00012044 udf      #0
00012048 udf      #0xccb8
0001204c udf      #0
00012050 udf      #0xccb8
00012054 udf      #0
00012058 udf      #0xcd88
0001205c udf      #0
00012060 .byte    0x30, 0x31, 0x32, 0x33
00012064 tbnz     w20, #6, #0xe708
00012068 .byte    0x38, 0x39, 0x41, 0x42
0001206c .byte    0x43, 0x44, 0x45, 0x46
00012070 .byte    0x53, 0x75, 0x63, 0x63
00012074 .byte    0x65, 0x73, 0x73, 0x00
00012078 rsubhn2  v23.8h, v10.4s, v18.4s
0001207c .byte    0x69, 0x6e, 0x67, 0x20
00012080 umin     v21.8h, v18.8h, v11.8h
00012084 .byte    0x6f, 0x77, 0x6e, 0x20
00012088 adr      x7, #0x104e13
0001208c .byte    0x68, 0x00, 0x57, 0x61
00012090 umin     v18.8h, v19.8h, v9.8h
00012094 fmaxnmv  h7, p0, z3.h
00012098 fnmls    z12.h, p1/m, z11.h, z20.h
0001209c ldpsw    x0, x17, [x17, #-0xf8]
000120a0 fnmls    z12.h, p5/m, z11.h, z18.h
000120a4 .byte    0x00, 0x57, 0x61, 0x72
000120a8 .byte    0x6e, 0x69, 0x6e, 0x67
000120ac ldpsw    x0, x21, [x25, #-0x70]
000120b0 .byte    0x74, 0x65, 0x20, 0x46
000120b4 .byte    0x61, 0x69, 0x6c, 0x75
000120b8 .byte    0x72, 0x65, 0x00, 0x57
000120bc ldpsw    x1, x28, [x19, #-0x90]
000120c0 .byte    0x6e, 0x67, 0x20, 0x42
000120c4 fnmls    z21.h, p1/m, z19.h, z6.h
000120c8 umlal2   v18.4s, v3.8h, v4.h[1]
000120cc ldp      d15, d8, [x3, #0x130]
000120d0 .byte    0x61, 0x6c, 0x6c, 0x00
000120d4 rsubhn2  v23.8h, v10.4s, v18.4s
000120d8 .byte    0x69, 0x6e, 0x67, 0x20
000120dc ldnp     d19, d29, [x2, #-0x1f0]
000120e0 .byte    0x65, 0x20, 0x44, 0x61
000120e4 st1      {v20.16b, v21.16b, v22.16b}, [x11]
000120e8 .byte    0x6f, 0x61, 0x64, 0x20
000120ec fcmla    v5.8h, v18.8h, v18.h[1], #0x10e
000120f0 .byte    0x72, 0x00, 0x49, 0x6e
000120f4 ldpsw    x22, x24, [x11, #-0xa0]
000120f8 .byte    0x64, 0x20, 0x50, 0x61
000120fc fnmls    z18.h, p0/m, z11.h, z13.h
00012100 .byte    0x74, 0x65, 0x72, 0x00
00012104 .byte    0x55, 0x6e, 0x73, 0x75
00012108 .byte    0x70, 0x70, 0x6f, 0x72
0001210c .byte    0x74, 0x65, 0x64, 0x00
00012110 .byte    0x42, 0x61, 0x64, 0x20
00012114 .byte    0x42, 0x75, 0x66, 0x66
00012118 .byte    0x65, 0x72, 0x20, 0x53
0001211c .byte    0x69, 0x7a, 0x65, 0x00
00012120 .byte    0x42, 0x75, 0x66, 0x66
00012124 b.pl     #0x52f70
00012128 .byte    0x6f, 0x6f, 0x20, 0x53
0001212c ldnp     d13, d24, [x11, #-0x140]
00012130 .byte    0x00, 0x4e, 0x6f, 0x74
00012134 .byte    0x20, 0x52, 0x65, 0x61
00012138 .byte    0x64, 0x79, 0x00, 0x44
0001213c .byte    0x65, 0x76, 0x69, 0x63
00012140 .byte    0x65, 0x20, 0x45, 0x72
00012144 .byte    0x72, 0x6f, 0x72, 0x00
00012148 .byte    0x57, 0x72, 0x69, 0x74
0001214c .byte    0x65, 0x20, 0x50, 0x72
00012150 .byte    0x6f, 0x74, 0x65, 0x63
00012154 .byte    0x74, 0x65, 0x64, 0x00
00012158 .byte    0x4f, 0x75, 0x74, 0x20
0001215c eor      w15, w19, #0x3ffffff
00012160 .byte    0x65, 0x73, 0x6f, 0x75
00012164 .byte    0x72, 0x63, 0x65, 0x73
00012168 ldnp     d0, d21, [x16, #-0x110]
0001216c .byte    0x75, 0x6d, 0x65, 0x20
00012170 .byte    0x43, 0x6f, 0x72, 0x72
00012174 .byte    0x75, 0x70, 0x74, 0x00
00012178 .byte    0x56, 0x6f, 0x6c, 0x75
0001217c .byte    0x6d, 0x65, 0x20, 0x46
00012180 .byte    0x75, 0x6c, 0x6c, 0x00
00012184 .byte    0x4e, 0x6f, 0x20, 0x4d
00012188 .byte    0x65, 0x64, 0x69, 0x61
0001218c .byte    0x00, 0x4d, 0x65, 0x64
00012190 .byte    0x69, 0x61, 0x20, 0x63
00012194 .byte    0x68, 0x61, 0x6e, 0x67
00012198 .byte    0x65, 0x64, 0x00, 0x4e
0001219c .byte    0x6f, 0x74, 0x20, 0x46
000121a0 .byte    0x6f, 0x75, 0x6e, 0x64
000121a4 .byte    0x00, 0x41, 0x63, 0x63
000121a8 .byte    0x65, 0x73, 0x73, 0x20
000121ac ldpsw    x4, x25, [x10, #-0x90]
000121b0 .byte    0x65, 0x64, 0x00, 0x4e
000121b4 fcmeq    p15.h, p0/z, z3.h, #0.0
000121b8 uabdl2   v19.4s, v3.8h, v15.8h
000121bc .byte    0x73, 0x65, 0x00, 0x4e
000121c0 .byte    0x6f, 0x20, 0x6d, 0x61
000121c4 uabdl2   v16.4s, v3.8h, v9.8h
000121c8 ldpsw    x7, x0, [x3, #0xa0]
000121cc sqshlu   v13.4s, v11.4s, #0
000121d0 .byte    0x75, 0x74, 0x00, 0x4e
000121d4 .byte    0x6f, 0x74, 0x20, 0x73
000121d8 .byte    0x74, 0x61, 0x72, 0x74
000121dc .byte    0x65, 0x64, 0x00, 0x41
000121e0 .byte    0x6c, 0x72, 0x65, 0x61
000121e4 .byte    0x64, 0x79, 0x20, 0x73
000121e8 .byte    0x74, 0x61, 0x72, 0x74
000121ec .byte    0x65, 0x64, 0x00, 0x41
000121f0 .byte    0x62, 0x6f, 0x72, 0x74
000121f4 .byte    0x65, 0x64, 0x00, 0x49
000121f8 .byte    0x43, 0x4d, 0x50, 0x20
000121fc fcmla    v5.8h, v18.8h, v18.h[1], #0x10e
00012200 .byte    0x72, 0x00, 0x54, 0x46
00012204 .byte    0x54, 0x50, 0x20, 0x45
00012208 .byte    0x72, 0x72, 0x6f, 0x72
0001220c fcmla    v0.8h, v0.8h, v18.h[1], #0xb4
00012210 .byte    0x74, 0x6f, 0x63, 0x6f
00012214 .byte    0x6c, 0x20, 0x45, 0x72
00012218 .byte    0x72, 0x6f, 0x72, 0x00
0001221c .byte    0x49, 0x6e, 0x63, 0x6f
00012220 .byte    0x6d, 0x70, 0x61, 0x74
00012224 fnmls    z9.h, p0/m, z19.h, z12.h
00012228 .byte    0x20, 0x56, 0x65, 0x72
0001222c .byte    0x73, 0x69, 0x6f, 0x6e
00012230 .byte    0x00, 0x53, 0x65, 0x63
00012234 .byte    0x75, 0x72, 0x69, 0x74
00012238 ldpsw    x25, x8, [x3, #0xb0]
0001223c .byte    0x6f, 0x6c, 0x61, 0x74
00012240 .byte    0x69, 0x6f, 0x6e, 0x00
00012244 .byte    0x43, 0x52, 0x43, 0x20
00012248 fcmla    v5.8h, v18.8h, v18.h[1], #0x10e
0001224c .byte    0x72, 0x00, 0x45, 0x6e
00012250 .byte    0x64, 0x20, 0x6f, 0x66
00012254 .byte    0x20, 0x4d, 0x65, 0x64
00012258 eor      w9, w11, #0x1ffffff
0001225c .byte    0x65, 0x73, 0x65, 0x72
00012260 .byte    0x76, 0x65, 0x64, 0x20
00012264 stp      w8, w12, [x17, #-0x38]
00012268 .byte    0x00, 0x52, 0x65, 0x73
0001226c fnmls    z5.h, p4/m, z19.h, z22.h
00012270 .byte    0x64, 0x20, 0x28, 0x33
00012274 .byte    0x30, 0x29, 0x00, 0x45
00012278 sqshlu   v14.4s, v3.4s, #0
0001227c ldpsw    x6, x8, [x3, #0x30]
00012280 .byte    0x6c, 0x65, 0x00, 0x49
00012284 ldnp     d14, d29, [x19, #-0x1f0]
00012288 .byte    0x69, 0x64, 0x20, 0x4c
0001228c .byte    0x61, 0x6e, 0x67, 0x75
00012290 .byte    0x61, 0x67, 0x65, 0x00
00012294 adr      x3, #0xed07f
00012298 ldpsw    x18, x27, [x27, #-0x98]
0001229c .byte    0x73, 0x65, 0x64, 0x20
000122a0 .byte    0x44, 0x61, 0x74, 0x61
000122a4 ldpsw    x0, x20, [x0, #-0x70]
000122a8 ldpsw    x14, x29, [x3, #0x60]
000122ac .byte    0x62, 0x49, 0x6e, 0x74
000122b0 .byte    0x65, 0x72, 0x6e, 0x61
000122b4 .byte    0x6c, 0x2e, 0x63, 0x00
000122b8 .byte    0x57, 0x69, 0x64, 0x74
000122bc .byte    0x68, 0x20, 0x3c, 0x20
000122c0 stnp     w19, w14, [x1]
000122c4 .byte    0x46, 0x6c, 0x61, 0x67
000122c8 .byte    0x73, 0x20, 0x26, 0x20
000122cc .byte    0x7e, 0x28, 0x30, 0x78
000122d0 .byte    0x30, 0x31, 0x20, 0x7c
000122d4 adr      x0, #0x1028d9
000122d8 .byte    0x38, 0x20, 0x7c, 0x20
000122dc adr      x16, #0x771e1
000122e0 adr      x0, #0x53265
000122e4 stp      w24, w14, [x3, #-0x80]
000122e8 str      b9, [x1, #0xf48]
000122ec stnp     w0, w12, [x1]
000122f0 .byte    0x28, 0x46, 0x6c, 0x61
000122f4 .byte    0x67, 0x73, 0x20, 0x26
000122f8 adr      x0, #0x1028fd
000122fc str      b24, [x9, #0x80a]
00012300 stp      w29, w8, [x1, #-0x80]
00012304 .byte    0x20, 0x7c, 0x7c, 0x20
00012308 ldnp     d8, d10, [x1, #0x60]
0001230c .byte    0x61, 0x67, 0x73, 0x20
00012310 ldeorh   w16, w6, [x1]
00012314 .byte    0x38, 0x30, 0x29, 0x20
00012318 adr      x29, #0x52abd
0001231c .byte    0x29, 0x00, 0x28, 0x42
00012320 fnmls    z21.h, p1/m, z19.h, z6.h
00012324 .byte    0x72, 0x53, 0x69, 0x7a
00012328 str      b5, [x3, #0xf08]
0001232c .byte    0x20, 0x28, 0x5f, 0x67
00012330 .byte    0x50, 0x63, 0x64, 0x5f
00012334 fnmls    z6.h, p2/m, z10.h, z24.h
00012338 .byte    0x64, 0x41, 0x74, 0x42
0001233c .byte    0x75, 0x69, 0x6c, 0x64
00012340 .byte    0x5f, 0x50, 0x63, 0x64
00012344 ldpsw    x13, x24, [x10, #-0x40]
00012348 .byte    0x6d, 0x75, 0x6d, 0x41
0001234c ldpsw    x19, x24, [x27, #-0xb8]
00012350 ldpsw    x19, x29, [x2, #-0x70]
00012354 fcmeq    p14.h, p1/z, z27.h, z12.h
00012358 .byte    0x6e, 0x67, 0x74, 0x68
0001235c stnp     w9, w10, [x9]
00012360 .byte    0x42, 0x75, 0x66, 0x66
00012364 ldpsw    x5, x28, [x19, #0x98]
00012368 .byte    0x7a, 0x65, 0x20, 0x3c
0001236c .byte    0x3d, 0x20, 0x28, 0x5f
00012370 .byte    0x67, 0x50, 0x63, 0x64
00012374 .byte    0x5f, 0x46, 0x69, 0x78
00012378 .byte    0x65, 0x64, 0x41, 0x74
0001237c ldnp     d2, d29, [x10, #-0x170]
00012380 .byte    0x64, 0x5f, 0x50, 0x63
00012384 .byte    0x64, 0x4d, 0x61, 0x78
00012388 ldp      d9, d27, [x11, #-0xb0]
0001238c .byte    0x55, 0x6e, 0x69, 0x63
00012390 .byte    0x6f, 0x64, 0x65, 0x53
00012394 uabdl2   v20.4s, v19.8h, v9.8h
00012398 uqshl    v7.8h, v3.8h, v5.8h
0001239c ldp      w7, w29, [x3, #-0xc0]
000123a0 .byte    0x20, 0x2a, 0x20, 0x73
000123a4 fcmla    v9.8h, v19.8h, v5.h[3], #0x10e
000123a8 .byte    0x66, 0x20, 0x28, 0x43
000123ac adds     w8, w10, #0x490, lsl #12
000123b0 adds     w22, w9, w0, uxth #2
000123b4 .byte    0x20, 0x31, 0x29, 0x00
000123b8 ldnp     d8, d10, [x1, #0x60]
000123bc .byte    0x61, 0x67, 0x73, 0x20
000123c0 ldnp     w6, w8, [x1, #-0x10]
000123c4 adds     w16, w1, #0xc1e
000123c8 adr      x0, #0x5334d
000123cc .byte    0x78, 0x30, 0x38, 0x20
000123d0 ldeorh   w16, w28, [x3]
000123d4 .byte    0x32, 0x30, 0x20, 0x7c
000123d8 ldsetlb  w24, w0, [x1]
000123dc .byte    0x30, 0x29, 0x29, 0x20
000123e0 adr      x29, #0x52b85
000123e4 stnp     w9, w0, [x1, #-0xc0]
000123e8 .byte    0x28, 0x46, 0x6c, 0x61
000123ec .byte    0x67, 0x73, 0x20, 0x26
000123f0 adr      x0, #0x1029f5
000123f4 str      b24, [x9, #0x80a]
000123f8 stp      w29, w8, [x1, #-0x80]
000123fc .byte    0x20, 0x7c, 0x7c, 0x20
00012400 ldnp     d8, d10, [x1, #0x60]
00012404 .byte    0x61, 0x67, 0x73, 0x20
00012408 ldeorh   w16, w6, [x1]
0001240c .byte    0x38, 0x30, 0x29, 0x20
00012410 adr      x29, #0x52bb5
00012414 stnp     w9, w10, [x9]
00012418 .byte    0x57, 0x69, 0x64, 0x74
0001241c .byte    0x68, 0x20, 0x3c, 0x20
00012420 .byte    0x33, 0x38, 0x29, 0x00
00012424 .byte    0x28, 0x42, 0x75, 0x66
00012428 .byte    0x66, 0x65, 0x72, 0x53
0001242c .byte    0x69, 0x7a, 0x65, 0x20
00012430 stnp     w30, w15, [x9, #-0x100]
00012434 .byte    0x57, 0x69, 0x64, 0x74
00012438 .byte    0x68, 0x20, 0x2b, 0x20
0001243c orn      w17, w9, w0, lsl #10
00012440 .byte    0x20, 0x49, 0x6e, 0x63
00012444 fnmls    z18.h, p1/m, z11.h, z13.h
00012448 .byte    0x6e, 0x74, 0x29, 0x00
0001244c .byte    0x28, 0x46, 0x6f, 0x72
00012450 .byte    0x6d, 0x61, 0x74, 0x20
00012454 stnp     w1, w15, [x9, #-0x100]
00012458 ldpsw    x8, x29, [x17, #-0x88]
0001245c stp      w4, w8, [x3, #-0xb0]
00012460 stp      w0, w12, [x1, #-0xb8]
00012464 .byte    0x00, 0x28, 0x42, 0x75
00012468 .byte    0x66, 0x66, 0x65, 0x72
0001246c fnmls    z19.h, p2/m, z10.h, z26.h
00012470 .byte    0x20, 0x3c, 0x3d, 0x20
00012474 adr      x8, #0xe105a
00012478 .byte    0x63, 0x64, 0x5f, 0x46
0001247c .byte    0x69, 0x78, 0x65, 0x64
00012480 .byte    0x41, 0x74, 0x42, 0x75
00012484 .byte    0x69, 0x6c, 0x64, 0x5f
00012488 .byte    0x50, 0x63, 0x64, 0x4d
0001248c ldp      d1, d30, [x3, #-0x170]
00012490 .byte    0x75, 0x6d, 0x55, 0x6e
00012494 .byte    0x69, 0x63, 0x6f, 0x64
00012498 .byte    0x65, 0x53, 0x74, 0x72
0001249c .byte    0x69, 0x6e, 0x67, 0x4c
000124a0 .byte    0x65, 0x6e, 0x67, 0x74
000124a4 .byte    0x68, 0x29, 0x29, 0x00
000124a8 .byte    0x28, 0x53, 0x74, 0x72
000124ac uqshl    v14.8h, v3.8h, v5.8h
000124b0 stnp     w19, w8, [x2, #-0xc0]
000124b4 .byte    0x43, 0x48, 0x41, 0x52
000124b8 orn      w17, w17, w0, lsl #13
000124bc .byte    0x29, 0x46, 0x6f, 0x72
000124c0 ldnp     s13, s24, [x11, #-0x60]
000124c4 .byte    0x20, 0x28, 0x5f, 0x67
000124c8 .byte    0x50, 0x63, 0x64, 0x5f
000124cc fnmls    z6.h, p2/m, z10.h, z24.h
000124d0 .byte    0x64, 0x41, 0x74, 0x42
000124d4 .byte    0x75, 0x69, 0x6c, 0x64
000124d8 .byte    0x5f, 0x50, 0x63, 0x64
000124dc ldpsw    x13, x24, [x10, #-0x40]
000124e0 .byte    0x6d, 0x75, 0x6d, 0x55
000124e4 umlsl2   v14.4s, v11.8h, v3.h[6]
000124e8 .byte    0x64, 0x65, 0x53, 0x74
000124ec .byte    0x72, 0x69, 0x6e, 0x67
000124f0 .byte    0x4c, 0x65, 0x6e, 0x67
000124f4 .byte    0x74, 0x68, 0x29, 0x20
000124f8 stp      w11, w8, [x1, #-0x78]
000124fc .byte    0x20, 0x3c, 0x3d, 0x20
00012500 adr      x8, #0xe10e6
00012504 .byte    0x63, 0x64, 0x5f, 0x46
00012508 .byte    0x69, 0x78, 0x65, 0x64
0001250c .byte    0x41, 0x74, 0x42, 0x75
00012510 .byte    0x69, 0x6c, 0x64, 0x5f
00012514 .byte    0x50, 0x63, 0x64, 0x4d
00012518 ldp      d1, d30, [x3, #-0x170]
0001251c .byte    0x75, 0x6d, 0x55, 0x6e
00012520 .byte    0x69, 0x63, 0x6f, 0x64
00012524 .byte    0x65, 0x53, 0x74, 0x72
00012528 .byte    0x69, 0x6e, 0x67, 0x4c
0001252c .byte    0x65, 0x6e, 0x67, 0x74
00012530 .byte    0x68, 0x29, 0x29, 0x00
00012534 .byte    0x28, 0x41, 0x73, 0x63
00012538 .byte    0x69, 0x69, 0x53, 0x74
0001253c fcmne    p2.h, p3/z, z19.h, z12.h
00012540 stnp     w14, w20, [x27, #-0x100]
00012544 ldp      d6, d27, [x26, #-0xe0]
00012548 .byte    0x61, 0x74, 0x2c, 0x20
0001254c adr      x8, #0xe1132
00012550 .byte    0x63, 0x64, 0x5f, 0x46
00012554 .byte    0x69, 0x78, 0x65, 0x64
00012558 .byte    0x41, 0x74, 0x42, 0x75
0001255c .byte    0x69, 0x6c, 0x64, 0x5f
00012560 .byte    0x50, 0x63, 0x64, 0x4d
00012564 ldp      d1, d30, [x3, #-0x170]
00012568 .byte    0x75, 0x6d, 0x41, 0x73
0001256c .byte    0x63, 0x69, 0x69, 0x53
00012570 uabdl2   v20.4s, v19.8h, v9.8h
00012574 uqshl    v7.8h, v3.8h, v5.8h
00012578 ldp      w7, w29, [x3, #-0xc0]
0001257c adds     w0, w25, #0x80a
00012580 str      b9, [x1, #0xf08]
00012584 .byte    0x20, 0x28, 0x5f, 0x67
00012588 .byte    0x50, 0x63, 0x64, 0x5f
0001258c fnmls    z6.h, p2/m, z10.h, z24.h
00012590 .byte    0x64, 0x41, 0x74, 0x42
00012594 .byte    0x75, 0x69, 0x6c, 0x64
00012598 .byte    0x5f, 0x50, 0x63, 0x64
0001259c ldpsw    x13, x24, [x10, #-0x40]
000125a0 .byte    0x6d, 0x75, 0x6d, 0x41
000125a4 ldpsw    x19, x24, [x27, #-0xb8]
000125a8 ldpsw    x19, x29, [x2, #-0x70]
000125ac fcmeq    p14.h, p1/z, z27.h, z12.h
000125b0 .byte    0x6e, 0x67, 0x74, 0x68
000125b4 .byte    0x29, 0x29, 0x00, 0x3c
000125b8 ldnp     d14, d29, [x11, #-0x140]
000125bc .byte    0x20, 0x73, 0x74, 0x72
000125c0 .byte    0x69, 0x6e, 0x67, 0x3e
000125c4 .byte    0x00, 0x3c, 0x6e, 0x75
000125c8 .byte    0x6c, 0x6c, 0x20, 0x67
000125cc .byte    0x75, 0x69, 0x64, 0x3e
000125d0 .byte    0x00, 0x25, 0x30, 0x38
000125d4 adr      x24, #0x5cb81
000125d8 .byte    0x34, 0x78, 0x2d, 0x25
000125dc ldp      s16, s13, [x1, #-0x40]
000125e0 ldseth   w18, w5, [x1]
000125e4 ldseth   w18, w5, [x1]
000125e8 orr      w13, w9, #0x3ff0000
000125ec orr      w24, w11, #0x3ff0000
000125f0 orr      w24, w11, #0x3ff0000
000125f4 orr      w24, w11, #0x3ff0000
000125f8 orr      w24, w11, #0x3ff0000
000125fc orr      w24, w11, #0x3ff0000
00012600 uaddl2   v24.8h, v3.16b, v28.16b
00012604 .byte    0x75, 0x6c, 0x6c, 0x20
00012608 fnmls    z20.h, p2/m, z11.h, z13.h
0001260c adr      x30, #0x5c611
00012610 .byte    0x32, 0x64, 0x2f, 0x25
00012614 fcmla    v16.4h, v17.4h, v4.h[1], #0x5a
00012618 .byte    0x25, 0x30, 0x34, 0x64
0001261c adr      x0, #0x5ca21
00012620 .byte    0x32, 0x64, 0x3a, 0x25
00012624 .byte    0x30, 0x32, 0x64, 0x00
00012628 ldr      x5, #0x82c2c
0001262c .byte    0x00, 0x0d, 0x0a, 0x00
00012630 udf      #0xd
00012634 udf      #0
00012638 .byte    0x70, 0x20, 0x01, 0x00
0001263c udf      #0
00012640 .byte    0x78, 0x20, 0x01, 0x00
00012644 udf      #0
00012648 .byte    0x8e, 0x20, 0x01, 0x00
0001264c udf      #0
00012650 .byte    0xa5, 0x20, 0x01, 0x00
00012654 udf      #0
00012658 .byte    0xbb, 0x20, 0x01, 0x00
0001265c udf      #0
00012660 .byte    0xd4, 0x20, 0x01, 0x00
00012664 udf      #0
00012668 .byte    0xe7, 0x20, 0x01, 0x00
0001266c udf      #0
00012670 .byte    0xf2, 0x20, 0x01, 0x00
00012674 udf      #0
00012678 .byte    0x04, 0x21, 0x01, 0x00
0001267c udf      #0
00012680 .byte    0x10, 0x21, 0x01, 0x00
00012684 udf      #0
00012688 .byte    0x20, 0x21, 0x01, 0x00
0001268c udf      #0
00012690 .byte    0x31, 0x21, 0x01, 0x00
00012694 udf      #0
00012698 .byte    0x3b, 0x21, 0x01, 0x00
0001269c udf      #0
000126a0 .byte    0x48, 0x21, 0x01, 0x00
000126a4 udf      #0
000126a8 .byte    0x58, 0x21, 0x01, 0x00
000126ac udf      #0
000126b0 .byte    0x69, 0x21, 0x01, 0x00
000126b4 udf      #0
000126b8 .byte    0x78, 0x21, 0x01, 0x00
000126bc udf      #0
000126c0 .byte    0x84, 0x21, 0x01, 0x00
000126c4 udf      #0
000126c8 .byte    0x8d, 0x21, 0x01, 0x00
000126cc udf      #0
000126d0 .byte    0x9b, 0x21, 0x01, 0x00
000126d4 udf      #0
000126d8 .byte    0xa5, 0x21, 0x01, 0x00
000126dc udf      #0
000126e0 .byte    0xb3, 0x21, 0x01, 0x00
000126e4 udf      #0
000126e8 .byte    0xbf, 0x21, 0x01, 0x00
000126ec udf      #0
000126f0 .byte    0xca, 0x21, 0x01, 0x00
000126f4 udf      #0
000126f8 .byte    0xd3, 0x21, 0x01, 0x00
000126fc udf      #0
00012700 .byte    0xdf, 0x21, 0x01, 0x00
00012704 udf      #0
00012708 .byte    0xef, 0x21, 0x01, 0x00
0001270c udf      #0
00012710 .byte    0xf7, 0x21, 0x01, 0x00
00012714 udf      #0
00012718 .byte    0x02, 0x22, 0x01, 0x00
0001271c udf      #0
00012720 .byte    0x0d, 0x22, 0x01, 0x00
00012724 udf      #0
00012728 .byte    0x1c, 0x22, 0x01, 0x00
0001272c udf      #0
00012730 .byte    0x31, 0x22, 0x01, 0x00
00012734 udf      #0
00012738 .byte    0x44, 0x22, 0x01, 0x00
0001273c udf      #0
00012740 .byte    0x4e, 0x22, 0x01, 0x00
00012744 udf      #0
00012748 .byte    0x5b, 0x22, 0x01, 0x00
0001274c udf      #0
00012750 .byte    0x69, 0x22, 0x01, 0x00
00012754 udf      #0
00012758 .byte    0x77, 0x22, 0x01, 0x00
0001275c udf      #0
00012760 .byte    0x83, 0x22, 0x01, 0x00
00012764 udf      #0
00012768 .byte    0x94, 0x22, 0x01, 0x00
0001276c udf      #0
00012770 .byte    0x4d, 0x65, 0x6d, 0x4c
00012774 .byte    0x69, 0x62, 0x47, 0x75
00012778 .byte    0x69, 0x64, 0x2e, 0x63
0001277c .byte    0x00, 0x44, 0x65, 0x73
00012780 .byte    0x74, 0x69, 0x6e, 0x61
00012784 .byte    0x74, 0x69, 0x6f, 0x6e
00012788 .byte    0x47, 0x75, 0x69, 0x64
0001278c .byte    0x20, 0x21, 0x3d, 0x20
00012790 umlal2   v8.4s, v1.8h, v6.h[7]
00012794 orn      w9, w3, w0, lsl #25
00012798 stp      w9, w8, [x1, #-0x80]
0001279c .byte    0x00, 0x53, 0x6f, 0x75
000127a0 .byte    0x72, 0x63, 0x65, 0x47
000127a4 .byte    0x75, 0x69, 0x64, 0x20
000127a8 stnp     w1, w15, [x9, #-0x100]
000127ac ldpsw    x8, x29, [x17, #-0x88]
000127b0 stp      w4, w8, [x3, #-0xb0]
000127b4 .byte    0x20, 0x30, 0x29, 0x00
000127b8 .byte    0x47, 0x75, 0x69, 0x64
000127bc str      b17, [x1, #0x848]
000127c0 .byte    0x20, 0x28, 0x28, 0x76
000127c4 .byte    0x6f, 0x69, 0x64, 0x20
000127c8 adr      x10, #0x52ced
000127cc .byte    0x29, 0x00, 0x47, 0x75
000127d0 .byte    0x69, 0x64, 0x32, 0x20
000127d4 stnp     w1, w15, [x9, #-0x100]
000127d8 ldpsw    x8, x29, [x17, #-0x88]
000127dc stp      w4, w8, [x3, #-0xb0]
000127e0 .byte    0x20, 0x30, 0x29, 0x00
000127e4 .byte    0x28, 0x28, 0x55, 0x49
000127e8 ldp      w14, w21, [x2, #0x70]
000127ec .byte    0x42, 0x75, 0x66, 0x66
000127f0 .byte    0x65, 0x72, 0x20, 0x26
000127f4 ldpsw    x0, x10, [x1, #-0x68]
000127f8 .byte    0x7a, 0x65, 0x6f, 0x66
000127fc .byte    0x20, 0x28, 0x47, 0x75
00012800 .byte    0x69, 0x64, 0x2d, 0x3e
00012804 .byte    0x44, 0x61, 0x74, 0x61
00012808 stp      s17, s10, [x9, #-0x100]
0001280c stp      w0, w12, [x9, #-0xb8]
00012810 .byte    0x20, 0x3d, 0x3d, 0x20
00012814 fadd     z16.h, z1.h, z12.h
00012818 .byte    0x6e, 0x67, 0x74, 0x68
0001281c .byte    0x20, 0x3c, 0x3d, 0x20
00012820 .byte    0x28, 0x30, 0x78, 0x46
00012824 .byte    0x46, 0x46, 0x46, 0x46
00012828 .byte    0x46, 0x46, 0x46, 0x46
0001282c .byte    0x46, 0x46, 0x46, 0x46
00012830 .byte    0x46, 0x46, 0x46, 0x55
00012834 stp      s12, s19, [x2, #-0x100]
00012838 .byte    0x20, 0x28, 0x55, 0x49
0001283c ldp      w14, w21, [x2, #0x70]
00012840 .byte    0x42, 0x75, 0x66, 0x66
00012844 adds     w5, w19, w0, uxtx #4
00012848 .byte    0x20, 0x31, 0x29, 0x00
0001284c uqshl    v8.8h, v1.8h, v5.8h
00012850 .byte    0x67, 0x74, 0x68, 0x20
00012854 .byte    0x26, 0x20, 0x28, 0x73
00012858 fcmla    v9.8h, v19.8h, v5.h[3], #0x10e
0001285c orn      w6, w3, w8, lsl #8
00012860 .byte    0x47, 0x75, 0x69, 0x64
00012864 ldp      w16, w29, [x2, #-0x70]
00012868 adds     w0, w9, #0x80b
0001286c str      b9, [x9, #0x80a]
00012870 .byte    0x3d, 0x20, 0x30, 0x00
00012874 sqshlu   v26.2d, v10.2d, #0x32
00012878 .byte    0x4d, 0x65, 0x6d, 0x57
0001287c adr      x18, #0xf34ab
00012880 .byte    0x65, 0x72, 0x2e, 0x63
00012884 adr      x0, #0xf10e7
00012888 ldp      d25, d19, [x11, #-0x1b0]
0001288c adr      x23, #0xd56d7
00012890 umax     v16.4h, v11.4h, v18.4h
00012894 .byte    0x63, 0x00, 0x28, 0x4c
00012898 .byte    0x65, 0x6e, 0x67, 0x74
0001289c .byte    0x68, 0x20, 0x2d, 0x20
000128a0 .byte    0x31, 0x29, 0x20, 0x3c
000128a4 adr      x29, #0x62ca9
000128a8 .byte    0x78, 0x46, 0x46, 0x46
000128ac .byte    0x46, 0x46, 0x46, 0x46
000128b0 .byte    0x46, 0x46, 0x46, 0x46
000128b4 .byte    0x46, 0x46, 0x46, 0x46
000128b8 .byte    0x46, 0x55, 0x4c, 0x4c
000128bc stnp     w0, w11, [x9, #-0x100]
000128c0 bc.pl    #0xaf1e8
000128c4 fmaxnmv  h14, p2, z10.h
000128c8 uabd     v19.8h, v3.8h, v9.8h
000128cc uqshl    v1.2d, v3.2d, #0x29
000128d0 .byte    0x6e, 0x42, 0x75, 0x66
000128d4 ldp      w6, w25, [x11, #-0x70]
000128d8 .byte    0x00, 0x28, 0x4c, 0x65
000128dc .byte    0x6e, 0x67, 0x74, 0x68
000128e0 adds     w0, w9, #0x80b
000128e4 str      b9, [x1, #0xf08]
000128e8 .byte    0x20, 0x28, 0x30, 0x78
000128ec .byte    0x46, 0x46, 0x46, 0x46
000128f0 .byte    0x46, 0x46, 0x46, 0x46
000128f4 .byte    0x46, 0x46, 0x46, 0x46
000128f8 .byte    0x46, 0x46, 0x46, 0x46
000128fc .byte    0x55, 0x4c, 0x4c, 0x20
00012900 .byte    0x2d, 0x20, 0x28, 0x55
00012904 .byte    0x49, 0x4e, 0x54, 0x4e
00012908 .byte    0x29, 0x53, 0x6f, 0x75
0001290c .byte    0x72, 0x63, 0x65, 0x42
00012910 fnmls    z21.h, p1/m, z19.h, z6.h
00012914 cmla     z18.b, z11.b, z0.b, #0xb4
00012918 tbz      w9, #0xa, #0xd7e4
0001291c orr      w20, w1, #0xffffefff
00012920 .byte    0x52, 0x65, 0x6d, 0x61
00012924 fnmls    z9.h, p3/m, z19.h, z4.h
00012928 .byte    0x72, 0x2e, 0x63, 0x00
0001292c ldnp     d21, d27, [x18, #-0x1f0]
00012930 fnmls    z9.h, p1/m, z27.h, z14.h
00012934 .byte    0x64, 0x2e, 0x63, 0x00
00012938 udf      #0
0001293c udf      #0
00012940 udf      #0
00012944 udf      #0
00012948 udf      #0
0001294c udf      #0
00012950 udf      #0
00012954 udf      #0
00012958 udf      #0
0001295c udf      #0
00012960 udf      #0
00012964 udf      #0
00012968 udf      #0
0001296c udf      #0
00012970 udf      #0
00012974 udf      #0
00012978 udf      #0
0001297c udf      #0
00012980 udf      #0
00012984 udf      #0
00012988 udf      #0
0001298c udf      #0
00012990 udf      #0
00012994 udf      #0
00012998 udf      #0
0001299c udf      #0
000129a0 udf      #0
000129a4 udf      #0
000129a8 udf      #0
000129ac udf      #0
000129b0 udf      #0
000129b4 udf      #0
000129b8 udf      #0
000129bc udf      #0
000129c0 udf      #0
000129c4 udf      #0
000129c8 udf      #0
000129cc udf      #0
000129d0 udf      #0
000129d4 udf      #0
000129d8 udf      #0
000129dc udf      #0
000129e0 udf      #0
000129e4 udf      #0
000129e8 udf      #0
000129ec udf      #0
000129f0 udf      #0
000129f4 udf      #0
000129f8 udf      #0
000129fc udf      #0
00012a00 udf      #0
00012a04 udf      #0
00012a08 udf      #0
00012a0c udf      #0
00012a10 udf      #0
00012a14 udf      #0
00012a18 udf      #0
00012a1c udf      #0
00012a20 udf      #0
00012a24 udf      #0
00012a28 udf      #0
00012a2c udf      #0
00012a30 udf      #0
00012a34 udf      #0
00012a38 udf      #0
00012a3c udf      #0
00012a40 udf      #0
00012a44 udf      #0
00012a48 udf      #0
00012a4c udf      #0
00012a50 udf      #0
00012a54 udf      #0
00012a58 udf      #0
00012a5c udf      #0
00012a60 udf      #0
00012a64 udf      #0
00012a68 udf      #0
00012a6c udf      #0
00012a70 udf      #0
00012a74 udf      #0
00012a78 udf      #0
00012a7c udf      #0
00012a80 udf      #0
00012a84 udf      #0
00012a88 udf      #0
00012a8c udf      #0
00012a90 udf      #0
00012a94 udf      #0
00012a98 udf      #0
00012a9c udf      #0
00012aa0 udf      #0
00012aa4 udf      #0
00012aa8 udf      #0
00012aac udf      #0
00012ab0 udf      #0
00012ab4 udf      #0
00012ab8 udf      #0
00012abc udf      #0
00012ac0 udf      #0
00012ac4 udf      #0
00012ac8 udf      #0
00012acc udf      #0
00012ad0 udf      #0
00012ad4 udf      #0
00012ad8 udf      #0
00012adc udf      #0
00012ae0 udf      #0
00012ae4 udf      #0
00012ae8 udf      #0
00012aec udf      #0
00012af0 udf      #0
00012af4 udf      #0
00012af8 udf      #0
00012afc udf      #0
00012b00 udf      #0
00012b04 udf      #0
00012b08 udf      #0
00012b0c udf      #0
00012b10 udf      #0
00012b14 udf      #0
00012b18 udf      #0
00012b1c udf      #0
00012b20 udf      #0
00012b24 udf      #0
00012b28 udf      #0
00012b2c udf      #0
00012b30 udf      #0
00012b34 udf      #0
00012b38 udf      #0
00012b3c udf      #0
00012b40 udf      #0
00012b44 udf      #0
00012b48 udf      #0
00012b4c udf      #0
00012b50 udf      #0
00012b54 udf      #0
00012b58 udf      #0
00012b5c udf      #0
00012b60 udf      #0
00012b64 udf      #0
00012b68 udf      #0
00012b6c udf      #0
00012b70 udf      #0
00012b74 udf      #0
00012b78 udf      #0
00012b7c udf      #0
00012b80 udf      #0
00012b84 udf      #0
00012b88 udf      #0
00012b8c udf      #0
00012b90 udf      #0
00012b94 udf      #0
00012b98 udf      #0
00012b9c udf      #0
00012ba0 udf      #0
00012ba4 udf      #0
00012ba8 udf      #0
00012bac udf      #0
00012bb0 udf      #0
00012bb4 udf      #0
00012bb8 udf      #0
00012bbc udf      #0
00012bc0 udf      #0
00012bc4 udf      #0
00012bc8 udf      #0
00012bcc udf      #0
00012bd0 udf      #0
00012bd4 udf      #0
00012bd8 udf      #0
00012bdc udf      #0
00012be0 udf      #0
00012be4 udf      #0
00012be8 udf      #0
00012bec udf      #0
00012bf0 udf      #0
00012bf4 udf      #0
00012bf8 udf      #0
00012bfc udf      #0
00012c00 udf      #0
00012c04 udf      #0
00012c08 udf      #0
00012c0c udf      #0
00012c10 udf      #0
00012c14 udf      #0
00012c18 udf      #0
00012c1c udf      #0
00012c20 udf      #0
00012c24 udf      #0
00012c28 udf      #0
00012c2c udf      #0
00012c30 udf      #0
00012c34 udf      #0
00012c38 udf      #0
00012c3c udf      #0
00012c40 udf      #0
00012c44 udf      #0
00012c48 udf      #0
00012c4c udf      #0
00012c50 udf      #0
00012c54 udf      #0
00012c58 udf      #0
00012c5c udf      #0
00012c60 udf      #0
00012c64 udf      #0
00012c68 udf      #0
00012c6c udf      #0
00012c70 udf      #0
00012c74 udf      #0
00012c78 udf      #0
00012c7c udf      #0
00012c80 udf      #0
00012c84 udf      #0
00012c88 udf      #0
00012c8c udf      #0
00012c90 udf      #0
00012c94 udf      #0
00012c98 udf      #0
00012c9c udf      #0
00012ca0 udf      #0
00012ca4 udf      #0
00012ca8 udf      #0
00012cac udf      #0
00012cb0 udf      #0
00012cb4 udf      #0
00012cb8 udf      #0
00012cbc udf      #0
00012cc0 udf      #0
00012cc4 udf      #0
00012cc8 udf      #0
00012ccc udf      #0
00012cd0 udf      #0
00012cd4 udf      #0
00012cd8 udf      #0
00012cdc udf      #0
00012ce0 udf      #0
00012ce4 udf      #0
00012ce8 udf      #0
00012cec udf      #0
00012cf0 udf      #0
00012cf4 udf      #0
00012cf8 udf      #0
00012cfc udf      #0
00012d00 udf      #0
00012d04 udf      #0
00012d08 udf      #0
00012d0c udf      #0
00012d10 udf      #0
00012d14 udf      #0
00012d18 udf      #0
00012d1c udf      #0
00012d20 udf      #0
00012d24 udf      #0
00012d28 udf      #0
00012d2c udf      #0
00012d30 udf      #0
00012d34 udf      #0
00012d38 udf      #0
00012d3c udf      #0
00012d40 udf      #0
00012d44 udf      #0
00012d48 udf      #0
00012d4c udf      #0
00012d50 udf      #0
00012d54 udf      #0
00012d58 udf      #0
00012d5c udf      #0
00012d60 udf      #0
00012d64 udf      #0
00012d68 udf      #0
00012d6c udf      #0
00012d70 udf      #0
00012d74 udf      #0
00012d78 udf      #0
00012d7c udf      #0
00012d80 udf      #0
00012d84 udf      #0
00012d88 udf      #0
00012d8c udf      #0
00012d90 udf      #0
00012d94 udf      #0
00012d98 udf      #0
00012d9c udf      #0
00012da0 udf      #0
00012da4 udf      #0
00012da8 udf      #0
00012dac udf      #0
00012db0 udf      #0
00012db4 udf      #0
00012db8 udf      #0
00012dbc udf      #0
00012dc0 udf      #0
00012dc4 udf      #0
00012dc8 udf      #0
00012dcc udf      #0
00012dd0 udf      #0
00012dd4 udf      #0
00012dd8 udf      #0
00012ddc udf      #0
00012de0 udf      #0
00012de4 udf      #0
00012de8 udf      #0
00012dec udf      #0
00012df0 udf      #0
00012df4 udf      #0
00012df8 udf      #0
00012dfc udf      #0
00012e00 udf      #0
00012e04 udf      #0
00012e08 udf      #0
00012e0c udf      #0
00012e10 udf      #0
00012e14 udf      #0
00012e18 udf      #0
00012e1c udf      #0
00012e20 udf      #0
00012e24 udf      #0
00012e28 udf      #0
00012e2c udf      #0
00012e30 udf      #0
00012e34 udf      #0
00012e38 udf      #0
00012e3c udf      #0
00012e40 udf      #0
00012e44 udf      #0
00012e48 udf      #0
00012e4c udf      #0
00012e50 udf      #0
00012e54 udf      #0
00012e58 udf      #0
00012e5c udf      #0
00012e60 udf      #0
00012e64 udf      #0
00012e68 udf      #0
00012e6c udf      #0
00012e70 udf      #0
00012e74 udf      #0
00012e78 udf      #0
00012e7c udf      #0
00012e80 udf      #0
00012e84 udf      #0
00012e88 udf      #0
00012e8c udf      #0
00012e90 udf      #0
00012e94 udf      #0
00012e98 udf      #0
00012e9c udf      #0
00012ea0 udf      #0
00012ea4 udf      #0
00012ea8 udf      #0
00012eac udf      #0
00012eb0 udf      #0
00012eb4 udf      #0
00012eb8 udf      #0
00012ebc udf      #0
00012ec0 udf      #0
00012ec4 udf      #0
00012ec8 udf      #0
00012ecc udf      #0
00012ed0 udf      #0
00012ed4 udf      #0
00012ed8 udf      #0
00012edc udf      #0
00012ee0 udf      #0
00012ee4 udf      #0
00012ee8 udf      #0
00012eec udf      #0
00012ef0 udf      #0
00012ef4 udf      #0
00012ef8 udf      #0
00012efc udf      #0
00012f00 udf      #0
00012f04 udf      #0
00012f08 udf      #0
00012f0c udf      #0
00012f10 udf      #0
00012f14 udf      #0
00012f18 udf      #0
00012f1c udf      #0
00012f20 udf      #0
00012f24 udf      #0
00012f28 udf      #0
00012f2c udf      #0
00012f30 udf      #0
00012f34 udf      #0
00012f38 udf      #0
00012f3c udf      #0
00012f40 udf      #0
00012f44 udf      #0
00012f48 udf      #0
00012f4c udf      #0
00012f50 udf      #0
00012f54 udf      #0
00012f58 udf      #0
00012f5c udf      #0
00012f60 udf      #0
00012f64 udf      #0
00012f68 udf      #0
00012f6c udf      #0
00012f70 udf      #0
00012f74 udf      #0
00012f78 udf      #0
00012f7c udf      #0
00012f80 udf      #0
00012f84 udf      #0
00012f88 udf      #0
00012f8c udf      #0
00012f90 udf      #0
00012f94 udf      #0
00012f98 udf      #0
00012f9c udf      #0
00012fa0 udf      #0
00012fa4 udf      #0
00012fa8 udf      #0
00012fac udf      #0
00012fb0 udf      #0
00012fb4 udf      #0
00012fb8 udf      #0
00012fbc udf      #0
00012fc0 udf      #0
00012fc4 udf      #0
00012fc8 udf      #0
00012fcc udf      #0
00012fd0 udf      #0
00012fd4 udf      #0
00012fd8 udf      #0
00012fdc udf      #0
00012fe0 udf      #0
00012fe4 udf      #0
00012fe8 udf      #0
00012fec udf      #0
00012ff0 udf      #0
00012ff4 udf      #0
00012ff8 udf      #0
00012ffc udf      #0