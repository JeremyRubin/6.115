.equ first,  9000h
.equ second, 9001h
.equ sum,    9002h
.equ dif,    9003h
.equ prh,    9004h
.equ prl,    9005h
.equ qot,    9006h
.equ rem,    9007h
.org 8000h
sumtogether:
	mov dptr, #first
    movx a, @dptr
	mov b, a
	mov dptr, #second
	movx a, @dptr
	push acc
	push b
	push acc
	push b
	push acc
	push b
    add a, b
	mov dptr, #sum
    movx @dptr, a
subtract:
	pop acc
	pop b
    subb a, b
	mov dptr, #dif
    movx @dptr, a
multiply:
	pop acc
	pop b
    mul ab
	mov dptr, #prh
    movx @dptr, a
	mov dptr, #prl
	xch a, b
    movx @dptr, a
divide:
	pop acc
	pop b
    div ab
	mov dptr, #qot
    movx @dptr, a
	mov dptr, #rem
	xch a, b
    movx @dptr, a

loop:
  sjmp loop
  ;end

  ;file
