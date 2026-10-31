#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

char *ft_find_last_character(const char *str, int c)
{

}

int main(void)
{
	char s[]="banana"; char *p=ft_find_last_character(s,'a'); printf("%s\n",p?p:"missing"); printf("%d\n",ft_find_last_character(s,'z')==NULL);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Find the last matching character in a string.

TODO:
1. Track the most recent matching address.
2. Include the NUL byte as a possible match.

EXPECTED OUTPUT:
a
1

TEST NOTES:
Similar to strrchr; the result points into str.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
