#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")" || exit 1

cat > 00_ft_write_all.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

int	ft_write_all(int fd, const void *data, int size)
{
	
}

/*
GOAL:
Write all size bytes with repeated calls; return size or -1.

TODO:
1. Reject negative sizes.
2. Loop until all bytes have been written.
3. Advance by the actual write result.
4. Return -1 on failure or no progress.

EXPECTED OUTPUT:
Test 1: 5 [hello]
Test 2: 0 []
*/

int	main(void)
{
	int		pipe_fd[2];
	char	buffer[128];
	int		ret;
	int		bytes;

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_all(pipe_fd[1], "hello", 5);
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 1: %d [%s]\n", ret, buffer);

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_all(pipe_fd[1], "", 0);
	close(pipe_fd[1]);
	bytes = read(pipe_fd[0], buffer, sizeof(buffer) - 1);
	close(pipe_fd[0]);
	if (bytes < 0)
		return (1);
	buffer[bytes] = '\0';
	printf("Test 2: %d [%s]\n", ret, buffer);

	return (0);
}

/*
EDGE CASES:
The caller specifies byte count for binary-safe output.

LEARNING CHECK:
1. What is a short write?
2. What does zero progress mean?
3. Why is void pointer appropriate here?
4. Where is write_all useful?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 01_ft_read_all.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_read_all(int fd, void *out, int capacity)
{
	
}

/*
GOAL:
Fill out with up to capacity bytes, stopping at EOF; return count or -1.

TODO:
1. Reject negative capacity.
2. Repeat read until capacity bytes or EOF.
3. Advance destination pointer by bytes read.
4. Return count, or -1 on error.

EXPECTED OUTPUT:
Test 1: 4 [abcd]
Test 2: 2 [ef]
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
	char	buffer[16] = {0};
	int		ret;

	fd = ft_test_input("abcdef");
	if (fd == -1)
		return (1);
	ret = ft_read_all(fd, buffer, 4);
	printf("Test 1: %d [%.*s]\n", ret, ret, buffer);
	ret = ft_read_all(fd, buffer, 10);
	printf("Test 2: %d [%.*s]\n", ret, ret, buffer);
	close(fd);
	return (0);
}

/*
EDGE CASES:
Out is raw memory: do not add terminator yourself.

LEARNING CHECK:
1. Why use void*?
2. How is this different from read once?
3. Who knows output capacity?
4. What happens at EOF?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 02_ft_line_length_fd.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_line_length_fd(int fd)
{
	
}

/*
GOAL:
Consume through the first newline or EOF, returning consumed byte count.

TODO:
1. Read one byte at a time.
2. Increment count for each byte.
3. Stop after newline or EOF.
4. Return -1 if read fails.

EXPECTED OUTPUT:
Test 1: 4
Test 2: 4
Test 3: 0
*/

static int	ft_test_file(const char *text)
{
	char	path[] = "/tmp/ft_io_XXXXXX";
	int		fd;
	int		length;

	fd = mkstemp(path);
	if (fd == -1)
		return (-1);
	unlink(path);
	length = (int)strlen(text);
	if (write(fd, text, length) != length || lseek(fd, 0, SEEK_SET) == -1)
	{
		close(fd);
		return (-1);
	}
	return (fd);
}

int	main(void)
{
	int	fd;

	fd = ft_test_file("abc\nxyz");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_line_length_fd(fd));
	close(fd);

	fd = ft_test_file("last");
	if (fd == -1)
		return (1);
	printf("Test 2: %d\n", ft_line_length_fd(fd));
	close(fd);

	fd = ft_test_file("");
	if (fd == -1)
		return (1);
	printf("Test 3: %d\n", ft_line_length_fd(fd));
	close(fd);

	return (0);
}

/*
EDGE CASES:
A line ending consumes one byte.

LEARNING CHECK:
1. Does newline count?
2. What if no newline exists?
3. How is EOF handled?
4. Why might one-byte reads be slow?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 03_ft_skip_lines.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_skip_lines(int fd, int lines)
{
	
}

/*
GOAL:
Consume through up to lines newline bytes and return how many were found.

TODO:
1. Reject negative lines.
2. Read bytes until enough newline characters.
3. Stop at EOF.
4. Return the number of newlines found or -1.

EXPECTED OUTPUT:
Test 1: 2
Test 2: 1
Test 3: 0
*/

static int	ft_test_file(const char *text)
{
	char	path[] = "/tmp/ft_io_XXXXXX";
	int		fd;
	int		length;

	fd = mkstemp(path);
	if (fd == -1)
		return (-1);
	unlink(path);
	length = (int)strlen(text);
	if (write(fd, text, length) != length || lseek(fd, 0, SEEK_SET) == -1)
	{
		close(fd);
		return (-1);
	}
	return (fd);
}

int	main(void)
{
	int	fd;

	fd = ft_test_file("a\nb\nc");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_skip_lines(fd, 2));
	close(fd);

	fd = ft_test_file("a\nb");
	if (fd == -1)
		return (1);
	printf("Test 2: %d\n", ft_skip_lines(fd, 3));
	close(fd);

	fd = ft_test_file("");
	if (fd == -1)
		return (1);
	printf("Test 3: %d\n", ft_skip_lines(fd, 1));
	close(fd);

	return (0);
}

/*
EDGE CASES:
An unterminated last line does not count as a newline.

LEARNING CHECK:
1. What counts as a line separator?
2. What if there are fewer lines?
3. Why stop as soon as the target is met?
4. How could this help parse a text file?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 04_ft_read_line_alloc.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char	*ft_read_line_alloc(int fd)
{
	
}

/*
GOAL:
Allocate and return one line, including newline if present; NULL at EOF or error.

TODO:
1. Read characters until newline or EOF.
2. Grow allocated storage when needed.
3. Terminate the line with NUL.
4. Return NULL if no bytes remain or on error.

EXPECTED OUTPUT:
Test 1: [one
]
Test 2: [two]
Test 3: [NULL]
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
	int		fd;
	char	*line;

	fd = ft_test_input("one\ntwo");
	if (fd == -1)
		return (1);
	line = ft_read_line_alloc(fd);
	printf("Test 1: [%s]\n", line ? line : "NULL");
	free(line);
	line = ft_read_line_alloc(fd);
	printf("Test 2: [%s]\n", line ? line : "NULL");
	free(line);
	line = ft_read_line_alloc(fd);
	printf("Test 3: [%s]\n", line ? line : "NULL");
	free(line);
	close(fd);
	return (0);
}

/*
EDGE CASES:
Avoid leaks and handle empty-file EOF separately from final no-newline line.

LEARNING CHECK:
1. Who frees the returned line?
2. How does buffer growth work?
3. Why include newline?
4. What is the difference between EOF and an empty line?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 05_ft_copy_range.c <<'EOF'
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
EOF

cat > 06_ft_reverse_file.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_reverse_file(int src_fd, int dst_fd)
{
	
}

/*
GOAL:
Output bytes from a seekable input file in reverse order; return byte count or -1.

TODO:
1. Find the input length with lseek.
2. Seek to each position from last to first.
3. Read and write each byte.
4. Return total count, or -1 on error.

EXPECTED OUTPUT:
Test 1: 4
Test 2: [dcba]
*/

static int	ft_test_file(const char *text)
{
	char	path[] = "/tmp/ft_io_XXXXXX";
	int		fd;
	int		length;

	fd = mkstemp(path);
	if (fd == -1)
		return (-1);
	unlink(path);
	length = (int)strlen(text);
	if (write(fd, text, length) != length || lseek(fd, 0, SEEK_SET) == -1)
	{
		close(fd);
		return (-1);
	}
	return (fd);
}

int	main(void)
{
	int	input_fd;
	int	output_fd[2];
	char	buffer[32] = {0};

	input_fd = ft_test_file("abcd");
	if (input_fd == -1 || pipe(output_fd) == -1)
		return (1);
	printf("Test 1: %d\n", ft_reverse_file(input_fd, output_fd[1]));
	close(input_fd);
	close(output_fd[1]);
	read(output_fd[0], buffer, 31);
	printf("Test 2: [%s]\n", buffer);
	close(output_fd[0]);
	return (0);
}

/*
EDGE CASES:
Source must be seekable. Empty files produce zero bytes.

LEARNING CHECK:
1. Why is lseek necessary?
2. Can pipes be reversed without storing data?
3. How do you avoid seeking before zero?
4. How many reads happen for four bytes?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 07_ft_find_byte_offset.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

long	ft_find_byte_offset(int fd, char target)
{
	
}

/*
GOAL:
Return offset of first target byte from file start, or -1 if absent or on error.

TODO:
1. Seek to offset zero.
2. Read successive bytes.
3. Track the offset as bytes are consumed.
4. Return first match or -1 after EOF.

EXPECTED OUTPUT:
Test 1: 2
Test 2: -1
*/

static int	ft_test_file(const char *text)
{
	char	path[] = "/tmp/ft_io_XXXXXX";
	int		fd;
	int		length;

	fd = mkstemp(path);
	if (fd == -1)
		return (-1);
	unlink(path);
	length = (int)strlen(text);
	if (write(fd, text, length) != length || lseek(fd, 0, SEEK_SET) == -1)
	{
		close(fd);
		return (-1);
	}
	return (fd);
}

int	main(void)
{
	int	fd;

	fd = ft_test_file("banana");
	if (fd == -1)
		return (1);
	printf("Test 1: %ld\n", ft_find_byte_offset(fd, 'n'));
	printf("Test 2: %ld\n", ft_find_byte_offset(fd, 'z'));
	close(fd);
	return (0);
}

/*
EDGE CASES:
Search from the start on every call.

LEARNING CHECK:
1. Why reset the file position?
2. Is the first index zero or one?
3. What if the byte is absent?
4. How is this different from strchr?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 08_ft_file_compare.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_file_compare(int fd_a, int fd_b)
{
	
}

/*
GOAL:
Compare streams from their current offsets; return 1 if identical, 0 if different, -1 on error.

TODO:
1. Read one byte from each descriptor.
2. Check for errors before comparing.
3. Return 0 if read counts or bytes differ.
4. Return 1 if both reach EOF together.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
*/

static int	ft_test_file(const char *text)
{
	char	path[] = "/tmp/ft_io_XXXXXX";
	int		fd;
	int		length;

	fd = mkstemp(path);
	if (fd == -1)
		return (-1);
	unlink(path);
	length = (int)strlen(text);
	if (write(fd, text, length) != length || lseek(fd, 0, SEEK_SET) == -1)
	{
		close(fd);
		return (-1);
	}
	return (fd);
}

int	main(void)
{
	int	first;
	int	second;

	first = ft_test_file("abc");
	second = ft_test_file("abc");
	if (first == -1 || second == -1)
		return (1);
	printf("Test 1: %d\n", ft_file_compare(first, second));
	close(first);
	close(second);
	first = ft_test_file("abc");
	second = ft_test_file("abd");
	if (first == -1 || second == -1)
		return (1);
	printf("Test 2: %d\n", ft_file_compare(first, second));
	close(first);
	close(second);
	return (0);
}

/*
EDGE CASES:
Different content or lengths must return 0.

LEARNING CHECK:
1. Why is EOF important for equality?
2. What if reads fail?
3. Does this preserve file offsets?
4. How can comparing streams save memory?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 09_ft_write_u32_be.c <<'EOF'
#include <unistd.h>
#include <stdio.h>

int	ft_write_u32_be(int fd, unsigned int value)
{
	
}

/*
GOAL:
Write the low 32 bits of value as four bytes in big-endian order; return 4 or -1.

TODO:
1. Extract the highest byte using shifts.
2. Write all four bytes most significant first.
3. Check every write result.
4. Return 4, or -1 on failure.

EXPECTED OUTPUT:
Test 1: 4
Test 2: 12 34 56 78
*/

int	main(void)
{
	int		pipe_fd[2];
	unsigned char	bytes[4];
	int		ret;

	if (pipe(pipe_fd) == -1)
		return (1);
	ret = ft_write_u32_be(pipe_fd[1], 0x12345678U);
	close(pipe_fd[1]);
	if (read(pipe_fd[0], bytes, 4) != 4)
		return (1);
	close(pipe_fd[0]);
	printf("Test 1: %d\n", ret);
	printf("Test 2: %02x %02x %02x %02x\n",
		bytes[0], bytes[1], bytes[2], bytes[3]);
	return (0);
}

/*
EDGE CASES:
This contract writes four bytes regardless of native machine endianness.

LEARNING CHECK:
1. What is big-endian order?
2. Why use unsigned bytes?
3. How are shifts used to extract bytes?
4. Why not write the int memory directly?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 10_ft_read_u32_be.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <string.h>

int	ft_read_u32_be(int fd, unsigned int *value)
{
	
}

/*
GOAL:
Read four big-endian bytes into value; return 1 if complete, 0 on premature EOF, -1 on error.

TODO:
1. Read exactly four bytes.
2. Return 0 if EOF occurs before four bytes.
3. Combine bytes with unsigned shifts.
4. Assign value only when the record is complete.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 41424344
Test 3: 0
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
	int		fd;
	unsigned int	value;

	fd = ft_test_input("ABCD");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_read_u32_be(fd, &value));
	printf("Test 2: %08x\n", value);
	close(fd);
	fd = ft_test_input("ab");
	if (fd == -1)
		return (1);
	printf("Test 3: %d\n", ft_read_u32_be(fd, &value));
	close(fd);
	return (0);
}

/*
EDGE CASES:
An incomplete four-byte record must not overwrite value.

LEARNING CHECK:
1. How are four bytes combined?
2. Why use unsigned shifts?
3. What is a truncated record?
4. How does this relate to binary file formats?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 11_ft_stream_checksum.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <limits.h>

unsigned int	ft_stream_checksum(int fd)
{
	
}

/*
GOAL:
Compute the sum of unsigned byte values modulo 2^32; return UINT_MAX on read error.

TODO:
1. Read bytes until EOF.
2. Interpret every byte as unsigned.
3. Accumulate using unsigned arithmetic.
4. Return UINT_MAX if a read fails.

EXPECTED OUTPUT:
Test 1: 198
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

	fd = ft_test_input("ABC");
	if (fd == -1)
		return (1);
	printf("Test 1: %u\n", ft_stream_checksum(fd));
	close(fd);
	fd = ft_test_input("");
	if (fd == -1)
		return (1);
	printf("Test 2: %u\n", ft_stream_checksum(fd));
	close(fd);
	return (0);
}

/*
EDGE CASES:
UINT_MAX also can be a legitimate checksum; consider a separate status in real APIs.

LEARNING CHECK:
1. Why does unsigned overflow wrap?
2. What is the ASCII sum of ABC?
3. Why is this not a cryptographic hash?
4. How would you separate errors from valid checksums?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

echo "Reset 12 exercises in 04_advanced_io!"
