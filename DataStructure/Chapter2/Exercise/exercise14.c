#include <stdio.h>

double recursive(int n) {
	if (n < 1) return 0.0;
	else return (1.0 / n) + recursive(n-1);
}

int main(void) {
	int num;
	printf("숫자를 입력해주세요 : ");
	scanf("%d", &num);
	printf("결과 : %g", recursive(num));
	return 0;
}