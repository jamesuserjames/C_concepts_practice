#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

char *ft_format_signed(int n, unsigned int min_width)
{

}

int main(void)
{
	char *a=ft_format_signed(-42,5); char *b=ft_format_signed(7,3); if(!a||!b)return(free(a),free(b),1); printf("[%s]\n[%s]\n",a,b); free(a); free(b);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Format an integer into a newly allocated, space-padded string.

TODO:
1. Convert n into decimal characters.
2. Compute spaces required for the minimum width.
3. Left-pad with spaces and preserve the minus sign.

EXPECTED OUTPUT:
[  -42]
[  7]

TEST NOTES:
Width is minimum total characters; no truncation.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
