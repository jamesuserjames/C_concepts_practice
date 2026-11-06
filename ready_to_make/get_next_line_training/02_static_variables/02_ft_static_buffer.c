#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_static_buffer(int value)
{
	
}

/*
GOAL:
Add value to a running total preserved across calls.

TODO:
1. Understand the function contract and test inputs.
2. Use a static int initialized to 0.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 3
Test 2: 2
Test 3: 2
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_static_buffer(3));
	printf("Test 2: %d\n", ft_static_buffer(-1));
	printf("Test 3: %d\n", ft_static_buffer(0));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: add value to a running total preserved across calls.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
