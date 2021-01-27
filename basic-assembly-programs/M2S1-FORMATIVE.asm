.MODEL SMALL
 .STACK 100H

.DATA
    MESSAGE_1 DB 'Enter favorite number: $'
    MESSAGE_2 DB 'Favorite number is $' 
    MESSAGE_3 DB ' and favorite song is Nag-iisang Bituin$'
 .CODE
   MAIN PROC      
     MOV AX, @DATA                ;INITIALIZATION 
     MOV DS, AX 
     
     LEA DX, MESSAGE_1            ;LOAD AND DISPLAY MESSAGE_1
     MOV AH, 9 
     INT 21H
    
     MOV AH, 1                    ;READS CHARACTER INPUT
     INT 21H

     MOV BL, AL                   ;SAVE INPUT TO BL

     MOV AH, 2                    ;CARRIAGE RETURN
     MOV DL, 0DH          
     INT 21H

     MOV DL, 0AH                  ;LINE FEED
     INT 21H
     
     LEA DX, MESSAGE_2            ;LOAD AND DISPLAY MESSAGE_2
     MOV AH, 9 
     INT 21H
     
     MOV AH, 2                    ;DISPLAY CHARACTER STORED IN BL
     MOV DL, BL
     INT 21H    
     
     LEA DX, MESSAGE_3            ;LOAD AND DISPLAY MESSAGE_3
     MOV AH, 9 
     INT 21H

     MOV AH, 4CH                  ; RETURN TO DOS
     INT 21H

   MAIN ENDP
 END MAIN