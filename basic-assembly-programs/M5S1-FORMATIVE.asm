.MODEL SMALL

 
ORG 100h    ;DIRECTIVE that defines where the machine code to be placed in memory.   
;MOV REG,REG
MOV AX,CX     


;MOV REG,IMM
MOV BX,320H  ;copies hexadecimal value 320h to BX
MOV DS, BX  ;copies value of BX into DS

RET                                    