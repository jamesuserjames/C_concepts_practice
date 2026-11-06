#include <stdio.h>

int	ft_recursive_is_power_of_two(int n)
{
	
}

/*
GOAL:
Return one if positive n is an integer power of two.

ALLOWED FUNCTIONS:
none

TODO:
1. Return one for n == 1.
2. Reject zero, negatives, and odd numbers greater than one.
3. Recurse with n / 2.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
Test 3: 1
Test 4: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_is_power_of_two(8));
	printf("Test 2: %d\n", ft_recursive_is_power_of_two(7));
	printf("Test 3: %d\n", ft_recursive_is_power_of_two(1));
	printf("Test 4: %d\n", ft_recursive_is_power_of_two(0));
	return (0);
}

/*
EDGE CASES:
One is 2^0; zero and negative values are not powers of two.

LEARNING CHECK:
1. Which mathematical property determines the recursive relation?
2. What input causes the recursion to stop?
3. Which condition prevents invalid input in ft_recursive_is_power_of_two()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
