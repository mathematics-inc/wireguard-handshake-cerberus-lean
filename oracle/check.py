#!/usr/bin/env python3
"""Oracle check.

1. Creates (or reuses) a venv with requirements.txt, installed by hash.
2. Spot-checks the reused primitives against RFC vectors: X25519 (RFC 7748
   section 5.2 and the section 6.1 Diffie-Hellman), the ChaCha20-Poly1305
   AEAD (RFC 8439 section 2.8.2, and its tag rejecting one flipped bit) and
   BLAKE2s-256 (RFC 7693 appendix B). These guard the installed libraries;
   they are not tests of the C.
3. Recomputes the expected observations from inputs.json and requires them
   to equal the committed expected.txt.
4. Seeded change: one preshared-key byte flipped must change both sides'
   transport keys and the response, and must leave the initiation unchanged
   (the psk enters only in the response).
"""
import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile

HERE = Path(__file__).resolve().parent
VENV = Path(os.environ.get('ORACLE_VENV', HERE.parent / '.venv-oracle'))


def venv_python():
    python = VENV / 'bin/python'
    stamp = VENV / 'requirements.txt'
    wanted = (HERE / 'requirements.txt').read_text()
    if not python.exists() or not stamp.exists() or stamp.read_text() != wanted:
        subprocess.run([sys.executable, '-m', 'venv', '--clear', VENV], check=True)
        subprocess.run([python, '-m', 'pip', 'install', '-q', '--require-hashes', '--only-binary=:all:',
                        '-r', HERE / 'requirements.txt'], check=True)
        stamp.write_text(wanted)
    return python


RFC_VECTORS = r'''
import hashlib
from cryptography.hazmat.primitives.asymmetric.x25519 import X25519PrivateKey, X25519PublicKey
from cryptography.hazmat.primitives.ciphers.aead import ChaCha20Poly1305
from cryptography.hazmat.primitives.serialization import Encoding, PublicFormat
from cryptography.exceptions import InvalidTag
h = bytes.fromhex
def dh(k, u):
    return X25519PrivateKey.from_private_bytes(k).exchange(X25519PublicKey.from_public_bytes(u))
def pub(k):
    return X25519PrivateKey.from_private_bytes(k).public_key().public_bytes(Encoding.Raw, PublicFormat.Raw)
# RFC 7748 section 5.2.
assert dh(h('a546e36bf0527c9d3b16154b82465edd62144c0ac1fc5a18506a2244ba449ac4'),
          h('e6db6867583030db3594c1a424b15f7c726624ec26b3353b10a903a6d0ab1c4c')) == \
    h('c3da55379de9c6908e94ea4df28d084f32eccf03491c71f754b4075577a28552')
assert dh(h('4b66e9d4d1b4673c5ad22691957d6af5c11b6421e0ea01d42ca4169e7918ba0d'),
          h('e5210f12786811d3f4b7959d0538ae2c31dbe7106fc03c3efc4cd549c715a493')) == \
    h('95cbde9476e8907d7aade45cb4b873f88b595a68799fa152e6f8f7647aac7957')
# RFC 7748 section 6.1.
a = h('77076d0a7318a57d3c16c17251b26645df4c2f87ebc0992ab177fba51db92c2a')
b = h('5dab087e624a8a4b79e17f8b83800ee66f3bb1292618b6fd1c2f8b27ff88e0eb')
assert pub(a) == h('8520f0098930a754748b7ddcb43ef75a0dbf3a0d26381af4eba4a98eaa9b4e6a')
assert pub(b) == h('de9edb7d7b7dc1b4d35b61c2ece435373f8343c85b78674dadfc7e146f882b4f')
assert dh(a, pub(b)) == dh(b, pub(a)) == \
    h('4a5d9d5ba4ce2de1728e3bf480350f25e07e21c947d19e3376f09b3c1e161742')
# RFC 8439 section 2.8.2.
pt = (b"Ladies and Gentlemen of the class of '99: If I could offer you only one tip "
      b"for the future, sunscreen would be it.")
aead = ChaCha20Poly1305(h('808182838485868788898a8b8c8d8e8f909192939495969798999a9b9c9d9e9f'))
n, ad = h('070000004041424344454647'), h('50515253c0c1c2c3c4c5c6c7')
sealed = aead.encrypt(n, pt, ad)
assert sealed == h(
    'd31a8d34648e60db7b86afbc53ef7ec2a4aded51296e08fea9e2b5a736ee62d6'
    '3dbea45e8ca9671282fafb69da92728b1a71de0a9e060b2905d6a5b67ecd3b36'
    '92ddbd7f2d778b8c9803aee328091b58fab324e4fad675945585808b4831d7bc'
    '3ff4def08e4b7a9de576d26586cec64b6116'
    '1ae10b594f09e26a7e902ecbd0600691')
assert aead.decrypt(n, sealed, ad) == pt
try:
    aead.decrypt(n, sealed[:-1] + bytes([sealed[-1] ^ 1]), ad)
    raise AssertionError('a flipped tag bit was accepted')
except InvalidTag:
    pass
# RFC 7693 appendix B.
assert hashlib.blake2s(b'abc').digest() == \
    h('508c5e8c327c14e2e1a72ba34eeb452f37458b209ed63a294d999b4c86675982')
print('PASS RFC 7748, RFC 8439 and RFC 7693 vectors through the installed libraries')
'''


def oracle(python, inputs):
    return subprocess.run([python, HERE / 'oracle.py', inputs], check=True,
                          capture_output=True, text=True).stdout


def parse(text):
    return [line.split(' ', 1) for line in text.splitlines()]


def main():
    python = venv_python()
    subprocess.run([python, '-c', RFC_VECTORS], check=True)

    produced = oracle(python, HERE / 'inputs.json')
    if produced != (HERE / 'expected.txt').read_text():
        sys.exit('FAIL expected.txt differs from the oracle on inputs.json')
    print(f'PASS expected.txt equals the oracle ({len(produced.splitlines())} observations)')

    inputs = json.loads((HERE / 'inputs.json').read_text())
    psk = bytearray.fromhex(inputs['preshared_key'])
    psk[0] ^= 1
    inputs['preshared_key'] = psk.hex()
    with tempfile.NamedTemporaryFile('w', suffix='.json') as seeded:
        json.dump(inputs, seeded)
        seeded.flush()
        mutated = dict(parse(oracle(python, seeded.name)))
    original = dict(parse(produced))
    changed = {k for k in original if original[k] != mutated.get(k)}
    keys = {'initiator_sending_key', 'initiator_receiving_key',
            'responder_sending_key', 'responder_receiving_key', 'response'}
    if not keys <= changed or 'initiation' in changed:
        sys.exit(f'FAIL seeded psk byte: changed {sorted(changed)}')
    print('PASS one flipped psk byte changes the response and all four transport keys, '
          'not the initiation')


if __name__ == '__main__':
    main()
