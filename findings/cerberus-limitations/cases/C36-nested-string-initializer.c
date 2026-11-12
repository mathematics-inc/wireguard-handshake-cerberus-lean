/* C36 a string literal initializing a char-array member inside a brace
 initializer (genl_family/genl_ops .name = "..."). Cases 2-3 (controls): a
 scalar array, and an explicit character list. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
struct e { char n[4]; long w; } x = { "ab", 2 };
int main(void) { return !(x.n[0] == 'a' && x.n[1] == 'b' && x.n[2] == 0 && x.w == 2); }
#elif CASE == 2 /* control: string literal for a plain array */
char n[4] = "ab";
int main(void) { return !(n[0] == 'a' && n[1] == 'b' && n[2] == 0); }
#elif CASE == 3 /* control: brace-enclosed characters */
struct e { char n[4]; long w; } x = { { 97, 98 }, 2 };
int main(void) { return !(x.n[0] == 'a' && x.n[1] == 'b' && x.n[2] == 0 && x.w == 2); }
#elif CASE == 4 /* designated member, as in kernel tables */
struct e { char n[4]; long w; } x = { .n = "ab", .w = 2 };
int main(void) { return !(x.n[0] == 'a' && x.w == 2); }
#endif
