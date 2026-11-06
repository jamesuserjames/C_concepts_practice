#include <unistd.h>
#include <stdio.h>

int	ft_write_n(int fd, const char *data, int size)
{
	
}

/*
GOAL:
Write exactly size bytes, including embedded NUL bytes; return size or -1.

TODO:
1. Reject a negative size.
2. Repeat write until size bytes have been sent.
3. Advance the data pointer by bytes written.
4. Handle write failures or zero progress.

EXPECTED OUTPUT:
Test 1: 3 [hel]
Test 2: 0 []
Test 3: 3 [xyz]
*/

int	main(void)
{
	int		pipe_fd[2];
	char	buffer[128];
	int		ret;
	int		bytes;

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_n(pipe_fd[1], "hello", 3);
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 1: %d [%s]\n", ret, buffer);

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_n(pipe_fd[1], "abc", 0);
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 2: %d [%s]\n", ret, buffer);

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_n(pipe_fd[1], "xyz", 3);
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 3: %d [%s]\n", ret, buffer);

	return (0);
}

/*
EDGE CASES:
Do not treat NUL as the end of binary data.

LEARNING CHECK:
1. How is size different from strlen?
2. Can write send fewer bytes than requested?
3. Why advance a pointer after a partial write?
4. When is write_n preferable to write_text?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
