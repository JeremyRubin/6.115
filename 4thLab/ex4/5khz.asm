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

loop:
    sjmp loop ; repeat

timer_0_ISR:
		mov dptr, #0fe09h
		mov a, r1
		cpl a
		mov r1, a
		movx @dptr, a
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
mov IE, #82h ; Enable interrupts, enable timer 0 interrupt
setb P3.2 ; disable the keypad chip
mov tmod, #02h ; set timer 0 for auto reload - mode 2

mov th0, #164
    clr tcon ; run timer 0
setb TR0 ; Turn timer on
    ret
	
