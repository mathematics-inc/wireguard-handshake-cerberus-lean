/* C08 __builtin_constant_p (rcu_assign_pointer, ilog2, hweight). Case 3
 (control): the non-constant branch written directly. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
int main(void) { return __builtin_constant_p(1) != 1; }
#elif CASE == 2
#define PUBLISH(p, v) do { unsigned long saved = (unsigned long)(v); \
 if (__builtin_constant_p(v) && saved == 0) \
  *(volatile typeof(p) *)&(p) = (typeof(p))saved; \
 else (p) = (typeof(p))saved; } while (0)
int main(void) { int item; int *slot = 0; PUBLISH(slot, &item); return slot != &item; }
#elif CASE == 3
int main(void) { int item; int *slot = 0; slot = &item; return slot != &item; }
#endif
