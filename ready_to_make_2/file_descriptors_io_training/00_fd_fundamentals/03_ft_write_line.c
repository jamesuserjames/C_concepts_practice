#include <unistd.h>
#include <stdio.h>

int	ft_write_line(int fd, const char *text)
{
	
}

/*
GOAL:
Write a string followed by a newline; return the combined byte count or -1.

TODO:
1. Write every character in text.
2. Detect a failed write.
3. Write one newline after the text.
4. Return total bytes including newline.

EXPECTED OUTPUT:
Test 1: 3 [hi
]
Test 2: 1 [
]
*/

int	main(void)
{
	int		pipe_fd[2];
	char	buffer[128];
	int		ret;
	int		bytes;

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_line(pipe_fd[1], "hi");
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 1: %d [%s]\n", ret, buffer);

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_line(pipe_fd[1], "");
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
Even an empty string should produce a newline.

LEARNING CHECK:
1. Which character represents newline?
2. Why does the return count include it?
3. What if the newline write fails?
4. How could this serve logging code?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
