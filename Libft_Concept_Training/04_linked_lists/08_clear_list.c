#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include "../practice_list.h"

void ft_node_clear(t_list **head)
{
	
}

int	main(void)
{
	t_list *a=malloc(sizeof(t_list));t_list *b=malloc(sizeof(t_list));if(!a||!b){free(a);free(b);return(1);}a->next=b;b->next=NULL;ft_node_clear(&a);printf("%d\n",a==NULL);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Free every node and set head to NULL.

TODO:
1. Save next before freeing current.
2. Free current.
3. Continue until NULL.
4. Set *head = NULL.

EXPECTED OUTPUT:
1

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
