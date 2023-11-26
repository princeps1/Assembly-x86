.386
.model flat,c

public nizSum
.code
	nizSum proc
		push ebp
		mov ebp,esp
		pushf
		push ebx
		push ecx
		


		mov eax,0;//OVDE CE DA BUDE SUMA
		mov ebx,[ebp+8];//U EBX JE ADRESA PRVO ELEMENTA NIZA
		mov ecx, [ebp + 12];//U ECX JE BROJ BAJTOVA KOJE ZAUZIMA NIZ(6)

		shr ecx, 1;//6/2=3 JER MI TREBA LOOP ZA 3 ELEMENTA
		xor eax, eax
		LABELA:
			add ax,word ptr[ebx]
			add ebx,2
		loop LABELA
		
		pop ecx
		pop ebx
		popf
		pop ebp
		ret
	nizSum endp
	end nizSum
