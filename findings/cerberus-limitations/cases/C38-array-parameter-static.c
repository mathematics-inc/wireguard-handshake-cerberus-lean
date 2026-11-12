/* C38 'static' in an array parameter declarator (C11 6.7.6.3#7), Linux's
 at_least in crypto/curve25519.h. Case 2 (control): without 'static'. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
#define at_least static
#elif CASE == 2 /* control */
#define at_least
#endif
static void fill(unsigned char out[at_least 4], const unsigned char in[at_least 4])
{
    for (int i = 0; i < 4; i++)
        out[i] = in[i] + 1;
}
int main(void) {
    unsigned char a[4] = { 1, 2, 3, 4 }, b[4];
    fill(b, a);
    return !(b[0] == 2 && b[3] == 5);
}
