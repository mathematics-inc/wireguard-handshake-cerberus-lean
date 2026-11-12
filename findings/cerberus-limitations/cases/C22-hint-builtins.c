/* C22 control-hint builtins: __builtin_unreachable (BUG paths),
 __builtin_return_address (_RET_IP_), __builtin_prefetch. */
#ifndef CASE
#define CASE 1
#elif CASE == 4 /* control: the same function without the hint */
static int f(int x) { if (x) return 0; return 1; }
int main(void) { return f(1); }
#endif
#if CASE == 1
static int f(int x) { if (x) return 0; __builtin_unreachable(); }
int main(void) { return f(1); }
#elif CASE == 2
static void *where(void) { return __builtin_return_address(0); }
int main(void) { return where() == 0; }
#elif CASE == 3
int main(void) { int x = 0; __builtin_prefetch(&x); return x; }
#endif
