org 100h       


mov ah, 1      
int 21h
sub al, 30h    
mov bl, al    


mov ah, 1
int 21h
sub al, 30h    
mov bh, al     


add bl, bh


add bl, 30h    


mov dl, bl
mov ah, 2      
int 21h


mov ah, 4Ch
int 21h
