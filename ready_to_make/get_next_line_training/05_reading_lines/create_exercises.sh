#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")" || exit 1

cat > 00_ft_read_line.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>

char	*ft_read_line(int fd)
{
	
}

/*
GOAL:
Read and allocate one line from a file descriptor.

TODO:
1. Understand the function contract and test inputs.
2. Read one byte at a time; stop at newline or EOF; return NULL on empty EOF.
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

	line = ft_read_line(pipe_fd[0]);
	printf("[%s]", line ? line : "NULL");
	free(line);

	line = ft_read_line(pipe_fd[0]);
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
Test empty or boundary inputs, failure paths, and ownership relevant to: read and allocate one line from a file descriptor.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF

cat > 01_ft_read_multiple_lines.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>

int	ft_read_multiple_lines(int fd)
{
	
}

/*
GOAL:
Count lines in a file descriptor (including an unterminated last line).

TODO:
1. Understand the function contract and test inputs.
2. Read one byte at a time until EOF; return -1 on read error.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 2
Test 2: 2
Test 3: 0
*/

static int	test_with_pipe(const char *text)
{
	int	pipe_fd[2];
	int	result;

	if (pipe(pipe_fd) == -1)
		return (-1);
	if (write(pipe_fd[1], text, strlen(text)) != (ssize_t)strlen(text))
		return (close(pipe_fd[0]), close(pipe_fd[1]), -1);
	close(pipe_fd[1]);
	result = ft_read_multiple_lines(pipe_fd[0]);
	close(pipe_fd[0]);
	return (result);
}

int	main(void)
{
	printf("Test 1: %d\n", test_with_pipe("a\nb\n"));
	printf("Test 2: %d\n", test_with_pipe("a\nb"));
	printf("Test 3: %d\n", test_with_pipe(""));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: count lines in a file descriptor (including an unterminated last line).

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF

cat > 02_ft_read_without_newline.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>

int	ft_read_without_newline(int fd)
{
	
}

/*
GOAL:
Count bytes up to newline or EOF, excluding newline itself.

TODO:
1. Understand the function contract and test inputs.
2. Consume newline when present, but do not include it in the count.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 3
Test 2: 4
Test 3: 0
*/

static int	test_with_pipe(const char *text)
{
	int	pipe_fd[2];
	int	result;

	if (pipe(pipe_fd) == -1)
		return (-1);
	if (write(pipe_fd[1], text, strlen(text)) != (ssize_t)strlen(text))
		return (close(pipe_fd[0]), close(pipe_fd[1]), -1);
	close(pipe_fd[1]);
	result = ft_read_without_newline(pipe_fd[0]);
	close(pipe_fd[0]);
	return (result);
}

int	main(void)
{
	printf("Test 1: %d\n", test_with_pipe("abc\ndef"));
	printf("Test 2: %d\n", test_with_pipe("tail"));
	printf("Test 3: %d\n", test_with_pipe("\n"));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: count bytes up to newline or EOF, excluding newline itself.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF

cat > 03_ft_read_long_line.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>
#include <string.h>

int	ft_read_long_line(int fd)
{
	
}

/*
GOAL:
Count bytes in the first line, even if it exceeds a small buffer.

TODO:
1. Understand the function contract and test inputs.
2. Read one byte at a time and include newline; return -1 on error.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 11
Test 2: 4
Test 3: 0
*/

static int	test_with_pipe(const char *text)
{
	int	pipe_fd[2];
	int	result;

	if (pipe(pipe_fd) == -1)
		return (-1);
	if (write(pipe_fd[1], text, strlen(text)) != (ssize_t)strlen(text))
		return (close(pipe_fd[0]), close(pipe_fd[1]), -1);
	close(pipe_fd[1]);
	result = ft_read_long_line(pipe_fd[0]);
	close(pipe_fd[0]);
	return (result);
}

int	main(void)
{
	printf("Test 1: %d\n", test_with_pipe("abcdefghij\nx"));
	printf("Test 2: %d\n", test_with_pipe("tail"));
	printf("Test 3: %d\n", test_with_pipe(""));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: count bytes in the first line, even if it exceeds a small buffer.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF

echo "Reset 4 exercises in 05_reading_lines"
