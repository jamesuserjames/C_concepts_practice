#include <stdio.h>

int	ft_sum_column(int grid[3][3], int col)
{
	
}

/*
GOAL:
Return the sum of a selected column.

TODO:
1. Fix the column index.
2. Visit each row.
3. Accumulate the values.

EXPECTED OUTPUT:
Test 1: 12
Test 2: 18
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1: %d\n", ft_sum_column(grid, 0));
	printf("Test 2: %d\n", ft_sum_column(grid, 2));
	return (0);
}

/*
EDGE CASES:
The caller passes a valid column index.

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
