#include <stdio.h>
#include <stdlib.h>
#include <string.h>
void num(char** argv);
void firstlast(char** argv);
void firststeplast(char** argv);

int main(int argc,char ** argv){
    switch (argc)
    {
    case 2:
        /* code */
        num(argv);
        break;
    case 3:
        firstlast(argv);
        break;
    case 4:
        firststeplast(argv);
        break;
    default:
        printf("error de argumentos");
        return 1;
    }     
    return 0;
}

void num(char** argv){
    for(int i=1;i<=atoi(argv[1]);i++){
        printf("%d\n",i);
    }
}
void firstlast(char** argv){
    for(int i=atoi(argv[1]);i<=atoi(argv[2]);i++){
        printf("%d\n",i);
    }
    
}
void firststeplast(char** argv){
    int o= atoi(argv[2]);
    for(int i=atoi(argv[1]);i<=atoi(argv[3]);i++){
        if(o==atoi(argv[2])){
            printf("%d\n",i);
            o=0;
        }
        o++;
    }
}