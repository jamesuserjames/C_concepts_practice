#include <stdio.h>

int	ft_recursive_collatz_steps(unsigned int n)
{
	
}

/*
GOAL:
Count steps needed for a positive Collatz sequence to reach one.

ALLOWED FUNCTIONS:
none

TODO:
1. Return zero when n equals one.
2. For even n, recurse on n / 2.
3. For odd n, recurse on 3*n + 1, counting each step.

EXPECTED OUTPUT:
Test 1: 8
Test 2: 1
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_collatz_steps(6));
	printf("Test 2: %d\n", ft_recursive_collatz_steps(2));
	printf("Test 3: %d\n", ft_recursive_collatz_steps(1));
	return (0);
}

/*
EDGE CASES:
Input must be positive; test numbers avoid overflow in 3*n+1.

LEARNING CHECK:
1. Which mathematical property determines the recursive relation?
2. What input causes the recursion to stop?
3. Which condition prevents invalid input in ft_recursive_collatz_steps()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
