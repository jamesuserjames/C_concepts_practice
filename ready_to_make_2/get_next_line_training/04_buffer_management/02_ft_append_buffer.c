#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

char	*ft_append_buffer(char *stash, const char *buffer)
{
	
}

/*
GOAL:
Append buffer to a heap-allocated stash, returning a new allocation.

TODO:
1. Understand the function contract and test inputs.
2. Free old stash only after a successful allocation; on failure leave old stash owned by caller.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [Hi!]
Test 2: [Hi!
]
*/

static char	*test_first_append(void)
{
	char	*stash;
	char	*result;

	stash = malloc(3);
	if (!stash)
		return (NULL);
	stash[0] = 'H';
	stash[1] = 'i';
	stash[2] = '\0';
	result = ft_append_buffer(stash, "!");
	if (!result)
		free(stash);
	return (result);
}

int	main(void)
{
	char	*stash;
	char	*result;

	stash = test_first_append();
	if (!stash)
		return (1);
	printf("Test 1: [%s]\n", stash);

	result = ft_append_buffer(stash, "\n");
	if (!result)
	{
		free(stash);
		return (1);
	}
	printf("Test 2: [%s]", result);
	free(result);
	return (0);
}

/*
EDGE CASES:
The heap-allocated stash changes ownership on success; keep the original on allocation failure.

LEARNING CHECK:
1. Who owns the old stash before the call?
2. When should it be freed?
3. How much memory is needed for the joined string?
4. What does the caller do if allocation fails?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
