#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_read_until(int fd, char *out, int capacity, char stop)
{
	
}

/*
GOAL:
Read characters into a NUL-terminated buffer until stop, EOF or capacity - 1.

TODO:
1. Reserve room for NUL.
2. Read one character at a time.
3. Include stop if encountered and space remains.
4. NUL-terminate and return bytes stored.

EXPECTED OUTPUT:
Test 1: 3 [ab,]
Test 2: 3 [xyz]
Test 3: 2 [he]
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
	char	buffer[64] = {0};
	int		fd;
	int		ret;

	fd = ft_test_input("ab,cd");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_until(fd, buffer, 16, ',');
	printf("Test 1: %d [%s]\n", ret, buffer);
	close(fd);

	fd = ft_test_input("xyz");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_until(fd, buffer, 16, ',');
	printf("Test 2: %d [%s]\n", ret, buffer);
	close(fd);

	fd = ft_test_input("hello");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_until(fd, buffer, 3, ',');
	printf("Test 3: %d [%s]\n", ret, buffer);
	close(fd);

	return (0);
}

/*
EDGE CASES:
Handle delimiter absent and a full output buffer.

LEARNING CHECK:
1. Does the delimiter belong in the output?
2. Why reserve a NUL byte?
3. How does read signal EOF?
4. How could this implement line reading?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
