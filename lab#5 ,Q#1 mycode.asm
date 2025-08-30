org 100h          ; For .COM program in Emu8086

start:
   
    mov ah, 1      
    int 21h        
    sub al, 30h    
    mov bl, al     

    mov ah, 1
    int 21h
    sub al, 30h    
    mov bh, al     

    
    cmp bl, bh
    jge first_greater
    mov al, bh     
    jmp print_result

first_greater:
    mov al, bl     

print_result:
    
    add al, 30h
    mov dl, al
    mov ah, 2
    int 21h

    mov ah, 4Ch
    int 21h