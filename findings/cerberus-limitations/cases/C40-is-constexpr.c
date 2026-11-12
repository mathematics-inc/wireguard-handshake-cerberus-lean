/* C40 Linux's __is_constexpr (compiler.h:322) as GENMASK_INPUT_CHECK
 (bits.h:34) expands it. Case 1: a non-constant argument, where GNU C's
 sizeof(void) == 1 decides the result. Case 2: a constant argument, where
 (void *)((long)(x) * 0l) is a null pointer constant (C11 6.3.2.3#3) and the
 conditional has type int *. Case 3 (control): the conditional alone. */
#ifndef CASE
#define CASE 1
#endif
#define __is_constexpr(x) \
	(sizeof(int) == sizeof(*(8 ? ((void *)((long)(x) * 0l)) : (int *)8)))
int main(void) {
    unsigned long size = 64, offset = 3;
#if CASE == 1
    int c = __is_constexpr(offset > size - 1);
    return c != 0;
#elif CASE == 2
    int c = __is_constexpr(3 > 63);
    return c != 1;
#elif CASE == 3 /* control */
    int *p = 8 ? (void *)0 : (int *)8;
    return p != 0;
#endif
}
