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

t_list *ft_reverse_list(t_list *head)
{

}

int main(void)
{
	t_list c={3,NULL},b={2,&c},a={1,&b}; t_list *p=ft_reverse_list(&a); while(p){printf("%d%s",p->value,p->next?" ":"\n");p=p->next;}
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Reverse next pointers in a singly linked list.

TODO:
1. Track previous, current and next.
2. Redirect each next pointer.
3. Return the new head.

EXPECTED OUTPUT:
3 2 1

TEST NOTES:
Do not allocate or free nodes.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
