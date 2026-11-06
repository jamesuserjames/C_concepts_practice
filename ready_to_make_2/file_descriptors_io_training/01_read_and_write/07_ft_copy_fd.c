#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_copy_fd(int src_fd, int dst_fd)
{
	
}

/*
GOAL:
Copy all available bytes from src_fd to dst_fd; return copied bytes or -1.

TODO:
1. Read bytes in chunks from src_fd.
2. Write every read byte to dst_fd.
3. Handle partial writes.
4. Return copied count, or -1 on failure.

EXPECTED OUTPUT:
Test 1: 7 [copy me]
*/

static int	ft_test_input(const char *text)
{
	int	pipe_fd[2];
	int	length;

	if (pipe(pipe_fd) == -1)
		return (-1);
	length = (int)strlen(text);
	if (write(pipe_fd[1], text, length) != length)
	{
		close(pipe_fd[0]);
		close(pipe_fd[1]);
		return (-1);
	}
	close(pipe_fd[1]);
	return (pipe_fd[0]);
}

int	main(void)
{
	int		in_fd;
	int		out_fd[2];
	char	buffer[32] = {0};
	int		ret;

	in_fd = ft_test_input("copy me");
	if (in_fd == -1 || pipe(out_fd) == -1)
		return (1);
	ret = ft_copy_fd(in_fd, out_fd[1]);
	close(in_fd);
	close(out_fd[1]);
	read(out_fd[0], buffer, sizeof(buffer) - 1);
	close(out_fd[0]);
	printf("Test 1: %d [%s]\n", ret, buffer);
	return (0);
}

/*
EDGE CASES:
A copy must handle multiple read and write operations.

LEARNING CHECK:
1. Why use separate source and destination fds?
2. What is partial write handling?
3. How does EOF terminate copying?
4. How is this related to cp?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
