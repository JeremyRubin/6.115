.org 00h ; power up and reset vector
    ljmp start ; when the micro wakes up, jump to the beginning of
                     ; the main body or loop in the program called start
.org 0013h
	TIMER_IS:
		cpl p1.0
		reti
.org 100h ; and located at 100h in memory
start:
    lcall init ; start the serial port by calling subroutine init
	startloop:
	sjmp startloop

init:
; Keypad
	setb ET0     ; enable timer0 interrupt
	setb P3.2 ; disable the keypad chip
    mov tmod, #02h ; set timer 0 for auto reload - mode 2
	mov dptr, #1000h
	movx a, @dptr
	mov th0, a
    clr tcon ; run timer 0
	setb TR0
    ret
;Leave this newline here

;If you want to be able to compile
