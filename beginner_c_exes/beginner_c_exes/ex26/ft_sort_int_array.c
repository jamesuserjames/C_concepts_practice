#include <stdio.h>

void	ft_sort_int_array(int *tab, int size)
{
	
}

int	main(void)
{
	int	tab1[] = {5, 2, 4, 1, 3};
	int	tab2[] = {3, -1, 0};
	int	tab3[] = {7};
	int	i;

	ft_sort_int_array(tab1, 5);
	i = 0;
	while (i < 5)
	{
		printf("%d", tab1[i]);
		if (i < 4)
			printf(" ");
		i++;
	}
	printf("\n");
	ft_sort_int_array(tab2, 3);
	printf("%d %d %d\n", tab2[0], tab2[1], tab2[2]);
	ft_sort_int_array(tab3, 1);
	printf("%d\n", tab3[0]);
	return (0);
}

/*
Allowed functions: none

Goal:
Sort an integer array from smallest to largest.

TODO:
1. Compare values in the array
2. Swap values that are in the wrong order
3. Continue until the entire array is sorted

Test notes:
The tests cover an unsorted positive array, negative and zero values, and a one-element boundary case.

Expected output:
1 2 3 4 5
-1 0 3
7
*/
