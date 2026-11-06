#include <stdio.h>

void	ft_multiply_matrices(int a[2][2], int b[2][2], int out[2][2])
{
	
}

/*
GOAL:
Compute the standard 2x2 matrix product a × b.

TODO:
1. For each output cell, select a row of a and column of b.
2. Multiply paired elements and sum them.
3. Store each result in out.

EXPECTED OUTPUT:
Input A:
{1, 2},
{3, 4},
Input B:
{5, 6},
{7, 8},

After:
{19, 22},
{43, 50},
Test 1: 19 22
Test 2: 43 50
*/

static void	ft_test_print_matrix(int grid[2][2]);

int	main(void)
{
	int	a[2][2] = {
		{1, 2},
		{3, 4}
	};
	int	b[2][2] = {
		{5, 6},
		{7, 8}
	};
	int	out[2][2] = {{0}};

	printf("Input A:\n");
	ft_test_print_matrix(a);
	printf("Input B:\n");
	ft_test_print_matrix(b);
	ft_multiply_matrices(a, b, out);
	printf("\nAfter:\n");
	ft_test_print_matrix(out);
	printf("Test 1: %d %d\n", out[0][0], out[0][1]);
	printf("Test 2: %d %d\n", out[1][0], out[1][1]);
	return (0);
}

static void	ft_test_print_matrix(int grid[2][2])
{
	int	i;

	i = 0;
	while (i < 2)
	{
		printf("{%d, %d},\n", grid[i][0], grid[i][1]);
		i++;
	}
}

/*
EDGE CASES:
Matrix multiplication is not the same as element-wise multiplication.

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
