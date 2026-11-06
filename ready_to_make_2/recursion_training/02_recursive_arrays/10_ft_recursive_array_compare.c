#include <stdio.h>

int	ft_recursive_array_compare(const int *a, const int *b, int size)
{
	
}

/*
GOAL:
Return one if two arrays contain equal entries at all positions.

ALLOWED FUNCTIONS:
none

TODO:
1. Return one for zero size.
2. Return zero at the first mismatch.
3. Compare the remaining elements recursively.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
Test 3: 1
*/

int	main(void)
{
	int first[3] = {1, 2, 3};
	int same[3] = {1, 2, 3};
	int other[3] = {1, 2, 4};

	printf("Test 1: %d\n", ft_recursive_array_compare(first, same, 3));
	printf("Test 2: %d\n", ft_recursive_array_compare(first, other, 3));
	printf("Test 3: %d\n", ft_recursive_array_compare(first, other, 0));
	return (0);
}

/*
EDGE CASES:
An empty comparison is equal; only read positions below size.

LEARNING CHECK:
1. How do you advance a pointer without losing array bounds?
2. How is the untouched part of the array represented recursively?
3. Which condition prevents invalid input in ft_recursive_array_compare()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
