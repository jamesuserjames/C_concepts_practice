#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_get_first_int(int count, ...)
{
	va_list		args;
	int			i;
	
	i = 0;
	if (count == -1)
		return (-1);
	va_start(args, count);
	i = va_arg(args, int);
	va_end(args);
	return (i);
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %d\n", ft_get_first_int(1, 42));
	printf("Test 2: %d\n", ft_get_first_int(1, -7));
	printf("Test 3: %d\n", ft_get_first_int(3, 10, 20, 30));
	printf("Test 4: %d\n", ft_get_first_int(2, 0, 9));
	printf("Test 5: %d\n", ft_get_first_int(1, 2147483647));
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Read the first integer from a variadic argument list.

EXPLANATION:
Read the first integer from a variadic argument list.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Use va_start, va_arg(args, int), va_end; count is at least 1.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 42
Test 2: -7
Test 3: 10
Test 4: 0
Test 5: 2147483647

EDGE CASES:
Never read when no variadic argument was supplied.

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
