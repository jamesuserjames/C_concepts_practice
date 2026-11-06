#include <stdio.h>

void	ft_recursive_array_copy(int *dest, const int *src, int size)
{
	
}

/*
GOAL:
Copy exactly size elements to a separate destination recursively.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop when size is zero.
2. Copy the current element.
3. Advance both pointers and reduce size.

EXPECTED OUTPUT:
Test 1: 8 -2 0 5
Test 2: 8
*/

int	main(void)
{
	int source[4] = {8, -2, 0, 5};
	int dest[4] = {0};

	ft_recursive_array_copy(dest, source, 4);
	printf("Test 1: %d %d %d %d\n", dest[0], dest[1], dest[2], dest[3]);

	source[0] = 99;
	printf("Test 2: %d\n", dest[0]);
	return (0);
}

/*
EDGE CASES:
Source and destination are disjoint; copies must not alias unexpectedly.

LEARNING CHECK:
1. How do you advance a pointer without losing array bounds?
2. How is the untouched part of the array represented recursively?
3. Which condition prevents invalid input in ft_recursive_array_copy()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
