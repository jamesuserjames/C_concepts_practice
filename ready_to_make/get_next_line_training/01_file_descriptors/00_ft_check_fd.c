#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_check_fd(int fd)
{
	
}

/*
GOAL:
Check a file descriptor with a zero-byte read.

TODO:
1. Understand the function contract and test inputs.
2. Return 1 if read(fd, buffer, 0) succeeds, -1 if it fails. Zero-byte calls do not guarantee later reads.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: -1
Test 3: 1
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_check_fd(0));
	printf("Test 2: %d\n", ft_check_fd(-1));
	printf("Test 3: %d\n", ft_check_fd(1));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: check a file descriptor with a zero-byte read.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
