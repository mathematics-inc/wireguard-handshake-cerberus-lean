/* SPDX-License-Identifier: GPL-2.0 */
/*
 * Copyright (C) 2015-2019 Jason A. Donenfeld <Jason@zx2c4.com>. All Rights Reserved.
 */

#ifndef _WG_ALLOWEDIPS_H
#define _WG_ALLOWEDIPS_H

#include <linux/mutex.h>
#include <linux/ip.h>
#include <linux/ipv6.h>

struct wg_peer;















struct allowedips { _Alignas(8) unsigned char __dummy[24]; }; /* We pack the lower 2 bits of &root, but m68k only gives 16-bit alignment. */

















/* The ip input pointer should be __aligned(__alignof(u64))) */


/* These return a strong reference to a peer: */





#ifdef DEBUG

#endif




#endif /* _WG_ALLOWEDIPS_H */
