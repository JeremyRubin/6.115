.ORG 0000h
ljmp start

.org 100h
start:
mov dptr, #0fe0Bh
mov a, #80h
movx @dptr, a

mov r1, #00h
lp:
mov dptr, #0fe09h
mov a, r1
cpl a
mov r1, a
movx @dptr, a
mov r2, #0ffh
wt:
mov r0, #0ffh
inwt:
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
djnz r0, inwt
mov r0, a
djnz r2, wt
sjmp lp
;

;
