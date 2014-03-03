.org 00h ; power up and reset vector
    ljmp start ; when the micro wakes up, jump to the beginning of
                     ; the main body or loop in the program called start
.org 100h ; and located at 100h in memory
start:
	lcall init ; start the subroutine init
	mov dptr, #0fe03h   ; timer control
	mov a, #36h
	movx @dptr, a    ; Set up the timer
	mov dptr, #0fe00h   ; time size
	mov a, #0AAh
	mov b, #00h
loop:
	movx @dptr, a   ; put a on 
	xch a, b
	movx @dptr, a   ; put b(ig) on
	xch a, b        ; restore
	add a, #10      ; increment a
	jnb p3.4, struck ; if struck, start nop ing more to slow things down
	djnz r1, endloop ; if r1.0 is set then we have struck but are no longer low on p3.4, therefore done
	jc upper
	sjmp loop
	struck:
		mov r1, #0ffh
		nop
		nop
		nop
		nop
		nop
		jc upper
		sjmp loop
	upper:
		xch a, b
		mov a, #01h
		xch a, b
		clr c
		sjmp loop
	endloop:
		sjmp endloop

init:
; Keypad
	setb P3.2 ; disable the keypad chip
	setb p3.4  ; Enable 3.4 for reading
	mov r1, #00h   ; clear r1, so that it is safe to use as a 0
    ret
;Leave this newline here

;If you want to be able to compile
