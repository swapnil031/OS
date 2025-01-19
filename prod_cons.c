#include<stdio.h>
#include<pthread.h>
#include<stdlib.h>
#include<semaphore.h>

int buffer[5];
int count=0;
pthread_mutex_t mutex;
sem_t empty;
sem_t full;

void *produce(){
    int i=0;
    while(i<5){
        int item=rand()%100;
        sem_wait(&empty);
        pthread_mutex_lock(&mutex);
        buffer[count]=item;
        printf("Put %d\n",item);
        count++;
        i++;
        pthread_mutex_unlock(&mutex);
        sem_post(&full);
    }
}

void *consume(){
    int i=0;
    while(i<5){
        sleep(1);
        sem_wait(&full);
        pthread_mutex_lock(&mutex);
        count--;
        int item=buffer[count];
        printf("got %d \n",item);
        i++;
        pthread_mutex_unlock(&mutex);
        sem_post(&empty);
    }
}

int main(){
    pthread_t prod,cons;
    
    sem_init(&empty,0,5);
    sem_init(&full,0,1);
    
    pthread_mutex_init(&mutex,NULL);
    
    pthread_create(&prod,NULL,produce,NULL);
    pthread_create(&cons,NULL,consume,NULL);
    
    pthread_join(prod,NULL);
    pthread_join(cons,NULL);
    
    sem_destroy(&empty);
    sem_destroy(&full);
    pthread_mutex_destroy(&mutex);
}