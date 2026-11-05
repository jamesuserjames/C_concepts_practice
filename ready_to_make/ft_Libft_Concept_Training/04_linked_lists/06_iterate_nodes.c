#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include "../practice_list.h"

static void test_double(int *n)
{
	*n *= 2;
}

void ft_node_iter(t_list *head, void (*f)(int *))
{

}

int	main(void)
{
	t_list b={2,NULL},a={1,&b};ft_node_iter(&a,test_double);printf("%d %d\n",a.value,b.value);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Apply callback to each node value.

TODO:
1. Walk node by node.
2. Call f(&node->value).
3. Move to next.

EXPECTED OUTPUT:
2 4

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
