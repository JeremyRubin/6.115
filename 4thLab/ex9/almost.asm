.org 00h
ljmp start
.org 30h



.org 100h
start:
mov dptr, #0fe0Bh
mov a, #80h
movx @dptr, a

mov r7, #3 ; 24

mov dptr, #starttab






push dph
push dpl

looplights:
	; move spindude
	djnz r0, looplights
	djnz r1, looplights
	nokill:
	mov r1, #15
	mov dptr, #0fe09h
	mov a, r3
	rr a
	mov r3, a
	movx @dptr, a
	
	; Read the lights
	pop dpl
	pop dph
	
	inc dph
	lcall runlights
	push dph
	push dpl



djnz r7, looplights

loop:
sjmp loop
; fills in first 16 digits after location in dptr
runlights:
	push dph
	push dpl
	mov r4, #15
	dontstop:
		
		mov dptr, #0fe08h
		mov a, r4
		movx @dptr, a
		
		mov r6, #0f0h
		
		lp:
		djnz r5, lp
		djnz r6, lp
		pop dpl
		pop dph
		lcall getADC
		movx @dptr, a
		inc dpl
		push dph
		push dpl
		djnz r4, dontstop

		; Hit it one more time
		mov dptr, #0fe08h
		mov a, r4
		movx @dptr, a
		
		mov r6, #0f0h
		
		lp2:
		djnz r5, lp
		
		djnz r6, lp
		
		pop dpl
		pop dph
		lcall getADC
		movx @dptr, a
		inc dpl
		push dph
		push dpl


	ret
	
printoddtable:
	mov dptr, #starttab
	mov r1, #24
	outerloop:
		inc dph
		mov dpl, #0
		mov r0, #16
		innerloop:
			inc dpl
			movx a, @dptr
			;lcall ouputchr
		djnz r0, innerloop
	djnz r1, outerloop
ret

getADC:
	mov dptr, #0fe10h
	mov a, #0FFh
	movx @dptr, a
	mov 30h, #100
	converting:
	djnz 30h, converting
	movx a, @dptr
	mov p1, a
	ret
	
starttab:
.org 1000h
.org 1100h
.org 2f00h
