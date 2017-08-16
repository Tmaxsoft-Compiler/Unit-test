STMG01     CSECT
           LR        12,15
           USING     STMG01,12
           LG        3,SRC#01
           LG        4,SRC#02
           LG        5,SRC#03
           LG        6,SRC#04
           STMG      3,6,FIELD
*           OFADBGMEM FIELD(0),=F'40'
           L         1,=F'4'
           LA        8,FIELD
           LA        9,SRC#01
LOOP#01    CLC       0(8,8),0(9)
           BNE       ERROR
           A         8,=F'8'
           A         9,=F'8'
           BCT       1,LOOP#01
           LR        2,14
           LG        0,SRC#04
           LG        1,SRC#05
           LG        13,SRC#01
           LG        14,SRC#02
           LG        15,SRC#03
           STMG      13,1,FIELD
*           OFADBGMEM FIELD(0),=F'40'
           L         3,=F'5'
           LA        8,FIELD
           LA        9,SRC#01
LOOP#02    CLC       0(8,8),0(9)
           BNE       ERROR
           A         8,=F'8'
           A         9,=F'8'
           BCT       3,LOOP#02
           B         SUCCESS
ERROR      EQU       *
           LR        14,2
           L         15,=F'1'
           B         END
SUCCESS    EQU       *
           LR        14,2
           XR        15,15
END        EQU       *
           BR        14
SRC#01     DC        X'0000000000000001'
SRC#02     DC        X'0000000000000002'
SRC#03     DC        X'0000000000000003'
SRC#04     DC        X'0000000000000004'
SRC#05     DC        X'0000000000000005'
SRC#06     DC        X'0000000000000006'
FIELD      DS        5XL8
           END
