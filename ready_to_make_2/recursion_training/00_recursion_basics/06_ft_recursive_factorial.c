#include <stdio.h>

int	ft_recursive_factorial(int nb)
{
	
}

/*
GOAL:
Compute nb! using recursion; return zero for negative inputs.

ALLOWED FUNCTIONS:
none

TODO:
1. Reject negative input with zero.
2. Return one for factorial of zero or one.
3. Multiply nb by factorial of nb - 1.

EXPECTED OUTPUT:
Test 1: 120
Test 2: 1
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_factorial(5));
	printf("Test 2: %d\n", ft_recursive_factorial(0));
	printf("Test 3: %d\n", ft_recursive_factorial(-2));
	return (0);
}

/*
EDGE CASES:
Tests stay within 0..12 to avoid signed int overflow.

LEARNING CHECK:
1. What is the base case, and what does it return?
2. How does the result depend on the order of recursive calls?
3. Which condition prevents invalid input in ft_recursive_factorial()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
