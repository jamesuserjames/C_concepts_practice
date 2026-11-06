#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_read_stdin(char *out, int capacity)
{
	
}

/*
GOAL:
Read from standard input (fd 0) and terminate the buffer.

TODO:
1. Understand the function contract and test inputs.
2. Use read(0, ...); return bytes read; capacity must reserve NUL.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 5 [input]
*/

static int	test_standard_input(char *buffer, int capacity)
{
	int	pipe_fd[2];
	int	saved_stdin;
	int	ret;

	if (pipe(pipe_fd) == -1)
		return (-1);
	if (write(pipe_fd[1], "input", 5) != 5)
		return (close(pipe_fd[0]), close(pipe_fd[1]), -1);
	close(pipe_fd[1]);
	saved_stdin = dup(0);
	if (saved_stdin == -1 || dup2(pipe_fd[0], 0) == -1)
		return (close(pipe_fd[0]), -1);
	close(pipe_fd[0]);
	ret = ft_read_stdin(buffer, capacity);
	dup2(saved_stdin, 0);
	close(saved_stdin);
	return (ret);
}

int	main(void)
{
	char	buffer[12] = {0};
	int		ret;

	ret = test_standard_input(buffer, sizeof(buffer));
	printf("Test 1: %d [%s]\n", ret, buffer);
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: read from standard input (fd 0) and terminate the buffer.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
