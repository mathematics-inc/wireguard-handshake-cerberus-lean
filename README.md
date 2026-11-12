# The WireGuard Noise handshake as Cerberus Core, executable in Lean

This repository contains the elaborated
[Cerberus](https://github.com/rems-project/cerberus) Core of a program that runs
a complete two-peer WireGuard Noise_IKpsk2 handshake through WireGuard's own
kernel code, as readable Lean modules that run it in
[Cerberus-Lean](https://github.com/mathematics-inc/cerberus-lean-upstream-publish).
The run reaches `Defined` with output identical to an independent reference
implementation of the protocol.

It also reports what running this code under a C semantics found:

- undefined behaviour in the C: [findings/c-undefined-behaviour/](findings/c-undefined-behaviour/);
- limitations of Cerberus and Cerberus-Lean, categorised, with reproducers:
  [findings/cerberus-limitations/](findings/cerberus-limitations/);
- the kernel-service interfaces the WireGuard code relies on, categorised:
  [findings/kernel-services.md](findings/kernel-services.md).

## Contents

- `core/`: the Core program as Lean, and a runner. `core/WireGuard/<File>.lean`
  has one module per WireGuard C file, with one definition per C function,
  named as in C, in source order, each quoting the C declaration and its
  `file:line`; `core/Support/` holds every other procedure the program uses.
  See [core/README.md](core/README.md).
- `scenario/handshake.c`: the test function: the program's `main`, with its
  helpers. It sets up two peers with fixed keys through a small environment
  interface (`hs_env.h`), runs the handshake scenario described below by
  calling `noise.c`'s API directly, and prints each observation; the Core's
  `main` is elaborated from it. Its includes refer to that environment and
  to the kernel-service models, which are not in this repository, so the file
  is for reading and is not built on its own here.
- `linux/drivers/net/wireguard/`: the WireGuard C from Linux
  [`24a19b953e2a`](https://github.com/torvalds/linux/tree/24a19b953e2a3d0ea5a8c4951a0ab8f32720c907)
  that the Core was elaborated from, as executed. The handshake logic is in
  `noise.c`, `peerlookup.c` and `peer.c`. Line numbers are those of upstream,
  except inside `enum limits` in `messages.h`.
  `peerlookup.c` and `peerlookup.h` are identical to upstream. In the other
  files, definitions the program does not reach are empty lines; in addition:
  - `noise.c` differs in six lines, two of which are the undefined behaviour
    reported in the findings;
  - `allowedips.h`, `cookie.h`, `device.h` and `messages.h` replace records
    the program does not read with storage of the same size and alignment;
  - `messages.h` has the two 64-bit enumerators of `enum limits` removed;
  - `queueing.c` spells three member accesses through the named members of
    `struct sk_buff`;
  - comments inside definitions the program does not reach are empty lines
    too.

  `diff` against upstream shows every difference.
- `expected/handshake.stdout`: the expected output.
- `oracle/`: an independent Python implementation of the handshake
  (pyca/cryptography) that computes the same observations from the same inputs.
- `results/`: the recorded run, its timings and resource use.

The program (`main` in `scenario/handshake.c`) runs two WireGuard peers with
fixed keys, ephemerals, indices and clock: initiation create/consume, response
create/consume and `wg_noise_handshake_begin_session` on both sides, followed
by rejected, replayed and out-of-order messages and key rotation. It prints
every message, chaining key, hash and transport key, and checks that each
side's sending key equals the other side's receiving key. Kernel services
(memory, time, randomness, synchronisation, printk) are modelled sequentially;
see [findings/kernel-services.md](findings/kernel-services.md).

Source locations in the Core are kept for code in `drivers/net/wireguard/`
and are unknown elsewhere.

## Result

| Execution | Result |
|---|---|
| Cerberus-Lean | `Defined {value: "Specified(0)", stderr: "", blocked: "false"}`, stdout = `expected/handshake.stdout` |

Details are in [results/](results/). The expected output, minus harness and
debug-level printk lines, equals what `oracle/` computes (42 observations).

## Running it

See [RUNNING.md](RUNNING.md).

## Scope and limits

- One deterministic scenario. Cookies, rate limiting, transport data packets,
  timers, the network device and netlink configuration are not included.
- The service models are sequential: they keep the data effects of
  allocation, reference counting, RCU publication and callbacks, and do not
  model kernel concurrency.

## License

Files under `linux/` are from the Linux kernel and keep their SPDX license
identifiers (see `linux/COPYING` and `linux/LICENSES/`). The remaining files
are released under GPL-2.0.
