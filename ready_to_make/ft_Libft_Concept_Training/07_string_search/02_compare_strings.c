#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

int ft_compare_strings(const char *a, const char *b)
{

}

int main(void)
{
	printf("%d\n",ft_compare_strings("abc","abc")); printf("%d\n",ft_compare_strings("abc","abd")<0); printf("%d\n",ft_compare_strings("abd","abc")>0);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Compare strings lexicographically.

TODO:
1. Compare bytes as unsigned char.
2. Stop at the first difference or NUL.
3. Return negative, zero, or positive.

EXPECTED OUTPUT:
0
1
1

TEST NOTES:
The exact nonzero difference is not tested.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
