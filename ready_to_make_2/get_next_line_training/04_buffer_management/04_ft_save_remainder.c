#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

char	*ft_save_remainder(const char *stash)
{
	
}

/*
GOAL:
Copy characters after the first newline into a new allocation.

TODO:
1. Understand the function contract and test inputs.
2. Return NULL if no newline or if nothing remains after newline.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [World]
Test 2: 1
Test 3: 1
*/

int	main(void)
{
	char	*result;

	result = ft_save_remainder("Hello\nWorld");
	printf("Test 1: [%s]\n", result ? result : "NULL");
	free(result);

	result = ft_save_remainder("Hello\n");
	printf("Test 2: %d\n", result == NULL);
	free(result);

	result = ft_save_remainder("Hello");
	printf("Test 3: %d\n", result == NULL);
	free(result);
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: copy characters after the first newline into a new allocation.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
