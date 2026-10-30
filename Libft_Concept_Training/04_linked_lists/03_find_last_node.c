#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include "../practice_list.h"

t_list *ft_node_last(t_list *head)
{
	
}

int	main(void)
{
	t_list b={2,NULL},a={1,&b};t_list *n=ft_node_last(&a);printf("%d %d\n",n?n->value:-1,ft_node_last(NULL)==NULL);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Return the last node or NULL for an empty list.

TODO:
1. Handle empty list.
2. Follow next while it exists.
3. Return last node.

EXPECTED OUTPUT:
2 1

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
