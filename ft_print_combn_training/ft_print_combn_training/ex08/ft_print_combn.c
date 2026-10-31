#include <unistd.h>

void	ft_print_combn(int n)
{
	
}

int	main(void)
{
	ft_print_combn(2);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write

Goal:
Print all combinations of n digits.

TODO:
1. Initialize combination.
2. Print combination.
3. Generate next until last.

Test notes:
Normal case n = 2.
Edge case n = 1.
Boundary case n = 0 prints nothing.

Expected output:
01, 02, 03, 04, 05, 06, 07, 08, 09, 12, 13, 14, 15, 16, 17, 18, 19, 23, 24, 25, 26, 27, 28, 29, 34, 35, 36, 37, 38, 39, 45, 46, 47, 48, 49, 56, 57, 58, 59, 67, 68, 69, 78, 79, 89
*/
