/* C01 anonymous structure and union members. C11 6.7.2.1#13: an anonymous
 member's members are members of the containing record, but the anonymous
 record keeps its own layout. Case 1: two members of an anonymous union share
 an address. Case 2: an anonymous structure inside a union keeps distinct,
 consecutive bytes. Case 3: braced initialization of the anonymous member.
 Case 4 (control): the same members, named. Every case returns 0 natively.
 Linux uses these shapes in spinlock_t, sk_buff, sk_buff_head and in the
 local key/IV union of chacha20poly1305_crypt_sg_inplace. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1 /* union members overlap */
struct outer { union { int a; int b; }; };
int main(void) { struct outer x; return !((void *)&x.a == (void *)&x.b); }
#elif CASE == 2 /* inner struct keeps distinct bytes */
union outer { int value; struct { unsigned char a; unsigned char b; }; };
int main(void) { union outer x; return (char *)&x.b - (char *)&x != 1; }
#elif CASE == 3 /* braced initialization of the anonymous member */
struct outer { union { int value; }; };
int main(void) { struct outer x = { { .value = 0 } }; return x.value; }
#elif CASE == 4 /* control: the same members, named */
struct outer { union { int a; int b; } u; };
int main(void) { struct outer x; x.u.a = 3; return !((void *)&x.u.a == (void *)&x.u.b && x.u.b == 3); }
#endif
