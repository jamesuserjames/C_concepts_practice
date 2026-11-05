#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_print_base(unsigned long n, const char *digits, unsigned int base)
{
	int		count;
	char	c;

	count = 0;
	if (n >= base)
	{
		count = ft_print_base(n / base, digits, base);
		if (count == -1)
			return (-1);
	}
	c = digits[n % base];
	if (write(1, &c, 1) != 1)
		return (-1);
	return (count + 1);
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_print_base(0UL, "01", 2);
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_print_base(5UL, "01", 2);
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_print_base(15UL, "0123456789abcdef", 16);
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_print_base(16UL, "0123456789abcdef", 16);
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_print_base(255UL, "0123456789ABCDEF", 16);
	printf("] (return: %d)\n", ret);
	printf("Test 6: [");
	fflush(stdout);
	ret = ft_print_base(42UL, "0123456789", 10);
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Print unsigned numbers using a supplied digit alphabet and base.

EXPLANATION:
Print unsigned numbers using a supplied digit alphabet and base.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Repeated division and remainder select a character from digits; recurse
before emitting it.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [0] (return: 1)
Test 2: [101] (return: 3)
Test 3: [f] (return: 1)
Test 4: [10] (return: 2)
Test 5: [FF] (return: 2)
Test 6: [42] (return: 2)

EDGE CASES:
Assume valid bases 2..16 and matching digit alphabet.

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
