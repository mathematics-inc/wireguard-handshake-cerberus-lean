/* C37 pointers to one external function designated in different
 translation units. Valid C (C11 6.5.9#6: they compare equal). Linux's
 __queue_delayed_work compares timer->function with delayed_work_timer_fn
 designated in another unit. Case 1: the cross-unit designators compare
 equal, while a different function, each unit's same-named static and null
 compare unequal. Case 2 (control): the same comparisons within one unit.
 c37_first keeps every function off symbol number 0: the memory model stores
 a function pointer as its symbol's number, so the first symbol of the first
 unit reads back from memory as a null pointer. */
static int c37_first;
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
void f(void);
void other(void);
int is_f(void (*p)(void));
void (*static_h(void))(void);
#if UNIT == 1
void f(void) { }
void other(void) { }
static void h(void) { }
int is_f(void (*p)(void)) { return p == f; }
void (*static_h(void))(void) { return h; }
#elif UNIT == 2
static void h(void) { }
static void (*scalar)(void) = f;
int main(void)
{
	void (*runtime)(void) = f;
	void (*null)(void) = 0;

	return !is_f(runtime) + !is_f(scalar) + is_f(other) + (static_h() == h) + is_f(null);
}
#endif
#elif CASE == 2
#if UNIT == 1
void f(void) { }
void other(void) { }
static void (*scalar)(void) = f;
int main(void)
{
	void (*runtime)(void) = f;
	void (*null)(void) = 0;

	return (runtime != scalar) + (runtime == other) + (runtime == null);
}
#elif UNIT == 2
int unit2;
#endif
#endif
