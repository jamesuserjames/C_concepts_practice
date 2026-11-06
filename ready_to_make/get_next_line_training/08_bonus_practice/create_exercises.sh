#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")" || exit 1

cat > 00_ft_fd_stash.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_fd_stash(int fd, int value)
{
	
}

/*
GOAL:
Keep a separate running total for each fd 0..15.

TODO:
1. Understand the function contract and test inputs.
2. Return -1 for fd outside 0..15; use a single static array.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 5
Test 2: 7
Test 3: 7
Test 4: -1
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_fd_stash(3, 5));
	printf("Test 2: %d\n", ft_fd_stash(4, 7));
	printf("Test 3: %d\n", ft_fd_stash(3, 2));
	printf("Test 4: %d\n", ft_fd_stash(-1, 1));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: keep a separate running total for each fd 0..15.

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

cat > 01_ft_multiple_fds.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_multiple_fds(int fd1, int fd2)
{
	
}

/*
GOAL:
Read one byte from each supplied fd; return their unsigned-byte sum.

TODO:
1. Understand the function contract and test inputs.
2. Return -1 if either read fails or reaches EOF.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 131
Test 2: -1
*/

int	main(void)
{
	int	first_pipe[2];
	int	second_pipe[2];

	if (pipe(first_pipe) == -1)
		return (1);
	if (pipe(second_pipe) == -1)
		return (close(first_pipe[0]), close(first_pipe[1]), 1);
	if (write(first_pipe[1], "A", 1) != 1
		|| write(second_pipe[1], "B", 1) != 1)
		return (1);
	close(first_pipe[1]);
	close(second_pipe[1]);

	printf("Test 1: %d\n", ft_multiple_fds(first_pipe[0], second_pipe[0]));
	printf("Test 2: %d\n", ft_multiple_fds(first_pipe[0], second_pipe[0]));
	close(first_pipe[0]);
	close(second_pipe[0]);
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: read one byte from each supplied fd; return their unsigned-byte sum.

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

cat > 02_ft_interleaved_reads.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_interleaved_reads(int fd1, int fd2)
{
	
}

/*
GOAL:
Read alternating bytes from two fds until both hit EOF.

TODO:
1. Understand the function contract and test inputs.
2. Return total bytes read; return -1 for errors; no output required.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 5
Test 2: -1
*/

int	main(void)
{
	int	first_pipe[2];
	int	second_pipe[2];

	if (pipe(first_pipe) == -1)
		return (1);
	if (pipe(second_pipe) == -1)
		return (close(first_pipe[0]), close(first_pipe[1]), 1);
	if (write(first_pipe[1], "abc", 3) != 3
		|| write(second_pipe[1], "XY", 2) != 2)
		return (1);
	close(first_pipe[1]);
	close(second_pipe[1]);

	printf("Test 1: %d\n", ft_interleaved_reads(first_pipe[0], second_pipe[0]));
	close(first_pipe[0]);
	close(second_pipe[0]);
	printf("Test 2: %d\n", ft_interleaved_reads(-1, -1));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: read alternating bytes from two fds until both hit EOF.

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

echo "Reset 3 exercises in 08_bonus_practice"
