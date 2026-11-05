#!/bin/bash

PROJECT="$(cd "$(dirname "$0")" && pwd)"

mkdir -p "$PROJECT"

# ============================================================
# EX01 - ALLOCATE INTEGERS
# ============================================================

cat > "$PROJECT/01_allocate_integers.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

int *ft_alloc_ints(int count)
{

}

int	main(void)
{
	int *a=ft_alloc_ints(3); if(a){a[0]=7;a[1]=8;a[2]=9;printf("%d %d %d\n",a[0],a[1],a[2]);free(a);} printf("%d\n",ft_alloc_ints(0)==NULL);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate memory for count integers.

TODO:
1. Reject count <= 0.
2. Allocate count * sizeof(int).
3. Return NULL on failure.

EXPECTED OUTPUT:
7 8 9
1

TEST NOTES:
Memory returned by malloc is uninitialized.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EOF

# ============================================================
# EX02 - ZERO MEMORY
# ============================================================

cat > "$PROJECT/02_zero_memory.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

void ft_zero_bytes(void *ptr, size_t n)
{

}

int	main(void)
{
	unsigned char a[4]={9,8,7,6}; ft_zero_bytes(a,3); printf("%u %u %u %u\n",a[0],a[1],a[2],a[3]);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Set exactly n bytes to zero.

TODO:
1. Cast void * to unsigned char *.
2. Walk through the n bytes.
3. Assign 0 to each byte.

EXPECTED OUTPUT:
0 0 0 6

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EOF

# ============================================================
# EX03 - ALLOCATE ZEROED ARRAY
# ============================================================

cat > "$PROJECT/03_allocate_zeroed_array.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

int *ft_alloc_zeroed_ints(size_t n)
{
	
}

int	main(void)
{
	int *a=ft_alloc_zeroed_ints(3); if(a){printf("%d %d %d\n",a[0],a[1],a[2]);free(a);}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate n integers and initialize all their bytes to zero.

TODO:
1. Check multiplication overflow before malloc.
2. Allocate n * sizeof(int).
3. Zero the allocated memory.

EXPECTED OUTPUT:
0 0 0

TEST NOTES:
Practice the idea behind calloc. For n=0, either NULL or freeable pointer is acceptable.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EOF

# ============================================================
# EX04 - ALLOCATE EMPTY STRING
# ============================================================

cat > "$PROJECT/04_allocate_empty_string.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

char *ft_make_empty_string(size_t len)
{

}

int	main(void)
{
	char *s=ft_make_empty_string(3); if(s){printf("%d %d %d %d\n",s[0],s[1],s[2],s[3]);free(s);}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate room for len characters plus a terminator and initialize all bytes to zero.

TODO:
1. Guard against len + 1 overflow.
2. Allocate len + 1 bytes.
3. Zero all bytes.

EXPECTED OUTPUT:
0 0 0 0

TEST NOTES:
Unlike malloc, this initializes the string buffer.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EOF

# ============================================================
# EX05 - DUPLICATE STRING
# ============================================================

cat > "$PROJECT/05_duplicate_string.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

char *ft_duplicate_string(const char *src)
{
	
}

int	main(void)
{
	char original[]="cat"; char *copy=ft_duplicate_string(original); if(copy){original[0]='b';printf("%s %s\n",original,copy);free(copy);}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Make an independently owned copy of a string.

TODO:
1. Count source length.
2. Allocate length + 1.
3. Copy including the terminator.

EXPECTED OUTPUT:
bat cat

TEST NOTES:
The new string must not alias the original.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EOF

# ============================================================
# EX06 - FREE AND NULL
# ============================================================

cat > "$PROJECT/06_free_and_null.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

void ft_free_and_null(void **ptr)
{
	
}

int	main(void)
{
	char *p=malloc(4); if(!p)return(1); ft_free_and_null((void **)&p); printf("%d\n",p==NULL);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Free an allocated pointer and set the caller’s pointer to NULL.

TODO:
1. Check ptr itself.
2. Free *ptr.
3. Assign NULL to *ptr.

EXPECTED OUTPUT:
1

TEST NOTES:
Why do you need a pointer-to-pointer?

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EOF

# ============================================================
# EX07 - STRING DELETE
# ============================================================

cat > "$PROJECT/07_string_delete.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

void ft_delete_string(char **s)
{
	
}

int	main(void)
{
	char *s=malloc(4); if(!s)return(1); ft_delete_string(&s); printf("%d\n",s==NULL);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Release a heap-allocated string and clear its pointer.

TODO:
1. Check s.
2. Free *s.
3. Set *s to NULL.

EXPECTED OUTPUT:
1

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EOF

# ============================================================
# EX08 - OWNERSHIP CHALLENGE
# ============================================================

cat > "$PROJECT/08_ownership_challenge.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

char *ft_copy_or_null(const char *src)
{
	
}

int	main(void)
{
	char *s=ft_copy_or_null("hello"); if(s){printf("%s\n",s);free(s);} printf("%d\n",ft_copy_or_null(NULL)==NULL);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Return an owned copy of src, or NULL for NULL input.

TODO:
1. Decide who owns the returned memory.
2. Handle NULL input.
3. Copy the string into a fresh allocation.

EXPECTED OUTPUT:
hello
1

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EOF

echo "01_memory_ownership exercises recreated successfully!"