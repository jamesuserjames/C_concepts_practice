#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")" || exit 1

cat > 00_ft_handle_eof.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_handle_eof(int fd)
{
	
}

/*
GOAL:
Return 0 on EOF, 1 on data, -1 on read error.

TODO:
1. Understand the function contract and test inputs.
2. Read one byte and classify the result.
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

	printf("Test 1: %d\n", ft_handle_eof(pipe_fd[0]));
	printf("Test 2: %d\n", ft_handle_eof(pipe_fd[0]));
	close(pipe_fd[0]);
	printf("Test 3: %d\n", ft_handle_eof(-1));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: return 0 on EOF, 1 on data, -1 on read error.

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

cat > 01_ft_handle_read_error.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_handle_read_error(int fd)
{
	
}

/*
GOAL:
Read one byte, returning -1 for failure or actual number read otherwise.

TODO:
1. Understand the function contract and test inputs.
2. Do not mistake EOF (0) for an error.
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

	printf("Test 1: %d\n", ft_handle_read_error(pipe_fd[0]));
	printf("Test 2: %d\n", ft_handle_read_error(pipe_fd[0]));
	close(pipe_fd[0]);
	printf("Test 3: %d\n", ft_handle_read_error(-1));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: read one byte, returning -1 for failure or actual number read otherwise.

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

cat > 02_ft_handle_malloc_error.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

char	*ft_handle_malloc_error(int len)
{
	
}

/*
GOAL:
Allocate len+1 zero-initialized bytes (NULL for negative len).

TODO:
1. Understand the function contract and test inputs.
2. Check allocation and zero each byte; caller owns returned memory.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 1
Test 3: 1
*/

int	main(void)
{
	char	*result;

	result = ft_handle_malloc_error(3);
	printf("Test 1: %d\n", result != NULL
		&& result[0] == 0 && result[3] == 0);
	free(result);

	result = ft_handle_malloc_error(0);
	printf("Test 2: %d\n", result != NULL && result[0] == 0);
	free(result);

	result = ft_handle_malloc_error(-1);
	printf("Test 3: %d\n", result == NULL);
	free(result);
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: allocate len+1 zero-initialized bytes (NULL for negative len).

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

cat > 03_ft_cleanup_stash.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

void	ft_cleanup_stash(char **stash)
{
	
}

/*
GOAL:
Release heap stash and set it to NULL.

TODO:
1. Understand the function contract and test inputs.
2. Handle repeated calls safely and guard NULL pointer-to-pointer.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 1
Test 3: ok
*/

int	main(void)
{
	char	*stash;

	stash = malloc(4);
	if (!stash)
		return (1);
	ft_cleanup_stash(&stash);
	printf("Test 1: %d\n", stash == NULL);

	ft_cleanup_stash(&stash);
	printf("Test 2: %d\n", stash == NULL);

	ft_cleanup_stash(NULL);
	printf("Test 3: ok\n");
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: release heap stash and set it to NULL.

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

echo "Reset 4 exercises in 06_memory_and_errors"
