#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_read_once(int fd, char *buffer, int capacity)
{
	
}

/*
GOAL:
Read up to capacity bytes once; return actual byte count, 0, or -1.

TODO:
1. Reject negative capacity.
2. Call read once with capacity.
3. Return the number of bytes read.
4. Do not append a NUL terminator.

EXPECTED OUTPUT:
Test 1: 3
Test 2: [hel]
Test 3: 2
Test 4: 0
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
	char	buffer[8] = {0};
	int		fd;

	fd = ft_test_input("hello");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_read_once(fd, buffer, 3));
	printf("Test 2: [%.*s]\n", 3, buffer);
	printf("Test 3: %d\n", ft_read_once(fd, buffer, 8));
	printf("Test 4: %d\n", ft_read_once(fd, buffer, 8));
	close(fd);
	return (0);
}

/*
EDGE CASES:
The buffer is binary data; it is not necessarily a C string.

LEARNING CHECK:
1. Why can read return fewer bytes than capacity?
2. Does read append NUL?
3. Why use %.*s in the test?
4. What does a second read consume?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
