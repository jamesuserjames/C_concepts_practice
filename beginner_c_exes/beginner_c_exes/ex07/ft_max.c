#include <stdio.h>

int	ft_max(int a, int b)
{
	
}

int	main(void)
{
	printf("%d\n", ft_max(4, 9));
	printf("%d\n", ft_max(12, -3));
	printf("%d\n", ft_max(5, 5));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the larger of two integers.

TODO:
1. Compare a with b
2. Return a if a is larger
3. Otherwise return b

Test notes:
The tests cover b being larger, a being larger, and equal values as the boundary case.

Expected output:
9
12
5
*/
