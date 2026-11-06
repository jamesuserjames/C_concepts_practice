#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_read_at(int fd, char *out, int count, int offset)
{
	
}

/*
GOAL:
Read count bytes starting at offset in a seekable file, returning bytes read or -1.

TODO:
1. Reject negative count and offset.
2. Use lseek to position fd.
3. Read up to count bytes once.
4. Return the read result without NUL termination.

EXPECTED OUTPUT:
Test 1: 3 [cde]
Test 2: 0
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
	char	buffer[16] = {0};
	int		ret;

	fd = ft_test_file("abcdef");
	if (fd == -1)
		return (1);
	ret = ft_read_at(fd, buffer, 3, 2);
	printf("Test 1: %d [%.*s]\n", ret, ret, buffer);
	ret = ft_read_at(fd, buffer, 3, 6);
	printf("Test 2: %d\n", ret);
	close(fd);
	return (0);
}

/*
EDGE CASES:
Reading at EOF returns zero.

LEARNING CHECK:
1. Does this function preserve the original offset?
2. Why use %.*s?
3. What happens at EOF?
4. How does pread differ from lseek then read?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
