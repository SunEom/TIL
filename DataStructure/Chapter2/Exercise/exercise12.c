#include <stdio.h>

void unknown(void) {
	int ch; 
	if ((ch = getchar()) != '\n')
		unknown();
	putchar(ch);
}

int main(void) {
	unknown();
	return 0;
}