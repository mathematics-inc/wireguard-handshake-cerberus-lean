/* C27 packed records, and the unaligned-access idiom of vdso/unaligned.h
 (get_unaligned_le64 in SipHash, ChaCha, Poly1305). Case 3 (control): memcpy. */
extern void *memcpy(void *, const void *, __SIZE_TYPE__);
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
struct p { char c; int i; } __attribute__((__packed__));
int main(void) { return sizeof(struct p) != 5; }
#elif CASE == 2
static unsigned char bytes[9] = { 0, 1, 0, 0, 0, 0, 0, 0, 0 };
int main(void) {
    const struct { unsigned long long x; } __attribute__((__packed__)) *u = (const void *)(bytes + 1);
    return u->x != 1;
}
#elif CASE == 3
static unsigned char bytes[9] = { 0, 1, 0, 0, 0, 0, 0, 0, 0 };
int main(void) { unsigned long long x; memcpy(&x, bytes + 1, sizeof(x)); return x != 1; }
#endif
