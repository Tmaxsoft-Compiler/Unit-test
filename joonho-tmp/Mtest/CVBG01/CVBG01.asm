R1       EQU   1                                                        
R2       EQU   2                                                        
R3       EQU   3                                                        
R4       EQU   4                                                        
R5       EQU   5                                                        
R6       EQU   6                                                        
R7       EQU   7                                                        
R8       EQU   8                                                        
R9       EQU   9                                                        
R10      EQU   10                                                       
R11      EQU   11                                                       
R12      EQU   12                                                       
R13      EQU   13                                                       
R14      EQU   14                                                       
R15      EQU   15   
CVBG01       CSECT
           LR        R12,R15
           USING     CVBG01,R12
*
           CVBG      R3,DATA01
           CG        R3,DATA02
           BNE       NG 
*
           CVBG      R3,DATA03
           CG        R3,DATA04
           BNE       NG 
*           
           BR        R14
*
NG         EQU    *
           L         R2,0(R1)
           L         R3,0(R2)
           AH        R3,=H'1'
           ST        R3,0(R2)
*
           BR        R14
*
*
DATA01     DC        XL16'0000000000000000000249294823456C'
DATA02     DC        XL8'0000003A0B212020'
DATA03     DC        XL16'0000000000000000000249294823456D'
DATA04     DC        XL8'FFFFFFC5F4DEDFE0'
LEN01      DC        F'8'
*
           END
