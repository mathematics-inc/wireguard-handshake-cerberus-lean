/* C32 the empty brace initializer '= {}' (C23; a GNU extension before).
 Case 2 (control): '{ 0 }'. */
struct pair { int a; long b; };
#ifndef CASE
#define CASE 1
#endif
int main(void) {
#if CASE == 1
    struct pair p = {};
#elif CASE == 2 /* control */
    struct pair p = { 0 };
#endif
    return !(p.a == 0 && p.b == 0);
}
