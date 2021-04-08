#include <stdio.h>

int bi_coef_recur(int n, int k) {
	if (k == 0 || k == n) return 1;
	else return bi_coef_recur(n - 1, k - 1) + bi_coef_recur(n - 1, k);
}

int bi_coef_loop(int n, int k) {
	int a = 1, b = 1;
	for (int i = 1; i <= k; i++) {
		a *= (n + 1 - i);
		b *= (i);
	}
	return a / b;
}
int main(void) {
	printf("Binomial coefficient by recursive : %d \n", bi_coef_recur(10, 3));
	printf("Binomial coefficient by loop : %d \n", bi_coef_loop(10, 3));
	return 0;
}