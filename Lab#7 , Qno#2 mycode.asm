; Program: Print a string in reverse order

.model small
.stack 100h
.data
    str db "HELLO WORLD$",0   

.code
main proc
    mov ax, @data
    mov ds, ax

    
    lea si, str
    mov cx, 0

find_len:
    mov al, [si]
    cmp al, '$'
    je  start_reverse
    inc cx          
    inc si
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