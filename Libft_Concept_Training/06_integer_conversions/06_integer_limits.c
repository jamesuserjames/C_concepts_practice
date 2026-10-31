#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

char *ft_limits_to_string(int n)
{

}

int main(void)
{
	char *a=ft_limits_to_string(INT_MIN); char *b=ft_limits_to_string(INT_MAX); if(!a||!b)return(free(a),free(b),1); printf("%s\n%s\n",a,b); free(a); free(b);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Convert the full signed int range to newly allocated strings.

TODO:
1. Handle the negative sign without negating INT_MIN as int.
2. Allocate enough bytes.
3. Terminate each string with NUL.

EXPECTED OUTPUT:
-2147483648
2147483647

TEST NOTES:
Expected output assumes 32-bit int, as on typical Codam systems.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
