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

t_list *ft_find_previous_node(t_list *head, t_list *target)
{

}

int main(void)
{
	t_list c={3,NULL},b={2,&c},a={1,&b}; t_list *p=ft_find_previous_node(&a,&c); printf("%d\n",p?p->value:-1); printf("%d\n",ft_find_previous_node(&a,&a)==NULL);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Find the node immediately preceding target.

TODO:
1. Start at head.
2. Check whether current->next equals target.
3. Return NULL if target is head or absent.

EXPECTED OUTPUT:
2
1

TEST NOTES:
Use pointer identity, not value comparison.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
