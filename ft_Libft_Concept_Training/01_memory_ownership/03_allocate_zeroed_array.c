#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

int *ft_alloc_zeroed_ints(size_t n)
{
	
}

int	main(void)
{
	int *a=ft_alloc_zeroed_ints(3); if(a){printf("%d %d %d\n",a[0],a[1],a[2]);free(a);}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate n integers and initialize all their bytes to zero.

TODO:
1. Check multiplication overflow before malloc.
2. Allocate n * sizeof(int).
3. Zero the allocated memory.

EXPECTED OUTPUT:
0 0 0

TEST NOTES:
Practice the idea behind calloc. For n=0, either NULL or freeable pointer is acceptable.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
