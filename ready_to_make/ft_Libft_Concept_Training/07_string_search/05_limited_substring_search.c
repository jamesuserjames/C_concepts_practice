#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

char *ft_limited_search(const char *haystack, const char *needle, size_t len)
{

}

int main(void)
{
	char s[]="abcde"; printf("%d\n",ft_limited_search(s,"cd",3)==NULL); char *p=ft_limited_search(s,"cd",4); printf("%s\n",p?p:"missing");
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Find needle only if its entire match fits within len bytes.

TODO:
1. Return haystack when needle is empty.
2. Never read beyond len bytes of haystack.
3. Reject partial matches that cross the limit.

EXPECTED OUTPUT:
1
cde

TEST NOTES:
Equivalent search boundary concept to strnstr.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
