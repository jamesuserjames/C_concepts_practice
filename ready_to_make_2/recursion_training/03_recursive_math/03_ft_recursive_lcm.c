#include <stdio.h>

int	ft_recursive_lcm(int a, int b)
{
	
}

/*
GOAL:
Compute least common multiple using a recursive GCD helper.

ALLOWED FUNCTIONS:
none

TODO:
1. Handle zero inputs with result zero.
2. Compute the greatest common divisor recursively.
3. Combine a, b, and the gcd without overflowing for given tests.

EXPECTED OUTPUT:
Test 1: 12
Test 2: 21
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_lcm(4, 6));
	printf("Test 2: %d\n", ft_recursive_lcm(7, 3));
	printf("Test 3: %d\n", ft_recursive_lcm(0, 5));
	return (0);
}

/*
EDGE CASES:
Inputs are non-negative; write a recursive helper rather than using libraries.

LEARNING CHECK:
1. Which mathematical property determines the recursive relation?
2. What input causes the recursion to stop?
3. Which condition prevents invalid input in ft_recursive_lcm()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
