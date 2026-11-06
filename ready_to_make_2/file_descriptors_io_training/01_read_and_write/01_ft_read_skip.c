#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_read_skip(int fd, int count)
{
	
}

/*
GOAL:
Discard up to count bytes and return the number discarded, or -1 on error.

TODO:
1. Reject negative count.
2. Use a small temporary buffer.
3. Read at most the remaining bytes each time.
4. Stop on EOF and return discarded count.

EXPECTED OUTPUT:
Test 1: 2
Test 2: 3
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

	fd = ft_test_file("abcdef");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_read_skip(fd, 2));
	close(fd);

	fd = ft_test_file("abc");
	if (fd == -1)
		return (1);
	printf("Test 2: %d\n", ft_read_skip(fd, 8));
	close(fd);

	fd = ft_test_file("");
	if (fd == -1)
		return (1);
	printf("Test 3: %d\n", ft_read_skip(fd, 3));
	close(fd);

	return (0);
}

/*
EDGE CASES:
Must not read past EOF or discard more than requested.

LEARNING CHECK:
1. Why use a buffer for skipped bytes?
2. How do you avoid exceeding count?
3. What does EOF do?
4. When is skipping useful in parsing?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
