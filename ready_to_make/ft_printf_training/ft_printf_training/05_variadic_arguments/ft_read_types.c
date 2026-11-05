#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_read_types(char type, ...)
{
	
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %d\n", ft_read_types('d', 42));
	printf("Test 2: %d\n", ft_read_types('d', -7));
	printf("Test 3: %d\n", ft_read_types('c', 'A'));
	printf("Test 4: %d\n", ft_read_types('c', 'z'));
	printf("Test 5: %d\n", ft_read_types('d', 0));
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Read an int for d or a promoted char (int) for c; return its numeric
value.

EXPLANATION:
Read an int for d or a promoted char (int) for c; return its numeric
value.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Use va_arg(args, int) for both cases; char arguments undergo default
promotion.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 42
Test 2: -7
Test 3: 65
Test 4: 122
Test 5: 0

EDGE CASES:
Contract supports only d and c; do not try va_arg(args, char).

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
