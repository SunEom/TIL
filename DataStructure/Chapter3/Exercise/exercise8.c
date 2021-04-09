#include <stdio.h>

void insert(int array[], int items, int loc, int value) {
	for (int i = items; i >= loc; i--)
		array[i + 1] = array[i];
	array[loc] = value;
}

int main(void) {
	int arr[10] = { 1,2,3,5,6,7 };
	for (int i = 0; i < 6; i++)
		printf("%d -> ", arr[i]);
	printf("\n");
	insert(arr, 6, 3, 4);
	for (int i = 0; i < 7; i++)
		printf("%d -> ", arr[i]);
	return 0;
}