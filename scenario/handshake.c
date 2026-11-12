// SPDX-License-Identifier: GPL-2.0
/*
 * Two-peer WireGuard Noise handshake through WireGuard's own noise.c.
 *
 * The driver uses only the handshake environment (hs_env.h) and
 * noise.c's API, in the order send.c/receive.c call it:
 *
 *   I: wg_noise_handshake_create_initiation
 *   R: wg_noise_handshake_consume_initiation   (finds I's peer by static key)
 *   R: wg_noise_handshake_create_response
 *   R: wg_noise_handshake_begin_session         (responder keypair -> next)
 *   I: wg_noise_handshake_consume_response      (finds R's peer by index)
 *   I: wg_noise_handshake_begin_session         (initiator keypair -> current)
 *
 * It prints the observations of the reference implementation
 * (oracle/README.md, "Observation format"), one "name value" line each, in
 * its order, for its inputs (oracle/inputs.json, embedded below). The expectation is
 * the oracle's output, computed from the protocol specification without this
 * C; the driver contains no expected value. Every other stdout line is
 * "word: ..." from the services: noise.c's pr_debug/net_dbg (the recorded
 * command has -DDEBUG) and the harness report.
 *
 * Failure cases, each observed as accepted (1) or rejected (0) and printed
 * after the session lines. Each runs where the state it tests exists and
 * changes no state the next step reads (noise.c checks before it writes):
 * - tampered: the initiation with bit 0 of encrypted_static[0] flipped;
 *   its AEAD tag fails.
 * - no identity: device N, created with the all-zero private key, has no
 *   static identity (curve25519_generate_public rejects the null secret)
 *   and refuses the initiation.
 * - out of order: create_response and begin_session on I's handshake while
 *   it is still "created initiation".
 * - wrong index: R's response with bit 0 of receiver_index flipped; I's
 *   index lookup fails.
 * - psk mismatch: device R' holds R's static key and a peer for I with the
 *   all-zero preshared key. It consumes the same initiation (the psk enters
 *   only the response) and responds; I's consume_response must refuse it.
 *   Both run before I consumes R's real response.
 * - replay: R consumes the original initiation again, 1 s later so that the
 *   20 ms flood check passes; the timestamp is not newer.
 * - rotation: R's next keypair confirmed by received data
 *   (wg_noise_received_with_keypair) moves to current once; a second
 *   confirmation finds no next keypair.
 *
 * Random draws, in call order, all scripted (an exhausted script is a
 * violation): the 16-byte SipHash key of each device's pubkey table
 * (hs_device_create: I, R, R', N), then I's ephemeral (32) and index (u32),
 * R's, then R''s. Index values are distinct within each table, so each
 * insertion draws once.
 */
#include <linux/string.h>
#include "device.h"
#include "peer.h"
#include "noise.h"
#include "messages.h"
#include "hs_env.h"
#include "../services/harness/wgh.h"

int printf(const char *format, ...);

/* Inputs: the names and values of oracle/inputs.json, which must equal
 * these. Each 32-byte value is BLAKE2s-256("wg-handshake-1/" +
 * name); table keys and psk_responder_index are its first 16 or 4 bytes. The
 * table keys choose hash buckets only and affect no observation. */
static const char initiator_static[] = "03b8082c3aa38d6f5027f547f7062568e7a40a17930c6b4f7ebf465fa0cb5e90";
static const char responder_static[] = "fbcbdfaaaca25a5f40f458f62ad0d41e4e42a633f01a2148c29b4a6c9c738ae9";
static const char initiator_ephemeral[] = "d73503e34339d80d0e95e92433bd1f016460a23056fa9c7c9ee4c06652c3f307";
static const char responder_ephemeral[] = "1e48c1fe8742082b8ae842ef3985575e024e08726320a7cee1b3a7840d444b86";
static const char preshared_key[] = "908a92d22d690f03fc5703723f822ac4dabd15c94b38f61dff2f4cf1aee77e23";
static const u32 initiator_index = 439041101;
static const u32 responder_index = 1584361601;
static const u64 initiation_real_ns = 1794200000050331648ULL;
static const char initiator_table_key[] = "39d62d8b87c8f5ced8a7f0f366d0ee13";
static const char responder_table_key[] = "a3e978e67d0bc17a5b9cdf7b567a4393";
static const char psk_responder_table_key[] = "ecf130657cb6f492dd73a5eb63bb5bb5";
static const char no_identity_table_key[] = "4ef2421155a7f4d70791a77601c5d9be";
static const char psk_responder_ephemeral[] = "0637187f4766c33e29d7d98bd0ce3e5a4908e6ad129392a68b45b70c576421db";
static const u32 psk_responder_index = 48606725;
static const char no_identity_static[] = "0000000000000000000000000000000000000000000000000000000000000000";
/* Boot clock at the initiation: past consume_initiation's 20 ms flood
 * window measured from a zeroed last consumption. */
static const u64 boot_ns = 10000000000ULL;
/* Advanced just before the replayed initiation, past the same window. */
static const u64 replay_delay_ns = 1000000000ULL;

static const char digits[] = "0123456789abcdef";

static int unhex(char c)
{
	return c <= '9' ? c - '0' : c - 'a' + 10;
}

/* Lower-case hex @text into @out; returns the end of what it wrote. */
static u8 *put_hex(u8 *out, const char *text)
{
	for (; text[0] && text[1]; text += 2)
		*out++ = (u8)(unhex(text[0]) << 4 | unhex(text[1]));
	return out;
}

static void bytes(const char *name, const void *data, unsigned long length)
{
	const u8 *p = data;
	unsigned long i;

	printf("%s ", name);
	for (i = 0; i < length; i++)
		printf("%c%c", digits[p[i] >> 4], digits[p[i] & 15]);
	printf("\n");
}

static void number(const char *name, unsigned long long value)
{
	printf("%s %llu\n", name, value);
}

/* An index as the 4 bytes it is stored and sent as (__le32). */
static void index_bytes(const char *name, __le32 index)
{
	bytes(name, &index, sizeof(index));
}

static u8 *put_u32le(u8 *p, u32 value)
{
	p[0] = value;
	p[1] = value >> 8;
	p[2] = value >> 16;
	p[3] = value >> 24;
	return p + 4;
}

/* Drop the reference consume_* returns, reporting whether there was one. */
static int accepted(struct wg_peer *peer)
{
	if (!peer)
		return 0;
	wg_peer_put(peer);
	return 1;
}

int main(void)
{
	static const u8 zero[NOISE_SYMMETRIC_KEY_LEN];
	u8 script[4 * 16 + 3 * (NOISE_PUBLIC_KEY_LEN + 4)];
	u8 *p = script;
	u8 key_i[NOISE_PUBLIC_KEY_LEN], key_r[NOISE_PUBLIC_KEY_LEN], key_n[NOISE_PUBLIC_KEY_LEN];
	u8 psk[NOISE_SYMMETRIC_KEY_LEN];
	struct message_handshake_initiation initiation, tampered;
	struct message_handshake_response response, misaddressed, mismatched;
	struct wg_device *wi, *wr, *wm, *wn;
	struct wg_peer *pi, *pr, *pm, *got;
	struct noise_keypair *ki, *kr;
	int tampered_ok, no_identity_ok, response_out_of_order, session_out_of_order;
	int wrong_index_ok, psk_mismatch_ok, replay_ok, next_ok, next_again_ok;
	int failed = 0;

	if (hs_env_init(boot_ns, initiation_real_ns))
		return 1;
	p = put_hex(p, initiator_table_key);
	p = put_hex(p, responder_table_key);
	p = put_hex(p, psk_responder_table_key);
	p = put_hex(p, no_identity_table_key);
	p = put_hex(p, initiator_ephemeral);
	p = put_u32le(p, initiator_index);
	p = put_hex(p, responder_ephemeral);
	p = put_u32le(p, responder_index);
	p = put_hex(p, psk_responder_ephemeral);
	p = put_u32le(p, psk_responder_index);
	hs_rng_script(script, p - script);
	failed |= p != script + sizeof(script);
	wg_noise_init();

	put_hex(key_i, initiator_static);
	put_hex(key_r, responder_static);
	put_hex(psk, preshared_key);
	put_hex(key_n, no_identity_static);
	wi = hs_device_create(key_i);
	wr = hs_device_create(key_r);
	wm = hs_device_create(key_r);
	wn = hs_device_create(key_n);
	if (!wi || !wr || !wm || !wn)
		return hs_env_finish() | 1;
	pi = hs_peer_create(wi, wr->static_identity.static_public, psk);
	pr = hs_peer_create(wr, wi->static_identity.static_public, psk);
	pm = hs_peer_create(wm, wi->static_identity.static_public, zero);
	if (!pi || !pr || !pm)
		return hs_env_finish() | 1;
	bytes("initiator_static_public", wi->static_identity.static_public, NOISE_PUBLIC_KEY_LEN);
	bytes("responder_static_public", wr->static_identity.static_public, NOISE_PUBLIC_KEY_LEN);

	/* I: initiation. */
	memset(&initiation, 0, sizeof(initiation));
	failed |= !wg_noise_handshake_create_initiation(&initiation, &pi->handshake);
	bytes("initiation", &initiation, offsetof(struct message_handshake_initiation, macs));
	number("initiator_state", pi->handshake.state);
	bytes("initiator_ephemeral_private", pi->handshake.ephemeral_private, NOISE_PUBLIC_KEY_LEN);
	bytes("initiator_hash", pi->handshake.hash, NOISE_HASH_LEN);
	bytes("initiator_chaining_key", pi->handshake.chaining_key, NOISE_HASH_LEN);

	tampered = initiation;
	tampered.encrypted_static[0] ^= 1;
	tampered_ok = accepted(wg_noise_handshake_consume_initiation(&tampered, wr));
	no_identity_ok = accepted(wg_noise_handshake_consume_initiation(&initiation, wn));
	response_out_of_order = wg_noise_handshake_create_response(&misaddressed, &pi->handshake);
	session_out_of_order = wg_noise_handshake_begin_session(&pi->handshake, &pi->keypairs);

	/* R: consume the initiation and respond. */
	got = wg_noise_handshake_consume_initiation(&initiation, wr);
	failed |= got != pr;
	accepted(got);
	number("responder_state", pr->handshake.state);
	bytes("responder_remote_ephemeral", pr->handshake.remote_ephemeral, NOISE_PUBLIC_KEY_LEN);
	bytes("responder_latest_timestamp", pr->handshake.latest_timestamp, NOISE_TIMESTAMP_LEN);
	index_bytes("responder_remote_index", pr->handshake.remote_index);
	bytes("responder_hash", pr->handshake.hash, NOISE_HASH_LEN);
	bytes("responder_chaining_key", pr->handshake.chaining_key, NOISE_HASH_LEN);

	memset(&response, 0, sizeof(response));
	failed |= !wg_noise_handshake_create_response(&response, &pr->handshake);
	bytes("response", &response, offsetof(struct message_handshake_response, macs));
	number("responder_state", pr->handshake.state);
	bytes("responder_ephemeral_private", pr->handshake.ephemeral_private, NOISE_PUBLIC_KEY_LEN);
	bytes("responder_hash", pr->handshake.hash, NOISE_HASH_LEN);
	bytes("responder_chaining_key", pr->handshake.chaining_key, NOISE_HASH_LEN);
	failed |= !wg_noise_handshake_begin_session(&pr->handshake, &pr->keypairs);

	/* R': the same initiation, answered under the wrong preshared key. */
	got = wg_noise_handshake_consume_initiation(&initiation, wm);
	failed |= got != pm;
	accepted(got);
	memset(&mismatched, 0, sizeof(mismatched));
	failed |= !wg_noise_handshake_create_response(&mismatched, &pm->handshake);

	/* I: two refused responses, then R's. */
	misaddressed = response;
	misaddressed.receiver_index = cpu_to_le32(le32_to_cpu(response.receiver_index) ^ 1);
	wrong_index_ok = accepted(wg_noise_handshake_consume_response(&misaddressed, wi));
	psk_mismatch_ok = accepted(wg_noise_handshake_consume_response(&mismatched, wi));
	got = wg_noise_handshake_consume_response(&response, wi);
	failed |= got != pi;
	accepted(got);
	number("initiator_state", pi->handshake.state);
	bytes("initiator_remote_ephemeral", pi->handshake.remote_ephemeral, NOISE_PUBLIC_KEY_LEN);
	index_bytes("initiator_remote_index", pi->handshake.remote_index);
	bytes("initiator_hash", pi->handshake.hash, NOISE_HASH_LEN);
	bytes("initiator_chaining_key", pi->handshake.chaining_key, NOISE_HASH_LEN);
	failed |= !wg_noise_handshake_begin_session(&pi->handshake, &pi->keypairs);

	ki = rcu_dereference_protected(pi->keypairs.current_keypair, true);
	kr = rcu_dereference_protected(pr->keypairs.next_keypair, true);
	if (!ki || !kr)
		return hs_env_finish() | 1;
	bytes("initiator_sending_key", ki->sending.key, NOISE_SYMMETRIC_KEY_LEN);
	bytes("initiator_receiving_key", ki->receiving.key, NOISE_SYMMETRIC_KEY_LEN);
	bytes("responder_sending_key", kr->sending.key, NOISE_SYMMETRIC_KEY_LEN);
	bytes("responder_receiving_key", kr->receiving.key, NOISE_SYMMETRIC_KEY_LEN);
	index_bytes("initiator_keypair_local_index", ki->entry.index);
	index_bytes("initiator_keypair_remote_index", ki->remote_index);
	index_bytes("responder_keypair_local_index", kr->entry.index);
	index_bytes("responder_keypair_remote_index", kr->remote_index);
	number("initiator_state", pi->handshake.state);
	number("responder_state", pr->handshake.state);
	/* Independent of the oracle: the session properties themselves. */
	wgh_expect(!memcmp(ki->sending.key, kr->receiving.key, NOISE_SYMMETRIC_KEY_LEN),
		   "initiator sending key == responder receiving key");
	wgh_expect(!memcmp(ki->receiving.key, kr->sending.key, NOISE_SYMMETRIC_KEY_LEN),
		   "initiator receiving key == responder sending key");
	wgh_expect(memcmp(ki->sending.key, ki->receiving.key, NOISE_SYMMETRIC_KEY_LEN),
		   "the two directions' keys differ");
	wgh_expect(ki->remote_index == kr->entry.index && kr->remote_index == ki->entry.index,
		   "keypair indices cross-match");
	wgh_expect(ki->i_am_the_initiator && !kr->i_am_the_initiator, "keypair roles");
	wgh_expect(ki->sending.is_valid && ki->receiving.is_valid &&
		   kr->sending.is_valid && kr->receiving.is_valid, "keys valid");
	wgh_expect(!rcu_dereference_protected(pi->keypairs.next_keypair, true) &&
		   !rcu_dereference_protected(pi->keypairs.previous_keypair, true) &&
		   !rcu_dereference_protected(pr->keypairs.current_keypair, true) &&
		   !rcu_dereference_protected(pr->keypairs.previous_keypair, true),
		   "no other keypair slot is set");
	wgh_expect(!hs_rng_remaining(), "random script used exactly");

	hs_clock_advance(replay_delay_ns);
	replay_ok = accepted(wg_noise_handshake_consume_initiation(&initiation, wr));
	next_ok = wg_noise_received_with_keypair(&pr->keypairs, kr);
	next_again_ok = wg_noise_received_with_keypair(&pr->keypairs, kr);

	number("tampered_initiation_accepted", tampered_ok);
	number("replayed_initiation_accepted", replay_ok);
	number("wrong_index_response_accepted", wrong_index_ok);
	number("psk_mismatch_response_accepted", psk_mismatch_ok);
	number("no_identity_initiation_accepted", no_identity_ok);
	number("out_of_order_response_created", response_out_of_order);
	number("out_of_order_session_begun", session_out_of_order);
	number("received_with_next_accepted", next_ok);
	number("received_with_next_again_accepted", next_again_ok);

	hs_peer_destroy(pi);
	hs_peer_destroy(pr);
	hs_peer_destroy(pm);
	hs_device_destroy(wi);
	hs_device_destroy(wr);
	hs_device_destroy(wm);
	hs_device_destroy(wn);
	/* A successful step that failed is visible in the observations too;
	 * this makes it fail the run as well. */
	wgh_expect(!failed, "every valid step succeeded");
	return hs_env_finish();
}
