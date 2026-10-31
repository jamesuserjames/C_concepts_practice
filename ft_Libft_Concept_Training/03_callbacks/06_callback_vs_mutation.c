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
