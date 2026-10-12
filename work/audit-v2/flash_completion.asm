
RANGE 00007000-00007820
00007000 bl       #0x6fd48
00007004 ldr      x27, [x0]
00007008 adrp     x9, #0xd0000
0000700c mov      w1, wzr
00007010 mov      w2, #0x40
00007014 sub      x8, x27, #0xd0
00007018 str      x8, [x0]
0000701c ldr      x8, [x9, #0x8a0]
00007020 mov      x9, x27
00007024 stp      x0, x8, [sp, #0x20]
00007028 sub      x0, x27, #0x90
0000702c str      x8, [x9, #-8]!
00007030 str      x9, [sp, #0x18]
00007034 str      x0, [sp, #8]
00007038 bl       #0x1ca9c
0000703c adrp     x29, #0xd2000
00007040 adrp     x26, #0xd2000
00007044 adrp     x23, #0xd2000
00007048 adrp     x20, #0xd2000
0000704c adrp     x21, #0xd2000
00007050 sturh    wzr, [x27, #-0xbc]
00007054 ldrb     w8, [x29, #0x6c0]
00007058 sturh    wzr, [x27, #-0xba]
0000705c sturh    wzr, [x27, #-0xb8]
00007060 tbz      w8, #0, #0x7110
00007064 adrp     x24, #0xd2000
00007068 adrp     x25, #0xd2000
0000706c ldr      x8, [x24, #0x638]
00007070 ldr      x0, [x25, #0x6c8]
00007074 ldr      x8, [x8, #0x58]
00007078 ldr      x8, [x8, #0x18]
0000707c blr      x8
00007080 ldr      x8, [x24, #0x638]
00007084 adrp     x28, #0xd2000
00007088 ldr      x0, [x28, #0x640]
0000708c ldr      x8, [x8, #0x58]
00007090 ldr      x8, [x8, #0x18]
00007094 blr      x8
00007098 ldrb     w8, [x29, #0x6c0]
0000709c ldr      x9, [x23, #0x6b0]
000070a0 ldr      x10, [x26, #0x6a8]
000070a4 ldr      x11, [x20, #0x620]
000070a8 cmp      w8, #1
000070ac str      x9, [x26, #0x6a8]
000070b0 str      x10, [x23, #0x6b0]
000070b4 str      x11, [x21, #0x6e0]
000070b8 b.ne     #0x70e4
000070bc ldr      x8, [x24, #0x638]
000070c0 ldr      x0, [x28, #0x640]
000070c4 ldr      x8, [x8, #0x58]
000070c8 ldr      x8, [x8, #0x20]
000070cc blr      x8
000070d0 ldr      x8, [x24, #0x638]
000070d4 ldr      x0, [x25, #0x6c8]
000070d8 ldr      x8, [x8, #0x58]
000070dc ldr      x8, [x8, #0x20]
000070e0 blr      x8
000070e4 cbz      x19, #0x712c
000070e8 mov      x0, x22
000070ec mov      x28, x19
000070f0 bl       #0x18400
000070f4 cmp      x0, #0x24
000070f8 b.lo     #0x7188
000070fc adrp     x0, #0xa5000
00007100 adrp     x1, #0xa5000
00007104 add      x0, x0, #0x92
00007108 add      x1, x1, #0xc6f
0000710c b        #0x713c
00007110 ldr      x8, [x23, #0x6b0]
00007114 ldr      x9, [x26, #0x6a8]
00007118 ldr      x10, [x20, #0x620]
0000711c str      x8, [x26, #0x6a8]
00007120 str      x9, [x23, #0x6b0]
00007124 str      x10, [x21, #0x6e0]
00007128 cbnz     x19, #0x70e8
0000712c adrp     x0, #0xa5000
00007130 adrp     x1, #0xa5000
00007134 add      x0, x0, #0x92
00007138 add      x1, x1, #0xc5e
0000713c bl       #0x3df8
00007140 ldr      x21, [sp, #0x28]
00007144 tbnz     x0, #0x3f, #0x7150
00007148 mov      w0, #1
0000714c bl       #0x3ec0
00007150 mov      w0, #3
00007154 ldp      x24, x19, [sp, #0x18]
00007158 ldr      x8, [x24]
0000715c cmp      x21, x8
00007160 b.ne     #0x7c50
00007164 str      x27, [x19]
00007168 ldp      x20, x19, [sp, #0x80]
0000716c ldp      x22, x21, [sp, #0x70]
00007170 ldp      x24, x23, [sp, #0x60]
00007174 ldp      x26, x25, [sp, #0x50]
00007178 ldp      x28, x27, [sp, #0x40]
0000717c ldp      x29, x30, [sp, #0x30]
00007180 add      sp, sp, #0x90
00007184 ret      
00007188 mov      x8, x22
0000718c ldrb     w9, [x8], #1
00007190 cmp      w9, #0x3a
00007194 csel     x24, x8, x22, eq
00007198 sub      x22, x27, #0x50
0000719c mov      x0, x24
000071a0 mov      x1, x22
000071a4 bl       #0x18bc0
000071a8 adrp     x0, #0xa6000
000071ac add      x0, x0, #0x618
000071b0 bl       #0x17a08
000071b4 mov      x25, x0
000071b8 lsl      x8, x0, #1
000071bc add      x8, x8, #2
000071c0 cmp      x8, #0x1f
000071c4 b.hs     #0x755c
000071c8 adrp     x1, #0xa6000
000071cc mov      x0, x22
000071d0 add      x1, x1, #0x618
000071d4 mov      x2, x25
000071d8 bl       #0x17ba8
000071dc cbz      x0, #0x721c
000071e0 adrp     x1, #0xa6000
000071e4 mov      x0, x22
000071e8 add      x1, x1, #0x636
000071ec bl       #0x17c9c
000071f0 cbz      x0, #0x7288
000071f4 add      x0, x0, #2
000071f8 bl       #0x17ddc
000071fc mov      x25, x0
00007200 cmp      w25, #8
00007204 b.lt     #0x728c
00007208 adrp     x0, #0xa5000
0000720c adrp     x1, #0xa5000
00007210 add      x0, x0, #0x92
00007214 add      x1, x1, #0xcbe
00007218 b        #0x713c
0000721c bl       #0x16834
00007220 tst      w0, #0xff
00007224 b.eq     #0x7248
00007228 mov      w0, #0x40
0000722c bl       #0x1685c
00007230 tst      w0, #0xff
00007234 b.eq     #0x7248
00007238 adrp     x1, #0xa5000
0000723c mov      w0, #0x40
00007240 add      x1, x1, #0xc86
00007244 bl       #0x16188
00007248 ldr      w1, [sp, #0x14]
0000724c mov      x0, x28
00007250 bl       #0x6d328
00007254 ldr      x21, [sp, #0x28]
00007258 cbz      x0, #0x73d0
0000725c adrp     x0, #0xa5000
00007260 adrp     x1, #0xa5000
00007264 add      x0, x0, #0x92
00007268 add      x1, x1, #0xc9f
0000726c bl       #0x3df8
00007270 ldp      x24, x19, [sp, #0x18]
00007274 tbnz     x0, #0x3f, #0x775c
00007278 mov      w0, #1
0000727c bl       #0x3ec0
00007280 mov      w0, #3
00007284 b        #0x7158
00007288 mov      w25, #-1
0000728c ldr      w20, [sp, #0x14]
00007290 mov      x0, x28
00007294 mov      w1, w20
00007298 bl       #0x84050
0000729c cbz      x0, #0x72dc
000072a0 bl       #0x841c0
000072a4 mov      x0, x28
000072a8 mov      w1, w20
000072ac bl       #0x137a8
000072b0 ldp      x19, x21, [sp, #0x20]
000072b4 cmp      w0, #1
000072b8 ldr      x24, [sp, #0x18]
000072bc b.ne     #0x7158
000072c0 adrp     x1, #0xa6000
000072c4 mov      x0, x22
000072c8 add      x1, x1, #0x63a
000072cc bl       #0x17afc
000072d0 cbz      x0, #0x7570
000072d4 mov      w0, #1
000072d8 b        #0x7158
000072dc adrp     x0, #0xa6000
000072e0 add      x0, x0, #0x63a
000072e4 bl       #0x17a08
000072e8 mov      x26, x0
000072ec lsl      x8, x0, #1
000072f0 add      x8, x8, #2
000072f4 cmp      x8, #0x15
000072f8 b.hs     #0x76e8
000072fc adrp     x1, #0xa6000
00007300 mov      x0, x22
00007304 add      x1, x1, #0x63a
00007308 mov      x2, x26
0000730c bl       #0x17ba8
00007310 cbz      x0, #0x7360
00007314 adrp     x0, #0xa6000
00007318 add      x0, x0, #0x64e
0000731c bl       #0x17a08
00007320 mov      x26, x0
00007324 lsl      x8, x0, #1
00007328 add      x8, x8, #2
0000732c cmp      x8, #0xd
00007330 b.hs     #0x77a4
00007334 adrp     x1, #0xa6000
00007338 mov      x0, x22
0000733c add      x1, x1, #0x64e
00007340 mov      x2, x26
00007344 bl       #0x17ba8
00007348 cbnz     x0, #0x73d8
0000734c ldr      w1, [sp, #0x14]
00007350 mov      x0, x28
00007354 mov      x2, xzr
00007358 bl       #0x3f2a0
0000735c tbz      w0, #0, #0x73d8
00007360 adrp     x0, #0xa6000
00007364 add      x0, x0, #0x64e
00007368 bl       #0x17a08
0000736c mov      x21, x0
00007370 lsl      x8, x0, #1
00007374 add      x8, x8, #2
00007378 cmp      x8, #0xd
0000737c b.hs     #0x78f4
00007380 adrp     x1, #0xa6000
00007384 mov      x0, x22
00007388 add      x1, x1, #0x64e
0000738c mov      x2, x21
00007390 bl       #0x17ba8
00007394 ldr      x21, [sp, #0x28]
00007398 cbnz     x0, #0x73a8
0000739c bl       #0x90b8
000073a0 tst      w0, #0xff
000073a4 b.eq     #0x76b0
000073a8 ldr      w2, [sp, #0x14]
000073ac mov      w0, w25
000073b0 mov      x1, x28
000073b4 bl       #0x56c80
000073b8 cbz      w0, #0x73d0
000073bc adrp     x0, #0xa5000
000073c0 mov      w1, w25
000073c4 add      x0, x0, #0xd2b
000073c8 bl       #0x43c8
000073cc b        #0x7150
000073d0 mov      w0, #1
000073d4 b        #0x7154
000073d8 adrp     x0, #0xa6000
000073dc add      x0, x0, #0x65a
000073e0 bl       #0x17a08
000073e4 mov      x25, x0
000073e8 lsl      x8, x0, #1
000073ec add      x8, x8, #2
000073f0 cmp      x8, #0x13
000073f4 b.hs     #0x78e0
000073f8 adrp     x1, #0xa6000
000073fc mov      x0, x22
00007400 add      x1, x1, #0x65a
00007404 mov      x2, x25
00007408 bl       #0x17ba8
0000740c cbz      x0, #0x75c8
00007410 adrp     x0, #0xa6000
00007414 add      x0, x0, #0x66c
00007418 bl       #0x17a08
0000741c mov      x25, x0
00007420 lsl      x8, x0, #1
00007424 add      x8, x8, #2
00007428 cmp      x8, #0x19
0000742c b.hs     #0x7914
00007430 adrp     x1, #0xa6000
00007434 mov      x0, x22
00007438 add      x1, x1, #0x66c
0000743c mov      x2, x25
00007440 bl       #0x17ba8
00007444 cbz      x0, #0x75d8
00007448 ldr      w8, [x28]
0000744c mov      w26, #0xff3a
00007450 movk     w26, #0xed26, lsl #16
00007454 adrp     x20, #0xd2000
00007458 cmp      w8, w26
0000745c b.ne     #0x75f8
00007460 mov      w0, #-1
00007464 mov      x1, x24
00007468 bl       #0x57528
0000746c tbnz     w0, #0x1f, #0x76fc
00007470 bl       #0x56940
00007474 ldr      x8, [x20, #0x6d0]
00007478 mov      x24, x0
0000747c cmp      x0, x8
00007480 b.ls     #0x77b8
00007484 adrp     x0, #0xa5000
00007488 adrp     x1, #0xc2000
0000748c add      x0, x0, #0x121
00007490 add      x1, x1, #0x4da
00007494 bl       #0x3df8
00007498 tbnz     x0, #0x3f, #0x7908
0000749c mov      w0, #1
000074a0 bl       #0x3ec0
000074a4 tbnz     x0, #0x3f, #0x7908
000074a8 adrp     x8, #0xd2000
000074ac ldrb     w8, [x8, #0x6c0]
000074b0 cmp      w8, #1
000074b4 b.ne     #0x7ae8
000074b8 mov      w0, #0x60
000074bc mov      x19, x20
000074c0 bl       #0x15784
000074c4 cbz      x0, #0x7b1c
000074c8 ldr      x8, [x23, #0x6b0]
000074cc mov      w26, #0x24
000074d0 ldr      x9, [x21, #0x6e0]
000074d4 mov      x1, x26
000074d8 mov      x2, x22
000074dc mov      x3, x26
000074e0 mov      x25, x0
000074e4 stp      x8, x9, [x0, #0x50]
000074e8 bl       #0x16af4
000074ec adrp     x20, #0xd2000
000074f0 str      w26, [x25, #0x48]
000074f4 adrp     x0, #0xa5000
000074f8 adrp     x1, #0x4000
000074fc add      x0, x0, #0x13e
00007500 add      x1, x1, #0x708
00007504 ldr      x8, [x20, #0x638]
00007508 mov      x2, x25
0000750c mov      w3, #0x18
00007510 mov      w4, #0x1000
00007514 ldr      x8, [x8, #0x18]
00007518 ldr      x8, [x8]
0000751c blr      x8
00007520 cbz      x0, #0x7bac
00007524 mov      x25, x0
00007528 bl       #0x6f978
0000752c ldr      x8, [x20, #0x638]
00007530 mov      x0, x25
00007534 ldr      x8, [x8, #0x18]
00007538 ldr      x8, [x8, #8]
0000753c blr      x8
00007540 ldr      w9, [sp, #0x14]
00007544 mov      w26, #0xff3a
00007548 mov      x20, x19
0000754c movk     w26, #0xed26, lsl #16
00007550 sxtw     x25, w0
00007554 tbz      w0, #0x1f, #0x77c0
00007558 b        #0x77d8
0000755c adrp     x0, #0xa5000
00007560 mov      w1, #0x320
00007564 add      x0, x0, #0x81
00007568 bl       #0x18ce8
0000756c b        #0x71c8
00007570 sub      x0, x27, #0xbc
00007574 bl       #0x58718
00007578 mov      x0, xzr
0000757c bl       #0x58fa8
00007580 bl       #0x16834
00007584 tst      w0, #0xff
00007588 b.eq     #0x72d4
0000758c mov      w0, #0x40
00007590 bl       #0x1685c
00007594 tst      w0, #0xff
00007598 b.eq     #0x72d4
0000759c bl       #0x581a8
000075a0 mov      x2, x27
000075a4 lsr      x8, x0, #0x20
000075a8 adrp     x1, #0xa5000
000075ac add      x1, x1, #0xcd9
000075b0 str      w0, [x2, #-0xc8]!
000075b4 strh     w8, [x2, #4]
000075b8 mov      w0, #0x40
000075bc bl       #0x16188
000075c0 mov      w0, #1
000075c4 b        #0x7158
000075c8 ldr      w1, [sp, #0x14]
000075cc mov      x0, x28
000075d0 bl       #0x2bb58
000075d4 b        #0x75e4
000075d8 ldr      w1, [sp, #0x14]
000075dc mov      x0, x28
000075e0 bl       #0x2a818
000075e4 ldr      x21, [sp, #0x28]
000075e8 mov      w8, #3
000075ec tst      w0, #0xff
000075f0 csinc    w0, w8, wzr, eq
000075f4 b        #0x7154
000075f8 sub      x24, x27, #0xb4
000075fc mov      x0, x22
00007600 mov      x1, x24
00007604 mov      w19, w26
00007608 bl       #0x180b4
0000760c mov      w0, #-1
00007610 mov      x1, x24
00007614 bl       #0x57528
00007618 tbnz     w0, #0x1f, #0x7764
0000761c ldr      w8, [sp, #0x14]
00007620 mov      w26, w0
00007624 mov      w23, w8
00007628 bl       #0x56940
0000762c cmp      x0, x23
00007630 b.hs     #0x7860
00007634 mov      x25, x0
00007638 mov      x24, x20
0000763c bl       #0x16834
00007640 tst      w0, #0xff
00007644 b.eq     #0x7668
00007648 mov      w0, #-0xffffffff80000000
0000764c bl       #0x1685c
00007650 tst      w0, #0xff
00007654 b.eq     #0x7668
00007658 adrp     x1, #0xa5000
0000765c mov      w0, #-0xffffffff80000000
00007660 add      x1, x1, #0xe80
00007664 bl       #0x16188
00007668 mov      x20, #2
0000766c movk     x20, #0x8000, lsl #48
00007670 bl       #0x16834
00007674 mov      w26, w19
00007678 tst      w0, #0xff
0000767c b.eq     #0x7930
00007680 mov      w0, #-0xffffffff80000000
00007684 bl       #0x1685c
00007688 add      x21, x20, #9
0000768c tst      w0, #0xff
00007690 b.eq     #0x7938
00007694 adrp     x1, #0xa5000
00007698 mov      w0, #-0xffffffff80000000
0000769c add      x1, x1, #0xe9b
000076a0 mov      x2, x25
000076a4 mov      x3, x23
000076a8 bl       #0x16188
000076ac b        #0x7938
000076b0 bl       #0x16834
000076b4 tst      w0, #0xff
000076b8 b.eq     #0x7150
000076bc mov      w0, #-0xffffffff80000000
000076c0 bl       #0x1685c
000076c4 ldp      x24, x19, [sp, #0x18]
000076c8 tst      w0, #0xff
000076cc b.eq     #0x775c
000076d0 adrp     x1, #0xa5000
000076d4 mov      w0, #-0xffffffff80000000
000076d8 add      x1, x1, #0xd0b
000076dc bl       #0x16188
000076e0 mov      w0, #3
000076e4 b        #0x7158
000076e8 adrp     x0, #0xa5000
000076ec mov      w1, #0x320
000076f0 add      x0, x0, #0x81
000076f4 bl       #0x18ce8
000076f8 b        #0x72fc
000076fc adrp     x0, #0xa5000
00007700 adrp     x1, #0xa5000
00007704 add      x0, x0, #0x92
00007708 add      x1, x1, #0xd55
0000770c bl       #0x3df8
00007710 tbnz     x0, #0x3f, #0x771c
00007714 mov      w0, #1
00007718 bl       #0x3ec0
0000771c bl       #0x16834
00007720 ldp      x19, x21, [sp, #0x20]
00007724 tst      w0, #0xff
00007728 ldr      x24, [sp, #0x18]
0000772c b.eq     #0x775c
00007730 mov      w0, #-0xffffffff80000000
00007734 bl       #0x1685c
00007738 tst      w0, #0xff
0000773c b.eq     #0x775c
00007740 adrp     x1, #0xa5000
00007744 mov      w0, #-0xffffffff80000000
00007748 add      x1, x1, #0xd69
0000774c mov      x2, x22
00007750 bl       #0x16188
00007754 mov      w0, #3
00007758 b        #0x7158
0000775c mov      w0, #3
00007760 b        #0x7158
00007764 mov      x21, #2
00007768 movk     x21, #0x8000, lsl #48
0000776c bl       #0x16834
00007770 tst      w0, #0xff
00007774 b.eq     #0x7928
00007778 mov      w0, #-0xffffffff80000000
0000777c bl       #0x1685c
00007780 mov      w26, w19
00007784 tst      w0, #0xff
00007788 b.eq     #0x795c
0000778c adrp     x1, #0xa5000
00007790 mov      w0, #-0xffffffff80000000
00007794 add      x1, x1, #0xe63
00007798 mov      x2, x24
0000779c bl       #0x16188
000077a0 b        #0x795c
000077a4 adrp     x0, #0xa5000
000077a8 mov      w1, #0x320
000077ac add      x0, x0, #0x81
000077b0 bl       #0x18ce8
000077b4 b        #0x7334
000077b8 ldr      w9, [sp, #0x14]
000077bc mov      x25, xzr
000077c0 ldr      x8, [x20, #0x6d0]
000077c4 cmp      x24, x8
000077c8 b.ls     #0x77d8
000077cc adrp     x8, #0xd2000
000077d0 ldrb     w8, [x8, #0x6c0]
000077d4 cbnz     w8, #0x796c
000077d8 mov      w2, w9
000077dc mov      x0, x22
000077e0 mov      x1, x28
000077e4 mov      x19, x20
000077e8 bl       #0x4800
000077ec adrp     x20, #0xd2000
000077f0 adrp     x21, #0xd2000
000077f4 adrp     x9, #0xd2000
000077f8 ldr      x8, [x20, #0x710]
000077fc str      x0, [x21, #0x718]
00007800 strb     wzr, [x9, #0x618]
00007804 cbz      x8, #0x783c
00007808 adrp     x23, #0xd2000
0000780c mov      x0, x8
00007810 mov      w1, wzr
00007814 mov      x2, xzr
00007818 ldr      x9, [x23, #0x8e8]
0000781c ldr      x9, [x9, #0x58]

RANGE 0002a818-0002a938
0002a818 sub      sp, sp, #0x1d0
0002a81c str      x29, [sp, #0x1a0]
0002a820 stp      x30, x21, [sp, #0x1b0]
0002a824 stp      x20, x19, [sp, #0x1c0]
0002a828 adrp     x8, #0xd0000
0002a82c mov      w20, w1
0002a830 adrp     x1, #0xb0000
0002a834 mov      x19, x0
0002a838 mov      w0, #-1
0002a83c add      x1, x1, #0xb8f
0002a840 ldr      x8, [x8, #0x8a0]
0002a844 str      x8, [sp, #0x198]
0002a848 bl       #0x56770
0002a84c tbnz     w0, #0x1f, #0x2a904
0002a850 mov      w21, w0
0002a854 bl       #0x56940
0002a858 mov      w8, #0xfa00
0002a85c add      x8, x8, w20, uxtw
0002a860 cmp      x8, x0
0002a864 b.ls     #0x2a87c
0002a868 adrp     x1, #0xb0000
0002a86c mov      w0, wzr
0002a870 add      x1, x1, #0x43e
0002a874 bl       #0x40c20
0002a878 b        #0x2a904
0002a87c cbz      x19, #0x2a8c4
0002a880 ldrb     w8, [x19, #0x3c]
0002a884 cmp      w8, #0x22
0002a888 b.ne     #0x2a904
0002a88c ldrb     w8, [x19, #0x3d]
0002a890 cmp      w8, #0xff
0002a894 b.ne     #0x2a904
0002a898 ldrb     w8, [x19, #0x3e]
0002a89c cmp      w8, #0x11
0002a8a0 b.ne     #0x2a904
0002a8a4 ldrb     w8, [x19, #0x3f]
0002a8a8 cmp      w8, #0xee
0002a8ac b.ne     #0x2a904
0002a8b0 mov      x0, x19
0002a8b4 bl       #0x38d00
0002a8b8 cmp      w0, #0xf
0002a8bc b.eq     #0x2a8dc
0002a8c0 b        #0x2a904
0002a8c4 mov      w20, #0x190
0002a8c8 add      x0, sp, #8
0002a8cc mov      w1, wzr
0002a8d0 mov      x2, x20
0002a8d4 add      x19, sp, #8
0002a8d8 bl       #0x1ca9c
0002a8dc mov      w20, w20
0002a8e0 mov      w2, #0xfa00
0002a8e4 mov      w0, w21
0002a8e8 mov      x1, x19
0002a8ec mov      x3, x20
0002a8f0 bl       #0x56c28
0002a8f4 cmp      x0, x20
0002a8f8 b.ne     #0x2a904
0002a8fc mov      w0, #1
0002a900 b        #0x2a908
0002a904 mov      w0, wzr
0002a908 adrp     x9, #0xd0000
0002a90c ldr      x8, [sp, #0x198]
0002a910 ldr      x9, [x9, #0x8a0]
0002a914 cmp      x9, x8
0002a918 b.ne     #0x2a930
0002a91c ldp      x20, x19, [sp, #0x1c0]
0002a920 ldr      x29, [sp, #0x1a0]
0002a924 ldp      x30, x21, [sp, #0x1b0]
0002a928 add      sp, sp, #0x1d0
0002a92c ret      
0002a930 bl       #0x53a68
0002a934 udf      #0

RANGE 00005f94-00006194
00005f94 b.eq     #0x5fe4
00005f98 ldr      w8, [x28, #0x10]
00005f9c ldr      w9, [x21, #8]
00005fa0 cmp      w8, w9
00005fa4 b.ne     #0x5f8c
00005fa8 ldr      x8, [x28, #0x18]
00005fac cbz      x8, #0x5f8c
00005fb0 ldr      w9, [x21, #0x18]
00005fb4 ldr      x1, [x22, #0x6a8]
00005fb8 ldr      w2, [x23, #0x628]
00005fbc add      x9, x25, x9
00005fc0 sub      x0, x9, #0x4c
00005fc4 blr      x8
00005fc8 cmp      w0, #2
00005fcc b.eq     #0x5f88
00005fd0 cbz      w0, #0x6024
00005fd4 cmp      w0, #3
00005fd8 b.ne     #0x5f8c
00005fdc b        #0x60f4
00005fe0 mov      w20, wzr
00005fe4 ldr      w8, [x21, #0x18]
00005fe8 ldr      x9, [x21, #0x20]
00005fec ldr      x1, [x22, #0x6a8]
00005ff0 ldr      w2, [x23, #0x628]
00005ff4 add      x8, x25, x8
00005ff8 sub      x0, x8, #0x4c
00005ffc blr      x9
00006000 cmp      w0, #5
00006004 b.hi     #0x6090
00006008 adrp     x9, #0xa5000
0000600c mov      w8, w0
00006010 add      x9, x9, #0x8c
00006014 adr      x10, #0x6024
00006018 ldrb     w11, [x9, x8]
0000601c add      x10, x10, x11, lsl #2
00006020 br       x10
00006024 adrp     x8, #0xd2000
00006028 ldrb     w8, [x8, #0x618]
0000602c tbnz     w8, #0, #0x61b0
00006030 adrp     x8, #0xd2000
00006034 ldrb     w8, [x8, #0x630]
00006038 tbnz     w8, #0, #0x6058
0000603c adrp     x8, #0xd1000
00006040 add      x8, x8, #0xd18
00006044 ldr      x8, [x8, #0x28]
00006048 blr      x8
0000604c adrp     x8, #0xd2000
00006050 ldrb     w8, [x8, #0x618]
00006054 tbnz     w8, #0, #0x61b0
00006058 mov      w0, wzr
0000605c bl       #0x6d88
00006060 b        #0x61b0
00006064 adrp     x0, #0xa5000
00006068 mov      w1, #0x584
0000606c add      x0, x0, #0x7c
00006070 bl       #0x18ce8
00006074 b        #0x5cd0
00006078 adrp     x0, #0xa5000
0000607c mov      w1, #0x584
00006080 add      x0, x0, #0x7c
00006084 bl       #0x18ce8
00006088 b        #0x5e58
0000608c mov      w20, #1
00006090 adrp     x24, #0xd2000
00006094 add      x24, x24, #0x700
00006098 ldr      x28, [x24, #8]
0000609c b        #0x60a8
000060a0 mov      w20, #1
000060a4 ldr      x28, [x28, #8]
000060a8 cmp      x28, x24
000060ac b.eq     #0x6164
000060b0 ldr      w8, [x28, #0x10]
000060b4 ldr      w9, [x21, #8]
000060b8 cmp      w8, w9
000060bc b.ne     #0x60a4
000060c0 ldr      x8, [x28, #0x18]
000060c4 cbz      x8, #0x60a4
000060c8 ldr      w9, [x21, #0x18]
000060cc ldr      x1, [x22, #0x6a8]
000060d0 ldr      w2, [x23, #0x628]
000060d4 add      x9, x25, x9
000060d8 sub      x0, x9, #0x4c
000060dc blr      x8
000060e0 cmp      w0, #2
000060e4 b.eq     #0x60a0
000060e8 cbz      w0, #0x6024
000060ec cmp      w0, #3
000060f0 b.ne     #0x60a4
000060f4 ldr      x0, [x22, #0x6a8]
000060f8 cbz      x0, #0x6118
000060fc adrp     x8, #0xd2000
00006100 ldr      x1, [x8, #0x6b8]
00006104 cbz      x1, #0x6118
00006108 ldr      x8, [x29, #0x8e8]
0000610c mov      w2, wzr
00006110 ldr      x8, [x8, #0x168]
00006114 blr      x8
00006118 adrp     x8, #0xd2000
0000611c adrp     x9, #0xd1000
00006120 add      x9, x9, #0xd18
00006124 ldrb     w8, [x8, #0x618]
00006128 tbnz     w8, #0, #0x6154
0000612c adrp     x8, #0xd2000
00006130 ldrb     w8, [x8, #0x630]
00006134 tbnz     w8, #0, #0x614c
00006138 ldr      x8, [x9, #0x28]
0000613c blr      x8
00006140 adrp     x8, #0xd2000
00006144 ldrb     w8, [x8, #0x618]
00006148 tbnz     w8, #0, #0x6154
0000614c mov      w0, wzr
00006150 bl       #0x6d88
00006154 adrp     x0, #0xae000
00006158 adrp     x1, #0xc2000
0000615c add      x0, x0, #0x94f
00006160 b        #0x61bc
00006164 adrp     x8, #0xd2000
00006168 ldrb     w8, [x8, #0x618]
0000616c tbnz     w8, #0, #0x61a0
00006170 adrp     x8, #0xd2000
00006174 ldrb     w8, [x8, #0x630]
00006178 tbnz     w8, #0, #0x6198
0000617c adrp     x8, #0xd1000
00006180 add      x8, x8, #0xd18
00006184 ldr      x8, [x8, #0x28]
00006188 blr      x8
0000618c adrp     x8, #0xd2000
00006190 ldrb     w8, [x8, #0x618]

RANGE 000074e0-000076e0
000074e0 mov      x25, x0
000074e4 stp      x8, x9, [x0, #0x50]
000074e8 bl       #0x16af4
000074ec adrp     x20, #0xd2000
000074f0 str      w26, [x25, #0x48]
000074f4 adrp     x0, #0xa5000
000074f8 adrp     x1, #0x4000
000074fc add      x0, x0, #0x13e
00007500 add      x1, x1, #0x708
00007504 ldr      x8, [x20, #0x638]
00007508 mov      x2, x25
0000750c mov      w3, #0x18
00007510 mov      w4, #0x1000
00007514 ldr      x8, [x8, #0x18]
00007518 ldr      x8, [x8]
0000751c blr      x8
00007520 cbz      x0, #0x7bac
00007524 mov      x25, x0
00007528 bl       #0x6f978
0000752c ldr      x8, [x20, #0x638]
00007530 mov      x0, x25
00007534 ldr      x8, [x8, #0x18]
00007538 ldr      x8, [x8, #8]
0000753c blr      x8
00007540 ldr      w9, [sp, #0x14]
00007544 mov      w26, #0xff3a
00007548 mov      x20, x19
0000754c movk     w26, #0xed26, lsl #16
00007550 sxtw     x25, w0
00007554 tbz      w0, #0x1f, #0x77c0
00007558 b        #0x77d8
0000755c adrp     x0, #0xa5000
00007560 mov      w1, #0x320
00007564 add      x0, x0, #0x81
00007568 bl       #0x18ce8
0000756c b        #0x71c8
00007570 sub      x0, x27, #0xbc
00007574 bl       #0x58718
00007578 mov      x0, xzr
0000757c bl       #0x58fa8
00007580 bl       #0x16834
00007584 tst      w0, #0xff
00007588 b.eq     #0x72d4
0000758c mov      w0, #0x40
00007590 bl       #0x1685c
00007594 tst      w0, #0xff
00007598 b.eq     #0x72d4
0000759c bl       #0x581a8
000075a0 mov      x2, x27
000075a4 lsr      x8, x0, #0x20
000075a8 adrp     x1, #0xa5000
000075ac add      x1, x1, #0xcd9
000075b0 str      w0, [x2, #-0xc8]!
000075b4 strh     w8, [x2, #4]
000075b8 mov      w0, #0x40
000075bc bl       #0x16188
000075c0 mov      w0, #1
000075c4 b        #0x7158
000075c8 ldr      w1, [sp, #0x14]
000075cc mov      x0, x28
000075d0 bl       #0x2bb58
000075d4 b        #0x75e4
000075d8 ldr      w1, [sp, #0x14]
000075dc mov      x0, x28
000075e0 bl       #0x2a818
000075e4 ldr      x21, [sp, #0x28]
000075e8 mov      w8, #3
000075ec tst      w0, #0xff
000075f0 csinc    w0, w8, wzr, eq
000075f4 b        #0x7154
000075f8 sub      x24, x27, #0xb4
000075fc mov      x0, x22
00007600 mov      x1, x24
00007604 mov      w19, w26
00007608 bl       #0x180b4
0000760c mov      w0, #-1
00007610 mov      x1, x24
00007614 bl       #0x57528
00007618 tbnz     w0, #0x1f, #0x7764
0000761c ldr      w8, [sp, #0x14]
00007620 mov      w26, w0
00007624 mov      w23, w8
00007628 bl       #0x56940
0000762c cmp      x0, x23
00007630 b.hs     #0x7860
00007634 mov      x25, x0
00007638 mov      x24, x20
0000763c bl       #0x16834
00007640 tst      w0, #0xff
00007644 b.eq     #0x7668
00007648 mov      w0, #-0xffffffff80000000
0000764c bl       #0x1685c
00007650 tst      w0, #0xff
00007654 b.eq     #0x7668
00007658 adrp     x1, #0xa5000
0000765c mov      w0, #-0xffffffff80000000
00007660 add      x1, x1, #0xe80
00007664 bl       #0x16188
00007668 mov      x20, #2
0000766c movk     x20, #0x8000, lsl #48
00007670 bl       #0x16834
00007674 mov      w26, w19
00007678 tst      w0, #0xff
0000767c b.eq     #0x7930
00007680 mov      w0, #-0xffffffff80000000
00007684 bl       #0x1685c
00007688 add      x21, x20, #9
0000768c tst      w0, #0xff
00007690 b.eq     #0x7938
00007694 adrp     x1, #0xa5000
00007698 mov      w0, #-0xffffffff80000000
0000769c add      x1, x1, #0xe9b
000076a0 mov      x2, x25
000076a4 mov      x3, x23
000076a8 bl       #0x16188
000076ac b        #0x7938
000076b0 bl       #0x16834
000076b4 tst      w0, #0xff
000076b8 b.eq     #0x7150
000076bc mov      w0, #-0xffffffff80000000
000076c0 bl       #0x1685c
000076c4 ldp      x24, x19, [sp, #0x18]
000076c8 tst      w0, #0xff
000076cc b.eq     #0x775c
000076d0 adrp     x1, #0xa5000
000076d4 mov      w0, #-0xffffffff80000000
000076d8 add      x1, x1, #0xd0b
000076dc bl       #0x16188

RANGE 00007d3c-00007f3c
00007d3c add      x0, x0, #0x618
00007d40 bl       #0x17a08
00007d44 mov      x22, x0
00007d48 lsl      x8, x0, #1
00007d4c add      x8, x8, #2
00007d50 cmp      x8, #0x1f
00007d54 b.hs     #0x7eb4
00007d58 adrp     x1, #0xa6000
00007d5c mov      x0, x20
00007d60 add      x1, x1, #0x618
00007d64 mov      x2, x22
00007d68 bl       #0x17ba8
00007d6c cbz      x0, #0x7de0
00007d70 adrp     x0, #0xa6000
00007d74 add      x0, x0, #0x66c
00007d78 bl       #0x17a08
00007d7c mov      x22, x0
00007d80 lsl      x8, x0, #1
00007d84 add      x8, x8, #2
00007d88 cmp      x8, #0x19
00007d8c b.hs     #0x7f58
00007d90 adrp     x1, #0xa6000
00007d94 mov      x0, x20
00007d98 add      x1, x1, #0x66c
00007d9c mov      x2, x22
00007da0 bl       #0x17ba8
00007da4 cbz      x0, #0x7e38
00007da8 mov      w0, #-1
00007dac mov      x1, x21
00007db0 bl       #0x57528
00007db4 tbnz     w0, #0x1f, #0x7e50
00007db8 bl       #0x56b70
00007dbc tbnz     w0, #0x1f, #0x7e6c
00007dc0 adrp     x0, #0xa6000
00007dc4 mov      x1, x20
00007dc8 add      x0, x0, #0x690
00007dcc bl       #0x17afc
00007dd0 cbz      x0, #0x7ec8
00007dd4 mov      x0, x20
00007dd8 bl       #0x8da8
00007ddc b        #0x7e30
00007de0 bl       #0x16834
00007de4 tst      w0, #0xff
00007de8 b.eq     #0x7e0c
00007dec mov      w0, #0x40
00007df0 bl       #0x1685c
00007df4 tst      w0, #0xff
00007df8 b.eq     #0x7e0c
00007dfc adrp     x1, #0xa5000
00007e00 mov      w0, #0x40
00007e04 add      x1, x1, #0xf1b
00007e08 bl       #0x16188
00007e0c bl       #0x6d440
00007e10 cbz      x0, #0x7e30
00007e14 adrp     x0, #0xa5000
00007e18 adrp     x1, #0xa5000
00007e1c add      x0, x0, #0x92
00007e20 add      x1, x1, #0xf33
00007e24 bl       #0x3df8
00007e28 tbz      x0, #0x3f, #0x7d0c
00007e2c b        #0x7f2c
00007e30 mov      w0, #1
00007e34 b        #0x7f30
00007e38 mov      w1, wzr
00007e3c bl       #0x2a818
00007e40 mov      w8, #3
00007e44 tst      w0, #0xff
00007e48 csinc    w0, w8, wzr, eq
00007e4c b        #0x7f30
00007e50 adrp     x0, #0xa5000
00007e54 adrp     x1, #0xa5000
00007e58 add      x0, x0, #0x92
00007e5c add      x1, x1, #0xd55
00007e60 bl       #0x3df8
00007e64 tbz      x0, #0x3f, #0x7d0c
00007e68 b        #0x7f2c
00007e6c adrp     x0, #0xa5000
00007e70 adrp     x1, #0xa5000
00007e74 add      x0, x0, #0x92
00007e78 add      x1, x1, #0xf51
00007e7c bl       #0x3df8
00007e80 tbnz     x0, #0x3f, #0x7e8c
00007e84 mov      w0, #1
00007e88 bl       #0x3ec0
00007e8c bl       #0x16834
00007e90 tst      w0, #0xff
00007e94 b.eq     #0x7f2c
00007e98 mov      w0, #-0xffffffff80000000
00007e9c bl       #0x1685c
00007ea0 tst      w0, #0xff
00007ea4 b.eq     #0x7f2c
00007ea8 adrp     x1, #0xa5000
00007eac add      x1, x1, #0xf69
00007eb0 b        #0x7f18
00007eb4 adrp     x0, #0xa5000
00007eb8 mov      w1, #0x320
00007ebc add      x0, x0, #0x81
00007ec0 bl       #0x18ce8
00007ec4 b        #0x7d58
00007ec8 bl       #0x693e0
00007ecc cbz      x0, #0x7dd4
00007ed0 mov      x21, x0
00007ed4 adrp     x0, #0xa5000
00007ed8 adrp     x1, #0xa5000
00007edc add      x0, x0, #0x92
00007ee0 add      x1, x1, #0xf87
00007ee4 bl       #0x3df8
00007ee8 tbnz     x0, #0x3f, #0x7ef4
00007eec mov      w0, #1
00007ef0 bl       #0x3ec0
00007ef4 bl       #0x16834
00007ef8 tst      w0, #0xff
00007efc b.eq     #0x7f2c
00007f00 mov      w0, #-0xffffffff80000000
00007f04 bl       #0x1685c
00007f08 tst      w0, #0xff
00007f0c b.eq     #0x7f2c
00007f10 adrp     x1, #0xa5000
00007f14 add      x1, x1, #0xfa2
00007f18 mov      w0, #-0xffffffff80000000
00007f1c mov      x2, x21
00007f20 bl       #0x16188
00007f24 mov      w0, #3
00007f28 b        #0x7f30
00007f2c mov      w0, #3
00007f30 ldr      x8, [x25]
00007f34 cmp      x24, x8
00007f38 b.ne     #0x7f6c

RANGE 0000a608-0000a808
0000a608 cmn      w0, #1
0000a60c b.eq     #0xa618
0000a610 bl       #0x56b70
0000a614 cbnz     w0, #0xa648
0000a618 mov      w0, wzr
0000a61c bl       #0x1ea30
0000a620 cbnz     w0, #0xa648
0000a624 adrp     x1, #0xc1000
0000a628 mov      x0, x19
0000a62c add      x1, x1, #0xab5
0000a630 bl       #0x1be9c
0000a634 cbz      w20, #0xa63c
0000a638 cbnz     w0, #0xa650
0000a63c mov      w0, #1
0000a640 bl       #0x1ea30
0000a644 cbz      w0, #0xa650
0000a648 mov      w0, #3
0000a64c b        #0xa66c
0000a650 adrp     x1, #0xa6000
0000a654 mov      x0, x19
0000a658 add      x1, x1, #0x9a0
0000a65c bl       #0x1be9c
0000a660 cbnz     w0, #0xa668
0000a664 bl       #0x213a8
0000a668 mov      w0, #1
0000a66c ldp      x20, x19, [sp, #0x10]
0000a670 ldr      x30, [sp], #0x20
0000a674 ret      
0000a678 mov      w0, #1
0000a67c ret      
0000a680 str      x30, [sp, #-0x10]!
0000a684 bl       #0x21a18
0000a688 tst      w0, #0xff
0000a68c b.ne     #0xa69c
0000a690 bl       #0x21948
0000a694 tst      w0, #0xff
0000a698 b.eq     #0xa6d0
0000a69c bl       #0x61bf0
0000a6a0 tst      w0, #0xff
0000a6a4 b.eq     #0xa6c4
0000a6a8 bl       #0x6be58
0000a6ac cmp      w0, #3
0000a6b0 b.ne     #0xa6c4
0000a6b4 adrp     x0, #0xa6000
0000a6b8 add      x0, x0, #0xbe0
0000a6bc bl       #0x43c8
0000a6c0 b        #0xa6e0
0000a6c4 mov      w0, #1
0000a6c8 ldr      x30, [sp], #0x10
0000a6cc ret      
0000a6d0 adrp     x1, #0xa6000
0000a6d4 mov      w0, #-1
0000a6d8 add      x1, x1, #0xbc8
0000a6dc bl       #0x40c20
0000a6e0 mov      w0, #3
0000a6e4 ldr      x30, [sp], #0x10
0000a6e8 ret      
0000a6ec udf      #0
0000a6f0 stp      x30, x23, [sp, #-0x30]!
0000a6f4 stp      x22, x21, [sp, #0x10]
0000a6f8 stp      x20, x19, [sp, #0x20]
0000a6fc adrp     x22, #0xd2000
0000a700 adrp     x20, #0xd2000
0000a704 add      x22, x22, #0x6f0
0000a708 add      x20, x20, #0x700
0000a70c mov      w0, #0x20
0000a710 stp      x22, x22, [x22]
0000a714 stp      x20, x20, [x20]
0000a718 bl       #0x15710
0000a71c adrp     x21, #0xd2000
0000a720 adrp     x23, #0xd2000
0000a724 cbz      x0, #0xa76c
0000a728 ldr      x8, [x21, #0x8e8]
0000a72c mov      w1, #0x20
0000a730 mov      w2, wzr
0000a734 mov      x19, x0
0000a738 ldr      x8, [x8, #0x168]
0000a73c blr      x8
0000a740 ldr      x8, [x22]
0000a744 adrp     x9, #0x9000
0000a748 add      x9, x9, #0xb70
0000a74c stp      x8, x22, [x19]
0000a750 mov      w8, #4
0000a754 ldr      x10, [x23, #0x6f0]
0000a758 str      x9, [x19, #0x18]
0000a75c str      w8, [x19, #0x10]
0000a760 str      x19, [x23, #0x6f0]
0000a764 str      x19, [x10, #8]
0000a768 b        #0xa77c
0000a76c adrp     x1, #0xa6000
0000a770 mov      w2, #4
0000a774 add      x1, x1, #0xce2
0000a778 bl       #0x40c20
0000a77c mov      w0, #0x20
0000a780 bl       #0x15710
0000a784 cbz      x0, #0xa7cc
0000a788 ldr      x8, [x21, #0x8e8]
0000a78c mov      w1, #0x20
0000a790 mov      w2, wzr
0000a794 mov      x19, x0
0000a798 ldr      x8, [x8, #0x168]
0000a79c blr      x8
0000a7a0 ldr      x8, [x22]
0000a7a4 adrp     x9, #0x9000
0000a7a8 add      x9, x9, #0x788
0000a7ac stp      x8, x22, [x19]
0000a7b0 mov      w8, #3
0000a7b4 ldr      x10, [x23, #0x6f0]
0000a7b8 str      x9, [x19, #0x18]
0000a7bc str      w8, [x19, #0x10]
0000a7c0 str      x19, [x23, #0x6f0]
0000a7c4 str      x19, [x10, #8]
0000a7c8 b        #0xa7dc
0000a7cc adrp     x1, #0xa6000
0000a7d0 mov      w2, #3
0000a7d4 add      x1, x1, #0xce2
0000a7d8 bl       #0x40c20
0000a7dc mov      w0, #0x20
0000a7e0 bl       #0x15710
0000a7e4 cbz      x0, #0xa82c
0000a7e8 ldr      x8, [x21, #0x8e8]
0000a7ec mov      w1, #0x20
0000a7f0 mov      w2, wzr
0000a7f4 mov      x19, x0
0000a7f8 ldr      x8, [x8, #0x168]
0000a7fc blr      x8
0000a800 ldr      x8, [x22]
0000a804 adrp     x9, #0x9000

RANGE 0000a82c-0000aa2c
0000a82c adrp     x1, #0xa6000
0000a830 mov      w2, #1
0000a834 add      x1, x1, #0xce2
0000a838 bl       #0x40c20
0000a83c mov      w0, #0x20
0000a840 bl       #0x15710
0000a844 cbz      x0, #0xa88c
0000a848 ldr      x8, [x21, #0x8e8]
0000a84c mov      w1, #0x20
0000a850 mov      w2, wzr
0000a854 mov      x19, x0
0000a858 ldr      x8, [x8, #0x168]
0000a85c blr      x8
0000a860 ldr      x8, [x22]
0000a864 adrp     x9, #0x9000
0000a868 add      x9, x9, #0xba8
0000a86c stp      x8, x22, [x19]
0000a870 mov      w8, #1
0000a874 ldr      x10, [x23, #0x6f0]
0000a878 str      x9, [x19, #0x18]
0000a87c str      w8, [x19, #0x10]
0000a880 str      x19, [x23, #0x6f0]
0000a884 str      x19, [x10, #8]
0000a888 b        #0xa89c
0000a88c adrp     x1, #0xa6000
0000a890 mov      w2, #1
0000a894 add      x1, x1, #0xce2
0000a898 bl       #0x40c20
0000a89c mov      w0, #0x20
0000a8a0 bl       #0x15710
0000a8a4 cbz      x0, #0xa8ec
0000a8a8 ldr      x8, [x21, #0x8e8]
0000a8ac mov      w1, #0x20
0000a8b0 mov      w2, wzr
0000a8b4 mov      x19, x0
0000a8b8 ldr      x8, [x8, #0x168]
0000a8bc blr      x8
0000a8c0 ldr      x8, [x22]
0000a8c4 adrp     x9, #0xa000
0000a8c8 add      x9, x9, #0x680
0000a8cc stp      x8, x22, [x19]
0000a8d0 mov      w8, #0xa
0000a8d4 ldr      x10, [x23, #0x6f0]
0000a8d8 str      x9, [x19, #0x18]
0000a8dc str      w8, [x19, #0x10]
0000a8e0 str      x19, [x23, #0x6f0]
0000a8e4 str      x19, [x10, #8]
0000a8e8 b        #0xa8fc
0000a8ec adrp     x1, #0xa6000
0000a8f0 mov      w2, #0xa
0000a8f4 add      x1, x1, #0xce2
0000a8f8 bl       #0x40c20
0000a8fc mov      w0, #0x20
0000a900 bl       #0x15710
0000a904 adrp     x22, #0xd2000
0000a908 cbz      x0, #0xa950
0000a90c ldr      x8, [x21, #0x8e8]
0000a910 mov      w1, #0x20
0000a914 mov      w2, wzr
0000a918 mov      x19, x0
0000a91c ldr      x8, [x8, #0x168]
0000a920 blr      x8
0000a924 ldr      x8, [x20]
0000a928 adrp     x9, #0xa000
0000a92c add      x9, x9, #0x358
0000a930 stp      x8, x20, [x19]
0000a934 mov      w8, #1
0000a938 ldr      x10, [x22, #0x700]
0000a93c str      x9, [x19, #0x18]
0000a940 str      w8, [x19, #0x10]
0000a944 str      x19, [x22, #0x700]
0000a948 str      x19, [x10, #8]
0000a94c b        #0xa960
0000a950 adrp     x1, #0xa6000
0000a954 mov      w2, #1
0000a958 add      x1, x1, #0xce2
0000a95c bl       #0x40c20
0000a960 mov      w0, #0x20
0000a964 bl       #0x15710
0000a968 cbz      x0, #0xa9b0
0000a96c ldr      x8, [x21, #0x8e8]
0000a970 mov      w1, #0x20
0000a974 mov      w2, wzr
0000a978 mov      x19, x0
0000a97c ldr      x8, [x8, #0x168]
0000a980 blr      x8
0000a984 ldr      x8, [x20]
0000a988 adrp     x9, #0xa000
0000a98c add      x9, x9, #0x678
0000a990 stp      x8, x20, [x19]
0000a994 mov      w8, #1
0000a998 ldr      x10, [x22, #0x700]
0000a99c str      x9, [x19, #0x18]
0000a9a0 str      w8, [x19, #0x10]
0000a9a4 str      x19, [x22, #0x700]
0000a9a8 str      x19, [x10, #8]
0000a9ac b        #0xa9c0
0000a9b0 adrp     x1, #0xa6000
0000a9b4 mov      w2, #1
0000a9b8 add      x1, x1, #0xce2
0000a9bc bl       #0x40c20
0000a9c0 mov      w0, #0x20
0000a9c4 bl       #0x15710
0000a9c8 cbz      x0, #0xaa1c
0000a9cc ldr      x8, [x21, #0x8e8]
0000a9d0 mov      w1, #0x20
0000a9d4 mov      w2, wzr
0000a9d8 mov      x19, x0
0000a9dc ldr      x8, [x8, #0x168]
0000a9e0 blr      x8
0000a9e4 ldr      x8, [x20]
0000a9e8 adrp     x9, #0xa000
0000a9ec add      x9, x9, #0x598
0000a9f0 stp      x8, x20, [x19]
0000a9f4 mov      w8, #3
0000a9f8 ldr      x10, [x22, #0x700]
0000a9fc str      x9, [x19, #0x18]
0000aa00 str      w8, [x19, #0x10]
0000aa04 str      x19, [x22, #0x700]
0000aa08 str      x19, [x10, #8]
0000aa0c ldp      x20, x19, [sp, #0x20]
0000aa10 ldp      x22, x21, [sp, #0x10]
0000aa14 ldp      x30, x23, [sp], #0x30
0000aa18 ret      
0000aa1c ldp      x20, x19, [sp, #0x20]
0000aa20 adrp     x1, #0xa6000
0000aa24 mov      w2, #3
0000aa28 ldp      x22, x21, [sp, #0x10]

RANGE 0000a838-0000aa38
0000a838 bl       #0x40c20
0000a83c mov      w0, #0x20
0000a840 bl       #0x15710
0000a844 cbz      x0, #0xa88c
0000a848 ldr      x8, [x21, #0x8e8]
0000a84c mov      w1, #0x20
0000a850 mov      w2, wzr
0000a854 mov      x19, x0
0000a858 ldr      x8, [x8, #0x168]
0000a85c blr      x8
0000a860 ldr      x8, [x22]
0000a864 adrp     x9, #0x9000
0000a868 add      x9, x9, #0xba8
0000a86c stp      x8, x22, [x19]
0000a870 mov      w8, #1
0000a874 ldr      x10, [x23, #0x6f0]
0000a878 str      x9, [x19, #0x18]
0000a87c str      w8, [x19, #0x10]
0000a880 str      x19, [x23, #0x6f0]
0000a884 str      x19, [x10, #8]
0000a888 b        #0xa89c
0000a88c adrp     x1, #0xa6000
0000a890 mov      w2, #1
0000a894 add      x1, x1, #0xce2
0000a898 bl       #0x40c20
0000a89c mov      w0, #0x20
0000a8a0 bl       #0x15710
0000a8a4 cbz      x0, #0xa8ec
0000a8a8 ldr      x8, [x21, #0x8e8]
0000a8ac mov      w1, #0x20
0000a8b0 mov      w2, wzr
0000a8b4 mov      x19, x0
0000a8b8 ldr      x8, [x8, #0x168]
0000a8bc blr      x8
0000a8c0 ldr      x8, [x22]
0000a8c4 adrp     x9, #0xa000
0000a8c8 add      x9, x9, #0x680
0000a8cc stp      x8, x22, [x19]
0000a8d0 mov      w8, #0xa
0000a8d4 ldr      x10, [x23, #0x6f0]
0000a8d8 str      x9, [x19, #0x18]
0000a8dc str      w8, [x19, #0x10]
0000a8e0 str      x19, [x23, #0x6f0]
0000a8e4 str      x19, [x10, #8]
0000a8e8 b        #0xa8fc
0000a8ec adrp     x1, #0xa6000
0000a8f0 mov      w2, #0xa
0000a8f4 add      x1, x1, #0xce2
0000a8f8 bl       #0x40c20
0000a8fc mov      w0, #0x20
0000a900 bl       #0x15710
0000a904 adrp     x22, #0xd2000
0000a908 cbz      x0, #0xa950
0000a90c ldr      x8, [x21, #0x8e8]
0000a910 mov      w1, #0x20
0000a914 mov      w2, wzr
0000a918 mov      x19, x0
0000a91c ldr      x8, [x8, #0x168]
0000a920 blr      x8
0000a924 ldr      x8, [x20]
0000a928 adrp     x9, #0xa000
0000a92c add      x9, x9, #0x358
0000a930 stp      x8, x20, [x19]
0000a934 mov      w8, #1
0000a938 ldr      x10, [x22, #0x700]
0000a93c str      x9, [x19, #0x18]
0000a940 str      w8, [x19, #0x10]
0000a944 str      x19, [x22, #0x700]
0000a948 str      x19, [x10, #8]
0000a94c b        #0xa960
0000a950 adrp     x1, #0xa6000
0000a954 mov      w2, #1
0000a958 add      x1, x1, #0xce2
0000a95c bl       #0x40c20
0000a960 mov      w0, #0x20
0000a964 bl       #0x15710
0000a968 cbz      x0, #0xa9b0
0000a96c ldr      x8, [x21, #0x8e8]
0000a970 mov      w1, #0x20
0000a974 mov      w2, wzr
0000a978 mov      x19, x0
0000a97c ldr      x8, [x8, #0x168]
0000a980 blr      x8
0000a984 ldr      x8, [x20]
0000a988 adrp     x9, #0xa000
0000a98c add      x9, x9, #0x678
0000a990 stp      x8, x20, [x19]
0000a994 mov      w8, #1
0000a998 ldr      x10, [x22, #0x700]
0000a99c str      x9, [x19, #0x18]
0000a9a0 str      w8, [x19, #0x10]
0000a9a4 str      x19, [x22, #0x700]
0000a9a8 str      x19, [x10, #8]
0000a9ac b        #0xa9c0
0000a9b0 adrp     x1, #0xa6000
0000a9b4 mov      w2, #1
0000a9b8 add      x1, x1, #0xce2
0000a9bc bl       #0x40c20
0000a9c0 mov      w0, #0x20
0000a9c4 bl       #0x15710
0000a9c8 cbz      x0, #0xaa1c
0000a9cc ldr      x8, [x21, #0x8e8]
0000a9d0 mov      w1, #0x20
0000a9d4 mov      w2, wzr
0000a9d8 mov      x19, x0
0000a9dc ldr      x8, [x8, #0x168]
0000a9e0 blr      x8
0000a9e4 ldr      x8, [x20]
0000a9e8 adrp     x9, #0xa000
0000a9ec add      x9, x9, #0x598
0000a9f0 stp      x8, x20, [x19]
0000a9f4 mov      w8, #3
0000a9f8 ldr      x10, [x22, #0x700]
0000a9fc str      x9, [x19, #0x18]
0000aa00 str      w8, [x19, #0x10]
0000aa04 str      x19, [x22, #0x700]
0000aa08 str      x19, [x10, #8]
0000aa0c ldp      x20, x19, [sp, #0x20]
0000aa10 ldp      x22, x21, [sp, #0x10]
0000aa14 ldp      x30, x23, [sp], #0x30
0000aa18 ret      
0000aa1c ldp      x20, x19, [sp, #0x20]
0000aa20 adrp     x1, #0xa6000
0000aa24 mov      w2, #3
0000aa28 ldp      x22, x21, [sp, #0x10]
0000aa2c add      x1, x1, #0xce2
0000aa30 ldp      x30, x23, [sp], #0x30
0000aa34 b        #0x40c20

RANGE 0000a844-0000aa44
0000a844 cbz      x0, #0xa88c
0000a848 ldr      x8, [x21, #0x8e8]
0000a84c mov      w1, #0x20
0000a850 mov      w2, wzr
0000a854 mov      x19, x0
0000a858 ldr      x8, [x8, #0x168]
0000a85c blr      x8
0000a860 ldr      x8, [x22]
0000a864 adrp     x9, #0x9000
0000a868 add      x9, x9, #0xba8
0000a86c stp      x8, x22, [x19]
0000a870 mov      w8, #1
0000a874 ldr      x10, [x23, #0x6f0]
0000a878 str      x9, [x19, #0x18]
0000a87c str      w8, [x19, #0x10]
0000a880 str      x19, [x23, #0x6f0]
0000a884 str      x19, [x10, #8]
0000a888 b        #0xa89c
0000a88c adrp     x1, #0xa6000
0000a890 mov      w2, #1
0000a894 add      x1, x1, #0xce2
0000a898 bl       #0x40c20
0000a89c mov      w0, #0x20
0000a8a0 bl       #0x15710
0000a8a4 cbz      x0, #0xa8ec
0000a8a8 ldr      x8, [x21, #0x8e8]
0000a8ac mov      w1, #0x20
0000a8b0 mov      w2, wzr
0000a8b4 mov      x19, x0
0000a8b8 ldr      x8, [x8, #0x168]
0000a8bc blr      x8
0000a8c0 ldr      x8, [x22]
0000a8c4 adrp     x9, #0xa000
0000a8c8 add      x9, x9, #0x680
0000a8cc stp      x8, x22, [x19]
0000a8d0 mov      w8, #0xa
0000a8d4 ldr      x10, [x23, #0x6f0]
0000a8d8 str      x9, [x19, #0x18]
0000a8dc str      w8, [x19, #0x10]
0000a8e0 str      x19, [x23, #0x6f0]
0000a8e4 str      x19, [x10, #8]
0000a8e8 b        #0xa8fc
0000a8ec adrp     x1, #0xa6000
0000a8f0 mov      w2, #0xa
0000a8f4 add      x1, x1, #0xce2
0000a8f8 bl       #0x40c20
0000a8fc mov      w0, #0x20
0000a900 bl       #0x15710
0000a904 adrp     x22, #0xd2000
0000a908 cbz      x0, #0xa950
0000a90c ldr      x8, [x21, #0x8e8]
0000a910 mov      w1, #0x20
0000a914 mov      w2, wzr
0000a918 mov      x19, x0
0000a91c ldr      x8, [x8, #0x168]
0000a920 blr      x8
0000a924 ldr      x8, [x20]
0000a928 adrp     x9, #0xa000
0000a92c add      x9, x9, #0x358
0000a930 stp      x8, x20, [x19]
0000a934 mov      w8, #1
0000a938 ldr      x10, [x22, #0x700]
0000a93c str      x9, [x19, #0x18]
0000a940 str      w8, [x19, #0x10]
0000a944 str      x19, [x22, #0x700]
0000a948 str      x19, [x10, #8]
0000a94c b        #0xa960
0000a950 adrp     x1, #0xa6000
0000a954 mov      w2, #1
0000a958 add      x1, x1, #0xce2
0000a95c bl       #0x40c20
0000a960 mov      w0, #0x20
0000a964 bl       #0x15710
0000a968 cbz      x0, #0xa9b0
0000a96c ldr      x8, [x21, #0x8e8]
0000a970 mov      w1, #0x20
0000a974 mov      w2, wzr
0000a978 mov      x19, x0
0000a97c ldr      x8, [x8, #0x168]
0000a980 blr      x8
0000a984 ldr      x8, [x20]
0000a988 adrp     x9, #0xa000
0000a98c add      x9, x9, #0x678
0000a990 stp      x8, x20, [x19]
0000a994 mov      w8, #1
0000a998 ldr      x10, [x22, #0x700]
0000a99c str      x9, [x19, #0x18]
0000a9a0 str      w8, [x19, #0x10]
0000a9a4 str      x19, [x22, #0x700]
0000a9a8 str      x19, [x10, #8]
0000a9ac b        #0xa9c0
0000a9b0 adrp     x1, #0xa6000
0000a9b4 mov      w2, #1
0000a9b8 add      x1, x1, #0xce2
0000a9bc bl       #0x40c20
0000a9c0 mov      w0, #0x20
0000a9c4 bl       #0x15710
0000a9c8 cbz      x0, #0xaa1c
0000a9cc ldr      x8, [x21, #0x8e8]
0000a9d0 mov      w1, #0x20
0000a9d4 mov      w2, wzr
0000a9d8 mov      x19, x0
0000a9dc ldr      x8, [x8, #0x168]
0000a9e0 blr      x8
0000a9e4 ldr      x8, [x20]
0000a9e8 adrp     x9, #0xa000
0000a9ec add      x9, x9, #0x598
0000a9f0 stp      x8, x20, [x19]
0000a9f4 mov      w8, #3
0000a9f8 ldr      x10, [x22, #0x700]
0000a9fc str      x9, [x19, #0x18]
0000aa00 str      w8, [x19, #0x10]
0000aa04 str      x19, [x22, #0x700]
0000aa08 str      x19, [x10, #8]
0000aa0c ldp      x20, x19, [sp, #0x20]
0000aa10 ldp      x22, x21, [sp, #0x10]
0000aa14 ldp      x30, x23, [sp], #0x30
0000aa18 ret      
0000aa1c ldp      x20, x19, [sp, #0x20]
0000aa20 adrp     x1, #0xa6000
0000aa24 mov      w2, #3
0000aa28 ldp      x22, x21, [sp, #0x10]
0000aa2c add      x1, x1, #0xce2
0000aa30 ldp      x30, x23, [sp], #0x30
0000aa34 b        #0x40c20
0000aa38 str      x30, [sp, #-0x10]!
0000aa3c adrp     x1, #0xa6000
0000aa40 mov      x2, x0

RANGE 0000a898-0000aa98
0000a898 bl       #0x40c20
0000a89c mov      w0, #0x20
0000a8a0 bl       #0x15710
0000a8a4 cbz      x0, #0xa8ec
0000a8a8 ldr      x8, [x21, #0x8e8]
0000a8ac mov      w1, #0x20
0000a8b0 mov      w2, wzr
0000a8b4 mov      x19, x0
0000a8b8 ldr      x8, [x8, #0x168]
0000a8bc blr      x8
0000a8c0 ldr      x8, [x22]
0000a8c4 adrp     x9, #0xa000
0000a8c8 add      x9, x9, #0x680
0000a8cc stp      x8, x22, [x19]
0000a8d0 mov      w8, #0xa
0000a8d4 ldr      x10, [x23, #0x6f0]
0000a8d8 str      x9, [x19, #0x18]
0000a8dc str      w8, [x19, #0x10]
0000a8e0 str      x19, [x23, #0x6f0]
0000a8e4 str      x19, [x10, #8]
0000a8e8 b        #0xa8fc
0000a8ec adrp     x1, #0xa6000
0000a8f0 mov      w2, #0xa
0000a8f4 add      x1, x1, #0xce2
0000a8f8 bl       #0x40c20
0000a8fc mov      w0, #0x20
0000a900 bl       #0x15710
0000a904 adrp     x22, #0xd2000
0000a908 cbz      x0, #0xa950
0000a90c ldr      x8, [x21, #0x8e8]
0000a910 mov      w1, #0x20
0000a914 mov      w2, wzr
0000a918 mov      x19, x0
0000a91c ldr      x8, [x8, #0x168]
0000a920 blr      x8
0000a924 ldr      x8, [x20]
0000a928 adrp     x9, #0xa000
0000a92c add      x9, x9, #0x358
0000a930 stp      x8, x20, [x19]
0000a934 mov      w8, #1
0000a938 ldr      x10, [x22, #0x700]
0000a93c str      x9, [x19, #0x18]
0000a940 str      w8, [x19, #0x10]
0000a944 str      x19, [x22, #0x700]
0000a948 str      x19, [x10, #8]
0000a94c b        #0xa960
0000a950 adrp     x1, #0xa6000
0000a954 mov      w2, #1
0000a958 add      x1, x1, #0xce2
0000a95c bl       #0x40c20
0000a960 mov      w0, #0x20
0000a964 bl       #0x15710
0000a968 cbz      x0, #0xa9b0
0000a96c ldr      x8, [x21, #0x8e8]
0000a970 mov      w1, #0x20
0000a974 mov      w2, wzr
0000a978 mov      x19, x0
0000a97c ldr      x8, [x8, #0x168]
0000a980 blr      x8
0000a984 ldr      x8, [x20]
0000a988 adrp     x9, #0xa000
0000a98c add      x9, x9, #0x678
0000a990 stp      x8, x20, [x19]
0000a994 mov      w8, #1
0000a998 ldr      x10, [x22, #0x700]
0000a99c str      x9, [x19, #0x18]
0000a9a0 str      w8, [x19, #0x10]
0000a9a4 str      x19, [x22, #0x700]
0000a9a8 str      x19, [x10, #8]
0000a9ac b        #0xa9c0
0000a9b0 adrp     x1, #0xa6000
0000a9b4 mov      w2, #1
0000a9b8 add      x1, x1, #0xce2
0000a9bc bl       #0x40c20
0000a9c0 mov      w0, #0x20
0000a9c4 bl       #0x15710
0000a9c8 cbz      x0, #0xaa1c
0000a9cc ldr      x8, [x21, #0x8e8]
0000a9d0 mov      w1, #0x20
0000a9d4 mov      w2, wzr
0000a9d8 mov      x19, x0
0000a9dc ldr      x8, [x8, #0x168]
0000a9e0 blr      x8
0000a9e4 ldr      x8, [x20]
0000a9e8 adrp     x9, #0xa000
0000a9ec add      x9, x9, #0x598
0000a9f0 stp      x8, x20, [x19]
0000a9f4 mov      w8, #3
0000a9f8 ldr      x10, [x22, #0x700]
0000a9fc str      x9, [x19, #0x18]
0000aa00 str      w8, [x19, #0x10]
0000aa04 str      x19, [x22, #0x700]
0000aa08 str      x19, [x10, #8]
0000aa0c ldp      x20, x19, [sp, #0x20]
0000aa10 ldp      x22, x21, [sp, #0x10]
0000aa14 ldp      x30, x23, [sp], #0x30
0000aa18 ret      
0000aa1c ldp      x20, x19, [sp, #0x20]
0000aa20 adrp     x1, #0xa6000
0000aa24 mov      w2, #3
0000aa28 ldp      x22, x21, [sp, #0x10]
0000aa2c add      x1, x1, #0xce2
0000aa30 ldp      x30, x23, [sp], #0x30
0000aa34 b        #0x40c20
0000aa38 str      x30, [sp, #-0x10]!
0000aa3c adrp     x1, #0xa6000
0000aa40 mov      x2, x0
0000aa44 add      x1, x1, #0xd17
0000aa48 mov      w0, wzr
0000aa4c mov      w3, #0x100
0000aa50 bl       #0x1e8d8
0000aa54 cmp      x0, #0
0000aa58 cset     w0, ne
0000aa5c ldr      x30, [sp], #0x10
0000aa60 ret      
0000aa64 udf      #0
0000aa68 sub      sp, sp, #0x90
0000aa6c stp      x29, x30, [sp, #0x30]
0000aa70 stp      x28, x27, [sp, #0x40]
0000aa74 stp      x26, x25, [sp, #0x50]
0000aa78 stp      x24, x23, [sp, #0x60]
0000aa7c stp      x22, x21, [sp, #0x70]
0000aa80 stp      x20, x19, [sp, #0x80]
0000aa84 mov      x20, x0
0000aa88 bl       #0x6fd48
0000aa8c ldr      x19, [x0]
0000aa90 adrp     x9, #0xd0000
0000aa94 add      x1, x20, #1

RANGE 0000a8a4-0000aaa4
0000a8a4 cbz      x0, #0xa8ec
0000a8a8 ldr      x8, [x21, #0x8e8]
0000a8ac mov      w1, #0x20
0000a8b0 mov      w2, wzr
0000a8b4 mov      x19, x0
0000a8b8 ldr      x8, [x8, #0x168]
0000a8bc blr      x8
0000a8c0 ldr      x8, [x22]
0000a8c4 adrp     x9, #0xa000
0000a8c8 add      x9, x9, #0x680
0000a8cc stp      x8, x22, [x19]
0000a8d0 mov      w8, #0xa
0000a8d4 ldr      x10, [x23, #0x6f0]
0000a8d8 str      x9, [x19, #0x18]
0000a8dc str      w8, [x19, #0x10]
0000a8e0 str      x19, [x23, #0x6f0]
0000a8e4 str      x19, [x10, #8]
0000a8e8 b        #0xa8fc
0000a8ec adrp     x1, #0xa6000
0000a8f0 mov      w2, #0xa
0000a8f4 add      x1, x1, #0xce2
0000a8f8 bl       #0x40c20
0000a8fc mov      w0, #0x20
0000a900 bl       #0x15710
0000a904 adrp     x22, #0xd2000
0000a908 cbz      x0, #0xa950
0000a90c ldr      x8, [x21, #0x8e8]
0000a910 mov      w1, #0x20
0000a914 mov      w2, wzr
0000a918 mov      x19, x0
0000a91c ldr      x8, [x8, #0x168]
0000a920 blr      x8
0000a924 ldr      x8, [x20]
0000a928 adrp     x9, #0xa000
0000a92c add      x9, x9, #0x358
0000a930 stp      x8, x20, [x19]
0000a934 mov      w8, #1
0000a938 ldr      x10, [x22, #0x700]
0000a93c str      x9, [x19, #0x18]
0000a940 str      w8, [x19, #0x10]
0000a944 str      x19, [x22, #0x700]
0000a948 str      x19, [x10, #8]
0000a94c b        #0xa960
0000a950 adrp     x1, #0xa6000
0000a954 mov      w2, #1
0000a958 add      x1, x1, #0xce2
0000a95c bl       #0x40c20
0000a960 mov      w0, #0x20
0000a964 bl       #0x15710
0000a968 cbz      x0, #0xa9b0
0000a96c ldr      x8, [x21, #0x8e8]
0000a970 mov      w1, #0x20
0000a974 mov      w2, wzr
0000a978 mov      x19, x0
0000a97c ldr      x8, [x8, #0x168]
0000a980 blr      x8
0000a984 ldr      x8, [x20]
0000a988 adrp     x9, #0xa000
0000a98c add      x9, x9, #0x678
0000a990 stp      x8, x20, [x19]
0000a994 mov      w8, #1
0000a998 ldr      x10, [x22, #0x700]
0000a99c str      x9, [x19, #0x18]
0000a9a0 str      w8, [x19, #0x10]
0000a9a4 str      x19, [x22, #0x700]
0000a9a8 str      x19, [x10, #8]
0000a9ac b        #0xa9c0
0000a9b0 adrp     x1, #0xa6000
0000a9b4 mov      w2, #1
0000a9b8 add      x1, x1, #0xce2
0000a9bc bl       #0x40c20
0000a9c0 mov      w0, #0x20
0000a9c4 bl       #0x15710
0000a9c8 cbz      x0, #0xaa1c
0000a9cc ldr      x8, [x21, #0x8e8]
0000a9d0 mov      w1, #0x20
0000a9d4 mov      w2, wzr
0000a9d8 mov      x19, x0
0000a9dc ldr      x8, [x8, #0x168]
0000a9e0 blr      x8
0000a9e4 ldr      x8, [x20]
0000a9e8 adrp     x9, #0xa000
0000a9ec add      x9, x9, #0x598
0000a9f0 stp      x8, x20, [x19]
0000a9f4 mov      w8, #3
0000a9f8 ldr      x10, [x22, #0x700]
0000a9fc str      x9, [x19, #0x18]
0000aa00 str      w8, [x19, #0x10]
0000aa04 str      x19, [x22, #0x700]
0000aa08 str      x19, [x10, #8]
0000aa0c ldp      x20, x19, [sp, #0x20]
0000aa10 ldp      x22, x21, [sp, #0x10]
0000aa14 ldp      x30, x23, [sp], #0x30
0000aa18 ret      
0000aa1c ldp      x20, x19, [sp, #0x20]
0000aa20 adrp     x1, #0xa6000
0000aa24 mov      w2, #3
0000aa28 ldp      x22, x21, [sp, #0x10]
0000aa2c add      x1, x1, #0xce2
0000aa30 ldp      x30, x23, [sp], #0x30
0000aa34 b        #0x40c20
0000aa38 str      x30, [sp, #-0x10]!
0000aa3c adrp     x1, #0xa6000
0000aa40 mov      x2, x0
0000aa44 add      x1, x1, #0xd17
0000aa48 mov      w0, wzr
0000aa4c mov      w3, #0x100
0000aa50 bl       #0x1e8d8
0000aa54 cmp      x0, #0
0000aa58 cset     w0, ne
0000aa5c ldr      x30, [sp], #0x10
0000aa60 ret      
0000aa64 udf      #0
0000aa68 sub      sp, sp, #0x90
0000aa6c stp      x29, x30, [sp, #0x30]
0000aa70 stp      x28, x27, [sp, #0x40]
0000aa74 stp      x26, x25, [sp, #0x50]
0000aa78 stp      x24, x23, [sp, #0x60]
0000aa7c stp      x22, x21, [sp, #0x70]
0000aa80 stp      x20, x19, [sp, #0x80]
0000aa84 mov      x20, x0
0000aa88 bl       #0x6fd48
0000aa8c ldr      x19, [x0]
0000aa90 adrp     x9, #0xd0000
0000aa94 add      x1, x20, #1
0000aa98 sub      x8, x19, #0x150
0000aa9c sub      x27, x19, #0x108
0000aaa0 str      x8, [x0]

RANGE 0000a8f8-0000aaf8
0000a8f8 bl       #0x40c20
0000a8fc mov      w0, #0x20
0000a900 bl       #0x15710
0000a904 adrp     x22, #0xd2000
0000a908 cbz      x0, #0xa950
0000a90c ldr      x8, [x21, #0x8e8]
0000a910 mov      w1, #0x20
0000a914 mov      w2, wzr
0000a918 mov      x19, x0
0000a91c ldr      x8, [x8, #0x168]
0000a920 blr      x8
0000a924 ldr      x8, [x20]
0000a928 adrp     x9, #0xa000
0000a92c add      x9, x9, #0x358
0000a930 stp      x8, x20, [x19]
0000a934 mov      w8, #1
0000a938 ldr      x10, [x22, #0x700]
0000a93c str      x9, [x19, #0x18]
0000a940 str      w8, [x19, #0x10]
0000a944 str      x19, [x22, #0x700]
0000a948 str      x19, [x10, #8]
0000a94c b        #0xa960
0000a950 adrp     x1, #0xa6000
0000a954 mov      w2, #1
0000a958 add      x1, x1, #0xce2
0000a95c bl       #0x40c20
0000a960 mov      w0, #0x20
0000a964 bl       #0x15710
0000a968 cbz      x0, #0xa9b0
0000a96c ldr      x8, [x21, #0x8e8]
0000a970 mov      w1, #0x20
0000a974 mov      w2, wzr
0000a978 mov      x19, x0
0000a97c ldr      x8, [x8, #0x168]
0000a980 blr      x8
0000a984 ldr      x8, [x20]
0000a988 adrp     x9, #0xa000
0000a98c add      x9, x9, #0x678
0000a990 stp      x8, x20, [x19]
0000a994 mov      w8, #1
0000a998 ldr      x10, [x22, #0x700]
0000a99c str      x9, [x19, #0x18]
0000a9a0 str      w8, [x19, #0x10]
0000a9a4 str      x19, [x22, #0x700]
0000a9a8 str      x19, [x10, #8]
0000a9ac b        #0xa9c0
0000a9b0 adrp     x1, #0xa6000
0000a9b4 mov      w2, #1
0000a9b8 add      x1, x1, #0xce2
0000a9bc bl       #0x40c20
0000a9c0 mov      w0, #0x20
0000a9c4 bl       #0x15710
0000a9c8 cbz      x0, #0xaa1c
0000a9cc ldr      x8, [x21, #0x8e8]
0000a9d0 mov      w1, #0x20
0000a9d4 mov      w2, wzr
0000a9d8 mov      x19, x0
0000a9dc ldr      x8, [x8, #0x168]
0000a9e0 blr      x8
0000a9e4 ldr      x8, [x20]
0000a9e8 adrp     x9, #0xa000
0000a9ec add      x9, x9, #0x598
0000a9f0 stp      x8, x20, [x19]
0000a9f4 mov      w8, #3
0000a9f8 ldr      x10, [x22, #0x700]
0000a9fc str      x9, [x19, #0x18]
0000aa00 str      w8, [x19, #0x10]
0000aa04 str      x19, [x22, #0x700]
0000aa08 str      x19, [x10, #8]
0000aa0c ldp      x20, x19, [sp, #0x20]
0000aa10 ldp      x22, x21, [sp, #0x10]
0000aa14 ldp      x30, x23, [sp], #0x30
0000aa18 ret      
0000aa1c ldp      x20, x19, [sp, #0x20]
0000aa20 adrp     x1, #0xa6000
0000aa24 mov      w2, #3
0000aa28 ldp      x22, x21, [sp, #0x10]
0000aa2c add      x1, x1, #0xce2
0000aa30 ldp      x30, x23, [sp], #0x30
0000aa34 b        #0x40c20
0000aa38 str      x30, [sp, #-0x10]!
0000aa3c adrp     x1, #0xa6000
0000aa40 mov      x2, x0
0000aa44 add      x1, x1, #0xd17
0000aa48 mov      w0, wzr
0000aa4c mov      w3, #0x100
0000aa50 bl       #0x1e8d8
0000aa54 cmp      x0, #0
0000aa58 cset     w0, ne
0000aa5c ldr      x30, [sp], #0x10
0000aa60 ret      
0000aa64 udf      #0
0000aa68 sub      sp, sp, #0x90
0000aa6c stp      x29, x30, [sp, #0x30]
0000aa70 stp      x28, x27, [sp, #0x40]
0000aa74 stp      x26, x25, [sp, #0x50]
0000aa78 stp      x24, x23, [sp, #0x60]
0000aa7c stp      x22, x21, [sp, #0x70]
0000aa80 stp      x20, x19, [sp, #0x80]
0000aa84 mov      x20, x0
0000aa88 bl       #0x6fd48
0000aa8c ldr      x19, [x0]
0000aa90 adrp     x9, #0xd0000
0000aa94 add      x1, x20, #1
0000aa98 sub      x8, x19, #0x150
0000aa9c sub      x27, x19, #0x108
0000aaa0 str      x8, [x0]
0000aaa4 ldr      x8, [x9, #0x8a0]
0000aaa8 mov      x9, x19
0000aaac stp      x8, x0, [sp, #0x18]
0000aab0 mov      x0, x27
0000aab4 str      x8, [x9, #-8]!
0000aab8 str      x9, [sp, #0x10]
0000aabc bl       #0x1bb04
0000aac0 mov      w1, #0x3a
0000aac4 mov      x0, x27
0000aac8 bl       #0x1a254
0000aacc cbz      x0, #0xaae4
0000aad0 mov      w1, #0x3a
0000aad4 mov      x0, x27
0000aad8 bl       #0x1a254
0000aadc sub      w20, w0, w27
0000aae0 b        #0xaaf0
0000aae4 mov      x0, x27
0000aae8 bl       #0x1b710
0000aaec mov      x20, x0
0000aaf0 adrp     x1, #0xa6000
0000aaf4 mov      w0, #2

RANGE 0000a904-0000ab04
0000a904 adrp     x22, #0xd2000
0000a908 cbz      x0, #0xa950
0000a90c ldr      x8, [x21, #0x8e8]
0000a910 mov      w1, #0x20
0000a914 mov      w2, wzr
0000a918 mov      x19, x0
0000a91c ldr      x8, [x8, #0x168]
0000a920 blr      x8
0000a924 ldr      x8, [x20]
0000a928 adrp     x9, #0xa000
0000a92c add      x9, x9, #0x358
0000a930 stp      x8, x20, [x19]
0000a934 mov      w8, #1
0000a938 ldr      x10, [x22, #0x700]
0000a93c str      x9, [x19, #0x18]
0000a940 str      w8, [x19, #0x10]
0000a944 str      x19, [x22, #0x700]
0000a948 str      x19, [x10, #8]
0000a94c b        #0xa960
0000a950 adrp     x1, #0xa6000
0000a954 mov      w2, #1
0000a958 add      x1, x1, #0xce2
0000a95c bl       #0x40c20
0000a960 mov      w0, #0x20
0000a964 bl       #0x15710
0000a968 cbz      x0, #0xa9b0
0000a96c ldr      x8, [x21, #0x8e8]
0000a970 mov      w1, #0x20
0000a974 mov      w2, wzr
0000a978 mov      x19, x0
0000a97c ldr      x8, [x8, #0x168]
0000a980 blr      x8
0000a984 ldr      x8, [x20]
0000a988 adrp     x9, #0xa000
0000a98c add      x9, x9, #0x678
0000a990 stp      x8, x20, [x19]
0000a994 mov      w8, #1
0000a998 ldr      x10, [x22, #0x700]
0000a99c str      x9, [x19, #0x18]
0000a9a0 str      w8, [x19, #0x10]
0000a9a4 str      x19, [x22, #0x700]
0000a9a8 str      x19, [x10, #8]
0000a9ac b        #0xa9c0
0000a9b0 adrp     x1, #0xa6000
0000a9b4 mov      w2, #1
0000a9b8 add      x1, x1, #0xce2
0000a9bc bl       #0x40c20
0000a9c0 mov      w0, #0x20
0000a9c4 bl       #0x15710
0000a9c8 cbz      x0, #0xaa1c
0000a9cc ldr      x8, [x21, #0x8e8]
0000a9d0 mov      w1, #0x20
0000a9d4 mov      w2, wzr
0000a9d8 mov      x19, x0
0000a9dc ldr      x8, [x8, #0x168]
0000a9e0 blr      x8
0000a9e4 ldr      x8, [x20]
0000a9e8 adrp     x9, #0xa000
0000a9ec add      x9, x9, #0x598
0000a9f0 stp      x8, x20, [x19]
0000a9f4 mov      w8, #3
0000a9f8 ldr      x10, [x22, #0x700]
0000a9fc str      x9, [x19, #0x18]
0000aa00 str      w8, [x19, #0x10]
0000aa04 str      x19, [x22, #0x700]
0000aa08 str      x19, [x10, #8]
0000aa0c ldp      x20, x19, [sp, #0x20]
0000aa10 ldp      x22, x21, [sp, #0x10]
0000aa14 ldp      x30, x23, [sp], #0x30
0000aa18 ret      
0000aa1c ldp      x20, x19, [sp, #0x20]
0000aa20 adrp     x1, #0xa6000
0000aa24 mov      w2, #3
0000aa28 ldp      x22, x21, [sp, #0x10]
0000aa2c add      x1, x1, #0xce2
0000aa30 ldp      x30, x23, [sp], #0x30
0000aa34 b        #0x40c20
0000aa38 str      x30, [sp, #-0x10]!
0000aa3c adrp     x1, #0xa6000
0000aa40 mov      x2, x0
0000aa44 add      x1, x1, #0xd17
0000aa48 mov      w0, wzr
0000aa4c mov      w3, #0x100
0000aa50 bl       #0x1e8d8
0000aa54 cmp      x0, #0
0000aa58 cset     w0, ne
0000aa5c ldr      x30, [sp], #0x10
0000aa60 ret      
0000aa64 udf      #0
0000aa68 sub      sp, sp, #0x90
0000aa6c stp      x29, x30, [sp, #0x30]
0000aa70 stp      x28, x27, [sp, #0x40]
0000aa74 stp      x26, x25, [sp, #0x50]
0000aa78 stp      x24, x23, [sp, #0x60]
0000aa7c stp      x22, x21, [sp, #0x70]
0000aa80 stp      x20, x19, [sp, #0x80]
0000aa84 mov      x20, x0
0000aa88 bl       #0x6fd48
0000aa8c ldr      x19, [x0]
0000aa90 adrp     x9, #0xd0000
0000aa94 add      x1, x20, #1
0000aa98 sub      x8, x19, #0x150
0000aa9c sub      x27, x19, #0x108
0000aaa0 str      x8, [x0]
0000aaa4 ldr      x8, [x9, #0x8a0]
0000aaa8 mov      x9, x19
0000aaac stp      x8, x0, [sp, #0x18]
0000aab0 mov      x0, x27
0000aab4 str      x8, [x9, #-8]!
0000aab8 str      x9, [sp, #0x10]
0000aabc bl       #0x1bb04
0000aac0 mov      w1, #0x3a
0000aac4 mov      x0, x27
0000aac8 bl       #0x1a254
0000aacc cbz      x0, #0xaae4
0000aad0 mov      w1, #0x3a
0000aad4 mov      x0, x27
0000aad8 bl       #0x1a254
0000aadc sub      w20, w0, w27
0000aae0 b        #0xaaf0
0000aae4 mov      x0, x27
0000aae8 bl       #0x1b710
0000aaec mov      x20, x0
0000aaf0 adrp     x1, #0xa6000
0000aaf4 mov      w0, #2
0000aaf8 add      x1, x1, #0xd28
0000aafc mov      x2, x27
0000ab00 mov      w3, w20

RANGE 0001389c-00013a9c
0001389c cbz      x0, #0x13908
000138a0 ldrb     w8, [x0]
000138a4 mov      x22, x0
000138a8 cbz      w8, #0x13908
000138ac bl       #0x556a0
000138b0 cbz      x0, #0x1394c
000138b4 mov      x20, x0
000138b8 bl       #0x13d98
000138bc mov      x0, x20
000138c0 mov      x1, x22
000138c4 mov      w2, #0x1f
000138c8 bl       #0x1bb48
000138cc mov      x0, x21
000138d0 bl       #0x558d8
000138d4 mov      x0, x19
000138d8 mov      x1, x20
000138dc bl       #0x842c8
000138e0 mov      x1, x0
000138e4 mov      x0, x20
000138e8 bl       #0x55a00
000138ec cbz      w0, #0x13960
000138f0 adrp     x0, #0xaa000
000138f4 mov      x1, x20
000138f8 add      x0, x0, #0x549
000138fc bl       #0x43c8
00013900 mov      x0, x20
00013904 b        #0x13918
00013908 adrp     x0, #0xaa000
0001390c add      x0, x0, #0x56d
00013910 bl       #0x43c8
00013914 mov      x0, x21
00013918 bl       #0x558d8
0001391c mov      w21, #3
00013920 mov      x0, x19
00013924 bl       #0x841c0
00013928 mov      w0, w21
0001392c ldp      x20, x19, [sp, #0x70]
00013930 ldp      x22, x21, [sp, #0x60]
00013934 ldp      x24, x23, [sp, #0x50]
00013938 ldp      x26, x25, [sp, #0x40]
0001393c ldp      x28, x27, [sp, #0x30]
00013940 ldp      x29, x30, [sp, #0x20]
00013944 add      sp, sp, #0x80
00013948 ret      
0001394c adrp     x0, #0xaa000
00013950 adrp     x1, #0xaa000
00013954 add      x0, x0, #0x51e
00013958 add      x1, x1, #0x532
0001395c b        #0x1381c
00013960 adrp     x1, #0xaa000
00013964 mov      w0, #1
00013968 add      x1, x1, #0x582
0001396c mov      x2, x20
00013970 bl       #0x40c20
00013974 ldr      x27, [x20, #0x28]
00013978 add      x22, x20, #0x20
0001397c cmp      x22, x27
00013980 b.eq     #0x13d24
00013984 adrp     x24, #0xaa000
00013988 adrp     x25, #0xaa000
0001398c adrp     x29, #0xd2000
00013990 mov      w23, wzr
00013994 add      x24, x24, #0x5ce
00013998 add      x25, x25, #0x613
0001399c add      x29, x29, #0x700
000139a0 str      x22, [sp]
000139a4 b        #0x139b4
000139a8 ldr      x27, [x27, #8]
000139ac cmp      x22, x27
000139b0 b.eq     #0x13d18
000139b4 mov      x21, x27
000139b8 mov      x1, x24
000139bc ldr      x0, [x21, #-0x10]!
000139c0 bl       #0x1b828
000139c4 cbnz     w0, #0x139a8
000139c8 adrp     x24, #0xaa000
000139cc mov      x0, x21
000139d0 add      x24, x24, #0x5e9
000139d4 mov      x1, x24
000139d8 bl       #0x562e8
000139dc cbz      x0, #0x13d40
000139e0 ldrb     w8, [x0]
000139e4 mov      x28, x0
000139e8 cbz      w8, #0x13d40
000139ec bl       #0x556a0
000139f0 cbz      x0, #0x13d4c
000139f4 mov      x1, x28
000139f8 mov      w2, #0x1f
000139fc mov      x21, x0
00013a00 bl       #0x1bb48
00013a04 mov      x0, x21
00013a08 bl       #0x13d98
00013a0c mov      x0, x19
00013a10 mov      x1, x28
00013a14 bl       #0x842c8
00013a18 mov      x1, x0
00013a1c mov      x0, x21
00013a20 bl       #0x55a00
00013a24 cbnz     w0, #0x13d58
00013a28 mov      x0, x25
00013a2c mov      x1, x28
00013a30 str      w23, [sp, #0x14]
00013a34 bl       #0x43c8
00013a38 ldr      x22, [x21, #0x28]
00013a3c add      x26, x21, #0x20
00013a40 str      x21, [sp, #0x18]
00013a44 cmp      x26, x22
00013a48 b.eq     #0x13b88
00013a4c mov      w25, #1
00013a50 str      x28, [sp, #8]
00013a54 b        #0x13a78
00013a58 ldr      x1, [x21]
00013a5c adrp     x0, #0xaa000
00013a60 add      x0, x0, #0x695
00013a64 bl       #0x43c8
00013a68 mov      w25, wzr
00013a6c ldr      x22, [x22, #8]
00013a70 cmp      x26, x22
00013a74 b.eq     #0x13b7c
00013a78 mov      x21, x22
00013a7c ldr      x0, [x21, #-0x10]!
00013a80 bl       #0x6b50
00013a84 adrp     x1, #0xa7000
00013a88 mov      x23, x0
00013a8c mov      x0, x21
00013a90 add      x1, x1, #0x565
00013a94 bl       #0x562e8
00013a98 mov      x28, x0

RANGE 00020b60-00020d60
00020b60 add      sp, sp, #0x20
00020b64 ret      
00020b68 bl       #0x53a68
00020b6c udf      #0
00020b70 sub      sp, sp, #0x30
00020b74 stp      x30, x19, [sp, #0x20]
00020b78 mov      x19, x8
00020b7c adrp     x8, #0xd0000
00020b80 mov      w9, #0x7836
00020b84 mov      w10, #1
00020b88 adrp     x1, #0xad000
00020b8c movk     w9, #0x1290, lsl #16
00020b90 ldr      x8, [x8, #0x8a0]
00020b94 movk     w10, #0x100, lsl #16
00020b98 mov      w11, #0x100
00020b9c add      x1, x1, #0xac0
00020ba0 mov      w0, wzr
00020ba4 str      x8, [sp, #0x18]
00020ba8 stp      w9, w10, [x19]
00020bac strh     w11, [x19, #8]
00020bb0 str      wzr, [x19, #0xc]
00020bb4 str      w9, [x19, #0x14]
00020bb8 strb     wzr, [x19, #0x10]
00020bbc bl       #0x40c20
00020bc0 mov      x0, sp
00020bc4 mov      x1, x19
00020bc8 mov      w2, #0x18
00020bcc bl       #0x1c190
00020bd0 bl       #0x6d5d8
00020bd4 cbz      x0, #0x20bfc
00020bd8 add      x0, x0, #0x94
00020bdc mov      x1, sp
00020be0 mov      w2, #0x18
00020be4 bl       #0x1c190
00020be8 bl       #0x6d578
00020bec cbz      x0, #0x20c0c
00020bf0 adrp     x1, #0xad000
00020bf4 add      x1, x1, #0xa7f
00020bf8 b        #0x20c04
00020bfc adrp     x1, #0xad000
00020c00 add      x1, x1, #0xaa4
00020c04 mov      w0, wzr
00020c08 bl       #0x40c20
00020c0c bl       #0x6d5d8
00020c10 cbz      x0, #0x20c3c
00020c14 ldrb     w8, [x0, #0x90]
00020c18 cbnz     w8, #0x20c3c
00020c1c mov      w8, #1
00020c20 strb     w8, [x0, #0x90]
00020c24 bl       #0x6d578
00020c28 cbz      x0, #0x20c3c
00020c2c adrp     x1, #0xad000
00020c30 mov      w0, wzr
00020c34 add      x1, x1, #0xa7f
00020c38 bl       #0x40c20
00020c3c adrp     x9, #0xd0000
00020c40 ldr      x8, [sp, #0x18]
00020c44 ldr      x9, [x9, #0x8a0]
00020c48 cmp      x9, x8
00020c4c b.ne     #0x20c64
00020c50 ldp      x30, x19, [sp, #0x20]
00020c54 mov      x0, xzr
00020c58 mov      w1, wzr
00020c5c add      sp, sp, #0x30
00020c60 b        #0x2a818
00020c64 bl       #0x53a68
00020c68 sub      sp, sp, #0x60
00020c6c stp      x30, x27, [sp, #0x10]
00020c70 stp      x26, x25, [sp, #0x20]
00020c74 stp      x24, x23, [sp, #0x30]
00020c78 stp      x22, x21, [sp, #0x40]
00020c7c stp      x20, x19, [sp, #0x50]
00020c80 adrp     x9, #0xd0000
00020c84 mov      x19, x8
00020c88 ldr      x9, [x9, #0x8a0]
00020c8c str      x9, [sp, #8]
00020c90 bl       #0x6d5d8
00020c94 cbz      x0, #0x20cfc
00020c98 mov      x1, x0
00020c9c mov      w20, #0x7836
00020ca0 movk     w20, #0x1290, lsl #16
00020ca4 ldr      w8, [x1, #0x94]!
00020ca8 cmp      w8, w20
00020cac b.ne     #0x20d30
00020cb0 ldr      w8, [x0, #0xa8]
00020cb4 cmp      w8, w20
00020cb8 b.ne     #0x20d60
00020cbc ldrb     w8, [x0, #0x90]
00020cc0 adrp     x9, #0xd0000
00020cc4 ldr      x9, [x9, #0x8a0]
00020cc8 strb     w8, [x0, #0x9d]
00020ccc ldr      x8, [sp, #8]
00020cd0 cmp      x9, x8
00020cd4 b.ne     #0x20ec0
00020cd8 mov      x0, x19
00020cdc mov      w2, #0x18
00020ce0 ldp      x20, x19, [sp, #0x50]
00020ce4 ldp      x22, x21, [sp, #0x40]
00020ce8 ldp      x24, x23, [sp, #0x30]
00020cec ldp      x26, x25, [sp, #0x20]
00020cf0 ldp      x30, x27, [sp, #0x10]
00020cf4 add      sp, sp, #0x60
00020cf8 b        #0x1c190
00020cfc adrp     x9, #0xd0000
00020d00 ldr      x8, [sp, #8]
00020d04 ldr      x9, [x9, #0x8a0]
00020d08 cmp      x9, x8
00020d0c b.ne     #0x20ec0
00020d10 mov      x8, x19
00020d14 ldp      x20, x19, [sp, #0x50]
00020d18 ldp      x22, x21, [sp, #0x40]
00020d1c ldp      x24, x23, [sp, #0x30]
00020d20 ldp      x26, x25, [sp, #0x20]
00020d24 ldp      x30, x27, [sp, #0x10]
00020d28 add      sp, sp, #0x60
00020d2c b        #0x20b70
00020d30 mov      w9, #0x7834
00020d34 movk     w9, #0x1290, lsl #16
00020d38 cmp      w8, w9
00020d3c b.eq     #0x20d6c
00020d40 mov      w9, #0x7835
00020d44 movk     w9, #0x1290, lsl #16
00020d48 cmp      w8, w9
00020d4c b.ne     #0x20d60
00020d50 ldr      w21, [x0, #0xa0]
00020d54 adrp     x1, #0xae000
00020d58 add      x1, x1, #0x20e
00020d5c b        #0x20d78

RANGE 00020d4c-00020f4c
00020d4c b.ne     #0x20d60
00020d50 ldr      w21, [x0, #0xa0]
00020d54 adrp     x1, #0xae000
00020d58 add      x1, x1, #0x20e
00020d5c b        #0x20d78
00020d60 mov      x8, x19
00020d64 bl       #0x20b70
00020d68 b        #0x20e90
00020d6c adrp     x1, #0xae000
00020d70 mov      w21, wzr
00020d74 add      x1, x1, #0x1ed
00020d78 ldrb     w22, [x0, #0x98]
00020d7c ldrb     w23, [x0, #0x99]
00020d80 ldrb     w24, [x0, #0x9a]
00020d84 ldrb     w25, [x0, #0x9b]
00020d88 ldrb     w26, [x0, #0x9c]
00020d8c ldrb     w27, [x0, #0x9d]
00020d90 mov      w0, wzr
00020d94 bl       #0x40c20
00020d98 ldrh     w8, [sp, #4]
00020d9c ldrb     w9, [sp, #6]
00020da0 strh     w8, [sp]
00020da4 strb     w9, [sp, #2]
00020da8 bl       #0x6d5d8
00020dac cbz      x0, #0x20e04
00020db0 ldrb     w8, [sp]
00020db4 str      w20, [x0, #0x94]
00020db8 strb     w22, [x0, #0x98]
00020dbc strb     w23, [x0, #0x99]
00020dc0 strb     w8, [x0, #0xa5]
00020dc4 ldrb     w8, [sp, #1]
00020dc8 strb     w24, [x0, #0x9a]
00020dcc strb     w25, [x0, #0x9b]
00020dd0 strb     w26, [x0, #0x9c]
00020dd4 strb     w8, [x0, #0xa6]
00020dd8 ldrb     w8, [sp, #2]
00020ddc strb     w27, [x0, #0x9d]
00020de0 str      w21, [x0, #0xa0]
00020de4 strb     wzr, [x0, #0xa4]
00020de8 strb     w8, [x0, #0xa7]
00020dec str      w20, [x0, #0xa8]
00020df0 bl       #0x6d578
00020df4 cbz      x0, #0x20e14
00020df8 adrp     x1, #0xad000
00020dfc add      x1, x1, #0xa7f
00020e00 b        #0x20e0c
00020e04 adrp     x1, #0xad000
00020e08 add      x1, x1, #0xaa4
00020e0c mov      w0, wzr
00020e10 bl       #0x40c20
00020e14 bl       #0x6d5d8
00020e18 cbz      x0, #0x20e44
00020e1c ldrb     w8, [x0, #0x90]
00020e20 cbnz     w8, #0x20e44
00020e24 mov      w8, #1
00020e28 strb     w8, [x0, #0x90]
00020e2c bl       #0x6d578
00020e30 cbz      x0, #0x20e44
00020e34 adrp     x1, #0xad000
00020e38 mov      w0, wzr
00020e3c add      x1, x1, #0xa7f
00020e40 bl       #0x40c20
00020e44 mov      x0, xzr
00020e48 mov      w1, wzr
00020e4c bl       #0x2a818
00020e50 ldrb     w8, [sp, #4]
00020e54 ldrb     w9, [sp, #5]
00020e58 ldrb     w10, [sp, #6]
00020e5c str      w20, [x19]
00020e60 strb     w22, [x19, #4]
00020e64 strb     w23, [x19, #5]
00020e68 strb     w24, [x19, #6]
00020e6c strb     w25, [x19, #7]
00020e70 strb     w26, [x19, #8]
00020e74 strb     w27, [x19, #9]
00020e78 str      w21, [x19, #0xc]
00020e7c strb     wzr, [x19, #0x10]
00020e80 strb     w8, [x19, #0x11]
00020e84 strb     w9, [x19, #0x12]
00020e88 strb     w10, [x19, #0x13]
00020e8c str      w20, [x19, #0x14]
00020e90 adrp     x9, #0xd0000
00020e94 ldr      x8, [sp, #8]
00020e98 ldr      x9, [x9, #0x8a0]
00020e9c cmp      x9, x8
00020ea0 b.ne     #0x20ec0
00020ea4 ldp      x20, x19, [sp, #0x50]
00020ea8 ldp      x22, x21, [sp, #0x40]
00020eac ldp      x24, x23, [sp, #0x30]
00020eb0 ldp      x26, x25, [sp, #0x20]
00020eb4 ldp      x30, x27, [sp, #0x10]
00020eb8 add      sp, sp, #0x60
00020ebc ret      
00020ec0 bl       #0x53a68
00020ec4 udf      #0
00020ec8 sub      sp, sp, #0x20
00020ecc stp      x30, x19, [sp, #0x10]
00020ed0 adrp     x8, #0xd0000
00020ed4 adrp     x19, #0xd0000
00020ed8 tst      w0, #0xff
00020edc ldr      x8, [x8, #0x8a0]
00020ee0 str      x8, [sp, #8]
00020ee4 b.ne     #0x20ef4
00020ee8 ldr      w0, [x19, #0x364]
00020eec cmn      w0, #1
00020ef0 b.ne     #0x20f14
00020ef4 bl       #0x2ad60
00020ef8 adrp     x1, #0xad000
00020efc and      w2, w0, #0xffff
00020f00 add      x1, x1, #0xadb
00020f04 mov      w0, #1
00020f08 str      w2, [x19, #0x364]
00020f0c bl       #0x40c20
00020f10 ldr      w0, [x19, #0x364]
00020f14 adrp     x9, #0xd0000
00020f18 ldr      x8, [sp, #8]
00020f1c ldr      x9, [x9, #0x8a0]
00020f20 cmp      x9, x8
00020f24 b.ne     #0x20f34
00020f28 ldp      x30, x19, [sp, #0x10]
00020f2c add      sp, sp, #0x20
00020f30 ret      
00020f34 bl       #0x53a68
00020f38 sub      sp, sp, #0x20
00020f3c stp      x30, x19, [sp, #0x10]
00020f40 adrp     x8, #0xd0000
00020f44 adrp     x19, #0xd0000
00020f48 ldr      x8, [x8, #0x8a0]