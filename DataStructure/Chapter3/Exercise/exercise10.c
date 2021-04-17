#include <stdio.h>


int delete(int array[], int loc) {
	int result = array[loc];
	for (int i = loc; i < 9; i++)
		array[i] = array[i + 1];
	return result;
}

int main(void) {
	int arr[10] = { 1,2,3,4,4,5,6 };
	for (int i = 0; i < 7; i++)
		printf("%d -> ", arr[i]);
	printf("\n");
	int removed = delete(arr, 4);
	for (int i = 0; i < 6; i++)
		printf("%d -> ", arr[i]);
	printf("\n");
	printf("Removed : %d\n", removed);
	return 0;
}