/* C44 the trailing padding of an anonymous structure member. C11 6.7.2.1#13
 * makes the anonymous structure's members members of the containing
 * structure, but the anonymous structure is still a member with its own size:
 * GCC and Clang place a following member after the anonymous structure's
 * trailing padding (offset 12 here, size 16). Case 1 checks the offset of
 * the member after it and the size. Case 2 puts the anonymous structure
 * inside an anonymous union, which is laid out correctly. Case 3, the
 * structure of case 1 with the member named, is the control. */
#ifndef CASE
#define CASE 1
#endif
/* Offsets are computed from an object, since __builtin_offsetof is C13. */
#define OFF(o, m) ((unsigned long)((char *)&(o).m - (char *)&(o)))
#if CASE == 1
struct h { char c; struct { int b; char d; }; char z; };
static struct h o;
int main(void) { return !(OFF(o, z) == 12 && sizeof(struct h) == 16); }
#elif CASE == 2
struct h { char c; union { struct { int b; char d; }; short s; }; char z; };
static struct h o;
int main(void) { return !(OFF(o, z) == 12 && sizeof(struct h) == 16); }
#elif CASE == 3
struct h { char c; struct { int b; char d; } n; char z; };
static struct h o;
int main(void) { return !(OFF(o, z) == 12 && sizeof(struct h) == 16); }
#endif
