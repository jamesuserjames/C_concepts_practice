#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

char *ft_find_character(const char *str, int c)
{

}

int main(void)
{
	char s[]="banana"; char *p=ft_find_character(s,'n'); printf("%s\n",p?p:"missing"); printf("%d\n",ft_find_character(s,'z')==NULL);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Find the first matching character in a NUL-terminated string.

TODO:
1. Walk through str until the terminator.
2. Return a pointer to the first match.
3. Allow searching for the terminating NUL.

EXPECTED OUTPUT:
nana
1

TEST NOTES:
Return points into the original string; do not allocate.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
