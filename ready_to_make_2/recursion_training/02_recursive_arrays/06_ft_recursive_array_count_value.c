#include <stdio.h>

int	ft_recursive_array_count_value(const int *arr, int size, int value)
{
	
}

/*
GOAL:
Count occurrences of a target integer in the array.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop on zero size.
2. Check whether the first element matches value.
3. Recurse on the remainder.

EXPECTED OUTPUT:
Test 1: 3
Test 2: 0
Test 3: 0
*/

int	main(void)
{
	int values[5] = {2, 1, 2, 3, 2};

	printf("Test 1: %d\n", ft_recursive_array_count_value(values, 5, 2));
	printf("Test 2: %d\n", ft_recursive_array_count_value(values, 5, 7));
	printf("Test 3: %d\n", ft_recursive_array_count_value(values, 0, 2));
	return (0);
}

/*
EDGE CASES:
Target may be negative; an empty range contains no matches.

LEARNING CHECK:
1. How do you advance a pointer without losing array bounds?
2. How is the untouched part of the array represented recursively?
3. Which condition prevents invalid input in ft_recursive_array_count_value()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
