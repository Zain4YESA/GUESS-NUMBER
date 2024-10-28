include irvine32.inc
.data
num dd 23
guess dd ?
msg BYTE "Enter guess nummber:",0
msg1 BYTE "Hurray! you have won the game",0
msg2 BYTE "Sorry!You lose",0

.code
	main PROC
		mov edx,offset msg
		call writestring

		call readint
		mov guess,eax

		mov eax,guess

		cmp eax,num
		je l1
		call crlf
		mov edx,offset msg2
		call writestring
		call crlf
		jmp over

		l1:
			call crlf
			mov edx,offset msg1
			call writestring
			call crlf
		over:
				exit
main endP
end main
