#include <stdio.h>

#define WIDTH 10
#define HEIGHT 10
#define WHITE 0
#define BLACK 1
#define YELLOW 2

int screen[WIDTH][HEIGHT] = {
	{YELLOW,YELLOW,YELLOW,YELLOW,YELLOW,YELLOW,YELLOW,YELLOW,YELLOW,YELLOW},
	{YELLOW,YELLOW,YELLOW,YELLOW,YELLOW,YELLOW,YELLOW,YELLOW,YELLOW,YELLOW},
	{YELLOW,YELLOW,YELLOW,WHITE,WHITE,WHITE,WHITE,YELLOW,YELLOW,YELLOW},
	{YELLOW,YELLOW,YELLOW,YELLOW,WHITE,WHITE,WHITE,YELLOW,YELLOW,YELLOW},
	{YELLOW,YELLOW,YELLOW,YELLOW,WHITE,WHITE,WHITE,YELLOW,YELLOW,YELLOW},
	{YELLOW,YELLOW,YELLOW,YELLOW,WHITE,WHITE,WHITE,WHITE,YELLOW,YELLOW},
	{YELLOW,YELLOW,YELLOW,YELLOW,WHITE,YELLOW,YELLOW,YELLOW,YELLOW,YELLOW},
	{YELLOW,YELLOW,YELLOW,YELLOW,WHITE,YELLOW,YELLOW,YELLOW,YELLOW,YELLOW},
	{YELLOW,YELLOW,YELLOW,YELLOW,WHITE,YELLOW,YELLOW,YELLOW,YELLOW,YELLOW},
	{YELLOW,YELLOW,YELLOW,YELLOW,YELLOW,YELLOW,YELLOW,YELLOW,YELLOW,YELLOW},
};

char read_pixel(int x, int y) {
	return screen[x][y];
}

void write_pixel(int x, int y, int color) {
	screen[x][y] = color;
}

void flood_fill(int x, int y) {
	if (read_pixel(x, y) == WHITE) {
		write_pixel(x, y, BLACK);
		flood_fill(x + 1, y);
		flood_fill(x - 1, y);
		flood_fill(x, y + 1);
		flood_fill(x, y - 1);
	}
}

int main(void) {
	for (int r = 0; r < HEIGHT; r++) {
		for (int c = 0; c < WIDTH; c++)
			printf("%d ", read_pixel(r, c));
		printf("\n");
	}
	flood_fill(2, 3);
	printf("\n\n");
	for (int r = 0; r < HEIGHT; r++) {
		for (int c = 0; c < WIDTH; c++)
			printf("%d ", read_pixel(r, c));
		printf("\n");
	}
	return 0;
}