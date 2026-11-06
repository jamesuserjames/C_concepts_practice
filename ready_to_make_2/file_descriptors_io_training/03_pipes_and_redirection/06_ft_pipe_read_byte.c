#include <unistd.h>
#include <stdio.h>

int	ft_pipe_read_byte(int pipe_fd[2], char *out)
{
	
}

/*
GOAL:
Read one byte from the read end of an existing pipe.

TODO:
1. Use pipe_fd[0] for read.
2. Request exactly one byte.
3. Return the read result.
4. Do not close descriptors.

EXPECTED OUTPUT:
Test 1: 1
Test 2: K
Test 3: 0
*/

int	main(void)
{
	int	pipe_fd[2];
	char	letter;

	if (pipe(pipe_fd) == -1)
		return (1);
	write(pipe_fd[1], "K", 1);
	close(pipe_fd[1]);
	printf("Test 1: %d\n", ft_pipe_read_byte(pipe_fd, &letter));
	printf("Test 2: %c\n", letter);
	printf("Test 3: %d\n", ft_pipe_read_byte(pipe_fd, &letter));
	close(pipe_fd[0]);
	return (0);
}

/*
EDGE CASES:
EOF after the single byte should be zero, not -1.

LEARNING CHECK:
1. Which end is read-only?
2. What is a pipe byte stream?
3. When is EOF returned?
4. Why not close the pipe in this helper?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
