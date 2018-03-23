*************************************************
* FILENAME : CVD00.asm
* AUTHOR : HYUK KIM
* SYSTEM : OFASM v4 revision 169
*************************************************
                MACRO
                MACRO_CVD   &VALUE1,&VALUE2
                LG          2,&VALUE1
                OFADBGREG   2
                OFADBGMEM   &VALUE2,0
                CVD         2,&VALUE2
                OFADBGREG   2
                OFADBGMEM   &VALUE2,0
                MEND
CVD00           CSECT
                LR          12,15
                USING       CVD00,12
* TESTCASE_1	0	16bits	0	8bytes>
                MACRO_CVD   DATA1_1,DATA1_2
* TESTCASE_2	0	16bits	0	8bytes
                MACRO_CVD   DATA2_1,DATA2_2
* TESTCASE_3	0	16bits	0	8bytes<
                MACRO_CVD   DATA3_1,DATA3_2
* TESTCASE_4	0	16bits	0<	8bytes>
                MACRO_CVD   DATA4_1,DATA4_2
* TESTCASE_5	0	16bits	0<	8bytes
                MACRO_CVD   DATA5_1,DATA5_2
* TESTCASE_6	0	16bits	0<	8bytes<
                MACRO_CVD   DATA6_1,DATA6_2
* TESTCASE_7	0	16bits	0>	8bytes>
                MACRO_CVD   DATA7_1,DATA7_2
* TESTCASE_8	0	16bits	0>	8bytes
                MACRO_CVD   DATA8_1,DATA8_2
* TESTCASE_9	0	16bits	0>	8bytes<
                MACRO_CVD   DATA9_1,DATA9_2
* TESTCASE_10	0	32bits	0	8bytes>
                MACRO_CVD   DATA10_1,DATA10_2
* TESTCASE_11	0	32bits	0	8bytes
                MACRO_CVD   DATA11_1,DATA11_2
* TESTCASE_12	0	32bits	0	8bytes<
                MACRO_CVD   DATA12_1,DATA12_2
* TESTCASE_13	0	32bits	0<	8bytes>
                MACRO_CVD   DATA13_1,DATA13_2
* TESTCASE_14	0	32bits	0<	8bytes
                MACRO_CVD   DATA14_1,DATA14_2
* TESTCASE_15	0	32bits	0<	8bytes<
                MACRO_CVD   DATA15_1,DATA15_2
* TESTCASE_16	0	32bits	0>	8bytes>
                MACRO_CVD   DATA16_1,DATA16_2
* TESTCASE_17	0	32bits	0>	8bytes
                MACRO_CVD   DATA17_1,DATA17_2
* TESTCASE_18	0	32bits	0>	8bytes<
                MACRO_CVD   DATA18_1,DATA18_2
* TESTCASE_19	0	64bits	0	8bytes>
                MACRO_CVD   DATA19_1,DATA19_2
* TESTCASE_20	0	64bits	0	8bytes
                MACRO_CVD   DATA20_1,DATA20_2
* TESTCASE_21	0	64bits	0	8bytes<
                MACRO_CVD   DATA21_1,DATA21_2
* TESTCASE_22	0	64bits	0<	8bytes>
                MACRO_CVD   DATA22_1,DATA22_2
* TESTCASE_23	0	64bits	0<	8bytes
                MACRO_CVD   DATA23_1,DATA23_2
* TESTCASE_24	0	64bits	0<	8bytes<
                MACRO_CVD   DATA24_1,DATA24_2
* TESTCASE_25	0	64bits	0>	8bytes>
                MACRO_CVD   DATA25_1,DATA25_2
* TESTCASE_26	0	64bits	0>	8bytes
                MACRO_CVD   DATA26_1,DATA26_2
* TESTCASE_27	0	64bits	0>	8bytes<
                MACRO_CVD   DATA27_1,DATA27_2
* TESTCASE_28	0<	16bits	0	8bytes>
                MACRO_CVD   DATA28_1,DATA28_2
* TESTCASE_29	0<	16bits	0	8bytes
                MACRO_CVD   DATA29_1,DATA29_2
* TESTCASE_30	0<	16bits	0	8bytes<
                MACRO_CVD   DATA30_1,DATA30_2
* TESTCASE_31	0<	16bits	0<	8bytes>
                MACRO_CVD   DATA31_1,DATA31_2
* TESTCASE_32	0<	16bits	0<	8bytes
                MACRO_CVD   DATA32_1,DATA32_2
* TESTCASE_33	0<	16bits	0<	8bytes<
                MACRO_CVD   DATA33_1,DATA33_2
* TESTCASE_34	0<	16bits	0>	8bytes>
                MACRO_CVD   DATA34_1,DATA34_2
* TESTCASE_35	0<	16bits	0>	8bytes
                MACRO_CVD   DATA35_1,DATA35_2
* TESTCASE_36	0<	16bits	0>	8bytes<
                MACRO_CVD   DATA36_1,DATA36_2
* TESTCASE_37	0<	32bits	0	8bytes>
                MACRO_CVD   DATA37_1,DATA37_2
* TESTCASE_38	0<	32bits	0	8bytes
                MACRO_CVD   DATA38_1,DATA38_2
* TESTCASE_39	0<	32bits	0	8bytes<
                MACRO_CVD   DATA39_1,DATA39_2
* TESTCASE_40	0<	32bits	0<	8bytes>
                MACRO_CVD   DATA40_1,DATA40_2
* TESTCASE_41	0<	32bits	0<	8bytes
                MACRO_CVD   DATA41_1,DATA41_2
* TESTCASE_42	0<	32bits	0<	8bytes<
                MACRO_CVD   DATA42_1,DATA42_2
* TESTCASE_43	0<	32bits	0>	8bytes>
                MACRO_CVD   DATA43_1,DATA43_2
* TESTCASE_44	0<	32bits	0>	8bytes
                MACRO_CVD   DATA44_1,DATA44_2
* TESTCASE_45	0<	32bits	0>	8bytes<
                MACRO_CVD   DATA45_1,DATA45_2
* TESTCASE_46	0<	64bits	0	8bytes>
                MACRO_CVD   DATA46_1,DATA46_2
* TESTCASE_47	0<	64bits	0	8bytes
                MACRO_CVD   DATA47_1,DATA47_2
* TESTCASE_48	0<	64bits	0	8bytes<
                MACRO_CVD   DATA48_1,DATA48_2
* TESTCASE_49	0<	64bits	0<	8bytes>
                MACRO_CVD   DATA49_1,DATA49_2
* TESTCASE_50	0<	64bits	0<	8bytes
                MACRO_CVD   DATA50_1,DATA50_2
* TESTCASE_51	0<	64bits	0<	8bytes<
                MACRO_CVD   DATA51_1,DATA51_2
* TESTCASE_52	0<	64bits	0>	8bytes>
                MACRO_CVD   DATA52_1,DATA52_2
* TESTCASE_53	0<	64bits	0>	8bytes
                MACRO_CVD   DATA53_1,DATA53_2
* TESTCASE_54	0<	64bits	0>	8bytes<
                MACRO_CVD   DATA54_1,DATA54_2
* TESTCASE_55	0>	16bits	0	8bytes>
                MACRO_CVD   DATA55_1,DATA55_2
* TESTCASE_56	0>	16bits	0	8bytes
                MACRO_CVD   DATA56_1,DATA56_2
* TESTCASE_57	0>	16bits	0	8bytes<
                MACRO_CVD   DATA57_1,DATA57_2
* TESTCASE_58	0>	16bits	0<	8bytes>
                MACRO_CVD   DATA58_1,DATA58_2
* TESTCASE_59	0>	16bits	0<	8bytes
                MACRO_CVD   DATA59_1,DATA59_2
* TESTCASE_60	0>	16bits	0<	8bytes<
                MACRO_CVD   DATA60_1,DATA60_2
* TESTCASE_61	0>	16bits	0>	8bytes>
                MACRO_CVD   DATA61_1,DATA61_2
* TESTCASE_62	0>	16bits	0>	8bytes
                MACRO_CVD   DATA62_1,DATA62_2
* TESTCASE_63	0>	16bits	0>	8bytes<
                MACRO_CVD   DATA63_1,DATA63_2
* TESTCASE_64	0>	32bits	0	8bytes>
                MACRO_CVD   DATA64_1,DATA64_2
* TESTCASE_65	0>	32bits	0	8bytes
                MACRO_CVD   DATA65_1,DATA65_2
* TESTCASE_66	0>	32bits	0	8bytes<
                MACRO_CVD   DATA66_1,DATA66_2
* TESTCASE_67	0>	32bits	0<	8bytes>
                MACRO_CVD   DATA67_1,DATA67_2
* TESTCASE_68	0>	32bits	0<	8bytes
                MACRO_CVD   DATA68_1,DATA68_2
* TESTCASE_69	0>	32bits	0<	8bytes<
                MACRO_CVD   DATA69_1,DATA69_2
* TESTCASE_70	0>	32bits	0>	8bytes>
                MACRO_CVD   DATA70_1,DATA70_2
* TESTCASE_71	0>	32bits	0>	8bytes
                MACRO_CVD   DATA71_1,DATA71_2
* TESTCASE_72	0>	32bits	0>	8bytes<
                MACRO_CVD   DATA72_1,DATA72_2
* TESTCASE_73	0>	64bits	0	8bytes>
                MACRO_CVD   DATA73_1,DATA73_2
* TESTCASE_74	0>	64bits	0	8bytes
                MACRO_CVD   DATA74_1,DATA74_2
* TESTCASE_75	0>	64bits	0	8bytes<
                MACRO_CVD   DATA75_1,DATA75_2
* TESTCASE_76	0>	64bits	0<	8bytes>
                MACRO_CVD   DATA76_1,DATA76_2
* TESTCASE_77	0>	64bits	0<	8bytes
                MACRO_CVD   DATA77_1,DATA77_2
* TESTCASE_78	0>	64bits	0<	8bytes<
                MACRO_CVD   DATA78_1,DATA78_2
* TESTCASE_79	0>	64bits	0>	8bytes>
                MACRO_CVD   DATA79_1,DATA79_2
* TESTCASE_80	0>	64bits	0>	8bytes
                MACRO_CVD   DATA80_1,DATA80_2
* TESTCASE_81	0>	64bits	0>	8bytes<
                MACRO_CVD   DATA81_1,DATA81_2
                BR          14
DATA1_1 DC X'FFFFFFFFFFFF0000'
DATA1_2 DC X'0000000C'
 DC C'BLNK'
DATA2_1 DC X'FFFFFFFFFFFF0000'
DATA2_2 DC X'000000000000000C'
DATA3_1 DC X'FFFFFFFFFFFF0000'
DATA3_2 DC X'00000000000000000000000C'
DATA4_1 DC X'FFFFFFFFFFFF0000'
DATA4_2 DC X'1234567C'
 DC C'BLNK'
DATA5_1 DC X'FFFFFFFFFFFF0000'
DATA5_2 DC X'000001234567890C'
DATA6_1 DC X'FFFFFFFFFFFF0000'
DATA6_2 DC X'00000000000001234567890C'
DATA7_1 DC X'FFFFFFFFFFFF0000'
DATA7_2 DC X'1234567D'
 DC C'BLNK'
DATA8_1 DC X'FFFFFFFFFFFF0000'
DATA8_2 DC X'000001234567890D'
DATA9_1 DC X'FFFFFFFFFFFF0000'
DATA9_2 DC X'00000000000001234567890D'
DATA10_1 DC X'FFFFFFFF00000000'
DATA10_2 DC X'0000000C'
 DC C'BLNK'
DATA11_1 DC X'FFFFFFFF00000000'
DATA11_2 DC X'000000000000000C'
DATA12_1 DC X'FFFFFFFF00000000'
DATA12_2 DC X'00000000000000000000000C'
DATA13_1 DC X'FFFFFFFF00000000'
DATA13_2 DC X'1234567C'
 DC C'BLNK'
DATA14_1 DC X'FFFFFFFF00000000'
DATA14_2 DC X'000001234567890C'
DATA15_1 DC X'FFFFFFFF00000000'
DATA15_2 DC X'00000000000001234567890C'
DATA16_1 DC X'FFFFFFFF00000000'
DATA16_2 DC X'1234567D'
 DC C'BLNK'
DATA17_1 DC X'FFFFFFFF00000000'
DATA17_2 DC X'000001234567890D'
DATA18_1 DC X'FFFFFFFF00000000'
DATA18_2 DC X'00000000000001234567890D'
DATA19_1 DC X'0000000000000000'
DATA19_2 DC X'0000000C'
 DC C'BLNK'
DATA20_1 DC X'0000000000000000'
DATA20_2 DC X'000000000000000C'
DATA21_1 DC X'0000000000000000'
DATA21_2 DC X'00000000000000000000000C'
DATA22_1 DC X'0000000000000000'
DATA22_2 DC X'1234567C'
 DC C'BLNK'
DATA23_1 DC X'0000000000000000'
DATA23_2 DC X'000001234567890C'
DATA24_1 DC X'0000000000000000'
DATA24_2 DC X'00000000000001234567890C'
DATA25_1 DC X'0000000000000000'
DATA25_2 DC X'1234567D'
 DC C'BLNK'
DATA26_1 DC X'0000000000000000'
DATA26_2 DC X'000001234567890D'
DATA27_1 DC X'0000000000000000'
DATA27_2 DC X'00000000000001234567890D'
DATA28_1 DC X'FFFFFFFFFFFF0123'
DATA28_2 DC X'0000000C'
 DC C'BLNK'
DATA29_1 DC X'FFFFFFFFFFFF0123'
DATA29_2 DC X'000000000000000C'
DATA30_1 DC X'FFFFFFFFFFFF0123'
DATA30_2 DC X'00000000000000000000000C'
DATA31_1 DC X'FFFFFFFFFFFF0123'
DATA31_2 DC X'1234567C'
 DC C'BLNK'
DATA32_1 DC X'FFFFFFFFFFFF0123'
DATA32_2 DC X'000001234567890C'
DATA33_1 DC X'FFFFFFFFFFFF0123'
DATA33_2 DC X'00000000000001234567890C'
DATA34_1 DC X'FFFFFFFFFFFF0123'
DATA34_2 DC X'1234567D'
 DC C'BLNK'
DATA35_1 DC X'FFFFFFFFFFFF0123'
DATA35_2 DC X'000001234567890D'
DATA36_1 DC X'FFFFFFFFFFFF0123'
DATA36_2 DC X'00000000000001234567890D'
DATA37_1 DC X'FFFFFFFF01234567'
DATA37_2 DC X'0000000C'
 DC C'BLNK'
DATA38_1 DC X'FFFFFFFF01234567'
DATA38_2 DC X'000000000000000C'
DATA39_1 DC X'FFFFFFFF01234567'
DATA39_2 DC X'00000000000000000000000C'
DATA40_1 DC X'FFFFFFFF01234567'
DATA40_2 DC X'1234567C'
 DC C'BLNK'
DATA41_1 DC X'FFFFFFFF01234567'
DATA41_2 DC X'000001234567890C'
DATA42_1 DC X'FFFFFFFF01234567'
DATA42_2 DC X'00000000000001234567890C'
DATA43_1 DC X'FFFFFFFF01234567'
DATA43_2 DC X'1234567D'
 DC C'BLNK'
DATA44_1 DC X'FFFFFFFF01234567'
DATA44_2 DC X'000001234567890D'
DATA45_1 DC X'FFFFFFFF01234567'
DATA45_2 DC X'00000000000001234567890D'
DATA46_1 DC X'0123456789ABCDEF'
DATA46_2 DC X'0000000C'
 DC C'BLNK'
DATA47_1 DC X'0123456789ABCDEF'
DATA47_2 DC X'000000000000000C'
DATA48_1 DC X'0123456789ABCDEF'
DATA48_2 DC X'00000000000000000000000C'
DATA49_1 DC X'0123456789ABCDEF'
DATA49_2 DC X'1234567C'
 DC C'BLNK'
DATA50_1 DC X'0123456789ABCDEF'
DATA50_2 DC X'000001234567890C'
DATA51_1 DC X'0123456789ABCDEF'
DATA51_2 DC X'00000000000001234567890C'
DATA52_1 DC X'0123456789ABCDEF'
DATA52_2 DC X'1234567D'
 DC C'BLNK'
DATA53_1 DC X'0123456789ABCDEF'
DATA53_2 DC X'000001234567890D'
DATA54_1 DC X'0123456789ABCDEF'
DATA54_2 DC X'00000000000001234567890D'
DATA55_1 DC X'FFFFFFFFFFFFF012'
DATA55_2 DC X'0000000C'
 DC C'BLNK'
DATA56_1 DC X'FFFFFFFFFFFFF012'
DATA56_2 DC X'000000000000000C'
DATA57_1 DC X'FFFFFFFFFFFFF012'
DATA57_2 DC X'00000000000000000000000C'
DATA58_1 DC X'FFFFFFFFFFFFF012'
DATA58_2 DC X'1234567C'
 DC C'BLNK'
DATA59_1 DC X'FFFFFFFFFFFFF012'
DATA59_2 DC X'000001234567890C'
DATA60_1 DC X'FFFFFFFFFFFFF012'
DATA60_2 DC X'00000000000001234567890C'
DATA61_1 DC X'FFFFFFFFFFFFF012'
DATA61_2 DC X'1234567D'
 DC C'BLNK'
DATA62_1 DC X'FFFFFFFFFFFFF012'
DATA62_2 DC X'000001234567890D'
DATA63_1 DC X'FFFFFFFFFFFFF012'
DATA63_2 DC X'00000000000001234567890D'
DATA64_1 DC X'FFFFFFFFF0123456'
DATA64_2 DC X'0000000C'
 DC C'BLNK'
DATA65_1 DC X'FFFFFFFFF0123456'
DATA65_2 DC X'000000000000000C'
DATA66_1 DC X'FFFFFFFFF0123456'
DATA66_2 DC X'00000000000000000000000C'
DATA67_1 DC X'FFFFFFFFF0123456'
DATA67_2 DC X'1234567C'
 DC C'BLNK'
DATA68_1 DC X'FFFFFFFFF0123456'
DATA68_2 DC X'000001234567890C'
DATA69_1 DC X'FFFFFFFFF0123456'
DATA69_2 DC X'00000000000001234567890C'
DATA70_1 DC X'FFFFFFFFF0123456'
DATA70_2 DC X'1234567D'
 DC C'BLNK'
DATA71_1 DC X'FFFFFFFFF0123456'
DATA71_2 DC X'000001234567890D'
DATA72_1 DC X'FFFFFFFFF0123456'
DATA72_2 DC X'00000000000001234567890D'
DATA73_1 DC X'F0123456789ABCDE'
DATA73_2 DC X'0000000C'
 DC C'BLNK'
DATA74_1 DC X'F0123456789ABCDE'
DATA74_2 DC X'000000000000000C'
DATA75_1 DC X'F0123456789ABCDE'
DATA75_2 DC X'00000000000000000000000C'
DATA76_1 DC X'F0123456789ABCDE'
DATA76_2 DC X'1234567C'
 DC C'BLNK'
DATA77_1 DC X'F0123456789ABCDE'
DATA77_2 DC X'000001234567890C'
DATA78_1 DC X'F0123456789ABCDE'
DATA78_2 DC X'00000000000001234567890C'
DATA79_1 DC X'F0123456789ABCDE'
DATA79_2 DC X'1234567D'
 DC C'BLNK'
DATA80_1 DC X'F0123456789ABCDE'
DATA80_2 DC X'000001234567890D'
DATA81_1 DC X'F0123456789ABCDE'
DATA81_2 DC X'00000000000001234567890D'
                END
