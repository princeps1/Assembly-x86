extern int nizSum(short* niz, short brBajtova);

int main()
{
	short mat[3][3]={{1,2,3},
					 {4,5,6},
					 {7,8,9}
					 };
	printf("%i", nizSum(&mat[1][0], 3 * sizeof(mat[0][0])));
}