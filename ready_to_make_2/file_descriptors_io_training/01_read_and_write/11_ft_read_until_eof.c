#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_read_until_eof(int fd, char *out, int capacity)
{
	
}

/*
GOAL:
Read as much as fits until EOF or capacity - 1, and produce a C string.

TODO:
1. Check capacity is positive.
2. Repeat reads into remaining space.
3. Stop at EOF or a full buffer.
4. Terminate with NUL and return bytes read.

EXPECTED OUTPUT:
Test 1: 4 [abcd]
Test 2: 2 [ab]
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

	fd = ft_test_input("abcd");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_until_eof(fd, buffer, 12);
	printf("Test 1: %d [%s]\n", ret, buffer);
	close(fd);

	fd = ft_test_input("abc");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_until_eof(fd, buffer, 3);
	printf("Test 2: %d [%s]\n", ret, buffer);
	close(fd);

	fd = ft_test_input("");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_until_eof(fd, buffer, 12);
	printf("Test 3: %d [%s]\n", ret, buffer);
	close(fd);

	return (0);
}

/*
EDGE CASES:
Do not read beyond capacity - 1.

LEARNING CHECK:
1. Why repeat read?
2. What happens when the buffer is full before EOF?
3. Where does NUL go?
4. Why is this limited for large files?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
