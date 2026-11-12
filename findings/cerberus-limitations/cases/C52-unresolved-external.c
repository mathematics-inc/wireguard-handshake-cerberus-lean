/* C52 a call to an external function that no unit defines. A program that
 * calls an external function with no definition violates C11 6.9#5, and
 * every native linker rejects it; Cerberus-Lean links the units and stops only
 * when the call executes ("calling an unknown procedure"). Case 1 calls the
 * missing function; case 2 contains the same call on a path that does not
 * execute and returns 0, so the missing definition goes unnoticed. Case 3 is
 * the control, with the definition in unit 2. Natively, cases 1 and 2 fail to
 * link. */
#ifndef CASE
#define CASE 1
#endif
#ifndef UNIT
#define UNIT 1
#endif
int helper(int);
#if UNIT == 1
int main(int argc, char **argv)
{
	(void)argv;
#if CASE == 2
	if (argc > 100)
		return helper(1);
	return 0;
#else
	(void)argc;
	return helper(1) != 2;
#endif
}
#elif UNIT == 2
#if CASE == 3
int helper(int x) { return x + 1; }
#endif
#endif
