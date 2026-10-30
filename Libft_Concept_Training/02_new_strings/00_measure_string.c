#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

size_t ft_count_chars(const char *s)
{
	
}

int	main(void)
{
	printf("%zu %zu\n",ft_count_chars("hello"),ft_count_chars(""));
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Count characters without counting the terminating NUL.

TODO:
1. Start at 0.
2. Advance until NUL.
3. Return count.

EXPECTED OUTPUT:
5 0

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
