#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")" || exit 1

cat > 00_ft_make_pipe.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

int	ft_make_pipe(int pipe_fd[2])
{
	
}

/*
GOAL:
Create an anonymous pipe; return 0 on success and -1 on failure.

TODO:
1. Call pipe on the two-integer array.
2. Return 0 on success.
3. Return -1 for errors.
4. Leave both ends open for the caller.

EXPECTED OUTPUT:
Test 1: 1
Test 2: Z
*/

int	main(void)
{
	int	pipe_fd[2];
	char	letter;

	if (ft_make_pipe(pipe_fd) == -1)
		return (1);
	write(pipe_fd[1], "Z", 1);
	printf("Test 1: %d\n", (int)read(pipe_fd[0], &letter, 1));
	printf("Test 2: %c\n", letter);
	close(pipe_fd[0]);
	close(pipe_fd[1]);
	return (0);
}

/*
EDGE CASES:
pipe_fd[0] reads; pipe_fd[1] writes.

LEARNING CHECK:
1. What is the difference between pipe ends?
2. What happens if pipe fails?
3. Who closes both ends?
4. What makes a pipe different from a file?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 01_ft_pipe_send.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

int	ft_pipe_send(int pipe_fd[2], const char *text)
{
	
}

/*
GOAL:
Write a complete string to the write end of an existing pipe.

TODO:
1. Find how many bytes text contains.
2. Write those bytes to pipe_fd[1].
3. Handle partial writes.
4. Return sent byte count or -1.

EXPECTED OUTPUT:
Test 1: 5
Test 2: [hello]
*/

int	main(void)
{
	int	pipe_fd[2];
	char	buffer[16] = {0};

	if (pipe(pipe_fd) == -1)
		return (1);
	printf("Test 1: %d\n", ft_pipe_send(pipe_fd, "hello"));
	close(pipe_fd[1]);
	read(pipe_fd[0], buffer, 15);
	printf("Test 2: [%s]\n", buffer);
	close(pipe_fd[0]);
	return (0);
}

/*
EDGE CASES:
The receiving end must read sent bytes.

LEARNING CHECK:
1. Which end does write use?
2. Can a pipe carry binary data?
3. Why do pipes buffer bytes?
4. When does the reader encounter EOF?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 02_ft_pipe_receive.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

int	ft_pipe_receive(int pipe_fd[2], char *out, int capacity)
{
	
}

/*
GOAL:
Read from the pipe into a NUL-terminated buffer, returning byte count.

TODO:
1. Reject nonpositive capacity.
2. Read at most capacity - 1 bytes.
3. NUL-terminate the result.
4. Return count or -1.

EXPECTED OUTPUT:
Test 1: 5 [hello]
Test 2: 0
*/

int	main(void)
{
	int	pipe_fd[2];
	char	buffer[16] = {0};
	int		ret;

	if (pipe(pipe_fd) == -1)
		return (1);
	write(pipe_fd[1], "hello", 5);
	close(pipe_fd[1]);
	ret = ft_pipe_receive(pipe_fd, buffer, 16);
	printf("Test 1: %d [%s]\n", ret, buffer);
	printf("Test 2: %d\n", ft_pipe_receive(pipe_fd, buffer, 16));
	close(pipe_fd[0]);
	return (0);
}

/*
EDGE CASES:
A read after all data and write ends are closed returns 0.

LEARNING CHECK:
1. Why close the write end?
2. Why leave room for NUL?
3. What does a second read return?
4. How is a pipe similar to stdin?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 03_ft_pipe_echo.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_pipe_echo(int in_fd, int out_fd)
{
	
}

/*
GOAL:
Read all bytes from an input descriptor and echo them to output.

TODO:
1. Read input in chunks.
2. Write each chunk to out_fd.
3. Handle partial writes.
4. Return total bytes echoed or -1.

EXPECTED OUTPUT:
Test 1: 5
Test 2: [hello]
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
	int	in_fd;
	int	out_fd[2];
	char	buffer[32] = {0};

	in_fd = ft_test_input("hello");
	if (in_fd == -1 || pipe(out_fd) == -1)
		return (1);
	printf("Test 1: %d\n", ft_pipe_echo(in_fd, out_fd[1]));
	close(in_fd);
	close(out_fd[1]);
	read(out_fd[0], buffer, 31);
	printf("Test 2: [%s]\n", buffer);
	close(out_fd[0]);
	return (0);
}

/*
EDGE CASES:
Do not echo more bytes than actually read.

LEARNING CHECK:
1. Why use two descriptors?
2. What is an echo program?
3. Why detect short writes?
4. When should the loop stop?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 04_ft_pipe_count.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_pipe_count(int read_fd)
{
	
}

/*
GOAL:
Count bytes arriving through a pipe until EOF; return -1 for errors.

TODO:
1. Read repeated chunks.
2. Add actual read counts.
3. Stop only on EOF.
4. Return -1 for read failures.

EXPECTED OUTPUT:
Test 1: 3
Test 2: 0
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

	fd = ft_test_input("abc");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_pipe_count(fd));
	close(fd);

	fd = ft_test_input("");
	if (fd == -1)
		return (1);
	printf("Test 2: %d\n", ft_pipe_count(fd));
	close(fd);

	return (0);
}

/*
EDGE CASES:
The same logic works for file descriptors from files or pipes.

LEARNING CHECK:
1. What signals pipe EOF?
2. Why must writers eventually close?
3. Can pipe count use lseek?
4. What is blocking read?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 05_ft_pipe_close_writer.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

int	ft_pipe_close_writer(int pipe_fd[2])
{
	
}

/*
GOAL:
Close only the write end of a pipe; return 0 or -1.

TODO:
1. Close pipe_fd[1].
2. Return 0 on success.
3. Return -1 on failure.
4. Leave pipe_fd[0] open.

EXPECTED OUTPUT:
Test 1: 0
Test 2: 0
*/

int	main(void)
{
	int	pipe_fd[2];
	char	letter;

	if (pipe(pipe_fd) == -1)
		return (1);
	printf("Test 1: %d\n", ft_pipe_close_writer(pipe_fd));
	printf("Test 2: %d\n", (int)read(pipe_fd[0], &letter, 1));
	close(pipe_fd[0]);
	return (0);
}

/*
EDGE CASES:
Reading an empty pipe with all writers closed yields EOF.

LEARNING CHECK:
1. Which pipe end is closed?
2. Why does read not block here?
3. What does EOF mean for a pipe?
4. Why are unused pipe ends closed?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 06_ft_pipe_read_byte.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

int	ft_pipe_read_byte(int pipe_fd[2], char *out)
{
	
}

/*
GOAL:
Read one byte from the read end of an existing pipe.

TODO:
1. Use pipe_fd[0] for read.
2. Request exactly one byte.
3. Return the read result.
4. Do not close descriptors.

EXPECTED OUTPUT:
Test 1: 1
Test 2: K
Test 3: 0
*/

int	main(void)
{
	int	pipe_fd[2];
	char	letter;

	if (pipe(pipe_fd) == -1)
		return (1);
	write(pipe_fd[1], "K", 1);
	close(pipe_fd[1]);
	printf("Test 1: %d\n", ft_pipe_read_byte(pipe_fd, &letter));
	printf("Test 2: %c\n", letter);
	printf("Test 3: %d\n", ft_pipe_read_byte(pipe_fd, &letter));
	close(pipe_fd[0]);
	return (0);
}

/*
EDGE CASES:
EOF after the single byte should be zero, not -1.

LEARNING CHECK:
1. Which end is read-only?
2. What is a pipe byte stream?
3. When is EOF returned?
4. Why not close the pipe in this helper?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 07_ft_redirect_fd.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

int	ft_redirect_fd(int source_fd, int target_fd)
{
	
}

/*
GOAL:
Make target_fd refer to the same open file description as source_fd using dup2.

TODO:
1. Call dup2 with the supplied descriptors.
2. Return 0 on success.
3. Return -1 on error.
4. Do not close source_fd.

EXPECTED OUTPUT:
Test 1: 0
Test 2: R
*/

int	main(void)
{
	int	pipe_fd[2];
	int	copy;
	char	letter;

	if (pipe(pipe_fd) == -1)
		return (1);
	copy = dup(pipe_fd[1]);
	if (copy == -1)
		return (1);
	printf("Test 1: %d\n", ft_redirect_fd(pipe_fd[1], copy));
	write(copy, "R", 1);
	close(copy);
	close(pipe_fd[1]);
	read(pipe_fd[0], &letter, 1);
	printf("Test 2: %c\n", letter);
	close(pipe_fd[0]);
	return (0);
}

/*
EDGE CASES:
dup2 replaces target_fd when both differ.

LEARNING CHECK:
1. What does dup2 do to target_fd?
2. What if both descriptors are equal?
3. Who closes target_fd later?
4. How can dup2 redirect stdout?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 08_ft_redirect_stdin.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_redirect_stdin(int source_fd)
{
	
}

/*
GOAL:
Redirect standard input (fd 0) to source_fd using dup2.

TODO:
1. Use dup2 with source_fd and STDIN_FILENO.
2. Return 0 on success.
3. Return -1 on failure.
4. Do not close source_fd.

EXPECTED OUTPUT:
Test 1: 0
Test 2: 1
Test 3: Q
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
	int	saved_stdin;
	char	letter;

	input_fd = ft_test_input("Q");
	if (input_fd == -1)
		return (1);
	saved_stdin = dup(STDIN_FILENO);
	if (saved_stdin == -1)
		return (1);
	printf("Test 1: %d\n", ft_redirect_stdin(input_fd));
	printf("Test 2: %d\n", (int)read(STDIN_FILENO, &letter, 1));
	printf("Test 3: %c\n", letter);
	dup2(saved_stdin, STDIN_FILENO);
	close(saved_stdin);
	close(input_fd);
	return (0);
}

/*
EDGE CASES:
Always restore stdin in test code.

LEARNING CHECK:
1. What is STDIN_FILENO?
2. What does dup2 replace?
3. Why save stdin before redirecting?
4. How does shell input redirection work?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 09_ft_write_stderr.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

int	ft_write_stderr(const char *text)
{
	
}

/*
GOAL:
Write a string to standard error and return bytes written or -1.

TODO:
1. Use STDERR_FILENO (2).
2. Write every character in text.
3. Check for write errors.
4. Return total bytes.

EXPECTED OUTPUT:
Test 1: 5 [error]
*/

int	main(void)
{
	int	pipe_fd[2];
	int	saved_stderr;
	char	buffer[32] = {0};
	int		ret;

	if (pipe(pipe_fd) == -1)
		return (1);
	saved_stderr = dup(STDERR_FILENO);
	if (saved_stderr == -1)
		return (1);
	dup2(pipe_fd[1], STDERR_FILENO);
	ret = ft_write_stderr("error");
	dup2(saved_stderr, STDERR_FILENO);
	close(saved_stderr);
	close(pipe_fd[1]);
	read(pipe_fd[0], buffer, 31);
	close(pipe_fd[0]);
	printf("Test 1: %d [%s]\n", ret, buffer);
	return (0);
}

/*
EDGE CASES:
Standard error is separate from standard output.

LEARNING CHECK:
1. Which descriptor number is stderr?
2. Why redirect stderr for the test?
3. What does write return?
4. Why are error messages often sent to stderr?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 10_ft_pipe_uppercase.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_pipe_uppercase(int input_fd, int output_fd)
{
	
}

/*
GOAL:
Read a stream, convert ASCII lowercase to uppercase, and write the result.

TODO:
1. Read from input_fd in chunks.
2. Convert ASCII a-z to A-Z.
3. Write each processed chunk fully.
4. Return the byte count or -1 on failure.

EXPECTED OUTPUT:
Test 1: 6
Test 2: [HI 42!]
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

	input_fd = ft_test_input("Hi 42!");
	if (input_fd == -1 || pipe(output_fd) == -1)
		return (1);
	printf("Test 1: %d\n", ft_pipe_uppercase(input_fd, output_fd[1]));
	close(input_fd);
	close(output_fd[1]);
	read(output_fd[0], buffer, 31);
	printf("Test 2: [%s]\n", buffer);
	close(output_fd[0]);
	return (0);
}

/*
EDGE CASES:
Only ASCII lowercase letters should change.

LEARNING CHECK:
1. Why process only bytes read?
2. What are ASCII letter ranges?
3. Why can write be partial?
4. How could this be used in a Unix pipeline?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 11_ft_pipe_chain.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_pipe_chain(int source_fd, int sink_fd)
{
	
}

/*
GOAL:
Copy an input stream to an output descriptor byte-for-byte.

TODO:
1. Read from the source until EOF.
2. Forward each chunk to sink_fd.
3. Handle short writes.
4. Return forwarded byte count or -1.

EXPECTED OUTPUT:
Test 1: 5
Test 2: [chain]
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

	input_fd = ft_test_input("chain");
	if (input_fd == -1 || pipe(output_fd) == -1)
		return (1);
	printf("Test 1: %d\n", ft_pipe_chain(input_fd, output_fd[1]));
	close(input_fd);
	close(output_fd[1]);
	read(output_fd[0], buffer, 31);
	printf("Test 2: [%s]\n", buffer);
	close(output_fd[0]);
	return (0);
}

/*
EDGE CASES:
The source and sink may be pipes or files.

LEARNING CHECK:
1. What makes descriptors interchangeable?
2. Why is this called streaming?
3. When does the copy stop?
4. How do shell pipelines pass bytes?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

echo "Reset 12 exercises in 03_pipes_and_redirection!"
