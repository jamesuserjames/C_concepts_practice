#include <stdio.h>

void	ft_swap(int *a, int *b)
{
	
}

int	main(void)
{
	int	a;
	int	b;

	a = 10;
	b = 20;
	ft_swap(&a, &b);
	printf("%d %d\n", a, b);
	a = -5;
	b = 0;
	ft_swap(&a, &b);
	printf("%d %d\n", a, b);
	a = 7;
	b = 7;
	ft_swap(&a, &b);
	printf("%d %d\n", a, b);
	return (0);
}

/*
Allowed functions: none

Goal:
Swap the values of two integers using pointers.

TODO:
1. Save one of the values temporarily
2. Replace the first value with the second
3. Put the saved value into the second integer

Test notes:
The tests cover different positive values, a negative value with zero, and two equal values.

Expected output:
20 10
0 -5
7 7
*/
