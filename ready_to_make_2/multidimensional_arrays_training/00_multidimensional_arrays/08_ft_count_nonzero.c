#include <stdio.h>

int	ft_count_nonzero(int grid[3][3])
{
	
}

/*
GOAL:
Count how many matrix elements are not zero.

TODO:
1. Initialize a counter.
2. Inspect each cell.
3. Increment for each nonzero element.

EXPECTED OUTPUT:
Test 1: 9
Test 2: 7
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1: %d\n", ft_count_nonzero(grid));
	grid[0][0] = 0;
	grid[2][2] = 0;
	printf("Test 2: %d\n", ft_count_nonzero(grid));
	return (0);
}

/*
EDGE CASES:
Zero is excluded; negative values would still count.

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
