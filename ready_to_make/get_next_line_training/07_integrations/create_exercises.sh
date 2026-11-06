#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")" || exit 1

cat > 00_ft_mini_gnl.c <<'GNL_EXERCISE_EOF'
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
GNL_EXERCISE_EOF

cat > 01_ft_simple_gnl.c <<'GNL_EXERCISE_EOF'
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
GNL_EXERCISE_EOF

cat > 02_ft_full_gnl.c <<'GNL_EXERCISE_EOF'
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
GNL_EXERCISE_EOF

echo "Reset 3 exercises in 07_integrations"
