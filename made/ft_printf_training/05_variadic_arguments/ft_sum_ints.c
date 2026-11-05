#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_sum_ints(int count, ...)
{
	va_list		args;
	int			i;
	int			j;
	
	i = 0;
	j = 0;
	va_start(args, count);
	while (i < count)
	{
		j += va_arg(args, int);
		i++;
	}
	va_end(args);
	return (j);
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %d\n", ft_sum_ints(0));
	printf("Test 2: %d\n", ft_sum_ints(1, 42));
	printf("Test 3: %d\n", ft_sum_ints(2, 10, 20));
	printf("Test 4: %d\n", ft_sum_ints(3, -5, 10, 20));
	printf("Test 5: %d\n", ft_sum_ints(4, 1, 2, 3, 4));
	printf("Test 6: %d\n", ft_sum_ints(3, 0, 0, 0));
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Sum exactly count variadic int values, including count zero.

EXPLANATION:
Sum exactly count variadic int values, including count zero.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Initialize accumulator to zero and call va_arg exactly count times.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 0
Test 2: 42
Test 3: 30
Test 4: 25
Test 5: 10
Test 6: 0

EDGE CASES:
Never request more arguments than actually provided.

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
