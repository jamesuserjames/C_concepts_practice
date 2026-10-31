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

t_list *ft_find_node(t_list *head, int value)
{

}

int main(void)
{
	t_list c={3,NULL},b={2,&c},a={1,&b}; t_list *p=ft_find_node(&a,2); printf("%d\n",p?p->value:-1); printf("%d\n",ft_find_node(&a,8)==NULL);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Find the first node containing value.

TODO:
1. Traverse nodes using next.
2. Compare each node value.
3. Return NULL when no match exists.

EXPECTED OUTPUT:
2
1

TEST NOTES:
The list nodes belong to the caller.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
