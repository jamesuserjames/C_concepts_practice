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

t_list *ft_detach_value(t_list **head, int value)
{

}

int main(void)
{
	t_list c={3,NULL},b={2,&c},a={1,&b}; t_list *p=&a; t_list *out=ft_detach_value(&p,2); printf("%d %d %d\n",p->value,p->next->value,out?out->value:-1);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Detach the first node with value, without freeing it.

TODO:
1. Handle removal of the head.
2. Relink the previous node around the match.
3. Set detached node->next to NULL and return it.

EXPECTED OUTPUT:
1 3 2

TEST NOTES:
All nodes are stack allocated; never free them.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
