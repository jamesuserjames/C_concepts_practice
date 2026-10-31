#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include "../practice_list.h"

void ft_node_append(t_list **head, t_list *new_node)
{
	
}

int	main(void)
{
	t_list a={1,NULL},b={2,NULL};t_list *head=&a;ft_node_append(&head,&b);printf("%d %d\n",head->value,head->next->value);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Attach a node to the end, including empty-list case.

TODO:
1. Handle *head == NULL.
2. Otherwise find last.
3. Set last->next.

EXPECTED OUTPUT:
1 2

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
