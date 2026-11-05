#include <unistd.h>

void	ft_print_digit(int digit)
{
	
}

int	main(void)
{
	ft_print_digit(5);
	write(1, "\n", 1);
	ft_print_digit(0);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write

Goal:
Print a digit from 0 to 9.

TODO:
1. Convert digit to character.
2. Use write to print it.

Test notes:
Normal case prints 5.
Edge case prints 0.
Boundary case digit 9.

Expected output:
5
0
*/
