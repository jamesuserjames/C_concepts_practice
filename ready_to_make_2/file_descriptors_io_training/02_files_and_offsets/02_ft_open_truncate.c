#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>

int	ft_open_truncate(const char *path)
{
	
}

/*
GOAL:
Open a file for writing and truncate existing contents to zero bytes.

TODO:
1. Use O_WRONLY, O_CREAT and O_TRUNC.
2. Supply suitable file permissions.
3. Return the resulting descriptor.
4. Leave descriptor closing to caller.

EXPECTED OUTPUT:
Test 1: 0
*/

int	main(void)
{
	char	path[] = "/tmp/ft_trunc_XXXXXX";
	int		fd;

	fd = mkstemp(path);
	if (fd == -1)
		return (1);
	write(fd, "old", 3);
	close(fd);
	fd = ft_open_truncate(path);
	if (fd == -1)
		return (1);
	close(fd);
	fd = open(path, O_RDONLY);
	if (fd == -1)
		return (1);
	printf("Test 1: %lld\n", (long long)lseek(fd, 0, SEEK_END));
	close(fd);
	unlink(path);
	return (0);
}

/*
EDGE CASES:
Truncation destroys previous file content.

LEARNING CHECK:
1. What does O_TRUNC do?
2. Can you truncate a pipe?
3. Why is O_CREAT useful?
4. When is truncation unsafe?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
