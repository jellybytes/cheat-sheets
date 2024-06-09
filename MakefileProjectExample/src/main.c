#include <stdio.h>
#include "sum.h"
#include "subtract.h"

int main()
{
	int res_subtract = subtract(10, 3);
	printf("10 - 3 = %d\n", res_subtract);

	int res_sum = sum(11, 2);
	printf("11 + 2 = %d\n", res_sum);
	return 0;
}