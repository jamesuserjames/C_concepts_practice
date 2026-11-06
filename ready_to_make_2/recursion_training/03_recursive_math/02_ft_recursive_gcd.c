#include <stdio.h>

int	ft_recursive_gcd(int a, int b)
{
	
}

/*
GOAL:
Find the greatest common divisor by the Euclidean algorithm.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop when b becomes zero.
2. Use the remainder a % b.
3. Recurse on b and the remainder.

EXPECTED OUTPUT:
Test 1: 4
Test 2: 1
Test 3: 5
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_gcd(12, 8));
	printf("Test 2: %d\n", ft_recursive_gcd(7, 3));
	printf("Test 3: %d\n", ft_recursive_gcd(5, 0));
	return (0);
}

/*
EDGE CASES:
Inputs are non-negative; gcd(0,0) is excluded.

LEARNING CHECK:
1. Which mathematical property determines the recursive relation?
2. What input causes the recursion to stop?
3. Which condition prevents invalid input in ft_recursive_gcd()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
