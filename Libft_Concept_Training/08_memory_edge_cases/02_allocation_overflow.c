#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

void *ft_alloc_array(size_t count, size_t size)
{

}

int main(void)
{
	void *a=ft_alloc_array(3,sizeof(int)); void *b=ft_alloc_array(SIZE_MAX,2); printf("%d\n",a!=NULL); printf("%d\n",b==NULL); free(a);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate count * size bytes without integer overflow.

TODO:
1. Return NULL if count or size is zero.
2. Check count > SIZE_MAX / size before multiplication.
3. Allocate the product only when safe.

EXPECTED OUTPUT:
1
1

TEST NOTES:
Use SIZE_MAX from stdint.h.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
