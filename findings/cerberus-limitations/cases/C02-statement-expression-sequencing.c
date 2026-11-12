/* C02 a store sequenced in a non-final statement of a GNU statement
 expression. Cases 1-2: on the right of &&; a comma-expression
 initializer. Case 3: an assignment statement before the
 value. Case 5: an increment in a declaration initializer. Case 8: a store
 inside an if. Cases 9-12: the value need not be used (discarded, void,
 cast to void, for-increment). Case 14: Linux's alloc_hooks_tag
 (alloc_tag.h:254) with CONFIG_MEM_ALLOC_PROFILING off, which every kmalloc
 expands to. Cases 4, 6, 7 and 13 are controls; 13 is the container_of shape
 (a plain declaration initializer). */
#ifndef CASE
#define CASE 1
#endif
static int touch(int *p) { return *p = 2; }
#if CASE == 1 /* statement expression on the right of && */
int main(void) { int n = 1, next = 0; int x = n && ({ next = 2; 1; }); return !(x == 1 && next == 2); }
#elif CASE == 2 /* comma expression initializer inside a statement expression */
struct node { int value; };
int main(void) {
    int count = 0;
    struct node item, *p;
    p = ({ typeof((++count, &item)) tmp = (++count, &item);
           tmp ? tmp : &item; });
    return !(p == &item && count == 1);
}
#elif CASE == 3 /* assignment statement, then the value */
int main(void) { int next = 0; int x = ({ next = 2; 1; }); return !(x == 1 && next == 2); }
#elif CASE == 4 /* control: the store before the statement expression */
int main(void) { int n = 1, next = 0; int x = 0; if (n) { next = 2; x = 1; } return !(x == 1 && next == 2); }
#elif CASE == 5 /* increment in a declaration initializer */
int main(void) { int n = 0; int x = ({ int t = ++n; t; }); return !(x == 1 && n == 1); }
#elif CASE == 6 /* control: the store happens inside a called function */
int main(void) { int next = 0; int x = ({ touch(&next); 1; }); return !(x == 1 && next == 2); }
#elif CASE == 7 /* control: the side effect is the final expression */
int main(void) { int n = 0; int x = ({ n++; }); return !(x == 0 && n == 1); }
#elif CASE == 8 /* store nested in an executed selection statement */
int main(void) { int n = 0; int x = ({ if (!n) n = 5; 1; }); return !(x == 1 && n == 5); }
#elif CASE == 9 /* value discarded: expression statement */
int main(void) { int next = 0; ({ next = 2; 1; }); return next != 2; }
#elif CASE == 10 /* value discarded: for-loop increment */
int main(void) { int i, n = 0; for (i = 0; i < 2; ({ n++; i++; })) ; return !(i == 2 && n == 2); }
#elif CASE == 11 /* void statement expression */
int main(void) { int next = 0; ({ next = 2; (void)0; }); return next != 2; }
#elif CASE == 12 /* cast to void */
int main(void) { int next = 0; (void)({ next = 2; 1; }); return next != 2; }
#elif CASE == 13 /* control: plain declaration initializer, then the value */
int main(void) { int v = 3; int *p = &v; int x = ({ int *q = p; *q; }); return x != 3; }
#elif CASE == 14 /* alloc_hooks_tag shape: the result assigned in an if, then the value */
static int profiling_enabled(void) { return 0; }
static int *allocate(int *p) { return p; }
int main(void) {
    int v = 3;
    int *r = ({ int *_res;
                if (profiling_enabled()) { _res = allocate(&v); } else _res = allocate(&v);
                _res; });
    return *r != 3;
}
#endif
