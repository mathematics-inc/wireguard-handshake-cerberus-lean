/* C43 an explicit conversion of a non-null pointer to a pointer to an
 * incomplete structure type. Valid C (C11 6.3.2.3#7: object pointers convert,
 * and an incomplete type has no alignment requirement to violate). Opaque
 * handles do this throughout Linux (struct kmem_cache *, struct dst_entry *).
 * Case 1 converts the address of an int, case 2 a void * value, case 3 a
 * pointer computed from a char pointer. Controls: case 4 passes the void *
 * to a prototyped parameter of that type (implicit conversion); case 5
 * converts to a pointer to a complete structure. */
#ifndef CASE
#define CASE 1
#endif
struct opaque;
struct full { int v; };
static int seen(struct opaque *p, void *q) { return (void *)p == q; }
int main(void)
{
	int x = 0;
	void *v = &x;
	char *c = (char *)&x;
#if CASE == 1
	return !seen((struct opaque *)&x, &x);
#elif CASE == 2
	return !seen((struct opaque *)v, v);
#elif CASE == 3
	return !seen((struct opaque *)(void *)(c + 0), v);
#elif CASE == 4
	return !seen(v, v);
#elif CASE == 5
	(void)c;
	return !((void *)(struct full *)v == v);
#endif
}
