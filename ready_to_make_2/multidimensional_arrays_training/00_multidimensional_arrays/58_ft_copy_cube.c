#include <stdio.h>

void	ft_copy_cube(int src[2][2][2], int dest[2][2][2])
{
	
}

/*
GOAL:
Copy all eight elements from one cube to another.

TODO:
1. Traverse layers, rows, and columns.
2. Copy values into matching destination coordinates.
3. Leave the source unchanged.

EXPECTED OUTPUT:
Test 1: 1 8
Test 2: 1
*/

int	main(void)
{
	int	cube[2][2][2] = {
			{{1, 2}, {3, 4}},
			{{5, 6}, {7, 8}}
		};
	int	dest[2][2][2] = {{{0}}};

	ft_copy_cube(cube, dest);
	
	printf("Test 1: %d %d\n", dest[0][0][0], dest[1][1][1]);
	
	dest[0][0][0] = 99;
	
	printf("Test 2: %d\n", cube[0][0][0]);
	return (0);
}

/*
EDGE CASES:
The destination is independent storage; no aliasing is intended.

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
