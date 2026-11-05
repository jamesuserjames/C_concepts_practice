#include <stdio.h>

int	ft_is_prime(int nb)
{
	
}

int	main(void)
{
	printf("%d\n", ft_is_prime(17));
	printf("%d\n", ft_is_prime(18));
	printf("%d\n", ft_is_prime(2));
	return (0);
}

/*
Allowed functions: none

Goal:
Return 1 if nb is prime and 0 otherwise.

TODO:
1. Understand what makes a number prime
2. Test whether another integer divides nb exactly
3. Return the correct result when a divisor is found or all required divisors have been checked

Test notes:
The tests cover a normal prime number, a composite number, and 2 as the smallest prime boundary.

Expected output:
1
0
1
*/
