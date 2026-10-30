#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include "../practice_list.h"

int ft_read_node(t_list *node)
{
	
}

int	main(void)
{
	t_list n={17,NULL};printf("%d\n",ft_read_node(&n));
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Return the integer value stored in a node.

TODO:
1. Understand node->value.
2. Return its value.

EXPECTED OUTPUT:
17

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
