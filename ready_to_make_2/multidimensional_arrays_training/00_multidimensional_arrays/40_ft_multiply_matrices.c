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
Test 1: 19 22
Test 2: 43 50
*/

int	main(void)
{
	int	a[2][2] = {{1, 2}, {3, 4}};
	int	b[2][2] = {{5, 6}, {7, 8}};
	int	out[2][2] = {{0}};

	ft_multiply_matrices(a, b, out);
	
	printf("Test 1: %d %d\n", out[0][0], out[0][1]);
	
	printf("Test 2: %d %d\n", out[1][0], out[1][1]);
	return (0);
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
The function is intentionally empty. Implement it yourself.
Do not run the test before implementing a non-void function.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
