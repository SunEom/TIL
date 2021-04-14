#include <stdio.h>
#include <string.h>
typedef struct {
	char name[20];
	char stdnum[20];
}Student;

int main()
{
	float a[100];
	printf("%d¡¬n", sizeof(float));
	printf("%d¡¬n", &a);
	printf("%d¡¬n", &a[5]);

}
int recursive(int n)
{
 printf("%d, ",n);
 if (n<1) return -1;
 else return ( recursive(n-3) + 1 );
}
