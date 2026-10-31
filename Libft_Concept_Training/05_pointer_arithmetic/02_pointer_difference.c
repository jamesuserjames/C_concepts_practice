#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

ptrdiff_t ft_pointer_distance(const int *first, const int *last)
{

}

int main(void)
{
	int a[]={3,5,7,9,11}; printf("%td\n",ft_pointer_distance(a,a+4)); printf("%td\n",ft_pointer_distance(a+3,a+1));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Calculate signed distance in elements between two pointers.

TODO:
1. Subtract first from last.
2. Return the difference in elements.

EXPECTED OUTPUT:
4
-2

TEST NOTES:
Only subtract pointers within the same array.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
