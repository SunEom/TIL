#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
    char name[10];
    int age;
    double gpa;
} student;

int main(void){
    student *s;

    s = (student *)malloc(sizeof(student));
    if(s == NULL){
        fprintf(stderr,"Malloc Error!");
        exit(1);
    }

    strcpy(s->name,"Park");
    s->age = 20;

    printf("%s, %d\n",s->name,s->age);

    free(s);
    return 0;
}