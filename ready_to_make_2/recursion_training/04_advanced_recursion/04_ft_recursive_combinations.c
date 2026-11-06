#include <stdio.h>

int	ft_recursive_combinations(int n, int k)
{
	
}

/*
GOAL:
Count combinations of k items chosen from n distinct items.

ALLOWED FUNCTIONS:
none

TODO:
1. Return zero for invalid choices.
2. Return one for k == 0 or k == n.
3. Branch into including or excluding the last item.

EXPECTED OUTPUT:
Test 1: 10
Test 2: 1
Test 3: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_combinations(5, 2));
	printf("Test 2: %d\n", ft_recursive_combinations(4, 4));
	printf("Test 3: %d\n", ft_recursive_combinations(3, 5));
	return (0);
}

/*
EDGE CASES:
Related to binomial coefficients; emphasize the choose/skip decision tree.

LEARNING CHECK:
1. How does the recursive decomposition differ from a simple loop?
2. Where does the algorithm branch or combine smaller results?
3. Which condition prevents invalid input in ft_recursive_combinations()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
