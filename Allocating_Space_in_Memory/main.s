;; Syntax from guide in ARM official web:
; SPACE or FILL
; The SPACE directive reserves a zeroed block of memory. % is a synonym for SPACE.
; The FILL directive reserves a block of memory to fill with the given value.
; 		{label} SPACE expr
; 		{label} FILL expr{,value{,valuesize}}
; where:
;	label
;		is an optional label.
;	expr
;		evaluates to the number of bytes to fill or zero.
;	value
;		evaluates to the value to fill the reserved bytes with. value is optional and if omitted, it is 0. value must be 0 in a NOINIT area.
;	valuesize
;		is the size, in bytes, of value. It can be any of 1, 2, or 4. valuesize is optional and if omitted, it is 1.



;; Allocating DATA (allocate my data in SRAM(according to teacher's lecture.)
	AREA	myData,DATA,READWRITE
D	SPACE	4; allocate 4 bytes. You will see it located at 0x20000000


;; My Code
	AREA	myCode,CODE,READONLY
	ENTRY
	EXPORT	__main

__main
	LDR		R0,=D
	MOV		R1,#0x1
	STR		R1,[R0]

stop	B	stop

;; Try to allocate data in different region. In result, it is ok.
	AREA	unusedData,DATA,READWRITE
C	SPACE	4; allocate 4 bytes. You will see it located at 0x20000000
	
	END


