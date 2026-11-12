/* C12 offsetof of a member that follows a union-typed member (container_of
 on records with unions). Case 2 (control): a plain record. Case 3
 (control): the offset computed from a live object. */
#ifndef __cerb__
#define offsetof(T, M) __builtin_offsetof(T, M)
#endif
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
struct outer { union { int a; short b; } u; int tail; };
int main(void) { return offsetof(struct outer, tail) != sizeof(int); }
#elif CASE == 2
struct outer { int a; int tail; };
int main(void) { return offsetof(struct outer, tail) != sizeof(int); }
#elif CASE == 3
struct outer { union { int a; short b; } u; int tail; };
int main(void) { struct outer o; return (char *)&o.tail - (char *)&o != sizeof(int); }
#endif
