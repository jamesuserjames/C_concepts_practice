#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_read_first_line(int fd, char *out, int capacity)
{
	
}

/*
GOAL:
Read a line into a NUL-terminated buffer, retaining newline when space permits.

TODO:
1. Reserve one byte for NUL.
2. Read byte by byte until newline or EOF.
3. Stop at capacity - 1 bytes.
4. Return copied count or -1 on error.

EXPECTED OUTPUT:
Test 1: 4 [one
]
Test 2: 4 [last]
Test 3: 2 [ab]
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

	fd = ft_test_input("one\ntwo");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_first_line(fd, buffer, 20);
	printf("Test 1: %d [%s]\n", ret, buffer);
	close(fd);

	fd = ft_test_input("last");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_first_line(fd, buffer, 20);
	printf("Test 2: %d [%s]\n", ret, buffer);
	close(fd);

	fd = ft_test_input("abc\ndef");
	if (fd == -1)
		return (1);
	memset(buffer, 0, sizeof(buffer));
	ret = ft_read_first_line(fd, buffer, 3);
	printf("Test 3: %d [%s]\n", ret, buffer);
	close(fd);

	return (0);
}

/*
EDGE CASES:
A line without a trailing newline is still a valid final line.

LEARNING CHECK:
1. Should newline be included?
2. What happens if the buffer fills early?
3. Is EOF an error?
4. How does this connect to get_next_line?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
