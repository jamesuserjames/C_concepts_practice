#include <stdio.h>

int	ft_recursive_sum_odd(int n)
{
	
}

/*
GOAL:
Sum all odd positive integers from one through n.

ALLOWED FUNCTIONS:
none

TODO:
1. Return zero when n is below one.
2. Include n only when it is odd.
3. Recurse with n - 1.

EXPECTED OUTPUT:
Test 1: 16
Test 2: 9
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_sum_odd(7));
	printf("Test 2: %d\n", ft_recursive_sum_odd(6));
	printf("Test 3: %d\n", ft_recursive_sum_odd(0));
	return (0);
}

/*
EDGE CASES:
Zero or negative input has no positive odd values.

LEARNING CHECK:
1. What is the base case, and what does it return?
2. How does the result depend on the order of recursive calls?
3. Which condition prevents invalid input in ft_recursive_sum_odd()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
