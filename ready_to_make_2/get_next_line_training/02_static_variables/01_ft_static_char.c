#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

char ft_static_char(char c)
{
	
}

/*
GOAL:
Return the previous input character (initially NUL), then remember c.

TODO:
1. Understand the function contract and test inputs.
2. Use a static char and update it after saving the previous value.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 0
Test 2: A
Test 3: B
*/

int	main(void)
{
	printf("Test 1: %d\n", (int)ft_static_char('A'));
	printf("Test 2: %c\n", ft_static_char('B'));
	printf("Test 3: %c\n", ft_static_char('C'));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: return the previous input character (initially NUL), then remember c.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
