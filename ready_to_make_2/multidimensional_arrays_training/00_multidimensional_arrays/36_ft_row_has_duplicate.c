#include <stdio.h>

int	ft_row_has_duplicate(int grid[3][3], int row)
{
	
}

/*
GOAL:
Return 1 if any value appears twice in the selected row.

TODO:
1. Compare each element with later elements in the same row.
2. Return 1 at the first duplicate.
3. Return 0 if all elements differ.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 1},
		{3, 4, 5},
		{6, 7, 8}
	};

	printf("Test 1: %d\n", ft_row_has_duplicate(grid, 0));
	printf("Test 2: %d\n", ft_row_has_duplicate(grid, 1));
	return (0);
}

/*
EDGE CASES:
Do not compare an element against itself.

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
