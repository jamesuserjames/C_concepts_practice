#include <unistd.h>
#include <stdio.h>

int	ft_pipe_close_writer(int pipe_fd[2])
{
	
}

/*
GOAL:
Close only the write end of a pipe; return 0 or -1.

TODO:
1. Close pipe_fd[1].
2. Return 0 on success.
3. Return -1 on failure.
4. Leave pipe_fd[0] open.

EXPECTED OUTPUT:
Test 1: 0
Test 2: 0
*/

int	main(void)
{
	int	pipe_fd[2];
	char	letter;

	if (pipe(pipe_fd) == -1)
		return (1);
	printf("Test 1: %d\n", ft_pipe_close_writer(pipe_fd));
	printf("Test 2: %d\n", (int)read(pipe_fd[0], &letter, 1));
	close(pipe_fd[0]);
	return (0);
}

/*
EDGE CASES:
Reading an empty pipe with all writers closed yields EOF.

LEARNING CHECK:
1. Which pipe end is closed?
2. Why does read not block here?
3. What does EOF mean for a pipe?
4. Why are unused pipe ends closed?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
