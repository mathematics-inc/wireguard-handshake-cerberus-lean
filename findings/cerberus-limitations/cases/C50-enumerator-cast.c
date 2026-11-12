/* C50 a cast inside an integer constant expression that must be evaluated
 at translation time: an enumerator value or a _Static_assert condition.
 Valid C (C11 6.6#6). Linux's INT_MAX is ((int)(~0U >> 1)), and netdevice.h's
 'enum netdev_tx { __NETDEV_TX_MIN = INT_MIN, ... }' uses it. Case 1: the
 enumerator. Case 2: the static assertion. Controls: case 3 spells the value
 as a literal, case 4 uses the cast outside a constant expression, case 5 in
 a static object's initializer. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
enum e { A = ((int)(~0U >> 1)), B = -A - 1 };
int main(void) { return !(A == 2147483647 && B == -2147483647 - 1); }
#elif CASE == 2
_Static_assert((unsigned short)0x80008 == 8, "truncating cast");
int main(void) { return 0; }
#elif CASE == 3
enum e { A = 0x7fffffff, B = -A - 1 };
int main(void) { return !(A == 2147483647 && B == -2147483647 - 1); }
#elif CASE == 4
int main(void) { int a = (int)(~0U >> 1); return !(a == 2147483647); }
#elif CASE == 5
static const int a = ((int)(~0U >> 1));
int main(void) { return !(a == 2147483647); }
#endif
