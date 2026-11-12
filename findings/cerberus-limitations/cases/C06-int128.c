/* C06 128-bit integers (portable curve25519 and poly1305 C use them via
 u128). Case 1: __int128. Case 2: the unsigned spelling. Case 3: a widening
 64x64 multiply. Case 4 (control): the high half through 32-bit limbs. */
#ifndef CASE
#define CASE 1
#elif CASE == 4 /* control: portable 64x64 high half via 32-bit limbs */
static unsigned long long mulhi(unsigned long long a, unsigned long long b) {
    unsigned long long al = a & 0xffffffffULL, ah = a >> 32, bl = b & 0xffffffffULL, bh = b >> 32;
    unsigned long long mid = (al * bl >> 32) + (ah * bl & 0xffffffffULL) + (al * bh & 0xffffffffULL);
    return ah * bh + (ah * bl >> 32) + (al * bh >> 32) + (mid >> 32);
}
int main(void) { unsigned long long a = 1ULL << 40; return mulhi(a, a) != (1ULL << 16); }
#endif
#if CASE == 1
int main(void) { __int128 x = 1; return x != 1; }
#elif CASE == 2
typedef unsigned __int128 u128;
int main(void) { unsigned long long a = 1ULL << 40; u128 p = (u128)a * a; return (unsigned long long)(p >> 64) != (1ULL << 16); }
#elif CASE == 3
int main(void) { __uint128_t x = 1; return x != 1; }
#endif
