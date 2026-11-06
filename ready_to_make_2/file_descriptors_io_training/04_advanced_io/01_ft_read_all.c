#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_read_all(int fd, void *out, int capacity)
{
	
}

/*
GOAL:
Fill out with up to capacity bytes, stopping at EOF; return count or -1.

TODO:
1. Reject negative capacity.
2. Repeat read until capacity bytes or EOF.
3. Advance destination pointer by bytes read.
4. Return count, or -1 on error.

EXPECTED OUTPUT:
Test 1: 4 [abcd]
Test 2: 2 [ef]
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
	int	fd;
	char	buffer[16] = {0};
	int		ret;

	fd = ft_test_input("abcdef");
	if (fd == -1)
		return (1);
	ret = ft_read_all(fd, buffer, 4);
	printf("Test 1: %d [%.*s]\n", ret, ret, buffer);
	ret = ft_read_all(fd, buffer, 10);
	printf("Test 2: %d [%.*s]\n", ret, ret, buffer);
	close(fd);
	return (0);
}

/*
EDGE CASES:
Out is raw memory: do not add terminator yourself.

LEARNING CHECK:
1. Why use void*?
2. How is this different from read once?
3. Who knows output capacity?
4. What happens at EOF?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
