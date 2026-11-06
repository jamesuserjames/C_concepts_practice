#include <stdio.h>

int	ft_recursive_power(int nb, int power)
{
	
}

/*
GOAL:
Calculate nb raised to a non-negative integer power recursively.

ALLOWED FUNCTIONS:
none

TODO:
1. Return zero for negative exponents.
2. Return one when power is zero.
3. Multiply by nb and recurse with power - 1.

EXPECTED OUTPUT:
Test 1: 16
Test 2: -8
Test 3: 1
Test 4: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_power(2, 4));
	printf("Test 2: %d\n", ft_recursive_power(-2, 3));
	printf("Test 3: %d\n", ft_recursive_power(5, 0));
	printf("Test 4: %d\n", ft_recursive_power(2, -1));
	return (0);
}

/*
EDGE CASES:
Zero exponent returns one, including 0^0 by this exercise contract.

LEARNING CHECK:
1. What is the base case, and what does it return?
2. How does the result depend on the order of recursive calls?
3. Which condition prevents invalid input in ft_recursive_power()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
