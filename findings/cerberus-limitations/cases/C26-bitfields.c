/* C26 bit-field members (sk_buff, netlink policies, flowi). Any bit-field
 member fails, even an unused one (case 2). Case 3 (control): plain members. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
struct flags { unsigned int a : 1, b : 3, c : 4; };
int main(void) { struct flags f = { 0 }; f.a = 1; f.b = 9; f.c = 15; return !(sizeof(f) == 4 && f.a == 1 && f.b == 1 && f.c == 15); }
#elif CASE == 2
struct flags { unsigned int a : 1; };
int main(void) { return 0; }
#elif CASE == 3
struct flags { unsigned char a, b, c; };
int main(void) { struct flags f = { 0 }; f.a = 1; return f.a != 1; }
#endif
