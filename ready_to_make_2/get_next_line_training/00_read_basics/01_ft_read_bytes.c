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
