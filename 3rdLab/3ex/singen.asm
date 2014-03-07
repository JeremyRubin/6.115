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


.db 7fh, 82h, 85h, 88h, 8bh, 8fh, 92h, 95h
.db 98h, 9bh, 9eh, a1h, a4h, a7h, aah, adh
.db b0h, b3h, b6h, b8h, bbh, beh, c1h, c3h
.db c6h, c8h, cbh, cdh, d0h, d2h, d5h, d7h
.db d9h, dbh, ddh, e0h, e2h, e4h, e5h, e7h
.db e9h, ebh, ech, eeh, efh, f1h, f2h, f4h
.db f5h, f6h, f7h, f8h, f9h, fah, fbh, fbh
.db fch, fdh, fdh, feh, feh, feh, feh, feh
.db ffh, feh, feh, feh, feh, feh, fdh, fdh
.db fch, fbh, fbh, fah, f9h, f8h, f7h, f6h
.db f5h, f4h, f2h, f1h, efh, eeh, ech, ebh
.db e9h, e7h, e5h, e4h, e2h, e0h, ddh, dbh
.db d9h, d7h, d5h, d2h, d0h, cdh, cbh, c8h
.db c6h, c3h, c1h, beh, bbh, b8h, b6h, b3h
.db b0h, adh, aah, a7h, a4h, a1h, 9eh, 9bh
.db 98h, 95h, 92h, 8fh, 8bh, 88h, 85h, 82h
.db 7fh, 7ch, 79h, 76h, 73h, 6fh, 6ch, 69h
.db 66h, 63h, 60h, 5dh, 5ah, 57h, 54h, 51h
.db 4eh, 4bh, 48h, 46h, 43h, 40h, 3dh, 3bh
.db 38h, 36h, 33h, 31h, 2eh, 2ch, 29h, 27h
.db 25h, 23h, 21h, 1eh, 1ch, 1ah, 19h, 17h
.db 15h, 13h, 12h, 10h, fh, dh, ch, ah
.db 9h, 8h, 7h, 6h, 5h, 4h, 3h, 3h
.db 2h, 1h, 1h, 0h, 0h, 0h, 0h, 0h
.db 0h, 0h, 0h, 0h, 0h, 0h, 1h, 1h
.db 2h, 3h, 3h, 4h, 5h, 6h, 7h, 8h
.db 9h, ah, ch, dh, fh, 10h, 12h, 13h
.db 15h, 17h, 19h, 1ah, 1ch, 1eh, 21h, 23h
.db 25h, 27h, 29h, 2ch, 2eh, 31h, 33h, 36h
.db 38h, 3bh, 3dh, 40h, 43h, 46h, 48h, 4bh
.db 4eh, 51h, 54h, 57h, 5ah, 5dh, 60h, 63h
.db 66h, 69h, 6ch, 6fh, 73h, 76h, 79h, 7ch

