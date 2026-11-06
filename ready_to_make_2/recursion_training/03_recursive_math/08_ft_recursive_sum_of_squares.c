#include <stdio.h>

int	ft_recursive_sum_of_squares(int n)
{
	
}

/*
GOAL:
Return 1^2 + 2^2 + ... + n^2 for non-negative n.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop at n <= 0.
2. Square the current n.
3. Add the square to a recursive smaller sum.

EXPECTED OUTPUT:
Test 1: 14
Test 2: 1
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_sum_of_squares(3));
	printf("Test 2: %d\n", ft_recursive_sum_of_squares(1));
	printf("Test 3: %d\n", ft_recursive_sum_of_squares(0));
	return (0);
}

/*
EDGE CASES:
Use small n to stay in the int range.

LEARNING CHECK:
1. Which mathematical property determines the recursive relation?
2. What input causes the recursion to stop?
3. Which condition prevents invalid input in ft_recursive_sum_of_squares()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
