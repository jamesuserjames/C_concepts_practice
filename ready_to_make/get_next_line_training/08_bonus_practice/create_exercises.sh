#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ ! -e "$DIR/ft_multiple_fds.c" ]]; then
	cat > "$DIR/ft_multiple_fds.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_multiple_fds(int fd1, int fd2)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
int a[2];
int b[2];
pipe(a);
pipe(b);
write(a[1], "A", 1);
write(b[1], "B", 1);
close(a[1]);
close(b[1]);
printf("Test 1: %d\n", ft_multiple_fds(a[0], b[0]));
printf("Test 2: %d\n", ft_multiple_fds(a[0], b[0]));
close(a[0]);
close(b[0]);
return (0);
}

/*
ALLOWED FUNCTIONS:
read for implementation; test main may use libc.

GOAL:
Read one byte from each supplied fd; return their unsigned-byte sum.

EXPLANATION:
Read one byte from each supplied fd; return their unsigned-byte sum.

TODO:
1. Understand the function contract and test inputs.
2. Return -1 if either read fails or reaches EOF.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 131
Test 2: -1

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
	echo "Created ft_multiple_fds.c"
else
	echo "Skipped ft_multiple_fds.c (already exists)"
fi

if [[ ! -e "$DIR/ft_fd_stash.c" ]]; then
	cat > "$DIR/ft_fd_stash.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_fd_stash(int fd, int value)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
printf("Test 1: %d\n", ft_fd_stash(3, 5));
printf("Test 2: %d\n", ft_fd_stash(4, 7));
printf("Test 3: %d\n", ft_fd_stash(3, 2));
printf("Test 4: %d\n", ft_fd_stash(-1, 1));
return (0);
}

/*
ALLOWED FUNCTIONS:
none for implementation; test main may use libc.

GOAL:
Keep a separate running total for each fd 0..15.

EXPLANATION:
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
	echo "Created ft_fd_stash.c"
else
	echo "Skipped ft_fd_stash.c (already exists)"
fi

if [[ ! -e "$DIR/ft_interleaved_reads.c" ]]; then
	cat > "$DIR/ft_interleaved_reads.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_interleaved_reads(int fd1, int fd2)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
int a[2];
int b[2];
pipe(a);
pipe(b);
write(a[1], "abc", 3);
write(b[1], "XY", 2);
close(a[1]);
close(b[1]);
printf("Test 1: %d\n", ft_interleaved_reads(a[0], b[0]));
close(a[0]);
close(b[0]);
printf("Test 2: %d\n", ft_interleaved_reads(-1, -1));
return (0);
}

/*
ALLOWED FUNCTIONS:
read for implementation; test main may use libc.

GOAL:
Read alternating bytes from two fds until both hit EOF.

EXPLANATION:
Read alternating bytes from two fds until both hit EOF.

TODO:
1. Understand the function contract and test inputs.
2. Return total bytes read; return -1 for errors; no output required.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 5
Test 2: -1

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
	echo "Created ft_interleaved_reads.c"
else
	echo "Skipped ft_interleaved_reads.c (already exists)"
fi

