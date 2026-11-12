/* SPDX-License-Identifier: GPL-2.0 */
/*
 * Copyright (C) 2015-2019 Jason A. Donenfeld <Jason@zx2c4.com>. All Rights Reserved.
 */

#ifndef _WG_MESSAGES_H
#define _WG_MESSAGES_H

#include <crypto/curve25519.h>
#include <crypto/chacha20poly1305.h>
#include <crypto/blake2s.h>

#include <linux/kernel.h>
#include <linux/param.h>
#include <linux/skbuff.h>

enum noise_lengths {
	NOISE_PUBLIC_KEY_LEN = CURVE25519_KEY_SIZE,
	NOISE_SYMMETRIC_KEY_LEN = CHACHA20POLY1305_KEY_SIZE,
	NOISE_TIMESTAMP_LEN = sizeof(u64) + sizeof(u32),
	NOISE_AUTHTAG_LEN = CHACHA20POLY1305_AUTHTAG_SIZE,
	NOISE_HASH_LEN = BLAKE2S_HASH_SIZE
};

#define noise_encrypted_len(plain_len) ((plain_len) + NOISE_AUTHTAG_LEN)








enum counter_values {
	COUNTER_BITS_TOTAL = 8192,
	COUNTER_REDUNDANT_BITS = BITS_PER_LONG,
	COUNTER_WINDOW_SIZE = COUNTER_BITS_TOTAL - COUNTER_REDUNDANT_BITS
};

enum limits {
	REKEY_TIMEOUT = 5,
	REKEY_TIMEOUT_JITTER_MAX_JIFFIES = HZ / 3,
	REKEY_AFTER_TIME = 120,
	REJECT_AFTER_TIME = 180,
	INITIATIONS_PER_SECOND = 50,
	MAX_PEERS_PER_DEVICE = 1U << 20,
	KEEPALIVE_TIMEOUT = 10,
	MAX_TIMER_HANDSHAKES = 90 / REKEY_TIMEOUT,
	MAX_QUEUED_INCOMING_HANDSHAKES = 4096, /* TODO: replace this with DQL */
	MAX_STAGED_PACKETS = 128,
	MAX_QUEUED_PACKETS = 1024 /* TODO: replace this with DQL */
};



enum message_type {
	MESSAGE_INVALID = 0,
	MESSAGE_HANDSHAKE_INITIATION = 1,
	MESSAGE_HANDSHAKE_RESPONSE = 2,
	MESSAGE_HANDSHAKE_COOKIE = 3,
	MESSAGE_DATA = 4
};

struct message_header {
	/* The actual layout of this that we want is:
	 * u8 type
	 * u8 reserved_zero[3]
	 *
	 * But it turns out that by encoding this as little endian,
	 * we achieve the same thing, and it makes checking faster.
	 */
	__le32 type;
};

struct message_macs { _Alignas(1) unsigned char __dummy[32]; };




struct message_handshake_initiation {
	struct message_header header;
	__le32 sender_index;
	u8 unencrypted_ephemeral[NOISE_PUBLIC_KEY_LEN];
	u8 encrypted_static[noise_encrypted_len(NOISE_PUBLIC_KEY_LEN)];
	u8 encrypted_timestamp[noise_encrypted_len(NOISE_TIMESTAMP_LEN)];
	struct message_macs macs;
};

struct message_handshake_response {
	struct message_header header;
	__le32 sender_index;
	__le32 receiver_index;
	u8 unencrypted_ephemeral[NOISE_PUBLIC_KEY_LEN];
	u8 encrypted_nothing[noise_encrypted_len(0)];
	struct message_macs macs;
};































#endif /* _WG_MESSAGES_H */
