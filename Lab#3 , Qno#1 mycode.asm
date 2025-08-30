; Program to print capital alphabets A to Z using LOOP

.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov ds, ax

    mov cx, 26        
    mov dl, 'A'       

print_loop:
    mov ah, 2         
    int 21h           
    
    inc dl            
    loop print_loop   

    mov ah, 4ch       
    int 21h
main endp
end main