#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

long	ft_seek_forward(int fd, int bytes)
{
	
}

/*
GOAL:
Move a seekable descriptor forward by bytes relative to its current position.

TODO:
1. Reject negative bytes for this exercise.
2. Call lseek using SEEK_CUR.
3. Pass bytes as the offset.
4. Return the new offset or -1.

EXPECTED OUTPUT:
Test 1: 2
Test 2: 5
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
	printf("Test 1: %ld\n", ft_seek_forward(fd, 2));
	printf("Test 2: %ld\n", ft_seek_forward(fd, 3));
	close(fd);
	return (0);
}

/*
EDGE CASES:
Seeking beyond EOF is allowed for regular files.

LEARNING CHECK:
1. What does SEEK_CUR mean?
2. Does seeking read any bytes?
3. Can the offset pass EOF?
4. When is relative seeking useful?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
