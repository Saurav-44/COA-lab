.global _start
_start:
	
LDR R0,=#0X10000000
LDR R1,[R0],#4
LDR R2,[R0],#4
ADD R3,R1,R2
STR R3,[R0],#4
SUB R4,R1,R2
STR R4,[R0],#4
MUL R5,R1,R2
STR R5,[R0]

my_exist: b my_exist