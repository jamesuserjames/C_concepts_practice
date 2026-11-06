#include <unistd.h>
#include <stdio.h>

int	ft_write_from_buffer(int fd, const char *buffer, int size)
{
	
}

/*
GOAL:
Write size raw bytes from a buffer, including any NUL bytes.

TODO:
1. Validate size is non-negative.
2. Use write to send the requested bytes.
3. Handle partial writes with a loop.
4. Return size on success and -1 on failure.

EXPECTED OUTPUT:
Test 1: 3 [ABC]
Test 2: 2 [42]
*/

int	main(void)
{
	int		pipe_fd[2];
	char	buffer[128];
	int		ret;
	int		bytes;

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_from_buffer(pipe_fd[1], "ABC", 3);
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 1: %d [%s]\n", ret, buffer);

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_from_buffer(pipe_fd[1], "42", 2);
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 2: %d [%s]\n", ret, buffer);

	return (0);
}

/*
EDGE CASES:
Size, rather than terminators, controls raw output.

LEARNING CHECK:
1. What if the buffer includes a NUL byte?
2. What is a partial write?
3. Why not call strlen?
4. How is this used in file copying?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
