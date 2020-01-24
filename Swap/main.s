;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                                                                           ;
;  Demo for swap between registers.                                         ;
;                                                                           ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

	AREA	Swap,CODE,READONLY
	ENTRY
	EXPORT	__main

__main
	LDR	R0,=0x01010101
	LDR	R1,=0x10101010
	EOR	R0,R0,R1
	EOR	R1,R0,R1
	EOR	R0,R0,R1

stop
	B	stop
	;ALIGN
	END
