.global _start
_start:
	
MOV R0,#0x60
MOV R1,#0x30
ADD R2,R0,#0X30
SUB R3,R0,#0X30
MUL R4,R0,R1

my_exist: b my_exist