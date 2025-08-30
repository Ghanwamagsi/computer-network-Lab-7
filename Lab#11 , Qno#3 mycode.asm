 Program to draw . _ . _ pattern in graphics mode

.model small
.stack 100h
.code
main proc
    
    mov ax, 0013h
    int 10h

    
    mov dx, 100       
    mov cx, 0         
    mov si, 0         

draw_loop:
    cmp si, 0
    je draw_dot
    jmp draw_uscore


draw_dot:
    mov ah, 0Ch
    mov al, 15       
    mov bh, 0
    int 10h           
    add cx, 4         
    mov si, 1         
    jmp continue


draw_uscore:
    mov bx, 3         
us_loop:
    mov ah, 0Ch
    mov al, 15
    mov bh, 0
    int 10h
    inc cx
    dec bx
    jnz us_loop

    add cx, 4         
    mov si, 0         
    jmp continue

continue:
    cmp cx, 320       
    jl draw_loop

    
wait_key:
    mov dl, 0FFh
    mov ah, 06h
    int 21h
    jz wait_key
    cmp al, 27        
    jne wait_key

    
    mov ax, 0003h
    int 10h

    mov ah, 4Ch
    int 21h
main endp
end main
Lab11,3