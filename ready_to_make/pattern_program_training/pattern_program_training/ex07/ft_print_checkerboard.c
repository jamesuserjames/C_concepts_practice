#include <unistd.h>

void	ft_print_checkerboard(int size)
{
	
}

int	main(void)
{
	ft_print_checkerboard(5);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a checkerboard.

TODO:
1. Use row and column indices.
2. Print '*' if (row + col) is even.
3. Print space otherwise.

Test notes:
Normal case: size 5.
Edge case: size 1.
Boundary case: size 0 prints nothing.

Expected output:
* * *
 * * 
* * *
 * * 
* * *
*/
