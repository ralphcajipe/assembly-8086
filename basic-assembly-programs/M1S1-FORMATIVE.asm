DATA SEGMENT
    QUOTE DB ""I could either watch it happen or be a part of it." -Elon Musk of Tesla$"  
ENDS
CODE SEGMENT
    ASSUME DS:DATA CS:CODE
MAIN:
    MOV AX,DATA
    MOV DS,AX
    LEA DX,QUOTE  
    MOV AH,9
    INT 21H
    MOV AH,4CH
    INT 21H
ENDS
END MAIN