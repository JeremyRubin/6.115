.org 8000h                          ; power up and reset vector
    ljmp start                      ; when the micro wakes up, jump to the beginning of
                                    ; the main body or loop in the program called start
.org 8100h                          ; and located at 8100h in memory
start:
    setb P3.2                       ; disable the keypad chip
	mov dptr, #9000h                ; Set dptr to 9000h
	movx a, @dptr                   ; Read dptr
	xch a, b                        ; swap into b
	mov dptr, #9001h                ; set dptr to 9001h
	movx a, @dptr                   ; read dptr
	baseloop:                       ; every 9001h*9000h cycles OF THE LOOP, flip P1.0
 		mov r1, b                   ; put 9000h into r1
		cpl P1.0                    ; flip p1.0
		topcount:
			mov r2, a               ; put 9001h into r2
			count:               
				djnz r2, count
			djnz r1, topcount
	sjmp baseloop
;Leave this newline here

;If you want to be able to compile
