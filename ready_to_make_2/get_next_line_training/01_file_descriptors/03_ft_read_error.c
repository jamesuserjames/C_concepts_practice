#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_read_error(int fd)
{
	
}

/*
GOAL:
Translate read results into 1 (data), 0 (EOF), or -1 (error).

TODO:
1. Understand the function contract and test inputs.
2. Read a single byte; distinguish all three read outcomes.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
Test 3: -1
*/

int	main(void)
{
	int	pipe_fd[2];

	if (pipe(pipe_fd) == -1)
		return (1);
	if (write(pipe_fd[1], "X", 1) != 1)
		return (close(pipe_fd[0]), close(pipe_fd[1]), 1);
	close(pipe_fd[1]);

	printf("Test 1: %d\n", ft_read_error(pipe_fd[0]));
	printf("Test 2: %d\n", ft_read_error(pipe_fd[0]));
	close(pipe_fd[0]);
	printf("Test 3: %d\n", ft_read_error(-1));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: translate read results into 1 (data), 0 (EOF), or -1 (error).

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
