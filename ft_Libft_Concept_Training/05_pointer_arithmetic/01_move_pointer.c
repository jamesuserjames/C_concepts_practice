#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

int *ft_move_pointer(int *ptr, int steps)
{

}

int main(void)
{
	int a[]={10,20,30,40,50}; printf("%d\n",*ft_move_pointer(a,2)); printf("%d\n",*ft_move_pointer(a+4,-3));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Move a pointer by a number of array elements.

TODO:
1. Use pointer arithmetic with steps.
2. Return the resulting pointer.

EXPECTED OUTPUT:
30
20

TEST NOTES:
Both pointers remain within the same array.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
