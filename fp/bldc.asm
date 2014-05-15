;depending on kit, change these
.equ deviceX, 0fe10h
.equ deviceY, 0fe08h
.equ deviceZ, 0fe00h

; Divide all by two
.equ scale, 1
; timer 180 cycles
.equ timer, 04ch

.org 0000h
ljmp start

.org 00bh
TIMER_ISR:
ljmp draw

.org 30h
; Reserve some values in this space for laserdillo config
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
.equ laserFractional, 3Ch
.equ laserPosL, 3Dh
.equ zInt, 3Eh
.equ zFractional, 3Fh
.equ zPosH, 40h
.equ zPosL, 41h
.equ phi2PosH, 42h
.equ phi2PosL, 43h
.equ phi2Int, 44h
.equ phi2Fractional, 45h
.org 46h

.org 100h
start:
	lcall BLDC ; start on circle
	mov a, #0
	    mov dptr, #deviceZ

    movx @dptr, a
	mov a, #88h
	    mov dptr, #deviceX

    movx @dptr, a
	mov a, #0ffh
	    mov dptr, #deviceY

    movx @dptr, a

;lcall init


loop:
wait:
    sjmp loop ; repeat


init:
    clr c
    clr b
    mov IE, #82h ; Enable interrupts, enable timer 0 interrupt
    mov tmod, #02h ; set timer 0 for auto reload - mode 2
    mov th0, #timer
    clr tcon ; run timer 0
    setb TR0 ; Turn timer on
    ret

	
BLDC:
    mov yPosH, #0h
    mov yPosL, #0h
    mov xPosH, #0h
    mov xPosL, #0h
    mov yInt, #1
    mov yFractional, #0
    mov xInt, #1
    mov xFractional, #0
	mov zInt, #1
    mov zFractional, #0
	mov zPosH, #0h
    mov zPosL, #0h
    mov phiInt, #0
    mov phiFractional, #0;
    mov phiPosH, #85
    mov phiPosL, #01010101b;
	mov phi2Int, #0
    mov phi2Fractional, #0;
	mov phi2PosH, #170
    mov phi2PosL, #10101010b;
    ret
draw:

    ; Output the current values
    push acc	; save A (for whatever user code running)
    push dpl
    push dph
    push b

; handle the laser switching
xch a, laserPosL
    add a, laserFractional
    xch a, laserPosL
jnc nolaserflip
clr c
cpl p3.4
nolaserflip:

; Handle the Phi's
    xch a, phiPosL
    add a, phiFractional
    xch a, phiPosL

    xch a, phiPosH
    addc a, phiInt
    xch a, phiPosH
	
	xch a, phi2PosL
    add a, phi2Fractional
    xch a, phi2PosL

    xch a, phi2PosH
    addc a, phi2Int
    xch a, phi2PosH

; Handle the X axis
    mov a, xPosH	; recall the X a position
    mov dptr, #table	; put the table address in dptr
    movc a, @a+dptr	; get the ath value from table
    mov dptr, #deviceX

    movx @dptr, a

; Handle the y Axis
    mov a, yPosL
    subb a, phiPosL ; set the carry if overflows base bit

    mov a, yPosH	; recall the Y a position
    subb a, phiPosH	; Phase shift a by Integer amt + carry

    mov dptr, #table	; put the table address in dptr
    movc a, @a+dptr	; get the ath value from table
    mov dptr, #deviceY

    movx @dptr, a

; Handle the Z Axis
    mov a, zPosL
    subb a, phi2PosL ; set the carry if overflows base bit

    mov a, zPosH	; recall the Y a position
    subb a, phi2PosH	; Phase shift a by Integer amt + carry

    mov dptr, #table	; put the table address in dptr
    movc a, @a+dptr	; get the ath value from table
    mov dptr, #deviceZ

    movx @dptr, a
    ; Increment the X and Y Z positions
    X:
        clr c
        xch a, xPosL
        add a, xFractional
        xch a, xPosL
        xch a, xPosH
        addc a, xInt
        xch a, xPosH
    Y:
        xch a, yPosL
        add a, yFractional
        xch a, yPosL

        xch a, yPosH
        addc a, yInt
        xch a, yPosH
	Z:
        xch a, zPosL
        add a, zFractional
        xch a, zPosL

        xch a, zPosH
        addc a, zInt
        xch a, zPosH
    pop b
    pop dph
    pop dpl
    pop acc	; Restore a for whatever user code was running
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
