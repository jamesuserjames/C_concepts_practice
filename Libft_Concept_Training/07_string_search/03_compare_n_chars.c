#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

int ft_compare_n_chars(const char *a, const char *b, size_t n)
{

}

int main(void)
{
	printf("%d\n",ft_compare_n_chars("abc","abd",2)); printf("%d\n",ft_compare_n_chars("abc","abd",3)<0); printf("%d\n",ft_compare_n_chars("a","z",0));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Compare at most n characters of two strings.

TODO:
1. Return zero when n is zero.
2. Compare as unsigned char.
3. Stop on difference or NUL.

EXPECTED OUTPUT:
0
1
0

TEST NOTES:
Do not read beyond the NUL terminator.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
