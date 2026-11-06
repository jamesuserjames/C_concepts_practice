#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_strlen_gnl(const char *str)
{
	
}

/*
GOAL:
Count the characters in a NUL-terminated string.

TODO:
1. Understand the function contract and test inputs.
2. Treat NULL as length 0 for this training exercise.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 5
Test 2: 0
Test 3: 3
Test 4: 0
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_strlen_gnl("Hello"));
	printf("Test 2: %d\n", ft_strlen_gnl(""));
	printf("Test 3: %d\n", ft_strlen_gnl("a\nb"));
	printf("Test 4: %d\n", ft_strlen_gnl(NULL));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: count the characters in a NUL-terminated string.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
