/* C25 flexible and zero-length trailing arrays. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
struct msg { unsigned int type; unsigned char data[]; };
static unsigned int storage[4]; /* int-aligned backing store */
int main(void) { struct msg *m = (struct msg *)(void *)storage; m->data[2] = 7; return !(sizeof(struct msg) == 4 && ((unsigned char *)storage)[6] == 7); }
#elif CASE == 2
struct msg { unsigned int type; unsigned char data[0]; };
int main(void) { return sizeof(struct msg) != 4; }
#endif
