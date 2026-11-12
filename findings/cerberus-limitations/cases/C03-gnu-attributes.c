/* C03 GNU attribute syntax left after preprocessing. Cases 1-6: local
 unused, member and record aligned,
 always_inline, warn_unused_result, statement fallthrough. Cases 7-9:
 __section__, __cold__/__noreturn__ on declarations, __format__. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
int main(void) { int __attribute__((__unused__)) x = 0; return x; }
#elif CASE == 2
struct item { int __attribute__((aligned(sizeof(int)))) x; };
int main(void) { return sizeof(struct item) != sizeof(int); }
#elif CASE == 3
struct item { void *p; } __attribute__((aligned(sizeof(void *))));
int main(void) { return sizeof(struct item) != sizeof(void *); }
#elif CASE == 4
static inline __attribute__((__always_inline__)) int f(void) { return 0; }
int main(void) { return f(); }
#elif CASE == 5
int f(void) __attribute__((__warn_unused_result__));
int f(void) { return 0; }
int main(void) { return f(); }
#elif CASE == 6
int main(void) { int x = 0; switch (x) { case 0: x = 1; __attribute__((__fallthrough__)); default: x += 1; } return x != 2; }
#elif CASE == 7
static int value __attribute__((__section__(".data.wg"))) = 0;
int main(void) { return value; }
#elif CASE == 8
void stop(void) __attribute__((__cold__, __noreturn__));
int main(void) { return 0; }
#elif CASE == 9
int report(const char *fmt, ...) __attribute__((__format__(printf, 1, 2)));
int main(void) { return 0; }
#endif
