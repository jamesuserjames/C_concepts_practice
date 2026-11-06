#include <stdio.h>

void	ft_cube_set(int cube[2][2][2], int layer, int row, int col, int value)
{
	
}

/*
GOAL:
Change one selected cube cell without modifying another.

TODO:
1. Select layer, row, and column.
2. Assign the new value.
3. Preserve all other cells.

EXPECTED OUTPUT:
Test 1: 42
Test 2: 1
*/

int	main(void)
{
	int	cube[2][2][2] = {
			{{1, 2}, {3, 4}},
			{{5, 6}, {7, 8}}
		};

	ft_cube_set(cube, 1, 1, 0, 42);
	
	printf("Test 1: %d\n", cube[1][1][0]);
	
	printf("Test 2: %d\n", cube[0][0][0]);
	return (0);
}

/*
EDGE CASES:
A 3D array is indexed with three bracket pairs.

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
