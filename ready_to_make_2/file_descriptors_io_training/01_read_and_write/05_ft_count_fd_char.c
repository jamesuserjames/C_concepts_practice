#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_count_fd_char(int fd, char target)
{
	
}

/*
GOAL:
Count occurrences of target byte in a descriptor; return -1 on read errors.

TODO:
1. Read into a temporary buffer.
2. Compare each byte with target.
3. Add every match to the count.
4. Continue until EOF.

EXPECTED OUTPUT:
Test 1: 3
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

	fd = ft_test_file("banana");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_count_fd_char(fd, 'a'));
	close(fd);

	fd = ft_test_file("hello");
	if (fd == -1)
		return (1);
	printf("Test 2: %d\n", ft_count_fd_char(fd, 'z'));
	close(fd);

	fd = ft_test_file("");
	if (fd == -1)
		return (1);
	printf("Test 3: %d\n", ft_count_fd_char(fd, 'a'));
	close(fd);

	return (0);
}

/*
EDGE CASES:
Empty input contains zero occurrences.

LEARNING CHECK:
1. Why scan only bytes actually read?
2. Can target be a NUL byte?
3. What happens at EOF?
4. Why is this streaming-friendly?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
