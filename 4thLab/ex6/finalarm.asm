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
.org 30h
.equ portBstate, 30h
.equ nextportBstate, 31h
.equ portCstate, 32h
.equ nextportCstate, 33h
.equ th1state, 34h
.org 100h
; Begin Main Block
start:
lcall init

loop:
    sjmp loop ; repeat

timer1enable:
	mov th1, r4
	
	mov a, #0ffh
	clr c
	subb a, r4
	mov th1state, a
	clr c

	setb tr1
	ret

shoulder:
	mov a, #01h
	jc shoulderNorm
	rlc a
	shoulderNorm:
	mov portBstate, a
		lcall timer1enable

	shoulderWait:
	jnb p1.2, shoulderWait
	sjmp clrports

base:
	mov a, #04h
	jc baseNorm
	rlc a
	baseNorm:
	mov portBstate, a
		lcall timer1enable

	baseWait:
	jnb p1.4, baseWait
	sjmp clrports


elbow:
	mov a, #10h
	jc elbowNorm
	rlc a
	elbowNorm:
	mov portBstate, a
		lcall timer1enable

	elbowWait:
	jnb p1.5, elbowWait
	sjmp clrports

gripper:
	mov a, #40h
	jc gripperNorm
	rlc a
	gripperNorm:
	mov portBstate, a
		lcall timer1enable

	gripperWait:
	jnb p1.6, gripperWait
	sjmp clrports

wrist:
	mov a, #01h
	jc wristNorm
	rlc a
	wristNorm:
	mov portCstate, a
	lcall timer1enable
	wristWait:
	jnb p1.1, wristWait
	sjmp clrports
; Use Timer 0 for the arm controller
timer_0_ISR:
	push acc
	setb P3.2 ; disable the encoder chip
    clr p3.3 ; disable 3.3 as input
	cpl p3.4

	; flop the state of r0
	xch a, r0	
	xrl a, #81h  
	xch a, r0
	cpl c

	mov p1, r0 ; enable port 1 for a scan

	jnb p1.1, wrist
	jnb p1.2, shoulder
	jnb p1.4, base
	jnb p1.5, elbow
	jnb p1.6, gripper

	clrports:
	clr tr1   ; disable timer
	clr portBstate
	clr portCstate
	clr nextPortCstate
	clr nextportBstate
	clr P3.2 ; enable the keypad encoder chip
    setb p3.3 ; enable 3.3 as input
    mov p1, #0ffh ; enable port 1 as full input
	pop acc
reti
; Use Timer 1 for pwm
timer_1_ISR:
	push acc
	xch a, portCstate
	xch a, nextportCstate
	xch a, portCstate
	
	xch a, portBstate
	xch a, nextportBstate
	xch a, portBstate
	
	xch a, th1state
	xch a, th1
	xch a, th1state
	
	mov a, portBstate
	lcall portB
	mov a, portCstate
	lcall portC
	
	pop acc
reti

portB:
	mov dptr, #0fe09h
	movx @dptr, a
ret

portC:
	mov dptr, #0fe0Ah
	movx @dptr, a
ret

ext_0_ISR:
ext_1_ISR:


    mov a, P1 ; read p1
    lcall bin ; convert to a number 0-15
    ljmp nway; jump to the nway, then it will jump back
    wait: ; wait for the data to clear
        jb p3.3, wait
reti
bin:
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
   .dw no; command '@' 00
   .dw no ; command 'a' 01
   .dw no ; command 'b' 02
   .dw no ; command 'c' 03
   .dw no ; command 'd' 04 used
   .dw no ; command 'e' 05
   .dw no ; command 'f' 06
   .dw no ; command 'g' 07 used
   .dw no ; command 'h' 08
   .dw no ; command 'i' 09
   .dw no ; command 'j' 0a
   .dw no ; command 'k' 0b
   .dw no ; command 'l' 0c
   .dw no ; command 'm' 0d
   .dw no ; command 'n' 0e
   .dw no ; command 'o' 0f
no:
ljmp wait


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
	; Setup the extra port chip
	mov dptr, #0fe0Bh
	mov a, #80h
	movx @dptr, a

	mov IE, #8Eh ; Enable interrupts, enable timers 0+1 interrupt, external 0 interrupt
	
	setb P3.2 ; disable the keypad chip
	
	
	mov r0, #01111111b
	
	mov a, #00h
	lcall portB
	lcall portC
	clr c


mov portBstate, #0
mov nextportBstate, #0
mov portCstate, #0
mov nextportCstate, #0
mov th1state, #92


	mov tmod, #22h ; set timer 0&1 for auto reload - mode 2

	mov th1, #164
	mov th0, #164
	clr tcon ; run timer 0
	setb TR0 ; Turn timer on
	;setb pt1 ; elevate the pwm timer

    ret

;

;
