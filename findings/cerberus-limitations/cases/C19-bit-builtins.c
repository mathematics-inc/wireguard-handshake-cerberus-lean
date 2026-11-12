/* C19 byte-swap and bit-scan builtins (cpu_to_le*, fls, __ffs, ilog2,
 get_unaligned_be*). Case 7 (control): portable C. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
int main(void) { return __builtin_bswap16(0x1234) != 0x3412; }
#elif CASE == 2
int main(void) { return __builtin_bswap32(0x12345678U) != 0x78563412U; }
#elif CASE == 3
int main(void) { return __builtin_bswap64(0x0102030405060708ULL) != 0x0807060504030201ULL; }
#elif CASE == 4
int main(void) { return __builtin_clz(1U) != 31; }
#elif CASE == 5
int main(void) { return !(__builtin_clzl(1UL) == 63 && __builtin_clzll(1ULL) == 63); }
#elif CASE == 6
int main(void) { return __builtin_ctzl(8UL) != 3; }
#elif CASE == 7
static unsigned swap32(unsigned x) { return (x >> 24) | ((x >> 8) & 0xff00U) | ((x << 8) & 0xff0000U) | (x << 24); }
int main(void) { return swap32(0x12345678U) != 0x78563412U; }
#endif
