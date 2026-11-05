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

void ft_insert_after(t_list *position, t_list *node)
{

}

int main(void)
{
	t_list c={3,NULL},a={1,&c},b={2,NULL}; ft_insert_after(&a,&b); printf("%d %d %d\n",a.value,a.next->value,a.next->next->value);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Insert an existing node after position.

TODO:
1. Save position->next.
2. Link position to node.
3. Link node to the old successor.

EXPECTED OUTPUT:
1 2 3

TEST NOTES:
Both pointers are non-NULL and node is not already linked.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
