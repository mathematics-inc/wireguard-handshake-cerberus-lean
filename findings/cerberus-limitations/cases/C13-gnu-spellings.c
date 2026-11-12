/* C13 GNU alternate keyword spellings: __signed__, __typeof__, __alignof__,
 __builtin_offsetof, __inline__, __volatile__, __const__. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
typedef __signed__ int signed_int;
int main(void) { signed_int x = -1; return x != -1; }
#elif CASE == 2
int main(void) { int x = 1; __typeof__(x) y = 2; return y != 2; }
#elif CASE == 3
int main(void) { return __alignof__(int) != _Alignof(int); }
#elif CASE == 4
struct record { int first; int second; };
int main(void) { return __builtin_offsetof(struct record, second) != sizeof(int); }
#elif CASE == 5
static __inline__ int f(void) { return 0; }
int main(void) { return f(); }
#elif CASE == 6
int main(void) { int x = 0; *(__volatile__ int *)&x = 1; return x != 1; }
#elif CASE == 7
int main(void) { __const__ int x = 0; return x; }
#endif
