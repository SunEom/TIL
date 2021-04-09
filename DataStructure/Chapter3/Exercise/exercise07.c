#include <stdio.h>

typedef struct {
	float real;
	float imaginary;
}Complex;

Complex complex_add(Complex c1, Complex c2) {
	Complex result;
	result.real = c1.real + c2.real;
	result.imaginary = c1.imaginary + c2.imaginary;
	return result;
}


int main(void) {
	Complex c1 = { 3.5, 2.89 };
	Complex c2 = { 2.3, 5.78 };

	Complex result = complex_add(c1, c2);
	printf("(%g + %gi) + (%g + %gi) = %g + %gi \n", c1.real, c1.imaginary, c2.real, c2.imaginary, result.real, result.imaginary);
	return 0;
}