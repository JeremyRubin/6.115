;;; Used to see the MSB of the LED bank
.org 8000h
	mov P1, #00h ; Clear the port
	mov P1, #80h ; Set the MSB
loop:
	sjmp loop
