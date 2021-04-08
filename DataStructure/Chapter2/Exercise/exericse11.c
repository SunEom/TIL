#include <stdio.h>

void asterisk(int n) {
	if (n > 1) {
		asterisk(n / 2);
		asterisk(n / 2);
	}
	printf("*");
}

int main(void) {
	asterisk(5);
	return 0;
}