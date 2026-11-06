#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

char	*ft_extract_line(const char *stash)
{
	
}

/*
GOAL:
Copy through the first newline, or all of stash if no newline.

TODO:
1. Understand the function contract and test inputs.
2. Return NULL for NULL or empty stash; allocate the returned line.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [Hello
]Test 2: [tail]
Test 3: 1
*/

int	main(void)
{
	char	*result;

	result = ft_extract_line("Hello\nWorld");
	printf("Test 1: [%s]", result ? result : "NULL");
	free(result);

	result = ft_extract_line("tail");
	printf("Test 2: [%s]\n", result ? result : "NULL");
	free(result);

	printf("Test 3: %d\n", ft_extract_line("") == NULL);
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: copy through the first newline, or all of stash if no newline.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
