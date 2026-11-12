/* C20 compile-time type builtins (__same_type, __must_be_array, min/max,
 __is_constexpr helpers). */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
int main(void) { int a[2]; return !(__builtin_types_compatible_p(typeof(a), int[2]) && !__builtin_types_compatible_p(int, long)); }
#elif CASE == 2
int main(void) { return __builtin_choose_expr(1, 0, 1); }
#elif CASE == 3 /* control: _Generic form */
int main(void) { long x = 0; return _Generic(x, long: 0, default: 1); }
#endif
