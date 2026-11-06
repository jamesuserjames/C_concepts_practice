#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_read_compare(int left_fd, int right_fd)
{
	
}

/*
GOAL:
Return 1 if two input streams have identical byte sequences, otherwise 0; -1 on read failure.

TODO:
1. Read one byte from each stream per iteration.
2. Compare both read counts.
3. Compare bytes when both reads succeed.
4. Stop only when both reach EOF.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

static int	ft_test_input(const char *text)
{
	int	pipe_fd[2];
	int	length;

	if (pipe(pipe_fd) == -1)
		return (-1);
	length = (int)strlen(text);
	if (write(pipe_fd[1], text, length) != length)
	{
		close(pipe_fd[0]);
		close(pipe_fd[1]);
		return (-1);
	}
	close(pipe_fd[1]);
	return (pipe_fd[0]);
}

int	main(void)
{
	int	left_fd;
	int	right_fd;

	left_fd = ft_test_input("abc");
	right_fd = ft_test_input("abc");
	if (left_fd == -1 || right_fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_read_compare(left_fd, right_fd));
	close(left_fd);
	close(right_fd);
	left_fd = ft_test_input("abc");
	right_fd = ft_test_input("ab");
	if (left_fd == -1 || right_fd == -1)
		return (1);
	printf("Test 2: %d\n", ft_read_compare(left_fd, right_fd));
	close(left_fd);
	close(right_fd);
	return (0);
}

/*
EDGE CASES:
Streams of different lengths are not identical.

LEARNING CHECK:
1. Can streams be compared without seeking?
2. What if one stream ends first?
3. How should errors differ from mismatches?
4. Why compare raw bytes?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
