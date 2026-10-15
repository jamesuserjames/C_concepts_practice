#include <unistd.h>

void	ft_is_negative(int n)
{
	
}

int	main(void)
{
	ft_is_negative(42);
	write(1, "\n", 1);
	ft_is_negative(-42);
	write(1, "\n", 1);
	ft_is_negative(0);
	write(1, "\n", 1);
	return (0);
}

/*
Allowed functions: write

Goal:
Print N when n is negative and P when n is zero or positive.

TODO:
1. Compare n with zero
2. Print N if n is negative
3. Otherwise print P

Test notes:
The tests cover a positive number, a negative number, and zero as the boundary case.

Expected output:
P
N
P
*/
