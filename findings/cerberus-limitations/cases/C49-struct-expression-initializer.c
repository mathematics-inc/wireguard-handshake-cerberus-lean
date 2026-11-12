/* C49 a structure member initialized by a single expression of its own
 structure type inside a brace initializer ('{ s, 3 }'). C11 6.7.9#13 allows
 it. Cerberus treats the expression as the scalar initializer of the
 member's first field and rejects it (UB081), positionally (case 1) and by
 designator (case 2). Controls: case 3 assigns the member afterwards, case 4
 copies a whole structure. */
#ifndef CASE
#define CASE 1
#endif
struct in {
	int a, b;
};
struct out {
	struct in i;
	int c;
};

int main(void)
{
	struct in x = { 1, 2 };
#if CASE == 1
	struct out o = { x, 3 };
#elif CASE == 2
	struct out o = { .i = x, .c = 3 };
#elif CASE == 3
	struct out o = { { 0, 0 }, 3 };

	o.i = x;
#elif CASE == 4
	struct out p = { { 1, 2 }, 3 }, o = p;
#endif
	return !(o.i.a == 1 && o.i.b == 2 && o.c == 3);
}
