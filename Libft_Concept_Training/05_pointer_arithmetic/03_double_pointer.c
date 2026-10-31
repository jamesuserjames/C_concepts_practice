#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

void ft_replace_pointer(int **target, int *replacement)
{

}

int main(void)
{
	int a=7,b=9; int *p=&a; ft_replace_pointer(&p,&b); printf("%d\n",*p);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Change a pointer in the caller using a pointer-to-pointer.

TODO:
1. Assign replacement through target.
2. Do not modify either integer.

EXPECTED OUTPUT:
9

TEST NOTES:
target is a valid pointer-to-pointer.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
