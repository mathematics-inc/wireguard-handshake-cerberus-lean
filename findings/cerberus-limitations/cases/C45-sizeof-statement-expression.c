/* C45 sizeof applied to an expression containing a GNU statement expression.
 * The operand is not evaluated (C11 6.5.3.4#2) and its type is that of the
 * last expression statement. Linux's READ_ONCE/WRITE_ONCE check their
 * operand's size with sizeof(x) (rwonce.h:36), and container_of produces a
 * statement expression, so READ_ONCE(container_of(...)->field) has this
 * shape. Case 1 is the plain shape, case 2 has a side effect in the operand,
 * which must not happen. Controls: case 3 takes sizeof of typeof of the same
 * expression, case 4 evaluates a statement expression without a store (a
 * store there is C02). */
#ifndef CASE
#define CASE 1
#endif
int main(void)
{
	int x = 1, n = 0;
#if CASE == 1
	return !(sizeof(({ x; })) == sizeof(int));
#elif CASE == 2
	return !(sizeof(({ n++; x; }) + 1) == sizeof(int) && n == 0);
#elif CASE == 3
	return !(sizeof(typeof(({ n++; x; }))) == sizeof(int) && n == 0);
#elif CASE == 4
	return !(({ x; }) == 1 && n == 0);
#endif
}
