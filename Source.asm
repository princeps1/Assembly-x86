.386
.model flat,c

PUBLIC NEGATIVNO
.code

	NEGATIVNO proc
		push ebp
		mov ebp,esp

		push esi
		push edi
		;push eax
		push ebx
		push edx
		push ecx



		
		mov esi,[ebp+8];//U ESI JE ADRESA PRVOG ELEMENTA MATRICE
		mov edi,[ebp+24];//U EDI JE ADRESA PRVOG ELEMENTA NIZA
		mov ax,[ebp+16];//U AX JE VREDNOST DIMENZIJE N
		mov bx,[ebp+12];//U BX JE VREDNOST DIMENZIJE M
		mov dx,0;//[ebp+28]U DX CE BITI BROJ ELEMENATA NIZA

		mul bx
		mov cx,bx
		;//ODAVDE SU AX I BX SLOBODNI,NE TREBAJU MI VISE
		PETLJA:
			
			mov ax,[esi];//U AX CE BITI VREDNOST ELEMENTA MATRICE
			cmp ax, 0
			jge POZITIVAN
				mov [edi],ax;//NA ADRESU ELEMENTA NIZA STAVI VREDNOST ELEMENTA MATRICE KOJI JE NEGATIVAN
				inc dx;//POVECAJ BROJ ELEMENATA
				add edi, 2;//PREDJI NA SLEDECU MEMORIJSKU LOKACIJU NIZA
			POZITIVAN:
			add esi,2;//PREDJI NA SLEDECI ELEMENT MATRICE
		loop PETLJA

		mov ax,dx
	

		pop ecx
		pop edx
		pop ebx
		;pop eax
		pop edi
		pop esi
		pop ebp

		ret 
	NEGATIVNO ENDP
	;END NEGATIVNO