/*
 * lib/rcuref.c:250 (rcuref_put_slowpath), Linux 24a19b95:
 *
 *	bool rcuref_put_slowpath(rcuref_t *ref, unsigned int cnt)
 *	...
 *		if (!atomic_try_cmpxchg_release(&ref->refcnt, &cnt, RCUREF_DEAD))
 *
 * atomic_try_cmpxchg_release(atomic_t *v, int *old, int new) receives
 * &cnt, an unsigned int *. Passing an argument is assignment to the
 * parameter (C11 6.5.2.2#2, #7), and assigning unsigned int * to int *
 * violates the constraint of 6.5.16.1#1 (pointers to incompatible types).
 * The object access itself would be allowed (6.5#7 permits the
 * corresponding signed type), so this is a constraint violation that needs
 * a compile-time message rather than undefined behaviour at run time.
 * try_cmpxchg() below is a sequential stand-in with the same signature.
 */
#include <stdio.h>

typedef struct { int counter; } atomic_t;

static _Bool try_cmpxchg(atomic_t *v, int *old, int new)
{
	if (v->counter == *old) {
		v->counter = new;
		return 1;
	}
	*old = v->counter;
	return 0;
}

#define DEAD 0xe0000000U

int main(void)
{
	atomic_t refcnt = { (int)0xffffffffU };
	unsigned int cnt = 0xffffffffU;

	if (!try_cmpxchg(&refcnt, &cnt, (int)DEAD))
		printf("lost\n");
	else
		printf("dead %x\n", (unsigned int)refcnt.counter);
	return 0;
}
