;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Here we demo a momory copy from register to memory                   ;
;                                                                      ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Ram_addr1	EQU	0x20000000
Ram_addr2	EQU	0x20000100

		AREA	myCode,CODE,READONLY
		ENTRY
		EXPORT	__main
__main
		; Fill data to Ram_addr1
		BL	fill;

		; Copy data rom Ram_addr1 to Ram_addr2 
		BL	loop_copy ;

		B	stop

stop		B	stop

; two subroutines, apply BX LR to return to caller.

fill
		LDR	R1,=Ram_addr1
		MOV	R0,#10
		LDR	R2,=0xDEADBEEF
inner_loop1	STR	R2,[R1]
		ADD	R1,R1,#4
		SUBS	R0,R0,#1
		BNE	inner_loop1
		BX	LR

loop_copy
		LDR	R1,=Ram_addr1
		LDR	R2,=Ram_addr2
		MOV	R0,#10
inner_loop2	LDR	R3,[R1]
		STR	R3,[R2]
		ADD	R1,#4
		ADD	R2,#4
		SUBS	R0,#1
		BNE	inner_loop2
		BX LR

		END
