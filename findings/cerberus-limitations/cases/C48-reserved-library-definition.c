/* C48 a program's own definition of a C library name (memcmp; C11 7.1.3#2
 reserves it, and Linux defines it in lib/string.c, built -ffreestanding).
 Cerberus routes every call through such a name to its own library
 implementation, so the program's definition never runs: called from the
 defining unit (case 1) or another unit (case 2), the library memcmp runs
 silently instead. The definition counts its calls; a volatile function
 pointer keeps the native compilers from using their builtin. Case 3
 (control): no definition, the library memcmp. Cases 1 and 3 use unit 1
 alone. */
#ifndef CASE
#define CASE 1
#endif
int memcmp(const void *a, const void *b, unsigned long n);
static const unsigned char x[] = { 1, 2, 3 }, y[] = { 1, 2, 4 };

#if CASE != 3 && UNIT == 1
int calls;

int memcmp(const void *a, const void *b, unsigned long n)
{
	const unsigned char *p = a, *q = b;

	calls++;
	for (; n; n--, p++, q++)
		if (*p != *q)
			return *p - *q;
	return 0;
}
#endif

#if (CASE == 2 && UNIT == 2) || (CASE == 1 && UNIT == 1)
#if CASE == 2
extern int calls;
#endif
int main(void)
{
	int (*volatile call)(const void *, const void *, unsigned long) = memcmp;

	return !(call(x, y, 3) < 0 && call(x, x, 3) == 0 && calls == 2);
}
#elif CASE == 3 && UNIT == 1
int main(void)
{
	return !(memcmp(x, y, 3) < 0 && memcmp(y, x, 3) > 0 && memcmp(x, x, 3) == 0);
}
#endif
