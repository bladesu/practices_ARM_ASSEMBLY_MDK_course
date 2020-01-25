;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                                                                      ;
; Demo for renaming registers                                          ;
;                                                                      ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

VAL1	RN	R1
VAL2	RN	R2
SUM	RN	R3


	AREA	rn_demo,CODE,READONLY
	ENTRY
	EXPORT	__main

__main
	MOV		VAL1,#0x0
	MOV		VAL2,#0x1
	ADD	SUM,VAL1,VAL2

stop
	B	stop
	END
