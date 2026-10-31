#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

char *ft_int_to_string(int n)
{

}

int main(void)
{
	char *a=ft_int_to_string(-2048); char *b=ft_int_to_string(0); if(!a||!b)return(free(a),free(b),1); printf("%s\n%s\n",a,b); free(a); free(b);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate a new decimal string representing an int.

TODO:
1. Determine sign and digit count.
2. Allocate space for digits, optional minus, and NUL.
3. Fill the string and return it.

EXPECTED OUTPUT:
-2048
0

TEST NOTES:
The caller frees both returned strings; handle INT_MIN.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
