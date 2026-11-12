/*
 * drivers/net/wireguard/noise.c:511-512 (tai64n_now), Linux 24a19b95:
 *
 *	*(__be64 *)output = cpu_to_be64(0x400000000000000aULL + now.tv_sec);
 *	*(__be32 *)(output + sizeof(__be64)) = cpu_to_be32(now.tv_nsec);
 *
 * output is a u8 array (NOISE_TIMESTAMP_LEN = 12 bytes, alignment 1) in
 * every caller. Converting it to __be64 * / __be32 * is undefined when it
 * is not suitably aligned (C11 6.3.2.3#7), and the stores access a u8 array
 * through a 64/32-bit lvalue (C11 6.5#7). The byte swap is written in
 * plain C here so the program needs nothing beyond C11.
 *
 * Build with -DOFFSET=1 (misaligned, as a u8 array may be) or -DOFFSET=0
 * (aligned by construction: only the 6.5#7 question remains).
 */
#include <stdint.h>
#include <stdio.h>

#ifndef OFFSET
#define OFFSET 1
#endif

static uint64_t to_be64(uint64_t v)
{
	uint64_t r = 0;
	for (int i = 0; i < 8; i++)
		r |= ((v >> (8 * i)) & 0xff) << (8 * (7 - i));
	return r;
}

static uint32_t to_be32(uint32_t v)
{
	return (v >> 24) | ((v >> 8) & 0xff00) | ((v << 8) & 0xff0000) | (v << 24);
}

static void tai64n_store(uint8_t *output, uint64_t sec, uint32_t nsec)
{
	*(uint64_t *)output = to_be64(0x400000000000000aULL + sec);
	*(uint32_t *)(output + sizeof(uint64_t)) = to_be32(nsec);
}

int main(void)
{
	_Alignas(16) uint8_t buf[16 + 12];
	uint8_t *timestamp = buf + OFFSET;

	tai64n_store(timestamp, 1700000000, 123 << 20);
	for (int i = 0; i < 12; i++)
		printf("%02x", (unsigned int)timestamp[i]);
	printf("\n");
	return 0;
}
