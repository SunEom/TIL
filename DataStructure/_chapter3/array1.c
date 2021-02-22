#include <stdio.h>
#define SIZE 6

void get_intergers(int list[]){
    printf("Input 6 integers : ");
    for(int i=0; i<SIZE ;i++)
        scanf("%d",&list[i]);
}

int cal_sum(int list[]){
    int result = 0;
    for(int i=0; i<SIZE ; i++)
        result += list[i];
    return result;
}

int main(void){
    int arr1[6];
    get_intergers(arr1);
    printf("%d\n",cal_sum(arr1));
    return 0;
}