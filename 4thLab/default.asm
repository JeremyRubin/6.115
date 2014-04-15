; An effort to collect the things I use often
#Peripheral Base Addrs
.equ perph0, 0fe00h
.equ perph1, 0fe08h
.equ perph2, 0fe10h
.equ perph3, 0fe18h
.equ perph4, 0fe20h
.equ perph5, 0fe28h
.equ perph6, 0fe30h
.equ perph7, 0fe3p8h

; Interrupt types
.equ interrupt_timer_0, 82h

.org 0000h
ljmp start
.org 03h
ljmp ext_0_ISR
.org 0Bh
ljmp timer_0_ISR
.org 13h
ljmp ext_1_ISR
.org 1B h
ljmp ext_1_ISR
.org23h
ljmp serial_ISR
; Reserve some scratchpad with the names fR_[0-F] a.k.a., "fake Register n"
.org 30h
.equ fR_0, 30h
.equ fR_1, 31h
.equ fR_2, 32h
.equ fR_3, 33h
.equ fR_4, 34h
.equ fR_5, 35h
.equ fR_6, 36h
.equ fR_7, 37h
.equ fR_8, 38h
.equ fR_9, 39h
.equ fR_A, 3ah
.equ fR_B, 3bh
.equ fR_C, 3ch
.equ fR_D, 3dh
.equ fR_E, 3eh
.equ fR_F, 3fh
; Reserve some scratchpad with the names cR_[0-F] a.k.a., "config Register n". These should be renamed
.org 40h
; timer0 180 cycles
.equ timer0, 40h
.db 04ch
.equ cR_1, 41h
.equ cR_2, 42h
.equ cR_3, 43h
.equ cR_4, 44h
.equ cR_5, 45h
.equ cR_6, 46h
.equ cR_7, 47h
.equ cR_8, 48h
.equ cR_9, 49h
.equ cR_A, 4ah
.equ cR_B, 4bh
.equ cR_C, 4ch
.equ cR_D, 4dh
.equ cR_E, 4eh
.equ cR_F, 4fh
.org 50h
.org 100h
; Begin Main Block
start:
lcall init
loop:
    lcall blocking_keypad_nway
    sjmp loop ; repeat

timer_0_ISR:
timer_1_ISR:
ext_0_ISR:
ext_1_ISR:
serial_ISR:
    ; Protect data
    push acc
    push dpl
    push dph
    push b

    ; Restore data
    pop b
    pop dph
    pop dpl
    pop acc
    reti


blocking_keypad_nway:
    clr P3.2 ; enable the encoder chip
    blocking_keypad_nway_no_data:
    jnb P3.3, blocking_keypad_nway_no_data ; proceed if data avail

    mov a, P1 ; read p1
    lcall keypad_bin ; conver to a number 0-15
    ljmp nway; jump to the nway, then it will jump back
    blocking_keypad_nway_wait: ; wait for the data to clear
    jb p3.3, blocking_keypad_nway_wait

    setb P3.2 ; disable the encoder chip
    ret

keypad_bin:
    anl a, #0Fh ; Mask off the upper nibble
    inc a ; increment so that we go past the ret opcode
    movc a, @a+pc ; PC has the ret below, so we go a+pc -> a to pull from table
    ret
    .db 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
;===============================================================
; subroutine nway
; this routine branches (jumps) to the appropriate monitor
; routine. the routine number is in r2
;================================================================
keypad_nway:
   mov dptr, #keypad_jumtab ;point dptr at beginning of jump table
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
keypad_jumtab:
   .dw noCommand ; command '@' 00
   .dw noCommand ; command 'a' 01
   .dw noCommand ; command 'b' 02
   .dw noCommand ; command 'c' 03
   .dw noCommand ; command 'd' 04
   .dw noCommand ; command 'e' 05
   .dw noCommand ; command 'f' 06
   .dw noCommand ; command 'g' 07
   .dw noCommand ; command 'h' 08
   .dw noCommand ; command 'i' 09
   .dw noCommand ; command 'j' 0a
   .dw noCommand ; command 'k' 0b
   .dw noCommand ; command 'l' 0c
   .dw noCommand ; command 'm' 0d
   .dw noCommand ; command 'n' 0e
   .dw noCommand ; command 'o' 0f
noCommand:
    ljmp blocking_keypad_nway_wait

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
    lcall cleanup
    lcall setup_inputs
    mov a, interrupt_timer_0 ; Enable interrupts, enable timer 0 interrupt
    lcall setup_interrupts

    lcall setup_timers
    ret

; Setup anything which will be an input device
setup_inputs:
    setb p3.3 ; enable 3.3 as input
    mov p1, #0ffh ; enable port 1 as input

setup_timers:
    mov tmod, #02h ; set timer 0 for auto reload - mode 2
    mov th0, #timer0
    clr tcon ; run timer 0
    setb TR0 ; Turn timer on
    ; ^^^^ combine to one?
    mov tmod, #20h ; set timer 1 for auto reload - mode 2
    mov tcon, #41h ; run counter 1 and set edge trig ints
    mov th1, #0fdh ; set 9600 baud with xtal=11.059mhz
    mov scon, #50h ; set serial control reg for 8 bit data
                          ; and mode 1
    ret
setup_interrupts:
    setb EA
    mov IE, a
    ret
; Cleanup, clear any defaults
cleanup:
    clr a
    clr b
    clr c
    clr IE
    ret


; INCLUDE THIS FOR AMULET FUNCTION
init_amulet:
    mov dptr, #0fe13h
    mov a, #083h
    movx @dptr, a
    
    mov a, #20
    mov dptr, #0fe10h
    movx @dptr, a
    
    mov a, #00
    mov dptr, #0fe11h
    movx @dptr, a
    
    mov dptr, #0fe13h
    mov a, #07h
    movx @dptr, a

    mov a, #00h
    mov dptr, #0FE01h
    movx @dptr, a
    ret
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
; subroutine crlf
; crlf sends a carriage return line feed out the serial port
;===============================================================
crlf:
   mov a, #0ah ; print lf
   lcall sndchr
cret:
   mov a, #0dh ; print cr
   lcall sndchr
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
   mov a, r2 ; get second ascii hex digit
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
   mov r2, a ; save in r2
   anl a, #0fh ; convert least sig digit.
   add a, #0f6h ; adjust it
   jnc noadj1 ; if a-f then readjust
   add a, #07h
noadj1:
   add a, #3ah ; make ascii
   xch a, r2 ; put result in reg 2
   swap a ; convert most sig digit
   anl a, #0fh ; look at least sig half of acc
   add a, #0f6h ; adjust it
   jnc noadj2 ; if a-f then re-adjust
   add a, #07h
noadj2:
   add a, #3ah ; make ascii
   ret


.org 1000h
sintable:
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
;Compiler

;Required
