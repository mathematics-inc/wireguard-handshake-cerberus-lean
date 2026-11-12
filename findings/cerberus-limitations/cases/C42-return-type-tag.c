/* C42 a structure tag first declared in a function definition's return
 type (skbuff.h skb_dst: struct dst_entry). By C11 6.2.1#4 the tag has file
 scope, so a later 'struct T' is the same type; Cerberus treats it as a
 different one and rejects the call. Cases 3-4 (controls): 'struct T;'
 before the definition, and a prior prototype. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 3
struct T;
#elif CASE == 4
struct T *g(void);
#endif
#if CASE == 2
static union T *f(union T *p) { return p; }
union T { int x; };
static int use(union T *q) { return f(q)->x; }
int main(void) { union T t = { 3 }; return use(&t) != 3; }
#else
static struct T *f(struct T *p) { return p; }
struct T { int x; };
static int use(struct T *q) { return f(q)->x; }
int main(void) { struct T t = { 3 }; return use(&t) != 3; }
#endif
