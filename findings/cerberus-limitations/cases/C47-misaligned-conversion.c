/* C47 converting a pointer to a pointer type whose alignment the address
 does not meet. C11 6.3.2.3#7 makes it undefined, and Cerberus reports it
 (UB025); x86 hardware tolerates misaligned word access, so native programs
 work. Linux's CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS paths (memneq.c:75,
 utils.c __crypto_xor) and WireGuard's tai64n_now (noise.c:511-512) store or
 load words through byte pointers this way. Case 1 stores and case 2 loads.
 Controls: case 3 copies bytes with memcpy; case 4 converts an aligned
 address. */
#ifndef CASE
#define CASE 1
#endif
void *memcpy(void *dest, const void *src, unsigned long n);

static _Alignas(8) unsigned char buf[16];

int main(void)
{
	unsigned long long v = 0x0102030405060708ULL, w = 0;
	unsigned int u = 0;

	for (int i = 0; i < 16; i++)
		buf[i] = (unsigned char)i;
#if CASE == 1
	*(unsigned long long *)(buf + 1) = v;
	return !(buf[1] == 0x08 && buf[8] == 0x01 && buf[9] == 9);
#elif CASE == 2
	u = *(unsigned int *)(buf + 2);
	return u != 0x05040302U;
#elif CASE == 3
	memcpy(buf + 1, &v, sizeof(v));
	memcpy(&w, buf + 1, sizeof(w));
	memcpy(&u, buf + 9, sizeof(u));
	return !(w == v && u == 0x0c0b0a09U && buf[1] == 0x08);
#elif CASE == 4
	*(unsigned long long *)(buf + 8) = v;
	u = *(unsigned int *)(buf + 4);
	return !(buf[8] == 0x08 && u == 0x07060504U);
#endif
}
