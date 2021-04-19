#include <stdio.h>
#include <stdlib.h>

int calc_power(int x, int n) {
	if (n == 1) return x;
	else if (n % 2 == 0) return calc_power(x * x, n / 2);
	else return x * calc_power(x * x, n / 2);
}

int main(void) {
	printf("3^3 = %d\n", calc_power(3, 3));
	printf("2^10 = %d\n", calc_power(2, 10));
	return 0;
}


