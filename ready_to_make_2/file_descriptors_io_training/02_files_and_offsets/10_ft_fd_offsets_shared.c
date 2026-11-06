#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_fd_offsets_shared(int fd)
{
	
}

/*
GOAL:
Duplicate fd, read one byte through the duplicate, close it and return original fd current offset.

TODO:
1. Duplicate fd with dup.
2. Read exactly one byte through the duplicate.
3. Close the duplicate.
4. Use lseek SEEK_CUR on the original descriptor.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 1
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

	fd = ft_test_file("abcd");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_fd_offsets_shared(fd));
	printf("Test 2: %lld\n", (long long)lseek(fd, 0, SEEK_CUR));
	close(fd);
	return (0);
}

/*
EDGE CASES:
dup descriptors share their open-file description and offset.

LEARNING CHECK:
1. What is shared after dup?
2. Does closing the duplicate close the original?
3. Why does the original offset move?
4. How does this differ from opening the same path twice?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
