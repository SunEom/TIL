#include <stdio.h>

int sum(int n) {
	if (n < 1) return 0;
	else return n + sum(n - 1);
}

int main(void) {
	int num;
	printf("���ڸ� �Է����ּ��� : ");
	scanf("%d", &num);
	printf("���  : %d\n", sum(10));
	return 0;
}