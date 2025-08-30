.MODEL SMALL
.STACK 100H
.DATA
    num1 DB '4'
    num2 DB '7'
    num3 DB '3'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AL, num1

    
    MOV BL, num2
    CMP AL, BL
    JGE SKIP1
    MOV AL, BL
SKIP1:

    
    MOV BL, num3
    CMP AL, BL
    JGE SKIP2
    MOV AL, BL
SKIP2:

    
    MOV DL, AL
    MOV AH, 2
    INT 21H

    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN
