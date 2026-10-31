#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_print_negative(int n)
{
	
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_print_negative(-1);
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_print_negative(-9);
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_print_negative(-10);
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_print_negative(-42);
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_print_negative(-2147483647 - 1);
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Print negative int values safely, including INT_MIN.

EXPLANATION:
Print negative int values safely, including INT_MIN.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Convert to a wider signed type before negating, then print the minus
sign and magnitude.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [-1] (return: 2)
Test 2: [-9] (return: 2)
Test 3: [-10] (return: 3)
Test 4: [-42] (return: 3)
Test 5: [-2147483648] (return: 11)

EDGE CASES:
The input contract is negative int values only.

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
