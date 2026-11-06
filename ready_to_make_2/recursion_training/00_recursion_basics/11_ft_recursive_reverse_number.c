#include <stdio.h>

int	ft_recursive_reverse_number(int n, int result)
{
	
}

/*
GOAL:
Reverse decimal digits by carrying the partially constructed result.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop when n becomes zero.
2. Append the last digit of n to result.
3. Recurse with the remaining digits.

EXPECTED OUTPUT:
Test 1: 4321
Test 2: 21
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_reverse_number(1234, 0));
	printf("Test 2: %d\n", ft_recursive_reverse_number(120, 0));
	printf("Test 3: %d\n", ft_recursive_reverse_number(0, 0));
	return (0);
}

/*
EDGE CASES:
Inputs are non-negative and small enough not to overflow the result.

LEARNING CHECK:
1. What is the base case, and what does it return?
2. How does the result depend on the order of recursive calls?
3. Which condition prevents invalid input in ft_recursive_reverse_number()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
