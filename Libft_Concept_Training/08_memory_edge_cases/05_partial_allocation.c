#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

char **ft_make_two_strings(const char *a, const char *b)
{

}

int main(void)
{
	char **p=ft_make_two_strings("cat","dog"); if(!p)return(1); printf("%s %s %d\n",p[0],p[1],p[2]==NULL); free(p[0]); free(p[1]); free(p);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate a two-string array and clean up on partial failure.

TODO:
1. Allocate a three-pointer array.
2. Duplicate both strings separately.
3. If any allocation fails, free earlier allocations and return NULL.

EXPECTED OUTPUT:
cat dog 1

TEST NOTES:
Inputs are non-NULL; caller owns all three allocations.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
