# Flujo de desbloqueo Motorola

Programa: `MotoBootModule.efi`
Image base: `00000000`

# Cadenas relevantes

- `000a72d8` → `unlock`
- `000a72df` → `get_unlock_data`
- `000a72ef` → `cid_prov_req`
- `000b1271` → `lock`

---

# Escaneo de tabla OEM

## Entrada OEM 1

- Entrada: `000cc760`
- Nombre: `blankflash`
- qword[0] nombre: `000a7265`
- qword[1] handler: `0000d2a8`
- qword[2] flags/raw: `0x10000`

- Función: `FUN_0000d2a8`
- Entrada real: `0000d2a8`
- Cuerpo: `[[0000d2a8, 0000d2fb]]`

### Callers

- Ninguno identificado.

### Callees

- `FUN_00021d30 @ 00021d30 desde 0000d2ac`
- `FUN_000043c8 @ 000043c8 desde 0000d2c0`
- `FUN_00004398 @ 00004398 desde 0000d2cc`
- `FUN_0005d528 @ 0005d528 desde 0000d2d4`
- `FUN_000043c8 @ 000043c8 desde 0000d2ec`

### Pseudocódigo

```c

undefined8
FUN_0000d2a8(undefined8 param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4,
            undefined8 param_5,undefined8 param_6,undefined8 param_7,undefined8 param_8)

{
  byte bVar1;
  undefined8 extraout_x1;
  
  bVar1 = FUN_00021d30(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
  if (bVar1 != 0) {
    FUN_000043c8((short *)"Rebooting to blank flash mode",extraout_x1,param_3,param_4,param_5,
                 param_6,param_7,param_8);
    FUN_00004398();
    FUN_0005d528(-1);
    return 1;
  }
  FUN_000043c8((short *)"Command Restricted",extraout_x1,param_3,param_4,param_5,param_6,param_7,
               param_8);
  return 3;
}


```


## Entrada OEM 2

- Entrada: `000cc8c8`
- Nombre: `unlock`
- qword[0] nombre: `000a72d8`
- qword[1] handler: `0000cc40`
- qword[2] flags/raw: `0x10000`

- Función: `FUN_0000cc40`
- Entrada real: `0000cc40`
- Cuerpo: `[[0000cc40, 0000cc5b]]`

### Callers

- Ninguno identificado.

### Callees

- `FUN_00022d08 @ 00022d08 desde 0000cc44`

### Pseudocódigo

```c

undefined4
FUN_0000cc40(int param_1,undefined8 *param_2,word *param_3,byte *param_4,uint *param_5,
            undefined8 param_6,undefined8 param_7,undefined8 param_8)

{
  ulonglong uVar1;
  undefined4 uVar2;
  
  uVar1 = FUN_00022d08(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
  uVar2 = 3;
  if ((uVar1 & 0xff) != 0) {
    uVar2 = 1;
  }
  return uVar2;
}


```


## Entrada OEM 3

- Entrada: `000cc8e0`
- Nombre: `lock`
- qword[0] nombre: `000b1271`
- qword[1] handler: `0000cc60`
- qword[2] flags/raw: `0x10000`

- Función: `FUN_0000cc60`
- Entrada real: `0000cc60`
- Cuerpo: `[[0000cc60, 0000cc7b]]`

### Callers

- Ninguno identificado.

### Callees

- `FUN_00022d08 @ 00022d08 desde 0000cc64`

### Pseudocódigo

```c

undefined4
FUN_0000cc60(int param_1,undefined8 *param_2,word *param_3,byte *param_4,uint *param_5,
            undefined8 param_6,undefined8 param_7,undefined8 param_8)

{
  ulonglong uVar1;
  undefined4 uVar2;
  
  uVar1 = FUN_00022d08(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
  uVar2 = 3;
  if ((uVar1 & 0xff) != 0) {
    uVar2 = 1;
  }
  return uVar2;
}


```


## Entrada OEM 4

- Entrada: `000cc8f8`
- Nombre: `get_unlock_data`
- qword[0] nombre: `000a72df`
- qword[1] handler: `0000cc28`
- qword[2] flags/raw: `0x10000`

- Función: `FUN_0000cc28`
- Entrada real: `0000cc28`
- Cuerpo: `[[0000cc28, 0000cc3b]]`

### Callers

- Ninguno identificado.

### Callees

- `FUN_00022c00 @ 00022c00 desde 0000cc2c`

### Pseudocódigo

```c

undefined8
FUN_0000cc28(undefined8 param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4,
            undefined8 param_5,undefined8 param_6,undefined8 param_7,undefined8 param_8)

{
  FUN_00022c00(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
  return 1;
}


```


## Entrada OEM 5

- Entrada: `000cc910`
- Nombre: `cid_prov_req`
- qword[0] nombre: `000a72ef`
- qword[1] handler: `0000cc10`
- qword[2] flags/raw: `0x0`

- Función: `FUN_0000cc10`
- Entrada real: `0000cc10`
- Cuerpo: `[[0000cc10, 0000cc23]]`

### Callers

- Ninguno identificado.

### Callees

- `FUN_0002bcc0 @ 0002bcc0 desde 0000cc14`

### Pseudocódigo

```c

undefined8
FUN_0000cc10(int param_1,longlong param_2,undefined8 param_3,undefined8 param_4,undefined8 param_5,
            undefined8 param_6,undefined8 param_7,undefined8 param_8)

{
  FUN_0002bcc0(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
  return 1;
}


```


## Entrada OEM 6

- Entrada: `000cc988`
- Nombre: `read_sv`
- qword[0] nombre: `000a7321`
- qword[1] handler: `0000dce8`
- qword[2] flags/raw: `0x100`

- Función: `FUN_0000dce8`
- Entrada real: `0000dce8`
- Cuerpo: `[[0000dce8, 0000dcfb]]`

### Callers

- Ninguno identificado.

### Callees

- `FUN_0002cbf0 @ 0002cbf0 desde 0000dcec`

### Pseudocódigo

```c

undefined8
FUN_0000dce8(undefined8 param_1,undefined8 param_2,char *param_3,undefined8 param_4,
            undefined8 param_5,undefined8 param_6,undefined8 param_7,undefined8 param_8)

{
  FUN_0002cbf0(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
  return 1;
}


```



---

# Funciones fijas


---

## get_unlock_data_core

- Dirección solicitada: `00022c00`
- Función: `FUN_00022c00`
- Entrada real: `00022c00`
- Cuerpo: `[[00022c00, 00022d03]]`

### Callers

- `FUN_0000cc28 @ 0000cc28 desde 0000cc2c`

### Callees

- `FUN_0002b020 @ 0002b020 desde 00022c18`
- `FUN_000043c8 @ 000043c8 desde 00022c2c`
- `FUN_0001a704 @ 0001a704 desde 00022c48`
- `FUN_000043c8 @ 000043c8 desde 00022c50`
- `FUN_0001a704 @ 0001a704 desde 00022c64`
- `FUN_000043c8 @ 000043c8 desde 00022c6c`
- `FUN_0001a704 @ 0001a704 desde 00022c80`
- `FUN_000043c8 @ 000043c8 desde 00022c88`
- `FUN_0001a704 @ 0001a704 desde 00022c9c`
- `FUN_000043c8 @ 000043c8 desde 00022ca4`
- `FUN_0001a704 @ 0001a704 desde 00022cb8`
- `FUN_000043c8 @ 000043c8 desde 00022cc0`
- `FUN_00015910 @ 00015910 desde 00022cc8`
- `FUN_000043c8 @ 000043c8 desde 00022cd8`
- `FUN_00053a68 @ 00053a68 desde 00022d00`

### Pseudocódigo

```c

void FUN_00022c00(undefined8 param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4,
                 undefined8 param_5,undefined8 param_6,undefined8 param_7,undefined8 param_8)

{
  undefined1 *puVar1;
  undefined8 extraout_x1;
  undefined8 extraout_x1_00;
  undefined8 extraout_x1_01;
  undefined8 extraout_x1_02;
  undefined8 extraout_x1_03;
  undefined8 extraout_x1_04;
  char *pcVar2;
  char *pcVar3;
  undefined1 *puVar4;
  short asStack_68 [32];
  longlong local_28;
  
  local_28 = DAT_000d08a0;
  puVar1 = FUN_0002b020(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
  if (puVar1 == (undefined1 *)0x0) {
    FUN_000043c8((short *)"Failed to get unlock data.",extraout_x1,param_3,param_4,param_5,param_6,
                 param_7,param_8);
  }
  else {
    FUN_000043c8((short *)"Unlock data:",extraout_x1,param_3,param_4,param_5,param_6,param_7,param_8
                );
    pcVar3 = "%s";
    pcVar2 = pcVar3;
    puVar4 = puVar1;
    FUN_0001a704((undefined1 *)asStack_68,0x20,(ulonglong *)0xc56d6);
    FUN_000043c8(asStack_68,extraout_x1_00,pcVar2,puVar4,param_5,param_6,param_7,param_8);
    puVar4 = puVar1 + 0x1f;
    pcVar2 = pcVar3;
    FUN_0001a704((undefined1 *)asStack_68,0x20,(ulonglong *)0xc56d6);
    FUN_000043c8(asStack_68,extraout_x1_01,pcVar2,puVar4,param_5,param_6,param_7,param_8);
    puVar4 = puVar1 + 0x3e;
    pcVar2 = pcVar3;
    FUN_0001a704((undefined1 *)asStack_68,0x20,(ulonglong *)0xc56d6);
    FUN_000043c8(asStack_68,extraout_x1_02,pcVar2,puVar4,param_5,param_6,param_7,param_8);
    puVar4 = puVar1 + 0x5d;
    pcVar2 = pcVar3;
    FUN_0001a704((undefined1 *)asStack_68,0x20,(ulonglong *)0xc56d6);
    FUN_000043c8(asStack_68,extraout_x1_03,pcVar2,puVar4,param_5,param_6,param_7,param_8);
    puVar1 = puVar1 + 0x7c;
    FUN_0001a704((undefined1 *)asStack_68,0x20,(ulonglong *)0xc56d6);
    FUN_000043c8(asStack_68,extraout_x1_04,pcVar3,puVar1,param_5,param_6,param_7,param_8);
    FUN_00015910();
  }
  if (DAT_000d08a0 == local_28) {
    return;
  }
                    /* WARNING: Subroutine does not return */
  FUN_00053a68();
}


```


---

## historical_unlock_lock_candidate

- Dirección solicitada: `00022d08`
- Función: `FUN_00022d08`
- Entrada real: `00022d08`
- Cuerpo: `[[00022d08, 00022f9b] [00022fa0, 0002322f]]`

### Callers

- `FUN_000083b0 @ 000083b0 desde 00008414`
- `FUN_0000cc40 @ 0000cc40 desde 0000cc44`
- `FUN_0000cc60 @ 0000cc60 desde 0000cc64`

### Callees

- `FUN_0001be9c @ 0001be9c desde 00022d34`
- `FUN_0001be9c @ 0001be9c desde 00022d48`
- `FUN_0001be9c @ 0001be9c desde 00022d5c`
- `FUN_0001be9c @ 0001be9c desde 00022d70`
- `FUN_0001be9c @ 0001be9c desde 00022d84`
- `FUN_000043c8 @ 000043c8 desde 00022e78`
- `FUN_000043c8 @ 000043c8 desde 00022e84`
- `FUN_0004e2d4 @ 0004e2d4 desde 00022e9c`
- `FUN_000247d8 @ 000247d8 desde 00022ea8`
- `FUN_00028968 @ 00028968 desde 00022eb4`
- `FUN_00023bc0 @ 00023bc0 desde 00022ec0`
- `FUN_000043c8 @ 000043c8 desde 00022ed0`
- `FUN_00020c68 @ 00020c68 desde 00022f08`
- `FUN_0006d5d8 @ 0006d5d8 desde 00022f24`
- `FUN_0001c190 @ 0001c190 desde 00022f38`
- `FUN_0006d578 @ 0006d578 desde 00022f3c`
- `FUN_00040c20 @ 00040c20 desde 00022f50`
- `FUN_00040c20 @ 00040c20 desde 00022f60`
- `FUN_000043c8 @ 000043c8 desde 00022f70`
- `FUN_00086eb8 @ 00086eb8 desde 00022f8c`
- `FUN_00053a68 @ 00053a68 desde 00022f98`
- `FUN_00029218 @ 00029218 desde 00023010`
- `FUN_0002ad60 @ 0002ad60 desde 0002302c`
- `FUN_00040c20 @ 00040c20 desde 00023044`
- `FUN_0001ce64 @ 0001ce64 desde 000230b8`
- `FUN_0004e2d4 @ 0004e2d4 desde 000230d0`
- `FUN_000247d8 @ 000247d8 desde 000230dc`
- `FUN_00028968 @ 00028968 desde 000230fc`
- `FUN_0002b978 @ 0002b978 desde 00023128`
- `FUN_00023bc0 @ 00023bc0 desde 00023134`
- `FUN_00029c48 @ 00029c48 desde 00023148`
- `FUN_00020c68 @ 00020c68 desde 00023158`
- `FUN_0006d5d8 @ 0006d5d8 desde 00023174`
- `FUN_0001c190 @ 0001c190 desde 00023188`
- `FUN_0006d578 @ 0006d578 desde 0002318c`
- `FUN_000043c8 @ 000043c8 desde 000231b8`
- `FUN_00040c20 @ 00040c20 desde 000231ec`
- `FUN_000043c8 @ 000043c8 desde 000231fc`
- `FUN_00086eb8 @ 00086eb8 desde 00023220`
- `FUN_00053a68 @ 00053a68 desde 0002322c`

### Pseudocódigo

```c

undefined8
FUN_00022d08(int param_1,undefined8 *param_2,word *param_3,byte *param_4,uint *param_5,
            undefined8 param_6,undefined8 param_7,undefined8 param_8)

{
  byte bVar1;
  bool bVar2;
  ushort uVar3;
  int iVar4;
  uint uVar5;
  ulonglong *puVar6;
  char *pcVar7;
  ulonglong uVar8;
  undefined8 uVar9;
  undefined *puVar10;
  longlong lVar11;
  undefined8 extraout_x1;
  undefined8 extraout_x1_00;
  undefined8 extraout_x1_01;
  undefined8 extraout_x1_02;
  undefined8 extraout_x1_03;
  undefined8 extraout_x1_04;
  undefined8 extraout_x1_05;
  undefined8 extraout_x1_06;
  undefined8 extraout_x1_07;
  undefined8 extraout_x1_08;
  undefined8 extraout_x1_09;
  undefined8 extraout_x1_10;
  undefined8 extraout_x1_11;
  undefined8 extraout_x1_12;
  undefined8 extraout_x1_13;
  undefined8 extraout_x1_14;
  undefined8 extraout_x1_15;
  undefined8 extraout_x1_16;
  undefined8 extraout_x1_17;
  undefined8 extraout_x1_18;
  undefined1 auVar12 [16];
  ulonglong local_58;
  longlong lStack_50;
  undefined8 local_48;
  uint7 local_40;
  undefined1 uStack_39;
  undefined1 local_38;
  uint7 uStack_37;
  undefined8 local_30;
  longlong local_28;
  
  local_28 = DAT_000d08a0;
  iVar4 = FUN_0001be9c((byte *)"unlock",(byte *)*param_2);
  if (iVar4 == 0) {
    if ((DAT_000d2968 == 0) && (DAT_000d2990 != 0x3579)) {
      if (param_1 != 2) {
        pcVar7 = "usage: fastboot oem unlock < unlock code >";
        uVar9 = extraout_x1;
        goto LAB_00022ed0;
      }
      puVar6 = (ulonglong *)param_2[1];
      if (DAT_000d08a0 != local_28) goto LAB_00022f98;
    }
    else {
      if (DAT_000d08a0 != local_28) goto LAB_00022f98;
      puVar6 = (ulonglong *)0x0;
    }
    local_28 = DAT_000d08a0;
    uVar9 = extraout_x1;
    if (DAT_000d2968 < 0x77ee) {
      if (DAT_000d2968 != 0) {
        if (DAT_000d2968 == 0x7070) {
          pcVar7 = "Unsupported on engineering phone";
        }
        else {
LAB_000230ec:
          pcVar7 = "invalid boot state for unlocking";
        }
        goto LAB_000231b8;
      }
LAB_00023010:
      bVar2 = FUN_00029218();
      uVar9 = extraout_x1_10;
      if (bVar2) {
        if (DAT_000d0364 == 0xffffffff) {
          uVar3 = FUN_0002ad60(1,extraout_x1_10,param_3,param_4,param_5,param_6,param_7,param_8);
          param_3 = (word *)(ulonglong)uVar3;
          DAT_000d0364 = (uint)uVar3;
          FUN_00040c20(1,(ulonglong *)"SSM: SSM loaded CID=%d\n",param_3,param_4,param_5,param_6,
                       param_7,param_8);
          uVar9 = extraout_x1_11;
        }
        if ((((DAT_000d0364 != 0xff) && ((DAT_000d2975 & 1) == 0)) && (DAT_000d2968 != 0x7070)) &&
           (DAT_000d2990 != 0x3579)) {
          pcVar7 = "Check \'OEM unlocking\' in Android Settings > Developer Options";
          goto LAB_000231b8;
        }
      }
      if (((DAT_000d2968 == 0) && (DAT_000d2990 != 0x3579)) &&
         ((puVar6 == (ulonglong *)0x0 ||
          (uVar8 = FUN_0001ce64(puVar6,0x15), uVar9 = extraout_x1_12, 0x14 < uVar8)))) {
        pcVar7 = "usage: fastboot oem unlock < unlock code >";
        goto LAB_000231b8;
      }
      uVar9 = FUN_0004e2d4();
      if ((int)uVar9 == 1) {
        uVar8 = FUN_000247d8(uVar9,extraout_x1_13,param_3,param_4,param_5,param_6,param_7,param_8);
        uVar9 = extraout_x1_14;
        if ((uVar8 & 0xff) != 0) {
LAB_00023108:
          if ((DAT_000d2968 == 0) && (DAT_000d2990 != 0x3579)) {
            uVar5 = FUN_0002b978(puVar6,uVar9,(ulonglong)param_3,param_4,param_5,param_6,param_7,
                                 param_8);
            uVar8 = (ulonglong)uVar5;
            uVar9 = extraout_x1_16;
            if ((uVar5 & 0xff) == 0) {
              pcVar7 = "Code validation failure";
              goto LAB_000231b8;
            }
          }
          iVar4 = FUN_00023bc0(uVar8,uVar9,param_3,param_4,param_5,param_6,param_7,param_8);
          if (iVar4 == 0) {
            auVar12 = FUN_00029c48(0,extraout_x1_17,(char *)param_3);
            uVar9 = auVar12._8_8_;
            if ((auVar12._0_8_ & 0xff) != 0) {
              FUN_00020c68((undefined4 *)&local_40,auVar12._0_8_,uVar9,param_3,param_4,param_5,
                           param_6,param_7,param_8);
              uStack_39 = 0;
              local_38 = 0;
              local_58 = (ulonglong)local_40;
              lStack_50 = (ulonglong)uStack_37 << 8;
              local_48 = local_30;
              puVar10 = FUN_0006d5d8();
              if (puVar10 == (undefined *)0x0) {
                pcVar7 = "SSM: get DeviceInfo failed\n";
              }
              else {
                param_3 = &IMAGE_DOS_HEADER_00000000.e_lfarlc;
                FUN_0001c190((longlong)(puVar10 + 0x94),(longlong)&local_58,0x18);
                lVar11 = FUN_0006d578();
                if (lVar11 == 0) {
                  FUN_000043c8((short *)"Bootloader is unlocked!\n",extraout_x1_18,param_3,param_4,
                               param_5,param_6,param_7,param_8);
                  DAT_000d2968 = 0x77ee;
                  (*(code *)PTR_FUN_000d1d48)("fastboot_screen",2);
                  uVar9 = 1;
                  goto LAB_000231c0;
                }
                pcVar7 = "SSM: Unable to save persistent data\n";
              }
              FUN_00040c20(0,(ulonglong *)pcVar7,param_3,param_4,param_5,param_6,param_7,param_8);
              goto LAB_000231bc;
            }
            pcVar7 = "warranty void fuse fail";
          }
          else {
            pcVar7 = "Failed to erase userdata";
            uVar9 = extraout_x1_17;
          }
          goto LAB_000231b8;
        }
      }
      else {
        bVar1 = FUN_00028968('\x01');
        uVar8 = (ulonglong)bVar1;
        uVar9 = extraout_x1_15;
        if (bVar1 != 0) goto LAB_00023108;
      }
    }
    else {
      if (DAT_000d2968 == 0x88ff) goto LAB_00023010;
      if (DAT_000d2968 != 0x77ee) goto LAB_000230ec;
      pcVar7 = "Already unlocked";
LAB_000231b8:
      FUN_000043c8((short *)pcVar7,uVar9,param_3,param_4,param_5,param_6,param_7,param_8);
    }
LAB_000231bc:
    uVar9 = 0;
LAB_000231c0:
    if (DAT_000d08a0 != local_28) {
                    /* WARNING: Subroutine does not return */
      FUN_00053a68();
    }
    return uVar9;
  }
  iVar4 = FUN_0001be9c((byte *)0xb1271,(byte *)*param_2);
  if (iVar4 == 0) {
    uVar9 = extraout_x1_00;
    if (DAT_000d2968 < 0x77ee) {
      if (DAT_000d2968 == 0) {
LAB_00022e58:
        pcVar7 = "Already locked";
      }
      else {
        if (DAT_000d2968 != 0x7070) goto LAB_00022e90;
        pcVar7 = "Unsupported on engineering phone";
      }
      goto LAB_00022ed0;
    }
    if (DAT_000d2968 != 0x77ee) {
      if (DAT_000d2968 == 0x88ff) goto LAB_00022e58;
LAB_00022e90:
      pcVar7 = "invalid boot state for locking";
      goto LAB_00022ed0;
    }
    uVar9 = FUN_0004e2d4();
    if ((int)uVar9 == 1) {
      uVar8 = FUN_000247d8(uVar9,extraout_x1_05,param_3,param_4,param_5,param_6,param_7,param_8);
      uVar9 = extraout_x1_06;
    }
    else {
      bVar1 = FUN_00028968('\0');
      uVar8 = (ulonglong)bVar1;
      uVar9 = extraout_x1_07;
    }
    if ((uVar8 & 0xff) != 0) {
      iVar4 = FUN_00023bc0(uVar8,uVar9,param_3,param_4,param_5,param_6,param_7,param_8);
      if (iVar4 != 0) {
        pcVar7 = "Failed to erase userdata";
        uVar9 = extraout_x1_08;
        goto LAB_00022ed0;
      }
      DAT_000d2968 = 0x88ff;
      FUN_00020c68((undefined4 *)&local_40,0,extraout_x1_08,param_3,param_4,param_5,param_6,param_7,
                   param_8);
      local_38 = 1;
      lStack_50 = CONCAT71(uStack_37,1);
      local_48 = local_30;
      puVar10 = FUN_0006d5d8();
      if (puVar10 == (undefined *)0x0) {
        FUN_00040c20(0,(ulonglong *)"SSM: get DeviceInfo failed\n",param_3,param_4,param_5,param_6,
                     param_7,param_8);
      }
      else {
        uVar9 = 0x18;
        FUN_0001c190((longlong)(puVar10 + 0x94),(longlong)&local_58,0x18);
        lVar11 = FUN_0006d578();
        if (lVar11 == 0) {
          FUN_000043c8((short *)"Bootloader is now locked\n",extraout_x1_09,uVar9,param_4,param_5,
                       param_6,param_7,param_8);
          (*(code *)PTR_FUN_000d1d48)("fastboot_screen",2);
          uVar9 = 1;
          goto LAB_00022ed8;
        }
        FUN_00040c20(0,(ulonglong *)"SSM: Unable to save persistent data\n",uVar9,param_4,param_5,
                     param_6,param_7,param_8);
      }
    }
LAB_00022ed4:
    uVar9 = 0;
  }
  else {
    iVar4 = FUN_0001be9c((byte *)"unlock_critical",(byte *)*param_2);
    uVar9 = extraout_x1_01;
    if ((iVar4 == 0) ||
       (iVar4 = FUN_0001be9c((byte *)0xadf87,(byte *)*param_2), uVar9 = extraout_x1_02, iVar4 == 0))
    {
      pcVar7 = "Not supported command";
LAB_00022ed0:
      FUN_000043c8((short *)pcVar7,uVar9,param_3,param_4,param_5,param_6,param_7,param_8);
      goto LAB_00022ed4;
    }
    iVar4 = FUN_0001be9c((byte *)"get_unlock_ability",(byte *)*param_2);
    if (iVar4 != 0) {
      pcVar7 = "Unknown command";
      uVar9 = extraout_x1_03;
      goto LAB_00022ed0;
    }
    FUN_000043c8((short *)"use \"oem get_unlock_data\" and web portal",extraout_x1_03,param_3,
                 param_4,param_5,param_6,param_7,param_8);
    FUN_000043c8((short *)"    http://motorola.com/unlockbootloader",extraout_x1_04,param_3,param_4,
                 param_5,param_6,param_7,param_8);
    uVar9 = 1;
  }
LAB_00022ed8:
  if (DAT_000d08a0 == local_28) {
    return uVar9;
  }
LAB_00022f98:
                    /* WARNING: Subroutine does not return */
  FUN_00053a68();
}


```


---

## get_unlock_data_datablock_logic

- Dirección solicitada: `0002b020`
- Función: `FUN_0002b020`
- Entrada real: `0002b020`
- Cuerpo: `[[0002b020, 0002b977]]`

### Callers

- `FUN_00022c00 @ 00022c00 desde 00022c18`

### Callees

- `FUN_0002ae90 @ 0002ae90 desde 0002b050`
- `FUN_0002d7f8 @ 0002d7f8 desde 0002b064`
- `FUN_0002ee40 @ 0002ee40 desde 0002b07c`
- `FUN_0002ede8 @ 0002ede8 desde 0002b08c`
- `FUN_00015910 @ 00015910 desde 0002b0b4`
- `FUN_00040c20 @ 00040c20 desde 0002b0dc`
- `FUN_00015710 @ 00015710 desde 0002b120`
- `FUN_00040c20 @ 00040c20 desde 0002b45c`
- `FUN_0001a704 @ 0001a704 desde 0002b960`
- `FUN_00015910 @ 00015910 desde 0002b96c`
- `FUN_00053a68 @ 00053a68 desde 0002b974`

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

## historical_hash_validation_candidate

- Dirección solicitada: `0002b978`
- Función: `FUN_0002b978`
- Entrada real: `0002b978`
- Cuerpo: `[[0002b978, 0002bb57]]`

### Callers

- `FUN_00022d08 @ 00022d08 desde 00023128`

### Callees

- `FUN_0002ae90 @ 0002ae90 desde 0002b9a4`
- `FUN_0002d7f8 @ 0002d7f8 desde 0002b9b8`
- `FUN_0002ee40 @ 0002ee40 desde 0002b9d4`
- `FUN_0002ede8 @ 0002ede8 desde 0002b9e4`
- `FUN_00040c20 @ 00040c20 desde 0002ba30`
- `FUN_0001c190 @ 0001c190 desde 0002ba48`
- `FUN_0002d598 @ 0002d598 desde 0002ba60`
- `FUN_0002d598 @ 0002d598 desde 0002ba88`
- `FUN_0001ca9c @ 0001ca9c desde 0002bacc`
- `FUN_00040c20 @ 00040c20 desde 0002bafc`
- `FUN_00015910 @ 00015910 desde 0002bb0c`
- `FUN_00040c20 @ 00040c20 desde 0002bb4c`
- `FUN_00053a68 @ 00053a68 desde 0002bb54`

### Pseudocódigo

```c

undefined4
FUN_0002b978(undefined8 *param_1,undefined8 param_2,ulonglong param_3,byte *param_4,uint *param_5,
            undefined8 param_6,undefined8 param_7,undefined8 param_8)

{
  short sVar1;
  int iVar2;
  int iVar3;
  ulonglong uVar4;
  undefined8 uVar5;
  char *pcVar6;
  longlong lVar7;
  undefined4 uVar8;
  uint uVar9;
  longlong lVar10;
  uint local_98;
  undefined1 auStack_94 [4];
  longlong local_90;
  byte local_88 [32];
  undefined8 auStack_68 [2];
  byte abStack_58 [32];
  longlong local_38;
  
  local_38 = DAT_000d08a0;
  local_90 = 0;
  local_98 = 0x20;
  uVar4 = FUN_0002ae90();
  if ((uVar4 & 0xff) == 0) {
    uVar8 = 0;
    goto LAB_0002bb14;
  }
  uVar5 = FUN_0002d7f8(&local_90,auStack_94);
  uVar8 = 0;
  if (((int)uVar5 == 0xf) && (local_90 != 0)) {
    sVar1 = FUN_0002ee40(local_90);
    iVar2 = FUN_0002ede8(local_90);
    if (sVar1 == 2) {
      uVar9 = 1;
      lVar10 = 0x20;
      pcVar6 = "validate_hash_password: Version 2 datablock\n";
LAB_0002ba2c:
      FUN_00040c20(1,(ulonglong *)pcVar6,param_3,param_4,param_5,param_6,param_7,param_8);
      FUN_0001c190((longlong)auStack_68,local_90 + 8,0x10);
      param_4 = abStack_58;
      param_3 = 0x14;
      param_5 = &local_98;
      iVar3 = FUN_0002d598(uVar9,param_1,0x14,(int *)param_4,param_5);
      if (iVar3 == 0xf) {
        local_98 = (uint)lVar10;
        param_3 = (ulonglong)(local_98 + 0x10);
        param_4 = local_88;
        param_5 = &local_98;
        iVar3 = FUN_0002d598(uVar9,auStack_68,local_98 + 0x10,(int *)param_4,param_5);
        if (iVar3 == 0xf) {
          lVar7 = 0;
          do {
            if (local_88[lVar7] !=
                *(byte *)(local_90 + (ulonglong)(uint)(iVar2 + 0x26 + (int)lVar7))) {
              FUN_00040c20(1,(ulonglong *)"hash at offset i: %02d : %02x does not match\n",lVar7,
                           (ulonglong)local_88[lVar7],param_5,param_6,param_7,param_8);
              goto LAB_0002bb00;
            }
            lVar7 = lVar7 + 1;
          } while (lVar7 != lVar10);
          FUN_0001ca9c(local_88,0,0x20);
          uVar8 = 1;
          goto LAB_0002bb08;
        }
        pcVar6 = "hash calculation failure!\n";
      }
      else {
        pcVar6 = "hash calculation faliure!\n";
      }
    }
    else {
      if (sVar1 == 1) {
        uVar9 = 0;
        lVar10 = 0x14;
        pcVar6 = "validate_hash_password: Version 1 datablock\n";
        goto LAB_0002ba2c;
      }
      pcVar6 = "validate_hash_password: Unsupported datablock\n";
    }
    FUN_00040c20(1,(ulonglong *)pcVar6,param_3,param_4,param_5,param_6,param_7,param_8);
LAB_0002bb00:
    uVar8 = 0;
  }
LAB_0002bb08:
  if (local_90 != 0) {
    FUN_00015910();
    local_90 = 0;
  }
LAB_0002bb14:
  if (DAT_000d08a0 != local_38) {
                    /* WARNING: Subroutine does not return */
    FUN_00053a68();
  }
  return uVar8;
}


```


---

## helper_2AE90

- Dirección solicitada: `0002ae90`
- Función: `FUN_0002ae90`
- Entrada real: `0002ae90`
- Cuerpo: `[[0002ae90, 0002b01f]]`

### Callers

- `FUN_0002b978 @ 0002b978 desde 0002b9a4`
- `FUN_0002b020 @ 0002b020 desde 0002b050`

### Callees

- `FUN_00040c20 @ 00040c20 desde 0002aec8`
- `FUN_0002d7f8 @ 0002d7f8 desde 0002aed4`
- `FUN_00023b78 @ 00023b78 desde 0002af00`
- `FUN_0001c190 @ 0001c190 desde 0002af58`
- `FUN_00040c20 @ 00040c20 desde 0002af74`
- `FUN_00015910 @ 00015910 desde 0002af80`
- `FUN_00040c20 @ 00040c20 desde 0002af9c`
- `FUN_00040c20 @ 00040c20 desde 0002afe8`
- `FUN_00053a68 @ 00053a68 desde 0002b01c`

### Pseudocódigo

```c

undefined8 FUN_0002ae90(void)

{
  longlong lVar1;
  char cVar2;
  undefined1 uVar3;
  ushort uVar4;
  bool bVar5;
  undefined8 uVar6;
  char *pcVar7;
  char *pcVar8;
  undefined8 in_x3;
  undefined8 in_x4;
  undefined8 in_x5;
  undefined8 in_x6;
  undefined8 in_x7;
  undefined1 local_34 [4];
  longlong local_30;
  longlong local_28;
  
  local_28 = DAT_000d08a0;
  local_30 = 0;
  local_34[0] = 0x10;
  FUN_00040c20(1,(ulonglong *)"%s - START\n","load_and_validate_cid",in_x3,in_x4,in_x5,in_x6,in_x7);
  uVar6 = FUN_0002d7f8(&local_30,local_34);
  bVar5 = false;
  if (((int)uVar6 == 0xf) && (local_30 != 0)) {
    cVar2 = *(char *)(local_30 + 3);
    uVar3 = *(undefined1 *)(local_30 + 2);
    bVar5 = FUN_00023b78();
    uVar4 = CONCAT11(uVar3,cVar2);
    if (bVar5) {
      if (uVar4 < 2) {
LAB_0002af14:
        bVar5 = false;
        local_34[0] = 8;
        goto LAB_0002af7c;
      }
    }
    else if (uVar4 != 1) goto LAB_0002af14;
    lVar1 = 0x28;
    if (CONCAT11(uVar3,cVar2) != 1) {
      lVar1 = 0x2a;
    }
    DAT_000d34d0 = cVar2;
    FUN_0001c190(0xd34cc,local_30 + lVar1,2);
    bVar5 = true;
    FUN_00040c20(1,(ulonglong *)"%s - SUCCESS\n","load_and_validate_cid",in_x3,in_x4,in_x5,in_x6,
                 in_x7);
  }
LAB_0002af7c:
  if (local_30 != 0) {
    FUN_00015910();
  }
  pcVar8 = "load_and_validate_cid";
  local_30 = 0;
  FUN_00040c20(1,(ulonglong *)"%s - END\n","load_and_validate_cid",in_x3,in_x4,in_x5,in_x6,in_x7);
  if (bVar5) {
    if (DAT_000d34d0 == '\0') {
      pcVar7 = "CID v0\n";
    }
    else {
      if (DAT_000d34cd != '\x01') {
        uVar6 = 1;
        goto LAB_0002aff0;
      }
      pcVar7 = "CID flag disable\n";
    }
  }
  else {
    pcVar7 = "CID invalid\n";
  }
  FUN_00040c20(1,(ulonglong *)pcVar7,pcVar8,in_x3,in_x4,in_x5,in_x6,in_x7);
  uVar6 = 0;
LAB_0002aff0:
  if (DAT_000d08a0 != local_28) {
                    /* WARNING: Subroutine does not return */
    FUN_00053a68();
  }
  return uVar6;
}


```


---

## helper_2D7F8

- Dirección solicitada: `0002d7f8`
- Función: `FUN_0002d7f8`
- Entrada real: `0002d7f8`
- Cuerpo: `[[0002d7f8, 0002d917]]`

### Callers

- `FUN_0002ad60 @ 0002ad60 desde 0002ad88`
- `FUN_0002b978 @ 0002b978 desde 0002b9b8`
- `FUN_0002ae90 @ 0002ae90 desde 0002aed4`
- `FUN_0002b020 @ 0002b020 desde 0002b064`

### Callees

- `FUN_00038910 @ 00038910 desde 0002d824`
- `FUN_00038608 @ 00038608 desde 0002d840`
- `FUN_00023b78 @ 00023b78 desde 0002d84c`
- `FUN_00015910 @ 00015910 desde 0002d878`
- `FUN_0002e518 @ 0002e518 desde 0002d890`
- `FUN_00038910 @ 00038910 desde 0002d8a4`
- `FUN_00015910 @ 00015910 desde 0002d8d0`
- `FUN_00038910 @ 00038910 desde 0002d8e8`
- `FUN_00053a68 @ 00053a68 desde 0002d914`

### Pseudocódigo

```c

undefined8 FUN_0002d7f8(longlong *param_1,undefined1 *param_2)

{
  bool bVar1;
  int iVar2;
  undefined8 uVar3;
  longlong local_60;
  undefined8 uStack_58;
  undefined8 local_50;
  undefined4 local_48;
  ushort local_34 [2];
  undefined8 *local_30;
  longlong local_28;
  
  local_28 = DAT_000d08a0;
  local_30 = (undefined8 *)0x0;
  FUN_00038910();
  local_60 = 0;
  uStack_58 = 0;
  local_48 = 0;
  local_50 = 0;
  uVar3 = FUN_00038608((longlong *)&local_30,(short *)local_34,&local_60);
  if ((int)uVar3 == 0xf) {
    bVar1 = FUN_00023b78();
    if ((local_34[0] < 2) && (bVar1)) {
      *param_2 = 8;
      goto joined_r0x0002d8c0;
    }
    iVar2 = FUN_0002e518(local_30,&local_60,0xf0,local_34[0],param_2);
    if (iVar2 != 0xf) goto joined_r0x0002d8c0;
    FUN_00038910();
    uVar3 = 0xf;
  }
  else {
joined_r0x0002d8c0:
    uVar3 = 0x55;
  }
  if (param_1 == (longlong *)0x0) {
    if (local_30 != (undefined8 *)0x0) {
      FUN_00015910();
    }
  }
  else {
    if (local_30 != (undefined8 *)0x0) {
      if (*param_1 == 0) {
        *param_1 = (longlong)local_30;
        goto LAB_0002d8e0;
      }
      FUN_00015910();
    }
    uVar3 = 0x55;
  }
LAB_0002d8e0:
  FUN_00038910();
  if (DAT_000d08a0 != local_28) {
                    /* WARNING: Subroutine does not return */
    FUN_00053a68();
  }
  return uVar3;
}


```


---

## helper_2EE40

- Dirección solicitada: `0002ee40`
- Función: `FUN_0002ee40`
- Entrada real: `0002ee40`
- Cuerpo: `[[0002ee40, 0002ee87]]`

### Callers

- `FUN_0002b978 @ 0002b978 desde 0002b9d4`
- `FUN_0002b020 @ 0002b020 desde 0002b07c`
- `FUN_0002ddd8 @ 0002ddd8 desde 0002de58`

### Callees

- `FUN_00053a68 @ 00053a68 desde 0002ee84`

### Pseudocódigo

```c

/* WARNING: Removing unreachable block (ram,0x0002ee84) */

undefined2 FUN_0002ee40(longlong param_1)

{
  undefined2 uVar1;
  
  uVar1 = 0;
  if (param_1 != 0) {
    uVar1 = CONCAT11(*(undefined1 *)(param_1 + 2),*(undefined1 *)(param_1 + 3));
  }
  return uVar1;
}


```


---

## helper_2EDE8

- Dirección solicitada: `0002ede8`
- Función: `FUN_0002ede8`
- Entrada real: `0002ede8`
- Cuerpo: `[[0002ede8, 0002ee3f]]`

### Callers

- `FUN_0002b978 @ 0002b978 desde 0002b9e4`
- `FUN_0002b020 @ 0002b020 desde 0002b08c`
- `FUN_0002ddd8 @ 0002ddd8 desde 0002dee4`

### Callees

- `FUN_00053a68 @ 00053a68 desde 0002ee3c`

### Pseudocódigo

```c

/* WARNING: Removing unreachable block (ram,0x0002ee3c) */

undefined4 FUN_0002ede8(longlong param_1)

{
  undefined4 uVar1;
  
  uVar1 = 0;
  if ((param_1 != 0) &&
     (uVar1 = 0x28, 1 < CONCAT11(*(undefined1 *)(param_1 + 2),*(undefined1 *)(param_1 + 3)))) {
    uVar1 = 0x2a;
  }
  return uVar1;
}


```


---

## table_wrapper_get_unlock_data

- Dirección solicitada: `0000cc28`
- Función: `FUN_0000cc28`
- Entrada real: `0000cc28`
- Cuerpo: `[[0000cc28, 0000cc3b]]`

### Callers

- Ninguno identificado.

### Callees

- `FUN_00022c00 @ 00022c00 desde 0000cc2c`

Pseudocódigo ya exportado anteriormente.

---

## table_wrapper_cid_prov_req

- Dirección solicitada: `0000cc10`
- Función: `FUN_0000cc10`
- Entrada real: `0000cc10`
- Cuerpo: `[[0000cc10, 0000cc23]]`

### Callers

- Ninguno identificado.

### Callees

- `FUN_0002bcc0 @ 0002bcc0 desde 0000cc14`

Pseudocódigo ya exportado anteriormente.

---

## crypto_hash_core

- Dirección solicitada: `0002d598`
- Función: `FUN_0002d598`
- Entrada real: `0002d598`
- Cuerpo: `[[0002d598, 0002d693]]`

### Callers

- `FUN_0002e518 @ 0002e518 desde 0002e5b0`
- `FUN_0002b978 @ 0002b978 desde 0002ba60`
- `FUN_0002b978 @ 0002b978 desde 0002ba88`

### Callees

- `FUN_00030910 @ 00030910 desde 0002d614`
- `FUN_00030c90 @ 00030c90 desde 0002d630`
- `FUN_00030ea8 @ 00030ea8 desde 0002d648`
- `FUN_00031628 @ 00031628 desde 0002d65c`
- `FUN_00053a68 @ 00053a68 desde 0002d690`

### Pseudocódigo

```c

undefined4 FUN_0002d598(uint param_1,undefined8 *param_2,uint param_3,int *param_4,uint *param_5)

{
  undefined8 uVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  int aiStack_120 [54];
  longlong local_48;
  
  uVar3 = 0xf0;
  local_48 = DAT_000d08a0;
  if ((((param_1 < 2) && (param_2 != (undefined8 *)0x0)) && (param_4 != (int *)0x0)) &&
     (param_5 != (uint *)0x0)) {
    uVar4 = 0x14;
    if (param_1 != 0) {
      uVar4 = 0x20;
    }
    if (*param_5 < uVar4) {
      uVar3 = 0x33;
    }
    else {
      iVar2 = 0xd;
      if (param_1 != 0) {
        iVar2 = 0xe;
      }
      uVar1 = FUN_00030910(iVar2,aiStack_120);
      if ((int)uVar1 == 0) {
        uVar1 = FUN_00030c90(aiStack_120,param_2,param_3);
        uVar3 = 0x55;
        if ((int)uVar1 == 0) {
          uVar1 = FUN_00030ea8(aiStack_120,param_4,param_5);
          uVar3 = 0xf;
          if ((int)uVar1 != 0) {
            uVar3 = 0x55;
          }
        }
        FUN_00031628(aiStack_120);
      }
      else {
        uVar3 = 0x55;
      }
    }
  }
  if (DAT_000d08a0 != local_48) {
                    /* WARNING: Subroutine does not return */
    FUN_00053a68();
  }
  return uVar3;
}


```


---

## cid_provision_handler

- Dirección solicitada: `0002bcc0`
- Función: `FUN_0002bcc0`
- Entrada real: `0002bcc0`
- Cuerpo: `[[0002bcc0, 0002bf57]]`

### Callers

- `FUN_0000cc10 @ 0000cc10 desde 0000cc14`

### Callees

- `FUN_00023b78 @ 00023b78 desde 0002bcec`
- `FUN_0002df08 @ 0002df08 desde 0002bd10`
- `FUN_00015710 @ 00015710 desde 0002bd40`
- `FUN_0001ca9c @ 0001ca9c desde 0002bd54`
- `FUN_0002df08 @ 0002df08 desde 0002bd68`
- `FUN_0002ddd8 @ 0002ddd8 desde 0002bd88`
- `FUN_00015710 @ 00015710 desde 0002bda4`
- `FUN_0001ca9c @ 0001ca9c desde 0002bdc0`
- `FUN_0001a704 @ 0001a704 desde 0002be50`
- `FUN_000043c8 @ 000043c8 desde 0002be58`
- `FUN_0001ca9c @ 0001ca9c desde 0002be70`
- `FUN_000043c8 @ 000043c8 desde 0002be88`
- `FUN_000043c8 @ 000043c8 desde 0002be98`
- `FUN_000043c8 @ 000043c8 desde 0002bea8`
- `FUN_000043c8 @ 000043c8 desde 0002bebc`
- `FUN_000043c8 @ 000043c8 desde 0002bedc`
- `FUN_0001a704 @ 0001a704 desde 0002befc`
- `FUN_000043c8 @ 000043c8 desde 0002bf04`
- `FUN_0001ca9c @ 0001ca9c desde 0002bf14`
- `FUN_00015910 @ 00015910 desde 0002bf1c`
- `FUN_00015910 @ 00015910 desde 0002bf24`
- `FUN_00053a68 @ 00053a68 desde 0002bf54`

### Pseudocódigo

```c

void FUN_0002bcc0(int param_1,longlong param_2,undefined8 param_3,undefined8 param_4,
                 undefined8 param_5,undefined8 param_6,undefined8 param_7,undefined8 param_8)

{
  bool bVar1;
  bool bVar2;
  ulonglong uVar3;
  char *pcVar4;
  undefined8 extraout_x1;
  undefined8 extraout_x1_00;
  undefined8 extraout_x1_01;
  undefined8 uVar5;
  byte *pbVar6;
  uint *puVar7;
  uint *puVar8;
  byte *pbVar9;
  byte *pbVar10;
  uint uVar11;
  undefined1 auVar12 [16];
  uint local_70;
  byte abStack_6c [36];
  longlong local_48;
  
  puVar7 = &local_70;
  puVar8 = &local_70;
  local_48 = DAT_000d08a0;
  local_70 = 0;
  bVar2 = FUN_00023b78();
  uVar11 = 1;
  if (bVar2) {
    uVar11 = 2;
  }
  uVar5 = 0;
  uVar3 = FUN_0002df08(0xf0,uVar11,(undefined1 *)0x0,&local_70);
  if ((int)uVar3 != 0xf) {
    FUN_000043c8((short *)"prov req failed dbval_rsp %lx\n",uVar3 & 0xffffffff,uVar5,puVar7,param_5,
                 param_6,param_7,param_8);
    goto LAB_0002bf28;
  }
  uVar3 = (ulonglong)local_70;
  bVar1 = uVar3 == 0xc4;
  if (!bVar2) {
    bVar1 = uVar3 == 0xb6;
  }
  if (!bVar1) {
    FUN_000043c8((short *)"prov req failed  db_len %d\n",uVar3,uVar5,puVar7,param_5,param_6,param_7,
                 param_8);
    goto LAB_0002bf28;
  }
  auVar12 = FUN_00015710();
  pbVar9 = auVar12._0_8_;
  if (pbVar9 == (byte *)0x0) {
    FUN_000043c8((short *)"Failed to malloc memory for CID prov request\n",auVar12._8_8_,uVar5,
                 puVar7,param_5,param_6,param_7,param_8);
    goto LAB_0002bf28;
  }
  FUN_0001ca9c(pbVar9,0,(ulonglong)local_70);
  pbVar6 = pbVar9;
  uVar3 = FUN_0002df08(0xf0,uVar11,pbVar9,&local_70);
  if ((int)uVar3 == 0xf) {
    if (param_1 == 2) {
      pbVar6 = *(byte **)(param_2 + 8);
      uVar5 = FUN_0002ddd8((longlong)pbVar9,local_70,pbVar6);
      if ((int)uVar5 == 0xf) goto LAB_0002bd94;
      pcVar4 = "invalid arg!\n";
      uVar5 = extraout_x1;
    }
    else {
LAB_0002bd94:
      auVar12 = FUN_00015710();
      uVar5 = auVar12._8_8_;
      pbVar10 = auVar12._0_8_;
      if (pbVar10 != (byte *)0x0) {
        FUN_0001ca9c(pbVar10,0,(ulonglong)(local_70 << 1 | 1));
        pbVar6 = pbVar10;
        if (local_70 != 0) {
          uVar3 = 0;
          do {
            uVar3 = uVar3 + 1;
            *pbVar6 = "0123456789abcdef"[*pbVar9 >> 4];
            pbVar6[1] = "0123456789abcdef"[(ulonglong)*pbVar9 & 0xf];
            pbVar6 = pbVar6 + 2;
            pbVar9 = pbVar9 + 1;
          } while (uVar3 != local_70);
          pbVar6 = pbVar10 + (ulonglong)local_70 * 2;
        }
        *pbVar6 = 0;
        uVar11 = local_70 << 1;
        if (uVar11 != 0) {
          do {
            if (uVar11 < 0x20) {
              pcVar4 = "%s";
              FUN_0001a704(abStack_6c,(ulonglong)(uVar11 + 1),(ulonglong *)0xc56d6);
              FUN_000043c8((short *)abStack_6c,extraout_x1_01,pcVar4,pbVar10,param_5,param_6,param_7
                           ,param_8);
              FUN_0001ca9c(abStack_6c,0,0x20);
              break;
            }
            pcVar4 = "%s";
            pbVar9 = pbVar10;
            FUN_0001a704(abStack_6c,0x21,(ulonglong *)0xc56d6);
            FUN_000043c8((short *)abStack_6c,extraout_x1_00,pcVar4,pbVar9,param_5,param_6,param_7,
                         param_8);
            pbVar10 = pbVar10 + 0x20;
            uVar11 = uVar11 - 0x20;
            FUN_0001ca9c(abStack_6c,0,0x20);
          } while (uVar11 != 0);
        }
        FUN_00015910();
        goto LAB_0002bf24;
      }
      pcVar4 = "Failed to malloc memory for CID prov request\n";
    }
    FUN_000043c8((short *)pcVar4,uVar5,pbVar6,puVar8,param_5,param_6,param_7,param_8);
  }
  else {
    FUN_000043c8((short *)"CID prov request failed, dbval_rsp %lx\n",uVar3 & 0xffffffff,pbVar6,
                 puVar8,param_5,param_6,param_7,param_8);
  }
LAB_0002bf24:
  FUN_00015910();
LAB_0002bf28:
  if (DAT_000d08a0 != local_48) {
                    /* WARNING: Subroutine does not return */
    FUN_00053a68();
  }
  return;
}


```


---

## datablock_validation_core

- Dirección solicitada: `0002e518`
- Función: `FUN_0002e518`
- Entrada real: `0002e518`
- Cuerpo: `[[0002e518, 0002e77b]]`

### Callers

- `FUN_0002d7f8 @ 0002d7f8 desde 0002d890`
- `FUN_0002ab70 @ 0002ab70 desde 0002acf0`

### Callees

- `FUN_00015710 @ 00015710 desde 0002e558`
- `FUN_00038910 @ 00038910 desde 0002e568`
- `FUN_0002ee88 @ 0002ee88 desde 0002e57c`
- `FUN_0002d598 @ 0002d598 desde 0002e5b0`
- `FUN_0001ce00 @ 0001ce00 desde 0002e5c8`
- `FUN_00038910 @ 00038910 desde 0002e5d8`
- `FUN_0002d698 @ 0002d698 desde 0002e5e8`
- `FUN_00038910 @ 00038910 desde 0002e5fc`
- `FUN_00038910 @ 00038910 desde 0002e608`
- `FUN_0001c190 @ 0001c190 desde 0002e620`
- `FUN_00015910 @ 00015910 desde 0002e65c`
- `FUN_00038910 @ 00038910 desde 0002e738`
- `FUN_00038910 @ 00038910 desde 0002e744`
- `FUN_0002d3b8 @ 0002d3b8 desde 0002e760`
- `FUN_00053a68 @ 00053a68 desde 0002e778`

### Pseudocódigo

```c

undefined4
FUN_0002e518(undefined8 *param_1,longlong *param_2,uint param_3,ushort param_4,undefined1 *param_5)

{
  int iVar1;
  undefined4 uVar2;
  byte *pbVar3;
  undefined8 uVar4;
  uint uVar5;
  ulonglong uVar6;
  uint local_4c;
  longlong local_48;
  
  local_48 = DAT_000d08a0;
  local_4c = 0x20;
  pbVar3 = (byte *)FUN_00015710();
  FUN_00038910();
  uVar4 = FUN_0002ee88((undefined1 *)param_1,param_3,param_4,param_5);
  if ((int)uVar4 == 0xf) {
    *param_5 = 0xb;
    if ((((pbVar3 == (byte *)0x0) || (param_2[2] == 0)) ||
        (iVar1 = FUN_0002d598(1,(undefined8 *)*param_2,*(uint *)(param_2 + 3),(int *)pbVar3,
                              &local_4c), iVar1 != 0xf)) ||
       (iVar1 = FUN_0001ce00(pbVar3,(byte *)param_2[2],0x20), iVar1 != 0)) {
      FUN_00038910();
      uVar4 = FUN_0002d698(param_2);
      if ((int)uVar4 == 0xf) goto LAB_0002e5f4;
LAB_0002e720:
      uVar2 = 0x55;
    }
    else {
LAB_0002e5f4:
      FUN_00038910();
      FUN_00038910();
      if ((pbVar3 != (byte *)0x0) && (param_2[2] != 0)) {
        FUN_0001c190(param_2[2],(longlong)pbVar3,0x20);
      }
      uVar2 = 0x55;
      if ((int)param_3 < 0xaa) {
        if (param_3 != 0xf) {
          if (param_3 != 0x33) goto LAB_0002e768;
          uVar6 = 0x16c;
          goto joined_r0x0002e6b4;
        }
        uVar5 = 0x46;
        if (param_4 != 2) {
          uVar5 = 0x44;
        }
        uVar6 = (ulonglong)uVar5;
        if (param_1 != (undefined8 *)0x0) goto LAB_0002e6e0;
LAB_0002e728:
        iVar1 = 1;
        uVar5 = 0x80;
      }
      else {
        if (param_3 == 0xaa) {
          uVar6 = 0x28;
        }
        else {
          if (param_3 != 0xf0) goto LAB_0002e768;
          uVar5 = 0x70;
          if (param_4 != 2) {
            uVar5 = 0x62;
          }
          uVar6 = (ulonglong)uVar5;
        }
joined_r0x0002e6b4:
        if (param_1 == (undefined8 *)0x0) goto LAB_0002e728;
LAB_0002e6e0:
        if ((CONCAT11(*(undefined1 *)((longlong)param_1 + 2),*(undefined1 *)((longlong)param_1 + 3))
             < 2) || (*(char *)(param_1 + 5) == '\x01')) goto LAB_0002e728;
        if (*(char *)(param_1 + 5) != '\x02') goto LAB_0002e720;
        iVar1 = 2;
        uVar5 = 0x100;
      }
      FUN_00038910();
      FUN_00038910();
      uVar2 = FUN_0002d3b8(iVar1,param_1,(uint)uVar6,(undefined8 *)((longlong)param_1 + uVar6),uVar5
                           ,param_2);
    }
  }
  else {
    uVar2 = 0x55;
    if (param_5 == (undefined1 *)0x0) goto joined_r0x0002e654;
  }
LAB_0002e768:
  *param_5 = 0xd;
joined_r0x0002e654:
  if (pbVar3 != (byte *)0x0) {
    FUN_00015910();
  }
  if (DAT_000d08a0 == local_48) {
    return uVar2;
  }
                    /* WARNING: Subroutine does not return */
  FUN_00053a68();
}


```


---

## datablock_storage_reader

- Dirección solicitada: `00038608`
- Función: `FUN_00038608`
- Entrada real: `00038608`
- Cuerpo: `[[00038608, 000387d3]]`

### Callers

- `FUN_0002d7f8 @ 0002d7f8 desde 0002d840`

### Callees

- `FUN_00038988 @ 00038988 desde 00038658`
- `FUN_00038988 @ 00038988 desde 000386ac`
- `FUN_00038988 @ 00038988 desde 000386d4`
- `FUN_00015710 @ 00015710 desde 00038700`
- `FUN_00038988 @ 00038988 desde 00038718`
- `FUN_00015910 @ 00015910 desde 0003879c`
- `FUN_00053a68 @ 00053a68 desde 000387d0`

### Pseudocódigo

```c

undefined8 FUN_00038608(longlong *param_1,short *param_2,longlong *param_3)

{
  int iVar1;
  uint uVar2;
  ulonglong uVar3;
  bool bVar4;
  undefined8 uVar5;
  longlong lVar6;
  ushort uVar7;
  uint uVar8;
  ulonglong uVar9;
  ushort local_3c [2];
  longlong local_38;
  
  uVar5 = 0x69;
  local_38 = DAT_000d08a0;
  *param_1 = 0;
  if ((param_2 == (short *)0x0) || (param_3 == (longlong *)0x0)) goto LAB_000387a8;
  *param_3 = 0;
  param_3[1] = 0;
  *(undefined4 *)(param_3 + 3) = 0;
  bVar4 = FUN_00038988((longlong)local_3c,2,2,2);
  if (!bVar4) goto LAB_00038748;
  uVar8 = (local_3c[0] & 0xff00) << 8 | (uint)local_3c[0] << 0x18;
  uVar2 = uVar8 >> 0x10;
  *param_2 = (short)(uVar8 >> 0x10);
  if (uVar2 == 0) {
    uVar5 = 0xcc;
    goto LAB_000387a8;
  }
  if (uVar2 == 2) {
    bVar4 = FUN_00038988((longlong)local_3c,0x170,2,2);
    if (bVar4) {
      uVar3 = ((ulonglong)local_3c[0] & 0xff00) << 0x28 | (ulonglong)local_3c[0] << 0x38;
      uVar9 = uVar3 >> 0x30;
      uVar8 = (uint)(ushort)(uVar3 >> 0x30);
      bVar4 = FUN_00038988((longlong)local_3c,(ulonglong)(uVar8 + 0x172),2,2);
      if (bVar4) {
        iVar1 = (((local_3c[0] & 0xff00) << 8 | (uint)local_3c[0] << 0x18) >> 0x10) + uVar8;
        uVar7 = (short)iVar1 + 0x174;
        *(int *)(param_3 + 3) = iVar1 + 4;
        goto LAB_000386fc;
      }
    }
  }
  else {
    if (uVar2 != 1) {
      uVar5 = 0x55;
      goto LAB_000387a8;
    }
    uVar9 = 0;
    uVar7 = 0xa46;
    *(undefined4 *)(param_3 + 3) = 0x964;
LAB_000386fc:
    lVar6 = FUN_00015710();
    *param_1 = lVar6;
    if (lVar6 != 0) {
      bVar4 = FUN_00038988(lVar6,0,uVar7,uVar7);
      if (bVar4) {
        if (*param_2 == 1) {
          *param_3 = *param_1 + 0xe2;
          lVar6 = *param_1 + 0x592;
        }
        else {
          if (*param_2 != 2) goto LAB_0003879c;
          *param_3 = *param_1 + 0x170;
          lVar6 = *param_1 + uVar9 + 0x170;
        }
        param_3[1] = lVar6 + 2;
        if ((int)param_3[3] != 0) {
          uVar5 = 0xf;
          goto LAB_000387a8;
        }
      }
LAB_0003879c:
      FUN_00015910();
      uVar5 = 0x69;
      *param_1 = 0;
      goto LAB_000387a8;
    }
  }
LAB_00038748:
  uVar5 = 0x69;
LAB_000387a8:
  if (DAT_000d08a0 != local_38) {
                    /* WARNING: Subroutine does not return */
    FUN_00053a68();
  }
  return uVar5;
}


```


---

## production_or_engineering_predicate

- Dirección solicitada: `00023b78`
- Función: `FUN_00023b78`
- Entrada real: `00023b78`
- Cuerpo: `[[00023b78, 00023bbf]]`

### Callers

- `FUN_0002d7f8 @ 0002d7f8 desde 0002d84c`
- `FUN_0002ae90 @ 0002ae90 desde 0002af00`
- `FUN_0002bcc0 @ 0002bcc0 desde 0002bcec`

### Callees

- `FUN_0001d444 @ 0001d444 desde 00023bb8`
- `FUN_00053a68 @ 00053a68 desde 00023bbc`

### Pseudocódigo

```c

/* WARNING: Removing unreachable block (ram,0x00023bbc) */

bool FUN_00023b78(void)

{
  bool bVar1;
  
  bVar1 = FUN_0001d444("/security","enable_dbvc_v3");
  return bVar1;
}


```


---

## hash_algorithm_selector

- Dirección solicitada: `00030910`
- Función: `FUN_00030910`
- Entrada real: `00030910`
- Cuerpo: `[[00030910, 00030c8f]]`

### Callers

- `FUN_0002d598 @ 0002d598 desde 0002d614`
- `FUN_00032108 @ 00032108 desde 00032198`
- `FUN_000336f0 @ 000336f0 desde 00033c08`
- `FUN_000336f0 @ 000336f0 desde 00033c98`
- `FUN_000336f0 @ 000336f0 desde 00033d40`
- `FUN_000336f0 @ 000336f0 desde 00033df4`
- `FUN_00031ea8 @ 00031ea8 desde 00031f48`
- `FUN_00032408 @ 00032408 desde 0003255c`
- `FUN_00032e78 @ 00032e78 desde 00032f64`
- `FUN_000346e0 @ 000346e0 desde 000347bc`

### Callees

- `FUN_00031938 @ 00031938 desde 00030950`
- `FUN_00053a68 @ 00053a68 desde 00030c8c`

### Pseudocódigo

```c

undefined8 FUN_00030910(int param_1,int *param_2)

{
  byte *pbVar1;
  byte *pbVar2;
  byte *pbVar3;
  byte *pbVar4;
  byte *pbVar5;
  byte *pbVar6;
  byte *pbVar7;
  longlong lVar8;
  undefined8 uVar9;
  byte *pbVar10;
  longlong lVar11;
  ulonglong *puVar12;
  longlong lVar13;
  uint *puVar14;
  byte bVar15;
  byte bVar16;
  byte bVar17;
  byte bVar18;
  byte bVar19;
  byte bVar20;
  byte bVar21;
  byte bVar22;
  byte bVar23;
  byte bVar24;
  byte bVar25;
  byte bVar26;
  byte bVar27;
  byte bVar28;
  byte bVar29;
  byte bVar30;
  byte bVar31;
  byte bVar32;
  byte bVar33;
  byte bVar34;
  byte bVar35;
  byte bVar36;
  byte bVar37;
  byte bVar38;
  byte bVar39;
  byte bVar40;
  byte bVar41;
  byte bVar42;
  byte bVar43;
  byte bVar44;
  byte bVar45;
  byte bVar46;
  byte bVar47;
  byte bVar48;
  byte bVar49;
  byte bVar50;
  byte bVar51;
  byte bVar52;
  byte bVar53;
  byte bVar54;
  byte bVar55;
  byte bVar56;
  byte bVar57;
  byte bVar58;
  byte bVar59;
  byte bVar60;
  byte bVar61;
  byte bVar62;
  byte bVar63;
  byte bVar64;
  byte bVar65;
  byte bVar66;
  byte bVar67;
  byte bVar68;
  byte bVar69;
  byte bVar70;
  
  lVar8 = DAT_000d08a0;
  uVar9 = 1;
  if ((param_2 == (int *)0x0) || (3 < param_1 - 0xdU)) goto LAB_00030c68;
  FUN_00031938((undefined1 *)param_2,0,0xd8);
  *param_2 = param_1;
  if (param_1 == 0xe) {
    lVar11 = 8;
    pbVar10 = &DAT_000b2f7d;
LAB_00030c20:
    lVar13 = 0;
    puVar14 = (uint *)(param_2 + 0x24);
    do {
      bVar15 = *pbVar10;
      lVar13 = lVar13 + 1;
      pbVar1 = pbVar10 + 1;
      pbVar2 = pbVar10 + 2;
      pbVar3 = pbVar10 + 3;
      pbVar10 = pbVar10 + 4;
      *puVar14 = (uint)bVar15 << 0x18 | (uint)*pbVar1 << 0x10 | (uint)*pbVar2 << 8 | (uint)*pbVar3;
      puVar14 = puVar14 + 1;
    } while (lVar13 != lVar11);
  }
  else {
    if (param_1 == 0xf) {
      pbVar10 = &DAT_000b2f9d;
    }
    else {
      if (param_1 != 0x10) {
        lVar11 = 5;
        pbVar10 = &DAT_000b2f69;
        goto LAB_00030c20;
      }
      pbVar10 = &DAT_000b2fdd;
    }
    if ((param_2 + 0x24 < pbVar10 + 0x40) && (pbVar10 < param_2 + 0x34)) {
      lVar11 = 0;
      puVar12 = (ulonglong *)(param_2 + 0x24);
      do {
        bVar15 = *pbVar10;
        lVar11 = lVar11 + 1;
        pbVar1 = pbVar10 + 1;
        pbVar2 = pbVar10 + 2;
        pbVar3 = pbVar10 + 3;
        pbVar4 = pbVar10 + 4;
        pbVar5 = pbVar10 + 5;
        pbVar6 = pbVar10 + 6;
        pbVar7 = pbVar10 + 7;
        pbVar10 = pbVar10 + 8;
        *puVar12 = (ulonglong)bVar15 << 0x38 | (ulonglong)*pbVar1 << 0x30 |
                   (ulonglong)*pbVar2 << 0x28 | (ulonglong)*pbVar3 << 0x20 |
                   (ulonglong)*pbVar4 << 0x18 | (ulonglong)*pbVar5 << 0x10 | (ulonglong)*pbVar6 << 8
                   | (ulonglong)*pbVar7;
        puVar12 = puVar12 + 1;
      } while (lVar11 != 8);
    }
    else {
      bVar15 = *pbVar10;
      bVar21 = pbVar10[1];
      bVar27 = pbVar10[2];
      bVar33 = pbVar10[3];
      bVar16 = pbVar10[4];
      bVar22 = pbVar10[5];
      bVar28 = pbVar10[6];
      bVar34 = pbVar10[7];
      bVar17 = pbVar10[0x10];
      bVar23 = pbVar10[0x11];
      bVar29 = pbVar10[0x12];
      bVar35 = pbVar10[0x13];
      bVar18 = pbVar10[0x14];
      bVar24 = pbVar10[0x15];
      bVar30 = pbVar10[0x16];
      bVar36 = pbVar10[0x17];
      bVar19 = pbVar10[0x18];
      bVar25 = pbVar10[0x19];
      bVar31 = pbVar10[0x1a];
      bVar37 = pbVar10[0x1b];
      bVar20 = pbVar10[0x1c];
      bVar26 = pbVar10[0x1d];
      bVar32 = pbVar10[0x1e];
      bVar38 = pbVar10[0x1f];
      bVar39 = pbVar10[0x20];
      bVar47 = pbVar10[0x21];
      bVar55 = pbVar10[0x22];
      bVar63 = pbVar10[0x23];
      bVar40 = pbVar10[0x24];
      bVar48 = pbVar10[0x25];
      bVar56 = pbVar10[0x26];
      bVar64 = pbVar10[0x27];
      bVar41 = pbVar10[0x28];
      bVar49 = pbVar10[0x29];
      bVar57 = pbVar10[0x2a];
      bVar65 = pbVar10[0x2b];
      bVar42 = pbVar10[0x2c];
      bVar50 = pbVar10[0x2d];
      bVar58 = pbVar10[0x2e];
      bVar66 = pbVar10[0x2f];
      bVar43 = pbVar10[0x30];
      bVar51 = pbVar10[0x31];
      bVar59 = pbVar10[0x32];
      bVar67 = pbVar10[0x33];
      bVar44 = pbVar10[0x34];
      bVar52 = pbVar10[0x35];
      bVar60 = pbVar10[0x36];
      bVar68 = pbVar10[0x37];
      bVar45 = pbVar10[0x38];
      bVar53 = pbVar10[0x39];
      bVar61 = pbVar10[0x3a];
      bVar69 = pbVar10[0x3b];
      bVar46 = pbVar10[0x3c];
      bVar54 = pbVar10[0x3d];
      bVar62 = pbVar10[0x3e];
      bVar70 = pbVar10[0x3f];
      *(ulonglong *)(param_2 + 0x26) =
           CONCAT17(pbVar10[8],
                    CONCAT16(pbVar10[9],
                             CONCAT15(pbVar10[10],
                                      CONCAT14(pbVar10[0xb],
                                               CONCAT13(pbVar10[0xc],
                                                        CONCAT12(pbVar10[0xd],
                                                                 CONCAT11(pbVar10[0xe],pbVar10[0xf])
                                                                ))))));
      *(ulonglong *)(param_2 + 0x24) =
           CONCAT17(bVar15,CONCAT16(bVar21,CONCAT15(bVar27,CONCAT14(bVar33,CONCAT13(bVar16,CONCAT12(
                                                  bVar22,CONCAT11(bVar28,bVar34)))))));
      *(ulonglong *)(param_2 + 0x2a) =
           CONCAT17(bVar19,CONCAT16(bVar25,CONCAT15(bVar31,CONCAT14(bVar37,CONCAT13(bVar20,CONCAT12(
                                                  bVar26,CONCAT11(bVar32,bVar38)))))));
      *(ulonglong *)(param_2 + 0x28) =
           CONCAT17(bVar17,CONCAT16(bVar23,CONCAT15(bVar29,CONCAT14(bVar35,CONCAT13(bVar18,CONCAT12(
                                                  bVar24,CONCAT11(bVar30,bVar36)))))));
      *(ulonglong *)(param_2 + 0x2e) =
           CONCAT17(bVar41,CONCAT16(bVar49,CONCAT15(bVar57,CONCAT14(bVar65,CONCAT13(bVar42,CONCAT12(
                                                  bVar50,CONCAT11(bVar58,bVar66)))))));
      *(ulonglong *)(param_2 + 0x2c) =
           CONCAT17(bVar39,CONCAT16(bVar47,CONCAT15(bVar55,CONCAT14(bVar63,CONCAT13(bVar40,CONCAT12(
                                                  bVar48,CONCAT11(bVar56,bVar64)))))));
      *(ulonglong *)(param_2 + 0x32) =
           CONCAT17(bVar45,CONCAT16(bVar53,CONCAT15(bVar61,CONCAT14(bVar69,CONCAT13(bVar46,CONCAT12(
                                                  bVar54,CONCAT11(bVar62,bVar70)))))));
      *(ulonglong *)(param_2 + 0x30) =
           CONCAT17(bVar43,CONCAT16(bVar51,CONCAT15(bVar59,CONCAT14(bVar67,CONCAT13(bVar44,CONCAT12(
                                                  bVar52,CONCAT11(bVar60,bVar68)))))));
    }
  }
  uVar9 = 0;
  param_2[2] = 0;
  param_2[0x34] = 0;
  param_2[0x35] = 0;
LAB_00030c68:
  if (DAT_000d08a0 != lVar8) {
                    /* WARNING: Subroutine does not return */
    FUN_00053a68();
  }
  return uVar9;
}


```


---

## datablock_signature_verifier

- Dirección solicitada: `0002d698`
- Función: `FUN_0002d698`
- Entrada real: `0002d698`
- Cuerpo: `[[0002d698, 0002d7f7]]`

### Callers

- `FUN_0002e518 @ 0002e518 desde 0002e5e8`

### Callees

- `FUN_00038910 @ 00038910 desde 0002d728`
- `FUN_0002f280 @ 0002f280 desde 0002d73c`
- `FUN_00038910 @ 00038910 desde 0002d7a4`
- `FUN_0002f280 @ 0002f280 desde 0002d7b8`
- `FUN_00053a68 @ 00053a68 desde 0002d7f4`

### Pseudocódigo

```c

undefined8 FUN_0002d698(longlong *param_1)

{
  undefined1 *puVar1;
  undefined1 *puVar2;
  int iVar3;
  undefined8 uVar4;
  uint local_98 [2];
  undefined1 *local_90;
  undefined1 local_88;
  undefined8 local_80;
  uint local_78 [2];
  undefined1 *local_70;
  undefined1 local_68;
  uint *local_60;
  undefined4 local_58 [2];
  undefined *local_50;
  undefined1 local_48;
  uint *local_40;
  longlong local_38;
  
  local_38 = DAT_000d08a0;
  if (param_1 == (longlong *)0x0) {
LAB_0002d7c0:
    uVar4 = 0x55;
  }
  else {
    local_58[0] = 0x53e;
    local_50 = &DAT_000b1662;
    puVar1 = (undefined1 *)*param_1;
    puVar2 = (undefined1 *)param_1[1];
    local_48 = 1;
    local_70 = puVar2 + 2;
    local_68 = 0;
    local_78[0] = (uint)CONCAT11(*puVar2,puVar2[1]);
    local_90 = puVar1 + 2;
    local_98[0] = (uint)CONCAT11(*puVar1,puVar1[1]);
    local_60 = local_98;
    local_40 = local_78;
    FUN_00038910();
    local_88 = 0;
    local_80 = 0;
    iVar3 = FUN_0002f280(2,local_58);
    if (iVar3 != 0) {
      local_48 = 1;
      local_50 = &DAT_000b1ba0;
      local_58[0] = 0x3e2;
      puVar1 = (undefined1 *)*param_1;
      puVar2 = (undefined1 *)param_1[1];
      local_70 = puVar2 + 2;
      local_68 = 0;
      local_78[0] = (uint)CONCAT11(*puVar2,puVar2[1]);
      local_90 = puVar1 + 2;
      local_98[0] = (uint)CONCAT11(*puVar1,puVar1[1]);
      local_60 = local_98;
      local_40 = local_78;
      FUN_00038910();
      local_88 = 0;
      local_80 = 0;
      iVar3 = FUN_0002f280(2,local_58);
      if (iVar3 != 0) goto LAB_0002d7c0;
    }
    uVar4 = 0xf;
  }
  if (DAT_000d08a0 == local_38) {
    return uVar4;
  }
                    /* WARNING: Subroutine does not return */
  FUN_00053a68();
}


```


---

## datablock_header_parser

- Dirección solicitada: `0002ee88`
- Función: `FUN_0002ee88`
- Entrada real: `0002ee88`
- Cuerpo: `[[0002ee88, 0002f063]]`

### Callers

- `FUN_0002e518 @ 0002e518 desde 0002e57c`

### Callees

- `FUN_00015710 @ 00015710 desde 0002eeb8`
- `FUN_00038910 @ 00038910 desde 0002eed0`
- `FUN_00038910 @ 00038910 desde 0002eef8`
- `FUN_0002e1b0 @ 0002e1b0 desde 0002ef08`
- `FUN_00038910 @ 00038910 desde 0002ef2c`
- `FUN_00038888 @ 00038888 desde 0002ef38`
- `FUN_00038910 @ 00038910 desde 0002ef60`
- `FUN_00038910 @ 00038910 desde 0002ef6c`
- `FUN_0001ce00 @ 0001ce00 desde 0002ef7c`
- `FUN_00038910 @ 00038910 desde 0002ef98`
- `FUN_00038910 @ 00038910 desde 0002efb4`
- `FUN_00038910 @ 00038910 desde 0002f008`
- `FUN_0001ca9c @ 0001ca9c desde 0002f01c`
- `FUN_00015910 @ 00015910 desde 0002f028`
- `FUN_00053a68 @ 00053a68 desde 0002f060`

### Pseudocódigo

```c

undefined8 FUN_0002ee88(undefined1 *param_1,uint param_2,ushort param_3,undefined1 *param_4)

{
  int iVar1;
  byte *pbVar2;
  undefined8 uVar3;
  undefined1 uVar4;
  uint local_3c;
  longlong local_38;
  
  local_38 = DAT_000d08a0;
  pbVar2 = (byte *)FUN_00015710();
  if (param_1 == (undefined1 *)0x0) {
    uVar3 = 0xf0;
    goto LAB_0002f034;
  }
  if (pbVar2 == (byte *)0x0) {
    uVar4 = 0x12;
    uVar3 = 0x55;
  }
  else {
    FUN_00038910();
    if ((uint)CONCAT11(*param_1,param_1[1]) == (param_2 & 0xffff)) {
      local_3c = 0x10;
      FUN_00038910();
      uVar3 = FUN_0002e1b0(pbVar2,&local_3c,param_2);
      if (((int)uVar3 == 0xf) && (local_3c == 0x10)) {
        FUN_00038910();
        uVar3 = FUN_00038888(pbVar2 + 0x10,&local_3c);
        if (((int)uVar3 != 0xf) || (local_3c != 0x10)) goto joined_r0x0002efe8;
        local_3c = 0x20;
        FUN_00038910();
        FUN_00038910();
        iVar1 = FUN_0001ce00(pbVar2,param_1 + 8,(ulonglong)local_3c);
        if ((iVar1 != 0) || ((1 < param_3 && (FUN_00038910(), 1 < (byte)param_1[0x28] - 1))))
        goto LAB_0002f00c;
        FUN_00038910();
        uVar3 = 0xf;
      }
      else {
joined_r0x0002efe8:
        if (local_3c != 0x10) {
          FUN_00038910();
        }
LAB_0002f00c:
        uVar3 = 0x55;
      }
      FUN_0001ca9c(pbVar2,0,0x20);
      uVar4 = 0x11;
    }
    else {
      uVar4 = 8;
      uVar3 = 0x55;
    }
    FUN_00015910();
  }
  if (param_4 != (undefined1 *)0x0) {
    *param_4 = uVar4;
  }
LAB_0002f034:
  if (DAT_000d08a0 != local_38) {
                    /* WARNING: Subroutine does not return */
    FUN_00053a68();
  }
  return uVar3;
}


```


---

## datablock_final_validator

- Dirección solicitada: `0002d3b8`
- Función: `FUN_0002d3b8`
- Entrada real: `0002d3b8`
- Cuerpo: `[[0002d3b8, 0002d597]]`

### Callers

- `FUN_0002e518 @ 0002e518 desde 0002e760`

### Callees

- `FUN_00015710 @ 00015710 desde 0002d408`
- `FUN_00015710 @ 00015710 desde 0002d414`
- `FUN_0002fc28 @ 0002fc28 desde 0002d470`
- `FUN_00015910 @ 00015910 desde 0002d490`
- `FUN_0002fe10 @ 0002fe10 desde 0002d4e4`
- `FUN_00032108 @ 00032108 desde 0002d504`
- `FUN_0002fef8 @ 0002fef8 desde 0002d514`
- `FUN_00015910 @ 00015910 desde 0002d51c`
- `FUN_00032208 @ 00032208 desde 0002d54c`
- `FUN_000336f0 @ 000336f0 desde 0002d578`
- `FUN_00034680 @ 00034680 desde 0002d58c`
- `FUN_00053a68 @ 00053a68 desde 0002d594`

### Pseudocódigo

```c

undefined4
FUN_0002d3b8(int param_1,undefined8 *param_2,uint param_3,undefined8 *param_4,uint param_5,
            undefined8 *param_6)

{
  int iVar1;
  int iVar2;
  char *pcVar3;
  undefined8 *puVar4;
  undefined8 uVar5;
  undefined4 uVar6;
  undefined1 *puVar7;
  uint local_ad8;
  uint local_ad4;
  int aiStack_ad0 [14];
  uint local_a98 [2];
  undefined1 *local_a90;
  uint local_a84;
  int aiStack_a80 [650];
  longlong local_58;
  
  local_58 = DAT_000d08a0;
  local_ad8 = 4;
  local_ad4 = 0x200;
  local_a84 = param_5;
  pcVar3 = (char *)FUN_00015710();
  puVar4 = (undefined8 *)FUN_00015710();
  if (((((puVar4 == (undefined8 *)0x0) || (param_5 == 0)) || (param_2 == (undefined8 *)0x0)) ||
      ((param_4 == (undefined8 *)0x0 || (param_6 == (undefined8 *)0x0)))) || (pcVar3 == (char *)0x0)
     ) {
    uVar6 = 0xf0;
    if (pcVar3 == (char *)0x0) goto joined_r0x0002d488;
  }
  else if (param_1 - 1U < 2) {
    puVar7 = (undefined1 *)*param_6;
    iVar2 = 0xd;
    if (param_1 != 1) {
      iVar2 = 0xe;
    }
    local_a90 = puVar7 + 2;
    local_a98[0] = (uint)CONCAT11(*puVar7,puVar7[1]);
    iVar1 = FUN_0002fc28(local_a98,aiStack_ad0);
    if (iVar1 == 0) {
      uVar5 = FUN_0002fe10(aiStack_ad0,pcVar3,&local_ad4,(undefined1 *)puVar4,&local_ad8);
      if (((int)uVar5 == 0) &&
         (iVar2 = FUN_00032108(0,iVar2,0,local_ad4 << 3,0,aiStack_a80), iVar2 == 0)) {
        iVar2 = FUN_00032208(aiStack_a80,pcVar3,puVar4,local_ad8,(undefined8 *)0x0,(char *)0x0,
                             (char *)0x0,(undefined8 *)0x0,(undefined8 *)0x0,(undefined8 *)0x0);
        uVar6 = 0x55;
        if (iVar2 == 0) {
          iVar2 = FUN_000336f0(aiStack_a80,(int *)0x0,0xff,param_2,param_3,param_4,&local_a84,'\x01'
                              );
          uVar6 = 0xf;
          if (iVar2 != 0) {
            uVar6 = 0x55;
          }
        }
        FUN_00034680(aiStack_a80);
      }
      else {
        uVar6 = 0x55;
      }
      FUN_0002fef8(aiStack_ad0);
    }
    else {
      uVar6 = 0x55;
    }
  }
  else {
    uVar6 = 0xf0;
  }
  FUN_00015910();
joined_r0x0002d488:
  if (puVar4 != (undefined8 *)0x0) {
    FUN_00015910();
  }
  if (DAT_000d08a0 != local_58) {
                    /* WARNING: Subroutine does not return */
    FUN_00053a68();
  }
  return uVar6;
}


```


---

## cid_prov_argument_validator

- Dirección solicitada: `0002ddd8`
- Función: `FUN_0002ddd8`
- Entrada real: `0002ddd8`
- Cuerpo: `[[0002ddd8, 0002df07]]`

### Callers

- `FUN_0002bcc0 @ 0002bcc0 desde 0002bd88`

### Callees

- `FUN_0001be9c @ 0001be9c desde 0002de20`
- `FUN_0001be9c @ 0001be9c desde 0002de34`
- `FUN_0002ee40 @ 0002ee40 desde 0002de58`
- `FUN_00038910 @ 00038910 desde 0002deb4`
- `FUN_0002ede8 @ 0002ede8 desde 0002dee4`
- `FUN_0001c190 @ 0001c190 desde 0002def8`
- `FUN_00053a68 @ 00053a68 desde 0002df04`

### Pseudocódigo

```c

undefined8 FUN_0002ddd8(longlong param_1,int param_2,byte *param_3)

{
  short sVar1;
  int iVar2;
  undefined8 uVar3;
  undefined2 local_2c;
  longlong local_28;
  
  local_28 = DAT_000d08a0;
  local_2c = 0;
  if ((param_1 != 0) && ((param_2 == 0xc4 || (param_2 == 0xb6)))) {
    iVar2 = FUN_0001be9c(param_3,(byte *)"factory_auth");
    if (iVar2 == 0) {
      local_2c = 0xcccc;
    }
    else {
      iVar2 = FUN_0001be9c(param_3,(byte *)0xbfb52);
      if (iVar2 != 0) goto LAB_0002deb8;
      local_2c = CONCAT11(0xff,(undefined1)local_2c);
    }
    sVar1 = FUN_0002ee40(param_1 + 0x54);
    if ((((ushort)(sVar1 - 1U) < 2) && ((param_2 == 0xc4 || (sVar1 != 2)))) &&
       ((param_2 == 0xb6 || (sVar1 != 1)))) {
      iVar2 = FUN_0002ede8(param_1 + 0x54);
      FUN_0001c190(param_1 + (ulonglong)(iVar2 + 0x56),(longlong)&local_2c,2);
      uVar3 = 0xf;
      goto LAB_0002debc;
    }
    FUN_00038910();
  }
LAB_0002deb8:
  uVar3 = 0x55;
LAB_0002debc:
  if (DAT_000d08a0 != local_28) {
                    /* WARNING: Subroutine does not return */
    FUN_00053a68();
  }
  return uVar3;
}


```


---

## security_property_reader

- Dirección solicitada: `0001d444`
- Función: `FUN_0001d444`
- Entrada real: `0001d444`
- Cuerpo: `[[0001d444, 0001d48b]]`

### Callers

- `FUN_0002d138 @ 0002d138 desde 0002d1ac`
- `FUN_0002d298 @ 0002d298 desde 0002d2e4`
- `FUN_0003e200 @ 0003e200 desde 0003e23c`
- `FUN_0003e418 @ 0003e418 desde 0003e48c`
- `FUN_0003e938 @ 0003e938 desde 0003e9a0`
- `FUN_00023b78 @ 00023b78 desde 00023bb8`
- `FUN_0008e5b8 @ 0008e5b8 desde 0008e5e4`
- `FUN_000239b8 @ 000239b8 desde 000239e4`
- `FUN_000214b8 @ 000214b8 desde 000214e4`
- `FUN_000214b8 @ 000214b8 desde 000217d0`
- `FUN_0002c848 @ 0002c848 desde 0002c8c4`
- `FUN_0006a0d0 @ 0006a0d0 desde 0006b238`
- `FUN_00022468 @ 00022468 desde 00022524`
- `FUN_0002c6b0 @ 0002c6b0 desde 0002c72c`
- `FUN_000025a0 @ 000025a0 desde 000025bc`
- `FUN_0003efe8 @ 0003efe8 desde 0003f028`
- `FUN_000241e0 @ 000241e0 desde 0002422c`
- `FUN_0002c450 @ 0002c450 desde 0002c5b0`

### Callees

- `FUN_0001d290 @ 0001d290 desde 0001d45c`
- `FUN_00053a68 @ 00053a68 desde 0001d488`

### Pseudocódigo

```c

bool FUN_0001d444(undefined8 param_1,undefined8 param_2)

{
  longlong lVar1;
  longlong lVar2;
  
  lVar1 = DAT_000d08a0;
  lVar2 = FUN_0001d290(param_1,param_2,(uint *)0x0);
  if (DAT_000d08a0 == lVar1) {
    return lVar2 != 0;
  }
                    /* WARNING: Subroutine does not return */
  FUN_00053a68();
}


```

