#include <stdio.h>

void	ft_spiral_order(int grid[3][3], int out[9])
{
	
}

/*
GOAL:
Copy matrix elements into a 1D array in clockwise spiral order.

TODO:
1. Start at the top-left and move across the top row.
2. Traverse the perimeter clockwise.
3. Continue inward without revisiting cells.

EXPECTED OUTPUT:
Test 1: 1 2 3 6 9 8 7 4 5
*/

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};
	int	out[9] = {0};
	int	i;

	ft_spiral_order(grid, out);
	printf("Test 1:");
	i = 0;
	while (i < 9)
	{
		printf(" %d", out[i]);
		i++;
	}
	printf("\n");
	return (0);
}

/*
EDGE CASES:
Each cell must appear exactly once.

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
