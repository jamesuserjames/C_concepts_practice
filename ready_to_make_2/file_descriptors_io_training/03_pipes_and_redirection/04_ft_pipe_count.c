#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_pipe_count(int read_fd)
{
	
}

/*
GOAL:
Count bytes arriving through a pipe until EOF; return -1 for errors.

TODO:
1. Read repeated chunks.
2. Add actual read counts.
3. Stop only on EOF.
4. Return -1 for read failures.

EXPECTED OUTPUT:
Test 1: 3
Test 2: 0
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

	fd = ft_test_input("abc");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_pipe_count(fd));
	close(fd);

	fd = ft_test_input("");
	if (fd == -1)
		return (1);
	printf("Test 2: %d\n", ft_pipe_count(fd));
	close(fd);

	return (0);
}

/*
EDGE CASES:
The same logic works for file descriptors from files or pipes.

LEARNING CHECK:
1. What signals pipe EOF?
2. Why must writers eventually close?
3. Can pipe count use lseek?
4. What is blocking read?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
