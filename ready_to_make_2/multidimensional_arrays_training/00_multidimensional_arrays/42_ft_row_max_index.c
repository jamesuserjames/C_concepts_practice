#include <stdio.h>

int	ft_row_max_index(int grid[3][3], int row)
{
	
}

/*
GOAL:
Return the column index of the first maximum in the chosen row.

TODO:
1. Start with column zero as the best index.
2. Compare each subsequent cell.
3. Return the earliest maximum index.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

int	main(void)
{
	int	grid[3][3] = {
		{3, 9, 9},
		{8, 2, 1},
		{1, 2, 3}
	};

	printf("Test 1: %d\n", ft_row_max_index(grid, 0));
	printf("Test 2: %d\n", ft_row_max_index(grid, 1));
	return (0);
}

/*
EDGE CASES:
Ties must select the first maximum.

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
