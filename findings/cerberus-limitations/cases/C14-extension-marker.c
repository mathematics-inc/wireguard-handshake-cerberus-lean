/* C14 the __extension__ marker. Case 2 marks an expression. Case 3
 (control): unmarked. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
__extension__ typedef unsigned long long word;
int main(void) { word x = 1; return x != 1; }
#elif CASE == 2
int main(void) { int x = __extension__ 1; return x != 1; }
#elif CASE == 3
typedef unsigned long long word;
int main(void) { word x = 1; return x != 1; }
#endif
