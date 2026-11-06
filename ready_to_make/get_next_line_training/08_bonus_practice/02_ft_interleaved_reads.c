#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_interleaved_reads(int fd1, int fd2)
{
	
}

/*
GOAL:
Read alternating bytes from two fds until both hit EOF.

TODO:
1. Understand the function contract and test inputs.
2. Return total bytes read; return -1 for errors; no output required.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 5
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
	if (write(first_pipe[1], "abc", 3) != 3
		|| write(second_pipe[1], "XY", 2) != 2)
		return (1);
	close(first_pipe[1]);
	close(second_pipe[1]);

	printf("Test 1: %d\n", ft_interleaved_reads(first_pipe[0], second_pipe[0]));
	close(first_pipe[0]);
	close(second_pipe[0]);
	printf("Test 2: %d\n", ft_interleaved_reads(-1, -1));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: read alternating bytes from two fds until both hit EOF.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
