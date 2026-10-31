#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

void ft_free_string_array(char **words)
{

}

int main(void)
{
	char **a=malloc(3*sizeof(*a)); if(!a)return(1); a[0]=malloc(4); a[1]=malloc(4); a[2]=NULL; if(!a[0]||!a[1])return(free(a[0]),free(a[1]),free(a),1); ft_free_string_array(a); printf("freed\n");
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Free a NULL-terminated heap array of heap strings.

TODO:
1. Return immediately for NULL input.
2. Free each string until NULL.
3. Free the outer array.

EXPECTED OUTPUT:
freed

TEST NOTES:
Use AddressSanitizer to check cleanup; printing freed does not prove no leak.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
