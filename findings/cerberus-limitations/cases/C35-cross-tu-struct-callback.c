/* C35 a call through a function pointer whose type names a structure
 defined in both translation units. Valid C (C11 6.2.7#1: same-tag
 structures with compatible members are compatible across units). Every
 timer, work, NAPI, netdev and netlink callback has this shape. The two units
 are selected by UNIT. Case 2 (control): the same call with a void *
 parameter. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
struct timer { int expired; void (*function)(struct timer *); };
void fire(struct timer *t);
#if UNIT == 1 /* service side, like a timer or work mock */
void fire(struct timer *t) { t->function(t); }
#elif UNIT == 2 /* module side */
static void expired(struct timer *t) { ++t->expired; }
int main(void)
{
	struct timer t = { 0, expired };
	fire(&t);
	return t.expired != 1;
}
#endif
#elif CASE == 2
struct timer { int expired; void (*function)(void *); };
void fire(struct timer *t);
#if UNIT == 1
void fire(struct timer *t) { t->function(t); }
#elif UNIT == 2
static void expired(void *p) { ++((struct timer *)p)->expired; }
int main(void)
{
	struct timer t = { 0, expired };
	fire(&t);
	return t.expired != 1;
}
#endif
#endif
