#include <stdio.h>

int ackmann(int m, int n) {
	if (m == 0) return n + 1;
	else if (n == 0) return ackmann(m - 1, 1);
	else return ackmann(m - 1, ackmann(m, n - 1));
}

int main(void) {
	printf("%d , %d\n", ackmann(3, 2), ackmann(2, 3));
	return 0;
}