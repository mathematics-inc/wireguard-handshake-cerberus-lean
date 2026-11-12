/* C39 an offsetof member designator beyond one identifier. C11 7.19#3
 allows '.member' and '[index]' after the first identifier
 (offsetof(struct prev_queue, empty.next) in WireGuard's queueing.c). Cases
 1-3 fail. Case 4 (control): the offset computed with plain typeof. Case 5
 (control): one identifier. */
#ifndef __cerb__
#define offsetof(T, M) __builtin_offsetof(T, M)
#endif
#ifndef CASE
#define CASE 1
#endif
struct point { int x, y; };
struct queue { void *head; struct { void *next, *prev; } empty; struct point at[2]; };
#if CASE == 1
int main(void) { return offsetof(struct queue, empty.prev) != 2 * sizeof(void *); }
#elif CASE == 2
int main(void) { return offsetof(struct queue, at[1]) != 3 * sizeof(void *) + sizeof(struct point); }
#elif CASE == 3
int main(void) { int i = 1; return offsetof(struct queue, at[i].y) != 3 * sizeof(void *) + sizeof(struct point) + sizeof(int); }
#elif CASE == 4
int main(void) {
    return offsetof(struct queue, empty) + offsetof(typeof(((struct queue *)0)->empty), prev) != 2 * sizeof(void *);
}
#elif CASE == 5
int main(void) { return offsetof(struct queue, empty) != sizeof(void *); }
#endif
