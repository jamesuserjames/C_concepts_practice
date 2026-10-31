#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

void *ft_alloc_or_null(size_t n)
{

}

int main(void)
{
	void *a=ft_alloc_or_null(0); void *b=ft_alloc_or_null(4); printf("%d\n",a==NULL); printf("%d\n",b!=NULL); free(b);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Define predictable behavior for a zero-byte allocation.

TODO:
1. Return NULL when n is zero.
2. Otherwise allocate n bytes.
3. Return NULL if allocation fails.

EXPECTED OUTPUT:
1
1

TEST NOTES:
Caller owns any non-NULL result.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
