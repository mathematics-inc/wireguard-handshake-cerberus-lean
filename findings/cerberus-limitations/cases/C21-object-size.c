/* C21 __builtin_object_size (struct_size, fortify helpers). Case 2
 (control): sizeof. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
int main(void) { char buf[8]; return __builtin_object_size(buf, 0) != 8; }
#elif CASE == 2
int main(void) { char buf[8]; return sizeof(buf) != 8; }
#endif
