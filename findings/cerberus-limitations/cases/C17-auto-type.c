/* C17 __auto_type (Linux's auto, guards). Case 2 (control): explicit type. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
int main(void) { long v = 5; __auto_type w = v; return !(w == 5 && sizeof(w) == sizeof(long)); }
#elif CASE == 2
int main(void) { long v = 5; typeof(v) w = v; return !(w == 5 && sizeof(w) == sizeof(long)); }
#endif
