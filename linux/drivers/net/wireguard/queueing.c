// SPDX-License-Identifier: GPL-2.0
/*
 * Copyright (C) 2015-2019 Jason A. Donenfeld <Jason@zx2c4.com>. All Rights Reserved.
 */

#include "queueing.h"
#include <linux/skb_array.h>










































#define NEXT(skb) ((skb)->u_node.s_node.prev)
#define STUB(queue) ((struct sk_buff *)&queue->empty)

void wg_prev_queue_init(struct prev_queue *queue)
{
	NEXT(STUB(queue)) = NULL;
	queue->head = queue->tail = STUB(queue);
	queue->peeked = NULL;
	atomic_set(&queue->count, 0);
	BUILD_BUG_ON(
		(offsetof(struct sk_buff, u_node) + offsetof(typeof(((struct sk_buff *)0)->u_node), s_node) + offsetof(typeof(((struct sk_buff *)0)->u_node.s_node), next)) != (offsetof(struct prev_queue, empty) + offsetof(typeof(((struct prev_queue *)0)->empty), next)) -
							offsetof(struct prev_queue, empty) ||
		(offsetof(struct sk_buff, u_node) + offsetof(typeof(((struct sk_buff *)0)->u_node), s_node) + offsetof(typeof(((struct sk_buff *)0)->u_node.s_node), prev)) != (offsetof(struct prev_queue, empty) + offsetof(typeof(((struct prev_queue *)0)->empty), prev)) -
							 offsetof(struct prev_queue, empty));
}

static void __wg_prev_queue_enqueue(struct prev_queue *queue, struct sk_buff *skb)
{
	WRITE_ONCE(NEXT(skb), NULL);
	WRITE_ONCE(NEXT(xchg_release(&queue->head, skb)), skb);
}









struct sk_buff *wg_prev_queue_dequeue(struct prev_queue *queue)
{
	struct sk_buff *tail = queue->tail, *next = smp_load_acquire(&NEXT(tail));

	if (tail == STUB(queue)) {
		if (!next)
			return NULL;
		queue->tail = next;
		tail = next;
		next = smp_load_acquire(&NEXT(next));
	}
	if (next) {
		queue->tail = next;
		atomic_dec(&queue->count);
		return tail;
	}
	if (tail != READ_ONCE(queue->head))
		return NULL;
	__wg_prev_queue_enqueue(queue, STUB(queue));
	next = smp_load_acquire(&NEXT(tail));
	if (next) {
		queue->tail = next;
		atomic_dec(&queue->count);
		return tail;
	}
	return NULL;
}

#undef NEXT
#undef STUB
