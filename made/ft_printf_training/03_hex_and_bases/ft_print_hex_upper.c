#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_print_hex_upper(unsigned int n)
{
	char	c;
	int		i;
	
	i = 0;
	if (n >= 16)
	{
		i = ft_print_hex_upper(n / 16);
		if (i == -1)
			return (-1);
	}
	c = "0123456789ABCDEFG"[n % 16];
	if (write(1, &c, 1) != 1)
		return (-1);
	return (i + 1);
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_print_hex_upper(0U);
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_print_hex_upper(9U);
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_print_hex_upper(10U);
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_print_hex_upper(15U);
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_print_hex_upper(16U);
	printf("] (return: %d)\n", ret);
	printf("Test 6: [");
	fflush(stdout);
	ret = ft_print_hex_upper(255U);
	printf("] (return: %d)\n", ret);
	printf("Test 7: [");
	fflush(stdout);
	ret = ft_print_hex_upper(4294967295U);
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Convert unsigned int to uppercase hexadecimal for %X.

EXPLANATION:
Convert unsigned int to uppercase hexadecimal for %X.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Use digits 0123456789ABCDEF.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [0] (return: 1)
Test 2: [9] (return: 1)
Test 3: [A] (return: 1)
Test 4: [F] (return: 1)
Test 5: [10] (return: 2)
Test 6: [FF] (return: 2)
Test 7: [FFFFFFFF] (return: 8)

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
