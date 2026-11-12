/* SPDX-License-Identifier: GPL-2.0 */
/*
 * Copyright (C) 2015-2019 Jason A. Donenfeld <Jason@zx2c4.com>. All Rights Reserved.
 */

#ifndef _WG_QUEUEING_H
#define _WG_QUEUEING_H

#include "peer.h"
#include <linux/types.h>
#include <linux/skbuff.h>
#include <linux/ip.h>
#include <linux/ipv6.h>
#include <net/ip_tunnels.h>

struct wg_device;
struct wg_peer;

struct crypt_queue;
struct prev_queue;
struct sk_buff;

/* queueing.c APIs: */






/* receive.c APIs: */


/* NAPI poll function: */

/* Workqueue worker: */


/* send.c APIs: */







void wg_packet_purge_staged_packets(struct wg_peer *peer);

/* Workqueue workers: */














































#ifdef CONFIG_NET_SCHED

#endif



















/* This function is racy, in the sense that it's called while last_cpu is
 * unlocked, so it could return the same CPU twice. Adding locking or using
 * atomic sequence numbers is slower though, and the consequences of racing are
 * harmless, so live with it.
 */









void wg_prev_queue_init(struct prev_queue *queue);

/* Multi producer */


/* Single consumer */
struct sk_buff *wg_prev_queue_dequeue(struct prev_queue *queue);

/* Single consumer */
static inline struct sk_buff *wg_prev_queue_peek(struct prev_queue *queue)
{
	if (queue->peeked)
		return queue->peeked;
	queue->peeked = wg_prev_queue_dequeue(queue);
	return queue->peeked;
}

/* Single consumer */





















































#ifdef DEBUG

#endif

#endif /* _WG_QUEUEING_H */
