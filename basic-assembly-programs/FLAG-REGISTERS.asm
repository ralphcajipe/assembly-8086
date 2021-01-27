;Create a program that will set the value of the following flag registers to 1.

;Carry Flag
;Parity Flag
;Auxiliary Flag  
;Zero Flag
;Sign Flag

.model small

.data

.code
    main proc    
        ;sets CF,PF,AF,ZF to 1 except SF
        ;mov cx, 255
        ;add cl, 1 
        
        ;sets CF,PF,AF,SF to 1 except ZF
        mov cl, -5
        add cl, -5  
          
        
               
    endp
    end main
    