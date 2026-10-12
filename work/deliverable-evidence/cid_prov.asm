0002bcc0  sub      sp, sp, #0x70
0002bcc4  str      x30, [sp, #0x30]
0002bcc8  stp      x24, x23, [sp, #0x40]
0002bccc  stp      x22, x21, [sp, #0x50]
0002bcd0  stp      x20, x19, [sp, #0x60]
0002bcd4  adrp     x8, #0xd0000
0002bcd8  mov      x20, x1
0002bcdc  mov      w21, w0
0002bce0  ldr      x8, [x8, #0x8a0]
0002bce4  str      x8, [sp, #0x28]
0002bce8  str      wzr, [sp]
0002bcec  bl       #0x23b78
0002bcf0  mov      w8, #1
0002bcf4  tst      w0, #1
0002bcf8  cinc     w22, w8, ne
0002bcfc  mov      w19, w0
0002bd00  mov      x3, sp
0002bd04  mov      w0, #0xf0
0002bd08  mov      w1, w22
0002bd0c  mov      x2, xzr
0002bd10  bl       #0x2df08
0002bd14  cmp      w0, #0xf
0002bd18  b.ne     #0x2be7c
0002bd1c  ldr      w1, [sp]
0002bd20  cmp      x1, #0xb6
0002bd24  cset     w8, eq
0002bd28  cmp      x1, #0xc4
0002bd2c  cset     w9, eq
0002bd30  tst      w19, #1
0002bd34  csel     w8, w9, w8, ne
0002bd38  tbz      w8, #0, #0x2be90
0002bd3c  mov      x0, x1
0002bd40  bl       #0x15710
0002bd44  cbz      x0, #0x2bea0
0002bd48  ldr      w2, [sp]
0002bd4c  mov      w1, wzr
0002bd50  mov      x19, x0
0002bd54  bl       #0x1ca9c
0002bd58  mov      x3, sp
0002bd5c  mov      w0, #0xf0
0002bd60  mov      w1, w22
0002bd64  mov      x2, x19
0002bd68  bl       #0x2df08
0002bd6c  cmp      w0, #0xf
0002bd70  b.ne     #0x2beb0
0002bd74  cmp      w21, #2
0002bd78  b.ne     #0x2bd94
0002bd7c  ldr      w1, [sp]
0002bd80  mov      x0, x19
0002bd84  ldr      x2, [x20, #8]
0002bd88  bl       #0x2ddd8
0002bd8c  cmp      w0, #0xf
0002bd90  b.ne     #0x2bed4
0002bd94  ldr      w8, [sp]
0002bd98  mov      w0, #1
0002bd9c  mov      w21, #1
0002bda0  bfi      w0, w8, #1, #0x1f
0002bda4  bl       #0x15710
0002bda8  cbz      x0, #0x2bec8
0002bdac  ldr      w8, [sp]
0002bdb0  mov      w1, wzr
0002bdb4  mov      x20, x0
0002bdb8  bfi      w21, w8, #1, #0x1f
0002bdbc  mov      x2, x21
0002bdc0  bl       #0x1ca9c
0002bdc4  ldr      w8, [sp]
0002bdc8  mov      x9, x20
0002bdcc  cbz      w8, #0x2be18
0002bdd0  adrp     x12, #0xb0000
0002bdd4  mov      x9, xzr
0002bdd8  mov      x10, x20
0002bddc  mov      x11, x19
0002bde0  add      x12, x12, #0xac1
0002bde4  ldrb     w13, [x11]
0002bde8  add      x9, x9, #1
0002bdec  cmp      x9, x8
0002bdf0  lsr      x13, x13, #4
0002bdf4  ldrb     w13, [x12, x13]
0002bdf8  strb     w13, [x10]
0002bdfc  ldrb     w13, [x11], #1
0002be00  and      x13, x13, #0xf
0002be04  ldrb     w13, [x12, x13]
0002be08  strb     w13, [x10, #1]
0002be0c  add      x10, x10, #2
0002be10  b.ne     #0x2bde4
0002be14  add      x9, x20, x8, lsl #1
0002be18  strb     wzr, [x9]
0002be1c  ldr      w8, [sp]
0002be20  lsl      w24, w8, #1
0002be24  cbz      w24, #0x2bf18
0002be28  adrp     x23, #0xc5000
0002be2c  mov      w22, #0x21
0002be30  mov      x21, x20
0002be34  add      x23, x23, #0x6d6
0002be38  cmp      w24, #0x1f
0002be3c  b.ls     #0x2bee8
0002be40  add      x0, sp, #4
0002be44  mov      x1, x22
0002be48  mov      x2, x23
0002be4c  mov      x3, x21
0002be50  bl       #0x1a704
0002be54  add      x0, sp, #4
0002be58  bl       #0x43c8
0002be5c  add      x0, sp, #4
0002be60  mov      w1, wzr
0002be64  mov      w2, #0x20
0002be68  add      x21, x21, #0x20
0002be6c  sub      w24, w24, #0x20
0002be70  bl       #0x1ca9c
0002be74  cbnz     w24, #0x2be38
0002be78  b        #0x2bf18
0002be7c  mov      w1, w0
0002be80  adrp     x0, #0xb0000
0002be84  add      x0, x0, #0xad2
0002be88  bl       #0x43c8
0002be8c  b        #0x2bf28
0002be90  adrp     x0, #0xb0000
0002be94  add      x0, x0, #0xaf1
0002be98  bl       #0x43c8
0002be9c  b        #0x2bf28
0002bea0  adrp     x0, #0xb0000
0002bea4  add      x0, x0, #0xb0d
0002bea8  bl       #0x43c8
0002beac  b        #0x2bf28
0002beb0  mov      w1, w0
0002beb4  adrp     x0, #0xb0000
0002beb8  add      x0, x0, #0xb3b
0002bebc  bl       #0x43c8
0002bec0  mov      x0, x19
0002bec4  b        #0x2bf24
0002bec8  adrp     x0, #0xb0000
0002becc  add      x0, x0, #0xb0d
0002bed0  b        #0x2bedc
0002bed4  adrp     x0, #0xb0000
0002bed8  add      x0, x0, #0xb63
0002bedc  bl       #0x43c8
0002bee0  mov      x0, x19
0002bee4  b        #0x2bf24
0002bee8  adrp     x2, #0xc5000
0002beec  add      w1, w24, #1
0002bef0  add      x2, x2, #0x6d6
0002bef4  add      x0, sp, #4
0002bef8  mov      x3, x21
0002befc  bl       #0x1a704
0002bf00  add      x0, sp, #4
0002bf04  bl       #0x43c8
0002bf08  add      x0, sp, #4
0002bf0c  mov      w1, wzr
0002bf10  mov      w2, #0x20
0002bf14  bl       #0x1ca9c
0002bf18  mov      x0, x19
0002bf1c  bl       #0x15910
0002bf20  mov      x0, x20
0002bf24  bl       #0x15910
0002bf28  adrp     x9, #0xd0000
0002bf2c  ldr      x8, [sp, #0x28]
0002bf30  ldr      x9, [x9, #0x8a0]
0002bf34  cmp      x9, x8
0002bf38  b.ne     #0x2bf54
0002bf3c  ldp      x20, x19, [sp, #0x60]
0002bf40  ldr      x30, [sp, #0x30]
0002bf44  ldp      x22, x21, [sp, #0x50]
0002bf48  ldp      x24, x23, [sp, #0x40]
0002bf4c  add      sp, sp, #0x70
0002bf50  ret      
0002bf54  bl       #0x53a68
