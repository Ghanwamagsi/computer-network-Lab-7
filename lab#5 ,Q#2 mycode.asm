org 100h        ; for .COM file in Emu8086 (you can also adapt for MASM .EXE)

; Hardcoded numbers (in ASCII for easy printing)
num1 db '6'
num2 db '3'
num3 db '9'

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