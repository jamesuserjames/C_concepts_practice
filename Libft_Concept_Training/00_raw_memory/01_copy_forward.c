#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

void ft_copy_forward(char *dst, const char *src, int n)
{
	
}

int	main(void)
{
	char src[]="abcd"; char dst[5]="...."; ft_copy_forward(dst,src,3); printf("%.4s\n",dst);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Copy exactly n bytes from src to dst using a forward loop.

TODO:
1. Start at index 0.
2. Copy one byte at a time.
3. Stop after n bytes.

EXPECTED OUTPUT:
abc.

TEST NOTES:
No terminating NUL is added; this copies bytes.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
