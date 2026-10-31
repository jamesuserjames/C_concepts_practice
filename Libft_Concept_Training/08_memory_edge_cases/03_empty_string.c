#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

char *ft_duplicate_empty_safe(const char *s)
{

}

int main(void)
{
	char *a=ft_duplicate_empty_safe(""); char *b=ft_duplicate_empty_safe(NULL); printf("%d\n",a!=NULL && a[0]=='\0'); printf("%d\n",b==NULL); free(a);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Duplicate an empty string correctly and reject NULL input.

TODO:
1. Return NULL for NULL input.
2. Allocate at least one byte for an empty string.
3. Copy the terminating NUL.

EXPECTED OUTPUT:
1
1

TEST NOTES:
The caller frees non-NULL results.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
