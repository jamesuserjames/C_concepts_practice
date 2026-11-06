#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>

int	ft_open_append(const char *path)
{
	
}

/*
GOAL:
Open a file for writing at the end, creating it if needed; return fd or -1.

TODO:
1. Call open with O_WRONLY and O_APPEND.
2. Include O_CREAT to permit new files.
3. Provide a creation mode.
4. Return fd or -1, leaving closing to caller.

EXPECTED OUTPUT:
Test 1: [abc]
*/

int	main(void)
{
	char	path[] = "/tmp/ft_append_XXXXXX";
	char	buffer[8] = {0};
	int		fd;

	fd = mkstemp(path);
	if (fd == -1)
		return (1);
	write(fd, "ab", 2);
	close(fd);
	fd = ft_open_append(path);
	if (fd == -1)
		return (1);
	write(fd, "c", 1);
	close(fd);
	fd = open(path, O_RDONLY);
	if (fd == -1)
		return (1);
	read(fd, buffer, 7);
	printf("Test 1: [%s]\n", buffer);
	close(fd);
	unlink(path);
	return (0);
}

/*
EDGE CASES:
O_APPEND places every write at end.

LEARNING CHECK:
1. Which flags are combined?
2. Why is a mode needed with O_CREAT?
3. Does O_APPEND discard existing data?
4. What happens when open fails?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
