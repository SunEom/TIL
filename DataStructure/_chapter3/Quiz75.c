#include <stdio.h>
#include <math.h>
// #01
typedef struct Point {
    int x;
    int y;
} point;

double get_distance(point a, point b){
    return sqrt(pow((a.x-b.x),2)+pow((a.y-b.y),2));
}


int main(void){
    // #02
    point p1;
    point p2;

    //#03
    p1.x = 1;
    p1.y = 2;
    p2.x = 9;
    p2.y = 8;

    //04

    printf("%g\n",get_distance(p1,p2));
    return 0;

}
