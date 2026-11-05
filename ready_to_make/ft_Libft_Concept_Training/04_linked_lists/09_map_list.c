#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include "../practice_list.h"

static int test_square(int n)
{
	return n*n;
}

t_list *ft_node_map(t_list *head, int (*f)(int))
{
	
}

int	main(void)
{
	t_list b={2,NULL},a={1,&b};t_list *r=ft_node_map(&a,test_square);if(r){printf("%d %d\n",r->value,r->next->value);t_list *p=r;while(p){t_list *next=p->next;free(p);p=next;}}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Create a separate linked list containing transformed values.

TODO:
1. Walk source.
2. Allocate a fresh node for each value.
3. Link result nodes.
4. Free partial result if allocation fails.

EXPECTED OUTPUT:
1 4

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
