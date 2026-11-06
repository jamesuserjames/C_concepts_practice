#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_handle_eof(int fd)
{
	
}

/*
GOAL:
Return 0 on EOF, 1 on data, -1 on read error.

TODO:
1. Understand the function contract and test inputs.
2. Read one byte and classify the result.
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

	printf("Test 1: %d\n", ft_handle_eof(pipe_fd[0]));
	printf("Test 2: %d\n", ft_handle_eof(pipe_fd[0]));
	close(pipe_fd[0]);
	printf("Test 3: %d\n", ft_handle_eof(-1));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: return 0 on EOF, 1 on data, -1 on read error.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
