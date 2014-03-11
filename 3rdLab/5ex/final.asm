;depending on kit, change these
.equ deviceX, 0fe18h
.equ deviceY, 0fe1ch
; Divide all by two
.equ scale, 2
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
.org 40h

.org 100h
start:
lcall init
lcall circle ; start on circle
loop:
	; Always reset the keypad in case it is being weird
    clr P3.2 ; enable the encoder chip
    setb p3.3 ; enable 3.3 as input
    mov p1, #0ffh ; enable port 1 as input
    nodata:
    jnb P3.3, nodata ; proceed if data avail

    mov a, P1 ; read p1
    lcall bin ; conver to a number 0-15
    ljmp nway; jump to the nway, then it will jump back
    wait: ; wait for the data to clear
        jb p3.3, wait
    sjmp loop ; repeat
bin:
    anl a, #0Fh ; Mask off the upper nibble
    inc a ; increment so that we go past the ret opcode
    movc a, @a+pc ; PC has the ret below, so we go a+pc -> a to pull from table
    ret
    .db 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15


   ; If we ever get amulet working, this unreachable code should do it!
   ; mov dptr, #0FE15h
   ; movx a, @dptr
   ; anl a, #01h
   ; jz loop

   ; mov dptr, #0fe10h
   ; movx a, @dptr
   ; mov p1, a
   ; sjmp loop


init:
    clr c
    clr b
    mov IE, #82h ; Enable interrupts, enable timer 0 interrupt
    mov tmod, #02h ; set timer 0 for auto reload - mode 2
    mov th0, #timer
    clr tcon ; run timer 0
    setb TR0 ; Turn timer on
    ret
; INCLUDE THIS FOR AMULET FUNCTION
;mov dptr, #0fe13h
;mov a, #083h
;movx @dptr, a

;mov a, #20
;mov dptr, #0fe10h
;movx @dptr, a

;mov a, #00
;mov dptr, #0fe11h
;movx @dptr, a

;mov dptr, #0fe13h
;mov a, #07h
;movx @dptr, a

;mov a, #00h
;mov dptr, #0FE01h
;movx @dptr, a



;===============================================================
; subroutine nway
; this routine branches (jumps) to the appropriate monitor
; routine. the routine number is in r2
;================================================================
nway:
   mov dptr, #jumtab ;point dptr at beginning of jump table
   rl a ;multiply by two.
   mov b, a
   inc a ;load first vector onto stack
   movc a, @a+dptr ; " "
   push acc ; " "
   mov a, b ;load acc with monitor routine number
   movc a, @a+dptr ;load second vector onto stack
   push acc ; " "
   ret ;jump to start of monitor routine

;=================================================================
; pattern jump table
;=================================================================
jumtab:
   .dw tie; command '@' 00
   .dw circle ; command 'a' 01
   .dw a1b4 ; command 'b' 02
   .dw incPhi ; command 'c' 03
   .dw incX ; command 'd' 04 used
   .dw incY ; command 'e' 05
   .dw circle ; command 'f' 06
   .dw decPhi ; command 'g' 07 used
   .dw decX ; command 'h' 08
   .dw decY ; command 'i' 09
   .dw circle ; command 'j' 0a
   .dw circle ; command 'k' 0b
   .dw laserdown ; command 'l' 0c
   .dw laserup ; command 'm' 0d
   .dw laserOff ; command 'n' 0e
   .dw laserReset ; command 'o' 0f
laserup:
    inc  laserFractional
    inc laserFractional
    inc  laserFractional
    ljmp wait
laserdown:
    dec  laserFractional
    dec laserFractional
    dec  laserFractional
    ljmp wait
laserOff:
	mov laserFractional, #0
    clr p3.4
	ljmp wait
laserReset:
	mov laserFractional, #0
    setb p3.4
	ljmp wait
incX:
    inc xFractional
    inc xFractional
    inc xFractional
    ljmp wait

incY:
    inc yFractional
    inc yFractional
    inc yFractional
    ljmp wait
decX:
    dec xFractional
    dec xFractional
    dec xFractional
    ljmp wait

decY:
    dec yFractional
    dec yFractional
    dec yFractional
    ljmp wait

incPhi:
    inc phiFractional
    inc phiFractional
    inc phiFractional
    ljmp wait
decPhi:
    dec PhiFractional
    dec PhiFractional
    dec PhiFractional
    ljmp wait
circle:
    mov yPosH, #0h
    mov yPosL, #0h
    mov xPosH, #0h
    mov xPosL, #0h
    mov yInt, #4
    mov yFractional, #0
    mov xInt, #4
    mov xFractional, #0
    mov phiInt, #0
    mov phiFractional, #00h
    mov phiPosH, #64
    mov phiPosL, #0
    ljmp wait
tie:
    mov yPosH, #0h
    mov yPosL, #0h
    mov xPosH, #0h
    mov xPosL, #0h
    mov yInt, #3
    mov yFractional, #00h
    mov xInt, #1
    mov xFractional,#0
    mov phiInt, #00h
    mov phiFractional, #00h
    mov phiPosH, #64
    mov phiPosL, #0
    ljmp wait
a1b4:
    mov yPosH, #0h
    mov yPosL, #0h
    mov xPosH, #0h
    mov xPosL, #0h
    mov yInt, #01
    mov yFractional, #0h
    mov xInt, #4
    mov xFractional, #0
    mov phiInt, #0
    mov phiFractional, #00h
    mov phiPosH, #0
    mov phiPosL, #0
    ljmp wait
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
	
	; Handle the Phi
    xch a, phiPosL
    add a, phiFractional
    xch a, phiPosL

    xch a, phiPosH
    addc a, phiInt
    xch a, phiPosH

	; Handle the X axis
    mov a, xPosH	; recall the X a position
    mov dptr, #table	; put the table address in dptr
    movc a, @a+dptr	; get the ath value from table
    mov dptr, #deviceX
    mov b, #scale
    div ab
    movx @dptr, a

	; Handle the y Axis
    mov a, yPosL
    subb a, phiPosL ; set the carry if overflows base bit

    mov a, yPosH	; recall the Y a position
    subb a, phiPosH	; Phase shift a by Integer amt + carry

    mov dptr, #table	; put the table address in dptr
    movc a, @a+dptr	; get the ath value from table
    mov dptr, #deviceY
    mov b, #scale
    div ab
    movx @dptr, a

    ; Increment the X and Y positions
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




   
