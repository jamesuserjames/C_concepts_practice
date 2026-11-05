#include <unistd.h>

void	ft_recursive_countdown(int n)
{
	
}

int	main(void)
{
	ft_recursive_countdown(5);
	write(1, "\n", 1);
	ft_recursive_countdown(1);
	write(1, "\n", 1);
	ft_recursive_countdown(0);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write

Goal:
Print every digit from n down to 0 using recursion. The tests only use values from 0 to 9.

TODO:
1. Print the current value of n
2. Decide when recursion should stop
3. Recursively continue with n - 1

Test notes:
The tests cover a normal countdown, the smallest countdown above zero, and the base-case boundary.

Expected output:
543210
10
0
*/
