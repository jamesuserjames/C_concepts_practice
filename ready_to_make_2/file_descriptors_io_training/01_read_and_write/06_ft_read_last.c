#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_read_last(int fd, char *out)
{
	
}

/*
GOAL:
Consume fd and store the last byte; return 1 if found, 0 for empty, -1 on error.

TODO:
1. Read bytes until EOF.
2. Remember the latest byte read.
3. Handle an entirely empty stream.
4. Store the last byte only if one was read.

EXPECTED OUTPUT:
Test 1: 1
Test 2: d
Test 3: 0
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
	int		fd;
	char	last;

	fd = ft_test_input("abcd");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_read_last(fd, &last));
	printf("Test 2: %c\n", last);
	close(fd);

	fd = ft_test_input("");
	if (fd == -1)
		return (1);
	printf("Test 3: %d\n", ft_read_last(fd, &last));
	close(fd);
	return (0);
}

/*
EDGE CASES:
On empty input, out should remain unchanged.

LEARNING CHECK:
1. Why is a last byte different from a line ending?
2. When may out be written?
3. How do you detect empty input?
4. Can pipes be read backwards?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
