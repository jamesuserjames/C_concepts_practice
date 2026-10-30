#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

void *ft_move_bytes(void *dst, const void *src, size_t n)
{
	
}

int	main(void)
{
	char a[12]="abcdef"; ft_move_bytes(a+2,a,4); printf("%s\n",a); char b[12]="abcdef"; ft_move_bytes(b,b+2,4); printf("%s\n",b);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Implement memmove-like copying that survives overlapping regions.

TODO:
1. Cast to unsigned char pointers.
2. Decide when backward copying is necessary.
3. Copy exactly n bytes.
4. Return dst.

EXPECTED OUTPUT:
ababcd
cdefef

TEST NOTES:
Compare addresses only when they refer into the same array in this exercise.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
