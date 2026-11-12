/* C18 GNU case ranges. Case 2 (control): enumerated labels. */
#ifndef CASE
#define CASE 1
#endif
static int classify(int v) {
    switch (v) {
#if CASE == 1
    case 1 ... 3: return 1;
#elif CASE == 2 /* control */
    case 1: case 2: case 3: return 1;
#endif
    default: return 0;
    }
}
int main(void) { return !(classify(2) == 1 && classify(4) == 0); }
