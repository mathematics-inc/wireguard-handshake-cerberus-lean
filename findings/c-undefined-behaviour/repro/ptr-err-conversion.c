/*
 * include/linux/err.h (ERR_PTR, IS_ERR, PTR_ERR), Linux 24a19b95:
 *
 *	static __always_inline void * __must_check ERR_PTR(long error)
 *	{ return (void *) error; }
 *	static __always_inline long __must_check PTR_ERR(__force const void *ptr)
 *	{ return (long) ptr; }
 *
 * used by WireGuard at device.c:182, netlink.c:176/394/480 and
 * socket.c:63/75/141. ERR_PTR(-12) is an integer converted to a pointer:
 * implementation-defined (C11 6.3.2.3#5). PTR_ERR then converts that
 * pointer back to long. C11 6.3.2.3#6 makes pointer-to-integer conversion
 * implementation-defined, and undefined if the result cannot be
 * represented in the integer type. GCC and Clang document the result as
 * the pointer's bits, which here are the bits of -12; an implementation
 * whose integer value of this address is 2^64 - 12 (out of range for
 * long) makes it undefined. IS_ERR's conversion to unsigned long is fine
 * under both readings, so only the signed conversion differs.
 */
#include <stdio.h>

#define MAX_ERRNO 4095

static void *ERR_PTR(long error) { return (void *)error; }
static long PTR_ERR(const void *ptr) { return (long)ptr; }
static int IS_ERR(const void *ptr)
{
	return (unsigned long)ptr >= (unsigned long)-MAX_ERRNO;
}

static int object;

static void *lookup(int fail) { return fail ? ERR_PTR(-12) : (void *)&object; }

int main(void)
{
	void *ok = lookup(0), *err = lookup(1);

	printf("%d %d\n", IS_ERR(ok), IS_ERR(err));
#ifndef UNSIGNED_ONLY
	printf("%ld\n", PTR_ERR(err));
#else
	printf("%ld\n", -(long)(0 - (unsigned long)err));
#endif
	return 0;
}
