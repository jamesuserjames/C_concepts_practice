#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

char	*ft_substr_gnl(const char *str, int start, int len)
{
	
}

/*
GOAL:
Allocate up to len bytes starting at index start.

TODO:
1. Understand the function contract and test inputs.
2. Return empty allocated string when start exceeds length; reject negative indices/lengths.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [cde]
Test 2: []
Test 3: 1
*/

int	main(void)
{
	char	*result;

	result = ft_substr_gnl("abcdef", 2, 3);
	printf("Test 1: [%s]\n", result ? result : "NULL");
	free(result);

	result = ft_substr_gnl("abc", 10, 2);
	printf("Test 2: [%s]\n", result ? result : "NULL");
	free(result);

	printf("Test 3: %d\n", ft_substr_gnl("abc", -1, 2) == NULL);
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: allocate up to len bytes starting at index start.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
