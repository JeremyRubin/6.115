.org 00h
ljmp start
.org 0Bh
ljmp timer_0_ISR


.org 30h
.equ getADCdelay, 30h
.equ scanCount, 31h
.org 40h
.org 100h
; Begin Main Block
start:
lcall init
loop:
sjmp loop


scanLights:
    push acc
    push dpl
    push dph

    mov scanCount, #15
    continueScan:
        ; Put the light addr on port A
        mov dptr, #0fe08h
        mov a, scanCount
        movx @dptr, a
        
        mov r0, #0f0h
        mov r1, #0h
        scanWait:
        djnz r1, scanWait
        djnz r0, scanWait
        

        lcall getADC

        pop dph
        pop dpl


        movx @dptr, a
        inc dpl

        push dpl
        push dph
        
        djnz scanCount, continueScan


        ; one more hit 
        ; Put the light addr on port A
        mov dptr, #0fe08h
        mov a, scanCount
        movx @dptr, a
        
        mov r6, #0f0h
        mov r7, #0h
        scanWait:
        djnz r7, scanWait
        djnz r6, scanWait
        

        lcall getADC

        pop dph
        pop dpl


        movx @dptr, a
        inc dpl

        push dpl
        push dph

    pop dph
    pop dpl
    pop acc
    ret

getADC:
    push dpl
    push dph

    mov dptr, #0fe10h
    mov a, #0FFh
    movx @dptr, a
    mov getADCdelay, #100
    converting:
    djnz getADCdelay, converting
    movx a, @dptr

    pop dph
    pop dpl
    ret

timer_0_ISR:
    djnz r0, noflip
    djnz r2, noflip
    djnz r3, nokill
    clr ea
    reti
    nokill:
    mov r2, #15
    mov dptr, #0fe09h
    mov a, r1
    rr a
    mov r1, a
    mov p1, a
    movx @dptr, a
    lcall scanLights
    noflip:
    reti
    
init:
; Keypad
mov IE, #82h ; Enable interrupts, enable timer 0 interrupt
setb P3.2 ; disable the keypad chip
mov tmod, #02h ; set timer 0 for auto reload - mode 2
mov r1, #0EEh
mov th0, #00h
    clr tcon ; run timer 0

mov r1, #00h
mov r0, #0h
mov r2, #01h
mov dptr, #0fe0Bh
mov a, #80h
mov r3, #26

movx @dptr, a





setb TR0 ; Turn timer on
    ret

