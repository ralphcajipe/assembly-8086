.model small    

org 100h

.data

.code 

main proc

    mov ah, 9h
    mov dx, numbers ;variable
    mov cx, 4       ;loop 4 times
    
    TestLoop:
        int 21h
        loop TestLoop
    quit:
        mov ah, 0x4c
        mov al, 0x00
        int 21h

numbers: db '12345678910', 13, 10, '$'  ;display with new line   
                   
endp
end main