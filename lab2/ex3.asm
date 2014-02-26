first equ 9000h
second equ 9001h
sum equ 9002h
dif equ 9003h
prh equ 9004h
prl equ 9005h
qot equ 9006h
rem equ 9007h
.org 8000h
sumtogether:
    mov a, first
    add a, second
    mov sum, a
subtract:
    mov a, first
    subb a, second
    mov dif, a
multiply:
    mov a, first
    mov b, second
    mul ab
    mov prh, a
    mov prl, b
divide:
    mov a, first
    mov b, second
    div ab
    mov qot, a
    mov rem, b

loop:
  sjmp loop
  ;end

  ;file
