#include <stdio.h>

//#7
int sum (int n){
    printf("%d\n",n);
    if(n<1) return 1;
    else return ( n*sum(n-1));
}
//   ->  16

//#08
int recursive1(int n){
    printf("%d \n", n);
    if(n<1) return 2;
    else return (2*recursive1(n-1)+1);
}
//   ->95

//#09
int recursive2(int n){
    printf("%d\n",n);
    if(n<1) return -1;
    else return (recursive2(n-3)+1);
}
//    ->3

//#10
int recursive3(int n){
    if(n != 1 ) recursive3(n-1);
    printf("%d\n",n);
}
//   ->  1,2,3,4,5

//#11
int asterisk(int i){
    if(i>1){
        asterisk(i/2);
        asterisk(i/2);
    }
    printf("*");
}
//      -> 7

//#12
void unknown(){
    int ch;
    if(ch=getchar() != '\n') unknown();
    putchar(ch);
}
//  ->  evisrucer


//#13
int recursive4(int n){
    if (n<=0) return 0;
    else if(n==1) return 1;
    else return (n+recursive4(n-1));
}

//#14
double recursive5(int n){
    if(n<=0) return 0;
    else return (1/(double)n + recursive5(n-1));
}

//#15
int fib(int n){
    printf("fib(%d) is called\n",n);
    if(n==0) return 0;
    if(n==1) return 1;
    return (fib(n-1) + fib(n-2));
}

//#16
// int sum2(int n){
//     if(n==1) return 1;
//     else return (n sum2(n-1));
// } 

int sum2 (int n){
    int result=0, i;
    for(i=1;i<=n;i++)
        result += i;
    return result;
}

//#17

int bi_coef(int n, int k){
    if( k ==0 || k == n) return 1;
    else return (bi_coef(n-1,k-1) + bi_coef(n-1,k));
}

//#18

int ackermann(int m , int n){
    if (m==0) return n+1;
    if (n==0) return ackermann(m-1,1);
    return ackermann(m-1,ackermann(m,n-1));
}

// int ackermann2(int m, int n){
//     int a=m, b=n;

// }

//#21

#define WHITE 0
#define BLACK 1
#define YELLOW 2

int screen[10][10]={
    {2,2,2,2,2,2,2,2,2,2},
    {2,2,2,2,2,2,2,2,2,2},
    {2,2,2,0,0,0,0,2,2,2},
    {2,2,2,2,0,0,0,2,2,2},
    {2,2,2,2,0,0,0,2,2,2},
    {2,2,2,2,0,0,0,0,2,2},
    {2,2,2,2,0,2,2,2,2,2},
    {2,2,2,2,0,2,2,2,2,2},
    {2,2,2,2,0,2,2,2,2,2},
    {2,2,2,2,2,2,2,2,2,2},
};

char read_pixel(int x, int y){
    return screen[x][y];
}

void write_pixel(int x, int y, int color){
    screen[x][y] = color;
}

void flood_fill(int x, int y){
    if(read_pixel(x,y) == WHITE){
        printf("(%d,%d) is painted\n",x,y);
        write_pixel(x,y,2);
        flood_fill(x-1,y);
        flood_fill(x+1,y);
        flood_fill(x,y-1);
        flood_fill(x,y+1);
    }
}

int main(void){
    // printf("%d\n",sum(5));
    // printf("%d\n",recursive1(5));
    // printf("%d\n",recursive2(10));
    // recursive3(5);
    // asterisk(5);
    // printf("%d\n",recursive4(10));
    // printf("%g\n",recursive5(3));
    // printf("%d\n",fib(6));
    // printf("%d\n",sum2(10));
    // printf("%d\n",bi_coef(3,2));
    // printf("%d\n",ackermann(2,3));
    flood_fill(4,5);
    return 0;
}