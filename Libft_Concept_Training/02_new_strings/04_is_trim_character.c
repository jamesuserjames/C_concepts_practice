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
