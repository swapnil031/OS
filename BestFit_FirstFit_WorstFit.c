#include<stdio.h>

void firstfit(int *blocks,int m,int *process,int n){
    int i,j;
    int allocationindex[10];
    for(i=0;i<n;i++){
        allocationindex[i]=-1;
    }
    for(i=0;i<n;i++){
        for(j=0;j<m;j++){
            if(blocks[j]>=process[i]){
                allocationindex[i]=j+1;
                blocks[j]-=process[i];
                break;
            }
        }
    }
    for(int i=0;i<n;i++){
        printf("%d  %d \n",allocationindex[i],process[i]);
    }
}

void bestfit(int *blocks,int m,int *process,int n){
    int i,j;
    int allocationindex[10];
    for(i=0;i<n;i++){
        allocationindex[i]=-1;
    }
    for(i=0;i<n;i++){
        int bestindex=-1;
        for(j=0;j<m;j++){
            if(blocks[j]>=process[i]){
                if(bestindex==-1 || blocks[j]<blocks[bestindex]){
                    bestindex=j;
                }
            }
        }
        if(bestindex!=-1){
            allocationindex[i]=bestindex+1;
            blocks[bestindex]-=process[i];
        }
    }
    for(int i=0;i<n;i++){
        printf("%d  %d \n",allocationindex[i],process[i]);
    }
}

void worstfit(int *blocks,int m,int *process,int n){
    int i,j;
    int allocationindex[10];
    for(i=0;i<n;i++){
        allocationindex[i]=-1;
    }
    for(i=0;i<n;i++){
        int worstindex=-1;
        for(j=0;j<m;j++){
            if(blocks[j]>=process[i]){
                if(worstindex==-1 || blocks[j]>blocks[worstindex]){
                    worstindex=j;
                }
            }
        }
        if(worstindex!=-1){
            allocationindex[i]=worstindex+1;
            blocks[worstindex]-=process[i];
        }
    }
    for(int i=0;i<n;i++){
        printf("%d  %d \n",allocationindex[i],process[i]);
    }
}

int main(){
    int blocks[5]={100,500,200,300,600};
    int process[4]={212,417,112,426};
    //printf("%d",blocks[0]);
    int m=sizeof(blocks)/sizeof(int);
    int n=sizeof(process)/sizeof(int);
    //firstfit(blocks,m,process,n);
    //bestfit(blocks,m,process,n);
    worstfit(blocks,m,process,n);
}