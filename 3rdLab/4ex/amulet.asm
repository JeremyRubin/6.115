.org 00h
	ljmp start
	
.org 100h
start:
	lcall init
	loop:
		mov dptr, #0FE15h
		movx a, @dptr
		anl a, #01h
		jz loop
		
		mov dptr, #0fe10h
		movx a, @dptr
		mov P1, a
		
		sjmp loop
		
	init:
		mov dptr, #0fe13h
		mov a, #083h
		movx @dptr, a
		
		mov a, #20
		mov dptr, #0fe10h
		movx @dptr, a
		
		mov a, #00
		mov dptr, #0fe11h
		movx @dptr, a
		
		mov dptr, #0fe13h
		mov a, #07h
		movx @dptr, a
		
		mov a, #00h
		mov dptr, #0FE01h
		movx @dptr, a
		ret
		
