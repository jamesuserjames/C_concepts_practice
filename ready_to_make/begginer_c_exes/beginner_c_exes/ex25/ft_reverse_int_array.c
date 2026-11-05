#include <stdio.h>

void	ft_reverse_int_array(int *tab, int size)
{
	
}

int	main(void)
{
	int	tab1[] = {1, 2, 3, 4, 5};
	int	tab2[] = {10, 20};
	int	tab3[] = {42};
	int	i;

	ft_reverse_int_array(tab1, 5);
	i = 0;
	while (i < 5)
	{
		printf("%d", tab1[i]);
		if (i < 4)
			printf(" ");
		i++;
	}
	printf("\n");
	ft_reverse_int_array(tab2, 2);
	printf("%d %d\n", tab2[0], tab2[1]);
	ft_reverse_int_array(tab3, 1);
	printf("%d\n", tab3[0]);
	return (0);
}

/*
Allowed functions: none

Goal:
Reverse the order of the integers in an array.

TODO:
1. Identify matching positions from the beginning and end
2. Swap those two values
3. Continue until the positions meet in the middle

Test notes:
The tests cover an odd-sized array, an even-sized array, and a one-element boundary case.

Expected output:
5 4 3 2 1
20 10
42
*/
