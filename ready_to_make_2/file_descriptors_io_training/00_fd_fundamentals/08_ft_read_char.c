#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_read_char(int fd, char *out)
{
	
}

/*
GOAL:
Read exactly one attempted byte into out; return read result (1, 0, or -1).

TODO:
1. Call read once with a one-byte buffer.
2. Preserve the read return value.
3. Do not treat EOF as an error.
4. Do not access out when read returns 0 or -1.

EXPECTED OUTPUT:
Test 1: 1
Test 2: A
Test 3: 1
Test 4: B
Test 5: 0
Test 6: -1
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
	int	fd;
	char	letter;

	fd = ft_test_input("AB");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_read_char(fd, &letter));
	printf("Test 2: %c\n", letter);
	printf("Test 3: %d\n", ft_read_char(fd, &letter));
	printf("Test 4: %c\n", letter);
	printf("Test 5: %d\n", ft_read_char(fd, &letter));
	close(fd);
	printf("Test 6: %d\n", ft_read_char(-1, &letter));
	return (0);
}

/*
EDGE CASES:
EOF is 0; invalid fds yield -1.

LEARNING CHECK:
1. What does read return when it gets one byte?
2. Is EOF an error?
3. Why must out have space?
4. What is the difference between read and write?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
