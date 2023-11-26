.386
.model flat,c

.data
	MAT dw 7,0,0,0,5,0,0,0,1
	N db 3


.code
	
	main proc
		mov esi,0
		mov ebx,0
		mov ecx,2;//SAMO PRIVREMENO DOK PODESI OGRANICENJA



		;//SAD CE EDI
		mov al, N
		movsx ax, al
		movsx eax, ax

		dec eax
		mul ecx
		mul N
		mov edi,eax

		;//SAD CE EDX
		mov al, N
		movsx ax, al
		movsx eax, ax

		dec eax
		mul ecx
		mov edx,eax
		;//EAX MI VISE NE TREBA,SLOBODAN
		;//ECX MI VISE NE TREBA,SLOBODAN
		PETLJA:
			
			mov ax,MAT[ebx][esi]
			mov cx,MAT[edx][edi]

			cmp ax,MAT[edx][edi]
			jle MANJE
				mov MAT[ebx][esi],cx
				mov MAT[edx][edi],ax

			MANJE:

			mov al,N
			movsx ax,al
			;//SMANJI VRSTU
			sub di,ax
			sub di,ax
			;//SMANJI KOLONU
			sub dx,2


			;//POVECAJ KOLONU
			add si,2
			;//POVECAJ VRSTU
			add bx,ax
			add bx,ax


			cmp di,0
		jne PETLJA

	main endp
	end main
