#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")" || exit 1

cat > 00_ft_recursive_array_sum.c <<'EOF'
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
EOF

cat > 01_ft_recursive_array_count_positive.c <<'EOF'
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
EOF

cat > 02_ft_recursive_array_max.c <<'EOF'
#include <stdio.h>

int	ft_recursive_array_max(const int *arr, int size)
{
	
}

/*
GOAL:
Return the greatest array element; return zero when size is zero.

ALLOWED FUNCTIONS:
none

TODO:
1. Handle zero-sized input separately.
2. Return arr[0] for a single element.
3. Compare arr[0] with the maximum of the remainder.

EXPECTED OUTPUT:
Test 1: 9
Test 2: -4
Test 3: 0
*/

int	main(void)
{
	int values[4] = {3, 9, 2, 5};
	int single[1] = {-4};

	printf("Test 1: %d\n", ft_recursive_array_max(values, 4));
	printf("Test 2: %d\n", ft_recursive_array_max(single, 1));
	printf("Test 3: %d\n", ft_recursive_array_max(values, 0));
	return (0);
}

/*
EDGE CASES:
The zero-sized return is a specified sentinel, not a mathematical maximum.

LEARNING CHECK:
1. How do you advance a pointer without losing array bounds?
2. How is the untouched part of the array represented recursively?
3. Which condition prevents invalid input in ft_recursive_array_max()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 03_ft_recursive_min_array.c <<'EOF'
#include <stdio.h>

int	ft_recursive_min_array(const int *arr, int size)
{
	
}

/*
GOAL:
Return the smallest array element; return zero when size is zero.

ALLOWED FUNCTIONS:
none

TODO:
1. Handle an empty range.
2. Return the first value when size is one.
3. Compare it with the recursive minimum of the rest.

EXPECTED OUTPUT:
Test 1: 1
Test 2: -3
Test 3: 0
*/

int	main(void)
{
	int values[4] = {4, 2, 9, 1};
	int single[1] = {-3};

	printf("Test 1: %d\n", ft_recursive_min_array(values, 4));
	printf("Test 2: %d\n", ft_recursive_min_array(single, 1));
	printf("Test 3: %d\n", ft_recursive_min_array(values, 0));
	return (0);
}

/*
EDGE CASES:
Do not compare against a fabricated zero for nonempty negative arrays.

LEARNING CHECK:
1. How do you advance a pointer without losing array bounds?
2. How is the untouched part of the array represented recursively?
3. Which condition prevents invalid input in ft_recursive_min_array()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 04_ft_recursive_all_positive.c <<'EOF'
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
EOF

cat > 05_ft_recursive_is_sorted.c <<'EOF'
#include <stdio.h>

int	ft_recursive_is_sorted(const int *arr, int size)
{
	
}

/*
GOAL:
Return one when the array is sorted in nondecreasing order.

ALLOWED FUNCTIONS:
none

TODO:
1. Return one for zero or one element.
2. Compare adjacent elements.
3. Recurse with the next pair when ordered.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
Test 3: 1
*/

int	main(void)
{
	int ordered[4] = {1, 2, 2, 4};
	int unordered[4] = {1, 3, 2, 4};

	printf("Test 1: %d\n", ft_recursive_is_sorted(ordered, 4));
	printf("Test 2: %d\n", ft_recursive_is_sorted(unordered, 4));
	printf("Test 3: %d\n", ft_recursive_is_sorted(ordered, 0));
	return (0);
}

/*
EDGE CASES:
Equal neighbors are permitted; never access arr[1] when size < 2.

LEARNING CHECK:
1. How do you advance a pointer without losing array bounds?
2. How is the untouched part of the array represented recursively?
3. Which condition prevents invalid input in ft_recursive_is_sorted()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 06_ft_recursive_array_count_value.c <<'EOF'
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
EOF

cat > 07_ft_recursive_array_find.c <<'EOF'
#include <stdio.h>

int	ft_recursive_array_find(const int *arr, int size, int value)
{
	
}

/*
GOAL:
Return the first zero-based index of value, or -1 if not present.

ALLOWED FUNCTIONS:
none

TODO:
1. Return -1 when size is zero.
2. Return zero if arr[0] matches.
3. Recursively search the rest and adjust a found index.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 4
Test 3: -1
*/

int	main(void)
{
	int values[5] = {4, 7, 2, 7, 9};

	printf("Test 1: %d\n", ft_recursive_array_find(values, 5, 7));
	printf("Test 2: %d\n", ft_recursive_array_find(values, 5, 9));
	printf("Test 3: %d\n", ft_recursive_array_find(values, 5, 3));
	return (0);
}

/*
EDGE CASES:
Multiple matches return the first index; preserve -1 on failure.

LEARNING CHECK:
1. How do you advance a pointer without losing array bounds?
2. How is the untouched part of the array represented recursively?
3. Which condition prevents invalid input in ft_recursive_array_find()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 08_ft_recursive_array_reverse.c <<'EOF'
#include <stdio.h>

void	ft_recursive_array_reverse(int *arr, int left, int right)
{
	
}

/*
GOAL:
Reverse array elements in place between inclusive indices.

ALLOWED FUNCTIONS:
none

TODO:
1. Stop when left >= right.
2. Swap the two outer elements.
3. Recurse inward using left + 1 and right - 1.

EXPECTED OUTPUT:
Test 1: 5 4 3 2 1
Test 2: 9 8 7 6
*/

int	main(void)
{
	int odd[5] = {1, 2, 3, 4, 5};
	int even[4] = {6, 7, 8, 9};

	ft_recursive_array_reverse(odd, 0, 4);
	printf("Test 1: %d %d %d %d %d\n", odd[0], odd[1], odd[2], odd[3], odd[4]);

	ft_recursive_array_reverse(even, 0, 3);
	printf("Test 2: %d %d %d %d\n", even[0], even[1], even[2], even[3]);
	return (0);
}

/*
EDGE CASES:
Indices must be within the array; zero/one-length ranges need no swaps.

LEARNING CHECK:
1. How do you advance a pointer without losing array bounds?
2. How is the untouched part of the array represented recursively?
3. Which condition prevents invalid input in ft_recursive_array_reverse()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 09_ft_recursive_array_copy.c <<'EOF'
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
EOF

cat > 10_ft_recursive_array_compare.c <<'EOF'
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
EOF

cat > 11_ft_recursive_binary_search.c <<'EOF'
#include <stdio.h>

int	ft_recursive_binary_search(const int *arr, int left, int right, int value)
{
	
}

/*
GOAL:
Return a target index in a sorted array using recursive binary search.

ALLOWED FUNCTIONS:
none

TODO:
1. Return -1 when left exceeds right.
2. Compare value with the middle element.
3. Recurse only into the appropriate half.

EXPECTED OUTPUT:
Test 1: 4
Test 2: 0
Test 3: -1
*/

int	main(void)
{
	int values[6] = {-3, 0, 2, 5, 9, 12};

	printf("Test 1: %d\n", ft_recursive_binary_search(values, 0, 5, 9));
	printf("Test 2: %d\n", ft_recursive_binary_search(values, 0, 5, -3));
	printf("Test 3: %d\n", ft_recursive_binary_search(values, 0, 5, 7));
	return (0);
}

/*
EDGE CASES:
Array is sorted ascending and contains no duplicate values.

LEARNING CHECK:
1. How do you advance a pointer without losing array bounds?
2. How is the untouched part of the array represented recursively?
3. Which condition prevents invalid input in ft_recursive_binary_search()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

echo "Reset 12 exercises in 02_recursive_arrays."
