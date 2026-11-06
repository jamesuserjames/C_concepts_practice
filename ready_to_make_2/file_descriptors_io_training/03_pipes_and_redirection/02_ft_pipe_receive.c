#include <unistd.h>
#include <stdio.h>

int	ft_pipe_receive(int pipe_fd[2], char *out, int capacity)
{
	
}

/*
GOAL:
Read from the pipe into a NUL-terminated buffer, returning byte count.

TODO:
1. Reject nonpositive capacity.
2. Read at most capacity - 1 bytes.
3. NUL-terminate the result.
4. Return count or -1.

EXPECTED OUTPUT:
Test 1: 5 [hello]
Test 2: 0
*/

int	main(void)
{
	int	pipe_fd[2];
	char	buffer[16] = {0};
	int		ret;

	if (pipe(pipe_fd) == -1)
		return (1);
	write(pipe_fd[1], "hello", 5);
	close(pipe_fd[1]);
	ret = ft_pipe_receive(pipe_fd, buffer, 16);
	printf("Test 1: %d [%s]\n", ret, buffer);
	printf("Test 2: %d\n", ft_pipe_receive(pipe_fd, buffer, 16));
	close(pipe_fd[0]);
	return (0);
}

/*
EDGE CASES:
A read after all data and write ends are closed returns 0.

LEARNING CHECK:
1. Why close the write end?
2. Why leave room for NUL?
3. What does a second read return?
4. How is a pipe similar to stdin?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
