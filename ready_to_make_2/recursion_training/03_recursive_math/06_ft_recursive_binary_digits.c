#include <stdio.h>

int	ft_recursive_binary_digits(int n)
{
	
}

/*
GOAL:
Return a non-negative integer whose decimal digits spell n in binary.

ALLOWED FUNCTIONS:
none

TODO:
1. Return n when n is zero or one.
2. Recursively convert n / 2.
3. Append remainder n % 2 to the decimal-digit result.

EXPECTED OUTPUT:
Test 1: 101
Test 2: 1010
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_binary_digits(5));
	printf("Test 2: %d\n", ft_recursive_binary_digits(10));
	printf("Test 3: %d\n", ft_recursive_binary_digits(0));
	return (0);
}

/*
EDGE CASES:
This is a numeric representation, not printed binary; test values avoid overflow.

LEARNING CHECK:
1. Which mathematical property determines the recursive relation?
2. What input causes the recursion to stop?
3. Which condition prevents invalid input in ft_recursive_binary_digits()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
