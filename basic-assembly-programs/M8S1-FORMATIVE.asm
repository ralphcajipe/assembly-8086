.model small

.data 

.code

main proc
    
    mov cx, 3  ;loop 1 3x
    
    top:
    
    mov dl, 1
    add dl,48  
   
    
    mov ah, 2
    int 21h
    
    LOOP top  
    
    mov dl, 10  ;new line
    mov ah, 02h
    int 21h  
    
    mov dl, 13  ;carriage return
    mov ah, 02h
    int 21h   
    
    mov cx, 3   ;loop 5 3x 
       
    bot:
    
    mov dl, 5
    add dl,48  
    
    
    mov ah, 2
    int 21h
    
    LOOP bot 
   
    
endp
end main