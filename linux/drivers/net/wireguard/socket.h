/* SPDX-License-Identifier: GPL-2.0 */
/*
 * Copyright (C) 2015-2019 Jason A. Donenfeld <Jason@zx2c4.com>. All Rights Reserved.
 */

#ifndef _WG_SOCKET_H
#define _WG_SOCKET_H

#include <linux/netdevice.h>
#include <linux/udp.h>
#include <linux/if_vlan.h>
#include <linux/if_ether.h>




















#if defined(CONFIG_DYNAMIC_DEBUG) || defined(DEBUG)






#else
#define net_dbg_skb_ratelimited(fmt, skb, ...)
#endif

#endif /* _WG_SOCKET_H */
