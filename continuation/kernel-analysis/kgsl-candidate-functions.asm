
FUNCTION {"name": "arm_lpae_map_sg", "va": "0xffffff80086ce230", "offset": "0x64e230", "bytes": 1016}
ffffff80086ce230 sub      sp, sp, #0xc0
ffffff80086ce234 stp      x29, x30, [sp, #0x60]
ffffff80086ce238 add      x29, sp, #0x60
ffffff80086ce23c stp      x28, x27, [sp, #0x70]
ffffff80086ce240 stp      x26, x25, [sp, #0x80]
ffffff80086ce244 stp      x24, x23, [sp, #0x90]
ffffff80086ce248 stp      x22, x21, [sp, #0xa0]
ffffff80086ce24c stp      x20, x19, [sp, #0xb0]
ffffff80086ce250 adrp     x8, #0xffffff800a20d000
ffffff80086ce254 mov      x23, x5
ffffff80086ce258 tst      w4, #3
ffffff80086ce25c ldr      x8, [x8, #0xac8]
ffffff80086ce260 stur     x8, [x29, #-8]
ffffff80086ce264 b.eq     #0xffffff80086ce2e0
ffffff80086ce268 sub      x19, x0, #0x78
ffffff80086ce26c ldr      x9, [x0, #0x50]
ffffff80086ce270 ldr      w27, [x0, #0x30]
ffffff80086ce274 mov      w24, w3
ffffff80086ce278 mov      x22, x1
ffffff80086ce27c ldr      w8, [x19]
ffffff80086ce280 str      x9, [sp, #0x20]
ffffff80086ce284 orr      w8, w8, #2
ffffff80086ce288 cmp      w8, #2
ffffff80086ce28c b.ne     #0xffffff80086ce2ec
ffffff80086ce290 and      w8, w4, #0x20
ffffff80086ce294 mov      w9, #0x840
ffffff80086ce298 tst      w4, #0x20
ffffff80086ce29c mov      w10, #0x8c0
ffffff80086ce2a0 mov      w11, #0x880
ffffff80086ce2a4 eor      w8, w9, w8, lsl #1
ffffff80086ce2a8 csel     x9, x11, x10, ne
ffffff80086ce2ac tst      w4, #2
ffffff80086ce2b0 csel     x8, x9, x8, eq
ffffff80086ce2b4 tst      w4, #0x20
ffffff80086ce2b8 orr      x9, x8, #0x40
ffffff80086ce2bc csel     x8, x8, x9, ne
ffffff80086ce2c0 tbnz     w4, #4, #0xffffff80086ce310
ffffff80086ce2c4 tbnz     w4, #2, #0xffffff80086ce31c
ffffff80086ce2c8 mov      x20, x2
ffffff80086ce2cc tbnz     w4, #6, #0xffffff80086ce61c
ffffff80086ce2d0 lsr      w9, w4, #3
ffffff80086ce2d4 and      w9, w9, #0x10
ffffff80086ce2d8 orr      x8, x8, x9
ffffff80086ce2dc b        #0xffffff80086ce324
ffffff80086ce2e0 mov      x24, xzr
ffffff80086ce2e4 mov      w28, #-0x16
ffffff80086ce2e8 b        #0xffffff80086ce560
ffffff80086ce2ec ubfiz    w8, w4, #6, #2
ffffff80086ce2f0 tbnz     w4, #4, #0xffffff80086ce31c
ffffff80086ce2f4 tst      w4, #4
ffffff80086ce2f8 mov      w9, #0x3c
ffffff80086ce2fc mov      w10, #0x14
ffffff80086ce300 mov      x20, x2
ffffff80086ce304 csel     x9, x10, x9, eq
ffffff80086ce308 orr      x8, x9, x8
ffffff80086ce30c b        #0xffffff80086ce324
ffffff80086ce310 mov      x20, x2
ffffff80086ce314 orr      x8, x8, #8
ffffff80086ce318 b        #0xffffff80086ce324
ffffff80086ce31c mov      x20, x2
ffffff80086ce320 orr      x8, x8, #4
ffffff80086ce324 ldr      x21, [x19, #0x18]
ffffff80086ce328 add      x0, sp, #0x28
ffffff80086ce32c mov      w1, wzr
ffffff80086ce330 mov      w2, #0x30
ffffff80086ce334 orr      x9, x8, #0x60000000000000
ffffff80086ce338 tst      w4, #8
ffffff80086ce33c csel     x26, x8, x9, eq
ffffff80086ce340 bl       #0xffffff800931cb80
ffffff80086ce344 cbz      w24, #0xffffff80086ce56c
ffffff80086ce348 rbit     x8, x21
ffffff80086ce34c mov      w10, #-1
ffffff80086ce350 clz      x8, x8
ffffff80086ce354 mov      w9, #4
ffffff80086ce358 str      w24, [sp, #0x10]
ffffff80086ce35c mov      x24, xzr
ffffff80086ce360 mov      w25, wzr
ffffff80086ce364 mov      w28, #-0x16
ffffff80086ce368 lsl      w8, w10, w8
ffffff80086ce36c sub      w27, w9, w27
ffffff80086ce370 mvn      w8, w8
ffffff80086ce374 mov      x0, x20
ffffff80086ce378 str      x23, [sp, #8]
ffffff80086ce37c str      w8, [sp, #0x14]
ffffff80086ce380 b        #0xffffff80086ce39c
ffffff80086ce384 ldr      x0, [sp, #0x18]
ffffff80086ce388 add      w25, w25, #1
ffffff80086ce38c bl       #0xffffff8008537880
ffffff80086ce390 ldr      w8, [sp, #0x10]
ffffff80086ce394 cmp      w25, w8
ffffff80086ce398 b.eq     #0xffffff80086ce570
ffffff80086ce39c ldr      w8, [x0, #8]
ffffff80086ce3a0 ldr      w9, [sp, #0x14]
ffffff80086ce3a4 tst      w8, w9
ffffff80086ce3a8 b.ne     #0xffffff80086ce55c
ffffff80086ce3ac ldr      w20, [x0, #0xc]
ffffff80086ce3b0 str      x0, [sp, #0x18]
ffffff80086ce3b4 cbz      w20, #0xffffff80086ce384
ffffff80086ce3b8 adrp     x9, #0xffffff8009d2b000
ffffff80086ce3bc ldr      x10, [x0]
ffffff80086ce3c0 ldr      x9, [x9, #0xcd0]
ffffff80086ce3c4 and      x10, x10, #0x3fffffffffffffc
ffffff80086ce3c8 neg      x9, x9, lsr #12
ffffff80086ce3cc sub      x9, x10, x9, lsl #6
ffffff80086ce3d0 add      x8, x8, x9, lsl #6
ffffff80086ce3d4 mov      x9, #0x104000000000
ffffff80086ce3d8 add      x21, x8, x9
ffffff80086ce3dc b        #0xffffff80086ce428
ffffff80086ce3e0 ldr      x6, [sp, #0x20]
ffffff80086ce3e4 mov      x0, x19
ffffff80086ce3e8 mov      x1, x22
ffffff80086ce3ec mov      x2, x21
ffffff80086ce3f0 mov      x3, x23
ffffff80086ce3f4 mov      x4, x26
ffffff80086ce3f8 mov      w5, w27
ffffff80086ce3fc mov      x7, xzr
ffffff80086ce400 add      x8, sp, #0x28
ffffff80086ce404 str      x8, [sp]
ffffff80086ce408 bl       #0xffffff80086ce7d8
ffffff80086ce40c mov      w28, w0
ffffff80086ce410 cbnz     w0, #0xffffff80086ce55c
ffffff80086ce414 add      x22, x23, x22
ffffff80086ce418 add      x24, x23, x24
ffffff80086ce41c add      x21, x23, x21
ffffff80086ce420 subs     x20, x20, x23
ffffff80086ce424 b.eq     #0xffffff80086ce384
ffffff80086ce428 ldr      x0, [x19, #0x18]
ffffff80086ce42c orr      x1, x21, x22
ffffff80086ce430 mov      x2, x20
ffffff80086ce434 bl       #0xffffff80086c8040
ffffff80086ce438 ldr      x8, [sp, #0x38]
ffffff80086ce43c mov      x23, x0
ffffff80086ce440 cbz      x8, #0xffffff80086ce3e0
ffffff80086ce444 ldr      x9, [sp, #0x28]
ffffff80086ce448 cmp      x22, x9
ffffff80086ce44c b.hs     #0xffffff80086ce3e0
ffffff80086ce450 ldr      w9, [x19, #0xa8]
ffffff80086ce454 ldp      x12, x11, [x19, #0xb8]
ffffff80086ce458 cmp      w9, #1
ffffff80086ce45c mov      x9, #-1
ffffff80086ce460 lsr      x10, x22, x12
ffffff80086ce464 lsl      x9, x9, x12
ffffff80086ce468 b.ne     #0xffffff80086ce494
ffffff80086ce46c ldr      x13, [x19, #0xb0]
ffffff80086ce470 mvn      x14, x9
ffffff80086ce474 add      x13, x13, x14
ffffff80086ce478 mov      w14, #0x3f
ffffff80086ce47c lsr      x12, x13, x12
ffffff80086ce480 clz      x13, x12
ffffff80086ce484 sub      w13, w14, w13
ffffff80086ce488 cmp      x12, #0
ffffff80086ce48c csinv    w12, w13, wzr, ne
ffffff80086ce490 b        #0xffffff80086ce498
ffffff80086ce494 mov      w12, wzr
ffffff80086ce498 add      w11, w12, w11
ffffff80086ce49c mov      w12, #-1
ffffff80086ce4a0 lsl      w11, w12, w11
ffffff80086ce4a4 mvn      w11, w11
ffffff80086ce4a8 sxtw     x11, w11
ffffff80086ce4ac and      x10, x10, x11
ffffff80086ce4b0 ldr      x11, [x8, x10, lsl #3]
ffffff80086ce4b4 tbnz     w11, #0, #0xffffff80086ce520
ffffff80086ce4b8 ldr      w11, [x19, #0x10]
ffffff80086ce4bc and      x9, x21, x9
ffffff80086ce4c0 and      x9, x9, #0xfffffffffffc
ffffff80086ce4c4 orr      x12, x26, x9
ffffff80086ce4c8 ldr      x9, [sp, #0x40]
ffffff80086ce4cc lsl      w11, w11, #5
ffffff80086ce4d0 and      x11, x11, #0x20
ffffff80086ce4d4 orr      x11, x12, x11
ffffff80086ce4d8 mov      w12, #0x603
ffffff80086ce4dc orr      x11, x11, x12
ffffff80086ce4e0 str      x11, [x8, x10, lsl #3]
ffffff80086ce4e4 cbz      x9, #0xffffff80086ce538
ffffff80086ce4e8 ldr      x8, [x9]
ffffff80086ce4ec mov      x11, #-0xffd
ffffff80086ce4f0 movk     x11, #0xff8f, lsl #48
ffffff80086ce4f4 lsr      x10, x8, #0x2a
ffffff80086ce4f8 and      w10, w10, #0x1c00
ffffff80086ce4fc bfxil    w10, w8, #2, #0xa
ffffff80086ce500 and      x8, x8, x11
ffffff80086ce504 add      w10, w10, #1
ffffff80086ce508 ubfx     w11, w10, #0xa, #3
ffffff80086ce50c ubfiz    w10, w10, #2, #0xa
ffffff80086ce510 orr      x8, x8, x10
ffffff80086ce514 bfi      x8, x11, #0x34, #3
ffffff80086ce518 str      x8, [x9]
ffffff80086ce51c b        #0xffffff80086ce538
ffffff80086ce520 adrp     x0, #0xffffff800a2d2000
ffffff80086ce524 adrp     x1, #0xffffff8009b76000
ffffff80086ce528 add      x0, x0, #0x798
ffffff80086ce52c add      x1, x1, #0xdd6
ffffff80086ce530 bl       #0xffffff8009329910
ffffff80086ce534 cbnz     w0, #0xffffff80086ce548
ffffff80086ce538 ldr      w8, [sp, #0x50]
ffffff80086ce53c add      w8, w8, #1
ffffff80086ce540 str      w8, [sp, #0x50]
ffffff80086ce544 b        #0xffffff80086ce414
ffffff80086ce548 adrp     x0, #0xffffff8009b76000
ffffff80086ce54c add      x0, x0, #0xde8
ffffff80086ce550 bl       #0xffffff80080bfe08
ffffff80086ce554 brk      #0x800
ffffff80086ce558 b        #0xffffff80086ce538
ffffff80086ce55c ldr      x23, [sp, #8]
ffffff80086ce560 str      x24, [x23]
ffffff80086ce564 mov      w24, w28
ffffff80086ce568 b        #0xffffff80086ce5e4
ffffff80086ce56c mov      x24, xzr
ffffff80086ce570 ldr      x8, [sp, #0x38]
ffffff80086ce574 cbz      x8, #0xffffff80086ce5e0
ffffff80086ce578 ldr      x8, [sp, #0x48]
ffffff80086ce57c tbnz     x8, #0x26, #0xffffff80086ce598
ffffff80086ce580 adrp     x9, #0xffffff8009d2b000
ffffff80086ce584 ldr      x9, [x9, #0xce0]
ffffff80086ce588 sub      x1, x8, x9
ffffff80086ce58c ldrb     w8, [x19, #0x10]
ffffff80086ce590 tbz      w8, #4, #0xffffff80086ce5b0
ffffff80086ce594 b        #0xffffff80086ce5e0
ffffff80086ce598 adrp     x9, #0xffffff8009d2b000
ffffff80086ce59c and      x8, x8, #0x3fffffffff
ffffff80086ce5a0 ldr      x9, [x9, #0xcd0]
ffffff80086ce5a4 add      x1, x9, x8
ffffff80086ce5a8 ldrb     w8, [x19, #0x10]
ffffff80086ce5ac tbnz     w8, #4, #0xffffff80086ce5e0
ffffff80086ce5b0 ldr      x0, [x19, #0x30]
ffffff80086ce5b4 ldr      w8, [sp, #0x50]
ffffff80086ce5b8 cbz      x0, #0xffffff80086ce5c4
ffffff80086ce5bc ldr      x9, [x0, #0x268]
ffffff80086ce5c0 cbnz     x9, #0xffffff80086ce5cc
ffffff80086ce5c4 adrp     x9, #0xffffff8009407000
ffffff80086ce5c8 add      x9, x9, #0
ffffff80086ce5cc ldr      x9, [x9, #0x58]
ffffff80086ce5d0 cbz      x9, #0xffffff80086ce5e0
ffffff80086ce5d4 mov      w3, #1
ffffff80086ce5d8 lsl      x2, x8, #3
ffffff80086ce5dc blr      x9
ffffff80086ce5e0 dsb      st
ffffff80086ce5e4 adrp     x9, #0xffffff800a20d000
ffffff80086ce5e8 ldur     x8, [x29, #-8]
ffffff80086ce5ec ldr      x9, [x9, #0xac8]
ffffff80086ce5f0 cmp      x9, x8
ffffff80086ce5f4 b.ne     #0xffffff80086ce624
ffffff80086ce5f8 mov      w0, w24
ffffff80086ce5fc ldp      x20, x19, [sp, #0xb0]
ffffff80086ce600 ldp      x22, x21, [sp, #0xa0]
ffffff80086ce604 ldp      x24, x23, [sp, #0x90]
ffffff80086ce608 ldp      x26, x25, [sp, #0x80]
ffffff80086ce60c ldp      x28, x27, [sp, #0x70]
ffffff80086ce610 ldp      x29, x30, [sp, #0x60]
ffffff80086ce614 add      sp, sp, #0xc0
ffffff80086ce618 ret      
ffffff80086ce61c orr      x8, x8, #0xc
ffffff80086ce620 b        #0xffffff80086ce324
ffffff80086ce624 bl       #0xffffff80080bfeb8

FUNCTION {"name": "kgsl_ioctl_gpuobj_import", "va": "0xffffff8008730038", "offset": "0x6b0038", "bytes": 1456}
ffffff8008730038 sub      sp, sp, #0x80
ffffff800873003c stp      x29, x30, [sp, #0x20]
ffffff8008730040 add      x29, sp, #0x20
ffffff8008730044 stp      x28, x27, [sp, #0x30]
ffffff8008730048 stp      x26, x25, [sp, #0x40]
ffffff800873004c stp      x24, x23, [sp, #0x50]
ffffff8008730050 stp      x22, x21, [sp, #0x60]
ffffff8008730054 stp      x20, x19, [sp, #0x70]
ffffff8008730058 adrp     x8, #0xffffff800a20d000
ffffff800873005c adrp     x9, #0xffffff8009d2b000
ffffff8008730060 add      x9, x9, #0xe50
ffffff8008730064 mov      x22, x0
ffffff8008730068 mov      w1, #0x80c0
ffffff800873006c mov      x21, x2
ffffff8008730070 ldr      x8, [x8, #0xac8]
ffffff8008730074 mov      w2, #0x150
ffffff8008730078 movk     w1, #0x60, lsl #16
ffffff800873007c stur     x8, [x29, #-8]
ffffff8008730080 ldr      x20, [x0, #8]
ffffff8008730084 ldr      x0, [x9, #0x48]
ffffff8008730088 bl       #0xffffff8008294308
ffffff800873008c cbz      x0, #0xffffff80087301b8
ffffff8008730090 mov      w8, #1
ffffff8008730094 mov      x19, x0
ffffff8008730098 str      w8, [x0]
ffffff800873009c bl       #0xffffff8008542980
ffffff80087300a0 str      wzr, [x19, #0x148]
ffffff80087300a4 mov      x9, #0xff08
ffffff80087300a8 ldr      x8, [x21, #0x10]
ffffff80087300ac movk     x9, #0x91ff, lsl #16
ffffff80087300b0 movk     x9, #1, lsl #32
ffffff80087300b4 add      x23, x19, #8
ffffff80087300b8 mov      x1, x23
ffffff80087300bc and      x2, x8, x9
ffffff80087300c0 str      x2, [x21, #0x10]
ffffff80087300c4 ldr      x0, [x22]
ffffff80087300c8 bl       #0xffffff80087435e8
ffffff80087300cc ldr      w8, [x21, #0x18]
ffffff80087300d0 cmp      w8, #3
ffffff80087300d4 b.eq     #0xffffff80087301c8
ffffff80087300d8 cmp      w8, #2
ffffff80087300dc b.ne     #0xffffff80087302f8
ffffff80087300e0 ldr      w8, [x21, #8]
ffffff80087300e4 mov      x10, #0x1ffffff00
ffffff80087300e8 ldr      x9, [x21, #0x10]
ffffff80087300ec movk     x10, #0x8d00, lsl #16
ffffff80087300f0 ldr      x25, [x22]
ffffff80087300f4 mov      w11, #8
ffffff80087300f8 ldr      x24, [x20, #0x40]
ffffff80087300fc cmp      w8, #8
ffffff8008730100 str      xzr, [sp, #8]
ffffff8008730104 and      x9, x9, x10
ffffff8008730108 csel     w8, w8, w11, lo
ffffff800873010c str      x9, [x21, #0x10]
ffffff8008730110 cbz      w8, #0xffffff8008730300
ffffff8008730114 mov      w26, w8
ffffff8008730118 ldr      x27, [x21]
ffffff800873011c add      x0, sp, #8
ffffff8008730120 mov      x1, x26
ffffff8008730124 mov      w2, wzr
ffffff8008730128 bl       #0xffffff80082ae060
ffffff800873012c mrs      x8, sp_el0
ffffff8008730130 ldrb     w11, [x8, #0x6e]
ffffff8008730134 ldr      x10, [x8, #0x40]
ffffff8008730138 lsl      x9, x27, #8
ffffff800873013c tbnz     w11, #5, #0xffffff800873014c
ffffff8008730140 ldr      x12, [x8]
ffffff8008730144 mov      x11, x27
ffffff8008730148 tbz      w12, #0x1a, #0xffffff8008730150
ffffff800873014c and      x11, x27, x9, asr #8
ffffff8008730150 mov      x2, x26
ffffff8008730154 adds     x11, x11, x26
ffffff8008730158 csel     x10, xzr, x10, hi
ffffff800873015c csinv    x11, x11, xzr, lo
ffffff8008730160 sbcs     xzr, x11, x10
ffffff8008730164 cset     x11, ls
ffffff8008730168 cbz      x11, #0xffffff800873056c
ffffff800873016c add      x0, sp, #8
ffffff8008730170 mov      x2, x26
ffffff8008730174 ldr      x8, [x8, #0x40]
ffffff8008730178 and      x9, x27, x9, asr #8
ffffff800873017c bics     xzr, x9, x8
ffffff8008730180 csel     x1, x27, xzr, eq
ffffff8008730184 csdb     
ffffff8008730188 bl       #0xffffff800931bb80
ffffff800873018c cbnz     x0, #0xffffff8008730568
ffffff8008730190 ldr      x3, [sp, #8]
ffffff8008730194 mov      x0, x25
ffffff8008730198 ldr      x5, [x21, #8]
ffffff800873019c mov      x1, x24
ffffff80087301a0 mov      x2, x19
ffffff80087301a4 mov      x4, xzr
ffffff80087301a8 bl       #0xffffff8008734fd8
ffffff80087301ac sxtw     x26, w0
ffffff80087301b0 mov      w24, #-1
ffffff80087301b4 b        #0xffffff800873032c
ffffff80087301b8 mov      w8, #0x148
ffffff80087301bc mov      x0, #-0xc
ffffff80087301c0 str      wzr, [x8]
ffffff80087301c4 b        #0xffffff80087303b0
ffffff80087301c8 ldr      x25, [x22]
ffffff80087301cc ldrb     w8, [x19, #0x50]
ffffff80087301d0 ldr      x27, [x20, #0x40]
ffffff80087301d4 str      xzr, [sp, #8]
ffffff80087301d8 tbz      w8, #3, #0xffffff80087301f8
ffffff80087301dc ldrb     w8, [x25, #0x181]
ffffff80087301e0 cbz      w8, #0xffffff800873030c
ffffff80087301e4 ldr      x8, [x25, #0x170]
ffffff80087301e8 cbz      x8, #0xffffff800873030c
ffffff80087301ec ldr      w8, [x19, #0x38]
ffffff80087301f0 orr      w8, w8, #0x10
ffffff80087301f4 str      w8, [x19, #0x38]
ffffff80087301f8 ldr      w8, [x21, #8]
ffffff80087301fc mov      w9, #4
ffffff8008730200 cmp      w8, #4
ffffff8008730204 csel     w8, w8, w9, lo
ffffff8008730208 cbz      w8, #0xffffff8008730300
ffffff800873020c mov      w24, w8
ffffff8008730210 ldr      x26, [x21]
ffffff8008730214 add      x0, sp, #0x10
ffffff8008730218 mov      x1, x24
ffffff800873021c mov      w2, wzr
ffffff8008730220 bl       #0xffffff80082ae060
ffffff8008730224 mrs      x8, sp_el0
ffffff8008730228 ldrb     w11, [x8, #0x6e]
ffffff800873022c ldr      x10, [x8, #0x40]
ffffff8008730230 lsl      x9, x26, #8
ffffff8008730234 tbnz     w11, #5, #0xffffff8008730244
ffffff8008730238 ldr      x12, [x8]
ffffff800873023c mov      x11, x26
ffffff8008730240 tbz      w12, #0x1a, #0xffffff8008730248
ffffff8008730244 and      x11, x26, x9, asr #8
ffffff8008730248 mov      x2, x24
ffffff800873024c adds     x11, x11, x24
ffffff8008730250 csel     x10, xzr, x10, hi
ffffff8008730254 csinv    x11, x11, xzr, lo
ffffff8008730258 sbcs     xzr, x11, x10
ffffff800873025c cset     x11, ls
ffffff8008730260 cbz      x11, #0xffffff800873057c
ffffff8008730264 add      x0, sp, #0x10
ffffff8008730268 mov      x2, x24
ffffff800873026c ldr      x8, [x8, #0x40]
ffffff8008730270 and      x9, x26, x9, asr #8
ffffff8008730274 bics     xzr, x9, x8
ffffff8008730278 csel     x1, x26, xzr, eq
ffffff800873027c csdb     
ffffff8008730280 bl       #0xffffff800931bb80
ffffff8008730284 cbnz     x0, #0xffffff8008730578
ffffff8008730288 ldr      w24, [sp, #0x10]
ffffff800873028c mov      x26, #-0x16
ffffff8008730290 tbnz     w24, #0x1f, #0xffffff8008730304
ffffff8008730294 mov      w0, w24
ffffff8008730298 bl       #0xffffff80087f7a00
ffffff800873029c mov      x28, x0
ffffff80087302a0 cbz      x0, #0xffffff8008730324
ffffff80087302a4 cmn      x28, #0xfff
ffffff80087302a8 b.hs     #0xffffff8008730324
ffffff80087302ac add      x1, sp, #8
ffffff80087302b0 mov      x0, x28
ffffff80087302b4 bl       #0xffffff80087f8188
ffffff80087302b8 ldrb     w8, [sp, #8]
ffffff80087302bc tbz      w8, #0, #0xffffff80087302cc
ffffff80087302c0 ldr      x8, [x19, #0x50]
ffffff80087302c4 orr      x8, x8, #0xc000000
ffffff80087302c8 str      x8, [x19, #0x50]
ffffff80087302cc mov      x0, x25
ffffff80087302d0 mov      x1, x27
ffffff80087302d4 mov      x2, x19
ffffff80087302d8 mov      x3, x28
ffffff80087302dc bl       #0xffffff80087353c0
ffffff80087302e0 mov      w25, w0
ffffff80087302e4 cbz      w0, #0xffffff80087302f0
ffffff80087302e8 mov      x0, x28
ffffff80087302ec bl       #0xffffff80087f7a50
ffffff80087302f0 sxtw     x26, w25
ffffff80087302f4 b        #0xffffff800873032c
ffffff80087302f8 mov      w26, #-0x20c
ffffff80087302fc b        #0xffffff80087303a4
ffffff8008730300 mov      x26, #-0x16
ffffff8008730304 mov      w24, #-1
ffffff8008730308 b        #0xffffff800873032c
ffffff800873030c adrp     x8, #0xffffff800a3ea000
ffffff8008730310 ldrb     w9, [x8, #0xc00]
ffffff8008730314 tbz      w9, #0, #0xffffff800873059c
ffffff8008730318 mov      x26, #-0x20c
ffffff800873031c mov      w24, #-1
ffffff8008730320 b        #0xffffff800873032c
ffffff8008730324 cmp      x28, #0
ffffff8008730328 csel     x26, x26, x28, eq
ffffff800873032c cbnz     w26, #0xffffff80087303a4
ffffff8008730330 ldr      x9, [x19, #0x30]
ffffff8008730334 cmp      x9, #0x100, lsl #12
ffffff8008730338 b.lo     #0xffffff800873034c
ffffff800873033c ldr      x8, [x19, #0x50]
ffffff8008730340 mov      x9, #0x14
ffffff8008730344 bfi      x8, x9, #0x10, #8
ffffff8008730348 b        #0xffffff8008730360
ffffff800873034c ldr      x8, [x19, #0x50]
ffffff8008730350 cmp      x9, #0x10, lsl #12
ffffff8008730354 b.lo     #0xffffff8008730364
ffffff8008730358 and      x8, x8, #0xffffffffff00ffff
ffffff800873035c orr      x8, x8, #0x100000
ffffff8008730360 str      x8, [x19, #0x50]
ffffff8008730364 str      x8, [x21, #0x10]
ffffff8008730368 mov      x1, x20
ffffff800873036c ldr      x0, [x22]
ffffff8008730370 mov      x2, x19
ffffff8008730374 bl       #0xffffff80087305e8
ffffff8008730378 cbz      w0, #0xffffff80087303e4
ffffff800873037c ldr      x8, [x19, #0x50]
ffffff8008730380 mov      w26, w0
ffffff8008730384 and      x8, x8, #0xe0
ffffff8008730388 cmp      x8, #0x80
ffffff800873038c b.ne     #0xffffff800873039c
ffffff8008730390 ldr      x0, [x19, #0x90]
ffffff8008730394 bl       #0xffffff8008730890
ffffff8008730398 str      xzr, [x19, #0x40]
ffffff800873039c mov      x0, x23
ffffff80087303a0 bl       #0xffffff8008743ef8
ffffff80087303a4 mov      x0, x19
ffffff80087303a8 bl       #0xffffff80082965e8
ffffff80087303ac sxtw     x0, w26
ffffff80087303b0 adrp     x9, #0xffffff800a20d000
ffffff80087303b4 ldur     x8, [x29, #-8]
ffffff80087303b8 ldr      x9, [x9, #0xac8]
ffffff80087303bc cmp      x9, x8
ffffff80087303c0 b.ne     #0xffffff80087305e4
ffffff80087303c4 ldp      x20, x19, [sp, #0x70]
ffffff80087303c8 ldp      x22, x21, [sp, #0x60]
ffffff80087303cc ldp      x24, x23, [sp, #0x50]
ffffff80087303d0 ldp      x26, x25, [sp, #0x40]
ffffff80087303d4 ldp      x28, x27, [sp, #0x30]
ffffff80087303d8 ldp      x29, x30, [sp, #0x20]
ffffff80087303dc add      sp, sp, #0x80
ffffff80087303e0 ret      
ffffff80087303e4 ldr      w9, [x19, #0xb0]
ffffff80087303e8 adrp     x8, #0xffffff800a2d4000
ffffff80087303ec add      x8, x8, #0xe38
ffffff80087303f0 ldr      x10, [x19, #0x30]
ffffff80087303f4 add      x11, x8, #0x4f8
ffffff80087303f8 str      w9, [x21, #0x1c]
ffffff80087303fc prfm     pstl1strm, [x11]
ffffff8008730400 ldxr     x9, [x11]
ffffff8008730404 add      x9, x9, x10
ffffff8008730408 stlxr    w12, x9, [x11]
ffffff800873040c cbnz     w12, #0xffffff8008730400
ffffff8008730410 dmb      ish
ffffff8008730414 ldr      x10, [x8, #0x500]
ffffff8008730418 cmp      x9, x10
ffffff800873041c b.ls     #0xffffff8008730424
ffffff8008730420 str      x9, [x8, #0x500]
ffffff8008730424 ldr      x8, [x19, #0x50]
ffffff8008730428 ubfx     x9, x8, #5, #3
ffffff800873042c ldr      x8, [x19, #0x30]
ffffff8008730430 add      x9, x20, x9, lsl #4
ffffff8008730434 add      x11, x9, #0xc0
ffffff8008730438 prfm     pstl1strm, [x11]
ffffff800873043c ldxr     x10, [x11]
ffffff8008730440 add      x10, x10, x8
ffffff8008730444 stlxr    w12, x10, [x11]
ffffff8008730448 cbnz     w12, #0xffffff800873043c
ffffff800873044c dmb      ish
ffffff8008730450 ldr      x11, [x9, #0xc8]!
ffffff8008730454 cmp      x10, x11
ffffff8008730458 b.ls     #0xffffff8008730460
ffffff800873045c str      x10, [x9]
ffffff8008730460 mrs      x20, sp_el0
ffffff8008730464 ldr      x0, [x20, #0x578]
ffffff8008730468 mov      w1, #4
ffffff800873046c lsr      x3, x8, #0xc
ffffff8008730470 add      x9, x0, #0x2e0
ffffff8008730474 prfm     pstl1strm, [x9]
ffffff8008730478 ldxr     x2, [x9]
ffffff800873047c add      x2, x2, x3
ffffff8008730480 stlxr    w8, x2, [x9]
ffffff8008730484 cbnz     w8, #0xffffff8008730478
ffffff8008730488 dmb      ish
ffffff800873048c bl       #0xffffff8008270430
ffffff8008730490 adrp     x8, #0xffffff800a3f1000
ffffff8008730494 add      x8, x8, #0x358
ffffff8008730498 ldr      w9, [x8, #8]
ffffff800873049c cmp      w9, #1
ffffff80087304a0 b.lt     #0xffffff8008730520
ffffff80087304a4 adrp     x10, #0xffffff8009ed6000
ffffff80087304a8 mrs      x9, tpidr_el1
ffffff80087304ac add      x10, x10, #0x18
ffffff80087304b0 adrp     x11, #0xffffff800a20d000
ffffff80087304b4 add      x11, x11, #0xb00
ffffff80087304b8 ldr      w9, [x9, x10]
ffffff80087304bc add      w10, w9, #0x3f
ffffff80087304c0 cmp      w9, #0
ffffff80087304c4 csel     w10, w10, w9, lt
ffffff80087304c8 asr      w10, w10, #6
ffffff80087304cc ldr      x10, [x11, w10, sxtw #3]
ffffff80087304d0 lsr      x9, x10, x9
ffffff80087304d4 tbz      w9, #0, #0xffffff8008730520
ffffff80087304d8 ldr      w9, [x20, #0x50]
ffffff80087304dc add      w9, w9, #1
ffffff80087304e0 str      w9, [x20, #0x50]
ffffff80087304e4 ldr      x21, [x8, #0x20]
ffffff80087304e8 cbz      x21, #0xffffff8008730508
ffffff80087304ec ldr      x8, [x21], #0x18
ffffff80087304f0 ldur     x0, [x21, #-0x10]
ffffff80087304f4 mov      x1, x19
ffffff80087304f8 mov      w2, w24
ffffff80087304fc blr      x8
ffffff8008730500 ldr      x8, [x21], #0x18
ffffff8008730504 cbnz     x8, #0xffffff80087304f0
ffffff8008730508 ldr      w8, [x20, #0x50]
ffffff800873050c subs     w8, w8, #1
ffffff8008730510 str      w8, [x20, #0x50]
ffffff8008730514 b.ne     #0xffffff8008730520
ffffff8008730518 ldr      x8, [x20]
ffffff800873051c tbnz     w8, #1, #0xffffff80087305dc
ffffff8008730520 ldr      x8, [x19, #0xb8]
ffffff8008730524 add      x0, x8, #0x20
ffffff8008730528 bl       #0xffffff800933c360
ffffff800873052c ldr      x8, [x19, #0xb8]
ffffff8008730530 mov      x1, x19
ffffff8008730534 ldr      w2, [x19, #0xb0]
ffffff8008730538 add      x0, x8, #0x28
ffffff800873053c bl       #0xffffff80093234d8
ffffff8008730540 ldr      x8, [x19, #0xb8]
ffffff8008730544 add      x0, x8, #0x20
ffffff8008730548 bl       #0xffffff800933c4b8
ffffff800873054c mov      x0, x19
ffffff8008730550 bl       #0xffffff8008542a60
ffffff8008730554 tbz      w0, #0, #0xffffff8008730560
ffffff8008730558 mov      x0, x19
ffffff800873055c bl       #0xffffff800872d600
ffffff8008730560 mov      x0, xzr
ffffff8008730564 b        #0xffffff80087303b0
ffffff8008730568 mov      x2, x0
ffffff800873056c sub      x8, x26, x2
ffffff8008730570 add      x9, sp, #8
ffffff8008730574 b        #0xffffff8008730584
ffffff8008730578 mov      x2, x0
ffffff800873057c sub      x8, x24, x2
ffffff8008730580 add      x9, sp, #0x10
ffffff8008730584 add      x0, x9, x8
ffffff8008730588 mov      w1, wzr
ffffff800873058c bl       #0xffffff800931cb80
ffffff8008730590 mov      x26, #-0xe
ffffff8008730594 mov      w24, #-1
ffffff8008730598 b        #0xffffff800873032c
ffffff800873059c ldr      x0, [x25]
ffffff80087305a0 mov      w9, #1
ffffff80087305a4 strb     w9, [x8, #0xc00]
ffffff80087305a8 bl       #0xffffff800879c600
ffffff80087305ac ldr      x8, [x25]
ffffff80087305b0 mov      x1, x0
ffffff80087305b4 ldr      x2, [x8, #0x70]
ffffff80087305b8 cbnz     x2, #0xffffff80087305c0
ffffff80087305bc ldr      x2, [x8, #0x10]
ffffff80087305c0 adrp     x0, #0xffffff8009b80000
ffffff80087305c4 add      x0, x0, #0xa49
ffffff80087305c8 bl       #0xffffff80080bfe08
ffffff80087305cc mov      x26, #-0x20c
ffffff80087305d0 mov      w24, #-1
ffffff80087305d4 brk      #0x800
ffffff80087305d8 b        #0xffffff800873032c
ffffff80087305dc bl       #0xffffff80093363f0
ffffff80087305e0 b        #0xffffff8008730520
ffffff80087305e4 bl       #0xffffff80080bfeb8

FUNCTION {"name": "kgsl_ioctl_map_user_mem", "va": "0xffffff8008730a08", "offset": "0x6b0a08", "bytes": 1200}
ffffff8008730a08 sub      sp, sp, #0x70
ffffff8008730a0c stp      x29, x30, [sp, #0x10]
ffffff8008730a10 add      x29, sp, #0x10
ffffff8008730a14 stp      x28, x27, [sp, #0x20]
ffffff8008730a18 stp      x26, x25, [sp, #0x30]
ffffff8008730a1c stp      x24, x23, [sp, #0x40]
ffffff8008730a20 stp      x22, x21, [sp, #0x50]
ffffff8008730a24 stp      x20, x19, [sp, #0x60]
ffffff8008730a28 ldr      w8, [x2, #0x2c]
ffffff8008730a2c mov      x20, x2
ffffff8008730a30 ldp      x26, x21, [x0]
ffffff8008730a34 mov      x22, x0
ffffff8008730a38 tbnz     w8, #3, #0xffffff8008730ae4
ffffff8008730a3c adrp     x8, #0xffffff8009d2b000
ffffff8008730a40 mov      w1, #0x80c0
ffffff8008730a44 add      x8, x8, #0xe50
ffffff8008730a48 mov      w2, #0x150
ffffff8008730a4c movk     w1, #0x60, lsl #16
ffffff8008730a50 ldr      x0, [x8, #0x48]
ffffff8008730a54 bl       #0xffffff8008294308
ffffff8008730a58 cbz      x0, #0xffffff8008730b1c
ffffff8008730a5c mov      w8, #1
ffffff8008730a60 mov      x19, x0
ffffff8008730a64 str      w8, [x0]
ffffff8008730a68 bl       #0xffffff8008542980
ffffff8008730a6c str      wzr, [x19, #0x148]
ffffff8008730a70 mrs      x28, sp_el0
ffffff8008730a74 ldp      w24, w8, [x20, #0x28]
ffffff8008730a78 mov      w10, #0xff08
ffffff8008730a7c add      x23, x19, #8
ffffff8008730a80 ldr      x9, [x28]
ffffff8008730a84 movk     w10, #0x91ff, lsl #16
ffffff8008730a88 ldr      x0, [x22]
ffffff8008730a8c mov      x1, x23
ffffff8008730a90 and      x2, x8, x10
ffffff8008730a94 lsr      x9, x9, #0x16
ffffff8008730a98 bfi      x2, x9, #0x20, #1
ffffff8008730a9c bl       #0xffffff80087435e8
ffffff8008730aa0 cmp      w24, #3
ffffff8008730aa4 b.eq     #0xffffff8008730b2c
ffffff8008730aa8 cmp      w24, #2
ffffff8008730aac b.ne     #0xffffff8008730ba8
ffffff8008730ab0 ldr      x0, [x22]
ffffff8008730ab4 ldrb     w8, [x0, #0x189]
ffffff8008730ab8 tbz      w8, #0, #0xffffff8008730be8
ffffff8008730abc ldrb     w8, [x19, #0x50]
ffffff8008730ac0 tbnz     w8, #3, #0xffffff8008730be8
ffffff8008730ac4 ldr      x1, [x21, #0x40]
ffffff8008730ac8 mov      x2, x19
ffffff8008730acc ldp      x4, x3, [x20, #0x18]
ffffff8008730ad0 ldr      x5, [x20, #0x10]
ffffff8008730ad4 bl       #0xffffff8008734fd8
ffffff8008730ad8 mov      w24, w0
ffffff8008730adc cbnz     w0, #0xffffff8008730bec
ffffff8008730ae0 b        #0xffffff8008730bb0
ffffff8008730ae4 cmn      x26, #0x158
ffffff8008730ae8 b.eq     #0xffffff8008730b08
ffffff8008730aec ldrb     w9, [x26, #0x181]
ffffff8008730af0 cbz      w9, #0xffffff8008730b08
ffffff8008730af4 ldr      x9, [x26, #0x170]
ffffff8008730af8 cbz      x9, #0xffffff8008730b08
ffffff8008730afc tbz      w8, #0x1c, #0xffffff8008730a3c
ffffff8008730b00 mov      x0, #-0x16
ffffff8008730b04 b        #0xffffff8008730bfc
ffffff8008730b08 adrp     x8, #0xffffff800a3ea000
ffffff8008730b0c ldrb     w9, [x8, #0xbfe]
ffffff8008730b10 tbz      w9, #0, #0xffffff8008730e34
ffffff8008730b14 mov      x0, #-0x5f
ffffff8008730b18 b        #0xffffff8008730bfc
ffffff8008730b1c mov      w8, #0x148
ffffff8008730b20 mov      x0, #-0xc
ffffff8008730b24 str      wzr, [x8]
ffffff8008730b28 b        #0xffffff8008730bfc
ffffff8008730b2c ldr      x8, [x20, #0x18]
ffffff8008730b30 mov      w24, #-0x16
ffffff8008730b34 cbnz     x8, #0xffffff8008730bec
ffffff8008730b38 ldr      x25, [x22]
ffffff8008730b3c ldr      x9, [x21, #0x40]
ffffff8008730b40 ldrb     w8, [x19, #0x50]
ffffff8008730b44 ldr      w0, [x20]
ffffff8008730b48 tbz      w8, #3, #0xffffff8008730b68
ffffff8008730b4c ldrb     w8, [x25, #0x181]
ffffff8008730b50 cbz      w8, #0xffffff8008730bdc
ffffff8008730b54 ldr      x8, [x25, #0x170]
ffffff8008730b58 cbz      x8, #0xffffff8008730bdc
ffffff8008730b5c ldr      w8, [x19, #0x38]
ffffff8008730b60 orr      w8, w8, #0x10
ffffff8008730b64 str      w8, [x19, #0x38]
ffffff8008730b68 str      x9, [sp, #8]
ffffff8008730b6c bl       #0xffffff80087f7a00
ffffff8008730b70 mov      x27, x0
ffffff8008730b74 cbz      x0, #0xffffff8008730bd0
ffffff8008730b78 cmn      x27, #0xfff
ffffff8008730b7c b.hs     #0xffffff8008730bd0
ffffff8008730b80 ldr      x1, [sp, #8]
ffffff8008730b84 mov      x0, x25
ffffff8008730b88 mov      x2, x19
ffffff8008730b8c mov      x3, x27
ffffff8008730b90 bl       #0xffffff80087353c0
ffffff8008730b94 cbz      w0, #0xffffff8008730bb0
ffffff8008730b98 mov      w24, w0
ffffff8008730b9c mov      x0, x27
ffffff8008730ba0 bl       #0xffffff80087f7a50
ffffff8008730ba4 b        #0xffffff8008730bec
ffffff8008730ba8 mov      w24, #-0x5f
ffffff8008730bac b        #0xffffff8008730bec
ffffff8008730bb0 ldrb     w8, [x20, #0x2c]
ffffff8008730bb4 ldr      x9, [x19, #0x30]
ffffff8008730bb8 tbz      w8, #3, #0xffffff8008730c1c
ffffff8008730bbc ldr      w8, [x26, #0x190]
ffffff8008730bc0 tst      x9, x8
ffffff8008730bc4 b.eq     #0xffffff8008730c1c
ffffff8008730bc8 mov      w24, #-0x16
ffffff8008730bcc b        #0xffffff8008730c80
ffffff8008730bd0 cmp      w27, #0
ffffff8008730bd4 csel     w24, w24, w27, eq
ffffff8008730bd8 b        #0xffffff8008730bec
ffffff8008730bdc adrp     x8, #0xffffff800a3ea000
ffffff8008730be0 ldrb     w9, [x8, #0xc01]
ffffff8008730be4 tbz      w9, #0, #0xffffff8008730e74
ffffff8008730be8 mov      w24, #-0x16
ffffff8008730bec mov      x0, x19
ffffff8008730bf0 str      xzr, [x20, #8]
ffffff8008730bf4 bl       #0xffffff80082965e8
ffffff8008730bf8 sxtw     x0, w24
ffffff8008730bfc ldp      x20, x19, [sp, #0x60]
ffffff8008730c00 ldp      x22, x21, [sp, #0x50]
ffffff8008730c04 ldp      x24, x23, [sp, #0x40]
ffffff8008730c08 ldp      x26, x25, [sp, #0x30]
ffffff8008730c0c ldp      x28, x27, [sp, #0x20]
ffffff8008730c10 ldp      x29, x30, [sp, #0x10]
ffffff8008730c14 add      sp, sp, #0x70
ffffff8008730c18 ret      
ffffff8008730c1c cmp      x9, #0x200, lsl #12
ffffff8008730c20 b.lo     #0xffffff8008730c34
ffffff8008730c24 ldr      x8, [x19, #0x50]
ffffff8008730c28 mov      x9, #0x15
ffffff8008730c2c bfi      x8, x9, #0x10, #8
ffffff8008730c30 b        #0xffffff8008730c60
ffffff8008730c34 cmp      x9, #0x100, lsl #12
ffffff8008730c38 b.lo     #0xffffff8008730c4c
ffffff8008730c3c ldr      x8, [x19, #0x50]
ffffff8008730c40 mov      x9, #0x14
ffffff8008730c44 bfi      x8, x9, #0x10, #8
ffffff8008730c48 b        #0xffffff8008730c60
ffffff8008730c4c ldr      x8, [x19, #0x50]
ffffff8008730c50 cmp      x9, #0x10, lsl #12
ffffff8008730c54 b.lo     #0xffffff8008730c64
ffffff8008730c58 and      x8, x8, #0xffffffffff00ffff
ffffff8008730c5c orr      x8, x8, #0x60000
ffffff8008730c60 str      x8, [x19, #0x50]
ffffff8008730c64 str      w8, [x20, #0x2c]
ffffff8008730c68 mov      x1, x21
ffffff8008730c6c ldr      x0, [x22]
ffffff8008730c70 mov      x2, x19
ffffff8008730c74 bl       #0xffffff80087305e8
ffffff8008730c78 mov      w24, w0
ffffff8008730c7c cbz      w0, #0xffffff8008730ca8
ffffff8008730c80 ldr      x8, [x19, #0x50]
ffffff8008730c84 and      x8, x8, #0xe0
ffffff8008730c88 cmp      x8, #0x80
ffffff8008730c8c b.ne     #0xffffff8008730c9c
ffffff8008730c90 ldr      x0, [x19, #0x90]
ffffff8008730c94 bl       #0xffffff8008730890
ffffff8008730c98 str      xzr, [x19, #0x40]
ffffff8008730c9c mov      x0, x23
ffffff8008730ca0 bl       #0xffffff8008743ef8
ffffff8008730ca4 b        #0xffffff8008730bec
ffffff8008730ca8 ldp      x10, x8, [x20, #0x10]
ffffff8008730cac ldr      x9, [x19, #0x20]
ffffff8008730cb0 and      x8, x8, #0xfffffffffffff000
ffffff8008730cb4 add      x9, x8, x9
ffffff8008730cb8 adrp     x8, #0xffffff800a2d4000
ffffff8008730cbc add      x8, x8, #0xe38
ffffff8008730cc0 add      x11, x8, #0x4f8
ffffff8008730cc4 str      x9, [x20, #8]
ffffff8008730cc8 prfm     pstl1strm, [x11]
ffffff8008730ccc ldxr     x9, [x11]
ffffff8008730cd0 add      x9, x9, x10
ffffff8008730cd4 stlxr    w12, x9, [x11]
ffffff8008730cd8 cbnz     w12, #0xffffff8008730ccc
ffffff8008730cdc dmb      ish
ffffff8008730ce0 ldr      x10, [x8, #0x500]
ffffff8008730ce4 cmp      x9, x10
ffffff8008730ce8 b.ls     #0xffffff8008730cf0
ffffff8008730cec str      x9, [x8, #0x500]
ffffff8008730cf0 ldr      x8, [x19, #0x50]
ffffff8008730cf4 ubfx     x9, x8, #5, #3
ffffff8008730cf8 ldr      x8, [x20, #0x10]
ffffff8008730cfc add      x9, x21, x9, lsl #4
ffffff8008730d00 add      x11, x9, #0xc0
ffffff8008730d04 prfm     pstl1strm, [x11]
ffffff8008730d08 ldxr     x10, [x11]
ffffff8008730d0c add      x10, x10, x8
ffffff8008730d10 stlxr    w12, x10, [x11]
ffffff8008730d14 cbnz     w12, #0xffffff8008730d08
ffffff8008730d18 dmb      ish
ffffff8008730d1c ldr      x11, [x9, #0xc8]!
ffffff8008730d20 cmp      x10, x11
ffffff8008730d24 b.ls     #0xffffff8008730d2c
ffffff8008730d28 str      x10, [x9]
ffffff8008730d2c ldr      x0, [x28, #0x578]
ffffff8008730d30 mov      w1, #4
ffffff8008730d34 lsr      x3, x8, #0xc
ffffff8008730d38 add      x9, x0, #0x2e0
ffffff8008730d3c prfm     pstl1strm, [x9]
ffffff8008730d40 ldxr     x2, [x9]
ffffff8008730d44 add      x2, x2, x3
ffffff8008730d48 stlxr    w8, x2, [x9]
ffffff8008730d4c cbnz     w8, #0xffffff8008730d40
ffffff8008730d50 dmb      ish
ffffff8008730d54 bl       #0xffffff8008270430
ffffff8008730d58 adrp     x8, #0xffffff800a3f1000
ffffff8008730d5c ldr      w20, [x20]
ffffff8008730d60 add      x8, x8, #0x358
ffffff8008730d64 ldr      w9, [x8, #8]
ffffff8008730d68 cmp      w9, #1
ffffff8008730d6c b.lt     #0xffffff8008730dec
ffffff8008730d70 adrp     x10, #0xffffff8009ed6000
ffffff8008730d74 mrs      x9, tpidr_el1
ffffff8008730d78 add      x10, x10, #0x18
ffffff8008730d7c adrp     x11, #0xffffff800a20d000
ffffff8008730d80 add      x11, x11, #0xb00
ffffff8008730d84 ldr      w9, [x9, x10]
ffffff8008730d88 add      w10, w9, #0x3f
ffffff8008730d8c cmp      w9, #0
ffffff8008730d90 csel     w10, w10, w9, lt
ffffff8008730d94 asr      w10, w10, #6
ffffff8008730d98 ldr      x10, [x11, w10, sxtw #3]
ffffff8008730d9c lsr      x9, x10, x9
ffffff8008730da0 tbz      w9, #0, #0xffffff8008730dec
ffffff8008730da4 ldr      w9, [x28, #0x50]
ffffff8008730da8 add      w9, w9, #1
ffffff8008730dac str      w9, [x28, #0x50]
ffffff8008730db0 ldr      x21, [x8, #0x20]
ffffff8008730db4 cbz      x21, #0xffffff8008730dd4
ffffff8008730db8 ldr      x8, [x21], #0x18
ffffff8008730dbc ldur     x0, [x21, #-0x10]
ffffff8008730dc0 mov      x1, x19
ffffff8008730dc4 mov      w2, w20
ffffff8008730dc8 blr      x8
ffffff8008730dcc ldr      x8, [x21], #0x18
ffffff8008730dd0 cbnz     x8, #0xffffff8008730dbc
ffffff8008730dd4 ldr      w8, [x28, #0x50]
ffffff8008730dd8 subs     w8, w8, #1
ffffff8008730ddc str      w8, [x28, #0x50]
ffffff8008730de0 b.ne     #0xffffff8008730dec
ffffff8008730de4 ldr      x8, [x28]
ffffff8008730de8 tbnz     w8, #1, #0xffffff8008730eb0
ffffff8008730dec ldr      x8, [x19, #0xb8]
ffffff8008730df0 add      x0, x8, #0x20
ffffff8008730df4 bl       #0xffffff800933c360
ffffff8008730df8 ldr      x8, [x19, #0xb8]
ffffff8008730dfc mov      x1, x19
ffffff8008730e00 ldr      w2, [x19, #0xb0]
ffffff8008730e04 add      x0, x8, #0x28
ffffff8008730e08 bl       #0xffffff80093234d8
ffffff8008730e0c ldr      x8, [x19, #0xb8]
ffffff8008730e10 add      x0, x8, #0x20
ffffff8008730e14 bl       #0xffffff800933c4b8
ffffff8008730e18 mov      x0, x19
ffffff8008730e1c bl       #0xffffff8008542a60
ffffff8008730e20 tbz      w0, #0, #0xffffff8008730e2c
ffffff8008730e24 mov      x0, x19
ffffff8008730e28 bl       #0xffffff800872d600
ffffff8008730e2c mov      x0, xzr
ffffff8008730e30 b        #0xffffff8008730bfc
ffffff8008730e34 ldr      x0, [x26]
ffffff8008730e38 mov      w9, #1
ffffff8008730e3c strb     w9, [x8, #0xbfe]
ffffff8008730e40 bl       #0xffffff800879c600
ffffff8008730e44 ldr      x8, [x22]
ffffff8008730e48 mov      x1, x0
ffffff8008730e4c ldr      x8, [x8]
ffffff8008730e50 ldr      x2, [x8, #0x70]
ffffff8008730e54 cbnz     x2, #0xffffff8008730e5c
ffffff8008730e58 ldr      x2, [x8, #0x10]
ffffff8008730e5c adrp     x0, #0xffffff8009b80000
ffffff8008730e60 add      x0, x0, #0xa49
ffffff8008730e64 bl       #0xffffff80080bfe08
ffffff8008730e68 mov      x0, #-0x5f
ffffff8008730e6c brk      #0x800
ffffff8008730e70 b        #0xffffff8008730bfc
ffffff8008730e74 ldr      x0, [x25]
ffffff8008730e78 mov      w9, #1
ffffff8008730e7c strb     w9, [x8, #0xc01]
ffffff8008730e80 bl       #0xffffff800879c600
ffffff8008730e84 ldr      x8, [x25]
ffffff8008730e88 mov      x1, x0
ffffff8008730e8c ldr      x2, [x8, #0x70]
ffffff8008730e90 cbnz     x2, #0xffffff8008730e98
ffffff8008730e94 ldr      x2, [x8, #0x10]
ffffff8008730e98 adrp     x0, #0xffffff8009b80000
ffffff8008730e9c add      x0, x0, #0xa49
ffffff8008730ea0 bl       #0xffffff80080bfe08
ffffff8008730ea4 mov      w24, #-0x16
ffffff8008730ea8 brk      #0x800
ffffff8008730eac b        #0xffffff8008730bec
ffffff8008730eb0 bl       #0xffffff80093363f0
ffffff8008730eb4 b        #0xffffff8008730dec

FUNCTION {"name": "kgsl_setup_useraddr", "va": "0xffffff8008734fd8", "offset": "0x6b4fd8", "bytes": 984}
ffffff8008734fd8 stp      x29, x30, [sp, #-0x60]!
ffffff8008734fdc stp      x28, x27, [sp, #0x10]
ffffff8008734fe0 mov      x29, sp
ffffff8008734fe4 stp      x26, x25, [sp, #0x20]
ffffff8008734fe8 stp      x24, x23, [sp, #0x30]
ffffff8008734fec stp      x22, x21, [sp, #0x40]
ffffff8008734ff0 stp      x20, x19, [sp, #0x50]
ffffff8008734ff4 mov      w23, #-0x16
ffffff8008734ff8 cbz      x3, #0xffffff800873538c
ffffff8008734ffc mov      x20, x3
ffffff8008735000 and      x8, x3, #0xfff
ffffff8008735004 cbnz     x8, #0xffffff800873538c
ffffff8008735008 mrs      x27, sp_el0
ffffff800873500c ldr      x8, [x27, #0x578]
ffffff8008735010 mov      x25, x0
ffffff8008735014 mov      x22, x5
ffffff8008735018 mov      x21, x4
ffffff800873501c mov      x19, x2
ffffff8008735020 mov      x24, x1
ffffff8008735024 add      x0, x8, #0x68
ffffff8008735028 bl       #0xffffff8009339050
ffffff800873502c ldr      x0, [x27, #0x578]
ffffff8008735030 mov      x1, x20
ffffff8008735034 bl       #0xffffff800827acc0
ffffff8008735038 cbz      x0, #0xffffff80087350e4
ffffff800873503c ldr      x3, [x0, #0xa0]
ffffff8008735040 mov      x26, x0
ffffff8008735044 cbz      x3, #0xffffff80087350e4
ffffff8008735048 ldrb     w8, [x19, #0x53]
ffffff800873504c ldr      w9, [x26, #0x50]
ffffff8008735050 tst      w8, #1
ffffff8008735054 mov      w8, #3
ffffff8008735058 csinc    x8, x8, xzr, eq
ffffff800873505c mvn      w9, w9
ffffff8008735060 tst      x9, x8
ffffff8008735064 b.ne     #0xffffff80087351f8
ffffff8008735068 ldr      x8, [x26, #0x90]
ffffff800873506c adrp     x9, #0xffffff80097da000
ffffff8008735070 add      x9, x9, #0xfe0
ffffff8008735074 cmp      x8, x9
ffffff8008735078 b.eq     #0xffffff80087351f8
ffffff800873507c ldr      x0, [x27, #0x800]
ffffff8008735080 adrp     x2, #0xffffff8008735000
ffffff8008735084 add      x2, x2, #0x3b0
ffffff8008735088 mov      w1, wzr
ffffff800873508c bl       #0xffffff80082def08
ffffff8008735090 cbz      w0, #0xffffff80087350e4
ffffff8008735094 sub      w0, w0, #1
ffffff8008735098 bl       #0xffffff80087f7a00
ffffff800873509c mov      x23, x0
ffffff80087350a0 cbz      x0, #0xffffff800873528c
ffffff80087350a4 cmn      x23, #0xfff
ffffff80087350a8 b.hs     #0xffffff800873528c
ffffff80087350ac mov      x0, x25
ffffff80087350b0 mov      x1, x24
ffffff80087350b4 mov      x2, x19
ffffff80087350b8 mov      x3, x23
ffffff80087350bc bl       #0xffffff80087353c0
ffffff80087350c0 cbz      w0, #0xffffff80087352b0
ffffff80087350c4 mov      w25, w0
ffffff80087350c8 mov      x0, x23
ffffff80087350cc bl       #0xffffff80087f7a50
ffffff80087350d0 ldr      x8, [x27, #0x578]
ffffff80087350d4 add      x0, x8, #0x68
ffffff80087350d8 bl       #0xffffff8008146408
ffffff80087350dc mov      w23, w25
ffffff80087350e0 b        #0xffffff800873529c
ffffff80087350e4 ldr      x8, [x27, #0x578]
ffffff80087350e8 add      x0, x8, #0x68
ffffff80087350ec bl       #0xffffff8008146408
ffffff80087350f0 mov      w23, #-0x16
ffffff80087350f4 cbz      x22, #0xffffff800873538c
ffffff80087350f8 and      x8, x22, #0xfff
ffffff80087350fc orr      x8, x8, x21
ffffff8008735100 cbnz     x8, #0xffffff800873538c
ffffff8008735104 mov      x21, x19
ffffff8008735108 str      x24, [x21, #8]!
ffffff800873510c ldr      x8, [x21, #0x48]
ffffff8008735110 str      x22, [x21, #0x28]
ffffff8008735114 orr      x23, x8, #0x60
ffffff8008735118 str      x23, [x21, #0x48]
ffffff800873511c tbz      w8, #0x1c, #0xffffff8008735144
ffffff8008735120 mov      x0, x24
ffffff8008735124 mov      x1, x20
ffffff8008735128 mov      x2, x22
ffffff800873512c bl       #0xffffff800874dce0
ffffff8008735130 mov      w23, w0
ffffff8008735134 cbnz     w0, #0xffffff800873538c
ffffff8008735138 ldr      x22, [x19, #0x30]
ffffff800873513c ldr      x23, [x19, #0x50]
ffffff8008735140 str      x20, [x19, #0x20]
ffffff8008735144 lsr      x24, x22, #0xc
ffffff8008735148 cbz      x24, #0xffffff800873520c
ffffff800873514c mov      w25, #0xc0
ffffff8008735150 mov      w2, #-1
ffffff8008735154 movk     w25, #0x60, lsl #16
ffffff8008735158 lsl      x0, x24, #3
ffffff800873515c orr      w1, w25, #0x8000
ffffff8008735160 bl       #0xffffff8008256e50
ffffff8008735164 cbz      x0, #0xffffff8008735214
ffffff8008735168 adrp     x8, #0xffffff8009d2b000
ffffff800873516c mov      x22, x0
ffffff8008735170 add      x8, x8, #0xe50
ffffff8008735174 mov      w1, w25
ffffff8008735178 mov      w2, #0x10
ffffff800873517c ldr      x0, [x8, #0x38]
ffffff8008735180 bl       #0xffffff8008294308
ffffff8008735184 str      x0, [x19, #0x40]
ffffff8008735188 cbz      x0, #0xffffff80087352a8
ffffff800873518c ldr      x8, [x27, #0x578]
ffffff8008735190 add      x0, x8, #0x68
ffffff8008735194 bl       #0xffffff8009339050
ffffff8008735198 ldr      x8, [x19, #0x30]
ffffff800873519c add      x26, x8, x20
ffffff80087351a0 cmp      x26, x20
ffffff80087351a4 b.ls     #0xffffff800873521c
ffffff80087351a8 adrp     x28, #0xffffff80097da000
ffffff80087351ac mov      x1, x20
ffffff80087351b0 add      x28, x28, #0xfe0
ffffff80087351b4 b        #0xffffff80087351c4
ffffff80087351b8 ldr      x1, [x0, #8]
ffffff80087351bc cmp      x1, x26
ffffff80087351c0 b.hs     #0xffffff800873521c
ffffff80087351c4 ldr      x0, [x27, #0x578]
ffffff80087351c8 bl       #0xffffff800827acc0
ffffff80087351cc cbz      x0, #0xffffff80087351e4
ffffff80087351d0 ldr      x8, [x0, #0xa0]
ffffff80087351d4 cbz      x8, #0xffffff80087351b8
ffffff80087351d8 ldr      x8, [x0, #0x90]
ffffff80087351dc cmp      x8, x28
ffffff80087351e0 b.ne     #0xffffff80087351b8
ffffff80087351e4 ldr      x8, [x27, #0x578]
ffffff80087351e8 add      x0, x8, #0x68
ffffff80087351ec bl       #0xffffff8008146408
ffffff80087351f0 mov      w23, #-0xe
ffffff80087351f4 b        #0xffffff8008735364
ffffff80087351f8 ldr      x8, [x27, #0x578]
ffffff80087351fc add      x0, x8, #0x68
ffffff8008735200 bl       #0xffffff8008146408
ffffff8008735204 mov      w23, #-0xe
ffffff8008735208 b        #0xffffff800873538c
ffffff800873520c mov      w23, #-0x16
ffffff8008735210 b        #0xffffff800873537c
ffffff8008735214 mov      w23, #-0xc
ffffff8008735218 b        #0xffffff800873537c
ffffff800873521c mov      w8, #1
ffffff8008735220 mov      x0, x20
ffffff8008735224 bic      w2, w8, w23, lsr #24
ffffff8008735228 mov      x1, x24
ffffff800873522c mov      x3, x22
ffffff8008735230 mov      x4, xzr
ffffff8008735234 bl       #0xffffff800826f548
ffffff8008735238 ldr      x8, [x27, #0x578]
ffffff800873523c mov      x20, x0
ffffff8008735240 add      x0, x8, #0x68
ffffff8008735244 bl       #0xffffff8008146408
ffffff8008735248 asr      x8, x20, #0x3f
ffffff800873524c ands     w23, w8, w20
ffffff8008735250 b.ne     #0xffffff8008735304
ffffff8008735254 cmp      x20, x24
ffffff8008735258 b.ne     #0xffffff8008735300
ffffff800873525c ldr      x0, [x19, #0x40]
ffffff8008735260 mov      x1, x22
ffffff8008735264 ldr      x4, [x19, #0x30]
ffffff8008735268 mov      w2, w20
ffffff800873526c mov      w3, wzr
ffffff8008735270 mov      w5, w25
ffffff8008735274 bl       #0xffffff8008538010
ffffff8008735278 mov      w23, w0
ffffff800873527c cbnz     w0, #0xffffff8008735308
ffffff8008735280 mov      x0, x22
ffffff8008735284 bl       #0xffffff8008256ac8
ffffff8008735288 b        #0xffffff800873538c
ffffff800873528c ldr      x8, [x27, #0x578]
ffffff8008735290 add      x0, x8, #0x68
ffffff8008735294 bl       #0xffffff8008146408
ffffff8008735298 cbz      x23, #0xffffff80087350f0
ffffff800873529c cmn      w23, #0x13
ffffff80087352a0 b.eq     #0xffffff80087350f0
ffffff80087352a4 b        #0xffffff800873538c
ffffff80087352a8 mov      w23, #-0xc
ffffff80087352ac b        #0xffffff8008735364
ffffff80087352b0 ldr      x8, [x26, #0x48]
ffffff80087352b4 mov      x9, #0xc
ffffff80087352b8 movk     x9, #0x60, lsl #48
ffffff80087352bc mov      w11, #0xc000000
ffffff80087352c0 and      x10, x8, #0xffffffffffffffe3
ffffff80087352c4 orr      x9, x10, x9
ffffff80087352c8 orr      x10, x10, #0x60000000000000
ffffff80087352cc cmp      x8, x9
ffffff80087352d0 ldr      x9, [x19, #0x50]
ffffff80087352d4 csel     x11, xzr, x11, eq
ffffff80087352d8 cmp      x8, x10
ffffff80087352dc mov      w8, #0x4000000
ffffff80087352e0 csel     x8, x8, x11, eq
ffffff80087352e4 orr      x8, x8, x9
ffffff80087352e8 str      x8, [x19, #0x50]
ffffff80087352ec ldr      x8, [x27, #0x578]
ffffff80087352f0 add      x0, x8, #0x68
ffffff80087352f4 bl       #0xffffff8008146408
ffffff80087352f8 mov      w23, wzr
ffffff80087352fc b        #0xffffff800873538c
ffffff8008735300 mov      w23, #-0x16
ffffff8008735304 mov      x24, x20
ffffff8008735308 cmp      x24, #1
ffffff800873530c b.lt     #0xffffff8008735364
ffffff8008735310 mov      x20, xzr
ffffff8008735314 mov      x25, x22
ffffff8008735318 b        #0xffffff8008735328
ffffff800873531c add      x20, x20, #1
ffffff8008735320 cmp      x20, x24
ffffff8008735324 b.eq     #0xffffff8008735364
ffffff8008735328 ldr      x8, [x25], #8
ffffff800873532c ldr      x9, [x8, #8]
ffffff8008735330 sub      x10, x9, #1
ffffff8008735334 tst      x9, #1
ffffff8008735338 csel     x0, x8, x10, eq
ffffff800873533c add      x8, x0, #0x34
ffffff8008735340 prfm     pstl1strm, [x8]
ffffff8008735344 ldxr     w9, [x8]
ffffff8008735348 sub      w9, w9, #1
ffffff800873534c stlxr    w10, w9, [x8]
ffffff8008735350 cbnz     w10, #0xffffff8008735344
ffffff8008735354 dmb      ish
ffffff8008735358 cbnz     w9, #0xffffff800873531c
ffffff800873535c bl       #0xffffff80082434f0
ffffff8008735360 b        #0xffffff800873531c
ffffff8008735364 ldr      x0, [x19, #0x40]
ffffff8008735368 bl       #0xffffff80082965e8
ffffff800873536c mov      x0, x22
ffffff8008735370 str      xzr, [x19, #0x40]
ffffff8008735374 bl       #0xffffff8008256ac8
ffffff8008735378 cbz      w23, #0xffffff800873538c
ffffff800873537c ldrb     w8, [x19, #0x53]
ffffff8008735380 tbz      w8, #4, #0xffffff800873538c
ffffff8008735384 mov      x0, x21
ffffff8008735388 bl       #0xffffff800874de78
ffffff800873538c mov      w0, w23
ffffff8008735390 ldp      x20, x19, [sp, #0x50]
ffffff8008735394 ldp      x22, x21, [sp, #0x40]
ffffff8008735398 ldp      x24, x23, [sp, #0x30]
ffffff800873539c ldp      x26, x25, [sp, #0x20]
ffffff80087353a0 ldp      x28, x27, [sp, #0x10]
ffffff80087353a4 ldp      x29, x30, [sp], #0x60
ffffff80087353a8 ret      
ffffff80087353ac nop      

FUNCTION {"name": "kgsl_iommu_set_svm_region", "va": "0xffffff800875b4e8", "offset": "0x6db4e8", "bytes": 264}
ffffff800875b4e8 stp      x29, x30, [sp, #-0x40]!
ffffff800875b4ec str      x23, [sp, #0x10]
ffffff800875b4f0 mov      x29, sp
ffffff800875b4f4 stp      x22, x21, [sp, #0x20]
ffffff800875b4f8 stp      x20, x19, [sp, #0x30]
ffffff800875b4fc ldr      x23, [x0, #0x80]
ffffff800875b500 mov      x20, x2
ffffff800875b504 mov      x19, x0
ffffff800875b508 mov      x21, x1
ffffff800875b50c ldr      x8, [x23, #0x40]
ffffff800875b510 cmp      x8, x1
ffffff800875b514 b.hi     #0xffffff800875b530
ffffff800875b518 ldr      x9, [x23, #0x48]
ffffff800875b51c add      x10, x20, x21
ffffff800875b520 cmp      x9, x21
ffffff800875b524 ccmp     x10, x8, #0, hi
ffffff800875b528 ccmp     x10, x9, #2, hi
ffffff800875b52c b.ls     #0xffffff800875b560
ffffff800875b530 ldr      x8, [x23, #0x30]
ffffff800875b534 cmp      x8, x21
ffffff800875b538 b.hi     #0xffffff800875b5d0
ffffff800875b53c ldr      x9, [x23, #0x38]
ffffff800875b540 cmp      x9, x21
ffffff800875b544 b.ls     #0xffffff800875b5d0
ffffff800875b548 add      x10, x20, x21
ffffff800875b54c mov      w22, #-0xc
ffffff800875b550 cmp      x10, x8
ffffff800875b554 b.ls     #0xffffff800875b5d4
ffffff800875b558 cmp      x10, x9
ffffff800875b55c b.hi     #0xffffff800875b5d4
ffffff800875b560 mov      x0, x19
ffffff800875b564 bl       #0xffffff800933c360
ffffff800875b568 ldr      x9, [x23, #0x18]
ffffff800875b56c cbz      x9, #0xffffff800875b5b0
ffffff800875b570 add      x8, x20, x21
ffffff800875b574 mov      w22, #-0xc
ffffff800875b578 b        #0xffffff800875b588
ffffff800875b57c add      x9, x9, #0x10
ffffff800875b580 ldr      x9, [x9]
ffffff800875b584 cbz      x9, #0xffffff800875b5b0
ffffff800875b588 ldur     x10, [x9, #-0x10]
ffffff800875b58c cmp      x8, x10
ffffff800875b590 b.ls     #0xffffff800875b57c
ffffff800875b594 ldur     x11, [x9, #-8]
ffffff800875b598 add      x10, x11, x10
ffffff800875b59c cmp      x10, x21
ffffff800875b5a0 b.hi     #0xffffff800875b5c4
ffffff800875b5a4 add      x9, x9, #8
ffffff800875b5a8 ldr      x9, [x9]
ffffff800875b5ac cbnz     x9, #0xffffff800875b588
ffffff800875b5b0 mov      x0, x19
ffffff800875b5b4 mov      x1, x21
ffffff800875b5b8 mov      x2, x20
ffffff800875b5bc bl       #0xffffff800875c1f8
ffffff800875b5c0 mov      w22, w0
ffffff800875b5c4 mov      x0, x19
ffffff800875b5c8 bl       #0xffffff800933c4b8
ffffff800875b5cc b        #0xffffff800875b5d4
ffffff800875b5d0 mov      w22, #-0xc
ffffff800875b5d4 mov      w0, w22
ffffff800875b5d8 ldr      x23, [sp, #0x10]
ffffff800875b5dc ldp      x20, x19, [sp, #0x30]
ffffff800875b5e0 ldp      x22, x21, [sp, #0x20]
ffffff800875b5e4 ldp      x29, x30, [sp], #0x40
ffffff800875b5e8 ret      
ffffff800875b5ec nop      