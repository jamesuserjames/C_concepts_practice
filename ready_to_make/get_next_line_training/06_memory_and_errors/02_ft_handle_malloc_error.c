#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

char	*ft_handle_malloc_error(int len)
{
	
}

/*
GOAL:
Allocate len+1 zero-initialized bytes (NULL for negative len).

TODO:
1. Understand the function contract and test inputs.
2. Check allocation and zero each byte; caller owns returned memory.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 1
Test 3: 1
*/

int	main(void)
{
	char	*result;

	result = ft_handle_malloc_error(3);
	printf("Test 1: %d\n", result != NULL
		&& result[0] == 0 && result[3] == 0);
	free(result);

	result = ft_handle_malloc_error(0);
	printf("Test 2: %d\n", result != NULL && result[0] == 0);
	free(result);

	result = ft_handle_malloc_error(-1);
	printf("Test 3: %d\n", result == NULL);
	free(result);
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: allocate len+1 zero-initialized bytes (NULL for negative len).

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
