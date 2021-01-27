.MODEL SMALL
.STACK 100H

DATA SEGMENT
    PROMPT DB "Enter favorite number(0-9): $"
    MESSAGE1 DB 10,13,"Your number performed with $"
    MESSAGE2 DB "+5 then -1 is equal to = $" 
    ;INITIALIZE 
    NUM1 DB ?
    NUM2 DB ?
    RESULT DB ?
ENDS

CODE SEGMENT
    ASSUME DS:DATA CS:CODE
MAIN:

    MOV AX, DATA        ;INITIALIZATION
    MOV DS, AX
                        ;LOAD AND DISPLAY PROMPT
    LEA DX,PROMPT
    MOV AH, 9
    INT 21H

    MOV AH,1            ;READS CHARACTER INPUT
    INT 21H       
    
    SUB AL,30H          ;SUBTRACTING 30H FROM AL TO GET ITS BINARY CODED DECIMAL
    MOV NUM1,AL

    LEA DX, MESSAGE1    ;LOAD AND DISPLAY MESSAGE1
    MOV AH, 9
    INT 21H

    ADD AL,30H          ;START OF ALGORITHM->NUM +5 (SUB 30H GIVES VALUE OF 5) THEN -1 
    MOV NUM2,AL

    ADD AL,NUM1         ;ADD 2 VARIABLES

    MOV RESULT,AL

    MOV AH,0            ;ASCII Adjust after Addition
    AAA

    ADD AH,30H          ;Coresponding Ascii Code of the number
    ADD AL,30H

    MOV BX,AX

    LEA DX,MESSAGE2      ;LOAD AND DISPLAY MESSAGE2
    MOV AH,9
    INT 21H

    MOV AH,2            ;DISPLAY CHARACTER STORED IN BH
    MOV DL,BH
    INT 21H

    MOV AH,2            ;DISPLAY CHARACTER STORED IN BL
    MOV DL,BL
    INT 21H

    MOV AH, 4CH         ;RETURN TO DOS
    INT 21H

ENDS
END MAIN