#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_read_to_string(int fd, char *out, int capacity)
{
	
}

/*
GOAL:
Read at most capacity - 1 bytes and terminate the result as a C string.

TODO:
1. Reject a capacity less than 1.
2. Read at most capacity - 1 bytes.
3. Return -1 for read errors.
4. Append NUL and return the number read.

EXPECTED OUTPUT:
Test 1: 3 [hel]
Test 2: 3 [abc]
Test 3: 0 []
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

	fd = ft_test_input("hello");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_to_string(fd, buffer, 4);
	printf("Test 1: %d [%s]\n", ret, buffer);
	close(fd);

	fd = ft_test_input("abc");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_to_string(fd, buffer, 8);
	printf("Test 2: %d [%s]\n", ret, buffer);
	close(fd);

	fd = ft_test_input("");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_to_string(fd, buffer, 8);
	printf("Test 3: %d [%s]\n", ret, buffer);
	close(fd);

	return (0);
}

/*
EDGE CASES:
Capacity includes the byte reserved for NUL.

LEARNING CHECK:
1. Why subtract one from capacity?
2. What happens at EOF?
3. What if capacity is zero?
4. How does this differ from raw read?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
