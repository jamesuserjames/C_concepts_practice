#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_preserve_state(int reset)
{
	
}

/*
GOAL:
Maintain a call counter; reset to zero when reset is nonzero.

TODO:
1. Understand the function contract and test inputs.
2. Keep state in a static local variable and do not increment during reset.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 2
Test 3: 0
Test 4: 1
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_preserve_state(0));
	printf("Test 2: %d\n", ft_preserve_state(0));
	printf("Test 3: %d\n", ft_preserve_state(1));
	printf("Test 4: %d\n", ft_preserve_state(0));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: maintain a call counter; reset to zero when reset is nonzero.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
