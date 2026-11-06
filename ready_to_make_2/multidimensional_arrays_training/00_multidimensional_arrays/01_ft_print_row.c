#include <unistd.h>
#include <stdio.h>

void	ft_print_row(int grid[3][3], int row)
{
	
}

/*
GOAL:
Print one row of a 3x3 integer matrix on a single line.

TODO:
1. Hold row constant.
2. Visit the three columns.
3. Print spaces between values and one final newline.

EXPECTED OUTPUT:
Test 1:
4 5 6
Test 2:
7 8 9
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};

	printf("Test 1:\n");
	fflush(stdout);
	ft_print_row(grid, 1);
	printf("Test 2:\n");
	fflush(stdout);
	ft_print_row(grid, 2);
	return (0);
}

/*
EDGE CASES:
Assume row is 0, 1, or 2; avoid a trailing space.

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
