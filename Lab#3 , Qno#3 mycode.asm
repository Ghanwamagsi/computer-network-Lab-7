; Program to perform subtraction of two single-digit numbers (user input)

.model small
.stack 100h
.data
    msg1 db 'Enter first digit: $'
    msg2 db 0Dh,0Ah,'Enter second digit: $'
    msg3 db 0Dh,0Ah,'Result = $'
.code
main proc
    mov ax, @data
    mov ds, ax

    
    mov ah, 9
    lea dx, msg1
    int 21h

    mov ah, 1        
    int 21h
    sub al, 30h      
    mov bl, al       

    
    mov ah, 9
    lea dx, msg2
    int 21h

    mov ah, 1
    int 21h
    sub al, 30h
    mov bh, al       

    
    mov al, bl
    sub al, bh
    mov cl, al       

    
    mov ah, 9
    lea dx, msg3
    int 21h
                              
    add cl, 30h
    mov dl, cl
    mov ah, 2
    int 21h

    
    mov ah, 4ch
    int 21h
main endp
end main