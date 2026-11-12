/* C31 compilation-profile semantics: -fno-strict-overflow (wrapping signed
 arithmetic) and -ftrivial-auto-var-init=zero, which Linux builds with. ISO C
 leaves the first undefined and the second indeterminate; Cerberus follows
 ISO C. Case 3 (control). */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
int main(void) { volatile int x = 0x7fffffff; int y = x + 1; return y != -0x7fffffff - 1; }
#elif CASE == 2
static int load(int *p) { return *p; }
int main(void) { int x; return load(&x); }
#elif CASE == 3
int main(void) { volatile unsigned int x = 0xffffffffU; unsigned int y = x + 1; return y != 0; }
#endif
