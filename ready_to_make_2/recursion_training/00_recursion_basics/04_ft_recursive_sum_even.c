#include <stdio.h>

int	ft_recursive_sum_even(int n)
{
	
}

/*
GOAL:
Sum all even non-negative integers from zero through n.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop when n reaches zero or less.
2. Decide whether n contributes to the sum.
3. Recurse with n - 1.

EXPECTED OUTPUT:
Test 1: 12
Test 2: 6
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_sum_even(6));
	printf("Test 2: %d\n", ft_recursive_sum_even(5));
	printf("Test 3: %d\n", ft_recursive_sum_even(0));
	return (0);
}

/*
EDGE CASES:
Negative n returns zero; large sums may overflow int.

LEARNING CHECK:
1. What is the base case, and what does it return?
2. How does the result depend on the order of recursive calls?
3. Which condition prevents invalid input in ft_recursive_sum_even()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
