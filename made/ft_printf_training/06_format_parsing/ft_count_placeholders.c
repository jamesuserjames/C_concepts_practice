#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int	ft_count_placeholders(const char *format)
{
	int		i;
	int		count;

	count = 0;
	i = 0;
	while (format[i])
	{
		if (format[i] == '%' && format[i + 1])
		{
			if (format[i + 1] == 'c' || format[i + 1] == 's'
				|| format[i + 1] == 'p' || format[i + 1] == 'd'
				|| format[i + 1] == 'i' || format[i + 1] == 'u'
				|| format[i + 1] == 'x' || format[i + 1] == 'X'
				|| format[i + 1] == '%')
			{
				count++;
				i++;
			}
		}
		i++;
	}
	return (count);
}

#include <stdio.h>

int	main(void)
{
	printf("Test 1: %d\n", ft_count_placeholders("hello"));
	printf("Test 2: %d\n", ft_count_placeholders("%d"));
	printf("Test 3: %d\n", ft_count_placeholders("%d %s"));
	printf("Test 4: %d\n", ft_count_placeholders("%%"));
	printf("Test 5: %d\n", ft_count_placeholders("x%%y%d"));
	printf("Test 6: %d\n", ft_count_placeholders("%x %X %p"));
	printf("Test 7: %d\n", ft_count_placeholders(""));
	return (0);
}

/*
ALLOWED FUNCTIONS:
None for the implementation; printf/fflush are test-only.

GOAL:
Count supported % conversion pairs, treating %% as one conversion.

EXPLANATION:
Count supported % conversion pairs, treating %% as one conversion.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Walk format; if % is followed by a supported specifier, count it and
skip two chars.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: 0
Test 2: 1
Test 3: 2
Test 4: 1
Test 5: 2
Test 6: 3
Test 7: 0

EDGE CASES:
Inputs contain no dangling or invalid percent sequences.

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
