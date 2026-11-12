/* C16 a raw __builtin_expect call (likely/unlikely) in already-preprocessed
 input, where Cerberus's own runtime macro for it does not apply. Case 2
 (control): no builtin call. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 2
#define __builtin_expect(e, c) ((long)(e))
#endif
int main(void) { int n = 0; long r = __builtin_expect(++n, 1); return !(r == 1 && n == 1 && sizeof(__builtin_expect(1, 1)) == sizeof(long)); }
