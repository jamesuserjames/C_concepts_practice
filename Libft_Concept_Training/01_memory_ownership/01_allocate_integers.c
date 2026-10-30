#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

int *ft_alloc_ints(int count)
{

}

int	main(void)
{
	int *a=ft_alloc_ints(3); if(a){a[0]=7;a[1]=8;a[2]=9;printf("%d %d %d\n",a[0],a[1],a[2]);free(a);} printf("%d\n",ft_alloc_ints(0)==NULL);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate memory for count integers.

TODO:
1. Reject count <= 0.
2. Allocate count * sizeof(int).
3. Return NULL on failure.

EXPECTED OUTPUT:
7 8 9
1

TEST NOTES:
Memory returned by malloc is uninitialized.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
