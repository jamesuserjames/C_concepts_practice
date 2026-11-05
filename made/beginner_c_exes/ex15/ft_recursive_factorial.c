#include <stdio.h>

int	ft_recursive_factorial(int n)
{
	if (n <= 0)
		return (1);
	return (n * ft_recursive_factorial(n - 1));
}

int	main(void)
{
	printf("%d\n", ft_recursive_factorial(5));
	printf("%d\n", ft_recursive_factorial(1));
	printf("%d\n", ft_recursive_factorial(0));
	return (0);
}

/*
Allowed functions: none

Goal:
Return the factorial of n using recursion.

TODO:
1. Identify the factorial base case
2. Multiply n by a recursive call using n - 1
3. Ensure every call moves toward the base case

Test notes:
The tests cover a normal recursive factorial, the value 1, and 0 factorial as the boundary case.

Expected output:
120
1
1
*/
