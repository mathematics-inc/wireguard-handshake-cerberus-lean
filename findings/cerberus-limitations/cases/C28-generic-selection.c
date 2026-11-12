/* C28 _Generic selection (typeof_unqual fallback, min/max helpers). Case 2:
 the qualified-scalar fallback shape. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
int main(void) { unsigned char c = 0; return _Generic(c, unsigned char: 0, default: 1); }
#elif CASE == 2
#define unqual_scalar(x) _Generic((x), const int: (int)0, int: (int)0, default: (x))
int main(void) { const int x = 4; typeof(unqual_scalar(x)) y = 3; y = 0; return y; }
#endif
