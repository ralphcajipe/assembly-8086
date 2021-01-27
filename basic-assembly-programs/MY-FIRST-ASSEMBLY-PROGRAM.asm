DATA SEGMENT
    NEWL DB 10,13,'$'  ;ascii -> 10 New Line and ascii -> 13 Carriage return.
    NEWL2 DB 10,13,10,13,'$'
    LINE1 DB "NAG-IISANG BITUIN by Christian Bautista$"
    LINE2 DB "Sa lamig ng gabi$"
    LINE3 DB "May pupuno ng puwang sa 'yong tabi$"
    LINE4 DB "Pagmamahal ang tanging hatid$"
    LINE5 DB "Patitingkarin ang 'yong kislap sa dilim$"
    LINE6 DB "Malayo man, maihahatid din ng hangin$"
    LINE7 DB "Ang mga hangarin na puno ng pag-ibig$"
    LINE8 DB "Ang pangarap ko'y para sa 'yo, nag-iisang bituin$"
    LINE9 DB "Laman ng puso at damdamin ko, nag-iisang bituin$"
    LINE10 DB "Kahit san ka man dalhin ng tadhana'y dama pa rin$"
    LINE11 DB "Dahil tayo'y nakatitig, sa iisang bituin$"
    LINE12 DB "Tanging hiling ng puso ko'y$"
    LINE13 DB "Tibayan ang loob sa 'yong mga pagsubok$"
    LINE14 DB "Malayo man, maihahatid din ng hangin$"
    LINE15 DB "Ang mga hangarin na puno ng pag-ibig$"
    LINE16 DB "Ang pangarap ko'y para sa 'yo, nag-iisang bituin$"
    LINE17 DB "Laman ng puso at damdamin ko, nag-iisang bituin$"
    LINE18 DB "Kahit san ka man dalhin ng tadhana'y dama pa rin$"    
    LINE19 DB "Dahil tayo'y nakatitig, sa iisang bituin$"
    LINE20 DB "Tulad ng mga tala sa langit, ika'y magniningning...$"
ENDS   
CODE SEGMENT
    ASSUME DS:DATA CS:CODE
MAIN:                                  
    MOV AX,DATA     ;INITIALIZATION 
    MOV DS,AX   
    LEA DX,LINE1    ;LOAD EFFECTIVE ADDRESS
    MOV AH,9
    INT 21H      
 
    LEA DX,NEWL2    ;NEW DOUBLE LINE
    MOV AH,9
    INT 21H
    
    LEA DX,LINE2    ;LOAD EFFECTIVE ADDRESS
    MOV AH,9
    INT 21H  
    
    LEA DX,NEWL    ;NEW LINE
    MOV AH,9
    INT 21H
    
    LEA DX,LINE3    ;LOAD EFFECTIVE ADDRESS
    MOV AH,9
    INT 21H 
    
    LEA DX,NEWL    ;NEW LINE
    MOV AH,9
    INT 21H
    
    LEA DX,LINE4    ;LOAD EFFECTIVE ADDRESS
    MOV AH,9
    INT 21H 
    
    LEA DX,NEWL    ;NEW LINE
    MOV AH,9
    INT 21H
    
    LEA DX,LINE5    ;LOAD EFFECTIVE ADDRESS
    MOV AH,9
    INT 21H 
    
    LEA DX,NEWL2    ;NEW DOUBLE LINE
    MOV AH,9
    INT 21H
    
    LEA DX,LINE6    ;LOAD EFFECTIVE ADDRESS
    MOV AH,9
    INT 21H
    
    LEA DX,NEWL    ;NEW LINE
    MOV AH,9
    INT 21H
    
    LEA DX,LINE7    ;LOAD EFFECTIVE ADDRESS
    MOV AH,9
    INT 21H
    
    LEA DX,NEWL    ;NEW LINE
    MOV AH,9
    INT 21H
    
    LEA DX,LINE8    ;LOAD EFFECTIVE ADDRESS
    MOV AH,9
    INT 21H  
    
    LEA DX,NEWL    ;NEW LINE
    MOV AH,9
    INT 21H
    
    LEA DX,LINE9    ;LOAD EFFECTIVE ADDRESS
    MOV AH,9
    INT 21H 
    
    LEA DX,NEWL    ;NEW LINE
    MOV AH,9
    INT 21H
    
    LEA DX,LINE10    ;LOAD EFFECTIVE ADDRESS
    MOV AH,9
    INT 21H  
    
    LEA DX,NEWL    ;NEW LINE
    MOV AH,9
    INT 21H
    
    LEA DX,LINE11    ;LOAD EFFECTIVE ADDRESS
    MOV AH,9
    INT 21H 
    
    LEA DX,NEWL2    ;NEW DOUBLE LINE
    MOV AH,9
    INT 21H  
    
    LEA DX,LINE12    ;LOAD EFFECTIVE ADDRESS
    MOV AH,9
    INT 21H 
    
    LEA DX,NEWL    ;NEW LINE
    MOV AH,9
    INT 21H  
    
    LEA DX,LINE13    ;LOAD EFFECTIVE ADDRESS
    MOV AH,9
    INT 21H 
    
    LEA DX,NEWL    ;NEW LINE
    MOV AH,9
    INT 21H
    
    LEA DX,LINE14    ;LOAD EFFECTIVE ADDRESS
    MOV AH,9
    INT 21H  
    
    LEA DX,NEWL    ;NEW LINE
    MOV AH,9
    INT 21H
    
    LEA DX,LINE15    ;LOAD EFFECTIVE ADDRESS
    MOV AH,9
    INT 21H
    
    LEA DX,NEWL2    ;NEW DOUBLE LINE
    MOV AH,9
    INT 21H
    
    LEA DX,LINE16    ;LOAD EFFECTIVE ADDRESS
    MOV AH,9
    INT 21H  
    
    LEA DX,NEWL    ;NEW LINE
    MOV AH,9
    INT 21H
    
    LEA DX,LINE17    ;LOAD EFFECTIVE ADDRESS
    MOV AH,9
    INT 21H
    
    LEA DX,NEWL    ;NEW LINE
    MOV AH,9
    INT 21H
    
    LEA DX,LINE18    ;LOAD EFFECTIVE ADDRESS
    MOV AH,9
    INT 21H
    
    LEA DX,NEWL    ;NEW LINE
    MOV AH,9
    INT 21H
    
    LEA DX,LINE19    ;LOAD EFFECTIVE ADDRESS
    MOV AH,9
    INT 21H 
    
    LEA DX,NEWL    ;NEW LINE
    MOV AH,9
    INT 21H
    
    LEA DX,LINE20    ;LOAD EFFECTIVE ADDRESS
    MOV AH,9
    INT 21H   
    MOV AH,4CH
    INT 21H
ENDS
END MAIN