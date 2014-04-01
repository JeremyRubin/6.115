.org 00h
ljmp start
.org 0Bh
ljmp timer_0_ISR


.org 30h
.equ getADCdelay, 30h
.equ scanCount, 31h
.org 40h
.org 100h
; Begin Main Block
start:
lcall init
lcall getchr
setb tr0
sjmp start


scanLights:
    push dpl
    push dph

    mov scanCount, #15
    continueScan:
        ; Put the light addr on port A
        mov dptr, #0fe08h
        mov a, scanCount
        movx @dptr, a
        
        mov r6, #010h
        mov r7, #0h
        scanWait:
        djnz r7, scanWait
        djnz r6, scanWait
        

        lcall getADC

        pop dph
        pop dpl


        movx @dptr, a
        inc dpl

        push dpl
        push dph
        
        djnz scanCount, continueScan


        ; one more hit
        ; Put the light addr on port A
        mov dptr, #0fe08h
        mov a, scanCount
        movx @dptr, a
        
        mov r6, #0f0h
        mov r7, #0h
        scanWait2:
        djnz r7, scanWait2
        djnz r6, scanWait2
        

        lcall getADC

        pop dph
        pop dpl
        movx @dptr, a

    ret

getADC:


    mov dptr, #0fe10h
    mov a, #0FFh
    movx @dptr, a
    mov getADCdelay, #100
    converting:
    djnz getADCdelay, converting
    movx a, @dptr

    ret
printoddtable:
; Wait for space
;lcall getchr
;cjne a, #32, printoddtable

mov dptr, #starttab
mov r7, #24
outerloop:
inc dph
mov dpl, #0
mov r6, #16
innerloop:
inc dpl
movx a, @dptr
lcall prthex
mov a, #32
lcall sndchr
djnz r6, innerloop
mov a, #10
lcall sndchr
mov a, #13
lcall sndchr
djnz r7, outerloop
ret


timer_0_ISR:
    djnz r0, noflip
    djnz r2, noflip
    djnz r3, nokill
    clr tr0
    lcall printoddtable
    reti
	
    nokill:
		mov dptr, #starttab
	xch a, dph
	add a, r3
	xch a, dph
    lcall scanLights
	
    mov r2, #15
    mov dptr, #0fe09h
    mov a, r1
    rr a
    mov r1, a
    mov p1, a
    movx @dptr, a
	

    noflip:
    reti
    
init:
; Keypad
mov IE, #82h ; Enable interrupts, enable timer 0 interrupt
setb P3.2 ; disable the keypad chip
mov tmod, #22h ; set timer 0 for auto reload - mode 2
mov r1, #0EEh
mov th0, #00h
mov th1, #253
clr tcon ; run timer 0

mov scon, #54h ; set serial control reg for

mov r0, #0h
mov r2, #01h
mov dptr, #0fe0Bh
mov a, #80h
mov r3, #26

movx @dptr, a

; Make sure stepper is primed
mov dptr, #0fe09h
    mov a, r1
    mov p1, a
    movx @dptr, a


setb TR1
    ret
;*****************************************************************
; general purpose routines
;*****************************************************************
;===============================================================
; subroutine sndchr
; this routine takes the chr in the acc and sends it out the
; serial port.
;===============================================================
sndchr:
   clr scon.1 ; clear the tx buffer full flag.
   mov sbuf,a ; put chr in sbuf
txloop:
   jnb scon.1, txloop ; wait till chr is sent
   ret
;===============================================================
; subroutine getchr
; this routine reads in a chr from the serial port and saves it
; in the accumulator.
;===============================================================
getchr:
   jnb ri, getchr ; wait till character received
   mov a, sbuf ; get character
   anl a, #7fh ; mask off 8th bit
   clr ri ; clear serial status bit
   ret
;===============================================================
; subroutine prthex
; this routine takes the contents of the acc and prints it out
; as a 2 digit ascii hex number.
;===============================================================
prthex:
   push acc
   lcall binasc ; convert acc to ascii
   lcall sndchr ; print first ascii hex digit
   mov a, r5 ; get second ascii hex digit
   lcall sndchr ; print it
   pop acc
   ret
;===============================================================
; subroutine binasc
; binasc takes the contents of the accumulator and converts it
; into two ascii hex numbers. the result is returned in the
; accumulator and r2.
;===============================================================
binasc:
   mov r5, a ; save in r2
   anl a, #0fh ; convert least sig digit.
   add a, #0f6h ; adjust it
   jnc noadj1 ; if a-f then readjust
   add a, #07h
noadj1:
   add a, #3ah ; make ascii
   xch a, r5 ; put result in reg 2
   swap a ; convert most sig digit
   anl a, #0fh ; look at least sig half of acc
   add a, #0f6h ; adjust it
   jnc noadj2 ; if a-f then re-adjust
   add a, #07h
noadj2:
   add a, #3ah ; make ascii
   ret


.org 1000h
starttab:
