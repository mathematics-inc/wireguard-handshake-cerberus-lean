/* C29 __transparent_union__ parameters (socket address helpers). Case 2
 (control): the member passed explicitly. */
#ifndef CASE
#define CASE 1
#endif
struct a { int v; }; struct b { int v; };
#if CASE == 1
typedef union { struct a *pa; struct b *pb; } __attribute__((__transparent_union__)) any_t;
static int get(any_t p) { return p.pb->v; }
int main(void) { struct b x = { 0 }; return get(&x); }
#elif CASE == 2
typedef union { struct a *pa; struct b *pb; } any_t;
static int get(any_t p) { return p.pb->v; }
int main(void) { struct b x = { 0 }; any_t u; u.pb = &x; return get(u); }
#endif
