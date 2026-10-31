#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

void ft_copy_backward(char *dst, const char *src, int n)
{
	
}

int	main(void)
{
	char src[]="abcd"; char dst[5]="...."; ft_copy_backward(dst,src,4); printf("%s\n",dst);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Copy n bytes from the end toward the beginning.

TODO:
1. Begin at n.
2. Decrease the index before copying.
3. Copy byte n-1 down to 0.

EXPECTED OUTPUT:
abcd

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
