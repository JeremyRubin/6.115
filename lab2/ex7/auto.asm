.org 00h ; power up and reset vector
    ljmp start ; when the micro wakes up, jump to the beginning of
                     ; the main body or loop in the program called start
.org 00Bh
TIMER_IS:
	lcall fn
	reti

.org 100h ; and located at 100h in memory
start:

	lcall init ; start the subroutine init
	lcall exttimer
	mov a, #0c8h       ; low byte
	mov b, #00h        ; high byte
	lcall begintimer
	loop:
		sjmp loop
fn:
	jb p1.0, firstStrikeDone ; Skip if we have struck
	jnb p3.4, firstStrike ; if first struck, start nop ing more to slow things down
	firstStrikeDone:	
	add a, r1    ; increment a by amount in r1
	jnb p1.0, normal ; if p1.0 has been set	
	onReturnStrike:
		jb p3.4, endloop ; terminate if high
	normal:
		movx @dptr, a ; put low byte on
		xch a, b      ; swap
		movx @dptr, a ; put high byte on
		xch a, b 	  ; restore a=high, b=low
		jc carry
		ret
	firstStrike:
		setb p1.0
		mov r1, #01h;
		mov th0, #00h;
		; increase the timer size
		jc carry
		ret		
	carry:
		mov a, #00h
		xch a, b
		mov a, #01h
		xch a, b
		clr c
		ret
		
	endloop:
		clr tcon ; Clear timer
		clr IE
		clr tmod
		ret
exttimer:
	mov dptr, #0fe03h ; External timer control
	mov a, #36h
	movx @dptr, a ; Set up the timer
	mov dptr, #0fe00h ; time size
init:
	; Keypad
	setb P3.2 ; disable the keypad chip
	setb p3.4 ; Enable 3.4 for reading
	clr p1.0 ; clear r1, so that it is safe to use as a 0
	clr c
	mov r1, #02h
    ret
	
begintimer:
	; Keypad
	mov IE, #82h ; Enable interrupts, enable timer 0 interrupt
	mov tmod, #02h ; set timer 0 for auto reload - mode 2
	mov th0, #04h
	clr tcon ; run timer 0
	setb TR0 ; Turn timer on
	ret
;Leave this newline here

;If you want to be able to compile
