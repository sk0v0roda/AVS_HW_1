#include <stdio.h>
/*
  Сформировать массив B из суммы соседних элементов A по следующему правилу: B0=A0, B1=A0+A1, ..., Bm=A0+ ... +Am, где m – номер первого элемента массива А большего среднего арифметического этого массива.
*/
int input(int *arrA, int *arrB, int N){
  int sum = 0;
  for(int i = 0; i < N; i++){
    scanf("%d", &arrA[i]);
    sum += arrA[i];
    arrB[i] = 0;
  }
  return sum / N;
}
int dotask(int *arrA, int *arrB, int N, int med){
  arrB[0] = arrA[0];
  int i  = 1;
  while(arrA[i] <= med){
    for(int j = 0; j <= i; j++){
      arrB[i] = arrB[i] + arrA[j];
    }
  i++;
  }
  return i;
}
void out(int *arrB, int med){
  for(int i = 0; i < med; i++){
    printf("%d ", arrB[i]);
  }
}
int main(void) {
  int N;
  scanf("%d", &N);
  int arrA[N*sizeof(int)];
  int arrB[N*sizeof(int)];
  int med = input(arrA, arrB, N);
  int i = dotask(arrA, arrB, N, med);
  out(arrB, i);
  return 0;
}