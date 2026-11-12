/*
 * The conversion of memneq-unaligned-word.c, written implicitly: a
 * const void * parameter initializes a const unsigned long *, the pattern
 * of lib/string.c:662 when CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS is set
 * (Linux 24a19b95). C11 6.3.2.3#7 applies to implicit conversions as well
 * as casts, so this is undefined when p is misaligned.
 */
#include <stdio.h>
#include <string.h>

static unsigned long first_word(const void *p)
{
	const unsigned long *w = p;
	unsigned long v;

	memcpy(&v, w, sizeof v);
	return v;
}

int main(void)
{
	_Alignas(8) unsigned char a[16] = { 0 }, b[16] = { 0 };

	b[5] = 1;
	printf("%d\n", first_word(a + 1) != first_word(b + 1));
	return 0;
}
