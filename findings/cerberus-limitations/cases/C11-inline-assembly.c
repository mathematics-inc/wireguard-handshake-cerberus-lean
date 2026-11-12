/* C11 inline assembly (barrier(), architecture helpers). Case 1: an empty
 volatile statement with a memory clobber. Case 2: an output operand. Case 3
 (control): portable C. */
#ifndef CASE
#define CASE 1
#endif
int main(void) {
    int x = 7, y = 0;
#if CASE == 1
    __asm__ volatile ("" ::: "memory");
    y = x;
#elif CASE == 2
    __asm__ volatile ("movl %[src], %[dst]" : [dst] "=r" (y) : [src] "r" (x) : "memory");
#elif CASE == 3 /* control */
    y = x;
#endif
    return y != 7;
}
