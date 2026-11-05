#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_print_address_digits(unsigned long address)
{
	char	c;
	int		i;

	i = 0;
	if (address >= 16)
	{
		i = ft_print_address_digits(address / 16);
		if (i == -1)
			return (-1);
	}
	c = "0123456789abcdef"[address % 16];
	if (write(1, &c, 1) != 1)
		return (-1);
	return (i + 1);
}

int	ft_print_pointer(void *ptr)
{
	int		count;

	count = 0;
	if (ptr == NULL)
	{
		if (write(1, "(nil)", 5) != 5)
			return (-1);
		return (5);
	}
	if (write(1, "0x", 2) != 2)
		return (-1);
	count = ft_print_address_digits((unsigned long)ptr);
	if (count == -1)
		return (-1);
	return (count + 2);
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_print_pointer(NULL);
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_print_pointer(NULL);
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_print_pointer(NULL);
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_print_pointer(NULL);
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_print_pointer(NULL);
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Implement the explicitly chosen NULL pointer representation (nil).

EXPLANATION:
Implement the explicitly chosen NULL pointer representation (nil).
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Check NULL and emit (nil); for non-NULL pointers print 0x followed by
hexadecimal address.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [(nil)] (return: 5)
Test 2: [(nil)] (return: 5)
Test 3: [(nil)] (return: 5)
Test 4: [(nil)] (return: 5)
Test 5: [(nil)] (return: 5)

EDGE CASES:
Non-NULL pointer text depends on runtime address, so exact-output tests use NULL only.

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
