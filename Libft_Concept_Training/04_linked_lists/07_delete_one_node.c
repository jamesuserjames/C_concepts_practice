#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include "../practice_list.h"

void ft_node_delete_one(t_list *node)
{
	
}

int	main(void)
{
	t_list *n=malloc(sizeof(t_list));if(!n)return(1);n->value=5;n->next=NULL;ft_node_delete_one(n);printf("deleted\n");
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Free one heap-allocated node (not its successor).

TODO:
1. Do not traverse the list.
2. Free only node.
3. Caller is responsible for unlinking it first.

EXPECTED OUTPUT:
deleted

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
