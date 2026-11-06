#include <stdio.h>

int	ft_is_diagonal(int grid[3][3])
{
	
}

/*
GOAL:
Return 1 when every off-diagonal element is zero.

TODO:
1. Examine all cells.
2. Ignore values where row equals column.
3. Reject a nonzero off-diagonal value.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

int	main(void)
{
	int	grid[3][3] = {
		{2, 0, 0},
		{0, -3, 0},
		{0, 0, 5}
	};

	printf("Test 1: %d\n", ft_is_diagonal(grid));
	grid[1][2] = 1;
	printf("Test 2: %d\n", ft_is_diagonal(grid));
	return (0);
}

/*
EDGE CASES:
Diagonal elements may be any integers, including zero.

LEARNING CHECK:
1. What does each array index represent?
2. Which dimension should the loop traverse?
3. What happens at the first or last valid index?
4. How would this operation help in a larger matrix algorithm?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
