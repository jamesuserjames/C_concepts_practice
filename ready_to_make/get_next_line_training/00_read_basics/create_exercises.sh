#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")" || exit 1

cat > 00_ft_read_char.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_read_char(int fd, char *out)
{
	
}

/*
GOAL:
Read one byte into out; return read result (1, 0 or -1).

TODO:
1. Understand the function contract and test inputs.
2. Call read once with a one-byte buffer; do not treat EOF as an error.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 1 A
Test 2: 1 B
Test 3: 0
Test 4: -1
*/

int	main(void)
{
	int		pipe_fd[2];
	char	letter;
	int		ret;

	if (pipe(pipe_fd) == -1)
		return (1);
	if (write(pipe_fd[1], "AB", 2) != 2)
		return (close(pipe_fd[0]), close(pipe_fd[1]), 1);
	close(pipe_fd[1]);

	letter = '?';
	ret = ft_read_char(pipe_fd[0], &letter);
	printf("Test 1: %d %c\n", ret, letter);

	ret = ft_read_char(pipe_fd[0], &letter);
	printf("Test 2: %d %c\n", ret, letter);

	printf("Test 3: %d\n", ft_read_char(pipe_fd[0], &letter));
	close(pipe_fd[0]);
	printf("Test 4: %d\n", ft_read_char(-1, &letter));
	return (0);
}

/*
EDGE CASES:
EOF after reading two bytes, and fd -1 for an error.

LEARNING CHECK:
1. Why does read return 1 for one byte?
2. What does a return value of 0 indicate?
3. Does read add a NUL terminator?
4. What happens if the descriptor is invalid?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF

cat > 01_ft_read_bytes.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_read_bytes(int fd, char *out, int len)
{
	
}

/*
GOAL:
Read up to len bytes into out and return the read count.

TODO:
1. Understand the function contract and test inputs.
2. Handle len <= 0 without accessing the buffer; make one read call otherwise.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 3 [abc]
Test 2: 3 [def]
Test 3: 0
Test 4: -1
*/

int	main(void)
{
	int		pipe_fd[2];
	char	buffer[8] = {0};
	int		ret;

	if (pipe(pipe_fd) == -1)
		return (1);
	if (write(pipe_fd[1], "abcdef", 6) != 6)
		return (close(pipe_fd[0]), close(pipe_fd[1]), 1);
	close(pipe_fd[1]);

	ret = ft_read_bytes(pipe_fd[0], buffer, 3);
	printf("Test 1: %d [%.*s]\n", ret, ret > 0 ? ret : 0, buffer);

	ret = ft_read_bytes(pipe_fd[0], buffer, 6);
	printf("Test 2: %d [%.*s]\n", ret, ret > 0 ? ret : 0, buffer);

	printf("Test 3: %d\n", ft_read_bytes(pipe_fd[0], buffer, 2));
	close(pipe_fd[0]);
	printf("Test 4: %d\n", ft_read_bytes(-1, buffer, 2));
	return (0);
}

/*
EDGE CASES:
A short read, EOF, invalid descriptor, and a buffer without automatic NUL termination.

LEARNING CHECK:
1. Can read return fewer bytes than requested?
2. Why does printf use %.*s for these tests?
3. How does the descriptor position change?
4. What must the caller know about the buffer?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF

cat > 02_ft_read_buffer.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_read_buffer(int fd, char *out, int capacity)
{
	
}

/*
GOAL:
Read at most capacity - 1 bytes and NUL-terminate the data.

TODO:
1. Understand the function contract and test inputs.
2. If capacity <= 0 return -1; preserve the number of bytes read.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 3 [hel]
Test 2: 3 [lo!]
Test 3: 0
Test 4: -1
*/

int	main(void)
{
	int		pipe_fd[2];
	char	buffer[6] = {0};
	int		ret;

	if (pipe(pipe_fd) == -1)
		return (1);
	if (write(pipe_fd[1], "hello!", 6) != 6)
		return (close(pipe_fd[0]), close(pipe_fd[1]), 1);
	close(pipe_fd[1]);

	ret = ft_read_buffer(pipe_fd[0], buffer, 4);
	printf("Test 1: %d [%s]\n", ret, buffer);

	ret = ft_read_buffer(pipe_fd[0], buffer, 6);
	printf("Test 2: %d [%s]\n", ret, buffer);

	printf("Test 3: %d\n", ft_read_buffer(pipe_fd[0], buffer, 6));
	close(pipe_fd[0]);
	printf("Test 4: %d\n", ft_read_buffer(-1, buffer, 6));
	return (0);
}

/*
EDGE CASES:
Capacity 1, capacity 0, EOF, invalid descriptors, and reserving room for NUL.

LEARNING CHECK:
1. Why do we read capacity - 1 bytes?
2. Where is the NUL byte placed?
3. What happens on EOF?
4. Which test checks an off-by-one boundary?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF

cat > 03_ft_read_until_newline.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_read_until_newline(int fd, char *out, int capacity)
{
	
}

/*
GOAL:
Read one byte at a time until newline, EOF, or buffer full.

TODO:
1. Understand the function contract and test inputs.
2. Return the bytes stored; preserve the newline when found; terminate with NUL.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 3 [ab
]
Test 2: 2 [cd]
Test 3: 0 []
*/

int	main(void)
{
	int		pipe_fd[2];
	char	buffer[16] = {0};
	int		ret;

	if (pipe(pipe_fd) == -1)
		return (1);
	if (write(pipe_fd[1], "ab\ncd", 5) != 5)
		return (close(pipe_fd[0]), close(pipe_fd[1]), 1);
	close(pipe_fd[1]);

	ret = ft_read_until_newline(pipe_fd[0], buffer, 16);
	printf("Test 1: %d [%s]\n", ret, buffer);

	ret = ft_read_until_newline(pipe_fd[0], buffer, 16);
	printf("Test 2: %d [%s]\n", ret, buffer);

	ret = ft_read_until_newline(pipe_fd[0], buffer, 16);
	printf("Test 3: %d [%s]\n", ret, buffer);
	close(pipe_fd[0]);
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: read one byte at a time until newline, EOF, or buffer full.

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

echo "Reset 4 exercises in 00_read_basics"
