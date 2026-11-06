#include <stdio.h>

int	ft_recursive_subsets(int n)
{
	
}

/*
GOAL:
Count subsets of n distinct elements using two recursive branches per item.

ALLOWED FUNCTIONS:
none

TODO:
1. Return one for the empty set when n == 0.
2. Branch into taking or skipping an element.
3. Combine both recursive counts for n - 1.

EXPECTED OUTPUT:
Test 1: 8
Test 2: 2
Test 3: 1
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_subsets(3));
	printf("Test 2: %d\n", ft_recursive_subsets(1));
	printf("Test 3: %d\n", ft_recursive_subsets(0));
	return (0);
}

/*
EDGE CASES:
Use n >= 0 and <= 20 to avoid int overflow; count, do not enumerate.

LEARNING CHECK:
1. How does the recursive decomposition differ from a simple loop?
2. Where does the algorithm branch or combine smaller results?
3. Which condition prevents invalid input in ft_recursive_subsets()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
