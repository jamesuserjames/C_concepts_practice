#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

char	ft_last_digit(unsigned int n)
{
	char	c;

	c = (n % 10) + '0';
	return (c);
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %c\n", ft_last_digit(0));
	printf("Test 2: %c\n", ft_last_digit(1));
	printf("Test 3: %c\n", ft_last_digit(9));
	printf("Test 4: %c\n", ft_last_digit(10));
	printf("Test 5: %c\n", ft_last_digit(42));
	printf("Test 6: %c\n", ft_last_digit(1239));
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Convert the last decimal digit into its ASCII character.

EXPLANATION:
Convert the last decimal digit into its ASCII character.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Use remainder modulo 10, then add the character code for zero.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 0
Test 2: 1
Test 3: 9
Test 4: 0
Test 5: 2
Test 6: 9

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
