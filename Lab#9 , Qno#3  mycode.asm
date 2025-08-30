
 Program: Sum of elements of an array of size 3

.model small
.stack 100h
.data
    arr dw 5, 10, 15        
    msg db 0Dh,0Ah,"Sum of array elements = $"

.code
main proc
    mov ax, @data
    mov ds, ax

    
    mov ah, 9
    lea dx, msg
    int 21h

    mov si, offset arr   
    mov cx, 3            
    xor ax, ax           

sum_loop:
    add ax, [si]         
    add si, 2            
    loop sum_loop

   
    call print_num

    
    mov ah, 4Ch
    int 21h
main endp

print_num proc
    push ax
    push bx
    push cx
    push dx

    xor cx, cx
    mov bx, 10

divide_loop:                                                                                                                                          
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

end main
