#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>

char	*ft_mini_gnl(int fd)
{
	
}

/*
GOAL:
Return one allocated line using byte-by-byte reads.

TODO:
1. Understand the function contract and test inputs.
2. No persistent stash required for this drill; handle EOF, newline, and failures.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [Hi
][second:NULL]
Test 2: [tail][second:NULL]
Test 3: [NULL][second:NULL]
*/

static void	test_read_lines(const char *text)
{
	int		pipe_fd[2];
	char	*line;

	if (pipe(pipe_fd) == -1)
		return ;
	if (write(pipe_fd[1], text, strlen(text)) != (ssize_t)strlen(text))
	{
		close(pipe_fd[0]);
		close(pipe_fd[1]);
		return ;
	}
	close(pipe_fd[1]);

	line = ft_mini_gnl(pipe_fd[0]);
	printf("[%s]", line ? line : "NULL");
	free(line);

	line = ft_mini_gnl(pipe_fd[0]);
	printf("[second:%s]\n", line ? line : "NULL");
	free(line);
	close(pipe_fd[0]);
}

int	main(void)
{
	printf("Test 1: ");
	test_read_lines("Hi\n");

	printf("Test 2: ");
	test_read_lines("tail");

	printf("Test 3: ");
	test_read_lines("");
	return (0);
}

/*
EDGE CASES:
An empty stream, newline-terminated line, and final line without newline.

LEARNING CHECK:
1. When should a line include \n?
2. Why must the returned line be freed?
3. When is NULL returned?
4. Why does this drill not require a stash?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
