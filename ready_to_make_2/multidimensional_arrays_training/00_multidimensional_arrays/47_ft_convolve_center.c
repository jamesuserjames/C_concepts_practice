#include <stdio.h>

int	ft_convolve_center(int grid[3][3], int kernel[3][3])
{
	
}

/*
GOAL:
Compute the weighted sum of a 3x3 grid and a 3x3 kernel.

TODO:
1. Multiply cells at matching coordinates.
2. Add all nine products.
3. Return the weighted sum.

EXPECTED OUTPUT:
Test 1: 5
Test 2: 45
*/

static void	ft_set_kernel_ones(int kernel[3][3]);

int	main(void)
{
	int	grid[3][3] = {
		{1, 2, 3},
		{4, 5, 6},
		{7, 8, 9}
	};
	int	kernel[3][3] = {
	{0, 0, 0}, {0, 1, 0}, {0, 0, 0}
	};

	printf("Test 1: %d\n", ft_convolve_center(grid, kernel));
	ft_set_kernel_ones(kernel);
	printf("Test 2: %d\n", ft_convolve_center(grid, kernel));
	return (0);
}

static void	ft_set_kernel_ones(int kernel[3][3])
{
	int	row;
	int	col;

	row = 0;
	while (row < 3)
	{
		col = 0;
		while (col < 3)
			kernel[row][col++] = 1;
		row++;
	}
}

/*
EDGE CASES:
This computes one output value, not full padded-image convolution.

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
