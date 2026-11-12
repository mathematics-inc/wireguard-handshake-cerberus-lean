# Kernel service interfaces of the WireGuard Core

The Core in this repository is one multi-unit C program, elaborated by
Cerberus and linked. It contains:

- **WireGuard's own C** for the handshake: `noise.c`, `peerlookup.c`,
  `peer.c`, `send.c`, `queueing.c` and their headers in
  `drivers/net/wireguard/`, shipped here as C.
- **Linux library C**, executed as Linux's own code: the cryptographic
  primitives WireGuard calls (BLAKE2s, ChaCha20-Poly1305, Poly1305,
  Curve25519 in its portable 32-bit field arithmetic, `crypto_memneq`,
  `crypto_xor`), SipHash, `net/core/dst_cache.c`, `lib/rcuref.c`, part of
  `lib/string.c`, and every inline helper and macro of the Linux headers that
  WireGuard uses (lists and hash lists, `kref`/`refcount_t`, `skb_*` helpers,
  byte order, jiffies arithmetic, `kzalloc`, `kfree_rcu`, ...). Those files
  are not shipped as C; their code is in the Core.
- **Sequential models of the kernel services** below. They define the
  out-of-line Linux functions and variables that WireGuard and the library C
  call, with Linux's own prototypes, so the calling code is unchanged.
- **A two-peer scenario** that sets up the devices and peers and drives the
  handshake.

Every service is modelled for one execution context, with no preemption, no
interrupts and no concurrency. Each model keeps the data effects its callers
depend on: stores, loads, returned values, reference counts, object
lifetimes and callback order. It also checks that the caller uses the API as
Linux requires. Misuse is recorded as a violation, and any violation fails
the run instead of blocking or crashing. Interleavings, memory ordering and
lock-free publication are outside every model.

The tables below describe each model's interface. `core/` holds only the
procedures reachable from the scenario's `main`, so a listed function that
the handshake never calls (for example `skb_put`, `mod_timer` or
`queue_work_on`) has no definition in `core/Support/`.

## 1. Memory and object lifetime

| Interface | Linux functions and variables | What the model keeps |
|---|---|---|
| General allocation | `kmalloc`/`kzalloc` (`__kmalloc_noprof`, `__kmalloc_cache_noprof`), `kvmalloc` (`__kvmalloc_node_noprof`), `kfree`, `kvfree`, `kfree_sensitive` | Every object is a separate C allocation, so out-of-bounds access, use after free and reads of uninitialised memory in WireGuard code stay visible to Cerberus. Memory is zeroed exactly when Linux zeroes it (`__GFP_ZERO`). Zero-size requests return `ZERO_SIZE_PTR`. Linux's rules for which release function accepts which object are enforced. `kfree_sensitive` zeroes before freeing. Allocation failure can be injected at a chosen request. |
| Object caches | `kmem_cache_create` (`__kmem_cache_create_args`), `kmem_cache_alloc`/`zalloc`, `kmem_cache_free`, `kmem_cache_destroy` | Objects belong to their cache. Freeing into the wrong cache, and destroying a cache with live objects, are violations. |
| Per-CPU storage | `alloc_percpu`/`free_percpu` (`pcpu_alloc_noprof`), `__per_cpu_offset`, CPU masks, `nr_cpu_ids` | Linux's unit layout: each CPU's copy is at the base plus that CPU's offset. Linux's own `per_cpu_ptr` arithmetic runs unchanged. All possible CPUs are online. |
| RCU lifetime | `call_rcu`, `kvfree_call_rcu` (`kfree_rcu`), `rcu_barrier`, `synchronize_net`, `__rcu_read_lock`/`__rcu_read_unlock` | Callbacks are deferred to a grace period and run in FIFO order. A grace period runs exactly the callbacks pending when it starts, and `rcu_barrier` waits only for those. A grace period inside a read-side section is a violation. After the grace period, an object's memory is released, so a later dereference is undefined behaviour in Cerberus. |
| Reference-count saturation | `refcount_warn_saturate` | Linux's own inline `refcount_t`/`kref` code runs. Its saturation report (increment from zero, underflow, overflow) is a violation. |
| Packet buffers | `__alloc_skb`, `consume_skb`, `kfree_skb_*`, `skb_put`/`push`/`pull`/`trim`, `pskb_expand_head`, `skb_clone`, `skb_cow_data`, `__pskb_pull_tail`, `skb_queue_tail` | Linux's buffer layout and invariants: head/data/tail/end, `skb_shared_info` at the end, `users` and `dataref` counts, clone sharing. The inline `skbuff.h` helpers run unchanged. Buffers are linear. Each drop is reported with its drop reason. |
| Pages and routes | `virt_to_page`/`page_to_pfn` records, `skb_to_sgvec`, `dst_release` | Pages exist only for mapping buffers. Routes are outside the model: releasing no route is Linux's no-op, and anything else is a violation. |

Not modelled: concurrency of any kind, CPU hotplug, GFP semantics other than
zeroing, memory pressure and reclaim, paged or fragmented packet data, and
allocation profiling and sanitizers.

## 2. Time and randomness

| Interface | Linux functions and variables | What the model keeps |
|---|---|---|
| Clocks | `jiffies`, `ktime_get_coarse_with_offset` (coarse boot time, real time), `ktime_get_real_ts64` | Time changes only when the scenario advances it. `HZ` is 1000, `jiffies` starts at Linux's `INITIAL_JIFFIES`, and coarse clocks read the time at the last tick. Wall time can step backwards, which is the input behind WireGuard's TAI64N handshake timestamps. |
| Randomness | `get_random_bytes`, `get_random_u32`, `get_random_u16`, `__get_random_u32_below`, `wait_for_random_bytes`, `rng_is_initialized` | One byte stream, consumed in call order. In the handshake scenario every byte is scripted (keys, ephemeral keys, indices, SipHash keys), and drawing past the script is a violation. Readiness is one-way, as in Linux. |
| Timers | `timer_setup` (`timer_init_key`), `mod_timer`, `timer_delete`, `timer_delete_sync` | Linux's pending-timer representation (`timer_pending`), firing order by expiry and then arming order, and the documented return values. Deleting a timer synchronously from its own callback is a violation. |
| Deferred work | `alloc_workqueue`, `queue_work_on`, `queue_delayed_work_on`, `flush_work`, `flush_workqueue`, `cancel_delayed_work_sync`, `destroy_workqueue` | One FIFO, with Linux's `WORK_STRUCT_PENDING` handling, so `queue_work`'s result and requeueing behave as in Linux. Flushing from inside one's own work item is a violation. |

Not modelled: parallel workers, timer slack, tick stopping, clock
adjustment, and entropy accounting.

## 3. Synchronisation

| Interface | Linux functions | What the model keeps |
|---|---|---|
| Sleeping locks | `mutex_init`/`lock`/`unlock`, `init_rwsem`, `down_read`/`write`(`_trylock`), `up_read`/`write`, `downgrade_write` | Each lock's state: free, held, or Linux's reader/writer count. Taking a held lock, releasing a free one, and wrong-mode release are violations. Trylocks report contention as Linux would. |
| Spinning locks | `spin_lock_init`, `spin_lock`/`unlock`, `spin_lock_bh`/`unlock_bh`, `spin_trylock_bh`, `read_lock_bh`/`write_lock_bh` and unlocks, `local_lock_init` | The same state checks. The `_bh` forms also change the bottom-half depth. Lock initialisation is an external call. |
| Execution context | `local_bh_disable`/`enable`, `rcu_read_lock_bh`/`unlock_bh`, `preempt_disable`/`enable`, `migrate_disable`/`enable`, `cond_resched`, `need_resched` | Nesting depths for bottom halves, preemption and migration. Unbalanced sections are violations, as is rescheduling in atomic context. There is never another task to run. |

Lock operations are visible calls at the Linux API, not inlined away.
Atomic read-modify-write operations (`atomic_*`, `atomic64_*`, compare and
exchange) are inline sequential C. Each performs its load, its arithmetic
with Linux's wrap-around, and its store, and returns the value Linux
specifies. `READ_ONCE`/`WRITE_ONCE` are Linux's volatile accesses. No inline
assembly reaches the Core. Not modelled: other contexts, lock contention,
memory ordering.

## 4. Kernel log

| Interface | Linux functions | What the model keeps |
|---|---|---|
| printk | `_printk` | Prints the message's log level and format string to stdout. The handshake's debug messages (`net_dbg_ratelimited` in `noise.c`, `peer.c`) appear in the output. |
| WARN | `warn_slowpath_fmt` | Reports file, line and taint and returns, as with `panic_on_warn` off. Counts as a violation. |
| panic | `panic` | Reports the message and does not return. |

Arguments are not formatted, so output does not depend on the C library's
formatting.

## 5. C runtime

- `memset` and `memmove` are Linux's generic C (`lib/string.c`). x86-64
  implements both in assembly.
- `memcmp` is the C library's in native builds and Cerberus's own in the
  Core. The handshake observes only its sign or zero.
- `printf` writes the observations to stdout.

## 6. The scenario

The scenario builds two devices with one peer each. It does this through
WireGuard's and Linux's own initialisers:
`wg_noise_set_static_identity_private_key`, `wg_noise_handshake_init`, the
public-key and index tables, `wg_prev_queue_init` and `dst_cache_init`. It
then drives the Noise IK handshake through `noise.c` in the order `send.c`
and `receive.c` call it. Peers are released through WireGuard's own
reference path: `wg_peer_put`, `kref_release`, then `call_rcu`, then
`rcu_release`.

The scenario does not run device creation, netlink configuration or
`wg_peer_create`. It constructs the same peer fields directly, in the
object cache that `peer.c` frees into. `wg_peer_create` also initialises
cookies, timers, transmit and receive work, and NAPI. Those belong to the
transport and lifecycle code, which this handshake does not exercise.

Every input is fixed: private keys, preshared key, scripted randomness,
clocks. The expected output is computed from the protocol specification by
an independent implementation.

The scenario also runs failure cases, each printed as accepted (1) or
rejected (0): a tampered initiation, a device without a static identity, an
out-of-order response, a wrong receiver index, a preshared-key mismatch, a
replayed initiation, and keypair rotation.

## What agreement shows

The Core run in Lean and the native build of the same C print identical
output, and that output equals the independent expectation. This shows that
WireGuard's handshake C, with the library C above, computes the protocol's
messages and session keys under these models. It does not show that the
models are faithful to Linux in concurrent or failing kernels. The models'
semantics are the stated assumptions under which the handshake was executed.
