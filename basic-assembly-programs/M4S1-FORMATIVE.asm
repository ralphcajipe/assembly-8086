.MODEL SMALL
.STACK 100H

DATA SEGMENT
     NUM1 DB 5H
     NUM2 DB 2H
     SUM DB ?
ENDS
 
CODE SEGMENT  
    ASSUME DS:DATA CS:CODE
MAIN:
      MOV AX,DATA
      MOV DS,AX
 
      MOV AL,NUM1
      ADD AL,NUM2
 
      MOV SUM,AL  
 
      MOV AH,4CH
      INT 21H      
ENDS
END MAIN