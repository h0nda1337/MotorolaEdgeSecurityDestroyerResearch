
RANGE 00011398-00011598
00011398 bl       #0x43c8
0001139c adrp     x0, #0xa8000
000113a0 add      x0, x0, #0x4c7
000113a4 bl       #0x43c8
000113a8 mov      w0, #1
000113ac ldr      x8, [x27]
000113b0 cmp      x29, x8
000113b4 b.ne     #0x113dc
000113b8 str      x25, [x19]
000113bc ldp      x20, x19, [sp, #0x60]
000113c0 ldp      x22, x21, [sp, #0x50]
000113c4 ldp      x24, x23, [sp, #0x40]
000113c8 ldp      x26, x25, [sp, #0x30]
000113cc ldp      x28, x27, [sp, #0x20]
000113d0 ldp      x29, x30, [sp, #0x10]
000113d4 add      sp, sp, #0x70
000113d8 ret      
000113dc bl       #0x53a68
000113e0 stp      x30, x21, [sp, #-0x20]!
000113e4 stp      x20, x19, [sp, #0x10]
000113e8 cmp      w0, #1
000113ec b.eq     #0x11414
000113f0 cbnz     w0, #0x11410
000113f4 mov      x20, x2
000113f8 mov      x19, x1
000113fc bl       #0x21c80
00011400 tst      w0, #0xff
00011404 b.eq     #0x11420
00011408 mov      w0, #1
0001140c b        #0x11414
00011410 mov      w0, wzr
00011414 ldp      x20, x19, [sp, #0x10]
00011418 ldp      x30, x21, [sp], #0x20
0001141c ret      
00011420 adrp     x21, #0xd2000
00011424 mov      x1, x19
00011428 add      x21, x21, #0x83e
0001142c mov      w2, #0x20
00011430 mov      x0, x21
00011434 bl       #0x1bd5c
00011438 mov      w1, #0x3a
0001143c mov      x0, x21
00011440 bl       #0x1a480
00011444 cbz      x0, #0x1144c
00011448 strb     wzr, [x0]
0001144c adrp     x0, #0xa4000
00011450 adrp     x1, #0xd2000
00011454 add      x0, x0, #0x477
00011458 add      x1, x1, #0x83e
0001145c bl       #0x1be9c
00011460 cbz      w0, #0x115c0
00011464 adrp     x20, #0xd2000
00011468 mov      x1, x19
0001146c add      x20, x20, #0x83e
00011470 mov      w2, #0x20
00011474 mov      x0, x20
00011478 bl       #0x1bd5c
0001147c mov      w1, #0x3a
00011480 mov      x0, x20
00011484 bl       #0x1a480
00011488 cbz      x0, #0x11490
0001148c strb     wzr, [x0]
00011490 adrp     x0, #0xa8000
00011494 adrp     x1, #0xd2000
00011498 add      x0, x0, #0x4da
0001149c add      x1, x1, #0x83e
000114a0 bl       #0x1be9c
000114a4 cbz      w0, #0x11408
000114a8 adrp     x20, #0xd2000
000114ac mov      x1, x19
000114b0 add      x20, x20, #0x83e
000114b4 mov      w2, #0x20
000114b8 mov      x0, x20
000114bc bl       #0x1bd5c
000114c0 mov      w1, #0x3a
000114c4 mov      x0, x20
000114c8 bl       #0x1a480
000114cc cbz      x0, #0x114d4
000114d0 strb     wzr, [x0]
000114d4 adrp     x0, #0xc1000
000114d8 adrp     x1, #0xd2000
000114dc add      x0, x0, #0xea5
000114e0 add      x1, x1, #0x83e
000114e4 bl       #0x1be9c
000114e8 cbz      w0, #0x11408
000114ec adrp     x20, #0xd2000
000114f0 mov      x1, x19
000114f4 add      x20, x20, #0x83e
000114f8 mov      w2, #0x20
000114fc mov      x0, x20
00011500 bl       #0x1bd5c
00011504 mov      w1, #0x3a
00011508 mov      x0, x20
0001150c bl       #0x1a480
00011510 cbz      x0, #0x11518
00011514 strb     wzr, [x0]
00011518 adrp     x0, #0xa6000
0001151c adrp     x1, #0xd2000
00011520 add      x0, x0, #0xecd
00011524 add      x1, x1, #0x83e
00011528 bl       #0x1be9c
0001152c cbz      w0, #0x11408
00011530 adrp     x20, #0xd2000
00011534 mov      x1, x19
00011538 add      x20, x20, #0x83e
0001153c mov      w2, #0x20
00011540 mov      x0, x20
00011544 bl       #0x1bd5c
00011548 mov      w1, #0x3a
0001154c mov      x0, x20
00011550 bl       #0x1a480
00011554 cbz      x0, #0x1155c
00011558 strb     wzr, [x0]
0001155c adrp     x0, #0xa8000
00011560 adrp     x1, #0xd2000
00011564 add      x0, x0, #0x4e1
00011568 add      x1, x1, #0x83e
0001156c bl       #0x1be9c
00011570 cbz      w0, #0x11408
00011574 adrp     x20, #0xd2000
00011578 mov      x1, x19
0001157c add      x20, x20, #0x83e
00011580 mov      w2, #0x20
00011584 mov      x0, x20
00011588 bl       #0x1bd5c
0001158c mov      w1, #0x3a
00011590 mov      x0, x20
00011594 bl       #0x1a480

RANGE 0006a788-0006a988
0006a788 mov      w20, #0x19
0006a78c mov      x0, x27
0006a790 mov      w1, wzr
0006a794 mov      x2, x20
0006a798 bl       #0x1ca9c
0006a79c mov      w0, w19
0006a7a0 bl       #0x7ee40
0006a7a4 adrp     x2, #0xc5000
0006a7a8 mov      x3, x0
0006a7ac add      x2, x2, #0x6d6
0006a7b0 mov      x0, x27
0006a7b4 mov      x1, x20
0006a7b8 bl       #0x1a704
0006a7bc adrp     x0, #0xbf000
0006a7c0 add      x0, x0, #0xc3c
0006a7c4 bl       #0x1b710
0006a7c8 mov      x19, x0
0006a7cc mov      x0, x27
0006a7d0 str      x27, [sp, #0x48]
0006a7d4 bl       #0x1b710
0006a7d8 sub      x27, x26, #0x274
0006a7dc mov      x20, x0
0006a7e0 strh     wzr, [x27]
0006a7e4 bl       #0x81450
0006a7e8 tbnz     w0, #0, #0x6a7f8
0006a7ec bl       #0x21880
0006a7f0 tst      w0, #0xff
0006a7f4 b.eq     #0x6ad88
0006a7f8 mov      w8, #0x31
0006a7fc adrp     x0, #0xbf000
0006a800 str      x22, [sp, #0x58]
0006a804 add      x0, x0, #0xc55
0006a808 strb     w8, [x27]
0006a80c bl       #0x1b710
0006a810 add      w8, w21, w19
0006a814 add      w8, w8, w20
0006a818 add      w20, w8, w0
0006a81c bl       #0x81450
0006a820 tbz      w0, #0, #0x6a860
0006a824 bl       #0x973c8
0006a828 cbz      x0, #0x6a860
0006a82c mov      x19, x0
0006a830 bl       #0x16834
0006a834 tst      w0, #0xff
0006a838 b.eq     #0x6a860
0006a83c mov      w0, #-0xffffffff80000000
0006a840 bl       #0x1685c
0006a844 tst      w0, #0xff
0006a848 b.eq     #0x6a860
0006a84c adrp     x1, #0xbf000
0006a850 mov      w0, #-0xffffffff80000000
0006a854 add      x1, x1, #0x9ba
0006a858 mov      x2, x19
0006a85c bl       #0x16188
0006a860 sub      x21, x26, #0x150
0006a864 mov      w19, #0x21
0006a868 mov      x0, x21
0006a86c mov      w1, wzr
0006a870 mov      x2, x19
0006a874 mov      x22, x23
0006a878 add      w20, w20, #1
0006a87c bl       #0x1ca9c
0006a880 adrp     x1, #0xa8000
0006a884 mov      w0, wzr
0006a888 add      x1, x1, #0x4da
0006a88c mov      x2, x21
0006a890 mov      x3, x19
0006a894 bl       #0x1e8d8
0006a898 mov      x23, x25
0006a89c cbz      x0, #0x6a8bc
0006a8a0 adrp     x0, #0xbf000
0006a8a4 add      x0, x0, #0xc72
0006a8a8 bl       #0x1b710
0006a8ac add      w19, w20, w0
0006a8b0 mov      x0, x21
0006a8b4 bl       #0x1b710
0006a8b8 add      w20, w19, w0
0006a8bc sub      x25, x26, #0x12c
0006a8c0 mov      w19, #0x24
0006a8c4 mov      x0, x25
0006a8c8 mov      w1, wzr
0006a8cc mov      x2, x19
0006a8d0 bl       #0x1ca9c
0006a8d4 adrp     x1, #0xbf000
0006a8d8 mov      w0, wzr
0006a8dc add      x1, x1, #0x9db
0006a8e0 mov      x2, x25
0006a8e4 mov      x3, x19
0006a8e8 bl       #0x1e8d8
0006a8ec stp      x25, x21, [sp, #0x30]
0006a8f0 cbz      x0, #0x6a910
0006a8f4 mov      x0, x25
0006a8f8 bl       #0x1b710
0006a8fc add      w19, w20, w0
0006a900 adrp     x0, #0xbf000
0006a904 add      x0, x0, #0xc87
0006a908 bl       #0x1b710
0006a90c add      w20, w19, w0
0006a910 sub      x21, x26, #0x1dc
0006a914 adrp     x1, #0xbf000
0006a918 mov      w3, #0x12
0006a91c add      x1, x1, #0x9e4
0006a920 mov      w0, wzr
0006a924 mov      x2, x21
0006a928 strh     wzr, [x21, #0x10]
0006a92c stp      wzr, wzr, [x21, #8]
0006a930 stp      wzr, wzr, [x21]
0006a934 bl       #0x1e8d8
0006a938 mov      x25, x23
0006a93c str      x24, [sp, #0x78]
0006a940 str      x22, [sp, #0x18]
0006a944 cbz      x0, #0x6a964
0006a948 mov      x0, x21
0006a94c bl       #0x1b710
0006a950 add      w19, w20, w0
0006a954 adrp     x0, #0xbf000
0006a958 add      x0, x0, #0xc95
0006a95c bl       #0x1b710
0006a960 add      w20, w19, w0
0006a964 str      x27, [sp, #0x40]
0006a968 bl       #0x3d5b0
0006a96c bl       #0x1b710
0006a970 add      w19, w20, w0
0006a974 adrp     x0, #0xbf000
0006a978 add      x0, x0, #0xcad
0006a97c bl       #0x1b710
0006a980 sub      x22, x26, #0x174
0006a984 add      w20, w19, w0

RANGE 000387d8-00038bf8
000387d8 sub      sp, sp, #0x20
000387dc stp      x30, x19, [sp, #0x10]
000387e0 adrp     x8, #0xd0000
000387e4 mov      x19, x0
000387e8 ldr      x8, [x8, #0x8a0]
000387ec str      x8, [sp, #8]
000387f0 cbz      x0, #0x38840
000387f4 cbz      x1, #0x38840
000387f8 ldr      w8, [x1]
000387fc cmp      w8, #0x10
00038800 b.lo     #0x3885c
00038804 mov      x0, x19
00038808 mov      w1, wzr
0003880c mov      w2, #0x10
00038810 bl       #0x1ca9c
00038814 bl       #0x2a0a8
00038818 mov      w8, w0
0003881c mov      w0, #0xf
00038820 lsr      w9, w8, #8
00038824 lsr      w10, w8, #0x10
00038828 strb     w8, [x19, #3]
0003882c lsr      w8, w8, #0x18
00038830 strb     w9, [x19, #2]
00038834 strb     w10, [x19, #1]
00038838 strb     w8, [x19]
0003883c b        #0x38860
00038840 mov      w0, #0xf0
00038844 cbnz     x19, #0x38860
00038848 cbz      x1, #0x38860
0003884c mov      w8, #0x10
00038850 mov      w0, #0xf
00038854 str      w8, [x1]
00038858 b        #0x38860
0003885c mov      w0, #0x33
00038860 adrp     x9, #0xd0000
00038864 ldr      x8, [sp, #8]
00038868 ldr      x9, [x9, #0x8a0]
0003886c cmp      x9, x8
00038870 b.ne     #0x38880
00038874 ldp      x30, x19, [sp, #0x10]
00038878 add      sp, sp, #0x20
0003887c ret      
00038880 bl       #0x53a68
00038884 udf      #0
00038888 sub      sp, sp, #0x20
0003888c stp      x30, x19, [sp, #0x10]
00038890 adrp     x9, #0xd0000
00038894 mov      x8, x0
00038898 mov      x19, x1
0003889c ldr      x9, [x9, #0x8a0]
000388a0 str      x9, [sp, #8]
000388a4 cbz      x0, #0x388c8
000388a8 cbz      x19, #0x388c8
000388ac ldr      w2, [x19]
000388b0 cmp      w2, #0x10
000388b4 b.lo     #0x388e4
000388b8 mov      x0, x8
000388bc mov      w1, wzr
000388c0 bl       #0x1ca9c
000388c4 b        #0x388d4
000388c8 mov      w0, #0xf0
000388cc cbnz     x8, #0x388e8
000388d0 cbz      x19, #0x388e8
000388d4 mov      w8, #0x10
000388d8 mov      w0, #0xf
000388dc str      w8, [x19]
000388e0 b        #0x388e8
000388e4 mov      w0, #0x33
000388e8 adrp     x9, #0xd0000
000388ec ldr      x8, [sp, #8]
000388f0 ldr      x9, [x9, #0x8a0]
000388f4 cmp      x9, x8
000388f8 b.ne     #0x38908
000388fc ldp      x30, x19, [sp, #0x10]
00038900 add      sp, sp, #0x20
00038904 ret      
00038908 bl       #0x53a68
0003890c udf      #0
00038910 sub      sp, sp, #0x20
00038914 str      x30, [sp, #0x10]
00038918 adrp     x8, #0xd0000
0003891c adrp     x9, #0xd0000
00038920 ldr      x8, [x8, #0x8a0]
00038924 ldr      x9, [x9, #0x8a0]
00038928 str      x8, [sp, #8]
0003892c ldr      x8, [sp, #8]
00038930 cmp      x9, x8
00038934 b.ne     #0x38944
00038938 ldr      x30, [sp, #0x10]
0003893c add      sp, sp, #0x20
00038940 ret      
00038944 bl       #0x53a68
00038948 sub      sp, sp, #0x20
0003894c str      x30, [sp, #0x10]
00038950 adrp     x8, #0xd0000
00038954 adrp     x9, #0xd0000
00038958 ldr      x8, [x8, #0x8a0]
0003895c ldr      x9, [x9, #0x8a0]
00038960 str      x8, [sp, #8]
00038964 ldr      x8, [sp, #8]
00038968 cmp      x9, x8
0003896c b.ne     #0x38980
00038970 ldr      x30, [sp, #0x10]
00038974 mov      w0, #0xf
00038978 add      sp, sp, #0x20
0003897c ret      
00038980 bl       #0x53a68
00038984 udf      #0
00038988 sub      sp, sp, #0x40
0003898c str      x30, [sp, #0x10]
00038990 stp      x22, x21, [sp, #0x20]
00038994 stp      x20, x19, [sp, #0x30]
00038998 adrp     x8, #0xd0000
0003899c ldr      x8, [x8, #0x8a0]
000389a0 str      x8, [sp, #8]
000389a4 cbz      x0, #0x389e8
000389a8 mov      w21, w3
000389ac and      w8, w3, #0xffff
000389b0 cmp      w8, w2, uxth
000389b4 b.lo     #0x389e8
000389b8 mov      w20, w1
000389bc adrp     x1, #0xb0000
000389c0 mov      x19, x0
000389c4 mov      w0, #-1
000389c8 add      x1, x1, #0xb8f
000389cc bl       #0x56770
000389d0 tbnz     w0, #0x1f, #0x389e8
000389d4 mov      w22, w0
000389d8 bl       #0x56940
000389dc and      x21, x21, #0xffff
000389e0 cmp      x0, x21
000389e4 b.hs     #0x38a14
000389e8 adrp     x9, #0xd0000
000389ec ldr      x8, [sp, #8]
000389f0 ldr      x9, [x9, #0x8a0]
000389f4 cmp      x9, x8
000389f8 b.ne     #0x38a44
000389fc mov      w0, wzr
00038a00 ldp      x20, x19, [sp, #0x30]
00038a04 ldr      x30, [sp, #0x10]
00038a08 ldp      x22, x21, [sp, #0x20]
00038a0c add      sp, sp, #0x40
00038a10 ret      
00038a14 and      x2, x20, #0xffff
00038a18 mov      w0, w22
00038a1c mov      x1, x19
00038a20 mov      x3, x21
00038a24 bl       #0x56bd0
00038a28 adrp     x9, #0xd0000
00038a2c ldr      x8, [sp, #8]
00038a30 cmp      x0, x21
00038a34 cset     w0, hs
00038a38 ldr      x9, [x9, #0x8a0]
00038a3c cmp      x9, x8
00038a40 b.eq     #0x38a00
00038a44 bl       #0x53a68
00038a48 sub      sp, sp, #0x30
00038a4c stp      x30, x21, [sp, #0x10]
00038a50 stp      x20, x19, [sp, #0x20]
00038a54 adrp     x8, #0xd0000
00038a58 mov      w20, w1
00038a5c adrp     x1, #0xb0000
00038a60 mov      x19, x0
00038a64 mov      w0, #-1
00038a68 add      x1, x1, #0xb8f
00038a6c ldr      x8, [x8, #0x8a0]
00038a70 str      x8, [sp, #8]
00038a74 bl       #0x56770
00038a78 tbnz     w0, #0x1f, #0x38a90
00038a7c mov      w21, w0
00038a80 bl       #0x56940
00038a84 and      x20, x20, #0xffff
00038a88 cmp      x0, x20
00038a8c b.hs     #0x38a98
00038a90 mov      w0, wzr
00038a94 b        #0x38ab4
00038a98 mov      w0, w21
00038a9c mov      x1, x19
00038aa0 mov      x2, xzr
00038aa4 mov      x3, x20
00038aa8 bl       #0x56c28
00038aac cmp      x0, x20
00038ab0 cset     w0, hs
00038ab4 adrp     x9, #0xd0000
00038ab8 ldr      x8, [sp, #8]
00038abc ldr      x9, [x9, #0x8a0]
00038ac0 cmp      x9, x8
00038ac4 b.ne     #0x38ad8
00038ac8 ldp      x20, x19, [sp, #0x20]
00038acc ldp      x30, x21, [sp, #0x10]
00038ad0 add      sp, sp, #0x30
00038ad4 ret      
00038ad8 bl       #0x53a68
00038adc udf      #0
00038ae0 sub      sp, sp, #0x20
00038ae4 str      x30, [sp, #0x10]
00038ae8 adrp     x8, #0xd0000
00038aec ldr      x8, [x8, #0x8a0]
00038af0 str      x8, [sp, #8]
00038af4 cbz      x0, #0x38b00
00038af8 strb     wzr, [x0]
00038afc strb     wzr, [x0, #1]
00038b00 adrp     x9, #0xd0000
00038b04 ldr      x8, [sp, #8]
00038b08 ldr      x9, [x9, #0x8a0]
00038b0c cmp      x9, x8
00038b10 b.ne     #0x38b20
00038b14 ldr      x30, [sp, #0x10]
00038b18 add      sp, sp, #0x20
00038b1c ret      
00038b20 bl       #0x53a68
00038b24 udf      #0
00038b28 sub      sp, sp, #0x40
00038b2c stp      x30, x21, [sp, #0x20]
00038b30 stp      x20, x19, [sp, #0x30]
00038b34 adrp     x8, #0xd0000
00038b38 ldr      x8, [x8, #0x8a0]
00038b3c str      x8, [sp, #0x18]
00038b40 cbz      x0, #0x38b90
00038b44 mov      x20, x0
00038b48 mov      w21, w1
00038b4c mov      w0, #0xd
00038b50 mov      x3, sp
00038b54 mov      x1, xzr
00038b58 mov      w2, wzr
00038b5c bl       #0x31ea8
00038b60 mov      w19, #0x55
00038b64 cbnz     w0, #0x38b84
00038b68 mov      x0, sp
00038b6c mov      x1, x20
00038b70 mov      w2, w21
00038b74 bl       #0x32008
00038b78 mov      w8, #0xf
00038b7c cmp      w0, #0
00038b80 csel     w19, w8, w19, eq
00038b84 mov      x0, sp
00038b88 bl       #0x320b0
00038b8c b        #0x38b94
00038b90 mov      w19, #0xf0
00038b94 adrp     x9, #0xd0000
00038b98 ldr      x8, [sp, #0x18]
00038b9c ldr      x9, [x9, #0x8a0]
00038ba0 cmp      x9, x8
00038ba4 b.ne     #0x38bbc
00038ba8 mov      w0, w19
00038bac ldp      x20, x19, [sp, #0x30]
00038bb0 ldp      x30, x21, [sp, #0x20]
00038bb4 add      sp, sp, #0x40
00038bb8 ret      
00038bbc bl       #0x53a68
00038bc0 sub      sp, sp, #0x20
00038bc4 str      x30, [sp, #0x10]
00038bc8 adrp     x8, #0xd0000
00038bcc adrp     x9, #0xd0000
00038bd0 ldr      x8, [x8, #0x8a0]
00038bd4 ldr      x9, [x9, #0x8a0]
00038bd8 str      x8, [sp, #8]
00038bdc ldr      x8, [sp, #8]
00038be0 cmp      x9, x8
00038be4 b.ne     #0x38bf4
00038be8 ldr      x30, [sp, #0x10]
00038bec add      sp, sp, #0x20
00038bf0 ret      
00038bf4 bl       #0x53a68

RANGE 0000d2a8-0000d300
0000d2a8 str      x30, [sp, #-0x10]!
0000d2ac bl       #0x21d30
0000d2b0 tst      w0, #0xff
0000d2b4 b.eq     #0xd2e4
0000d2b8 adrp     x0, #0xa7000
0000d2bc add      x0, x0, #0x7a5
0000d2c0 bl       #0x43c8
0000d2c4 adrp     x0, #0xc2000
0000d2c8 add      x0, x0, #0x4da
0000d2cc bl       #0x4398
0000d2d0 mov      w0, #0xff
0000d2d4 bl       #0x5d528
0000d2d8 mov      w0, #1
0000d2dc ldr      x30, [sp], #0x10
0000d2e0 ret      
0000d2e4 adrp     x0, #0xa7000
0000d2e8 add      x0, x0, #0x5e4
0000d2ec bl       #0x43c8
0000d2f0 mov      w0, #3
0000d2f4 ldr      x30, [sp], #0x10
0000d2f8 ret      
0000d2fc udf      #0

RANGE 0000f7c0-0000fac0
0000f7c0 str      x30, [sp, #-0x60]!
0000f7c4 stp      x28, x27, [sp, #0x10]
0000f7c8 stp      x26, x25, [sp, #0x20]
0000f7cc stp      x24, x23, [sp, #0x30]
0000f7d0 stp      x22, x21, [sp, #0x40]
0000f7d4 stp      x20, x19, [sp, #0x50]
0000f7d8 mov      x21, x1
0000f7dc mov      w22, w0
0000f7e0 bl       #0x6fd48
0000f7e4 ldr      x25, [x0]
0000f7e8 adrp     x9, #0xd0000
0000f7ec mov      x24, x21
0000f7f0 adrp     x23, #0xb3000
0000f7f4 add      x23, x23, #0x8fb
0000f7f8 mov      x19, x0
0000f7fc sub      w28, w22, #1
0000f800 sub      x8, x25, #0xd0
0000f804 mov      x27, x25
0000f808 str      x8, [x0]
0000f80c mov      x0, x23
0000f810 ldr      x26, [x9, #0x8a0]
0000f814 str      x26, [x27, #-8]!
0000f818 ldr      x20, [x24], #8
0000f81c bl       #0x1b710
0000f820 add      x2, x0, #1
0000f824 mov      x0, x23
0000f828 mov      x1, x20
0000f82c bl       #0x1bef8
0000f830 cbz      w0, #0xf860
0000f834 adrp     x23, #0xc1000
0000f838 add      x23, x23, #0xab5
0000f83c mov      x0, x23
0000f840 bl       #0x1b710
0000f844 add      x2, x0, #1
0000f848 mov      x0, x23
0000f84c mov      x1, x20
0000f850 bl       #0x1bef8
0000f854 cbz      w0, #0xf8a0
0000f858 mov      w21, #3
0000f85c b        #0xffd4
0000f860 cmp      w22, #1
0000f864 b.gt     #0xf8d4
0000f868 stp      xzr, xzr, [x25, #-0x18]
0000f86c stur     wzr, [x25, #-0x10]
0000f870 bl       #0x21c80
0000f874 mov      w21, #3
0000f878 tst      w0, #0xff
0000f87c b.eq     #0xffd4
0000f880 adrp     x1, #0x11000
0000f884 sub      x2, x25, #0x18
0000f888 add      x1, x1, #0x608
0000f88c mov      w0, wzr
0000f890 bl       #0x1e974
0000f894 cmp      w0, #0
0000f898 csinc    w21, w21, wzr, ne
0000f89c b        #0xffd4
0000f8a0 cmp      w22, #1
0000f8a4 b.le     #0xf92c
0000f8a8 ldr      x0, [x24]
0000f8ac bl       #0x1b710
0000f8b0 cmp      w28, #1
0000f8b4 b.ne     #0xf9e0
0000f8b8 cmp      x0, #1
0000f8bc b.ne     #0xfa04
0000f8c0 ldr      x8, [x24]
0000f8c4 ldrb     w8, [x8]
0000f8c8 cmp      w8, #0x2f
0000f8cc b.eq     #0xf930
0000f8d0 b        #0xfa04
0000f8d4 cmp      w28, #1
0000f8d8 b.ne     #0xf95c
0000f8dc ldr      x0, [x24]
0000f8e0 adrp     x1, #0xa9000
0000f8e4 add      x1, x1, #0x87f
0000f8e8 bl       #0x1be9c
0000f8ec cbz      w0, #0xff28
0000f8f0 ldr      x0, [x24]
0000f8f4 adrp     x1, #0xaa000
0000f8f8 add      x1, x1, #0x42d
0000f8fc bl       #0x1be9c
0000f900 cbz      w0, #0x10040
0000f904 ldr      x1, [x24]
0000f908 mov      w0, wzr
0000f90c bl       #0x1ec08
0000f910 tbz      w0, #0, #0xf95c
0000f914 ldr      x0, [x24]
0000f918 bl       #0x11028
0000f91c ldr      x8, [x27]
0000f920 cmp      x26, x8
0000f924 b.eq     #0xffe4
0000f928 b        #0x11020
0000f92c cbnz     w28, #0xfa04
0000f930 mov      x2, x25
0000f934 str      xzr, [x2, #-0x18]!
0000f938 adrp     x1, #0x11000
0000f93c mov      w0, #1
0000f940 add      x1, x1, #0xbf8
0000f944 str      xzr, [x2, #8]
0000f948 bl       #0x1e9b8
0000f94c mov      w8, #3
0000f950 cmp      w0, #0
0000f954 csinc    w21, w8, wzr, ne
0000f958 b        #0xffd4
0000f95c ldp      x1, x2, [x21, #8]
0000f960 mov      w0, wzr
0000f964 bl       #0x113e0
0000f968 tst      w0, #0xff
0000f96c b.eq     #0xfaf4
0000f970 ldr      x0, [x24]
0000f974 adrp     x1, #0xa7000
0000f978 add      x1, x1, #0x284
0000f97c bl       #0x1be9c
0000f980 cbz      w0, #0x10004
0000f984 ldr      x0, [x24]
0000f988 adrp     x1, #0xb0000
0000f98c add      x1, x1, #0xd3a
0000f990 bl       #0x1be9c
0000f994 cbz      w0, #0x10050
0000f998 ldr      x0, [x24]
0000f99c adrp     x1, #0xa8000
0000f9a0 add      x1, x1, #0x259
0000f9a4 bl       #0x1be9c
0000f9a8 cbz      w0, #0x100ac
0000f9ac ldr      x0, [x24]
0000f9b0 adrp     x1, #0xa8000
0000f9b4 add      x1, x1, #0x263
0000f9b8 bl       #0x1be9c
0000f9bc cbz      w0, #0x1015c
0000f9c0 cmp      w28, #2
0000f9c4 b.ne     #0x101a4
0000f9c8 ldr      x23, [x21, #0x10]
0000f9cc ldrb     w8, [x23]
0000f9d0 cbnz     w8, #0x101b0
0000f9d4 ldr      x20, [x24]
0000f9d8 mov      w0, wzr
0000f9dc b        #0x10160
0000f9e0 cmp      x0, #1
0000f9e4 b.ne     #0xfa04
0000f9e8 ldr      x8, [x24]
0000f9ec ldrb     w8, [x8]
0000f9f0 cmp      w8, #0x2f
0000f9f4 b.ne     #0xfa04
0000f9f8 adrp     x0, #0xa8000
0000f9fc add      x0, x0, #0x542
0000fa00 b        #0xfafc
0000fa04 ldr      x0, [x24]
0000fa08 adrp     x1, #0xa7000
0000fa0c add      x1, x1, #0x284
0000fa10 bl       #0x1be9c
0000fa14 cbz      w0, #0xfad0
0000fa18 ldr      x0, [x24]
0000fa1c adrp     x1, #0xa9000
0000fa20 add      x1, x1, #0x87f
0000fa24 bl       #0x1be9c
0000fa28 cbz      w0, #0xfb04
0000fa2c ldr      x0, [x24]
0000fa30 adrp     x1, #0xb1000
0000fa34 add      x1, x1, #0x271
0000fa38 bl       #0x1be9c
0000fa3c cbz      w0, #0x10018
0000fa40 ldr      x0, [x24]
0000fa44 adrp     x1, #0xa7000
0000fa48 add      x1, x1, #0x2d8
0000fa4c bl       #0x1be9c
0000fa50 cbz      w0, #0x10060
0000fa54 ldr      x0, [x24]
0000fa58 adrp     x1, #0xa8000
0000fa5c add      x1, x1, #0xa48
0000fa60 bl       #0x1be9c
0000fa64 cbz      w0, #0x100c8
0000fa68 ldr      x8, [x24]
0000fa6c adrp     x0, #0xa8000
0000fa70 add      x0, x0, #0x61b
0000fa74 ldrsb    w1, [x8]
0000fa78 bl       #0x1a254
0000fa7c mov      x8, x0
0000fa80 ldr      x0, [x24]
0000fa84 cbz      x8, #0x10194
0000fa88 ldrsb    w20, [x0]
0000fa8c adrp     x1, #0xa8000
0000fa90 adrp     x2, #0xa8000
0000fa94 add      x1, x1, #0x61f
0000fa98 add      x2, x2, #0x62f
0000fa9c mov      w0, #2
0000faa0 mov      w3, w20
0000faa4 bl       #0x40c20
0000faa8 ldr      x8, [x24]
0000faac cmp      w20, #0x40
0000fab0 add      x8, x8, #1
0000fab4 b.ne     #0x10208
0000fab8 sub      x0, x25, #0xac
0000fabc mov      w2, #0x21

RANGE 00010150-00010c88
00010150 add      x0, x0, #0x590
00010154 bl       #0x43c8
00010158 b        #0xf858
0001015c ldr      x20, [x21, #0x10]
00010160 mov      x1, x20
00010164 bl       #0x1ebc8
00010168 tbz      w0, #0, #0xffd0
0001016c mov      w0, wzr
00010170 mov      x1, x20
00010174 bl       #0x1eae4
00010178 tbnz     w0, #0, #0x10538
0001017c mov      w0, wzr
00010180 mov      x1, x20
00010184 bl       #0x1e840
00010188 mov      w21, #3
0001018c cbnz     w0, #0xffd4
00010190 b        #0x10010
00010194 sub      x1, x25, #0xac
00010198 bl       #0x11b10
0001019c mov      w23, wzr
000101a0 b        #0x10218
000101a4 cmp      w22, #3
000101a8 b.lt     #0xf858
000101ac ldr      x23, [x21, #0x10]
000101b0 ldr      x1, [x24]
000101b4 sub      x20, x25, #0xcc
000101b8 mov      x0, x20
000101bc mov      w2, #0x20
000101c0 bl       #0x1bd5c
000101c4 mov      w0, wzr
000101c8 mov      x1, x20
000101cc bl       #0x1ec08
000101d0 tbz      w0, #0, #0x10770
000101d4 mov      w1, #0x3a
000101d8 mov      x0, x20
000101dc bl       #0x1a480
000101e0 cmp      x0, #0
000101e4 csinc    x0, xzr, x0, eq
000101e8 bl       #0x11a20
000101ec cbz      w0, #0x104b4
000101f0 mov      w24, w0
000101f4 cmp      w0, #0xff
000101f8 b.ne     #0x10528
000101fc adrp     x0, #0xa8000
00010200 add      x0, x0, #0x506
00010204 b        #0xfafc
00010208 sub      x1, x25, #0xac
0001020c mov      x0, x8
00010210 and      w23, w20, #0xff
00010214 bl       #0x11b10
00010218 sub      x20, x25, #0xac
0001021c adrp     x1, #0xa8000
00010220 adrp     x2, #0xa8000
00010224 add      x1, x1, #0x63d
00010228 add      x2, x2, #0x62f
0001022c mov      w0, #2
00010230 mov      x3, x20
00010234 bl       #0x40c20
00010238 cmp      w28, #2
0001023c b.ne     #0x102b0
00010240 ldr      x8, [x21, #0x10]
00010244 ldrb     w8, [x8]
00010248 cbnz     w8, #0x102b8
0001024c mov      w0, #1
00010250 bl       #0x1eee4
00010254 cbnz     w0, #0x10024
00010258 adrp     x1, #0x11000
0001025c adrp     x2, #0xa8000
00010260 add      x1, x1, #0xc68
00010264 add      x2, x2, #0x64a
00010268 mov      x0, x20
0001026c bl       #0x11848
00010270 adrp     x2, #0xc2000
00010274 mov      w0, #1
00010278 add      x2, x2, #0x4da
0001027c mov      x1, x20
00010280 bl       #0x1e880
00010284 cbz      x0, #0x1077c
00010288 mov      w0, #1
0001028c bl       #0x1e9fc
00010290 cbnz     w0, #0xf858
00010294 adrp     x1, #0x11000
00010298 adrp     x2, #0xa8000
0001029c add      x1, x1, #0xc68
000102a0 add      x2, x2, #0x678
000102a4 mov      x0, x20
000102a8 bl       #0x11848
000102ac b        #0x102b8
000102b0 cmp      w22, #3
000102b4 b.lt     #0x102c8
000102b8 cbz      w23, #0x10358
000102bc adrp     x0, #0xa8000
000102c0 add      x0, x0, #0x687
000102c4 b        #0xfafc
000102c8 cmp      w23, #0x40
000102cc b.eq     #0x105e8
000102d0 sxtb     w8, w23
000102d4 cmp      w8, #0x2d
000102d8 b.eq     #0x10550
000102dc cmp      w8, #0x2b
000102e0 b.ne     #0x10634
000102e4 mov      w0, #1
000102e8 bl       #0x1eee4
000102ec cbnz     w0, #0x10024
000102f0 mov      x0, x20
000102f4 bl       #0x1b710
000102f8 cbz      x0, #0x10820
000102fc mov      w1, #0x2b
00010300 mov      x0, x20
00010304 bl       #0x1a254
00010308 cbnz     x0, #0x1032c
0001030c mov      w1, #0x2d
00010310 mov      x0, x20
00010314 bl       #0x1a254
00010318 cbnz     x0, #0x1032c
0001031c mov      x0, x20
00010320 mov      w1, #0x40
00010324 bl       #0x1a254
00010328 cbz      x0, #0x10c88
0001032c adrp     x1, #0xa9000
00010330 adrp     x2, #0xa9000
00010334 mov      w0, #-1
00010338 add      x1, x1, #0x414
0001033c add      x2, x2, #0x3f9
00010340 mov      x3, x20
00010344 bl       #0x40c20
00010348 adrp     x0, #0xa9000
0001034c add      x0, x0, #0x43f
00010350 bl       #0x43c8
00010354 b        #0x1083c
00010358 mov      w0, #1
0001035c bl       #0x1eee4
00010360 cbnz     w0, #0x10024
00010364 mov      w0, #1
00010368 mov      x1, x20
0001036c bl       #0x1ebc8
00010370 tbz      w0, #0, #0x10770
00010374 adrp     x1, #0xa8000
00010378 adrp     x2, #0xa8000
0001037c add      x1, x1, #0x6a7
00010380 add      x2, x2, #0x62f
00010384 mov      w0, #2
00010388 mov      x3, x20
0001038c bl       #0x40c20
00010390 adrp     x1, #0x11000
00010394 adrp     x2, #0xa9000
00010398 add      x1, x1, #0xc68
0001039c add      x2, x2, #0x39f
000103a0 mov      x0, x20
000103a4 sub      x23, x25, #0x88
000103a8 bl       #0x11848
000103ac ldr      x1, [x21, #0x10]
000103b0 mov      x0, x23
000103b4 mov      w2, #0x80
000103b8 bl       #0x1bd5c
000103bc cmp      w22, #4
000103c0 b.lt     #0x10404
000103c4 add      x24, x21, #0x18
000103c8 adrp     x21, #0xca000
000103cc sub      w22, w22, #2
000103d0 mov      w28, #1
000103d4 add      x21, x21, #0x9af
000103d8 mov      x0, x23
000103dc mov      x1, x21
000103e0 mov      w2, #0x80
000103e4 bl       #0x1b7a0
000103e8 ldr      x1, [x24], #8
000103ec mov      x0, x23
000103f0 mov      w2, #0x80
000103f4 bl       #0x1b7a0
000103f8 add      x28, x28, #1
000103fc cmp      x28, x22
00010400 b.ne     #0x103d8
00010404 mov      x22, x25
00010408 ldrb     w8, [x22, #-0x88]!
0001040c cmp      w8, #0x2b
00010410 b.ne     #0x10788
00010414 mov      w0, #1
00010418 mov      x1, x20
0001041c bl       #0x1e7f8
00010420 mov      x21, x0
00010424 mov      x0, x23
00010428 bl       #0x1b710
0001042c add      x8, x21, x0
00010430 adds     x22, x8, #1
00010434 b.eq     #0x10850
00010438 mov      x0, x22
0001043c bl       #0x15710
00010440 cbz      x0, #0x10bf0
00010444 mov      x21, x0
00010448 mov      w0, #1
0001044c mov      x1, x20
00010450 mov      x2, x21
00010454 mov      x3, x22
00010458 bl       #0x1e8d8
0001045c cbz      x0, #0x10c18
00010460 sub      x1, x25, #0x87
00010464 mov      x0, x21
00010468 mov      x2, x22
0001046c bl       #0x1b7a0
00010470 mov      x22, x21
00010474 b        #0x1078c
00010478 mov      w0, #1
0001047c bl       #0x1ede4
00010480 mov      x1, x0
00010484 adrp     x0, #0xa8000
00010488 add      x0, x0, #0x5a9
0001048c bl       #0x43c8
00010490 b        #0xf858
00010494 mov      w0, #1
00010498 mov      w21, #1
0001049c bl       #0x1ede4
000104a0 mov      x1, x0
000104a4 adrp     x0, #0xa8000
000104a8 add      x0, x0, #0x57e
000104ac bl       #0x43c8
000104b0 b        #0xffd4
000104b4 mov      x0, x23
000104b8 bl       #0xf4b8
000104bc adrp     x1, #0xc9000
000104c0 mov      w24, w0
000104c4 add      x1, x1, #0x4d9
000104c8 mov      x0, x20
000104cc mov      w2, #0x1f
000104d0 bl       #0x1b7a0
000104d4 adrp     x8, #0xa7000
000104d8 adrp     x9, #0xc4000
000104dc add      x8, x8, #0xabd
000104e0 add      x9, x9, #0x99
000104e4 cmp      w24, #0
000104e8 mov      x0, x20
000104ec csel     x1, x9, x8, lt
000104f0 mov      w2, #0x1f
000104f4 bl       #0x1b7a0
000104f8 mov      w1, #0x3a
000104fc mov      x0, x20
00010500 bl       #0x1a480
00010504 cmp      x0, #0
00010508 csinc    x0, xzr, x0, eq
0001050c bl       #0x11a20
00010510 mov      w24, w0
00010514 cmp      w0, #0xff
00010518 b.ne     #0x10528
0001051c adrp     x0, #0xa8000
00010520 add      x0, x0, #0x51d
00010524 b        #0xfafc
00010528 mov      w0, wzr
0001052c mov      x1, x20
00010530 bl       #0x1eae4
00010534 tbz      w0, #0, #0x10670
00010538 adrp     x0, #0xa8000
0001053c add      x0, x0, #0x127
00010540 bl       #0x43c8
00010544 adrp     x0, #0xa8000
00010548 add      x0, x0, #0x13a
0001054c b        #0xfafc
00010550 mov      w0, #1
00010554 bl       #0x1eee4
00010558 cbnz     w0, #0x10024
0001055c adrp     x1, #0x11000
00010560 adrp     x2, #0xa8000
00010564 add      x1, x1, #0xc68
00010568 add      x2, x2, #0x75c
0001056c mov      x0, x20
00010570 bl       #0x11848
00010574 mov      w0, #1
00010578 mov      x1, x20
0001057c bl       #0x1ebc8
00010580 tbz      w0, #0, #0x107c8
00010584 sub      x21, x25, #0x2c
00010588 mov      w22, #0x21
0001058c mov      x0, x21
00010590 mov      x1, x20
00010594 mov      x2, x22
00010598 bl       #0x1bd5c
0001059c adrp     x1, #0xa9000
000105a0 mov      x0, x21
000105a4 add      x1, x1, #0x4f0
000105a8 mov      x2, x22
000105ac bl       #0x1b7a0
000105b0 adrp     x1, #0xf000
000105b4 mov      w0, #1
000105b8 add      x1, x1, #0x780
000105bc mov      x2, x21
000105c0 bl       #0x1e9b8
000105c4 cmn      w0, #1
000105c8 b.eq     #0x10c0c
000105cc mov      w0, #1
000105d0 mov      x1, x20
000105d4 bl       #0x1e840
000105d8 cbz      w0, #0x10c38
000105dc adrp     x0, #0xa8000
000105e0 add      x0, x0, #0x7b2
000105e4 b        #0x10844
000105e8 adrp     x1, #0xa9000
000105ec mov      x0, x20
000105f0 add      x1, x1, #0x4f0
000105f4 mov      w2, #2
000105f8 bl       #0x1bef8
000105fc cbz      w0, #0x10610
00010600 mov      w0, #1
00010604 mov      x1, x20
00010608 bl       #0x1ebc8
0001060c tbz      w0, #0, #0x107b0
00010610 mov      w0, #1
00010614 mov      x1, x20
00010618 mov      w21, #1
0001061c bl       #0x1ee60
00010620 adrp     x0, #0xa8000
00010624 mov      x1, x20
00010628 add      x0, x0, #0x7e9
0001062c bl       #0x43c8
00010630 b        #0xffd4
00010634 mov      x0, x20
00010638 bl       #0x1b710
0001063c sub      w8, w0, #1
00010640 sxtw     x8, w8
00010644 ldrb     w9, [x20, x8]
00010648 cmp      w9, #0x2f
0001064c b.ne     #0x10750
00010650 mov      w0, #1
00010654 mov      x1, x20
00010658 strb     wzr, [x20, x8]
0001065c bl       #0x1ebc8
00010660 tbz      w0, #0, #0x10770
00010664 mov      x2, x25
00010668 str      x20, [x2, #-0x18]!
0001066c b        #0xf938
00010670 sub      w8, w24, #1
00010674 cmp      w8, #6
00010678 b.hi     #0x10bd4
0001067c adrp     x9, #0xa8000
00010680 add      x9, x9, #0x112
00010684 adr      x10, #0x10694
00010688 ldrh     w11, [x9, x8, lsl #1]
0001068c add      x10, x10, x11, lsl #2
00010690 br       x10
00010694 mov      x0, x23
00010698 bl       #0xf4b8
0001069c tbnz     w0, #0x1f, #0x10c7c
000106a0 sub      x22, x25, #0x28
000106a4 mov      w21, w0
000106a8 mov      x0, x22
000106ac mov      x1, x20
000106b0 mov      w2, #0x1f
000106b4 sturb    wzr, [x25, #-9]
000106b8 bl       #0x1bb48
000106bc mov      w1, #0x3a
000106c0 mov      x0, x22
000106c4 bl       #0x1a480
000106c8 cmp      x0, #0
000106cc csinc    x0, xzr, x0, eq
000106d0 bl       #0x11a20
000106d4 cbnz     w0, #0x10718
000106d8 adrp     x1, #0xc9000
000106dc mov      x0, x22
000106e0 add      x1, x1, #0x4d9
000106e4 mov      w2, #0x1f
000106e8 bl       #0x1b7a0
000106ec adrp     x1, #0xa7000
000106f0 mov      x0, x22
000106f4 add      x1, x1, #0xabd
000106f8 mov      w2, #0x1f
000106fc bl       #0x1b7a0
00010700 mov      w1, #0x3a
00010704 mov      x0, x22
00010708 bl       #0x1a480
0001070c cmp      x0, #0
00010710 csinc    x0, xzr, x0, eq
00010714 bl       #0x11a20
00010718 cmp      w0, #2
0001071c b.hs     #0xf858
00010720 cmp      w21, #0
00010724 mov      x2, x25
00010728 cset     w8, gt
0001072c b        #0x10978
00010730 mov      w0, #1
00010734 mov      w21, #1
00010738 bl       #0x1ede4
0001073c mov      x1, x0
00010740 adrp     x0, #0xa8000
00010744 add      x0, x0, #0x5f0
00010748 bl       #0x43c8
0001074c b        #0xffd4
00010750 mov      w0, #1
00010754 mov      x1, x20
00010758 bl       #0x1ebc8
0001075c tbz      w0, #0, #0x10770
00010760 mov      x0, x20
00010764 bl       #0x116a8
00010768 mov      w21, w0
0001076c b        #0xffd4
00010770 adrp     x0, #0xa8000
00010774 add      x0, x0, #0x433
00010778 b        #0xfafc
0001077c adrp     x0, #0xa8000
00010780 add      x0, x0, #0x65a
00010784 b        #0x10844
00010788 mov      x21, xzr
0001078c mov      w0, #1
00010790 mov      x1, x20
00010794 mov      x2, x22
00010798 bl       #0xf598
0001079c cbz      w0, #0x107d4
000107a0 cbz      x21, #0xf858
000107a4 mov      x0, x21
000107a8 bl       #0x15910
000107ac b        #0xf858
000107b0 mov      x0, x20
000107b4 bl       #0x1b710
000107b8 cbz      x0, #0x1085c
000107bc adrp     x0, #0xa8000
000107c0 add      x0, x0, #0x802
000107c4 b        #0x10844
000107c8 adrp     x0, #0xa8000
000107cc add      x0, x0, #0x76c
000107d0 b        #0x10844
000107d4 mov      w0, #1
000107d8 mov      x1, x20
000107dc mov      x2, x22
000107e0 bl       #0x1e880
000107e4 mov      x22, x0
000107e8 cbz      x21, #0x107f4
000107ec mov      x0, x21
000107f0 bl       #0x15910
000107f4 cbz      w22, #0xf858
000107f8 mov      w0, #1
000107fc bl       #0x1e9fc
00010800 cbnz     w0, #0xf858
00010804 adrp     x1, #0x11000
00010808 adrp     x2, #0xa9000
0001080c add      x1, x1, #0xc68
00010810 add      x2, x2, #0x3d6
00010814 mov      x0, x20
00010818 bl       #0x11848
0001081c b        #0x10760
00010820 adrp     x1, #0xa9000
00010824 adrp     x2, #0xa9000
00010828 mov      w0, #-1
0001082c add      x1, x1, #0x3e4
00010830 add      x2, x2, #0x3f9
00010834 mov      x3, x20
00010838 bl       #0x40c20
0001083c adrp     x0, #0xa8000
00010840 add      x0, x0, #0x744
00010844 mov      x1, x20
00010848 bl       #0x43c8
0001084c b        #0xf858
00010850 adrp     x1, #0xa9000
00010854 add      x1, x1, #0x3ae
00010858 b        #0x10c20
0001085c mov      w0, #1
00010860 mov      w21, #1
00010864 bl       #0x1eea8
00010868 mov      x1, x0
0001086c adrp     x0, #0xa8000
00010870 b        #0x10628
00010874 sub      x24, x25, #0x88
00010878 mov      x1, x23
0001087c mov      x0, x24
00010880 mov      w2, #0x80
00010884 bl       #0x1bd5c
00010888 cmp      w22, #4
0001088c mov      x22, x24
00010890 b.lt     #0x108d4
00010894 add      x24, x21, #0x18
00010898 adrp     x21, #0xca000
0001089c mov      w23, w28
000108a0 mov      w28, #2
000108a4 add      x21, x21, #0x9af
000108a8 mov      x0, x22
000108ac mov      x1, x21
000108b0 mov      w2, #0x7f
000108b4 bl       #0x1b7a0
000108b8 ldr      x1, [x24], #8
000108bc mov      x0, x22
000108c0 mov      w2, #0x7f
000108c4 bl       #0x1b7a0
000108c8 add      x28, x28, #1
000108cc cmp      x28, x23
000108d0 b.ne     #0x108a8
000108d4 mov      w0, wzr
000108d8 mov      x1, x20
000108dc mov      x2, x22
000108e0 sturb    wzr, [x25, #-9]
000108e4 bl       #0x1e880
000108e8 cbnz     x0, #0x10bd4
000108ec b        #0xf858
000108f0 sub      x21, x25, #0x28
000108f4 mov      x1, x20
000108f8 mov      x0, x21
000108fc mov      w2, #0x1f
00010900 sturb    wzr, [x25, #-9]
00010904 bl       #0x1bb48
00010908 mov      w1, #0x3a
0001090c mov      x0, x21
00010910 bl       #0x1a480
00010914 cmp      x0, #0
00010918 csinc    x0, xzr, x0, eq
0001091c bl       #0x11a20
00010920 cbnz     w0, #0x10964
00010924 adrp     x1, #0xc9000
00010928 mov      x0, x21
0001092c add      x1, x1, #0x4d9
00010930 mov      w2, #0x1f
00010934 bl       #0x1b7a0
00010938 adrp     x1, #0xa7000
0001093c mov      x0, x21
00010940 add      x1, x1, #0xac2
00010944 mov      w2, #0x1f
00010948 bl       #0x1b7a0
0001094c mov      w1, #0x3a
00010950 mov      x0, x21
00010954 bl       #0x1a480
00010958 cmp      x0, #0
0001095c csinc    x0, xzr, x0, eq
00010960 bl       #0x11a20
00010964 cbz      w0, #0x10970
00010968 cmp      w0, #3
0001096c b.ne     #0xf858
00010970 ldrb     w8, [x23]
00010974 mov      x2, x25
00010978 strb     w8, [x2, #-0x2c]!
0001097c add      x1, x2, #4
00010980 mov      w0, wzr
00010984 mov      w3, #1
00010988 b        #0x10bcc
0001098c sub      x21, x25, #0x28
00010990 mov      x1, x20
00010994 mov      x0, x21
00010998 mov      w2, #0x1f
0001099c sturb    wzr, [x25, #-9]
000109a0 bl       #0x1bb48
000109a4 mov      w1, #0x3a
000109a8 mov      x0, x21
000109ac bl       #0x1a480
000109b0 cmp      x0, #0
000109b4 csinc    x0, xzr, x0, eq
000109b8 bl       #0x11a20
000109bc cbnz     w0, #0x10a00
000109c0 adrp     x1, #0xc9000
000109c4 mov      x0, x21
000109c8 add      x1, x1, #0x4d9
000109cc mov      w2, #0x1f
000109d0 bl       #0x1b7a0
000109d4 adrp     x1, #0xa8000
000109d8 mov      x0, x21
000109dc add      x1, x1, #0x526
000109e0 mov      w2, #0x1f
000109e4 bl       #0x1b7a0
000109e8 mov      w1, #0x3a
000109ec mov      x0, x21
000109f0 bl       #0x1a480
000109f4 cmp      x0, #0
000109f8 csinc    x0, xzr, x0, eq
000109fc bl       #0x11a20
00010a00 orr      w8, w0, #4
00010a04 cmp      w8, #4
00010a08 b.ne     #0xf858
00010a0c mov      x0, x23
00010a10 bl       #0x1a340
00010a14 b        #0x10bb8
00010a18 sub      x21, x25, #0x28
00010a1c mov      x1, x20
00010a20 mov      x0, x21
00010a24 mov      w2, #0x1f
00010a28 sturb    wzr, [x25, #-9]
00010a2c bl       #0x1bb48
00010a30 mov      w1, #0x3a
00010a34 mov      x0, x21
00010a38 bl       #0x1a480
00010a3c cmp      x0, #0
00010a40 csinc    x0, xzr, x0, eq
00010a44 bl       #0x11a20
00010a48 cbnz     w0, #0x10a8c
00010a4c adrp     x1, #0xc9000
00010a50 mov      x0, x21
00010a54 add      x1, x1, #0x4d9
00010a58 mov      w2, #0x1f
00010a5c bl       #0x1b7a0
00010a60 adrp     x1, #0xa7000
00010a64 mov      x0, x21
00010a68 add      x1, x1, #0xac7
00010a6c mov      w2, #0x1f
00010a70 bl       #0x1b7a0
00010a74 mov      w1, #0x3a
00010a78 mov      x0, x21
00010a7c bl       #0x1a480
00010a80 cmp      x0, #0
00010a84 csinc    x0, xzr, x0, eq
00010a88 bl       #0x11a20
00010a8c cbz      w0, #0x10a98
00010a90 cmp      w0, #5
00010a94 b.ne     #0xf858
00010a98 mov      x0, x23
00010a9c bl       #0x1cc00
00010aa0 b        #0x10bb8
00010aa4 sub      x21, x25, #0x28
00010aa8 mov      x1, x20
00010aac mov      x0, x21
00010ab0 mov      w2, #0x1f
00010ab4 sturb    wzr, [x25, #-9]
00010ab8 bl       #0x1bb48
00010abc mov      w1, #0x3a
00010ac0 mov      x0, x21
00010ac4 bl       #0x1a480
00010ac8 cmp      x0, #0
00010acc csinc    x0, xzr, x0, eq
00010ad0 bl       #0x11a20
00010ad4 cbnz     w0, #0x10b18
00010ad8 adrp     x1, #0xc9000
00010adc mov      x0, x21
00010ae0 add      x1, x1, #0x4d9
00010ae4 mov      w2, #0x1f
00010ae8 bl       #0x1b7a0
00010aec adrp     x1, #0xa7000
00010af0 mov      x0, x21
00010af4 add      x1, x1, #0xace
00010af8 mov      w2, #0x1f
00010afc bl       #0x1b7a0
00010b00 mov      w1, #0x3a
00010b04 mov      x0, x21
00010b08 bl       #0x1a480
00010b0c cmp      x0, #0
00010b10 csinc    x0, xzr, x0, eq
00010b14 bl       #0x11a20
00010b18 cbz      w0, #0x10b24
00010b1c cmp      w0, #6
00010b20 b.ne     #0xf858
00010b24 mov      x0, x23
00010b28 bl       #0x1a3e0
00010b2c b        #0x10bb8
00010b30 sub      x21, x25, #0x28
00010b34 mov      x1, x20
00010b38 mov      x0, x21
00010b3c mov      w2, #0x1f
00010b40 sturb    wzr, [x25, #-9]
00010b44 bl       #0x1bb48
00010b48 mov      w1, #0x3a
00010b4c mov      x0, x21
00010b50 bl       #0x1a480
00010b54 cmp      x0, #0
00010b58 csinc    x0, xzr, x0, eq
00010b5c bl       #0x11a20
00010b60 cbnz     w0, #0x10ba4
00010b64 adrp     x1, #0xc9000
00010b68 mov      x0, x21
00010b6c add      x1, x1, #0x4d9
00010b70 mov      w2, #0x1f
00010b74 bl       #0x1b7a0
00010b78 adrp     x1, #0xa7000
00010b7c mov      x0, x21
00010b80 add      x1, x1, #0xacd
00010b84 mov      w2, #0x1f
00010b88 bl       #0x1b7a0
00010b8c mov      w1, #0x3a
00010b90 mov      x0, x21
00010b94 bl       #0x1a480
00010b98 cmp      x0, #0
00010b9c csinc    x0, xzr, x0, eq
00010ba0 bl       #0x11a20
00010ba4 cbz      w0, #0x10bb0
00010ba8 cmp      w0, #7
00010bac b.ne     #0xf858
00010bb0 mov      x0, x23
00010bb4 bl       #0x1cd20
00010bb8 mov      x2, x25
00010bbc mov      w3, #8
00010bc0 str      x0, [x2, #-0x30]!
00010bc4 add      x1, x2, #8
00010bc8 mov      w0, wzr
00010bcc bl       #0x1e760
00010bd0 cbz      x0, #0xf858
00010bd4 mov      w0, wzr
00010bd8 bl       #0x1e9fc
00010bdc cbnz     w0, #0xf858
00010be0 mov      x0, x20
00010be4 bl       #0x11028
00010be8 mov      w21, w0
00010bec b        #0xffd4
00010bf0 adrp     x1, #0xa8000
00010bf4 adrp     x2, #0xa9000
00010bf8 mov      w0, #-1
00010bfc add      x1, x1, #0x1d7
00010c00 add      x2, x2, #0x3cc
00010c04 bl       #0x40c20
00010c08 b        #0xf858
00010c0c adrp     x0, #0xa8000
00010c10 add      x0, x0, #0x790
00010c14 b        #0x10844
00010c18 adrp     x1, #0xa8000
00010c1c add      x1, x1, #0x1e9
00010c20 adrp     x2, #0xa9000
00010c24 mov      w0, #2
00010c28 add      x2, x2, #0x3cc
00010c2c mov      x3, x20
00010c30 bl       #0x40c20
00010c34 b        #0xf858
00010c38 mov      w0, #1
00010c3c bl       #0x1e9fc
00010c40 cbnz     w0, #0xf858
00010c44 mov      w0, #1
00010c48 bl       #0x1e9fc
00010c4c cbnz     w0, #0xf858
00010c50 adrp     x1, #0x11000
00010c54 adrp     x2, #0xa8000
00010c58 add      x1, x1, #0xc68
00010c5c add      x2, x2, #0x7c8
00010c60 mov      x0, x20
00010c64 bl       #0x11848
00010c68 adrp     x0, #0xa8000
00010c6c add      x0, x0, #0x7d7
00010c70 mov      x1, x20
00010c74 bl       #0x43c8
00010c78 b        #0xffd0
00010c7c adrp     x0, #0xa8000
00010c80 add      x0, x0, #0x52b
00010c84 b        #0xfafc

RANGE 00011a20-00011b40
00011a20 stp      x30, x19, [sp, #-0x10]!
00011a24 cbz      x0, #0x11ac0
00011a28 adrp     x1, #0xa7000
00011a2c mov      x19, x0
00011a30 add      x1, x1, #0xabd
00011a34 bl       #0x1be9c
00011a38 cbz      w0, #0x11ac8
00011a3c adrp     x1, #0xc4000
00011a40 mov      x0, x19
00011a44 add      x1, x1, #0x99
00011a48 bl       #0x1be9c
00011a4c cbz      w0, #0x11ad4
00011a50 adrp     x1, #0xa7000
00011a54 mov      x0, x19
00011a58 add      x1, x1, #0xac2
00011a5c bl       #0x1be9c
00011a60 cbz      w0, #0x11ae0
00011a64 adrp     x1, #0xa8000
00011a68 mov      x0, x19
00011a6c add      x1, x1, #0x526
00011a70 bl       #0x1be9c
00011a74 cbz      w0, #0x11aec
00011a78 adrp     x1, #0xa7000
00011a7c mov      x0, x19
00011a80 add      x1, x1, #0xac7
00011a84 bl       #0x1be9c
00011a88 cbz      w0, #0x11af8
00011a8c adrp     x1, #0xa7000
00011a90 mov      x0, x19
00011a94 add      x1, x1, #0xace
00011a98 bl       #0x1be9c
00011a9c cbz      w0, #0x11b04
00011aa0 adrp     x1, #0xa7000
00011aa4 mov      x0, x19
00011aa8 add      x1, x1, #0xacd
00011aac bl       #0x1be9c
00011ab0 mov      w8, #0xff
00011ab4 cmp      w0, #0
00011ab8 mov      w9, #7
00011abc csel     w0, w9, w8, eq
00011ac0 ldp      x30, x19, [sp], #0x10
00011ac4 ret      
00011ac8 mov      w0, #1
00011acc ldp      x30, x19, [sp], #0x10
00011ad0 ret      
00011ad4 mov      w0, #2
00011ad8 ldp      x30, x19, [sp], #0x10
00011adc ret      
00011ae0 mov      w0, #3
00011ae4 ldp      x30, x19, [sp], #0x10
00011ae8 ret      
00011aec mov      w0, #4
00011af0 ldp      x30, x19, [sp], #0x10
00011af4 ret      
00011af8 mov      w0, #5
00011afc ldp      x30, x19, [sp], #0x10
00011b00 ret      
00011b04 mov      w0, #6
00011b08 ldp      x30, x19, [sp], #0x10
00011b0c ret      
00011b10 stp      x30, x21, [sp, #-0x20]!
00011b14 stp      x20, x19, [sp, #0x10]
00011b18 ldrb     w8, [x0]
00011b1c mov      x20, x0
00011b20 mov      x19, x1
00011b24 cmp      w8, #0x2f
00011b28 b.ne     #0x11b3c
00011b2c add      x1, x20, #1
00011b30 mov      w2, #0x21
00011b34 mov      x0, x19
00011b38 b        #0x11bec
00011b3c mov      w0, #1

RANGE 0001ebc8-0001ec08
0001ebc8 sub      sp, sp, #0x30
0001ebcc str      x30, [sp, #0x10]
0001ebd0 stp      x20, x19, [sp, #0x20]
0001ebd4 adrp     x8, #0xd0000
0001ebd8 mov      x19, x1
0001ebdc mov      w20, w0
0001ebe0 bl       #0x1ef30
0001ebe4 ldr      x8, [x0, #0xa0]
0001ebe8 bl       #0x1ef4c
0001ebec adrp     x9, #0xd0000
0001ebf0 bl       #0x1ef20
0001ebf4 b.ne     #0x1ec04
0001ebf8 bl       #0x1eff0
0001ebfc ldr      x30, [sp, #0x10]
0001ec00 b        #0x1ef58
0001ec04 bl       #0x53a68

RANGE 0000f4b8-0000f7c0
0000f4b8 stp      x30, x19, [sp, #-0x10]!
0000f4bc adrp     x1, #0xa8000
0000f4c0 mov      w2, #5
0000f4c4 add      x1, x1, #0x170
0000f4c8 mov      x19, x0
0000f4cc bl       #0x1a4d8
0000f4d0 cbz      w0, #0xf588
0000f4d4 adrp     x1, #0xa7000
0000f4d8 mov      x0, x19
0000f4dc add      x1, x1, #0x7ce
0000f4e0 mov      w2, #3
0000f4e4 bl       #0x1a4d8
0000f4e8 cbz      w0, #0xf588
0000f4ec adrp     x1, #0xad000
0000f4f0 mov      x0, x19
0000f4f4 add      x1, x1, #0xe45
0000f4f8 mov      w2, #7
0000f4fc bl       #0x1a4d8
0000f500 cbz      w0, #0xf588
0000f504 adrp     x1, #0xaa000
0000f508 mov      x0, x19
0000f50c add      x1, x1, #0xc7
0000f510 mov      w2, #4
0000f514 bl       #0x1a4d8
0000f518 cbz      w0, #0xf588
0000f51c adrp     x1, #0xa8000
0000f520 mov      x0, x19
0000f524 add      x1, x1, #0x175
0000f528 mov      w2, #6
0000f52c bl       #0x1a4d8
0000f530 cbz      w0, #0xf580
0000f534 adrp     x1, #0xc5000
0000f538 mov      x0, x19
0000f53c add      x1, x1, #0x58a
0000f540 mov      w2, #4
0000f544 bl       #0x1a4d8
0000f548 cbz      w0, #0xf580
0000f54c adrp     x1, #0xc6000
0000f550 mov      x0, x19
0000f554 add      x1, x1, #0x8ef
0000f558 mov      w2, #8
0000f55c bl       #0x1a4d8
0000f560 cbz      w0, #0xf580
0000f564 adrp     x1, #0xaa000
0000f568 mov      x0, x19
0000f56c add      x1, x1, #0xd4
0000f570 mov      w2, #3
0000f574 bl       #0x1a4d8
0000f578 cmp      w0, #0
0000f57c csetm    w0, ne
0000f580 ldp      x30, x19, [sp], #0x10
0000f584 ret      
0000f588 mov      w0, #1
0000f58c ldp      x30, x19, [sp], #0x10
0000f590 ret      
0000f594 udf      #0
0000f598 str      x30, [sp, #-0x60]!
0000f59c stp      x28, x27, [sp, #0x10]
0000f5a0 stp      x26, x25, [sp, #0x20]
0000f5a4 stp      x24, x23, [sp, #0x30]
0000f5a8 stp      x22, x21, [sp, #0x40]
0000f5ac stp      x20, x19, [sp, #0x50]
0000f5b0 mov      x21, x2
0000f5b4 mov      x20, x1
0000f5b8 mov      w22, w0
0000f5bc bl       #0x6fd48
0000f5c0 ldr      x26, [x0]
0000f5c4 adrp     x9, #0xd0000
0000f5c8 mov      x19, x0
0000f5cc sub      x8, x26, #0x30
0000f5d0 mov      x28, x26
0000f5d4 str      x8, [x0]
0000f5d8 mov      x0, x21
0000f5dc ldr      x27, [x9, #0x8a0]
0000f5e0 str      x27, [x28, #-8]!
0000f5e4 bl       #0x1b710
0000f5e8 cbz      x0, #0xf68c
0000f5ec sub      x23, x26, #0x2c
0000f5f0 mov      w24, #0x21
0000f5f4 mov      x0, x23
0000f5f8 mov      x1, x20
0000f5fc mov      x2, x24
0000f600 bl       #0x1bd5c
0000f604 adrp     x1, #0xa9000
0000f608 mov      x0, x23
0000f60c add      x1, x1, #0x4f0
0000f610 mov      x2, x24
0000f614 bl       #0x1b7a0
0000f618 adrp     x1, #0xa8000
0000f61c mov      x0, x23
0000f620 add      x1, x1, #0x1ac
0000f624 mov      x2, x24
0000f628 bl       #0x1b7a0
0000f62c mov      w0, w22
0000f630 mov      x1, x23
0000f634 bl       #0x1e7f8
0000f638 cbz      w0, #0xf6a8
0000f63c sxtw     x25, w0
0000f640 mov      x0, x25
0000f644 bl       #0x15710
0000f648 cbz      x0, #0xf6f4
0000f64c mov      x24, x0
0000f650 mov      w0, w22
0000f654 mov      x1, x23
0000f658 mov      x2, x24
0000f65c mov      x3, x25
0000f660 bl       #0x1e8d8
0000f664 cbz      x0, #0xf714
0000f668 adrp     x1, #0xa6000
0000f66c mov      x0, x24
0000f670 add      x1, x1, #0x813
0000f674 mov      x2, x21
0000f678 bl       #0x7c1e8
0000f67c cbz      w0, #0xf740
0000f680 mov      x0, x24
0000f684 bl       #0x15910
0000f688 b        #0xf6c4
0000f68c adrp     x1, #0xa8000
0000f690 adrp     x2, #0xa8000
0000f694 add      x1, x1, #0x17b
0000f698 add      x2, x2, #0x198
0000f69c mov      w0, #2
0000f6a0 bl       #0x40c20
0000f6a4 b        #0xf6c4
0000f6a8 adrp     x1, #0xa8000
0000f6ac adrp     x2, #0xa8000
0000f6b0 add      x1, x1, #0x1b3
0000f6b4 add      x2, x2, #0x198
0000f6b8 mov      w0, #2
0000f6bc mov      x3, x20
0000f6c0 bl       #0x40c20
0000f6c4 mov      w0, wzr
0000f6c8 ldr      x8, [x28]
0000f6cc cmp      x27, x8
0000f6d0 b.ne     #0xf77c
0000f6d4 str      x26, [x19]
0000f6d8 ldp      x20, x19, [sp, #0x50]
0000f6dc ldp      x22, x21, [sp, #0x40]
0000f6e0 ldp      x24, x23, [sp, #0x30]
0000f6e4 ldp      x26, x25, [sp, #0x20]
0000f6e8 ldp      x28, x27, [sp, #0x10]
0000f6ec ldr      x30, [sp], #0x60
0000f6f0 ret      
0000f6f4 adrp     x1, #0xa8000
0000f6f8 adrp     x2, #0xa8000
0000f6fc mov      w0, #-1
0000f700 add      x1, x1, #0x1d7
0000f704 add      x2, x2, #0x198
0000f708 bl       #0x40c20
0000f70c mov      w0, #-5
0000f710 b        #0xf6c8
0000f714 adrp     x1, #0xa8000
0000f718 adrp     x2, #0xa8000
0000f71c mov      w0, #-1
0000f720 add      x1, x1, #0x1e9
0000f724 add      x2, x2, #0x198
0000f728 mov      x3, x23
0000f72c bl       #0x40c20
0000f730 mov      x0, x24
0000f734 bl       #0x15910
0000f738 mov      w0, #-2
0000f73c b        #0xf6c8
0000f740 adrp     x1, #0xa8000
0000f744 adrp     x2, #0xa8000
0000f748 add      x1, x1, #0x207
0000f74c add      x2, x2, #0x198
0000f750 mov      w0, #2
0000f754 mov      x3, x20
0000f758 bl       #0x40c20
0000f75c adrp     x0, #0xa8000
0000f760 mov      x1, x21
0000f764 add      x0, x0, #0x22e
0000f768 bl       #0x43c8
0000f76c mov      x0, x24
0000f770 bl       #0x15910
0000f774 mov      w0, #-8
0000f778 b        #0xf6c8
0000f77c bl       #0x53a68
0000f780 str      x30, [sp, #-0x20]!
0000f784 stp      x20, x19, [sp, #0x10]
0000f788 mov      x0, x2
0000f78c mov      x19, x2
0000f790 mov      x20, x1
0000f794 bl       #0x1b710
0000f798 mov      x2, x0
0000f79c mov      x0, x20
0000f7a0 mov      x1, x19
0000f7a4 bl       #0x1bef8
0000f7a8 ldp      x20, x19, [sp, #0x10]
0000f7ac cmp      w0, #0
0000f7b0 cset     w0, eq
0000f7b4 ldr      x30, [sp], #0x20
0000f7b8 ret      
0000f7bc udf      #0

RANGE 000113e0-00011580
000113e0 stp      x30, x21, [sp, #-0x20]!
000113e4 stp      x20, x19, [sp, #0x10]
000113e8 cmp      w0, #1
000113ec b.eq     #0x11414
000113f0 cbnz     w0, #0x11410
000113f4 mov      x20, x2
000113f8 mov      x19, x1
000113fc bl       #0x21c80
00011400 tst      w0, #0xff
00011404 b.eq     #0x11420
00011408 mov      w0, #1
0001140c b        #0x11414
00011410 mov      w0, wzr
00011414 ldp      x20, x19, [sp, #0x10]
00011418 ldp      x30, x21, [sp], #0x20
0001141c ret      
00011420 adrp     x21, #0xd2000
00011424 mov      x1, x19
00011428 add      x21, x21, #0x83e
0001142c mov      w2, #0x20
00011430 mov      x0, x21
00011434 bl       #0x1bd5c
00011438 mov      w1, #0x3a
0001143c mov      x0, x21
00011440 bl       #0x1a480
00011444 cbz      x0, #0x1144c
00011448 strb     wzr, [x0]
0001144c adrp     x0, #0xa4000
00011450 adrp     x1, #0xd2000
00011454 add      x0, x0, #0x477
00011458 add      x1, x1, #0x83e
0001145c bl       #0x1be9c
00011460 cbz      w0, #0x115c0
00011464 adrp     x20, #0xd2000
00011468 mov      x1, x19
0001146c add      x20, x20, #0x83e
00011470 mov      w2, #0x20
00011474 mov      x0, x20
00011478 bl       #0x1bd5c
0001147c mov      w1, #0x3a
00011480 mov      x0, x20
00011484 bl       #0x1a480
00011488 cbz      x0, #0x11490
0001148c strb     wzr, [x0]
00011490 adrp     x0, #0xa8000
00011494 adrp     x1, #0xd2000
00011498 add      x0, x0, #0x4da
0001149c add      x1, x1, #0x83e
000114a0 bl       #0x1be9c
000114a4 cbz      w0, #0x11408
000114a8 adrp     x20, #0xd2000
000114ac mov      x1, x19
000114b0 add      x20, x20, #0x83e
000114b4 mov      w2, #0x20
000114b8 mov      x0, x20
000114bc bl       #0x1bd5c
000114c0 mov      w1, #0x3a
000114c4 mov      x0, x20
000114c8 bl       #0x1a480
000114cc cbz      x0, #0x114d4
000114d0 strb     wzr, [x0]
000114d4 adrp     x0, #0xc1000
000114d8 adrp     x1, #0xd2000
000114dc add      x0, x0, #0xea5
000114e0 add      x1, x1, #0x83e
000114e4 bl       #0x1be9c
000114e8 cbz      w0, #0x11408
000114ec adrp     x20, #0xd2000
000114f0 mov      x1, x19
000114f4 add      x20, x20, #0x83e
000114f8 mov      w2, #0x20
000114fc mov      x0, x20
00011500 bl       #0x1bd5c
00011504 mov      w1, #0x3a
00011508 mov      x0, x20
0001150c bl       #0x1a480
00011510 cbz      x0, #0x11518
00011514 strb     wzr, [x0]
00011518 adrp     x0, #0xa6000
0001151c adrp     x1, #0xd2000
00011520 add      x0, x0, #0xecd
00011524 add      x1, x1, #0x83e
00011528 bl       #0x1be9c
0001152c cbz      w0, #0x11408
00011530 adrp     x20, #0xd2000
00011534 mov      x1, x19
00011538 add      x20, x20, #0x83e
0001153c mov      w2, #0x20
00011540 mov      x0, x20
00011544 bl       #0x1bd5c
00011548 mov      w1, #0x3a
0001154c mov      x0, x20
00011550 bl       #0x1a480
00011554 cbz      x0, #0x1155c
00011558 strb     wzr, [x0]
0001155c adrp     x0, #0xa8000
00011560 adrp     x1, #0xd2000
00011564 add      x0, x0, #0x4e1
00011568 add      x1, x1, #0x83e
0001156c bl       #0x1be9c
00011570 cbz      w0, #0x11408
00011574 adrp     x20, #0xd2000
00011578 mov      x1, x19
0001157c add      x20, x20, #0x83e

RANGE 0006a7b0-0006a920
0006a7b0 mov      x0, x27
0006a7b4 mov      x1, x20
0006a7b8 bl       #0x1a704
0006a7bc adrp     x0, #0xbf000
0006a7c0 add      x0, x0, #0xc3c
0006a7c4 bl       #0x1b710
0006a7c8 mov      x19, x0
0006a7cc mov      x0, x27
0006a7d0 str      x27, [sp, #0x48]
0006a7d4 bl       #0x1b710
0006a7d8 sub      x27, x26, #0x274
0006a7dc mov      x20, x0
0006a7e0 strh     wzr, [x27]
0006a7e4 bl       #0x81450
0006a7e8 tbnz     w0, #0, #0x6a7f8
0006a7ec bl       #0x21880
0006a7f0 tst      w0, #0xff
0006a7f4 b.eq     #0x6ad88
0006a7f8 mov      w8, #0x31
0006a7fc adrp     x0, #0xbf000
0006a800 str      x22, [sp, #0x58]
0006a804 add      x0, x0, #0xc55
0006a808 strb     w8, [x27]
0006a80c bl       #0x1b710
0006a810 add      w8, w21, w19
0006a814 add      w8, w8, w20
0006a818 add      w20, w8, w0
0006a81c bl       #0x81450
0006a820 tbz      w0, #0, #0x6a860
0006a824 bl       #0x973c8
0006a828 cbz      x0, #0x6a860
0006a82c mov      x19, x0
0006a830 bl       #0x16834
0006a834 tst      w0, #0xff
0006a838 b.eq     #0x6a860
0006a83c mov      w0, #-0xffffffff80000000
0006a840 bl       #0x1685c
0006a844 tst      w0, #0xff
0006a848 b.eq     #0x6a860
0006a84c adrp     x1, #0xbf000
0006a850 mov      w0, #-0xffffffff80000000
0006a854 add      x1, x1, #0x9ba
0006a858 mov      x2, x19
0006a85c bl       #0x16188
0006a860 sub      x21, x26, #0x150
0006a864 mov      w19, #0x21
0006a868 mov      x0, x21
0006a86c mov      w1, wzr
0006a870 mov      x2, x19
0006a874 mov      x22, x23
0006a878 add      w20, w20, #1
0006a87c bl       #0x1ca9c
0006a880 adrp     x1, #0xa8000
0006a884 mov      w0, wzr
0006a888 add      x1, x1, #0x4da
0006a88c mov      x2, x21
0006a890 mov      x3, x19
0006a894 bl       #0x1e8d8
0006a898 mov      x23, x25
0006a89c cbz      x0, #0x6a8bc
0006a8a0 adrp     x0, #0xbf000
0006a8a4 add      x0, x0, #0xc72
0006a8a8 bl       #0x1b710
0006a8ac add      w19, w20, w0
0006a8b0 mov      x0, x21
0006a8b4 bl       #0x1b710
0006a8b8 add      w20, w19, w0
0006a8bc sub      x25, x26, #0x12c
0006a8c0 mov      w19, #0x24
0006a8c4 mov      x0, x25
0006a8c8 mov      w1, wzr
0006a8cc mov      x2, x19
0006a8d0 bl       #0x1ca9c
0006a8d4 adrp     x1, #0xbf000
0006a8d8 mov      w0, wzr
0006a8dc add      x1, x1, #0x9db
0006a8e0 mov      x2, x25
0006a8e4 mov      x3, x19
0006a8e8 bl       #0x1e8d8
0006a8ec stp      x25, x21, [sp, #0x30]
0006a8f0 cbz      x0, #0x6a910
0006a8f4 mov      x0, x25
0006a8f8 bl       #0x1b710
0006a8fc add      w19, w20, w0
0006a900 adrp     x0, #0xbf000
0006a904 add      x0, x0, #0xc87
0006a908 bl       #0x1b710
0006a90c add      w20, w19, w0
0006a910 sub      x21, x26, #0x1dc
0006a914 adrp     x1, #0xbf000
0006a918 mov      w3, #0x12
0006a91c add      x1, x1, #0x9e4