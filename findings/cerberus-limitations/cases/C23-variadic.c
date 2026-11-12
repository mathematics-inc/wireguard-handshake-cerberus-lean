/* C23 variadic functions through __builtin_va_* (printk-family wrappers).
 Case 2 (control): the arguments passed as an array. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
typedef __builtin_va_list va_list;
static int sum(int n, ...) {
    va_list ap; int s = 0;
    __builtin_va_start(ap, n);
    for (int i = 0; i < n; i++) s += __builtin_va_arg(ap, int);
    __builtin_va_end(ap);
    return s;
}
int main(void) { return sum(3, 1, 2, 3) != 6; }
#elif CASE == 2
static int sum(int n, const int *v) { int s = 0; for (int i = 0; i < n; i++) s += v[i]; return s; }
int main(void) { const int v[] = { 1, 2, 3 }; return sum(3, v) != 6; }
#endif
