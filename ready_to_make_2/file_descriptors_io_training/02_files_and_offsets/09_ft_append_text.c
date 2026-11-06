#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_append_text(int fd, const char *text)
{
	
}

/*
GOAL:
Move to file end, append text, and return bytes written or -1.

TODO:
1. Seek to the end.
2. Measure or walk through text.
3. Write all text bytes.
4. Return count or -1 on failure.

EXPECTED OUTPUT:
Test 1: 2
Test 2: [abcd]
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

	fd = ft_test_file("ab");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_append_text(fd, "cd"));
	lseek(fd, 0, SEEK_SET);
	read(fd, buffer, 4);
	printf("Test 2: [%s]\n", buffer);
	close(fd);
	return (0);
}

/*
EDGE CASES:
lseek-based appending is not atomic across concurrent writers.

LEARNING CHECK:
1. Why does SEEK_END matter?
2. How is this different from O_APPEND?
3. What if text is empty?
4. Who owns the file descriptor?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
