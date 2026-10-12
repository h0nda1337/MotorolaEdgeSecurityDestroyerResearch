0000cc80  str      x30, [sp, #-0x10]!
0000cc84  bl       #0x2aa28
0000cc88  mov      w0, #1
0000cc8c  ldr      x30, [sp], #0x10
0000cc90  ret      
0000cc94  udf      #0
0000cc98  str      x30, [sp, #-0x10]!
0000cc9c  bl       #0x2a588
0000cca0  mov      w0, #1
0000cca4  ldr      x30, [sp], #0x10
0000cca8  ret      
0000ccac  udf      #0
0000ccb0  str      x30, [sp, #-0x10]!
0000ccb4  bl       #0x2c450
0000ccb8  mov      w0, #1
0000ccbc  ldr      x30, [sp], #0x10
0000ccc0  ret      
0000ccc4  udf      #0
0000ccc8  str      x30, [sp, #-0x10]!
0000cccc  bl       #0x22b00
0000ccd0  mov      w8, #3
0000ccd4  tst      w0, #0xff
0000ccd8  csinc    w0, w8, wzr, eq
0000ccdc  ldr      x30, [sp], #0x10
