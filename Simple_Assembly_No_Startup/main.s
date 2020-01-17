Stack		EQU		0x00000100 ; define statck size = 16^2 = 2^8 (bytes)
	
			AREA 	STACK,NOINIT,READWRITE,ALIGN=3
				
StackMem	SPACE 	Stack
			AREA 	RESET,DATA,READONLY
			EXPORT 	__Vectors

__Vectors
			DCD		StackMem	+Stack
			DCD		Reset_Handler
			ALIGN

			AREA	SimpleProject,CODE,READONLY,ALIGN=2
			ENTRY
			EXPORT	Reset_Handler

Reset_Handler
			MOV		R3,#0x1
			MOV		R4,#0x1
			ADD		R6,R3,R4

STOP
			B		STOP
			
			END
	
	