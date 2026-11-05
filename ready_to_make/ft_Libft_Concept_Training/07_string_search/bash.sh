#!/bin/bash
set -eu
PROJECT="$(cd "$(dirname "$0")" && pwd)"

# WARNING: Re-running this script overwrites all exercises in this folder.

# ============================================================
# 00_FIND_CHARACTER.C
# ============================================================
cat > "$PROJECT/00_find_character.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

char *ft_find_character(const char *str, int c)
{

}

int main(void)
{
	char s[]="banana"; char *p=ft_find_character(s,'n'); printf("%s\n",p?p:"missing"); printf("%d\n",ft_find_character(s,'z')==NULL);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Find the first matching character in a NUL-terminated string.

TODO:
1. Walk through str until the terminator.
2. Return a pointer to the first match.
3. Allow searching for the terminating NUL.

EXPECTED OUTPUT:
nana
1

TEST NOTES:
Return points into the original string; do not allocate.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 01_FIND_LAST_CHARACTER.C
# ============================================================
cat > "$PROJECT/01_find_last_character.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

char *ft_find_last_character(const char *str, int c)
{

}

int main(void)
{
	char s[]="banana"; char *p=ft_find_last_character(s,'a'); printf("%s\n",p?p:"missing"); printf("%d\n",ft_find_last_character(s,'z')==NULL);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Find the last matching character in a string.

TODO:
1. Track the most recent matching address.
2. Include the NUL byte as a possible match.

EXPECTED OUTPUT:
a
1

TEST NOTES:
Similar to strrchr; the result points into str.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 02_COMPARE_STRINGS.C
# ============================================================
cat > "$PROJECT/02_compare_strings.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

int ft_compare_strings(const char *a, const char *b)
{

}

int main(void)
{
	printf("%d\n",ft_compare_strings("abc","abc")); printf("%d\n",ft_compare_strings("abc","abd")<0); printf("%d\n",ft_compare_strings("abd","abc")>0);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Compare strings lexicographically.

TODO:
1. Compare bytes as unsigned char.
2. Stop at the first difference or NUL.
3. Return negative, zero, or positive.

EXPECTED OUTPUT:
0
1
1

TEST NOTES:
The exact nonzero difference is not tested.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 03_COMPARE_N_CHARS.C
# ============================================================
cat > "$PROJECT/03_compare_n_chars.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

int ft_compare_n_chars(const char *a, const char *b, size_t n)
{

}

int main(void)
{
	printf("%d\n",ft_compare_n_chars("abc","abd",2)); printf("%d\n",ft_compare_n_chars("abc","abd",3)<0); printf("%d\n",ft_compare_n_chars("a","z",0));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Compare at most n characters of two strings.

TODO:
1. Return zero when n is zero.
2. Compare as unsigned char.
3. Stop on difference or NUL.

EXPECTED OUTPUT:
0
1
0

TEST NOTES:
Do not read beyond the NUL terminator.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 04_FIND_SUBSTRING.C
# ============================================================
cat > "$PROJECT/04_find_substring.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

char *ft_find_substring(const char *haystack, const char *needle)
{

}

int main(void)
{
	char s[]="one two three"; char *p=ft_find_substring(s,"two"); printf("%s\n",p?p:"missing"); printf("%d\n",ft_find_substring(s,"xyz")==NULL);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Find the first occurrence of needle in haystack.

TODO:
1. Try each candidate position.
2. Compare successive characters of needle.
3. Return haystack for an empty needle.

EXPECTED OUTPUT:
two three
1

TEST NOTES:
No allocation; result points into haystack.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 05_LIMITED_SUBSTRING_SEARCH.C
# ============================================================
cat > "$PROJECT/05_limited_substring_search.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

char *ft_limited_search(const char *haystack, const char *needle, size_t len)
{

}

int main(void)
{
	char s[]="abcde"; printf("%d\n",ft_limited_search(s,"cd",3)==NULL); char *p=ft_limited_search(s,"cd",4); printf("%s\n",p?p:"missing");
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Find needle only if its entire match fits within len bytes.

TODO:
1. Return haystack when needle is empty.
2. Never read beyond len bytes of haystack.
3. Reject partial matches that cross the limit.

EXPECTED OUTPUT:
1
cde

TEST NOTES:
Equivalent search boundary concept to strnstr.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 06_STRING_SEARCH_CHALLENGE.C
# ============================================================
cat > "$PROJECT/06_string_search_challenge.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

size_t ft_count_occurrences(const char *str, const char *needle)
{

}

int main(void)
{
	printf("%zu\n",ft_count_occurrences("aaaa","aa")); printf("%zu\n",ft_count_occurrences("banana","na"));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Count non-overlapping occurrences of a nonempty substring.

TODO:
1. Search from the current position.
2. When found, increase count and advance by needle length.
3. Return zero when needle is empty.

EXPECTED OUTPUT:
2
2

TEST NOTES:
Count non-overlapping matches only.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

echo "Recreated 7 exercises in 07_string_search."
