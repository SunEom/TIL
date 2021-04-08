#include <stdio.h>

int sum(int n) {
	int result = 0;
	for (int i = n; i >= 1; i--)
		result += i;
	return result;
}

int main(void) {
	printf("%d\n ", sum(10));
	return 0;
}