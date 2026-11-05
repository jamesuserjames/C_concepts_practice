#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_hex_count(unsigned int n)
{
	int		i;
	
	i = 1;
	while (n >= 16)
	{
		n /= 16;
		i++;
	}
	return (i);
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %d\n", ft_hex_count(0U));
	printf("Test 2: %d\n", ft_hex_count(1U));
	printf("Test 3: %d\n", ft_hex_count(15U));
	printf("Test 4: %d\n", ft_hex_count(16U));
	printf("Test 5: %d\n", ft_hex_count(255U));
	printf("Test 6: %d\n", ft_hex_count(256U));
	printf("Test 7: %d\n", ft_hex_count(4294967295U));
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Count the base-16 digits needed for an unsigned number.

EXPLANATION:
Count the base-16 digits needed for an unsigned number.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Divide by sixteen until the remaining value is below sixteen.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 1
Test 3: 1
Test 4: 2
Test 5: 2
Test 6: 3
Test 7: 8

EDGE CASES:
Zero, boundary values, and invalid inputs where applicable.

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
