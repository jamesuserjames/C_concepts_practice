#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

char	*ft_full_gnl(int fd)
{
	
}

/*
GOAL:
Build a buffered line reader with retained extra bytes.

TODO:
1. Understand the function contract and test inputs.
2. Respect BUFFER_SIZE and use a static stash; free on error and end-of-file.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [Hello
]Test 2: [World
]Test 3: [last]
Test 4: 1
*/

static void	print_next_line(int fd, int number)
{
	char	*line;

	line = ft_full_gnl(fd);
	if (number == 4)
		printf("Test 4: %d\n", line == NULL);
	else
	{
		printf("Test %d: [%s]", number, line ? line : "NULL");
		if (number == 3)
			printf("\n");
	}
	free(line);
}

int	main(void)
{
	int	pipe_fd[2];

	if (pipe(pipe_fd) == -1)
		return (1);
	if (write(pipe_fd[1], "Hello\nWorld\nlast", 16) != 16)
		return (close(pipe_fd[0]), close(pipe_fd[1]), 1);
	close(pipe_fd[1]);

	print_next_line(pipe_fd[0], 1);
	print_next_line(pipe_fd[0], 2);
	print_next_line(pipe_fd[0], 3);
	print_next_line(pipe_fd[0], 4);
	close(pipe_fd[0]);
	return (0);
}

/*
EDGE CASES:
More than one line, an unterminated final line, EOF, and buffer sizes smaller than lines.

LEARNING CHECK:
1. Where are leftover bytes stored?
2. How do you find a newline?
3. When do you free the stash?
4. Why test BUFFER_SIZE=1?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
