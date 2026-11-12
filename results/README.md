# Recorded runs

The program's single translation unit, executed by Cerberus-Lean from its
C source and as the exported Core module in `core/`. The `core/` run used
evaluator revision `fa1f9d4`; the run from C used the same evaluator without
the Lean-module commits. The `core/` evaluator's complete source tree is now
published unchanged as squashed commit `b735d7bdcff9570ed7dce3278d829086b1c008d8`
on branch `wireguard-handshake` of
[cerberus-lean-upstream-publish](https://github.com/mathematics-inc/cerberus-lean-upstream-publish).
Both runs used switches
`PNVI_ae_udi,permissive_pointer_arith`, fuel 2·10¹², on an 8-core x86-64 VM
with 16 GB of RAM.

| Run | Verdict | Time | Peak memory |
|---|---|---|---|
| From C (parse, elaborate, link, execute) | `Defined`, `Specified(0)`, stdout = `expected/handshake.stdout`, stderr empty | 9694 s (2 h 42 min) execution | not recorded (0.63 GB resident at 2 h 22 min) |
| `core/` modules (`linked-run`), the same Core value as these modules (digest `791280980c85756425059230e0333b76`) | `Defined`, `Specified(0)`, stdout = `expected/handshake.stdout`, stderr empty | 7956 s (2 h 13 min) | not recorded |

`c-input-run.verdict` is the verdict line printed by the run from C.
The `core/` run printed the identical line
(SHA-256 `d7119adc2a368a84cebd29073869a94703ffdb27d1de8280a34d43e4719f66cc`); `test/compare.sh` accepts it.

The same C compiled natively with Clang 19.1.7 and GCC 12.2 prints
`expected/handshake.stdout` and exits 0.

These `core/` modules were also built from a fresh clone, as `RUNNING.md`
describes: `linked-run --check` found the definitions'
digest equal to that of the elaborated Core, and `linked-run --roundtrip . ..`
reproduced all 20 modules.
