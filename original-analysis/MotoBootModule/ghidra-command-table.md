# Tabla de comandos Motorola

Programa: `MotoBootModule.efi`
Image base: `00000000`
Tamaño hipotético de entrada: `0x18`

---

## blankflash

- Entrada de tabla: `000cc760`

### qword[0]

- Campo: `000cc760`
- Valor: `0xa7265`
- Dirección apuntada: `000a7265`
- ASCII: `blankflash`

### qword[1]

- Campo: `000cc768`
- Valor: `0xd2a8`
- Dirección apuntada: `0000d2a8`
- Función: `FUN_0000d2a8`
- Entrada de función: `0000d2a8`

#### Pseudocódigo

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

- Primera instrucción: `str x30,[sp, #-0x10]!`

### qword[2]

- Campo: `000cc770`
- Valor: `0x10000`
- Dirección apuntada: `00010000`
- Función: `FUN_0000f7c0`
- Entrada de función: `0000f7c0`

#### Pseudocódigo

```c

ulonglong FUN_0000f7c0(int param_1,undefined8 *param_2,undefined8 param_3,word *param_4,
                      char *param_5,undefined8 param_6,undefined8 param_7,undefined8 param_8)

{
  word *pwVar1;
  longlong lVar2;
  bool bVar3;
  byte bVar4;
  int iVar5;
  uint uVar6;
  longlong *plVar7;
  longlong lVar8;
  ulonglong *puVar9;
  ulonglong uVar10;
  longlong lVar11;
  undefined8 uVar12;
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
  undefined8 extraout_x1_19;
  undefined8 extraout_x1_20;
  undefined8 extraout_x1_21;
  undefined8 extraout_x1_22;
  undefined8 extraout_x1_23;
  undefined8 extraout_x1_24;
  undefined8 extraout_x1_25;
  undefined8 extraout_x1_26;
  undefined8 extraout_x1_27;
  undefined8 extraout_x1_28;
  undefined8 extraout_x1_29;
  undefined8 extraout_x1_30;
  undefined8 extraout_x1_31;
  undefined8 extraout_x1_32;
  undefined8 extraout_x1_33;
  undefined8 extraout_x1_34;
  undefined8 extraout_x1_35;
  undefined8 extraout_x1_36;
  undefined8 extraout_x1_37;
  undefined8 extraout_x1_38;
  undefined8 extraout_x1_39;
  undefined8 extraout_x1_40;
  undefined8 extraout_x1_41;
  undefined8 extraout_x1_42;
  undefined8 extraout_x1_43;
  undefined8 extraout_x1_44;
  undefined8 extraout_x1_45;
  undefined8 extraout_x1_46;
  undefined8 extraout_x1_47;
  undefined8 extraout_x1_48;
  undefined8 extraout_x1_49;
  undefined8 extraout_x1_50;
  undefined8 extraout_x1_51;
  undefined8 extraout_x1_52;
  undefined8 extraout_x1_53;
  undefined8 extraout_x1_54;
  undefined8 extraout_x1_55;
  undefined8 extraout_x1_56;
  undefined8 extraout_x1_57;
  undefined8 extraout_x1_58;
  undefined8 extraout_x1_59;
  undefined8 extraout_x1_60;
  undefined8 extraout_x1_61;
  undefined8 extraout_x1_62;
  undefined8 extraout_x1_63;
  undefined8 extraout_x1_64;
  undefined8 extraout_x1_65;
  undefined8 extraout_x1_66;
  undefined8 extraout_x1_67;
  undefined8 extraout_x1_68;
  undefined8 extraout_x1_69;
  undefined8 extraout_x1_70;
  undefined8 extraout_x1_71;
  undefined8 extraout_x1_72;
  undefined8 extraout_x1_73;
  undefined8 extraout_x1_74;
  undefined8 extraout_x1_75;
  undefined8 extraout_x1_76;
  undefined8 extraout_x1_77;
  undefined8 extraout_x1_78;
  undefined8 extraout_x1_79;
  undefined8 extraout_x1_80;
  undefined8 extraout_x1_81;
  undefined8 extraout_x1_82;
  undefined8 extraout_x1_83;
  undefined8 extraout_x1_84;
  undefined8 extraout_x1_85;
  undefined8 extraout_x1_86;
  undefined8 extraout_x1_87;
  undefined8 extraout_x1_88;
  undefined8 extraout_x1_89;
  undefined8 extraout_x1_90;
  undefined8 extraout_x1_91;
  undefined8 extraout_x1_92;
  undefined8 extraout_x1_93;
  undefined8 extraout_x1_94;
  undefined8 extraout_x1_95;
  undefined8 extraout_x1_96;
  undefined8 extraout_x1_97;
  undefined8 extraout_x1_98;
  undefined8 extraout_x1_99;
  undefined8 extraout_x1_x00100;
  undefined8 extraout_x1_x00101;
  undefined8 extraout_x1_x00102;
  undefined8 extraout_x1_x00103;
  undefined8 extraout_x1_x00104;
  undefined8 extraout_x1_x00105;
  undefined8 extraout_x1_x00106;
  undefined8 extraout_x1_x00107;
  undefined8 extraout_x1_x00108;
  undefined8 extraout_x1_x00109;
  undefined8 extraout_x1_x00110;
  undefined8 extraout_x1_x00111;
  undefined8 extraout_x1_x00112;
  undefined8 extraout_x1_x00113;
  undefined8 extraout_x1_x00114;
  undefined8 extraout_x1_x00115;
  undefined8 extraout_x1_x00116;
  undefined8 extraout_x1_x00117;
  undefined8 extraout_x1_x00118;
  char cVar13;
  char *pcVar14;
  word *pwVar15;
  undefined1 *puVar16;
  undefined1 *puVar17;
  byte *pbVar18;
  word *pwVar19;
  ulonglong *puVar20;
  char *pcVar21;
  ulonglong *puVar22;
  word *pwVar23;
  longlong *plVar24;
  undefined8 *puVar25;
  longlong lVar26;
  longlong *plVar27;
  undefined1 auVar28 [16];
  
  plVar7 = FUN_0006fd48();
  lVar26 = *plVar7;
  uVar6 = param_1 - 1;
  *plVar7 = lVar26 + -0xd0;
  lVar2 = DAT_000d08a0;
  plVar27 = (longlong *)(lVar26 + -8);
  *plVar27 = DAT_000d08a0;
  plVar24 = param_2 + 1;
  pbVar18 = (byte *)*param_2;
  lVar8 = FUN_0001b710((ulonglong *)0xb38fb);
  pcVar21 = (char *)(lVar8 + 1);
  iVar5 = FUN_0001bef8((byte *)0xb38fb,pbVar18,(longlong)pcVar21);
  if (iVar5 == 0) {
    if (param_1 < 2) {
      *(undefined8 *)(lVar26 + -0x18) = 0;
      *(undefined8 *)(lVar26 + -0x10) = 0;
      *(undefined4 *)(lVar26 + -0x10) = 0;
      uVar12 = extraout_x1;
LAB_0000f870:
      bVar4 = FUN_00021c80(0,uVar12,pcVar21,param_4,param_5,param_6,param_7,param_8);
      uVar6 = 3;
      if (bVar4 != 0) {
        iVar5 = FUN_0001e974();
LAB_0000f894:
        uVar6 = 3;
        if (iVar5 == 0) {
          uVar6 = 1;
        }
      }
      goto LAB_0000ffd4;
    }
    if (uVar6 == 1) {
      iVar5 = FUN_0001be9c((byte *)*plVar24,&DAT_000a987f);
      if (iVar5 != 0) {
        iVar5 = FUN_0001be9c((byte *)*plVar24,(byte *)0xaa42d);
        if (iVar5 == 0) {
          *(undefined8 *)(lVar26 + -0x18) = 0;
          *(undefined8 *)(lVar26 + -0x10) = 0;
          *(undefined4 *)(lVar26 + -0x10) = 1;
          uVar12 = extraout_x1_02;
          goto LAB_0000f870;
        }
        auVar28 = FUN_0001ec08();
        uVar12 = auVar28._8_8_;
        if ((auVar28._0_8_ & 1) == 0) goto LAB_0000f95c;
        puVar9 = (ulonglong *)*plVar24;
LAB_0000f918:
        uVar10 = FUN_00011028(puVar9,uVar12,pcVar21,param_4,param_5,param_6,param_7,param_8);
        if (lVar2 != *plVar27) goto LAB_00011020;
        goto LAB_0000ffe4;
      }
      FUN_000043c8((short *)"usage: fastboot oem config [options]",extraout_x1_01,pcVar21,param_4,
                   param_5,param_6,param_7,param_8);
      FUN_000043c8((short *)&DAT_000c24da,extraout_x1_95,pcVar21,param_4,param_5,param_6,param_7,
                   param_8);
      FUN_000043c8((short *)"options:",extraout_x1_96,pcVar21,param_4,param_5,param_6,param_7,
                   param_8);
      FUN_000043c8((short *)"  (none given)      list all supported utags",extraout_x1_97,pcVar21,
                   param_4,param_5,param_6,param_7,param_8);
      FUN_000043c8((short *)"  list              list all configured utags",extraout_x1_98,pcVar21,
                   param_4,param_5,param_6,param_7,param_8);
      FUN_000043c8((short *)"  <name> <value>    set a utag",extraout_x1_99,pcVar21,param_4,param_5,
                   param_6,param_7,param_8);
      FUN_000043c8((short *)"  <name>            query a utag",extraout_x1_x00100,pcVar21,param_4,
                   param_5,param_6,param_7,param_8);
      FUN_000043c8((short *)&DAT_000a836b,extraout_x1_x00101,pcVar21,param_4,param_5,param_6,param_7
                   ,param_8);
      FUN_000043c8((short *)"  unset <name>      unset a utag",extraout_x1_x00102,pcVar21,param_4,
                   param_5,param_6,param_7,param_8);
      FUN_000043c8((short *)"  clear             unset all utags",extraout_x1_x00103,pcVar21,param_4
                   ,param_5,param_6,param_7,param_8);
      FUN_000043c8((short *)"  protect <name>    mark utag as read-only",extraout_x1_x00104,pcVar21,
                   param_4,param_5,param_6,param_7,param_8);
      FUN_000043c8((short *)"  unprotect <name>  unmark utag as read-only",extraout_x1_x00105,
                   pcVar21,param_4,param_5,param_6,param_7,param_8);
      pcVar14 = "  help              show usage";
      uVar12 = extraout_x1_x00106;
LAB_0000ffc4:
      FUN_000043c8((short *)pcVar14,uVar12,pcVar21,param_4,param_5,param_6,param_7,param_8);
      FUN_000043c8((short *)&DAT_000c24da,extraout_x1_x00107,pcVar21,param_4,param_5,param_6,param_7
                   ,param_8);
LAB_0000ffd0:
      uVar6 = 1;
      goto LAB_0000ffd4;
    }
LAB_0000f95c:
    pcVar21 = (char *)param_2[2];
    uVar10 = FUN_000113e0(0,(ulonglong *)param_2[1],(ulonglong *)pcVar21,param_4,param_5,param_6,
                          param_7,param_8);
    if ((uVar10 & 0xff) == 0) {
      pcVar14 = "Not allowed command";
      uVar12 = extraout_x1_03;
      goto LAB_0000fafc;
    }
    iVar5 = FUN_0001be9c((byte *)*plVar24,(byte *)0xa7284);
    if (iVar5 == 0) {
      iVar5 = FUN_0001edb0();
      uVar6 = 3;
      if (iVar5 != 0) goto LAB_0000ffd4;
LAB_00010010:
      iVar5 = FUN_0001e9fc();
      goto LAB_0000f894;
    }
    iVar5 = FUN_0001be9c((byte *)*plVar24,(byte *)0xb0d3a);
    if (iVar5 == 0) {
      iVar5 = FUN_0001ea64();
joined_r0x00010058:
      if ((iVar5 == 0) && (iVar5 = FUN_0001e9fc(), iVar5 == 0)) {
        puVar9 = (ulonglong *)param_2[2];
        uVar12 = extraout_x1_x00108;
        goto LAB_0000f918;
      }
      goto LAB_0000f858;
    }
    iVar5 = FUN_0001be9c((byte *)*plVar24,(byte *)"unprotect");
    if (iVar5 == 0) {
      iVar5 = FUN_0001eaa4();
      goto joined_r0x00010058;
    }
    iVar5 = FUN_0001be9c((byte *)*plVar24,(byte *)"unset");
    if (iVar5 == 0) {
LAB_00010160:
      uVar10 = FUN_0001ebc8();
      if ((uVar10 & 1) != 0) {
        auVar28 = FUN_0001eae4();
        uVar12 = auVar28._8_8_;
        if ((auVar28._0_8_ & 1) != 0) {
LAB_00010538:
          FUN_000043c8((short *)"utag is read-only!",uVar12,pcVar21,param_4,param_5,param_6,param_7,
                       param_8);
          pcVar14 = "unprotect with \'fastboot oem config unprotect <name>\'";
          uVar12 = extraout_x1_x00114;
          goto LAB_0000fafc;
        }
        iVar5 = FUN_0001e840();
        goto joined_r0x0001018c;
      }
      goto LAB_0000ffd0;
    }
    if (uVar6 == 2) {
      puVar9 = (ulonglong *)param_2[2];
      if ((char)*puVar9 == '\0') goto LAB_00010160;
    }
    else {
      if (param_1 < 3) goto LAB_0000f858;
      puVar9 = (ulonglong *)param_2[2];
    }
    puVar22 = (ulonglong *)(lVar26 + -0xcc);
    pcVar21 = (char *)(IMAGE_DOS_HEADER_00000000.e_res_4_ + 2);
    FUN_0001bd5c((char *)puVar22,(ulonglong *)*plVar24,0x20);
    auVar28 = FUN_0001ec08();
    uVar12 = auVar28._8_8_;
    if ((auVar28._0_8_ & 1) == 0) goto LAB_00010770;
    lVar8 = FUN_0001a480(puVar22,':');
    pbVar18 = (byte *)0x0;
    if (lVar8 != 0) {
      pbVar18 = (byte *)(lVar8 + 1);
    }
    iVar5 = FUN_00011a20(pbVar18);
    if (iVar5 != 0) {
      if (iVar5 == 0xff) {
        pcVar14 = "invalid type specified";
        uVar12 = extraout_x1_x00109;
        goto LAB_0000fafc;
      }
LAB_00010528:
      auVar28 = FUN_0001eae4();
      uVar12 = auVar28._8_8_;
      if ((auVar28._0_8_ & 1) != 0) goto LAB_00010538;
      switch(iVar5) {
      case 1:
        iVar5 = FUN_0000f4b8((byte *)puVar9);
        if (iVar5 < 0) {
          pcVar14 = "not a BOOLEANean value";
          uVar12 = extraout_x1_x00115;
          goto LAB_0000fafc;
        }
        puVar9 = (ulonglong *)(lVar26 + -0x28);
        *(undefined1 *)(lVar26 + -9) = 0;
        FUN_0001bb48((byte *)puVar9,(byte *)puVar22,0x1f);
        lVar8 = FUN_0001a480(puVar9,':');
        pbVar18 = (byte *)0x0;
        if (lVar8 != 0) {
          pbVar18 = (byte *)(lVar8 + 1);
        }
        uVar6 = FUN_00011a20(pbVar18);
        if (uVar6 == 0) {
          FUN_0001b7a0(puVar9,(ulonglong *)0xc94d9,0x1f);
          FUN_0001b7a0(puVar9,(ulonglong *)&DAT_000a7abd,0x1f);
          lVar8 = FUN_0001a480(puVar9,':');
          pbVar18 = (byte *)0x0;
          if (lVar8 != 0) {
            pbVar18 = (byte *)(lVar8 + 1);
          }
          uVar6 = FUN_00011a20(pbVar18);
        }
        if (uVar6 < 2) {
          cVar13 = 0 < iVar5;
          goto LAB_00010978;
        }
        break;
      case 2:
        pcVar21 = (char *)(lVar26 + -0x88);
        FUN_0001bd5c(pcVar21,puVar9,0x80);
        if (3 < param_1) {
          uVar10 = 2;
          puVar25 = param_2 + 3;
          do {
            FUN_0001b7a0((ulonglong *)pcVar21,(ulonglong *)0xca9af,0x7f);
            FUN_0001b7a0((ulonglong *)pcVar21,(ulonglong *)*puVar25,0x7f);
            uVar10 = uVar10 + 1;
            puVar25 = puVar25 + 1;
          } while (uVar10 != uVar6);
        }
        *(undefined1 *)(lVar26 + -9) = 0;
        lVar8 = FUN_0001e880(0,puVar22,pcVar21);
joined_r0x000108e8:
        if (lVar8 != 0) goto switchD_00010690_default;
        break;
      case 3:
        puVar20 = (ulonglong *)(lVar26 + -0x28);
        *(undefined1 *)(lVar26 + -9) = 0;
        FUN_0001bb48((byte *)puVar20,(byte *)puVar22,0x1f);
        lVar8 = FUN_0001a480(puVar20,':');
        pbVar18 = (byte *)0x0;
        if (lVar8 != 0) {
          pbVar18 = (byte *)(lVar8 + 1);
        }
        iVar5 = FUN_00011a20(pbVar18);
        if (iVar5 == 0) {
          FUN_0001b7a0(puVar20,(ulonglong *)0xc94d9,0x1f);
          FUN_0001b7a0(puVar20,(ulonglong *)&DAT_000a7ac2,0x1f);
          lVar8 = FUN_0001a480(puVar20,':');
          pbVar18 = (byte *)0x0;
          if (lVar8 != 0) {
            pbVar18 = (byte *)(lVar8 + 1);
          }
          iVar5 = FUN_00011a20(pbVar18);
        }
        if ((iVar5 == 0) || (iVar5 == 3)) {
          cVar13 = (char)*puVar9;
LAB_00010978:
          pcVar21 = (char *)(lVar26 + -0x2c);
          *pcVar21 = cVar13;
          param_4 = (word *)(IMAGE_DOS_HEADER_00000000.e_magic + 1);
LAB_00010bcc:
          lVar8 = FUN_0001e760();
          goto joined_r0x000108e8;
        }
        break;
      case 4:
        puVar20 = (ulonglong *)(lVar26 + -0x28);
        *(undefined1 *)(lVar26 + -9) = 0;
        FUN_0001bb48((byte *)puVar20,(byte *)puVar22,0x1f);
        lVar8 = FUN_0001a480(puVar20,':');
        pbVar18 = (byte *)0x0;
        if (lVar8 != 0) {
          pbVar18 = (byte *)(lVar8 + 1);
        }
        uVar6 = FUN_00011a20(pbVar18);
        if (uVar6 == 0) {
          FUN_0001b7a0(puVar20,(ulonglong *)0xc94d9,0x1f);
          FUN_0001b7a0(puVar20,(ulonglong *)0xa8526,0x1f);
          lVar8 = FUN_0001a480(puVar20,':');
          pbVar18 = (byte *)0x0;
          if (lVar8 != 0) {
            pbVar18 = (byte *)(lVar8 + 1);
          }
          uVar6 = FUN_00011a20(pbVar18);
        }
        if ((uVar6 | 4) == 4) {
          uVar10 = FUN_0001a340((char *)puVar9);
LAB_00010bb8:
          param_4 = &IMAGE_DOS_HEADER_00000000.e_cparhdr;
          pcVar21 = (char *)(lVar26 + -0x30);
          *(ulonglong *)pcVar21 = uVar10;
          goto LAB_00010bcc;
        }
        break;
      case 5:
        puVar9 = (ulonglong *)(lVar26 + -0x28);
        *(undefined1 *)(lVar26 + -9) = 0;
        FUN_0001bb48((byte *)puVar9,(byte *)puVar22,0x1f);
        lVar8 = FUN_0001a480(puVar9,':');
        pbVar18 = (byte *)0x0;
        if (lVar8 != 0) {
          pbVar18 = (byte *)(lVar8 + 1);
        }
        iVar5 = FUN_00011a20(pbVar18);
        if (iVar5 == 0) {
          FUN_0001b7a0(puVar9,(ulonglong *)0xc94d9,0x1f);
          FUN_0001b7a0(puVar9,(ulonglong *)"ulong",0x1f);
          lVar8 = FUN_0001a480(puVar9,':');
          pbVar18 = (byte *)0x0;
          if (lVar8 != 0) {
            pbVar18 = (byte *)(lVar8 + 1);
          }
          iVar5 = FUN_00011a20(pbVar18);
        }
        if ((iVar5 == 0) || (iVar5 == 5)) {
          uVar10 = FUN_0001cc00();
          goto LAB_00010bb8;
        }
        break;
      case 6:
        puVar20 = (ulonglong *)(lVar26 + -0x28);
        *(undefined1 *)(lVar26 + -9) = 0;
        FUN_0001bb48((byte *)puVar20,(byte *)puVar22,0x1f);
        lVar8 = FUN_0001a480(puVar20,':');
        pbVar18 = (byte *)0x0;
        if (lVar8 != 0) {
          pbVar18 = (byte *)(lVar8 + 1);
        }
        iVar5 = FUN_00011a20(pbVar18);
        if (iVar5 == 0) {
          FUN_0001b7a0(puVar20,(ulonglong *)0xc94d9,0x1f);
          FUN_0001b7a0(puVar20,(ulonglong *)0xa7ace,0x1f);
          lVar8 = FUN_0001a480(puVar20,':');
          pbVar18 = (byte *)0x0;
          if (lVar8 != 0) {
            pbVar18 = (byte *)(lVar8 + 1);
          }
          iVar5 = FUN_00011a20(pbVar18);
        }
        if ((iVar5 == 0) || (iVar5 == 6)) {
          uVar10 = FUN_0001a3e0((char *)puVar9);
          goto LAB_00010bb8;
        }
        break;
      case 7:
        puVar9 = (ulonglong *)(lVar26 + -0x28);
        *(undefined1 *)(lVar26 + -9) = 0;
        FUN_0001bb48((byte *)puVar9,(byte *)puVar22,0x1f);
        lVar8 = FUN_0001a480(puVar9,':');
        pbVar18 = (byte *)0x0;
        if (lVar8 != 0) {
          pbVar18 = (byte *)(lVar8 + 1);
        }
        iVar5 = FUN_00011a20(pbVar18);
        if (iVar5 == 0) {
          FUN_0001b7a0(puVar9,(ulonglong *)0xc94d9,0x1f);
          FUN_0001b7a0(puVar9,(ulonglong *)"ullong",0x1f);
          lVar8 = FUN_0001a480(puVar9,':');
          pbVar18 = (byte *)0x0;
          if (lVar8 != 0) {
            pbVar18 = (byte *)(lVar8 + 1);
          }
          iVar5 = FUN_00011a20(pbVar18);
        }
        if ((iVar5 == 0) || (iVar5 == 7)) {
          uVar10 = FUN_0001cd20();
          goto LAB_00010bb8;
        }
        break;
      default:
switchD_00010690_default:
        iVar5 = FUN_0001e9fc();
        if (iVar5 == 0) {
          uVar12 = FUN_00011028(puVar22,extraout_x1_x00116,pcVar21,param_4,param_5,param_6,param_7,
                                param_8);
          uVar6 = (uint)uVar12;
          goto LAB_0000ffd4;
        }
      }
      goto LAB_0000f858;
    }
    iVar5 = FUN_0000f4b8((byte *)puVar9);
    FUN_0001b7a0(puVar22,(ulonglong *)0xc94d9,0x1f);
    puVar20 = (ulonglong *)0xc4099;
    if (-1 < iVar5) {
      puVar20 = (ulonglong *)&DAT_000a7abd;
    }
    pcVar21 = (char *)((longlong)IMAGE_DOS_HEADER_00000000.e_res_4_ + 3);
    FUN_0001b7a0(puVar22,puVar20,0x1f);
    lVar8 = FUN_0001a480(puVar22,':');
    pbVar18 = (byte *)0x0;
    if (lVar8 != 0) {
      pbVar18 = (byte *)(lVar8 + 1);
    }
    iVar5 = FUN_00011a20(pbVar18);
    if (iVar5 != 0xff) goto LAB_00010528;
    pcVar14 = "name too long";
    uVar12 = extraout_x1_x00113;
LAB_0000fafc:
    FUN_000043c8((short *)pcVar14,uVar12,pcVar21,param_4,param_5,param_6,param_7,param_8);
    goto LAB_0000f858;
  }
  lVar8 = FUN_0001b710((ulonglong *)&DAT_000c1ab5);
  pcVar21 = (char *)(lVar8 + 1);
  iVar5 = FUN_0001bef8(&DAT_000c1ab5,pbVar18,(longlong)pcVar21);
  if (iVar5 != 0) goto LAB_0000f858;
  if (param_1 < 2) {
    if (uVar6 != 0) goto LAB_0000fa04;
LAB_0000f930:
    *(undefined8 *)(lVar26 + -0x18) = 0;
LAB_0000f938:
    *(undefined8 *)(lVar26 + -0x10) = 0;
    iVar5 = FUN_0001e9b8();
    uVar6 = 3;
    if (iVar5 == 0) {
      uVar6 = 1;
    }
  }
  else {
    lVar8 = FUN_0001b710((ulonglong *)*plVar24);
    if (uVar6 == 1) {
      if ((lVar8 == 1) && (*(char *)*plVar24 == '/')) goto LAB_0000f930;
    }
    else if ((lVar8 == 1) && (*(char *)*plVar24 == '/')) {
      pcVar14 = "syntax error";
      uVar12 = extraout_x1_00;
      goto LAB_0000fafc;
    }
LAB_0000fa04:
    iVar5 = FUN_0001be9c((byte *)*plVar24,(byte *)0xa7284);
    if (iVar5 == 0) {
      iVar5 = FUN_0001eee4();
      if (iVar5 != 0) goto LAB_00010024;
      iVar5 = FUN_0001edb0();
joined_r0x0001018c:
      uVar6 = 3;
      if (iVar5 == 0) goto LAB_00010010;
    }
    else {
      iVar5 = FUN_0001be9c((byte *)*plVar24,&DAT_000a987f);
      if (iVar5 == 0) {
        FUN_000043c8((short *)"usage: fastboot oem hw [options]",extraout_x1_04,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)&DAT_000c24da,extraout_x1_05,pcVar21,param_4,param_5,param_6,param_7,
                     param_8);
        FUN_000043c8((short *)"options:",extraout_x1_06,pcVar21,param_4,param_5,param_6,param_7,
                     param_8);
        FUN_000043c8((short *)"  (none given)      list all defined utags",extraout_x1_07,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  /                 list all existing utags",extraout_x1_08,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  +<name>           create empty utag",extraout_x1_09,pcVar21,param_4
                     ,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  -<name>           delete utag",extraout_x1_10,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"     use \"fastboot oem -- hw -<name>\"",extraout_x1_11,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  @<name>           set current utag",extraout_x1_12,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  @                 show current utag",extraout_x1_13,pcVar21,param_4
                     ,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  @/                reset current utag",extraout_x1_14,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  <name> <value>    set a utag",extraout_x1_15,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  <name> +<value>   append value to current",extraout_x1_16,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"                    utag value",extraout_x1_17,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  <name>            query a utag",extraout_x1_18,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  <name>/           query child utags",extraout_x1_19,pcVar21,param_4
                     ,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  clear             unset all utags",extraout_x1_20,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  lock              lock utags",extraout_x1_21,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  unlock            unlock utags",extraout_x1_22,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  status            check lock status",extraout_x1_23,pcVar21,param_4
                     ,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  help              show usage",extraout_x1_24,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"special utags:",extraout_x1_25,pcVar21,param_4,param_5,param_6,
                     param_7,param_8);
        FUN_000043c8((short *)"  .features         list of defined utags",extraout_x1_26,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  .attributes       list of attribute utags",extraout_x1_27,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"                    defined for each utag",extraout_x1_28,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  attribute utags",extraout_x1_29,pcVar21,param_4,param_5,param_6,
                     param_7,param_8);
        FUN_000043c8((short *)"  .range            comma separated list of",extraout_x1_30,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"                    acceptable values",extraout_x1_31,pcVar21,param_4
                     ,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  following utags pass values to upper layers",extraout_x1_32,pcVar21
                     ,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  .chosen           add property to device tree",extraout_x1_33,
                     pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      <value of .chosen><parent utag name>=",extraout_x1_34,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"                            <parent utag value>",extraout_x1_35,
                     pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  .cmdline          add value to cmdline",extraout_x1_36,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      <value of .cmdline><parent utag name>=",extraout_x1_37,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"                            <parent utag value>",extraout_x1_38,
                     pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  .system           populate system property",extraout_x1_39,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      <value of .system><parent utag name>=",extraout_x1_40,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"                            <parent utag value>",extraout_x1_41,
                     pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  .auto             autodetect utag value",extraout_x1_42,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      if utag is empty and .auto rule is set",extraout_x1_43,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      the rule is executed and result is saved",extraout_x1_44,
                     pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      to the utag. Format of the .auto rule:",extraout_x1_45,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)
                     "      key=<key>;index=<index within key>;map=<mapping to user friendly value>"
                     ,extraout_x1_46,pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      map is optional",extraout_x1_47,pcVar21,param_4,param_5,param_6
                     ,param_7,param_8);
        FUN_000043c8((short *)&DAT_000c24da,extraout_x1_48,pcVar21,param_4,param_5,param_6,param_7,
                     param_8);
        FUN_000043c8((short *)&DAT_000c24da,extraout_x1_49,pcVar21,param_4,param_5,param_6,param_7,
                     param_8);
        FUN_000043c8((short *)"Example of .chosen usage:",extraout_x1_50,pcVar21,param_4,param_5,
                     param_6,param_7,param_8);
        FUN_000043c8((short *)"      utag nfc is set to \"true\"",extraout_x1_51,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      utag nfc/.chosen is set to \"mmi,\"",extraout_x1_52,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      device tree property under chosen is set to",extraout_x1_53,
                     pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)&DAT_000a8e56,extraout_x1_54,pcVar21,param_4,param_5,param_6,param_7,
                     param_8);
        FUN_000043c8((short *)&DAT_000c24da,extraout_x1_55,pcVar21,param_4,param_5,param_6,param_7,
                     param_8);
        FUN_000043c8((short *)"Example of .cmdline usage:",extraout_x1_56,pcVar21,param_4,param_5,
                     param_6,param_7,param_8);
        FUN_000043c8((short *)"      utag radio is set to \"ROW\"",extraout_x1_57,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      utag radio/.cmdline is set to \"androidboot.\"",extraout_x1_58,
                     pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      option is added to kernel command line",extraout_x1_59,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          androidboot.radio=ROW",extraout_x1_60,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)&DAT_000c24da,extraout_x1_61,pcVar21,param_4,param_5,param_6,param_7,
                     param_8);
        FUN_000043c8((short *)"Example of .system usage:",extraout_x1_62,pcVar21,param_4,param_5,
                     param_6,param_7,param_8);
        FUN_000043c8((short *)"      utag fps is set to \"false\"",extraout_x1_63,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      utag fps/.system is set to \"ro.hw.\"",extraout_x1_64,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      android system property is set to",extraout_x1_65,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          ro.hw.fps=false",extraout_x1_66,pcVar21,param_4,param_5,
                     param_6,param_7,param_8);
        FUN_000043c8((short *)"Examples of .auto usage:",extraout_x1_67,pcVar21,param_4,param_5,
                     param_6,param_7,param_8);
        FUN_000043c8((short *)"      utag radio/.auto is set to ",extraout_x1_68,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          \"key=hwid;index=2;map=1:US,2:China,3:EMEA\"",
                     extraout_x1_69,pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          this rule takes value in column 2",extraout_x1_70,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          of current hwid line, e.g.:",extraout_x1_71,pcVar21,param_4
                     ,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          \"B A 1 P1A athene_13mp\"",extraout_x1_72,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          and maps it to US, China or EMEA",extraout_x1_73,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)&DAT_000c24da,extraout_x1_74,pcVar21,param_4,param_5,param_6,param_7,
                     param_8);
        FUN_000043c8((short *)"      utag ram/.auto is set to",extraout_x1_75,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          \"key=hwprobe;index=__ram\"",extraout_x1_76,pcVar21,param_4
                     ,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          utag ram is set to RAM size",extraout_x1_77,pcVar21,param_4
                     ,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)&DAT_000c24da,extraout_x1_78,pcVar21,param_4,param_5,param_6,param_7,
                     param_8);
        FUN_000043c8((short *)"      utag frontcolor/.auto is set to",extraout_x1_79,pcVar21,param_4
                     ,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          \"uspace=config;name=build_vars\"",extraout_x1_80,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          HW utag frontcolor is set to value of",extraout_x1_81,
                     pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          CONFIG utag build_vars",extraout_x1_82,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)&DAT_000c24da,extraout_x1_83,pcVar21,param_4,param_5,param_6,param_7,
                     param_8);
        FUN_000043c8((short *)"      utag nfc/.auto is set to",extraout_x1_84,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          \"default=false\"",extraout_x1_85,pcVar21,param_4,param_5,
                     param_6,param_7,param_8);
        FUN_000043c8((short *)"          HW utag nfc is set to \"false\"",extraout_x1_86,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)&DAT_000c24da,extraout_x1_87,pcVar21,param_4,param_5,param_6,param_7,
                     param_8);
        FUN_000043c8((short *)"      utag product/.auto is set to",extraout_x1_88,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          \"uspace=config;name=fti;slice=53:10;",extraout_x1_89,
                     pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"            map=VERTEX_VZW:addison\"",extraout_x1_90,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          HW utag product is set to \"addison\"",extraout_x1_91,
                     pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          if field (offset:53, size:10) stored",extraout_x1_92,
                     pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          in config UTAG fti evaluates to",extraout_x1_93,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        pcVar14 = "          \"VERTEX_VZW\"";
        uVar12 = extraout_x1_94;
        goto LAB_0000ffc4;
      }
      iVar5 = FUN_0001be9c((byte *)*plVar24,(byte *)0xb1271);
      if (iVar5 == 0) {
        iVar5 = FUN_0001eee4();
        if (iVar5 != 0) goto LAB_00010024;
        iVar5 = FUN_0001eb24();
        if ((iVar5 == 0) && (iVar5 = FUN_0001e9fc(), iVar5 == 0)) {
          uVar6 = 1;
          uVar12 = FUN_0001ede4();
          FUN_000043c8((short *)"utags [%a] locked",uVar12,pcVar21,param_4,param_5,param_6,param_7,
                       param_8);
          goto LAB_0000ffd4;
        }
        uVar12 = FUN_0001ede4();
        FUN_000043c8((short *)"failed to lock [%a] utags",uVar12,pcVar21,param_4,param_5,param_6,
                     param_7,param_8);
      }
      else {
        iVar5 = FUN_0001be9c((byte *)*plVar24,(byte *)"unlock");
        if (iVar5 == 0) {
          auVar28 = FUN_0001eb8c();
          if ((auVar28._0_8_ & 1) == 0) {
            uVar12 = FUN_0001ede4();
            FUN_000043c8((short *)"utags [%a] is not locked",uVar12,pcVar21,param_4,param_5,param_6,
                         param_7,param_8);
          }
          else {
            bVar4 = FUN_00021c80(auVar28._0_8_,auVar28._8_8_,pcVar21,param_4,param_5,param_6,param_7
                                 ,param_8);
            if (bVar4 == 0) {
              uVar12 = FUN_0001ede4();
              FUN_000043c8((short *)"utags [%a] unlock is blocked for secure HW",uVar12,pcVar21,
                           param_4,param_5,param_6,param_7,param_8);
            }
            else {
              iVar5 = FUN_0001eb58();
              if ((iVar5 == 0) && (iVar5 = FUN_0001e9fc(), iVar5 == 0)) {
                uVar6 = 1;
                uVar12 = FUN_0001ede4();
                FUN_000043c8((short *)"utags [%a] unlocked",uVar12,pcVar21,param_4,param_5,param_6,
                             param_7,param_8);
                goto LAB_0000ffd4;
              }
              uVar12 = FUN_0001ede4();
              FUN_000043c8((short *)"failed to unlock [%a] utags",uVar12,pcVar21,param_4,param_5,
                           param_6,param_7,param_8);
            }
          }
        }
        else {
          iVar5 = FUN_0001be9c((byte *)*plVar24,(byte *)0xa8a48);
          if (iVar5 == 0) {
            uVar6 = 1;
            uVar12 = FUN_0001ede4();
            uVar10 = FUN_0001eb8c();
            pcVar21 = "";
            if ((uVar10 & 1) == 0) {
              pcVar21 = "un";
            }
            FUN_000043c8((short *)"utags [%a] is %alocked",uVar12,pcVar21,param_4,param_5,param_6,
                         param_7,param_8);
            goto LAB_0000ffd4;
          }
          puVar9 = FUN_0001a254((ulonglong *)&DAT_000a861b,(int)*(char *)*plVar24);
          if (puVar9 == (ulonglong *)0x0) {
            FUN_00011b10((ulonglong *)*plVar24,(ulonglong *)(lVar26 + -0xac),pcVar21,param_4,param_5
                         ,param_6,param_7,param_8);
            cVar13 = '\0';
          }
          else {
            cVar13 = (char)*(ulonglong *)*plVar24;
            pcVar21 = "oem_utags_ext";
            uVar10 = (longlong)cVar13 & 0xffffffff;
            FUN_00040c20(2,(ulonglong *)"%a: utag op: %c","oem_utags_ext",uVar10,param_5,param_6,
                         param_7,param_8);
            if (cVar13 == '@') {
              FUN_0001bd5c((char *)(lVar26 + -0xac),(ulonglong *)(*plVar24 + 1),0x21);
              cVar13 = '@';
            }
            else {
              FUN_00011b10((ulonglong *)(*plVar24 + 1),(ulonglong *)(lVar26 + -0xac),pcVar21,uVar10,
                           param_5,param_6,param_7,param_8);
            }
          }
          pwVar19 = (word *)(lVar26 + -0xac);
          pcVar21 = "oem_utags_ext";
          param_4 = pwVar19;
          FUN_00040c20(2,(ulonglong *)"%a: name: %a","oem_utags_ext",pwVar19,param_5,param_6,param_7
                       ,param_8);
          uVar12 = extraout_x1_x00110;
          if (uVar6 != 2) {
            if (2 < param_1) goto LAB_000102b8;
            if (cVar13 == '@') {
              pcVar21 = (char *)&IMAGE_DOS_HEADER_00000000.e_cblp;
              iVar5 = FUN_0001bef8((byte *)pwVar19,&DAT_000a94f0,2);
              if ((iVar5 == 0) || (uVar10 = FUN_0001ebc8(), (uVar10 & 1) != 0)) {
                FUN_0001ee60(1,pwVar19);
              }
              else {
                lVar8 = FUN_0001b710((ulonglong *)pwVar19);
                if (lVar8 != 0) {
                  pcVar14 = "path validation failed for [%a]";
                  goto LAB_00010844;
                }
                pwVar19 = (word *)FUN_0001eea8();
              }
              uVar6 = 1;
              FUN_000043c8((short *)"current path set to [%a]",pwVar19,pcVar21,param_4,param_5,
                           param_6,param_7,param_8);
              goto LAB_0000ffd4;
            }
            if (cVar13 == '-') {
              iVar5 = FUN_0001eee4();
              if (iVar5 == 0) {
                pcVar21 = "Before deleting";
                FUN_00011848((ulonglong *)pwVar19,&LAB_00011c68,0xa875c);
                uVar10 = FUN_0001ebc8();
                if ((uVar10 & 1) == 0) {
                  pcVar14 = "can\'t delete [%a] it does not exist";
                }
                else {
                  pcVar21 = (char *)(lVar26 + -0x2c);
                  FUN_0001bd5c(pcVar21,(ulonglong *)pwVar19,0x21);
                  FUN_0001b7a0((ulonglong *)pcVar21,(ulonglong *)&DAT_000a94f0,0x21);
                  iVar5 = FUN_0001e9b8();
                  if (iVar5 == -1) {
                    pcVar14 = "can\'t delete [%a] it has children";
                  }
                  else {
                    iVar5 = FUN_0001e840();
                    if (iVar5 == 0) {
                      iVar5 = FUN_0001e9fc();
                      if ((iVar5 != 0) || (iVar5 = FUN_0001e9fc(), iVar5 != 0)) goto LAB_0000f858;
                      pcVar21 = "After deleting";
                      FUN_00011848((ulonglong *)pwVar19,&LAB_00011c68,0xa87c8);
                      pcVar14 = "deleted utag [%a]";
LAB_00010c70:
                      FUN_000043c8((short *)pcVar14,pwVar19,pcVar21,param_4,param_5,param_6,param_7,
                                   param_8);
                      goto LAB_0000ffd0;
                    }
                    pcVar14 = "failed to delete [%a]";
                  }
                }
                goto LAB_00010844;
              }
              goto LAB_00010024;
            }
            if (cVar13 == '+') {
              iVar5 = FUN_0001eee4();
              if (iVar5 != 0) goto LAB_00010024;
              lVar8 = FUN_0001b710((ulonglong *)pwVar19);
              if (lVar8 == 0) {
                iVar5 = -1;
                pcVar14 = "%a: empty utag name\n";
                pcVar21 = "validate_hw_utag_name_full";
                param_4 = pwVar19;
LAB_00010838:
                FUN_00040c20(iVar5,(ulonglong *)pcVar14,pcVar21,param_4,param_5,param_6,param_7,
                             param_8);
LAB_0001083c:
                pcVar14 = "failed to add utag [%a]";
LAB_00010844:
                FUN_000043c8((short *)pcVar14,pwVar19,pcVar21,param_4,param_5,param_6,param_7,
                             param_8);
                goto LAB_0000f858;
              }
              puVar9 = FUN_0001a254((ulonglong *)pwVar19,0x2b);
              if (((puVar9 != (ulonglong *)0x0) ||
                  (puVar9 = FUN_0001a254((ulonglong *)pwVar19,0x2d), puVar9 != (ulonglong *)0x0)) ||
                 (puVar9 = FUN_0001a254((ulonglong *)pwVar19,0x40), puVar9 != (ulonglong *)0x0)) {
                pcVar21 = "validate_hw_utag_name_full";
                param_4 = pwVar19;
                FUN_00040c20(-1,(ulonglong *)"%a: utag name includes special characters\n",
                             "validate_hw_utag_name_full",pwVar19,param_5,param_6,param_7,param_8);
                FUN_000043c8((short *)"utag name includes special character",extraout_x1_x00112,
                             pcVar21,param_4,param_5,param_6,param_7,param_8);
                goto LAB_0001083c;
              }
              pwVar23 = (word *)(lVar26 + -0xcc);
              FUN_0001bd5c((char *)pwVar23,(ulonglong *)pwVar19,0x20);
              lVar8 = FUN_0001b710((ulonglong *)pwVar23);
              if (0x1f < (int)lVar8 + 9) {
                pcVar21 = "validate_hw_utag_name_full";
                param_4 = pwVar19;
                FUN_00040c20(-1,(ulonglong *)"%a: name too long [%a]\n","validate_hw_utag_name_full"
                             ,pwVar19,param_5,param_6,param_7,param_8);
                FUN_000043c8((short *)"utag name length must not exceed %d\n",0x16,pcVar21,param_4,
                             param_5,param_6,param_7,param_8);
                goto LAB_0001083c;
              }
              lVar8 = FUN_0001b710((ulonglong *)pwVar19);
              if (*(char *)((longlong)pwVar19 + lVar8 + -1) == '/') {
                pcVar21 = "validate_hw_utag_name_full";
                param_4 = pwVar19;
                FUN_00040c20(2,(ulonglong *)"%a: utag name must not end with \'/\'[%a]\n",
                             "validate_hw_utag_name_full",pwVar19,param_5,param_6,param_7,param_8);
                pcVar14 = "utag name must not end with \'/\' [%a]";
LAB_00010d58:
                FUN_000043c8((short *)pcVar14,pwVar19,pcVar21,param_4,param_5,param_6,param_7,
                             param_8);
                goto LAB_0001083c;
              }
              puVar9 = FUN_0001c680((ulonglong *)pwVar19,&DAT_000a94ef);
              if (puVar9 != (ulonglong *)0x0) {
                pcVar21 = "validate_hw_utag_name_full";
                param_4 = pwVar19;
                FUN_00040c20(2,(ulonglong *)"%a: utag name must not have empty name segments [%a]\n"
                             ,"validate_hw_utag_name_full",pwVar19,param_5,param_6,param_7,param_8);
                pcVar14 = "bad utag name [%a]";
                goto LAB_00010d58;
              }
              pcVar21 = (char *)(IMAGE_DOS_HEADER_00000000.e_res_4_ + 2);
              FUN_0001bd5c((char *)pwVar23,(ulonglong *)pwVar19,0x20);
              uVar10 = FUN_0001b710((ulonglong *)pwVar23);
              if (-1 < (int)uVar10) {
                pcVar14 = (char *)(lVar26 + (uVar10 & 0xffffffff) + -0xcc);
                do {
                  if (*pcVar14 == '/') {
                    *pcVar14 = '\0';
                    pwVar15 = (word *)(pcVar14 + 1);
                    if ((char)*pwVar15 != '.') {
                      pwVar15 = (word *)0x0;
                    }
                    lVar8 = FUN_0001b710((ulonglong *)pwVar23);
                    bVar3 = lVar8 == 0;
                    goto LAB_00010dd8;
                  }
                  pcVar14 = pcVar14 + -1;
                } while (pwVar23 <= pcVar14);
              }
              pwVar15 = (word *)(lVar26 + -0xcc);
              bVar3 = *(char *)pwVar15 == '.';
              if (!bVar3) {
                pwVar15 = (word *)0x0;
              }
LAB_00010dd8:
              pwVar1 = (word *)0x0;
              if (!bVar3) {
                pwVar1 = pwVar23;
              }
              if (pwVar15 == (word *)0x0 && pwVar1 == (word *)0x0) goto LAB_0001083c;
              if (pwVar1 != (word *)0x0) {
                pcVar21 = "utag_allowed";
                param_4 = pwVar1;
                FUN_00040c20(2,(ulonglong *)"DEBUG: %a: check utag [%a]","utag_allowed",pwVar1,
                             param_5,param_6,param_7,param_8);
                puVar9 = (ulonglong *)
                         FUN_00011d68(".features",extraout_x1_x00117,pcVar21,param_4,param_5,param_6
                                      ,param_7,param_8);
                if (puVar9 == (ulonglong *)0x0) goto LAB_00010e38;
                iVar5 = FUN_0007c1e8(puVar9,(byte *)0xa6813,(byte *)pwVar1);
                if (iVar5 != 0) {
                  FUN_00015910();
                  goto LAB_00010e38;
                }
                pcVar21 = "utag_allowed";
                param_4 = pwVar1;
                FUN_00040c20(-1,(ulonglong *)"%a: utag [%a] not in .features","utag_allowed",pwVar1,
                             param_5,param_6,param_7,param_8);
                FUN_000043c8((short *)"validation failed [%a] not in .features",pwVar1,pcVar21,
                             param_4,param_5,param_6,param_7,param_8);
LAB_00011018:
                FUN_00015910();
                goto LAB_0001083c;
              }
LAB_00010e38:
              if (pwVar15 != (word *)0x0) {
                pcVar21 = "utag_allowed";
                param_4 = pwVar15;
                FUN_00040c20(2,(ulonglong *)"DEBUG: %a: check attribute [%a]","utag_allowed",pwVar15
                             ,param_5,param_6,param_7,param_8);
                if (bVar3) {
                  iVar5 = FUN_0007c1e8((ulonglong *)".features,.attributes,.version",(byte *)0xa6813
                                       ,(byte *)pwVar15);
                  if (iVar5 == 0) {
                    pcVar14 = "DEBUG: %a: utag not set and not special attribute [%a] - not allowed"
                    ;
                    pcVar21 = "utag_allowed";
                    iVar5 = 2;
                    param_4 = pwVar15;
                    goto LAB_00010838;
                  }
                }
                else {
                  puVar9 = (ulonglong *)
                           FUN_00011d68(".attributes",extraout_x1_x00118,pcVar21,param_4,param_5,
                                        param_6,param_7,param_8);
                  if (puVar9 != (ulonglong *)0x0) {
                    iVar5 = FUN_0007c1e8(puVar9,(byte *)0xa6813,(byte *)pwVar15);
                    if (iVar5 == 0) {
                      pcVar21 = ".attributes";
                      param_4 = pwVar15;
                      param_5 = pcVar21;
                      FUN_00040c20(2,(ulonglong *)"%a: attribute [%a] not in %a","utag_allowed",
                                   pwVar15,".attributes",param_6,param_7,param_8);
                      FUN_000043c8((short *)"validation failed [%a] not in %a",pwVar15,".attributes"
                                   ,param_4,param_5,param_6,param_7,param_8);
                      goto LAB_00011018;
                    }
                    FUN_00015910();
                  }
                }
              }
              pcVar21 = (char *)(lVar26 + -0x2c);
              FUN_0001bd5c(pcVar21,(ulonglong *)pwVar19,0x21);
              lVar8 = FUN_0001b710((ulonglong *)pcVar21);
              puVar16 = (undefined1 *)((longlong)pcVar21 + lVar8);
              do {
                puVar17 = puVar16 + -1;
                if (puVar17 == pcVar21) goto LAB_00010f2c;
                pcVar14 = puVar16 + -1;
                puVar16 = puVar17;
              } while (*pcVar14 != '/');
              *puVar17 = 0;
              iVar5 = FUN_0001e9b8();
              if (iVar5 != -1) {
                pcVar14 = "can\'t create [%a] it does not have parent";
                goto LAB_00010844;
              }
LAB_00010f2c:
              pcVar21 = "Before creating";
              FUN_00011848((ulonglong *)pwVar19,&LAB_00011c68,0xa86eb);
              uVar10 = FUN_0001ebc8();
              if ((uVar10 & 1) != 0) {
                pcVar14 = "can\'t create [%a] it already exists";
                goto LAB_00010c70;
              }
              pcVar21 = &DAT_000c24da;
              lVar8 = FUN_0001e880(1,pwVar19,&DAT_000c24da);
              if (lVar8 == 0) {
                pcVar14 = "failed to create [%a]";
                goto LAB_00010844;
              }
              iVar5 = FUN_0001e9fc();
              if (iVar5 != 0) goto LAB_0000f858;
              pcVar21 = "After creating";
LAB_00010814:
              FUN_00011848((ulonglong *)pwVar19,&LAB_00011c68,(longlong)pcVar21);
            }
            else {
              lVar8 = FUN_0001b710((ulonglong *)pwVar19);
              lVar8 = (longlong)((int)lVar8 + -1);
              if (*(char *)((longlong)pwVar19 + lVar8) == '/') {
                *(char *)((longlong)pwVar19 + lVar8) = '\0';
                auVar28 = FUN_0001ebc8();
                uVar12 = auVar28._8_8_;
                if ((auVar28._0_8_ & 1) != 0) {
                  *(word **)(lVar26 + -0x18) = pwVar19;
                  goto LAB_0000f938;
                }
                goto LAB_00010770;
              }
              auVar28 = FUN_0001ebc8();
              uVar12 = auVar28._8_8_;
              if ((auVar28._0_8_ & 1) == 0) goto LAB_00010770;
            }
            uVar12 = FUN_000116a8((ulonglong *)pwVar19);
            uVar6 = (uint)uVar12;
            goto LAB_0000ffd4;
          }
          if (*(char *)param_2[2] == '\0') {
            iVar5 = FUN_0001eee4();
            if (iVar5 != 0) goto LAB_00010024;
            FUN_00011848((ulonglong *)pwVar19,&LAB_00011c68,0xa864a);
            pcVar21 = &DAT_000c24da;
            lVar8 = FUN_0001e880(1,pwVar19,&DAT_000c24da);
            if (lVar8 == 0) {
              pcVar14 = "failed to clear value of \"%a\"";
              goto LAB_00010844;
            }
            iVar5 = FUN_0001e9fc();
            if (iVar5 != 0) goto LAB_0000f858;
            pcVar21 = "After clearing";
            FUN_00011848((ulonglong *)pwVar19,&LAB_00011c68,0xa8678);
            uVar12 = extraout_x1_x00111;
          }
LAB_000102b8:
          if (cVar13 != '\0') {
            pcVar14 = "syntax error - operator present";
            goto LAB_0000fafc;
          }
          iVar5 = FUN_0001eee4();
          if (iVar5 != 0) {
LAB_00010024:
            uVar12 = FUN_0001ede4();
            FUN_000043c8((short *)"utags [%a] is locked",uVar12,pcVar21,param_4,param_5,param_6,
                         param_7,param_8);
            goto LAB_0000f858;
          }
          auVar28 = FUN_0001ebc8();
          uVar12 = auVar28._8_8_;
          if ((auVar28._0_8_ & 1) == 0) {
LAB_00010770:
            pcVar14 = "no such utag";
            goto LAB_0000fafc;
          }
          pwVar23 = pwVar19;
          FUN_00040c20(2,(ulonglong *)"%a: writing value to [%a]","oem_utags_ext",pwVar19,param_5,
                       param_6,param_7,param_8);
          puVar9 = (ulonglong *)(lVar26 + -0x88);
          FUN_00011848((ulonglong *)pwVar19,&LAB_00011c68,0xa939f);
          FUN_0001bd5c((char *)puVar9,(ulonglong *)param_2[2],0x80);
          if (3 < param_1) {
            uVar10 = 1;
            puVar25 = param_2 + 3;
            do {
              FUN_0001b7a0(puVar9,(ulonglong *)0xca9af,0x80);
              FUN_0001b7a0(puVar9,(ulonglong *)*puVar25,0x80);
              uVar10 = uVar10 + 1;
              puVar25 = puVar25 + 1;
            } while (uVar10 != param_1 - 2);
          }
          puVar22 = (ulonglong *)(lVar26 + -0x88);
          if (*(char *)puVar22 == '+') {
            lVar8 = FUN_0001e7f8();
            lVar11 = FUN_0001b710(puVar9);
            pwVar15 = (word *)(lVar8 + lVar11 + 1);
            if (pwVar15 == (word *)0x0) {
              pcVar21 = "%a: utag [%a] does not exist\n";
            }
            else {
              puVar9 = (ulonglong *)FUN_00015710();
              if (puVar9 == (ulonglong *)0x0) {
                FUN_00040c20(-1,(ulonglong *)"%a: out of memory","set_utag2",pwVar23,param_5,param_6
                             ,param_7,param_8);
                goto LAB_0000f858;
              }
              pwVar23 = pwVar15;
              lVar8 = FUN_0001e8d8();
              if (lVar8 != 0) {
                FUN_0001b7a0(puVar9,(ulonglong *)(lVar26 + -0x87),(ulonglong)pwVar15);
                puVar22 = puVar9;
                goto LAB_0001078c;
              }
              pcVar21 = "%a: failed to read utag [%a]\n";
            }
            FUN_00040c20(2,(ulonglong *)pcVar21,"set_utag2",pwVar19,param_5,param_6,param_7,param_8)
            ;
          }
          else {
            puVar9 = (ulonglong *)0x0;
LAB_0001078c:
            uVar12 = FUN_0000f598(1,(ulonglong *)pwVar19,puVar22,pwVar23,param_5,param_6,param_7,
                                  param_8);
            if ((int)uVar12 == 0) {
              iVar5 = FUN_0001e880(1,pwVar19,puVar22);
              if (puVar9 != (ulonglong *)0x0) {
                FUN_00015910();
              }
              if ((iVar5 != 0) && (iVar5 = FUN_0001e9fc(), iVar5 == 0)) {
                pcVar21 = "After setting";
                goto LAB_00010814;
              }
            }
            else if (puVar9 != (ulonglong *)0x0) {
              FUN_00015910();
            }
          }
        }
      }
LAB_0000f858:
      uVar6 = 3;
    }
  }
LAB_0000ffd4:
  if (lVar2 != *plVar27) {
LAB_00011020:
                    /* WARNING: Subroutine does not return */
    FUN_00053a68();
  }
  uVar10 = (ulonglong)uVar6;
LAB_0000ffe4:
  *plVar7 = lVar26;
  return uVar10;
}


```

- Primera instrucción: `ret`

---

## get_unlock_data

- Entrada de tabla: `000cc8f8`

### qword[0]

- Campo: `000cc8f8`
- Valor: `0xa72df`
- Dirección apuntada: `000a72df`
- ASCII: `get_unlock_data`

### qword[1]

- Campo: `000cc900`
- Valor: `0xcc28`
- Dirección apuntada: `0000cc28`
- Función: `FUN_0000cc28`
- Entrada de función: `0000cc28`

#### Pseudocódigo

```c

undefined8
FUN_0000cc28(undefined8 param_1,undefined8 param_2,undefined8 param_3,undefined8 param_4,
            undefined8 param_5,undefined8 param_6,undefined8 param_7,undefined8 param_8)

{
  FUN_00022c00(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
  return 1;
}


```

- Primera instrucción: `str x30,[sp, #-0x10]!`

### qword[2]

- Campo: `000cc908`
- Valor: `0x10000`
- Dirección apuntada: `00010000`
- Función: `FUN_0000f7c0`
- Entrada de función: `0000f7c0`

#### Pseudocódigo

```c

ulonglong FUN_0000f7c0(int param_1,undefined8 *param_2,undefined8 param_3,word *param_4,
                      char *param_5,undefined8 param_6,undefined8 param_7,undefined8 param_8)

{
  word *pwVar1;
  longlong lVar2;
  bool bVar3;
  byte bVar4;
  int iVar5;
  uint uVar6;
  longlong *plVar7;
  longlong lVar8;
  ulonglong *puVar9;
  ulonglong uVar10;
  longlong lVar11;
  undefined8 uVar12;
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
  undefined8 extraout_x1_19;
  undefined8 extraout_x1_20;
  undefined8 extraout_x1_21;
  undefined8 extraout_x1_22;
  undefined8 extraout_x1_23;
  undefined8 extraout_x1_24;
  undefined8 extraout_x1_25;
  undefined8 extraout_x1_26;
  undefined8 extraout_x1_27;
  undefined8 extraout_x1_28;
  undefined8 extraout_x1_29;
  undefined8 extraout_x1_30;
  undefined8 extraout_x1_31;
  undefined8 extraout_x1_32;
  undefined8 extraout_x1_33;
  undefined8 extraout_x1_34;
  undefined8 extraout_x1_35;
  undefined8 extraout_x1_36;
  undefined8 extraout_x1_37;
  undefined8 extraout_x1_38;
  undefined8 extraout_x1_39;
  undefined8 extraout_x1_40;
  undefined8 extraout_x1_41;
  undefined8 extraout_x1_42;
  undefined8 extraout_x1_43;
  undefined8 extraout_x1_44;
  undefined8 extraout_x1_45;
  undefined8 extraout_x1_46;
  undefined8 extraout_x1_47;
  undefined8 extraout_x1_48;
  undefined8 extraout_x1_49;
  undefined8 extraout_x1_50;
  undefined8 extraout_x1_51;
  undefined8 extraout_x1_52;
  undefined8 extraout_x1_53;
  undefined8 extraout_x1_54;
  undefined8 extraout_x1_55;
  undefined8 extraout_x1_56;
  undefined8 extraout_x1_57;
  undefined8 extraout_x1_58;
  undefined8 extraout_x1_59;
  undefined8 extraout_x1_60;
  undefined8 extraout_x1_61;
  undefined8 extraout_x1_62;
  undefined8 extraout_x1_63;
  undefined8 extraout_x1_64;
  undefined8 extraout_x1_65;
  undefined8 extraout_x1_66;
  undefined8 extraout_x1_67;
  undefined8 extraout_x1_68;
  undefined8 extraout_x1_69;
  undefined8 extraout_x1_70;
  undefined8 extraout_x1_71;
  undefined8 extraout_x1_72;
  undefined8 extraout_x1_73;
  undefined8 extraout_x1_74;
  undefined8 extraout_x1_75;
  undefined8 extraout_x1_76;
  undefined8 extraout_x1_77;
  undefined8 extraout_x1_78;
  undefined8 extraout_x1_79;
  undefined8 extraout_x1_80;
  undefined8 extraout_x1_81;
  undefined8 extraout_x1_82;
  undefined8 extraout_x1_83;
  undefined8 extraout_x1_84;
  undefined8 extraout_x1_85;
  undefined8 extraout_x1_86;
  undefined8 extraout_x1_87;
  undefined8 extraout_x1_88;
  undefined8 extraout_x1_89;
  undefined8 extraout_x1_90;
  undefined8 extraout_x1_91;
  undefined8 extraout_x1_92;
  undefined8 extraout_x1_93;
  undefined8 extraout_x1_94;
  undefined8 extraout_x1_95;
  undefined8 extraout_x1_96;
  undefined8 extraout_x1_97;
  undefined8 extraout_x1_98;
  undefined8 extraout_x1_99;
  undefined8 extraout_x1_x00100;
  undefined8 extraout_x1_x00101;
  undefined8 extraout_x1_x00102;
  undefined8 extraout_x1_x00103;
  undefined8 extraout_x1_x00104;
  undefined8 extraout_x1_x00105;
  undefined8 extraout_x1_x00106;
  undefined8 extraout_x1_x00107;
  undefined8 extraout_x1_x00108;
  undefined8 extraout_x1_x00109;
  undefined8 extraout_x1_x00110;
  undefined8 extraout_x1_x00111;
  undefined8 extraout_x1_x00112;
  undefined8 extraout_x1_x00113;
  undefined8 extraout_x1_x00114;
  undefined8 extraout_x1_x00115;
  undefined8 extraout_x1_x00116;
  undefined8 extraout_x1_x00117;
  undefined8 extraout_x1_x00118;
  char cVar13;
  char *pcVar14;
  word *pwVar15;
  undefined1 *puVar16;
  undefined1 *puVar17;
  byte *pbVar18;
  word *pwVar19;
  ulonglong *puVar20;
  char *pcVar21;
  ulonglong *puVar22;
  word *pwVar23;
  longlong *plVar24;
  undefined8 *puVar25;
  longlong lVar26;
  longlong *plVar27;
  undefined1 auVar28 [16];
  
  plVar7 = FUN_0006fd48();
  lVar26 = *plVar7;
  uVar6 = param_1 - 1;
  *plVar7 = lVar26 + -0xd0;
  lVar2 = DAT_000d08a0;
  plVar27 = (longlong *)(lVar26 + -8);
  *plVar27 = DAT_000d08a0;
  plVar24 = param_2 + 1;
  pbVar18 = (byte *)*param_2;
  lVar8 = FUN_0001b710((ulonglong *)0xb38fb);
  pcVar21 = (char *)(lVar8 + 1);
  iVar5 = FUN_0001bef8((byte *)0xb38fb,pbVar18,(longlong)pcVar21);
  if (iVar5 == 0) {
    if (param_1 < 2) {
      *(undefined8 *)(lVar26 + -0x18) = 0;
      *(undefined8 *)(lVar26 + -0x10) = 0;
      *(undefined4 *)(lVar26 + -0x10) = 0;
      uVar12 = extraout_x1;
LAB_0000f870:
      bVar4 = FUN_00021c80(0,uVar12,pcVar21,param_4,param_5,param_6,param_7,param_8);
      uVar6 = 3;
      if (bVar4 != 0) {
        iVar5 = FUN_0001e974();
LAB_0000f894:
        uVar6 = 3;
        if (iVar5 == 0) {
          uVar6 = 1;
        }
      }
      goto LAB_0000ffd4;
    }
    if (uVar6 == 1) {
      iVar5 = FUN_0001be9c((byte *)*plVar24,&DAT_000a987f);
      if (iVar5 != 0) {
        iVar5 = FUN_0001be9c((byte *)*plVar24,(byte *)0xaa42d);
        if (iVar5 == 0) {
          *(undefined8 *)(lVar26 + -0x18) = 0;
          *(undefined8 *)(lVar26 + -0x10) = 0;
          *(undefined4 *)(lVar26 + -0x10) = 1;
          uVar12 = extraout_x1_02;
          goto LAB_0000f870;
        }
        auVar28 = FUN_0001ec08();
        uVar12 = auVar28._8_8_;
        if ((auVar28._0_8_ & 1) == 0) goto LAB_0000f95c;
        puVar9 = (ulonglong *)*plVar24;
LAB_0000f918:
        uVar10 = FUN_00011028(puVar9,uVar12,pcVar21,param_4,param_5,param_6,param_7,param_8);
        if (lVar2 != *plVar27) goto LAB_00011020;
        goto LAB_0000ffe4;
      }
      FUN_000043c8((short *)"usage: fastboot oem config [options]",extraout_x1_01,pcVar21,param_4,
                   param_5,param_6,param_7,param_8);
      FUN_000043c8((short *)&DAT_000c24da,extraout_x1_95,pcVar21,param_4,param_5,param_6,param_7,
                   param_8);
      FUN_000043c8((short *)"options:",extraout_x1_96,pcVar21,param_4,param_5,param_6,param_7,
                   param_8);
      FUN_000043c8((short *)"  (none given)      list all supported utags",extraout_x1_97,pcVar21,
                   param_4,param_5,param_6,param_7,param_8);
      FUN_000043c8((short *)"  list              list all configured utags",extraout_x1_98,pcVar21,
                   param_4,param_5,param_6,param_7,param_8);
      FUN_000043c8((short *)"  <name> <value>    set a utag",extraout_x1_99,pcVar21,param_4,param_5,
                   param_6,param_7,param_8);
      FUN_000043c8((short *)"  <name>            query a utag",extraout_x1_x00100,pcVar21,param_4,
                   param_5,param_6,param_7,param_8);
      FUN_000043c8((short *)&DAT_000a836b,extraout_x1_x00101,pcVar21,param_4,param_5,param_6,param_7
                   ,param_8);
      FUN_000043c8((short *)"  unset <name>      unset a utag",extraout_x1_x00102,pcVar21,param_4,
                   param_5,param_6,param_7,param_8);
      FUN_000043c8((short *)"  clear             unset all utags",extraout_x1_x00103,pcVar21,param_4
                   ,param_5,param_6,param_7,param_8);
      FUN_000043c8((short *)"  protect <name>    mark utag as read-only",extraout_x1_x00104,pcVar21,
                   param_4,param_5,param_6,param_7,param_8);
      FUN_000043c8((short *)"  unprotect <name>  unmark utag as read-only",extraout_x1_x00105,
                   pcVar21,param_4,param_5,param_6,param_7,param_8);
      pcVar14 = "  help              show usage";
      uVar12 = extraout_x1_x00106;
LAB_0000ffc4:
      FUN_000043c8((short *)pcVar14,uVar12,pcVar21,param_4,param_5,param_6,param_7,param_8);
      FUN_000043c8((short *)&DAT_000c24da,extraout_x1_x00107,pcVar21,param_4,param_5,param_6,param_7
                   ,param_8);
LAB_0000ffd0:
      uVar6 = 1;
      goto LAB_0000ffd4;
    }
LAB_0000f95c:
    pcVar21 = (char *)param_2[2];
    uVar10 = FUN_000113e0(0,(ulonglong *)param_2[1],(ulonglong *)pcVar21,param_4,param_5,param_6,
                          param_7,param_8);
    if ((uVar10 & 0xff) == 0) {
      pcVar14 = "Not allowed command";
      uVar12 = extraout_x1_03;
      goto LAB_0000fafc;
    }
    iVar5 = FUN_0001be9c((byte *)*plVar24,(byte *)0xa7284);
    if (iVar5 == 0) {
      iVar5 = FUN_0001edb0();
      uVar6 = 3;
      if (iVar5 != 0) goto LAB_0000ffd4;
LAB_00010010:
      iVar5 = FUN_0001e9fc();
      goto LAB_0000f894;
    }
    iVar5 = FUN_0001be9c((byte *)*plVar24,(byte *)0xb0d3a);
    if (iVar5 == 0) {
      iVar5 = FUN_0001ea64();
joined_r0x00010058:
      if ((iVar5 == 0) && (iVar5 = FUN_0001e9fc(), iVar5 == 0)) {
        puVar9 = (ulonglong *)param_2[2];
        uVar12 = extraout_x1_x00108;
        goto LAB_0000f918;
      }
      goto LAB_0000f858;
    }
    iVar5 = FUN_0001be9c((byte *)*plVar24,(byte *)"unprotect");
    if (iVar5 == 0) {
      iVar5 = FUN_0001eaa4();
      goto joined_r0x00010058;
    }
    iVar5 = FUN_0001be9c((byte *)*plVar24,(byte *)"unset");
    if (iVar5 == 0) {
LAB_00010160:
      uVar10 = FUN_0001ebc8();
      if ((uVar10 & 1) != 0) {
        auVar28 = FUN_0001eae4();
        uVar12 = auVar28._8_8_;
        if ((auVar28._0_8_ & 1) != 0) {
LAB_00010538:
          FUN_000043c8((short *)"utag is read-only!",uVar12,pcVar21,param_4,param_5,param_6,param_7,
                       param_8);
          pcVar14 = "unprotect with \'fastboot oem config unprotect <name>\'";
          uVar12 = extraout_x1_x00114;
          goto LAB_0000fafc;
        }
        iVar5 = FUN_0001e840();
        goto joined_r0x0001018c;
      }
      goto LAB_0000ffd0;
    }
    if (uVar6 == 2) {
      puVar9 = (ulonglong *)param_2[2];
      if ((char)*puVar9 == '\0') goto LAB_00010160;
    }
    else {
      if (param_1 < 3) goto LAB_0000f858;
      puVar9 = (ulonglong *)param_2[2];
    }
    puVar22 = (ulonglong *)(lVar26 + -0xcc);
    pcVar21 = (char *)(IMAGE_DOS_HEADER_00000000.e_res_4_ + 2);
    FUN_0001bd5c((char *)puVar22,(ulonglong *)*plVar24,0x20);
    auVar28 = FUN_0001ec08();
    uVar12 = auVar28._8_8_;
    if ((auVar28._0_8_ & 1) == 0) goto LAB_00010770;
    lVar8 = FUN_0001a480(puVar22,':');
    pbVar18 = (byte *)0x0;
    if (lVar8 != 0) {
      pbVar18 = (byte *)(lVar8 + 1);
    }
    iVar5 = FUN_00011a20(pbVar18);
    if (iVar5 != 0) {
      if (iVar5 == 0xff) {
        pcVar14 = "invalid type specified";
        uVar12 = extraout_x1_x00109;
        goto LAB_0000fafc;
      }
LAB_00010528:
      auVar28 = FUN_0001eae4();
      uVar12 = auVar28._8_8_;
      if ((auVar28._0_8_ & 1) != 0) goto LAB_00010538;
      switch(iVar5) {
      case 1:
        iVar5 = FUN_0000f4b8((byte *)puVar9);
        if (iVar5 < 0) {
          pcVar14 = "not a BOOLEANean value";
          uVar12 = extraout_x1_x00115;
          goto LAB_0000fafc;
        }
        puVar9 = (ulonglong *)(lVar26 + -0x28);
        *(undefined1 *)(lVar26 + -9) = 0;
        FUN_0001bb48((byte *)puVar9,(byte *)puVar22,0x1f);
        lVar8 = FUN_0001a480(puVar9,':');
        pbVar18 = (byte *)0x0;
        if (lVar8 != 0) {
          pbVar18 = (byte *)(lVar8 + 1);
        }
        uVar6 = FUN_00011a20(pbVar18);
        if (uVar6 == 0) {
          FUN_0001b7a0(puVar9,(ulonglong *)0xc94d9,0x1f);
          FUN_0001b7a0(puVar9,(ulonglong *)&DAT_000a7abd,0x1f);
          lVar8 = FUN_0001a480(puVar9,':');
          pbVar18 = (byte *)0x0;
          if (lVar8 != 0) {
            pbVar18 = (byte *)(lVar8 + 1);
          }
          uVar6 = FUN_00011a20(pbVar18);
        }
        if (uVar6 < 2) {
          cVar13 = 0 < iVar5;
          goto LAB_00010978;
        }
        break;
      case 2:
        pcVar21 = (char *)(lVar26 + -0x88);
        FUN_0001bd5c(pcVar21,puVar9,0x80);
        if (3 < param_1) {
          uVar10 = 2;
          puVar25 = param_2 + 3;
          do {
            FUN_0001b7a0((ulonglong *)pcVar21,(ulonglong *)0xca9af,0x7f);
            FUN_0001b7a0((ulonglong *)pcVar21,(ulonglong *)*puVar25,0x7f);
            uVar10 = uVar10 + 1;
            puVar25 = puVar25 + 1;
          } while (uVar10 != uVar6);
        }
        *(undefined1 *)(lVar26 + -9) = 0;
        lVar8 = FUN_0001e880(0,puVar22,pcVar21);
joined_r0x000108e8:
        if (lVar8 != 0) goto switchD_00010690_default;
        break;
      case 3:
        puVar20 = (ulonglong *)(lVar26 + -0x28);
        *(undefined1 *)(lVar26 + -9) = 0;
        FUN_0001bb48((byte *)puVar20,(byte *)puVar22,0x1f);
        lVar8 = FUN_0001a480(puVar20,':');
        pbVar18 = (byte *)0x0;
        if (lVar8 != 0) {
          pbVar18 = (byte *)(lVar8 + 1);
        }
        iVar5 = FUN_00011a20(pbVar18);
        if (iVar5 == 0) {
          FUN_0001b7a0(puVar20,(ulonglong *)0xc94d9,0x1f);
          FUN_0001b7a0(puVar20,(ulonglong *)&DAT_000a7ac2,0x1f);
          lVar8 = FUN_0001a480(puVar20,':');
          pbVar18 = (byte *)0x0;
          if (lVar8 != 0) {
            pbVar18 = (byte *)(lVar8 + 1);
          }
          iVar5 = FUN_00011a20(pbVar18);
        }
        if ((iVar5 == 0) || (iVar5 == 3)) {
          cVar13 = (char)*puVar9;
LAB_00010978:
          pcVar21 = (char *)(lVar26 + -0x2c);
          *pcVar21 = cVar13;
          param_4 = (word *)(IMAGE_DOS_HEADER_00000000.e_magic + 1);
LAB_00010bcc:
          lVar8 = FUN_0001e760();
          goto joined_r0x000108e8;
        }
        break;
      case 4:
        puVar20 = (ulonglong *)(lVar26 + -0x28);
        *(undefined1 *)(lVar26 + -9) = 0;
        FUN_0001bb48((byte *)puVar20,(byte *)puVar22,0x1f);
        lVar8 = FUN_0001a480(puVar20,':');
        pbVar18 = (byte *)0x0;
        if (lVar8 != 0) {
          pbVar18 = (byte *)(lVar8 + 1);
        }
        uVar6 = FUN_00011a20(pbVar18);
        if (uVar6 == 0) {
          FUN_0001b7a0(puVar20,(ulonglong *)0xc94d9,0x1f);
          FUN_0001b7a0(puVar20,(ulonglong *)0xa8526,0x1f);
          lVar8 = FUN_0001a480(puVar20,':');
          pbVar18 = (byte *)0x0;
          if (lVar8 != 0) {
            pbVar18 = (byte *)(lVar8 + 1);
          }
          uVar6 = FUN_00011a20(pbVar18);
        }
        if ((uVar6 | 4) == 4) {
          uVar10 = FUN_0001a340((char *)puVar9);
LAB_00010bb8:
          param_4 = &IMAGE_DOS_HEADER_00000000.e_cparhdr;
          pcVar21 = (char *)(lVar26 + -0x30);
          *(ulonglong *)pcVar21 = uVar10;
          goto LAB_00010bcc;
        }
        break;
      case 5:
        puVar9 = (ulonglong *)(lVar26 + -0x28);
        *(undefined1 *)(lVar26 + -9) = 0;
        FUN_0001bb48((byte *)puVar9,(byte *)puVar22,0x1f);
        lVar8 = FUN_0001a480(puVar9,':');
        pbVar18 = (byte *)0x0;
        if (lVar8 != 0) {
          pbVar18 = (byte *)(lVar8 + 1);
        }
        iVar5 = FUN_00011a20(pbVar18);
        if (iVar5 == 0) {
          FUN_0001b7a0(puVar9,(ulonglong *)0xc94d9,0x1f);
          FUN_0001b7a0(puVar9,(ulonglong *)"ulong",0x1f);
          lVar8 = FUN_0001a480(puVar9,':');
          pbVar18 = (byte *)0x0;
          if (lVar8 != 0) {
            pbVar18 = (byte *)(lVar8 + 1);
          }
          iVar5 = FUN_00011a20(pbVar18);
        }
        if ((iVar5 == 0) || (iVar5 == 5)) {
          uVar10 = FUN_0001cc00();
          goto LAB_00010bb8;
        }
        break;
      case 6:
        puVar20 = (ulonglong *)(lVar26 + -0x28);
        *(undefined1 *)(lVar26 + -9) = 0;
        FUN_0001bb48((byte *)puVar20,(byte *)puVar22,0x1f);
        lVar8 = FUN_0001a480(puVar20,':');
        pbVar18 = (byte *)0x0;
        if (lVar8 != 0) {
          pbVar18 = (byte *)(lVar8 + 1);
        }
        iVar5 = FUN_00011a20(pbVar18);
        if (iVar5 == 0) {
          FUN_0001b7a0(puVar20,(ulonglong *)0xc94d9,0x1f);
          FUN_0001b7a0(puVar20,(ulonglong *)0xa7ace,0x1f);
          lVar8 = FUN_0001a480(puVar20,':');
          pbVar18 = (byte *)0x0;
          if (lVar8 != 0) {
            pbVar18 = (byte *)(lVar8 + 1);
          }
          iVar5 = FUN_00011a20(pbVar18);
        }
        if ((iVar5 == 0) || (iVar5 == 6)) {
          uVar10 = FUN_0001a3e0((char *)puVar9);
          goto LAB_00010bb8;
        }
        break;
      case 7:
        puVar9 = (ulonglong *)(lVar26 + -0x28);
        *(undefined1 *)(lVar26 + -9) = 0;
        FUN_0001bb48((byte *)puVar9,(byte *)puVar22,0x1f);
        lVar8 = FUN_0001a480(puVar9,':');
        pbVar18 = (byte *)0x0;
        if (lVar8 != 0) {
          pbVar18 = (byte *)(lVar8 + 1);
        }
        iVar5 = FUN_00011a20(pbVar18);
        if (iVar5 == 0) {
          FUN_0001b7a0(puVar9,(ulonglong *)0xc94d9,0x1f);
          FUN_0001b7a0(puVar9,(ulonglong *)"ullong",0x1f);
          lVar8 = FUN_0001a480(puVar9,':');
          pbVar18 = (byte *)0x0;
          if (lVar8 != 0) {
            pbVar18 = (byte *)(lVar8 + 1);
          }
          iVar5 = FUN_00011a20(pbVar18);
        }
        if ((iVar5 == 0) || (iVar5 == 7)) {
          uVar10 = FUN_0001cd20();
          goto LAB_00010bb8;
        }
        break;
      default:
switchD_00010690_default:
        iVar5 = FUN_0001e9fc();
        if (iVar5 == 0) {
          uVar12 = FUN_00011028(puVar22,extraout_x1_x00116,pcVar21,param_4,param_5,param_6,param_7,
                                param_8);
          uVar6 = (uint)uVar12;
          goto LAB_0000ffd4;
        }
      }
      goto LAB_0000f858;
    }
    iVar5 = FUN_0000f4b8((byte *)puVar9);
    FUN_0001b7a0(puVar22,(ulonglong *)0xc94d9,0x1f);
    puVar20 = (ulonglong *)0xc4099;
    if (-1 < iVar5) {
      puVar20 = (ulonglong *)&DAT_000a7abd;
    }
    pcVar21 = (char *)((longlong)IMAGE_DOS_HEADER_00000000.e_res_4_ + 3);
    FUN_0001b7a0(puVar22,puVar20,0x1f);
    lVar8 = FUN_0001a480(puVar22,':');
    pbVar18 = (byte *)0x0;
    if (lVar8 != 0) {
      pbVar18 = (byte *)(lVar8 + 1);
    }
    iVar5 = FUN_00011a20(pbVar18);
    if (iVar5 != 0xff) goto LAB_00010528;
    pcVar14 = "name too long";
    uVar12 = extraout_x1_x00113;
LAB_0000fafc:
    FUN_000043c8((short *)pcVar14,uVar12,pcVar21,param_4,param_5,param_6,param_7,param_8);
    goto LAB_0000f858;
  }
  lVar8 = FUN_0001b710((ulonglong *)&DAT_000c1ab5);
  pcVar21 = (char *)(lVar8 + 1);
  iVar5 = FUN_0001bef8(&DAT_000c1ab5,pbVar18,(longlong)pcVar21);
  if (iVar5 != 0) goto LAB_0000f858;
  if (param_1 < 2) {
    if (uVar6 != 0) goto LAB_0000fa04;
LAB_0000f930:
    *(undefined8 *)(lVar26 + -0x18) = 0;
LAB_0000f938:
    *(undefined8 *)(lVar26 + -0x10) = 0;
    iVar5 = FUN_0001e9b8();
    uVar6 = 3;
    if (iVar5 == 0) {
      uVar6 = 1;
    }
  }
  else {
    lVar8 = FUN_0001b710((ulonglong *)*plVar24);
    if (uVar6 == 1) {
      if ((lVar8 == 1) && (*(char *)*plVar24 == '/')) goto LAB_0000f930;
    }
    else if ((lVar8 == 1) && (*(char *)*plVar24 == '/')) {
      pcVar14 = "syntax error";
      uVar12 = extraout_x1_00;
      goto LAB_0000fafc;
    }
LAB_0000fa04:
    iVar5 = FUN_0001be9c((byte *)*plVar24,(byte *)0xa7284);
    if (iVar5 == 0) {
      iVar5 = FUN_0001eee4();
      if (iVar5 != 0) goto LAB_00010024;
      iVar5 = FUN_0001edb0();
joined_r0x0001018c:
      uVar6 = 3;
      if (iVar5 == 0) goto LAB_00010010;
    }
    else {
      iVar5 = FUN_0001be9c((byte *)*plVar24,&DAT_000a987f);
      if (iVar5 == 0) {
        FUN_000043c8((short *)"usage: fastboot oem hw [options]",extraout_x1_04,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)&DAT_000c24da,extraout_x1_05,pcVar21,param_4,param_5,param_6,param_7,
                     param_8);
        FUN_000043c8((short *)"options:",extraout_x1_06,pcVar21,param_4,param_5,param_6,param_7,
                     param_8);
        FUN_000043c8((short *)"  (none given)      list all defined utags",extraout_x1_07,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  /                 list all existing utags",extraout_x1_08,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  +<name>           create empty utag",extraout_x1_09,pcVar21,param_4
                     ,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  -<name>           delete utag",extraout_x1_10,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"     use \"fastboot oem -- hw -<name>\"",extraout_x1_11,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  @<name>           set current utag",extraout_x1_12,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  @                 show current utag",extraout_x1_13,pcVar21,param_4
                     ,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  @/                reset current utag",extraout_x1_14,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  <name> <value>    set a utag",extraout_x1_15,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  <name> +<value>   append value to current",extraout_x1_16,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"                    utag value",extraout_x1_17,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  <name>            query a utag",extraout_x1_18,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  <name>/           query child utags",extraout_x1_19,pcVar21,param_4
                     ,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  clear             unset all utags",extraout_x1_20,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  lock              lock utags",extraout_x1_21,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  unlock            unlock utags",extraout_x1_22,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  status            check lock status",extraout_x1_23,pcVar21,param_4
                     ,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  help              show usage",extraout_x1_24,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"special utags:",extraout_x1_25,pcVar21,param_4,param_5,param_6,
                     param_7,param_8);
        FUN_000043c8((short *)"  .features         list of defined utags",extraout_x1_26,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  .attributes       list of attribute utags",extraout_x1_27,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"                    defined for each utag",extraout_x1_28,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  attribute utags",extraout_x1_29,pcVar21,param_4,param_5,param_6,
                     param_7,param_8);
        FUN_000043c8((short *)"  .range            comma separated list of",extraout_x1_30,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"                    acceptable values",extraout_x1_31,pcVar21,param_4
                     ,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  following utags pass values to upper layers",extraout_x1_32,pcVar21
                     ,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  .chosen           add property to device tree",extraout_x1_33,
                     pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      <value of .chosen><parent utag name>=",extraout_x1_34,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"                            <parent utag value>",extraout_x1_35,
                     pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  .cmdline          add value to cmdline",extraout_x1_36,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      <value of .cmdline><parent utag name>=",extraout_x1_37,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"                            <parent utag value>",extraout_x1_38,
                     pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  .system           populate system property",extraout_x1_39,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      <value of .system><parent utag name>=",extraout_x1_40,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"                            <parent utag value>",extraout_x1_41,
                     pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"  .auto             autodetect utag value",extraout_x1_42,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      if utag is empty and .auto rule is set",extraout_x1_43,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      the rule is executed and result is saved",extraout_x1_44,
                     pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      to the utag. Format of the .auto rule:",extraout_x1_45,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)
                     "      key=<key>;index=<index within key>;map=<mapping to user friendly value>"
                     ,extraout_x1_46,pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      map is optional",extraout_x1_47,pcVar21,param_4,param_5,param_6
                     ,param_7,param_8);
        FUN_000043c8((short *)&DAT_000c24da,extraout_x1_48,pcVar21,param_4,param_5,param_6,param_7,
                     param_8);
        FUN_000043c8((short *)&DAT_000c24da,extraout_x1_49,pcVar21,param_4,param_5,param_6,param_7,
                     param_8);
        FUN_000043c8((short *)"Example of .chosen usage:",extraout_x1_50,pcVar21,param_4,param_5,
                     param_6,param_7,param_8);
        FUN_000043c8((short *)"      utag nfc is set to \"true\"",extraout_x1_51,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      utag nfc/.chosen is set to \"mmi,\"",extraout_x1_52,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      device tree property under chosen is set to",extraout_x1_53,
                     pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)&DAT_000a8e56,extraout_x1_54,pcVar21,param_4,param_5,param_6,param_7,
                     param_8);
        FUN_000043c8((short *)&DAT_000c24da,extraout_x1_55,pcVar21,param_4,param_5,param_6,param_7,
                     param_8);
        FUN_000043c8((short *)"Example of .cmdline usage:",extraout_x1_56,pcVar21,param_4,param_5,
                     param_6,param_7,param_8);
        FUN_000043c8((short *)"      utag radio is set to \"ROW\"",extraout_x1_57,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      utag radio/.cmdline is set to \"androidboot.\"",extraout_x1_58,
                     pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      option is added to kernel command line",extraout_x1_59,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          androidboot.radio=ROW",extraout_x1_60,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)&DAT_000c24da,extraout_x1_61,pcVar21,param_4,param_5,param_6,param_7,
                     param_8);
        FUN_000043c8((short *)"Example of .system usage:",extraout_x1_62,pcVar21,param_4,param_5,
                     param_6,param_7,param_8);
        FUN_000043c8((short *)"      utag fps is set to \"false\"",extraout_x1_63,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      utag fps/.system is set to \"ro.hw.\"",extraout_x1_64,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"      android system property is set to",extraout_x1_65,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          ro.hw.fps=false",extraout_x1_66,pcVar21,param_4,param_5,
                     param_6,param_7,param_8);
        FUN_000043c8((short *)"Examples of .auto usage:",extraout_x1_67,pcVar21,param_4,param_5,
                     param_6,param_7,param_8);
        FUN_000043c8((short *)"      utag radio/.auto is set to ",extraout_x1_68,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          \"key=hwid;index=2;map=1:US,2:China,3:EMEA\"",
                     extraout_x1_69,pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          this rule takes value in column 2",extraout_x1_70,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          of current hwid line, e.g.:",extraout_x1_71,pcVar21,param_4
                     ,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          \"B A 1 P1A athene_13mp\"",extraout_x1_72,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          and maps it to US, China or EMEA",extraout_x1_73,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)&DAT_000c24da,extraout_x1_74,pcVar21,param_4,param_5,param_6,param_7,
                     param_8);
        FUN_000043c8((short *)"      utag ram/.auto is set to",extraout_x1_75,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          \"key=hwprobe;index=__ram\"",extraout_x1_76,pcVar21,param_4
                     ,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          utag ram is set to RAM size",extraout_x1_77,pcVar21,param_4
                     ,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)&DAT_000c24da,extraout_x1_78,pcVar21,param_4,param_5,param_6,param_7,
                     param_8);
        FUN_000043c8((short *)"      utag frontcolor/.auto is set to",extraout_x1_79,pcVar21,param_4
                     ,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          \"uspace=config;name=build_vars\"",extraout_x1_80,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          HW utag frontcolor is set to value of",extraout_x1_81,
                     pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          CONFIG utag build_vars",extraout_x1_82,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)&DAT_000c24da,extraout_x1_83,pcVar21,param_4,param_5,param_6,param_7,
                     param_8);
        FUN_000043c8((short *)"      utag nfc/.auto is set to",extraout_x1_84,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          \"default=false\"",extraout_x1_85,pcVar21,param_4,param_5,
                     param_6,param_7,param_8);
        FUN_000043c8((short *)"          HW utag nfc is set to \"false\"",extraout_x1_86,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)&DAT_000c24da,extraout_x1_87,pcVar21,param_4,param_5,param_6,param_7,
                     param_8);
        FUN_000043c8((short *)"      utag product/.auto is set to",extraout_x1_88,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          \"uspace=config;name=fti;slice=53:10;",extraout_x1_89,
                     pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"            map=VERTEX_VZW:addison\"",extraout_x1_90,pcVar21,param_4,
                     param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          HW utag product is set to \"addison\"",extraout_x1_91,
                     pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          if field (offset:53, size:10) stored",extraout_x1_92,
                     pcVar21,param_4,param_5,param_6,param_7,param_8);
        FUN_000043c8((short *)"          in config UTAG fti evaluates to",extraout_x1_93,pcVar21,
                     param_4,param_5,param_6,param_7,param_8);
        pcVar14 = "          \"VERTEX_VZW\"";
        uVar12 = extraout_x1_94;
        goto LAB_0000ffc4;
      }
      iVar5 = FUN_0001be9c((byte *)*plVar24,(byte *)0xb1271);
      if (iVar5 == 0) {
        iVar5 = FUN_0001eee4();
        if (iVar5 != 0) goto LAB_00010024;
        iVar5 = FUN_0001eb24();
        if ((iVar5 == 0) && (iVar5 = FUN_0001e9fc(), iVar5 == 0)) {
          uVar6 = 1;
          uVar12 = FUN_0001ede4();
          FUN_000043c8((short *)"utags [%a] locked",uVar12,pcVar21,param_4,param_5,param_6,param_7,
                       param_8);
          goto LAB_0000ffd4;
        }
        uVar12 = FUN_0001ede4();
        FUN_000043c8((short *)"failed to lock [%a] utags",uVar12,pcVar21,param_4,param_5,param_6,
                     param_7,param_8);
      }
      else {
        iVar5 = FUN_0001be9c((byte *)*plVar24,(byte *)"unlock");
        if (iVar5 == 0) {
          auVar28 = FUN_0001eb8c();
          if ((auVar28._0_8_ & 1) == 0) {
            uVar12 = FUN_0001ede4();
            FUN_000043c8((short *)"utags [%a] is not locked",uVar12,pcVar21,param_4,param_5,param_6,
                         param_7,param_8);
          }
          else {
            bVar4 = FUN_00021c80(auVar28._0_8_,auVar28._8_8_,pcVar21,param_4,param_5,param_6,param_7
                                 ,param_8);
            if (bVar4 == 0) {
              uVar12 = FUN_0001ede4();
              FUN_000043c8((short *)"utags [%a] unlock is blocked for secure HW",uVar12,pcVar21,
                           param_4,param_5,param_6,param_7,param_8);
            }
            else {
              iVar5 = FUN_0001eb58();
              if ((iVar5 == 0) && (iVar5 = FUN_0001e9fc(), iVar5 == 0)) {
                uVar6 = 1;
                uVar12 = FUN_0001ede4();
                FUN_000043c8((short *)"utags [%a] unlocked",uVar12,pcVar21,param_4,param_5,param_6,
                             param_7,param_8);
                goto LAB_0000ffd4;
              }
              uVar12 = FUN_0001ede4();
              FUN_000043c8((short *)"failed to unlock [%a] utags",uVar12,pcVar21,param_4,param_5,
                           param_6,param_7,param_8);
            }
          }
        }
        else {
          iVar5 = FUN_0001be9c((byte *)*plVar24,(byte *)0xa8a48);
          if (iVar5 == 0) {
            uVar6 = 1;
            uVar12 = FUN_0001ede4();
            uVar10 = FUN_0001eb8c();
            pcVar21 = "";
            if ((uVar10 & 1) == 0) {
              pcVar21 = "un";
            }
            FUN_000043c8((short *)"utags [%a] is %alocked",uVar12,pcVar21,param_4,param_5,param_6,
                         param_7,param_8);
            goto LAB_0000ffd4;
          }
          puVar9 = FUN_0001a254((ulonglong *)&DAT_000a861b,(int)*(char *)*plVar24);
          if (puVar9 == (ulonglong *)0x0) {
            FUN_00011b10((ulonglong *)*plVar24,(ulonglong *)(lVar26 + -0xac),pcVar21,param_4,param_5
                         ,param_6,param_7,param_8);
            cVar13 = '\0';
          }
          else {
            cVar13 = (char)*(ulonglong *)*plVar24;
            pcVar21 = "oem_utags_ext";
            uVar10 = (longlong)cVar13 & 0xffffffff;
            FUN_00040c20(2,(ulonglong *)"%a: utag op: %c","oem_utags_ext",uVar10,param_5,param_6,
                         param_7,param_8);
            if (cVar13 == '@') {
              FUN_0001bd5c((char *)(lVar26 + -0xac),(ulonglong *)(*plVar24 + 1),0x21);
              cVar13 = '@';
            }
            else {
              FUN_00011b10((ulonglong *)(*plVar24 + 1),(ulonglong *)(lVar26 + -0xac),pcVar21,uVar10,
                           param_5,param_6,param_7,param_8);
            }
          }
          pwVar19 = (word *)(lVar26 + -0xac);
          pcVar21 = "oem_utags_ext";
          param_4 = pwVar19;
          FUN_00040c20(2,(ulonglong *)"%a: name: %a","oem_utags_ext",pwVar19,param_5,param_6,param_7
                       ,param_8);
          uVar12 = extraout_x1_x00110;
          if (uVar6 != 2) {
            if (2 < param_1) goto LAB_000102b8;
            if (cVar13 == '@') {
              pcVar21 = (char *)&IMAGE_DOS_HEADER_00000000.e_cblp;
              iVar5 = FUN_0001bef8((byte *)pwVar19,&DAT_000a94f0,2);
              if ((iVar5 == 0) || (uVar10 = FUN_0001ebc8(), (uVar10 & 1) != 0)) {
                FUN_0001ee60(1,pwVar19);
              }
              else {
                lVar8 = FUN_0001b710((ulonglong *)pwVar19);
                if (lVar8 != 0) {
                  pcVar14 = "path validation failed for [%a]";
                  goto LAB_00010844;
                }
                pwVar19 = (word *)FUN_0001eea8();
              }
              uVar6 = 1;
              FUN_000043c8((short *)"current path set to [%a]",pwVar19,pcVar21,param_4,param_5,
                           param_6,param_7,param_8);
              goto LAB_0000ffd4;
            }
            if (cVar13 == '-') {
              iVar5 = FUN_0001eee4();
              if (iVar5 == 0) {
                pcVar21 = "Before deleting";
                FUN_00011848((ulonglong *)pwVar19,&LAB_00011c68,0xa875c);
                uVar10 = FUN_0001ebc8();
                if ((uVar10 & 1) == 0) {
                  pcVar14 = "can\'t delete [%a] it does not exist";
                }
                else {
                  pcVar21 = (char *)(lVar26 + -0x2c);
                  FUN_0001bd5c(pcVar21,(ulonglong *)pwVar19,0x21);
                  FUN_0001b7a0((ulonglong *)pcVar21,(ulonglong *)&DAT_000a94f0,0x21);
                  iVar5 = FUN_0001e9b8();
                  if (iVar5 == -1) {
                    pcVar14 = "can\'t delete [%a] it has children";
                  }
                  else {
                    iVar5 = FUN_0001e840();
                    if (iVar5 == 0) {
                      iVar5 = FUN_0001e9fc();
                      if ((iVar5 != 0) || (iVar5 = FUN_0001e9fc(), iVar5 != 0)) goto LAB_0000f858;
                      pcVar21 = "After deleting";
                      FUN_00011848((ulonglong *)pwVar19,&LAB_00011c68,0xa87c8);
                      pcVar14 = "deleted utag [%a]";
LAB_00010c70:
                      FUN_000043c8((short *)pcVar14,pwVar19,pcVar21,param_4,param_5,param_6,param_7,
                                   param_8);
                      goto LAB_0000ffd0;
                    }
                    pcVar14 = "failed to delete [%a]";
                  }
                }
                goto LAB_00010844;
              }
              goto LAB_00010024;
            }
            if (cVar13 == '+') {
              iVar5 = FUN_0001eee4();
              if (iVar5 != 0) goto LAB_00010024;
              lVar8 = FUN_0001b710((ulonglong *)pwVar19);
              if (lVar8 == 0) {
                iVar5 = -1;
                pcVar14 = "%a: empty utag name\n";
                pcVar21 = "validate_hw_utag_name_full";
                param_4 = pwVar19;
LAB_00010838:
                FUN_00040c20(iVar5,(ulonglong *)pcVar14,pcVar21,param_4,param_5,param_6,param_7,
                             param_8);
LAB_0001083c:
                pcVar14 = "failed to add utag [%a]";
LAB_00010844:
                FUN_000043c8((short *)pcVar14,pwVar19,pcVar21,param_4,param_5,param_6,param_7,
                             param_8);
                goto LAB_0000f858;
              }
              puVar9 = FUN_0001a254((ulonglong *)pwVar19,0x2b);
              if (((puVar9 != (ulonglong *)0x0) ||
                  (puVar9 = FUN_0001a254((ulonglong *)pwVar19,0x2d), puVar9 != (ulonglong *)0x0)) ||
                 (puVar9 = FUN_0001a254((ulonglong *)pwVar19,0x40), puVar9 != (ulonglong *)0x0)) {
                pcVar21 = "validate_hw_utag_name_full";
                param_4 = pwVar19;
                FUN_00040c20(-1,(ulonglong *)"%a: utag name includes special characters\n",
                             "validate_hw_utag_name_full",pwVar19,param_5,param_6,param_7,param_8);
                FUN_000043c8((short *)"utag name includes special character",extraout_x1_x00112,
                             pcVar21,param_4,param_5,param_6,param_7,param_8);
                goto LAB_0001083c;
              }
              pwVar23 = (word *)(lVar26 + -0xcc);
              FUN_0001bd5c((char *)pwVar23,(ulonglong *)pwVar19,0x20);
              lVar8 = FUN_0001b710((ulonglong *)pwVar23);
              if (0x1f < (int)lVar8 + 9) {
                pcVar21 = "validate_hw_utag_name_full";
                param_4 = pwVar19;
                FUN_00040c20(-1,(ulonglong *)"%a: name too long [%a]\n","validate_hw_utag_name_full"
                             ,pwVar19,param_5,param_6,param_7,param_8);
                FUN_000043c8((short *)"utag name length must not exceed %d\n",0x16,pcVar21,param_4,
                             param_5,param_6,param_7,param_8);
                goto LAB_0001083c;
              }
              lVar8 = FUN_0001b710((ulonglong *)pwVar19);
              if (*(char *)((longlong)pwVar19 + lVar8 + -1) == '/') {
                pcVar21 = "validate_hw_utag_name_full";
                param_4 = pwVar19;
                FUN_00040c20(2,(ulonglong *)"%a: utag name must not end with \'/\'[%a]\n",
                             "validate_hw_utag_name_full",pwVar19,param_5,param_6,param_7,param_8);
                pcVar14 = "utag name must not end with \'/\' [%a]";
LAB_00010d58:
                FUN_000043c8((short *)pcVar14,pwVar19,pcVar21,param_4,param_5,param_6,param_7,
                             param_8);
                goto LAB_0001083c;
              }
              puVar9 = FUN_0001c680((ulonglong *)pwVar19,&DAT_000a94ef);
              if (puVar9 != (ulonglong *)0x0) {
                pcVar21 = "validate_hw_utag_name_full";
                param_4 = pwVar19;
                FUN_00040c20(2,(ulonglong *)"%a: utag name must not have empty name segments [%a]\n"
                             ,"validate_hw_utag_name_full",pwVar19,param_5,param_6,param_7,param_8);
                pcVar14 = "bad utag name [%a]";
                goto LAB_00010d58;
              }
              pcVar21 = (char *)(IMAGE_DOS_HEADER_00000000.e_res_4_ + 2);
              FUN_0001bd5c((char *)pwVar23,(ulonglong *)pwVar19,0x20);
              uVar10 = FUN_0001b710((ulonglong *)pwVar23);
              if (-1 < (int)uVar10) {
                pcVar14 = (char *)(lVar26 + (uVar10 & 0xffffffff) + -0xcc);
                do {
                  if (*pcVar14 == '/') {
                    *pcVar14 = '\0';
                    pwVar15 = (word *)(pcVar14 + 1);
                    if ((char)*pwVar15 != '.') {
                      pwVar15 = (word *)0x0;
                    }
                    lVar8 = FUN_0001b710((ulonglong *)pwVar23);
                    bVar3 = lVar8 == 0;
                    goto LAB_00010dd8;
                  }
                  pcVar14 = pcVar14 + -1;
                } while (pwVar23 <= pcVar14);
              }
              pwVar15 = (word *)(lVar26 + -0xcc);
              bVar3 = *(char *)pwVar15 == '.';
              if (!bVar3) {
                pwVar15 = (word *)0x0;
              }
LAB_00010dd8:
              pwVar1 = (word *)0x0;
              if (!bVar3) {
                pwVar1 = pwVar23;
              }
              if (pwVar15 == (word *)0x0 && pwVar1 == (word *)0x0) goto LAB_0001083c;
              if (pwVar1 != (word *)0x0) {
                pcVar21 = "utag_allowed";
                param_4 = pwVar1;
                FUN_00040c20(2,(ulonglong *)"DEBUG: %a: check utag [%a]","utag_allowed",pwVar1,
                             param_5,param_6,param_7,param_8);
                puVar9 = (ulonglong *)
                         FUN_00011d68(".features",extraout_x1_x00117,pcVar21,param_4,param_5,param_6
                                      ,param_7,param_8);
                if (puVar9 == (ulonglong *)0x0) goto LAB_00010e38;
                iVar5 = FUN_0007c1e8(puVar9,(byte *)0xa6813,(byte *)pwVar1);
                if (iVar5 != 0) {
                  FUN_00015910();
                  goto LAB_00010e38;
                }
                pcVar21 = "utag_allowed";
                param_4 = pwVar1;
                FUN_00040c20(-1,(ulonglong *)"%a: utag [%a] not in .features","utag_allowed",pwVar1,
                             param_5,param_6,param_7,param_8);
                FUN_000043c8((short *)"validation failed [%a] not in .features",pwVar1,pcVar21,
                             param_4,param_5,param_6,param_7,param_8);
LAB_00011018:
                FUN_00015910();
                goto LAB_0001083c;
              }
LAB_00010e38:
              if (pwVar15 != (word *)0x0) {
                pcVar21 = "utag_allowed";
                param_4 = pwVar15;
                FUN_00040c20(2,(ulonglong *)"DEBUG: %a: check attribute [%a]","utag_allowed",pwVar15
                             ,param_5,param_6,param_7,param_8);
                if (bVar3) {
                  iVar5 = FUN_0007c1e8((ulonglong *)".features,.attributes,.version",(byte *)0xa6813
                                       ,(byte *)pwVar15);
                  if (iVar5 == 0) {
                    pcVar14 = "DEBUG: %a: utag not set and not special attribute [%a] - not allowed"
                    ;
                    pcVar21 = "utag_allowed";
                    iVar5 = 2;
                    param_4 = pwVar15;
                    goto LAB_00010838;
                  }
                }
                else {
                  puVar9 = (ulonglong *)
                           FUN_00011d68(".attributes",extraout_x1_x00118,pcVar21,param_4,param_5,
                                        param_6,param_7,param_8);
                  if (puVar9 != (ulonglong *)0x0) {
                    iVar5 = FUN_0007c1e8(puVar9,(byte *)0xa6813,(byte *)pwVar15);
                    if (iVar5 == 0) {
                      pcVar21 = ".attributes";
                      param_4 = pwVar15;
                      param_5 = pcVar21;
                      FUN_00040c20(2,(ulonglong *)"%a: attribute [%a] not in %a","utag_allowed",
                                   pwVar15,".attributes",param_6,param_7,param_8);
                      FUN_000043c8((short *)"validation failed [%a] not in %a",pwVar15,".attributes"
                                   ,param_4,param_5,param_6,param_7,param_8);
                      goto LAB_00011018;
                    }
                    FUN_00015910();
                  }
                }
              }
              pcVar21 = (char *)(lVar26 + -0x2c);
              FUN_0001bd5c(pcVar21,(ulonglong *)pwVar19,0x21);
              lVar8 = FUN_0001b710((ulonglong *)pcVar21);
              puVar16 = (undefined1 *)((longlong)pcVar21 + lVar8);
              do {
                puVar17 = puVar16 + -1;
                if (puVar17 == pcVar21) goto LAB_00010f2c;
                pcVar14 = puVar16 + -1;
                puVar16 = puVar17;
              } while (*pcVar14 != '/');
              *puVar17 = 0;
              iVar5 = FUN_0001e9b8();
              if (iVar5 != -1) {
                pcVar14 = "can\'t create [%a] it does not have parent";
                goto LAB_00010844;
              }
LAB_00010f2c:
              pcVar21 = "Before creating";
              FUN_00011848((ulonglong *)pwVar19,&LAB_00011c68,0xa86eb);
              uVar10 = FUN_0001ebc8();
              if ((uVar10 & 1) != 0) {
                pcVar14 = "can\'t create [%a] it already exists";
                goto LAB_00010c70;
              }
              pcVar21 = &DAT_000c24da;
              lVar8 = FUN_0001e880(1,pwVar19,&DAT_000c24da);
              if (lVar8 == 0) {
                pcVar14 = "failed to create [%a]";
                goto LAB_00010844;
              }
              iVar5 = FUN_0001e9fc();
              if (iVar5 != 0) goto LAB_0000f858;
              pcVar21 = "After creating";
LAB_00010814:
              FUN_00011848((ulonglong *)pwVar19,&LAB_00011c68,(longlong)pcVar21);
            }
            else {
              lVar8 = FUN_0001b710((ulonglong *)pwVar19);
              lVar8 = (longlong)((int)lVar8 + -1);
              if (*(char *)((longlong)pwVar19 + lVar8) == '/') {
                *(char *)((longlong)pwVar19 + lVar8) = '\0';
                auVar28 = FUN_0001ebc8();
                uVar12 = auVar28._8_8_;
                if ((auVar28._0_8_ & 1) != 0) {
                  *(word **)(lVar26 + -0x18) = pwVar19;
                  goto LAB_0000f938;
                }
                goto LAB_00010770;
              }
              auVar28 = FUN_0001ebc8();
              uVar12 = auVar28._8_8_;
              if ((auVar28._0_8_ & 1) == 0) goto LAB_00010770;
            }
            uVar12 = FUN_000116a8((ulonglong *)pwVar19);
            uVar6 = (uint)uVar12;
            goto LAB_0000ffd4;
          }
          if (*(char *)param_2[2] == '\0') {
            iVar5 = FUN_0001eee4();
            if (iVar5 != 0) goto LAB_00010024;
            FUN_00011848((ulonglong *)pwVar19,&LAB_00011c68,0xa864a);
            pcVar21 = &DAT_000c24da;
            lVar8 = FUN_0001e880(1,pwVar19,&DAT_000c24da);
            if (lVar8 == 0) {
              pcVar14 = "failed to clear value of \"%a\"";
              goto LAB_00010844;
            }
            iVar5 = FUN_0001e9fc();
            if (iVar5 != 0) goto LAB_0000f858;
            pcVar21 = "After clearing";
            FUN_00011848((ulonglong *)pwVar19,&LAB_00011c68,0xa8678);
            uVar12 = extraout_x1_x00111;
          }
LAB_000102b8:
          if (cVar13 != '\0') {
            pcVar14 = "syntax error - operator present";
            goto LAB_0000fafc;
          }
          iVar5 = FUN_0001eee4();
          if (iVar5 != 0) {
LAB_00010024:
            uVar12 = FUN_0001ede4();
            FUN_000043c8((short *)"utags [%a] is locked",uVar12,pcVar21,param_4,param_5,param_6,
                         param_7,param_8);
            goto LAB_0000f858;
          }
          auVar28 = FUN_0001ebc8();
          uVar12 = auVar28._8_8_;
          if ((auVar28._0_8_ & 1) == 0) {
LAB_00010770:
            pcVar14 = "no such utag";
            goto LAB_0000fafc;
          }
          pwVar23 = pwVar19;
          FUN_00040c20(2,(ulonglong *)"%a: writing value to [%a]","oem_utags_ext",pwVar19,param_5,
                       param_6,param_7,param_8);
          puVar9 = (ulonglong *)(lVar26 + -0x88);
          FUN_00011848((ulonglong *)pwVar19,&LAB_00011c68,0xa939f);
          FUN_0001bd5c((char *)puVar9,(ulonglong *)param_2[2],0x80);
          if (3 < param_1) {
            uVar10 = 1;
            puVar25 = param_2 + 3;
            do {
              FUN_0001b7a0(puVar9,(ulonglong *)0xca9af,0x80);
              FUN_0001b7a0(puVar9,(ulonglong *)*puVar25,0x80);
              uVar10 = uVar10 + 1;
              puVar25 = puVar25 + 1;
            } while (uVar10 != param_1 - 2);
          }
          puVar22 = (ulonglong *)(lVar26 + -0x88);
          if (*(char *)puVar22 == '+') {
            lVar8 = FUN_0001e7f8();
            lVar11 = FUN_0001b710(puVar9);
            pwVar15 = (word *)(lVar8 + lVar11 + 1);
            if (pwVar15 == (word *)0x0) {
              pcVar21 = "%a: utag [%a] does not exist\n";
            }
            else {
              puVar9 = (ulonglong *)FUN_00015710();
              if (puVar9 == (ulonglong *)0x0) {
                FUN_00040c20(-1,(ulonglong *)"%a: out of memory","set_utag2",pwVar23,param_5,param_6
                             ,param_7,param_8);
                goto LAB_0000f858;
              }
              pwVar23 = pwVar15;
              lVar8 = FUN_0001e8d8();
              if (lVar8 != 0) {
                FUN_0001b7a0(puVar9,(ulonglong *)(lVar26 + -0x87),(ulonglong)pwVar15);
                puVar22 = puVar9;
                goto LAB_0001078c;
              }
              pcVar21 = "%a: failed to read utag [%a]\n";
            }
            FUN_00040c20(2,(ulonglong *)pcVar21,"set_utag2",pwVar19,param_5,param_6,param_7,param_8)
            ;
          }
          else {
            puVar9 = (ulonglong *)0x0;
LAB_0001078c:
            uVar12 = FUN_0000f598(1,(ulonglong *)pwVar19,puVar22,pwVar23,param_5,param_6,param_7,
                                  param_8);
            if ((int)uVar12 == 0) {
              iVar5 = FUN_0001e880(1,pwVar19,puVar22);
              if (puVar9 != (ulonglong *)0x0) {
                FUN_00015910();
              }
              if ((iVar5 != 0) && (iVar5 = FUN_0001e9fc(), iVar5 == 0)) {
                pcVar21 = "After setting";
                goto LAB_00010814;
              }
            }
            else if (puVar9 != (ulonglong *)0x0) {
              FUN_00015910();
            }
          }
        }
      }
LAB_0000f858:
      uVar6 = 3;
    }
  }
LAB_0000ffd4:
  if (lVar2 != *plVar27) {
LAB_00011020:
                    /* WARNING: Subroutine does not return */
    FUN_00053a68();
  }
  uVar10 = (ulonglong)uVar6;
LAB_0000ffe4:
  *plVar7 = lVar26;
  return uVar10;
}


```

- Primera instrucción: `ret`

---

## cid_prov_req

- Entrada de tabla: `000cc910`

### qword[0]

- Campo: `000cc910`
- Valor: `0xa72ef`
- Dirección apuntada: `000a72ef`
- ASCII: `cid_prov_req`

### qword[1]

- Campo: `000cc918`
- Valor: `0xcc10`
- Dirección apuntada: `0000cc10`
- Función: `FUN_0000cc10`
- Entrada de función: `0000cc10`

#### Pseudocódigo

```c

undefined8
FUN_0000cc10(int param_1,longlong param_2,undefined8 param_3,undefined8 param_4,undefined8 param_5,
            undefined8 param_6,undefined8 param_7,undefined8 param_8)

{
  FUN_0002bcc0(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
  return 1;
}


```

- Primera instrucción: `str x30,[sp, #-0x10]!`

### qword[2]

- Campo: `000cc920`
- Valor: `0x0`
- Dirección apuntada: `00000000`
- ASCII: `MZ`

---

## read_sv

- Entrada de tabla: `000cc988`

### qword[0]

- Campo: `000cc988`
- Valor: `0xa7321`
- Dirección apuntada: `000a7321`
- ASCII: `read_sv`

### qword[1]

- Campo: `000cc990`
- Valor: `0xdce8`
- Dirección apuntada: `0000dce8`
- Función: `FUN_0000dce8`
- Entrada de función: `0000dce8`

#### Pseudocódigo

```c

undefined8
FUN_0000dce8(undefined8 param_1,undefined8 param_2,char *param_3,undefined8 param_4,
            undefined8 param_5,undefined8 param_6,undefined8 param_7,undefined8 param_8)

{
  FUN_0002cbf0(param_1,param_2,param_3,param_4,param_5,param_6,param_7,param_8);
  return 1;
}


```

- Primera instrucción: `str x30,[sp, #-0x10]!`

### qword[2]

- Campo: `000cc998`
- Valor: `0x100`
- Dirección apuntada: `00000100`

