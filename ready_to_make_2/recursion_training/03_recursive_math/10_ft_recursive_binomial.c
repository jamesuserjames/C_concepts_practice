#include <stdio.h>

int	ft_recursive_binomial(int n, int k)
{
	
}

/*
GOAL:
Compute the binomial coefficient C(n,k) with Pascal recursion.

ALLOWED FUNCTIONS:
none

TODO:
1. Return zero when k < 0 or k > n.
2. Return one for k == 0 or k == n.
3. Add both branches from the previous row.

EXPECTED OUTPUT:
Test 1: 10
Test 2: 1
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_binomial(5, 2));
	printf("Test 2: %d\n", ft_recursive_binomial(6, 0));
	printf("Test 3: %d\n", ft_recursive_binomial(4, 5));
	return (0);
}

/*
EDGE CASES:
Use n >= 0, small inputs, and well-defined out-of-range k.

LEARNING CHECK:
1. Which mathematical property determines the recursive relation?
2. What input causes the recursion to stop?
3. Which condition prevents invalid input in ft_recursive_binomial()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
