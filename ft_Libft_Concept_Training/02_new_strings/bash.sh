#!/bin/bash
set -e

PROJECT="$(cd "$(dirname "$0")" && pwd)"

# 00_measure_string.c
cat > "$PROJECT/00_measure_string.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

size_t ft_count_chars(const char *s)
{
	
}

int	main(void)
{
	printf("%zu %zu\n",ft_count_chars("hello"),ft_count_chars(""));
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Count characters without counting the terminating NUL.

TODO:
1. Start at 0.
2. Advance until NUL.
3. Return count.

EXPECTED OUTPUT:
5 0

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EOF

# 01_count_substring.c
cat > "$PROJECT/01_count_substring.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

size_t ft_sub_length(const char *s, unsigned int start, size_t len)
{
		
}

int	main(void)
{
	printf("%zu\n",ft_sub_length("hello",2,10)); printf("%zu\n",ft_sub_length("hello",9,2));
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Calculate how many characters can actually be taken from s starting at start.

TODO:
1. Find source length.
2. If start is past the end, return 0.
3. Return the smaller of len and remaining length.

EXPECTED OUTPUT:
3
0

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EOF

# 02_extract_substring.c
cat > "$PROJECT/02_extract_substring.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

char *ft_extract(const char *s, unsigned int start, size_t len)
{
	
}

int	main(void)
{
	char *s=ft_extract("abcdef",2,3); if(s){printf("%s\n",s);free(s);}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate a new substring.

TODO:
1. Determine the actual copy length.
2. Allocate length + 1.
3. Copy and terminate.

EXPECTED OUTPUT:
cde

TEST NOTES:
The caller owns the returned string.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EOF

# 03_join_two_strings.c
cat > "$PROJECT/03_join_two_strings.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

char *ft_join_two(const char *a, const char *b)
{
	
}

int	main(void)
{
	char *s=ft_join_two("good","bye"); if(s){printf("%s\n",s);free(s);}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate a string containing a followed by b.

TODO:
1. Measure both lengths.
2. Allocate combined length + 1.
3. Copy a, then b, then NUL.

EXPECTED OUTPUT:
goodbye

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EOF

# 04_is_trim_character.c
cat > "$PROJECT/04_is_trim_character.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

int ft_is_trim_char(char c, const char *set)
{

}

int	main(void)
{
	printf("%d %d %d\n",ft_is_trim_char(' '," \t"),ft_is_trim_char('x'," \t"),ft_is_trim_char('\t'," \t"));
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Return 1 if c occurs in the set string, otherwise 0.

TODO:
1. Traverse set.
2. Compare each character with c.
3. Return 1 on match.

EXPECTED OUTPUT:
1 0 1

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EOF

# 05_find_trim_bounds.c
cat > "$PROJECT/05_find_trim_bounds.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

void ft_trim_bounds(const char *s, const char *set, size_t *start, size_t *end)
{
	
}

int	main(void)
{
	size_t a=0,b=0; ft_trim_bounds("..hello...",".",&a,&b);printf("%zu %zu\n",a,b);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Find [start,end) bounds after trimming characters in set from both ends.

TODO:
1. Move start forward while chars are in set.
2. Move end backward while chars are in set.
3. Do not underflow on empty strings.

EXPECTED OUTPUT:
2 7

TEST NOTES:
end is exclusive.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EOF

# 06_make_trimmed_string.c
cat > "$PROJECT/06_make_trimmed_string.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

char *ft_make_trimmed(const char *s, const char *set)
{
	
}

int	main(void)
{
	char *s=ft_make_trimmed("--hello--","-"); if(s){printf("%s\n",s);free(s);}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Create an allocated copy without characters in set at either end.

TODO:
1. Find trimmed start/end.
2. Allocate exact space.
3. Copy and terminate.

EXPECTED OUTPUT:
hello

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EOF

# 07_count_words.c
cat > "$PROJECT/07_count_words.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

size_t ft_count_words(const char *s, char sep)
{
	
}

int	main(void)
{
	printf("%zu %zu %zu\n",ft_count_words("a,,bb,c",','),ft_count_words(",,,",','),ft_count_words("hello",','));
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Count nonempty words separated by sep.

TODO:
1. Skip separators.
2. Count the beginning of each word.
3. Skip word characters.

EXPECTED OUTPUT:
3 0 1

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EOF

# 08_split_one_word.c
cat > "$PROJECT/08_split_one_word.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

char *ft_copy_word(const char *start, size_t len)
{
	
}

int	main(void)
{
	char *s=ft_copy_word("abcdef"+2,3);if(s){printf("%s\n",s);free(s);}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate and copy one word of exactly len characters.

TODO:
1. Allocate len + 1.
2. Copy len bytes.
3. Add NUL.

EXPECTED OUTPUT:
cde

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EOF

# 09_split_string.c
cat > "$PROJECT/09_split_string.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

char **ft_split_words(const char *s, char sep)
{
	
}

int	main(void)
{
	char **a=ft_split_words("a,,bb,c",',');size_t i=0;if(a){while(a[i]){printf("%s\n",a[i]);free(a[i++]);}free(a);}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Split into a NULL-terminated array of independently allocated words.

TODO:
1. Count words.
2. Allocate pointers plus NULL sentinel.
3. Allocate each word.
4. Clean up all allocations if one fails.

EXPECTED OUTPUT:
a
bb
c

TEST NOTES:
Important: the array and every word need their own free.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EOF

echo "02_new_strings: all 10 exercises recreated successfully!"
