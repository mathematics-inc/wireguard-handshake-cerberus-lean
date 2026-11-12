/* C30 GNU range designators in array initializers. Case 2 (control). */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
static int table[4] = { [0 ... 3] = 5 };
#elif CASE == 2 /* control */
static int table[4] = { 5, 5, 5, 5 };
#endif
int main(void) { return !(table[0] == 5 && table[3] == 5); }
