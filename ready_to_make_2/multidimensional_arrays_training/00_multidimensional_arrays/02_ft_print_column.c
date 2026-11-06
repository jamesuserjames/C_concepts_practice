#include <unistd.h>
#include <stdio.h>

void	ft_print_column(int grid[3][3], int col)
{
	
}

/*
GOAL:
Print one column of a 3x3 matrix, one value per line.

TODO:
1. Hold col constant.
2. Visit rows from top to bottom.
3. Print each number followed by a newline.

EXPECTED OUTPUT:
Test 1:
2
5
8
Test 2:
3
6
9
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
	ft_print_column(grid, 1);
	printf("Test 2:\n");
	fflush(stdout);
	ft_print_column(grid, 2);
	return (0);
}

/*
EDGE CASES:
Assume col is within 0 to 2.

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
