/* C15 arithmetic on void * (a GNU extension; container_of, skb helpers).
 Case 2: subtraction. Case 3 (control): char * arithmetic. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
int main(void) { char bytes[2] = {1,2}; void *p = bytes; return *(char *)(p + 1) != 2; }
#elif CASE == 2
int main(void) { char bytes[4]; void *a = bytes, *b = bytes + 3; return (b - a) != 3; }
#elif CASE == 3
int main(void) { char bytes[2] = {1,2}; char *p = bytes; return *(p + 1) != 2; }
#endif
