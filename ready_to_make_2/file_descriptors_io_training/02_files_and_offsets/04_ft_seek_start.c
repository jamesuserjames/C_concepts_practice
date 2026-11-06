#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

long	ft_seek_start(int fd)
{
	
}

/*
GOAL:
Move a seekable file descriptor to offset zero and return its new offset, or -1.

TODO:
1. Call lseek with offset zero.
2. Use SEEK_SET.
3. Return the resulting offset.
4. Propagate failures as -1.

EXPECTED OUTPUT:
Test 1: 0
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

	fd = ft_test_file("abcd");
	if (fd == -1)
		return (1);
	lseek(fd, 3, SEEK_SET);
	printf("Test 1: %ld\n", ft_seek_start(fd));
	printf("Test 2: %lld\n", (long long)lseek(fd, 0, SEEK_CUR));
	close(fd);
	return (0);
}

/*
EDGE CASES:
lseek cannot reposition pipe descriptors.

LEARNING CHECK:
1. What does SEEK_SET use as its origin?
2. What is a file offset?
3. What does lseek return?
4. Why cannot a pipe be rewound?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
