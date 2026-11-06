#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>

char	*ft_simple_gnl(int fd)
{
	
}

/*
GOAL:
Read one line at a time across consecutive calls.

TODO:
1. Understand the function contract and test inputs.
2. Use a byte-by-byte approach; no overreading, return NULL at EOF.
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

	line = ft_simple_gnl(pipe_fd[0]);
	printf("[%s]", line ? line : "NULL");
	free(line);

	line = ft_simple_gnl(pipe_fd[0]);
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
Read sequential lines without overreading, plus EOF and unterminated final lines.

LEARNING CHECK:
1. How do consecutive calls differ?
2. How does read remember its position?
3. What does NULL mean at EOF?
4. Who owns the returned line?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
