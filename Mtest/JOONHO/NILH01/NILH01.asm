NILH01      CSECT
           LR        12,15          * R15: SUBROUTINE ADDR OF NILH01
           USING     NILH01,12       * SET BASE REG AS 12
* -------------------
* TEST 1
* -------------------
           LG        2,ONE
           OFADBGREG 2
           NILH      2,X'F00F'      
           OFADBGREG 2
           LG        2,ONE
           OFADBGREG 2
           NILH      2,X'00FF'      
           OFADBGREG 2
           LG        2,ONE
           OFADBGREG 2
           NILH      2,X'0000'
           OFADBGREG 2
           LG        2,ONE
           OFADBGREG 2
           NILH      2,X'0FF0'
           OFADBGREG 2
* -------------------
* RETURN
* -------------------
           BR        14             * RETURN THE CALLER
* -------------------
* DATA FOR NILH INSTRUCTION
* -------------------
ONE        DC        XL8'FFFFFFFFFFFFFFFF'      
           END
