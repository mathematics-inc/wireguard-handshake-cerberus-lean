/* C51 the padding of an object with static storage duration. C11 6.7.9#10
 * initializes such an object without an initializer to zero, "and any
 * padding is initialized to zero bits"; an initialized one is zero except
 * where initialized. Reading the padding through unsigned char (6.2.6.1#4)
 * then gives 0. Case 1 is a static object without an initializer, case 2
 * one with an initializer list. Control: case 3 clears every byte of an
 * automatic object through unsigned char, then reads the same byte. */
#ifndef CASE
#define CASE 1
#endif
struct p { char c; int i; };
#if CASE == 1
static struct p s;
#elif CASE == 2
static struct p s = { 1, 2 };
#endif
int main(void)
{
#if CASE == 3
	struct p s;
	for (unsigned long k = 0; k < sizeof(s); k++)
		((unsigned char *)&s)[k] = 0;
#endif
	unsigned char *b = (unsigned char *)&s;
	return b[1] != 0;
}
