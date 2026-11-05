#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

size_t ft_count_occurrences(const char *str, const char *needle)
{

}

int main(void)
{
	printf("%zu\n",ft_count_occurrences("aaaa","aa")); printf("%zu\n",ft_count_occurrences("banana","na"));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Count non-overlapping occurrences of a nonempty substring.

TODO:
1. Search from the current position.
2. When found, increase count and advance by needle length.
3. Return zero when needle is empty.

EXPECTED OUTPUT:
2
2

TEST NOTES:
Count non-overlapping matches only.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
