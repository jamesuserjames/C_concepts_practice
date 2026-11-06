#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_fd_stash(int fd, int value)
{
	
}

/*
GOAL:
Keep a separate running total for each fd 0..15.

TODO:
1. Understand the function contract and test inputs.
2. Return -1 for fd outside 0..15; use a single static array.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 5
Test 2: 7
Test 3: 7
Test 4: -1
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_fd_stash(3, 5));
	printf("Test 2: %d\n", ft_fd_stash(4, 7));
	printf("Test 3: %d\n", ft_fd_stash(3, 2));
	printf("Test 4: %d\n", ft_fd_stash(-1, 1));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: keep a separate running total for each fd 0..15.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
