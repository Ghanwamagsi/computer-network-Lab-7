; Program to perform subtraction of two numbers

.model small
.stack 100h
.data
    num1 db 9       
    num2 db 4       
    result db ?     
.code
main proc
    mov ax, @data
    mov ds, ax

    
    mov al, num1    
    sub al, num2    
    mov result, al  

    
    add al, 30h     
    mov dl, al
    mov ah, 2
    int 21h         

    mov ah, 4ch     
    int 21h
main endp
end main