#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ ! -e "$DIR/ft_read_stdin.c" ]]; then
	cat > "$DIR/ft_read_stdin.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_read_stdin(char *out, int capacity)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
int p[2];
int saved;
char s[12];
int ret;
pipe(p);
write(p[1], "input", 5);
close(p[1]);
saved = dup(0);
dup2(p[0], 0);
close(p[0]);
ret = ft_read_stdin(s, 12);
dup2(saved, 0);
close(saved);
printf("Test 1: %d [%s]\n", ret, s);
return (0);
}

/*
ALLOWED FUNCTIONS:
read for implementation; test main may use libc.

GOAL:
Read from standard input (fd 0) and terminate the buffer.

EXPLANATION:
Read from standard input (fd 0) and terminate the buffer.

TODO:
1. Understand the function contract and test inputs.
2. Use read(0, ...); return bytes read; capacity must reserve NUL.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 5 [input]

EDGE CASES:
Inspect empty inputs, EOF, failures, and allocation ownership where relevant.

LEARNING CHECK:
1. What does each parameter represent?
2. What changes between calls?
3. Who must free any returned allocation?
4. Which test exposes an off-by-one error?

NOTE:
Function intentionally empty. Complete it before compiling with -Werror.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF
	echo "Created ft_read_stdin.c"
else
	echo "Skipped ft_read_stdin.c (already exists)"
fi

if [[ ! -e "$DIR/ft_read_file.c" ]]; then
	cat > "$DIR/ft_read_file.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_read_file(int fd, char *out, int capacity)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
int p[2];
char s[12];
int ret;
pipe(p);
write(p[1], "sample", 6);
close(p[1]);
ret = ft_read_file(p[0], s, 12);
printf("Test 1: %d [%s]\n", ret, s);
printf("Test 2: %d\n", ft_read_file(p[0], s, 12));
close(p[0]);
printf("Test 3: %d\n", ft_read_file(-1, s, 12));
return (0);
}

/*
ALLOWED FUNCTIONS:
read for implementation; test main may use libc.

GOAL:
Read a supplied file descriptor into a bounded NUL-terminated buffer.

EXPLANATION:
Read a supplied file descriptor into a bounded NUL-terminated buffer.

TODO:
1. Understand the function contract and test inputs.
2. Handle EOF and invalid fds; return -1 on errors.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 6 [sample]
Test 2: 0
Test 3: -1

EDGE CASES:
Inspect empty inputs, EOF, failures, and allocation ownership where relevant.

LEARNING CHECK:
1. What does each parameter represent?
2. What changes between calls?
3. Who must free any returned allocation?
4. Which test exposes an off-by-one error?

NOTE:
Function intentionally empty. Complete it before compiling with -Werror.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF
	echo "Created ft_read_file.c"
else
	echo "Skipped ft_read_file.c (already exists)"
fi

if [[ ! -e "$DIR/ft_check_fd.c" ]]; then
	cat > "$DIR/ft_check_fd.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_check_fd(int fd)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
printf("Test 1: %d\n", ft_check_fd(0));
printf("Test 2: %d\n", ft_check_fd(-1));
printf("Test 3: %d\n", ft_check_fd(1));
return (0);
}

/*
ALLOWED FUNCTIONS:
read for implementation; test main may use libc.

GOAL:
Check a file descriptor with a zero-byte read.

EXPLANATION:
Check a file descriptor with a zero-byte read.

TODO:
1. Understand the function contract and test inputs.
2. Return 1 if read(fd, buffer, 0) succeeds, -1 if it fails. Zero-byte calls do not guarantee later reads.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: -1
Test 3: 1

EDGE CASES:
Inspect empty inputs, EOF, failures, and allocation ownership where relevant.

LEARNING CHECK:
1. What does each parameter represent?
2. What changes between calls?
3. Who must free any returned allocation?
4. Which test exposes an off-by-one error?

NOTE:
Function intentionally empty. Complete it before compiling with -Werror.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF
	echo "Created ft_check_fd.c"
else
	echo "Skipped ft_check_fd.c (already exists)"
fi

if [[ ! -e "$DIR/ft_read_error.c" ]]; then
	cat > "$DIR/ft_read_error.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_read_error(int fd)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
int p[2];
pipe(p);
write(p[1], "X", 1);
close(p[1]);
printf("Test 1: %d\n", ft_read_error(p[0]));
printf("Test 2: %d\n", ft_read_error(p[0]));
close(p[0]);
printf("Test 3: %d\n", ft_read_error(-1));
return (0);
}

/*
ALLOWED FUNCTIONS:
read for implementation; test main may use libc.

GOAL:
Translate read results into 1 (data), 0 (EOF), or -1 (error).

EXPLANATION:
Translate read results into 1 (data), 0 (EOF), or -1 (error).

TODO:
1. Understand the function contract and test inputs.
2. Read a single byte; distinguish all three read outcomes.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 0
Test 3: -1

EDGE CASES:
Inspect empty inputs, EOF, failures, and allocation ownership where relevant.

LEARNING CHECK:
1. What does each parameter represent?
2. What changes between calls?
3. Who must free any returned allocation?
4. Which test exposes an off-by-one error?

NOTE:
Function intentionally empty. Complete it before compiling with -Werror.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF
	echo "Created ft_read_error.c"
else
	echo "Skipped ft_read_error.c (already exists)"
fi

