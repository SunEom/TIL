#include <stdio.h>

int mcnt = 0;
int marr[2000];
int xarr[1000]={1,3,5,7,9,11,13,15,17,19,21,23,25,27,29};
int yarr[1000]={2,4,6,8,10,12,14,16,18,20,22,24,26,28,30};

void merge(int sx, int ex, int sy, int ey){
    
    if(xarr[sx] < yarr[sy]){
        marr[mcnt++] = xarr[sx];
        merge(sx+1<=ex ? sx+1 : ex, ex, sy, ey);
    } else {
        marr[mcnt++] = yarr[sy];
        merge(sx, ex, sy+1<=ey? sy+1:ey, ey);
    }
    
}


int main(void){
    merge(0,14,0,14);
    
    for(int i=0; i<30; i++)
        printf("%d ",marr[i]);
}
