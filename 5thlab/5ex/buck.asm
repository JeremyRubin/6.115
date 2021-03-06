.equ portc, 0fe0ah
.equ portb, 0fe09h
.org 0000h
lcall init
ljmp start
.org 0bh
ljmp timer

.equ gain, 2
.equ gain2, '2'

.org 100h
timer:
djnz r7, endtimer
mov b, r4
push acc
push dpl
push dph
lcall getADC

; Compute vref - v_measured
clr c
xch a, b
subb a, b
; if we carry set to 1
jnc checkzero
clr c
mov a, #01h
; if we are zero set to 1
checkzero:
jnz multime
mov a, #01h

; Gain the error
multime:
mov b, #gain ; gain lass!!!
mul ab
; If we carry, then set a to max -- f9
jnc checkUpper
clr c
mov a, #0f9h
checkUpper:
clr c
mov b, #0f9h
xch a, b
subb a, b
xch a, b
jnc programDuty
mov a, #0f9h
programDuty:
; Output to timer
;invert
;mov b, #0fah
;xch a, b
;clr c
;subb a, b
mov dptr, #0fe00h
movx @dptr, a
mov a, #00h
movx @dptr, a

mov r7, #2
pop dph
pop dpl
pop acc
endtimer:
reti
start:
djnz r2, start
mov r2, #5h
djnz r1, start
djnz r0, start
cpl p1.7
lcall clear
lcall print
.db "Gain=",gain2, 0h
xch a, r5
xch a, r4
xch a, r5
mov a, r4
jz printZero
lcall print
.db ", V_REF=1/2V", 0h
sjmp start
printZero:
lcall print
.db ", V_REF=0V", 0h
sjmp start

print:
clr ea
pop dph ; put return address in dptr
pop dpl
prtstr:
clr a ; set offset = 0
movc a, @a+dptr ; get chr from code memory
cjne a, #0h, mchrok ; if termination chr, then return
sjmp prtdone
mchrok:
push dpl
push dph
lcall chrw ; send character
pop dph
pop dpl
inc dptr ; point at next character
sjmp prtstr ; loop till end of string
prtdone:
mov a, #1h ; point to instruction after string
setb ea
jmp @a+dptr ; return
   

getADC:
    mov dptr, #0fe10h
    mov a, #0FFh
    movx @dptr, a
    mov r7, #100
    converting:
    djnz r7, converting
    movx a, @dptr

    ret
   
   
chc:
mov dptr, #portc
movx @dptr, a
ret
chb:
mov dptr, #portb
movx @dptr, a
ret

chrw:
push acc
mov a, #01h
lcall chc
pop acc
lcall chb
datw:
push acc
mov a, #05h
lcall chc
mov a, #01h
lcall chc
pop acc
ret

cmdw:
mov a, #04h
lcall chc
mov a, #00h
lcall chc
ret

init:
mov r7, #29
; Activate 8255
mov dptr, #0fe0bh
mov a, #80h
movx @dptr, a
; Set up 8-bit Comm
mov a, #00h
lcall chc

mov a, #38h
lcall chb

lcall cmdw

; Turn on display, hide cursor
mov a, #0ch
lcall chb

lcall cmdw


mov IE, #82h ; Enable interrupts, enable timer 0 interrupt
setb P3.2 ; disable the keypad chip
mov tmod, #02h ; set timer 0 for auto reload - mode 2

mov th0, #00h
clr tcon ; run timer 0
mov r4, #00
mov r5, #128
mov r7, #2
clr a
clr p1

;Setup TImer
mov dptr, #0fe03h
mov a, #74h
movx @dptr,a
mov a, #32h
movx @dptr, a

; Switch at 40khz
mov dptr, #0fe01h
mov a, #0fah
movx @dptr, a
mov a, #00h
movx @dptr, a

clear:
; Clear display
mov a, #01h
lcall chb
lcall cmdw

; Set ram to 0
mov a, #00h

lcall chc
mov a, #80h
lcall chb
lcall cmdw

wait:
djnz r0, wait
djnz r1, wait

setb TR0 ; Turn timer on

ret

