/* C10 the GNU omitted-middle conditional 'a ?: b'. Case 1: Linux's spaced
 form 'a ? : b'. Case 2: the adjacent form. Case 3 (control): the expanded
 conditional with one evaluation. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
int main(void) { int count = 0; int x = (++count) ? : 42; return !(x == 1 && count == 1); }
#elif CASE == 2
int main(void) { int count = 0; int x = (++count) ?: 42; return !(x == 1 && count == 1); }
#elif CASE == 3
int main(void) { int count = 0; int t = ++count; int x = t ? t : 42; return !(x == 1 && count == 1); }
#endif
