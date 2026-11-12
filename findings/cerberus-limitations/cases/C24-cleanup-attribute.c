/* C24 the __cleanup__ attribute (guard(), __free()). It calls a function at
 scope exit, so ignoring it changes behaviour. Case 2 (control): the explicit
 call. */
static int released;
static void release(int *p) { released += *p; }
#ifndef CASE
#define CASE 1
#endif
int main(void) {
    {
#if CASE == 1
        int __attribute__((__cleanup__(release))) token = 1;
#elif CASE == 2
        int token = 1;
        release(&token);
#endif
    }
    return released != 1;
}
