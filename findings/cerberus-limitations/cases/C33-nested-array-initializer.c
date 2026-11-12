/* C33 a brace-initialized array member inside a nested aggregate (netlink
 policy tables). Case 1 panics in translation to Core ("invalid node"). Case
 2 nests the array two levels down. Cases 3-5 are controls. In cases 1 and 2
 the braced array is the last member of struct pair. Case 6: the same failure
 with a structure as that last member (Linux's rwlock_init initializer).
 Cases 7-8 (controls): the braced structure as a non-last member, and the
 last member designated by a path. Case 9: a nested union whose braced
 member is its first. */
#ifndef CASE
#define CASE 1
#endif
struct pair { int key; int tag[2]; };
#if CASE == 1 /* array of structs with an inner array initializer */
struct pair table[2] = { { 1, { 5, 6 } }, { 2, { 7, 8 } } };
int main(void) { return !(table[1].key == 2 && table[1].tag[1] == 8); }
#elif CASE == 2 /* struct member containing an array member */
struct outer { int n; struct pair p; };
struct outer o = { 3, { 1, { 5, 6 } } };
int main(void) { return !(o.n == 3 && o.p.tag[1] == 6); }
#elif CASE == 3 /* control: top-level struct with an array member */
struct pair one = { 1, { 5, 6 } };
int main(void) { return one.tag[1] != 6; }
#elif CASE == 4 /* control: inner array left to zero initialization */
struct pair table[2] = { [0] = { .key = 1 }, [1] = { .key = 2 } };
int main(void) { return !(table[1].key == 2 && table[1].tag[1] == 0); }
#elif CASE == 5 /* control: two-dimensional array */
int grid[2][2] = { { 5, 6 }, { 7, 8 } };
int main(void) { return grid[1][1] != 8; }
#elif CASE >= 6
struct cell { int val; };
struct lock { struct cell cnts; struct cell wait; };
struct holder { struct lock raw; };
#if CASE == 6 /* braced struct as the last member of a nested aggregate */
int main(void) { struct holder h = { .raw = { .cnts = { 1 }, .wait = { 2 } } }; return h.raw.wait.val != 2; }
#elif CASE == 7 /* control: braced struct as the first, not last, member */
int main(void) { struct holder h = { .raw = { .cnts = { 1 } } }; return h.raw.cnts.val != 1; }
#elif CASE == 8 /* control: the last member designated by a path */
int main(void) { struct holder h = { .raw = { .cnts = { 1 }, .wait.val = 2 } }; return h.raw.wait.val != 2; }
#elif CASE == 9 /* braced first member of a nested union */
union pick { struct cell a; struct cell b; };
struct hu { union pick u; int n; };
int main(void) { struct hu h = { .u = { .a = { 4 } }, .n = 1 }; return !(h.u.a.val == 4 && h.n == 1); }
#endif
#endif
