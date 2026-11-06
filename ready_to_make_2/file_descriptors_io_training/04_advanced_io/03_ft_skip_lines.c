#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_skip_lines(int fd, int lines)
{
	
}

/*
GOAL:
Consume through up to lines newline bytes and return how many were found.

TODO:
1. Reject negative lines.
2. Read bytes until enough newline characters.
3. Stop at EOF.
4. Return the number of newlines found or -1.

EXPECTED OUTPUT:
Test 1: 2
Test 2: 1
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

	fd = ft_test_file("a\nb\nc");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_skip_lines(fd, 2));
	close(fd);

	fd = ft_test_file("a\nb");
	if (fd == -1)
		return (1);
	printf("Test 2: %d\n", ft_skip_lines(fd, 3));
	close(fd);

	fd = ft_test_file("");
	if (fd == -1)
		return (1);
	printf("Test 3: %d\n", ft_skip_lines(fd, 1));
	close(fd);

	return (0);
}

/*
EDGE CASES:
An unterminated last line does not count as a newline.

LEARNING CHECK:
1. What counts as a line separator?
2. What if there are fewer lines?
3. Why stop as soon as the target is met?
4. How could this help parse a text file?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
