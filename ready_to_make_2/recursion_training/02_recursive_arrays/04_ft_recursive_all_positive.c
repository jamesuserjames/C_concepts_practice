#include <stdio.h>

int	ft_recursive_all_positive(const int *arr, int size)
{
	
}

/*
GOAL:
Return one if all array elements are strictly positive.

ALLOWED FUNCTIONS:
none

TODO:
1. An empty array returns one.
2. Return zero if the first element is non-positive.
3. Recursively verify the remaining elements.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
Test 3: 1
*/

int	main(void)
{
	int positive[3] = {1, 2, 3};
	int mixed[3] = {1, -2, 3};

	printf("Test 1: %d\n", ft_recursive_all_positive(positive, 3));
	printf("Test 2: %d\n", ft_recursive_all_positive(mixed, 3));
	printf("Test 3: %d\n", ft_recursive_all_positive(positive, 0));
	return (0);
}

/*
EDGE CASES:
Empty arrays satisfy the all-positive condition vacuously.

LEARNING CHECK:
1. How do you advance a pointer without losing array bounds?
2. How is the untouched part of the array represented recursively?
3. Which condition prevents invalid input in ft_recursive_all_positive()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
