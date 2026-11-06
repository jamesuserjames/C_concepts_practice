#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_count_fd_newlines(int fd)
{
	
}

/*
GOAL:
Count newline bytes in data read from fd; return -1 on errors.

TODO:
1. Read successive chunks.
2. Inspect each byte for newline.
3. Keep a total across chunks.
4. Stop at EOF or return -1 on error.

EXPECTED OUTPUT:
Test 1: 2
Test 2: 0
Test 3: 0
*/

static int	ft_test_file(const char *text)
{
	char	path[] = "/tmp/ft_io_XXXXXX";
	int		fd;
	int		length;

	fd = mkstemp(path);
	if (fd == -1)
		return (-1);
	unlink(path);
	length = (int)strlen(text);
	if (write(fd, text, length) != length || lseek(fd, 0, SEEK_SET) == -1)
	{
		close(fd);
		return (-1);
	}
	return (fd);
}

int	main(void)
{
	int	fd;

	fd = ft_test_file("a\nb\n");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_count_fd_newlines(fd));
	close(fd);

	fd = ft_test_file("abc");
	if (fd == -1)
		return (1);
	printf("Test 2: %d\n", ft_count_fd_newlines(fd));
	close(fd);

	fd = ft_test_file("");
	if (fd == -1)
		return (1);
	printf("Test 3: %d\n", ft_count_fd_newlines(fd));
	close(fd);

	return (0);
}

/*
EDGE CASES:
A final unterminated line does not add a newline byte.

LEARNING CHECK:
1. What is the byte for newline?
2. Does every line end with newline?
3. What does read return at EOF?
4. How does this differ from counting logical lines?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
