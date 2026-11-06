#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_copy_range(int src_fd, int dst_fd, int limit)
{
	
}

/*
GOAL:
Copy up to limit bytes from src to dst; return count or -1.

TODO:
1. Reject negative limit.
2. Read at most the remaining byte limit.
3. Write each read chunk completely.
4. Stop at limit or EOF.

EXPECTED OUTPUT:
Test 1: 3
Test 2: [abc]
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
	int	input_fd;
	int	output_fd[2];
	char	buffer[32] = {0};

	input_fd = ft_test_input("abcdef");
	if (input_fd == -1 || pipe(output_fd) == -1)
		return (1);
	printf("Test 1: %d\n", ft_copy_range(input_fd, output_fd[1], 3));
	close(input_fd);
	close(output_fd[1]);
	read(output_fd[0], buffer, 31);
	printf("Test 2: [%s]\n", buffer);
	close(output_fd[0]);
	return (0);
}

/*
EDGE CASES:
Do not consume more than limit bytes.

LEARNING CHECK:
1. How do you bound a chunk read?
2. Can read be short?
3. Why handle short writes?
4. Where would a limited copy help?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
