#!/bin/bash
set -eu
PROJECT="$(cd "$(dirname "$0")" && pwd)"

# WARNING: Re-running this script overwrites all exercises in this folder.

# ============================================================
# 00_READ_POINTER.C
# ============================================================
cat > "$PROJECT/00_read_pointer.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

int ft_read_pointer(const int *ptr)
{

}

int main(void)
{
	int n=42; printf("%d\n",ft_read_pointer(&n));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Read an integer through a pointer.

TODO:
1. Dereference ptr.
2. Return the value without changing it.

EXPECTED OUTPUT:
42

TEST NOTES:
ptr points to a valid integer.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 01_MOVE_POINTER.C
# ============================================================
cat > "$PROJECT/01_move_pointer.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

int *ft_move_pointer(int *ptr, int steps)
{

}

int main(void)
{
	int a[]={10,20,30,40,50}; printf("%d\n",*ft_move_pointer(a,2)); printf("%d\n",*ft_move_pointer(a+4,-3));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Move a pointer by a number of array elements.

TODO:
1. Use pointer arithmetic with steps.
2. Return the resulting pointer.

EXPECTED OUTPUT:
30
20

TEST NOTES:
Both pointers remain within the same array.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 02_POINTER_DIFFERENCE.C
# ============================================================
cat > "$PROJECT/02_pointer_difference.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

ptrdiff_t ft_pointer_distance(const int *first, const int *last)
{

}

int main(void)
{
	int a[]={3,5,7,9,11}; printf("%td\n",ft_pointer_distance(a,a+4)); printf("%td\n",ft_pointer_distance(a+3,a+1));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Calculate signed distance in elements between two pointers.

TODO:
1. Subtract first from last.
2. Return the difference in elements.

EXPECTED OUTPUT:
4
-2

TEST NOTES:
Only subtract pointers within the same array.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 03_DOUBLE_POINTER.C
# ============================================================
cat > "$PROJECT/03_double_pointer.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

void ft_replace_pointer(int **target, int *replacement)
{

}

int main(void)
{
	int a=7,b=9; int *p=&a; ft_replace_pointer(&p,&b); printf("%d\n",*p);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Change a pointer in the caller using a pointer-to-pointer.

TODO:
1. Assign replacement through target.
2. Do not modify either integer.

EXPECTED OUTPUT:
9

TEST NOTES:
target is a valid pointer-to-pointer.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 04_ARRAY_OF_POINTERS.C
# ============================================================
cat > "$PROJECT/04_array_of_pointers.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

const char *ft_select_string(const char **words, size_t index)
{

}

int main(void)
{
	const char *a[]={"red","blue","green"}; printf("%s\n",ft_select_string(a,1));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Access an element of an array of string pointers.

TODO:
1. Index into words.
2. Return the selected pointer without allocating.

EXPECTED OUTPUT:
blue

TEST NOTES:
index is valid; strings are not owned by the function.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 05_ALLOCATE_STRING_ARRAY.C
# ============================================================
cat > "$PROJECT/05_allocate_string_array.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

char **ft_allocate_string_array(size_t count)
{

}

int main(void)
{
	char **a=ft_allocate_string_array(2); if(!a)return(1); printf("%d\n",a[0]==NULL && a[1]==NULL && a[2]==NULL); free(a);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate an array of count + 1 NULL string pointers.

TODO:
1. Guard against count + 1 and multiplication overflow.
2. Allocate space for count + 1 pointers.
3. Initialize every pointer to NULL.

EXPECTED OUTPUT:
1

TEST NOTES:
The caller owns the array; no strings are allocated.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 06_FREE_STRING_ARRAY.C
# ============================================================
cat > "$PROJECT/06_free_string_array.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

void ft_free_string_array(char **words)
{

}

int main(void)
{
	char **a=malloc(3*sizeof(*a)); if(!a)return(1); a[0]=malloc(4); a[1]=malloc(4); a[2]=NULL; if(!a[0]||!a[1])return(free(a[0]),free(a[1]),free(a),1); ft_free_string_array(a); printf("freed\n");
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Free a NULL-terminated heap array of heap strings.

TODO:
1. Return immediately for NULL input.
2. Free each string until NULL.
3. Free the outer array.

EXPECTED OUTPUT:
freed

TEST NOTES:
Use AddressSanitizer to check cleanup; printing freed does not prove no leak.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 07_POINTER_CHALLENGE.C
# ============================================================
cat > "$PROJECT/07_pointer_challenge.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

void ft_reverse_ints(int *begin, int *end)
{

}

int main(void)
{
	int a[]={1,2,3,4}; int i=0; ft_reverse_ints(a,a+4); while(i<4){printf("%d%s",a[i],i==3?"\n":" ");i++;}
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Reverse an integer array using pointer arithmetic.

TODO:
1. Treat end as one-past-the-last element.
2. Swap the elements at the two ends.
3. Advance and retreat pointers until they meet.

EXPECTED OUTPUT:
4 3 2 1

TEST NOTES:
Works for empty arrays too (begin == end).

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

echo "Recreated 8 exercises in 05_pointer_arithmetic."
