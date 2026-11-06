#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char	*ft_read_line_alloc(int fd)
{
	
}

/*
GOAL:
Allocate and return one line, including newline if present; NULL at EOF or error.

TODO:
1. Read characters until newline or EOF.
2. Grow allocated storage when needed.
3. Terminate the line with NUL.
4. Return NULL if no bytes remain or on error.

EXPECTED OUTPUT:
Test 1: [one
]
Test 2: [two]
Test 3: [NULL]
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
	int		fd;
	char	*line;

	fd = ft_test_input("one\ntwo");
	if (fd == -1)
		return (1);
	line = ft_read_line_alloc(fd);
	printf("Test 1: [%s]\n", line ? line : "NULL");
	free(line);
	line = ft_read_line_alloc(fd);
	printf("Test 2: [%s]\n", line ? line : "NULL");
	free(line);
	line = ft_read_line_alloc(fd);
	printf("Test 3: [%s]\n", line ? line : "NULL");
	free(line);
	close(fd);
	return (0);
}

/*
EDGE CASES:
Avoid leaks and handle empty-file EOF separately from final no-newline line.

LEARNING CHECK:
1. Who frees the returned line?
2. How does buffer growth work?
3. Why include newline?
4. What is the difference between EOF and an empty line?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
