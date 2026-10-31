#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_write_string(const char *str)
{
	
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_write_string("Hello");
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_write_string("");
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_write_string("A");
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_write_string("abc");
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_write_string("42");
	printf("] (return: %d)\n", ret);
	printf("Test 6: [");
	fflush(stdout);
	ret = ft_write_string("some text");
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Traverse a string and print all characters in order.

EXPLANATION:
Traverse a string and print all characters in order.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Advance until the NUL byte, write each character, and return total
bytes.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [Hello] (return: 5)
Test 2: [] (return: 0)
Test 3: [A] (return: 1)
Test 4: [abc] (return: 3)
Test 5: [42] (return: 2)
Test 6: [some text] (return: 9)

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
