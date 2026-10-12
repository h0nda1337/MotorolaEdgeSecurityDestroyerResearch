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
