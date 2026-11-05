#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

typedef struct s_list
{
	int value;
	struct s_list *next;
} t_list;

t_list *ft_remove_all_values(t_list *head, int value)
{

}

int main(void)
{
	t_list d={2,NULL},c={3,&d},b={2,&c},a={2,&b}; t_list *p=ft_remove_all_values(&a,2); printf("%d %d\n",p?p->value:-1,p&&p->next==NULL);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Unlink every node with a given value without freeing nodes.

TODO:
1. Skip matching nodes at the head.
2. Traverse and bypass matching successors.
3. Return the first retained node or NULL.

EXPECTED OUTPUT:
3 1

TEST NOTES:
Nodes are stack allocated; preserve ownership and do not free.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
