; Program: Find sum of 3 elements in an array

.model small
.stack 100h
.data
    arr dw 5, 10, 20       
    msg db 0Dh,0Ah, "Sum of array elements = $"

.code
main proc
    mov ax, @data
    mov ds, ax

   
    mov ah, 9
    lea dx, msg
    int 21h
                        
    xor ax, ax       
    mov cx, 3        
    mov si, offset arr

sum_loop:
    add ax, [si]     
    add si, 2        
    loop sum_loop

    
    call print_num

    
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
