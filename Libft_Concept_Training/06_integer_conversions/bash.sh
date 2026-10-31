#!/bin/bash
set -eu
PROJECT="$(cd "$(dirname "$0")" && pwd)"

# WARNING: Re-running this script overwrites all exercises in this folder.

# ============================================================
# 00_COUNT_DIGITS.C
# ============================================================
cat > "$PROJECT/00_count_digits.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

size_t ft_count_digits(unsigned int n)
{

}

int main(void)
{
	printf("%zu\n",ft_count_digits(0)); printf("%zu\n",ft_count_digits(12345));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Count decimal digits, including one digit for zero.

TODO:
1. Start with a count of one.
2. Divide n by ten until it is below ten.

EXPECTED OUTPUT:
1
5

TEST NOTES:
Use unsigned integers for this exercise.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 01_HANDLE_NEGATIVE.C
# ============================================================
cat > "$PROJECT/01_handle_negative.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

unsigned int ft_unsigned_magnitude(int n)
{

}

int main(void)
{
	printf("%u\n",ft_unsigned_magnitude(-42)); printf("%u\n",ft_unsigned_magnitude(0)); printf("%u\n",ft_unsigned_magnitude(INT_MIN));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Get the magnitude of an int without overflowing on INT_MIN.

TODO:
1. Convert through a wider signed type or use safe unsigned arithmetic.
2. Return the positive magnitude as unsigned int.

EXPECTED OUTPUT:
42
0
2147483648

TEST NOTES:
Assumes 32-bit int for the displayed INT_MIN value; verify limits on your system.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 02_REVERSE_DIGITS.C
# ============================================================
cat > "$PROJECT/02_reverse_digits.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

unsigned int ft_reverse_digits(unsigned int n)
{

}

int main(void)
{
	printf("%u\n",ft_reverse_digits(1234)); printf("%u\n",ft_reverse_digits(120));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Reverse decimal digits numerically.

TODO:
1. Extract the last digit using modulo ten.
2. Append it to the result.
3. Remove the last digit from n.

EXPECTED OUTPUT:
4321
21

TEST NOTES:
Input values are chosen so the reversed result fits unsigned int.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 03_INT_TO_STRING.C
# ============================================================
cat > "$PROJECT/03_int_to_string.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

char *ft_int_to_string(int n)
{

}

int main(void)
{
	char *a=ft_int_to_string(-2048); char *b=ft_int_to_string(0); if(!a||!b)return(free(a),free(b),1); printf("%s\n%s\n",a,b); free(a); free(b);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Allocate a new decimal string representing an int.

TODO:
1. Determine sign and digit count.
2. Allocate space for digits, optional minus, and NUL.
3. Fill the string and return it.

EXPECTED OUTPUT:
-2048
0

TEST NOTES:
The caller frees both returned strings; handle INT_MIN.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 04_PARSE_DIGITS.C
# ============================================================
cat > "$PROJECT/04_parse_digits.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

unsigned int ft_parse_digits(const char *digits)
{

}

int main(void)
{
	printf("%u\n",ft_parse_digits("1234")); printf("%u\n",ft_parse_digits("007"));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Parse a nonempty sequence of decimal digits.

TODO:
1. Start with value zero.
2. Multiply the accumulated value by ten.
3. Add the next digit value.

EXPECTED OUTPUT:
1234
7

TEST NOTES:
Input is guaranteed to contain digits only and fit unsigned int.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 05_ATOI.C
# ============================================================
cat > "$PROJECT/05_atoi.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

int ft_parse_int(const char *str)
{

}

int main(void)
{
	printf("%d\n",ft_parse_int("  -42")); printf("%d\n",ft_parse_int("+17abc")); printf("%d\n",ft_parse_int("xyz"));
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Implement atoi-like parsing of whitespace, sign and digits.

TODO:
1. Skip ASCII whitespace.
2. Read one optional sign.
3. Accumulate digits until a nondigit.

EXPECTED OUTPUT:
-42
17
0

TEST NOTES:
Inputs do not overflow int; mimic atoi for valid ranges.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

# ============================================================
# 06_INTEGER_LIMITS.C
# ============================================================
cat > "$PROJECT/06_integer_limits.c" <<'EOF'
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
EOF

# ============================================================
# 07_CONVERSION_CHALLENGE.C
# ============================================================
cat > "$PROJECT/07_conversion_challenge.c" <<'EOF'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <stdint.h>
#include <limits.h>

char *ft_format_signed(int n, unsigned int min_width)
{

}

int main(void)
{
	char *a=ft_format_signed(-42,5); char *b=ft_format_signed(7,3); if(!a||!b)return(free(a),free(b),1); printf("[%s]\n[%s]\n",a,b); free(a); free(b);
	return (0);
}

/*
ALLOWED FUNCTIONS:
malloc, free (only when needed); printf is for tests only.

GOAL:
Format an integer into a newly allocated, space-padded string.

TODO:
1. Convert n into decimal characters.
2. Compute spaces required for the minimum width.
3. Left-pad with spaces and preserve the minus sign.

EXPECTED OUTPUT:
[  -42]
[  7]

TEST NOTES:
Width is minimum total characters; no truncation.

LEARNING CHECK:
Explain the pointer/ownership and boundary conditions for this function.
*/
EOF

echo "Recreated 8 exercises in 06_integer_conversions."
