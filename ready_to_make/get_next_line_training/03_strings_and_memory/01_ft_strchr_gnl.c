#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

char	*ft_strchr_gnl(const char *str, int c)
{
	
}

/*
GOAL:
Find the first occurrence of c, including the final NUL.

TODO:
1. Understand the function contract and test inputs.
2. Return a pointer into the original string or NULL; NULL input returns NULL.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 2
Test 2: 1
Test 3: 5
Test 4: 1
*/

int	main(void)
{
	char	text[] = "ab\ncd";
	char	*found;

	found = ft_strchr_gnl(text, '\n');
	printf("Test 1: %ld\n", found ? (long)(found - text) : -1L);

	found = ft_strchr_gnl(text, 'z');
	printf("Test 2: %d\n", found == NULL);

	found = ft_strchr_gnl(text, '\0');
	printf("Test 3: %ld\n", found ? (long)(found - text) : -1L);

	printf("Test 4: %d\n", ft_strchr_gnl(NULL, 'a') == NULL);
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: find the first occurrence of c, including the final NUL.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
