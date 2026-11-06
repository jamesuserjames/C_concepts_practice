#include <stdio.h>

int	ft_recursive_count_up_sum(int current, int max)
{
	
}

/*
GOAL:
Sum the inclusive range from current to max; return zero for an empty range.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop with zero if current exceeds max.
2. Add current to the sum of the remaining range.
3. Increment current during recursion.

EXPECTED OUTPUT:
Test 1: 15
Test 2: 3
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_count_up_sum(1, 5));
	printf("Test 2: %d\n", ft_recursive_count_up_sum(3, 3));
	printf("Test 3: %d\n", ft_recursive_count_up_sum(5, 3));
	return (0);
}

/*
EDGE CASES:
An inverted range returns zero; avoid ranges whose sum overflows int.

LEARNING CHECK:
1. What is the base case, and what does it return?
2. How does the result depend on the order of recursive calls?
3. Which condition prevents invalid input in ft_recursive_count_up_sum()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
