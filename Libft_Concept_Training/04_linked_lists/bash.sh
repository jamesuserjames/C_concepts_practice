#!/bin/bash
set -e

PROJECT="$(cd "$(dirname "$0")" && pwd)"
mkdir -p "$PROJECT"

# 00_read_node.c
cat > "$PROJECT/00_read_node.c" <<'__EXERCISE_FILE_END_7e9d__'
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
__EXERCISE_FILE_END_7e9d__

# 01_create_single_node.c
cat > "$PROJECT/01_create_single_node.c" <<'__EXERCISE_FILE_END_7e9d__'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include "../practice_list.h"

t_list *ft_node_new(int value)
{
	
}

int	main(void)
{
	t_list *n=ft_node_new(42);if(n){printf("%d %d\n",n->value,n->next==NULL);free(n);}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate a node and initialize value and next.

TODO:
1. Allocate sizeof(t_list).
2. Store value.
3. Set next to NULL.

EXPECTED OUTPUT:
42 1

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
__EXERCISE_FILE_END_7e9d__

# 02_count_nodes.c
cat > "$PROJECT/02_count_nodes.c" <<'__EXERCISE_FILE_END_7e9d__'
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
__EXERCISE_FILE_END_7e9d__

# 03_find_last_node.c
cat > "$PROJECT/03_find_last_node.c" <<'__EXERCISE_FILE_END_7e9d__'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include "../practice_list.h"

t_list *ft_node_last(t_list *head)
{
	
}

int	main(void)
{
	t_list b={2,NULL},a={1,&b};t_list *n=ft_node_last(&a);printf("%d %d\n",n?n->value:-1,ft_node_last(NULL)==NULL);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Return the last node or NULL for an empty list.

TODO:
1. Handle empty list.
2. Follow next while it exists.
3. Return last node.

EXPECTED OUTPUT:
2 1

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
__EXERCISE_FILE_END_7e9d__

# 04_prepend_node.c
cat > "$PROJECT/04_prepend_node.c" <<'__EXERCISE_FILE_END_7e9d__'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include "../practice_list.h"

void ft_node_prepend(t_list **head, t_list *new_node)
{
	
}

int	main(void)
{
	t_list a={1,NULL},b={2,NULL};t_list *head=&a;ft_node_prepend(&head,&b);printf("%d %d\n",head->value,head->next->value);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Make new_node the first element.

TODO:
1. Link new_node to old head.
2. Update *head.
3. Understand why head is a double pointer.

EXPECTED OUTPUT:
2 1

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
__EXERCISE_FILE_END_7e9d__

# 05_append_node.c
cat > "$PROJECT/05_append_node.c" <<'__EXERCISE_FILE_END_7e9d__'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include "../practice_list.h"

void ft_node_append(t_list **head, t_list *new_node)
{
	
}

int	main(void)
{
	t_list a={1,NULL},b={2,NULL};t_list *head=&a;ft_node_append(&head,&b);printf("%d %d\n",head->value,head->next->value);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Attach a node to the end, including empty-list case.

TODO:
1. Handle *head == NULL.
2. Otherwise find last.
3. Set last->next.

EXPECTED OUTPUT:
1 2

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
__EXERCISE_FILE_END_7e9d__

# 06_iterate_nodes.c
cat > "$PROJECT/06_iterate_nodes.c" <<'__EXERCISE_FILE_END_7e9d__'
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
__EXERCISE_FILE_END_7e9d__

# 07_delete_one_node.c
cat > "$PROJECT/07_delete_one_node.c" <<'__EXERCISE_FILE_END_7e9d__'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include "../practice_list.h"

void ft_node_delete_one(t_list *node)
{
	
}

int	main(void)
{
	t_list *n=malloc(sizeof(t_list));if(!n)return(1);n->value=5;n->next=NULL;ft_node_delete_one(n);printf("deleted\n");
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Free one heap-allocated node (not its successor).

TODO:
1. Do not traverse the list.
2. Free only node.
3. Caller is responsible for unlinking it first.

EXPECTED OUTPUT:
deleted

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
__EXERCISE_FILE_END_7e9d__

# 08_clear_list.c
cat > "$PROJECT/08_clear_list.c" <<'__EXERCISE_FILE_END_7e9d__'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include "../practice_list.h"

void ft_node_clear(t_list **head)
{
	
}

int	main(void)
{
	t_list *a=malloc(sizeof(t_list));t_list *b=malloc(sizeof(t_list));if(!a||!b){free(a);free(b);return(1);}a->next=b;b->next=NULL;ft_node_clear(&a);printf("%d\n",a==NULL);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Free every node and set head to NULL.

TODO:
1. Save next before freeing current.
2. Free current.
3. Continue until NULL.
4. Set *head = NULL.

EXPECTED OUTPUT:
1

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
__EXERCISE_FILE_END_7e9d__

# 09_map_list.c
cat > "$PROJECT/09_map_list.c" <<'__EXERCISE_FILE_END_7e9d__'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include "../practice_list.h"

static int test_square(int n)
{
	return n*n;
}

t_list *ft_node_map(t_list *head, int (*f)(int))
{
	
}

int	main(void)
{
	t_list b={2,NULL},a={1,&b};t_list *r=ft_node_map(&a,test_square);if(r){printf("%d %d\n",r->value,r->next->value);t_list *p=r;while(p){t_list *next=p->next;free(p);p=next;}}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Create a separate linked list containing transformed values.

TODO:
1. Walk source.
2. Allocate a fresh node for each value.
3. Link result nodes.
4. Free partial result if allocation fails.

EXPECTED OUTPUT:
1 4

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
__EXERCISE_FILE_END_7e9d__

# 10_list_pointer_challenge.c
cat > "$PROJECT/10_list_pointer_challenge.c" <<'__EXERCISE_FILE_END_7e9d__'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include "../practice_list.h"

void ft_pop_front(t_list **head)
{
	
}

int	main(void)
{
	t_list *a=malloc(sizeof(t_list));t_list *b=malloc(sizeof(t_list));if(!a||!b){free(a);free(b);return(1);}a->value=1;a->next=b;b->value=2;b->next=NULL;ft_pop_front(&a);printf("%d\n",a->value);free(a);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Remove the first heap-allocated node safely.

TODO:
1. Check head and *head.
2. Save old first node.
3. Move head to next.
4. Free old node.

EXPECTED OUTPUT:
2

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
__EXERCISE_FILE_END_7e9d__

echo "04_linked_lists: recreated 11 exercises."
