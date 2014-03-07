.equ device, 0fe07h

.equ amount, 1

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


incdptr:
	ret
init:
	clr c
    ; Keypad
	mov IE, #82h ; Enable interrupts, enable timer 0 interrupt
	setb P3.2 ; disable the keypad chip
	mov tmod, #02h ; set timer 0 for auto reload - mode 2
	mov dptr, #1000h
	movx a, @dptr
	mov th0, a
    clr tcon ; run timer 0
	setb TR0 ; Turn timer on
    ret
handle_tick:
	mov dptr, #table
	add a, #amount
	mov r7, a
    movc a, @a+dptr
	mov dptr, #device
    movx @dptr, a
	mov a, r7
    reti
table:


