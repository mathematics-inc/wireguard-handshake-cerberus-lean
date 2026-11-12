/* C53 execution cost per step grows with the number of structure and union
 * definitions in the program. Each case runs the same loop of 2000 integer
 * loads and stores through a structure; what changes is how many unrelated
 * structure definitions the program contains, and how many translation units
 * repeat them (a header included by every unit repeats its definitions in
 * each). Case 1: no extra definitions. Case 2: 256 extra definitions in one
 * unit. Case 3: the same 256 definitions in each of four units, with the loop
 * calling a function in another unit that takes a structure pointer. Case 4:
 * as case 3 with no extra definitions (control for case 3). All cases return
 * 0; the observation is the run time (see the results table). */
#ifndef CASE
#define CASE 1
#endif
#ifndef UNIT
#define UNIT 1
#endif
#define D1(n) struct extra_##n { int a; long b; char c[3]; struct extra_##n *next; };
#define D4(n) D1(n##0) D1(n##1) D1(n##2) D1(n##3)
#define D16(n) D4(n##0) D4(n##1) D4(n##2) D4(n##3)
#define D64(n) D16(n##0) D16(n##1) D16(n##2) D16(n##3)
#define D256 D64(0) D64(1) D64(2) D64(3)
#if CASE == 1 || CASE == 4
#elif CASE == 2
#if UNIT == 1
D256
#endif
#elif CASE == 3
D256
#endif
struct counter { int n; long total; };
void step(struct counter *c, int i);
#if UNIT == 1
#if CASE <= 2
void step(struct counter *c, int i) { c->n++; c->total += i; }
#endif
int main(void)
{
	struct counter c = { 0, 0 };
	for (int i = 0; i < 2000; i++)
		step(&c, i);
	return !(c.n == 2000 && c.total == 1999000);
}
#elif UNIT == 2
#if CASE >= 3
void step(struct counter *c, int i) { c->n++; c->total += i; }
#endif
#elif UNIT == 3 || UNIT == 4
static int unused_marker;
#endif
