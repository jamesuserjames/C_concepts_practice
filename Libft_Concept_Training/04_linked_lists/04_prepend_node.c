#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include "../practice_list.h"

void ft_node_prepend(t_list **head, t_list *new_node)
{
	
}

int	main(void)
{
	t_list a={1,NULL},b={2,NULL};t_list *head=&a;ft_node_prepend(&head,&b);printf("%d %d\n",head->value,head->next->value);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Make new_node the first element.

TODO:
1. Link new_node to old head.
2. Update *head.
3. Understand why head is a double pointer.

EXPECTED OUTPUT:
2 1

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
