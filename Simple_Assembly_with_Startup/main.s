; my first ARM asm file

		AREA SimpleProject,CODE,READONLY
		ENTRY
		EXPORT	__main
__main
	MOV	r3,#0x1
	MOV r4,#0x1
	ADD r5,r3,r4
stop	
	b	stop
	END