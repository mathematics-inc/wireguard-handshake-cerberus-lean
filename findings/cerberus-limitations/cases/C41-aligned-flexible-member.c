/* C41 an alignment specifier on a flexible array member. C11 6.7.5 applies it
 * like any member alignment: the member starts at a multiple of 64 and the
 * structure's alignment is at least 64. Linux's net_device ends with
 * 'u8 priv[] ____cacheline_aligned' (netdevice.h:2650), and skb_ext with
 * 'char data[] __aligned(8)'. Case 1 checks offset, size and alignment with
 * _Alignas (the GNU attribute spelling is C03). Case 2 puts the same
 * specifier on an ordinary array member (control); case 3 is explicit
 * padding before an unaligned flexible member (control). */
#ifndef CASE
#define CASE 1
#endif
/* Offsets are computed from an object, since __builtin_offsetof is C13. */
#define OFF(o, m) ((unsigned long)((char *)&(o).m - (char *)&(o)))
#if CASE == 1
struct s { int len; _Alignas(64) unsigned char data[]; };
static struct s o;
int main(void) { return !(OFF(o, data) == 64 && sizeof(struct s) == 64 && _Alignof(struct s) == 64); }
#elif CASE == 2
struct s { int len; _Alignas(64) unsigned char data[1]; };
static struct s o;
int main(void) { return !(OFF(o, data) == 64 && sizeof(struct s) == 128 && _Alignof(struct s) == 64); }
#elif CASE == 3
struct s { _Alignas(64) int len; unsigned char pad[60]; unsigned char data[]; };
static struct s o;
int main(void) { return !(OFF(o, data) == 64 && sizeof(struct s) == 64 && _Alignof(struct s) == 64); }
#endif
