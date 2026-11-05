#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

char	ft_hex_digit(unsigned int digit, char format)
{
	
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %c\n", ft_hex_digit(0, 'x'));
	printf("Test 2: %c\n", ft_hex_digit(9, 'x'));
	printf("Test 3: %c\n", ft_hex_digit(10, 'x'));
	printf("Test 4: %c\n", ft_hex_digit(15, 'x'));
	printf("Test 5: %c\n", ft_hex_digit(10, 'X'));
	printf("Test 6: %c\n", ft_hex_digit(15, 'X'));
	printf("Test 7: %c\n", ft_hex_digit(14, 'x'));
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Map values 0..15 to lowercase or uppercase hex characters.

EXPLANATION:
Map values 0..15 to lowercase or uppercase hex characters.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Use digit tables or conditionals; never confuse numeric 10 with the
character a.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 0
Test 2: 9
Test 3: a
Test 4: f
Test 5: A
Test 6: F
Test 7: e

EDGE CASES:
Only digit values 0..15 and formats x/X are in scope.

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
