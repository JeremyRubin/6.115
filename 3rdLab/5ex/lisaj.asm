.equ deviceX, 0fe93h
.equ deviceY, 0fe90h

.equ yInt
.equ yIntOvrflw
.equ yFractional
.equ yPhaseShiftInt
.equ yPhaseShiftFractional

.equ xInt
.equ xIntOvrflw
.equ xFractional

.equ timer, 04ch

.org 0000h
ljmp start
.org 00bh
TIMER_ISR:
	ljmp handle_tick
.org 100h
start:
	lcall init
	loop:
    		sjmp loop

init:
	clr c
	clr b
	mov IE, #82h ; Enable interrupts, enable timer 0 interrupt
	setb P3.2 ; disable the keypad chip
	mov tmod, #02h ; set timer 0 for auto reload - mode 2
	mov th0, #timer
	clr tcon ; run timer 0
	setb TR0 ; Turn timer on
	ret
; Requires r0-3 be reserved
; X high byte r0 X low byte r1
; Y high byte r2 Y low byte r3
handle_tick:
	; Output the current values
	push acc		; save A (for whatever user code running)
	
	mov a, r0		; recall the X a position
	mov dptr, #table	; put the table address in dptr
    	movc a, @a+dpt		; get the ath value from table
	mov dptr, #deviceX
	movx @dptr, a
	
	mov a, r3
	add a, #yPhaseShiftFractional
	mov a, r		; recall the Y a position
	jnc noPhaseCarry
	inc 			; add 1 for fractional overflow
	noPhaseCarry:
	add a, #yPhaseShiftInt	; Phase shift a by Integer amt
	
	mov dptr, #table	; put the table address in dptr
    	movc a, @a+dpt		; get the ath value from table
	mov dptr, #deviceY
	movx @dptr, a
	
	; Increment lower byte value
	X:
	clr c
	mov a, r1
	add a, #xFractional
	mov r1, a
	mov a, r0
	jnc xNoCarr		; if the above generates a carry, add one to a
		add a, #xIntOvrflw
		sjmp xEnd
	xNoCarry:
		add a, #xInt	; add aamount to a
	xEnd:
		mov r0, a
		clr c
    	Y:
	mov a, r3
	add a, #yFractional
	mov r3, a
	mov a, r2
	jnc yNoCarry		; if the above generates a carry, add one to a
		add a, #yIntOvrflw
		sjmp yEnd
	yNoCarry:
		add a, #yInt	; add aamount to a
	yEnd:
		mov r2, a
		clr c
		pop acc		; Restore a for whatever user code was running
		reti

.org 1000h
table:
.db 07fh, 082h, 085h, 088h, 08bh, 08fh, 092h, 095h
.db 098h, 09bh, 09eh, 0a1h, 0a4h, 0a7h, 0aah, 0adh
.db 0b0h, 0b3h, 0b6h, 0b8h, 0bbh, 0beh, 0c1h, 0c3h
.db 0c6h, 0c8h, 0cbh, 0cdh, 0d0h, 0d2h, 0d5h, 0d7h
.db 0d9h, 0dbh, 0ddh, 0e0h, 0e2h, 0e4h, 0e5h, 0e7h
.db 0e9h, 0ebh, 0ech, 0eeh, 0efh, 0f1h, 0f2h, 0f4h
.db 0f5h, 0f6h, 0f7h, 0f8h, 0f9h, 0fah, 0fbh, 0fbh
.db 0fch, 0fdh, 0fdh, 0feh, 0feh, 0feh, 0feh, 0feh
.db 0ffh, 0feh, 0feh, 0feh, 0feh, 0feh, 0fdh, 0fdh
.db 0fch, 0fbh, 0fbh, 0fah, 0f9h, 0f8h, 0f7h, 0f6h
.db 0f5h, 0f4h, 0f2h, 0f1h, 0efh, 0eeh, 0ech, 0ebh
.db 0e9h, 0e7h, 0e5h, 0e4h, 0e2h, 0e0h, 0ddh, 0dbh
.db 0d9h, 0d7h, 0d5h, 0d2h, 0d0h, 0cdh, 0cbh, 0c8h
.db 0c6h, 0c3h, 0c1h, 0beh, 0bbh, 0b8h, 0b6h, 0b3h
.db 0b0h, 0adh, 0aah, 0a7h, 0a4h, 0a1h, 09eh, 09bh
.db 098h, 095h, 092h, 08fh, 08bh, 088h, 085h, 082h
.db 07fh, 07ch, 079h, 076h, 073h, 06fh, 06ch, 069h
.db 066h, 063h, 060h, 05dh, 05ah, 057h, 054h, 051h
.db 04eh, 04bh, 048h, 046h, 043h, 040h, 03dh, 03bh
.db 038h, 036h, 033h, 031h, 02eh, 02ch, 029h, 027h
.db 025h, 023h, 021h, 01eh, 01ch, 01ah, 019h, 017h
.db 015h, 013h, 012h, 010h, 0fh, 0dh, 0ch, 0ah
.db 09h, 08h, 07h, 06h, 05h, 04h, 03h, 03h
.db 02h, 01h, 01h, 00h, 00h, 00h, 00h, 00h
.db 00h, 00h, 00h, 00h, 00h, 00h, 01h, 01h
.db 02h, 03h, 03h, 04h, 05h, 06h, 07h, 08h
.db 09h, 0ah, 0ch, 0dh, 0fh, 010h, 012h, 013h
.db 015h, 017h, 019h, 01ah, 01ch, 01eh, 021h, 023h
.db 025h, 027h, 029h, 02ch, 02eh, 031h, 033h, 036h
.db 038h, 03bh, 03dh, 040h, 043h, 046h, 048h, 04bh
.db 04eh, 051h, 054h, 057h, 05ah, 05dh, 060h, 063h
.db 066h, 069h, 06ch, 06fh, 073h, 076h, 079h, 07ch

