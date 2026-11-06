#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

void	ft_free_null(char **ptr)
{
	
}

/*
GOAL:
Free *ptr and set the caller’s pointer to NULL.

TODO:
1. Understand the function contract and test inputs.
2. Handle NULL pointer-to-pointer and already-NULL content.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 1
Test 3: ok
*/

int	main(void)
{
	char	*result;

	result = malloc(4);
	if (!result)
		return (1);
	ft_free_null(&result);
	printf("Test 1: %d\n", result == NULL);

	ft_free_null(&result);
	printf("Test 2: %d\n", result == NULL);

	ft_free_null(NULL);
	printf("Test 3: ok\n");
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: free *ptr and set the caller’s pointer to NULL.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
