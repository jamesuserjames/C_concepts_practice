#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

int ft_is_null(const void *ptr)
{

}

int main(void)
{
	int n=1; printf("%d\n",ft_is_null(NULL)); printf("%d\n",ft_is_null(&n));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Recognize a NULL pointer without dereferencing it.

TODO:
1. Compare ptr to NULL.
2. Return 1 if NULL, otherwise 0.

EXPECTED OUTPUT:
1
0

TEST NOTES:
Never dereference NULL.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
