#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

char **ft_split_spaces_safe(const char *str)
{

}

int main(void)
{
	char **a=ft_split_spaces_safe("  a  b "); char **b=ft_split_spaces_safe(""); if(!a||!b)return(1); printf("%s %s %d\n",a[0],a[1],a[2]==NULL); printf("%d\n",b[0]==NULL); size_t i=0; while(a[i])free(a[i++]); free(a); free(b);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Split by spaces with empty-input handling and full cleanup.

TODO:
1. Count words and allocate pointer array + terminator.
2. Allocate each word and copy its bytes.
3. On allocation failure, free every earlier word and the array.

EXPECTED OUTPUT:
a b 1
1

TEST NOTES:
Both returned arrays must be NULL-terminated; empty input gives an array containing NULL.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
