.equ portc, 0fe0ah
.equ portb, 0fe09h
.org 0000h
lcall init

ljmp start
.org 0bh
ljmp timer

.org 100h
timer:
	
	

start:
djnz r0, start
cpl p1
lcall getADC
mov dptr, #0fe18h
movx @dptr, a
sjmp start

print:
   pop   dph              ; put return address in dptr
   pop   dpl
prtstr:
	djnz r1, prtstr
   clr  a                 ; set offset = 0
   movc a,  @a+dptr       ; get chr from code memory
   cjne a,  #0h, mchrok   ; if termination chr, then return
   sjmp prtdone
mchrok:
	push dpl
	push dph
   lcall chrw             ; send character
   pop dph
   pop dpl
   inc   dptr             ; point at next character
   sjmp  prtstr           ; loop till end of string
prtdone:
   mov   a,  #1h          ; point to instruction after string
   jmp   @a+dptr          ; return
   

getADC:
    mov dptr, #0fe10h
    mov a, #0FFh
    movx @dptr, a
    mov r0, #100
    converting:
    djnz r0, converting
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
	mov a, #05h
	lcall chc
	mov a, #01h
	lcall chc
	ret

cmdw:
	mov a, #04h
	lcall chc
	mov a, #00h
	lcall chc
	ret

init:
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

	ret


