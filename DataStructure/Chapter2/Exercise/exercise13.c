#include <stdio.h>

int sum(int n) {
	if (n < 1) return 0;
	else return n + sum(n - 1);
}

int main(void) {
	int num;
	printf("숫자를 입력해주세요 : ");
	scanf("%d", &num);
	printf("결과  : %d\n", sum(10));
	return 0;
}