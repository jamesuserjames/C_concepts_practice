#include <unistd.h>
#include <stdio.h>

int	ft_write_repeat(int fd, char c, int count)
{
	
}

/*
GOAL:
Write the same character count times; return count or -1.

TODO:
1. Reject negative count values.
2. Loop until count characters are written.
3. Check each write result.
4. Return the total number written.

EXPECTED OUTPUT:
Test 1: 4 [****]
Test 2: 0 []
*/

int	main(void)
{
	int		pipe_fd[2];
	char	buffer[128];
	int		ret;
	int		bytes;

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_repeat(pipe_fd[1], '*', 4);
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 1: %d [%s]\n", ret, buffer);

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_repeat(pipe_fd[1], 'x', 0);
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 2: %d [%s]\n", ret, buffer);

	return (0);
}

/*
EDGE CASES:
Zero repetitions produce no output.

LEARNING CHECK:
1. What is the difference between count and a byte value?
2. What does count 0 do?
3. When must the loop stop?
4. Why keep fd configurable?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
