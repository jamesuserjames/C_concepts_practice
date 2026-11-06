#include <stdio.h>

int	ft_recursive_array_sum(const int *arr, int size)
{
	
}

/*
GOAL:
Return the sum of the first size integers of an array recursively.

ALLOWED FUNCTIONS:
none

TODO:
1. Return zero for an empty array.
2. Add the first element.
3. Recurse with arr + 1 and size - 1.

EXPECTED OUTPUT:
Test 1: 10
Test 2: 7
Test 3: 0
*/

int	main(void)
{
	int values[4] = {1, 2, 3, 4};
	int single[1] = {7};

	printf("Test 1: %d\n", ft_recursive_array_sum(values, 4));
	printf("Test 2: %d\n", ft_recursive_array_sum(single, 1));
	printf("Test 3: %d\n", ft_recursive_array_sum(values, 0));
	return (0);
}

/*
EDGE CASES:
Size must not be negative; sums must fit in int.

LEARNING CHECK:
1. How do you advance a pointer without losing array bounds?
2. How is the untouched part of the array represented recursively?
3. Which condition prevents invalid input in ft_recursive_array_sum()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
