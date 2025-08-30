; Program to print digits in reverse order (9 to 0)

.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 10        
    mov dl, '9'       

print_loop:
    mov ah, 2         
    int 21h           
    
    dec dl            
    loop print_loop   

    mov ah, 4ch       
    int 21h
main endp
end main
Lab6q1