#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_is_specifier(char c)
{
	return (c == 'c' || c == 's' || c == 'p' || c == 'd'
		|| c == 'i' || c == 'u' || c == 'x'
		|| c == 'X' || c == '%');
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %d\n", ft_is_specifier('c'));
	printf("Test 2: %d\n", ft_is_specifier('s'));
	printf("Test 3: %d\n", ft_is_specifier('p'));
	printf("Test 4: %d\n", ft_is_specifier('d'));
	printf("Test 5: %d\n", ft_is_specifier('i'));
	printf("Test 6: %d\n", ft_is_specifier('u'));
	printf("Test 7: %d\n", ft_is_specifier('x'));
	printf("Test 8: %d\n", ft_is_specifier('X'));
	printf("Test 9: %d\n", ft_is_specifier('%'));
	printf("Test 10: %d\n", ft_is_specifier('q'));
	printf("Test 11: %d\n", ft_is_specifier('a'));
	printf("Test 12: %d\n", ft_is_specifier('0'));
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Recognize the nine mandatory ft_printf conversions.

EXPLANATION:
Recognize the nine mandatory ft_printf conversions.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Return 1 for c s p d i u x X %; return 0 otherwise.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 1
Test 3: 1
Test 4: 1
Test 5: 1
Test 6: 1
Test 7: 1
Test 8: 1
Test 9: 1
Test 10: 0
Test 11: 0
Test 12: 0

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
