#include <unistd.h>
#include <stdlib.h>
#include <stdarg.h>
#include <limits.h>
#include <stddef.h>
#include <stdint.h>

static int	ft_putchar(char c)
{
	if (write(1, &c, 1) != 1)
		return (-1);
	return (1);
}

static int	ft_putstr(char *str)
{
	int	i;

	if (!str)
		str = "(null)";
	i = 0;
	while (str[i])
	{
		if (ft_putchar(str[i]) == -1)
			return (-1);
		i++;
	}
	return (i);
}

static int	ft_putnbr(long n)
{
	int	count;
	int	ret;

	count = 0;
	if (n >= 10)
	{
		count = ft_putnbr(n / 10);
		if (count == -1)
			return (-1);
	}
	ret = ft_putchar(n % 10 + '0');
	if (ret == -1)
		return (-1);
	return (count + ret);
}

static int	ft_print_signed(int n)
{
	long	l;
	int		count;
	int		ret;

	l = n;
	count = 0;
	if (l < 0)
	{
		if (ft_putchar('-') == -1)
			return (-1);
		count = 1;
		l = -l;
	}
	ret = ft_putnbr(l);
	if (ret == -1)
		return (-1);
	return (count + ret);
}

static int	ft_dispatch(char spec, va_list args)
{
	if (spec == 'c')
		return (ft_putchar(va_arg(args, int)));
	if (spec == 's')
		return (ft_putstr(va_arg(args, char *)));
	if (spec == 'd')
		return (ft_print_signed(va_arg(args, int)));
	if (spec == '%')
		return (ft_putchar('%'));
	return (-1);
}

static int	ft_process(const char *format, va_list args)
{
	int	i;
	int	count;
	int	ret;

	i = 0;
	count = 0;
	while (format[i])
	{
		if (format[i] == '%' && format[i + 1])
			ret = ft_dispatch(format[++i], args);
		else if (format[i] == '%')
			return (-1);
		else
			ret = ft_putchar(format[i]);
		if (ret == -1)
			return (-1);
		count += ret;
		i++;
	}
	return (count);
}

int	ft_mini_printf(const char *format, ...)
{
	va_list	args;
	int		ret;

	if (!format)
		return (-1);
	va_start(args, format);
	ret = ft_process(format, args);
	va_end(args);
	return (ret);
}

#include <stdio.h>

int	main(void)
{
	int	ret;

	printf("Test 1: [");
	fflush(stdout);
	ret = ft_mini_printf("Hi");
	printf("] (return: %d)\n", ret);
	printf("Test 2: [");
	fflush(stdout);
	ret = ft_mini_printf("%c", 'A');
	printf("] (return: %d)\n", ret);
	printf("Test 3: [");
	fflush(stdout);
	ret = ft_mini_printf("%s", "cat");
	printf("] (return: %d)\n", ret);
	printf("Test 4: [");
	fflush(stdout);
	ret = ft_mini_printf("%d", -42);
	printf("] (return: %d)\n", ret);
	printf("Test 5: [");
	fflush(stdout);
	ret = ft_mini_printf("x=%d!", 7);
	printf("] (return: %d)\n", ret);
	printf("Test 6: [");
	fflush(stdout);
	ret = ft_mini_printf("%%");
	printf("] (return: %d)\n", ret);
	return (0);
}

/*
ALLOWED FUNCTIONS:
write for the implementation; printf/fflush are test-only.

GOAL:
Integrate parsing and variadic extraction for literals, %c, %s, %d and
%%.

EXPLANATION:
Integrate parsing and variadic extraction for literals, %c, %s, %d and
%%.
The function parameters are the values passed by the test calls in main.
For printing exercises, return the number of bytes written or -1 on error.
For value exercises, return the value specified by the test contract.
This skill is used when constructing and verifying ft_printf conversions.

TODO:
1. Identify the values provided by each test and what the result means.
2. Walk format: print literal characters, dispatch the supported
conversion, sum bytes, propagate errors.
3. Implement the function using only permitted operations.
4. Compare all test results with the output below.

EXPECTED OUTPUT:
Test 1: [Hi] (return: 2)
Test 2: [A] (return: 1)
Test 3: [cat] (return: 3)
Test 4: [-42] (return: 3)
Test 5: [x=7!] (return: 4)
Test 6: [%] (return: 1)

EDGE CASES:
Only the listed subset is required in this drill.

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
