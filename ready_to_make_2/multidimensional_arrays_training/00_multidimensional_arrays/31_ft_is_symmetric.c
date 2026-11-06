#include <stdio.h>

int	ft_is_symmetric(int grid[3][3])
{
	
}

/*
GOAL:
Check whether the matrix equals its transpose.

TODO:
1. Compare mirrored positions across the main diagonal.
2. Find any pair that differs.
3. Return 1 only when all corresponding pairs match.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{2, 4, 5},
		{3, 5, 6}
	};

	printf("Test 1: %d\n", ft_is_symmetric(grid));
	grid[2][0] = -1;
	printf("Test 2: %d\n", ft_is_symmetric(grid));
	return (0);
}

/*
EDGE CASES:
Diagonal elements do not require a matching distinct cell.

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
