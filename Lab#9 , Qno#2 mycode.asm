
 ; Program: Print a string in reverse order

.model small
.stack 100h
.data
    str db "HELLO WORLD$",0   
    msg db 0Dh,0Ah,"Reversed string: $"

.code
main proc
    mov ax, @data
    mov ds, ax

    
    mov ah, 9
    lea dx, msg
    int 21h

    
    lea si, str
    mov cx, 0

find_len:
    mov al, [si]
    cmp al, '$'       
    je start_reverse
    inc si
    inc cx
    jmp find_len


start_reverse:
    dec si            

print_loop:
    mov dl, [si]      
    mov ah, 2         
    int 21h
    dec si
    loop print_loop

    
    mov ah, 4Ch
    int 21h
main endp
end main
  