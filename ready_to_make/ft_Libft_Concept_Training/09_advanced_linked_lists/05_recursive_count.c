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

size_t ft_recursive_count(const t_list *head)
{

}

int main(void)
{
	t_list c={3,NULL},b={2,&c},a={1,&b}; printf("%zu\n",ft_recursive_count(&a)); printf("%zu\n",ft_recursive_count(NULL));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Count nodes using recursion.

TODO:
1. Base case: NULL has zero nodes.
2. Return one plus count of next.

EXPECTED OUTPUT:
3
0

TEST NOTES:
Think about stack depth on very long lists.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
