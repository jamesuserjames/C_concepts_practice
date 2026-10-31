#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

char *ft_join_owned(const char *a, const char *b)
{

}

int main(void)
{
	char *s=ft_join_owned("hello","!"); if(!s)return(1); printf("%s\n",s); free(s);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Join two strings in one owned allocation without leaking.

TODO:
1. Measure lengths safely.
2. Check for length addition overflow.
3. Allocate once, copy both strings, terminate.

EXPECTED OUTPUT:
hello!

TEST NOTES:
Inputs are non-NULL; run with AddressSanitizer.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
