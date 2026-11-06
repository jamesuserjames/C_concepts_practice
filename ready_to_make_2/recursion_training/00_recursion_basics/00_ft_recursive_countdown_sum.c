#include <stdio.h>

int	ft_recursive_countdown_sum(int n)
{
	
}

/*
GOAL:
Return the sum n + (n - 1) + ... + 0 for non-negative n.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop when n reaches zero.
2. Add the current value to the result of a smaller problem.
3. Make each recursive call approach the base case.

EXPECTED OUTPUT:
Test 1: 15
Test 2: 1
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_countdown_sum(5));
	printf("Test 2: %d\n", ft_recursive_countdown_sum(1));
	printf("Test 3: %d\n", ft_recursive_countdown_sum(0));
	return (0);
}

/*
EDGE CASES:
Accept non-negative n; do not recurse below zero.

LEARNING CHECK:
1. What is the base case, and what does it return?
2. How does the result depend on the order of recursive calls?
3. Which condition prevents invalid input in ft_recursive_countdown_sum()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
