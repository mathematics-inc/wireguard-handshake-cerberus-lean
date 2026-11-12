/* C46 implicit conversion between pointers to integer types that differ in
 * signedness. C11 6.5.16.1#1 (simple assignment, and through 6.5.2.2#2 a
 * prototyped argument) makes it a constraint violation; GCC and Clang accept
 * it with a warning, which Linux disables (-Wno-pointer-sign). Cerberus
 * rejects the program, which is conforming: the standard requires a message. Linux's
 * lib/rcuref.c:250 passes 'unsigned int *' to atomic_try_cmpxchg_release's
 * 'int *old'. Case 1 is the argument, case 2 an assignment. Case 3, with an
 * explicit cast, is the control. */
#ifndef CASE
#define CASE 1
#endif
static int store(int *p, int v) { *p = v; return v; }
int main(void)
{
	unsigned int u = 0;
#if CASE == 1
	store(&u, 5);
#elif CASE == 2
	int *p = &u;
	*p = 5;
#elif CASE == 3
	store((int *)&u, 5);
#endif
	return u != 5;
}
