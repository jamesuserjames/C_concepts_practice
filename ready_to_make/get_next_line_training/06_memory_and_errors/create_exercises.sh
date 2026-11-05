#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ ! -e "$DIR/ft_handle_eof.c" ]]; then
	cat > "$DIR/ft_handle_eof.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_handle_eof(int fd)
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
Return 0 on EOF, 1 on data, -1 on read error.

EXPLANATION:
Return 0 on EOF, 1 on data, -1 on read error.

TODO:
1. Understand the function contract and test inputs.
2. Read one byte and classify the result.
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
	echo "Created ft_handle_eof.c"
else
	echo "Skipped ft_handle_eof.c (already exists)"
fi

if [[ ! -e "$DIR/ft_handle_read_error.c" ]]; then
	cat > "$DIR/ft_handle_read_error.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_handle_read_error(int fd)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
int p[2];
pipe(p);
write(p[1], "X", 1);
close(p[1]);
printf("Test 1: %d\n", ft_handle_read_error(p[0]));
printf("Test 2: %d\n", ft_handle_read_error(p[0]));
close(p[0]);
printf("Test 3: %d\n", ft_handle_read_error(-1));
return (0);
}

/*
ALLOWED FUNCTIONS:
read for implementation; test main may use libc.

GOAL:
Read one byte, returning -1 for failure or actual number read otherwise.

EXPLANATION:
Read one byte, returning -1 for failure or actual number read otherwise.

TODO:
1. Understand the function contract and test inputs.
2. Do not mistake EOF (0) for an error.
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
	echo "Created ft_handle_read_error.c"
else
	echo "Skipped ft_handle_read_error.c (already exists)"
fi

if [[ ! -e "$DIR/ft_handle_malloc_error.c" ]]; then
	cat > "$DIR/ft_handle_malloc_error.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

char *ft_handle_malloc_error(int len)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
char *s;
s = ft_handle_malloc_error(3);
printf("Test 1: %d\n", s != NULL && s[0] == 0 && s[3] == 0);
free(s);
s = ft_handle_malloc_error(0);
printf("Test 2: %d\n", s != NULL && s[0] == 0);
free(s);
printf("Test 3: %d\n", ft_handle_malloc_error(-1) == NULL);
return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free for implementation; test main may use libc.

GOAL:
Allocate len+1 zero-initialized bytes (NULL for negative len).

EXPLANATION:
Allocate len+1 zero-initialized bytes (NULL for negative len).

TODO:
1. Understand the function contract and test inputs.
2. Check allocation and zero each byte; caller owns returned memory.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 1
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
	echo "Created ft_handle_malloc_error.c"
else
	echo "Skipped ft_handle_malloc_error.c (already exists)"
fi

if [[ ! -e "$DIR/ft_cleanup_stash.c" ]]; then
	cat > "$DIR/ft_cleanup_stash.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

void ft_cleanup_stash(char **stash)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
char *p;
p = malloc(4);
if (!p) return (1);
ft_free_null(&p);
printf("Test 1: %d\n", p == NULL);
ft_free_null(&p);
printf("Test 2: %d\n", p == NULL);
ft_free_null(NULL);
printf("Test 3: ok\n");
return (0);
}

/*
ALLOWED FUNCTIONS:
free for implementation; test main may use libc.

GOAL:
Release heap stash and set it to NULL.

EXPLANATION:
Release heap stash and set it to NULL.

TODO:
1. Understand the function contract and test inputs.
2. Handle repeated calls safely and guard NULL pointer-to-pointer.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 1
Test 2: 1
Test 3: ok

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
	echo "Created ft_cleanup_stash.c"
else
	echo "Skipped ft_cleanup_stash.c (already exists)"
fi

