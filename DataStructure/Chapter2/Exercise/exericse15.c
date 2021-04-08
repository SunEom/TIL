#include <stdio.h>

int fibo(int n) {
	printf("fib(%d) is called \n", n);
	if (n == 0)return 0;
	if (n == 1)return  1;
	return fibo(n - 1) + fibo(n - 2);
}

int main(void) {
	printf("°á°ú : %d", fibo(6));
	return 0;
}