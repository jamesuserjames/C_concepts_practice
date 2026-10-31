#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_print_digits_recursive(unsigned int n)
{
	
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_print_digits_recursive(0);
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_print_digits_recursive(5);
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_print_digits_recursive(10);
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_print_digits_recursive(123);
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_print_digits_recursive(1000);
	printf("] (return: %d)\n", ret);
	printf("Test 6: [");
	fflush(stdout);
	ret = ft_print_digits_recursive(4294967295U);
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Print decimal digits in left-to-right order by recursion.

EXPLANATION:
Print decimal digits in left-to-right order by recursion.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Recurse on n / 10 before printing the final digit; add each successful
return count.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [0] (return: 1)
Test 2: [5] (return: 1)
Test 3: [10] (return: 2)
Test 4: [123] (return: 3)
Test 5: [1000] (return: 4)
Test 6: [4294967295] (return: 10)

EDGE CASES:
Zero, boundary values, and output errors where applicable.

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
