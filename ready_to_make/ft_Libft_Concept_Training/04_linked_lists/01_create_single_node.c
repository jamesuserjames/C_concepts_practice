#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include "../practice_list.h"

t_list *ft_node_new(int value)
{
	
}

int	main(void)
{
	t_list *n=ft_node_new(42);if(n){printf("%d %d\n",n->value,n->next==NULL);free(n);}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate a node and initialize value and next.

TODO:
1. Allocate sizeof(t_list).
2. Store value.
3. Set next to NULL.

EXPECTED OUTPUT:
42 1

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
