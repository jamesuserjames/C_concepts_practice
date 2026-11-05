#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

char *ft_find_substring(const char *haystack, const char *needle)
{

}

int main(void)
{
	char s[]="one two three"; char *p=ft_find_substring(s,"two"); printf("%s\n",p?p:"missing"); printf("%d\n",ft_find_substring(s,"xyz")==NULL);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Find the first occurrence of needle in haystack.

TODO:
1. Try each candidate position.
2. Compare successive characters of needle.
3. Return haystack for an empty needle.

EXPECTED OUTPUT:
two three
1

TEST NOTES:
No allocation; result points into haystack.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
