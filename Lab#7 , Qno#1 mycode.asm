; Program: Print an array of words in reverse order

.model small
.stack 100h
.data
    arr dw 1234, 5678, 910, 4321, 100  
    msg db 0Dh,0Ah, 'Array in reverse order: $'

.code
main proc
    mov ax, @data
    mov ds, ax

    
    mov ah, 9
    lea dx, msg
    int 21h

    
    mov cx, 5              
    mov si, offset arr     
    add si, (5*2)-2        

print_loop:
    mov ax, [si]           
    call print_num         

    mov dl, ' '           
    int 21h

    sub si, 2              
    loop print_loop

   
    mov ah, 4Ch
    int 21h


print_num proc
    push ax
    push bx
    push cx
    push dx

    xor cx, cx        
    mov bx, 10

divide_loop:
    xor dx, dx
    div bx            
    push dx           
    inc cx
    cmp ax, 0
    jne divide_loop

print_digits:
    pop dx
    add dl, '0'
    mov ah, 2
    int 21h
    loop print_digits

    pop dx
    pop cx
    pop bx
    pop ax
    ret
print_num endp

main endp
end main