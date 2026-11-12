/* C04 records with no named data members (Linux's BUILD_BUG_ON_ZERO,
 lock_class_key). GNU C gives them size 0. Case 1: an empty record. Case 2:
 a record holding only _Static_assert. Case 3 (control): one member. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
int main(void) { return sizeof(struct { _Static_assert(1, "array check"); }) != 0; }
#elif CASE == 2
struct empty { }; int main(void) { return sizeof(struct empty) != 0; }
#elif CASE == 3
struct one { char c; }; int main(void) { return sizeof(struct one) != 1; }
#endif
