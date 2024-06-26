.DATA
    COUNT DB 06H
    VALUE DB 09H, 0FH, 12H, 45H, 34H, 10H
        
.CODE
    MAIN PROC
    MOV AX, DATA
    MOV DS, AX
    MOV CH, COUNT
    DEC CH
    UP2: MOV CL, CH
    LEA SI, VALUE
    UP1: MOV AL, [SI]
    CMP AL, [SI+1]
    JNC DOWN
    MOV DL, [SI+1]
    JNC DOWN
                
    MOV DL, [SI+1]
    XCHG [SI], DL
    MOV [SI+1], DL
                
    DOWN: INC SI
    DEC CL
    JNZ UP1
    DEC CH
    JNZ UP2
END MAIN