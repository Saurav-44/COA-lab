    AREA PROG2, CODE, READONLY
ENTRY;
START
    ldr r0,=count
    ldr r1,[r0]
    ldr r3,=array;
    ldr r4,=even
    ldr r5,=odd;
back
    ldr r6,[r3],#4
    ands r7,r6,#1
    beq fwd
    str r6,[r5],#4
    b fwd1
fwd
    str r6,[r4],#4
fwd1 
    subs r1,r1,#01
    bne back
exit b exit

count DCD 0x07
array
     DCD 0x15
     DCD 0x35
     DCD 0x32
     DCD 0x45
     DCD 0x10
     DCD 0x4f
     DCD 0x34
     AREA DATA2, DATA, READWRITE;
even
     DCD 0x0
     DCD 0x0
     DCD 0x0
     DCD 0x0
     DCD 0x0
     DCD 0x0
     DCD 0x0
odd
     DCD 0x0
     DCD 0x0
     DCD 0x0
     DCD 0x0
     DCD 0x0
     DCD 0x0
     DCD 0x0

     END
