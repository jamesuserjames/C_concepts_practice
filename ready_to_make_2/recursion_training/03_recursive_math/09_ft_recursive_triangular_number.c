#include <stdio.h>

int	ft_recursive_triangular_number(int n)
{
	
}

/*
GOAL:
Compute the nth triangular number using recursive addition.

ALLOWED FUNCTIONS:
none

TODO:
1. Return zero at n <= 0.
2. Add n to the previous triangular number.
3. Make the recursive argument smaller.

EXPECTED OUTPUT:
Test 1: 21
Test 2: 1
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_triangular_number(6));
	printf("Test 2: %d\n", ft_recursive_triangular_number(1));
	printf("Test 3: %d\n", ft_recursive_triangular_number(0));
	return (0);
}

/*
EDGE CASES:
Compare with countdown_sum: the mathematics match, but context differs.

LEARNING CHECK:
1. Which mathematical property determines the recursive relation?
2. What input causes the recursion to stop?
3. Which condition prevents invalid input in ft_recursive_triangular_number()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
