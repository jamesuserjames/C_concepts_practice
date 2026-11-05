#include <unistd.h>
#include <stdarg.h>
#include <stdio.h>

static int	ft_print_base(unsigned long n, char *base, int size)
{
	int		count;
	char	c;

	count = 0;
	if (n >= (unsigned long)size)
	{
		count = ft_print_base(n / size, base, size);
		if (count == -1)
			return (-1);
	}
	c = base[n % size];
	if (write(1, &c, 1) != 1)
		return (-1);
	return (count + 1);
}

static int	ft_print_signed(int n)
{
	long	l;
	int		count;

	l = n;
	count = 0;
	if (l < 0)
	{
		if (write(1, "-", 1) != 1)
			return (-1);
		count = 1;
		l = -l;
	}
	n = ft_print_base(l, "0123456789", 10);
	if (n == -1)
		return (-1);
	return (count + n);
}

static int	ft_print_string(char *str)
{
	int	i;

	if (!str)
		str = "(null)";
	i = 0;
	while (str[i])
	{
		if (write(1, &str[i], 1) != 1)
			return (-1);
		i++;
	}
	return (i);
}

int	ft_dispatch_char(char spec, va_list args)
{
	char	c;

	if (spec == 'c')
	{
		c = (char)va_arg(args, int);
		if (write(1, &c, 1) != 1)
			return (-1);
		return (1);
	}
	if (spec == 's')
		return (ft_print_string(va_arg(args, char *)));
	if (spec == 'd' || spec == 'i')
		return (ft_print_signed(va_arg(args, int)));
	if (spec == 'u')
		return (ft_print_base(va_arg(args, unsigned int),
				"0123456789", 10));
	if (spec == 'x')
		return (ft_print_base(va_arg(args, unsigned int),
				"0123456789abcdef", 16));
	if (spec == 'X')
		return (ft_print_base(va_arg(args, unsigned int),
				"0123456789ABCDEF", 16));
	return (0);
}

static int	test_dispatch(int spec, ...)
{
	va_list	args;
	int		ret;

	va_start(args, spec);
	ret = ft_dispatch_char(spec, args);
	va_end(args);
	return (ret);
}

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = test_dispatch('c', 'A');
	printf("] (return: %d)\n", ret);

	printf("Test 2: [");
	fflush(stdout);
	ret = test_dispatch('s', "Hi");
	printf("] (return: %d)\n", ret);

	printf("Test 3: [");
	fflush(stdout);
	ret = test_dispatch('d', -42);
	printf("] (return: %d)\n", ret);

	printf("Test 4: [");
	fflush(stdout);
	ret = test_dispatch('u', 42U);
	printf("] (return: %d)\n", ret);

	printf("Test 5: [");
	fflush(stdout);
	ret = test_dispatch('x', 255U);
	printf("] (return: %d)\n", ret);

	printf("Test 6: [");
	fflush(stdout);
	ret = test_dispatch('X', 255U);
	printf("] (return: %d)\n", ret);

	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Dispatch a specifier to the appropriate output logic using va_list.

EXPLANATION:
Dispatch a specifier to the appropriate output logic using va_list.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Read the right promoted type from args for the specifier; return printed
count.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [A] (return: 1)
Test 2: [Hi] (return: 2)
Test 3: [-42] (return: 3)
Test 4: [42] (return: 2)
Test 5: [ff] (return: 2)
Test 6: [FF] (return: 2)

EDGE CASES:
The supplied test wrapper is test-only and builds a va_list.

LEARNING CHECK:
1. What does each input parameter represent?
2. Why does the function return its specified result?
3. Which boundary input might reveal an implementation error?
4. How does this operation help build ft_printf?

NOTE:
The function body is intentionally empty. Build without -Werror until
you have completed the implementation. Matching tests is useful evidence,
not proof of correctness for every possible input.
*/
