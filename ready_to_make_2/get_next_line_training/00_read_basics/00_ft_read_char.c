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
