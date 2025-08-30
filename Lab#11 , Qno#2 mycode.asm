; Program to draw a dotted horizontal line (. . . . . . .)
; Draws pixels only at even X coordinates

.model small
.stack 100h
.code
main proc
    
    mov ax, 0013h
    int 10h

    
    mov dx, 100       
    mov cx, 0         

draw_loop:
    test cx, 1       
    jnz skip_pixel    

    
    mov ah, 0Ch       
    mov al, 15        
    mov bh, 0         
    int 10h

skip_pixel:
    inc cx
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
  