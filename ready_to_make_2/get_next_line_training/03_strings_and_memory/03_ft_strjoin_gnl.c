#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

char	*ft_strjoin_gnl(const char *a, const char *b)
{
	
}

/*
GOAL:
Allocate a new string holding a followed by b.

TODO:
1. Understand the function contract and test inputs.
2. Treat NULL inputs as empty strings in this drill; caller frees result.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [abcd]
Test 2: [Hi]
Test 3: []
*/

int	main(void)
{
	char	*result;

	result = ft_strjoin_gnl("ab", "cd");
	printf("Test 1: [%s]\n", result ? result : "NULL");
	free(result);

	result = ft_strjoin_gnl(NULL, "Hi");
	printf("Test 2: [%s]\n", result ? result : "NULL");
	free(result);

	result = ft_strjoin_gnl("", "");
	printf("Test 3: [%s]\n", result ? result : "NULL");
	free(result);
	return (0);
}

/*
EDGE CASES:
NULL inputs are treated as empty strings; test empty strings and allocation ownership.

LEARNING CHECK:
1. How large must the allocation be?
2. What happens when a string is NULL?
3. Why is one extra byte needed?
4. Who frees the returned allocation?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
