#include <stdio.h>

typedef struct {
	float real;
	float imaginary;
}complex;

int main(void) {
	complex c1, c2;
	c1.real = 1.23;
	c2.real = 2.34;
	c1.imaginary = 4.56;
	c2.imaginary = 5.67;
	printf("%g + %gi\n", c1.real, c1.imaginary);
	printf("%g + %gi\n", c2.real, c2.imaginary);
	return 0;
}