; Program: Function to add two numbers

.model small
.stack 100h
.data
    num1 dw 7
    num2 dw 5
    msg db 0Dh,0Ah, "Sum = $"

.code
main proc
    mov ax, @data
    mov ds, ax

    
    mov ax, num1     
    mov bx, num2     
    call addTwo      

   
    mov ah, 9
    lea dx, msg
    int 21h

   
    call print_num

    
    mov ah, 4Ch
    int 21h
main endp


addTwo proc
    add ax, bx       
    ret
addTwo endp


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

end main
