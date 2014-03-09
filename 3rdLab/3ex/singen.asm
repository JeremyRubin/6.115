.equ device, 0fe08h

.equ amount, 11

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
	push acc
    movc a, @a+dptr
	mov dptr, #device
    movx @dptr, a
	pop acc
    reti
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

