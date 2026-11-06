#include <unistd.h>
#include <stdio.h>

void	ft_print_cube(int cube[2][2][2])
{
	
}

/*
GOAL:
Print every layer as two rows of two integers, with a blank line between layers.

TODO:
1. Loop through layers.
2. Within each layer, loop through rows and columns.
3. Print one blank line between layers.

EXPECTED OUTPUT:
Test 1:
1 2
3 4

5 6
7 8
*/

int	main(void)
{
	int	cube[2][2][2] = {
		{{1, 2}, {3, 4}},
		{{5, 6}, {7, 8}}
	};

	printf("Test 1:\n");
	fflush(stdout);
	ft_print_cube(cube);
	return (0);
}

/*
EDGE CASES:
Print exactly one blank line between layers, none after the last layer.

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
