/* C09 checked-arithmetic builtins (size_mul, size_add, check_*_overflow).
 Cases 1-3: multiply, add, subtract. Case 4 (control): explicit checks. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
int main(void) { unsigned long r; int overflow = __builtin_mul_overflow(2UL, 3UL, &r); return overflow || r != 6; }
#elif CASE == 2
int main(void) { unsigned long r; int overflow = __builtin_add_overflow(~0UL, 1UL, &r); return !(overflow && r == 0); }
#elif CASE == 3
int main(void) { int r; int overflow = __builtin_sub_overflow(1, 2, &r); return overflow || r != -1; }
#elif CASE == 4
int main(void) { unsigned long a = 2, b = 3, r = a * b; return r != 6; }
#endif
