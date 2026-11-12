// SPDX-License-Identifier: GPL-2.0
/*
 * Copyright (C) 2015-2019 Jason A. Donenfeld <Jason@zx2c4.com>. All Rights Reserved.
 */

#include "peer.h"
#include "device.h"
#include "queueing.h"
#include "timers.h"
#include "peerlookup.h"
#include "noise.h"

#include <linux/kref.h>
#include <linux/lockdep.h>
#include <linux/rcupdate.h>
#include <linux/list.h>

static struct kmem_cache *peer_cache;




















































struct wg_peer *wg_peer_get_maybe_zero(struct wg_peer *peer)
{
	RCU_LOCKDEP_WARN(!rcu_read_lock_bh_held(),
			 "Taking peer reference without holding the RCU read lock");
	if (unlikely(!peer || !kref_get_unless_zero(&peer->refcount)))
		return NULL;
	return peer;
}









































































/* We have a separate "remove" function make sure that all active places where
 * a peer is currently operating will eventually come to an end and not pass
 * their reference onto another context.
 */






























static void rcu_release(struct rcu_head *rcu)
{
	struct wg_peer *peer = container_of(rcu, struct wg_peer, rcu);

	dst_cache_destroy(&peer->endpoint_cache);
	WARN_ON(wg_prev_queue_peek(&peer->tx_queue) || wg_prev_queue_peek(&peer->rx_queue));

	/* The final zeroing takes care of clearing any remaining handshake key
	 * material and other potentially sensitive information.
	 */
	memzero_explicit(peer, sizeof(*peer));
	kmem_cache_free(peer_cache, peer);
}

static void kref_release(struct kref *refcount)
{
	struct wg_peer *peer = container_of(refcount, struct wg_peer, refcount);

	pr_debug("%s: Peer %llu (%pISpfsc) destroyed\n",
		 peer->device->dev->name, peer->internal_id,
		 &peer->endpoint.addr);

	/* Remove ourself from dynamic runtime lookup structures, now that the
	 * last reference is gone.
	 */
	wg_index_hashtable_remove(peer->device->index_hashtable,
				  &peer->handshake.entry);

	/* Remove any lingering packets that didn't have a chance to be
	 * transmitted.
	 */
	wg_packet_purge_staged_packets(peer);

	/* Free the memory used. */
	call_rcu(&peer->rcu, rcu_release);
}

void wg_peer_put(struct wg_peer *peer)
{
	if (unlikely(!peer))
		return;
	kref_put(&peer->refcount, kref_release);
}

int __init wg_peer_init(void)
{
	peer_cache = KMEM_CACHE(wg_peer, 0);
	return peer_cache ? 0 : -ENOMEM;
}

void wg_peer_uninit(void)
{
	kmem_cache_destroy(peer_cache);
}
