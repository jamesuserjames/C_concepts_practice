#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_line_length_fd(int fd)
{
	
}

/*
GOAL:
Consume through the first newline or EOF, returning consumed byte count.

TODO:
1. Read one byte at a time.
2. Increment count for each byte.
3. Stop after newline or EOF.
4. Return -1 if read fails.

EXPECTED OUTPUT:
Test 1: 4
Test 2: 4
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

	fd = ft_test_file("abc\nxyz");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_line_length_fd(fd));
	close(fd);

	fd = ft_test_file("last");
	if (fd == -1)
		return (1);
	printf("Test 2: %d\n", ft_line_length_fd(fd));
	close(fd);

	fd = ft_test_file("");
	if (fd == -1)
		return (1);
	printf("Test 3: %d\n", ft_line_length_fd(fd));
	close(fd);

	return (0);
}

/*
EDGE CASES:
A line ending consumes one byte.

LEARNING CHECK:
1. Does newline count?
2. What if no newline exists?
3. How is EOF handled?
4. Why might one-byte reads be slow?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
