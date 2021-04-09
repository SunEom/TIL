#include <stdio.h>

typedef struct {
	char name[20];
	int age;
	float pay;
} Person;

int main(void) {
	Person p;
	printf("What's your name ? ");
	scanf("%s", p.name);
	printf("How old are you ? ");
	scanf("%d", &p.age);
	printf("How much is your payment ? ");
	scanf("%f", &p.pay);

	printf("Name : %s\n", p.name);
	printf("Name : %d\n", p.age);
	printf("Name : %g\n", p.pay);

	return 0;
};