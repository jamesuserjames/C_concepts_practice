#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>

int	ft_open_readonly(const char *path)
{
	
}

/*
GOAL:
Open an existing file read-only; return its descriptor or -1.

TODO:
1. Call open with O_RDONLY.
2. Return the descriptor from open.
3. Propagate -1 for missing or inaccessible files.
4. Do not close the descriptor in this function.

EXPECTED OUTPUT:
Test 1: 1
Test 2: -1
*/

int	main(void)
{
	char	path[] = "/tmp/ft_open_XXXXXX";
	int		created;
	int		fd;

	created = mkstemp(path);
	if (created == -1)
		return (1);
	close(created);
	fd = ft_open_readonly(path);
	printf("Test 1: %d\n", fd >= 0);
	if (fd >= 0)
		close(fd);
	unlink(path);
	printf("Test 2: %d\n", ft_open_readonly(path));
	return (0);
}

/*
EDGE CASES:
A missing file should not be silently created.

LEARNING CHECK:
1. What does O_RDONLY mean?
2. Who closes a successful descriptor?
3. What is the open failure return value?
4. Why use a temporary path in tests?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
