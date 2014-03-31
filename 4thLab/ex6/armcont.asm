;Peripheral Base Addrs
.equ perph0, 0fe00h
.equ perph1, 0fe08h
.equ perph2, 0fe10h
.equ perph3, 0fe18h
.equ perph4, 0fe20h
.equ perph5, 0fe28h
.equ perph6, 0fe30h
.equ perph7, 0fe308h

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
.org 1Bh
ljmp ext_1_ISR
.org 23h
ljmp serial_ISR

.org 100h
; Begin Main Block
start:
mov dptr, #0fe0Bh
mov a, #80h

movx @dptr, a
lcall init
mov P1, #01111111b
mov a, #00h
lcall portB
lcall portC
clr c
loop:
	lcall clrports
	cpl p1.0
	cpl p1.7
	cpl c
	jnb p1.1, wrist
	jnb p1.2, shoulder
	jnb p1.4, base
	jnb p1.5, elbow
	jnb p1.6, gripper
    sjmp loop ; repeat
	
shoulder:
mov a, #01h
jc wristNorm
rlc a
wristNorm:
lcall portB
wristWait:
jnb p1.2, wristWait
sjmp loop

base:
mov a, #04h
jc shoulderNorm
rlc a
shoulderNorm:
lcall portB
shoulderWait:
jnb p1.4, shoulderWait
sjmp loop


elbow:
mov a, #10h
jc baseNorm
rlc a
baseNorm:
lcall portB
baseWait:
jnb p1.5, baseWait
sjmp loop

gripper:
mov a, #40h
jc elbowNorm
rlc a
elbowNorm:
lcall portB
elbowWait:
jnb p1.6, elbowWait
sjmp loop

wrist:
mov a, #01h
jc gripperNorm
rlc a
gripperNorm:
lcall portC
gripperWait:
jnb p1.1, gripperWait
sjmp loop

portB:
mov dptr, #0fe09h
movx @dptr, a
ret
portC:
mov dptr, #0fe0Ah
movx @dptr, a
ret
clrports:
mov a, #00h
mov dptr, #0fe09h
movx @dptr, a
mov dptr, #0fe0Ah
movx @dptr, a
ret
timer_0_ISR:
reti
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


init:
; Keypad
;mov IE, #82h ; Enable interrupts, enable timer 0 interrupt
setb P3.2 ; disable the keypad chip
    ret
	
	;
	
	;
