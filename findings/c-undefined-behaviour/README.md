# Undefined behaviour and portability issues in the C

These are constructs in the WireGuard handshake code and the Linux library code
it calls that ISO C11 does not define, or defines only for a particular
implementation or build. Native x86-64 builds do not show them, because the
hardware or the kernel's build flags hide them. Each entry gives the site in
Linux 24a19b95, the C11 clause, what hides it natively, a small standalone
program in `repro/`, and the observed results.

`sh run.sh CERBERUS_PREFIX` builds every reproducer with clang and gcc (plain,
UBSan, and for clang ASan) and runs it through Cerberus-Lean
(`--switches PNVI_ae_udi,permissive_pointer_arith`). `CERBERUS_PREFIX`
contains `bin/cerberus` and `bin/cerberus-lean`. The results below were
observed with clang 19.1.7 and gcc 12.2 on x86-64, on two evaluator builds:
the historical Cerberus-Lean baseline `4b8d73c` with the x86-64 kernel
profile, and the evaluator build used for this repository's run, now
published in
[cerberus-lean-upstream-publish](https://github.com/mathematics-inc/cerberus-lean-upstream-publish)
at `b735d7bdcff9570ed7dce3278d829086b1c008d8`. Both builds gave the same verdicts.

| # | Site | C11 | Cerberus-Lean | UBSan (clang / gcc) | Hidden natively by |
|---|------|-----|---------------|---------------------|--------------------|
| 1 | drivers/net/wireguard/noise.c:511-512 `tai64n_now` | 6.3.2.3#7, 6.5#7 | Undefined UB025 | store to misaligned address / same | x86 tolerates misaligned stores; `-fno-strict-aliasing` |
| 2 | lib/crypto/memneq.c:75,100; lib/crypto/utils.c:44,58,72; include/crypto/utils.h:21-22,41-43 | 6.3.2.3#7 | Undefined UB025 | misaligned load / none | `CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS=y` on x86-64 |
| 3 | lib/string.c:662 `memcmp` (implicit conversion) | 6.3.2.3#7 | Defined (not checked) | misaligned load / none | same option |
| 4 | lib/rcuref.c:250 `rcuref_put_slowpath` | 6.5.2.2#2, 6.5.16.1#1 (constraint) | rejected at type checking | warning only (`-Wpointer-sign`) | `-Wno-pointer-sign` (scripts/Makefile.warn:68) |
| 5 | include/linux/err.h:63 `PTR_ERR` | 6.3.2.3#6 | Undefined UB024 | none | GCC/Clang's pointer-to-integer mapping |
| 6 | lib/string.c:655 definition of `memcmp` | 7.1.3#2 (hosted only) | ill-formed (one unit); its own memcmp is used silently (two units) | clang hosted also skips the definition | `-ffreestanding` (lib/Makefile:27) |
| 7 | lib/string.c:137 `sized_strscpy` (not called by WireGuard) | 6.3.2.1#1, 6.5#7 | Undefined UB_CERB002a (out-of-bound load) | none; ASan: global-buffer-overflow | the load stays inside the page |

Only entry 1 is in WireGuard's own code, and it is undefined on every
architecture and configuration. Entries 2-3 come from a configuration choice
that x86-64 makes. Entries 4-6 depend on the build or the implementation.
Entry 7 is in Linux code the WireGuard device passes through, not in
WireGuard.

## 1. `tai64n_now`: a misaligned 64-bit store into a byte array

```c
/* drivers/net/wireguard/noise.c:497-513 */
static void tai64n_now(u8 output[NOISE_TIMESTAMP_LEN])
{
	...
	*(__be64 *)output = cpu_to_be64(0x400000000000000aULL + now.tv_sec);
	*(__be32 *)(output + sizeof(__be64)) = cpu_to_be32(now.tv_nsec);
}
```

Every handshake initiation calls `tai64n_now(timestamp)` (noise.c:565) with
`u8 timestamp[NOISE_TIMESTAMP_LEN]`, a 12-byte local array (noise.c:520). Its
alignment is 1, so `(__be64 *)output` is undefined whenever the array is not
8-byte aligned (C11 6.3.2.3#7). Whether it is aligned depends only on where
the compiler places the array. The code does not depend on any configuration
or architecture.

The stores also write a `u8` array through `__be64` and `__be32` lvalues,
which C11 6.5#7 does not permit for an object whose declared type is a
character array. The kernel builds with `-fno-strict-aliasing`, so compilers
do not exploit this. Cerberus-Lean with this profile does not check effective
types: the aligned variant of the reproducer is Defined there.

Linux's own unaligned helpers store the same bytes without the conversion:

```c
	put_unaligned_be64(0x400000000000000aULL + now.tv_sec, output);
	put_unaligned_be32(now.tv_nsec, output + sizeof(__be64));
```

With the original two lines, a Cerberus-Lean execution of a handshake stops
at noise.c:511 with `UB025_misaligned_pointer_conversion` on the first
initiation.

Reproducer: `repro/tai64n-unaligned-store.c`. With `-DOFFSET=1`,
Cerberus-Lean gives `Undefined UB025_misaligned_pointer_conversion` at the
first store, and clang and gcc UBSan report "store to misaligned address".
Without sanitizers both compilers print the expected
`400000006553f10a07b00000`, which was computed independently from the TAI64N
definition. With `-DOFFSET=0` all of them are Defined and print the expected
bytes.

## 2. Word loads through converted pointers under `CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS`

x86-64 sets `CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS=y`. The byte-comparison
and XOR helpers then read machine words through pointers converted from
arbitrary byte addresses:

```c
/* lib/crypto/memneq.c:75 */
		neq |= get_unaligned((unsigned long *)a) ^
```

The same shape appears at lib/crypto/memneq.c:100 (16-byte comparison),
lib/crypto/utils.c:44, 58 and 72 (`__crypto_xor` with u64, u32 and u16 words)
and include/crypto/utils.h:21-22 and 41-43 (`crypto_xor` and
`crypto_xor_cpy` for constant sizes).

`get_unaligned` reads through a packed type, so the load itself is fine, but
its argument is a converted pointer. That conversion is undefined when the
address is not suitably aligned (C11 6.3.2.3#7). The callers pass byte
buffers of any alignment:

- `cookie.c:132` and `:143` compare MACs with `crypto_memneq(computed_mac,
  macs->mac1/mac2, 16)`. `mac1` and `mac2` lie at bytes 116 and 132 of the
  initiation message, both 4 mod 8, so the conversion is misaligned whenever
  the message starts at an 8-aligned address.
- `noise.c:424` and `:791` compare 32-byte keys.
- `chacha_crypt_generic` (lib/crypto/chacha.c:23) calls `crypto_xor_cpy` on
  packet data.

With the option unset, Linux's portable code runs. memneq uses only its byte
loop. `__crypto_xor` first advances to the operands' common alignment
(`relalign`), so its word accesses are aligned. They then remain only a 6.5#7
question, which `-fno-strict-aliasing` covers as in entry 1.

Reproducer: `repro/memneq-unaligned-word.c` compares two 16-byte fields at
offset 4 of 8-aligned buffers, as for a MAC inside a message. It reads each
word with `memcpy`, so only the conversion is in question. Cerberus-Lean gives
`Undefined UB025_misaligned_pointer_conversion` at the first conversion.
clang UBSan reports a misaligned load at the `memcpy` from the converted
pointer. gcc UBSan reports nothing, and the plain builds print the expected
`0 1`.

## 3. The same conversion, implicit, in `memcmp`

```c
/* lib/string.c:662, inside memcmp(const void *cs, const void *ct, size_t count) */
		const unsigned long *u1 = cs;
```

Initializing `u1` converts `const void *` to `const unsigned long *`.
C11 6.3.2.3#7 covers implicit conversions as well as casts, so this is
undefined for misaligned `cs` or `ct`. WireGuard calls `memcmp` on keys and
timestamps (peerlookup.c:62, noise.c:633, :645, netlink.c:378).

Reproducer: `repro/memcmp-implicit-conversion.c`. clang UBSan reports the
misaligned load, and gcc UBSan reports nothing. Cerberus-Lean returns
`Defined` with the expected output `1`: it checks alignment on explicit casts
(entry 2) but not on this implicit conversion. That is a gap in the
evaluator's checking, not evidence that the code is defined.

## 4. `rcuref_put_slowpath`: `unsigned int *` passed for `int *`

```c
/* lib/rcuref.c:250, in rcuref_put_slowpath(rcuref_t *ref, unsigned int cnt) */
		if (!atomic_try_cmpxchg_release(&ref->refcnt, &cnt, RCUREF_DEAD))
```

`atomic_try_cmpxchg_release(atomic_t *v, int *old, int new)` receives
`&cnt`, an `unsigned int *`. An argument is converted as if by assignment to
the parameter (C11 6.5.2.2#2 and #7), and 6.5.16.1#1 requires the pointed-to
types to be compatible. `int` and `unsigned int` are not compatible, so this
is a constraint violation, and a conforming implementation must issue a
message for it. GCC and Clang issue `-Wpointer-sign` warnings, and the kernel
turns those off (scripts/Makefile.warn:68). The access itself would be
permitted (6.5#7 allows the corresponding signed type), so the program behaves
as intended once it is accepted. Writing `(int *)&cnt` makes the conversion
explicit and removes the violation. WireGuard reaches this code through the route
cache's reference counting (net/core/dst_cache.c).

Reproducer: `repro/pointer-sign-argument.c`. clang and gcc warn with
`-Wpointer-sign`, and the program prints the expected `dead e0000000`.
Cerberus-Lean rejects it: `typechecking failed` at the argument.

## 5. `PTR_ERR`: an error pointer converted to `long`

`ERR_PTR(error)` returns `(void *) error` and `PTR_ERR(ptr)` returns
`(long) ptr` (include/linux/err.h:39-66).

`ERR_PTR(-12)` converts an integer to a pointer, which is
implementation-defined (C11 6.3.2.3#5). `PTR_ERR` converts it back to
`long`. C11 6.3.2.3#6 makes that undefined if the result cannot be
represented in `long`. GCC and Clang define the result as the pointer's bits,
here the bits of -12, so native builds are fine. An implementation whose
integer value for this address is 2^64 - 12 gives a value outside `long`,
and Cerberus is such an implementation. Converting to `unsigned long`, as
`IS_ERR` does, is defined under both readings. Negating that value gives a
form that does not depend on the mapping:
`-(long)(0 - (unsigned long)ptr)`.

WireGuard uses `PTR_ERR` at device.c:182, netlink.c:176, :394, :480 and
socket.c:63, :75, :141. The handshake does not reach any of them.

Reproducer: `repro/ptr-err-conversion.c`. Natively it prints the expected
`0 1` and `-12`, and UBSan reports nothing. Cerberus-Lean gives `Undefined
UB024_out_of_range_pointer_to_integer_conversion` at `(long)ptr`. Built with
`-DUNSIGNED_ONLY`, it uses the form above and is Defined everywhere with the
same output.

## 6. Linux defines `memcmp`

`lib/string.c:655` defines `memcmp` with external linkage. In a hosted
implementation the standard library's external identifiers are reserved, and
defining one is undefined (C11 7.1.3#1-2). The kernel builds lib/string.c with
`-ffreestanding` (lib/Makefile:27). A freestanding implementation is not
required to provide `<string.h>` (C11 4#6), so there the definition is simply
the kernel's own function. This is not a bug in Linux. It does mean that a
hosted implementation, including the C semantics used here, may route these
calls to its own `memcmp` instead, unless the choice is made explicitly.

Reproducer: `repro/reserved-name-memcmp.c` counts calls to the program's
definition. The expected output is `1 1`.

| Build | Output |
|-------|--------|
| gcc, with or without `-ffreestanding` | `1 1` |
| clang `-ffreestanding` | `1 1` |
| clang hosted | `1 0`: the call is evaluated as the library function, and the definition is never called |
| Cerberus-Lean, one unit | ill-formed program: the call resolves to the evaluator's own memcmp, which "does not point to a function" |
| Cerberus-Lean, definition in a second unit | `Defined`, `1 0`: its own memcmp is used without notice |

WireGuard observes only whether `memcmp`'s result is negative, zero or
positive, so the choice does not change its behaviour as long as it is made
consistently.

## 7. Word-at-a-time string copy reads past the end of its source (Linux, not WireGuard)

```c
/* lib/string.c:137, in sized_strscpy() */
		c = read_word_at_a_time(src+res);
```

When source and destination are word-aligned, `sized_strscpy` loads whole
words and only then looks for the terminating zero. For a string object
shorter than a word, such as the 4-byte `"wg0"` copied by
`strscpy(dev->name, name)` (net/core/dev.c:12255) when the device is created,
the load covers bytes outside the object. The 8-byte lvalue does not designate
an object (C11 6.3.2.1#1), and it reads a `char` array through `unsigned long`
(6.5#7). The load stays within one page, which is why Linux accepts it. Linux
documents the behaviour in the comment above the loop (lib/string.c:122-127)
and turns the loop off under KMSAN. WireGuard itself
does not call `strscpy`, and the handshake copies no device name, so it does
not reach this code.

Reproducer: `repro/word-at-a-time-overread.c`. The plain and UBSan builds
print the expected `3 wg0`. clang ASan reports `global-buffer-overflow`.
Cerberus-Lean gives `Undefined UB_CERB002a_out_of_bound_load` at the word
load.

## Checked and not found on the executed handshake

The handshake was also run natively with the kernel's masking flags removed (`-fno-strict-overflow`,
`-ftrivial-auto-var-init=zero`). No reports came from:

- UBSan: shifts, signed overflow, array bounds and pointer overflow;
- ASan: use-after-free, out-of-bounds access, and comparing or subtracting
  pointers into different objects (C11 6.5.8#5, 6.5.6#9;
  `detect_invalid_pointer_pairs=2`);
- MSan: reads of indeterminate values.

The same holds for the crypto test vectors over the same code: ChaCha20-Poly1305
including rejected inputs, BLAKE2s, X25519 and SipHash. Implementation-defined
arithmetic gave the same results in clang, gcc and Cerberus-Lean: right shift
of negative values, out-of-range conversion to signed types, negative division
and remainder, and pointer/integer round trips. These runs cover the code that
the handshake executes, not all of WireGuard.
