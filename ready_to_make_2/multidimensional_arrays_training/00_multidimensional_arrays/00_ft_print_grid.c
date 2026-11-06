#include <unistd.h>
#include <stdio.h>

void	ft_print_grid(int grid[3][3])
{
	
}

/*
GOAL:
Print all nine numbers of a 3x3 matrix in row order.

TODO:
1. Visit each row from top to bottom.
2. Visit columns from left to right.
3. Separate values with spaces and rows with newlines.

EXPECTED OUTPUT:
Test 1:
1 2 3
4 5 6
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
	ft_print_grid(grid);
	return (0);
}

/*
EDGE CASES:
Print exactly three values per row; do not print a trailing space.

LEARNING CHECK:
1. Why do two nested loops help here?
2. Which index changes fastest?
3. How many values are in grid[3][3]?
4. How are its rows laid out in memory?

NOTE:
Implement the exercise function yourself; testing helpers are provided.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
