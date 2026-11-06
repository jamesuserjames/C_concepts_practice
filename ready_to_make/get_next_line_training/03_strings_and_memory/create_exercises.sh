#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")" || exit 1

cat > 00_ft_strlen_gnl.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_strlen_gnl(const char *str)
{
	
}

/*
GOAL:
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
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_strlen_gnl("Hello"));
	printf("Test 2: %d\n", ft_strlen_gnl(""));
	printf("Test 3: %d\n", ft_strlen_gnl("a\nb"));
	printf("Test 4: %d\n", ft_strlen_gnl(NULL));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: count the characters in a NUL-terminated string.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF

cat > 01_ft_strchr_gnl.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

char	*ft_strchr_gnl(const char *str, int c)
{
	
}

/*
GOAL:
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
*/

int	main(void)
{
	char	text[] = "ab\ncd";
	char	*found;

	found = ft_strchr_gnl(text, '\n');
	printf("Test 1: %ld\n", found ? (long)(found - text) : -1L);

	found = ft_strchr_gnl(text, 'z');
	printf("Test 2: %d\n", found == NULL);

	found = ft_strchr_gnl(text, '\0');
	printf("Test 3: %ld\n", found ? (long)(found - text) : -1L);

	printf("Test 4: %d\n", ft_strchr_gnl(NULL, 'a') == NULL);
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: find the first occurrence of c, including the final NUL.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF

cat > 02_ft_strdup_gnl.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

char	*ft_strdup_gnl(const char *str)
{
	
}

/*
GOAL:
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
*/

int	main(void)
{
	char	*result;

	result = ft_strdup_gnl("Hello");
	printf("Test 1: [%s]\n", result ? result : "NULL");
	free(result);

	result = ft_strdup_gnl("");
	printf("Test 2: [%s]\n", result ? result : "NULL");
	free(result);

	printf("Test 3: %d\n", ft_strdup_gnl(NULL) == NULL);
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: allocate a fresh copy of a NUL-terminated string.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF

cat > 03_ft_strjoin_gnl.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

char	*ft_strjoin_gnl(const char *a, const char *b)
{
	
}

/*
GOAL:
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
*/

int	main(void)
{
	char	*result;

	result = ft_strjoin_gnl("ab", "cd");
	printf("Test 1: [%s]\n", result ? result : "NULL");
	free(result);

	result = ft_strjoin_gnl(NULL, "Hi");
	printf("Test 2: [%s]\n", result ? result : "NULL");
	free(result);

	result = ft_strjoin_gnl("", "");
	printf("Test 3: [%s]\n", result ? result : "NULL");
	free(result);
	return (0);
}

/*
EDGE CASES:
NULL inputs are treated as empty strings; test empty strings and allocation ownership.

LEARNING CHECK:
1. How large must the allocation be?
2. What happens when a string is NULL?
3. Why is one extra byte needed?
4. Who frees the returned allocation?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF

cat > 04_ft_substr_gnl.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

char	*ft_substr_gnl(const char *str, int start, int len)
{
	
}

/*
GOAL:
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
*/

int	main(void)
{
	char	*result;

	result = ft_substr_gnl("abcdef", 2, 3);
	printf("Test 1: [%s]\n", result ? result : "NULL");
	free(result);

	result = ft_substr_gnl("abc", 10, 2);
	printf("Test 2: [%s]\n", result ? result : "NULL");
	free(result);

	printf("Test 3: %d\n", ft_substr_gnl("abc", -1, 2) == NULL);
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: allocate up to len bytes starting at index start.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF

cat > 05_ft_free_null.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

void	ft_free_null(char **ptr)
{
	
}

/*
GOAL:
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
*/

int	main(void)
{
	char	*result;

	result = malloc(4);
	if (!result)
		return (1);
	ft_free_null(&result);
	printf("Test 1: %d\n", result == NULL);

	ft_free_null(&result);
	printf("Test 2: %d\n", result == NULL);

	ft_free_null(NULL);
	printf("Test 3: ok\n");
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: free *ptr and set the caller’s pointer to NULL.

LEARNING CHECK:
1. What does the function return for a normal input?
2. How should this function handle an empty or invalid input?
3. What state or memory changes between calls?
4. Which boundary condition should you test next?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF

echo "Reset 6 exercises in 03_strings_and_memory"
