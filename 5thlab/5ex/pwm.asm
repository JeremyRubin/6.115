;Peripheral Base Addrs
.equ perph0, 0fe00h
.equ perph1, 0fe08h
.equ perph2, 0fe10h
.equ perph3, 0fe18h
.equ perph4, 0fe20h
.equ perph5, 0fe28h
.equ perph6, 0fe30h
.equ perph7, 0fe38h


.org 0000h
ljmp start

.org 100h
; Begin Main Block
start:
mov dptr, #0fe0Bh
mov a, #80h

movx @dptr, a
lcall init

loop:
    sjmp loop ; repeat

init:
; Keypad
setb P3.2 ; disable the keypad chip




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

; Write between 1 and 249
mov dptr, #0fe00h
mov a, #0f0h
movx @dptr, a
mov a, #00h
movx @dptr, a

ret

