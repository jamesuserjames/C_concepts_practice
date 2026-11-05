#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

const char *ft_select_string(const char **words, size_t index)
{

}

int main(void)
{
	const char *a[]={"red","blue","green"}; printf("%s\n",ft_select_string(a,1));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Access an element of an array of string pointers.

TODO:
1. Index into words.
2. Return the selected pointer without allocating.

EXPECTED OUTPUT:
blue

TEST NOTES:
index is valid; strings are not owned by the function.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
