#include <unistd.h>
#include <stdio.h>

int	ft_write_text(int fd, const char *text)
{
	
}

/*
GOAL:
Write a NUL-terminated string without writing its terminator; return bytes written or -1.

TODO:
1. Walk through the string until its NUL byte.
2. Write each character to fd.
3. Stop and return -1 if any write fails.
4. Otherwise return the total byte count.

EXPECTED OUTPUT:
Test 1: 5 [hello]
Test 2: 0 []
Test 3: 2 [42]
*/

int	main(void)
{
	int		pipe_fd[2];
	char	buffer[128];
	int		ret;
	int		bytes;

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_text(pipe_fd[1], "hello");
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 1: %d [%s]\n", ret, buffer);

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_text(pipe_fd[1], "");
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 2: %d [%s]\n", ret, buffer);

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_text(pipe_fd[1], "42");
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
The empty string writes zero bytes.

LEARNING CHECK:
1. What is the NUL terminator?
2. Why is it not printed?
3. What happens on a write failure?
4. How does this relate to ft_putstr_fd?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
