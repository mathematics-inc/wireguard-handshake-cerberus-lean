/* C07 the raw __builtin_memcpy spelling (Linux's memcpy expands to it).
 Case 2 (control): a call to a declared memcpy. */
extern void *memcpy(void *, const void *, __SIZE_TYPE__);
#ifndef CASE
#define CASE 1
#endif
#if CASE == 2 /* control */
#define __builtin_memcpy memcpy
#endif
int main(void) { int a = 42, b = 0; __builtin_memcpy(&b, &a, sizeof(a)); return b != 42; }
