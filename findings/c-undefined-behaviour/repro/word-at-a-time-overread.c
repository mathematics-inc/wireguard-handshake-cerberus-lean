/*
 * lib/string.c:122-150 (sized_strscpy), Linux 24a19b95. When src and dest
 * are word-aligned the copy loop reads whole words from the source:
 *
 *	c = read_word_at_a_time(src+res);   (load_unaligned_zeropad() with
 *	                                      CONFIG_DCACHE_WORD_ACCESS)
 *
 * and only then looks for the terminating zero byte. For a source string
 * object shorter than a word, the first load covers bytes after the end of
 * the object. Linux documents this (lib/string.c:122-127) and disables the
 * loop under KMSAN; native execution is safe because the load stays in the
 * page. In C the 8-byte lvalue does not designate an object
 * (C11 6.3.2.1#1) and it reads a char array through unsigned long
 * (6.5#7). The kernel uses strscpy for device names, e.g.
 * net/core/dev.c:12255 strscpy(dev->name, name) when the "wg0" device is
 * created. This is Linux library code; WireGuard does not call strscpy.
 */
#include <stdio.h>
#include <string.h>

static unsigned long read_word(const char *addr)
{
	return *(const unsigned long *)addr;
}

static long copy_name(char *dest, const char *src, size_t count)
{
	long res = 0;

	/* The word loop of sized_strscpy, reduced to its first step. */
	if (count >= sizeof(unsigned long)) {
		unsigned long c = read_word(src);
		for (unsigned i = 0; i < sizeof c; i++) {
			unsigned char byte = (unsigned char)(c >> (8 * i));
			dest[i] = (char)byte;
			if (!byte)
				return i;
		}
		res = sizeof c;
	}
	for (; (size_t)res < count - 1 && src[res]; res++)
		dest[res] = src[res];
	dest[res] = 0;
	return res;
}

int main(void)
{
	static _Alignas(8) const char src[4] = "wg0";
	static _Alignas(8) char name[16];

	printf("%ld %s\n", copy_name(name, src, sizeof name), name);
	return 0;
}
