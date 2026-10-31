#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include "../practice_list.h"

void ft_pop_front(t_list **head)
{
	
}

int	main(void)
{
	t_list *a=malloc(sizeof(t_list));t_list *b=malloc(sizeof(t_list));if(!a||!b){free(a);free(b);return(1);}a->value=1;a->next=b;b->value=2;b->next=NULL;ft_pop_front(&a);printf("%d\n",a->value);free(a);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Remove the first heap-allocated node safely.

TODO:
1. Check head and *head.
2. Save old first node.
3. Move head to next.
4. Free old node.

EXPECTED OUTPUT:
2

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
