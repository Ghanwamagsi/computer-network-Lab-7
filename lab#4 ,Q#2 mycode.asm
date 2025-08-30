 org 100h       ; .COM program starts at 100h

; Hardcoded single-digit numbers (ASCII values)
num1 db '8'
num2 db '2'
num3 db '5'

start:
    
    mov al, num1

    
    mov bl, num2
    cmp al, bl
    jge skip1
    mov al, bl
skip1:

    
    mov bl, num3
    cmp al, bl
    jge skip2
    mov al, bl
skip2:

    
    mov dl, al
    mov ah, 2
    int 21h

    
    mov ah, 4Ch
    int 21h
