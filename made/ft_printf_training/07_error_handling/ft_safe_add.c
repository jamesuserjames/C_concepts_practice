#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_safe_add(int count, int ret)
{
	if (count == -1 || ret == -1)
		return (-1);
	return (count + ret);
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %d\n", ft_safe_add(0, 1));
	printf("Test 2: %d\n", ft_safe_add(3, 2));
	printf("Test 3: %d\n", ft_safe_add(10, 0));
	printf("Test 4: %d\n", ft_safe_add(-1, 2));
	printf("Test 5: %d\n", ft_safe_add(4, -1));
	printf("Test 6: %d\n", ft_safe_add(100, 20));
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Accumulate successful byte counts, propagating write errors.

EXPLANATION:
Accumulate successful byte counts, propagating write errors.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. If count or ret equals -1, return -1; otherwise return the sum.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 5
Test 3: 10
Test 4: -1
Test 5: -1
Test 6: 120

EDGE CASES:
Assume the sum is within the int range.

LEARNING CHECK:
1. What does each input parameter represent?
2. Why does the function return its specified result?
3. Which boundary input might reveal an implementation error?
4. How does this operation help build ft_printf?

NOTE:
The function body is intentionally empty. Build without -Werror until
you have completed the implementation. Matching tests is useful evidence,
not proof of correctness for every possible input.
*/
