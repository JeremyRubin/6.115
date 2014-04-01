.org 0000h
ljmp start



; Interrupt ISRs
.org 03h
ljmp ext_0_ISR
.org 0Bh
ljmp timer_0_ISR
.org 13h
ljmp ext_1_ISR
.org 1Bh
ljmp timer_1_ISR
.org 23h
ljmp serial_ISR



; Scratchpad
.org 30h
.equ portBstate, 30h
.equ nextportBstate, 31h
.equ portCstate, 32h
.equ nextportCstate, 33h
.equ th1state, 34h
.equ nextth1state, 35h
.org 40h


; ####################
; # Begin Main Block #
; ####################

.org 100h
start:
lcall init
loop:
    sjmp loop ; repeat

; ##############
; # Initialize #
; ##############

init:
	; Setup the extra ports chip
	mov dptr, #0fe0Bh
	mov a, #80h
	movx @dptr, a
	
	; Enable Interrupts for timers 0 and 1 and external 1
	mov IE, #8Eh
	
	; Disable Keypad Chip
	setb P3.2
	
	; Setup r0 for scan mode (will be mov'ed into P1)
	mov r0, #01111111b
	
	; Clear out the external Ports
	mov a, #00h
	lcall portB
	lcall portC

	; Clear the carry bit
	clr c

	; Setup the initial states of the ports (switch between 0 and 0)
	mov portBstate, #0
	mov nextportBstate, #0
	mov portCstate, #0
	mov nextportCstate, #0
	
	
	; Set Both timers for mode 2 - 8 bit auto reload
	mov tmod, #22h
	
	; Setup the timers to run
	mov th1state, #91
	mov r4, #164
	mov th0, #50
	
	mov r6, #0
	; Enable only timer 1
	clr tcon
	setb tr0
	setb tr1
	;setb pt1 ; elevate the pwm timer priveleges
	setb it1
    ret


; ###########################
; # Enable timer 1 for pwm  #
; ###########################
timer1enable:
	; Move the value in r4 to th1
	mov th1, r4
	; Compute the differences (so that it sums to the constant)
	mov a, #0ffh
	clr c
	subb a, r4
	mov th1state, a
	mov nextth1state, r4
	clr c
	; raise priority
	setb pt1
	ret

; #####################
; # Arm control funcs #
; #####################



	elbow:
			mov a, #0ffh
		clr c
		add a, r6
		mov a, #00010000b
		jc elbowNorm
		rl a
		elbowNorm:
		mov portBstate, a
		mov portCstate, #00h

			lcall timer1enable

		elbowWait:
		jnb p1.5, elbowWait
		sjmp clrports

	gripper:
			mov a, #0ffh
		clr c
		add a, r6
		mov a, #01000000b
		jc gripperNorm
		rl a
		gripperNorm:
		mov portBstate, a
		mov portCstate, #00h

		lcall timer1enable

		gripperWait:
		jnb p1.6, gripperWait
		sjmp clrports

	wrist:
		mov a, #0ffh
		clr c
		add a, r6
		mov a, #00000001b
		jc wristNorm
		rl a
		wristNorm:
		mov portCstate, a
		mov portBstate, #00h
		lcall timer1enable
		wristWait:
		jnb p1.1, wristWait
		sjmp clrports
; Use Timer 0 for the arm controller
timer_0_ISR:
	clr tr0
	push acc
	
	; Disable the keypad
	setb P3.2 ; disable the encoder chip
	
	; IF TIMER 0 ISR WORKING, THEN IT SHOULD BE SQ WAVE on P3.4--- debug
	cpl p3.4
	; ----- debug

	; flip the state of r0's msb/lsb
	xch a, r0	
	xrl a, #81h  
	xch a, r0
	
	; TODO: Find a better hack than this
	xch a, r6
	xrl a, #1
	xch a, r6

	mov p1, r0 ; setup port 1 for a scan

	; Do Scan, run motors
	jnb p1.1, wrist
	jnb p1.2, shoulder
	jnb p1.4, base
	jnb p1.5, elbow
	jnb p1.6, gripper
	
	clrports:
	; No interruption!
	clr EA
	; clear port states
	clr portBstate
	clr portCstate
	clr nextPortCstate
	clr nextportBstate
	mov a, #00h
	lcall portB
	lcall portC
	; re-enable the keypad encoder chip
	clr P3.2 
    mov p1, #0ffh ; enable port 1 as full input
	setb tr0
	setb EA
	pop acc
reti
	shoulder:
		mov a, #0ffh
		clr c
		add a, r6
		mov a, #00000001b
		jc shoulderNorm
		rl a
		shoulderNorm:
		mov portBstate, a
		mov portCstate, #00h

			lcall timer1enable

		shoulderWait:
		jnb p1.2, shoulderWait
		sjmp clrports

	base:
		mov a, #0ffh
		clr c
		add a, r6
		mov a, #00000100b
		jc baseNorm
		rl a
		baseNorm:
		mov portBstate, a
		mov portCstate, #00h

		lcall timer1enable

		baseWait:
		jnb p1.4, baseWait
		sjmp clrports

; Use Timer 1 for pwm
timer_1_ISR:
	push acc
	; Swap port C states
	xch a, portCstate
	xch a, nextportCstate
	xch a, portCstate
	; Swap port B states
	xch a, portBstate
	xch a, nextportBstate
	xch a, portBstate
	
	; Swap pwm state
	xch a, th1state
	xch a, nextth1state
	xch a, th1state
	
	mov th1, th1state
	
	; push the values out to the port!
	mov a, portBstate
	lcall portB
	mov a, portCstate
	lcall portC
	
	; IF TIMER 0 ISR WORKING, THEN IT SHOULD BE SQ WAVE on P3.5 WHEN MOVING ARM--- debug
	cpl p3.5
	; ----- debug
	
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
   .dw d1; command '@' 00
   .dw d2 ; command 'a' 01
   .dw d3 ; command 'b' 02
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
mov r4, #32
lcall timer1enable
ljmp wait

d1:
mov r4, #64
lcall timer1enable

ljmp wait
d2:
mov r4, #128
lcall timer1enable

ljmp wait
d3:
mov r4, #200
lcall timer1enable

ljmp wait
ext_0_ISR:
serial_ISR:
;

;
