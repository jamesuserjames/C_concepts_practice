#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_pointer_width(void)
{
	
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %d\n", ft_pointer_width());
	printf("Test 2: %d\n", ft_pointer_width());
	printf("Test 3: %d\n", ft_pointer_width());
	printf("Test 4: %d\n", ft_pointer_width());
	printf("Test 5: %d\n", ft_pointer_width());
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Report the number of bits in a pointer on this machine.

EXPLANATION:
Report the number of bits in a pointer on this machine.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Calculate sizeof(void *) * 8; return the width as int.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 64
Test 2: 64
Test 3: 64
Test 4: 64
Test 5: 64

EDGE CASES:
Usually 64 bits on modern macOS; tests calculate expected value dynamically.

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
