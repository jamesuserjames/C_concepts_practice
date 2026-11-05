#include <stdio.h>

int	ft_is_even(int n)
{
	
}

int	main(void)
{
	printf("%d\n", ft_is_even(8));
	printf("%d\n", ft_is_even(7));
	printf("%d\n", ft_is_even(0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return 1 if n is even and 0 if n is odd.

TODO:
1. Find the remainder when n is divided by 2
2. Determine whether the remainder is zero
3. Return 1 or 0

Test notes:
The tests cover an even number, an odd number, and zero as the boundary case.

Expected output:
1
0
1
*/
