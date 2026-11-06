#include <stdio.h>

int	ft_recursive_permutations(int n)
{
	
}

/*
GOAL:
Count permutations by explicitly exploring unused choices with recursive backtracking (not by factorial multiplication).

ALLOWED FUNCTIONS:
none

TODO:
1. Create a local used[] array initialized to zero.
2. For each unused item, mark it and recursively choose the next item.
3. Unmark the item when returning and count complete arrangements.

EXPECTED OUTPUT:
Test 1: 24
Test 2: 2
Test 3: 1
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_recursive_permutations(4));
	printf("Test 2: %d\n", ft_recursive_permutations(2));
	printf("Test 3: %d\n", ft_recursive_permutations(0));
	return (0);
}

/*
EDGE CASES:
Only 0 <= n <= 8; use a small test helper for the visited-state recursion.

LEARNING CHECK:
1. How does the recursive decomposition differ from a simple loop?
2. Where does the algorithm branch or combine smaller results?
3. Which condition prevents invalid input in ft_recursive_permutations()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
