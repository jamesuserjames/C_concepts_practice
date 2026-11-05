#include <unistd.h>

void	ft_recursive_countdown_print(int n)
{
	
}

int	main(void)
{
	ft_recursive_countdown_print(5);
	write(1, "\n", 1);
	ft_recursive_countdown_print(1);
	write(1, "\n", 1);
	ft_recursive_countdown_print(0);
	write(1, "\n", 1);
}

/*
Allowed functions: write

Goal:
Print numbers from n down to 0 recursively

TODO:
1. Print current digit
2. Stop after printing 0
3. Recurse with n - 1 while n is greater than 0

Test notes:
Tests normal countdown, edge case 1, and boundary case 0

Expected output:
543210
10
0
*/
