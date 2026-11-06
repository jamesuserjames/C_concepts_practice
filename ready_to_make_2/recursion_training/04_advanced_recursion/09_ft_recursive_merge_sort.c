#include <stdio.h>

void	ft_recursive_merge_sort(int *arr, int left, int right)
{
	
}

/*
GOAL:
Sort an inclusive array range ascending using recursive merge sort.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop at ranges of zero or one element.
2. Split the range and recursively sort both halves.
3. Merge the sorted halves using a temporary buffer.

EXPECTED OUTPUT:
Test 1: -1 0 2 3 3 5
Test 2: 7
*/

int	main(void)
{
	int values[6] = {5, -1, 3, 3, 0, 2};
	int single[1] = {7};

	ft_recursive_merge_sort(values, 0, 5);
	printf("Test 1: %d %d %d %d %d %d\n", values[0], values[1],
		values[2], values[3], values[4], values[5]);

	ft_recursive_merge_sort(single, 0, 0);
	printf("Test 2: %d\n", single[0]);
	return (0);
}

/*
EDGE CASES:
Use one or more self-written helpers; only valid ranges are supplied.

LEARNING CHECK:
1. How does the recursive decomposition differ from a simple loop?
2. Where does the algorithm branch or combine smaller results?
3. Which condition prevents invalid input in ft_recursive_merge_sort()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
