*************************************************
* FILENAME : D00.asm
* AUTHOR : HYUK KIM
* SYSTEM : OFASM v4 revision 169
*************************************************
                MACRO
                MACRO_D     &VALUE1,&VALUE2,&REGNO
                LG          &REGNO,DATA_INIT_REG
                LG          &REGNO+1,DATA_INIT_REG
                L           &REGNO,&VALUE1
                L           &REGNO+1,&VALUE1+4
                OFADBGREG   &REGNO
                OFADBGREG   &REGNO+1
                OFADBGMEM   &VALUE2,0
                D           &REGNO,&VALUE2
                OFADBGREG   &REGNO
                OFADBGREG   &REGNO+1
                OFADBGMEM   &VALUE2,0
                MEND
D00             CSECT
                LR          12,15
                USING       D00,12
* TESTCASE_1	0	16bits	0	32bits>
                MACRO_D     DATA1_1,DATA1_2,2
* TESTCASE_2	0	16bits	0	32bits
*                MACRO_D     DATA2_1,DATA2_2,2
* TESTCASE_3	0	16bits	0	32bits<
*                MACRO_D     DATA3_1,DATA3_2,2
* TESTCASE_4	0	16bits	0<	32bits>
                MACRO_D     DATA4_1,DATA4_2,2
* TESTCASE_5	0	16bits	0<	32bits
                MACRO_D     DATA5_1,DATA5_2,2
* TESTCASE_6	0	16bits	0<	32bits<
                MACRO_D     DATA6_1,DATA6_2,2
* TESTCASE_7	0	16bits	0>	32bits>
                MACRO_D     DATA7_1,DATA7_2,2
* TESTCASE_8	0	16bits	0>	32bits
                MACRO_D     DATA8_1,DATA8_2,2
* TESTCASE_9	0	16bits	0>	32bits<
                MACRO_D     DATA9_1,DATA9_2,2
* TESTCASE_10	0	32bits	0	32bits>
                MACRO_D     DATA10_1,DATA10_2,2
* TESTCASE_11	0	32bits	0	32bits
*                MACRO_D     DATA11_1,DATA11_2,2
* TESTCASE_12	0	32bits	0	32bits<
*                MACRO_D     DATA12_1,DATA12_2,2
* TESTCASE_13	0	32bits	0<	32bits>
                MACRO_D     DATA13_1,DATA13_2,2
* TESTCASE_14	0	32bits	0<	32bits
                MACRO_D     DATA14_1,DATA14_2,2
* TESTCASE_15	0	32bits	0<	32bits<
                MACRO_D     DATA15_1,DATA15_2,2
* TESTCASE_16	0	32bits	0>	32bits>
                MACRO_D     DATA16_1,DATA16_2,2
* TESTCASE_17	0	32bits	0>	32bits
                MACRO_D     DATA17_1,DATA17_2,2
* TESTCASE_18	0	32bits	0>	32bits<
                MACRO_D     DATA18_1,DATA18_2,2
* TESTCASE_19	0	64bits	0	32bits>
                MACRO_D     DATA19_1,DATA19_2,2
* TESTCASE_20	0	64bits	0	32bits
*                MACRO_D     DATA20_1,DATA20_2,2
* TESTCASE_21	0	64bits	0	32bits<
*                MACRO_D     DATA21_1,DATA21_2,2
* TESTCASE_22	0	64bits	0<	32bits>
                MACRO_D     DATA22_1,DATA22_2,2
* TESTCASE_23	0	64bits	0<	32bits
                MACRO_D     DATA23_1,DATA23_2,2
* TESTCASE_24	0	64bits	0<	32bits<
                MACRO_D     DATA24_1,DATA24_2,2
* TESTCASE_25	0	64bits	0>	32bits>
                MACRO_D     DATA25_1,DATA25_2,2
* TESTCASE_26	0	64bits	0>	32bits
                MACRO_D     DATA26_1,DATA26_2,2
* TESTCASE_27	0	64bits	0>	32bits<
                MACRO_D     DATA27_1,DATA27_2,2
* TESTCASE_28	0<	16bits	0	32bits>
                MACRO_D     DATA28_1,DATA28_2,2
* TESTCASE_29	0<	16bits	0	32bits
*                MACRO_D     DATA29_1,DATA29_2,2
* TESTCASE_30	0<	16bits	0	32bits<
*                MACRO_D     DATA30_1,DATA30_2,2
* TESTCASE_31	0<	16bits	0<	32bits>
                MACRO_D     DATA31_1,DATA31_2,2
* TESTCASE_32	0<	16bits	0<	32bits
                MACRO_D     DATA32_1,DATA32_2,2
* TESTCASE_33	0<	16bits	0<	32bits<
                MACRO_D     DATA33_1,DATA33_2,2
* TESTCASE_34	0<	16bits	0>	32bits>
                MACRO_D     DATA34_1,DATA34_2,2
* TESTCASE_35	0<	16bits	0>	32bits
                MACRO_D     DATA35_1,DATA35_2,2
* TESTCASE_36	0<	16bits	0>	32bits<
                MACRO_D     DATA36_1,DATA36_2,2
* TESTCASE_37	0<	32bits	0	32bits>
                MACRO_D     DATA37_1,DATA37_2,2
* TESTCASE_38	0<	32bits	0	32bits
*                MACRO_D     DATA38_1,DATA38_2,2
* TESTCASE_39	0<	32bits	0	32bits<
*                MACRO_D     DATA39_1,DATA39_2,2
* TESTCASE_40	0<	32bits	0<	32bits>
                MACRO_D     DATA40_1,DATA40_2,2
* TESTCASE_41	0<	32bits	0<	32bits
                MACRO_D     DATA41_1,DATA41_2,2
* TESTCASE_42	0<	32bits	0<	32bits<
                MACRO_D     DATA42_1,DATA42_2,2
* TESTCASE_43	0<	32bits	0>	32bits>
                MACRO_D     DATA43_1,DATA43_2,2
* TESTCASE_44	0<	32bits	0>	32bits
                MACRO_D     DATA44_1,DATA44_2,2
* TESTCASE_45	0<	32bits	0>	32bits<
                MACRO_D     DATA45_1,DATA45_2,2
                BR          14
DATA_INIT_REG DC X'0416041600000000'
DATA1_1 DC X'FEDCBA9876540000'
DATA1_2 DC X'0000'
 DC X'0416'
DATA2_1 DC X'FEDCBA9876540000'
DATA2_2 DC X'00000000'
DATA3_1 DC X'FEDCBA9876540000'
DATA3_2 DC X'0000000000000000'
DATA4_1 DC X'FEDCBA9876540000'
DATA4_2 DC X'0002'
 DC X'0416'
DATA5_1 DC X'FEDCBA9876540000'
DATA5_2 DC X'00000002'
DATA6_1 DC X'FEDCBA9876540000'
DATA6_2 DC X'0000000200000002'
DATA7_1 DC X'FEDCBA9876540000'
DATA7_2 DC X'8002'
 DC X'0416'
DATA8_1 DC X'FEDCBA9876540000'
DATA8_2 DC X'80000002'
DATA9_1 DC X'FEDCBA9876540000'
DATA9_2 DC X'8000000000000002'
DATA10_1 DC X'FEDCBA9800000000'
DATA10_2 DC X'0000'
 DC X'0416'
DATA11_1 DC X'FEDCBA9800000000'
DATA11_2 DC X'00000000'
DATA12_1 DC X'FEDCBA9800000000'
DATA12_2 DC X'0000000000000000'
DATA13_1 DC X'FEDCBA9800000000'
DATA13_2 DC X'0002'
 DC X'0416'
DATA14_1 DC X'FEDCBA9800000000'
DATA14_2 DC X'00000002'
DATA15_1 DC X'FEDCBA9800000000'
DATA15_2 DC X'0000000200000002'
DATA16_1 DC X'FEDCBA9800000000'
DATA16_2 DC X'8002'
 DC X'0416'
DATA17_1 DC X'FEDCBA9800000000'
DATA17_2 DC X'80000002'
DATA18_1 DC X'FEDCBA9800000000'
DATA18_2 DC X'8000000000000002'
DATA19_1 DC X'0000000000000000'
DATA19_2 DC X'0000'
 DC X'0416'
DATA20_1 DC X'0000000000000000'
DATA20_2 DC X'00000000'
DATA21_1 DC X'0000000000000000'
DATA21_2 DC X'0000000000000000'
DATA22_1 DC X'0000000000000000'
DATA22_2 DC X'0002'
 DC X'0416'
DATA23_1 DC X'0000000000000000'
DATA23_2 DC X'00000002'
DATA24_1 DC X'0000000000000000'
DATA24_2 DC X'0000000200000002'
DATA25_1 DC X'0000000000000000'
DATA25_2 DC X'8002'
 DC X'0416'
DATA26_1 DC X'0000000000000000'
DATA26_2 DC X'80000002'
DATA27_1 DC X'0000000000000000'
DATA27_2 DC X'8000000000000002'
DATA28_1 DC X'FEDCBA9876547FFF'
DATA28_2 DC X'0000'
 DC X'0416'
DATA29_1 DC X'FEDCBA9876547FFF'
DATA29_2 DC X'00000000'
DATA30_1 DC X'FEDCBA9876547FFF'
DATA30_2 DC X'0000000000000000'
DATA31_1 DC X'FEDCBA9876547FFF'
DATA31_2 DC X'0002'
 DC X'0416'
DATA32_1 DC X'FEDCBA9876547FFF'
DATA32_2 DC X'00000002'
DATA33_1 DC X'FEDCBA9876547FFF'
DATA33_2 DC X'0000000200000002'
DATA34_1 DC X'FEDCBA9876547FFF'
DATA34_2 DC X'8002'
 DC X'0416'
DATA35_1 DC X'FEDCBA9876547FFF'
DATA35_2 DC X'80000002'
DATA36_1 DC X'FEDCBA9876547FFF'
DATA36_2 DC X'8000000000000002'
DATA37_1 DC X'FEDCBA987FFFFFFF'
DATA37_2 DC X'0000'
 DC X'0416'
DATA38_1 DC X'FEDCBA987FFFFFFF'
DATA38_2 DC X'00000000'
DATA39_1 DC X'FEDCBA987FFFFFFF'
DATA39_2 DC X'0000000000000000'
DATA40_1 DC X'FEDCBA987FFFFFFF'
DATA40_2 DC X'0002'
 DC X'0416'
DATA41_1 DC X'FEDCBA987FFFFFFF'
DATA41_2 DC X'00000002'
DATA42_1 DC X'FEDCBA987FFFFFFF'
DATA42_2 DC X'0000000200000002'
DATA43_1 DC X'FEDCBA987FFFFFFF'
DATA43_2 DC X'8002'
 DC X'0416'
DATA44_1 DC X'FEDCBA987FFFFFFF'
DATA44_2 DC X'80000002'
DATA45_1 DC X'FEDCBA987FFFFFFF'
DATA45_2 DC X'8000000000000002'
                END
