#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")" || exit 1

cat > 00_ft_buffer_size.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_buffer_size(void)
{
	
}

/*
GOAL:
Return the configured BUFFER_SIZE (or a fallback of 42).

TODO:
1. Understand the function contract and test inputs.
2. Use #ifndef BUFFER_SIZE and #define BUFFER_SIZE 42 before the function.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 42
Test 2: 42
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_buffer_size());
	printf("Test 2: %d\n", ft_buffer_size());
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: return the configured BUFFER_SIZE (or a fallback of 42).

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

cat > 01_ft_find_newline.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

int	ft_find_newline(const char *str)
{
	
}

/*
GOAL:
Find the index of the first newline, or -1 when absent.

TODO:
1. Understand the function contract and test inputs.
2. NULL input returns -1.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: 3
Test 2: -1
Test 3: 0
Test 4: -1
*/

int	main(void)
{
	printf("Test 1: %d\n", ft_find_newline("abc\ndef"));
	printf("Test 2: %d\n", ft_find_newline("no newline"));
	printf("Test 3: %d\n", ft_find_newline("\n"));
	printf("Test 4: %d\n", ft_find_newline(NULL));
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: find the index of the first newline, or -1 when absent.

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

cat > 02_ft_append_buffer.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

char	*ft_append_buffer(char *stash, const char *buffer)
{
	
}

/*
GOAL:
Append buffer to a heap-allocated stash, returning a new allocation.

TODO:
1. Understand the function contract and test inputs.
2. Free old stash only after a successful allocation; on failure leave old stash owned by caller.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [Hi!]
Test 2: [Hi!
]
*/

static char	*test_first_append(void)
{
	char	*stash;
	char	*result;

	stash = malloc(3);
	if (!stash)
		return (NULL);
	stash[0] = 'H';
	stash[1] = 'i';
	stash[2] = '\0';
	result = ft_append_buffer(stash, "!");
	if (!result)
		free(stash);
	return (result);
}

int	main(void)
{
	char	*stash;
	char	*result;

	stash = test_first_append();
	if (!stash)
		return (1);
	printf("Test 1: [%s]\n", stash);

	result = ft_append_buffer(stash, "\n");
	if (!result)
	{
		free(stash);
		return (1);
	}
	printf("Test 2: [%s]", result);
	free(result);
	return (0);
}

/*
EDGE CASES:
The heap-allocated stash changes ownership on success; keep the original on allocation failure.

LEARNING CHECK:
1. Who owns the old stash before the call?
2. When should it be freed?
3. How much memory is needed for the joined string?
4. What does the caller do if allocation fails?

NOTE:
The function is intentionally empty. Implement it yourself.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
GNL_EXERCISE_EOF

cat > 03_ft_extract_line.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

char	*ft_extract_line(const char *stash)
{
	
}

/*
GOAL:
Copy through the first newline, or all of stash if no newline.

TODO:
1. Understand the function contract and test inputs.
2. Return NULL for NULL or empty stash; allocate the returned line.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [Hello
]Test 2: [tail]
Test 3: 1
*/

int	main(void)
{
	char	*result;

	result = ft_extract_line("Hello\nWorld");
	printf("Test 1: [%s]", result ? result : "NULL");
	free(result);

	result = ft_extract_line("tail");
	printf("Test 2: [%s]\n", result ? result : "NULL");
	free(result);

	printf("Test 3: %d\n", ft_extract_line("") == NULL);
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: copy through the first newline, or all of stash if no newline.

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

cat > 04_ft_save_remainder.c <<'GNL_EXERCISE_EOF'
#include <unistd.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdio.h>

char	*ft_save_remainder(const char *stash)
{
	
}

/*
GOAL:
Copy characters after the first newline into a new allocation.

TODO:
1. Understand the function contract and test inputs.
2. Return NULL if no newline or if nothing remains after newline.
3. Handle boundaries and errors as documented.
4. Compare outputs with EXPECTED OUTPUT below.

EXPECTED OUTPUT:
Test 1: [World]
Test 2: 1
Test 3: 1
*/

int	main(void)
{
	char	*result;

	result = ft_save_remainder("Hello\nWorld");
	printf("Test 1: [%s]\n", result ? result : "NULL");
	free(result);

	result = ft_save_remainder("Hello\n");
	printf("Test 2: %d\n", result == NULL);
	free(result);

	result = ft_save_remainder("Hello");
	printf("Test 3: %d\n", result == NULL);
	free(result);
	return (0);
}

/*
EDGE CASES:
Test empty or boundary inputs, failure paths, and ownership relevant to: copy characters after the first newline into a new allocation.

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

echo "Reset 5 exercises in 04_buffer_management"
