.org 00h ; power up and reset vector
    ljmp start ; when the micro wakes up, jump to the beginning of
                     ; the main body or loop in the program called start
.org 0013h
	clr EA
	pop 20h
	pop 20h
	clr IE1
	ljmp func2
.org 100h ; and located at 100h in memory
start:

	lcall init ; start the subroutine init
	lcall exttimer
	mov a, #0b8h       ; low byte
	mov b, #00h        ; high byte
	
	func:
		lcall updateExtTimer
		mov r7, #066h
		lcall waiter2
		jnb 20h.0, func
		clr 20h.0
	func2:
		mov r7, #077h
		lcall waiter2
		lcall updateExtTimer
		jnb p3.3, func2
	loop:
		sjmp loop
		
waiter:
	djnz r7, waiter
	ret
	
waiter2:
	push acc
	mov a, r7
	mov r6, a
	pop acc
	stop:
	lcall waiter
	djnz r6, stop

	
updateExtTimer:
	add a, #01h    ; increment a with carry
	;jb 20h.0, finish
	movx @dptr, a ; put low byte on
	xch a, b      ; swap
	movx @dptr, a ; put high byte on
	xch a, b 	  ; restore a=high, b=low
	jc carry
	finish:
	ret
	carry:
		cpl b.0
		jb b.0, large_
			mov a, #0c8h
		large_:
			mov a, #00h
		clr c
		ret

exttimer:
	mov dptr, #0fe03h ; External timer control
	mov a, #76h
	movx @dptr, a ; Set up the timer
	mov dptr, #0fe01h ; timer number
init:
	; Keypad
	clr tcon
	setb P3.2 ; disable the keypad chip
	setb EA   ; enable Interrupts
	setb IE.2 ; enable EX1
	setb IT1
	setb p3.3 ; Enable 3.3 for reading
	clr 20h.0 ; clear 20.0, so that it is safe to use as a 0
	clr c
	mov r1, #01h
    ret
;Leave this newline here

;If you want to be able to compile
