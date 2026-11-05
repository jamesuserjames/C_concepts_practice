#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

int ft_read_pointer(const int *ptr)
{

}

int main(void)
{
	int n=42; printf("%d\n",ft_read_pointer(&n));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Read an integer through a pointer.

TODO:
1. Dereference ptr.
2. Return the value without changing it.

EXPECTED OUTPUT:
42

TEST NOTES:
ptr points to a valid integer.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
