#!/bin/bash

PROJECT="$(cd "$(dirname "$0")" && pwd)"

mkdir -p "$PROJECT"

# ============================================================
# EX01 - COPY FORWARD
# ============================================================

cat > "$PROJECT/01_copy_forward.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

void ft_copy_forward(char *dst, const char *src, int n)
{
	
}

int	main(void)
{
	char src[]="abcd"; char dst[5]="...."; ft_copy_forward(dst,src,3); printf("%.4s\n",dst);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Copy exactly n bytes from src to dst using a forward loop.

TODO:
1. Start at index 0.
2. Copy one byte at a time.
3. Stop after n bytes.

EXPECTED OUTPUT:
abc.

TEST NOTES:
No terminating NUL is added; this copies bytes.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EOF

# ============================================================
# EX02 - COPY BACKWARD
# ============================================================

cat > "$PROJECT/02_copy_backward.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

void ft_copy_backward(char *dst, const char *src, int n)
{
	
}

int	main(void)
{
	char src[]="abcd"; char dst[5]="...."; ft_copy_backward(dst,src,4); printf("%s\n",dst);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Copy n bytes from the end toward the beginning.

TODO:
1. Begin at n.
2. Decrease the index before copying.
3. Copy byte n-1 down to 0.

EXPECTED OUTPUT:
abcd

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EOF

# ============================================================
# EX03 - DETECT OVERLAP
# ============================================================

cat > "$PROJECT/03_detect_overlap.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

int ft_ranges_overlap(const char *a, const char *b, size_t n)
{
	
}

int	main(void)
{
	char a[12]={0}; printf("%d\n",ft_ranges_overlap(a,a+2,5)); printf("%d\n",ft_ranges_overlap(a,a+6,5));
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Determine whether two n-byte ranges overlap.

TODO:
1. Think of each range as [start, start+n).
2. Compare their positions.
3. Return 1 for overlap, otherwise 0.

EXPECTED OUTPUT:
1
0

TEST NOTES:
Only compare pointers into the same allocated array; use relational comparisons safely.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EOF

# ============================================================
# EX04 - MOVE OVERLAPPING BYTES
# ============================================================

cat > "$PROJECT/04_move_overlapping_bytes.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

void *ft_move_bytes(void *dst, const void *src, size_t n)
{
	
}

int	main(void)
{
	char a[12]="abcdef"; ft_move_bytes(a+2,a,4); printf("%s\n",a); char b[12]="abcdef"; ft_move_bytes(b,b+2,4); printf("%s\n",b);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Implement memmove-like copying that survives overlapping regions.

TODO:
1. Cast to unsigned char pointers.
2. Decide when backward copying is necessary.
3. Copy exactly n bytes.
4. Return dst.

EXPECTED OUTPUT:
ababcd
cdefef

TEST NOTES:
Compare addresses only when they refer into the same array in this exercise.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EOF

echo "00_raw_memory exercises recreated successfully!"