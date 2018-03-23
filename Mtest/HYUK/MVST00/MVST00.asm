*************************************************
* FILENAME : MVST00.asm
* AUTHOR : HYUK KIM
* SYSTEM : OFASM v4 revision 169
*************************************************
                MACRO
                MACRO_MVST  &VALUE1,&VALUE2
                LG          6,=X'0000000000000000'
                OFADBGMEM   &VALUE1,0
                OFADBGMEM   &VALUE2,0
                LA          2,&VALUE1
                LA          4,&VALUE1
                LA          3,&VALUE2
                LA          5,&VALUE2
                MVST        2,3
                OFADBGMEM   &VALUE1,0
                OFADBGMEM   &VALUE2,0
                OFADBGREG   6
                SR          2,4
                OFADBGREG   2
                SR          3,5
                OFADBGREG   3
                MEND
MVST00          CSECT
                LR          12,15
                USING       MVST00,12
* TESTCASE_1	op1.len=op2.len	entire
                MACRO_MVST  DATA1_1,DATA1_2
* TESTCASE_2	op1.len=op2.len	cpu-determined
                MACRO_MVST  DATA2_1,DATA2_2
* TESTCASE_5	op1.len>op2.len	longer op	entire
                MACRO_MVST  DATA3_1,DATA3_2
* TESTCASE_6	op1.len>op2.len	longer op	cpu-determined
                MACRO_MVST  DATA4_1,DATA4_2
* TESTCASE_7	op1.len>op2.len	shorter op	entire
                MACRO_MVST  DATA5_1,DATA5_2
* TESTCASE_8	op1.len>op2.len	shorter op	cpu-determined
                MACRO_MVST  DATA6_1,DATA6_2
* TESTCASE_9	op1.len<op2.len	longer op	entire
                MACRO_MVST  DATA7_1,DATA7_2
* TESTCASE_10	op1.len<op2.len	longer op	cpu-determined
                MACRO_MVST  DATA8_1,DATA8_2
* TESTCASE_11	op1.len<op2.len	shorter op	entire
                MACRO_MVST  DATA9_1,DATA9_2
* TESTCASE_12	op1.len<op2.len	shorter op	cpu-determined
                MACRO_MVST  DATA10_1,DATA10_2
                BR          14
DATA1_1 DC X'0123456789ABCDEF00'
DATA1_2 DC X'FEDCBA987654321000'
DATA2_1 DC 0XL256
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF00'
DATA2_2 DC 0XL256
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA987654321000'
DATA3_1 DC X'0123456789ABCDEF0123456789ABCDEF'
DATA3_2 DC X'FEDCBA987654321000'
DATA4_1 DC 0XL256
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF00'
DATA4_2 DC X'FEDCBA987654321000'
DATA5_1 DC X'0123456789ABCDEF0123456789ABCDEF'
DATA5_2 DC X'FEDCBA987654321000'
DATA6_1 DC 0XL256
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF00'
DATA6_2 DC X'FEDCBA987654321000'
DATA7_1 DC X'FEDCBA987654321000'
 DC X'FEDCBA9876543210'
DATA7_2 DC X'0123456789ABCDEF0123456789ABCDEF00'
DATA8_1 DC X'0123456789ABCDEF00'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF00'
DATA8_2 DC 0XL256
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA987654321000'
DATA9_1 DC X'FEDCBA987654321000'
 DC X'FEDCBA9876543210'
DATA9_2 DC X'0123456789ABCDEF0123456789ABCDEF00'
DATA10_1 DC X'0123456789ABCDEF00'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF'
 DC X'0123456789ABCDEF00'
DATA10_2 DC 0XL256
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA9876543210'
 DC X'FEDCBA987654321000'
                END
