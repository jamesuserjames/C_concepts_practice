#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_read_exact(int fd, char *out, int count)
{
	
}

/*
GOAL:
Read up to exactly count bytes using repeated read calls; return bytes obtained or -1.

TODO:
1. Reject negative count.
2. Keep reading until count bytes or EOF.
3. Advance the pointer by bytes read.
4. Return -1 if any read fails.

EXPECTED OUTPUT:
Test 1: 4 [abcd]
Test 2: 2 [hi]
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

	fd = ft_test_input("abcdef");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_exact(fd, buffer, 4);
	printf("Test 1: %d [%s]\n", ret, buffer);
	close(fd);

	fd = ft_test_input("hi");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_exact(fd, buffer, 5);
	printf("Test 2: %d [%s]\n", ret, buffer);
	close(fd);

	fd = ft_test_input("");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_exact(fd, buffer, 5);
	printf("Test 3: %d [%s]\n", ret, buffer);
	close(fd);

	return (0);
}

/*
EDGE CASES:
Short input returns the available byte count at EOF.

LEARNING CHECK:
1. Why can one read be short?
2. Why increment out after a successful read?
3. Why stop on EOF?
4. How does this help parse fixed-width records?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
