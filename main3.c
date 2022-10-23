#include <stdio.h>
/*
  Сформировать массив B из суммы соседних элементов A по следующему правилу: B0=A0, B1=A0+A1, ..., Bm=A0+ ... +Am, где m – номер первого элемента массива А большего среднего арифметического этого массива.
*/
int input(FILE * input_, int *arrA, int *arrB, int N){
  int sum = 0;
  for(int i = 0; i < N; i++){
    fscanf(input_, "%d", &arrA[i]);
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
void out(FILE * output, int *arrB, int med){
  for(int i = 0; i < med; i++){
    fprintf(output, "%d ", arrB[i]);
  }
}
int main(int argc, char * argv[]) {
  FILE * input_ = fopen(argv[1], "r");
  FILE * output = fopen(argv[2], "w");
  int N;
  fscanf(input_, "%d", &N);
  int arrA[N*sizeof(int)];
  int arrB[N*sizeof(int)];
  int med = input(input_, arrA, arrB, N);
  int i = dotask(arrA, arrB, N, med);
  out(output, arrB, i);
  fclose(input_);
  fclose(output);
  return 0;
}

