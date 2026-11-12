# Independent expected observations

`oracle.py` recomputes the handshake's observable values (messages, chaining
keys, hashes, transport keys, indices) from `inputs.json`. It follows the
WireGuard paper (Donenfeld, NDSS 2017, section 5.4) and wireguard.com/protocol,
using Python's hashlib/hmac and pyca/cryptography for the primitives. It
reads none of the C in this repository and none of its output.

    python3 oracle/check.py

creates a virtual environment from `requirements.txt` (installed by hash),
checks the primitives against RFC 7748, RFC 8439 and RFC 7693 vectors,
recomputes `expected.txt` and requires it to be unchanged, and checks that
flipping one preshared-key byte changes the response and the transport keys
but not the initiation.

`expected.txt` equals `expected/handshake.stdout` with the 8 `harness:` lines
and the 7 debug-level printk lines removed.

## Observation format

Each observation is one line, `name value`, in the order the program prints
them: byte strings as lower-case hex (messages up to their MAC fields, keys,
hashes, chaining keys, and indices as the four bytes they are sent as),
handshake states and accepted/refused results as decimal numbers.
`scenario/handshake.c` prints these lines; `oracle.py` computes them.
