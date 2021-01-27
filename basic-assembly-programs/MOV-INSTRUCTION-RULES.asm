.MODEL SMALL

;DIRECTIVE that defines where the machine code to be placed in memory.    
ORG 100h  
  
;MOV REG,REG
;MOV AX,CL    ;error because of wrong parameter, operands do not match: 16 bit and 8 bit register


;MOV REG,IMM
MOV AL,45    ;error because of wrong parameters: MOV DS, AL
MOV DS, AL   ;wrong use of segment register

RET                                    