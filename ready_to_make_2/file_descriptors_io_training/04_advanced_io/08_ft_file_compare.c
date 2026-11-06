#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_file_compare(int fd_a, int fd_b)
{
	
}

/*
GOAL:
Compare streams from their current offsets; return 1 if identical, 0 if different, -1 on error.

TODO:
1. Read one byte from each descriptor.
2. Check for errors before comparing.
3. Return 0 if read counts or bytes differ.
4. Return 1 if both reach EOF together.

EXPECTED OUTPUT:
Test 1: 1
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
	int	first;
	int	second;

	first = ft_test_file("abc");
	second = ft_test_file("abc");
	if (first == -1 || second == -1)
		return (1);
	printf("Test 1: %d\n", ft_file_compare(first, second));
	close(first);
	close(second);
	first = ft_test_file("abc");
	second = ft_test_file("abd");
	if (first == -1 || second == -1)
		return (1);
	printf("Test 2: %d\n", ft_file_compare(first, second));
	close(first);
	close(second);
	return (0);
}

/*
EDGE CASES:
Different content or lengths must return 0.

LEARNING CHECK:
1. Why is EOF important for equality?
2. What if reads fail?
3. Does this preserve file offsets?
4. How can comparing streams save memory?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
