#include <unistd.h>
#include <stdio.h>

int	ft_write_all(int fd, const void *data, int size)
{
	
}

/*
GOAL:
Write all size bytes with repeated calls; return size or -1.

TODO:
1. Reject negative sizes.
2. Loop until all bytes have been written.
3. Advance by the actual write result.
4. Return -1 on failure or no progress.

EXPECTED OUTPUT:
Test 1: 5 [hello]
Test 2: 0 []
*/

int	main(void)
{
	int		pipe_fd[2];
	char	buffer[128];
	int		ret;
	int		bytes;

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_all(pipe_fd[1], "hello", 5);
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 1: %d [%s]\n", ret, buffer);

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_all(pipe_fd[1], "", 0);
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
The caller specifies byte count for binary-safe output.

LEARNING CHECK:
1. What is a short write?
2. What does zero progress mean?
3. Why is void pointer appropriate here?
4. Where is write_all useful?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
