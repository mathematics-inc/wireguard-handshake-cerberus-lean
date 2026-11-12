/*
 * Word-sized comparison of byte buffers through a converted pointer, the
 * pattern of lib/crypto/memneq.c:75 and :100, lib/crypto/utils.c:44, :58,
 * :72 and include/crypto/utils.h:21-22, :41-43 when
 * CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS is set (Linux 24a19b95).
 *
 * The value is read with memcpy, as an unaligned-load helper would, so
 * the read itself is fine. The conversion (const unsigned long *)p happens
 * first, and it is undefined when p is not suitably aligned (C11 6.3.2.3#7).
 */
#include <stddef.h>
#include <stdio.h>
#include <string.h>

static unsigned long word_at(const unsigned long *w)
{
	unsigned long v;
	memcpy(&v, w, sizeof v);
	return v;
}

static int differs(const unsigned char *a, const unsigned char *b, size_t n)
{
	unsigned long acc = 0;
	size_t i = 0;

	for (; i + sizeof acc <= n; i += sizeof acc)
		acc |= word_at((const unsigned long *)(a + i)) ^
		       word_at((const unsigned long *)(b + i));
	for (; i < n; i++)
		acc |= (unsigned long)(a[i] ^ b[i]);
	return acc != 0;
}

int main(void)
{
	/* Two 16-byte fields at offset 4 in 8-aligned buffers, like a MAC
	 * inside a message. */
	_Alignas(8) unsigned char m1[24] = { 0 }, m2[24] = { 0 };

	printf("%d\n", differs(m1 + 4, m2 + 4, 16));
	m2[13] = 1;
	printf("%d\n", differs(m1 + 4, m2 + 4, 16));
	return 0;
}
