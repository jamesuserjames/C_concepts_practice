#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

void ft_trim_bounds(const char *s, const char *set, size_t *start, size_t *end)
{
	
}

int	main(void)
{
	size_t a=0,b=0; ft_trim_bounds("..hello...",".",&a,&b);printf("%zu %zu\n",a,b);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Find [start,end) bounds after trimming characters in set from both ends.

TODO:
1. Move start forward while chars are in set.
2. Move end backward while chars are in set.
3. Do not underflow on empty strings.

EXPECTED OUTPUT:
2 7

TEST NOTES:
end is exclusive.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
