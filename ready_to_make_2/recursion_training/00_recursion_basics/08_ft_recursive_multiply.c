#include <stdio.h>

int	ft_recursive_multiply(int a, int b)
{
	
}

/*
GOAL:
Multiply two non-negative integers using recursive addition.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop when b equals zero.
2. Add one copy of a.
3. Recurse using b - 1 rather than the multiplication operator.

EXPECTED OUTPUT:
Test 1: 12
Test 2: 7
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_multiply(4, 3));
	printf("Test 2: %d\n", ft_recursive_multiply(7, 1));
	printf("Test 3: %d\n", ft_recursive_multiply(5, 0));
	return (0);
}

/*
EDGE CASES:
The contract uses non-negative inputs only; avoid overflow.

LEARNING CHECK:
1. What is the base case, and what does it return?
2. How does the result depend on the order of recursive calls?
3. Which condition prevents invalid input in ft_recursive_multiply()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
