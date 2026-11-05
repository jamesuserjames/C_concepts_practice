#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

void ft_reverse_ints(int *begin, int *end)
{

}

int main(void)
{
	int a[]={1,2,3,4}; int i=0; ft_reverse_ints(a,a+4); while(i<4){printf("%d%s",a[i],i==3?"\n":" ");i++;}
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Reverse an integer array using pointer arithmetic.

TODO:
1. Treat end as one-past-the-last element.
2. Swap the elements at the two ends.
3. Advance and retreat pointers until they meet.

EXPECTED OUTPUT:
4 3 2 1

TEST NOTES:
Works for empty arrays too (begin == end).

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
