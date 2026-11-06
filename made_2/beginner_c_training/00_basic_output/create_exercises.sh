#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")" || exit 1

cat > 00_ft_print_a.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_a(void)
{
	
}

/*
GOAL:
Print exactly one lowercase 'a' using write().

TODO:
1. Choose the character to output.
2. Call write() on standard output.
3. Print exactly one byte, without adding a newline.

EXPECTED OUTPUT:
Test 1: [a]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_a();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
No parameters. Do not print a newline or NUL byte.

LEARNING CHECK:
1. What does file descriptor 1 represent?
2. Why does write() take an address?
3. How many bytes must be written?
4. What changes if you print 'A' instead?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 01_ft_print_z.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_z(void)
{
	
}

/*
GOAL:
Print exactly one lowercase 'z'.

TODO:
1. Identify the ASCII character 'z'.
2. Write one byte to stdout.
3. Do not append a newline.

EXPECTED OUTPUT:
Test 1: [z]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_z();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
No parameters; the character must remain lowercase.

LEARNING CHECK:
1. How is 'z' represented in memory?
2. What does the third write() argument mean?
3. Should this function print a newline?
4. How is this different from ft_print_a()?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 02_ft_print_char.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_char(char c)
{
	
}

/*
GOAL:
Print the character passed as an argument.

TODO:
1. Use the supplied character c.
2. Pass its address to write().
3. Output only one byte per call.

EXPECTED OUTPUT:
Test 1: [A]
Test 2: [0]
Test 3: [!]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_char('A');
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_char('0');
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_char('!');
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Characters can be letters, digits, or punctuation.

LEARNING CHECK:
1. What does the char parameter contain?
2. Why do we pass &c to write()?
3. Does printing '0' print a numeric value?
4. Can this helper print any ASCII character?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 03_ft_print_newline.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_newline(void)
{
	
}

/*
GOAL:
Write exactly one newline character.

TODO:
1. Identify the newline escape sequence.
2. Write that byte to stdout.
3. Avoid printing any extra spaces.

EXPECTED OUTPUT:
Test 1: [\n]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_newline();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
The visible output moves to the following terminal line.

LEARNING CHECK:
1. What does '\n' represent?
2. How many bytes is a newline here?
3. Does write() add newlines automatically?
4. Why might printing functions avoid implicit newlines?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 04_ft_print_space.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_space(void)
{
	
}

/*
GOAL:
Print exactly one space character.

TODO:
1. Use the space character.
2. Write it to stdout.
3. Print nothing before or after it.

EXPECTED OUTPUT:
Test 1: [ ]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_space();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
A space is invisible; the surrounding brackets expose it.

LEARNING CHECK:
1. What is a space character?
2. How can brackets help you test invisible output?
3. Is a space the same as NUL?
4. How is it different from a newline?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 05_ft_print_three_chars.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_three_chars(char a, char b, char c)
{
	
}

/*
GOAL:
Print three supplied characters in their original order.

TODO:
1. Print a using write().
2. Print b using write().
3. Print c using write(), preserving order.

EXPECTED OUTPUT:
Test 1: [ABC]
Test 2: [123]
Test 3: [! ?]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_three_chars('A', 'B', 'C');
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_three_chars('1', '2', '3');
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_three_chars('!', ' ', '?');
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Spaces are valid characters; do not add separators.

LEARNING CHECK:
1. What order are the arguments passed in?
2. Does write() take a char value or its address?
3. How many bytes should each test emit?
4. What would change if the second argument were a newline?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 06_ft_print_alphabet.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_alphabet(void)
{
	
}

/*
GOAL:
Print the lowercase alphabet from a through z.

TODO:
1. Start with 'a'.
2. Loop while letters remain.
3. Write one letter per iteration, including 'z'.

EXPECTED OUTPUT:
Test 1: [abcdefghijklmnopqrstuvwxyz]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_alphabet();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Be careful not to stop before printing 'z'.

LEARNING CHECK:
1. Why can char values be incremented?
2. Which character starts the loop?
3. How do you include the final letter?
4. Why is a while loop appropriate here?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 07_ft_print_reverse_alphabet.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_reverse_alphabet(void)
{
	
}

/*
GOAL:
Print the lowercase alphabet from z back to a.

TODO:
1. Start at 'z'.
2. Print the current character.
3. Move backward until 'a' is included.

EXPECTED OUTPUT:
Test 1: [zyxwvutsrqponmlkjihgfedcba]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_reverse_alphabet();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Avoid off-by-one errors at the last letter.

LEARNING CHECK:
1. What should the initial character be?
2. Which operation moves backward in ASCII?
3. How do you ensure 'a' prints?
4. How does this compare with forward alphabet printing?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 08_ft_print_uppercase.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_uppercase(char c)
{
	
}

/*
GOAL:
Print c as uppercase when c is a lowercase ASCII letter.

TODO:
1. Detect the range 'a' through 'z'.
2. Convert lowercase letters using the ASCII offset.
3. Write the resulting character once.

EXPECTED OUTPUT:
Test 1: [A]
Test 2: [Q]
Test 3: [7]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_uppercase('a');
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_uppercase('Q');
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_uppercase('7');
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Already-uppercase letters and nonletters remain unchanged.

LEARNING CHECK:
1. How far apart are 'a' and 'A' in ASCII?
2. What should happen to 'Q'?
3. What should happen to a digit?
4. Can this be done without ctype.h?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 09_ft_print_lowercase.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_lowercase(char c)
{
	
}

/*
GOAL:
Print c as lowercase when c is an uppercase ASCII letter.

TODO:
1. Detect the range 'A' through 'Z'.
2. Convert uppercase letters to lowercase.
3. Write the resulting character once.

EXPECTED OUTPUT:
Test 1: [z]
Test 2: [b]
Test 3: [?]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_lowercase('Z');
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_lowercase('b');
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_lowercase('?');
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Lowercase letters and punctuation must not change.

LEARNING CHECK:
1. Which ASCII range needs conversion?
2. What is the offset between 'A' and 'a'?
3. What happens to punctuation?
4. How is this the inverse of ft_print_uppercase()?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 10_ft_print_every_second_letter.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_every_second_letter(void)
{
	
}

/*
GOAL:
Print every second lowercase letter, beginning with a.

TODO:
1. Start at 'a'.
2. Print the current character.
3. Advance by two until the alphabet ends.

EXPECTED OUTPUT:
Test 1: [acegikmoqsuwy]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_every_second_letter();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Do not print letters beyond 'z'.

LEARNING CHECK:
1. Why does advancing by 2 skip a letter?
2. What is the last output character?
3. How many letters should print?
4. How does this change your alphabet loop?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 11_ft_print_alternating_case.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_alternating_case(void)
{
	
}

/*
GOAL:
Print a through z, alternating lowercase and uppercase starting with lowercase.

TODO:
1. Loop over letters a through z.
2. Print even-indexed letters lowercase.
3. Print odd-indexed letters uppercase.

EXPECTED OUTPUT:
Test 1: [aBcDeFgHiJkLmNoPqRsTuVwXyZ]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_alternating_case();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Case alternates by position, not by the letter's ASCII parity.

LEARNING CHECK:
1. How could you track the letter position?
2. What happens at position zero?
3. How do you convert a lowercase letter to uppercase?
4. What is the final printed letter?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 12_ft_print_numbers.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_numbers(void)
{
	
}

/*
GOAL:
Print decimal digits from 0 through 9.

TODO:
1. Start at character '0'.
2. Write the current digit.
3. Continue through '9', once each.

EXPECTED OUTPUT:
Test 1: [0123456789]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_numbers();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Print characters, not binary integer values.

LEARNING CHECK:
1. Why is '0' different from integer 0?
2. What is the last digit?
3. Why can digits be looped over as chars?
4. How many bytes are printed?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 13_ft_print_reverse_numbers.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_reverse_numbers(void)
{
	
}

/*
GOAL:
Print decimal digits from 9 down to 0.

TODO:
1. Begin with the character '9'.
2. Write each digit.
3. Decrease until '0' is included.

EXPECTED OUTPUT:
Test 1: [9876543210]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_reverse_numbers();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
The last digit must be zero.

LEARNING CHECK:
1. Which character initializes the loop?
2. How does decrementing a char work?
3. How do you include '0'?
4. How many digits are printed?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 14_ft_print_even_digits.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_even_digits(void)
{
	
}

/*
GOAL:
Print the even decimal digits in ascending order.

TODO:
1. Start at '0'.
2. Skip odd digits.
3. Print through '8'.

EXPECTED OUTPUT:
Test 1: [02468]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_even_digits();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Zero is even; nine is not.

LEARNING CHECK:
1. Is 0 even?
2. How can you advance directly to the next even digit?
3. What is the final output digit?
4. What role could modulo play here?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 15_ft_print_odd_digits.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_odd_digits(void)
{
	
}

/*
GOAL:
Print the odd decimal digits in ascending order.

TODO:
1. Start at '1'.
2. Skip even digits.
3. Print through '9'.

EXPECTED OUTPUT:
Test 1: [13579]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_odd_digits();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
One and nine must both appear.

LEARNING CHECK:
1. What is the first odd digit?
2. How could you increase by two?
3. Why isn't zero printed?
4. How many characters are written?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 16_ft_print_digit.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_digit(int n)
{
	
}

/*
GOAL:
Print a single decimal digit from the integer n (0 through 9).

TODO:
1. Convert n to its ASCII digit character.
2. Write exactly one byte.
3. Only the range 0..9 is required.

EXPECTED OUTPUT:
Test 1: [0]
Test 2: [5]
Test 3: [9]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_digit(0);
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_digit(5);
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_digit(9);
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Inputs outside 0..9 are outside this drill's contract.

LEARNING CHECK:
1. How is integer 5 different from character '5'?
2. What does adding '0' accomplish?
3. Why is the input restricted to 0..9?
4. How many bytes should each call print?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 17_ft_print_two_digits.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_two_digits(int n)
{
	
}

/*
GOAL:
Print an integer from 0 to 99 using exactly two decimal digits.

TODO:
1. Find the tens digit.
2. Find the ones digit.
3. Print both as characters, including leading zeroes.

EXPECTED OUTPUT:
Test 1: [00]
Test 2: [07]
Test 3: [42]
Test 4: [99]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_two_digits(0);
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_two_digits(7);
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_two_digits(42);
	printf("]\n");

	printf("Test 4: [");
	fflush(stdout);
	ft_print_two_digits(99);
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
A single-digit number must have a leading zero.

LEARNING CHECK:
1. What are 42 / 10 and 42 % 10?
2. How do you print a leading zero?
3. What should 0 produce?
4. Why are two writes enough?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 18_ft_print_string.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_string(const char *str)
{
	
}

/*
GOAL:
Print every character of a NUL-terminated string.

TODO:
1. Start at the first character.
2. Write one character at a time.
3. Stop at '\0'; do not print the terminator.

EXPECTED OUTPUT:
Test 1: [cat]
Test 2: []
Test 3: [42 School]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_string("cat");
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_string("");
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_string("42 School");
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
An empty string prints nothing; str is non-NULL.

LEARNING CHECK:
1. What does the pointer str reference?
2. How do you detect the end of a C string?
3. Does write() require strlen()?
4. What should happen for an empty string?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 19_ft_print_string_newline.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_string_newline(const char *str)
{
	
}

/*
GOAL:
Print a string followed by exactly one newline.

TODO:
1. Print all characters before the NUL terminator.
2. After the loop, write '\n'.
3. For an empty string, still print the newline.

EXPECTED OUTPUT:
Test 1: [Hi\n]
Test 2: [\n]
Test 3: [A B\n]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_string_newline("Hi");
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_string_newline("");
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_string_newline("A B");
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Even an empty string ends with a newline.

LEARNING CHECK:
1. When should the newline be written?
2. How many newlines should an empty string print?
3. Why shouldn't you print the NUL terminator?
4. How does this differ from ft_print_string()?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 20_ft_print_n_chars.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_n_chars(const char *str, int n)
{
	
}

/*
GOAL:
Print up to n characters from a NUL-terminated string.

TODO:
1. Start at the beginning of str.
2. Stop after n characters or at '\0'.
3. Print nothing when n is zero or negative.

EXPECTED OUTPUT:
Test 1: [abc]
Test 2: [cat]
Test 3: []
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_n_chars("abcdef", 3);
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_n_chars("cat", 10);
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_n_chars("hi", 0);
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Never read beyond the string; n <= 0 prints nothing.

LEARNING CHECK:
1. What are the two loop stopping conditions?
2. What happens if n exceeds the string length?
3. What should n = 0 do?
4. Why is this different from writing exactly n bytes?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 21_ft_print_reverse_string.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_reverse_string(const char *str)
{
	
}

/*
GOAL:
Print a string in reverse without modifying the original.

TODO:
1. Determine the string length.
2. Start at the last actual character.
3. Write characters backwards through index zero.

EXPECTED OUTPUT:
Test 1: [madoc]
Test 2: [a]
Test 3: []
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_reverse_string("codam");
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_reverse_string("a");
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_reverse_string("");
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Handle the empty string without accessing a negative index.

LEARNING CHECK:
1. Why find the string length first?
2. What index contains the last character?
3. How can you avoid reading str[-1]?
4. Does the original string change?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 22_ft_print_every_second_char.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_every_second_char(const char *str)
{
	
}

/*
GOAL:
Print characters at indexes 0, 2, 4, and so on.

TODO:
1. Begin at index zero.
2. Write the indexed character if it exists.
3. Advance by two until the terminator.

EXPECTED OUTPUT:
Test 1: [ace]
Test 2: [hlo]
Test 3: []
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_every_second_char("abcdef");
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_every_second_char("hello");
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_every_second_char("");
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
An empty string prints nothing; indexes begin at zero.

LEARNING CHECK:
1. What is the first character index?
2. How does incrementing by two help?
3. What changes for odd-length strings?
4. Why not print every character?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 23_ft_print_string_uppercase.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_string_uppercase(const char *str)
{
	
}

/*
GOAL:
Print a string with ASCII lowercase letters converted to uppercase, without modifying it.

TODO:
1. Read each input character.
2. Convert only 'a' through 'z'.
3. Write the converted character.

EXPECTED OUTPUT:
Test 1: [HELLO!]
Test 2: [ABC123]
Test 3: []
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_string_uppercase("Hello!");
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_string_uppercase("abc123");
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_string_uppercase("");
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Digits, punctuation, and empty strings are valid inputs.

LEARNING CHECK:
1. What ASCII range requires conversion?
2. Why should the original string stay unchanged?
3. How do digits behave?
4. How does this build on single-character conversion?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 24_ft_print_ascii_value.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_ascii_value(unsigned char c)
{
	
}

/*
GOAL:
Print the decimal ASCII value of a byte without printf().

TODO:
1. Convert the unsigned byte value into decimal digits.
2. Print its digits in the correct order.
3. Handle one-, two-, and three-digit values.

EXPECTED OUTPUT:
Test 1: [65]
Test 2: [48]
Test 3: [0]
Test 4: [255]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_ascii_value('A');
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_ascii_value('0');
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_ascii_value(0);
	printf("]\n");

	printf("Test 4: [");
	fflush(stdout);
	ft_print_ascii_value(255);
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Values may range from 0 to 255; output decimal digits only.

LEARNING CHECK:
1. What is the decimal code for 'A'?
2. How do division and modulo separate digits?
3. How do you handle value zero?
4. Why is unsigned char appropriate?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 25_ft_print_printable_ascii.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_printable_ascii(void)
{
	
}

/*
GOAL:
Print all printable ASCII characters from space (32) through tilde (126).

TODO:
1. Start at ASCII value 32.
2. Write each character in sequence.
3. Stop after ASCII value 126.

EXPECTED OUTPUT:
Test 1: [ !"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`abcdefghijklmnopqrstuvwxyz{|}~]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_printable_ascii();
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
The first character is a space and the final one is '~'.

LEARNING CHECK:
1. What is the first printable ASCII code?
2. What is the last printable ASCII code?
3. How many characters should be printed?
4. Why isn't newline in this range?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 26_ft_print_non_printable.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_non_printable(const char *str)
{
	
}

/*
GOAL:
Print normal bytes as-is, but render control bytes below 32 or byte 127 as lowercase \xHH.

TODO:
1. Iterate through the input string.
2. Detect bytes below 32 or equal to 127.
3. For nonprintable bytes output backslash, x, and two hex digits.

EXPECTED OUTPUT:
Test 1: [A\x0aB]
Test 2: [X\x09Y]
Test 3: [Hi!]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_non_printable("A\nB");
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_non_printable("X\tY");
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_non_printable("Hi!");
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Treat input bytes as unsigned; a backslash in normal text is printable.

LEARNING CHECK:
1. Why does newline need an escaped representation?
2. How many characters make up \x0a?
3. Why print hex with two digits?
4. Which input bytes count as control characters?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 27_ft_print_hex_byte.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_hex_byte(unsigned char n)
{
	
}

/*
GOAL:
Print exactly two lowercase hexadecimal digits for one byte.

TODO:
1. Calculate the high hexadecimal digit.
2. Calculate the low hexadecimal digit.
3. Print both, using leading zero if necessary.

EXPECTED OUTPUT:
Test 1: [00]
Test 2: [0a]
Test 3: [ff]
Test 4: [40]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_hex_byte(0);
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_hex_byte(10);
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_hex_byte(255);
	printf("]\n");

	printf("Test 4: [");
	fflush(stdout);
	ft_print_hex_byte(64);
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Always print two digits, including for zero.

LEARNING CHECK:
1. How many values fit in one hex digit?
2. What does n / 16 give?
3. What does n % 16 give?
4. Why does 10 map to 'a'?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 28_ft_print_escaped_string.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_escaped_string(const char *str)
{
	
}

/*
GOAL:
Print text while replacing newline, tab, and backslash with \n, \t, and \\.

TODO:
1. Read each character in order.
2. For newline, tab, or backslash write the matching escape sequence.
3. Write other characters unchanged.

EXPECTED OUTPUT:
Test 1: [Hi\nthere]
Test 2: [a\tb]
Test 3: [a\\b]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_escaped_string("Hi\nthere");
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_escaped_string("a\tb");
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_escaped_string("a\\b");
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
Do not print actual newlines or tabs for escaped characters.

LEARNING CHECK:
1. How is a newline byte different from a backslash followed by n?
2. Why does a backslash need escaping?
3. How many output bytes represent one newline?
4. What should happen to ordinary letters?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

cat > 29_ft_print_formatted_line.c <<'EXERCISE_TEMPLATE_EOF'
#include <unistd.h>
#include <stdio.h>

void	ft_print_formatted_line(const char *label, unsigned int n)
{
	
}

/*
GOAL:
Print label, followed by ': ', n in decimal, and one newline (n between 0 and 999).

TODO:
1. Print each character of label.
2. Print a colon and a space.
3. Print the decimal digits of n, then a newline.

EXPECTED OUTPUT:
Test 1: [Score: 42\n]
Test 2: [Count: 0\n]
Test 3: [Max: 999\n]
*/

int	main(void)
{
	printf("Test 1: [");
	fflush(stdout);
	ft_print_formatted_line("Score", 42);
	printf("]\n");

	printf("Test 2: [");
	fflush(stdout);
	ft_print_formatted_line("Count", 0);
	printf("]\n");

	printf("Test 3: [");
	fflush(stdout);
	ft_print_formatted_line("Max", 999);
	printf("]\n");
	return (0);
}

/*
EDGE CASES:
The label can be empty; n is restricted to 0..999.

LEARNING CHECK:
1. How do you sequence text and number output?
2. Why does 0 need special handling?
3. What must follow the decimal number?
4. How is this related to implementing ft_printf()?

NOTE:
The exercise function is intentionally empty. Implement it yourself.
Complete the function before judging the test results.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_TEMPLATE_EOF

echo "Reset all 30 basic output exercises."
