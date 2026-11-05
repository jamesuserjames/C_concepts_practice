#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_strlen_local(const char *str)
{
	
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %d\n", ft_strlen_local("hello"));
	printf("Test 2: %d\n", ft_strlen_local(""));
	printf("Test 3: %d\n", ft_strlen_local("a"));
	printf("Test 4: %d\n", ft_strlen_local("42"));
	printf("Test 5: %d\n", ft_strlen_local("a b c"));
	printf("Test 6: %d\n", ft_strlen_local("abcdef"));
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Count characters before the terminating NUL byte.

EXPLANATION:
Count characters before the terminating NUL byte.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Use a counter and walk until str[index] == 0.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 5
Test 2: 0
Test 3: 1
Test 4: 2
Test 5: 5
Test 6: 6

EDGE CASES:
Only valid NUL-terminated strings; no NULL unless specified.

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
