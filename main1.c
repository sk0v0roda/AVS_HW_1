#include <stdio.h>
int main(void) {
  int N;
  scanf("%d", &N);
  int arrA[N*sizeof(int)];
  int arrB[N*sizeof(int)];
  int sum = 0;
 
  for(int i = 0; i < N; i++){
    scanf("%d", &arrA[i]);
    sum += arrA[i];
    arrB[i] = 0;
  }
  int med;
  med = sum / N;
  arrB[0] = arrA[0];
  int i  = 1;
  while(arrA[i] <= med){
    for(int j = 0; j <= i; j++){
      arrB[i] = arrB[i] + arrA[j];
    }
  i++;
  }
  for(int j = 0; j < i; j++){
    printf("%d ", arrB[j]);
  }
  return 0;
}