#include <stdio.h>

char *ft_recursive_strcpy(char *dest, const char *src)
{
	
}

/*
GOAL:
Copy a NUL-terminated string to a sufficiently large destination recursively.

ALLOWED FUNCTIONS:
none

TODO:
1. Copy the current character.
2. Stop after copying the terminator.
3. Recurse using the next positions, then return original dest.

EXPECTED OUTPUT:
Test 1: [hello]
Test 2: [a]
Test 3: []
*/

int	main(void)
{
	char first[16] = {0};
	char second[16] = {0};
	char third[16] = {0};

	printf("Test 1: [%s]\n", ft_recursive_strcpy(first, "hello"));
	printf("Test 2: [%s]\n", ft_recursive_strcpy(second, "a"));
	printf("Test 3: [%s]\n", ft_recursive_strcpy(third, ""));
	return (0);
}

/*
EDGE CASES:
Destination must have room for the source including its terminator.

LEARNING CHECK:
1. When does recursion stop at the NUL terminator?
2. Why can pointer arithmetic replace an explicit loop here?
3. Which condition prevents invalid input in ft_recursive_strcpy()?
4. What value or state is carried into the next recursive call?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
