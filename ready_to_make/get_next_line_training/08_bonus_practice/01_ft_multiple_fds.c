#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_multiple_fds(int fd1, int fd2)
{
	
}

/*
GOAL:
Read one byte from each supplied fd; return their unsigned-byte sum.

TODO:
1. Understand the function contract and test inputs.
2. Return -1 if either read fails or reaches EOF.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 131
Test 2: -1
*/

int	main(void)
{
	int	first_pipe[2];
	int	second_pipe[2];

	if (pipe(first_pipe) == -1)
		return (1);
	if (pipe(second_pipe) == -1)
		return (close(first_pipe[0]), close(first_pipe[1]), 1);
	if (write(first_pipe[1], "A", 1) != 1
		|| write(second_pipe[1], "B", 1) != 1)
		return (1);
	close(first_pipe[1]);
	close(second_pipe[1]);

	printf("Test 1: %d\n", ft_multiple_fds(first_pipe[0], second_pipe[0]));
	printf("Test 2: %d\n", ft_multiple_fds(first_pipe[0], second_pipe[0]));
	close(first_pipe[0]);
	close(second_pipe[0]);
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: read one byte from each supplied fd; return their unsigned-byte sum.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
