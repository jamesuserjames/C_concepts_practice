#include <stdio.h>

int	ft_min_grid(int grid[3][3])
{
	
}

/*
GOAL:
Find the smallest element in a 3x3 grid.

TODO:
1. Initialize the minimum from the first cell.
2. Visit every element.
3. Update the minimum when needed.

EXPECTED OUTPUT:
Test 1: 1
Test 2: -8
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1: %d\n", ft_min_grid(grid));
	grid[2][1] = -8;
	printf("Test 2: %d\n", ft_min_grid(grid));
	return (0);
}

/*
EDGE CASES:
The smallest element may be negative or appear in the last row.

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
