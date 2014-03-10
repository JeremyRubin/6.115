.equ deviceY, 0fe18h
.equ deviceX, 0fe1ch



.equ scale, 2

.equ timer, 04ch

.org 0000h
ljmp start

.org 00bh
TIMER_ISR:
ljmp draw

.org 30h
	.equ yInt, 30h
	.equ yFractional, 31h
	.equ xInt, 32h
	.equ xFractional, 33h
	.equ phiInt, 34h
	.equ phiFractional, 35h
	.equ xPosH, 36h
	.equ xPosL, 37h
	.equ yPosH, 38h
	.equ yPosL, 39h
	.equ phiPosH, 3Ah
	.equ phiPosL, 3Bh
.org 40h

.org 100h
;===============================================================
; subroutine nway
; this routine branches (jumps) to the appropriate monitor
; routine. the routine number is in r2
;================================================================
nway:
   mov dptr, #jumtab ;point dptr at beginning of jump table
   mov a, r7 ;load acc with monitor routine number
   rl a ;multiply by two.
   inc a ;load first vector onto stack
   movc a, @a+dptr ; " "
   push acc ; " "
   mov a, r7 ;load acc with monitor routine number
   rl a ;multiply by two
   movc a, @a+dptr ;load second vector onto stack
   push acc ; " "
   ret ;jump to start of monitor routine

;=================================================================
; pattern jump table
;=================================================================
jumtab:
   .dw  circle ; command '@' 00
   .dw  circle ; command 'a' 01
   .dw  circle ; command 'b' 02
   .dw  circle ; command 'c' 03
   .dw  circle ; command 'd' 04 used
   .dw  circle ; command 'e' 05
   .dw  circle ; command 'f' 06
   .dw  circle ; command 'g' 07 used
   .dw  circle ; command 'h' 08
   .dw  circle ; command 'i' 09
   .dw  circle ; command 'j' 0a
   .dw  circle ; command 'k' 0b
   .dw  circle ; command 'l' 0c
   .dw  circle ; command 'm' 0d
   .dw  circle ; command 'n' 0e
   .dw  circle ; command 'o' 0f
   .dw  circle ; command 'p' 10
   .dw  circle ; command 'q' 11
   .dw  circle ; command 'r' 12 used
   .dw  circle ; command 's' 13
   .dw  circle ; command 't' 14
   .dw  circle ; command 'u' 15
   .dw  circle ; command 'v' 16
   .dw  circle ; command 'w' 17 used
   .dw  circle ; command 'x' 18
   .dw  circle ; command 'y' 19
   .dw  circle ; command 'z' 1a




start:
mov r7, 0
lcall circle
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
	setb p3.4 ; FIRE THE LAZARS
ret

circle:
	mov yInt, #4
	mov yFractional, #0
	mov xInt, #4
	mov xFractional, #0
	mov phiInt, #0
	mov phiFractional, #0fh
	mov phiPosH, #64
	mov phiPosL, #0
	ret

draw:
	
	; Output the current values
	push acc	; save A (for whatever user code running)
	
	xch a, phiPosL
	add a, phiFractional
	xch a, phiPosL
	
	xch a, phiPosH
	addc a, phiInt
	xch a, phiPosH
	

	mov a, xPosH	; recall the X a position
	mov dptr, #table	; put the table address in dptr
	movc a, @a+dptr	; get the ath value from table
	mov dptr, #deviceX
	mov b, #scale
	div ab
	movx @dptr, a

	mov a, yPosL
	add a, phiPosL ; set the carry if overflows base bit
	
	mov a, yPosH	; recall the Y a position
	addc a, phiPosH	; Phase shift a by Integer amt + carry

	mov dptr, #table	; put the table address in dptr
	movc a, @a+dptr	; get the ath value from table
	mov dptr, #deviceY
	mov b, #scale
	div ab
	movx @dptr, a

	; Increment lower byte value
	X:
		clr c
		xch a, xPosL
		add a, xFractional
		xch a, xPosL
		xch a, xPosH
		addc a, xInt	; add aamount to a
		xch a, xPosH
	Y:
		xch a, yPosL
		add a, yFractional
		xch a, yPosL
		
		xch a, yPosH
		addc a, yInt	; add aamount to a
		xch a, yPosH
		
		pop acc			; Restore a for whatever user code was running
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

