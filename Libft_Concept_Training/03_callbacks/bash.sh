#!/bin/bash

set -e
PROJECT="$(cd "$(dirname "$0")" && pwd)"

# Recreate the original 03_callbacks exercises in this script's directory.
# WARNING: Existing exercise files will be overwritten.

# 00_call_function_pointer
cat > "$PROJECT/00_call_function_pointer.c" <<'EXERCISE_ORIGINAL_EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

static int test_square(int n)
{
	return (n*n);
}

int ft_call_operation(int x, int (*operation)(int))
{

}

int	main(void)
{
	printf("%d\n",ft_call_operation(4,test_square));
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Understand a callback as a function supplied as an argument.

TODO:
1. Receive a function pointer.
2. Call it with x.
3. Return its result.

EXPECTED OUTPUT:
16

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EXERCISE_ORIGINAL_EOF

# 01_apply_char_callback
cat > "$PROJECT/01_apply_char_callback.c" <<'EXERCISE_ORIGINAL_EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

static char test_upper(char c) 
{
	return ((c >= 'a' && c <= 'z') ? c - 32 : c);
}

char ft_apply_char(char c, char (*f)(char))
{
	
}

int	main(void)
{
	printf("%c\n",ft_apply_char('a',test_upper));
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Call a function through a function pointer.

TODO:
1. Understand the f parameter.
2. Pass c to f.
3. Return the result.

EXPECTED OUTPUT:
A

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EXERCISE_ORIGINAL_EOF

# 02_mutate_each_character
cat > "$PROJECT/02_mutate_each_character.c" <<'EXERCISE_ORIGINAL_EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

static void test_upper_ptr(char *c)
{
	if (*c >= 'a' && *c <= 'z') *c -= 32;
}

void ft_mutate_chars(char *s, void (*f)(char *))
{
	
}

int	main(void)
{
	char s[]="abc";ft_mutate_chars(s,test_upper_ptr);printf("%s\n",s);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Apply a callback to every character in a string in place.

TODO:
1. Loop over the original string.
2. Pass the address of each character.
3. Do not allocate a new string.

EXPECTED OUTPUT:
ABC

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EXERCISE_ORIGINAL_EOF

# 03_indexed_mutation
cat > "$PROJECT/03_indexed_mutation.c" <<'EXERCISE_ORIGINAL_EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

static void test_index(unsigned int i, char *c)
{
	*c = (char)(*c + i);
}

void ft_mutate_indexed(char *s, void (*f)(unsigned int, char *))
{
	
}

int	main(void)
{
	char s[]="aaaa";ft_mutate_indexed(s,test_index);printf("%s\n",s);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Pass both the index and character address to a callback.

TODO:
1. Track unsigned index.
2. Call f(index, &s[index]).
3. Preserve NUL terminator.

EXPECTED OUTPUT:
abcd

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EXERCISE_ORIGINAL_EOF

# 04_transform_into_new_string
cat > "$PROJECT/04_transform_into_new_string.c" <<'EXERCISE_ORIGINAL_EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

static char test_upper(char c)
{
	return (c >= 'a' && c <= 'z') ? c - 32 : c;
}

char *ft_map_chars(const char *s, char (*f)(char))
{
	
}

int	main(void)
{
	char s[]="abc";char *r=ft_map_chars(s,test_upper);if(r){printf("%s %s\n",s,r);free(r);}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate a new string containing transformed characters.

TODO:
1. Allocate source length + 1.
2. Call callback on each source character.
3. Keep source unchanged.

EXPECTED OUTPUT:
abc ABC

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EXERCISE_ORIGINAL_EOF

# 05_indexed_mapping
cat > "$PROJECT/05_indexed_mapping.c" <<'EXERCISE_ORIGINAL_EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

static char test_index_char(unsigned int i, char c)
{
	return (char)(c + i);
}

char *ft_map_indexed(const char *s, char (*f)(unsigned int, char))
{
	
}

int	main(void)
{
	char *r=ft_map_indexed("aaaa",test_index_char);if(r){printf("%s\n",r);free(r);}
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Create a new string where each character depends on its index.

TODO:
1. Allocate.
2. Call f(i,s[i]).
3. NUL-terminate and return.

EXPECTED OUTPUT:
abcd

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EXERCISE_ORIGINAL_EOF

# 06_callback_vs_mutation
cat > "$PROJECT/06_callback_vs_mutation.c" <<'EXERCISE_ORIGINAL_EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>

static void test_double(int *n)
{
	*n *= 2;
}

void ft_visit_ints(int *a, size_t n, void (*f)(int *))
{
	
}

int	main(void)
{
	int a[3]={1,2,3};ft_visit_ints(a,3,test_double);printf("%d %d %d\n",a[0],a[1],a[2]);
	return (0);
}

/*
ALLOWED FUNCTIONS: malloc, free (only when needed); printf is for tests only.

GOAL:
Visit array elements by pointer and let a callback modify them.

TODO:
1. Traverse array.
2. Pass each element address to f.
3. Observe changes in caller-owned array.

EXPECTED OUTPUT:
2 4 6

TEST NOTES:
Run the program after implementing the function. Check output exactly.

LEARNING CHECK:
Explain what every pointer/index refers to, who owns memory, and any edge cases.
*/
EXERCISE_ORIGINAL_EOF

echo "03_callbacks: recreated 7 original exercises."
