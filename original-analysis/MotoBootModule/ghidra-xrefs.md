# MotoBootModule.efi — exportación Ghidra

Programa: `MotoBootModule.efi`
Formato: `Portable Executable (PE)`
Lenguaje: `AARCH64:LE:64:v8A`
Image base: `00000000`

Las direcciones siguientes son cadenas canónicas.
No deben interpretarse como entradas de funciones.

---

## debug_token

Dirección de cadena: `000a69a6`

No se encontraron referencias directas.

Esto no descarta referencias construidas mediante ADRP/ADD u otras operaciones.

---

## blankflash

Dirección de cadena: `000a7265`

### Referencia 1

- Desde: `0000ec60`
- Tipo: `PARAM`
- Función contenedora: `FUN_0000eac8`
- Entrada de función: `0000eac8`

#### Instrucciones cercanas

```asm
   0000ec38  mov w21,#0x1
   0000ec3c  cbnz x20,0x0000ec90
   0000ec40  b 0x0000ec98
   0000ec44  bl 0x00021c80
   0000ec48  tst w0,#0xff
   0000ec4c  b.ne 0x0000ec7c
   0000ec50  ldurb w8,[x21, #-0x6]
   0000ec54  cbnz w8,0x0000ec7c
   0000ec58  ldr x1,[x21]
   0000ec5c  adrp x0,0xa7000
>> 0000ec60  add x0,x0,#0x265
   0000ec64  bl 0x0001be9c
   0000ec68  cbnz w0,0x0000ecc8
   0000ec6c  adrp x8,0xd2000
   0000ec70  ldrb w8,[x8, #0x800]
   0000ec74  cmp w8,#0x1
   0000ec78  b.ne 0x0000ecc8
   0000ec7c  ldr x8,[x21, #0x8]
   0000ec80  mov x1,x20
   0000ec84  ldur w0,[x23, #-0xc]
   0000ec88  blr x8
   0000ec8c  mov w21,w0
   0000ec90  mov x0,x20
   0000ec94  bl 0x000849a0
   0000ec98  ldr x8,[x25]
```

### Referencia 2

- Desde: `0000ec18`
- Tipo: `PARAM`
- Función contenedora: `FUN_0000eac8`
- Entrada de función: `0000eac8`

#### Instrucciones cercanas

```asm
   0000ebf0  cmp x26,#0x24
   0000ebf4  b.eq 0x0000ec38
   0000ebf8  ldurb w8,[x28, #-0x8]
   0000ebfc  cbnz w8,0x0000ebe8
   0000ec00  bl 0x00021c80
   0000ec04  tst w0,#0xff
   0000ec08  b.ne 0x0000ebd0
   0000ec0c  ldurb w8,[x28, #-0x6]
   0000ec10  cbnz w8,0x0000ebd0
   0000ec14  ldr x1,[x28]
>> 0000ec18  mov x0,x21
   0000ec1c  bl 0x0001be9c
   0000ec20  cbnz w0,0x0000ebe8
   0000ec24  adrp x8,0xd2000
   0000ec28  ldrb w8,[x8, #0x800]
   0000ec2c  cmp w8,#0x1
   0000ec30  b.eq 0x0000ebd0
   0000ec34  b 0x0000ebe8
   0000ec38  mov w21,#0x1
   0000ec3c  cbnz x20,0x0000ec90
   0000ec40  b 0x0000ec98
   0000ec44  bl 0x00021c80
   0000ec48  tst w0,#0xff
   0000ec4c  b.ne 0x0000ec7c
   0000ec50  ldurb w8,[x21, #-0x6]
```

### Referencia 3

- Desde: `000cc760`
- Tipo: `DATA`
- Función contenedora: no identificada

#### Instrucciones cercanas

```asm
; No hay instrucción en 000cc760
```

---

## get_unlock_data

Dirección de cadena: `000a72df`

### Referencia 1

- Desde: `000cc8f8`
- Tipo: `DATA`
- Función contenedora: no identificada

#### Instrucciones cercanas

```asm
; No hay instrucción en 000cc8f8
```

---

## cid_prov_req

Dirección de cadena: `000a72ef`

### Referencia 1

- Desde: `000cc910`
- Tipo: `DATA`
- Función contenedora: no identificada

#### Instrucciones cercanas

```asm
; No hay instrucción en 000cc910
```

---

## read_sv

Dirección de cadena: `000a7321`

### Referencia 1

- Desde: `000cc988`
- Tipo: `DATA`
- Función contenedora: no identificada

#### Instrucciones cercanas

```asm
; No hay instrucción en 000cc988
```

---

## use_oem_get_unlock_data_and_web_portal

Dirección de cadena: `000adfc7`

No se encontraron referencias directas.

Esto no descarta referencias construidas mediante ADRP/ADD u otras operaciones.

---

## get_unlock_data_version_2_datablock

Dirección de cadena: `000b06a0`

### Referencia 1

- Desde: `0002b0a4`
- Tipo: `PARAM`
- Función contenedora: `FUN_0002b020`
- Entrada de función: `0002b020`

#### Instrucciones cercanas

```asm
   0002b07c  bl 0x0002ee40
   0002b080  mov w21,w0
   0002b084  ldur x0,[x29, #-0x18]
   0002b088  and w19,w21,#0xffff
   0002b08c  bl 0x0002ede8
   0002b090  mov w20,w0
   0002b094  cmp w19,#0x2
   0002b098  b.ne 0x0002b0c4
   0002b09c  adrp x1,0xb0000
   0002b0a0  mov w19,#0x20
>> 0002b0a4  add x1,x1,#0x6a0
   0002b0a8  b 0x0002b0d8
   0002b0ac  cbz x8,0x0002b460
   0002b0b0  mov x0,x8
   0002b0b4  bl 0x00015910
   0002b0b8  mov x19,xzr
   0002b0bc  stur xzr,[x29, #-0x18]
   0002b0c0  b 0x0002b464
   0002b0c4  cmp w19,#0x1
   0002b0c8  b.ne 0x0002b450
   0002b0cc  adrp x1,0xb0000
   0002b0d0  mov w19,#0x14
   0002b0d4  add x1,x1,#0x6c6
   0002b0d8  mov w0,#0x1
   0002b0dc  bl 0x00040c20
```

---

## get_unlock_data_version_1_datablock

Dirección de cadena: `000b06c6`

### Referencia 1

- Desde: `0002b0d4`
- Tipo: `PARAM`
- Función contenedora: `FUN_0002b020`
- Entrada de función: `0002b020`

#### Instrucciones cercanas

```asm
   0002b0ac  cbz x8,0x0002b460
   0002b0b0  mov x0,x8
   0002b0b4  bl 0x00015910
   0002b0b8  mov x19,xzr
   0002b0bc  stur xzr,[x29, #-0x18]
   0002b0c0  b 0x0002b464
   0002b0c4  cmp w19,#0x1
   0002b0c8  b.ne 0x0002b450
   0002b0cc  adrp x1,0xb0000
   0002b0d0  mov w19,#0x14
>> 0002b0d4  add x1,x1,#0x6c6
   0002b0d8  mov w0,#0x1
   0002b0dc  bl 0x00040c20
   0002b0e0  ldur x9,[x29, #-0x18]
   0002b0e4  add w22,w20,#0x26
   0002b0e8  mov x8,xzr
   0002b0ec  mov w10,w22
   0002b0f0  ldrb w11,[x9, w10, UXTW ]
   0002b0f4  cmp w11,#0xff
   0002b0f8  b.ne 0x0002b118
   0002b0fc  add x8,x8,#0x1
   0002b100  add w10,w10,#0x1
   0002b104  cmp x8,x19
   0002b108  b.ne 0x0002b0f0
   0002b10c  adrp x1,0xb0000
```

---

## get_unlock_data_unsupported_datablock

Dirección de cadena: `000b06ec`

### Referencia 1

- Desde: `0002b454`
- Tipo: `PARAM`
- Función contenedora: `FUN_0002b020`
- Entrada de función: `0002b020`

#### Instrucciones cercanas

```asm
   0002b42c  str w8,[sp, #0xb0]
   0002b430  ldur w8,[x29, #-0x88]
   0002b434  str w26,[sp, #0x108]
   0002b438  str w27,[sp, #0x100]
   0002b43c  str w28,[sp, #0xf8]
   0002b440  str w8,[sp, #0xa8]
   0002b444  ldur w8,[x29, #-0x84]
   0002b448  str w30,[sp, #0xf0]
   0002b44c  b 0x0002b8ac
   0002b450  adrp x1,0xb0000
>> 0002b454  add x1,x1,#0x6ec
   0002b458  mov w0,#0x1
   0002b45c  bl 0x00040c20
   0002b460  mov x19,xzr
   0002b464  adrp x9,0xd0000
   0002b468  ldur x8,[x29, #-0x10]
   0002b46c  ldr x9,[x9, #0x8a0]
   0002b470  cmp x9,x8
   0002b474  b.ne 0x0002b974
   0002b478  mov x0,x19
   0002b47c  add sp,sp,#0x310
   0002b480  ldp x20,x19,[sp, #0x50]
   0002b484  ldp x22,x21,[sp, #0x40]
   0002b488  ldp x24,x23,[sp, #0x30]
   0002b48c  ldp x26,x25,[sp, #0x20]
```

---

## get_unlock_data_default_password_hash_present

Dirección de cadena: `000b0714`

### Referencia 1

- Desde: `0002b110`
- Tipo: `PARAM`
- Función contenedora: `FUN_0002b020`
- Entrada de función: `0002b020`

#### Instrucciones cercanas

```asm
   0002b0e8  mov x8,xzr
   0002b0ec  mov w10,w22
   0002b0f0  ldrb w11,[x9, w10, UXTW ]
   0002b0f4  cmp w11,#0xff
   0002b0f8  b.ne 0x0002b118
   0002b0fc  add x8,x8,#0x1
   0002b100  add w10,w10,#0x1
   0002b104  cmp x8,x19
   0002b108  b.ne 0x0002b0f0
   0002b10c  adrp x1,0xb0000
>> 0002b110  add x1,x1,#0x714
   0002b114  b 0x0002b458
   0002b118  lsl w8,w19,#0x1
   0002b11c  add w0,w8,#0x5d
   0002b120  bl 0x00015710
   0002b124  mov x19,x0
   0002b128  and w8,w21,#0xffff
   0002b12c  cmp w8,#0x1
   0002b130  b.ne 0x0002b49c
   0002b134  ldur x1,[x29, #-0x18]
   0002b138  add w8,w20,#0x6
   0002b13c  add w9,w20,#0x7
   0002b140  add w10,w20,#0x8
   0002b144  add w11,w20,#0x9
   0002b148  ldrb w8,[x1, w8, UXTW ]
```

---

## dbval_validate_datablock_check_db_signature

Dirección de cadena: `000b24d3`

No se encontraron referencias directas.

Esto no descarta referencias construidas mediante ADRP/ADD u otras operaciones.

---

# Funciones descubiertas

---

## `FUN_0000eac8`

- Entrada: `0000eac8`
- Cuerpo: `[[0000eac8, 0000ecfb]]`

### Callers

- No se identificaron callers directos.

### Callees

- `FUN_0006fd48 @ 0006fd48 llamada desde 0000eae4`
- `FUN_00084a00 @ 00084a00 llamada desde 0000eb18`
- `FUN_0001be9c @ 0001be9c llamada desde 0000eb3c`
- `FUN_0001bef8 @ 0001bef8 llamada desde 0000eb60`
- `FUN_000043c8 @ 000043c8 llamada desde 0000eb84`
- `FUN_000043c8 @ 000043c8 llamada desde 0000eb90`
- `FUN_000043c8 @ 000043c8 llamada desde 0000ebe4`
- `FUN_00021c80 @ 00021c80 llamada desde 0000ec00`
- `FUN_0001be9c @ 0001be9c llamada desde 0000ec1c`
- `FUN_00021c80 @ 00021c80 llamada desde 0000ec44`
- `FUN_0001be9c @ 0001be9c llamada desde 0000ec64`
- `FUN_0000f7c0 @ 0000f7c0 llamada desde 0000ec88`
- `FUN_000849a0 @ 000849a0 llamada desde 0000ec94`
- `FUN_0001be9c @ 0001be9c llamada desde 0000ecd4`
- `FUN_000232b0 @ 000232b0 llamada desde 0000ece8`
- `FUN_00053a68 @ 00053a68 llamada desde 0000ecf8`

### Pseudocódigo

```c

undefined4
FUN_0000eac8(byte *param_1,undefined8 param_2,char *param_3,undefined8 param_4,undefined8 param_5,
            undefined8 param_6,undefined8 param_7,undefined8 param_8)

{
  undefined1 auVar1 [16];
  undefined1 auVar2 [16];
  longlong lVar3;
  byte bVar4;
  char cVar5;
  int iVar6;
  uint uVar7;
  undefined4 uVar8;
  longlong *plVar9;
  longlong *plVar10;
  char *pcVar11;
  ulonglong extraout_x1;
  undefined8 extraout_x1_00;
  undefined8 extraout_x1_01;
  undefined8 extraout_x1_02;
  undefined8 extraout_x1_03;
  undefined8 uVar12;
  undefined8 extraout_x1_04;
  undefined8 uVar13;
  undefined8 *puVar14;
  int *piVar15;
  longlong lVar16;
  longlong lVar17;
  undefined1 auVar18 [16];
  
  plVar9 = FUN_0006fd48();
  lVar17 = *plVar9;
  *plVar9 = lVar17 + -0x10;
  lVar3 = DAT_000d08a0;
  piVar15 = (int *)(lVar17 + -0xc);
  *piVar15 = 0;
  *(longlong *)(lVar17 + -8) = lVar3;
  plVar10 = FUN_00084a00(param_1,piVar15);
  uVar8 = 3;
  if ((plVar10 == (longlong *)0x0) || (*piVar15 == 0)) {
LAB_0000ec3c:
    if (plVar10 == (longlong *)0x0) goto LAB_0000ec98;
  }
  else {
    iVar6 = FUN_0001be9c((byte *)*plVar10,&DAT_000a987f);
    if (iVar6 == 0) {
      lVar16 = 0;
      puVar14 = &DAT_000cc718;
      auVar2._8_8_ = 0;
      auVar2._0_8_ = extraout_x1;
      auVar18 = auVar2 << 0x40;
      do {
        if (*(char *)(puVar14 + -1) == '\0') {
          bVar4 = FUN_00021c80(auVar18._0_8_,auVar18._8_8_,param_3,param_4,param_5,param_6,param_7,
                               param_8);
          if ((bVar4 == 0) && (*(char *)((longlong)puVar14 + -6) == '\0')) {
            uVar7 = FUN_0001be9c((byte *)"blankflash",(byte *)*puVar14);
            auVar1._8_8_ = extraout_x1_02;
            auVar1._0_8_ = CONCAT44(0,uVar7);
            auVar18._8_8_ = extraout_x1_02;
            auVar18._0_8_ = CONCAT44(0,uVar7);
            if ((uVar7 != 0) || (auVar18 = auVar1, DAT_000d2800 != '\x01')) goto LAB_0000ebe8;
          }
          param_3 = "";
          if (*(char *)((longlong)puVar14 + -7) != '\0') {
            param_3 = "...";
          }
          auVar18 = FUN_000043c8((short *)&DAT_000a53ae,*puVar14,param_3,param_4,param_5,param_6,
                                 param_7,param_8);
        }
LAB_0000ebe8:
        lVar16 = lVar16 + 1;
        puVar14 = puVar14 + 3;
      } while (lVar16 != 0x24);
      uVar8 = 1;
      goto LAB_0000ec3c;
    }
    lVar16 = 0;
    puVar14 = &DAT_000cc718;
    do {
      uVar13 = 0x20;
      iVar6 = FUN_0001bef8((byte *)*puVar14,(byte *)*plVar10,0x20);
      if (iVar6 == 0) {
        bVar4 = FUN_00021c80(0,extraout_x1_00,uVar13,param_4,param_5,param_6,param_7,param_8);
        if ((((bVar4 == 0) && (*(char *)((longlong)puVar14 + -6) == '\0')) &&
            ((iVar6 = FUN_0001be9c((byte *)"blankflash",(byte *)*puVar14), iVar6 != 0 ||
             (DAT_000d2800 != '\x01')))) &&
           ((iVar6 = FUN_0001be9c((byte *)"logdump",(byte *)*puVar14), uVar12 = extraout_x1_03,
            iVar6 != 0 || (cVar5 = FUN_000232b0(), uVar12 = extraout_x1_04, cVar5 == '\0')))) {
          pcVar11 = "command restricted";
          goto LAB_0000eb90;
        }
        uVar8 = (*(code *)puVar14[1])(*(undefined4 *)(lVar17 + -0xc),plVar10);
        goto LAB_0000ec90;
      }
      lVar16 = lVar16 + 1;
      puVar14 = puVar14 + 3;
    } while (lVar16 != 0x24);
    FUN_000043c8((short *)"\'%a\' is not a supported oem command",*plVar10,uVar13,param_4,param_5,
                 param_6,param_7,param_8);
    pcVar11 = "See \'fastboot oem help\'\n";
    uVar12 = extraout_x1_01;
LAB_0000eb90:
    FUN_000043c8((short *)pcVar11,uVar12,uVar13,param_4,param_5,param_6,param_7,param_8);
    uVar8 = 3;
  }
LAB_0000ec90:
  FUN_000849a0(plVar10);
LAB_0000ec98:
  if (lVar3 != *(longlong *)(lVar17 + -8)) {
                    /* WARNING: Subroutine does not return */
    FUN_00053a68();
  }
  *plVar9 = lVar17;
  return uVar8;
}


```

---

## `FUN_0002b020`

- Entrada: `0002b020`
- Cuerpo: `[[0002b020, 0002b977]]`

### Callers

- `FUN_00022c00 @ 00022c00 mediante 00022c18`

### Callees

- `FUN_0002ae90 @ 0002ae90 llamada desde 0002b050`
- `FUN_0002d7f8 @ 0002d7f8 llamada desde 0002b064`
- `FUN_0002ee40 @ 0002ee40 llamada desde 0002b07c`
- `FUN_0002ede8 @ 0002ede8 llamada desde 0002b08c`
- `FUN_00015910 @ 00015910 llamada desde 0002b0b4`
- `FUN_00040c20 @ 00040c20 llamada desde 0002b0dc`
- `FUN_00015710 @ 00015710 llamada desde 0002b120`
- `FUN_00040c20 @ 00040c20 llamada desde 0002b45c`
- `FUN_0001a704 @ 0001a704 llamada desde 0002b960`
- `FUN_00015910 @ 00015910 llamada desde 0002b96c`
- `FUN_00053a68 @ 00053a68 llamada desde 0002b974`

### Pseudocódigo

```c

undefined1 *
FUN_0002b020(undefined8 param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4,
            undefined8 param_5,undefined8 param_6,undefined8 param_7,undefined8 param_8)

{
  uint uVar1;
  short sVar2;
  int iVar3;
  ulonglong uVar4;
  undefined8 uVar5;
  char *pcVar6;
  longlong lVar7;
  longlong lVar8;
  undefined1 *puVar9;
  undefined1 auStack_7c [4];
  longlong local_78;
  longlong local_70;
  
  local_70 = DAT_000d08a0;
  local_78 = 0;
  uVar4 = FUN_0002ae90();
  if ((uVar4 & 0xff) != 0) {
    uVar5 = FUN_0002d7f8(&local_78,auStack_7c);
    if ((int)uVar5 == 0xf) {
      if (local_78 != 0) {
        sVar2 = FUN_0002ee40(local_78);
        iVar3 = FUN_0002ede8(local_78);
        if (sVar2 == 2) {
          lVar8 = 0x20;
          pcVar6 = "get_unlock_data: Version 2 datablock\n";
LAB_0002b0d8:
          FUN_00040c20(1,(ulonglong *)pcVar6,param_3,param_4,param_5,param_6,param_7,param_8);
          uVar1 = iVar3 + 0x26;
          lVar7 = 0;
          do {
            if (*(char *)(local_78 + (ulonglong)uVar1) != -1) {
              puVar9 = (undefined1 *)FUN_00015710();
              if (sVar2 == 1) {
                uVar4 = 0x84;
                pcVar6 = 
                "%02X%02X%02X%02X%02X%02X%02X%02X#%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X#%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X#%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X"
                ;
LAB_0002b8ac:
                FUN_0001a704(puVar9,uVar4,(ulonglong *)pcVar6);
              }
              else if (sVar2 == 2) {
                uVar4 = 0x9c;
                pcVar6 = 
                "%02X%02X%02X%02X%02X%02X%02X%02X#%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X#%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X#%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X"
                ;
                goto LAB_0002b8ac;
              }
              if (local_78 == 0) goto LAB_0002b464;
              FUN_00015910();
              goto LAB_0002b0bc;
            }
            lVar7 = lVar7 + 1;
            uVar1 = uVar1 + 1;
          } while (lVar7 != lVar8);
          pcVar6 = "get_unlock_data: default password hash present\n";
        }
        else {
          if (sVar2 == 1) {
            lVar8 = 0x14;
            pcVar6 = "get_unlock_data: Version 1 datablock\n";
            goto LAB_0002b0d8;
          }
          pcVar6 = "get_unlock_data: Unsupported datablock\n";
        }
        FUN_00040c20(1,(ulonglong *)pcVar6,param_3,param_4,param_5,param_6,param_7,param_8);
      }
    }
    else if (local_78 != 0) {
      FUN_00015910();
      puVar9 = (undefined1 *)0x0;
LAB_0002b0bc:
      local_78 = 0;
      goto LAB_0002b464;
    }
  }
  puVar9 = (undefined1 *)0x0;
LAB_0002b464:
  if (DAT_000d08a0 == local_70) {
    return puVar9;
  }
                    /* WARNING: Subroutine does not return */
  FUN_00053a68();
}


```

---

# Direcciones históricas por verificar

## `0x22D08`

- Función contenedora: `FUN_00022d08`
- Entrada: `00022d08`

```asm
   00022cd4  add x0,x0,#0xf32
   00022cd8  bl 0x000043c8
   00022cdc  adrp x9,0xd0000
   00022ce0  ldr x8,[sp, #0x48]
   00022ce4  ldr x9,[x9, #0x8a0]
   00022ce8  cmp x9,x8
   00022cec  b.ne 0x00022d00
   00022cf0  ldp x20,x19,[sp, #0x60]
   00022cf4  ldr x30,[sp, #0x50]
   00022cf8  add sp,sp,#0x70
   00022cfc  ret
   00022d00  bl 0x00053a68
>> 00022d08  sub sp,sp,#0x60
   00022d0c  str x30,[sp, #0x40]
   00022d10  stp x20,x19,[sp, #0x50]
   00022d14  adrp x8,0xd0000
   00022d18  mov x19,x1
   00022d1c  mov w20,w0
   00022d20  adrp x0,0xa7000
   00022d24  add x0,x0,#0x2d8
   00022d28  ldr x8,[x8, #0x8a0]
   00022d2c  str x8,[sp, #0x38]
   00022d30  ldr x1,[x1]
   00022d34  bl 0x0001be9c
   00022d38  cbz w0,0x00022d98
   00022d3c  ldr x1,[x19]
   00022d40  adrp x0,0xb1000
   00022d44  add x0,x0,#0x271
   00022d48  bl 0x0001be9c
   00022d4c  cbz w0,0x00022de8
   00022d50  ldr x1,[x19]
```

## `0x2B978`

- Función contenedora: `FUN_0002b978`
- Entrada: `0002b978`

```asm
   0002b948  ldur w8,[x29, #-0x3c]
   0002b94c  str w8,[sp, #0x10]
   0002b950  ldur w8,[x29, #-0x38]
   0002b954  str w8,[sp, #0x8]
   0002b958  ldur w8,[x29, #-0x34]
   0002b95c  str w8,[sp]
   0002b960  bl 0x0001a704
   0002b964  ldur x0,[x29, #-0x18]
   0002b968  cbz x0,0x0002b464
   0002b96c  bl 0x00015910
   0002b970  b 0x0002b0bc
   0002b974  bl 0x00053a68
>> 0002b978  sub sp,sp,#0xa0
   0002b97c  stp x30,x23,[sp, #0x70]
   0002b980  stp x22,x21,[sp, #0x80]
   0002b984  stp x20,x19,[sp, #0x90]
   0002b988  adrp x8,0xd0000
   0002b98c  mov w9,#0x20
   0002b990  mov x19,x0
   0002b994  ldr x8,[x8, #0x8a0]
   0002b998  str x8,[sp, #0x68]
   0002b99c  str xzr,[sp, #0x10]
   0002b9a0  str w9,[sp, #0x8]
   0002b9a4  bl 0x0002ae90
   0002b9a8  tst w0,#0xff
   0002b9ac  b.eq 0x0002ba14
   0002b9b0  add x0,sp,#0x10
   0002b9b4  add x1,sp,#0xc
   0002b9b8  bl 0x0002d7f8
   0002b9bc  mov w8,w0
   0002b9c0  ldr x0,[sp, #0x10]
```

