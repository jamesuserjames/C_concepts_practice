#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_find_newline(const char *str)
{
	
}

/*
GOAL:
Find the index of the first newline, or -1 when absent.

TODO:
1. Understand the function contract and test inputs.
2. NULL input returns -1.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 3
Test 2: -1
Test 3: 0
Test 4: -1
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_find_newline("abc\ndef"));
	printf("Test 2: %d\n", ft_find_newline("no newline"));
	printf("Test 3: %d\n", ft_find_newline("\n"));
	printf("Test 4: %d\n", ft_find_newline(NULL));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: find the index of the first newline, or -1 when absent.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
