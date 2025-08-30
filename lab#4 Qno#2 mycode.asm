org 100h       

"
mov dx, offset msg   
mov ah, 9            
int 21h              

; Exit program
mov ah, 4Ch
mov al, 0            
int 21h

msg db "HELLO 8086!
