#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

int ft_ranges_overlap(const char *a, const char *b, size_t n)
{
	
}

int	main(void)
{
	char a[12]={0}; printf("%d\n",ft_ranges_overlap(a,a+2,5)); printf("%d\n",ft_ranges_overlap(a,a+6,5));
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Determine whether two n-byte ranges overlap.

TODO:
1. Think of each range as [start, start+n).
2. Compare their positions.
3. Return 1 for overlap, otherwise 0.

EXPECTED OUTPUT:
1
0

TEST NOTES:
Only compare pointers into the same allocated array; use relational comparisons safely.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
