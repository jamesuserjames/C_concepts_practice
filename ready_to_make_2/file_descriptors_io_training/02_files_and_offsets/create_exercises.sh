#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")" || exit 1

cat > 00_ft_open_readonly.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>

int	ft_open_readonly(const char *path)
{
	
}

/*
GOAL:
Open an existing file read-only; return its descriptor or -1.

TODO:
1. Call open with O_RDONLY.
2. Return the descriptor from open.
3. Propagate -1 for missing or inaccessible files.
4. Do not close the descriptor in this function.

EXPECTED OUTPUT:
Test 1: 1
Test 2: -1
*/

int	main(void)
{
	char	path[] = "/tmp/ft_open_XXXXXX";
	int		created;
	int		fd;

	created = mkstemp(path);
	if (created == -1)
		return (1);
	close(created);
	fd = ft_open_readonly(path);
	printf("Test 1: %d\n", fd >= 0);
	if (fd >= 0)
		close(fd);
	unlink(path);
	printf("Test 2: %d\n", ft_open_readonly(path));
	return (0);
}

/*
EDGE CASES:
A missing file should not be silently created.

LEARNING CHECK:
1. What does O_RDONLY mean?
2. Who closes a successful descriptor?
3. What is the open failure return value?
4. Why use a temporary path in tests?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 01_ft_open_append.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>

int	ft_open_append(const char *path)
{
	
}

/*
GOAL:
Open a file for writing at the end, creating it if needed; return fd or -1.

TODO:
1. Call open with O_WRONLY and O_APPEND.
2. Include O_CREAT to permit new files.
3. Provide a creation mode.
4. Return fd or -1, leaving closing to caller.

EXPECTED OUTPUT:
Test 1: [abc]
*/

int	main(void)
{
	char	path[] = "/tmp/ft_append_XXXXXX";
	char	buffer[8] = {0};
	int		fd;

	fd = mkstemp(path);
	if (fd == -1)
		return (1);
	write(fd, "ab", 2);
	close(fd);
	fd = ft_open_append(path);
	if (fd == -1)
		return (1);
	write(fd, "c", 1);
	close(fd);
	fd = open(path, O_RDONLY);
	if (fd == -1)
		return (1);
	read(fd, buffer, 7);
	printf("Test 1: [%s]\n", buffer);
	close(fd);
	unlink(path);
	return (0);
}

/*
EDGE CASES:
O_APPEND places every write at end.

LEARNING CHECK:
1. Which flags are combined?
2. Why is a mode needed with O_CREAT?
3. Does O_APPEND discard existing data?
4. What happens when open fails?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 02_ft_open_truncate.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>

int	ft_open_truncate(const char *path)
{
	
}

/*
GOAL:
Open a file for writing and truncate existing contents to zero bytes.

TODO:
1. Use O_WRONLY, O_CREAT and O_TRUNC.
2. Supply suitable file permissions.
3. Return the resulting descriptor.
4. Leave descriptor closing to caller.

EXPECTED OUTPUT:
Test 1: 0
*/

int	main(void)
{
	char	path[] = "/tmp/ft_trunc_XXXXXX";
	int		fd;

	fd = mkstemp(path);
	if (fd == -1)
		return (1);
	write(fd, "old", 3);
	close(fd);
	fd = ft_open_truncate(path);
	if (fd == -1)
		return (1);
	close(fd);
	fd = open(path, O_RDONLY);
	if (fd == -1)
		return (1);
	printf("Test 1: %lld\n", (long long)lseek(fd, 0, SEEK_END));
	close(fd);
	unlink(path);
	return (0);
}

/*
EDGE CASES:
Truncation destroys previous file content.

LEARNING CHECK:
1. What does O_TRUNC do?
2. Can you truncate a pipe?
3. Why is O_CREAT useful?
4. When is truncation unsafe?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 03_ft_file_size.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

long	ft_file_size(int fd)
{
	
}

/*
GOAL:
Return the file size of a seekable descriptor without changing its current position.

TODO:
1. Save the current offset with lseek.
2. Seek to the end to obtain the size.
3. Restore the original offset.
4. Return -1 if any seek fails.

EXPECTED OUTPUT:
Test 1: 5
Test 2: 0
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

	fd = ft_test_file("hello");
	if (fd == -1)
		return (1);
	printf("Test 1: %ld\n", ft_file_size(fd));
	printf("Test 2: %lld\n", (long long)lseek(fd, 0, SEEK_CUR));
	close(fd);
	fd = ft_test_file("");
	if (fd == -1)
		return (1);
	printf("Test 3: %ld\n", ft_file_size(fd));
	close(fd);
	return (0);
}

/*
EDGE CASES:
This method only supports seekable files; offsets may exceed long on some systems.

LEARNING CHECK:
1. What does SEEK_END mean?
2. Why restore the saved offset?
3. Can lseek work on a pipe?
4. How is file size different from readable bytes?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 04_ft_seek_start.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

long	ft_seek_start(int fd)
{
	
}

/*
GOAL:
Move a seekable file descriptor to offset zero and return its new offset, or -1.

TODO:
1. Call lseek with offset zero.
2. Use SEEK_SET.
3. Return the resulting offset.
4. Propagate failures as -1.

EXPECTED OUTPUT:
Test 1: 0
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
	int	fd;

	fd = ft_test_file("abcd");
	if (fd == -1)
		return (1);
	lseek(fd, 3, SEEK_SET);
	printf("Test 1: %ld\n", ft_seek_start(fd));
	printf("Test 2: %lld\n", (long long)lseek(fd, 0, SEEK_CUR));
	close(fd);
	return (0);
}

/*
EDGE CASES:
lseek cannot reposition pipe descriptors.

LEARNING CHECK:
1. What does SEEK_SET use as its origin?
2. What is a file offset?
3. What does lseek return?
4. Why cannot a pipe be rewound?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 05_ft_seek_forward.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

long	ft_seek_forward(int fd, int bytes)
{
	
}

/*
GOAL:
Move a seekable descriptor forward by bytes relative to its current position.

TODO:
1. Reject negative bytes for this exercise.
2. Call lseek using SEEK_CUR.
3. Pass bytes as the offset.
4. Return the new offset or -1.

EXPECTED OUTPUT:
Test 1: 2
Test 2: 5
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

	fd = ft_test_file("abcdef");
	if (fd == -1)
		return (1);
	printf("Test 1: %ld\n", ft_seek_forward(fd, 2));
	printf("Test 2: %ld\n", ft_seek_forward(fd, 3));
	close(fd);
	return (0);
}

/*
EDGE CASES:
Seeking beyond EOF is allowed for regular files.

LEARNING CHECK:
1. What does SEEK_CUR mean?
2. Does seeking read any bytes?
3. Can the offset pass EOF?
4. When is relative seeking useful?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 06_ft_read_at.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_read_at(int fd, char *out, int count, int offset)
{
	
}

/*
GOAL:
Read count bytes starting at offset in a seekable file, returning bytes read or -1.

TODO:
1. Reject negative count and offset.
2. Use lseek to position fd.
3. Read up to count bytes once.
4. Return the read result without NUL termination.

EXPECTED OUTPUT:
Test 1: 3 [cde]
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
	int	fd;
	char	buffer[16] = {0};
	int		ret;

	fd = ft_test_file("abcdef");
	if (fd == -1)
		return (1);
	ret = ft_read_at(fd, buffer, 3, 2);
	printf("Test 1: %d [%.*s]\n", ret, ret, buffer);
	ret = ft_read_at(fd, buffer, 3, 6);
	printf("Test 2: %d\n", ret);
	close(fd);
	return (0);
}

/*
EDGE CASES:
Reading at EOF returns zero.

LEARNING CHECK:
1. Does this function preserve the original offset?
2. Why use %.*s?
3. What happens at EOF?
4. How does pread differ from lseek then read?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 07_ft_write_at.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_write_at(int fd, const char *data, int count, int offset)
{
	
}

/*
GOAL:
Overwrite count bytes beginning at a file offset; return bytes written or -1.

TODO:
1. Reject negative count and offset.
2. Use lseek SEEK_SET to position fd.
3. Write up to count bytes.
4. Return write result or -1.

EXPECTED OUTPUT:
Test 1: 2
Test 2: [aXYde]
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
	char	buffer[16] = {0};

	fd = ft_test_file("abcde");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_write_at(fd, "XY", 2, 1));
	lseek(fd, 0, SEEK_SET);
	read(fd, buffer, 5);
	printf("Test 2: [%s]\n", buffer);
	close(fd);
	return (0);
}

/*
EDGE CASES:
Writing inside a file overwrites existing bytes.

LEARNING CHECK:
1. How is overwrite different from append?
2. What does SEEK_SET do?
3. Can this create sparse files?
4. What changes in the file position?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 08_ft_rewind_and_read.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_rewind_and_read(int fd, char *out, int count)
{
	
}

/*
GOAL:
Seek to the beginning and read count bytes once.

TODO:
1. Reject negative count.
2. Use lseek to rewind fd.
3. Call read after a successful seek.
4. Return read count or -1.

EXPECTED OUTPUT:
Test 1: 3 [hel]
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
	char	buffer[16] = {0};
	int		ret;

	fd = ft_test_file("hello");
	if (fd == -1)
		return (1);
	read(fd, buffer, 2);
	ret = ft_rewind_and_read(fd, buffer, 3);
	printf("Test 1: %d [%.*s]\n", ret, ret, buffer);
	close(fd);
	return (0);
}

/*
EDGE CASES:
A seek can replay bytes already consumed.

LEARNING CHECK:
1. What does rewind mean?
2. Why does this fail for a pipe?
3. Does read automatically NUL-terminate?
4. What is the resulting file offset?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 09_ft_append_text.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_append_text(int fd, const char *text)
{
	
}

/*
GOAL:
Move to file end, append text, and return bytes written or -1.

TODO:
1. Seek to the end.
2. Measure or walk through text.
3. Write all text bytes.
4. Return count or -1 on failure.

EXPECTED OUTPUT:
Test 1: 2
Test 2: [abcd]
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
	char	buffer[16] = {0};

	fd = ft_test_file("ab");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_append_text(fd, "cd"));
	lseek(fd, 0, SEEK_SET);
	read(fd, buffer, 4);
	printf("Test 2: [%s]\n", buffer);
	close(fd);
	return (0);
}

/*
EDGE CASES:
lseek-based appending is not atomic across concurrent writers.

LEARNING CHECK:
1. Why does SEEK_END matter?
2. How is this different from O_APPEND?
3. What if text is empty?
4. Who owns the file descriptor?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 10_ft_fd_offsets_shared.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_fd_offsets_shared(int fd)
{
	
}

/*
GOAL:
Duplicate fd, read one byte through the duplicate, close it and return original fd current offset.

TODO:
1. Duplicate fd with dup.
2. Read exactly one byte through the duplicate.
3. Close the duplicate.
4. Use lseek SEEK_CUR on the original descriptor.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 1
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

	fd = ft_test_file("abcd");
	if (fd == -1)
		return (1);
	printf("Test 1: %d\n", ft_fd_offsets_shared(fd));
	printf("Test 2: %lld\n", (long long)lseek(fd, 0, SEEK_CUR));
	close(fd);
	return (0);
}

/*
EDGE CASES:
dup descriptors share their open-file description and offset.

LEARNING CHECK:
1. What is shared after dup?
2. Does closing the duplicate close the original?
3. Why does the original offset move?
4. How does this differ from opening the same path twice?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

cat > 11_ft_read_tail.c <<'EOF'
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int	ft_read_tail(int fd, char *out, int count)
{
	
}

/*
GOAL:
Read up to count bytes from the last count positions of a seekable file.

TODO:
1. Reject negative count.
2. Use lseek to determine the file length.
3. Select the later of offset zero and size minus count.
4. Seek there and read up to count bytes.

EXPECTED OUTPUT:
Test 1: 3 [def]
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
	int	fd;
	char	buffer[16] = {0};
	int		ret;

	fd = ft_test_file("abcdef");
	if (fd == -1)
		return (1);
	ret = ft_read_tail(fd, buffer, 3);
	printf("Test 1: %d [%.*s]\n", ret, ret, buffer);
	ret = ft_read_tail(fd, buffer, 0);
	printf("Test 2: %d\n", ret);
	close(fd);
	return (0);
}

/*
EDGE CASES:
If count exceeds file size, return the entire file and its length.

LEARNING CHECK:
1. Why seek relative to the end?
2. What if count is zero?
3. What if the file is shorter than count?
4. Why does this require a seekable descriptor?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EOF

echo "Reset 12 exercises in 02_files_and_offsets!"
