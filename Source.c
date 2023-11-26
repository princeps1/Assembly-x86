//PROGRAM NESTO ZEZA,IZBACUJE EXCEPTION ZA MEMORIJU,ALI KOD MISLIM DA JE VISE NEGO DOBAR
#include <stdio.h>
extern int NEGATIVNO(short* MAT, short M, short N, short* NIZ);

int main()
{
	short M, N, MAT[100][100],NIZ[100],brEl;
	printf("Unesi dimenzije,N pa M:");
	scanf_s("%hd", &N);
	scanf_s("%hd", &M);

	printf("Unesi elemente matrice: \n");
	for (int i = 0; i < N; i++)
	{
		for (int j = 0; j < M; j++)
		{
			scanf_s("%hd", &MAT[i][j]);
		}
	}

	brEl=NEGATIVNO(MAT, M, N, NIZ);

	for (int i = 0; i < brEl; i++)
	{
		printf("%hd", NIZ[i]);
	}
	return 0;
}