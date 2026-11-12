#!/usr/bin/env python3
"""Independent expected observations of the two-peer Noise_IKpsk2 handshake.

The protocol steps follow the WireGuard paper (Donenfeld, NDSS 2017, section
5.4) and wireguard.com/protocol. The primitives are reused, not written:
BLAKE2s is Python's hashlib (RFC 7693), HMAC is Python's hmac, and X25519
(RFC 7748) and the ChaCha20-Poly1305 AEAD (RFC 8439) are pyca/cryptography
with its OpenSSL backend, pinned in requirements.txt. Nothing here reads
drivers/net/wireguard, lib/crypto or any output of the C code.

The inputs (inputs.json) are the values the driver scripts: the two static
private keys, the two ephemeral secrets as get_random_bytes_wait returns them
(before curve25519_clamp_secret), the preshared key, the sender indices as
get_random_u32 returns them, and the wall clock ktime_get_real_ts64 reads
when the initiation is created. Output is one 'name value' line per
observation, in the order of the scenario (see README.md).
"""
import argparse
import hashlib
import hmac
import json
import struct
import sys

from cryptography.exceptions import InvalidTag
from cryptography.hazmat.primitives.asymmetric.x25519 import X25519PrivateKey, X25519PublicKey
from cryptography.hazmat.primitives.ciphers.aead import ChaCha20Poly1305
from cryptography.hazmat.primitives.serialization import Encoding, PublicFormat

CONSTRUCTION = b'Noise_IKpsk2_25519_ChaChaPoly_BLAKE2s'
IDENTIFIER = b'WireGuard v1 zx2c4 Jason@zx2c4.com'
MESSAGE_HANDSHAKE_INITIATION, MESSAGE_HANDSHAKE_RESPONSE = 1, 2
# noise.h's enum noise_handshake_state.
ZEROED, CREATED_INITIATION, CONSUMED_INITIATION, CREATED_RESPONSE, CONSUMED_RESPONSE = range(5)
NSEC_PER_SEC = 10**9
INITIATIONS_PER_SECOND = 50  # messages.h


def clamp(k):
    """RFC 7748 section 5 (decodeScalar25519), as Curve25519 secrets are stored."""
    k = bytearray(k)
    k[0] &= 248
    k[31] = (k[31] & 127) | 64
    return bytes(k)


def dh(private, public):
    return X25519PrivateKey.from_private_bytes(private).exchange(
        X25519PublicKey.from_public_bytes(public))


def public(private):
    return X25519PrivateKey.from_private_bytes(private).public_key().public_bytes(
        Encoding.Raw, PublicFormat.Raw)


def HASH(data):
    return hashlib.blake2s(data).digest()


def HMAC(key, data):
    return hmac.new(key, data, hashlib.blake2s).digest()


def KDF(n, key, data):
    """HKDF over HMAC-BLAKE2s with n outputs (the paper's KDF_n)."""
    t0 = HMAC(key, data)
    out, prev = [], b''
    for i in range(1, n + 1):
        prev = HMAC(t0, prev + bytes([i]))
        out.append(prev)
    return out


def nonce(counter):
    """32 zero bits, then the 64-bit little-endian counter."""
    return b'\x00' * 4 + struct.pack('<Q', counter)


def seal(key, plaintext, ad):
    return ChaCha20Poly1305(key).encrypt(nonce(0), plaintext, ad)


def unseal(key, sealed, ad):
    try:
        return ChaCha20Poly1305(key).decrypt(nonce(0), sealed, ad)
    except InvalidTag:
        return None


def tai64n(real_ns):
    """TAI64N label of a wall-clock reading (cr.yp.to/libtai/tai64.html:
    2^62 + 10 + seconds, then nanoseconds, big-endian). The protocol rounds
    the nanoseconds down to a power of two not above 1 s / 50 initiations."""
    seconds, nanoseconds = divmod(real_ns, NSEC_PER_SEC)
    step = 1 << ((NSEC_PER_SEC // INITIATIONS_PER_SECOND).bit_length() - 1)
    return struct.pack('>QI', 0x400000000000000a + seconds, nanoseconds - nanoseconds % step)


def initial():
    c = HASH(CONSTRUCTION)
    return c, HASH(c + IDENTIFIER)


def handshake(s):
    """The scenario's observations as an ordered list of (name, value)."""
    si, sr = clamp(s['initiator_static']), clamp(s['responder_static'])
    ei, er = clamp(s['initiator_ephemeral']), clamp(s['responder_ephemeral'])
    psk = s['preshared_key']
    Si, Sr = public(si), public(sr)
    obs = [('initiator_static_public', Si), ('responder_static_public', Sr)]

    # wg_noise_handshake_create_initiation on the initiator.
    c, h = initial()
    h = HASH(h + Sr)
    Ei = public(ei)
    c = KDF(1, c, Ei)[0]
    h = HASH(h + Ei)
    c, k = KDF(2, c, dh(ei, Sr))
    enc_static = seal(k, Si, h)
    h = HASH(h + enc_static)
    c, k = KDF(2, c, dh(si, Sr))
    stamp = tai64n(s['initiation_real_ns'])
    enc_time = seal(k, stamp, h)
    h = HASH(h + enc_time)
    initiation = (struct.pack('<B3x', MESSAGE_HANDSHAKE_INITIATION)
                  + struct.pack('<I', s['initiator_index']) + Ei + enc_static + enc_time)
    obs += [('initiation', initiation),
            ('initiator_state', CREATED_INITIATION),
            ('initiator_ephemeral_private', ei),
            ('initiator_hash', h), ('initiator_chaining_key', c)]
    ci, hi = c, h

    # wg_noise_handshake_consume_initiation on the responder, from the bytes.
    c, h = initial()
    h = HASH(h + Sr)
    m_index, m_e = initiation[4:8], initiation[8:40]
    c = KDF(1, c, m_e)[0]
    h = HASH(h + m_e)
    c, k = KDF(2, c, dh(sr, m_e))
    m_static = unseal(k, initiation[40:88], h)
    assert m_static == Si, 'the responder must authenticate the initiator'
    h = HASH(h + initiation[40:88])
    c, k = KDF(2, c, dh(sr, m_static))
    m_time = unseal(k, initiation[88:116], h)
    assert m_time == stamp
    h = HASH(h + initiation[88:116])
    assert (c, h) == (ci, hi)
    obs += [('responder_state', CONSUMED_INITIATION),
            ('responder_remote_ephemeral', m_e), ('responder_latest_timestamp', m_time),
            ('responder_remote_index', m_index),
            ('responder_hash', h), ('responder_chaining_key', c)]

    # wg_noise_handshake_create_response on the responder.
    Er = public(er)
    c = KDF(1, c, Er)[0]
    h = HASH(h + Er)
    c = KDF(1, c, dh(er, m_e))[0]
    c = KDF(1, c, dh(er, m_static))[0]
    c, tau, k = KDF(3, c, psk)
    h = HASH(h + tau)
    enc_empty = seal(k, b'', h)
    h = HASH(h + enc_empty)
    response = (struct.pack('<B3x', MESSAGE_HANDSHAKE_RESPONSE)
                + struct.pack('<I', s['responder_index']) + m_index + Er + enc_empty)
    obs += [('response', response),
            ('responder_state', CREATED_RESPONSE),
            ('responder_ephemeral_private', er),
            ('responder_hash', h), ('responder_chaining_key', c)]
    cr, hr = c, h

    # wg_noise_handshake_consume_response on the initiator, from the bytes.
    r_index, r_e, r_empty = response[4:8], response[12:44], response[44:60]
    assert response[8:12] == struct.pack('<I', s['initiator_index'])
    c, h = ci, hi
    c = KDF(1, c, r_e)[0]
    h = HASH(h + r_e)
    c = KDF(1, c, dh(ei, r_e))[0]
    c = KDF(1, c, dh(si, r_e))[0]
    c, tau, k = KDF(3, c, psk)
    h = HASH(h + tau)
    assert unseal(k, r_empty, h) == b''
    h = HASH(h + r_empty)
    assert (c, h) == (cr, hr)
    obs += [('initiator_state', CONSUMED_RESPONSE),
            ('initiator_remote_ephemeral', r_e), ('initiator_remote_index', r_index),
            ('initiator_hash', h), ('initiator_chaining_key', c)]

    # wg_noise_handshake_begin_session on both sides: the initiator sends with
    # the first KDF2(C, empty) output, the responder receives with it.
    # Each keypair keeps its side's sender index (the index table entry moves
    # from the handshake to the keypair) and the peer's; the handshake is then
    # zeroed.
    first, second = KDF(2, c, b'')
    obs += [('initiator_sending_key', first), ('initiator_receiving_key', second),
            ('responder_sending_key', second), ('responder_receiving_key', first),
            ('initiator_keypair_local_index', struct.pack('<I', s['initiator_index'])),
            ('initiator_keypair_remote_index', r_index),
            ('responder_keypair_local_index', struct.pack('<I', s['responder_index'])),
            ('responder_keypair_remote_index', m_index),
            ('initiator_state', ZEROED), ('responder_state', ZEROED)]

    obs += failures(s, initiation, ci, hi)
    obs += state_rules(s)
    return obs


def failures(s, initiation, ci, hi):
    """Expected rejections, decided by the protocol's checks."""
    sr = clamp(s['responder_static'])
    out = []

    # One bit of encrypted_static flipped: the responder's AEAD open fails,
    # so consume_initiation returns NULL.
    tampered = bytearray(initiation)
    tampered[40] ^= 1
    c, h = initial()
    h = HASH(h + public(sr))
    e = bytes(tampered[8:40])
    c = KDF(1, c, e)[0]
    h = HASH(h + e)
    c, k = KDF(2, c, dh(sr, e))
    out.append(('tampered_initiation_accepted', int(unseal(k, bytes(tampered[40:88]), h) is not None)))

    # The same initiation again, after the driver's clock advance (past the
    # flood window): the responder decrypts its timestamp and compares it with
    # the latest one it accepted, which survives handshake_zero. TAI64N
    # labels compare as big-endian bytes (the paper's replay rule).
    latest = tai64n(s['initiation_real_ns'])
    c, h = initial()
    h = HASH(h + public(sr))
    e = initiation[8:40]
    c = KDF(1, c, e)[0]
    h = HASH(h + e)
    c, k = KDF(2, c, dh(sr, e))
    static = unseal(k, initiation[40:88], h)
    h = HASH(h + initiation[40:88])
    c, k = KDF(2, c, dh(sr, static))
    replayed = unseal(k, initiation[88:116], h)
    out.append(('replayed_initiation_accepted', int(replayed is not None and replayed > latest)))

    # The response with its receiver index changed to one no handshake of
    # the initiator holds: the index-table lookup fails, nothing is decrypted.
    # The initiator's only outstanding index is its own sender index.
    outstanding = {s['initiator_index']}
    out.append(('wrong_index_response_accepted', int(s['initiator_index'] ^ 1 in outstanding)))

    # R' (the responder's static key, a peer for the initiator with an
    # all-zero preshared key) consumes the same initiation, so it starts from
    # the same chaining key and hash, and answers with its own ephemeral. The
    # initiator, still in CREATED_INITIATION, opens R''s empty AEAD under the
    # real preshared key: the open fails.
    ei, si, ep = (clamp(s[n]) for n in ('initiator_ephemeral', 'initiator_static',
                                         'psk_responder_ephemeral'))
    Ei, Si, Ep = public(ei), public(si), public(ep)

    def response_key(ee, se, psk):
        """KDF chain from the initiation state to the response's key and hash."""
        c = KDF(1, ci, Ep)[0]
        h = HASH(hi + Ep)
        c = KDF(1, c, ee)[0]
        c = KDF(1, c, se)[0]
        c, tau, k = KDF(3, c, psk)
        return k, HASH(h + tau)

    k, h = response_key(dh(ep, Ei), dh(ep, Si), bytes(32))
    sent = seal(k, b'', h)
    k, h = response_key(dh(ei, Ep), dh(si, Ep), s['preshared_key'])
    out.append(('psk_mismatch_response_accepted', int(unseal(k, sent, h) is not None)))
    return out


def state_rules(s):
    """Rejections decided by the protocol's message order and key rules, from a
    small model of each side's state (paper 5.4; noise.h's states)."""
    out = []

    # A device whose private key is all zero has no static identity (no
    # usable static key; the all-zero key is WireGuard's "no key"), so it
    # can perform no DH with the initiator and consumes nothing.
    has_identity = s['no_identity_static'] != bytes(32)
    out.append(('no_identity_initiation_accepted', int(has_identity)))

    # A responder message is created only from CONSUMED_INITIATION, and a
    # session begins only from CREATED_RESPONSE or CONSUMED_RESPONSE. The
    # initiator, before the response arrives, is in CREATED_INITIATION.
    initiator_state = CREATED_INITIATION
    out.append(('out_of_order_response_created', int(initiator_state == CONSUMED_INITIATION)))
    out.append(('out_of_order_session_begun',
                int(initiator_state in (CREATED_RESPONSE, CONSUMED_RESPONSE))))

    # Key confirmation (paper 5.4.7): the responder's new keypair waits in
    # "next" until the first transport message under it arrives; that moves
    # it to "current". A second arrival finds no next keypair to promote.
    slots = {'previous': None, 'current': None, 'next': 'responder_keypair'}

    def received_with(keypair):
        if slots['next'] != keypair:
            return 0
        slots['previous'], slots['current'], slots['next'] = slots['current'], keypair, None
        return 1

    out.append(('received_with_next_accepted', received_with('responder_keypair')))
    out.append(('received_with_next_again_accepted', received_with('responder_keypair')))
    return out


def load(path):
    raw = json.loads(open(path).read())
    s = {}
    for k, v in raw.items():
        if k.startswith('_'):
            continue
        s[k] = v if isinstance(v, int) else bytes.fromhex(v)
    return s


def render(obs):
    return ''.join(f'{name} {value.hex() if isinstance(value, bytes) else value}\n'
                   for name, value in obs)


def main():
    parser = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    parser.add_argument('inputs', help='scenario inputs (JSON)')
    args = parser.parse_args()
    sys.stdout.write(render(handshake(load(args.inputs))))


if __name__ == '__main__':
    main()
