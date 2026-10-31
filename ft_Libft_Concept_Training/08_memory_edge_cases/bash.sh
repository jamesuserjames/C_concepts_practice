#!/bin/bash
set -eu
PROJECT="$(cd "$(dirname "$0")" && pwd)"

# WARNING: Re-running this script overwrites all exercises in this folder.

# ============================================================
# 00_NULL_POINTER.C
# ============================================================
cat > "$PROJECT/00_null_pointer.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

int ft_is_null(const void *ptr)
{

}

int main(void)
{
	int n=1; printf("%d\n",ft_is_null(NULL)); printf("%d\n",ft_is_null(&n));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Recognize a NULL pointer without dereferencing it.

TODO:
1. Compare ptr to NULL.
2. Return 1 if NULL, otherwise 0.

EXPECTED OUTPUT:
1
0

TEST NOTES:
Never dereference NULL.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 01_ZERO_ALLOCATION.C
# ============================================================
cat > "$PROJECT/01_zero_allocation.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

void *ft_alloc_or_null(size_t n)
{

}

int main(void)
{
	void *a=ft_alloc_or_null(0); void *b=ft_alloc_or_null(4); printf("%d\n",a==NULL); printf("%d\n",b!=NULL); free(b);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Define predictable behavior for a zero-byte allocation.

TODO:
1. Return NULL when n is zero.
2. Otherwise allocate n bytes.
3. Return NULL if allocation fails.

EXPECTED OUTPUT:
1
1

TEST NOTES:
Caller owns any non-NULL result.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 02_ALLOCATION_OVERFLOW.C
# ============================================================
cat > "$PROJECT/02_allocation_overflow.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

void *ft_alloc_array(size_t count, size_t size)
{

}

int main(void)
{
	void *a=ft_alloc_array(3,sizeof(int)); void *b=ft_alloc_array(SIZE_MAX,2); printf("%d\n",a!=NULL); printf("%d\n",b==NULL); free(a);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate count * size bytes without integer overflow.

TODO:
1. Return NULL if count or size is zero.
2. Check count > SIZE_MAX / size before multiplication.
3. Allocate the product only when safe.

EXPECTED OUTPUT:
1
1

TEST NOTES:
Use SIZE_MAX from stdint.h.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 03_EMPTY_STRING.C
# ============================================================
cat > "$PROJECT/03_empty_string.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

char *ft_duplicate_empty_safe(const char *s)
{

}

int main(void)
{
	char *a=ft_duplicate_empty_safe(""); char *b=ft_duplicate_empty_safe(NULL); printf("%d\n",a!=NULL && a[0]=='\0'); printf("%d\n",b==NULL); free(a);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Duplicate an empty string correctly and reject NULL input.

TODO:
1. Return NULL for NULL input.
2. Allocate at least one byte for an empty string.
3. Copy the terminating NUL.

EXPECTED OUTPUT:
1
1

TEST NOTES:
The caller frees non-NULL results.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 04_BUFFER_BOUNDARIES.C
# ============================================================
cat > "$PROJECT/04_buffer_boundaries.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

size_t ft_copy_bounded(char *dst, const char *src, size_t size)
{

}

int main(void)
{
	char a[4]={'X','X','X','X'}; size_t n=ft_copy_bounded(a,"hello",3); printf("%zu %s %c\n",n,a,a[3]); char b[1]={'Z'}; printf("%zu %c\n",ft_copy_bounded(b,"hi",0),b[0]);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Implement strlcpy-style bounded copying.

TODO:
1. Return full source length.
2. If size > 0, copy at most size - 1 bytes.
3. NUL-terminate when size > 0.

EXPECTED OUTPUT:
5 he X
2 Z

TEST NOTES:
The destination has at least size writable bytes; avoid overrun.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 05_PARTIAL_ALLOCATION.C
# ============================================================
cat > "$PROJECT/05_partial_allocation.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

char **ft_make_two_strings(const char *a, const char *b)
{

}

int main(void)
{
	char **p=ft_make_two_strings("cat","dog"); if(!p)return(1); printf("%s %s %d\n",p[0],p[1],p[2]==NULL); free(p[0]); free(p[1]); free(p);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate a two-string array and clean up on partial failure.

TODO:
1. Allocate a three-pointer array.
2. Duplicate both strings separately.
3. If any allocation fails, free earlier allocations and return NULL.

EXPECTED OUTPUT:
cat dog 1

TEST NOTES:
Inputs are non-NULL; caller owns all three allocations.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 06_MEMORY_LEAK_CHALLENGE.C
# ============================================================
cat > "$PROJECT/06_memory_leak_challenge.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

char *ft_join_owned(const char *a, const char *b)
{

}

int main(void)
{
	char *s=ft_join_owned("hello","!"); if(!s)return(1); printf("%s\n",s); free(s);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Join two strings in one owned allocation without leaking.

TODO:
1. Measure lengths safely.
2. Check for length addition overflow.
3. Allocate once, copy both strings, terminate.

EXPECTED OUTPUT:
hello!

TEST NOTES:
Inputs are non-NULL; run with AddressSanitizer.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 07_EDGE_CASE_CHALLENGE.C
# ============================================================
cat > "$PROJECT/07_edge_case_challenge.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

char **ft_split_spaces_safe(const char *str)
{

}

int main(void)
{
	char **a=ft_split_spaces_safe("  a  b "); char **b=ft_split_spaces_safe(""); if(!a||!b)return(1); printf("%s %s %d\n",a[0],a[1],a[2]==NULL); printf("%d\n",b[0]==NULL); size_t i=0; while(a[i])free(a[i++]); free(a); free(b);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Split by spaces with empty-input handling and full cleanup.

TODO:
1. Count words and allocate pointer array + terminator.
2. Allocate each word and copy its bytes.
3. On allocation failure, free every earlier word and the array.

EXPECTED OUTPUT:
a b 1
1

TEST NOTES:
Both returned arrays must be NULL-terminated; empty input gives an array containing NULL.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

echo "Recreated 8 exercises in 08_memory_edge_cases."
