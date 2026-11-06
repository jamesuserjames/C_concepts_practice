#include <stdio.h>

int	ft_recursive_array_count_positive(const int *arr, int size)
{
	
}

/*
GOAL:
Count array entries strictly greater than zero.

ALLOWED FUNCTIONS:
none

TODO:
1. Return zero for an empty array.
2. Check whether arr[0] is positive.
3. Count matches in the remaining elements.

EXPECTED OUTPUT:
Test 1: 2
Test 2: 0
Test 3: 0
*/

int	main(void)
{
	int values[5] = {-1, 2, 0, 4, -5};
	int single[1] = {-7};

	printf("Test 1: %d\n", ft_recursive_array_count_positive(values, 5));
	printf("Test 2: %d\n", ft_recursive_array_count_positive(single, 1));
	printf("Test 3: %d\n", ft_recursive_array_count_positive(values, 0));
	return (0);
}

/*
EDGE CASES:
Zero does not count as positive.

LEARNING CHECK:
1. How do you advance a pointer without losing array bounds?
2. How is the untouched part of the array represented recursively?
3. Which condition prevents invalid input in ft_recursive_array_count_positive()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
