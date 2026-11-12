/*
 * A program that defines memcmp, as lib/string.c:655 does (Linux 24a19b95).
 * In a hosted implementation that identifier is reserved (C11 7.1.3#1-2);
 * in a freestanding one string.h is not required (C11 4#6) and the
 * definition is the program's own. The output counts calls that reached
 * the program's definition.
 *
 * One unit: compile as is. Two units: compile once with -DCALLER_ONLY and
 * once with -DDEFINITION_ONLY, and link the two objects.
 */
#include <stddef.h>

int printf(const char *, ...);
int memcmp(const void *, const void *, size_t);
extern int calls;

#ifndef CALLER_ONLY
int calls;

int memcmp(const void *x, const void *y, size_t n)
{
	const unsigned char *p = x, *q = y;

	calls++;
	for (size_t i = 0; i < n; i++)
		if (p[i] != q[i])
			return p[i] < q[i] ? -1 : 1;
	return 0;
}
#endif

#ifndef DEFINITION_ONLY
int main(void)
{
	static const unsigned char a[3] = { 1, 2, 3 }, b[3] = { 1, 5, 3 };

	int r = memcmp(a, b, sizeof a);	/* sequenced before reading calls */

	printf("%d %d\n", r < 0, calls);
	return 0;
}
#endif
