#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include "../practice_list.h"

size_t ft_node_count(t_list *head)
{
	
}

int	main(void)
{
	t_list c={3,NULL},b={2,&c},a={1,&b};printf("%zu %zu\n",ft_node_count(&a),ft_node_count(NULL));
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Count nodes by following next pointers.

TODO:
1. Start with head.
2. Increment count for each node.
3. Stop at NULL.

EXPECTED OUTPUT:
3 0

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
