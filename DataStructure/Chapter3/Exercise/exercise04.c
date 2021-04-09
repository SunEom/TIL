#include <stdio.h>

int main(void) {
	int two[10];
	int num = 1;
	for (int i = 0; i < 10; i++) {
		two[i] = num;
		num *= 2;
	}

	for (int i = 0; i < 10; i++)
		printf("%d -> ", two[i]);
	return 0;
}