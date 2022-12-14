# Первое индивидуальное домашнее задание по АВС
## Вариант 40, Пономарев Степан Алексеевич, БПИ216
### Задание:
Сформировать массив B из суммы соседних элементов A по 
следующему правилу: B0=A0, B1=A0+A1, ..., Bm=A0+ ... +Am, где m – номер 
первого элемента массива А большего среднего арифметического этого 
массива. 
#### Результаты:
##### На 4 балла:
![img](/main1c.png)
- Приведено решение программы на языке C (находится в файле main1.c)

С помощью командной строки и приведённых ниже команд, получаем исходный .s-файл, а также исполняемый файл:
$gcc -O0 -Wall -fno-asynchronous-unwind-tables main.c -o main
$gcc -O0 -Wall -fno-asynchronous-unwind-tables -S main.c -o main.s
$gcc main.s -o
Далее представлены результаты тестирования обеих программ.

![img](/res1.png)

По результатам тестирования делаем однозначный вывод, что программы работают эквивалентно и правильно.
- Команды для проверки:\
gcc main1.s\
gcc ./a.out

##### На 5 баллов:
В программе реализованы функции с передачей данных через параметры (файл main2.c , скриншот программы ниже)
###### Описание функций
\
int input(int *arrA, int *arrB, int N) -- на входе принимает два указателя на массив, в который записываются входные данные и на результирующий массив соответственно, а также целочисленную переменную N (размер массивов)

int dotask(int *arrA, int *arrB, int N, int med) --  на входе принимает два указателя на массив, в который записываются входные данные и на результирующий массив соответственно, целочисленную переменную N (размер массивов), а также целочисленную переменную med -- медиану первого массива.

void out(int *arrB, int med) -- на входе принимает указатель на результирующий массив, а также на медиану массива.

Необходимые комментарии также были добавлены в программу main2.s

###### скриншот программы main2.c
![img](/main2c.png)

##### На 6 баллов:
Был осуществлён рефакторинг программы (с последующим добавлением комментариев) с целью максимального использования регистров. Были изменены некоторые команды. К примеру, movl был заменён на movq. Были изменены регистры, контактирующие с новыми регистрами. Например, movl eax, -24(%rbp) изменён на movq rax, r12.

Демонстрируем результаты тестов новой и предыдущих программ
![img](/res2.png)

По результатам тестирования делаем однозначный вывод, что программы работают эквивалентно и правильно.
- Команды для проверки:\
gcc main2-r.s\
gcc ./a.out

##### На 7 баллов:
Полученная ранее в результате компиляции программа на ассемблере реализована в виде двух единиц компиляции. Это файлы "1.s" и "2.s". Одна часть содержит код с функциями, описанными в блоке "на 5 баллов", другая часть содержит main.
Полученные файлы были скомпилированы, запущены и работали корректно.
- Команды для проверки:\
gcc 1.s 2.s\
gcc ./a.out

Последний .c-файл был переделан, чтобы получать данные из файлов в командной строке (int argc, char * argv[]) и сохранён в main3.c. 
Программа была дизассемблирована в main3.c, после чего разделена на f.s и m.s (Разделение по такому же принципу, как у "1.s" и "2.s").
- Команды для проверки:\
gcc f.s m.s\
gcc ./a.out input.txt output.txt
