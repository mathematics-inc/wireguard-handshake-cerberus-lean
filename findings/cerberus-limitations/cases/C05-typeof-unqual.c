/* C05 __typeof_unqual__ (Linux's TYPEOF_UNQUAL path). Case 2
 (__typeof__) fails too, see C13. Case 3 (control): plain typeof. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
int main(void) { const int x = 1; __typeof_unqual__(x) y = 2; y = 3; return y != 3; }
#elif CASE == 2
int main(void) { int x = 1; __typeof__(x) y = 2; return y != 2; }
#elif CASE == 3
int main(void) { int x = 1; typeof(x) y = 2; return y != 2; }
#endif
