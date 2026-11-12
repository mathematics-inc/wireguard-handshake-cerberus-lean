import Program.Helpers

/-! C types used often by the program, named after their C spelling (`ptr_` for a pointer to, `array_N_` for an array of). -/

set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace Ty

def unsigned_long : ctype :=
  .Ctype [] (.Basic (.Integer (.Unsigned .Long)))

def int : ctype :=
  .Ctype [] (.Basic (.Integer (.Signed .Int_)))

def unsigned_int : ctype :=
  .Ctype [] (.Basic (.Integer (.Unsigned .Int_)))

def unsigned_long_long : ctype :=
  .Ctype [] (.Basic (.Integer (.Unsigned .LongLong)))

def char : ctype :=
  .Ctype [] (.Basic (.Integer .Char0))

def long : ctype :=
  .Ctype [] (.Basic (.Integer (.Signed .Long)))

def struct_list_head : ctype :=
  .Ctype [] (.Struct (c! "list_head" 45))

def size_t : ctype :=
  .Ctype [] (.Basic (.Integer .Size_t))

def struct_hlist_node : ctype :=
  .Ctype [] (.Struct (c! "hlist_node" 47))

def struct_mutex : ctype :=
  .Ctype [] (.Struct (c! "mutex" 507))

def struct_kref : ctype :=
  .Ctype [] (.Struct (c! "kref" 570))

def struct_callback_head : ctype :=
  .Ctype [] (.Struct (c! "callback_head" 48))

def struct_rw_semaphore : ctype :=
  .Ctype [] (.Struct (c! "rw_semaphore" 602))

def struct_timespec64 : ctype :=
  .Ctype [] (.Struct (c! "timespec64" 488))

def struct_local_lock : ctype :=
  .Ctype [] (.Struct (c! "local_lock" 799))

def struct_page : ctype :=
  .Ctype [] (.Struct (c! "page" 340))

def struct_kmem_cache_args : ctype :=
  .Ctype [] (.Struct (c! "kmem_cache_args" 818))

def struct_kmem_cache : ctype :=
  .Ctype [] (.Struct (c! "kmem_cache" 817))

def struct_wgm_cache : ctype :=
  .Ctype [] (.Struct (c! "wgm_cache" 4879))

def struct_hlist_head : ctype :=
  .Ctype [] (.Struct (c! "hlist_head" 46))

def struct_chacha_state : ctype :=
  .Ctype [] (.Struct (c! "chacha_state" 3544))

def struct_blake2s_ctx : ctype :=
  .Ctype [] (.Struct (c! "blake2s_ctx" 1014))

def struct_nf_conntrack : ctype :=
  .Ctype [] (.Struct (c! "nf_conntrack" 1112))

def struct_sk_buff : ctype :=
  .Ctype [] (.Struct (c! "sk_buff" 1059))

def struct_sock : ctype :=
  .Ctype [] (.Struct (c! "sock" 932))

def struct_sk_buff_head : ctype :=
  .Ctype [] (.Struct (c! "sk_buff_head" 1252))

def struct_skb_ext : ctype :=
  .Ctype [] (.Struct (c! "skb_ext" 1251))

def struct_dst_entry : ctype :=
  .Ctype [] (.Struct (c! "dst_entry" 1329))

def struct_dst_cache : ctype :=
  .Ctype [] (.Struct (c! "dst_cache" 2205))

def struct_dst_cache_pcpu : ctype :=
  .Ctype [] (.Struct (c! "dst_cache_pcpu" 2206))

def struct_cpumask : ctype :=
  .Ctype [] (.Struct (c! "cpumask" 371))

def struct_poly1305_desc_ctx : ctype :=
  .Ctype [] (.Struct (c! "poly1305_desc_ctx" 3623))

def struct_poly1305_block_state : ctype :=
  .Ctype [] (.Struct (c! "poly1305_block_state" 3618))

def struct_poly1305_state : ctype :=
  .Ctype [] (.Struct (c! "poly1305_state" 3610))

def struct_poly1305_core_key : ctype :=
  .Ctype [] (.Struct (c! "poly1305_core_key" 3609))

def struct_wgm_object : ctype :=
  .Ctype [] (.Struct (c! "wgm_object" 5498))

def struct_wgm_deferred : ctype :=
  .Ctype [] (.Struct (c! "wgm_deferred" 5502))

def struct_skb_shared_info : ctype :=
  .Ctype [] (.Struct (c! "skb_shared_info" 1272))

def struct_wgt_timer : ctype :=
  .Ctype [] (.Struct (c! "wgt_timer" 5700))

def struct_wgt_wq : ctype :=
  .Ctype [] (.Struct (c! "wgt_wq" 5701))

def struct_wgt_item : ctype :=
  .Ctype [] (.Struct (c! "wgt_item" 5702))

def struct_timer_list : ctype :=
  .Ctype [] (.Struct (c! "timer_list" 589))

def struct_work_struct : ctype :=
  .Ctype [] (.Struct (c! "work_struct" 592))

def struct_workqueue_struct : ctype :=
  .Ctype [] (.Struct (c! "workqueue_struct" 591))

def struct_net_device : ctype :=
  .Ctype [] (.Struct (c! "net_device" 590))

def struct_wg_device : ctype :=
  .Ctype [] (.Struct (c! "wg_device" 1732))

def struct_lock_class_key : ctype :=
  .Ctype [] (.Struct (c! "lock_class_key" 111))

def struct_pubkey_hashtable : ctype :=
  .Ctype [] (.Struct (c! "pubkey_hashtable" 1603))

def struct_index_hashtable : ctype :=
  .Ctype [] (.Struct (c! "index_hashtable" 1627))

def struct_noise_static_identity : ctype :=
  .Ctype [] (.Struct (c! "noise_static_identity" 1694))

def struct_wg_peer : ctype :=
  .Ctype [] (.Struct (c! "wg_peer" 1602))

def struct_noise_handshake : ctype :=
  .Ctype [] (.Struct (c! "noise_handshake" 1707))

def struct_prev_queue : ctype :=
  .Ctype [] (.Struct (c! "prev_queue" 2191))

def struct_noise_keypairs : ctype :=
  .Ctype [] (.Struct (c! "noise_keypairs" 1693))

def struct_wgh_service : ctype :=
  .Ctype [] (.Struct (c! "wgh_service" 5854))

def struct_message_handshake_initiation : ctype :=
  .Ctype [] (.Struct (c! "message_handshake_initiation" 1562))

def struct_message_handshake_response : ctype :=
  .Ctype [] (.Struct (c! "message_handshake_response" 1582))

def struct_noise_keypair : ctype :=
  .Ctype [] (.Struct (c! "noise_keypair" 1692))

def void : ctype :=
  .Ctype [] .Void0

def ptr_void : ctype :=
  .Ctype [] (.Pointer (.mk .false .false .false) Ty.void)

def struct_index_hashtable_entry : ctype :=
  .Ctype [] (.Struct (c! "index_hashtable_entry" 1661))

def struct_noise_symmetric_key : ctype :=
  .Ctype [] (.Struct (c! "noise_symmetric_key" 1688))

def long_long : ctype :=
  .Ctype [] (.Basic (.Integer (.Signed .LongLong)))

def struct_sockaddr_inet : ctype :=
  .Ctype [] (.Struct (c! "sockaddr_inet" 1081))

def struct_netdev_hw_addr_list : ctype :=
  .Ctype [] (.Struct (c! "netdev_hw_addr_list" 1890))

def struct_net : ctype :=
  .Ctype [] (.Struct (c! "net" 931))

def struct_crypt_queue : ctype :=
  .Ctype [] (.Struct (c! "crypt_queue" 2184))

def struct_poly1305_key : ctype :=
  .Ctype [] (.Struct (c! "poly1305_key" 3601))

def array_2_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 2))

def array_3_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 3))

def array_4_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 4))

def array_7_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 7))

def array_26_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 26))

def array_30_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 30))

def array_21_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 21))

def array_51_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 51))

def array_35_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 35))

def array_19_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 19))

def array_47_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 47))

def array_39_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 39))

def array_27_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 27))

def array_6_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 6))

def array_16_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 16))

def array_12_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 12))

def array_8_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 8))

def array_9_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 9))

def array_55_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 55))

def array_24_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 24))

def array_11_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 11))

def array_28_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 28))

def array_15_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 15))

def array_23_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 23))

def array_22_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 22))

def array_31_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 31))

def array_49_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 49))

def array_32_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 32))

def array_14_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 14))

def array_29_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 29))

def array_34_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 34))

def array_5_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 5))

def array_44_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 44))

def array_20_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 20))

def array_33_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 33))

def array_53_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 53))

def array_46_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 46))

def array_38_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 38))

def array_1_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 1))

def array_10_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 10))

def array_18_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 18))

def array_50_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 50))

def array_40_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 40))

def array_48_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 48))

def array_36_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 36))

def array_37_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 37))

def array_13_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 13))

def array_45_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 45))

def array_17_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 17))

def array_25_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 25))

def array_43_char : ctype :=
  .Ctype [] (.Array0 Ty.char (.some 43))

end Ty
