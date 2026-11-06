#include <unistd.h>
#include <stdio.h>

void	ft_print_rectangle(int grid[2][3])
{
	
}

/*
GOAL:
Print a rectangular 2x3 matrix, respecting different row and column counts.

TODO:
1. Loop twice over rows.
2. Loop three times over columns.
3. Format each row on one line.

EXPECTED OUTPUT:
Test 1:
1 2 3
4 5 6
*/

int	main(void)
{
	int	grid[2][3] = {
		{1, 2, 3},
		{4, 5, 6}
	};

	printf("Test 1:\n");
	fflush(stdout);
	ft_print_rectangle(grid);
	return (0);
}

/*
EDGE CASES:
The number of columns differs from the number of rows.

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
