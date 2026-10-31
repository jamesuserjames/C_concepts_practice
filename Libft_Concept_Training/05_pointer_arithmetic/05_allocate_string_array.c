#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

char **ft_allocate_string_array(size_t count)
{

}

int main(void)
{
	char **a=ft_allocate_string_array(2); if(!a)return(1); printf("%d\n",a[0]==NULL && a[1]==NULL && a[2]==NULL); free(a);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate an array of count + 1 NULL string pointers.

TODO:
1. Guard against count + 1 and multiplication overflow.
2. Allocate space for count + 1 pointers.
3. Initialize every pointer to NULL.

EXPECTED OUTPUT:
1

TEST NOTES:
The caller owns the array; no strings are allocated.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
