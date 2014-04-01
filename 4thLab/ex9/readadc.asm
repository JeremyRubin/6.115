.org 00h
ljmp start

.org 100h
start:
loop:
lcall get
mov p1, a
sjmp loop

get:
mov dptr, #0fe10h
mov a, #0FFh
movx @dptr, a
mov r0, #100
converting:
djnz r0, converting
movx a, @dptr
ret
