#include <stdio.h>

double recursive(int n) {
	if (n < 1) return 0.0;
	else return (1.0 / n) + recursive(n-1);
}

int main(void) {
	int num;
	printf("���ڸ� �Է����ּ��� : ");
	scanf("%d", &num);
	printf("��� : %g", recursive(num));
	return 0;
}