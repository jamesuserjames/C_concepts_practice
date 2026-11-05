#!/usr/bin/env bash
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ ! -e "$DIR/ft_strlen_gnl.c" ]]; then
	cat > "$DIR/ft_strlen_gnl.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

int ft_strlen_gnl(const char *str)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
printf("Test 1: %d\n", ft_strlen_gnl("Hello"));
printf("Test 2: %d\n", ft_strlen_gnl(""));
printf("Test 3: %d\n", ft_strlen_gnl("a\nb"));
printf("Test 4: %d\n", ft_strlen_gnl(NULL));
return (0);
}

/*
ALLOWED FUNCTIONS:
none for implementation; test main may use libc.

GOAL:
Count the characters in a NUL-terminated string.

EXPLANATION:
Count the characters in a NUL-terminated string.

TODO:
1. Understand the function contract and test inputs.
2. Treat NULL as length 0 for this training exercise.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 5
Test 2: 0
Test 3: 3
Test 4: 0

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
	echo "Created ft_strlen_gnl.c"
else
	echo "Skipped ft_strlen_gnl.c (already exists)"
fi

if [[ ! -e "$DIR/ft_strchr_gnl.c" ]]; then
	cat > "$DIR/ft_strchr_gnl.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

char *ft_strchr_gnl(const char *str, int c)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
char s[] = "ab\ncd";
char *p;
p = ft_strchr_gnl(s, '\n');
printf("Test 1: %ld\n", p ? (long)(p - s) : -1L);
p = ft_strchr_gnl(s, 'z');
printf("Test 2: %d\n", p == NULL);
p = ft_strchr_gnl(s, 0);
printf("Test 3: %ld\n", p ? (long)(p - s) : -1L);
printf("Test 4: %d\n", ft_strchr_gnl(NULL, 'a') == NULL);
return (0);
}

/*
ALLOWED FUNCTIONS:
none for implementation; test main may use libc.

GOAL:
Find the first occurrence of c, including the final NUL.

EXPLANATION:
Find the first occurrence of c, including the final NUL.

TODO:
1. Understand the function contract and test inputs.
2. Return a pointer into the original string or NULL; NULL input returns NULL.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 2
Test 2: 1
Test 3: 5
Test 4: 1

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
	echo "Created ft_strchr_gnl.c"
else
	echo "Skipped ft_strchr_gnl.c (already exists)"
fi

if [[ ! -e "$DIR/ft_strdup_gnl.c" ]]; then
	cat > "$DIR/ft_strdup_gnl.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

char *ft_strdup_gnl(const char *str)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
char *p;
p = ft_strdup_gnl("Hello");
printf("Test 1: [%s]\n", p ? p : "NULL");
free(p);
p = ft_strdup_gnl("");
printf("Test 2: [%s]\n", p ? p : "NULL");
free(p);
printf("Test 3: %d\n", ft_strdup_gnl(NULL) == NULL);
return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free for implementation; test main may use libc.

GOAL:
Allocate a fresh copy of a NUL-terminated string.

EXPLANATION:
Allocate a fresh copy of a NUL-terminated string.

TODO:
1. Understand the function contract and test inputs.
2. Return NULL for NULL input or allocation failure; caller frees result.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [Hello]
Test 2: []
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
	echo "Created ft_strdup_gnl.c"
else
	echo "Skipped ft_strdup_gnl.c (already exists)"
fi

if [[ ! -e "$DIR/ft_strjoin_gnl.c" ]]; then
	cat > "$DIR/ft_strjoin_gnl.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

char *ft_strjoin_gnl(const char *a, const char *b)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
char *p;
p = ft_strjoin_gnl("ab", "cd");
printf("Test 1: [%s]\n", p ? p : "NULL");
free(p);
p = ft_strjoin_gnl(NULL, "Hi");
printf("Test 2: [%s]\n", p ? p : "NULL");
free(p);
p = ft_strjoin_gnl("", "");
printf("Test 3: [%s]\n", p ? p : "NULL");
free(p);
return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free for implementation; test main may use libc.

GOAL:
Allocate a new string holding a followed by b.

EXPLANATION:
Allocate a new string holding a followed by b.

TODO:
1. Understand the function contract and test inputs.
2. Treat NULL inputs as empty strings in this drill; caller frees result.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [abcd]
Test 2: [Hi]
Test 3: []

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
	echo "Created ft_strjoin_gnl.c"
else
	echo "Skipped ft_strjoin_gnl.c (already exists)"
fi

if [[ ! -e "$DIR/ft_substr_gnl.c" ]]; then
	cat > "$DIR/ft_substr_gnl.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

char *ft_substr_gnl(const char *str, int start, int len)
{
	
}

#include <stdio.h>
#include <string.h>

int main(void) {
char *p;
p = ft_substr_gnl("abcdef", 2, 3);
printf("Test 1: [%s]\n", p ? p : "NULL");
free(p);
p = ft_substr_gnl("abc", 10, 2);
printf("Test 2: [%s]\n", p ? p : "NULL");
free(p);
printf("Test 3: %d\n", ft_substr_gnl("abc", -1, 2) == NULL);
return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free for implementation; test main may use libc.

GOAL:
Allocate up to len bytes starting at index start.

EXPLANATION:
Allocate up to len bytes starting at index start.

TODO:
1. Understand the function contract and test inputs.
2. Return empty allocated string when start exceeds length; reject negative indices/lengths.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [cde]
Test 2: []
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
	echo "Created ft_substr_gnl.c"
else
	echo "Skipped ft_substr_gnl.c (already exists)"
fi

if [[ ! -e "$DIR/ft_free_null.c" ]]; then
	cat > "$DIR/ft_free_null.c" <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

void ft_free_null(char **ptr)
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
Free *ptr and set the caller’s pointer to NULL.

EXPLANATION:
Free *ptr and set the caller’s pointer to NULL.

TODO:
1. Understand the function contract and test inputs.
2. Handle NULL pointer-to-pointer and already-NULL content.
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
	echo "Created ft_free_null.c"
else
	echo "Skipped ft_free_null.c (already exists)"
fi

