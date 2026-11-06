#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_count_fd_bytes(int fd)
{
	
}

/*
GOAL:
Consume the entire descriptor and return its byte count, or -1 for a read error.

TODO:
1. Read repeatedly into a temporary buffer.
2. Accumulate successful read counts.
3. Stop when read returns zero.
4. Return -1 if read fails.

EXPECTED OUTPUT:
Test 1: 5
Test 2: 0
Test 3: 9
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

	fd = ft_test_file("hello");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_count_fd_bytes(fd));
	close(fd);

	fd = ft_test_file("");
	if (fd == -1)
		return (1);
	printf("Test 2: %d\n", ft_count_fd_bytes(fd));
	close(fd);

	fd = ft_test_file("123456789");
	if (fd == -1)
		return (1);
	printf("Test 3: %d\n", ft_count_fd_bytes(fd));
	close(fd);

	return (0);
}

/*
EDGE CASES:
Counts bytes, not characters or NUL-terminated strings.

LEARNING CHECK:
1. Does reading consume bytes?
2. Why use a buffer rather than one byte?
3. What is EOF?
4. How can this measure file content?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
