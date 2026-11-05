#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_count_digits(unsigned int n)
{
	if (n < 10)
		return (1);
	return (1 + ft_count_digits(n / 10));
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %d\n", ft_count_digits(0));
	printf("Test 2: %d\n", ft_count_digits(1));
	printf("Test 3: %d\n", ft_count_digits(9));
	printf("Test 4: %d\n", ft_count_digits(10));
	printf("Test 5: %d\n", ft_count_digits(99));
	printf("Test 6: %d\n", ft_count_digits(100));
	printf("Test 7: %d\n", ft_count_digits(4294967295U));
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Count base-10 digits, including one digit for zero.

EXPLANATION:
Count base-10 digits, including one digit for zero.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Divide by 10 until the magnitude fits one digit.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 1
Test 3: 1
Test 4: 2
Test 5: 2
Test 6: 3
Test 7: 10

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
