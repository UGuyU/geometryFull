#include <stdio.h>
#include <stdlib.h>
#include "err.h"

int main()
{
	float x,y,r;
	printf("Напишите координаты для окружности x and y, r :\n");
	scanf("%f%f%f", &x, &y, &r);
	error(x,y,r);	
	printf("Координаты вашей окружности: (%.4f %.4f, %.4f)\n", x, y, r);	
	printf("Площадь = %.4f\n", S(r));
	printf("Периметр = %.4f\n", P(r));
	return 0;
}

