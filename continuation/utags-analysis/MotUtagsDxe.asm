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
00001094 ldr      x1, #0xa000
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
000010c0 udf      #0xa008
000010c4 udf      #0
000010c8 udf      #0xa000
000010cc udf      #0
000010d0 udf      #0xa008
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
00001100 adrp     x8, #0xa000
00001104 str      x0, [x8]
00001108 ldp      x29, x30, [sp], #0x10
0000110c ret      
00001110 b        #0x5fe4
00001114 stp      x20, x19, [sp, #-0x20]!
00001118 stp      x29, x30, [sp, #0x10]
0000111c add      x29, sp, #0x10
00001120 mov      x20, x0
00001124 bl       #0x139c
00001128 mov      x19, x0
0000112c tbnz     x19, #0x3f, #0x1140
00001130 adrp     x8, #0xa000
00001134 mov      x0, x20
00001138 ldr      x1, [x8, #0x2b0]
0000113c bl       #0x1394
00001140 ldp      x29, x30, [sp, #0x10]
00001144 mov      x0, x19
00001148 ldp      x20, x19, [sp], #0x20
0000114c ret      
00001150 str      x21, [sp, #-0x30]!
00001154 stp      x20, x19, [sp, #0x10]
00001158 stp      x29, x30, [sp, #0x20]
0000115c add      x29, sp, #0x20
00001160 adrp     x8, #0x7000
00001164 mov      x19, x1
00001168 mov      x20, x0
0000116c ldr      w8, [x8, #0xc44]
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
00001198 adrp     x9, #0x7000
0000119c ldrb     w10, [x9, #0xc48]
000011a0 cbz      w10, #0x1208
000011a4 adrp     x10, #0xa000
000011a8 adrp     x1, #0xa000
000011ac add      x1, x1, #0x78
000011b0 ldr      x11, [x10, #0x2b8]
000011b4 add      x2, sp, #8
000011b8 mov      x0, x20
000011bc ldr      x9, [x11, #0x98]
000011c0 blr      x9
000011c4 mov      x8, x0
000011c8 tbz      x8, #0x3f, #0x11f8
000011cc adrp     x1, #0x7000
000011d0 add      x1, x1, #0xbd0
000011d4 mov      w0, #-0xffffffff80000000
000011d8 mov      x2, x8
000011dc bl       #0x3a50
000011e0 adrp     x0, #0x7000
000011e4 adrp     x2, #0x7000
000011e8 add      x0, x0, #0xbf1
000011ec add      x2, x2, #0xc04
000011f0 mov      w1, #0x7e
000011f4 bl       #0x3b54
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
00001250 bl       #0x3ed8
00001254 mov      x8, x0
00001258 tbz      x8, #0x3f, #0x1288
0000125c adrp     x1, #0x7000
00001260 add      x1, x1, #0xbd0
00001264 mov      w0, #-0xffffffff80000000
00001268 mov      x2, x8
0000126c bl       #0x3a50
00001270 adrp     x0, #0x7000
00001274 adrp     x2, #0x7000
00001278 add      x0, x0, #0xc24
0000127c mov      w1, #0x129
00001280 add      x2, x2, #0xc04
00001284 bl       #0x3b54
00001288 mov      x0, x20
0000128c mov      x1, x19
00001290 bl       #0x3f68
00001294 mov      x9, x0
00001298 tbz      x9, #0x3f, #0x12c8
0000129c adrp     x1, #0x7000
000012a0 add      x1, x1, #0xbd0
000012a4 mov      w0, #-0xffffffff80000000
000012a8 mov      x2, x9
000012ac bl       #0x3a50
000012b0 adrp     x0, #0x7000
000012b4 adrp     x2, #0x7000
000012b8 add      x0, x0, #0xc24
000012bc mov      w1, #0x12c
000012c0 add      x2, x2, #0xc04
000012c4 bl       #0x3b54
000012c8 mov      x0, x20
000012cc mov      x1, x19
000012d0 bl       #0x3fa8
000012d4 mov      x10, x0
000012d8 tbz      x10, #0x3f, #0x1308
000012dc adrp     x1, #0x7000
000012e0 add      x1, x1, #0xbd0
000012e4 mov      w0, #-0xffffffff80000000
000012e8 mov      x2, x10
000012ec bl       #0x3a50
000012f0 adrp     x0, #0x7000
000012f4 adrp     x2, #0x7000
000012f8 add      x0, x0, #0xc24
000012fc mov      w1, #0x12f
00001300 add      x2, x2, #0xc04
00001304 bl       #0x3b54
00001308 mov      x0, x20
0000130c mov      x1, x19
00001310 bl       #0x4118
00001314 mov      x11, x0
00001318 tbz      x11, #0x3f, #0x1348
0000131c adrp     x1, #0x7000
00001320 add      x1, x1, #0xbd0
00001324 mov      w0, #-0xffffffff80000000
00001328 mov      x2, x11
0000132c bl       #0x3a50
00001330 adrp     x0, #0x7000
00001334 adrp     x2, #0x7000
00001338 add      x0, x0, #0xc24
0000133c mov      w1, #0x132
00001340 add      x2, x2, #0xc04
00001344 bl       #0x3b54
00001348 bl       #0x4204
0000134c mov      x12, x0
00001350 tbnz     x12, #0x3f, #0x1360
00001354 ldp      x29, x30, [sp, #0x10]
00001358 ldp      x20, x19, [sp], #0x20
0000135c ret      
00001360 adrp     x1, #0x7000
00001364 add      x1, x1, #0xbd0
00001368 mov      w0, #-0xffffffff80000000
0000136c mov      x2, x12
00001370 bl       #0x3a50
00001374 ldp      x29, x30, [sp, #0x10]
00001378 adrp     x0, #0x7000
0000137c adrp     x2, #0x7000
00001380 add      x0, x0, #0xc24
00001384 mov      w1, #0x135
00001388 add      x2, x2, #0xc04
0000138c ldp      x20, x19, [sp], #0x20
00001390 b        #0x3b54
00001394 ret      
00001398 b        #0x18d0
0000139c mov      x0, xzr
000013a0 ret      
000013a4 stp      x29, x30, [sp, #-0x10]!
000013a8 mov      x29, sp
000013ac bl       #0x1bb0
000013b0 mov      x8, #0x401
000013b4 tst      w0, #1
000013b8 movk     x8, #0x8000, lsl #48
000013bc csel     x0, xzr, x8, ne
000013c0 ldp      x29, x30, [sp], #0x10
000013c4 ret      
000013c8 str      x19, [sp, #-0x20]!
000013cc stp      x29, x30, [sp, #0x10]
000013d0 add      x29, sp, #0x10
000013d4 mov      x19, x0
000013d8 mov      w0, w1
000013dc mov      x1, x2
000013e0 mov      x2, x3
000013e4 mov      x3, x4
000013e8 bl       #0x1c58
000013ec mov      x8, x0
000013f0 mov      x0, xzr
000013f4 str      x8, [x19]
000013f8 ldp      x29, x30, [sp, #0x10]
000013fc ldr      x19, [sp], #0x20
00001400 ret      
00001404 str      x19, [sp, #-0x20]!
00001408 stp      x29, x30, [sp, #0x10]
0000140c add      x29, sp, #0x10
00001410 mov      x19, x0
00001414 mov      w0, w1
00001418 mov      x1, x2
0000141c mov      x2, x3
00001420 mov      x3, x4
00001424 bl       #0x2044
00001428 mov      x8, x0
0000142c mov      x0, xzr
00001430 str      x8, [x19]
00001434 ldp      x29, x30, [sp, #0x10]
00001438 ldr      x19, [sp], #0x20
0000143c ret      
00001440 str      x19, [sp, #-0x20]!
00001444 stp      x29, x30, [sp, #0x10]
00001448 add      x29, sp, #0x10
0000144c mov      x19, x0
00001450 mov      w0, w1
00001454 mov      x1, x2
00001458 bl       #0x20b0
0000145c mov      x8, x0
00001460 mov      x0, xzr
00001464 str      x8, [x19]
00001468 ldp      x29, x30, [sp, #0x10]
0000146c ldr      x19, [sp], #0x20
00001470 ret      
00001474 stp      x29, x30, [sp, #-0x10]!
00001478 mov      x29, sp
0000147c bl       #0x20cc
00001480 mov      x8, #0x401
00001484 cmp      w0, #0
00001488 movk     x8, #0x8000, lsl #48
0000148c csel     x0, xzr, x8, eq
00001490 ldp      x29, x30, [sp], #0x10
00001494 ret      
00001498 str      x19, [sp, #-0x20]!
0000149c stp      x29, x30, [sp, #0x10]
000014a0 add      x29, sp, #0x10
000014a4 mov      x19, x0
000014a8 mov      w0, w1
000014ac mov      x1, x2
000014b0 mov      x2, x3
000014b4 bl       #0x30ac
000014b8 mov      x8, x0
000014bc mov      x0, xzr
000014c0 str      x8, [x19]
000014c4 ldp      x29, x30, [sp, #0x10]
000014c8 ldr      x19, [sp], #0x20
000014cc ret      
000014d0 str      x19, [sp, #-0x20]!
000014d4 stp      x29, x30, [sp, #0x10]
000014d8 add      x29, sp, #0x10
000014dc mov      x19, x0
000014e0 mov      w0, w1
000014e4 mov      x1, x2
000014e8 mov      x2, x3
000014ec mov      x3, x4
000014f0 bl       #0x3298
000014f4 mov      x8, x0
000014f8 mov      x0, xzr
000014fc str      x8, [x19]
00001500 ldp      x29, x30, [sp, #0x10]
00001504 ldr      x19, [sp], #0x20
00001508 ret      
0000150c stp      x29, x30, [sp, #-0x10]!
00001510 mov      x29, sp
00001514 bl       #0x2358
00001518 mov      x8, #0x401
0000151c cmp      w0, #0
00001520 movk     x8, #0x8000, lsl #48
00001524 csel     x0, xzr, x8, eq
00001528 ldp      x29, x30, [sp], #0x10
0000152c ret      
00001530 stp      x29, x30, [sp, #-0x10]!
00001534 mov      x29, sp
00001538 bl       #0x223c
0000153c mov      x8, #0x401
00001540 cmp      w0, #0
00001544 movk     x8, #0x8000, lsl #48
00001548 csel     x0, xzr, x8, eq
0000154c ldp      x29, x30, [sp], #0x10
00001550 ret      
00001554 stp      x29, x30, [sp, #-0x10]!
00001558 mov      x29, sp
0000155c bl       #0x22bc
00001560 mov      x8, #0x401
00001564 cmp      w0, #0
00001568 movk     x8, #0x8000, lsl #48
0000156c csel     x0, xzr, x8, eq
00001570 ldp      x29, x30, [sp], #0x10
00001574 ret      
00001578 stp      x29, x30, [sp, #-0x10]!
0000157c mov      x29, sp
00001580 bl       #0x248c
00001584 mov      x8, #0x401
00001588 cmp      w0, #0
0000158c movk     x8, #0x8000, lsl #48
00001590 csel     x0, xzr, x8, eq
00001594 ldp      x29, x30, [sp], #0x10
00001598 ret      
0000159c stp      x29, x30, [sp, #-0x10]!
000015a0 mov      x29, sp
000015a4 bl       #0x241c
000015a8 mov      x8, #0x401
000015ac cmp      w0, #0
000015b0 movk     x8, #0x8000, lsl #48
000015b4 csel     x0, xzr, x8, eq
000015b8 ldp      x29, x30, [sp], #0x10
000015bc ret      
000015c0 stp      x29, x30, [sp, #-0x10]!
000015c4 mov      x29, sp
000015c8 bl       #0x2898
000015cc mov      x8, #0x401
000015d0 cmp      w0, #0
000015d4 movk     x8, #0x8000, lsl #48
000015d8 csel     x0, xzr, x8, eq
000015dc ldp      x29, x30, [sp], #0x10
000015e0 ret      
000015e4 stp      x29, x30, [sp, #-0x10]!
000015e8 mov      x29, sp
000015ec bl       #0x29d8
000015f0 mov      x8, #0x401
000015f4 cmp      w0, #0
000015f8 movk     x8, #0x8000, lsl #48
000015fc csel     x0, xzr, x8, eq
00001600 ldp      x29, x30, [sp], #0x10
00001604 ret      
00001608 stp      x29, x30, [sp, #-0x10]!
0000160c mov      x29, sp
00001610 bl       #0x2a0c
00001614 mov      x8, #0x401
00001618 cmp      w0, #0
0000161c movk     x8, #0x8000, lsl #48
00001620 csel     x0, xzr, x8, eq
00001624 ldp      x29, x30, [sp], #0x10
00001628 ret      
0000162c stp      x29, x30, [sp, #-0x10]!
00001630 mov      x29, sp
00001634 bl       #0x2a40
00001638 mov      x8, #0x401
0000163c tst      w0, #1
00001640 movk     x8, #0x8000, lsl #48
00001644 csel     x0, xzr, x8, ne
00001648 ldp      x29, x30, [sp], #0x10
0000164c ret      
00001650 stp      x29, x30, [sp, #-0x10]!
00001654 mov      x29, sp
00001658 bl       #0x28d8
0000165c mov      x8, #0x401
00001660 cmp      w0, #0
00001664 movk     x8, #0x8000, lsl #48
00001668 csel     x0, xzr, x8, eq
0000166c ldp      x29, x30, [sp], #0x10
00001670 ret      
00001674 stp      x29, x30, [sp, #-0x10]!
00001678 mov      x29, sp
0000167c bl       #0x2930
00001680 mov      x8, #0x401
00001684 cmp      w0, #0
00001688 movk     x8, #0x8000, lsl #48
0000168c csel     x0, xzr, x8, eq
00001690 ldp      x29, x30, [sp], #0x10
00001694 ret      
00001698 stp      x29, x30, [sp, #-0x10]!
0000169c mov      x29, sp
000016a0 bl       #0x2988
000016a4 mov      x8, #0x401
000016a8 tst      w0, #1
000016ac movk     x8, #0x8000, lsl #48
000016b0 csel     x0, xzr, x8, ne
000016b4 ldp      x29, x30, [sp], #0x10
000016b8 ret      
000016bc stp      x29, x30, [sp, #-0x10]!
000016c0 mov      x29, sp
000016c4 bl       #0x2a60
000016c8 mov      x8, #0x401
000016cc tst      w0, #1
000016d0 movk     x8, #0x8000, lsl #48
000016d4 csel     x0, xzr, x8, ne
000016d8 ldp      x29, x30, [sp], #0x10
000016dc ret      
000016e0 stp      x29, x30, [sp, #-0x10]!
000016e4 mov      x29, sp
000016e8 bl       #0x2a7c
000016ec mov      x8, #0x401
000016f0 tst      w0, #1
000016f4 movk     x8, #0x8000, lsl #48
000016f8 csel     x0, xzr, x8, ne
000016fc ldp      x29, x30, [sp], #0x10
00001700 ret      
00001704 str      x19, [sp, #-0x20]!
00001708 stp      x29, x30, [sp, #0x10]
0000170c add      x29, sp, #0x10
00001710 mov      x19, x0
00001714 mov      w0, w1
00001718 mov      x1, x2
0000171c bl       #0x2ad8
00001720 mov      w8, w0
00001724 mov      x0, xzr
00001728 str      w8, [x19]
0000172c ldp      x29, x30, [sp, #0x10]
00001730 ldr      x19, [sp], #0x20
00001734 ret      
00001738 stp      x29, x30, [sp, #-0x10]!
0000173c mov      x29, sp
00001740 bl       #0x2c1c
00001744 mov      x8, #0x401
00001748 cmp      w0, #0
0000174c movk     x8, #0x8000, lsl #48
00001750 csel     x0, xzr, x8, eq
00001754 ldp      x29, x30, [sp], #0x10
00001758 ret      
0000175c stp      x29, x30, [sp, #-0x10]!
00001760 mov      x29, sp
00001764 bl       #0x2ce4
00001768 mov      x8, #0x401
0000176c cmp      w0, #0
00001770 movk     x8, #0x8000, lsl #48
00001774 csel     x0, xzr, x8, eq
00001778 ldp      x29, x30, [sp], #0x10
0000177c ret      
00001780 stp      x29, x30, [sp, #-0x10]!
00001784 mov      x29, sp
00001788 bl       #0x2d5c
0000178c mov      x8, #0x401
00001790 cmp      w0, #0
00001794 movk     x8, #0x8000, lsl #48
00001798 csel     x0, xzr, x8, eq
0000179c ldp      x29, x30, [sp], #0x10
000017a0 ret      
000017a4 str      x19, [sp, #-0x20]!
000017a8 stp      x29, x30, [sp, #0x10]
000017ac add      x29, sp, #0x10
000017b0 mov      x19, x0
000017b4 mov      w0, w1
000017b8 mov      x1, x2
000017bc bl       #0x304c
000017c0 mov      x8, x0
000017c4 mov      x0, xzr
000017c8 str      x8, [x19]
000017cc ldp      x29, x30, [sp, #0x10]
000017d0 ldr      x19, [sp], #0x20
000017d4 ret      
000017d8 stp      x29, x30, [sp, #-0x10]!
000017dc mov      x29, sp
000017e0 bl       #0x21a4
000017e4 mov      x8, #0x401
000017e8 cmp      w0, #0
000017ec movk     x8, #0x8000, lsl #48
000017f0 csel     x0, xzr, x8, eq
000017f4 ldp      x29, x30, [sp], #0x10
000017f8 ret      
000017fc str      x19, [sp, #-0x20]!
00001800 stp      x29, x30, [sp, #0x10]
00001804 add      x29, sp, #0x10
00001808 mov      x19, x0
0000180c mov      w0, w1
00001810 bl       #0x1950
00001814 mov      x8, x0
00001818 mov      x0, xzr
0000181c str      x8, [x19]
00001820 ldp      x29, x30, [sp, #0x10]
00001824 ldr      x19, [sp], #0x20
00001828 ret      
0000182c str      x19, [sp, #-0x20]!
00001830 stp      x29, x30, [sp, #0x10]
00001834 add      x29, sp, #0x10
00001838 mov      x19, x0
0000183c mov      x0, x1
00001840 bl       #0x19c4
00001844 mov      w8, w0
00001848 mov      x0, xzr
0000184c str      w8, [x19]
00001850 ldp      x29, x30, [sp, #0x10]
00001854 ldr      x19, [sp], #0x20
00001858 ret      
0000185c stp      x29, x30, [sp, #-0x10]!
00001860 mov      x29, sp
00001864 bl       #0x1a54
00001868 mov      x0, xzr
0000186c ldp      x29, x30, [sp], #0x10
00001870 ret      
00001874 str      x19, [sp, #-0x20]!
00001878 stp      x29, x30, [sp, #0x10]
0000187c add      x29, sp, #0x10
00001880 mov      x19, x0
00001884 mov      w0, w1
00001888 bl       #0x1b20
0000188c mov      x8, x0
00001890 mov      x0, xzr
00001894 str      x8, [x19]
00001898 ldp      x29, x30, [sp, #0x10]
0000189c ldr      x19, [sp], #0x20
000018a0 ret      
000018a4 stp      x29, x30, [sp, #-0x10]!
000018a8 mov      x29, sp
000018ac bl       #0x349c
000018b0 mov      x8, #0x401
000018b4 cmp      w0, #0
000018b8 movk     x8, #0x8000, lsl #48
000018bc csel     x0, xzr, x8, ne
000018c0 ldp      x29, x30, [sp], #0x10
000018c4 ret      
000018c8 mov      w0, wzr
000018cc b        #0x1578
000018d0 str      x19, [sp, #-0x20]!
000018d4 stp      x29, x30, [sp, #0x10]
000018d8 add      x29, sp, #0x10
000018dc adrp     x19, #0xa000
000018e0 adrp     x1, #0xa000
000018e4 adrp     x2, #0xa000
000018e8 ldr      x8, [x19, #0x2b8]
000018ec add      x1, x1, #0x58
000018f0 add      x2, x2, #0x88
000018f4 add      x0, sp, #8
000018f8 mov      x3, xzr
000018fc ldr      x8, [x8, #0x148]
00001900 mov      x4, xzr
00001904 mov      x5, xzr
00001908 str      xzr, [sp, #8]
0000190c blr      x8
00001910 bl       #0x1b38
00001914 ldr      x9, [x19, #0x2b8]
00001918 adrp     x2, #0x1000
0000191c adrp     x4, #0xa000
00001920 adrp     x5, #0xa000
00001924 add      x2, x2, #0x8c8
00001928 ldr      x9, [x9, #0x170]
0000192c add      x4, x4, #0x28
00001930 add      x5, x5, #0x290
00001934 mov      w0, #0x200
00001938 mov      w1, #8
0000193c mov      x3, xzr
00001940 blr      x9
00001944 ldp      x29, x30, [sp, #0x10]
00001948 ldr      x19, [sp], #0x20
0000194c ret      
00001950 str      x19, [sp, #-0x20]!
00001954 stp      x29, x30, [sp, #0x10]
00001958 add      x29, sp, #0x10
0000195c mov      w19, w0
00001960 cmp      w19, #2
00001964 b.lt     #0x19a4
00001968 bl       #0x3ebc
0000196c adrp     x1, #0x7000
00001970 mov      x2, x0
00001974 add      x1, x1, #0xc90
00001978 mov      w0, #-0xffffffff80000000
0000197c bl       #0x3a50
00001980 adrp     x1, #0x7000
00001984 adrp     x2, #0x7000
00001988 add      x1, x1, #0xc97
0000198c add      x2, x2, #0xcb1
00001990 mov      w0, #-0xffffffff80000000
00001994 mov      w3, w19
00001998 bl       #0x3a50
0000199c mov      x0, xzr
000019a0 b        #0x19b8
000019a4 mov      w8, #0x68
000019a8 adrp     x9, #0xa000
000019ac smull    x8, w19, w8
000019b0 add      x9, x9, #0x190
000019b4 ldr      x0, [x9, x8]
000019b8 ldp      x29, x30, [sp, #0x10]
000019bc ldr      x19, [sp], #0x20
000019c0 ret      
000019c4 str      x21, [sp, #-0x30]!
000019c8 stp      x20, x19, [sp, #0x10]
000019cc stp      x29, x30, [sp, #0x20]
000019d0 add      x29, sp, #0x20
000019d4 adrp     x21, #0xa000
000019d8 mov      x19, x0
000019dc mov      x20, xzr
000019e0 add      x21, x21, #0x190
000019e4 b        #0x1a00
000019e8 ldr      x1, [x21]
000019ec mov      x0, x19
000019f0 bl       #0x45e8
000019f4 cbz      w0, #0x1a40
000019f8 add      x20, x20, #1
000019fc add      x21, x21, #0x68
00001a00 cmp      x20, #1
00001a04 b.ls     #0x19e8
00001a08 bl       #0x3ebc
00001a0c adrp     x1, #0x7000
00001a10 mov      x2, x0
00001a14 add      x1, x1, #0xc90
00001a18 mov      w0, #-0xffffffff80000000
00001a1c bl       #0x3a50
00001a20 adrp     x1, #0x7000
00001a24 adrp     x2, #0x7000
00001a28 add      x1, x1, #0xcc0
00001a2c add      x2, x2, #0xcdf
00001a30 mov      w0, #-0xffffffff80000000
00001a34 mov      x3, x19
00001a38 bl       #0x3a50
00001a3c mov      w20, #-1
00001a40 mov      w0, w20
00001a44 ldp      x29, x30, [sp, #0x20]
00001a48 ldp      x20, x19, [sp, #0x10]
00001a4c ldr      x21, [sp], #0x30
00001a50 ret      
00001a54 stp      x20, x19, [sp, #-0x20]!
00001a58 stp      x29, x30, [sp, #0x10]
00001a5c add      x29, sp, #0x10
00001a60 mov      x19, x1
00001a64 bl       #0x1ab0
00001a68 ldrb     w8, [x19]
00001a6c mov      x20, x0
00001a70 cmp      w8, #0x2f
00001a74 b.ne     #0x1a98
00001a78 mov      x0, x19
00001a7c bl       #0x43c0
00001a80 cmp      x0, #1
00001a84 b.ne     #0x1a98
00001a88 strb     wzr, [x20, #0x48]
00001a8c ldp      x29, x30, [sp, #0x10]
00001a90 ldp      x20, x19, [sp], #0x20
00001a94 ret      
00001a98 ldp      x29, x30, [sp, #0x10]
00001a9c add      x0, x20, #0x48
00001aa0 mov      w2, #0x20
00001aa4 mov      x1, x19
00001aa8 ldp      x20, x19, [sp], #0x20
00001aac b        #0x44d8
00001ab0 str      x19, [sp, #-0x20]!
00001ab4 stp      x29, x30, [sp, #0x10]
00001ab8 add      x29, sp, #0x10
00001abc mov      w19, w0
00001ac0 cmp      w19, #2
00001ac4 b.lt     #0x1b04
00001ac8 bl       #0x3ebc
00001acc adrp     x1, #0x7000
00001ad0 mov      x2, x0
00001ad4 add      x1, x1, #0xc90
00001ad8 mov      w0, #-0xffffffff80000000
00001adc bl       #0x3a50
00001ae0 adrp     x1, #0x7000
00001ae4 adrp     x2, #0x7000
00001ae8 add      x1, x1, #0xc97
00001aec add      x2, x2, #0xda5
00001af0 mov      w0, #-0xffffffff80000000
00001af4 mov      w3, w19
00001af8 bl       #0x3a50
00001afc mov      x0, xzr
00001b00 b        #0x1b14
00001b04 mov      w8, #0x68
00001b08 adrp     x9, #0xa000
00001b0c add      x9, x9, #0x190
00001b10 smaddl   x0, w19, w8, x9
00001b14 ldp      x29, x30, [sp, #0x10]
00001b18 ldr      x19, [sp], #0x20
00001b1c ret      
00001b20 stp      x29, x30, [sp, #-0x10]!
00001b24 mov      x29, sp
00001b28 bl       #0x1ab0
00001b2c add      x0, x0, #0x48
00001b30 ldp      x29, x30, [sp], #0x10
00001b34 ret      
00001b38 adrp     x10, #0xa000
00001b3c add      x10, x10, #0x190
00001b40 mov      x8, xzr
00001b44 add      x9, x10, #0x28
00001b48 b        #0x1b60
00001b4c add      x11, x9, #0x10
00001b50 stp      x9, x9, [x9]
00001b54 add      x8, x8, #1
00001b58 stp      x11, x11, [x9, #0x10]
00001b5c add      x9, x9, #0x68
00001b60 cmp      x8, #2
00001b64 b.ne     #0x1b4c
00001b68 ret      
00001b6c mov      w9, #0x20
00001b70 cbz      x9, #0x1ba4
00001b74 ldrb     w8, [x0], #1
00001b78 ldrb     w10, [x1], #1
00001b7c cmp      w8, #0x3a
00001b80 csel     w11, wzr, w8, eq
00001b84 cmp      w10, #0x3a
00001b88 csel     w10, wzr, w10, eq
00001b8c cmp      w11, w10
00001b90 sub      x9, x9, #1
00001b94 cset     w8, eq
00001b98 cbz      w11, #0x1ba8
00001b9c b.eq     #0x1b70
00001ba0 b        #0x1ba8
00001ba4 mov      w8, #1
00001ba8 mov      w0, w8
00001bac ret      
00001bb0 str      x23, [sp, #-0x40]!
00001bb4 stp      x22, x21, [sp, #0x10]
00001bb8 stp      x20, x19, [sp, #0x20]
00001bbc stp      x29, x30, [sp, #0x30]
00001bc0 add      x29, sp, #0x30
00001bc4 mov      x19, x3
00001bc8 mov      x20, x2
00001bcc mov      x21, x1
00001bd0 mov      w22, w0
00001bd4 bl       #0x1ab0
00001bd8 cmp      w22, #1
00001bdc b.ne     #0x1be8
00001be0 mov      w0, #1
00001be4 b        #0x1c18
00001be8 add      x22, x0, #0x38
00001bec add      x8, x0, #0x40
00001bf0 b        #0x1c08
00001bf4 add      x0, x23, #0x10
00001bf8 mov      x1, x21
00001bfc bl       #0x1b6c
00001c00 tbnz     w0, #0, #0x1c2c
00001c04 add      x8, x23, #8
00001c08 ldr      x23, [x8]
00001c0c cmp      x23, x22
00001c10 b.ne     #0x1bf4
00001c14 mov      w0, wzr
00001c18 ldp      x29, x30, [sp, #0x30]
00001c1c ldp      x20, x19, [sp, #0x20]
00001c20 ldp      x22, x21, [sp, #0x10]
00001c24 ldr      x23, [sp], #0x40
00001c28 ret      
00001c2c ldr      x4, [x23, #0x230]
00001c30 cbz      x4, #0x1be0
00001c34 ldr      x3, [x23, #0x240]
00001c38 mov      x0, x21
00001c3c mov      x1, x20
00001c40 mov      x2, x19
00001c44 ldp      x29, x30, [sp, #0x30]
00001c48 ldp      x20, x19, [sp, #0x20]
00001c4c ldp      x22, x21, [sp, #0x10]
00001c50 ldr      x23, [sp], #0x40
00001c54 br       x4
00001c58 stp      x24, x23, [sp, #-0x40]!
00001c5c stp      x22, x21, [sp, #0x10]
00001c60 stp      x20, x19, [sp, #0x20]
00001c64 stp      x29, x30, [sp, #0x30]
00001c68 add      x29, sp, #0x30
00001c6c mov      x19, x3
00001c70 mov      x22, x2
00001c74 mov      x20, x1
00001c78 mov      w21, w0
00001c7c bl       #0x1ab0
00001c80 mov      x23, x0
00001c84 cbz      x19, #0x1d1c
00001c88 ldr      x8, [x23, #0x18]
00001c8c cbz      x8, #0x1d0c
00001c90 mov      w0, w21
00001c94 mov      x1, x20
00001c98 mov      x2, x22
00001c9c mov      x3, x19
00001ca0 bl       #0x1bb0
00001ca4 tbz      w0, #0, #0x1d18
00001ca8 mov      w0, w21
00001cac mov      x1, x20
00001cb0 bl       #0x1f3c
00001cb4 mov      x24, x0
00001cb8 cbz      x24, #0x1d34
00001cbc ldrb     w8, [x24, #0x24]
00001cc0 tbnz     w8, #0, #0x1d18
00001cc4 mov      x0, x19
00001cc8 bl       #0x3738
00001ccc mov      x23, x0
00001cd0 cbz      x23, #0x1d18
00001cd4 ldr      x0, [x24, #0x30]
00001cd8 cbz      x0, #0x1ce0
00001cdc bl       #0x378c
00001ce0 mov      w2, #0x20
00001ce4 mov      x0, x24
00001ce8 mov      x1, x20
00001cec bl       #0x44d8
00001cf0 mov      x0, x23
00001cf4 str      w19, [x24, #0x20]
00001cf8 mov      x1, x22
00001cfc str      x23, [x24, #0x30]
00001d00 mov      x2, x19
00001d04 bl       #0x464c
00001d08 b        #0x1d8c
00001d0c mov      w0, w21
00001d10 bl       #0x1da8
00001d14 cbz      w0, #0x1c90
00001d18 mov      x19, xzr
00001d1c mov      x0, x19
00001d20 ldp      x29, x30, [sp, #0x30]
00001d24 ldp      x20, x19, [sp, #0x20]
00001d28 ldp      x22, x21, [sp, #0x10]
00001d2c ldp      x24, x23, [sp], #0x40
00001d30 ret      
00001d34 mov      w0, #0x40
00001d38 bl       #0x377c
00001d3c mov      x24, x0
00001d40 cbz      x24, #0x1d18
00001d44 mov      w2, #0x20
00001d48 mov      x0, x24
00001d4c mov      x1, x20
00001d50 bl       #0x44d8
00001d54 mov      x0, x19
00001d58 str      w19, [x24, #0x20]
00001d5c bl       #0x3738
00001d60 str      x0, [x24, #0x30]
00001d64 cbz      x0, #0x1d9c
00001d68 mov      x1, x22
00001d6c mov      x2, x19
00001d70 bl       #0x464c
00001d74 ldr      x8, [x23, #0x18]
00001d78 ldr      x9, [x8, #0x38]
00001d7c str      x9, [x24, #0x38]
00001d80 ldr      x9, [x23, #0x18]
00001d84 str      x24, [x9, #0x38]
00001d88 str      x24, [x23, #0x20]
00001d8c mov      w0, w21
00001d90 mov      x1, x20
00001d94 bl       #0x1fd4
00001d98 b        #0x1d1c
00001d9c mov      x0, x24
00001da0 bl       #0x378c
00001da4 b        #0x1d18
00001da8 str      x21, [sp, #-0x30]!
00001dac stp      x20, x19, [sp, #0x10]
00001db0 stp      x29, x30, [sp, #0x20]
00001db4 add      x29, sp, #0x20
00001db8 mov      w20, w0
00001dbc bl       #0x1ab0
00001dc0 mov      x19, x0
00001dc4 ldr      x8, [x19, #0x18]
00001dc8 cbz      x8, #0x1de0
00001dcc mov      w0, wzr
00001dd0 ldp      x29, x30, [sp, #0x20]
00001dd4 ldp      x20, x19, [sp, #0x10]
00001dd8 ldr      x21, [sp], #0x30
00001ddc ret      
00001de0 ldr      x1, [x19, #8]
00001de4 mov      x0, x19
00001de8 bl       #0x34b4
00001dec cbz      w0, #0x1dd0
00001df0 ldr      x1, [x19, #0x10]
00001df4 cbz      x1, #0x1e04
00001df8 mov      x0, x19
00001dfc bl       #0x34b4
00001e00 cbz      w0, #0x1ec0
00001e04 cmp      w0, #5
00001e08 b.ne     #0x1dd0
00001e0c ldr      x9, [x19, #0x18]
00001e10 cbnz     x9, #0x1dd0
00001e14 bl       #0x3ebc
00001e18 adrp     x21, #0x7000
00001e1c add      x21, x21, #0xc90
00001e20 mov      x2, x0
00001e24 mov      w0, #0x40
00001e28 mov      x1, x21
00001e2c bl       #0x3a50
00001e30 adrp     x1, #0x7000
00001e34 add      x1, x1, #0xdaf
00001e38 mov      w3, #5
00001e3c mov      w0, #0x40
00001e40 mov      w2, w20
00001e44 bl       #0x3a50
00001e48 bl       #0x3ebc
00001e4c mov      x3, x0
00001e50 mov      w0, #0x40
00001e54 mov      x1, x21
00001e58 mov      x2, x3
00001e5c bl       #0x3a50
00001e60 adrp     x1, #0x7000
00001e64 add      x1, x1, #0xddc
00001e68 mov      w0, #0x40
00001e6c bl       #0x3a50
00001e70 mov      w0, #0x40
00001e74 bl       #0x377c
00001e78 mov      x20, x0
00001e7c cbz      x20, #0x1ecc
00001e80 adrp     x1, #0x7000
00001e84 add      x1, x1, #0xe14
00001e88 mov      w2, #0x20
00001e8c mov      x0, x20
00001e90 bl       #0x44d8
00001e94 mov      w0, #0x40
00001e98 bl       #0x377c
00001e9c str      x0, [x20, #0x38]
00001ea0 cbz      x0, #0x1f00
00001ea4 adrp     x1, #0x7000
00001ea8 add      x1, x1, #0xe22
00001eac mov      w2, #0x20
00001eb0 bl       #0x44d8
00001eb4 mov      w0, wzr
00001eb8 str      x20, [x19, #0x18]
00001ebc b        #0x1dd0
00001ec0 mov      w0, w20
00001ec4 bl       #0x2490
00001ec8 b        #0x1dcc
00001ecc bl       #0x3ebc
00001ed0 mov      x4, x0
00001ed4 adrp     x1, #0x7000
00001ed8 add      x1, x1, #0xc90
00001edc mov      w0, #-0xffffffff80000000
00001ee0 mov      x2, x4
00001ee4 bl       #0x3a50
00001ee8 adrp     x1, #0x7000
00001eec add      x1, x1, #0xdfe
00001ef0 mov      w0, #-0xffffffff80000000
00001ef4 bl       #0x3a50
00001ef8 mov      w0, #-5
00001efc b        #0x1dd0
00001f00 bl       #0x3ebc
00001f04 mov      x5, x0
00001f08 adrp     x1, #0x7000
00001f0c add      x1, x1, #0xc90
00001f10 mov      w0, #-0xffffffff80000000
00001f14 mov      x2, x5
00001f18 bl       #0x3a50
00001f1c adrp     x1, #0x7000
00001f20 add      x1, x1, #0xdfe
00001f24 mov      w0, #-0xffffffff80000000
00001f28 bl       #0x3a50
00001f2c mov      x0, x20
00001f30 bl       #0x378c
00001f34 mov      w0, #-5
00001f38 b        #0x1dd0
00001f3c stp      x22, x21, [sp, #-0x30]!
00001f40 stp      x20, x19, [sp, #0x10]
00001f44 stp      x29, x30, [sp, #0x20]
00001f48 add      x29, sp, #0x20
00001f4c mov      x19, x1
00001f50 mov      w22, w0
00001f54 bl       #0x1ab0
00001f58 mov      x20, x0
00001f5c ldr      x21, [x20, #0x20]
00001f60 cbz      x21, #0x1f74
00001f64 mov      x0, x19
00001f68 mov      x1, x21
00001f6c bl       #0x1b6c
00001f70 tbnz     w0, #0, #0x1fb8
00001f74 ldr      x8, [x20, #0x18]
00001f78 cbz      x8, #0x1fa8
00001f7c ldr      x22, [x8, #0x38]
00001f80 mov      x21, x22
00001f84 cbz      x21, #0x1fb8
00001f88 ldr      x22, [x21, #0x38]
00001f8c cbz      x22, #0x1fb4
00001f90 mov      x0, x19
00001f94 mov      x1, x21
00001f98 bl       #0x1b6c
00001f9c tbz      w0, #0, #0x1f80
00001fa0 str      x21, [x20, #0x20]
00001fa4 b        #0x1fb8
00001fa8 mov      w0, w22
00001fac bl       #0x1da8
00001fb0 cbz      w0, #0x1fcc
00001fb4 mov      x21, xzr
00001fb8 ldp      x29, x30, [sp, #0x20]
00001fbc ldp      x20, x19, [sp, #0x10]
00001fc0 mov      x0, x21
00001fc4 ldp      x22, x21, [sp], #0x30
00001fc8 ret      
00001fcc ldr      x8, [x20, #0x18]
00001fd0 b        #0x1f7c
00001fd4 stp      x22, x21, [sp, #-0x30]!
00001fd8 stp      x20, x19, [sp, #0x10]
00001fdc stp      x29, x30, [sp, #0x20]
00001fe0 add      x29, sp, #0x20
00001fe4 mov      x19, x1
00001fe8 mov      w20, w0
00001fec bl       #0x1ab0
00001ff0 add      x21, x0, #0x28
00001ff4 add      x8, x0, #0x30
00001ff8 b        #0x2028
00001ffc add      x0, x22, #0x10
00002000 mov      x1, x19
00002004 bl       #0x1b6c
00002008 tbz      w0, #0, #0x2024
0000200c ldr      x8, [x22, #0x30]
00002010 cbz      x8, #0x2024
00002014 ldr      x2, [x22, #0x38]
00002018 mov      w0, w20
0000201c mov      x1, x19
00002020 blr      x8
00002024 add      x8, x22, #8
00002028 ldr      x22, [x8]
0000202c cmp      x22, x21
00002030 b.ne     #0x1ffc
00002034 ldp      x29, x30, [sp, #0x20]
00002038 ldp      x20, x19, [sp, #0x10]
0000203c ldp      x22, x21, [sp], #0x30
00002040 ret      
00002044 str      x21, [sp, #-0x30]!
00002048 stp      x20, x19, [sp, #0x10]
0000204c stp      x29, x30, [sp, #0x20]
00002050 add      x29, sp, #0x20
00002054 mov      x20, x3
00002058 mov      x19, x2
0000205c mov      x21, xzr
00002060 cbz      x19, #0x209c
00002064 cbz      x20, #0x209c
00002068 bl       #0x1f3c
0000206c cbz      x0, #0x2098
00002070 ldr      x1, [x0, #0x30]
00002074 cbz      x1, #0x2098
00002078 ldr      w8, [x0, #0x20]
0000207c cbz      w8, #0x2098
00002080 cmp      x8, x20
00002084 csel     x21, x20, x8, hi
00002088 mov      x0, x19
0000208c mov      x2, x21
00002090 bl       #0x464c
00002094 b        #0x209c
00002098 mov      x21, xzr
0000209c ldp      x29, x30, [sp, #0x20]
000020a0 ldp      x20, x19, [sp, #0x10]
000020a4 mov      x0, x21
000020a8 ldr      x21, [sp], #0x30
000020ac ret      
000020b0 stp      x29, x30, [sp, #-0x10]!
000020b4 mov      x29, sp
000020b8 bl       #0x1f3c
000020bc cbz      x0, #0x20c4
000020c0 ldr      w0, [x0, #0x20]
000020c4 ldp      x29, x30, [sp], #0x10
000020c8 ret      
000020cc str      x25, [sp, #-0x50]!
000020d0 stp      x24, x23, [sp, #0x10]
000020d4 stp      x22, x21, [sp, #0x20]
000020d8 stp      x20, x19, [sp, #0x30]
000020dc stp      x29, x30, [sp, #0x40]
000020e0 add      x29, sp, #0x40
000020e4 mov      x19, x1
000020e8 mov      w20, w0
000020ec bl       #0x1ab0
000020f0 mov      x22, x0
000020f4 ldr      x21, [x22, #0x18]
000020f8 cbz      x21, #0x2170
000020fc ldr      x25, [x21, #0x38]
00002100 mov      w23, #-1
00002104 mov      x24, x21
00002108 mov      x21, x25
0000210c cbz      x21, #0x2180
00002110 ldr      x25, [x21, #0x38]
00002114 cbz      x25, #0x2180
00002118 mov      x0, x19
0000211c mov      x1, x21
00002120 bl       #0x1b6c
00002124 tbz      w0, #0, #0x2104
00002128 ldrb     w8, [x21, #0x24]
0000212c tbnz     w8, #0, #0x2104
00002130 ldr      x8, [x22, #0x20]
00002134 cmp      x8, x21
00002138 b.ne     #0x2144
0000213c str      xzr, [x22, #0x20]
00002140 ldr      x25, [x21, #0x38]
00002144 str      x25, [x24, #0x38]
00002148 ldr      x0, [x21, #0x30]
0000214c cbz      x0, #0x2154
00002150 bl       #0x378c
00002154 mov      x0, x21
00002158 bl       #0x378c
0000215c mov      w0, w20
00002160 mov      x1, x19
00002164 bl       #0x1fd4
00002168 mov      w23, wzr
0000216c b        #0x2180
00002170 mov      w0, w20
00002174 bl       #0x1da8
00002178 mov      w23, w0
0000217c cbz      w23, #0x219c
00002180 mov      w0, w23
00002184 ldp      x29, x30, [sp, #0x40]
00002188 ldp      x20, x19, [sp, #0x30]
0000218c ldp      x22, x21, [sp, #0x20]
00002190 ldp      x24, x23, [sp, #0x10]
00002194 ldr      x25, [sp], #0x50
00002198 ret      
0000219c ldr      x21, [x22, #0x18]
000021a0 b        #0x20fc
000021a4 str      x21, [sp, #-0x30]!
000021a8 stp      x20, x19, [sp, #0x10]
000021ac stp      x29, x30, [sp, #0x20]
000021b0 add      x29, sp, #0x20
000021b4 mov      w20, w0
000021b8 bl       #0x1ab0
000021bc mov      x19, x0
000021c0 ldr      x21, [x19, #0x18]
000021c4 cbnz     x21, #0x2220
000021c8 mov      w0, w20
000021cc bl       #0x1da8
000021d0 cbnz     w0, #0x222c
000021d4 ldr      x21, [x19, #0x18]
000021d8 b        #0x2220
000021dc ldr      x8, [x20, #0x38]
000021e0 cbz      x8, #0x2228
000021e4 ldrb     w9, [x20, #0x24]
000021e8 tbnz     w9, #0, #0x221c
000021ec ldr      x9, [x19, #0x20]
000021f0 cmp      x9, x20
000021f4 b.ne     #0x2200
000021f8 str      xzr, [x19, #0x20]
000021fc ldr      x8, [x20, #0x38]
00002200 str      x8, [x21, #0x38]
00002204 ldr      x0, [x20, #0x30]
00002208 cbz      x0, #0x2210
0000220c bl       #0x378c
00002210 mov      x0, x20
00002214 bl       #0x378c
00002218 b        #0x2220
0000221c mov      x21, x20
00002220 ldr      x20, [x21, #0x38]
00002224 cbnz     x20, #0x21dc
00002228 mov      w0, wzr
0000222c ldp      x29, x30, [sp, #0x20]
00002230 ldp      x20, x19, [sp, #0x10]
00002234 ldr      x21, [sp], #0x30
00002238 ret      
0000223c stp      x24, x23, [sp, #-0x40]!
00002240 stp      x22, x21, [sp, #0x10]
00002244 stp      x20, x19, [sp, #0x20]
00002248 stp      x29, x30, [sp, #0x30]
0000224c add      x29, sp, #0x30
00002250 mov      x19, x2
00002254 mov      x20, x1
00002258 mov      w21, w0
0000225c bl       #0x1ab0
00002260 cbz      x20, #0x2298
00002264 add      x23, x0, #0x38
00002268 add      x8, x0, #0x40
0000226c mov      w22, #-0x1b
00002270 ldr      x24, [x8]
00002274 cmp      x24, x23
00002278 b.eq     #0x22a0
0000227c add      x1, x24, #0x10
00002280 mov      w0, w21
00002284 mov      x2, x19
00002288 blr      x20
0000228c add      x8, x24, #8
00002290 cbz      w0, #0x2270
00002294 b        #0x22a4
00002298 mov      w22, #-1
0000229c b        #0x22a4
000022a0 mov      w22, wzr
000022a4 mov      w0, w22
000022a8 ldp      x29, x30, [sp, #0x30]
000022ac ldp      x20, x19, [sp, #0x20]
000022b0 ldp      x22, x21, [sp, #0x10]
000022b4 ldp      x24, x23, [sp], #0x40
000022b8 ret      
000022bc str      x23, [sp, #-0x40]!
000022c0 stp      x22, x21, [sp, #0x10]
000022c4 stp      x20, x19, [sp, #0x20]
000022c8 stp      x29, x30, [sp, #0x30]
000022cc add      x29, sp, #0x30
000022d0 mov      x19, x2
000022d4 mov      x20, x1
000022d8 mov      w21, w0
000022dc bl       #0x1ab0
000022e0 mov      x22, x0
000022e4 cbz      x20, #0x2334
000022e8 ldr      x8, [x22, #0x18]
000022ec cbz      x8, #0x2328
000022f0 add      x23, x8, #0x38
000022f4 mov      w22, #-0x1b
000022f8 ldr      x1, [x23]
000022fc cbz      x1, #0x2320
00002300 mov      x23, x1
00002304 ldr      x8, [x23, #0x38]!
00002308 cbz      x8, #0x2320
0000230c mov      w0, w21
00002310 mov      x2, x19
00002314 blr      x20
00002318 cbz      w0, #0x22f8
0000231c b        #0x2338
00002320 mov      w22, wzr
00002324 b        #0x2338
00002328 mov      w0, w21
0000232c bl       #0x1da8
00002330 cbz      w0, #0x2350
00002334 mov      w22, #-1
00002338 mov      w0, w22
0000233c ldp      x29, x30, [sp, #0x30]
00002340 ldp      x20, x19, [sp, #0x20]
00002344 ldp      x22, x21, [sp, #0x10]
00002348 ldr      x23, [sp], #0x40
0000234c ret      
00002350 ldr      x8, [x22, #0x18]
00002354 b        #0x22f0
00002358 str      x23, [sp, #-0x40]!
0000235c stp      x22, x21, [sp, #0x10]
00002360 stp      x20, x19, [sp, #0x20]
00002364 stp      x29, x30, [sp, #0x30]
00002368 add      x29, sp, #0x30
0000236c mov      x19, x3
00002370 mov      x20, x2
00002374 mov      x21, x1
00002378 bl       #0x1ab0
0000237c mov      x22, x0
00002380 cbz      x20, #0x23bc
00002384 mov      w0, #0x40
00002388 bl       #0x377c
0000238c mov      x23, x0
00002390 cbz      x23, #0x23c4
00002394 add      x0, x23, #0x10
00002398 mov      w2, #0x20
0000239c mov      x1, x21
000023a0 bl       #0x44d8
000023a4 add      x0, x22, #0x28
000023a8 stp      x20, x19, [x23, #0x30]
000023ac mov      x1, x23
000023b0 bl       #0x2404
000023b4 mov      w0, wzr
000023b8 b        #0x23f0
000023bc mov      w0, #-1
000023c0 b        #0x23f0
000023c4 bl       #0x3ebc
000023c8 adrp     x1, #0x7000
000023cc mov      x2, x0
000023d0 add      x1, x1, #0xc90
000023d4 mov      w0, #-0xffffffff80000000
000023d8 bl       #0x3a50
000023dc adrp     x1, #0x7000
000023e0 add      x1, x1, #0xcec
000023e4 mov      w0, #-0xffffffff80000000
000023e8 bl       #0x3a50
000023ec mov      w0, #-5
000023f0 ldp      x29, x30, [sp, #0x30]
000023f4 ldp      x20, x19, [sp, #0x20]
000023f8 ldp      x22, x21, [sp, #0x10]
000023fc ldr      x23, [sp], #0x40
00002400 ret      
00002404 ldr      x8, [x0]
00002408 stp      x8, x0, [x1]
0000240c ldr      x8, [x0]
00002410 str      x1, [x8, #8]
00002414 str      x1, [x0]
00002418 ret      
0000241c stp      x20, x19, [sp, #-0x20]!
00002420 stp      x29, x30, [sp, #0x10]
00002424 add      x29, sp, #0x10
00002428 mov      w19, w0
0000242c bl       #0x1ab0
00002430 mov      x20, x0
00002434 ldr      x0, [x20, #0x18]
00002438 bl       #0x2450
0000243c stp      xzr, xzr, [x20, #0x18]
00002440 mov      w0, w19
00002444 ldp      x29, x30, [sp, #0x10]
00002448 ldp      x20, x19, [sp], #0x20
0000244c b        #0x1da8
00002450 stp      x20, x19, [sp, #-0x20]!
00002454 stp      x29, x30, [sp, #0x10]
00002458 add      x29, sp, #0x10
0000245c mov      x19, x0
00002460 b        #0x247c
00002464 ldp      x0, x20, [x19, #0x30]
00002468 cbz      x0, #0x2470
0000246c bl       #0x378c
00002470 mov      x0, x19
00002474 bl       #0x378c
00002478 mov      x19, x20
0000247c cbnz     x19, #0x2464
00002480 ldp      x29, x30, [sp, #0x10]
00002484 ldp      x20, x19, [sp], #0x20
00002488 ret      
0000248c b        #0x2490
00002490 sub      sp, sp, #0xa0
00002494 str      x27, [sp, #0x40]
00002498 stp      x26, x25, [sp, #0x50]
0000249c stp      x24, x23, [sp, #0x60]
000024a0 stp      x22, x21, [sp, #0x70]
000024a4 stp      x20, x19, [sp, #0x80]
000024a8 stp      x29, x30, [sp, #0x90]
000024ac add      x29, sp, #0x90
000024b0 adrp     x9, #0xa000
000024b4 ldr      x9, [x9]
000024b8 str      x9, [sp, #0x38]
000024bc bl       #0x1ab0
000024c0 mov      x20, x0
000024c4 mov      w23, #-1
000024c8 mov      w0, w23
000024cc ldr      x1, [x20, #8]
000024d0 bl       #0x60c8
000024d4 mov      w21, w0
000024d8 tbnz     w21, #0x1f, #0x2544
000024dc mov      w0, w21
000024e0 bl       #0x61b8
000024e4 ldr      x22, [x20, #0x18]
000024e8 mov      x19, x0
000024ec cbz      x22, #0x2508
000024f0 adrp     x1, #0x7000
000024f4 add      x1, x1, #0xe14
000024f8 mov      w2, #0x20
000024fc mov      x0, x22
00002500 bl       #0x4610
00002504 cbz      w0, #0x257c
00002508 mov      w21, #5
0000250c bl       #0x3ebc
00002510 adrp     x1, #0x7000
00002514 mov      x2, x0
00002518 add      x1, x1, #0xc90
0000251c mov      w0, #-0xffffffff80000000
00002520 bl       #0x3a50
00002524 adrp     x1, #0x7000
00002528 adrp     x2, #0x7000
0000252c add      x1, x1, #0xe85
00002530 add      x2, x2, #0xea5
00002534 mov      w0, #-0xffffffff80000000
00002538 mov      w3, w21
0000253c bl       #0x3a50
00002540 mov      w23, #-1
00002544 adrp     x13, #0xa000
00002548 ldr      x11, [sp, #0x38]
0000254c ldr      x13, [x13]
00002550 sub      x12, x13, x11
00002554 cbnz     x12, #0x2894
00002558 mov      w0, w23
0000255c ldr      x27, [sp, #0x40]
00002560 ldp      x29, x30, [sp, #0x90]
00002564 ldp      x20, x19, [sp, #0x80]
00002568 ldp      x22, x21, [sp, #0x70]
0000256c ldp      x24, x23, [sp, #0x60]
00002570 ldp      x26, x25, [sp, #0x50]
00002574 add      sp, sp, #0xa0
00002578 ret      
0000257c adrp     x23, #0x7000
00002580 mov      x25, xzr
00002584 mov      x24, x22
00002588 add      x23, x23, #0xe22
0000258c b        #0x25bc
00002590 ldr      w8, [x24, #0x20]
00002594 mov      w2, #0x20
00002598 mov      x0, x24
0000259c mov      x1, x23
000025a0 add      w9, w8, #3
000025a4 and      w10, w9, #0xfffffffc
000025a8 add      x11, x25, x10
000025ac add      x25, x11, #0x2c
000025b0 bl       #0x4610
000025b4 cbz      w0, #0x25c8
000025b8 ldr      x24, [x24, #0x38]
000025bc cbnz     x24, #0x2590
000025c0 mov      w26, wzr
000025c4 b        #0x25cc
000025c8 mov      w26, #1
000025cc bl       #0x6294
000025d0 mov      w23, w0
000025d4 bl       #0x6294
000025d8 cbz      w26, #0x25e4
000025dc ldr      x8, [x24, #0x38]
000025e0 cbz      x8, #0x25ec
000025e4 mov      w21, #6
000025e8 b        #0x250c
000025ec add      w10, w25, w23
000025f0 sub      w12, w10, #1
000025f4 neg      w9, w0
000025f8 and      x23, x12, x9
000025fc cmp      x23, x19
00002600 b.ls     #0x260c
00002604 mov      w21, #7
00002608 b        #0x250c
0000260c mov      x0, x23
00002610 bl       #0x3738
00002614 mov      x19, x0
00002618 cbz      x19, #0x2734
0000261c adrp     x26, #0x7000
00002620 mov      w25, #0x2c
00002624 mov      x24, x19
00002628 add      x26, x26, #0xe22
0000262c b        #0x2634
00002630 ldr      x22, [x22, #0x38]
00002634 add      x0, sp, #8
00002638 mov      w2, #0x20
0000263c mov      x1, x22
00002640 bl       #0x464c
00002644 ldr      w0, [x22, #0x24]
00002648 bl       #0x3c3c
0000264c str      w0, [sp, #0x2c]
00002650 ldr      w0, [x22, #0x20]
00002654 bl       #0x3c3c
00002658 str      w0, [sp, #0x28]
0000265c add      x1, sp, #8
00002660 mov      x0, x24
00002664 str      wzr, [sp, #0x30]
00002668 mov      x2, x25
0000266c bl       #0x464c
00002670 ldr      w2, [x22, #0x20]
00002674 add      x24, x24, #0x2c
00002678 cbz      w2, #0x2694
0000267c ldr      x1, [x22, #0x30]
00002680 mov      x0, x24
00002684 bl       #0x464c
00002688 ldr      w8, [x22, #0x20]
0000268c add      x24, x24, x8
00002690 b        #0x2698
00002694 mov      w8, wzr
00002698 add      w11, w8, #3
0000269c and      w12, w11, #0xfffffffc
000026a0 sub      w27, w12, w8
000026a4 cbz      w27, #0x26bc
000026a8 mov      x0, x24
000026ac mov      w1, wzr
000026b0 mov      x2, x27
000026b4 bl       #0x4c40
000026b8 add      x24, x24, x27
000026bc mov      w2, #0x20
000026c0 mov      x0, x22
000026c4 mov      x1, x26
000026c8 bl       #0x4610
000026cc cbnz     w0, #0x2630
000026d0 add      x10, x19, x23
000026d4 sub      x2, x10, x24
000026d8 mov      x0, x24
000026dc mov      w1, wzr
000026e0 bl       #0x4c40
000026e4 mov      w0, w21
000026e8 mov      x1, x19
000026ec mov      x2, xzr
000026f0 mov      x3, x23
000026f4 bl       #0x6240
000026f8 cmp      x0, x23
000026fc b.hs     #0x273c
00002700 bl       #0x3ebc
00002704 mov      x3, x0
00002708 adrp     x1, #0x7000
0000270c add      x1, x1, #0xc90
00002710 mov      w0, #-0xffffffff80000000
00002714 mov      x2, x3
00002718 bl       #0x3a50
0000271c adrp     x1, #0x7000
00002720 add      x1, x1, #0xeb1
00002724 mov      w0, #-0xffffffff80000000
00002728 bl       #0x3a50
0000272c mov      w23, #-1
00002730 b        #0x2810
00002734 mov      w21, #4
00002738 b        #0x250c
0000273c mov      x0, x23
00002740 bl       #0x3738
00002744 mov      x22, x0
00002748 cbz      x22, #0x2790
0000274c mov      w0, w21
00002750 mov      x1, x22
00002754 mov      x2, xzr
00002758 mov      x3, x23
0000275c bl       #0x61ec
00002760 cmp      x0, x23
00002764 b.hs     #0x27c4
00002768 bl       #0x3ebc
0000276c mov      x5, x0
00002770 adrp     x1, #0x7000
00002774 add      x1, x1, #0xc90
00002778 mov      w0, #-0xffffffff80000000
0000277c mov      x2, x5
00002780 bl       #0x3a50
00002784 adrp     x1, #0x7000
00002788 add      x1, x1, #0xe30
0000278c b        #0x27fc
00002790 bl       #0x3ebc
00002794 mov      x4, x0
00002798 adrp     x1, #0x7000
0000279c add      x1, x1, #0xc90
000027a0 mov      w0, #-0xffffffff80000000
000027a4 mov      x2, x4
000027a8 bl       #0x3a50
000027ac adrp     x1, #0x7000
000027b0 add      x1, x1, #0xdfe
000027b4 mov      w0, #-0xffffffff80000000
000027b8 bl       #0x3a50
000027bc mov      w23, #-5
000027c0 b        #0x2810
000027c4 mov      x0, x19
000027c8 mov      x1, x22
000027cc mov      x2, x23
000027d0 bl       #0x4390
000027d4 cbz      w0, #0x281c
000027d8 bl       #0x3ebc
000027dc mov      x6, x0
000027e0 adrp     x1, #0x7000
000027e4 add      x1, x1, #0xc90
000027e8 mov      w0, #-0xffffffff80000000
000027ec mov      x2, x6
000027f0 bl       #0x3a50
000027f4 adrp     x1, #0x7000
000027f8 add      x1, x1, #0xed2
000027fc mov      w0, #-0xffffffff80000000
00002800 bl       #0x3a50
00002804 mov      w23, #-1
00002808 mov      x0, x22
0000280c bl       #0x378c
00002810 mov      x0, x19
00002814 bl       #0x378c
00002818 b        #0x2544
0000281c ldr      x1, [x20, #0x10]
00002820 cbz      x1, #0x288c
00002824 mov      w0, #-1
00002828 bl       #0x60c8
0000282c mov      w21, w0
00002830 tbnz     w21, #0x1f, #0x288c
00002834 mov      w0, w21
00002838 bl       #0x61b8
0000283c cmp      x0, x23
00002840 b.lo     #0x288c
00002844 mov      w0, w21
00002848 mov      x1, x19
0000284c mov      x2, xzr
00002850 mov      x3, x23
00002854 bl       #0x6240
00002858 cmp      x0, x23
0000285c b.hs     #0x288c
00002860 bl       #0x3ebc
00002864 mov      x7, x0
00002868 adrp     x1, #0x7000
0000286c add      x1, x1, #0xc90
00002870 mov      w0, #-0xffffffff80000000
00002874 mov      x2, x7
00002878 bl       #0x3a50
0000287c adrp     x1, #0x7000
00002880 add      x1, x1, #0xef0
00002884 mov      w0, #-0xffffffff80000000
00002888 bl       #0x3a50
0000288c mov      w23, wzr
00002890 b        #0x2808
00002894 bl       #0x10d8
00002898 stp      x20, x19, [sp, #-0x20]!
0000289c stp      x29, x30, [sp, #0x10]
000028a0 add      x29, sp, #0x10
000028a4 mov      x19, x2
000028a8 mov      x20, x1
000028ac bl       #0x1f3c
000028b0 cmp      x0, #0
000028b4 csel     x1, x0, x20, ne
000028b8 mov      w2, #0x20
000028bc mov      x0, x19
000028c0 bl       #0x44d8
000028c4 strb     wzr, [x19, #0x1f]
000028c8 mov      w0, wzr
000028cc ldp      x29, x30, [sp, #0x10]
000028d0 ldp      x20, x19, [sp], #0x20
000028d4 ret      
000028d8 stp      x20, x19, [sp, #-0x20]!
000028dc stp      x29, x30, [sp, #0x10]
000028e0 add      x29, sp, #0x10
000028e4 mov      w20, w0
000028e8 bl       #0x1ab0
000028ec mov      x19, x0
000028f0 ldr      x8, [x19, #0x18]
000028f4 cbz      x8, #0x290c
000028f8 ldr      w9, [x8, #0x24]
000028fc mov      w0, wzr
00002900 orr      w9, w9, #1
00002904 str      w9, [x8, #0x24]
00002908 b        #0x291c
0000290c mov      w0, w20
00002910 bl       #0x1da8
00002914 cbz      w0, #0x2928
00002918 mov      w0, #-1
0000291c ldp      x29, x30, [sp, #0x10]
00002920 ldp      x20, x19, [sp], #0x20
00002924 ret      
00002928 ldr      x8, [x19, #0x18]
0000292c b        #0x28f8
00002930 stp      x20, x19, [sp, #-0x20]!
00002934 stp      x29, x30, [sp, #0x10]
00002938 add      x29, sp, #0x10
0000293c mov      w20, w0
00002940 bl       #0x1ab0
00002944 mov      x19, x0
00002948 ldr      x8, [x19, #0x18]
0000294c cbz      x8, #0x2964
00002950 ldr      w9, [x8, #0x24]
00002954 mov      w0, wzr
00002958 and      w9, w9, #0xfffffffe
0000295c str      w9, [x8, #0x24]
00002960 b        #0x2974
00002964 mov      w0, w20
00002968 bl       #0x1da8
0000296c cbz      w0, #0x2980
00002970 mov      w0, #-1
00002974 ldp      x29, x30, [sp, #0x10]
00002978 ldp      x20, x19, [sp], #0x20
0000297c ret      
00002980 ldr      x8, [x19, #0x18]
00002984 b        #0x2950
00002988 stp      x20, x19, [sp, #-0x20]!
0000298c stp      x29, x30, [sp, #0x10]
00002990 add      x29, sp, #0x10
00002994 mov      w20, w0
00002998 bl       #0x1ab0
0000299c mov      x19, x0
000029a0 ldr      x8, [x19, #0x18]
000029a4 cbz      x8, #0x29b4
000029a8 ldrb     w8, [x8, #0x24]
000029ac and      w0, w8, #1
000029b0 b        #0x29c4
000029b4 mov      w0, w20
000029b8 bl       #0x1da8
000029bc cbz      w0, #0x29d0
000029c0 mov      w0, #1
000029c4 ldp      x29, x30, [sp, #0x10]
000029c8 ldp      x20, x19, [sp], #0x20
000029cc ret      
000029d0 ldr      x8, [x19, #0x18]
000029d4 b        #0x29a8
000029d8 stp      x29, x30, [sp, #-0x10]!
000029dc mov      x29, sp
000029e0 bl       #0x1f3c
000029e4 cbz      x0, #0x29fc
000029e8 ldr      w9, [x0, #0x24]
000029ec mov      w8, wzr
000029f0 orr      w9, w9, #1
000029f4 str      w9, [x0, #0x24]
000029f8 b        #0x2a00
000029fc mov      w8, #-2
00002a00 mov      w0, w8
00002a04 ldp      x29, x30, [sp], #0x10
00002a08 ret      
00002a0c stp      x29, x30, [sp, #-0x10]!
00002a10 mov      x29, sp
00002a14 bl       #0x1f3c
00002a18 cbz      x0, #0x2a30
00002a1c ldr      w9, [x0, #0x24]
00002a20 mov      w8, wzr
00002a24 and      w9, w9, #0xfffffffe
00002a28 str      w9, [x0, #0x24]
00002a2c b        #0x2a34
00002a30 mov      w8, #-2
00002a34 mov      w0, w8
00002a38 ldp      x29, x30, [sp], #0x10
00002a3c ret      
00002a40 stp      x29, x30, [sp, #-0x10]!
00002a44 mov      x29, sp
00002a48 bl       #0x1f3c
00002a4c cbz      x0, #0x2a58
00002a50 ldrb     w8, [x0, #0x24]
00002a54 and      w0, w8, #1
00002a58 ldp      x29, x30, [sp], #0x10
00002a5c ret      
00002a60 stp      x29, x30, [sp, #-0x10]!
00002a64 mov      x29, sp
00002a68 bl       #0x1f3c
00002a6c cmp      x0, #0
00002a70 cset     w0, ne
00002a74 ldp      x29, x30, [sp], #0x10
00002a78 ret      
00002a7c str      x21, [sp, #-0x30]!
00002a80 stp      x20, x19, [sp, #0x10]
00002a84 stp      x29, x30, [sp, #0x20]
00002a88 add      x29, sp, #0x20
00002a8c mov      x19, x1
00002a90 bl       #0x1ab0
00002a94 add      x20, x0, #0x38
00002a98 add      x8, x0, #0x40
00002a9c ldr      x21, [x8]
00002aa0 cmp      x21, x20
00002aa4 b.eq     #0x2ac4
00002aa8 add      x0, x21, #0x10
00002aac mov      x1, x19
00002ab0 bl       #0x1b6c
00002ab4 add      x8, x21, #8
00002ab8 tbz      w0, #0, #0x2a9c
00002abc mov      w0, #1
00002ac0 b        #0x2ac8
00002ac4 mov      w0, wzr
00002ac8 ldp      x29, x30, [sp, #0x20]
00002acc ldp      x20, x19, [sp, #0x10]
00002ad0 ldr      x21, [sp], #0x30
00002ad4 ret      
00002ad8 sub      sp, sp, #0x40
00002adc stp      x29, x30, [sp, #0x30]
00002ae0 add      x29, sp, #0x30
00002ae4 adrp     x8, #0xa000
00002ae8 add      x2, sp, #8
00002aec ldr      x8, [x8]
00002af0 stur     x8, [x29, #-8]
00002af4 bl       #0x2898
00002af8 mov      w1, #0x3a
00002afc add      x0, sp, #8
00002b00 bl       #0x42c4
00002b04 cmp      x0, #0
00002b08 csinc    x0, xzr, x0, eq
00002b0c bl       #0x2b34
00002b10 adrp     x9, #0xa000
00002b14 ldur     x8, [x29, #-8]
00002b18 ldr      x9, [x9]
00002b1c sub      x9, x9, x8
00002b20 cbnz     x9, #0x2b30
00002b24 ldp      x29, x30, [sp, #0x30]
00002b28 add      sp, sp, #0x40
00002b2c ret      
00002b30 bl       #0x10d8
00002b34 str      x19, [sp, #-0x20]!
00002b38 stp      x29, x30, [sp, #0x10]
00002b3c add      x29, sp, #0x10
00002b40 mov      x19, x0
00002b44 cbz      x19, #0x2c10
00002b48 adrp     x1, #0x7000
00002b4c add      x1, x1, #0xf0a
00002b50 mov      x0, x19
00002b54 bl       #0x45e8
00002b58 cbz      w0, #0x2be4
00002b5c adrp     x1, #0x7000
00002b60 add      x1, x1, #0xf0f
00002b64 mov      x0, x19
00002b68 bl       #0x45e8
00002b6c cbz      w0, #0x2bec
00002b70 adrp     x1, #0x7000
00002b74 add      x1, x1, #0xf13
00002b78 mov      x0, x19
00002b7c bl       #0x45e8
00002b80 cbz      w0, #0x2bf4
00002b84 adrp     x1, #0x7000
00002b88 add      x1, x1, #0xf18
00002b8c mov      x0, x19
00002b90 bl       #0x45e8
00002b94 cbz      w0, #0x2bfc
00002b98 adrp     x1, #0x7000
00002b9c add      x1, x1, #0xf1d
00002ba0 mov      x0, x19
00002ba4 bl       #0x45e8
00002ba8 cbz      w0, #0x2c04
00002bac adrp     x1, #0x7000
00002bb0 add      x1, x1, #0xf23
00002bb4 mov      x0, x19
00002bb8 bl       #0x45e8
00002bbc cbz      w0, #0x2c0c
00002bc0 adrp     x1, #0x7000
00002bc4 add      x1, x1, #0xf29
00002bc8 mov      x0, x19
00002bcc bl       #0x45e8
00002bd0 mov      w8, #7
00002bd4 cmp      w0, #0
00002bd8 mov      w9, #0xff
00002bdc csel     w0, w9, w8, ne
00002be0 b        #0x2c10
00002be4 mov      w0, #1
00002be8 b        #0x2c10
00002bec mov      w0, #2
00002bf0 b        #0x2c10
00002bf4 mov      w0, #3
00002bf8 b        #0x2c10
00002bfc mov      w0, #4
00002c00 b        #0x2c10
00002c04 mov      w0, #5
00002c08 b        #0x2c10
00002c0c mov      w0, #6
00002c10 ldp      x29, x30, [sp, #0x10]
00002c14 ldr      x19, [sp], #0x20
00002c18 ret      
00002c1c str      x25, [sp, #-0x50]!
00002c20 stp      x24, x23, [sp, #0x10]
00002c24 stp      x22, x21, [sp, #0x20]
00002c28 stp      x20, x19, [sp, #0x30]
00002c2c stp      x29, x30, [sp, #0x40]
00002c30 add      x29, sp, #0x40
00002c34 mov      x19, x5
00002c38 mov      x20, x4
00002c3c mov      x21, x3
00002c40 mov      x22, x2
00002c44 mov      x25, x1
00002c48 bl       #0x1ab0
00002c4c mov      x23, x0
00002c50 mov      w0, #0x248
00002c54 bl       #0x377c
00002c58 mov      x24, x0
00002c5c cbz      x24, #0x2ca0
00002c60 add      x0, x24, #0x10
00002c64 mov      w2, #0x20
00002c68 mov      x1, x25
00002c6c bl       #0x44d8
00002c70 add      x0, x24, #0x30
00002c74 mov      w2, #0x200
00002c78 mov      x1, x22
00002c7c bl       #0x4454
00002c80 add      x0, x23, #0x38
00002c84 str      x21, [x24, #0x230]
00002c88 mov      x1, x24
00002c8c str      x20, [x24, #0x238]
00002c90 str      x19, [x24, #0x240]
00002c94 bl       #0x2404
00002c98 mov      w0, wzr
00002c9c b        #0x2ccc
00002ca0 bl       #0x3ebc
00002ca4 adrp     x1, #0x7000
00002ca8 mov      x2, x0
00002cac add      x1, x1, #0xc90
00002cb0 mov      w0, #-0xffffffff80000000
00002cb4 bl       #0x3a50
00002cb8 adrp     x1, #0x7000
00002cbc add      x1, x1, #0xcec
00002cc0 mov      w0, #-0xffffffff80000000
00002cc4 bl       #0x3a50
00002cc8 mov      w0, #-5
00002ccc ldp      x29, x30, [sp, #0x40]
00002cd0 ldp      x20, x19, [sp, #0x30]
00002cd4 ldp      x22, x21, [sp, #0x20]
00002cd8 ldp      x24, x23, [sp, #0x10]
00002cdc ldr      x25, [sp], #0x50
00002ce0 ret      
00002ce4 stp      x22, x21, [sp, #-0x30]!
00002ce8 stp      x20, x19, [sp, #0x10]
00002cec stp      x29, x30, [sp, #0x20]
00002cf0 add      x29, sp, #0x20
00002cf4 mov      x20, x1
00002cf8 bl       #0x1ab0
00002cfc add      x21, x0, #0x38
00002d00 add      x8, x0, #0x40
00002d04 mov      w19, #-1
00002d08 b        #0x2d20
00002d0c add      x0, x22, #0x10
00002d10 mov      x1, x20
00002d14 bl       #0x1b6c
00002d18 tbnz     w0, #0, #0x2d30
00002d1c add      x8, x22, #8
00002d20 ldr      x22, [x8]
00002d24 cmp      x22, x21
00002d28 b.ne     #0x2d0c
00002d2c b        #0x2d48
00002d30 ldp      x8, x9, [x22]
00002d34 mov      w19, wzr
00002d38 str      x8, [x9]
00002d3c ldp      x8, x9, [x22]
00002d40 str      x9, [x8, #8]
00002d44 stp      xzr, xzr, [x22]
00002d48 mov      w0, w19
00002d4c ldp      x29, x30, [sp, #0x20]
00002d50 ldp      x20, x19, [sp, #0x10]
00002d54 ldp      x22, x21, [sp], #0x30
00002d58 ret      
00002d5c sub      sp, sp, #0x50
00002d60 stp      x24, x23, [sp, #0x10]
00002d64 stp      x22, x21, [sp, #0x20]
00002d68 stp      x20, x19, [sp, #0x30]
00002d6c stp      x29, x30, [sp, #0x40]
00002d70 add      x29, sp, #0x40
00002d74 mov      x19, x3
00002d78 mov      x20, x2
00002d7c mov      x21, x1
00002d80 mov      w22, w0
00002d84 bl       #0x1ab0
00002d88 mov      x23, x0
00002d8c mov      w0, w22
00002d90 mov      x1, x21
00002d94 bl       #0x2a60
00002d98 tbz      w0, #0, #0x2e08
00002d9c add      x24, x23, #0x38
00002da0 add      x8, x23, #0x40
00002da4 b        #0x2dc4
00002da8 add      x0, x23, #0x10
00002dac mov      x1, x21
00002db0 bl       #0x1b6c
00002db4 tbz      w0, #0, #0x2dc0
00002db8 ldr      x4, [x23, #0x238]
00002dbc cbnz     x4, #0x2e10
00002dc0 add      x8, x23, #8
00002dc4 ldr      x23, [x8]
00002dc8 cmp      x23, x24
00002dcc b.ne     #0x2da8
00002dd0 mov      w0, w22
00002dd4 mov      x1, x21
00002dd8 bl       #0x2ad8
00002ddc cmp      w0, #7
00002de0 b.hi     #0x3030
00002de4 adrp     x9, #0x7000
00002de8 mov      w8, w0
00002dec add      x9, x9, #0xc50
00002df0 ldr      x9, [x9, x8, lsl #3]
00002df4 br       x9
00002df8 cmp      w22, #1
00002dfc b.ne     #0x2ffc
00002e00 mov      w0, #1
00002e04 b        #0x2e98
00002e08 mov      w0, #2
00002e0c b        #0x3034
00002e10 ldr      x3, [x23, #0x240]
00002e14 mov      x0, x21
00002e18 mov      x1, x20
00002e1c mov      x2, x19
00002e20 ldp      x29, x30, [sp, #0x40]
00002e24 ldp      x20, x19, [sp, #0x30]
00002e28 ldp      x22, x21, [sp, #0x20]
00002e2c ldp      x24, x23, [sp, #0x10]
00002e30 add      sp, sp, #0x50
00002e34 br       x4
00002e38 mov      w0, w22
00002e3c strb     wzr, [sp, #8]
00002e40 mov      x1, x21
00002e44 bl       #0x20b0
00002e48 cmp      x0, #1
00002e4c b.ne     #0x3030
00002e50 add      x2, sp, #8
00002e54 mov      w3, #1
00002e58 mov      w0, w22
00002e5c mov      x1, x21
00002e60 bl       #0x2044
00002e64 cbz      x0, #0x3030
00002e68 ldrb     w8, [sp, #8]
00002e6c adrp     x10, #0x7000
00002e70 adrp     x11, #0x7000
00002e74 add      x10, x10, #0xf35
00002e78 add      x11, x11, #0xf30
00002e7c cmp      w8, #0
00002e80 csel     x1, x11, x10, ne
00002e84 mov      x0, x20
00002e88 mov      x2, x19
00002e8c bl       #0x44d8
00002e90 b        #0x3028
00002e94 mov      w0, w22
00002e98 mov      x1, x21
00002e9c mov      x2, x20
00002ea0 mov      x3, x19
00002ea4 bl       #0x3298
00002ea8 cbnz     x0, #0x3028
00002eac b        #0x3030
00002eb0 cmp      x19, #2
00002eb4 strb     wzr, [sp, #8]
00002eb8 b.lo     #0x3030
00002ebc mov      w0, w22
00002ec0 mov      x1, x21
00002ec4 bl       #0x20b0
00002ec8 cmp      x0, #1
00002ecc b.ne     #0x3030
00002ed0 add      x2, sp, #8
00002ed4 mov      w3, #1
00002ed8 mov      w0, w22
00002edc mov      x1, x21
00002ee0 bl       #0x2044
00002ee4 cbz      x0, #0x3030
00002ee8 ldrb     w8, [sp, #8]
00002eec mov      w0, wzr
00002ef0 strb     wzr, [x20, #1]
00002ef4 strb     w8, [x20]
00002ef8 b        #0x3034
00002efc mov      w0, w22
00002f00 str      xzr, [sp, #8]
00002f04 mov      x1, x21
00002f08 bl       #0x20b0
00002f0c cmp      x0, #8
00002f10 b.ne     #0x3030
00002f14 add      x2, sp, #8
00002f18 mov      w3, #8
00002f1c mov      w0, w22
00002f20 mov      x1, x21
00002f24 bl       #0x2044
00002f28 cbz      x0, #0x3030
00002f2c ldr      x3, [sp, #8]
00002f30 adrp     x2, #0x7000
00002f34 add      x2, x2, #0xf3b
00002f38 b        #0x3014
00002f3c mov      w0, w22
00002f40 str      xzr, [sp, #8]
00002f44 mov      x1, x21
00002f48 bl       #0x20b0
00002f4c cmp      x0, #8
00002f50 b.ne     #0x3030
00002f54 add      x2, sp, #8
00002f58 mov      w3, #8
00002f5c mov      w0, w22
00002f60 mov      x1, x21
00002f64 bl       #0x2044
00002f68 cbz      x0, #0x3030
00002f6c ldr      x3, [sp, #8]
00002f70 adrp     x2, #0x7000
00002f74 add      x2, x2, #0xf44
00002f78 b        #0x3014
00002f7c mov      w0, w22
00002f80 str      xzr, [sp, #8]
00002f84 mov      x1, x21
00002f88 bl       #0x20b0
00002f8c cmp      x0, #8
00002f90 b.ne     #0x3030
00002f94 add      x2, sp, #8
00002f98 mov      w3, #8
00002f9c mov      w0, w22
00002fa0 mov      x1, x21
00002fa4 bl       #0x2044
00002fa8 cbz      x0, #0x3030
00002fac ldr      x3, [sp, #8]
00002fb0 adrp     x2, #0x7000
00002fb4 add      x2, x2, #0xf3f
00002fb8 b        #0x3014
00002fbc mov      w0, w22
00002fc0 str      xzr, [sp, #8]
00002fc4 mov      x1, x21
00002fc8 bl       #0x20b0
00002fcc cmp      x0, #8
00002fd0 b.ne     #0x3030
00002fd4 add      x2, sp, #8
00002fd8 mov      w3, #8
00002fdc mov      w0, w22
00002fe0 mov      x1, x21
00002fe4 bl       #0x2044
00002fe8 cbz      x0, #0x3030
00002fec ldr      x3, [sp, #8]
00002ff0 adrp     x2, #0x7000
00002ff4 add      x2, x2, #0xf4a
00002ff8 b        #0x3014
00002ffc mov      w0, w22
00003000 mov      x1, x21
00003004 bl       #0x20b0
00003008 adrp     x2, #0x7000
0000300c mov      x3, x0
00003010 add      x2, x2, #0xf51
00003014 mov      x0, x20
00003018 mov      x1, x19
0000301c bl       #0x42f4
00003020 cmp      w0, w19
00003024 b.ge     #0x3030
00003028 mov      w0, wzr
0000302c b        #0x3034
00003030 mov      w0, #1
00003034 ldp      x29, x30, [sp, #0x40]
00003038 ldp      x20, x19, [sp, #0x30]
0000303c ldp      x22, x21, [sp, #0x20]
00003040 ldp      x24, x23, [sp, #0x10]
00003044 add      sp, sp, #0x50
00003048 ret      
0000304c str      x21, [sp, #-0x30]!
00003050 stp      x20, x19, [sp, #0x10]
00003054 stp      x29, x30, [sp, #0x20]
00003058 add      x29, sp, #0x20
0000305c mov      x19, x1
00003060 bl       #0x1ab0
00003064 add      x20, x0, #0x38
00003068 add      x8, x0, #0x40
0000306c b        #0x3084
00003070 add      x0, x21, #0x10
00003074 mov      x1, x19
00003078 bl       #0x1b6c
0000307c tbnz     w0, #0, #0x3098
00003080 add      x8, x21, #8
00003084 ldr      x21, [x8]
00003088 cmp      x21, x20
0000308c b.ne     #0x3070
00003090 mov      x0, xzr
00003094 b        #0x309c
00003098 add      x0, x21, #0x30
0000309c ldp      x29, x30, [sp, #0x20]
000030a0 ldp      x20, x19, [sp, #0x10]
000030a4 ldr      x21, [sp], #0x30
000030a8 ret      
000030ac sub      sp, sp, #0x50
000030b0 stp      x20, x19, [sp, #0x30]
000030b4 stp      x29, x30, [sp, #0x40]
000030b8 add      x29, sp, #0x40
000030bc adrp     x8, #0xa000
000030c0 mov      x19, x2
000030c4 mov      w20, w0
000030c8 ldr      x8, [x8]
000030cc add      x0, sp, #8
000030d0 mov      w2, #0x1f
000030d4 stur     x8, [x29, #-0x18]
000030d8 strb     wzr, [sp, #0x27]
000030dc bl       #0x44b4
000030e0 mov      w1, #0x3a
000030e4 add      x0, sp, #8
000030e8 bl       #0x42c4
000030ec cmp      x0, #0
000030f0 csinc    x0, xzr, x0, eq
000030f4 bl       #0x2b34
000030f8 cmp      w20, #1
000030fc b.eq     #0x3148
00003100 cbnz     w0, #0x3148
00003104 adrp     x1, #0x7000
00003108 add      x1, x1, #0xd03
0000310c add      x0, sp, #8
00003110 mov      w2, #0x1f
00003114 bl       #0x4454
00003118 mov      w0, #2
0000311c bl       #0x3214
00003120 mov      x1, x0
00003124 add      x0, sp, #8
00003128 mov      w2, #0x1f
0000312c bl       #0x4454
00003130 mov      w1, #0x3a
00003134 add      x0, sp, #8
00003138 bl       #0x42c4
0000313c cmp      x0, #0
00003140 csinc    x0, xzr, x0, eq
00003144 bl       #0x2b34
00003148 cmp      w0, #0xff
0000314c b.ne     #0x3190
00003150 bl       #0x3ebc
00003154 adrp     x1, #0x7000
00003158 mov      x2, x0
0000315c add      x1, x1, #0xc90
00003160 mov      w0, #-0xffffffff80000000
00003164 bl       #0x3a50
00003168 mov      w0, #0xff
0000316c bl       #0x3214
00003170 mov      x3, x0
00003174 adrp     x1, #0x7000
00003178 add      x1, x1, #0xd05
0000317c mov      w0, #-0xffffffff80000000
00003180 mov      x2, x3
00003184 bl       #0x3a50
00003188 mov      x0, xzr
0000318c b        #0x31ec
00003190 mov      w1, #0x400
00003194 mov      x0, x19
00003198 bl       #0x441c
0000319c cmp      x0, #0x400
000031a0 b.ne     #0x31d8
000031a4 bl       #0x3ebc
000031a8 mov      x4, x0
000031ac adrp     x1, #0x7000
000031b0 add      x1, x1, #0xc90
000031b4 mov      w0, #-0xffffffff80000000
000031b8 mov      x2, x4
000031bc bl       #0x3a50
000031c0 adrp     x1, #0x7000
000031c4 add      x1, x1, #0xd23
000031c8 mov      w0, #-0xffffffff80000000
000031cc bl       #0x3a50
000031d0 mov      x0, xzr
000031d4 b        #0x31ec
000031d8 add      x3, x0, #1
000031dc add      x1, sp, #8
000031e0 mov      w0, w20
000031e4 mov      x2, x19
000031e8 bl       #0x1c58
000031ec adrp     x9, #0xa000
000031f0 ldur     x8, [x29, #-0x18]
000031f4 ldr      x9, [x9]
000031f8 sub      x9, x9, x8
000031fc cbnz     x9, #0x3210
00003200 ldp      x29, x30, [sp, #0x40]
00003204 ldp      x20, x19, [sp, #0x30]
00003208 add      sp, sp, #0x50
0000320c ret      
00003210 bl       #0x10d8
00003214 adrp     x8, #0x7000
00003218 adrp     x9, #0x7000
0000321c add      x8, x8, #0xf66
00003220 add      x9, x9, #0xf29
00003224 cmp      w0, #7
00003228 adrp     x11, #0x7000
0000322c csel     x10, x9, x8, eq
00003230 add      x11, x11, #0xf23
00003234 cmp      w0, #6
00003238 adrp     x13, #0x7000
0000323c csel     x12, x11, x10, eq
00003240 add      x13, x13, #0xf1d
00003244 cmp      w0, #5
00003248 adrp     x15, #0x7000
0000324c csel     x14, x13, x12, eq
00003250 add      x15, x15, #0xf18
00003254 cmp      w0, #4
00003258 adrp     x17, #0x7000
0000325c csel     x16, x15, x14, eq
00003260 add      x17, x17, #0xf13
00003264 cmp      w0, #3
00003268 adrp     x2, #0x7000
0000326c csel     x1, x17, x16, eq
00003270 add      x2, x2, #0xf0f
00003274 cmp      w0, #2
00003278 adrp     x4, #0x7000
0000327c csel     x3, x2, x1, eq
00003280 add      x4, x4, #0xf0a
00003284 cmp      w0, #1
00003288 csel     x5, x4, x3, eq
0000328c cmp      w0, #0
00003290 csel     x0, xzr, x5, eq
00003294 ret      
00003298 sub      sp, sp, #0x70
0000329c stp      x24, x23, [sp, #0x30]
000032a0 stp      x22, x21, [sp, #0x40]
000032a4 stp      x20, x19, [sp, #0x50]
000032a8 stp      x29, x30, [sp, #0x60]
000032ac add      x29, sp, #0x60
000032b0 adrp     x8, #0xa000
000032b4 mov      x23, x3
000032b8 mov      x19, x2
000032bc ldr      x8, [x8]
000032c0 mov      x20, x1
000032c4 mov      w21, w0
000032c8 str      x8, [sp, #0x28]
000032cc bl       #0x2ad8
000032d0 mov      w24, w0
000032d4 mov      w0, w21
000032d8 mov      x1, x20
000032dc bl       #0x20b0
000032e0 mov      x22, x0
000032e4 orr      w8, w24, #2
000032e8 cmp      w8, #2
000032ec b.ne     #0x3414
000032f0 sub      x24, x22, #1
000032f4 cmp      x24, x23
000032f8 b.hs     #0x33dc
000032fc mov      w0, w21
00003300 mov      x1, x20
00003304 mov      x2, x19
00003308 mov      x3, x22
0000330c bl       #0x2044
00003310 cbz      x0, #0x33dc
00003314 ldrb     w8, [x19, x24]
00003318 cbz      w8, #0x3328
0000331c cmp      x22, x23
00003320 b.eq     #0x3414
00003324 strb     wzr, [x19, x22]
00003328 add      x0, sp, #8
0000332c strb     wzr, [sp, #0x27]
00003330 mov      w2, #0x1f
00003334 mov      x1, x20
00003338 bl       #0x44b4
0000333c mov      w1, #0x3a
00003340 add      x0, sp, #8
00003344 bl       #0x42c4
00003348 cmp      x0, #0
0000334c csinc    x0, xzr, x0, eq
00003350 bl       #0x2b34
00003354 cbnz     w0, #0x339c
00003358 adrp     x1, #0x7000
0000335c add      x1, x1, #0xd03
00003360 add      x0, sp, #8
00003364 mov      w2, #0x1f
00003368 bl       #0x4454
0000336c mov      w0, #2
00003370 bl       #0x3214
00003374 mov      x1, x0
00003378 add      x0, sp, #8
0000337c mov      w2, #0x1f
00003380 bl       #0x4454
00003384 mov      w1, #0x3a
00003388 add      x0, sp, #8
0000338c bl       #0x42c4
00003390 cmp      x0, #0
00003394 csinc    x0, xzr, x0, eq
00003398 bl       #0x2b34
0000339c cmp      w0, #0xff
000033a0 b.ne     #0x3448
000033a4 bl       #0x3ebc
000033a8 adrp     x1, #0x7000
000033ac mov      x2, x0
000033b0 add      x1, x1, #0xc90
000033b4 mov      w0, #-0xffffffff80000000
000033b8 bl       #0x3a50
000033bc mov      w0, #0xff
000033c0 bl       #0x3214
000033c4 mov      x3, x0
000033c8 adrp     x1, #0x7000
000033cc add      x1, x1, #0xd05
000033d0 mov      w0, #-0xffffffff80000000
000033d4 mov      x2, x3
000033d8 b        #0x3410
000033dc cmp      x22, x23
000033e0 b.ls     #0x3414
000033e4 bl       #0x3ebc
000033e8 mov      x5, x0
000033ec adrp     x1, #0x7000
000033f0 add      x1, x1, #0xc90
000033f4 mov      w0, #-0xffffffff80000000
000033f8 mov      x2, x5
000033fc bl       #0x3a50
00003400 adrp     x1, #0x7000
00003404 add      x1, x1, #0xd5f
00003408 mov      w0, #-0xffffffff80000000
0000340c mov      x2, x20
00003410 bl       #0x3a50
00003414 mov      x19, xzr
00003418 adrp     x9, #0xa000
0000341c ldr      x8, [sp, #0x28]
00003420 ldr      x9, [x9]
00003424 sub      x9, x9, x8
00003428 cbnz     x9, #0x3498
0000342c mov      x0, x19
00003430 ldp      x29, x30, [sp, #0x60]
00003434 ldp      x20, x19, [sp, #0x50]
00003438 ldp      x22, x21, [sp, #0x40]
0000343c ldp      x24, x23, [sp, #0x30]
00003440 add      sp, sp, #0x70
00003444 ret      
00003448 add      x1, sp, #8
0000344c mov      w0, w21
00003450 mov      x2, x19
00003454 mov      x3, x22
00003458 bl       #0x1bb0
0000345c tbnz     w0, #0, #0x3418
00003460 bl       #0x3ebc
00003464 mov      x4, x0
00003468 adrp     x1, #0x7000
0000346c add      x1, x1, #0xc90
00003470 mov      w0, #-0xffffffff80000000
00003474 mov      x2, x4
00003478 bl       #0x3a50
0000347c adrp     x1, #0x7000
00003480 add      x1, x1, #0xd3b
00003484 mov      w0, #-0xffffffff80000000
00003488 mov      x2, x20
0000348c mov      x3, x19
00003490 bl       #0x3a50
00003494 b        #0x3414
00003498 bl       #0x10d8
0000349c stp      x29, x30, [sp, #-0x10]!
000034a0 mov      x29, sp
000034a4 bl       #0x2988
000034a8 and      w0, w0, #1
000034ac ldp      x29, x30, [sp], #0x10
000034b0 ret      
000034b4 stp      x28, x27, [sp, #-0x60]!
000034b8 stp      x26, x25, [sp, #0x10]
000034bc stp      x24, x23, [sp, #0x20]
000034c0 stp      x22, x21, [sp, #0x30]
000034c4 stp      x20, x19, [sp, #0x40]
000034c8 stp      x29, x30, [sp, #0x50]
000034cc add      x29, sp, #0x50
000034d0 mov      w22, #-1
000034d4 mov      x21, x0
000034d8 mov      w0, w22
000034dc mov      x20, x1
000034e0 bl       #0x60c8
000034e4 mov      w24, w0
000034e8 tbnz     w24, #0x1f, #0x36c4
000034ec mov      w0, w24
000034f0 bl       #0x61b8
000034f4 cbz      x0, #0x3560
000034f8 cmp      x0, #0x100, lsl #12
000034fc mov      w8, #0x100000
00003500 csel     x23, x0, x8, lo
00003504 mov      x0, x23
00003508 bl       #0x3738
0000350c mov      x19, x0
00003510 cbz      x19, #0x3568
00003514 mov      w0, w24
00003518 mov      x1, x19
0000351c mov      x2, xzr
00003520 mov      x3, x23
00003524 bl       #0x61ec
00003528 cmp      x0, x23
0000352c b.hs     #0x3570
00003530 bl       #0x3ebc
00003534 adrp     x1, #0x7000
00003538 mov      x2, x0
0000353c add      x1, x1, #0xc90
00003540 mov      w0, #-0xffffffff80000000
00003544 bl       #0x3a50
00003548 adrp     x1, #0x7000
0000354c add      x1, x1, #0xe30
00003550 mov      w0, #-0xffffffff80000000
00003554 bl       #0x3a50
00003558 mov      x0, x19
0000355c bl       #0x378c
00003560 mov      w22, #-1
00003564 b        #0x36c4
00003568 mov      w22, #-5
0000356c b        #0x36c4
00003570 cmp      x23, #0x58
00003574 b.hs     #0x3580
00003578 mov      w22, #3
0000357c b        #0x3684
00003580 mov      w9, #0x2c
00003584 mov      x24, xzr
00003588 mov      x26, xzr
0000358c sub      x25, x9, x19
00003590 mov      w22, #5
00003594 mov      x27, x19
00003598 cbnz     x26, #0x35ac
0000359c mov      w0, #0x40
000035a0 bl       #0x377c
000035a4 mov      x24, x0
000035a8 cbz      x24, #0x36e4
000035ac mov      w2, #0x20
000035b0 mov      x0, x24
000035b4 mov      x1, x27
000035b8 bl       #0x44d8
000035bc ldr      w0, [x27, #0x24]
000035c0 bl       #0x3c3c
000035c4 str      w0, [x24, #0x24]
000035c8 ldr      w0, [x27, #0x20]
000035cc bl       #0x3c3c
000035d0 str      w0, [x24, #0x20]
000035d4 cbnz     x26, #0x35f8
000035d8 adrp     x1, #0x7000
000035dc mov      x0, x24
000035e0 add      x1, x1, #0xe14
000035e4 bl       #0x45e8
000035e8 cbnz     w0, #0x367c
000035ec ldr      w8, [x24, #0x20]
000035f0 mov      x26, x24
000035f4 cbnz     w8, #0x367c
000035f8 adrp     x1, #0x7000
000035fc mov      x0, x24
00003600 add      x1, x1, #0xe22
00003604 bl       #0x45e8
00003608 cbz      w0, #0x3664
0000360c ldr      w0, [x24, #0x20]
00003610 add      x28, x27, #0x2c
00003614 add      w8, w0, #3
00003618 and      w8, w8, #0xfffffffc
0000361c add      x27, x28, x8
00003620 add      x10, x25, x27
00003624 cmp      x10, x23
00003628 b.hi     #0x3674
0000362c cbz      w0, #0x3648
00003630 bl       #0x377c
00003634 str      x0, [x24, #0x30]
00003638 cbz      x0, #0x365c
0000363c ldr      w2, [x24, #0x20]
00003640 mov      x1, x28
00003644 bl       #0x464c
00003648 mov      w0, #0x40
0000364c bl       #0x377c
00003650 str      x0, [x24, #0x38]
00003654 mov      x24, x0
00003658 cbnz     x0, #0x3598
0000365c mov      w22, #4
00003660 b        #0x3678
00003664 ldr      w9, [x24, #0x20]
00003668 cbz      w9, #0x36ec
0000366c mov      w22, #6
00003670 b        #0x3678
00003674 mov      w22, #7
00003678 mov      x24, x26
0000367c mov      x0, x24
00003680 bl       #0x2450
00003684 str      xzr, [x21, #0x18]
00003688 bl       #0x3ebc
0000368c mov      x3, x0
00003690 adrp     x1, #0x7000
00003694 add      x1, x1, #0xc90
00003698 mov      w0, #0x40
0000369c mov      x2, x3
000036a0 bl       #0x3a50
000036a4 adrp     x1, #0x7000
000036a8 add      x1, x1, #0xe50
000036ac mov      w0, #0x40
000036b0 mov      x2, x20
000036b4 mov      w3, w22
000036b8 bl       #0x3a50
000036bc mov      x0, x19
000036c0 bl       #0x378c
000036c4 mov      w0, w22
000036c8 ldp      x29, x30, [sp, #0x50]
000036cc ldp      x20, x19, [sp, #0x40]
000036d0 ldp      x22, x21, [sp, #0x30]
000036d4 ldp      x24, x23, [sp, #0x20]
000036d8 ldp      x26, x25, [sp, #0x10]
000036dc ldp      x28, x27, [sp], #0x60
000036e0 ret      
000036e4 mov      w22, #4
000036e8 b        #0x3684
000036ec mov      w22, wzr
000036f0 str      x26, [x21, #0x18]
000036f4 b        #0x36bc
000036f8 sub      sp, sp, #0x20
000036fc stp      x29, x30, [sp, #0x10]
00003700 add      x29, sp, #0x10
00003704 adrp     x8, #0xa000
00003708 add      x2, sp, #8
0000370c ldr      x9, [x8, #0x2b8]
00003710 ldr      x8, [x9, #0x40]
00003714 blr      x8
00003718 tbnz     x0, #0x3f, #0x3724
0000371c ldr      x0, [sp, #8]
00003720 b        #0x372c
00003724 mov      x0, xzr
00003728 str      xzr, [sp, #8]
0000372c ldp      x29, x30, [sp, #0x10]
00003730 add      sp, sp, #0x20
00003734 ret      
00003738 mov      x8, x0
0000373c mov      w0, #4
00003740 mov      x1, x8
00003744 b        #0x36f8
00003748 str      x19, [sp, #-0x20]!
0000374c stp      x29, x30, [sp, #0x10]
00003750 add      x29, sp, #0x10
00003754 mov      x19, x1
00003758 bl       #0x36f8
0000375c cbz      x0, #0x3770
00003760 ldp      x29, x30, [sp, #0x10]
00003764 mov      x1, x19
00003768 ldr      x19, [sp], #0x20
0000376c b        #0x37e4
00003770 ldp      x29, x30, [sp, #0x10]
00003774 ldr      x19, [sp], #0x20
00003778 ret      
0000377c mov      x8, x0
00003780 mov      w0, #4
00003784 mov      x1, x8
00003788 b        #0x3748
0000378c stp      x29, x30, [sp, #-0x10]!
00003790 mov      x29, sp
00003794 adrp     x8, #0xa000
00003798 ldr      x9, [x8, #0x2b8]
0000379c ldr      x9, [x9, #0x48]
000037a0 blr      x9
000037a4 mov      x8, x0
000037a8 tbnz     x8, #0x3f, #0x37b4
000037ac ldp      x29, x30, [sp], #0x10
000037b0 ret      
000037b4 adrp     x1, #0x7000
000037b8 add      x1, x1, #0xbd0
000037bc mov      w0, #-0xffffffff80000000
000037c0 mov      x2, x8
000037c4 bl       #0x3a50
000037c8 adrp     x0, #0x7000
000037cc adrp     x2, #0x7000
000037d0 add      x0, x0, #0xf70
000037d4 mov      w1, #0x333
000037d8 add      x2, x2, #0xc04
000037dc ldp      x29, x30, [sp], #0x10
000037e0 b        #0x3b54
000037e4 cbz      x1, #0x3820
000037e8 stp      x29, x30, [sp, #-0x10]!
000037ec mov      x29, sp
000037f0 ldp      x29, x30, [sp], #0x10
000037f4 cbz      x0, #0x3824
000037f8 neg      x8, x0
000037fc cmp      x8, x1
00003800 b.hs     #0x3840
00003804 adrp     x0, #0x8000
00003808 adrp     x2, #0x8000
0000380c add      x0, x0, #0x1c
00003810 mov      w1, #0x36
00003814 add      x2, x2, #0x2d
00003818 bl       #0x3b54
0000381c b        #0x381c
00003820 ret      
00003824 adrp     x0, #0x8000
00003828 adrp     x2, #0x7000
0000382c add      x0, x0, #0x1c
00003830 mov      w1, #0x35
00003834 add      x2, x2, #0xfc6
00003838 bl       #0x3b54
0000383c b        #0x383c
00003840 b        #0x3874
00003844 udf      #0
00003848 udf      #0
0000384c udf      #0
00003850 dup      v0.8h, w2
00003854 lsl      x1, x1, #1
00003858 b        #0x3880
0000385c dup      v0.4s, w2
00003860 lsl      x1, x1, #2
00003864 b        #0x3880
00003868 dup      v0.2d, x2
0000386c lsl      x1, x1, #3
00003870 b        #0x3880
00003874 movi     v0.16b, #0
00003878 b        #0x3880
0000387c dup      v0.16b, w2
00003880 add      x4, x0, x1
00003884 mov      x2, v0.d[0]
00003888 cmp      x1, #0x60
0000388c b.hi     #0x3904
00003890 cmp      x1, #0x10
00003894 b.hs     #0x38d0
00003898 tbz      w1, #3, #0x38ac
0000389c str      x2, [x0]
000038a0 stur     x2, [x4, #-8]
000038a4 ret      
000038a8 nop      
000038ac tbz      w1, #2, #0x38bc
000038b0 str      w2, [x0]
000038b4 stur     w2, [x4, #-4]
000038b8 ret      
000038bc cbz      x1, #0x38cc
000038c0 strb     w2, [x0]
000038c4 tbz      w1, #1, #0x38cc
000038c8 sturh    w2, [x4, #-2]
000038cc ret      
000038d0 str      q0, [x0]
000038d4 tbnz     w1, #6, #0x38f0
000038d8 stur     q0, [x4, #-0x10]
000038dc tbz      w1, #5, #0x38e8
000038e0 str      q0, [x0, #0x10]
000038e4 stur     q0, [x4, #-0x20]
000038e8 ret      
000038ec nop      
000038f0 str      q0, [x0, #0x10]
000038f4 stp      q0, q0, [x0, #0x20]
000038f8 stp      q0, q0, [x4, #-0x20]
000038fc ret      
00003900 nop      
00003904 and      x3, x0, #0xfffffffffffffff0
00003908 str      q0, [x0]
0000390c cmp      x1, #0x100
00003910 ccmp     x2, #0, #0, hs
00003914 b.eq     #0x3940
00003918 sub      x1, x4, x3
0000391c add      x3, x3, #0x10
00003920 sub      x1, x1, #0x50
00003924 stp      q0, q0, [x3], #0x40
00003928 stp      q0, q0, [x3, #-0x20]
0000392c subs     x1, x1, #0x40
00003930 b.hi     #0x3924
00003934 stp      q0, q0, [x4, #-0x40]
00003938 stp      q0, q0, [x4, #-0x20]
0000393c ret      
00003940 mrs      x5, dczid_el0
00003944 tbnz     w5, #4, #0x3918
00003948 and      w5, w5, #0xf
0000394c cmp      w5, #4
00003950 b.ne     #0x39a0
00003954 str      q0, [x3, #0x10]
00003958 stp      q0, q0, [x3, #0x20]
0000395c and      x3, x3, #0xffffffffffffffc0
00003960 stp      q0, q0, [x3, #0x40]
00003964 stp      q0, q0, [x3, #0x60]
00003968 sub      x1, x4, x3
0000396c sub      x1, x1, #0x100
00003970 add      x3, x3, #0x80
00003974 nop      
00003978 dc       zva, x3
0000397c add      x3, x3, #0x40
00003980 subs     x1, x1, #0x40
00003984 b.hi     #0x3978
00003988 stp      q0, q0, [x3]
0000398c stp      q0, q0, [x3, #0x20]
00003990 stp      q0, q0, [x4, #-0x40]
00003994 stp      q0, q0, [x4, #-0x20]
00003998 ret      
0000399c nop      
000039a0 cmp      w5, #5
000039a4 b.ne     #0x39ec
000039a8 str      q0, [x3, #0x10]
000039ac stp      q0, q0, [x3, #0x20]
000039b0 stp      q0, q0, [x3, #0x40]
000039b4 stp      q0, q0, [x3, #0x60]
000039b8 and      x3, x3, #0xffffffffffffff80
000039bc sub      x1, x4, x3
000039c0 sub      x1, x1, #0x100
000039c4 add      x3, x3, #0x80
000039c8 dc       zva, x3
000039cc add      x3, x3, #0x80
000039d0 subs     x1, x1, #0x80
000039d4 b.hi     #0x39c8
000039d8 stp      q0, q0, [x4, #-0x80]
000039dc stp      q0, q0, [x4, #-0x60]
000039e0 stp      q0, q0, [x4, #-0x40]
000039e4 stp      q0, q0, [x4, #-0x20]
000039e8 ret      
000039ec mov      w6, #4
000039f0 lsl      w7, w6, w5
000039f4 add      x5, x7, #0x40
000039f8 cmp      x1, x5
000039fc b.lo     #0x3918
00003a00 sub      x6, x7, #1
00003a04 add      x5, x3, x7
00003a08 add      x3, x3, #0x10
00003a0c subs     x1, x5, x3
00003a10 bic      x5, x5, x6
00003a14 b.eq     #0x3a28
00003a18 stp      q0, q0, [x3], #0x40
00003a1c stp      q0, q0, [x3, #-0x20]
00003a20 subs     x1, x1, #0x40
00003a24 b.hi     #0x3a18
00003a28 mov      x3, x5
00003a2c sub      x1, x4, x5
00003a30 subs     x1, x1, x7
00003a34 b.lo     #0x3a48
00003a38 dc       zva, x3
00003a3c add      x3, x3, x7
00003a40 subs     x1, x1, x7
00003a44 b.hs     #0x3a38
00003a48 add      x1, x1, x7
00003a4c b        #0x392c
00003a50 stp      x28, x19, [sp, #-0x20]!
00003a54 stp      x29, x30, [sp, #0x10]
00003a58 add      x29, sp, #0x10
00003a5c sub      sp, sp, #0x300
00003a60 adrp     x9, #0xa000
00003a64 stp      q6, q7, [sp, #0x60]
00003a68 mov      x8, x1
00003a6c stp      q4, q5, [sp, #0x40]
00003a70 mov      x19, x0
00003a74 stp      q2, q3, [sp, #0x20]
00003a78 ldr      x9, [x9]
00003a7c stp      q0, q1, [sp]
00003a80 stp      x6, x7, [sp, #0xa8]
00003a84 stp      x4, x5, [sp, #0x98]
00003a88 stp      x2, x3, [sp, #0x88]
00003a8c stur     x9, [x29, #-0x18]
00003a90 cbz      x8, #0x3b34
00003a94 adrp     x10, #0x7000
00003a98 ldr      w9, [x10, #0xc3c]
00003a9c and      x10, x9, x19
00003aa0 cbz      x10, #0x3b10
00003aa4 mov      w9, #-0x80
00003aa8 mov      w10, #-0x30
00003aac add      x11, x29, #0x10
00003ab0 add      x0, sp, #0xf8
00003ab4 stp      w10, w9, [sp, #0xf0]
00003ab8 add      x10, sp, #0x88
00003abc add      x13, x10, #0x30
00003ac0 str      x11, [sp, #0xd8]
00003ac4 mov      x9, sp
00003ac8 add      x12, x9, #0x80
00003acc stp      x11, x13, [sp, #0xb8]
00003ad0 mov      w1, #0x200
00003ad4 ldr      x11, [sp, #0xf0]
00003ad8 add      x3, sp, #0xb8
00003adc mov      x2, x8
00003ae0 stp      x13, x12, [sp, #0xe0]
00003ae4 stp      x12, x11, [sp, #0xc8]
00003ae8 bl       #0x6660
00003aec mov      w12, #0x442
00003af0 movk     w12, #0x8000, lsl #16
00003af4 and      x13, x19, x12
00003af8 cbz      x13, #0x3b10
00003afc add      x0, sp, #0xf8
00003b00 bl       #0x3c78
00003b04 mov      x1, x0
00003b08 add      x0, sp, #0xf8
00003b0c bl       #0x6510
00003b10 adrp     x8, #0xa000
00003b14 ldur     x14, [x29, #-0x18]
00003b18 ldr      x8, [x8]
00003b1c sub      x15, x8, x14
00003b20 cbnz     x15, #0x3b50
00003b24 add      sp, sp, #0x300
00003b28 ldp      x29, x30, [sp, #0x10]
00003b2c ldp      x28, x19, [sp], #0x20
00003b30 ret      
00003b34 adrp     x0, #0x8000
00003b38 adrp     x2, #0x8000
00003b3c add      x0, x0, #0x63
00003b40 mov      w1, #0x4f
00003b44 add      x2, x2, #0x6e
00003b48 bl       #0x3b54
00003b4c b        #0x3b4c
00003b50 bl       #0x10d8
00003b54 stp      x28, x21, [sp, #-0x30]!
00003b58 stp      x20, x19, [sp, #0x10]
00003b5c stp      x29, x30, [sp, #0x20]
00003b60 add      x29, sp, #0x20
00003b64 sub      sp, sp, #0x210
00003b68 adrp     x8, #0xa000
00003b6c mov      x19, x2
00003b70 mov      x20, x1
00003b74 ldr      x8, [x8]
00003b78 mov      x21, x0
00003b7c stur     x8, [x29, #-0x28]
00003b80 bl       #0x648c
00003b84 bl       #0x649c
00003b88 and      w8, w0, #0xff
00003b8c cbz      w8, #0x3ba8
00003b90 mov      w0, #2
00003b94 mov      w1, #7
00003b98 movk     w0, #0x9000, lsl #16
00003b9c movk     w1, #0x300, lsl #16
00003ba0 bl       #0x64bc
00003ba4 b        #0x3bac
00003ba8 bl       #0x64ac
00003bac bl       #0x65d0
00003bb0 bl       #0x6614
00003bb4 adrp     x2, #0x8000
00003bb8 add      x2, x2, #0x85
00003bbc add      x0, sp, #8
00003bc0 mov      w1, #0x200
00003bc4 mov      x3, x21
00003bc8 mov      x4, x20
00003bcc mov      x5, x19
00003bd0 bl       #0x66a0
00003bd4 add      x0, sp, #8
00003bd8 bl       #0x3c78
00003bdc mov      x1, x0
00003be0 add      x0, sp, #8
00003be4 bl       #0x6510
00003be8 bl       #0x65d0
00003bec adrp     x0, #0x8000
00003bf0 add      x0, x0, #0x98
00003bf4 mov      w1, #1
00003bf8 bl       #0x6510
00003bfc bl       #0x65d0
00003c00 adrp     x9, #0x7000
00003c04 mov      w1, wzr
00003c08 ldr      w0, [x9, #0xc38]
00003c0c bl       #0x6620
00003c10 adrp     x10, #0xa000
00003c14 ldur     x8, [x29, #-0x28]
00003c18 ldr      x10, [x10]
00003c1c sub      x9, x10, x8
00003c20 cbnz     x9, #0x3c38
00003c24 add      sp, sp, #0x210
00003c28 ldp      x29, x30, [sp, #0x20]
00003c2c ldp      x20, x19, [sp, #0x10]
00003c30 ldp      x28, x21, [sp], #0x30
00003c34 ret      
00003c38 bl       #0x10d8
00003c3c stp      x20, x19, [sp, #-0x20]!
00003c40 stp      x29, x30, [sp, #0x10]
00003c44 add      x29, sp, #0x10
00003c48 mov      w19, w0
00003c4c bl       #0x3c6c
00003c50 mov      w20, w0
00003c54 lsr      w0, w19, #0x10
00003c58 bl       #0x3c6c
00003c5c ldp      x29, x30, [sp, #0x10]
00003c60 bfi      w0, w20, #0x10, #0x10
00003c64 ldp      x20, x19, [sp], #0x20
00003c68 ret      
00003c6c rev      w8, w0
00003c70 lsr      w0, w8, #0x10
00003c74 ret      
00003c78 stp      x29, x30, [sp, #-0x10]!
00003c7c mov      x29, sp
00003c80 cbz      x0, #0x3cbc
00003c84 adrp     x9, #0x7000
00003c88 mov      x8, xzr
00003c8c ldr      w9, [x9, #0xc30]
00003c90 b        #0x3ca8
00003c94 cbz      w9, #0x3ca0
00003c98 cmp      x8, x9
00003c9c b.hs     #0x3cd8
00003ca0 add      x0, x0, #1
00003ca4 add      x8, x8, #1
00003ca8 ldrb     w10, [x0]
00003cac cbnz     w10, #0x3c94
00003cb0 mov      x0, x8
00003cb4 ldp      x29, x30, [sp], #0x10
00003cb8 ret      
00003cbc adrp     x0, #0x8000
00003cc0 adrp     x2, #0x8000
00003cc4 add      x0, x0, #0x9a
00003cc8 mov      w1, #0x43a
00003ccc add      x2, x2, #0x1aa
00003cd0 bl       #0x3b54
00003cd4 b        #0x3cd4
00003cd8 adrp     x0, #0x8000
00003cdc adrp     x2, #0x8000
00003ce0 add      x0, x0, #0x9a
00003ce4 mov      w1, #0x442
00003ce8 add      x2, x2, #0x403
00003cec bl       #0x3b54
00003cf0 b        #0x3cf0
00003cf4 mov      x8, x0
00003cf8 tbnz     w8, #0, #0x3d2c
00003cfc mov      x0, xzr
00003d00 cbz      x8, #0x3d28
00003d04 cbz      x1, #0x3d28
00003d08 mov      x0, xzr
00003d0c sub      x9, x1, #1
00003d10 b        #0x3d20
00003d14 cmp      x0, x9
00003d18 b.hs     #0x3d54
00003d1c add      x0, x0, #1
00003d20 ldrh     w10, [x8], #2
00003d24 cbnz     w10, #0x3d14
00003d28 ret      
00003d2c stp      x29, x30, [sp, #-0x10]!
00003d30 mov      x29, sp
00003d34 adrp     x0, #0x8000
00003d38 adrp     x2, #0x8000
00003d3c add      x0, x0, #0x5c7
00003d40 add      x2, x2, #0x1c1
00003d44 mov      w1, #0x80
00003d48 bl       #0x3b54
00003d4c ldp      x29, x30, [sp], #0x10
00003d50 b        #0x3d50
00003d54 mov      x0, x1
00003d58 ret      
00003d5c mov      x8, x0
00003d60 mov      x0, xzr
00003d64 cbz      x8, #0x3d8c
00003d68 cbz      x1, #0x3d8c
00003d6c mov      x0, xzr
00003d70 sub      x9, x1, #1
00003d74 b        #0x3d84
00003d78 cmp      x0, x9
00003d7c b.hs     #0x3d90
00003d80 add      x0, x0, #1
00003d84 ldrb     w10, [x8], #1
00003d88 cbnz     w10, #0x3d78
00003d8c ret      
00003d90 mov      x0, x1
00003d94 ret      
00003d98 cbz      w1, #0x3da0
00003d9c b        #0x3dc8
00003da0 stp      x29, x30, [sp, #-0x10]!
00003da4 mov      x29, sp
00003da8 adrp     x0, #0x8000
00003dac adrp     x2, #0x8000
00003db0 add      x0, x0, #0xb16
00003db4 mov      w1, #0x2b
00003db8 add      x2, x2, #0xb22
00003dbc bl       #0x3b54
00003dc0 ldp      x29, x30, [sp], #0x10
00003dc4 b        #0x3dc4
00003dc8 mov      w8, w1
00003dcc udiv     x0, x0, x8
00003dd0 ret      
00003dd4 cbz      x2, #0x3dec
00003dd8 mov      w8, w1
00003ddc udiv     x9, x0, x8
00003de0 mul      w10, w9, w1
00003de4 sub      x11, x0, x10
00003de8 str      w11, [x2]
00003dec mov      w12, w1
00003df0 udiv     x0, x0, x12
00003df4 ret      
00003df8 sub      sp, sp, #0x40
00003dfc str      x21, [sp, #0x10]
00003e00 stp      x20, x19, [sp, #0x20]
00003e04 stp      x29, x30, [sp, #0x30]
00003e08 add      x29, sp, #0x30
00003e0c mov      x20, x1
00003e10 mov      x19, x0
00003e14 ldr      w1, [x20]
00003e18 cbz      w1, #0x3e28
00003e1c mov      x0, x19
00003e20 bl       #0x3d98
00003e24 b        #0x3ea8
00003e28 add      x0, sp, #0x18
00003e2c add      x1, sp, #8
00003e30 bl       #0x42ac
00003e34 mov      x9, #-0x4241
00003e38 movk     x9, #0xfff0, lsl #16
00003e3c mov      w11, #0xbdbe
00003e40 add      x10, x0, x9
00003e44 movk     w11, #0xfff0, lsl #16
00003e48 cmp      x10, x11
00003e4c b.hi     #0x3ea4
00003e50 ldr      x12, [sp, #0x18]
00003e54 ldr      x13, [sp, #8]
00003e58 cmp      x12, x13
00003e5c b.hs     #0x3ea4
00003e60 adrp     x21, #0xa000
00003e64 and      x8, x0, #0xffffffff
00003e68 mov      w1, #0x4240
00003e6c str      w0, [x21, #0x298]
00003e70 movk     w1, #0xf, lsl #16
00003e74 mov      x0, x8
00003e78 bl       #0x3d98
00003e7c ldr      w8, [x21, #0x298]
00003e80 adrp     x9, #0xa000
00003e84 mov      w1, #0x3e8
00003e88 str      w0, [x9, #0x29c]
00003e8c mov      x0, x8
00003e90 bl       #0x3d98
00003e94 adrp     x8, #0xa000
00003e98 str      w0, [x8, #0x2a0]
00003e9c ldr      w1, [x20]
00003ea0 b        #0x3e1c
00003ea4 mov      w0, wzr
00003ea8 ldp      x29, x30, [sp, #0x30]
00003eac ldp      x20, x19, [sp, #0x20]
00003eb0 ldr      x21, [sp, #0x10]
00003eb4 add      sp, sp, #0x40
00003eb8 ret      
00003ebc stp      x29, x30, [sp, #-0x10]!
00003ec0 mov      x29, sp
00003ec4 bl       #0x42a8
00003ec8 adrp     x1, #0xa000
00003ecc add      x1, x1, #0x2a0
00003ed0 ldp      x29, x30, [sp], #0x10
00003ed4 b        #0x3df8
00003ed8 stp      x29, x30, [sp, #-0x10]!
00003edc mov      x29, sp
00003ee0 adrp     x8, #0xa000
00003ee4 str      x0, [x8, #0x2a8]
00003ee8 cbz      x0, #0x3f14
00003eec adrp     x9, #0xa000
00003ef0 str      x1, [x9, #0x2b0]
00003ef4 cbz      x1, #0x3f30
00003ef8 ldr      x8, [x1, #0x60]
00003efc adrp     x10, #0xa000
00003f00 str      x8, [x10, #0x2b8]
00003f04 cbz      x8, #0x3f4c
00003f08 mov      x0, xzr
00003f0c ldp      x29, x30, [sp], #0x10
00003f10 ret      
00003f14 adrp     x0, #0x8000
00003f18 adrp     x2, #0x8000
00003f1c add      x0, x0, #0xb2f
00003f20 mov      w1, #0x33
00003f24 add      x2, x2, #0xb4a
00003f28 bl       #0x3b54
00003f2c b        #0x3f2c
00003f30 adrp     x0, #0x8000
00003f34 adrp     x2, #0x8000
00003f38 add      x0, x0, #0xb2f
00003f3c mov      w1, #0x39
00003f40 add      x2, x2, #0xb67
00003f44 bl       #0x3b54
00003f48 b        #0x3f48
00003f4c adrp     x0, #0x8000
00003f50 adrp     x2, #0x8000
00003f54 add      x0, x0, #0xb2f
00003f58 add      x2, x2, #0xb7b
00003f5c mov      w1, #0x3f
00003f60 bl       #0x3b54
00003f64 b        #0x3f64
00003f68 ldr      x8, [x1, #0x58]
00003f6c adrp     x9, #0xa000
00003f70 str      x8, [x9, #0x2c0]
00003f74 cbz      x8, #0x3f80
00003f78 mov      x0, xzr
00003f7c ret      
00003f80 stp      x29, x30, [sp, #-0x10]!
00003f84 mov      x29, sp
00003f88 adrp     x0, #0x8000
00003f8c adrp     x2, #0x8000
00003f90 add      x0, x0, #0xb8f
00003f94 mov      w1, #0x2f
00003f98 add      x2, x2, #0xbad
00003f9c bl       #0x3b54
00003fa0 ldp      x29, x30, [sp], #0x10
00003fa4 b        #0x3fa4
00003fa8 mov      x0, xzr
00003fac ret      
00003fb0 stp      x24, x23, [sp, #-0x40]!
00003fb4 stp      x22, x21, [sp, #0x10]
00003fb8 stp      x20, x19, [sp, #0x20]
00003fbc stp      x29, x30, [sp, #0x30]
00003fc0 add      x29, sp, #0x30
00003fc4 mov      x20, x0
00003fc8 mov      x19, x1
00003fcc cbz      x20, #0x4028
00003fd0 cbz      x19, #0x4044
00003fd4 adrp     x8, #0xa000
00003fd8 mov      x21, #0xe
00003fdc mov      x22, xzr
00003fe0 ldr      x23, [x8, #0x2b0]
00003fe4 mov      w24, #0x10
00003fe8 movk     x21, #0x8000, lsl #48
00003fec str      xzr, [x19]
00003ff0 b        #0x4018
00003ff4 ldr      x9, [x23, #0x70]
00003ff8 mov      x0, x20
00003ffc add      x9, x9, x24
00004000 sub      x1, x9, #0x10
00004004 bl       #0x7a1c
00004008 and      w8, w0, #0xff
0000400c cbnz     w8, #0x4060
00004010 add      x22, x22, #1
00004014 add      x24, x24, #0x18
00004018 ldr      x8, [x23, #0x68]
0000401c cmp      x22, x8
00004020 b.lo     #0x3ff4
00004024 b        #0x4070
00004028 adrp     x0, #0x8000
0000402c adrp     x2, #0x8000
00004030 add      x0, x0, #0xbc1
00004034 mov      w1, #0x61
00004038 add      x2, x2, #0xbcb
0000403c bl       #0x3b54
00004040 b        #0x4040
00004044 adrp     x0, #0x8000
00004048 adrp     x2, #0x8000
0000404c add      x0, x0, #0xbc1
00004050 mov      w1, #0x62
00004054 add      x2, x2, #0xbe5
00004058 bl       #0x3b54
0000405c b        #0x405c
00004060 ldr      x10, [x23, #0x70]
00004064 mov      x21, xzr
00004068 ldr      x10, [x10, x24]
0000406c str      x10, [x19]
00004070 mov      x0, x21
00004074 ldp      x29, x30, [sp, #0x30]
00004078 ldp      x20, x19, [sp, #0x20]
0000407c ldp      x22, x21, [sp, #0x10]
00004080 ldp      x24, x23, [sp], #0x40
00004084 ret      
00004088 str      x19, [sp, #-0x20]!
0000408c stp      x29, x30, [sp, #0x10]
00004090 add      x29, sp, #0x10
00004094 adrp     x19, #0xa000
00004098 ldr      x0, [x19, #0x2c8]
0000409c cbnz     x0, #0x40f0
000040a0 adrp     x0, #0xa000
000040a4 adrp     x1, #0xa000
000040a8 add      x0, x0, #0x48
000040ac add      x1, x1, #0x2c8
000040b0 bl       #0x3fb0
000040b4 mov      x8, x0
000040b8 tbz      x8, #0x3f, #0x40e8
000040bc adrp     x1, #0x7000
000040c0 add      x1, x1, #0xbd0
000040c4 mov      w0, #-0xffffffff80000000
000040c8 mov      x2, x8
000040cc bl       #0x3a50
000040d0 adrp     x0, #0x8000
000040d4 adrp     x2, #0x7000
000040d8 add      x0, x0, #0xd91
000040dc mov      w1, #0x36
000040e0 add      x2, x2, #0xc04
000040e4 bl       #0x3b54
000040e8 ldr      x0, [x19, #0x2c8]
000040ec cbz      x0, #0x40fc
000040f0 ldp      x29, x30, [sp, #0x10]
000040f4 ldr      x19, [sp], #0x20
000040f8 ret      
000040fc adrp     x0, #0x8000
00004100 adrp     x2, #0x8000
00004104 add      x0, x0, #0xd91
00004108 mov      w1, #0x37
0000410c add      x2, x2, #0xd9a
00004110 bl       #0x3b54
00004114 b        #0x4114
00004118 stp      x29, x30, [sp, #-0x10]!
0000411c mov      x29, sp
00004120 bl       #0x4088
00004124 mov      x0, xzr
00004128 ldp      x29, x30, [sp], #0x10
0000412c ret      
00004130 cbz      x1, #0x4164
00004134 mov      w8, #0xffff
00004138 b        #0x414c
0000413c cmp      w9, w0, uxth
00004140 b.eq     #0x415c
00004144 ldrh     w9, [x1, #2]
00004148 add      x1, x1, x9
0000414c ldrh     w9, [x1]
00004150 cmp      w9, w8
00004154 b.ne     #0x413c
00004158 mov      x1, xzr
0000415c mov      x0, x1
00004160 ret      
00004164 stp      x29, x30, [sp, #-0x10]!
00004168 mov      x29, sp
0000416c adrp     x0, #0x8000
00004170 adrp     x2, #0x8000
00004174 add      x0, x0, #0xd91
00004178 mov      w1, #0x6c
0000417c add      x2, x2, #0xdb3
00004180 bl       #0x3b54
00004184 ldp      x29, x30, [sp], #0x10
00004188 b        #0x4188
0000418c stp      x20, x19, [sp, #-0x20]!
00004190 stp      x29, x30, [sp, #0x10]
00004194 add      x29, sp, #0x10
00004198 mov      x19, x0
0000419c b        #0x41bc
000041a0 add      x1, x20, #8
000041a4 mov      x0, x19
000041a8 bl       #0x7a1c
000041ac and      w8, w0, #0xff
000041b0 cbnz     w8, #0x41cc
000041b4 ldrh     w8, [x20, #2]
000041b8 add      x1, x20, x8
000041bc mov      w0, #4
000041c0 bl       #0x4130
000041c4 mov      x20, x0
000041c8 cbnz     x20, #0x41a0
000041cc ldp      x29, x30, [sp, #0x10]
000041d0 mov      x0, x20
000041d4 ldp      x20, x19, [sp], #0x20
000041d8 ret      
000041dc str      x19, [sp, #-0x20]!
000041e0 stp      x29, x30, [sp, #0x10]
000041e4 add      x29, sp, #0x10
000041e8 mov      x19, x0
000041ec bl       #0x4088
000041f0 ldp      x29, x30, [sp, #0x10]
000041f4 mov      x1, x0
000041f8 mov      x0, x19
000041fc ldr      x19, [sp], #0x20
00004200 b        #0x418c
00004204 stp      x29, x30, [sp, #-0x10]!
00004208 mov      x29, sp
0000420c bl       #0x7b8c
00004210 cbz      x0, #0x4244
00004214 adrp     x8, #0x7000
00004218 ldr      w8, [x8, #0xc40]
0000421c sub      w9, w8, #1
00004220 mov      w8, #0x423e
00004224 movk     w8, #0xf, lsl #16
00004228 cmp      w9, w8
0000422c b.ls     #0x4270
00004230 bl       #0x7b94
00004234 cbz      x0, #0x428c
00004238 mov      x0, xzr
0000423c ldp      x29, x30, [sp], #0x10
00004240 ret      
00004244 adrp     x1, #0x8000
00004248 add      x1, x1, #0xe4a
0000424c mov      w0, #-0xffffffff80000000
00004250 bl       #0x3a50
00004254 adrp     x0, #0x8000
00004258 adrp     x2, #0x8000
0000425c add      x0, x0, #0xdde
00004260 mov      w1, #0x51
00004264 add      x2, x2, #0xea3
00004268 bl       #0x3b54
0000426c b        #0x426c
00004270 adrp     x0, #0x8000
00004274 adrp     x2, #0x8000
00004278 add      x0, x0, #0xdde
0000427c mov      w1, #0x39
00004280 add      x2, x2, #0xdf0
00004284 bl       #0x3b54
00004288 b        #0x4288
0000428c adrp     x0, #0x8000
00004290 adrp     x2, #0x8000
00004294 add      x0, x0, #0xdde
00004298 mov      w1, #0x4d
0000429c add      x2, x2, #0xe26
000042a0 bl       #0x3b54
000042a4 b        #0x42a4
000042a8 b        #0x7b98
000042ac cbz      x0, #0x42b4
000042b0 str      xzr, [x0]
000042b4 cbz      x1, #0x42c0
000042b8 mov      x8, #-1
000042bc str      x8, [x1]
000042c0 b        #0x7b94
000042c4 stp      x20, x19, [sp, #-0x20]!
000042c8 stp      x29, x30, [sp, #0x10]
000042cc add      x29, sp, #0x10
000042d0 mov      w19, w1
000042d4 mov      x20, x0
000042d8 bl       #0x43c0
000042dc ldp      x29, x30, [sp, #0x10]
000042e0 add      x2, x0, #1
000042e4 mov      x0, x20
000042e8 mov      w1, w19
000042ec ldp      x20, x19, [sp], #0x20
000042f0 b        #0x436c
000042f4 sub      sp, sp, #0x110
000042f8 str      x28, [sp, #0xf0]
000042fc stp      x29, x30, [sp, #0x100]
00004300 add      x29, sp, #0x100
00004304 mov      w11, #-0x80
00004308 stp      q6, q7, [sp, #0x60]
0000430c mov      w12, #-0x28
00004310 stp      q4, q5, [sp, #0x40]
00004314 mov      x8, sp
00004318 stp      q2, q3, [sp, #0x20]
0000431c sub      x9, x29, #0x78
00004320 stp      q0, q1, [sp]
00004324 stp      w12, w11, [x29, #-0x18]
00004328 add      x8, x8, #0x80
0000432c ldur     x11, [x29, #-0x18]
00004330 add      x9, x9, #0x28
00004334 stur     x3, [x29, #-0x78]
00004338 add      x10, x29, #0x10
0000433c sub      x3, x29, #0x50
00004340 stp      x6, x7, [x29, #-0x60]
00004344 stp      x4, x5, [x29, #-0x70]
00004348 stp      x9, x8, [x29, #-0x28]
0000434c stp      x9, x8, [x29, #-0x48]
00004350 stur     x10, [x29, #-0x50]
00004354 stp      x11, x10, [x29, #-0x38]
00004358 bl       #0x4d44
0000435c ldp      x29, x30, [sp, #0x100]
00004360 ldr      x28, [sp, #0xf0]
00004364 add      sp, sp, #0x110
00004368 ret      
0000436c add      x0, x0, x2
00004370 cbz      x2, #0x4388
00004374 ldrb     w8, [x0, #-1]!
00004378 sub      x2, x2, #1
0000437c cmp      w8, w1, uxtb
00004380 b.ne     #0x4370
00004384 ret      
00004388 mov      x0, xzr
0000438c ret      
00004390 b        #0x43b0
00004394 ldrb     w9, [x0]
00004398 ldrb     w10, [x1]
0000439c subs     w8, w9, w10
000043a0 b.ne     #0x43b8
000043a4 sub      x2, x2, #1
000043a8 add      x0, x0, #1
000043ac add      x1, x1, #1
000043b0 cbnz     x2, #0x4394
000043b4 mov      w8, wzr
000043b8 mov      w0, w8
000043bc ret      
000043c0 mov      x8, x0
000043c4 b        #0x43d4
000043c8 ldrb     w9, [x8]
000043cc cbz      w9, #0x4414
000043d0 add      x8, x8, #1
000043d4 and      x9, x8, #7
000043d8 cbnz     x9, #0x43c8
000043dc mov      x10, #-0x101010101010102
000043e0 sub      x8, x8, #8
000043e4 movk     x10, #0xfeff
000043e8 ldr      x9, [x8, #8]!
000043ec add      x11, x9, x10
000043f0 bic      x12, x11, x9
000043f4 and      x11, x12, #0x8080808080808080
000043f8 cbz      x11, #0x43e8
000043fc b        #0x440c
00004400 ldrb     w9, [x8, #1]
00004404 add      x10, x8, #1
00004408 mov      x8, x10
0000440c and      w9, w9, #0xff
00004410 cbnz     w9, #0x4400
00004414 sub      x0, x8, x0
00004418 ret      
0000441c stp      x20, x19, [sp, #-0x20]!
00004420 stp      x29, x30, [sp, #0x10]
00004424 add      x29, sp, #0x10
00004428 mov      x19, x1
0000442c mov      w1, wzr
00004430 mov      x2, x19
00004434 mov      x20, x0
00004438 bl       #0x5c68
0000443c ldp      x29, x30, [sp, #0x10]
00004440 sub      x8, x0, x20
00004444 cmp      x0, #0
00004448 csel     x0, x19, x8, eq
0000444c ldp      x20, x19, [sp], #0x20
00004450 ret      
00004454 stp      x22, x21, [sp, #-0x30]!
00004458 stp      x20, x19, [sp, #0x10]
0000445c stp      x29, x30, [sp, #0x20]
00004460 add      x29, sp, #0x20
00004464 mov      x21, x2
00004468 mov      x20, x1
0000446c mov      x1, x21
00004470 mov      x22, x0
00004474 bl       #0x441c
00004478 mov      x19, x0
0000447c cmp      x19, x21
00004480 b.ne     #0x4490
00004484 mov      x0, x20
00004488 bl       #0x43c0
0000448c b        #0x44a0
00004490 add      x0, x22, x19
00004494 sub      x2, x21, x19
00004498 mov      x1, x20
0000449c bl       #0x44d8
000044a0 add      x0, x0, x19
000044a4 ldp      x29, x30, [sp, #0x20]
000044a8 ldp      x20, x19, [sp, #0x10]
000044ac ldp      x22, x21, [sp], #0x30
000044b0 ret      
000044b4 str      x19, [sp, #-0x20]!
000044b8 stp      x29, x30, [sp, #0x10]
000044bc add      x29, sp, #0x10
000044c0 mov      x19, x0
000044c4 bl       #0x5d08
000044c8 ldp      x29, x30, [sp, #0x10]
000044cc mov      x0, x19
000044d0 ldr      x19, [sp], #0x20
000044d4 ret      
000044d8 cbz      x2, #0x44f4
000044dc eor      w8, w1, w0
000044e0 and      x14, x8, #7
000044e4 sub      x8, x2, #1
000044e8 cbz      x14, #0x44fc
000044ec mov      x9, x0
000044f0 b        #0x45b8
000044f4 mov      x9, x0
000044f8 b        #0x45c0
000044fc mov      x10, xzr
00004500 mov      x13, x8
00004504 b        #0x4510
00004508 sub      x13, x13, #1
0000450c add      x10, x10, #1
00004510 add      x11, x1, x10
00004514 cbz      x13, #0x4530
00004518 and      x15, x11, #7
0000451c cbz      x15, #0x4530
00004520 ldrb     w9, [x11]
00004524 strb     w9, [x0, x10]
00004528 cbnz     w9, #0x4508
0000452c b        #0x4534
00004530 cbz      x13, #0x4590
00004534 ldrb     w12, [x11]
00004538 sub      x8, x8, x10
0000453c add      x9, x0, x10
00004540 cbz      w12, #0x4598
00004544 mov      x13, #-0x101010101010102
00004548 mov      x12, xzr
0000454c movk     x13, #0xfeff
00004550 b        #0x457c
00004554 add      x16, x1, x12
00004558 ldr      x15, [x16, x10]
0000455c add      x16, x15, x13
00004560 bic      x17, x16, x15
00004564 and      x17, x17, #0x8080808080808080
00004568 cbnz     x17, #0x4584
0000456c add      x3, x0, x12
00004570 add      x12, x12, #8
00004574 mov      x8, x14
00004578 str      x15, [x3, x10]
0000457c subs     x14, x8, #8
00004580 b.hs     #0x4554
00004584 add      x9, x9, x12
00004588 add      x1, x11, x12
0000458c b        #0x45b8
00004590 mov      x8, xzr
00004594 add      x9, x0, x10
00004598 mov      x1, x11
0000459c b        #0x45b8
000045a0 ldrb     w10, [x1]
000045a4 strb     w10, [x9]
000045a8 cbz      w10, #0x45bc
000045ac sub      x8, x8, #1
000045b0 add      x1, x1, #1
000045b4 add      x9, x9, #1
000045b8 cbnz     x8, #0x45a0
000045bc strb     wzr, [x9]
000045c0 str      x19, [sp, #-0x20]!
000045c4 stp      x29, x30, [sp, #0x10]
000045c8 add      x29, sp, #0x10
000045cc sub      x19, x9, x0
000045d0 mov      x0, x1
000045d4 bl       #0x43c0
000045d8 ldp      x29, x30, [sp, #0x10]
000045dc add      x0, x19, x0
000045e0 ldr      x19, [sp], #0x20
000045e4 ret      
000045e8 b        #0x45f4
000045ec add      x0, x0, #1
000045f0 add      x1, x1, #1
000045f4 ldrb     w8, [x0]
000045f8 ldrb     w9, [x1]
000045fc cmp      w8, #0
00004600 ccmp     w8, w9, #0, ne
00004604 b.eq     #0x45ec
00004608 sub      w0, w8, w9
0000460c ret      
00004610 cbnz     x2, #0x4638
00004614 mov      w0, wzr
00004618 ret      
0000461c cmp      w9, w8
00004620 b.ne     #0x4644
00004624 sub      x2, x2, #1
00004628 cbz      x2, #0x4644
0000462c cbz      w8, #0x4644
00004630 add      x0, x0, #1
00004634 add      x1, x1, #1
00004638 ldrb     w9, [x0]
0000463c ldrb     w8, [x1]
00004640 cbnz     w9, #0x461c
00004644 sub      w0, w9, w8
00004648 ret      
0000464c mov      w11, #2
00004650 mov      w14, #1
00004654 mov      x9, xzr
00004658 sub      x12, x11, x2
0000465c add      x13, x2, #0xd
00004660 sub      x14, x14, x2
00004664 add      x15, x2, #0xe
00004668 neg      x16, x2
0000466c add      x17, x2, #0xf
00004670 mvn      x3, x2
00004674 add      x4, x2, #0x10
00004678 mov      x6, x2
0000467c mov      x8, x0
00004680 mov      x10, x1
00004684 b        #0x46c8
00004688 and      x5, x11, #3
0000468c cbz      x5, #0x46d0
00004690 ldrb     w11, [x11]
00004694 add      x10, x10, #1
00004698 add      x8, x8, #1
0000469c sub      x6, x6, #1
000046a0 add      x12, x12, #1
000046a4 sub      x13, x13, #1
000046a8 strb     w11, [x0, x9]
000046ac add      x14, x14, #1
000046b0 sub      x15, x15, #1
000046b4 add      x9, x9, #1
000046b8 add      x16, x16, #1
000046bc sub      x17, x17, #1
000046c0 add      x3, x3, #1
000046c4 sub      x4, x4, #1
000046c8 add      x11, x1, x9
000046cc cbnz     x6, #0x4688
000046d0 sub      sp, sp, #0x40
000046d4 add      x8, x0, x9
000046d8 and      x6, x8, #3
000046dc sub      x10, x2, x9
000046e0 cbz      x6, #0x4720
000046e4 cmp      x10, #0x20
000046e8 b.lo     #0x4708
000046ec and      w3, w8, #3
000046f0 cmp      w3, #1
000046f4 b.eq     #0x4838
000046f8 cmp      w3, #2
000046fc b.eq     #0x4900
00004700 cmp      w3, #3
00004704 b.eq     #0x49bc
00004708 tbnz     w10, #4, #0x4a6c
0000470c tbnz     w10, #3, #0x4b90
00004710 tbnz     w10, #2, #0x4be0
00004714 tbnz     w10, #1, #0x4c10
00004718 tbnz     w10, #0, #0x4c30
0000471c b        #0x4c38
00004720 cmn      x3, #0x10
00004724 mov      x15, #-0x10
00004728 csel     x16, x3, x15, hi
0000472c add      x17, x16, x4
00004730 and      x8, x17, #0xfffffffffffffff0
00004734 add      x5, x0, x8
00004738 mov      x7, xzr
0000473c add      x5, x5, x9
00004740 b        #0x4794
00004744 add      x6, x1, x7
00004748 add      x17, x6, x9
0000474c add      x14, x0, x7
00004750 add      x14, x14, x9
00004754 ldp      w8, w12, [x17, #8]
00004758 add      x7, x7, #0x10
0000475c bfi      x8, x12, #0x20, #0x20
00004760 str      x8, [sp, #8]
00004764 ldp      w13, w11, [x17]
00004768 bfi      x13, x11, #0x20, #0x20
0000476c str      x13, [sp]
00004770 ldr      q0, [sp]
00004774 str      q0, [sp, #0x10]
00004778 ldr      x15, [sp, #0x18]
0000477c str      w15, [x14, #8]
00004780 lsr      x17, x15, #0x20
00004784 ldr      x16, [sp, #0x10]
00004788 str      w17, [x14, #0xc]
0000478c lsr      x6, x16, #0x20
00004790 stp      w16, w6, [x14]
00004794 subs     x10, x10, #0x10
00004798 b.hs     #0x4744
0000479c cmn      x3, #0x10
000047a0 mov      x10, #-0x10
000047a4 csel     x7, x3, x10, hi
000047a8 add      x8, x7, x4
000047ac and      x12, x8, #0xfffffffffffffff0
000047b0 sub      x2, x2, x12
000047b4 sub      x8, x2, x9
000047b8 tbnz     w8, #3, #0x47cc
000047bc add      x1, x1, x12
000047c0 add      x1, x1, x9
000047c4 tbnz     w8, #2, #0x4800
000047c8 b        #0x4808
000047cc cmn      x3, #0x10
000047d0 csel     x3, x3, x10, hi
000047d4 add      x4, x3, x4
000047d8 and      x2, x4, #0xfffffffffffffff0
000047dc add      x10, x1, x2
000047e0 add      x3, x10, x9
000047e4 add      x5, x0, x2
000047e8 add      x9, x5, x9
000047ec ldp      w10, w13, [x3]
000047f0 add      x5, x9, #8
000047f4 add      x1, x3, #8
000047f8 stp      w10, w13, [x9]
000047fc tbz      w8, #2, #0x4808
00004800 ldr      w9, [x1], #4
00004804 str      w9, [x5], #4
00004808 tbz      w8, #1, #0x4828
0000480c ldrb     w14, [x1]
00004810 add      x9, x5, #2
00004814 ldrb     w17, [x1, #1]
00004818 add      x1, x1, #2
0000481c strb     w14, [x5]
00004820 strb     w17, [x5, #1]
00004824 mov      x5, x9
00004828 tbz      w8, #0, #0x4c38
0000482c ldrb     w8, [x1]
00004830 strb     w8, [x5]
00004834 b        #0x4c38
00004838 cmn      x12, #0x11
0000483c ldrb     w3, [x11, #1]
00004840 mov      x15, #-0x11
00004844 ldrb     w5, [x11, #2]
00004848 csel     x16, x12, x15, hi
0000484c ldr      w15, [x11]
00004850 add      x17, x16, x13
00004854 and      x4, x17, #0xfffffffffffffff0
00004858 strb     w3, [x8, #1]
0000485c add      x11, x0, x4
00004860 strb     w5, [x8, #2]
00004864 add      x7, x11, x9
00004868 strb     w15, [x8]
0000486c mov      x14, xzr
00004870 sub      x16, x10, #3
00004874 add      x8, x7, #3
00004878 b        #0x48c0
0000487c add      x6, x1, x14
00004880 add      x11, x6, x9
00004884 add      x7, x0, x14
00004888 add      x5, x7, x9
0000488c ldp      w4, w6, [x11, #4]
00004890 ldr      w10, [x11, #0xc]
00004894 sub      x16, x16, #0x10
00004898 add      x14, x14, #0x10
0000489c extr     w17, w4, w15, #0x18
000048a0 ldr      w15, [x11, #0x10]
000048a4 extr     w7, w6, w4, #0x18
000048a8 extr     w11, w10, w6, #0x18
000048ac stur     w17, [x5, #3]
000048b0 extr     w3, w15, w10, #0x18
000048b4 stur     w7, [x5, #7]
000048b8 stur     w11, [x5, #0xb]
000048bc stur     w3, [x5, #0xf]
000048c0 cmp      x16, #0x11
000048c4 b.hs     #0x487c
000048c8 cmn      x12, #0x11
000048cc mov      x15, #-0x11
000048d0 csel     x12, x12, x15, hi
000048d4 add      x13, x12, x13
000048d8 mov      x16, #-3
000048dc and      x13, x13, #0xfffffffffffffff0
000048e0 sub      x3, x16, x13
000048e4 add      x1, x1, x13
000048e8 add      x2, x3, x2
000048ec add      x1, x1, x9
000048f0 sub      x10, x2, x9
000048f4 add      x11, x1, #3
000048f8 tbz      w10, #4, #0x470c
000048fc b        #0x4a6c
00004900 cmn      x14, #0x12
00004904 ldr      w16, [x11]
00004908 mov      x12, #-0x12
0000490c ldrb     w5, [x11, #1]
00004910 csel     x3, x14, x12, hi
00004914 add      x4, x3, x15
00004918 and      x6, x4, #0xfffffffffffffff0
0000491c strb     w16, [x8]
00004920 add      x17, x0, x6
00004924 strb     w5, [x8, #1]
00004928 add      x17, x17, x9
0000492c mov      x13, xzr
00004930 sub      x10, x10, #2
00004934 add      x8, x17, #2
00004938 b        #0x4980
0000493c add      x5, x1, x13
00004940 add      x3, x5, x9
00004944 add      x11, x0, x13
00004948 add      x11, x11, x9
0000494c ldp      w4, w6, [x3, #4]
00004950 ldr      w17, [x3, #0xc]
00004954 sub      x10, x10, #0x10
00004958 add      x13, x13, #0x10
0000495c extr     w7, w4, w16, #0x10
00004960 ldr      w16, [x3, #0x10]
00004964 extr     w3, w6, w4, #0x10
00004968 extr     w5, w17, w6, #0x10
0000496c stur     w7, [x11, #2]
00004970 extr     w4, w16, w17, #0x10
00004974 stur     w3, [x11, #6]
00004978 stur     w5, [x11, #0xa]
0000497c stur     w4, [x11, #0xe]
00004980 cmp      x10, #0x12
00004984 b.hs     #0x493c
00004988 cmn      x14, #0x12
0000498c csel     x17, x14, x12, hi
00004990 add      x5, x17, x15
00004994 mov      x4, #-2
00004998 and      x16, x5, #0xfffffffffffffff0
0000499c sub      x11, x4, x16
000049a0 add      x14, x1, x16
000049a4 add      x6, x11, x2
000049a8 add      x12, x14, x9
000049ac sub      x10, x6, x9
000049b0 add      x11, x12, #2
000049b4 tbz      w10, #4, #0x470c
000049b8 b        #0x4a6c
000049bc cmn      x16, #0x13
000049c0 ldr      w12, [x1, x9]
000049c4 mov      x13, #-0x13
000049c8 csel     x14, x16, x13, hi
000049cc add      x8, x14, x17
000049d0 and      x15, x8, #0xfffffffffffffff0
000049d4 strb     w12, [x0, x9]
000049d8 add      x6, x0, x15
000049dc sub      x15, x10, #1
000049e0 add      x10, x6, x9
000049e4 mov      x11, xzr
000049e8 add      x8, x10, #1
000049ec b        #0x4a34
000049f0 add      x10, x1, x11
000049f4 add      x14, x10, x9
000049f8 add      x7, x0, x11
000049fc add      x4, x7, x9
00004a00 ldp      w10, w6, [x14, #4]
00004a04 ldr      w3, [x14, #0xc]
00004a08 sub      x15, x15, #0x10
00004a0c add      x11, x11, #0x10
00004a10 extr     w5, w10, w12, #8
00004a14 ldr      w12, [x14, #0x10]
00004a18 extr     w14, w6, w10, #8
00004a1c extr     w7, w3, w6, #8
00004a20 stur     w5, [x4, #1]
00004a24 extr     w10, w12, w3, #8
00004a28 stur     w14, [x4, #5]
00004a2c stur     w7, [x4, #9]
00004a30 stur     w10, [x4, #0xd]
00004a34 cmp      x15, #0x13
00004a38 b.hs     #0x49f0
00004a3c cmn      x16, #0x13
00004a40 csel     x10, x16, x13, hi
00004a44 add      x7, x10, x17
00004a48 mvn      x15, x7
00004a4c and      x7, x7, #0xfffffffffffffff0
00004a50 orr      x5, x15, #0xf
00004a54 add      x16, x1, x7
00004a58 add      x12, x5, x2
00004a5c add      x2, x16, x9
00004a60 sub      x10, x12, x9
00004a64 add      x11, x2, #1
00004a68 tbz      w10, #4, #0x470c
00004a6c mov      x12, x11
00004a70 ldrb     w9, [x11, #3]
00004a74 ldrb     w13, [x11, #2]
00004a78 ldrb     w3, [x11, #1]
00004a7c ldrb     w1, [x11]
00004a80 ldrb     w2, [x12, #4]!
00004a84 ldrb     w15, [x11, #5]
00004a88 bfi      x13, x9, #8, #8
00004a8c bfi      x1, x3, #8, #8
00004a90 ldrb     w16, [x12, #3]
00004a94 bfi      x1, x13, #0x10, #0x10
00004a98 ldrb     w12, [x12, #2]
00004a9c bfi      w2, w15, #8, #8
00004aa0 mov      x13, x11
00004aa4 bfi      w12, w16, #8, #8
00004aa8 mov      x16, x8
00004aac bfi      w2, w12, #0x10, #0x10
00004ab0 bfi      x1, x2, #0x20, #0x20
00004ab4 str      x1, [sp, #0x20]
00004ab8 ldrb     w4, [x11, #9]
00004abc ldrb     w17, [x13, #8]!
00004ac0 bfi      x17, x4, #8, #8
00004ac4 ldrb     w5, [x13, #3]
00004ac8 ldrb     w14, [x13, #2]
00004acc ldrb     w6, [x13, #4]!
00004ad0 bfi      x14, x5, #8, #8
00004ad4 ldrb     w1, [x13, #3]
00004ad8 ldrb     w2, [x13, #2]
00004adc bfi      x17, x14, #0x10, #0x10
00004ae0 ldrb     w13, [x11, #0xd]
00004ae4 add      x14, x8, #0x10
00004ae8 add      x11, x11, #0x10
00004aec bfi      w2, w1, #8, #8
00004af0 bfi      w6, w13, #8, #8
00004af4 bfi      w6, w2, #0x10, #0x10
00004af8 bfi      x17, x6, #0x20, #0x20
00004afc str      x17, [sp, #0x28]
00004b00 ldr      q0, [sp, #0x20]
00004b04 str      q0, [sp, #0x30]
00004b08 ldr      x7, [sp, #0x30]
00004b0c strb     w7, [x8]
00004b10 lsr      x12, x7, #0x28
00004b14 ldr      x15, [sp, #0x38]
00004b18 ubfx     x1, x7, #0x18, #8
00004b1c ubfx     x2, x7, #0x10, #0x10
00004b20 ubfx     x4, x7, #8, #0x18
00004b24 lsr      x17, x7, #0x20
00004b28 ubfx     x9, x15, #0x18, #8
00004b2c ubfx     x13, x15, #0x10, #0x10
00004b30 lsr      x3, x15, #0x20
00004b34 strb     w15, [x16, #8]!
00004b38 lsr      x5, x15, #0x28
00004b3c strb     w9, [x16, #3]
00004b40 ubfx     x6, x15, #8, #0x18
00004b44 strb     w13, [x16, #2]
00004b48 strb     w3, [x16, #4]!
00004b4c strb     w12, [x8, #5]
00004b50 lsr      x12, x7, #0x38
00004b54 lsr      x7, x7, #0x30
00004b58 strb     w1, [x8, #3]
00004b5c strb     w2, [x8, #2]
00004b60 lsr      x9, x15, #0x38
00004b64 strb     w4, [x8, #1]
00004b68 lsr      x15, x15, #0x30
00004b6c strb     w5, [x8, #0xd]
00004b70 strb     w6, [x8, #9]
00004b74 strb     w17, [x8, #4]!
00004b78 strb     w12, [x8, #3]
00004b7c strb     w7, [x8, #2]
00004b80 mov      x8, x14
00004b84 strb     w9, [x16, #3]
00004b88 strb     w15, [x16, #2]
00004b8c tbz      w10, #3, #0x4710
00004b90 ldrb     w9, [x11]
00004b94 add      x15, x8, #8
00004b98 ldrb     w17, [x11, #1]
00004b9c ldrb     w4, [x11, #2]
00004ba0 ldrb     w6, [x11, #3]
00004ba4 ldrb     w3, [x11, #4]
00004ba8 ldrb     w5, [x11, #5]
00004bac ldrb     w14, [x11, #6]
00004bb0 ldrb     w7, [x11, #7]
00004bb4 add      x11, x11, #8
00004bb8 strb     w9, [x8]
00004bbc strb     w17, [x8, #1]
00004bc0 strb     w4, [x8, #2]
00004bc4 strb     w6, [x8, #3]
00004bc8 strb     w3, [x8, #4]
00004bcc strb     w5, [x8, #5]
00004bd0 strb     w14, [x8, #6]
00004bd4 strb     w7, [x8, #7]
00004bd8 mov      x8, x15
00004bdc tbz      w10, #2, #0x4714
00004be0 ldrb     w16, [x11]
00004be4 add      x17, x8, #4
00004be8 ldrb     w12, [x11, #1]
00004bec ldrb     w15, [x11, #2]
00004bf0 ldrb     w1, [x11, #3]
00004bf4 add      x11, x11, #4
00004bf8 strb     w16, [x8]
00004bfc strb     w12, [x8, #1]
00004c00 strb     w15, [x8, #2]
00004c04 strb     w1, [x8, #3]
00004c08 mov      x8, x17
00004c0c tbz      w10, #1, #0x4718
00004c10 ldrb     w2, [x11]
00004c14 add      x3, x8, #2
00004c18 ldrb     w13, [x11, #1]
00004c1c add      x11, x11, #2
00004c20 strb     w2, [x8]
00004c24 strb     w13, [x8, #1]
00004c28 mov      x8, x3
00004c2c tbz      w10, #0, #0x4c38
00004c30 ldrb     w11, [x11]
00004c34 strb     w11, [x8]
00004c38 add      sp, sp, #0x40
00004c3c ret      
00004c40 cbz      x2, #0x4d40
00004c44 add      x11, x0, x2
00004c48 cmp      x2, #3
00004c4c sturb    w1, [x11, #-1]
00004c50 strb     w1, [x0]
00004c54 b.lo     #0x4d40
00004c58 cmp      x2, #7
00004c5c sturb    w1, [x11, #-2]
00004c60 strb     w1, [x0, #1]
00004c64 sturb    w1, [x11, #-3]
00004c68 strb     w1, [x0, #2]
00004c6c b.lo     #0x4d40
00004c70 cmp      x2, #9
00004c74 sturb    w1, [x11, #-4]
00004c78 strb     w1, [x0, #3]
00004c7c b.lo     #0x4d40
00004c80 neg      w8, w0
00004c84 and      w10, w1, #0xff
00004c88 mov      w12, #0x1010101
00004c8c and      x14, x8, #3
00004c90 sub      x13, x2, x14
00004c94 mul      w11, w10, w12
00004c98 add      x9, x0, x14
00004c9c and      x10, x13, #0xfffffffffffffffc
00004ca0 add      x8, x9, x10
00004ca4 cmp      x10, #9
00004ca8 str      w11, [x9]
00004cac stur     w11, [x8, #-4]
00004cb0 b.lo     #0x4d40
00004cb4 cmp      x10, #0x19
00004cb8 stp      w11, w11, [x9, #4]
00004cbc stp      w11, w11, [x8, #-0xc]
00004cc0 b.lo     #0x4d40
00004cc4 dup      v0.4s, w11
00004cc8 str      q0, [sp, #-0x20]!
00004ccc ldr      x12, [sp]
00004cd0 mov      x15, x9
00004cd4 mov      w11, w11
00004cd8 str      w12, [x15, #0xc]!
00004cdc ldr      x14, [sp, #8]
00004ce0 lsr      x16, x12, #0x20
00004ce4 bfi      x11, x11, #0x20, #0x20
00004ce8 str      w16, [x9, #0x10]
00004cec and      x16, x9, #4
00004cf0 lsr      x17, x14, #0x20
00004cf4 stp      w14, w17, [x15, #8]
00004cf8 orr      x17, x16, #0x18
00004cfc str      q0, [sp, #0x10]
00004d00 add      x12, x9, x17
00004d04 ldr      x15, [sp, #0x10]
00004d08 sub      x13, x10, x17
00004d0c str      w15, [x8, #-0x1c]!
00004d10 ldr      x1, [sp, #0x18]
00004d14 lsr      x2, x15, #0x20
00004d18 str      w2, [x8, #4]
00004d1c lsr      x9, x1, #0x20
00004d20 stp      w1, w9, [x8, #8]
00004d24 add      sp, sp, #0x20
00004d28 b        #0x4d38
00004d2c stp      x11, x11, [x12]
00004d30 stp      x11, x11, [x12, #0x10]
00004d34 add      x12, x12, #0x20
00004d38 subs     x13, x13, #0x20
00004d3c b.hs     #0x4d2c
00004d40 ret      
00004d44 sub      sp, sp, #0x150
00004d48 str      x28, [sp, #0x110]
00004d4c stp      x22, x21, [sp, #0x120]
00004d50 stp      x20, x19, [sp, #0x130]
00004d54 stp      x29, x30, [sp, #0x140]
00004d58 add      x29, sp, #0x140
00004d5c mov      x22, x1
00004d60 adrp     x1, #0x8000
00004d64 mov      x19, x2
00004d68 mov      x21, x0
00004d6c add      x1, x1, #0xea8
00004d70 mov      w2, #0xe8
00004d74 add      x0, sp, #0x28
00004d78 mov      x20, x3
00004d7c bl       #0x464c
00004d80 sub      x8, x22, #1
00004d84 mov      w9, #0x7fffffff
00004d88 cmp      x8, x9
00004d8c b.lo     #0x4db0
00004d90 cbz      x22, #0x4da8
00004d94 adrp     x9, #0xa000
00004d98 mov      w8, #0x4b
00004d9c mov      w0, #-1
00004da0 str      w8, [x9, #0x2d0]
00004da4 b        #0x4e10
00004da8 sub      x21, x29, #0x24
00004dac mov      w22, #1
00004db0 mov      x8, #-2
00004db4 str      x21, [sp, #0x50]
00004db8 sub      x10, x8, x21
00004dbc str      x21, [sp, #0x80]
00004dc0 cmp      x22, x10
00004dc4 csel     x22, x10, x22, hi
00004dc8 add      x11, x21, x22
00004dcc ldp      x12, x13, [x20, #0x10]
00004dd0 add      x0, sp, #0x28
00004dd4 str      x11, [sp, #0x48]
00004dd8 add      x2, sp, #8
00004ddc str      x11, [sp, #0x60]
00004de0 mov      x1, x19
00004de4 ldp      x14, x15, [x20]
00004de8 stp      x12, x13, [sp, #0x18]
00004dec str      x22, [sp, #0x88]
00004df0 stp      x14, x15, [sp, #8]
00004df4 bl       #0x4e78
00004df8 cbz      x22, #0x4e10
00004dfc ldp      x17, x16, [sp, #0x48]
00004e00 cmp      x16, x17
00004e04 cset     w3, eq
00004e08 sub      x10, x16, x3
00004e0c strb     wzr, [x10]
00004e10 ldp      x29, x30, [sp, #0x140]
00004e14 ldp      x20, x19, [sp, #0x130]
00004e18 ldp      x22, x21, [sp, #0x120]
00004e1c ldr      x28, [sp, #0x110]
00004e20 add      sp, sp, #0x150
00004e24 ret      
00004e28 str      x21, [sp, #-0x30]!
00004e2c stp      x20, x19, [sp, #0x10]
00004e30 stp      x29, x30, [sp, #0x20]
00004e34 add      x29, sp, #0x20
00004e38 mov      x20, x0
00004e3c mov      x19, x2
00004e40 ldp      x8, x0, [x20, #0x20]
00004e44 sub      x9, x8, x0
00004e48 cmp      x9, x19
00004e4c csel     x21, x19, x9, hi
00004e50 mov      x2, x21
00004e54 bl       #0x464c
00004e58 ldr      x10, [x20, #0x28]
00004e5c mov      x0, x19
00004e60 add      x11, x10, x21
00004e64 str      x11, [x20, #0x28]
00004e68 ldp      x29, x30, [sp, #0x20]
00004e6c ldp      x20, x19, [sp, #0x10]
00004e70 ldr      x21, [sp], #0x30
00004e74 ret      
00004e78 sub      sp, sp, #0x180
00004e7c str      x28, [sp, #0x140]
00004e80 stp      x22, x21, [sp, #0x150]
00004e84 stp      x20, x19, [sp, #0x160]
00004e88 stp      x29, x30, [sp, #0x170]
00004e8c add      x29, sp, #0x170
00004e90 adrp     x8, #0xa000
00004e94 mov      x19, x0
00004e98 mov      x3, sp
00004e9c ldr      x8, [x8]
00004ea0 add      x4, sp, #0xa0
00004ea4 mov      x0, xzr
00004ea8 mov      x20, x1
00004eac stur     x8, [x29, #-0x38]
00004eb0 ldp      x9, x8, [x2, #0x10]
00004eb4 stp      xzr, xzr, [sp, #0xb8]
00004eb8 stur     x8, [x29, #-0x90]
00004ebc stur     x9, [x29, #-0x98]
00004ec0 ldp      x10, x11, [x2]
00004ec4 sub      x2, x29, #0xa8
00004ec8 stp      xzr, xzr, [sp, #0xa8]
00004ecc str      xzr, [sp, #0xa0]
00004ed0 stp      x10, x11, [x29, #-0xa8]
00004ed4 bl       #0x4fd4
00004ed8 tbnz     w0, #0x1f, #0x4f20
00004edc ldrsb    w9, [x19, #0x8a]
00004ee0 ldr      w8, [x19]
00004ee4 cmp      w9, #0
00004ee8 b.gt     #0x4ef4
00004eec and      w10, w8, #0xffffffdf
00004ef0 str      w10, [x19]
00004ef4 ldr      x12, [x19, #0x60]
00004ef8 and      w21, w8, #0x20
00004efc cbz      x12, #0x4f28
00004f00 sub      x2, x29, #0xa8
00004f04 mov      x3, sp
00004f08 add      x4, sp, #0xa0
00004f0c mov      x0, x19
00004f10 mov      x1, x20
00004f14 bl       #0x4fd4
00004f18 mov      w20, w0
00004f1c b        #0x4f90
00004f20 mov      w0, #-1
00004f24 b        #0x4fa4
00004f28 sub      x9, x29, #0x88
00004f2c ldr      x22, [x19, #0x58]
00004f30 add      x10, x9, #0x50
00004f34 mov      w13, #0x50
00004f38 sub      x2, x29, #0xa8
00004f3c str      x9, [x19, #0x38]
00004f40 mov      x3, sp
00004f44 stp      x10, x9, [x19, #0x20]
00004f48 add      x4, sp, #0xa0
00004f4c stp      x9, x13, [x19, #0x58]
00004f50 mov      x0, x19
00004f54 mov      x1, x20
00004f58 bl       #0x4fd4
00004f5c mov      w20, w0
00004f60 cbz      x22, #0x4f90
00004f64 ldr      x14, [x19, #0x48]
00004f68 mov      x0, x19
00004f6c mov      x1, xzr
00004f70 mov      x2, xzr
00004f74 blr      x14
00004f78 ldr      x11, [x19, #0x28]
00004f7c stp      x22, xzr, [x19, #0x58]
00004f80 str      xzr, [x19, #0x38]
00004f84 stp      xzr, xzr, [x19, #0x20]
00004f88 cmp      x11, #0
00004f8c csinv    w20, w20, wzr, ne
00004f90 ldr      w9, [x19]
00004f94 tst      w9, #0x20
00004f98 orr      w10, w9, w21
00004f9c csinv    w0, w20, wzr, eq
00004fa0 str      w10, [x19]
00004fa4 adrp     x12, #0xa000
00004fa8 ldur     x15, [x29, #-0x38]
00004fac ldr      x12, [x12]
00004fb0 sub      x16, x12, x15
00004fb4 cbnz     x16, #0x4fd0
00004fb8 ldp      x29, x30, [sp, #0x170]
00004fbc ldp      x20, x19, [sp, #0x160]
00004fc0 ldp      x22, x21, [sp, #0x150]
00004fc4 ldr      x28, [sp, #0x140]
00004fc8 add      sp, sp, #0x180
00004fcc ret      
00004fd0 bl       #0x10d8
00004fd4 sub      sp, sp, #0x100
00004fd8 stp      x28, x27, [sp, #0xa0]
00004fdc stp      x26, x25, [sp, #0xb0]
00004fe0 stp      x24, x23, [sp, #0xc0]
00004fe4 stp      x22, x21, [sp, #0xd0]
00004fe8 stp      x20, x19, [sp, #0xe0]
00004fec stp      x29, x30, [sp, #0xf0]
00004ff0 add      x29, sp, #0xf0
00004ff4 str      x4, [sp, #0x28]
00004ff8 adrp     x4, #0xa000
00004ffc add      x8, sp, #0x60
00005000 str      x2, [sp, #0x30]
00005004 adrp     x20, #0x9000
00005008 str      x3, [sp, #0x18]
0000500c ldr      x4, [x4]
00005010 mov      x23, x0
00005014 mov      w21, wzr
00005018 mov      w27, wzr
0000501c add      x16, x8, #0x37
00005020 add      x2, x8, #0x36
00005024 stur     x4, [x29, #-0x58]
00005028 add      x20, x20, #0x128
0000502c str      wzr, [sp, #0x3c]
00005030 mov      w28, #0x3a
00005034 str      x1, [sp, #0x58]
00005038 str      x16, [sp, #0x20]
0000503c str      x2, [sp, #0x10]
00005040 b        #0x5778
00005044 mov      x27, xzr
00005048 add      x22, x24, #1
0000504c b        #0x505c
00005050 str      x22, [sp, #0x58]
00005054 add      x27, x27, #1
00005058 ldrb     w8, [x22], #1
0000505c and      w13, w8, #0xff
00005060 cmp      w13, #0x25
00005064 b.eq     #0x5084
00005068 cbnz     w13, #0x5050
0000506c b        #0x5084
00005070 add      x5, x22, #1
00005074 add      x27, x27, #1
00005078 str      x5, [sp, #0x58]
0000507c ldrb     w8, [x22, #1]
00005080 add      x22, x22, #2
00005084 and      w8, w8, #0xff
00005088 cmp      w8, #0x25
0000508c b.ne     #0x509c
00005090 ldrb     w14, [x22]
00005094 cmp      w14, #0x25
00005098 b.eq     #0x5070
0000509c cbz      x23, #0x50b0
000050a0 mov      x0, x23
000050a4 mov      x1, x24
000050a8 sxtw     x2, w27
000050ac bl       #0x58a4
000050b0 cbnz     w27, #0x5778
000050b4 ldrb     w15, [x22]
000050b8 mov      w27, #-1
000050bc sub      w11, w15, #0x30
000050c0 cmp      w11, #9
000050c4 b.hi     #0x50e8
000050c8 ldrb     w16, [x22, #1]
000050cc add      x6, x22, #2
000050d0 ldr      w0, [sp, #0x3c]
000050d4 cmp      w16, #0x24
000050d8 csel     x22, x6, x22, eq
000050dc csinc    w0, w0, wzr, ne
000050e0 csinv    w27, w11, wzr, eq
000050e4 str      w0, [sp, #0x3c]
000050e8 mov      w13, #0x2889
000050ec mov      w19, wzr
000050f0 add      x8, x22, #1
000050f4 mov      w10, #1
000050f8 movk     w13, #1, lsl #16
000050fc b        #0x5108
00005100 orr      w19, w9, w19
00005104 add      x8, x8, #1
00005108 sub      x7, x8, #1
0000510c str      x7, [sp, #0x58]
00005110 ldurb    w12, [x8, #-1]
00005114 sub      w17, w12, #0x20
00005118 cmp      w17, #0x1f
0000511c lsl      w9, w10, w17
00005120 and      w11, w9, w13
00005124 ccmp     w11, #0, #4, ls
00005128 b.ne     #0x5100
0000512c cmp      w12, #0x2a
00005130 b.ne     #0x517c
00005134 ldrb     w0, [x8]
00005138 sub      x13, x0, #0x30
0000513c cmp      w13, #9
00005140 b.hi     #0x5194
00005144 ldrb     w0, [x8, #1]
00005148 cmp      w0, #0x24
0000514c b.ne     #0x5194
00005150 ldr      x26, [sp, #0x28]
00005154 mov      w14, #0xa
00005158 mov      w3, #1
0000515c str      w14, [x26, x13, lsl #2]
00005160 ldrb     w12, [x8], #2
00005164 ldr      x14, [sp, #0x18]
00005168 add      x22, x14, x12, lsl #4
0000516c sub      x9, x22, #0x300
00005170 ldr      w9, [x9]
00005174 str      w3, [sp, #0x3c]
00005178 b        #0x51dc
0000517c add      x0, sp, #0x58
00005180 bl       #0x58c4
00005184 mov      w25, w0
00005188 tbnz     w25, #0x1f, #0x5854
0000518c ldr      x8, [sp, #0x58]
00005190 b        #0x51f0
00005194 ldr      w5, [sp, #0x3c]
00005198 cbnz     w5, #0x5874
0000519c cbz      x23, #0x51d4
000051a0 ldr      x12, [sp, #0x30]
000051a4 ldrsw    x11, [x12, #0x18]
000051a8 tbz      w11, #0x1f, #0x51bc
000051ac add      w2, w11, #8
000051b0 cmp      w2, #0
000051b4 str      w2, [x12, #0x18]
000051b8 b.le     #0x5418
000051bc ldr      x15, [x12]
000051c0 add      x26, x15, #8
000051c4 str      x26, [x12]
000051c8 ldr      w9, [x15]
000051cc str      wzr, [sp, #0x3c]
000051d0 b        #0x51dc
000051d4 str      wzr, [sp, #0x3c]
000051d8 mov      w9, wzr
000051dc cmp      w9, #0
000051e0 str      x8, [sp, #0x58]
000051e4 orr      w3, w19, #0x2000
000051e8 cneg     w25, w9, mi
000051ec csel     w19, w3, w19, lt
000051f0 ldrb     w4, [x8]
000051f4 cmp      w4, #0x2e
000051f8 b.ne     #0x5254
000051fc mov      x2, x8
00005200 ldrb     w5, [x2, #1]!
00005204 cmp      w5, #0x2a
00005208 b.ne     #0x5264
0000520c mov      x9, x8
00005210 ldrb     w10, [x9, #2]!
00005214 sub      x14, x10, #0x30
00005218 cmp      w14, #9
0000521c b.hi     #0x527c
00005220 ldrb     w6, [x8, #3]
00005224 cmp      w6, #0x24
00005228 b.ne     #0x527c
0000522c ldr      x10, [sp, #0x28]
00005230 mov      w12, #0xa
00005234 add      x9, x8, #4
00005238 str      w12, [x10, x14, lsl #2]
0000523c ldrb     w14, [x8, #2]
00005240 ldr      x15, [sp, #0x18]
00005244 add      x11, x15, x14, lsl #4
00005248 sub      x12, x11, #0x300
0000524c ldr      w30, [x12]
00005250 b        #0x52bc
00005254 mov      w22, #-1
00005258 mov      x9, x8
0000525c mov      w30, w22
00005260 b        #0x52c0
00005264 add      x0, sp, #0x58
00005268 str      x2, [sp, #0x58]
0000526c bl       #0x58c4
00005270 ldr      x9, [sp, #0x58]
00005274 mov      w30, w0
00005278 b        #0x52c0
0000527c ldr      w2, [sp, #0x3c]
00005280 cbnz     w2, #0x5894
00005284 cbz      x23, #0x52b8
00005288 ldr      x13, [sp, #0x30]
0000528c ldrsw    x12, [x13, #0x18]
00005290 tbz      w12, #0x1f, #0x52a4
00005294 add      w7, w12, #8
00005298 cmp      w7, #0
0000529c str      w7, [x13, #0x18]
000052a0 b.le     #0x5448
000052a4 ldr      x16, [x13]
000052a8 add      x8, x16, #8
000052ac str      x8, [x13]
000052b0 ldr      w30, [x16]
000052b4 b        #0x52bc
000052b8 mov      w30, wzr
000052bc str      x9, [sp, #0x58]
000052c0 mov      w1, wzr
000052c4 add      x26, x9, #1
000052c8 ldurb    w17, [x26, #-1]
000052cc mov      w22, w1
000052d0 sub      w1, w17, #0x41
000052d4 cmp      w1, #0x39
000052d8 b.hi     #0x57d4
000052dc umaddl   x16, w22, w28, x20
000052e0 str      x26, [sp, #0x58]
000052e4 add      x26, x26, #1
000052e8 add      x13, x16, x17
000052ec ldurb    w1, [x13, #-0x41]
000052f0 sub      w8, w1, #1
000052f4 cmp      w8, #8
000052f8 b.lo     #0x52c8
000052fc cbz      w1, #0x5860
00005300 cmp      w1, #0x15
00005304 b.ne     #0x5310
00005308 tbnz     w27, #0x1f, #0x5328
0000530c b        #0x5888
00005310 tbnz     w27, #0x1f, #0x5334
00005314 ldr      x11, [sp, #0x28]
00005318 str      w1, [x11, w27, sxtw #2]
0000531c ldr      x8, [sp, #0x18]
00005320 ldr      q0, [x8, w27, sxtw #4]
00005324 str      q0, [sp, #0x40]
00005328 mov      w27, wzr
0000532c cbz      x23, #0x5778
00005330 b        #0x534c
00005334 cbz      x23, #0x586c
00005338 ldr      x2, [sp, #0x30]
0000533c add      x0, sp, #0x40
00005340 mov      x27, x30
00005344 bl       #0x58fc
00005348 mov      x30, x27
0000534c ldurb    w12, [x26, #-2]
00005350 mov      w15, #0xdf
00005354 adrp     x3, #0x9000
00005358 and      w26, w19, #0xfffeffff
0000535c add      x3, x3, #0x2f8
00005360 and      w9, w12, #0xf
00005364 cmp      w9, #3
00005368 ccmp     w22, #0, #4, eq
0000536c and      w13, w12, w15
00005370 mov      w27, wzr
00005374 csel     w8, w13, w12, ne
00005378 tst      w19, #0x2000
0000537c mov      x5, x3
00005380 csel     w6, w19, w26, eq
00005384 sub      w3, w8, #0x58
00005388 cmp      w3, #0x20
0000538c b.hi     #0x53fc
00005390 adrp     x12, #0x8000
00005394 ldr      x9, [sp, #0x20]
00005398 add      x12, x12, #0xf90
0000539c ldr      x17, [x12, x3, lsl #3]
000053a0 br       x17
000053a4 ldr      x22, [sp, #0x40]
000053a8 adrp     x9, #0x9000
000053ac add      x9, x9, #0x302
000053b0 mov      w1, wzr
000053b4 sxtw     x2, w30
000053b8 cmp      x22, #0
000053bc csel     x24, x22, x9, ne
000053c0 mov      x0, x24
000053c4 mov      x27, x30
000053c8 bl       #0x5c68
000053cc mov      x30, x27
000053d0 cmp      x0, #0
000053d4 add      x9, x24, w30, sxtw
000053d8 sub      w2, w0, w24
000053dc csel     x9, x9, x0, eq
000053e0 adrp     x0, #0x9000
000053e4 add      x0, x0, #0x2f8
000053e8 mov      w27, wzr
000053ec csel     w30, w30, w2, eq
000053f0 mov      w6, w26
000053f4 mov      x5, x0
000053f8 b        #0x5660
000053fc sub      w26, w8, #0x45
00005400 cmp      w26, #3
00005404 b.lo     #0x5778
00005408 ldr      x9, [sp, #0x20]
0000540c cmp      w8, #0x41
00005410 b.eq     #0x5778
00005414 b        #0x5660
00005418 ldr      x13, [x12, #8]
0000541c add      x15, x13, x11
00005420 b        #0x51c8
00005424 ldr      x8, [sp, #0x40]
00005428 tbnz     x8, #0x3f, #0x55b4
0000542c tbnz     w6, #0xb, #0x55cc
00005430 tbnz     w6, #0, #0x55dc
00005434 adrp     x4, #0x9000
00005438 add      x4, x4, #0x2f8
0000543c mov      w27, wzr
00005440 mov      x5, x4
00005444 b        #0x55ec
00005448 ldr      x15, [x13, #8]
0000544c add      x16, x15, x12
00005450 b        #0x52b0
00005454 ldr      x10, [sp, #0x40]
00005458 adrp     x7, #0x9000
0000545c ldr      x24, [sp, #0x10]
00005460 add      x7, x7, #0x2f8
00005464 ldr      x9, [sp, #0x20]
00005468 mov      w27, wzr
0000546c mov      w30, #1
00005470 mov      w6, w26
00005474 strb     w10, [sp, #0x96]
00005478 mov      x5, x7
0000547c b        #0x5660
00005480 mov      w27, wzr
00005484 and      w1, w22, #0xff
00005488 cmp      w1, #7
0000548c b.hi     #0x5778
00005490 adrp     x14, #0x9000
00005494 add      x14, x14, #0x98
00005498 ldr      x0, [x14, x1, lsl #3]
0000549c br       x0
000054a0 ldr      x24, [sp, #0x40]
000054a4 mov      w27, wzr
000054a8 str      w21, [x24]
000054ac b        #0x5778
000054b0 ldr      x10, [sp, #0x40]
000054b4 ldr      x24, [sp, #0x20]
000054b8 b        #0x54cc
000054bc and      w4, w10, #7
000054c0 orr      x5, x4, #0x30
000054c4 lsr      x10, x10, #3
000054c8 strb     w5, [x24, #-1]!
000054cc cbnz     x10, #0x54bc
000054d0 ldr      x19, [sp, #0x20]
000054d4 mov      w9, w6
000054d8 adrp     x10, #0x9000
000054dc add      x10, x10, #0x2f8
000054e0 sub      x6, x19, x24
000054e4 cmp      x6, w30, sxtw
000054e8 csinc    w0, w30, w6, lt
000054ec mov      w6, w9
000054f0 tst      w6, #8
000054f4 csel     w30, w30, w0, eq
000054f8 csel     x5, x10, x10, eq
000054fc csel     w27, wzr, wzr, eq
00005500 tbz      w30, #0x1f, #0x561c
00005504 b        #0x5640
00005508 sxtw     x27, w30
0000550c cmp      x27, #0x10
00005510 mov      w17, #0x10
00005514 orr      w6, w6, #8
00005518 csel     w30, w30, w17, hi
0000551c mov      w8, #0x78
00005520 ldr      x11, [sp, #0x40]
00005524 adrp     x13, #0x9000
00005528 ldr      x24, [sp, #0x20]
0000552c and      w10, w8, #0x20
00005530 add      x13, x13, #0x309
00005534 b        #0x554c
00005538 and      x2, x11, #0xf
0000553c lsr      x11, x11, #4
00005540 ldrb     w14, [x13, x2]
00005544 orr      w15, w10, w14
00005548 strb     w15, [x24, #-1]!
0000554c cbnz     x11, #0x5538
00005550 ldr      x3, [sp, #0x40]
00005554 adrp     x22, #0x9000
00005558 add      x22, x22, #0x2f8
0000555c lsr      w7, w8, #4
00005560 mov      x11, x22
00005564 cmp      x3, #0
00005568 cset     w16, eq
0000556c tst      w6, #8
00005570 cset     w17, eq
00005574 orr      w27, w17, w16
00005578 add      x26, x11, x7
0000557c cmp      w27, #0
00005580 mov      w16, #2
00005584 csel     x5, x11, x26, ne
00005588 csel     w27, wzr, w16, ne
0000558c tbz      w30, #0x1f, #0x561c
00005590 b        #0x5640
00005594 ldr      x8, [sp, #0x40]
00005598 mov      w10, w6
0000559c adrp     x6, #0x9000
000055a0 add      x6, x6, #0x2f8
000055a4 mov      w27, wzr
000055a8 mov      x5, x6
000055ac mov      w6, w10
000055b0 b        #0x55ec
000055b4 neg      x8, x8
000055b8 adrp     x5, #0x9000
000055bc mov      w27, #1
000055c0 add      x5, x5, #0x2f8
000055c4 str      x8, [sp, #0x40]
000055c8 b        #0x55ec
000055cc adrp     x9, #0x9000
000055d0 add      x9, x9, #0x2f8
000055d4 add      x5, x9, #1
000055d8 b        #0x55e8
000055dc adrp     x26, #0x9000
000055e0 add      x26, x26, #0x2f8
000055e4 add      x5, x26, #2
000055e8 mov      w27, #1
000055ec ldr      x24, [sp, #0x20]
000055f0 mov      w11, #0xa
000055f4 b        #0x5614
000055f8 mov      w1, w11
000055fc udiv     x2, x8, x1
00005600 add      w3, w2, w2, lsl #2
00005604 sub      w4, w8, w3, lsl #1
00005608 orr      w7, w4, #0x30
0000560c mov      x8, x2
00005610 strb     w7, [x24, #-1]!
00005614 cbnz     x8, #0x55f8
00005618 tbnz     w30, #0x1f, #0x5640
0000561c ldr      x10, [sp, #0x40]
00005620 and      w6, w6, #0xfffeffff
00005624 cbnz     w30, #0x5644
00005628 cbnz     x10, #0x5644
0000562c ldr      x17, [sp, #0x20]
00005630 mov      w30, wzr
00005634 mov      x24, x17
00005638 mov      x9, x17
0000563c b        #0x5660
00005640 ldr      x10, [sp, #0x40]
00005644 ldr      x1, [sp, #0x20]
00005648 cmp      x10, #0
0000564c sub      x8, x1, x24
00005650 cinc     x0, x8, eq
00005654 cmp      x0, w30, sxtw
00005658 mov      x9, x1
0000565c csel     w30, w30, w0, lt
00005660 sub      x22, x9, x24
00005664 cmp      x22, w30, sxtw
00005668 csel     w1, w22, w30, gt
0000566c add      w19, w1, w27
00005670 cmp      w25, w19
00005674 csel     w25, w19, w25, lt
00005678 stp      w6, w1, [sp, #8]
0000567c mov      w1, #0x20
00005680 mov      x0, x23
00005684 mov      w2, w25
00005688 mov      w3, w19
0000568c mov      w4, w6
00005690 mov      x26, x5
00005694 bl       #0x5b7c
00005698 mov      x0, x23
0000569c mov      x1, x26
000056a0 sxtw     x2, w27
000056a4 bl       #0x58a4
000056a8 ldr      w26, [sp, #8]
000056ac mov      w1, #0x30
000056b0 mov      x0, x23
000056b4 mov      w2, w25
000056b8 mov      w3, w19
000056bc eor      w4, w26, #0x10000
000056c0 bl       #0x5b7c
000056c4 ldr      w2, [sp, #0xc]
000056c8 mov      w1, #0x30
000056cc mov      x0, x23
000056d0 mov      w3, w22
000056d4 mov      w4, wzr
000056d8 bl       #0x5b7c
000056dc mov      x0, x23
000056e0 mov      x1, x24
000056e4 mov      x2, x22
000056e8 bl       #0x58a4
000056ec eor      w4, w26, #0x2000
000056f0 mov      w1, #0x20
000056f4 mov      x0, x23
000056f8 mov      w2, w25
000056fc mov      w3, w19
00005700 bl       #0x5b7c
00005704 mov      w27, w25
00005708 b        #0x5778
0000570c ldr      x19, [sp, #0x40]
00005710 sxtw     x3, w21
00005714 mov      w27, wzr
00005718 str      x3, [x19]
0000571c b        #0x5778
00005720 ldr      x14, [sp, #0x40]
00005724 sxtw     x4, w21
00005728 mov      w27, wzr
0000572c str      x4, [x14]
00005730 b        #0x5778
00005734 ldr      x15, [sp, #0x40]
00005738 mov      w27, wzr
0000573c strh     w21, [x15]
00005740 b        #0x5778
00005744 ldr      x16, [sp, #0x40]
00005748 mov      w27, wzr
0000574c strb     w21, [x16]
00005750 b        #0x5778
00005754 ldr      x17, [sp, #0x40]
00005758 sxtw     x5, w21
0000575c mov      w27, wzr
00005760 str      x5, [x17]
00005764 b        #0x5778
00005768 ldr      x1, [sp, #0x40]
0000576c sxtw     x6, w21
00005770 mov      w27, wzr
00005774 str      x6, [x1]
00005778 tbnz     w21, #0x1f, #0x57a8
0000577c mov      w8, #0x7fffffff
00005780 sub      w10, w8, w21
00005784 cmp      w27, w10
00005788 b.le     #0x57a4
0000578c adrp     x27, #0xa000
00005790 mov      w9, #0x4b
00005794 mov      w6, #-1
00005798 mov      w21, w6
0000579c str      w9, [x27, #0x2d0]
000057a0 b        #0x57a8
000057a4 add      w21, w27, w21
000057a8 ldr      x24, [sp, #0x58]
000057ac ldrb     w8, [x24]
000057b0 cbnz     w8, #0x5044
000057b4 ldr      x28, [sp, #0x28]
000057b8 cbnz     x23, #0x57dc
000057bc ldr      w4, [sp, #0x3c]
000057c0 cbz      w4, #0x586c
000057c4 ldr      x24, [sp, #0x18]
000057c8 mov      w19, #1
000057cc add      x21, x24, #0x10
000057d0 b        #0x5828
000057d4 mov      w25, #-1
000057d8 mov      w21, w25
000057dc adrp     x20, #0xa000
000057e0 ldur     x23, [x29, #-0x58]
000057e4 ldr      x20, [x20]
000057e8 sub      x20, x20, x23
000057ec cbnz     x20, #0x58a0
000057f0 mov      w0, w21
000057f4 ldp      x29, x30, [sp, #0xf0]
000057f8 ldp      x20, x19, [sp, #0xe0]
000057fc ldp      x22, x21, [sp, #0xd0]
00005800 ldp      x24, x23, [sp, #0xc0]
00005804 ldp      x26, x25, [sp, #0xb0]
00005808 ldp      x28, x27, [sp, #0xa0]
0000580c add      sp, sp, #0x100
00005810 ret      
00005814 ldr      x2, [sp, #0x30]
00005818 mov      x0, x21
0000581c bl       #0x58fc
00005820 add      x19, x19, #1
00005824 add      x21, x21, #0x10
00005828 cmp      x19, #9
0000582c b.gt     #0x5838
00005830 ldr      w1, [x28, x19, lsl #2]
00005834 cbnz     w1, #0x5814
00005838 cmp      x19, #9
0000583c b.gt     #0x5880
00005840 ldr      w5, [x28, x19, lsl #2]
00005844 add      x19, x19, #1
00005848 mov      w21, #-1
0000584c cbz      w5, #0x5838
00005850 b        #0x57dc
00005854 mov      w1, #-1
00005858 mov      w21, w1
0000585c b        #0x57dc
00005860 mov      w28, #-1
00005864 mov      w21, w28
00005868 b        #0x57dc
0000586c mov      w21, wzr
00005870 b        #0x57dc
00005874 mov      w7, #-1
00005878 mov      w21, w7
0000587c b        #0x57dc
00005880 mov      w21, #1
00005884 b        #0x57dc
00005888 mov      w19, #-1
0000588c mov      w21, w19
00005890 b        #0x57dc
00005894 mov      w26, #-1
00005898 mov      w21, w26
0000589c b        #0x57dc
000058a0 bl       #0x10d8
000058a4 mov      x8, x0
000058a8 ldrb     w9, [x8]
000058ac tbnz     w9, #5, #0x58c0
000058b0 mov      x0, x1
000058b4 mov      x1, x2
000058b8 mov      x2, x8
000058bc b        #0x5dd8
000058c0 ret      
000058c4 mov      x8, x0
000058c8 mov      w0, wzr
000058cc mov      w9, #0xa
000058d0 ldr      x11, [x8]
000058d4 add      x10, x11, #1
000058d8 b        #0x58e8
000058dc madd     w0, w0, w9, w11
000058e0 str      x10, [x8]
000058e4 add      x10, x10, #1
000058e8 ldurb    w12, [x10, #-1]
000058ec sub      w11, w12, #0x30
000058f0 cmp      w11, #9
000058f4 b.ls     #0x58dc
000058f8 ret      
000058fc cmp      w1, #0x16
00005900 b.ls     #0x5908
00005904 ret      
00005908 sub      w12, w1, #9
0000590c cmp      w12, #9
00005910 b.hi     #0x5904
00005914 adrp     x13, #0x9000
00005918 add      x13, x13, #0xd8
0000591c ldr      x8, [x13, x12, lsl #3]
00005920 br       x8
00005924 ldrsw    x8, [x2, #0x18]
00005928 tbz      w8, #0x1f, #0x593c
0000592c add      w9, w8, #8
00005930 cmp      w9, #0
00005934 str      w9, [x2, #0x18]
00005938 b.le     #0x5b04
0000593c ldr      x1, [x2]
00005940 add      x14, x1, #8
00005944 str      x14, [x2]
00005948 ldr      x10, [x1]
0000594c str      x10, [x0]
00005950 ret      
00005954 ldrsw    x9, [x2, #0x18]
00005958 tbz      w9, #0x1f, #0x596c
0000595c add      w8, w9, #8
00005960 cmp      w8, #0
00005964 str      w8, [x2, #0x18]
00005968 b.le     #0x5b10
0000596c ldr      x3, [x2]
00005970 add      x15, x3, #8
00005974 str      x15, [x2]
00005978 ldrsw    x12, [x3]
0000597c str      x12, [x0]
00005980 ret      
00005984 ldrsw    x10, [x2, #0x18]
00005988 tbz      w10, #0x1f, #0x599c
0000598c add      w11, w10, #8
00005990 cmp      w11, #0
00005994 str      w11, [x2, #0x18]
00005998 b.le     #0x5b1c
0000599c ldr      x4, [x2]
000059a0 add      x16, x4, #8
000059a4 str      x16, [x2]
000059a8 ldr      w14, [x4]
000059ac str      x14, [x0]
000059b0 ret      
000059b4 ldrsw    x13, [x2, #0x18]
000059b8 tbz      w13, #0x1f, #0x59cc
000059bc add      w12, w13, #8
000059c0 cmp      w12, #0
000059c4 str      w12, [x2, #0x18]
000059c8 b.le     #0x5b28
000059cc ldr      x7, [x2]
000059d0 add      x3, x7, #8
000059d4 str      x3, [x2]
000059d8 ldr      x3, [x7]
000059dc str      x3, [x0]
000059e0 ret      
000059e4 ldrsw    x11, [x2, #0x18]
000059e8 tbz      w11, #0x1f, #0x59fc
000059ec add      w10, w11, #8
000059f0 cmp      w10, #0
000059f4 str      w10, [x2, #0x18]
000059f8 b.le     #0x5b34
000059fc ldr      x5, [x2]
00005a00 add      x17, x5, #8
00005a04 str      x17, [x2]
00005a08 ldr      x16, [x5]
00005a0c str      x16, [x0]
00005a10 ret      
00005a14 ldrsw    x12, [x2, #0x18]
00005a18 tbz      w12, #0x1f, #0x5a2c
00005a1c add      w13, w12, #8
00005a20 cmp      w13, #0
00005a24 str      w13, [x2, #0x18]
00005a28 b.le     #0x5b40
00005a2c ldr      x6, [x2]
00005a30 add      x1, x6, #8
00005a34 str      x1, [x2]
00005a38 ldr      x1, [x6]
00005a3c str      x1, [x0]
00005a40 ret      
00005a44 ldrsw    x14, [x2, #0x18]
00005a48 tbz      w14, #0x1f, #0x5a5c
00005a4c add      w15, w14, #8
00005a50 cmp      w15, #0
00005a54 str      w15, [x2, #0x18]
00005a58 b.le     #0x5b4c
00005a5c ldr      x8, [x2]
00005a60 add      x4, x8, #8
00005a64 str      x4, [x2]
00005a68 ldrsh    x5, [x8]
00005a6c str      x5, [x0]
00005a70 ret      
00005a74 ldrsw    x15, [x2, #0x18]
00005a78 tbz      w15, #0x1f, #0x5a8c
00005a7c add      w14, w15, #8
00005a80 cmp      w14, #0
00005a84 str      w14, [x2, #0x18]
00005a88 b.le     #0x5b58
00005a8c ldr      x9, [x2]
00005a90 add      x5, x9, #8
00005a94 str      x5, [x2]
00005a98 ldrh     w7, [x9]
00005a9c str      x7, [x0]
00005aa0 ret      
00005aa4 ldrsw    x16, [x2, #0x18]
00005aa8 tbz      w16, #0x1f, #0x5abc
00005aac add      w17, w16, #8
00005ab0 cmp      w17, #0
00005ab4 str      w17, [x2, #0x18]
00005ab8 b.le     #0x5b64
00005abc ldr      x10, [x2]
00005ac0 add      x6, x10, #8
00005ac4 str      x6, [x2]
00005ac8 ldrsb    x9, [x10]
00005acc str      x9, [x0]
00005ad0 ret      
00005ad4 ldrsw    x17, [x2, #0x18]
00005ad8 tbz      w17, #0x1f, #0x5aec
00005adc add      w16, w17, #8
00005ae0 cmp      w16, #0
00005ae4 str      w16, [x2, #0x18]
00005ae8 b.le     #0x5b70
00005aec ldr      x11, [x2]
00005af0 add      x7, x11, #8
00005af4 str      x7, [x2]
00005af8 ldrb     w11, [x11]
00005afc str      x11, [x0]
00005b00 ret      
00005b04 ldr      x9, [x2, #8]
00005b08 add      x1, x9, x8
00005b0c b        #0x5948
00005b10 ldr      x11, [x2, #8]
00005b14 add      x3, x11, x9
00005b18 b        #0x5978
00005b1c ldr      x13, [x2, #8]
00005b20 add      x4, x13, x10
00005b24 b        #0x59a8
00005b28 ldr      x2, [x2, #8]
00005b2c add      x7, x2, x13
00005b30 b        #0x59d8
00005b34 ldr      x15, [x2, #8]
00005b38 add      x5, x15, x11
00005b3c b        #0x5a08
00005b40 ldr      x17, [x2, #8]
00005b44 add      x6, x17, x12
00005b48 b        #0x5a38
00005b4c ldr      x4, [x2, #8]
00005b50 add      x8, x4, x14
00005b54 b        #0x5a68
00005b58 ldr      x6, [x2, #8]
00005b5c add      x9, x6, x15
00005b60 b        #0x5a98
00005b64 ldr      x8, [x2, #8]
00005b68 add      x10, x8, x16
00005b6c b        #0x5ac8
00005b70 ldr      x10, [x2, #8]
00005b74 add      x11, x10, x17
00005b78 b        #0x5af8
00005b7c sub      sp, sp, #0x150
00005b80 str      x28, [sp, #0x110]
00005b84 stp      x22, x21, [sp, #0x120]
00005b88 stp      x20, x19, [sp, #0x130]
00005b8c stp      x29, x30, [sp, #0x140]
00005b90 add      x29, sp, #0x140
00005b94 adrp     x8, #0xa000
00005b98 mov      w20, w3
00005b9c mov      w21, w2
00005ba0 ldr      x8, [x8]
00005ba4 mov      x19, x0
00005ba8 subs     w22, w21, w20
00005bac stur     x8, [x29, #-0x38]
00005bb0 b.le     #0x5c38
00005bb4 mov      w8, #0x2000
00005bb8 movk     w8, #1, lsl #16
00005bbc and      w9, w4, w8
00005bc0 cbnz     w9, #0x5c38
00005bc4 sxtw     x9, w22
00005bc8 cmp      x9, #0x100
00005bcc mov      w8, #0x100
00005bd0 and      w1, w1, #0xff
00005bd4 csel     x2, x9, x8, lo
00005bd8 add      x0, sp, #8
00005bdc bl       #0x4c40
00005be0 sub      w8, w20, #1
00005be4 sub      w9, w8, w21
00005be8 mov      w10, #-0x100
00005bec cmn      w9, #0x100
00005bf0 csel     w11, w9, w10, hi
00005bf4 add      w10, w11, w21
00005bf8 add      w11, w10, #0x100
00005bfc sub      w12, w11, w20
00005c00 and      w20, w12, #0xffffff00
00005c04 mov      w21, w22
00005c08 b        #0x5c1c
00005c0c add      x1, sp, #8
00005c10 mov      w2, #0x100
00005c14 mov      x0, x19
00005c18 bl       #0x58a4
00005c1c subs     w21, w21, #0x100
00005c20 b.hs     #0x5c0c
00005c24 sub      w9, w22, w20
00005c28 add      x1, sp, #8
00005c2c mov      x0, x19
00005c30 sxtw     x2, w9
00005c34 bl       #0x58a4
00005c38 adrp     x11, #0xa000
00005c3c ldur     x10, [x29, #-0x38]
00005c40 ldr      x11, [x11]
00005c44 sub      x11, x11, x10
00005c48 cbnz     x11, #0x5c64
00005c4c ldp      x29, x30, [sp, #0x140]
00005c50 ldp      x20, x19, [sp, #0x130]
00005c54 ldp      x22, x21, [sp, #0x120]
00005c58 ldr      x28, [sp, #0x110]
00005c5c add      sp, sp, #0x150
00005c60 ret      
00005c64 bl       #0x10d8
00005c68 and      w8, w1, #0xff
00005c6c b        #0x5c78
00005c70 add      x0, x0, #1
00005c74 sub      x2, x2, #1
00005c78 cbz      x2, #0x5c94
00005c7c and      x9, x0, #7
00005c80 cbz      x9, #0x5c94
00005c84 ldrb     w9, [x0]
00005c88 cmp      w9, w1, uxtb
00005c8c b.ne     #0x5c70
00005c90 b        #0x5c98
00005c94 cbz      x2, #0x5cfc
00005c98 ldrb     w10, [x0]
00005c9c cmp      w10, w1, uxtb
00005ca0 b.eq     #0x5cfc
00005ca4 mov      x11, #0x101010101010101
00005ca8 mov      x9, #-0x101010101010102
00005cac mul      x8, x8, x11
00005cb0 movk     x9, #0xfeff
00005cb4 b        #0x5cc0
00005cb8 add      x0, x0, #8
00005cbc mov      x2, x10
00005cc0 subs     x10, x2, #8
00005cc4 b.lo     #0x5cf8
00005cc8 ldr      x12, [x0]
00005ccc eor      x13, x12, x8
00005cd0 add      x14, x13, x9
00005cd4 bic      x15, x14, x13
00005cd8 and      x11, x15, #0x8080808080808080
00005cdc cbz      x11, #0x5cb8
00005ce0 b        #0x5cf8
00005ce4 ldrb     w8, [x0]
00005ce8 cmp      w8, w1, uxtb
00005cec b.eq     #0x5cfc
00005cf0 add      x0, x0, #1
00005cf4 sub      x2, x2, #1
00005cf8 cbnz     x2, #0x5ce4
00005cfc cmp      x2, #0
00005d00 csel     x0, x0, xzr, ne
00005d04 ret      
00005d08 str      x19, [sp, #-0x20]!
00005d0c stp      x29, x30, [sp, #0x10]
00005d10 add      x29, sp, #0x10
00005d14 mov      x19, x0
00005d18 eor      w8, w1, w19
00005d1c and      x9, x8, #7
00005d20 cbnz     x9, #0x5db8
00005d24 b        #0x5d34
00005d28 sub      x2, x2, #1
00005d2c add      x1, x1, #1
00005d30 add      x19, x19, #1
00005d34 cbz      x2, #0x5d50
00005d38 and      x10, x1, #7
00005d3c cbz      x10, #0x5d50
00005d40 ldrb     w8, [x1]
00005d44 strb     w8, [x19]
00005d48 cbnz     w8, #0x5d28
00005d4c b        #0x5d54
00005d50 cbz      x2, #0x5dbc
00005d54 ldrb     w9, [x1]
00005d58 cbz      w9, #0x5dbc
00005d5c mov      x9, #-0x101010101010102
00005d60 mov      x8, xzr
00005d64 movk     x9, #0xfeff
00005d68 b        #0x5d8c
00005d6c ldr      x11, [x1, x8]
00005d70 add      x12, x11, x9
00005d74 bic      x13, x12, x11
00005d78 and      x12, x13, #0x8080808080808080
00005d7c cbnz     x12, #0x5d94
00005d80 str      x11, [x19, x8]
00005d84 add      x8, x8, #8
00005d88 mov      x2, x10
00005d8c subs     x10, x2, #8
00005d90 b.hs     #0x5d6c
00005d94 add      x19, x19, x8
00005d98 add      x1, x1, x8
00005d9c b        #0x5db8
00005da0 ldrb     w10, [x1]
00005da4 strb     w10, [x19]
00005da8 cbz      w10, #0x5dbc
00005dac sub      x2, x2, #1
00005db0 add      x1, x1, #1
00005db4 add      x19, x19, #1
00005db8 cbnz     x2, #0x5da0
00005dbc mov      x0, x19
00005dc0 mov      w1, wzr
00005dc4 bl       #0x4c40
00005dc8 ldp      x29, x30, [sp, #0x10]
00005dcc mov      x0, x19
00005dd0 ldr      x19, [sp], #0x20
00005dd4 ret      
00005dd8 stp      x24, x23, [sp, #-0x40]!
00005ddc stp      x22, x21, [sp, #0x10]
00005de0 stp      x20, x19, [sp, #0x20]
00005de4 stp      x29, x30, [sp, #0x30]
00005de8 add      x29, sp, #0x30
00005dec mov      x19, x2
00005df0 mov      x20, x1
00005df4 mov      x21, x0
00005df8 ldr      x8, [x19, #0x20]
00005dfc cbz      x8, #0x5e9c
00005e00 ldr      x0, [x19, #0x28]
00005e04 sub      x9, x8, x0
00005e08 cmp      x9, x20
00005e0c b.hs     #0x5e34
00005e10 mov      x0, x19
00005e14 ldr      x3, [x19, #0x48]
00005e18 mov      x1, x21
00005e1c mov      x2, x20
00005e20 ldp      x29, x30, [sp, #0x30]
00005e24 ldp      x20, x19, [sp, #0x20]
00005e28 ldp      x22, x21, [sp, #0x10]
00005e2c ldp      x24, x23, [sp], #0x40
00005e30 br       x3
00005e34 ldrsb    w8, [x19, #0x8b]
00005e38 tbnz     w8, #0x1f, #0x5eb0
00005e3c mov      x23, xzr
00005e40 add      x24, x21, x20
00005e44 mov      x8, x20
00005e48 cbz      x8, #0x5eb0
00005e4c add      x9, x24, x23
00005e50 sub      x8, x8, #1
00005e54 sub      x23, x23, #1
00005e58 ldurb    w9, [x9, #-1]
00005e5c cmp      w9, #0xa
00005e60 b.ne     #0x5e48
00005e64 add      x11, x20, x23
00005e68 ldr      x10, [x19, #0x48]
00005e6c add      x22, x11, #1
00005e70 mov      x0, x19
00005e74 mov      x1, x21
00005e78 mov      x2, x22
00005e7c blr      x10
00005e80 cmp      x0, x22
00005e84 b.lo     #0x5ed0
00005e88 add      x10, x24, x23
00005e8c ldr      x0, [x19, #0x28]
00005e90 add      x21, x10, #1
00005e94 mvn      x20, x23
00005e98 b        #0x5eb4
00005e9c mov      x0, x19
00005ea0 bl       #0x5eec
00005ea4 cbz      w0, #0x5ee4
00005ea8 mov      x0, xzr
00005eac b        #0x5ed0
00005eb0 mov      x22, xzr
00005eb4 mov      x1, x21
00005eb8 mov      x2, x20
00005ebc bl       #0x464c
00005ec0 ldr      x11, [x19, #0x28]
00005ec4 add      x0, x22, x20
00005ec8 add      x12, x11, x20
00005ecc str      x12, [x19, #0x28]
00005ed0 ldp      x29, x30, [sp, #0x30]
00005ed4 ldp      x20, x19, [sp, #0x20]
00005ed8 ldp      x22, x21, [sp, #0x10]
00005edc ldp      x24, x23, [sp], #0x40
00005ee0 ret      
00005ee4 ldr      x8, [x19, #0x20]
00005ee8 b        #0x5e00
00005eec ldrsb    w8, [x0, #0x8a]
00005ef0 ldr      w9, [x0]
00005ef4 add      w10, w8, #0xff
00005ef8 orr      w10, w10, w8
00005efc strb     w10, [x0, #0x8a]
00005f00 tbnz     w9, #3, #0x5f20
00005f04 ldp      x9, x10, [x0, #0x58]
00005f08 mov      w8, wzr
00005f0c stp      xzr, xzr, [x0, #8]
00005f10 add      x11, x9, x10
00005f14 str      x9, [x0, #0x38]
00005f18 stp      x11, x9, [x0, #0x20]
00005f1c b        #0x5f2c
00005f20 orr      w9, w9, #0x20
00005f24 mov      w8, #-1
00005f28 str      w9, [x0]
00005f2c mov      w0, w8
00005f30 ret      
00005f34 udf      #0
00005f38 ldr      x0, #0x6058
00005f3c str      xzr, [x0]
00005f40 bl       #0x7b84
00005f44 dsb      sy
00005f48 isb      
00005f4c ldr      x0, #0x6060
00005f50 ldr      x2, #0x6068
00005f54 mov      x3, #8
00005f58 smc      #0
00005f5c cmp      w0, #0
00005f60 b.gt     #0x5f58
00005f64 cmp      w0, #0
00005f68 b.ne     #0x5f84
00005f6c ldr      x0, #0x6070
00005f70 bl       #0x7b7c
00005f74 dsb      sy
00005f78 isb      
00005f7c ldr      x1, #0x6078
00005f80 ldr      x0, [x1]
00005f84 ldp      x29, x30, [sp], #0x10
00005f88 ret      
00005f8c ldr      x0, #0x6080
00005f90 str      xzr, [x0]
00005f94 bl       #0x7b84
00005f98 dsb      sy
00005f9c isb      
00005fa0 ldr      x0, #0x6088
00005fa4 mov      x1, #0x22
00005fa8 ldr      x2, #0x6090
00005fac mov      x3, #8
00005fb0 smc      #0
00005fb4 cmp      w0, #0
00005fb8 b.gt     #0x5fb0
00005fbc cmp      w0, #0
00005fc0 b.ne     #0x5fdc
00005fc4 ldr      x0, #0x6098
00005fc8 bl       #0x7b7c
00005fcc dsb      sy
00005fd0 isb      
00005fd4 ldr      x1, #0x60a0
00005fd8 ldr      x0, [x1]
00005fdc ldp      x29, x30, [sp], #0x10
00005fe0 ret      
00005fe4 stp      x29, x30, [sp, #-0x10]!
00005fe8 mov      x29, sp
00005fec ldr      x0, #0x60a8
00005ff0 ldr      x0, [x0]
00005ff4 adr      x1, #0x6000
00005ff8 ldr      x2, [x1, x0]
00005ffc br       x2
00006000 udf      #0x6018
00006004 udf      #0
00006008 udf      #0x5f38
0000600c udf      #0
00006010 udf      #0x5f8c
00006014 udf      #0
00006018 ldr      x0, #0x60b0
0000601c mov      x1, #1
00006020 ldr      x2, #0x60b8
00006024 smc      #0
00006028 cmp      w0, #0
0000602c b.gt     #0x6024
00006030 cmp      w0, #0
00006034 ldr      x1, #0x60c0
00006038 b.ne     #0x6048
0000603c mov      x0, #0x10
00006040 str      x0, [x1]
00006044 b        #0x5f8c
00006048 mov      x0, #8
0000604c str      x0, [x1]
00006050 b        #0x5f38
00006054 nop      
00006058 udf      #0xa280
0000605c udf      #0
00006060 .byte    0x02, 0x12, 0x80, 0x02
00006064 udf      #0
00006068 udf      #0xa280
0000606c udf      #0
00006070 udf      #0xa280
00006074 udf      #0
00006078 udf      #0xa280
0000607c udf      #0
00006080 udf      #0xa280
00006084 udf      #0
00006088 .byte    0x01, 0x0a, 0x00, 0x02
0000608c udf      #0
00006090 udf      #0xa280
00006094 udf      #0
00006098 udf      #0xa280
0000609c udf      #0
000060a0 udf      #0xa280
000060a4 udf      #0
000060a8 udf      #0xa288
000060ac udf      #0
000060b0 .byte    0x01, 0x06, 0x00, 0x02
000060b4 udf      #0
000060b8 .byte    0x02, 0x06, 0x00, 0x02
000060bc udf      #0
000060c0 udf      #0xa288
000060c4 udf      #0
000060c8 stp      x20, x19, [sp, #-0x20]!
000060cc stp      x29, x30, [sp, #0x10]
000060d0 add      x29, sp, #0x10
000060d4 mov      x19, x1
000060d8 mov      w20, w0
000060dc bl       #0x60fc
000060e0 mov      x8, x0
000060e4 ldp      x29, x30, [sp, #0x10]
000060e8 mov      w0, w20
000060ec ldr      x2, [x8, #8]
000060f0 mov      x1, x19
000060f4 ldp      x20, x19, [sp], #0x20
000060f8 br       x2
000060fc sub      sp, sp, #0x40
00006100 str      x19, [sp, #0x20]
00006104 stp      x29, x30, [sp, #0x30]
00006108 add      x29, sp, #0x30
0000610c adrp     x8, #0xa000
00006110 adrp     x9, #0xa000
00006114 ldr      x8, [x8]
00006118 str      x8, [sp, #0x18]
0000611c ldr      x0, [x9, #0x2d8]
00006120 cbnz     x0, #0x6174
00006124 adrp     x10, #0x9000
00006128 add      x10, x10, #0x444
0000612c adrp     x11, #0xa000
00006130 adrp     x19, #0xa000
00006134 ldp      w8, w9, [x10, #8]
00006138 add      x19, x19, #0x2d8
0000613c ldr      x12, [x11, #0x2b8]
00006140 add      x0, sp, #8
00006144 ldp      w11, w10, [x10]
00006148 mov      x1, xzr
0000614c str      w9, [sp, #0x14]
00006150 mov      x2, x19
00006154 ldr      x9, [x12, #0x140]
00006158 stp      w10, w8, [sp, #0xc]
0000615c str      w11, [sp, #8]
00006160 blr      x9
00006164 mov      x8, x0
00006168 ldr      x0, [x19]
0000616c cbnz     x8, #0x6198
00006170 cbz      x0, #0x6198
00006174 adrp     x13, #0xa000
00006178 ldr      x10, [sp, #0x18]
0000617c ldr      x13, [x13]
00006180 sub      x11, x13, x10
00006184 cbnz     x11, #0x61b4
00006188 ldp      x29, x30, [sp, #0x30]
0000618c ldr      x19, [sp, #0x20]
00006190 add      sp, sp, #0x40
00006194 ret      
00006198 adrp     x0, #0x9000
0000619c adrp     x2, #0x9000
000061a0 add      x0, x0, #0x3dd
000061a4 add      x2, x2, #0x3ec
000061a8 mov      w1, #0x1f
000061ac bl       #0x3b54
000061b0 b        #0x61b0
000061b4 bl       #0x10d8
000061b8 str      x19, [sp, #-0x20]!
000061bc stp      x29, x30, [sp, #0x10]
000061c0 add      x29, sp, #0x10
000061c4 mov      w19, w0
000061c8 bl       #0x60fc
000061cc ldr      x8, [x0, #0x10]
000061d0 mov      w0, w19
000061d4 blr      x8
000061d8 cbz      x0, #0x61e0
000061dc ldr      x0, [x0, #0x38]
000061e0 ldp      x29, x30, [sp, #0x10]
000061e4 ldr      x19, [sp], #0x20
000061e8 ret      
000061ec stp      x22, x21, [sp, #-0x30]!
000061f0 stp      x20, x19, [sp, #0x10]
000061f4 stp      x29, x30, [sp, #0x20]
000061f8 add      x29, sp, #0x20
000061fc mov      x19, x3
00006200 mov      x20, x2
00006204 mov      x21, x1
00006208 mov      w22, w0
0000620c bl       #0x60fc
00006210 ldr      x8, [x0, #0x20]
00006214 mov      w0, w22
00006218 mov      x1, x21
0000621c mov      x2, x20
00006220 mov      x3, x19
00006224 blr      x8
00006228 cmp      x0, #0
0000622c csel     x0, xzr, x19, lt
00006230 ldp      x29, x30, [sp, #0x20]
00006234 ldp      x20, x19, [sp, #0x10]
00006238 ldp      x22, x21, [sp], #0x30
0000623c ret      
00006240 stp      x22, x21, [sp, #-0x30]!
00006244 stp      x20, x19, [sp, #0x10]
00006248 stp      x29, x30, [sp, #0x20]
0000624c add      x29, sp, #0x20
00006250 mov      x19, x3
00006254 mov      x20, x2
00006258 mov      x21, x1
0000625c mov      w22, w0
00006260 bl       #0x60fc
00006264 ldr      x8, [x0, #0x28]
00006268 mov      w0, w22
0000626c mov      x1, x21
00006270 mov      x2, x20
00006274 mov      x3, x19
00006278 blr      x8
0000627c cmp      x0, #0
00006280 csel     x0, xzr, x19, lt
00006284 ldp      x29, x30, [sp, #0x20]
00006288 ldp      x20, x19, [sp, #0x10]
0000628c ldp      x22, x21, [sp], #0x30
00006290 ret      
00006294 stp      x29, x30, [sp, #-0x10]!
00006298 mov      x29, sp
0000629c bl       #0x62b8
000062a0 ldr      x8, [x0, #8]
000062a4 blr      x8
000062a8 cbz      x0, #0x62b0
000062ac ldr      w0, [x0]
000062b0 ldp      x29, x30, [sp], #0x10
000062b4 ret      
000062b8 sub      sp, sp, #0x40
000062bc str      x19, [sp, #0x20]
000062c0 stp      x29, x30, [sp, #0x30]
000062c4 add      x29, sp, #0x30
000062c8 adrp     x8, #0xa000
000062cc adrp     x9, #0xa000
000062d0 ldr      x8, [x8]
000062d4 str      x8, [sp, #0x18]
000062d8 ldr      x0, [x9, #0x2e0]
000062dc cbnz     x0, #0x6330
000062e0 adrp     x10, #0x9000
000062e4 add      x10, x10, #0x49c
000062e8 adrp     x11, #0xa000
000062ec adrp     x19, #0xa000
000062f0 ldp      w8, w9, [x10, #8]
000062f4 add      x19, x19, #0x2e0
000062f8 ldr      x12, [x11, #0x2b8]
000062fc add      x0, sp, #8
00006300 ldp      w11, w10, [x10]
00006304 mov      x1, xzr
00006308 str      w9, [sp, #0x14]
0000630c mov      x2, x19
00006310 ldr      x9, [x12, #0x140]
00006314 stp      w10, w8, [sp, #0xc]
00006318 str      w11, [sp, #8]
0000631c blr      x9
00006320 mov      x8, x0
00006324 ldr      x0, [x19]
00006328 cbnz     x8, #0x6354
0000632c cbz      x0, #0x6354
00006330 adrp     x13, #0xa000
00006334 ldr      x10, [sp, #0x18]
00006338 ldr      x13, [x13]
0000633c sub      x11, x13, x10
00006340 cbnz     x11, #0x6370
00006344 ldp      x29, x30, [sp, #0x30]
00006348 ldr      x19, [sp, #0x20]
0000634c add      sp, sp, #0x40
00006350 ret      
00006354 adrp     x0, #0x9000
00006358 adrp     x2, #0x9000
0000635c add      x0, x0, #0x48d
00006360 add      x2, x2, #0x3ec
00006364 mov      w1, #0x18
00006368 bl       #0x3b54
0000636c b        #0x636c
00006370 bl       #0x10d8
00006374 str      x19, [sp, #-0x20]!
00006378 stp      x29, x30, [sp, #0x10]
0000637c add      x29, sp, #0x10
00006380 adrp     x19, #0xa000
00006384 ldr      x9, [x19, #0x2e8]
00006388 cbz      x9, #0x6398
0000638c ldp      x29, x30, [sp, #0x10]
00006390 ldr      x19, [sp], #0x20
00006394 ret      
00006398 adrp     x9, #0xa000
0000639c ldr      x8, [x9, #0x2b8]
000063a0 cbz      x8, #0x638c
000063a4 ldr      x8, [x8, #0x140]
000063a8 cbz      x8, #0x638c
000063ac adrp     x0, #0xa000
000063b0 adrp     x2, #0xa000
000063b4 add      x0, x0, #0x68
000063b8 add      x2, x2, #0x2e8
000063bc mov      x1, xzr
000063c0 blr      x8
000063c4 tbz      x0, #0x3f, #0x638c
000063c8 str      xzr, [x19, #0x2e8]
000063cc b        #0x638c
000063d0 stp      x24, x23, [sp, #-0x40]!
000063d4 stp      x22, x21, [sp, #0x10]
000063d8 stp      x20, x19, [sp, #0x20]
000063dc stp      x29, x30, [sp, #0x30]
000063e0 add      x29, sp, #0x30
000063e4 mov      w22, w0
000063e8 mov      x19, x4
000063ec mov      x20, x3
000063f0 mov      w21, w2
000063f4 mov      w23, w1
000063f8 and      w24, w22, #0xff
000063fc cmp      w24, #1
00006400 b.ne     #0x6410
00006404 adrp     x9, #0x7000
00006408 ldrb     w8, [x9, #0xc2e]
0000640c tbnz     w8, #0, #0x6438
00006410 bl       #0x649c
00006414 cmp      w24, #2
00006418 b.ne     #0x6424
0000641c and      w8, w0, #0xff
00006420 cbnz     w8, #0x6438
00006424 bl       #0x64ac
00006428 cmp      w24, #3
0000642c b.ne     #0x6474
00006430 and      w9, w0, #0xff
00006434 cbz      w9, #0x6474
00006438 bl       #0x6374
0000643c adrp     x10, #0xa000
00006440 ldr      x8, [x10, #0x2e8]
00006444 cbz      x8, #0x6474
00006448 mov      w0, w22
0000644c ldr      x5, [x8]
00006450 mov      w2, w21
00006454 mov      x3, x20
00006458 mov      x4, x19
0000645c ldp      x29, x30, [sp, #0x30]
00006460 ldp      x20, x19, [sp, #0x20]
00006464 ldp      x22, x21, [sp, #0x10]
00006468 mov      w1, w23
0000646c ldp      x24, x23, [sp], #0x40
00006470 br       x5
00006474 ldp      x29, x30, [sp, #0x30]
00006478 ldp      x20, x19, [sp, #0x20]
0000647c ldp      x22, x21, [sp, #0x10]
00006480 mov      x0, #-0x7ffffffffffffffd
00006484 ldp      x24, x23, [sp], #0x40
00006488 ret      
0000648c adrp     x8, #0x7000
00006490 ldrb     w8, [x8, #0xc2e]
00006494 and      w0, w8, #1
00006498 ret      
0000649c adrp     x8, #0x7000
000064a0 ldrb     w8, [x8, #0xc2e]
000064a4 ubfx     w0, w8, #1, #1
000064a8 ret      
000064ac adrp     x8, #0x7000
000064b0 ldrb     w8, [x8, #0xc2e]
000064b4 ubfx     w0, w8, #2, #1
000064b8 ret      
000064bc adrp     x3, #0xa000
000064c0 add      x3, x3, #0x18
000064c4 mov      w2, wzr
000064c8 mov      x4, xzr
000064cc b        #0x63d0
000064d0 stp      x29, x30, [sp, #-0x10]!
000064d4 mov      x29, sp
000064d8 bl       #0x7b9c
000064dc mov      x8, x0
000064e0 cbz      x8, #0x6504
000064e4 ldr      x3, [x8, #0x10]
000064e8 adrp     x0, #0x9000
000064ec adrp     x2, #0xa000
000064f0 add      x0, x0, #0x4ac
000064f4 add      x2, x2, #0x2f0
000064f8 mov      w1, wzr
000064fc ldp      x29, x30, [sp], #0x10
00006500 br       x3
00006504 mov      x0, #-0x7ffffffffffffff9
00006508 ldp      x29, x30, [sp], #0x10
0000650c ret      
00006510 str      x21, [sp, #-0x30]!
00006514 stp      x20, x19, [sp, #0x10]
00006518 stp      x29, x30, [sp, #0x20]
0000651c add      x29, sp, #0x20
00006520 adrp     x21, #0xa000
00006524 mov      x19, x1
00006528 mov      x20, x0
0000652c ldr      x8, [x21, #0x2f0]
00006530 cbnz     x8, #0x6540
00006534 bl       #0x64d0
00006538 ldr      x8, [x21, #0x2f0]
0000653c cbz      x8, #0x655c
00006540 ldr      x2, [x8, #0x10]
00006544 mov      x0, x20
00006548 mov      x1, x19
0000654c ldp      x29, x30, [sp, #0x20]
00006550 ldp      x20, x19, [sp, #0x10]
00006554 ldr      x21, [sp], #0x30
00006558 br       x2
0000655c ldp      x29, x30, [sp, #0x20]
00006560 ldp      x20, x19, [sp, #0x10]
00006564 mov      x0, xzr
00006568 ldr      x21, [sp], #0x30
0000656c ret      
00006570 str      x21, [sp, #-0x30]!
00006574 stp      x20, x19, [sp, #0x10]
00006578 stp      x29, x30, [sp, #0x20]
0000657c add      x29, sp, #0x20
00006580 adrp     x21, #0xa000
00006584 mov      x19, x1
00006588 mov      x20, x0
0000658c ldr      x8, [x21, #0x2f0]
00006590 cbnz     x8, #0x65a0
00006594 bl       #0x64d0
00006598 ldr      x8, [x21, #0x2f0]
0000659c cbz      x8, #0x65bc
000065a0 ldr      x2, [x8, #0x30]
000065a4 mov      x0, x20
000065a8 mov      x1, x19
000065ac ldp      x29, x30, [sp, #0x20]
000065b0 ldp      x20, x19, [sp, #0x10]
000065b4 ldr      x21, [sp], #0x30
000065b8 br       x2
000065bc ldp      x29, x30, [sp, #0x20]
000065c0 ldp      x20, x19, [sp, #0x10]
000065c4 mov      x0, xzr
000065c8 ldr      x21, [sp], #0x30
000065cc ret      
000065d0 str      x19, [sp, #-0x20]!
000065d4 stp      x29, x30, [sp, #0x10]
000065d8 add      x29, sp, #0x10
000065dc adrp     x19, #0xa000
000065e0 ldr      x8, [x19, #0x2f0]
000065e4 cbnz     x8, #0x65f4
000065e8 bl       #0x64d0
000065ec ldr      x8, [x19, #0x2f0]
000065f0 cbz      x8, #0x6604
000065f4 ldr      x0, [x8, #0x28]
000065f8 ldp      x29, x30, [sp, #0x10]
000065fc ldr      x19, [sp], #0x20
00006600 br       x0
00006604 ldp      x29, x30, [sp, #0x10]
00006608 mov      x0, xzr
0000660c ldr      x19, [sp], #0x20
00006610 ret      
00006614 mov      w0, #3
00006618 mov      w1, #1
0000661c b        #0x6570
00006620 mov      x8, x0
00006624 and      x9, x8, #3
00006628 cbz      x9, #0x6654
0000662c stp      x29, x30, [sp, #-0x10]!
00006630 mov      x29, sp
00006634 adrp     x0, #0x9000
00006638 adrp     x2, #0x9000
0000663c add      x0, x0, #0x4bb
00006640 mov      w1, #0x21f
00006644 add      x2, x2, #0x4d9
00006648 bl       #0x3b54
0000664c ldp      x29, x30, [sp], #0x10
00006650 b        #0x6650
00006654 mov      w0, w1
00006658 str      w1, [x8]
0000665c ret      
00006660 sub      sp, sp, #0x30
00006664 stp      x29, x30, [sp, #0x20]
00006668 add      x29, sp, #0x20
0000666c mov      x8, x2
00006670 ldp      x10, x9, [x3, #0x10]
00006674 ldp      x12, x11, [x3]
00006678 mov      x4, sp
0000667c mov      x2, xzr
00006680 stp      x10, x9, [sp, #0x10]
00006684 mov      x3, x8
00006688 stp      x12, x11, [sp]
0000668c mov      x5, xzr
00006690 bl       #0x67a4
00006694 ldp      x29, x30, [sp, #0x20]
00006698 add      sp, sp, #0x30
0000669c ret      
000066a0 sub      sp, sp, #0x110
000066a4 str      x28, [sp, #0xf0]
000066a8 stp      x29, x30, [sp, #0x100]
000066ac add      x29, sp, #0x100
000066b0 mov      w11, #-0x80
000066b4 stp      q6, q7, [sp, #0x60]
000066b8 mov      w12, #-0x28
000066bc stp      q4, q5, [sp, #0x40]
000066c0 mov      x8, sp
000066c4 stp      q2, q3, [sp, #0x20]
000066c8 sub      x9, x29, #0x78
000066cc stp      q0, q1, [sp]
000066d0 stp      w12, w11, [x29, #-0x18]
000066d4 add      x8, x8, #0x80
000066d8 ldur     x11, [x29, #-0x18]
000066dc add      x9, x9, #0x28
000066e0 stur     x3, [x29, #-0x78]
000066e4 add      x10, x29, #0x10
000066e8 sub      x3, x29, #0x50
000066ec stp      x6, x7, [x29, #-0x60]
000066f0 stp      x4, x5, [x29, #-0x70]
000066f4 stp      x9, x8, [x29, #-0x28]
000066f8 stp      x9, x8, [x29, #-0x48]
000066fc stur     x10, [x29, #-0x50]
00006700 stp      x11, x10, [x29, #-0x38]
00006704 bl       #0x6660
00006708 ldp      x29, x30, [sp, #0x100]
0000670c ldr      x28, [sp, #0xf0]
00006710 add      sp, sp, #0x110
00006714 ret      
00006718 mov      x8, xzr
0000671c lsr      x9, x3, #8
00006720 b        #0x673c
00006724 cmp      x4, #1
00006728 strb     w3, [x0]
0000672c b.eq     #0x6734
00006730 strb     w9, [x0, #1]
00006734 add      x0, x0, x4
00006738 add      x8, x8, #1
0000673c cmp      x0, x1
00006740 ccmp     x8, x2, #0, lo
00006744 b.lt     #0x6724
00006748 ret      
0000674c str      x21, [sp, #-0x30]!
00006750 stp      x20, x19, [sp, #0x10]
00006754 stp      x29, x30, [sp, #0x20]
00006758 add      x29, sp, #0x20
0000675c adrp     x21, #0x9000
00006760 mov      x20, x2
00006764 mov      x19, x0
00006768 mov      x0, x1
0000676c add      x21, x21, #0x6d8
00006770 strb     wzr, [x19]
00006774 add      x2, sp, #0xc
00006778 mov      w1, w20
0000677c bl       #0x7aa0
00006780 ldr      w8, [sp, #0xc]
00006784 ldrb     w8, [x21, x8]
00006788 strb     w8, [x19, #1]!
0000678c cbnz     x0, #0x6774
00006790 mov      x0, x19
00006794 ldp      x29, x30, [sp, #0x20]
00006798 ldp      x20, x19, [sp, #0x10]
0000679c ldr      x21, [sp], #0x30
000067a0 ret      
000067a4 sub      sp, sp, #0x150
000067a8 stp      x28, x27, [sp, #0xf0]
000067ac stp      x26, x25, [sp, #0x100]
000067b0 stp      x24, x23, [sp, #0x110]
000067b4 stp      x22, x21, [sp, #0x120]
000067b8 stp      x20, x19, [sp, #0x130]
000067bc stp      x29, x30, [sp, #0x140]
000067c0 add      x29, sp, #0x140
000067c4 adrp     x27, #0xa000
000067c8 mov      x21, x5
000067cc mov      x28, x1
000067d0 ldr      x27, [x27]
000067d4 mov      x20, x3
000067d8 mov      x17, x2
000067dc stur     x27, [x29, #-0x58]
000067e0 cbz      x28, #0x6808
000067e4 cbnz     x0, #0x682c
000067e8 tbnz     w17, #0xd, #0x682c
000067ec adrp     x0, #0x9000
000067f0 adrp     x2, #0x8000
000067f4 add      x0, x0, #0x91d
000067f8 mov      w1, #0x242
000067fc add      x2, x2, #0x87b
00006800 bl       #0x3b54
00006804 b        #0x6804
00006808 cbnz     x20, #0x6830
0000680c tbz      w17, #0xd, #0x6830
00006810 adrp     x0, #0x9000
00006814 adrp     x2, #0x9000
00006818 add      x0, x0, #0x91d
0000681c mov      w1, #0x24a
00006820 add      x2, x2, #0xac4
00006824 bl       #0x3b54
00006828 b        #0x6828
0000682c cbz      x20, #0x6810
00006830 tbnz     w17, #6, #0x6868
00006834 adrp     x13, #0x7000
00006838 mov      w30, #1
0000683c ldr      w12, [x13, #0xc30]
00006840 cbz      w12, #0x689c
00006844 cmp      x12, x28
00006848 b.hs     #0x689c
0000684c adrp     x0, #0x9000
00006850 adrp     x2, #0x9000
00006854 add      x0, x0, #0x91d
00006858 mov      w1, #0x258
0000685c add      x2, x2, #0x996
00006860 bl       #0x3b54
00006864 b        #0x6864
00006868 adrp     x12, #0x7000
0000686c mov      w30, #2
00006870 ldr      w11, [x12, #0xc34]
00006874 cbz      w11, #0x689c
00006878 cmp      x11, x28
0000687c b.hs     #0x689c
00006880 adrp     x0, #0x9000
00006884 adrp     x2, #0x9000
00006888 add      x0, x0, #0x91d
0000688c mov      w1, #0x253
00006890 add      x2, x2, #0xadd
00006894 bl       #0x3b54
00006898 b        #0x6898
0000689c mov      x27, x0
000068a0 str      x4, [sp, #0x58]
000068a4 str      x30, [sp, #0x98]
000068a8 tbnz     w17, #8, #0x68f0
000068ac adrp     x15, #0x7000
000068b0 ldr      w25, [x15, #0xc30]
000068b4 cbz      w25, #0x6934
000068b8 add      w22, w25, #1
000068bc mov      x0, x20
000068c0 mov      x1, x22
000068c4 mov      x24, x17
000068c8 bl       #0x3d5c
000068cc cmp      x0, x25
000068d0 b.ls     #0x6954
000068d4 adrp     x0, #0x9000
000068d8 adrp     x2, #0x9000
000068dc add      x0, x0, #0x91d
000068e0 mov      w1, #0x269
000068e4 add      x2, x2, #0xbac
000068e8 bl       #0x3b54
000068ec b        #0x68ec
000068f0 adrp     x14, #0x7000
000068f4 ldr      w23, [x14, #0xc34]
000068f8 cbz      w23, #0x6944
000068fc add      w22, w23, #1
00006900 mov      x0, x20
00006904 mov      x1, x22
00006908 mov      x25, x17
0000690c bl       #0x3cf4
00006910 cmp      x0, x23
00006914 b.ls     #0x6980
00006918 adrp     x0, #0x9000
0000691c adrp     x2, #0x9000
00006920 add      x0, x0, #0x91d
00006924 mov      w1, #0x263
00006928 add      x2, x2, #0xb20
0000692c bl       #0x3b54
00006930 b        #0x6930
00006934 mov      w25, #0xff
00006938 mov      w23, #1
0000693c str      x25, [sp, #0x80]
00006940 b        #0x69a8
00006944 mov      w23, #0xffff
00006948 str      x23, [sp, #0x80]
0000694c mov      w23, #2
00006950 b        #0x69a8
00006954 mov      x0, x20
00006958 mov      x1, x22
0000695c bl       #0x3d5c
00006960 cmp      x0, x25
00006964 b.hi     #0x69b4
00006968 ldr      x30, [sp, #0x98]
0000696c mov      w16, #0xff
00006970 mov      w23, #1
00006974 mov      x17, x24
00006978 str      x16, [sp, #0x80]
0000697c b        #0x69a8
00006980 mov      x0, x20
00006984 mov      x1, x22
00006988 bl       #0x3cf4
0000698c cmp      x0, x23
00006990 b.hi     #0x69b4
00006994 mov      w19, #0xffff
00006998 ldr      x30, [sp, #0x98]
0000699c mov      w23, #2
000069a0 mov      x17, x25
000069a4 str      x19, [sp, #0x80]
000069a8 mov      x16, x27
000069ac tbnz     w17, #0xd, #0x69bc
000069b0 cbnz     x28, #0x69c0
000069b4 mov      x0, xzr
000069b8 b        #0x7958
000069bc cbz      x28, #0x69dc
000069c0 sub      x25, x28, #1
000069c4 str      x16, [sp, #0x48]
000069c8 cmp      x16, #0
000069cc madd     x13, x30, x25, x16
000069d0 csel     x7, xzr, x13, eq
000069d4 str      x7, [sp, #0xa0]
000069d8 b        #0x69e8
000069dc mov      x16, xzr
000069e0 str      xzr, [sp, #0x48]
000069e4 str      xzr, [sp, #0xa0]
000069e8 ldr      x26, [sp, #0x80]
000069ec cmp      x23, #1
000069f0 ldrb     w11, [x20]
000069f4 str      x21, [sp, #0x60]
000069f8 b.ne     #0x6a04
000069fc mov      w2, wzr
00006a00 b        #0x6a0c
00006a04 ldrb     w9, [x20, #1]
00006a08 lsl      w2, w9, #8
00006a0c adrp     x24, #0x9000
00006a10 mov      x4, xzr
00006a14 orr      w8, w2, w11
00006a18 add      x24, x24, #0x5c0
00006a1c mov      w19, #0xa
00006a20 lsl      x25, x23, #1
00006a24 b        #0x7908
00006a28 ldr      x28, [sp, #0xa0]
00006a2c cmp      x16, x28
00006a30 ldr      x28, [sp, #0x80]
00006a34 b.lo     #0x6a3c
00006a38 cbnz     x16, #0x7918
00006a3c mov      w8, #0x2140
00006a40 and      x17, x17, x8
00006a44 cmp      w9, #0xa
00006a48 b.eq     #0x6c74
00006a4c cmp      w9, #0xd
00006a50 b.eq     #0x6c90
00006a54 cmp      w9, #0x25
00006a58 b.ne     #0x6cac
00006a5c ldr      x8, [sp, #0x60]
00006a60 mov      x13, xzr
00006a64 mov      x22, xzr
00006a68 stur     x16, [x29, #-0x98]
00006a6c mov      w14, #1
00006a70 mov      w10, #1
00006a74 b        #0x6b64
00006a78 tbnz     w17, #0xb, #0x6af8
00006a7c orr      x17, x17, #0x200
00006a80 cbnz     x8, #0x6c64
00006a84 ldr      x21, [sp, #0x58]
00006a88 ldrsw    x16, [x21, #0x18]
00006a8c tbz      w16, #0x1f, #0x6ab4
00006a90 ldr      x19, [sp, #0x58]
00006a94 add      w8, w16, #8
00006a98 adrp     x24, #0x9000
00006a9c add      x24, x24, #0x5c0
00006aa0 cmp      w8, #0
00006aa4 str      w8, [x19, #0x18]
00006aa8 mov      w19, #0xa
00006aac ldr      x21, [sp, #0x58]
00006ab0 b.le     #0x6b44
00006ab4 ldr      x28, [x21]
00006ab8 add      x16, x28, #8
00006abc str      x16, [x21]
00006ac0 ldr      x13, [x28]
00006ac4 mov      x8, xzr
00006ac8 ldr      x28, [sp, #0x80]
00006acc mov      w10, #1
00006ad0 b        #0x6b64
00006ad4 mov      w15, #-1
00006ad8 eor      w5, w15, w17, lsr #6
00006adc and      x0, x5, #0x20
00006ae0 orr      x17, x0, x17
00006ae4 b        #0x6bb0
00006ae8 mov      x14, xzr
00006aec mov      w10, wzr
00006af0 mov      x20, x27
00006af4 b        #0x6b64
00006af8 cbnz     x8, #0x6c6c
00006afc ldr      x27, [sp, #0x58]
00006b00 mov      x12, x17
00006b04 mov      x1, x4
00006b08 ldrsw    x17, [x27, #0x18]
00006b0c tbz      w17, #0x1f, #0x6b20
00006b10 add      w10, w17, #8
00006b14 cmp      w10, #0
00006b18 str      w10, [x27, #0x18]
00006b1c b.le     #0x6b58
00006b20 ldr      x4, [x27]
00006b24 add      x17, x4, #8
00006b28 str      x17, [x27]
00006b2c ldr      x14, [x4]
00006b30 mov      x8, xzr
00006b34 mov      w10, #1
00006b38 mov      x4, x1
00006b3c mov      x17, x12
00006b40 b        #0x6b64
00006b44 mov      x15, x17
00006b48 ldr      x17, [x21, #8]
00006b4c add      x28, x17, x16
00006b50 mov      x17, x15
00006b54 b        #0x6ac0
00006b58 ldr      x4, [x27, #8]
00006b5c add      x4, x4, x17
00006b60 b        #0x6b2c
00006b64 mov      x27, x20
00006b68 tbz      w10, #0, #0x6cd8
00006b6c add      x20, x27, x23
00006b70 cmp      x23, #1
00006b74 ldrb     w16, [x20]
00006b78 b.ne     #0x6b84
00006b7c mov      w3, wzr
00006b80 b        #0x6b8c
00006b84 ldrb     w11, [x20, #1]
00006b88 lsl      w3, w11, #8
00006b8c orr      w15, w3, w16
00006b90 and      x9, x28, x15
00006b94 mov      w10, wzr
00006b98 sub      w21, w9, #0x2a
00006b9c cmp      w21, #0x22
00006ba0 stur     x9, [x29, #-0x88]
00006ba4 b.hi     #0x6c20
00006ba8 ldr      x16, [x24, x21, lsl #3]
00006bac br       x16
00006bb0 mov      x22, xzr
00006bb4 b        #0x6bec
00006bb8 madd     x22, x22, x19, x11
00006bbc ldrb     w9, [x25, x27]
00006bc0 cmp      x23, #1
00006bc4 b.ne     #0x6bd0
00006bc8 mov      w1, wzr
00006bcc b        #0x6bdc
00006bd0 add      x1, x25, x27
00006bd4 ldrb     w12, [x1, #1]
00006bd8 lsl      w1, w12, #8
00006bdc orr      w6, w1, w9
00006be0 and      x9, x28, x6
00006be4 add      x27, x27, x23
00006be8 stur     x9, [x29, #-0x88]
00006bec sub      x11, x9, #0x30
00006bf0 cmp      x11, #9
00006bf4 b.ls     #0x6bb8
00006bf8 and      x2, x17, #0x800
00006bfc tst      x17, #0x800
00006c00 lsr      x7, x2, #2
00006c04 eor      x3, x7, #0x200
00006c08 csel     x13, x22, x13, eq
00006c0c csel     x14, x14, x22, eq
00006c10 orr      x17, x3, x17
00006c14 mov      w10, #1
00006c18 mov      x20, x27
00006c1c b        #0x6b64
00006c20 cbz      w9, #0x6ae8
00006c24 cmp      w9, #0x20
00006c28 b.eq     #0x6c5c
00006c2c cmp      w9, #0x6c
00006c30 b.ne     #0x6b64
00006c34 orr      x17, x17, #0x10
00006c38 b        #0x6a70
00006c3c orr      x17, x17, #2
00006c40 b        #0x6a70
00006c44 orr      x17, x17, #8
00006c48 b        #0x6a70
00006c4c orr      x17, x17, #1
00006c50 b        #0x6a70
00006c54 orr      x17, x17, #0x800
00006c58 b        #0x6a70
00006c5c orr      x17, x17, #4
00006c60 b        #0x6a70
00006c64 ldr      x13, [x8], #8
00006c68 b        #0x6a70
00006c6c ldr      x14, [x8], #8
00006c70 b        #0x6a70
00006c74 add      x27, x20, x23
00006c78 mov      x2, x4
00006c7c cmp      x23, #1
00006c80 ldrb     w12, [x27]
00006c84 b.ne     #0x6d10
00006c88 mov      w6, wzr
00006c8c b        #0x6d18
00006c90 add      x27, x20, x23
00006c94 mov      x11, x17
00006c98 cmp      x23, #1
00006c9c ldrb     w13, [x27]
00006ca0 b.ne     #0x6d58
00006ca4 mov      w5, wzr
00006ca8 b        #0x6d60
00006cac mov      x22, xzr
00006cb0 str      xzr, [sp, #0x78]
00006cb4 mov      w26, wzr
00006cb8 str      wzr, [sp, #0x94]
00006cbc mov      w24, wzr
00006cc0 str      xzr, [sp, #0x88]
00006cc4 sub      x28, x29, #0x88
00006cc8 orr      x17, x17, #0x400
00006ccc mov      w14, #1
00006cd0 mov      x27, x20
00006cd4 b        #0x7500
00006cd8 sub      x10, x9, #0x61
00006cdc str      x13, [sp, #0x78]
00006ce0 cmp      x10, #0x17
00006ce4 b.hi     #0x6e00
00006ce8 adrp     x1, #0x9000
00006cec ldur     x16, [x29, #-0x98]
00006cf0 add      x1, x1, #0x500
00006cf4 mov      x19, x17
00006cf8 ldr      x28, [x1, x10, lsl #3]
00006cfc br       x28
00006d00 cbz      x8, #0x7214
00006d04 add      x28, x8, #8
00006d08 str      x28, [sp, #0x60]
00006d0c b        #0x7248
00006d10 ldrb     w4, [x27, #1]
00006d14 lsl      w6, w4, #8
00006d18 orr      w4, w6, w12
00006d1c and      x3, x28, x4
00006d20 cmp      x3, #0xd
00006d24 stur     x3, [x29, #-0x88]
00006d28 b.ne     #0x6da0
00006d2c adrp     x28, #0x9000
00006d30 str      xzr, [sp, #0x78]
00006d34 mov      x22, xzr
00006d38 str      wzr, [sp, #0x94]
00006d3c mov      w26, wzr
00006d40 str      xzr, [sp, #0x88]
00006d44 mov      w24, wzr
00006d48 add      x28, x28, #0xca5
00006d4c mov      w14, #1
00006d50 mov      x4, x2
00006d54 b        #0x7500
00006d58 ldrb     w0, [x27, #1]
00006d5c lsl      w5, w0, #8
00006d60 orr      w17, w5, w13
00006d64 and      x2, x28, x17
00006d68 cmp      x2, #0xa
00006d6c stur     x2, [x29, #-0x88]
00006d70 b.ne     #0x6dd0
00006d74 adrp     x28, #0x9000
00006d78 str      xzr, [sp, #0x78]
00006d7c mov      x22, xzr
00006d80 str      wzr, [sp, #0x94]
00006d84 mov      w26, wzr
00006d88 str      xzr, [sp, #0x88]
00006d8c mov      w24, wzr
00006d90 add      x28, x28, #0xca5
00006d94 mov      w14, #1
00006d98 mov      x17, x11
00006d9c b        #0x7500
00006da0 adrp     x28, #0x9000
00006da4 str      xzr, [sp, #0x78]
00006da8 mov      x22, xzr
00006dac str      wzr, [sp, #0x94]
00006db0 mov      w26, wzr
00006db4 str      xzr, [sp, #0x88]
00006db8 mov      w24, wzr
00006dbc add      x28, x28, #0xca5
00006dc0 mov      w14, #1
00006dc4 mov      x27, x20
00006dc8 mov      x4, x2
00006dcc b        #0x7500
00006dd0 adrp     x28, #0x9000
00006dd4 str      xzr, [sp, #0x78]
00006dd8 mov      x22, xzr
00006ddc str      wzr, [sp, #0x94]
00006de0 mov      w26, wzr
00006de4 str      xzr, [sp, #0x88]
00006de8 mov      w24, wzr
00006dec add      x28, x28, #0xca8
00006df0 mov      w14, #1
00006df4 mov      x27, x20
00006df8 mov      x17, x11
00006dfc b        #0x7500
00006e00 cmp      x9, #0xa
00006e04 b.eq     #0x7110
00006e08 ldur     x16, [x29, #-0x98]
00006e0c cmp      x9, #0xd
00006e10 b.eq     #0x7130
00006e14 cmp      x9, #0x53
00006e18 b.eq     #0x6e44
00006e1c cmp      x9, #0x58
00006e20 b.eq     #0x6ee4
00006e24 str      wzr, [sp, #0x94]
00006e28 mov      w26, wzr
00006e2c mov      w24, wzr
00006e30 str      xzr, [sp, #0x88]
00006e34 sub      x28, x29, #0x88
00006e38 str      x8, [sp, #0x60]
00006e3c orr      x17, x17, #0x400
00006e40 b        #0x7500
00006e44 orr      x17, x17, #0x400
00006e48 cbz      x8, #0x6e58
00006e4c mov      x9, x14
00006e50 add      x5, x8, #8
00006e54 b        #0x6e88
00006e58 ldr      x7, [sp, #0x58]
00006e5c ldrsw    x2, [x7, #0x18]
00006e60 tbz      w2, #0x1f, #0x6e74
00006e64 add      w13, w2, #8
00006e68 cmp      w13, #0
00006e6c str      w13, [x7, #0x18]
00006e70 b.le     #0x78a8
00006e74 ldr      x8, [x7]
00006e78 add      x10, x8, #8
00006e7c str      x10, [x7]
00006e80 mov      x9, x14
00006e84 mov      x5, xzr
00006e88 str      x5, [sp, #0x60]
00006e8c adrp     x14, #0x9000
00006e90 ldr      x11, [x8]
00006e94 and      x12, x17, #0xfffffffffffffbff
00006e98 add      x14, x14, #0xc2f
00006e9c cmp      x11, #0
00006ea0 csel     x17, x12, x17, eq
00006ea4 csel     x28, x14, x11, eq
00006ea8 tbnz     w17, #0xb, #0x6eb4
00006eac mov      x14, xzr
00006eb0 b        #0x7440
00006eb4 str      wzr, [sp, #0x94]
00006eb8 mov      w26, wzr
00006ebc mov      w24, wzr
00006ec0 str      xzr, [sp, #0x88]
00006ec4 mov      x14, x9
00006ec8 b        #0x7500
00006ecc cbz      x8, #0x726c
00006ed0 add      x6, x8, #8
00006ed4 b        #0x72a0
00006ed8 mov      x6, #-0x37
00006edc and      x3, x17, x6
00006ee0 orr      x17, x3, #0x10
00006ee4 orr      x17, x17, #0x20
00006ee8 orr      x17, x17, #0x80
00006eec mov      x15, #-0x4003
00006ef0 and      x0, x17, x15
00006ef4 orr      x5, x0, #0x4000
00006ef8 tst      x17, #0x80
00006efc csel     x19, x5, x17, eq
00006f00 tbnz     w19, #4, #0x6f10
00006f04 cbz      x8, #0x6f40
00006f08 ldrsw    x10, [x8], #8
00006f0c b        #0x6f18
00006f10 cbz      x8, #0x6f70
00006f14 ldr      x10, [x8], #8
00006f18 str      x8, [sp, #0x60]
00006f1c b        #0x6fa0
00006f20 cbz      x8, #0x7350
00006f24 mov      x21, x4
00006f28 add      x4, x8, #8
00006f2c str      x4, [sp, #0x60]
00006f30 b        #0x738c
00006f34 cbz      x8, #0x73a8
00006f38 add      x7, x8, #8
00006f3c b        #0x73dc
00006f40 ldr      x5, [sp, #0x58]
00006f44 ldrsw    x0, [x5, #0x18]
00006f48 tbz      w0, #0x1f, #0x6f5c
00006f4c add      w9, w0, #8
00006f50 cmp      w9, #0
00006f54 str      w9, [x5, #0x18]
00006f58 b.le     #0x78b4
00006f5c ldr      x20, [x5]
00006f60 add      x6, x20, #8
00006f64 str      x6, [x5]
00006f68 ldrsw    x10, [x20]
00006f6c b        #0x6f9c
00006f70 ldr      x6, [sp, #0x58]
00006f74 ldrsw    x1, [x6, #0x18]
00006f78 tbz      w1, #0x1f, #0x6f8c
00006f7c add      w11, w1, #8
00006f80 cmp      w11, #0
00006f84 str      w11, [x6, #0x18]
00006f88 b.le     #0x78c0
00006f8c ldr      x22, [x6]
00006f90 add      x7, x22, #8
00006f94 str      x7, [x6]
00006f98 ldr      x10, [x22]
00006f9c str      xzr, [sp, #0x60]
00006fa0 and      w12, w19, #4
00006fa4 str      x4, [sp, #0x50]
00006fa8 tst      x19, #2
00006fac mov      w16, #0x2b
00006fb0 lsl      w8, w12, #3
00006fb4 csel     w2, w8, w16, eq
00006fb8 str      w2, [sp, #0x94]
00006fbc tbnz     w19, #7, #0x7000
00006fc0 and      x24, x19, #0xffffffffffffffdf
00006fc4 tst      x19, #8
00006fc8 ubfx     x22, x19, #3, #1
00006fcc csel     x19, x19, x24, eq
00006fd0 csinc    x14, x14, xzr, eq
00006fd4 str      x22, [sp, #0x70]
00006fd8 tbnz     w19, #0xe, #0x7024
00006fdc tbz      x10, #0x3f, #0x7024
00006fe0 mov      w17, #0x2d
00006fe4 mov      w12, #0xa
00006fe8 mov      x24, x14
00006fec orr      x19, x19, #2
00006ff0 str      w17, [sp, #0x94]
00006ff4 neg      x20, x10
00006ff8 mov      w2, w12
00006ffc b        #0x7044
00007000 and      x20, x19, #0x10
00007004 str      xzr, [sp, #0x70]
00007008 cmp      x10, #0
0000700c ccmp     x20, #0, #0, lt
00007010 and      x22, x10, #0xffffffff
00007014 mov      x24, x14
00007018 csel     x20, x22, x10, eq
0000701c mov      w2, #0x10
00007020 b        #0x7044
00007024 mov      w16, #0x4010
00007028 and      x28, x19, x16
0000702c and      x4, x10, #0xffffffff
00007030 cmp      x28, #4, lsl #12
00007034 mov      w13, #0xa
00007038 mov      x24, x14
0000703c csel     x20, x4, x10, eq
00007040 mov      w2, w13
00007044 sub      x0, x29, #0x80
00007048 mov      x1, x20
0000704c sub      x22, x29, #0x80
00007050 bl       #0x674c
00007054 mov      x11, x24
00007058 orr      x1, x20, x11
0000705c mov      x28, x0
00007060 cbz      x1, #0x70b0
00007064 sub      x13, x28, x22
00007068 ldr      x30, [sp, #0x98]
0000706c mov      w5, #3
00007070 ldur     x16, [x29, #-0x98]
00007074 ldr      x4, [sp, #0x50]
00007078 udiv     x21, x13, x5
0000707c ldr      x15, [sp, #0x70]
00007080 add      x20, x21, x21, lsl #1
00007084 subs     x8, x13, x20
00007088 eor      x9, x8, #3
0000708c csel     x8, xzr, x9, eq
00007090 str      x8, [sp, #0x88]
00007094 cbz      w15, #0x70c8
00007098 cbz      x13, #0x70c8
0000709c sub      x21, x13, #1
000070a0 mov      w8, #3
000070a4 udiv     x9, x21, x8
000070a8 add      x13, x9, x13
000070ac b        #0x70c8
000070b0 ldr      x30, [sp, #0x98]
000070b4 mov      x13, xzr
000070b8 ldur     x16, [x29, #-0x98]
000070bc sub      x28, x29, #0x80
000070c0 ldr      x4, [sp, #0x50]
000070c4 str      xzr, [sp, #0x88]
000070c8 ldr      w0, [sp, #0x94]
000070cc orr      x14, x19, #0x1000
000070d0 mov      w17, #0xa21
000070d4 mov      w26, #1
000070d8 and      x19, x19, x17
000070dc cmp      w0, #0
000070e0 cinc     x24, x24, ne
000070e4 cinc     x22, x13, ne
000070e8 cmp      x19, #0x220
000070ec b.ne     #0x7100
000070f0 ldp      x24, x12, [sp, #0x70]
000070f4 mov      x17, x14
000070f8 mov      x14, x12
000070fc b        #0x7500
00007100 mov      x17, x14
00007104 mov      x14, x24
00007108 ldr      x24, [sp, #0x70]
0000710c b        #0x7500
00007110 add      x15, x27, x23
00007114 mov      x20, x14
00007118 mov      x0, x4
0000711c ldrb     w14, [x15]
00007120 cmp      x23, #1
00007124 b.ne     #0x714c
00007128 mov      w4, wzr
0000712c b        #0x7154
00007130 mov      x21, x14
00007134 add      x14, x27, x23
00007138 cmp      x23, #1
0000713c ldrb     w15, [x14]
00007140 b.ne     #0x7188
00007144 mov      w0, wzr
00007148 b        #0x7190
0000714c ldrb     w3, [x15, #1]
00007150 lsl      w4, w3, #8
00007154 orr      w16, w4, w14
00007158 and      x1, x28, x16
0000715c cmp      x1, #0xd
00007160 stur     x1, [x29, #-0x88]
00007164 b.ne     #0x71c4
00007168 adrp     x28, #0x9000
0000716c str      wzr, [sp, #0x94]
00007170 mov      w26, wzr
00007174 str      xzr, [sp, #0x88]
00007178 mov      w24, wzr
0000717c add      x28, x28, #0xca5
00007180 mov      x27, x15
00007184 b        #0x71dc
00007188 ldrb     w2, [x14, #1]
0000718c lsl      w0, w2, #8
00007190 orr      w15, w0, w15
00007194 and      x0, x28, x15
00007198 cmp      x0, #0xa
0000719c stur     x0, [x29, #-0x88]
000071a0 b.ne     #0x71f0
000071a4 adrp     x28, #0x9000
000071a8 str      wzr, [sp, #0x94]
000071ac mov      w26, wzr
000071b0 str      xzr, [sp, #0x88]
000071b4 mov      w24, wzr
000071b8 add      x28, x28, #0xca5
000071bc mov      x27, x14
000071c0 b        #0x7208
000071c4 adrp     x28, #0x9000
000071c8 str      wzr, [sp, #0x94]
000071cc mov      w26, wzr
000071d0 str      xzr, [sp, #0x88]
000071d4 mov      w24, wzr
000071d8 add      x28, x28, #0xca5
000071dc ldur     x16, [x29, #-0x98]
000071e0 mov      x4, x0
000071e4 str      x8, [sp, #0x60]
000071e8 mov      x14, x20
000071ec b        #0x7500
000071f0 adrp     x28, #0x9000
000071f4 str      wzr, [sp, #0x94]
000071f8 mov      w26, wzr
000071fc str      xzr, [sp, #0x88]
00007200 mov      w24, wzr
00007204 add      x28, x28, #0xca8
00007208 str      x8, [sp, #0x60]
0000720c mov      x14, x21
00007210 b        #0x7500
00007214 ldr      x28, [sp, #0x58]
00007218 ldrsw    x3, [x28, #0x18]
0000721c tbz      w3, #0x1f, #0x7238
00007220 mov      x8, x14
00007224 add      w14, w3, #8
00007228 cmp      w14, #0
0000722c str      w14, [x28, #0x18]
00007230 mov      x14, x8
00007234 b.le     #0x78cc
00007238 ldr      x8, [x28]
0000723c add      x13, x8, #8
00007240 str      x13, [x28]
00007244 str      xzr, [sp, #0x60]
00007248 str      wzr, [sp, #0x94]
0000724c mov      w26, wzr
00007250 ldrh     w11, [x8]
00007254 mov      w24, wzr
00007258 str      xzr, [sp, #0x88]
0000725c sub      x28, x29, #0x90
00007260 orr      x17, x17, #0x400
00007264 stur     x11, [x29, #-0x90]
00007268 b        #0x7500
0000726c ldr      x20, [sp, #0x58]
00007270 ldrsw    x5, [x20, #0x18]
00007274 tbz      w5, #0x1f, #0x7288
00007278 add      w15, w5, #8
0000727c cmp      w15, #0
00007280 str      w15, [x20, #0x18]
00007284 b.le     #0x78d8
00007288 ldr      x8, [x20]
0000728c mov      x10, x14
00007290 add      x14, x8, #8
00007294 str      x14, [x20]
00007298 mov      x14, x10
0000729c mov      x6, xzr
000072a0 str      x6, [sp, #0x60]
000072a4 ldr      x20, [x8]
000072a8 cbz      x20, #0x7454
000072ac mov      x0, x20
000072b0 sub      x28, x29, #0x80
000072b4 mov      x19, x4
000072b8 mov      x21, x17
000072bc mov      x24, x14
000072c0 bl       #0x7b24
000072c4 mov      w26, w0
000072c8 add      x0, x20, #4
000072cc bl       #0x7ad0
000072d0 str      w0, [sp, #0x94]
000072d4 add      x0, x20, #6
000072d8 bl       #0x7ad0
000072dc ldr      w9, [sp, #0x94]
000072e0 adrp     x3, #0x9000
000072e4 ldrb     w1, [x20, #0xf]
000072e8 and      w6, w0, #0xffff
000072ec ldrb     w7, [x20, #8]
000072f0 mov      x2, xzr
000072f4 ldrb     w14, [x20, #9]
000072f8 sub      x0, x29, #0x80
000072fc ldrb     w15, [x20, #0xa]
00007300 and      w5, w9, #0xffff
00007304 ldrb     w16, [x20, #0xb]
00007308 add      x3, x3, #0xc49
0000730c ldrb     w17, [x20, #0xc]
00007310 mov      w4, w26
00007314 ldrb     w10, [x20, #0xd]
00007318 ldrb     w13, [x20, #0xe]
0000731c str      w1, [sp, #0x30]
00007320 mov      w1, #0x26
00007324 str      w17, [sp, #0x18]
00007328 str      w10, [sp, #0x20]
0000732c str      w13, [sp, #0x28]
00007330 str      w16, [sp, #0x10]
00007334 str      w15, [sp, #8]
00007338 str      w14, [sp]
0000733c bl       #0x79ac
00007340 mov      x14, x24
00007344 mov      x17, x21
00007348 mov      x4, x19
0000734c b        #0x7438
00007350 ldr      x9, [sp, #0x58]
00007354 ldrsw    x7, [x9, #0x18]
00007358 tbz      w7, #0x1f, #0x7374
0000735c mov      x13, x17
00007360 add      w17, w7, #8
00007364 cmp      w17, #0
00007368 str      w17, [x9, #0x18]
0000736c mov      x17, x13
00007370 b.le     #0x78e4
00007374 ldr      x8, [x9]
00007378 mov      x21, x4
0000737c add      x16, x8, #8
00007380 str      x16, [x9]
00007384 ldur     x16, [x29, #-0x98]
00007388 str      xzr, [sp, #0x60]
0000738c ldr      x4, [x8]
00007390 mov      x19, x17
00007394 tbnz     x4, #0x3f, #0x7470
00007398 mov      x9, x4
0000739c cmp      x4, #5
000073a0 b.ls     #0x7484
000073a4 b        #0x749c
000073a8 ldr      x8, [sp, #0x58]
000073ac ldrsw    x6, [x8, #0x18]
000073b0 tbz      w6, #0x1f, #0x73c8
000073b4 add      w16, w6, #8
000073b8 cmp      w16, #0
000073bc str      w16, [x8, #0x18]
000073c0 ldur     x16, [x29, #-0x98]
000073c4 b.le     #0x78fc
000073c8 mov      x10, x8
000073cc ldr      x8, [x10]
000073d0 add      x15, x8, #8
000073d4 str      x15, [x10]
000073d8 mov      x7, xzr
000073dc str      x7, [sp, #0x60]
000073e0 ldr      x8, [x8]
000073e4 cbz      x8, #0x74e8
000073e8 mov      x20, x4
000073ec ldrb     w4, [x8, #2]
000073f0 ldrb     w5, [x8, #3]
000073f4 mov      w2, #0x26
000073f8 ldrh     w6, [x8]
000073fc adrp     x3, #0x9000
00007400 ldrb     w7, [x8, #4]
00007404 sub      x0, x29, #0x80
00007408 ldrb     w9, [x8, #5]
0000740c mov      w1, w2
00007410 mov      x2, xzr
00007414 add      x3, x3, #0xc86
00007418 sub      x28, x29, #0x80
0000741c str      w9, [sp]
00007420 mov      x19, x17
00007424 mov      x21, x14
00007428 bl       #0x79ac
0000742c mov      x14, x21
00007430 mov      x17, x19
00007434 mov      x4, x20
00007438 ldur     x16, [x29, #-0x98]
0000743c ldr      x30, [sp, #0x98]
00007440 str      wzr, [sp, #0x94]
00007444 mov      w26, wzr
00007448 mov      w24, wzr
0000744c str      xzr, [sp, #0x88]
00007450 b        #0x7500
00007454 adrp     x28, #0x9000
00007458 str      wzr, [sp, #0x94]
0000745c mov      w26, wzr
00007460 str      xzr, [sp, #0x88]
00007464 mov      w24, wzr
00007468 add      x28, x28, #0xc3d
0000746c b        #0x7500
00007470 and      x8, x4, #0x7fffffffffffffff
00007474 sub      x17, x8, #1
00007478 cmp      x17, #0x20
0000747c b.hi     #0x749c
00007480 add      x9, x8, #5
00007484 adrp     x2, #0x9000
00007488 add      x2, x2, #0xcb0
0000748c sub      x3, x29, #0x80
00007490 ldr      x28, [x2, x9, lsl #3]
00007494 cmp      x28, x3
00007498 b.ne     #0x74cc
0000749c mov      w30, #0x26
000074a0 adrp     x3, #0x9000
000074a4 sub      x0, x29, #0x80
000074a8 mov      w1, w30
000074ac mov      x2, xzr
000074b0 add      x3, x3, #0xca0
000074b4 sub      x28, x29, #0x80
000074b8 mov      x20, x14
000074bc bl       #0x79ac
000074c0 ldur     x16, [x29, #-0x98]
000074c4 mov      x14, x20
000074c8 ldr      x30, [sp, #0x98]
000074cc str      wzr, [sp, #0x94]
000074d0 mov      w26, wzr
000074d4 mov      w24, wzr
000074d8 str      xzr, [sp, #0x88]
000074dc mov      x4, x21
000074e0 mov      x17, x19
000074e4 b        #0x7500
000074e8 adrp     x28, #0x9000
000074ec str      wzr, [sp, #0x94]
000074f0 mov      w26, wzr
000074f4 str      xzr, [sp, #0x88]
000074f8 mov      w24, wzr
000074fc add      x28, x28, #0xc7a
00007500 tst      x17, #0x400
00007504 mov      w9, #0xff
00007508 mov      w10, #0xffff
0000750c csel     x20, x10, x9, ne
00007510 ubfx     x19, x17, #0xa, #1
00007514 tbnz     w17, #0xc, #0x7588
00007518 mov      x22, xzr
0000751c and      x11, x17, #0x400
00007520 add      x19, x19, #1
00007524 add      x12, x28, #1
00007528 b        #0x7534
0000752c add      x22, x22, #1
00007530 add      x12, x12, x19
00007534 ldurb    w9, [x12, #-1]
00007538 cbz      x9, #0x7554
0000753c mov      w6, w17
00007540 tbz      w6, #0xb, #0x754c
00007544 cmp      x22, x14
00007548 b.hs     #0x758c
0000754c ldrb     w8, [x12]
00007550 b        #0x7578
00007554 cbz      x11, #0x758c
00007558 tst      x17, #0x800
0000755c ldrb     w8, [x12]
00007560 cset     w10, eq
00007564 cmp      x22, x14
00007568 cset     w13, lo
0000756c cbz      w8, #0x758c
00007570 orr      w5, w10, w13
00007574 tbz      w5, #0, #0x758c
00007578 bfi      w9, w8, #8, #8
0000757c and      x5, x9, x20
00007580 cbnz     x5, #0x752c
00007584 b        #0x758c
00007588 mvn      x19, x19
0000758c cmp      x14, x22
00007590 stur     x17, [x29, #-0x98]
00007594 mov      w11, #0x201
00007598 csel     x5, x22, x14, lo
0000759c and      x9, x17, x11
000075a0 cmp      x9, #0x200
000075a4 str      x5, [sp, #0x68]
000075a8 str      x9, [sp, #0x70]
000075ac b.ne     #0x75f0
000075b0 ldr      x7, [sp, #0x78]
000075b4 sub      x2, x7, x5
000075b8 madd     x4, x2, x30, x4
000075bc cbz      x16, #0x75f0
000075c0 tbnz     w17, #0xd, #0x75f0
000075c4 ldr      x1, [sp, #0xa0]
000075c8 mov      w3, #0x20
000075cc mov      x0, x16
000075d0 mov      x21, x4
000075d4 mov      x4, x30
000075d8 bl       #0x6718
000075dc ldur     x17, [x29, #-0x98]
000075e0 mov      x4, x21
000075e4 ldr      x5, [sp, #0x68]
000075e8 mov      x16, x0
000075ec ldr      x30, [sp, #0x98]
000075f0 cbz      w26, #0x7688
000075f4 ldr      w6, [sp, #0x94]
000075f8 cbz      w6, #0x763c
000075fc add      x4, x4, x30
00007600 tbnz     w17, #0xd, #0x763c
00007604 cbz      x16, #0x763c
00007608 ldr      w3, [sp, #0x94]
0000760c mov      w2, #1
00007610 ldr      x1, [sp, #0xa0]
00007614 mov      x0, x16
00007618 mov      x21, x4
0000761c mov      x4, x30
00007620 and      w3, w3, #0xff
00007624 bl       #0x6718
00007628 ldur     x17, [x29, #-0x98]
0000762c mov      x4, x21
00007630 ldr      x5, [sp, #0x68]
00007634 mov      x16, x0
00007638 ldr      x30, [sp, #0x98]
0000763c sub      x2, x5, x22
00007640 madd     x4, x2, x30, x4
00007644 tbnz     w17, #0xd, #0x767c
00007648 cbz      x16, #0x767c
0000764c ldr      x1, [sp, #0xa0]
00007650 mov      w3, #0x30
00007654 mov      x0, x16
00007658 mov      x21, x24
0000765c mov      x24, x4
00007660 mov      x4, x30
00007664 bl       #0x6718
00007668 ldur     x17, [x29, #-0x98]
0000766c mov      x4, x24
00007670 ldr      x30, [sp, #0x98]
00007674 mov      x24, x21
00007678 mov      x16, x0
0000767c ldr      w1, [sp, #0x94]
00007680 cbnz     w1, #0x7708
00007684 b        #0x7710
00007688 sub      x26, x5, x22
0000768c tbnz     w17, #0xd, #0x76c0
00007690 cbz      x16, #0x76c0
00007694 ldr      x1, [sp, #0xa0]
00007698 mov      w3, #0x20
0000769c mov      x0, x16
000076a0 mov      x2, x26
000076a4 mov      x21, x4
000076a8 mov      x4, x30
000076ac bl       #0x6718
000076b0 ldur     x17, [x29, #-0x98]
000076b4 mov      x4, x21
000076b8 ldr      x30, [sp, #0x98]
000076bc mov      x16, x0
000076c0 madd     x4, x26, x30, x4
000076c4 ldr      w7, [sp, #0x94]
000076c8 cbz      w7, #0x7710
000076cc add      x4, x4, x30
000076d0 tbnz     w17, #0xd, #0x7708
000076d4 cbz      x16, #0x7708
000076d8 ldr      w5, [sp, #0x94]
000076dc mov      w2, #1
000076e0 ldr      x1, [sp, #0xa0]
000076e4 mov      x0, x16
000076e8 mov      x21, x4
000076ec mov      x4, x30
000076f0 and      w3, w5, #0xff
000076f4 bl       #0x6718
000076f8 ldur     x17, [x29, #-0x98]
000076fc mov      x4, x21
00007700 ldr      x30, [sp, #0x98]
00007704 mov      x16, x0
00007708 mov      w21, #1
0000770c b        #0x7714
00007710 mov      x21, xzr
00007714 mov      x0, x16
00007718 mov      x16, x0
0000771c cmp      x21, x22
00007720 b.hs     #0x7814
00007724 ldrb     w10, [x28]
00007728 cbnz     x10, #0x773c
0000772c cmp      x19, #2
00007730 b.lt     #0x7814
00007734 ldrb     w7, [x28, #1]
00007738 cbz      w7, #0x7814
0000773c mov      w11, w17
00007740 add      x4, x4, x30
00007744 tbnz     w11, #0xd, #0x7788
00007748 cbz      x16, #0x7788
0000774c ldrb     w12, [x28, #1]
00007750 mov      w2, #1
00007754 ldr      x1, [sp, #0xa0]
00007758 mov      x0, x16
0000775c mov      x26, x24
00007760 mov      x24, x4
00007764 bfi      w10, w12, #8, #0x18
00007768 and      x3, x10, x20
0000776c mov      x4, x30
00007770 bl       #0x6718
00007774 ldur     x17, [x29, #-0x98]
00007778 mov      x4, x24
0000777c ldr      x30, [sp, #0x98]
00007780 mov      x24, x26
00007784 mov      x16, x0
00007788 add      x28, x28, x19
0000778c add      x21, x21, #1
00007790 cbz      w24, #0x771c
00007794 ldr      x10, [sp, #0x88]
00007798 mov      x0, x16
0000779c add      x10, x10, #1
000077a0 cmp      x10, #3
000077a4 str      x10, [sp, #0x88]
000077a8 b.ne     #0x7718
000077ac add      x21, x21, #1
000077b0 str      xzr, [sp, #0x88]
000077b4 mov      x0, x16
000077b8 cmp      x21, x22
000077bc b.hs     #0x7718
000077c0 add      x4, x30, x4
000077c4 str      xzr, [sp, #0x88]
000077c8 mov      w8, w17
000077cc mov      x0, x16
000077d0 tbnz     w8, #0xd, #0x7718
000077d4 mov      x0, x16
000077d8 cbz      x16, #0x7718
000077dc ldr      x1, [sp, #0xa0]
000077e0 mov      w2, #1
000077e4 mov      x0, x16
000077e8 mov      w3, #0x2c
000077ec mov      x26, x24
000077f0 mov      x24, x4
000077f4 mov      x4, x30
000077f8 bl       #0x6718
000077fc ldur     x17, [x29, #-0x98]
00007800 mov      x4, x24
00007804 ldr      x30, [sp, #0x98]
00007808 mov      x24, x26
0000780c str      xzr, [sp, #0x88]
00007810 b        #0x7718
00007814 ldr      x20, [sp, #0x70]
00007818 cmp      x20, #0x201
0000781c b.ne     #0x786c
00007820 ldp      x0, x26, [sp, #0x78]
00007824 ldr      x1, [sp, #0x68]
00007828 adrp     x24, #0x9000
0000782c add      x24, x24, #0x5c0
00007830 mov      w19, #0xa
00007834 sub      x2, x0, x1
00007838 madd     x4, x2, x30, x4
0000783c tbnz     w17, #0xd, #0x787c
00007840 cbz      x16, #0x787c
00007844 ldr      x1, [sp, #0xa0]
00007848 mov      w3, #0x20
0000784c mov      x0, x16
00007850 mov      x22, x4
00007854 mov      x4, x30
00007858 bl       #0x6718
0000785c ldr      x30, [sp, #0x98]
00007860 mov      x4, x22
00007864 mov      x16, x0
00007868 b        #0x787c
0000786c ldr      x26, [sp, #0x80]
00007870 adrp     x24, #0x9000
00007874 add      x24, x24, #0x5c0
00007878 mov      w19, #0xa
0000787c add      x20, x27, x23
00007880 cmp      x23, #1
00007884 ldrb     w17, [x20]
00007888 b.ne     #0x7894
0000788c mov      w7, wzr
00007890 b        #0x789c
00007894 ldrb     w14, [x20, #1]
00007898 lsl      w7, w14, #8
0000789c orr      w8, w7, w17
000078a0 ldur     x17, [x29, #-0x98]
000078a4 b        #0x7908
000078a8 ldr      x19, [x7, #8]
000078ac add      x8, x19, x2
000078b0 b        #0x6e80
000078b4 ldr      x2, [x5, #8]
000078b8 add      x20, x2, x0
000078bc b        #0x6f68
000078c0 ldr      x22, [x6, #8]
000078c4 add      x22, x22, x1
000078c8 b        #0x6f98
000078cc ldr      x10, [x28, #8]
000078d0 add      x8, x10, x3
000078d4 b        #0x7244
000078d8 ldr      x12, [x20, #8]
000078dc add      x8, x12, x5
000078e0 b        #0x729c
000078e4 mov      x21, x4
000078e8 mov      x4, x14
000078ec ldr      x14, [x9, #8]
000078f0 add      x8, x14, x7
000078f4 mov      x14, x4
000078f8 b        #0x7388
000078fc ldr      x13, [x8, #8]
00007900 add      x8, x13, x6
00007904 b        #0x73d8
00007908 sxtw     x14, w8
0000790c and      x9, x26, x14
00007910 stur     x9, [x29, #-0x88]
00007914 cbnz     x9, #0x6a28
00007918 tbnz     w17, #0xd, #0x7954
0000791c cbz      x16, #0x798c
00007920 ldr      x3, [sp, #0xa0]
00007924 mov      w2, #1
00007928 mov      x0, x16
0000792c mov      x4, x30
00007930 mov      x26, x30
00007934 add      x1, x3, x30
00007938 mov      x3, xzr
0000793c mov      x25, x16
00007940 bl       #0x6718
00007944 ldr      x6, [sp, #0x48]
00007948 sub      x23, x25, x6
0000794c sdiv     x0, x23, x26
00007950 b        #0x7958
00007954 udiv     x0, x4, x30
00007958 adrp     x23, #0xa000
0000795c ldur     x25, [x29, #-0x58]
00007960 ldr      x23, [x23]
00007964 sub      x27, x23, x25
00007968 cbnz     x27, #0x79a8
0000796c ldp      x29, x30, [sp, #0x140]
00007970 ldp      x20, x19, [sp, #0x130]
00007974 ldp      x22, x21, [sp, #0x120]
00007978 ldp      x24, x23, [sp, #0x110]
0000797c ldp      x26, x25, [sp, #0x100]
00007980 ldp      x28, x27, [sp, #0xf0]
00007984 add      sp, sp, #0x150
00007988 ret      
0000798c adrp     x0, #0x9000
00007990 adrp     x2, #0x7000
00007994 add      x0, x0, #0x91d
00007998 mov      w1, #0x4c7
0000799c add      x2, x2, #0xfc6
000079a0 bl       #0x3b54
000079a4 b        #0x79a4
000079a8 bl       #0x10d8
000079ac sub      sp, sp, #0xf0
000079b0 stp      x29, x30, [sp, #0xe0]
000079b4 add      x29, sp, #0xe0
000079b8 mov      w10, #-0x80
000079bc stp      q6, q7, [sp, #0x60]
000079c0 mov      w12, #-0x20
000079c4 stp      q4, q5, [sp, #0x40]
000079c8 mov      x8, sp
000079cc stp      q2, q3, [sp, #0x20]
000079d0 sub      x9, x29, #0x60
000079d4 stp      q0, q1, [sp]
000079d8 stp      w12, w10, [x29, #-8]
000079dc add      x8, x8, #0x80
000079e0 ldur     x10, [x29, #-8]
000079e4 add      x9, x9, #0x20
000079e8 stp      x4, x5, [x29, #-0x60]
000079ec add      x11, x29, #0x10
000079f0 sub      x4, x29, #0x40
000079f4 stp      x6, x7, [x29, #-0x50]
000079f8 mov      x5, xzr
000079fc stp      x9, x8, [x29, #-0x18]
00007a00 stp      x9, x8, [x29, #-0x38]
00007a04 stur     x11, [x29, #-0x40]
00007a08 stp      x10, x11, [x29, #-0x28]
00007a0c bl       #0x67a4
00007a10 ldp      x29, x30, [sp, #0xe0]
00007a14 add      sp, sp, #0xf0
00007a18 ret      
00007a1c stp      x29, x30, [sp, #-0x10]!
00007a20 mov      x29, sp
00007a24 cbz      x0, #0x7a34
00007a28 cbz      x1, #0x7a50
00007a2c ldp      x29, x30, [sp], #0x10
00007a30 b        #0x7a80
00007a34 adrp     x0, #0x9000
00007a38 adrp     x2, #0x9000
00007a3c add      x0, x0, #0xde8
00007a40 mov      w1, #0x59
00007a44 add      x2, x2, #0xe30
00007a48 bl       #0x3b54
00007a4c b        #0x7a4c
00007a50 adrp     x0, #0x9000
00007a54 adrp     x2, #0x9000
00007a58 add      x0, x0, #0xde8
00007a5c mov      w1, #0x5a
00007a60 add      x2, x2, #0xe46
00007a64 bl       #0x3b54
00007a68 b        #0x7a68
00007a6c udf      #0
00007a70 udf      #0
00007a74 udf      #0
00007a78 udf      #0
00007a7c udf      #0
00007a80 mov      x2, xzr
00007a84 ldp      x3, x4, [x0]
00007a88 cbz      x1, #0x7a90
00007a8c ldp      x1, x2, [x1]
00007a90 cmp      x1, x3
00007a94 ccmp     x2, x4, #0, eq
00007a98 cset     w0, eq
00007a9c ret      
00007aa0 cbz      w1, #0x7aa8
00007aa4 b        #0x3dd4
00007aa8 stp      x29, x30, [sp, #-0x10]!
00007aac mov      x29, sp
00007ab0 adrp     x0, #0x9000
00007ab4 adrp     x2, #0x8000
00007ab8 add      x0, x0, #0xeb6
00007abc mov      w1, #0x2f
00007ac0 add      x2, x2, #0xb22
00007ac4 bl       #0x3b54
00007ac8 ldp      x29, x30, [sp], #0x10
00007acc b        #0x7acc
00007ad0 sub      sp, sp, #0x20
00007ad4 stp      x29, x30, [sp, #0x10]
00007ad8 add      x29, sp, #0x10
00007adc cbz      x0, #0x7b08
00007ae0 ldrb     w8, [x0]
00007ae4 sturb    w8, [x29, #-4]
00007ae8 ldrb     w9, [x0, #1]
00007aec strb     w9, [sp, #8]
00007af0 ldurb    w0, [x29, #-4]
00007af4 ldrb     w10, [sp, #8]
00007af8 ldp      x29, x30, [sp, #0x10]
00007afc bfi      w0, w10, #8, #8
00007b00 add      sp, sp, #0x20
00007b04 ret      
00007b08 adrp     x0, #0x9000
00007b0c adrp     x2, #0x7000
00007b10 add      x0, x0, #0xecb
00007b14 mov      w1, #0x2a
00007b18 add      x2, x2, #0xfc6
00007b1c bl       #0x3b54
00007b20 b        #0x7b20
00007b24 stp      x20, x19, [sp, #-0x20]!
00007b28 stp      x29, x30, [sp, #0x10]
00007b2c add      x29, sp, #0x10
00007b30 mov      x19, x0
00007b34 cbz      x19, #0x7b60
00007b38 mov      x0, x19
00007b3c bl       #0x7ad0
00007b40 mov      w20, w0
00007b44 add      x0, x19, #2
00007b48 bl       #0x7ad0
00007b4c ldp      x29, x30, [sp, #0x10]
00007b50 bfi      w20, w0, #0x10, #0x10
00007b54 mov      w0, w20
00007b58 ldp      x20, x19, [sp], #0x20
00007b5c ret      
00007b60 adrp     x0, #0x9000
00007b64 adrp     x2, #0x7000
00007b68 add      x0, x0, #0xecb
00007b6c mov      w1, #0x9e
00007b70 add      x2, x2, #0xfc6
00007b74 bl       #0x3b54
00007b78 b        #0x7b78
00007b7c dc       ivac, x0
00007b80 ret      
00007b84 dc       cvac, x0
00007b88 ret      
00007b8c mov      x0, #1
00007b90 ret      
00007b94 b        #0x7bc0
00007b98 b        #0x7bc8
00007b9c stp      x29, x30, [sp, #-0x10]!
00007ba0 mov      x29, sp
00007ba4 adrp     x0, #0xa000
00007ba8 add      x0, x0, #0x38
00007bac bl       #0x41dc
00007bb0 cbz      x0, #0x7bb8
00007bb4 ldr      x0, [x0, #0x18]
00007bb8 ldp      x29, x30, [sp], #0x10
00007bbc ret      
00007bc0 mrs      x0, cntfrq_el0
00007bc4 ret      
00007bc8 mrs      x0, cntvct_el0
00007bcc ret      
00007bd0 .byte    0x0a, 0x41, 0x53, 0x53
00007bd4 .byte    0x45, 0x52, 0x54, 0x5f
00007bd8 .byte    0x45, 0x46, 0x49, 0x5f
00007bdc .byte    0x45, 0x52, 0x52, 0x4f
00007be0 .byte    0x52, 0x20, 0x28, 0x53
00007be4 .byte    0x74, 0x61, 0x74, 0x75
00007be8 .byte    0x73, 0x20, 0x3d, 0x20
00007bec bic      w5, w17, w9, lsl #28
00007bf0 ldpsw    x0, x17, [x0, #-0x70]
00007bf4 addhnt   z22.b, z11.h, z18.h
00007bf8 ldrh     w14, [x3, #0x193a]
00007bfc umin     v16.8h, v26.8h, v9.8h
00007c00 .byte    0x74, 0x2e, 0x63, 0x00
00007c04 .byte    0x21, 0x45, 0x46, 0x49
00007c08 .byte    0x5f, 0x45, 0x52, 0x52
00007c0c stnp     w15, w20, [x18, #-0x100]
00007c10 .byte    0x53, 0x74, 0x61, 0x74
00007c14 .byte    0x75, 0x73, 0x29, 0x00
00007c18 .byte    0x4d, 0x6f, 0x74, 0x55
00007c1c .byte    0x74, 0x61, 0x67, 0x73
00007c20 .byte    0x44, 0x78, 0x65, 0x00
00007c24 uqshl    v1.2d, v10.2d, #0x34
00007c28 umax     v7.4h, v10.4h, v14.4h
00007c2c .byte    0x63, 0x00, 0x06, 0x00
00007c30 .byte    0x40, 0x42, 0x0f, 0x00
00007c34 .byte    0x40, 0x42, 0x0f, 0x00
00007c38 .byte    0x00, 0x40, 0x26, 0x0c
00007c3c .byte    0x0f, 0xee, 0x0f, 0x80
00007c40 .byte    0x00, 0xf8, 0x24, 0x01
00007c44 udf      #0
00007c48 udf      #0
00007c4c udf      #0
00007c50 udf      #0x2df8
00007c54 udf      #0
00007c58 udf      #0x2e38
00007c5c udf      #0
00007c60 udf      #0x2e94
00007c64 udf      #0
00007c68 udf      #0x2eb0
00007c6c udf      #0
00007c70 udf      #0x2efc
00007c74 udf      #0
00007c78 udf      #0x2f3c
00007c7c udf      #0
00007c80 udf      #0x2f7c
00007c84 udf      #0
00007c88 udf      #0x2fbc
00007c8c udf      #0
00007c90 .byte    0x5b, 0x25, 0x38, 0x75
00007c94 cmple    p13.b, p0/z, z2.b, #0
00007c98 .byte    0x61, 0x3a, 0x20, 0x66
00007c9c fnmls    z1.h, p2/m, z11.h, z12.h
00007ca0 .byte    0x64, 0x20, 0x75, 0x73
00007ca4 fnmls    z16.h, p0/m, z11.h, z3.h
00007ca8 .byte    0x20, 0x3d, 0x20, 0x5b
00007cac and      w5, w1, w29, lsr #25
00007cb0 .byte    0x00, 0x67, 0x65, 0x74
00007cb4 .byte    0x5f, 0x75, 0x74, 0x61
00007cb8 .byte    0x67, 0x73, 0x5f, 0x6e
00007cbc .byte    0x61, 0x6d, 0x65, 0x00
00007cc0 .byte    0x25, 0x61, 0x3a, 0x20
00007cc4 ldnp     d6, d24, [x11, #-0x170]
00007cc8 .byte    0x65, 0x64, 0x20, 0x75
00007ccc .byte    0x73, 0x70, 0x61, 0x63
00007cd0 .byte    0x65, 0x20, 0x6e, 0x61
00007cd4 str      b13, [x11, #0x819]
00007cd8 .byte    0x20, 0x5b, 0x25, 0x61
00007cdc .byte    0x5d, 0x0a, 0x00, 0x67
00007ce0 .byte    0x65, 0x74, 0x5f, 0x75
00007ce4 .byte    0x74, 0x61, 0x67, 0x73
00007ce8 .byte    0x5f, 0x69, 0x64, 0x00
00007cec .byte    0x45, 0x52, 0x52, 0x4f
00007cf0 .byte    0x52, 0x3a, 0x20, 0x6f
00007cf4 uqshl    v21.4s, v3.4s, #0
00007cf8 fmls     z6.h, p0/m, z3.h, z13.h
00007cfc ldrh     w13, [x27, #0x1936]
00007d00 .byte    0x21, 0x0a, 0x00, 0x3a
00007d04 .byte    0x00, 0x45, 0x72, 0x72
00007d08 .byte    0x6f, 0x72, 0x3a, 0x20
00007d0c .byte    0x6e, 0x6f, 0x74, 0x20
00007d10 .byte    0x61, 0x20, 0x73, 0x74
00007d14 .byte    0x72, 0x69, 0x6e, 0x67
00007d18 adr      x0, #0xfab9f
00007d1c .byte    0x65, 0x3a, 0x20, 0x25
00007d20 .byte    0x61, 0x0a, 0x00, 0x45
00007d24 .byte    0x72, 0x72, 0x6f, 0x72
00007d28 .byte    0x3a, 0x20, 0x73, 0x74
00007d2c .byte    0x72, 0x69, 0x6e, 0x67
00007d30 uqshl    v0.2d, v1.2d, #0x2f
00007d34 umin     v0.8h, v1.8h, v15.8h
00007d38 .byte    0x67, 0x0a, 0x00, 0x21
00007d3c .byte    0x21, 0x21, 0x20, 0x75
00007d40 .byte    0x74, 0x61, 0x67, 0x5f
00007d44 ldpsw    x22, x24, [x11, #-0xa0]
00007d48 ldpsw    x4, x24, [x11, #-0x60]
00007d4c .byte    0x6f, 0x6e, 0x20, 0x46
00007d50 .byte    0x41, 0x49, 0x4c, 0x20
00007d54 .byte    0x66, 0x6f, 0x72, 0x20
00007d58 psel     p5, p8, p9.h[w14, 1]
00007d5c .byte    0x61, 0x0a, 0x00, 0x21
00007d60 .byte    0x21, 0x21, 0x20, 0x43
00007d64 .byte    0x61, 0x6e, 0x6e, 0x6f
00007d68 fmls     z20.h, p0/m, z3.h, z7.h
00007d6c .byte    0x74, 0x20, 0x75, 0x74
00007d70 .byte    0x61, 0x67, 0x20, 0x25
00007d74 adr      x1, #0x484c3
00007d78 fcmla    v1.8h, v11.8h, v12.h[3], #0x10e
00007d7c sqshlu   v1.4s, v3.4s, #0
00007d80 .byte    0x76, 0x65, 0x72, 0x66
00007d84 bic      w12, w27, w23, lsr #27
00007d88 rsubhn2  v0.8h, v24.4s, v15.4s
00007d8c .byte    0x66, 0x69, 0x67, 0x00
00007d90 .byte    0x75, 0x74, 0x61, 0x67
00007d94 .byte    0x73, 0x00, 0x75, 0x74
00007d98 .byte    0x61, 0x67, 0x73, 0x42
00007d9c .byte    0x61, 0x63, 0x6b, 0x75
00007da0 .byte    0x70, 0x00, 0x68, 0x77
00007da4 .byte    0x00, 0x67, 0x65, 0x74
00007da8 .byte    0x5f, 0x75, 0x74, 0x61
00007dac .byte    0x67, 0x73, 0x00, 0x66
00007db0 fnmls    z1.h, p2/m, z11.h, z12.h
00007db4 umlal2   v4.4s, v3.8h, v4.h[3]
00007db8 .byte    0x20, 0x6c, 0x6f, 0x61
00007dbc .byte    0x64, 0x20, 0x75, 0x74
00007dc0 .byte    0x61, 0x67, 0x20, 0x73
00007dc4 fnmls    z16.h, p0/m, z11.h, z3.h
00007dc8 .byte    0x20, 0x5b, 0x25, 0x64
00007dcc .byte    0x5d, 0x20, 0x28, 0x65
00007dd0 .byte    0x72, 0x72, 0x6f, 0x72
00007dd4 .byte    0x20, 0x3d, 0x20, 0x25
00007dd8 .byte    0x64, 0x29, 0x0a, 0x00
00007ddc fnmls    z7.h, p1/m, z11.h, z14.h
00007de0 ldpsw    x18, x24, [x11, #-0x60]
00007de4 .byte    0x6e, 0x67, 0x20, 0x65
00007de8 ldrh     w13, [x3, #0x1a38]
00007dec .byte    0x20, 0x75, 0x74, 0x61
00007df0 .byte    0x67, 0x73, 0x20, 0x69
00007df4 fmls     z14.h, p0/m, z3.h, z13.h
00007df8 ldrh     w13, [x27, #0x1936]
00007dfc .byte    0x0a, 0x00, 0x45, 0x52
00007e00 .byte    0x52, 0x4f, 0x52, 0x3a
00007e04 .byte    0x20, 0x6f, 0x75, 0x74
00007e08 .byte    0x20, 0x6f, 0x66, 0x20
00007e0c sqshlu   v13.2d, v11.2d, #0x2d
00007e10 .byte    0x72, 0x79, 0x0a, 0x00
00007e14 bc.nv    #0xb29fc
00007e18 .byte    0x41, 0x47, 0x5f, 0x48
00007e1c .byte    0x45, 0x41, 0x44, 0x5f
00007e20 .byte    0x5f, 0x00, 0x5f, 0x5f
00007e24 .byte    0x55, 0x54, 0x41, 0x47
00007e28 .byte    0x5f, 0x54, 0x41, 0x49
00007e2c .byte    0x4c, 0x5f, 0x5f, 0x00
00007e30 .byte    0x45, 0x52, 0x52, 0x4f
00007e34 .byte    0x52, 0x3a, 0x20, 0x43
00007e38 .byte    0x61, 0x6e, 0x6e, 0x6f
00007e3c fmls     z20.h, p0/m, z3.h, z18.h
00007e40 .byte    0x61, 0x64, 0x20, 0x64
00007e44 .byte    0x65, 0x76, 0x69, 0x63
00007e48 usubl2   v5.4s, v3.8h, v9.8h
00007e4c .byte    0x66, 0x6f, 0x0a, 0x00
00007e50 ldnp     d6, d24, [x11, #-0x170]
00007e54 .byte    0x65, 0x64, 0x20, 0x74
00007e58 .byte    0x6f, 0x20, 0x74, 0x68
00007e5c .byte    0x61, 0x77, 0x20, 0x75
00007e60 .byte    0x74, 0x61, 0x67, 0x73
00007e64 sqshlu   v0.2d, v17.2d, #0x32
00007e68 .byte    0x6d, 0x20, 0x70, 0x61
00007e6c .byte    0x72, 0x74, 0x69, 0x74
00007e70 .byte    0x69, 0x6f, 0x6e, 0x20
00007e74 .byte    0x22, 0x25, 0x61, 0x22
00007e78 .byte    0x2c, 0x20, 0x65, 0x72
00007e7c .byte    0x72, 0x6f, 0x72, 0x3a
00007e80 bic      w0, w9, w4, lsr #9
00007e84 .byte    0x00, 0x25, 0x61, 0x3a
00007e88 ldpsw    x0, x25, [x17, #-0xf8]
00007e8c .byte    0x6c, 0x65, 0x64, 0x20
00007e90 .byte    0x74, 0x6f, 0x20, 0x66
00007e94 .byte    0x72, 0x65, 0x65, 0x7a
00007e98 .byte    0x65, 0x20, 0x75, 0x74
00007e9c .byte    0x61, 0x67, 0x73, 0x3a
00007ea0 bic      w0, w9, w4, lsr #9
00007ea4 .byte    0x00, 0x66, 0x6c, 0x61
00007ea8 .byte    0x73, 0x68, 0x5f, 0x75
00007eac .byte    0x74, 0x61, 0x67, 0x73
00007eb0 .byte    0x00, 0x45, 0x52, 0x52
00007eb4 .byte    0x4f, 0x52, 0x3a, 0x20
00007eb8 rsubhn2  v3.8h, v10.4s, v14.4s
00007ebc .byte    0x6f, 0x74, 0x20, 0x77
00007ec0 fnmls    z18.h, p2/m, z11.h, z20.h
00007ec4 .byte    0x20, 0x64, 0x65, 0x76
00007ec8 .byte    0x69, 0x63, 0x65, 0x20
00007ecc .byte    0x69, 0x6e, 0x66, 0x6f
00007ed0 .byte    0x0a, 0x00, 0x45, 0x52
00007ed4 .byte    0x52, 0x4f, 0x52, 0x3a
00007ed8 .byte    0x20, 0x44, 0x65, 0x76
00007edc .byte    0x69, 0x63, 0x65, 0x20
00007ee0 .byte    0x69, 0x6e, 0x66, 0x6f
00007ee4 .byte    0x20, 0x63, 0x6f, 0x72
00007ee8 .byte    0x72, 0x75, 0x70, 0x74
00007eec .byte    0x65, 0x64, 0x0a, 0x00
00007ef0 .byte    0x45, 0x52, 0x52, 0x4f
00007ef4 .byte    0x52, 0x3a, 0x20, 0x44
00007ef8 .byte    0x65, 0x76, 0x69, 0x63
00007efc .byte    0x65, 0x20, 0x77, 0x72
00007f00 .byte    0x69, 0x74, 0x65, 0x20
00007f04 ldnp     d6, d24, [x11, #-0x170]
00007f08 mla      v10.8h, v0.8h, v2.h[2]
00007f0c .byte    0x6f, 0x6c, 0x00, 0x73
00007f10 .byte    0x74, 0x72, 0x00, 0x63
00007f14 .byte    0x68, 0x61, 0x72, 0x00
00007f18 .byte    0x6c, 0x6f, 0x6e, 0x67
00007f1c uqshl    v0.2d, v8.2d, #0x2c
00007f20 stnp     d14, d25, [x27]
00007f24 .byte    0x6c, 0x6f, 0x6e, 0x67
00007f28 ldnp     d0, d29, [x8, #-0x140]
00007f2c .byte    0x6f, 0x6e, 0x67, 0x00
00007f30 fnmls    z20.h, p4/m, z19.h, z21.h
00007f34 ldnp     d0, d25, [x16, #-0x1f0]
00007f38 bic      p3.b, p9/z, p11.b, p0.b
00007f3c and      p12.b, p9/z, p3.b, p0.b
00007f40 .byte    0x6c, 0x6c, 0x64, 0x00
00007f44 stnp     d16, d30, [x1, #-0x1b0]
00007f48 ldaddh   w16, w24, [x3]
00007f4c .byte    0x25, 0x6c, 0x6c, 0x78
00007f50 .byte    0x00, 0x25, 0x64, 0x20
00007f54 fnmls    z2.h, p6/m, z11.h, z20.h
00007f58 .byte    0x73, 0x20, 0x6f, 0x66
00007f5c .byte    0x20, 0x72, 0x61, 0x77
00007f60 .byte    0x20, 0x64, 0x61, 0x74
00007f64 .byte    0x61, 0x00, 0x3c, 0x69
00007f68 ldnp     d14, d29, [x19, #-0x1f0]
00007f6c .byte    0x69, 0x64, 0x3e, 0x00
00007f70 sqshlu   v13.2d, v10.2d, #0x2d
00007f74 ldnp     d18, d30, [x11, #0x10]
00007f78 .byte    0x6c, 0x6f, 0x63, 0x61
00007f7c .byte    0x74, 0x69, 0x6f, 0x6e
00007f80 .byte    0x4c, 0x69, 0x62, 0x2e
00007f84 .byte    0x63, 0x00, 0x50, 0x61
00007f88 .byte    0x67, 0x65, 0x73, 0x20
00007f8c adr      x1, #0x48731
00007f90 ldnp     d0, d10, [x0, #0x10]
00007f94 ldp      d9, d25, [x27, #-0x120]
00007f98 .byte    0x65, 0x6e, 0x74, 0x20
00007f9c .byte    0x26, 0x20, 0x28, 0x41
00007fa0 .byte    0x6c, 0x69, 0x67, 0x6e
00007fa4 .byte    0x6d, 0x65, 0x6e, 0x74
00007fa8 adds     w0, w9, #0x80b
00007fac str      b9, [x9, #0x80a]
00007fb0 .byte    0x3d, 0x20, 0x30, 0x00
00007fb4 ldnp     d18, d25, [x10, #-0x1f0]
00007fb8 fnmls    z16.h, p0/m, z10.h, z7.h
00007fbc .byte    0x73, 0x20, 0x3e, 0x20
00007fc0 fnmls    z16.h, p0/m, z10.h, z7.h
00007fc4 .byte    0x73, 0x00, 0x42, 0x75
00007fc8 .byte    0x66, 0x66, 0x65, 0x72
00007fcc .byte    0x20, 0x21, 0x3d, 0x20
00007fd0 umlal2   v8.4s, v1.8h, v6.h[7]
00007fd4 orn      w9, w3, w0, lsl #25
00007fd8 stp      w9, w8, [x1, #-0x80]
00007fdc ldnp     d0, d16, [x8, #-0x140]
00007fe0 .byte    0x6f, 0x63, 0x61, 0x74
00007fe4 .byte    0x69, 0x6f, 0x6e, 0x53
00007fe8 .byte    0x69, 0x7a, 0x65, 0x20
00007fec stnp     w28, w15, [x9, #-0x100]
00007ff0 .byte    0x30, 0x78, 0x46, 0x46
00007ff4 .byte    0x46, 0x46, 0x46, 0x46
00007ff8 .byte    0x46, 0x46, 0x46, 0x46
00007ffc .byte    0x46, 0x46, 0x46, 0x46
00008000 .byte    0x46, 0x46, 0x55, 0x4c
00008004 .byte    0x4c, 0x20, 0x2d, 0x20
00008008 .byte    0x28, 0x55, 0x49, 0x4e
0000800c .byte    0x54, 0x4e, 0x29, 0x20
00008010 .byte    0x42, 0x75, 0x66, 0x66
00008014 adds     w5, w19, w0, uxtx #4
00008018 .byte    0x20, 0x31, 0x29, 0x00
0000801c sqshlu   v26.2d, v10.2d, #0x32
00008020 .byte    0x4d, 0x65, 0x6d, 0x57
00008024 adr      x18, #0xe8c53
00008028 .byte    0x65, 0x72, 0x2e, 0x63
0000802c uqshl    v0.8h, v0.8h, v5.8h
00008030 .byte    0x67, 0x74, 0x68, 0x20
00008034 stnp     w28, w15, [x9, #-0x100]
00008038 .byte    0x30, 0x78, 0x46, 0x46
0000803c .byte    0x46, 0x46, 0x46, 0x46
00008040 .byte    0x46, 0x46, 0x46, 0x46
00008044 .byte    0x46, 0x46, 0x46, 0x46
00008048 .byte    0x46, 0x46, 0x55, 0x4c
0000804c .byte    0x4c, 0x20, 0x2d, 0x20
00008050 .byte    0x28, 0x55, 0x49, 0x4e
00008054 .byte    0x54, 0x4e, 0x29, 0x42
00008058 fnmls    z21.h, p1/m, z19.h, z6.h
0000805c .byte    0x72, 0x20, 0x2b, 0x20
00008060 cmla     z17.b, z9.b, z0.b, #0xb4
00008064 .byte    0x65, 0x62, 0x75, 0x67
00008068 .byte    0x4c, 0x69, 0x62, 0x2e
0000806c mla      v3.8h, v3.8h, v6.h[0]
00008070 .byte    0x72, 0x6d, 0x61, 0x74
00008074 .byte    0x20, 0x21, 0x3d, 0x20
00008078 umlal2   v8.4s, v1.8h, v6.h[7]
0000807c orn      w9, w3, w0, lsl #25
00008080 stp      w9, w8, [x1, #-0x80]
00008084 .byte    0x00, 0x41, 0x53, 0x53
00008088 .byte    0x45, 0x52, 0x54, 0x20
0000808c adds     w5, w9, w0, uxtx
00008090 .byte    0x25, 0x64, 0x3a, 0x20
00008094 .byte    0x25, 0x61, 0x0a, 0x00
00008098 .byte    0x20, 0x00, 0x53, 0x74
0000809c .byte    0x72, 0x69, 0x6e, 0x67
000080a0 .byte    0x2e, 0x63, 0x00, 0x44
000080a4 ldpsw    x5, x28, [x27, #-0x60]
000080a8 ldpsw    x14, x24, [x11, #-0x60]
000080ac .byte    0x6f, 0x6e, 0x20, 0x21
000080b0 stnp     w29, w8, [x1, #-0xc0]
000080b4 .byte    0x76, 0x6f, 0x69, 0x64
000080b8 .byte    0x20, 0x2a, 0x29, 0x20
000080bc stnp     w16, w10, [x9]
000080c0 .byte    0x28, 0x55, 0x49, 0x4e
000080c4 .byte    0x54, 0x4e, 0x29, 0x20
000080c8 .byte    0x44, 0x65, 0x73, 0x74
000080cc .byte    0x69, 0x6e, 0x61, 0x74
000080d0 .byte    0x69, 0x6f, 0x6e, 0x20
000080d4 ldeorh   w16, w6, [x1]
000080d8 adr      x16, #0x686dd
000080dc adds     w16, w1, #0xc0c
000080e0 str      b9, [x1, #0xf48]
000080e4 stnp     w0, w12, [x1]
000080e8 bc.pl    #0xa4a10
000080ec .byte    0x4e, 0x29, 0x28, 0x44
000080f0 ldpsw    x5, x28, [x27, #-0x60]
000080f4 ldpsw    x14, x24, [x11, #-0x60]
000080f8 stp      s15, s27, [x19, #-0x100]
000080fc .byte    0x20, 0x53, 0x6f, 0x75
00008100 ldp      w18, w24, [x27, #-0xd8]
00008104 .byte    0x20, 0x3e, 0x20, 0x53
00008108 fcmne    p4.h, p4/z, z19.h, z12.h
0000810c .byte    0x6e, 0x20, 0x28, 0x53
00008110 .byte    0x6f, 0x75, 0x72, 0x63
00008114 stnp     w5, w10, [x11]
00008118 bc.pl    #0xa4a40
0000811c .byte    0x4e, 0x29, 0x28, 0x53
00008120 .byte    0x6f, 0x75, 0x72, 0x63
00008124 .byte    0x65, 0x20, 0x2d, 0x20
00008128 .byte    0x44, 0x65, 0x73, 0x74
0000812c .byte    0x69, 0x6e, 0x61, 0x74
00008130 ldp      w9, w27, [x27, #-0x90]
00008134 .byte    0x20, 0x3e, 0x20, 0x53
00008138 fcmne    p4.h, p4/z, z19.h, z12.h
0000813c .byte    0x6e, 0x20, 0x28, 0x53
00008140 .byte    0x6f, 0x75, 0x72, 0x63
00008144 stnp     w5, w10, [x11]
00008148 bc.pl    #0xa4a70
0000814c .byte    0x4e, 0x29, 0x28, 0x53
00008150 .byte    0x6f, 0x75, 0x72, 0x63
00008154 .byte    0x65, 0x20, 0x2d, 0x20
00008158 .byte    0x44, 0x65, 0x73, 0x74
0000815c .byte    0x69, 0x6e, 0x61, 0x74
00008160 ldp      w9, w27, [x27, #-0x90]
00008164 .byte    0x20, 0x3e, 0x3d, 0x20
00008168 .byte    0x4c, 0x65, 0x6e, 0x67
0000816c st1      {v20.4s, v21.4s, v22.4s}, [x3]
00008170 .byte    0x65, 0x6e, 0x67, 0x74
00008174 str      b8, [x3, #0xf08]
00008178 adr      x0, #0xd6d5e
0000817c .byte    0x63, 0x64, 0x5f, 0x46
00008180 .byte    0x69, 0x78, 0x65, 0x64
00008184 .byte    0x41, 0x74, 0x42, 0x75
00008188 .byte    0x69, 0x6c, 0x64, 0x5f
0000818c .byte    0x50, 0x63, 0x64, 0x4d
00008190 ldp      d1, d30, [x3, #-0x170]
00008194 .byte    0x75, 0x6d, 0x55, 0x6e
00008198 .byte    0x69, 0x63, 0x6f, 0x64
0000819c .byte    0x65, 0x53, 0x74, 0x72
000081a0 .byte    0x69, 0x6e, 0x67, 0x4c
000081a4 .byte    0x65, 0x6e, 0x67, 0x74
000081a8 .byte    0x68, 0x00, 0x53, 0x74
000081ac .byte    0x72, 0x69, 0x6e, 0x67
000081b0 .byte    0x20, 0x21, 0x3d, 0x20
000081b4 umlal2   v8.4s, v1.8h, v6.h[7]
000081b8 orn      w9, w3, w0, lsl #25
000081bc stp      w9, w8, [x1, #-0x80]
000081c0 .byte    0x00, 0x28, 0x28, 0x55
000081c4 .byte    0x49, 0x4e, 0x54, 0x4e
000081c8 .byte    0x29, 0x20, 0x53, 0x74
000081cc .byte    0x72, 0x69, 0x6e, 0x67
000081d0 adr      x0, #0x48695
000081d4 adr      x24, #0x687e1
000081d8 adr      x16, #0x687dd
000081dc str      b17, [x9, #0x80a]
000081e0 .byte    0x3d, 0x20, 0x30, 0x00
000081e4 .byte    0x4c, 0x65, 0x6e, 0x67
000081e8 str      b20, [x3, x0]
000081ec adr      x0, #0xd6dd2
000081f0 .byte    0x63, 0x64, 0x5f, 0x46
000081f4 .byte    0x69, 0x78, 0x65, 0x64
000081f8 .byte    0x41, 0x74, 0x42, 0x75
000081fc .byte    0x69, 0x6c, 0x64, 0x5f
00008200 .byte    0x50, 0x63, 0x64, 0x4d
00008204 ldp      d1, d30, [x3, #-0x170]
00008208 .byte    0x75, 0x6d, 0x55, 0x6e
0000820c .byte    0x69, 0x63, 0x6f, 0x64
00008210 .byte    0x65, 0x53, 0x74, 0x72
00008214 .byte    0x69, 0x6e, 0x67, 0x4c
00008218 .byte    0x65, 0x6e, 0x67, 0x74
0000821c .byte    0x68, 0x00, 0x53, 0x74
00008220 .byte    0x72, 0x53, 0x69, 0x7a
00008224 .byte    0x65, 0x20, 0x28, 0x46
00008228 .byte    0x69, 0x72, 0x73, 0x74
0000822c ldpsw    x19, x29, [x2, #-0x70]
00008230 .byte    0x6e, 0x67, 0x29, 0x20
00008234 adr      x1, #0x489d9
00008238 .byte    0x00, 0x53, 0x74, 0x72
0000823c fnmls    z19.h, p2/m, z10.h, z26.h
00008240 fcmne    p0.h, p2/z, z1.h, #0.0
00008244 .byte    0x63, 0x6f, 0x6e, 0x64
00008248 ldpsw    x19, x29, [x2, #-0x70]
0000824c .byte    0x6e, 0x67, 0x29, 0x20
00008250 adr      x1, #0x489f5
00008254 .byte    0x00, 0x53, 0x74, 0x72
00008258 fnmls    z19.h, p2/m, z10.h, z26.h
0000825c fmaxnmv  h0, p2, z1.h
00008260 uabd     v19.8h, v3.8h, v9.8h
00008264 uqshl    v1.2d, v3.2d, #0x29
00008268 .byte    0x6e, 0x29, 0x20, 0x21
0000826c .byte    0x3d, 0x20, 0x30, 0x00
00008270 .byte    0x53, 0x74, 0x72, 0x53
00008274 .byte    0x69, 0x7a, 0x65, 0x20
00008278 .byte    0x28, 0x53, 0x74, 0x72
0000827c ldp      w9, w27, [x19, #-0xc8]
00008280 .byte    0x20, 0x21, 0x3d, 0x20
00008284 .byte    0x30, 0x00, 0x53, 0x74
00008288 .byte    0x72, 0x53, 0x69, 0x7a
0000828c .byte    0x65, 0x20, 0x28, 0x53
00008290 .byte    0x65, 0x61, 0x72, 0x63
00008294 .byte    0x68, 0x53, 0x74, 0x72
00008298 ldp      w9, w27, [x19, #-0xc8]
0000829c .byte    0x20, 0x21, 0x3d, 0x20
000082a0 .byte    0x30, 0x00, 0x53, 0x74
000082a4 .byte    0x72, 0x53, 0x69, 0x7a
000082a8 .byte    0x65, 0x20, 0x28, 0x53
000082ac .byte    0x6f, 0x75, 0x72, 0x63
000082b0 .byte    0x65, 0x29, 0x20, 0x21
000082b4 .byte    0x3d, 0x20, 0x30, 0x00
000082b8 .byte    0x28, 0x55, 0x49, 0x4e
000082bc .byte    0x54, 0x4e, 0x29, 0x20
000082c0 .byte    0x28, 0x44, 0x65, 0x73
000082c4 .byte    0x74, 0x69, 0x6e, 0x61
000082c8 .byte    0x74, 0x69, 0x6f, 0x6e
000082cc stnp     w0, w11, [x9, #-0x100]
000082d0 .byte    0x43, 0x48, 0x41, 0x52
000082d4 stp      w24, w8, [x1, #-0xb0]
000082d8 .byte    0x20, 0x53, 0x6f, 0x75
000082dc ldp      w18, w24, [x27, #-0xd8]
000082e0 .byte    0x20, 0x3e, 0x3d, 0x20
000082e4 .byte    0x53, 0x74, 0x72, 0x53
000082e8 .byte    0x69, 0x7a, 0x65, 0x20
000082ec .byte    0x28, 0x53, 0x6f, 0x75
000082f0 ldp      w18, w24, [x27, #-0xd8]
000082f4 .byte    0x00, 0x28, 0x55, 0x49
000082f8 ldp      w14, w21, [x2, #0x70]
000082fc .byte    0x20, 0x28, 0x28, 0x43
00008300 ldurb    w8, [x10, #-0xdc]
00008304 .byte    0x20, 0x2a, 0x29, 0x20
00008308 .byte    0x53, 0x6f, 0x75, 0x72
0000830c stp      s3, s25, [x11, #-0x100]
00008310 .byte    0x20, 0x44, 0x65, 0x73
00008314 .byte    0x74, 0x69, 0x6e, 0x61
00008318 .byte    0x74, 0x69, 0x6f, 0x6e
0000831c .byte    0x29, 0x20, 0x3e, 0x20
00008320 .byte    0x53, 0x74, 0x72, 0x4c
00008324 stnp     w5, w27, [x19, #-0x100]
00008328 .byte    0x53, 0x6f, 0x75, 0x72
0000832c .byte    0x63, 0x65, 0x29, 0x00
00008330 .byte    0x2a, 0x53, 0x6f, 0x75
00008334 .byte    0x72, 0x63, 0x65, 0x20
00008338 ldeorh   w16, w28, [x1]
0000833c .byte    0x31, 0x30, 0x30, 0x00
00008340 ldpsw    x1, x28, [x26, #-0xe8]
00008344 .byte    0x69, 0x53, 0x74, 0x72
00008348 fnmls    z19.h, p2/m, z10.h, z26.h
0000834c fcmeq    p0.h, p2/z, z1.h, #0.0
00008350 uabd     v20.8h, v11.8h, v18.8h
00008354 .byte    0x56, 0x61, 0x6c, 0x75
00008358 .byte    0x65, 0x29, 0x20, 0x21
0000835c .byte    0x3d, 0x20, 0x30, 0x00
00008360 .byte    0x28, 0x55, 0x49, 0x4e
00008364 stnp     w20, w19, [x18, #-0xb8]
00008368 .byte    0x44, 0x65, 0x73, 0x74
0000836c .byte    0x69, 0x6e, 0x61, 0x74
00008370 .byte    0x69, 0x6f, 0x6e, 0x20
00008374 umlal2   v13.4s, v1.8h, v3.h[1]
00008378 fnmls    z21.h, p4/m, z19.h, z3.h
0000837c .byte    0x29, 0x20, 0x3e, 0x20
00008380 ldpsw    x1, x28, [x26, #-0xe8]
00008384 .byte    0x69, 0x53, 0x74, 0x72
00008388 .byte    0x4c, 0x65, 0x6e, 0x20
0000838c .byte    0x28, 0x53, 0x6f, 0x75
00008390 ldp      w18, w24, [x27, #-0xd8]
00008394 .byte    0x00, 0x28, 0x55, 0x49
00008398 ldp      w14, w21, [x2, #0x70]
0000839c .byte    0x28, 0x53, 0x6f, 0x75
000083a0 .byte    0x72, 0x63, 0x65, 0x20
000083a4 fmaxnmv  h13, p0, z1.h
000083a8 uabd     v19.8h, v3.8h, v9.8h
000083ac uqshl    v1.2d, v3.2d, #0x29
000083b0 .byte    0x6e, 0x29, 0x20, 0x3e
000083b4 .byte    0x20, 0x41, 0x73, 0x63
000083b8 .byte    0x69, 0x69, 0x53, 0x74
000083bc uqshl    v18.8h, v3.8h, v5.8h
000083c0 umlal2   v0.4s, v1.8h, v3.h[5]
000083c4 fnmls    z21.h, p4/m, z19.h, z3.h
000083c8 fadd     z9.h, z1.h, z12.h
000083cc .byte    0x6e, 0x67, 0x74, 0x68
000083d0 .byte    0x20, 0x3c, 0x3d, 0x20
000083d4 .byte    0x5f, 0x67, 0x50, 0x63
000083d8 ldpsw    x4, x23, [x27, #0x30]
000083dc .byte    0x78, 0x65, 0x64, 0x41
000083e0 ldpsw    x20, x16, [x19, #-0x58]
000083e4 adr      x12, #0xc7072
000083e8 .byte    0x63, 0x64, 0x4d, 0x61
000083ec .byte    0x78, 0x69, 0x6d, 0x75
000083f0 .byte    0x6d, 0x41, 0x73, 0x63
000083f4 .byte    0x69, 0x69, 0x53, 0x74
000083f8 .byte    0x72, 0x69, 0x6e, 0x67
000083fc .byte    0x4c, 0x65, 0x6e, 0x67
00008400 st1      {v20.4s, v21.4s, v22.4s}, [x3]
00008404 .byte    0x65, 0x6e, 0x67, 0x74
00008408 .byte    0x68, 0x20, 0x3c, 0x20
0000840c .byte    0x5f, 0x67, 0x50, 0x63
00008410 ldpsw    x4, x23, [x27, #0x30]
00008414 .byte    0x78, 0x65, 0x64, 0x41
00008418 ldpsw    x20, x16, [x19, #-0x58]
0000841c adr      x12, #0xc70aa
00008420 .byte    0x63, 0x64, 0x4d, 0x61
00008424 .byte    0x78, 0x69, 0x6d, 0x75
00008428 .byte    0x6d, 0x41, 0x73, 0x63
0000842c .byte    0x69, 0x69, 0x53, 0x74
00008430 .byte    0x72, 0x69, 0x6e, 0x67
00008434 .byte    0x4c, 0x65, 0x6e, 0x67
00008438 .byte    0x74, 0x68, 0x00, 0x41
0000843c ldpsw    x19, x24, [x27, #-0xb8]
00008440 .byte    0x53, 0x74, 0x72, 0x53
00008444 .byte    0x69, 0x7a, 0x65, 0x20
00008448 .byte    0x28, 0x46, 0x69, 0x72
0000844c .byte    0x73, 0x74, 0x53, 0x74
00008450 .byte    0x72, 0x69, 0x6e, 0x67
00008454 .byte    0x29, 0x00, 0x41, 0x73
00008458 .byte    0x63, 0x69, 0x69, 0x53
0000845c ldpsw    x20, x28, [x19, #0x98]
00008460 stnp     w26, w25, [x11, #-0x100]
00008464 sqshlu   v19.2d, v10.2d, #0x23
00008468 .byte    0x6e, 0x64, 0x53, 0x74
0000846c .byte    0x72, 0x69, 0x6e, 0x67
00008470 .byte    0x29, 0x00, 0x41, 0x73
00008474 .byte    0x63, 0x69, 0x69, 0x53
00008478 ldpsw    x20, x28, [x19, #0x98]
0000847c stnp     w26, w25, [x11, #-0x100]
00008480 .byte    0x44, 0x65, 0x73, 0x74
00008484 .byte    0x69, 0x6e, 0x61, 0x74
00008488 ldp      w9, w27, [x27, #-0x90]
0000848c .byte    0x20, 0x21, 0x3d, 0x20
00008490 .byte    0x30, 0x00, 0x41, 0x73
00008494 .byte    0x63, 0x69, 0x69, 0x53
00008498 ldpsw    x20, x28, [x19, #0x98]
0000849c stnp     w26, w25, [x11, #-0x100]
000084a0 ldpsw    x19, x29, [x2, #-0x70]
000084a4 .byte    0x6e, 0x67, 0x29, 0x20
000084a8 adr      x1, #0x48c4d
000084ac .byte    0x00, 0x41, 0x73, 0x63
000084b0 .byte    0x69, 0x69, 0x53, 0x74
000084b4 .byte    0x72, 0x53, 0x69, 0x7a
000084b8 .byte    0x65, 0x20, 0x28, 0x53
000084bc .byte    0x65, 0x61, 0x72, 0x63
000084c0 .byte    0x68, 0x53, 0x74, 0x72
000084c4 ldp      w9, w27, [x19, #-0xc8]
000084c8 .byte    0x20, 0x21, 0x3d, 0x20
000084cc .byte    0x30, 0x00, 0x41, 0x73
000084d0 .byte    0x63, 0x69, 0x69, 0x53
000084d4 ldpsw    x20, x28, [x19, #0x98]
000084d8 stnp     w26, w25, [x11, #-0x100]
000084dc .byte    0x53, 0x6f, 0x75, 0x72
000084e0 .byte    0x63, 0x65, 0x29, 0x20
000084e4 adr      x1, #0x48c89
000084e8 .byte    0x00, 0x28, 0x55, 0x49
000084ec ldp      w14, w21, [x2, #0x70]
000084f0 .byte    0x20, 0x28, 0x28, 0x43
000084f4 ldurb    w8, [x10, #-0xdc]
000084f8 .byte    0x20, 0x2a, 0x29, 0x20
000084fc .byte    0x44, 0x65, 0x73, 0x74
00008500 .byte    0x69, 0x6e, 0x61, 0x74
00008504 .byte    0x69, 0x6f, 0x6e, 0x20
00008508 umlal2   v13.4s, v1.8h, v3.h[1]
0000850c fnmls    z21.h, p4/m, z19.h, z3.h
00008510 .byte    0x29, 0x20, 0x3e, 0x20
00008514 ldpsw    x1, x28, [x26, #-0xe8]
00008518 .byte    0x69, 0x53, 0x74, 0x72
0000851c .byte    0x4c, 0x65, 0x6e, 0x20
00008520 .byte    0x28, 0x53, 0x6f, 0x75
00008524 ldp      w18, w24, [x27, #-0xd8]
00008528 .byte    0x00, 0x28, 0x55, 0x49
0000852c ldp      w14, w21, [x2, #0x70]
00008530 umlal2   v0.4s, v1.8h, v3.h[5]
00008534 fnmls    z21.h, p4/m, z19.h, z3.h
00008538 stnp     w0, w11, [x9, #-0x100]
0000853c .byte    0x43, 0x48, 0x41, 0x52
00008540 stp      w24, w8, [x1, #-0xb0]
00008544 .byte    0x20, 0x44, 0x65, 0x73
00008548 .byte    0x74, 0x69, 0x6e, 0x61
0000854c .byte    0x74, 0x69, 0x6f, 0x6e
00008550 str      b9, [x1, #0xf88]
00008554 .byte    0x20, 0x28, 0x41, 0x73
00008558 .byte    0x63, 0x69, 0x69, 0x53
0000855c ldpsw    x20, x28, [x19, #0x98]
00008560 stnp     w26, w25, [x11, #-0x100]
00008564 .byte    0x53, 0x6f, 0x75, 0x72
00008568 .byte    0x63, 0x65, 0x29, 0x20
0000856c ldpsw    x10, x8, [x1, #-0x68]
00008570 .byte    0x7a, 0x65, 0x6f, 0x66
00008574 .byte    0x20, 0x28, 0x43, 0x48
00008578 tbz      w1, #6, #0xafc0
0000857c ubfx     w9, w9, #0, #0xb
00008580 ldpsw    x20, x28, [x19, #0x98]
00008584 stnp     w26, w25, [x11, #-0x100]
00008588 .byte    0x52, 0x65, 0x74, 0x75
0000858c .byte    0x72, 0x6e, 0x56, 0x61
00008590 ldp      w12, w29, [x11, #-0xd8]
00008594 .byte    0x20, 0x21, 0x3d, 0x20
00008598 .byte    0x30, 0x00, 0x56, 0x61
0000859c .byte    0x6c, 0x75, 0x65, 0x20
000085a0 adr      x28, #0x6a9a5
000085a4 .byte    0x30, 0x00, 0x56, 0x61
000085a8 .byte    0x6c, 0x75, 0x65, 0x20
000085ac ldeorh   w16, w28, [x1]
000085b0 stnp     w1, w12, [x3]
000085b4 .byte    0x56, 0x61, 0x6c, 0x75
000085b8 .byte    0x65, 0x20, 0x26, 0x20
000085bc ldp      w16, w30, [x1, #-0xd0]
000085c0 adr      x0, #0x48d45
000085c4 ubfx     w24, w11, #0, #0x19
000085c8 .byte    0x61, 0x66, 0x65, 0x53
000085cc uabdl2   v20.4s, v19.8h, v9.8h
000085d0 .byte    0x67, 0x2e, 0x63, 0x00
000085d4 .byte    0x28, 0x28, 0x55, 0x49
000085d8 ldp      w14, w21, [x2, #0x70]
000085dc .byte    0x20, 0x53, 0x6f, 0x75
000085e0 .byte    0x72, 0x63, 0x65, 0x20
000085e4 ldeorh   w16, w6, [x1]
000085e8 adr      x16, #0x68bed
000085ec adds     w16, w1, #0xc0c
000085f0 str      b9, [x1, #0xf48]
000085f4 stnp     w0, w12, [x1]
000085f8 .byte    0x44, 0x65, 0x73, 0x74
000085fc .byte    0x69, 0x6e, 0x61, 0x74
00008600 .byte    0x69, 0x6f, 0x6e, 0x20
00008604 stnp     w1, w15, [x9, #-0x100]
00008608 ldpsw    x8, x29, [x17, #-0x88]
0000860c stp      w4, w8, [x3, #-0xb0]
00008610 stp      w0, w12, [x1, #-0xb8]
00008614 umlal2   v0.4s, v0.8h, v3.h[5]
00008618 fnmls    z21.h, p4/m, z19.h, z3.h
0000861c .byte    0x20, 0x21, 0x3d, 0x20
00008620 umlal2   v8.4s, v1.8h, v6.h[7]
00008624 orn      w9, w3, w0, lsl #25
00008628 stp      w9, w8, [x1, #-0x80]
0000862c .byte    0x29, 0x00, 0x28, 0x44
00008630 .byte    0x65, 0x73, 0x74, 0x4d
00008634 str      b1, [x3, x0, lsl #0]
00008638 .byte    0x3d, 0x20, 0x28, 0x5f
0000863c .byte    0x67, 0x50, 0x63, 0x64
00008640 .byte    0x5f, 0x46, 0x69, 0x78
00008644 .byte    0x65, 0x64, 0x41, 0x74
00008648 ldnp     d2, d29, [x10, #-0x170]
0000864c .byte    0x64, 0x5f, 0x50, 0x63
00008650 .byte    0x64, 0x4d, 0x61, 0x78
00008654 ldp      d9, d27, [x11, #-0xb0]
00008658 .byte    0x55, 0x6e, 0x69, 0x63
0000865c .byte    0x6f, 0x64, 0x65, 0x53
00008660 uabdl2   v20.4s, v19.8h, v9.8h
00008664 uqshl    v7.8h, v3.8h, v5.8h
00008668 ldp      w7, w29, [x3, #-0xc0]
0000866c .byte    0x29, 0x00, 0x28, 0x44
00008670 .byte    0x65, 0x73, 0x74, 0x4d
00008674 .byte    0x61, 0x78, 0x20, 0x21
00008678 stp      w29, w8, [x1, #-0x80]
0000867c fmaxnmv  h0, p2, z0.h
00008680 .byte    0x73, 0x74, 0x4d, 0x61
00008684 .byte    0x78, 0x20, 0x3e, 0x20
00008688 .byte    0x53, 0x6f, 0x75, 0x72
0000868c fcmeq    p3.h, p1/z, z11.h, z12.h
00008690 .byte    0x6e, 0x29, 0x00, 0x49
00008694 .byte    0x6e, 0x74, 0x65, 0x72
00008698 .byte    0x6e, 0x61, 0x6c, 0x53
0000869c .byte    0x61, 0x66, 0x65, 0x53
000086a0 uabdl2   v20.4s, v19.8h, v9.8h
000086a4 .byte    0x67, 0x4e, 0x6f, 0x53
000086a8 .byte    0x74, 0x72, 0x4f, 0x76
000086ac .byte    0x65, 0x72, 0x6c, 0x61
000086b0 .byte    0x70, 0x20, 0x28, 0x44
000086b4 ldpsw    x5, x28, [x27, #-0x60]
000086b8 ldpsw    x14, x24, [x11, #-0x60]
000086bc .byte    0x6f, 0x6e, 0x2c, 0x20
000086c0 .byte    0x44, 0x65, 0x73, 0x74
000086c4 ldnp     s13, s24, [x10, #-0x40]
000086c8 .byte    0x20, 0x28, 0x43, 0x48
000086cc tbz      w1, #6, #0xb114
000086d0 .byte    0x20, 0x2a, 0x29, 0x53
000086d4 .byte    0x6f, 0x75, 0x72, 0x63
000086d8 .byte    0x65, 0x2c, 0x20, 0x53
000086dc .byte    0x6f, 0x75, 0x72, 0x63
000086e0 uqshl    v5.8h, v3.8h, v5.8h
000086e4 adds     w0, w25, #0x80a
000086e8 .byte    0x29, 0x00, 0x28, 0x4c
000086ec .byte    0x65, 0x6e, 0x67, 0x74
000086f0 str      b8, [x3, #0xf08]
000086f4 .byte    0x20, 0x28, 0x5f, 0x67
000086f8 .byte    0x50, 0x63, 0x64, 0x5f
000086fc fnmls    z6.h, p2/m, z10.h, z24.h
00008700 .byte    0x64, 0x41, 0x74, 0x42
00008704 .byte    0x75, 0x69, 0x6c, 0x64
00008708 .byte    0x5f, 0x50, 0x63, 0x64
0000870c ldpsw    x13, x24, [x10, #-0x40]
00008710 .byte    0x6d, 0x75, 0x6d, 0x55
00008714 umlsl2   v14.4s, v11.8h, v3.h[6]
00008718 .byte    0x64, 0x65, 0x53, 0x74
0000871c .byte    0x72, 0x69, 0x6e, 0x67
00008720 .byte    0x4c, 0x65, 0x6e, 0x67
00008724 stp      w20, w26, [x3, #-0xb8]
00008728 umlal2   v0.4s, v0.8h, v3.h[4]
0000872c fcmne    p0.h, p6/z, z11.h, z12.h
00008730 str      b14, [x3, #0x848]
00008734 .byte    0x20, 0x30, 0x29, 0x00
00008738 adr      x8, #0xe6f9f
0000873c uqshl    v25.8h, v3.8h, v5.8h
00008740 .byte    0x20, 0x3e, 0x20, 0x53
00008744 .byte    0x6f, 0x75, 0x72, 0x63
00008748 uqshl    v5.8h, v3.8h, v5.8h
0000874c .byte    0x29, 0x00, 0x28, 0x53
00008750 uabdl2   v20.4s, v19.8h, v9.8h
00008754 str      b7, [x3, #0x848]
00008758 .byte    0x20, 0x28, 0x28, 0x76
0000875c .byte    0x6f, 0x69, 0x64, 0x20
00008760 adr      x10, #0x48c85
00008764 stnp     w9, w10, [x9]
00008768 .byte    0x44, 0x61, 0x74, 0x61
0000876c .byte    0x20, 0x21, 0x3d, 0x20
00008770 umlal2   v8.4s, v1.8h, v6.h[7]
00008774 orn      w9, w3, w0, lsl #25
00008778 stp      w9, w8, [x1, #-0x80]
0000877c .byte    0x29, 0x00, 0x28, 0x53
00008780 .byte    0x74, 0x72, 0x6e, 0x4c
00008784 .byte    0x65, 0x6e, 0x53, 0x20
00008788 .byte    0x28, 0x53, 0x74, 0x72
0000878c ldnp     s9, s27, [x19, #-0xc8]
00008790 .byte    0x20, 0x28, 0x5f, 0x67
00008794 .byte    0x50, 0x63, 0x64, 0x5f
00008798 fnmls    z6.h, p2/m, z10.h, z24.h
0000879c .byte    0x64, 0x41, 0x74, 0x42
000087a0 .byte    0x75, 0x69, 0x6c, 0x64
000087a4 .byte    0x5f, 0x50, 0x63, 0x64
000087a8 ldpsw    x13, x24, [x10, #-0x40]
000087ac .byte    0x6d, 0x75, 0x6d, 0x55
000087b0 umlsl2   v14.4s, v11.8h, v3.h[6]
000087b4 .byte    0x64, 0x65, 0x53, 0x74
000087b8 .byte    0x72, 0x69, 0x6e, 0x67
000087bc .byte    0x4c, 0x65, 0x6e, 0x67
000087c0 .byte    0x74, 0x68, 0x29, 0x20
000087c4 stp      w11, w8, [x1, #-0x78]
000087c8 .byte    0x20, 0x3c, 0x3d, 0x20
000087cc adr      x8, #0xd73b2
000087d0 .byte    0x63, 0x64, 0x5f, 0x46
000087d4 .byte    0x69, 0x78, 0x65, 0x64
000087d8 .byte    0x41, 0x74, 0x42, 0x75
000087dc .byte    0x69, 0x6c, 0x64, 0x5f
000087e0 .byte    0x50, 0x63, 0x64, 0x4d
000087e4 ldp      d1, d30, [x3, #-0x170]
000087e8 .byte    0x75, 0x6d, 0x55, 0x6e
000087ec .byte    0x69, 0x63, 0x6f, 0x64
000087f0 .byte    0x65, 0x53, 0x74, 0x72
000087f4 .byte    0x69, 0x6e, 0x67, 0x4c
000087f8 .byte    0x65, 0x6e, 0x67, 0x74
000087fc .byte    0x68, 0x29, 0x29, 0x00
00008800 bfdot    z8.s, z9.h, z4.h[0]
00008804 .byte    0x72, 0x65, 0x73, 0x73
00008808 .byte    0x20, 0x21, 0x3d, 0x20
0000880c umlal2   v8.4s, v1.8h, v6.h[7]
00008810 orn      w9, w3, w0, lsl #25
00008814 stp      w9, w8, [x1, #-0x80]
00008818 fcmla    z9.h, p0/m, z1.h, z1.h, #0
0000881c .byte    0x64, 0x72, 0x65, 0x73
00008820 .byte    0x73, 0x49, 0x6e, 0x64
00008824 .byte    0x65, 0x78, 0x20, 0x2b
00008828 .byte    0x20, 0x31, 0x20, 0x3c
0000882c ldpsw    x0, x10, [x1, #-0x68]
00008830 .byte    0x7a, 0x65, 0x6f, 0x66
00008834 fcmla    z0.h, p2/m, z1.h, z1.h, #0x5a
00008838 .byte    0x64, 0x72, 0x65, 0x73
0000883c .byte    0x73, 0x2d, 0x3e, 0x41
00008840 ldp      w4, w25, [x3, #-0x70]
00008844 .byte    0x20, 0x2f, 0x20, 0x73
00008848 fcmla    v9.8h, v19.8h, v5.h[3], #0x10e
0000884c stnp     w6, w8, [x3, #-0xc0]
00008850 .byte    0x41, 0x64, 0x64, 0x72
00008854 ldp      s5, s28, [x27, #-0x68]
00008858 bfdot    z30.s, z9.h, z4.h[0]
0000885c adr      x18, #0xbed89
00008860 .byte    0x5d, 0x29, 0x29, 0x00
00008864 ldpsw    x8, x17, [x25, #-0x58]
00008868 str      b4, [x3, #0x848]
0000886c .byte    0x20, 0x28, 0x28, 0x76
00008870 .byte    0x6f, 0x69, 0x64, 0x20
00008874 adr      x10, #0x48d99
00008878 stnp     w9, w10, [x9]
0000887c .byte    0x42, 0x75, 0x66, 0x66
00008880 .byte    0x65, 0x72, 0x20, 0x21
00008884 stnp     w29, w8, [x1, #-0xc0]
00008888 .byte    0x76, 0x6f, 0x69, 0x64
0000888c .byte    0x20, 0x2a, 0x29, 0x20
00008890 .byte    0x30, 0x29, 0x29, 0x00
00008894 .byte    0x28, 0x28, 0x4c, 0x65
00008898 .byte    0x6e, 0x67, 0x74, 0x68
0000889c adr      x0, #0x48d61
000088a0 adr      x24, #0x68ead
000088a4 adr      x16, #0x68ea9
000088a8 str      b17, [x9, #0x80a]
000088ac stp      w29, w8, [x1, #-0x80]
000088b0 .byte    0x00, 0x28, 0x4d, 0x61
000088b4 .byte    0x78, 0x42, 0x75, 0x66
000088b8 .byte    0x66, 0x65, 0x72, 0x53
000088bc .byte    0x69, 0x7a, 0x65, 0x20
000088c0 .byte    0x3e, 0x3d, 0x20, 0x4c
000088c4 .byte    0x65, 0x6e, 0x67, 0x74
000088c8 .byte    0x68, 0x20, 0x2f, 0x20
000088cc stnp     w18, w10, [x9]
000088d0 .byte    0x44, 0x65, 0x73, 0x74
000088d4 .byte    0x4d, 0x61, 0x78, 0x20
000088d8 stnp     w28, w15, [x9, #-0x100]
000088dc .byte    0x5f, 0x67, 0x50, 0x63
000088e0 ldpsw    x4, x23, [x27, #0x30]
000088e4 .byte    0x78, 0x65, 0x64, 0x41
000088e8 ldpsw    x20, x16, [x19, #-0x58]
000088ec adr      x12, #0xc757a
000088f0 .byte    0x63, 0x64, 0x4d, 0x61
000088f4 .byte    0x78, 0x69, 0x6d, 0x75
000088f8 .byte    0x6d, 0x41, 0x73, 0x63
000088fc .byte    0x69, 0x69, 0x53, 0x74
00008900 .byte    0x72, 0x69, 0x6e, 0x67
00008904 .byte    0x4c, 0x65, 0x6e, 0x67
00008908 stp      w20, w26, [x3, #-0xb8]
0000890c .byte    0x00, 0x49, 0x6e, 0x74
00008910 .byte    0x65, 0x72, 0x6e, 0x61
00008914 .byte    0x6c, 0x53, 0x61, 0x66
00008918 .byte    0x65, 0x53, 0x74, 0x72
0000891c smin     v9.8h, v19.8h, v7.8h
00008920 .byte    0x6f, 0x41, 0x73, 0x63
00008924 .byte    0x69, 0x69, 0x53, 0x74
00008928 fnmla    z18.h, p3/m, z27.h, z22.h
0000892c adr      x18, #0xcb6bb
00008930 fmaxnmv  h0, p2, z1.h
00008934 uabd     v19.8h, v3.8h, v9.8h
00008938 uqshl    v1.2d, v3.2d, #0x29
0000893c .byte    0x6e, 0x2c, 0x20, 0x44
00008940 .byte    0x65, 0x73, 0x74, 0x4d
00008944 .byte    0x61, 0x78, 0x2c, 0x20
00008948 .byte    0x28, 0x43, 0x48, 0x41
0000894c orn      w18, w2, w0, lsl #14
00008950 .byte    0x29, 0x53, 0x6f, 0x75
00008954 ldnp     s18, s24, [x27, #-0xd8]
00008958 .byte    0x20, 0x53, 0x6f, 0x75
0000895c .byte    0x72, 0x63, 0x65, 0x4c
00008960 adds     w5, w19, w0, uxtx #3
00008964 .byte    0x20, 0x31, 0x29, 0x00
00008968 uqshl    v8.8h, v1.8h, v5.8h
0000896c .byte    0x67, 0x74, 0x68, 0x20
00008970 stnp     w28, w15, [x9, #-0x100]
00008974 .byte    0x5f, 0x67, 0x50, 0x63
00008978 ldpsw    x4, x23, [x27, #0x30]
0000897c .byte    0x78, 0x65, 0x64, 0x41
00008980 ldpsw    x20, x16, [x19, #-0x58]
00008984 adr      x12, #0xc7612
00008988 .byte    0x63, 0x64, 0x4d, 0x61
0000898c .byte    0x78, 0x69, 0x6d, 0x75
00008990 .byte    0x6d, 0x41, 0x73, 0x63
00008994 .byte    0x69, 0x69, 0x53, 0x74
00008998 .byte    0x72, 0x69, 0x6e, 0x67
0000899c .byte    0x4c, 0x65, 0x6e, 0x67
000089a0 stp      w20, w26, [x3, #-0xb8]
000089a4 .byte    0x00, 0x28, 0x41, 0x73
000089a8 .byte    0x63, 0x69, 0x69, 0x53
000089ac .byte    0x74, 0x72, 0x6e, 0x4c
000089b0 .byte    0x65, 0x6e, 0x53, 0x20
000089b4 .byte    0x28, 0x53, 0x74, 0x72
000089b8 ldnp     s9, s27, [x19, #-0xc8]
000089bc .byte    0x20, 0x28, 0x5f, 0x67
000089c0 .byte    0x50, 0x63, 0x64, 0x5f
000089c4 fnmls    z6.h, p2/m, z10.h, z24.h
000089c8 .byte    0x64, 0x41, 0x74, 0x42
000089cc .byte    0x75, 0x69, 0x6c, 0x64
000089d0 .byte    0x5f, 0x50, 0x63, 0x64
000089d4 ldpsw    x13, x24, [x10, #-0x40]
000089d8 .byte    0x6d, 0x75, 0x6d, 0x41
000089dc ldpsw    x19, x24, [x27, #-0xb8]
000089e0 ldpsw    x19, x29, [x2, #-0x70]
000089e4 fcmeq    p14.h, p1/z, z27.h, z12.h
000089e8 .byte    0x6e, 0x67, 0x74, 0x68
000089ec .byte    0x29, 0x20, 0x2b, 0x20
000089f0 .byte    0x31, 0x29, 0x20, 0x3c
000089f4 .byte    0x3d, 0x20, 0x28, 0x5f
000089f8 .byte    0x67, 0x50, 0x63, 0x64
000089fc .byte    0x5f, 0x46, 0x69, 0x78
00008a00 .byte    0x65, 0x64, 0x41, 0x74
00008a04 ldnp     d2, d29, [x10, #-0x170]
00008a08 .byte    0x64, 0x5f, 0x50, 0x63
00008a0c .byte    0x64, 0x4d, 0x61, 0x78
00008a10 ldp      d9, d27, [x11, #-0xb0]
00008a14 ldpsw    x1, x28, [x26, #-0xe8]
00008a18 .byte    0x69, 0x53, 0x74, 0x72
00008a1c .byte    0x69, 0x6e, 0x67, 0x4c
00008a20 .byte    0x65, 0x6e, 0x67, 0x74
00008a24 .byte    0x68, 0x29, 0x29, 0x00
00008a28 .byte    0x21, 0x49, 0x6e, 0x74
00008a2c .byte    0x65, 0x72, 0x6e, 0x61
00008a30 .byte    0x6c, 0x53, 0x61, 0x66
00008a34 .byte    0x65, 0x53, 0x74, 0x72
00008a38 .byte    0x69, 0x6e, 0x67, 0x49
00008a3c fnmla    z19.h, p3/m, z27.h, z22.h
00008a40 adr      x18, #0xcb7cf
00008a44 fmaxnmv  h0, p2, z1.h
00008a48 uabd     v19.8h, v3.8h, v9.8h
00008a4c uqshl    v1.2d, v3.2d, #0x29
00008a50 .byte    0x6e, 0x2c, 0x20, 0x44
00008a54 .byte    0x65, 0x73, 0x74, 0x4d
00008a58 .byte    0x61, 0x78, 0x2c, 0x20
00008a5c ldpsw    x8, x29, [x17, #-0x88]
00008a60 stp      w4, w8, [x3, #-0xb0]
00008a64 .byte    0x53, 0x6f, 0x75, 0x72
00008a68 .byte    0x63, 0x65, 0x2c, 0x20
00008a6c .byte    0x28, 0x53, 0x6f, 0x75
00008a70 .byte    0x72, 0x63, 0x65, 0x4c
00008a74 adds     w5, w19, w0, uxtx #3
00008a78 .byte    0x20, 0x31, 0x29, 0x20
00008a7c ldpsw    x10, x8, [x1, #-0x68]
00008a80 .byte    0x7a, 0x65, 0x6f, 0x66
00008a84 .byte    0x28, 0x43, 0x48, 0x41
00008a88 stp      w18, w12, [x10, #-0x50]
00008a8c .byte    0x29, 0x00, 0x28, 0x44
00008a90 ldpsw    x5, x28, [x27, #-0x60]
00008a94 ldpsw    x14, x24, [x11, #-0x60]
00008a98 fcmeq    p15.h, p3/z, z19.h, z12.h
00008a9c .byte    0x6e, 0x67, 0x74, 0x68
00008aa0 .byte    0x20, 0x21, 0x3d, 0x20
00008aa4 umlal2   v8.4s, v1.8h, v6.h[7]
00008aa8 orn      w9, w3, w0, lsl #25
00008aac stp      w9, w8, [x1, #-0x80]
00008ab0 .byte    0x29, 0x00, 0x21, 0x49
00008ab4 .byte    0x6e, 0x74, 0x65, 0x72
00008ab8 .byte    0x6e, 0x61, 0x6c, 0x53
00008abc .byte    0x61, 0x66, 0x65, 0x53
00008ac0 uabdl2   v20.4s, v19.8h, v9.8h
00008ac4 .byte    0x67, 0x49, 0x73, 0x4f
00008ac8 ldnp     d22, d25, [x11, #-0xe0]
00008acc stnp     w1, w28, [x3, #-0x100]
00008ad0 .byte    0x44, 0x65, 0x73, 0x74
00008ad4 .byte    0x69, 0x6e, 0x61, 0x74
00008ad8 ldnp     s9, s27, [x27, #-0x90]
00008adc .byte    0x20, 0x44, 0x65, 0x73
00008ae0 .byte    0x74, 0x4d, 0x61, 0x78
00008ae4 .byte    0x20, 0x2a, 0x20, 0x73
00008ae8 fcmla    v9.8h, v19.8h, v5.h[3], #0x10e
00008aec .byte    0x66, 0x28, 0x43, 0x48
00008af0 tbz      w1, #6, #0xb538
00008af4 stnp     w9, w11, [x1, #-0x100]
00008af8 .byte    0x76, 0x6f, 0x69, 0x64
00008afc .byte    0x20, 0x2a, 0x29, 0x53
00008b00 .byte    0x6f, 0x75, 0x72, 0x63
00008b04 .byte    0x65, 0x2c, 0x20, 0x53
00008b08 .byte    0x6f, 0x75, 0x72, 0x63
00008b0c uqshl    v5.8h, v3.8h, v5.8h
00008b10 adds     w0, w25, #0x80a
00008b14 ldpsw    x9, x0, [x1, #0x20]
00008b18 cbz      w22, #0x755c4
00008b1c usubw    v24.8h, v27.8h, v18.8b
00008b20 ldpsw    x3, x0, [x3, #0x20]
00008b24 umlsl2   v22.4s, v11.8h, v3.h[7]
00008b28 str      b18, [x3, #0x848]
00008b2c .byte    0x20, 0x30, 0x00, 0x55
00008b30 .byte    0x65, 0x66, 0x69, 0x42
00008b34 .byte    0x6f, 0x6f, 0x74, 0x53
00008b38 ldpsw    x5, x28, [x19, #-0x50]
00008b3c b.lo     #0xef7e8
00008b40 fnmls    z1.h, p0/m, z19.h, z12.h
00008b44 .byte    0x4c, 0x69, 0x62, 0x2e
00008b48 .byte    0x63, 0x00, 0x67, 0x49
00008b4c fnmls    z13.h, p0/m, z11.h, z7.h
00008b50 .byte    0x48, 0x61, 0x6e, 0x64
00008b54 .byte    0x6c, 0x65, 0x20, 0x21
00008b58 stnp     w29, w8, [x1, #-0xc0]
00008b5c .byte    0x76, 0x6f, 0x69, 0x64
00008b60 .byte    0x20, 0x2a, 0x29, 0x20
00008b64 .byte    0x30, 0x29, 0x00, 0x67
00008b68 .byte    0x53, 0x54, 0x20, 0x21
00008b6c stnp     w29, w8, [x1, #-0xc0]
00008b70 .byte    0x76, 0x6f, 0x69, 0x64
00008b74 .byte    0x20, 0x2a, 0x29, 0x20
00008b78 .byte    0x30, 0x29, 0x00, 0x67
00008b7c .byte    0x42, 0x53, 0x20, 0x21
00008b80 stnp     w29, w8, [x1, #-0xc0]
00008b84 .byte    0x76, 0x6f, 0x69, 0x64
00008b88 .byte    0x20, 0x2a, 0x29, 0x20
00008b8c .byte    0x30, 0x29, 0x00, 0x55
00008b90 .byte    0x65, 0x66, 0x69, 0x52
00008b94 ldpsw    x21, x27, [x19, #-0x60]
00008b98 fcmeq    p13.h, p1/z, z11.h, z19.h
00008b9c .byte    0x72, 0x76, 0x69, 0x63
00008ba0 .byte    0x65, 0x73, 0x54, 0x61
00008ba4 .byte    0x62, 0x6c, 0x65, 0x4c
00008ba8 .byte    0x69, 0x62, 0x2e, 0x63
00008bac b.eq     #0xad88c
00008bb0 .byte    0x20, 0x21, 0x3d, 0x20
00008bb4 umlal2   v8.4s, v1.8h, v6.h[7]
00008bb8 orn      w9, w3, w0, lsl #25
00008bbc stp      w9, w8, [x1, #-0x80]
00008bc0 .byte    0x00, 0x55, 0x65, 0x66
00008bc4 .byte    0x69, 0x4c, 0x69, 0x62
00008bc8 b.al     #0x982c
00008bcc fnmls    z1.h, p0/m, z19.h, z12.h
00008bd0 .byte    0x47, 0x75, 0x69, 0x64
00008bd4 .byte    0x20, 0x21, 0x3d, 0x20
00008bd8 umlal2   v8.4s, v1.8h, v6.h[7]
00008bdc orn      w9, w3, w0, lsl #25
00008be0 stp      w9, w8, [x1, #-0x80]
00008be4 .byte    0x00, 0x54, 0x61, 0x62
00008be8 .byte    0x6c, 0x65, 0x20, 0x21
00008bec stnp     w29, w8, [x1, #-0xc0]
00008bf0 .byte    0x76, 0x6f, 0x69, 0x64
00008bf4 .byte    0x20, 0x2a, 0x29, 0x20
00008bf8 adr      x16, #0x911e
00008bfc .byte    0x72, 0x6f, 0x74, 0x6f
00008c00 .byte    0x63, 0x6f, 0x6c, 0x47
00008c04 .byte    0x75, 0x69, 0x64, 0x20
00008c08 stnp     w1, w15, [x9, #-0x100]
00008c0c ldpsw    x8, x29, [x17, #-0x88]
00008c10 stp      w4, w8, [x3, #-0xb0]
00008c14 .byte    0x20, 0x30, 0x29, 0x00
00008c18 ldpsw    x14, x27, [x26, #-0x60]
00008c1c .byte    0x66, 0x79, 0x46, 0x75
00008c20 ldpsw    x14, x24, [x27, #-0x60]
00008c24 .byte    0x6f, 0x6e, 0x20, 0x21
00008c28 stnp     w29, w8, [x1, #-0xc0]
00008c2c .byte    0x76, 0x6f, 0x69, 0x64
00008c30 .byte    0x20, 0x2a, 0x29, 0x20
00008c34 eor      w16, w9, #0x7ff
00008c38 .byte    0x65, 0x67, 0x69, 0x73
00008c3c .byte    0x74, 0x72, 0x61, 0x74
00008c40 .byte    0x69, 0x6f, 0x6e, 0x20
00008c44 stnp     w1, w15, [x9, #-0x100]
00008c48 ldpsw    x8, x29, [x17, #-0x88]
00008c4c stp      w4, w8, [x3, #-0xb0]
00008c50 .byte    0x20, 0x30, 0x29, 0x00
00008c54 fnmls    z14.h, p0/m, z10.h, z13.h
00008c58 .byte    0x20, 0x21, 0x3d, 0x20
00008c5c umlal2   v8.4s, v1.8h, v6.h[7]
00008c60 orn      w9, w3, w0, lsl #25
00008c64 stp      w9, w8, [x1, #-0x80]
00008c68 .byte    0x00, 0x4e, 0x6f, 0x74
00008c6c b.ls     #0xfb938
00008c70 .byte    0x70, 0x6c, 0x20, 0x3c
00008c74 adds     w29, w1, #0xcc8
00008c78 .byte    0x00, 0x4c, 0x6f, 0x63
00008c7c str      b11, [x3, #0x848]
00008c80 .byte    0x20, 0x28, 0x28, 0x76
00008c84 .byte    0x6f, 0x69, 0x64, 0x20
00008c88 adr      x10, #0x491ad
00008c8c .byte    0x29, 0x00, 0x50, 0x72
00008c90 ldpsw    x9, x27, [x27, #-0x70]
00008c94 str      b20, [x11, x0, lsl #0]
00008c98 adds     w29, w1, #0xcc8
00008c9c .byte    0x00, 0x4c, 0x6f, 0x63
00008ca0 .byte    0x6b, 0x2d, 0x3e, 0x4c
00008ca4 .byte    0x6f, 0x63, 0x6b, 0x20
00008ca8 .byte    0x3d, 0x3d, 0x20, 0x45
00008cac umlsl2   v6.4s, v11.8h, v12.h[4]
00008cb0 fcmeq    p3.h, p2/z, z27.h, z18.h
00008cb4 .byte    0x6c, 0x65, 0x61, 0x73
00008cb8 st1      {v5.8h, v6.8h, v7.8h}, [x3]
00008cbc ldp      s15, s24, [x27, #-0xa8]
00008cc0 .byte    0x3e, 0x4c, 0x6f, 0x63
00008cc4 str      b11, [x3, #0x848]
00008cc8 ldpsw    x0, x17, [x9, #-0xd0]
00008ccc .byte    0x4c, 0x6f, 0x63, 0x6b
00008cd0 umin     v21.8h, v18.8h, v9.8h
00008cd4 .byte    0x69, 0x74, 0x69, 0x61
00008cd8 fnmls    z12.h, p2/m, z11.h, z26.h
00008cdc mla      v4.8h, v3.8h, v12.h[0]
00008ce0 .byte    0x63, 0x6b, 0x2d, 0x3e
00008ce4 .byte    0x4c, 0x6f, 0x63, 0x6b
00008ce8 .byte    0x20, 0x3d, 0x3d, 0x20
00008cec .byte    0x45, 0x66, 0x69, 0x4c
00008cf0 .byte    0x6f, 0x63, 0x6b, 0x41
00008cf4 ldpsw    x3, x28, [x11, #-0x58]
00008cf8 .byte    0x72, 0x65, 0x64, 0x00
00008cfc .byte    0x47, 0x75, 0x69, 0x64
00008d00 .byte    0x20, 0x21, 0x3d, 0x20
00008d04 umlal2   v8.4s, v1.8h, v6.h[7]
00008d08 orn      w9, w3, w0, lsl #25
00008d0c stp      w9, w8, [x1, #-0x80]
00008d10 ldp      d0, d19, [x16, #-0x1f0]
00008d14 str      b5, [x3, #0x848]
00008d18 .byte    0x20, 0x28, 0x28, 0x76
00008d1c .byte    0x6f, 0x69, 0x64, 0x20
00008d20 adr      x10, #0x49245
00008d24 .byte    0x29, 0x20, 0x26, 0x26
00008d28 ldpsw    x0, x17, [x25, #-0x58]
00008d2c str      b4, [x3, #0x848]
00008d30 .byte    0x20, 0x28, 0x28, 0x76
00008d34 .byte    0x6f, 0x69, 0x64, 0x20
00008d38 adr      x10, #0x4925d
00008d3c .byte    0x29, 0x20, 0x26, 0x26
00008d40 ldnp     d0, d21, [x17, #-0x1f0]
00008d44 .byte    0x75, 0x65, 0x20, 0x21
00008d48 stnp     w29, w8, [x1, #-0xc0]
00008d4c .byte    0x76, 0x6f, 0x69, 0x64
00008d50 .byte    0x20, 0x2a, 0x29, 0x20
00008d54 orr      w16, w9, w0, lsl #10
00008d58 .byte    0x56, 0x61, 0x6c, 0x75
00008d5c str      b5, [x3, #0x848]
00008d60 .byte    0x20, 0x28, 0x28, 0x76
00008d64 .byte    0x6f, 0x69, 0x64, 0x20
00008d68 adr      x10, #0x4928d
00008d6c .byte    0x29, 0x00, 0x53, 0x75
00008d70 .byte    0x70, 0x70, 0x6f, 0x72
00008d74 .byte    0x74, 0x65, 0x64, 0x4c
00008d78 .byte    0x61, 0x6e, 0x67, 0x75
00008d7c .byte    0x61, 0x67, 0x65, 0x73
00008d80 .byte    0x20, 0x21, 0x3d, 0x20
00008d84 umlal2   v8.4s, v1.8h, v6.h[7]
00008d88 orn      w9, w3, w0, lsl #25
00008d8c stp      w9, w8, [x1, #-0x80]
00008d90 .byte    0x00, 0x48, 0x6f, 0x62
00008d94 .byte    0x4c, 0x69, 0x62, 0x2e
00008d98 .byte    0x63, 0x00, 0x6d, 0x48
00008d9c ldpsw    x15, x24, [x19, #0x60]
00008da0 .byte    0x73, 0x74, 0x20, 0x21
00008da4 stnp     w29, w8, [x1, #-0xc0]
00008da8 .byte    0x76, 0x6f, 0x69, 0x64
00008dac .byte    0x20, 0x2a, 0x29, 0x20
00008db0 stxrh    w0, w16, [x9]
00008db4 .byte    0x6f, 0x62, 0x53, 0x74
00008db8 .byte    0x61, 0x72, 0x74, 0x20
00008dbc stnp     w1, w15, [x9, #-0x100]
00008dc0 ldpsw    x8, x29, [x17, #-0x88]
00008dc4 stp      w4, w8, [x3, #-0xb0]
00008dc8 .byte    0x20, 0x30, 0x29, 0x00
00008dcc smlal2   v8.4s, v1.8h, v2.h[4]
00008dd0 .byte    0x4f, 0x4c, 0x45, 0x41
00008dd4 adr      x14, #0x592fd
00008dd8 stp      w29, w15, [x9, #-0x78]
00008ddc .byte    0x29, 0x00, 0x41, 0x72
00008de0 .byte    0x6d, 0x41, 0x72, 0x63
00008de4 ldp      d8, d21, [x3, #-0x170]
00008de8 ldpsw    x5, x28, [x19, #0x60]
00008dec .byte    0x62, 0x2e, 0x63, 0x00
00008df0 adr      x8, #0xd79d6
00008df4 .byte    0x63, 0x64, 0x5f, 0x46
00008df8 .byte    0x69, 0x78, 0x65, 0x64
00008dfc .byte    0x41, 0x74, 0x42, 0x75
00008e00 .byte    0x69, 0x6c, 0x64, 0x5f
00008e04 .byte    0x50, 0x63, 0x64, 0x41
00008e08 .byte    0x72, 0x6d, 0x41, 0x72
00008e0c ldpsw    x3, x26, [x3, #0xa0]
00008e10 .byte    0x6d, 0x65, 0x72, 0x46
00008e14 .byte    0x72, 0x65, 0x71, 0x49
00008e18 mls      v14.4h, v3.4h, v10.h[7]
00008e1c adr      x17, #0x69421
00008e20 .byte    0x30, 0x30, 0x30, 0x55
00008e24 .byte    0x29, 0x00, 0x41, 0x72
00008e28 ushl     v13.8h, v27.8h, v5.8h
00008e2c .byte    0x65, 0x72, 0x69, 0x63
00008e30 fnmls    z20.h, p2/m, z10.h, z13.h
00008e34 .byte    0x72, 0x47, 0x65, 0x74
00008e38 fnmls    z20.h, p2/m, z10.h, z13.h
00008e3c fnmla    z18.h, p1/m, z19.h, z18.h
00008e40 stp      w17, w8, [x3, #-0xc0]
00008e44 .byte    0x20, 0x21, 0x3d, 0x20
00008e48 .byte    0x30, 0x00, 0x41, 0x52
00008e4c .byte    0x4d, 0x20, 0x41, 0x72
00008e50 .byte    0x63, 0x68, 0x69, 0x74
00008e54 .byte    0x65, 0x63, 0x74, 0x75
00008e58 .byte    0x72, 0x61, 0x6c, 0x20
00008e5c fnmls    z20.h, p2/m, z10.h, z13.h
00008e60 .byte    0x72, 0x20, 0x69, 0x73
00008e64 .byte    0x20, 0x6e, 0x6f, 0x74
00008e68 .byte    0x20, 0x61, 0x76, 0x61
00008e6c .byte    0x69, 0x6c, 0x61, 0x62
00008e70 .byte    0x6c, 0x65, 0x20, 0x69
00008e74 .byte    0x6e, 0x20, 0x74, 0x68
00008e78 adr      x5, #0x8f286
00008e7c .byte    0x55, 0x2c, 0x20, 0x68
00008e80 fnmls    z5.h, p3/m, z19.h, z3.h
00008e84 ldpsw    x0, x29, [x1, #-0xc0]
00008e88 ldpsw    x19, x8, [x3, #-0xa0]
00008e8c .byte    0x62, 0x72, 0x61, 0x72
00008e90 .byte    0x79, 0x20, 0x63, 0x61
00008e94 .byte    0x6e, 0x6e, 0x6f, 0x74
00008e98 .byte    0x20, 0x62, 0x65, 0x20
00008e9c .byte    0x75, 0x73, 0x65, 0x64
00008ea0 adr      x14, #0x8fe5
00008ea4 udf      #0
00008ea8 udf      #0
00008eac udf      #0
00008eb0 udf      #0
00008eb4 udf      #0
00008eb8 udf      #0
00008ebc udf      #0
00008ec0 udf      #0
00008ec4 udf      #0
00008ec8 udf      #0
00008ecc udf      #0
00008ed0 udf      #0
00008ed4 udf      #0
00008ed8 udf      #0
00008edc udf      #0
00008ee0 udf      #0
00008ee4 udf      #0
00008ee8 udf      #0
00008eec udf      #0
00008ef0 udf      #0x4e28
00008ef4 udf      #0
00008ef8 udf      #0
00008efc udf      #0
00008f00 udf      #0
00008f04 udf      #0
00008f08 udf      #0
00008f0c udf      #0
00008f10 udf      #0
00008f14 udf      #0
00008f18 udf      #0
00008f1c udf      #0
00008f20 udf      #0
00008f24 udf      #0
00008f28 udf      #0
00008f2c udf      #0
00008f30 .byte    0x00, 0x00, 0x00, 0xff
00008f34 .byte    0xff, 0xff, 0xff, 0xff
00008f38 udf      #0
00008f3c udf      #0
00008f40 udf      #0
00008f44 udf      #0
00008f48 udf      #0
00008f4c udf      #0
00008f50 udf      #0
00008f54 udf      #0
00008f58 udf      #0
00008f5c udf      #0
00008f60 udf      #0
00008f64 udf      #0
00008f68 udf      #0
00008f6c udf      #0
00008f70 udf      #0
00008f74 udf      #0
00008f78 udf      #0
00008f7c udf      #0
00008f80 udf      #0
00008f84 udf      #0
00008f88 udf      #0
00008f8c udf      #0
00008f90 udf      #0x5520
00008f94 udf      #0
00008f98 udf      #0x5660
00008f9c udf      #0
00008fa0 udf      #0x5660
00008fa4 udf      #0
00008fa8 udf      #0x5660
00008fac udf      #0
00008fb0 udf      #0x5660
00008fb4 udf      #0
00008fb8 udf      #0x5660
00008fbc udf      #0
00008fc0 udf      #0x5660
00008fc4 udf      #0
00008fc8 udf      #0x5660
00008fcc udf      #0
00008fd0 udf      #0x5660
00008fd4 udf      #0
00008fd8 udf      #0x53a4
00008fdc udf      #0
00008fe0 udf      #0x5660
00008fe4 udf      #0
00008fe8 udf      #0x5454
00008fec udf      #0
00008ff0 udf      #0x5424
00008ff4 udf      #0
00008ff8 udf      #0x5778
00008ffc udf      #0
00009000 udf      #0x5778
00009004 udf      #0
00009008 udf      #0x5778
0000900c udf      #0
00009010 udf      #0x5660
00009014 udf      #0
00009018 udf      #0x5424
0000901c udf      #0
00009020 udf      #0x5660
00009024 udf      #0
00009028 udf      #0x5660
0000902c udf      #0
00009030 udf      #0x5660
00009034 udf      #0
00009038 udf      #0x53a4
0000903c udf      #0
00009040 udf      #0x5480
00009044 udf      #0
00009048 udf      #0x54b0
0000904c udf      #0
00009050 udf      #0x5508
00009054 udf      #0
00009058 udf      #0x5660
0000905c udf      #0
00009060 udf      #0x5660
00009064 udf      #0
00009068 udf      #0x53a4
0000906c udf      #0
00009070 udf      #0x5660
00009074 udf      #0
00009078 udf      #0x5594
0000907c udf      #0
00009080 udf      #0x5660
00009084 udf      #0
00009088 udf      #0x5660
0000908c udf      #0
00009090 udf      #0x5520
00009094 udf      #0
00009098 udf      #0x54a0
0000909c udf      #0
000090a0 udf      #0x570c
000090a4 udf      #0
000090a8 udf      #0x5720
000090ac udf      #0
000090b0 udf      #0x5734
000090b4 udf      #0
000090b8 udf      #0x5744
000090bc udf      #0
000090c0 udf      #0x5778
000090c4 udf      #0
000090c8 udf      #0x5754
000090cc udf      #0
000090d0 udf      #0x5768
000090d4 udf      #0
000090d8 udf      #0x5924
000090dc udf      #0
000090e0 udf      #0x5954
000090e4 udf      #0
000090e8 udf      #0x5984
000090ec udf      #0
000090f0 udf      #0x59b4
000090f4 udf      #0
000090f8 udf      #0x59e4
000090fc udf      #0
00009100 udf      #0x5a14
00009104 udf      #0
00009108 udf      #0x5a44
0000910c udf      #0
00009110 udf      #0x5a74
00009114 udf      #0
00009118 udf      #0x5aa4
0000911c udf      #0
00009120 udf      #0x5ad4
00009124 udf      #0
00009128 .byte    0x13, 0x00, 0x0a, 0x00
0000912c .byte    0x13, 0x13, 0x13, 0x00
00009130 orr      z0.s, z0.s, #1
00009134 udf      #0
00009138 .byte    0x00, 0x00, 0x09, 0x00
0000913c add      w0, w0, w0
00009140 udf      #0
00009144 udf      #0
00009148 and      w9, w0, w17
0000914c .byte    0x13, 0x13, 0x13, 0x03
00009150 .byte    0x0a, 0x07, 0x00, 0x01
00009154 .byte    0x15, 0x09, 0x0b, 0x0e
00009158 .byte    0x00, 0x00, 0x09, 0x06
0000915c add      w11, w0, w0
00009160 .byte    0x00, 0x06, 0x13, 0x00
00009164 sbfiz    w0, w0, #0xd, #1
00009168 udf      #0x13
0000916c udf      #0
00009170 udf      #0
00009174 udf      #0
00009178 udf      #0xe00
0000917c udf      #0
00009180 .byte    0x00, 0x00, 0x09, 0x00
00009184 sbfiz    w10, w8, #0xd, #4
00009188 .byte    0x13, 0x00, 0x0d, 0x00
0000918c .byte    0x00, 0x02, 0x00, 0x09
00009190 udf      #0xe
00009194 .byte    0x09, 0x00, 0x0e, 0x00
00009198 udf      #0xe00
0000919c udf      #0
000091a0 udf      #0
000091a4 udf      #0
000091a8 udf      #0
000091ac udf      #0
000091b0 st4      {v0.8b, v1.8b, v2.8b, v3.8b}, [x0]
000091b4 udf      #0
000091b8 udf      #0
000091bc st4      {v0.8b, v1.8b, v2.8b, v3.8b}, [x0]
000091c0 udf      #0
000091c4 udf      #0xc
000091c8 .byte    0x00, 0x09, 0x0c, 0x00
000091cc udf      #0
000091d0 st4      {v12.8b, v13.8b, v14.8b, v15.8b}, [x0]
000091d4 udf      #0
000091d8 udf      #0
000091dc udf      #0
000091e0 udf      #0
000091e4 udf      #0
000091e8 udf      #0
000091ec udf      #0x1000
000091f0 udf      #0
000091f4 udf      #0
000091f8 udf      #0xf00
000091fc .byte    0x00, 0x04, 0x0f, 0x00
00009200 .byte    0x00, 0x00, 0x00, 0x09
00009204 udf      #0x10
00009208 .byte    0x00, 0x00, 0x10, 0x00
0000920c udf      #0x1000
00009210 udf      #0
00009214 udf      #0
00009218 udf      #0
0000921c udf      #0
00009220 udf      #0
00009224 and      w0, w0, #1
00009228 udf      #0
0000922c udf      #0
00009230 add      w0, w0, #0
00009234 udf      #0
00009238 udf      #0x11
0000923c .byte    0x00, 0x09, 0x12, 0x00
00009240 udf      #0
00009244 and      w18, w0, #1
00009248 .byte    0x00, 0x00, 0x14, 0x00
0000924c b        #0x50924c
00009250 udf      #0x14
00009254 udf      #0
00009258 udf      #0
0000925c udf      #0
00009260 udf      #0
00009264 udf      #0
00009268 udf      #0
0000926c b        #0x50926c
00009270 udf      #0x14
00009274 .byte    0x00, 0x00, 0x00, 0x09
00009278 udf      #0
0000927c udf      #0
00009280 udf      #0
00009284 udf      #0
00009288 udf      #0
0000928c udf      #0
00009290 udf      #0
00009294 udf      #0
00009298 tbl      v0.8b, {v0.16b}, v0.8b
0000929c udf      #0
000092a0 udf      #0
000092a4 st1      {v0.b}[0], [x0]
000092a8 udf      #0
000092ac udf      #0xd
000092b0 .byte    0x00, 0x09, 0x0e, 0x00
000092b4 udf      #0
000092b8 tbl      v14.8b, {v0.16b}, v0.8b
000092bc udf      #0
000092c0 udf      #0
000092c4 udf      #0
000092c8 udf      #0
000092cc udf      #0
000092d0 udf      #0
000092d4 udf      #0xc00
000092d8 udf      #0
000092dc udf      #0
000092e0 udf      #0xc00
000092e4 .byte    0x00, 0x00, 0x0c, 0x00
000092e8 .byte    0x00, 0x00, 0x00, 0x09
000092ec udf      #0xc
000092f0 .byte    0x00, 0x00, 0x0c, 0x00
000092f4 udf      #0xc00
000092f8 .byte    0x2d, 0x2b, 0x20, 0x20
000092fc adr      x0, #0xb9901
00009300 uaddl2   v24.8h, v3.16b, v8.16b
00009304 ldp      w21, w27, [x3, #-0xa0]
00009308 orr      w0, w0, #0xfff8000
0000930c tbz      w19, #6, #0x3990
00009310 .byte    0x37, 0x38, 0x39, 0x41
00009314 saddwb   z2.h, z26.h, z4.b
00009318 adr      x6, #0xf4183
0000931c .byte    0x65, 0x72, 0x00, 0x46
00009320 fnmls    z1.h, p2/m, z11.h, z12.h
00009324 umlal2   v4.4s, v3.8h, v4.h[3]
00009328 umax     v0.8h, v17.8h, v9.8h
0000932c .byte    0x64, 0x20, 0x73, 0x75
00009330 .byte    0x70, 0x65, 0x72, 0x20
00009334 .byte    0x70, 0x61, 0x72, 0x74
00009338 uqshl    v9.2d, v3.2d, #0x29
0000933c .byte    0x6e, 0x21, 0x0a, 0x00
00009340 ldnp     d6, d24, [x10, #-0x170]
00009344 .byte    0x65, 0x64, 0x20, 0x74
00009348 fmls     z15.h, p0/m, z3.h, z7.h
0000934c .byte    0x74, 0x20, 0x73, 0x75
00009350 .byte    0x70, 0x65, 0x72, 0x20
00009354 .byte    0x70, 0x61, 0x72, 0x74
00009358 uqshl    v9.2d, v3.2d, #0x29
0000935c usubl2   v14.4s, v3.8h, v9.8h
00009360 bic      w6, w27, w1, lsl #27
00009364 .byte    0x00, 0x5f, 0x61, 0x00
00009368 .byte    0x5f, 0x62, 0x00, 0x55
0000936c ldnp     d14, d24, [x11, #-0x1e0]
00009370 umlal2   v5.4s, v3.8h, v4.h[3]
00009374 .byte    0x20, 0x64, 0x65, 0x74
00009378 ldpsw    x5, x28, [x19, #-0x98]
0000937c .byte    0x6e, 0x65, 0x20, 0x67
00009380 adr      x18, #0xf416f
00009384 .byte    0x20, 0x66, 0x6f, 0x72
00009388 .byte    0x20, 0x70, 0x61, 0x72
0000938c ldpsw    x20, x26, [x11, #-0x60]
00009390 .byte    0x6f, 0x6e, 0x20, 0x25
00009394 .byte    0x61, 0x0a, 0x00, 0x45
00009398 .byte    0x78, 0x74, 0x72, 0x61
0000939c .byte    0x73, 0x20, 0x68, 0x61
000093a0 umlal2   v19.4s, v3.8h, v4.h[3]
000093a4 .byte    0x20, 0x62, 0x65, 0x20
000093a8 .byte    0x25, 0x61, 0x20, 0x6f
000093ac .byte    0x72, 0x20, 0x25, 0x61
000093b0 fnmls    z0.h, p5/m, z25.h, z8.h
000093b4 .byte    0x6e, 0x20, 0x6e, 0x61
000093b8 .byte    0x6d, 0x65, 0x20, 0x68
000093bc uabdl2   v1.8h, v27.16b, v0.16b
000093c0 .byte    0x6f, 0x20, 0x73, 0x75
000093c4 .byte    0x66, 0x66, 0x69, 0x78
000093c8 .byte    0x21, 0x0a, 0x00, 0x42
000093cc .byte    0x41, 0x44, 0x20, 0x73
000093d0 .byte    0x6c, 0x6f, 0x74, 0x20
000093d4 fnmls    z14.h, p0/m, z11.h, z13.h
000093d8 bic      w0, w9, w1, lsr #9
000093dc .byte    0x00, 0x50, 0x61, 0x72
000093e0 ldpsw    x20, x26, [x11, #-0x60]
000093e4 ldpsw    x15, x27, [x19, #0x60]
000093e8 .byte    0x62, 0x2e, 0x63, 0x00
000093ec .byte    0x53, 0x74, 0x61, 0x74
000093f0 str      b21, [x27, #0x81c]
000093f4 .byte    0x3d, 0x20, 0x30, 0x20
000093f8 stp      d6, d9, [x17, #-0x200]
000093fc .byte    0x50, 0x72, 0x6f, 0x74
00009400 ldnp     d15, d24, [x27, #-0x110]
00009404 .byte    0x20, 0x21, 0x3d, 0x20
00009408 umlal2   v8.4s, v1.8h, v6.h[7]
0000940c orn      w9, w3, w0, lsl #25
00009410 stp      w9, w8, [x1, #-0x80]
00009414 .byte    0x00, 0x53, 0x74, 0x61
00009418 .byte    0x74, 0x75, 0x73, 0x20
0000941c adr      x29, #0x49bc1
00009420 .byte    0x20, 0x26, 0x26, 0x20
00009424 adr      x13, #0xcbcb3
00009428 .byte    0x50, 0x72, 0x6f, 0x74
0000942c ldnp     d15, d24, [x27, #-0x110]
00009430 .byte    0x20, 0x21, 0x3d, 0x20
00009434 umlal2   v8.4s, v1.8h, v6.h[7]
00009438 orn      w9, w3, w0, lsl #25
0000943c stp      w9, w8, [x1, #-0x80]
00009440 udf      #0
00009444 .byte    0x20, 0x6e, 0x64, 0x8e
00009448 .byte    0xec, 0xf3, 0xa5, 0x42
0000944c .byte    0x89, 0x58, 0x97, 0x51
00009450 .byte    0x14, 0x06, 0xca, 0xfd
00009454 b        #0xfffffffffce82120
00009458 sub      w6, w16, w4, lsr #29
0000945c movk     x16, #0x5c34, lsl #32
00009460 tbnz     x24, #0x32, #0xd6b0
00009464 .byte    0x55, 0x46, 0x53, 0x00
00009468 .byte    0x65, 0x4d, 0x4d, 0x43
0000946c .byte    0x00, 0x75, 0x6e, 0x6b
00009470 umin     v14.8h, v27.8h, v23.8h
00009474 .byte    0x00, 0x66, 0x66, 0x75
00009478 .byte    0x5f, 0x75, 0x70, 0x67
0000947c fnmls    z18.h, p0/m, z11.h, z4.h
00009480 ldpsw    x0, x25, [x17, #-0xf8]
00009484 ldnp     s12, s25, [x11, #-0xe0]
00009488 bic      w0, w9, w18, lsr #9
0000948c fcmla    v0.8h, v24.8h, v20.h[1], #0xb4
00009490 fnmls    z18.h, p0/m, z11.h, z7.h
00009494 .byte    0x4c, 0x69, 0x62, 0x2e
00009498 udf      #0x63
0000949c .byte    0x9b, 0x98, 0xc8, 0x3f
000094a0 .byte    0x04, 0xbd, 0x17, 0x49
000094a4 .byte    0xb0, 0xb7, 0x64, 0x5a
000094a8 ldr      w22, [x19, #0x824]
000094ac ldpsw    x19, x25, [x10, #-0x70]
000094b0 .byte    0x61, 0x6c, 0x50, 0x6f
000094b4 .byte    0x72, 0x74, 0x20, 0x4c
000094b8 .byte    0x69, 0x62, 0x00, 0x49
000094bc .byte    0x6f, 0x4c, 0x69, 0x62
000094c0 uabdl    v1.4s, v18.4h, v13.4h
000094c4 .byte    0x63, 0x00, 0x28, 0x41
000094c8 fnmls    z4.h, p1/m, z3.h, z18.h
000094cc .byte    0x73, 0x73, 0x20, 0x26
000094d0 .byte    0x20, 0x31, 0x29, 0x20
000094d4 adr      x29, #0x49c79
000094d8 fcmla    z0.h, p2/m, z0.h, z1.h, #0x5a
000094dc .byte    0x64, 0x72, 0x65, 0x73
000094e0 .byte    0x73, 0x20, 0x26, 0x20
000094e4 str      b19, [x9, #0x80a]
000094e8 .byte    0x3d, 0x20, 0x30, 0x00
000094ec bfdot    z8.s, z9.h, z4.h[0]
000094f0 .byte    0x72, 0x65, 0x73, 0x73
000094f4 tbnz     w0, #4, #0x99b8
000094f8 str      b9, [x1, #0xf48]
000094fc udf      #0x3020
00009500 udf      #0x6e48
00009504 udf      #0
00009508 udf      #0x6e24
0000950c udf      #0
00009510 udf      #0x6d00
00009514 udf      #0
00009518 udf      #0x6f00
0000951c udf      #0
00009520 udf      #0x6e24
00009524 udf      #0
00009528 udf      #0x6e24
0000952c udf      #0
00009530 udf      #0x6ecc
00009534 udf      #0
00009538 udf      #0x6e24
0000953c udf      #0
00009540 udf      #0x6e24
00009544 udf      #0
00009548 udf      #0x6e24
0000954c udf      #0
00009550 udf      #0x6e24
00009554 udf      #0
00009558 udf      #0x6e24
0000955c udf      #0
00009560 udf      #0x6e24
00009564 udf      #0
00009568 udf      #0x6e24
0000956c udf      #0
00009570 udf      #0x6e24
00009574 udf      #0
00009578 udf      #0x6ed8
0000957c udf      #0
00009580 udf      #0x6e24
00009584 udf      #0
00009588 udf      #0x6f20
0000958c udf      #0
00009590 udf      #0x6e44
00009594 udf      #0
00009598 udf      #0x6f34
0000959c udf      #0
000095a0 udf      #0x6eec
000095a4 udf      #0
000095a8 udf      #0x6e24
000095ac udf      #0
000095b0 udf      #0x6e24
000095b4 udf      #0
000095b8 udf      #0x6ee8
000095bc udf      #0
000095c0 udf      #0x6a78
000095c4 udf      #0
000095c8 udf      #0x6c3c
000095cc udf      #0
000095d0 udf      #0x6c44
000095d4 udf      #0
000095d8 udf      #0x6c4c
000095dc udf      #0
000095e0 udf      #0x6c54
000095e4 udf      #0
000095e8 udf      #0x6b64
000095ec udf      #0
000095f0 udf      #0x6ad4
000095f4 udf      #0
000095f8 udf      #0x6bb0
000095fc udf      #0
00009600 udf      #0x6bb0
00009604 udf      #0
00009608 udf      #0x6bb0
0000960c udf      #0
00009610 udf      #0x6bb0
00009614 udf      #0
00009618 udf      #0x6bb0
0000961c udf      #0
00009620 udf      #0x6bb0
00009624 udf      #0
00009628 udf      #0x6bb0
0000962c udf      #0
00009630 udf      #0x6bb0
00009634 udf      #0
00009638 udf      #0x6bb0
0000963c udf      #0
00009640 udf      #0x6b64
00009644 udf      #0
00009648 udf      #0x6b64
0000964c udf      #0
00009650 udf      #0x6b64
00009654 udf      #0
00009658 udf      #0x6b64
0000965c udf      #0
00009660 udf      #0x6b64
00009664 udf      #0
00009668 udf      #0x6b64
0000966c udf      #0
00009670 udf      #0x6b64
00009674 udf      #0
00009678 udf      #0x6b64
0000967c udf      #0
00009680 udf      #0x6b64
00009684 udf      #0
00009688 udf      #0x6b64
0000968c udf      #0
00009690 udf      #0x6b64
00009694 udf      #0
00009698 udf      #0x6b64
0000969c udf      #0
000096a0 udf      #0x6b64
000096a4 udf      #0
000096a8 udf      #0x6b64
000096ac udf      #0
000096b0 udf      #0x6b64
000096b4 udf      #0
000096b8 udf      #0x6b64
000096bc udf      #0
000096c0 udf      #0x6b64
000096c4 udf      #0
000096c8 udf      #0x6b64
000096cc udf      #0
000096d0 udf      #0x6c34
000096d4 udf      #0
000096d8 .byte    0x30, 0x31, 0x32, 0x33
000096dc tbnz     w20, #6, #0x5d80
000096e0 .byte    0x38, 0x39, 0x41, 0x42
000096e4 .byte    0x43, 0x44, 0x45, 0x46
000096e8 .byte    0x53, 0x75, 0x63, 0x63
000096ec .byte    0x65, 0x73, 0x73, 0x00
000096f0 rsubhn2  v23.8h, v10.4s, v18.4s
000096f4 .byte    0x69, 0x6e, 0x67, 0x20
000096f8 umin     v21.8h, v18.8h, v11.8h
000096fc .byte    0x6f, 0x77, 0x6e, 0x20
00009700 adr      x7, #0xfc48b
00009704 .byte    0x68, 0x00, 0x57, 0x61
00009708 umin     v18.8h, v19.8h, v9.8h
0000970c fmaxnmv  h7, p0, z3.h
00009710 fnmls    z12.h, p1/m, z11.h, z20.h
00009714 ldpsw    x0, x17, [x17, #-0xf8]
00009718 fnmls    z12.h, p5/m, z11.h, z18.h
0000971c .byte    0x00, 0x57, 0x61, 0x72
00009720 .byte    0x6e, 0x69, 0x6e, 0x67
00009724 ldpsw    x0, x21, [x25, #-0x70]
00009728 .byte    0x74, 0x65, 0x20, 0x46
0000972c .byte    0x61, 0x69, 0x6c, 0x75
00009730 .byte    0x72, 0x65, 0x00, 0x57
00009734 ldpsw    x1, x28, [x19, #-0x90]
00009738 .byte    0x6e, 0x67, 0x20, 0x42
0000973c fnmls    z21.h, p1/m, z19.h, z6.h
00009740 umlal2   v18.4s, v3.8h, v4.h[1]
00009744 ldp      d15, d8, [x3, #0x130]
00009748 .byte    0x61, 0x6c, 0x6c, 0x00
0000974c rsubhn2  v23.8h, v10.4s, v18.4s
00009750 .byte    0x69, 0x6e, 0x67, 0x20
00009754 ldnp     d19, d29, [x2, #-0x1f0]
00009758 .byte    0x65, 0x20, 0x44, 0x61
0000975c st1      {v20.16b, v21.16b, v22.16b}, [x11]
00009760 .byte    0x6f, 0x61, 0x64, 0x20
00009764 fcmla    v5.8h, v18.8h, v18.h[1], #0x10e
00009768 .byte    0x72, 0x00, 0x49, 0x6e
0000976c ldpsw    x22, x24, [x11, #-0xa0]
00009770 .byte    0x64, 0x20, 0x50, 0x61
00009774 fnmls    z18.h, p0/m, z11.h, z13.h
00009778 .byte    0x74, 0x65, 0x72, 0x00
0000977c .byte    0x55, 0x6e, 0x73, 0x75
00009780 .byte    0x70, 0x70, 0x6f, 0x72
00009784 .byte    0x74, 0x65, 0x64, 0x00
00009788 .byte    0x42, 0x61, 0x64, 0x20
0000978c .byte    0x42, 0x75, 0x66, 0x66
00009790 .byte    0x65, 0x72, 0x20, 0x53
00009794 .byte    0x69, 0x7a, 0x65, 0x00
00009798 .byte    0x42, 0x75, 0x66, 0x66
0000979c b.pl     #0x4a5e8
000097a0 .byte    0x6f, 0x6f, 0x20, 0x53
000097a4 ldnp     d13, d24, [x11, #-0x140]
000097a8 .byte    0x00, 0x4e, 0x6f, 0x74
000097ac .byte    0x20, 0x52, 0x65, 0x61
000097b0 .byte    0x64, 0x79, 0x00, 0x44
000097b4 .byte    0x65, 0x76, 0x69, 0x63
000097b8 .byte    0x65, 0x20, 0x45, 0x72
000097bc .byte    0x72, 0x6f, 0x72, 0x00
000097c0 .byte    0x57, 0x72, 0x69, 0x74
000097c4 .byte    0x65, 0x20, 0x50, 0x72
000097c8 .byte    0x6f, 0x74, 0x65, 0x63
000097cc .byte    0x74, 0x65, 0x64, 0x00
000097d0 .byte    0x4f, 0x75, 0x74, 0x20
000097d4 eor      w15, w19, #0x3ffffff
000097d8 .byte    0x65, 0x73, 0x6f, 0x75
000097dc .byte    0x72, 0x63, 0x65, 0x73
000097e0 ldnp     d0, d21, [x16, #-0x110]
000097e4 .byte    0x75, 0x6d, 0x65, 0x20
000097e8 .byte    0x43, 0x6f, 0x72, 0x72
000097ec .byte    0x75, 0x70, 0x74, 0x00
000097f0 .byte    0x56, 0x6f, 0x6c, 0x75
000097f4 .byte    0x6d, 0x65, 0x20, 0x46
000097f8 .byte    0x75, 0x6c, 0x6c, 0x00
000097fc .byte    0x4e, 0x6f, 0x20, 0x4d
00009800 .byte    0x65, 0x64, 0x69, 0x61
00009804 .byte    0x00, 0x4d, 0x65, 0x64
00009808 .byte    0x69, 0x61, 0x20, 0x63
0000980c .byte    0x68, 0x61, 0x6e, 0x67
00009810 .byte    0x65, 0x64, 0x00, 0x4e
00009814 .byte    0x6f, 0x74, 0x20, 0x46
00009818 .byte    0x6f, 0x75, 0x6e, 0x64
0000981c .byte    0x00, 0x41, 0x63, 0x63
00009820 .byte    0x65, 0x73, 0x73, 0x20
00009824 ldpsw    x4, x25, [x10, #-0x90]
00009828 .byte    0x65, 0x64, 0x00, 0x4e
0000982c fcmeq    p15.h, p0/z, z3.h, #0.0
00009830 uabdl2   v19.4s, v3.8h, v15.8h
00009834 .byte    0x73, 0x65, 0x00, 0x4e
00009838 .byte    0x6f, 0x20, 0x6d, 0x61
0000983c uabdl2   v16.4s, v3.8h, v9.8h
00009840 ldpsw    x7, x0, [x3, #0xa0]
00009844 sqshlu   v13.4s, v11.4s, #0
00009848 .byte    0x75, 0x74, 0x00, 0x4e
0000984c .byte    0x6f, 0x74, 0x20, 0x73
00009850 .byte    0x74, 0x61, 0x72, 0x74
00009854 .byte    0x65, 0x64, 0x00, 0x41
00009858 .byte    0x6c, 0x72, 0x65, 0x61
0000985c .byte    0x64, 0x79, 0x20, 0x73
00009860 .byte    0x74, 0x61, 0x72, 0x74
00009864 .byte    0x65, 0x64, 0x00, 0x41
00009868 .byte    0x62, 0x6f, 0x72, 0x74
0000986c .byte    0x65, 0x64, 0x00, 0x49
00009870 .byte    0x43, 0x4d, 0x50, 0x20
00009874 fcmla    v5.8h, v18.8h, v18.h[1], #0x10e
00009878 .byte    0x72, 0x00, 0x54, 0x46
0000987c .byte    0x54, 0x50, 0x20, 0x45
00009880 .byte    0x72, 0x72, 0x6f, 0x72
00009884 fcmla    v0.8h, v0.8h, v18.h[1], #0xb4
00009888 .byte    0x74, 0x6f, 0x63, 0x6f
0000988c .byte    0x6c, 0x20, 0x45, 0x72
00009890 .byte    0x72, 0x6f, 0x72, 0x00
00009894 .byte    0x49, 0x6e, 0x63, 0x6f
00009898 .byte    0x6d, 0x70, 0x61, 0x74
0000989c fnmls    z9.h, p0/m, z19.h, z12.h
000098a0 .byte    0x20, 0x56, 0x65, 0x72
000098a4 .byte    0x73, 0x69, 0x6f, 0x6e
000098a8 .byte    0x00, 0x53, 0x65, 0x63
000098ac .byte    0x75, 0x72, 0x69, 0x74
000098b0 ldpsw    x25, x8, [x3, #0xb0]
000098b4 .byte    0x6f, 0x6c, 0x61, 0x74
000098b8 .byte    0x69, 0x6f, 0x6e, 0x00
000098bc .byte    0x43, 0x52, 0x43, 0x20
000098c0 fcmla    v5.8h, v18.8h, v18.h[1], #0x10e
000098c4 .byte    0x72, 0x00, 0x45, 0x6e
000098c8 .byte    0x64, 0x20, 0x6f, 0x66
000098cc .byte    0x20, 0x4d, 0x65, 0x64
000098d0 eor      w9, w11, #0x1ffffff
000098d4 .byte    0x65, 0x73, 0x65, 0x72
000098d8 .byte    0x76, 0x65, 0x64, 0x20
000098dc stp      w8, w12, [x17, #-0x38]
000098e0 .byte    0x00, 0x52, 0x65, 0x73
000098e4 fnmls    z5.h, p4/m, z19.h, z22.h
000098e8 .byte    0x64, 0x20, 0x28, 0x33
000098ec .byte    0x30, 0x29, 0x00, 0x45
000098f0 sqshlu   v14.4s, v3.4s, #0
000098f4 ldpsw    x6, x8, [x3, #0x30]
000098f8 .byte    0x6c, 0x65, 0x00, 0x49
000098fc ldnp     d14, d29, [x19, #-0x1f0]
00009900 .byte    0x69, 0x64, 0x20, 0x4c
00009904 .byte    0x61, 0x6e, 0x67, 0x75
00009908 .byte    0x61, 0x67, 0x65, 0x00
0000990c adr      x3, #0xe46f7
00009910 ldpsw    x18, x27, [x27, #-0x98]
00009914 .byte    0x73, 0x65, 0x64, 0x20
00009918 .byte    0x44, 0x61, 0x74, 0x61
0000991c ldpsw    x0, x20, [x0, #-0x70]
00009920 ldpsw    x14, x29, [x3, #0x60]
00009924 .byte    0x62, 0x49, 0x6e, 0x74
00009928 .byte    0x65, 0x72, 0x6e, 0x61
0000992c .byte    0x6c, 0x2e, 0x63, 0x00
00009930 .byte    0x57, 0x69, 0x64, 0x74
00009934 .byte    0x68, 0x20, 0x3c, 0x20
00009938 stnp     w19, w14, [x1]
0000993c .byte    0x46, 0x6c, 0x61, 0x67
00009940 .byte    0x73, 0x20, 0x26, 0x20
00009944 .byte    0x7e, 0x28, 0x30, 0x78
00009948 .byte    0x30, 0x31, 0x20, 0x7c
0000994c adr      x0, #0xf9f51
00009950 .byte    0x38, 0x20, 0x7c, 0x20
00009954 adr      x16, #0x6e859
00009958 adr      x0, #0x4a8dd
0000995c stp      w24, w14, [x3, #-0x80]
00009960 str      b9, [x1, #0xf48]
00009964 stnp     w0, w12, [x1]
00009968 .byte    0x28, 0x46, 0x6c, 0x61
0000996c .byte    0x67, 0x73, 0x20, 0x26
00009970 adr      x0, #0xf9f75
00009974 str      b24, [x9, #0x80a]
00009978 stp      w29, w8, [x1, #-0x80]
0000997c .byte    0x20, 0x7c, 0x7c, 0x20
00009980 ldnp     d8, d10, [x1, #0x60]
00009984 .byte    0x61, 0x67, 0x73, 0x20
00009988 ldeorh   w16, w6, [x1]
0000998c .byte    0x38, 0x30, 0x29, 0x20
00009990 adr      x29, #0x4a135
00009994 .byte    0x29, 0x00, 0x28, 0x42
00009998 fnmls    z21.h, p1/m, z19.h, z6.h
0000999c .byte    0x72, 0x53, 0x69, 0x7a
000099a0 str      b5, [x3, #0xf08]
000099a4 .byte    0x20, 0x28, 0x5f, 0x67
000099a8 .byte    0x50, 0x63, 0x64, 0x5f
000099ac fnmls    z6.h, p2/m, z10.h, z24.h
000099b0 .byte    0x64, 0x41, 0x74, 0x42
000099b4 .byte    0x75, 0x69, 0x6c, 0x64
000099b8 .byte    0x5f, 0x50, 0x63, 0x64
000099bc ldpsw    x13, x24, [x10, #-0x40]
000099c0 .byte    0x6d, 0x75, 0x6d, 0x41
000099c4 ldpsw    x19, x24, [x27, #-0xb8]
000099c8 ldpsw    x19, x29, [x2, #-0x70]
000099cc fcmeq    p14.h, p1/z, z27.h, z12.h
000099d0 .byte    0x6e, 0x67, 0x74, 0x68
000099d4 stnp     w9, w10, [x9]
000099d8 .byte    0x42, 0x75, 0x66, 0x66
000099dc ldpsw    x5, x28, [x19, #0x98]
000099e0 .byte    0x7a, 0x65, 0x20, 0x3c
000099e4 .byte    0x3d, 0x20, 0x28, 0x5f
000099e8 .byte    0x67, 0x50, 0x63, 0x64
000099ec .byte    0x5f, 0x46, 0x69, 0x78
000099f0 .byte    0x65, 0x64, 0x41, 0x74
000099f4 ldnp     d2, d29, [x10, #-0x170]
000099f8 .byte    0x64, 0x5f, 0x50, 0x63
000099fc .byte    0x64, 0x4d, 0x61, 0x78
00009a00 ldp      d9, d27, [x11, #-0xb0]
00009a04 .byte    0x55, 0x6e, 0x69, 0x63
00009a08 .byte    0x6f, 0x64, 0x65, 0x53
00009a0c uabdl2   v20.4s, v19.8h, v9.8h
00009a10 uqshl    v7.8h, v3.8h, v5.8h
00009a14 ldp      w7, w29, [x3, #-0xc0]
00009a18 .byte    0x20, 0x2a, 0x20, 0x73
00009a1c fcmla    v9.8h, v19.8h, v5.h[3], #0x10e
00009a20 .byte    0x66, 0x20, 0x28, 0x43
00009a24 adds     w8, w10, #0x490, lsl #12
00009a28 adds     w22, w9, w0, uxth #2
00009a2c .byte    0x20, 0x31, 0x29, 0x00
00009a30 ldnp     d8, d10, [x1, #0x60]
00009a34 .byte    0x61, 0x67, 0x73, 0x20
00009a38 ldnp     w6, w8, [x1, #-0x10]
00009a3c adds     w16, w1, #0xc1e
00009a40 adr      x0, #0x4a9c5
00009a44 .byte    0x78, 0x30, 0x38, 0x20
00009a48 ldeorh   w16, w28, [x3]
00009a4c .byte    0x32, 0x30, 0x20, 0x7c
00009a50 ldsetlb  w24, w0, [x1]
00009a54 .byte    0x30, 0x29, 0x29, 0x20
00009a58 adr      x29, #0x4a1fd
00009a5c stnp     w9, w0, [x1, #-0xc0]
00009a60 .byte    0x28, 0x46, 0x6c, 0x61
00009a64 .byte    0x67, 0x73, 0x20, 0x26
00009a68 adr      x0, #0xfa06d
00009a6c str      b24, [x9, #0x80a]
00009a70 stp      w29, w8, [x1, #-0x80]
00009a74 .byte    0x20, 0x7c, 0x7c, 0x20
00009a78 ldnp     d8, d10, [x1, #0x60]
00009a7c .byte    0x61, 0x67, 0x73, 0x20
00009a80 ldeorh   w16, w6, [x1]
00009a84 .byte    0x38, 0x30, 0x29, 0x20
00009a88 adr      x29, #0x4a22d
00009a8c stnp     w9, w10, [x9]
00009a90 .byte    0x57, 0x69, 0x64, 0x74
00009a94 .byte    0x68, 0x20, 0x3c, 0x20
00009a98 .byte    0x33, 0x38, 0x29, 0x00
00009a9c .byte    0x28, 0x42, 0x75, 0x66
00009aa0 .byte    0x66, 0x65, 0x72, 0x53
00009aa4 .byte    0x69, 0x7a, 0x65, 0x20
00009aa8 stnp     w30, w15, [x9, #-0x100]
00009aac .byte    0x57, 0x69, 0x64, 0x74
00009ab0 .byte    0x68, 0x20, 0x2b, 0x20
00009ab4 orn      w17, w9, w0, lsl #10
00009ab8 .byte    0x20, 0x49, 0x6e, 0x63
00009abc fnmls    z18.h, p1/m, z11.h, z13.h
00009ac0 .byte    0x6e, 0x74, 0x29, 0x00
00009ac4 .byte    0x28, 0x46, 0x6f, 0x72
00009ac8 .byte    0x6d, 0x61, 0x74, 0x20
00009acc stnp     w1, w15, [x9, #-0x100]
00009ad0 ldpsw    x8, x29, [x17, #-0x88]
00009ad4 stp      w4, w8, [x3, #-0xb0]
00009ad8 stp      w0, w12, [x1, #-0xb8]
00009adc .byte    0x00, 0x28, 0x42, 0x75
00009ae0 .byte    0x66, 0x66, 0x65, 0x72
00009ae4 fnmls    z19.h, p2/m, z10.h, z26.h
00009ae8 .byte    0x20, 0x3c, 0x3d, 0x20
00009aec adr      x8, #0xd86d2
00009af0 .byte    0x63, 0x64, 0x5f, 0x46
00009af4 .byte    0x69, 0x78, 0x65, 0x64
00009af8 .byte    0x41, 0x74, 0x42, 0x75
00009afc .byte    0x69, 0x6c, 0x64, 0x5f
00009b00 .byte    0x50, 0x63, 0x64, 0x4d
00009b04 ldp      d1, d30, [x3, #-0x170]
00009b08 .byte    0x75, 0x6d, 0x55, 0x6e
00009b0c .byte    0x69, 0x63, 0x6f, 0x64
00009b10 .byte    0x65, 0x53, 0x74, 0x72
00009b14 .byte    0x69, 0x6e, 0x67, 0x4c
00009b18 .byte    0x65, 0x6e, 0x67, 0x74
00009b1c .byte    0x68, 0x29, 0x29, 0x00
00009b20 .byte    0x28, 0x53, 0x74, 0x72
00009b24 uqshl    v14.8h, v3.8h, v5.8h
00009b28 stnp     w19, w8, [x2, #-0xc0]
00009b2c .byte    0x43, 0x48, 0x41, 0x52
00009b30 orn      w17, w17, w0, lsl #13
00009b34 .byte    0x29, 0x46, 0x6f, 0x72
00009b38 ldnp     s13, s24, [x11, #-0x60]
00009b3c .byte    0x20, 0x28, 0x5f, 0x67
00009b40 .byte    0x50, 0x63, 0x64, 0x5f
00009b44 fnmls    z6.h, p2/m, z10.h, z24.h
00009b48 .byte    0x64, 0x41, 0x74, 0x42
00009b4c .byte    0x75, 0x69, 0x6c, 0x64
00009b50 .byte    0x5f, 0x50, 0x63, 0x64
00009b54 ldpsw    x13, x24, [x10, #-0x40]
00009b58 .byte    0x6d, 0x75, 0x6d, 0x55
00009b5c umlsl2   v14.4s, v11.8h, v3.h[6]
00009b60 .byte    0x64, 0x65, 0x53, 0x74
00009b64 .byte    0x72, 0x69, 0x6e, 0x67
00009b68 .byte    0x4c, 0x65, 0x6e, 0x67
00009b6c .byte    0x74, 0x68, 0x29, 0x20
00009b70 stp      w11, w8, [x1, #-0x78]
00009b74 .byte    0x20, 0x3c, 0x3d, 0x20
00009b78 adr      x8, #0xd875e
00009b7c .byte    0x63, 0x64, 0x5f, 0x46
00009b80 .byte    0x69, 0x78, 0x65, 0x64
00009b84 .byte    0x41, 0x74, 0x42, 0x75
00009b88 .byte    0x69, 0x6c, 0x64, 0x5f
00009b8c .byte    0x50, 0x63, 0x64, 0x4d
00009b90 ldp      d1, d30, [x3, #-0x170]
00009b94 .byte    0x75, 0x6d, 0x55, 0x6e
00009b98 .byte    0x69, 0x63, 0x6f, 0x64
00009b9c .byte    0x65, 0x53, 0x74, 0x72
00009ba0 .byte    0x69, 0x6e, 0x67, 0x4c
00009ba4 .byte    0x65, 0x6e, 0x67, 0x74
00009ba8 .byte    0x68, 0x29, 0x29, 0x00
00009bac .byte    0x28, 0x41, 0x73, 0x63
00009bb0 .byte    0x69, 0x69, 0x53, 0x74
00009bb4 fcmne    p2.h, p3/z, z19.h, z12.h
00009bb8 stnp     w14, w20, [x27, #-0x100]
00009bbc ldp      d6, d27, [x26, #-0xe0]
00009bc0 .byte    0x61, 0x74, 0x2c, 0x20
00009bc4 adr      x8, #0xd87aa
00009bc8 .byte    0x63, 0x64, 0x5f, 0x46
00009bcc .byte    0x69, 0x78, 0x65, 0x64
00009bd0 .byte    0x41, 0x74, 0x42, 0x75
00009bd4 .byte    0x69, 0x6c, 0x64, 0x5f
00009bd8 .byte    0x50, 0x63, 0x64, 0x4d
00009bdc ldp      d1, d30, [x3, #-0x170]
00009be0 .byte    0x75, 0x6d, 0x41, 0x73
00009be4 .byte    0x63, 0x69, 0x69, 0x53
00009be8 uabdl2   v20.4s, v19.8h, v9.8h
00009bec uqshl    v7.8h, v3.8h, v5.8h
00009bf0 ldp      w7, w29, [x3, #-0xc0]
00009bf4 adds     w0, w25, #0x80a
00009bf8 str      b9, [x1, #0xf08]
00009bfc .byte    0x20, 0x28, 0x5f, 0x67
00009c00 .byte    0x50, 0x63, 0x64, 0x5f
00009c04 fnmls    z6.h, p2/m, z10.h, z24.h
00009c08 .byte    0x64, 0x41, 0x74, 0x42
00009c0c .byte    0x75, 0x69, 0x6c, 0x64
00009c10 .byte    0x5f, 0x50, 0x63, 0x64
00009c14 ldpsw    x13, x24, [x10, #-0x40]
00009c18 .byte    0x6d, 0x75, 0x6d, 0x41
00009c1c ldpsw    x19, x24, [x27, #-0xb8]
00009c20 ldpsw    x19, x29, [x2, #-0x70]
00009c24 fcmeq    p14.h, p1/z, z27.h, z12.h
00009c28 .byte    0x6e, 0x67, 0x74, 0x68
00009c2c .byte    0x29, 0x29, 0x00, 0x3c
00009c30 ldnp     d14, d29, [x11, #-0x140]
00009c34 .byte    0x20, 0x73, 0x74, 0x72
00009c38 .byte    0x69, 0x6e, 0x67, 0x3e
00009c3c .byte    0x00, 0x3c, 0x6e, 0x75
00009c40 .byte    0x6c, 0x6c, 0x20, 0x67
00009c44 .byte    0x75, 0x69, 0x64, 0x3e
00009c48 .byte    0x00, 0x25, 0x30, 0x38
00009c4c adr      x24, #0x541f9
00009c50 .byte    0x34, 0x78, 0x2d, 0x25
00009c54 ldp      s16, s13, [x1, #-0x40]
00009c58 ldseth   w18, w5, [x1]
00009c5c ldseth   w18, w5, [x1]
00009c60 orr      w13, w9, #0x3ff0000
00009c64 orr      w24, w11, #0x3ff0000
00009c68 orr      w24, w11, #0x3ff0000
00009c6c orr      w24, w11, #0x3ff0000
00009c70 orr      w24, w11, #0x3ff0000
00009c74 orr      w24, w11, #0x3ff0000
00009c78 uaddl2   v24.8h, v3.16b, v28.16b
00009c7c .byte    0x75, 0x6c, 0x6c, 0x20
00009c80 fnmls    z20.h, p2/m, z11.h, z13.h
00009c84 adr      x30, #0x53c89
00009c88 .byte    0x32, 0x64, 0x2f, 0x25
00009c8c fcmla    v16.4h, v17.4h, v4.h[1], #0x5a
00009c90 .byte    0x25, 0x30, 0x34, 0x64
00009c94 adr      x0, #0x54099
00009c98 .byte    0x32, 0x64, 0x3a, 0x25
00009c9c .byte    0x30, 0x32, 0x64, 0x00
00009ca0 ldr      x5, #0x7a2a4
00009ca4 .byte    0x00, 0x0d, 0x0a, 0x00
00009ca8 udf      #0xd
00009cac udf      #0
00009cb0 udf      #0x96e8
00009cb4 udf      #0
00009cb8 udf      #0x96f0
00009cbc udf      #0
00009cc0 udf      #0x9706
00009cc4 udf      #0
00009cc8 udf      #0x971d
00009ccc udf      #0
00009cd0 udf      #0x9733
00009cd4 udf      #0
00009cd8 udf      #0x974c
00009cdc udf      #0
00009ce0 udf      #0x975f
00009ce4 udf      #0
00009ce8 udf      #0x976a
00009cec udf      #0
00009cf0 udf      #0x977c
00009cf4 udf      #0
00009cf8 udf      #0x9788
00009cfc udf      #0
00009d00 udf      #0x9798
00009d04 udf      #0
00009d08 udf      #0x97a9
00009d0c udf      #0
00009d10 udf      #0x97b3
00009d14 udf      #0
00009d18 udf      #0x97c0
00009d1c udf      #0
00009d20 udf      #0x97d0
00009d24 udf      #0
00009d28 udf      #0x97e1
00009d2c udf      #0
00009d30 udf      #0x97f0
00009d34 udf      #0
00009d38 udf      #0x97fc
00009d3c udf      #0
00009d40 udf      #0x9805
00009d44 udf      #0
00009d48 udf      #0x9813
00009d4c udf      #0
00009d50 udf      #0x981d
00009d54 udf      #0
00009d58 udf      #0x982b
00009d5c udf      #0
00009d60 udf      #0x9837
00009d64 udf      #0
00009d68 udf      #0x9842
00009d6c udf      #0
00009d70 udf      #0x984b
00009d74 udf      #0
00009d78 udf      #0x9857
00009d7c udf      #0
00009d80 udf      #0x9867
00009d84 udf      #0
00009d88 udf      #0x986f
00009d8c udf      #0
00009d90 udf      #0x987a
00009d94 udf      #0
00009d98 udf      #0x9885
00009d9c udf      #0
00009da0 udf      #0x9894
00009da4 udf      #0
00009da8 udf      #0x98a9
00009dac udf      #0
00009db0 udf      #0x98bc
00009db4 udf      #0
00009db8 udf      #0x98c6
00009dbc udf      #0
00009dc0 udf      #0x98d3
00009dc4 udf      #0
00009dc8 udf      #0x98e1
00009dcc udf      #0
00009dd0 udf      #0x98ef
00009dd4 udf      #0
00009dd8 udf      #0x98fb
00009ddc udf      #0
00009de0 udf      #0x990c
00009de4 udf      #0
00009de8 .byte    0x4d, 0x65, 0x6d, 0x4c
00009dec .byte    0x69, 0x62, 0x47, 0x75
00009df0 .byte    0x69, 0x64, 0x2e, 0x63
00009df4 .byte    0x00, 0x44, 0x65, 0x73
00009df8 .byte    0x74, 0x69, 0x6e, 0x61
00009dfc .byte    0x74, 0x69, 0x6f, 0x6e
00009e00 .byte    0x47, 0x75, 0x69, 0x64
00009e04 .byte    0x20, 0x21, 0x3d, 0x20
00009e08 umlal2   v8.4s, v1.8h, v6.h[7]
00009e0c orn      w9, w3, w0, lsl #25
00009e10 stp      w9, w8, [x1, #-0x80]
00009e14 .byte    0x00, 0x53, 0x6f, 0x75
00009e18 .byte    0x72, 0x63, 0x65, 0x47
00009e1c .byte    0x75, 0x69, 0x64, 0x20
00009e20 stnp     w1, w15, [x9, #-0x100]
00009e24 ldpsw    x8, x29, [x17, #-0x88]
00009e28 stp      w4, w8, [x3, #-0xb0]
00009e2c .byte    0x20, 0x30, 0x29, 0x00
00009e30 .byte    0x47, 0x75, 0x69, 0x64
00009e34 str      b17, [x1, #0x848]
00009e38 .byte    0x20, 0x28, 0x28, 0x76
00009e3c .byte    0x6f, 0x69, 0x64, 0x20
00009e40 adr      x10, #0x4a365
00009e44 .byte    0x29, 0x00, 0x47, 0x75
00009e48 .byte    0x69, 0x64, 0x32, 0x20
00009e4c stnp     w1, w15, [x9, #-0x100]
00009e50 ldpsw    x8, x29, [x17, #-0x88]
00009e54 stp      w4, w8, [x3, #-0xb0]
00009e58 .byte    0x20, 0x30, 0x29, 0x00
00009e5c .byte    0x28, 0x28, 0x55, 0x49
00009e60 ldp      w14, w21, [x2, #0x70]
00009e64 .byte    0x42, 0x75, 0x66, 0x66
00009e68 .byte    0x65, 0x72, 0x20, 0x26
00009e6c ldpsw    x0, x10, [x1, #-0x68]
00009e70 .byte    0x7a, 0x65, 0x6f, 0x66
00009e74 .byte    0x20, 0x28, 0x47, 0x75
00009e78 .byte    0x69, 0x64, 0x2d, 0x3e
00009e7c .byte    0x44, 0x61, 0x74, 0x61
00009e80 stp      s17, s10, [x9, #-0x100]
00009e84 stp      w0, w12, [x9, #-0xb8]
00009e88 .byte    0x20, 0x3d, 0x3d, 0x20
00009e8c .byte    0x30, 0x00, 0x28, 0x4c
00009e90 .byte    0x65, 0x6e, 0x67, 0x74
00009e94 .byte    0x68, 0x20, 0x26, 0x20
00009e98 .byte    0x28, 0x73, 0x69, 0x7a
00009e9c .byte    0x65, 0x6f, 0x66, 0x20
00009ea0 .byte    0x28, 0x2a, 0x47, 0x75
00009ea4 .byte    0x69, 0x64, 0x50, 0x74
00009ea8 stp      s18, s10, [x11, #-0x100]
00009eac stp      w0, w12, [x9, #-0xb8]
00009eb0 .byte    0x20, 0x3d, 0x3d, 0x20
00009eb4 ldpsw    x16, x0, [x1, #0x20]
00009eb8 cbz      w22, #0x76964
00009ebc eor      w24, w27, #0x7ffc000
00009ec0 ldpsw    x5, x27, [x11, #-0xf8]
00009ec4 .byte    0x6e, 0x64, 0x65, 0x72
00009ec8 .byte    0x2e, 0x63, 0x00, 0x55
00009ecc ldpsw    x14, x24, [x11, #-0xa0]
00009ed0 .byte    0x67, 0x6e, 0x65, 0x64
00009ed4 udf      #0x632e
00009ed8 udf      #0
00009edc udf      #0
00009ee0 udf      #0
00009ee4 udf      #0
00009ee8 udf      #0
00009eec udf      #0
00009ef0 udf      #0
00009ef4 udf      #0
00009ef8 udf      #0
00009efc udf      #0
00009f00 udf      #0
00009f04 udf      #0
00009f08 udf      #0
00009f0c udf      #0
00009f10 udf      #0
00009f14 udf      #0
00009f18 udf      #0
00009f1c udf      #0
00009f20 udf      #0
00009f24 udf      #0
00009f28 udf      #0
00009f2c udf      #0
00009f30 udf      #0
00009f34 udf      #0
00009f38 udf      #0
00009f3c udf      #0
00009f40 udf      #0
00009f44 udf      #0
00009f48 udf      #0
00009f4c udf      #0
00009f50 udf      #0
00009f54 udf      #0
00009f58 udf      #0
00009f5c udf      #0
00009f60 udf      #0
00009f64 udf      #0
00009f68 udf      #0
00009f6c udf      #0
00009f70 udf      #0
00009f74 udf      #0
00009f78 udf      #0
00009f7c udf      #0
00009f80 udf      #0
00009f84 udf      #0
00009f88 udf      #0
00009f8c udf      #0
00009f90 udf      #0
00009f94 udf      #0
00009f98 udf      #0
00009f9c udf      #0
00009fa0 udf      #0
00009fa4 udf      #0
00009fa8 udf      #0
00009fac udf      #0
00009fb0 udf      #0
00009fb4 udf      #0
00009fb8 udf      #0
00009fbc udf      #0
00009fc0 udf      #0
00009fc4 udf      #0
00009fc8 udf      #0
00009fcc udf      #0
00009fd0 udf      #0
00009fd4 udf      #0
00009fd8 udf      #0
00009fdc udf      #0
00009fe0 udf      #0
00009fe4 udf      #0
00009fe8 udf      #0
00009fec udf      #0
00009ff0 udf      #0
00009ff4 udf      #0
00009ff8 udf      #0
00009ffc udf      #0