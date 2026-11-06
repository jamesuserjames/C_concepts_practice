#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")" || exit 1

cat > 00_ft_check_fd.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_check_fd(int fd)
{
	
}

/*
GOAL:
Check a file descriptor with a zero-byte read.

TODO:
1. Understand the function contract and test inputs.
2. Return 1 if read(fd, buffer, 0) succeeds, -1 if it fails. Zero-byte calls do not guarantee later reads.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: -1
Test 3: 1
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_check_fd(0));
	printf("Test 2: %d\n", ft_check_fd(-1));
	printf("Test 3: %d\n", ft_check_fd(1));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: check a file descriptor with a zero-byte read.

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

cat > 01_ft_read_file.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_read_file(int fd, char *out, int capacity)
{
	
}

/*
GOAL:
Read a supplied file descriptor into a bounded NUL-terminated buffer.

TODO:
1. Understand the function contract and test inputs.
2. Handle EOF and invalid fds; return -1 on errors.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 6 [sample]
Test 2: 0
Test 3: -1
*/

int	main(void)
{
	int		pipe_fd[2];
	char	buffer[12] = {0};
	int		ret;

	if (pipe(pipe_fd) == -1)
		return (1);
	if (write(pipe_fd[1], "sample", 6) != 6)
		return (close(pipe_fd[0]), close(pipe_fd[1]), 1);
	close(pipe_fd[1]);

	ret = ft_read_file(pipe_fd[0], buffer, 12);
	printf("Test 1: %d [%s]\n", ret, buffer);

	printf("Test 2: %d\n", ft_read_file(pipe_fd[0], buffer, 12));
	close(pipe_fd[0]);
	printf("Test 3: %d\n", ft_read_file(-1, buffer, 12));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: read a supplied file descriptor into a bounded NUL-terminated buffer.

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

cat > 02_ft_read_stdin.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_read_stdin(char *out, int capacity)
{
	
}

/*
GOAL:
Read from standard input (fd 0) and terminate the buffer.

TODO:
1. Understand the function contract and test inputs.
2. Use read(0, ...); return bytes read; capacity must reserve NUL.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 5 [input]
*/

static int	test_standard_input(char *buffer, int capacity)
{
	int	pipe_fd[2];
	int	saved_stdin;
	int	ret;

	if (pipe(pipe_fd) == -1)
		return (-1);
	if (write(pipe_fd[1], "input", 5) != 5)
		return (close(pipe_fd[0]), close(pipe_fd[1]), -1);
	close(pipe_fd[1]);
	saved_stdin = dup(0);
	if (saved_stdin == -1 || dup2(pipe_fd[0], 0) == -1)
		return (close(pipe_fd[0]), -1);
	close(pipe_fd[0]);
	ret = ft_read_stdin(buffer, capacity);
	dup2(saved_stdin, 0);
	close(saved_stdin);
	return (ret);
}

int	main(void)
{
	char	buffer[12] = {0};
	int		ret;

	ret = test_standard_input(buffer, sizeof(buffer));
	printf("Test 1: %d [%s]\n", ret, buffer);
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: read from standard input (fd 0) and terminate the buffer.

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

cat > 03_ft_read_error.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_read_error(int fd)
{
	
}

/*
GOAL:
Translate read results into 1 (data), 0 (EOF), or -1 (error).

TODO:
1. Understand the function contract and test inputs.
2. Read a single byte; distinguish all three read outcomes.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
Test 3: -1
*/

int	main(void)
{
	int	pipe_fd[2];

	if (pipe(pipe_fd) == -1)
		return (1);
	if (write(pipe_fd[1], "X", 1) != 1)
		return (close(pipe_fd[0]), close(pipe_fd[1]), 1);
	close(pipe_fd[1]);

	printf("Test 1: %d\n", ft_read_error(pipe_fd[0]));
	printf("Test 2: %d\n", ft_read_error(pipe_fd[0]));
	close(pipe_fd[0]);
	printf("Test 3: %d\n", ft_read_error(-1));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: translate read results into 1 (data), 0 (EOF), or -1 (error).

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

echo "Reset 4 exercises in 01_file_descriptors"
