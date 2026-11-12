/* C34 enumeration constants outside the range of int (a GNU extension,
 standardized in C23). Case 1: crypto/blake2s.h's unsigned 32-bit IVs. Case
 2: 64-bit values (1ULL << 60, U64_MAX - ...), as in WireGuard's
 messages.h. Case 3 checks the 64-bit type GCC and Clang give them. Case 4
 (control): in range. */
#ifndef CASE
#define CASE 1
#endif
#if CASE == 1
enum iv { IV0 = 0x6A09E667UL, IV1 = 0xBB67AE85UL };
int main(void) { unsigned int h = IV1; return h != 0xBB67AE85U; }
#elif CASE == 2
enum limits { REKEY_AFTER_MESSAGES = 1ULL << 60, REKEY_TIMEOUT = 5 };
int main(void) { unsigned long long n = REKEY_AFTER_MESSAGES; return !(n == 1ULL << 60 && REKEY_TIMEOUT == 5); }
#elif CASE == 3
enum limits { REKEY_AFTER_MESSAGES = 1ULL << 60, REKEY_TIMEOUT = 5 };
int main(void) { return !(sizeof(REKEY_AFTER_MESSAGES) == 8 && REKEY_AFTER_MESSAGES > 0); }
#elif CASE == 4
enum limits { REKEY_TIMEOUT = 5, MAX_PEERS_PER_DEVICE = 1U << 20 };
int main(void) { return !(REKEY_TIMEOUT == 5 && MAX_PEERS_PER_DEVICE == 1 << 20); }
#endif
