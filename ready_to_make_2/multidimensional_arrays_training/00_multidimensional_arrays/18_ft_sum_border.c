#include <stdio.h>

int	ft_sum_border(int grid[3][3])
{
	
}

/*
GOAL:
Return the sum of the outer border without counting corners twice.

TODO:
1. Check if a cell lies on the first or last row.
2. Also include the first or last column.
3. Sum each border cell once.

EXPECTED OUTPUT:
Test 1: 40
Test 2: 40
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1: %d\n", ft_sum_border(grid));
	grid[1][1] = 999;
	printf("Test 2: %d\n", ft_sum_border(grid));
	return (0);
}

/*
EDGE CASES:
The center cell is excluded; each corner counts exactly once.

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
