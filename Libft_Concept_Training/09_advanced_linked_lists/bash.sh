#!/bin/bash
set -eu
PROJECT="$(cd "$(dirname "$0")" && pwd)"

# WARNING: Re-running this script overwrites all exercises in this folder.

# ============================================================
# 00_FIND_NODE.C
# ============================================================
cat > "$PROJECT/00_find_node.c" <<'EOF'
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
EOF

# ============================================================
# 01_FIND_PREVIOUS_NODE.C
# ============================================================
cat > "$PROJECT/01_find_previous_node.c" <<'EOF'
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
EOF

# ============================================================
# 02_INSERT_AFTER.C
# ============================================================
cat > "$PROJECT/02_insert_after.c" <<'EOF'
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

void ft_insert_after(t_list *position, t_list *node)
{

}

int main(void)
{
	t_list c={3,NULL},a={1,&c},b={2,NULL}; ft_insert_after(&a,&b); printf("%d %d %d\n",a.value,a.next->value,a.next->next->value);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Insert an existing node after position.

TODO:
1. Save position->next.
2. Link position to node.
3. Link node to the old successor.

EXPECTED OUTPUT:
1 2 3

TEST NOTES:
Both pointers are non-NULL and node is not already linked.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 03_REMOVE_NODE.C
# ============================================================
cat > "$PROJECT/03_remove_node.c" <<'EOF'
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
EOF

# ============================================================
# 04_REVERSE_LIST.C
# ============================================================
cat > "$PROJECT/04_reverse_list.c" <<'EOF'
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
EOF

# ============================================================
# 05_RECURSIVE_COUNT.C
# ============================================================
cat > "$PROJECT/05_recursive_count.c" <<'EOF'
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
EOF

# ============================================================
# 06_RECURSIVE_FREE.C
# ============================================================
cat > "$PROJECT/06_recursive_free.c" <<'EOF'
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
EOF

# ============================================================
# 07_LIST_CHALLENGE.C
# ============================================================
cat > "$PROJECT/07_list_challenge.c" <<'EOF'
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

t_list *ft_remove_all_values(t_list *head, int value)
{

}

int main(void)
{
	t_list d={2,NULL},c={3,&d},b={2,&c},a={2,&b}; t_list *p=ft_remove_all_values(&a,2); printf("%d %d\n",p?p->value:-1,p&&p->next==NULL);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Unlink every node with a given value without freeing nodes.

TODO:
1. Skip matching nodes at the head.
2. Traverse and bypass matching successors.
3. Return the first retained node or NULL.

EXPECTED OUTPUT:
3 1

TEST NOTES:
Nodes are stack allocated; preserve ownership and do not free.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

echo "Recreated 8 exercises in 09_advanced_linked_lists."
