#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_full_printf(const char *format, ...)
{
	
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_full_printf("Hello");
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_full_printf("%c %s", 'A', "cat");
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_full_printf("%d %i %u", -42, 7, 42U);
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_full_printf("%x %X", 255U, 255U);
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_full_printf("%%");
	printf("] (return: %d)\n", ret);
	printf("Test 6: [");
	fflush(stdout);
	ret = ft_full_printf("%s", (char *)NULL);
	printf("] (return: %d)\n", ret);
	printf("Test 7: [");
	fflush(stdout);
	ret = ft_full_printf("%p", (void *)NULL);
	printf("] (return: %d)\n", ret);
	printf("Test 8: [");
	fflush(stdout);
	ret = ft_full_printf("");
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Implement all mandatory ft_printf conversions and correct byte counting.

EXPLANATION:
Implement all mandatory ft_printf conversions and correct byte counting.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Parse text; fetch correct va_arg type for c/s/p/d/i/u/x/X; render % and
propagate write errors.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [Hello] (return: 5)
Test 2: [A cat] (return: 5)
Test 3: [-42 7 42] (return: 8)
Test 4: [ff FF] (return: 5)
Test 5: [%] (return: 1)
Test 6: [(null)] (return: 6)
Test 7: [(nil)] (return: 5)
Test 8: [] (return: 0)

EDGE CASES:
Choose (nil) for NULL %p and (null) for NULL %s in this training contract.

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
