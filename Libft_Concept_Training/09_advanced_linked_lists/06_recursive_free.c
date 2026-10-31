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

void ft_recursive_free(t_list *head)
{

}

int main(void)
{
	t_list *a=malloc(sizeof(*a)),*b=malloc(sizeof(*b)); if(!a||!b)return(free(a),free(b),1); a->value=1; a->next=b; b->value=2; b->next=NULL; ft_recursive_free(a); printf("freed\n");
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Free a heap-allocated linked list recursively.

TODO:
1. Base case: head is NULL.
2. Recurse into head->next.
3. Free the current node exactly once.

EXPECTED OUTPUT:
freed

TEST NOTES:
Use AddressSanitizer; do not dereference nodes after freeing.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
