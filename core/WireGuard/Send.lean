import Program.Types

/-! The C functions of `linux/drivers/net/wireguard/send.c` that the program uses, in source order: one definition per function, named as in C, holding its Core procedure. -/

set_option maxHeartbeats 0
set_option maxRecDepth 100000

open Src

namespace WireGuard.Send

/--
```c
void wg_packet_purge_staged_packets(struct wg_peer *peer)
```

`linux/drivers/net/wireguard/send.c:333` -/
def wg_packet_purge_staged_packets : Procedure :=
  .Proc
    (rgr! «send.c» 333 1 340 2 333 6 333 36)
    (.some 3382)
    .BTy_unit
    [(addr! "peer" 3381, .BTy_object .OTy_pointer)] <| .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc (rg! «send.c» 334 1 340 2), .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «send.c» 335 2 335 48), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc (rg! «send.c» 335 2 335 47), .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
        .Esseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <| .CaseCtor .Ctuple <|
           [.Pattern [] (.CaseBase (.some (a! 52762), .BTy_loaded .OTy_pointer)),
            .Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 52763), .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 52764), .BTy_list .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 52765), .BTy_boolean)),
             .Pattern [] (.CaseBase (.some (a! 52766), .BTy_boolean))]],
           .Pattern [] (.CaseBase (.some (a! 52768), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
          [.Expr [] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 52761), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc (rg! «send.c» 335 2 335 14), .Aexpr] <| .Epure <| .Pexpr [] () <|
             .PEval <|
             .Vloaded
               (.LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "spin_lock_bh" 497)))))) <|
           .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
           [.Pexpr [] () (.PEsym (a! 52761)),
            .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 52761))))],
           .Expr
             [.Aloc (rgc! «send.c» 335 15 335 46 335 15),
              .Aexpr,
              .Astd "\xa76.5.3.2#3, sentence 5"] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 52769), .BTy_object .OTy_pointer)))
             (.Expr
               [.Aloc (rgc! «send.c» 335 16 335 46 335 41),
                .Aexpr,
                .Astd "\xa76.5.2.3#3, sentence 2"] <|
             .Esseq
               (.Pattern [] (.CaseBase (.some (a! 52770), .BTy_object .OTy_pointer)))
               (.Expr
                 [.Aloc (rgc! «send.c» 335 16 335 41 335 20),
                  .Aexpr,
                  .Astd "\xa76.5.2.3#4, sentence 2"] <|
               .Esseq
                 (.Pattern [] (.CaseBase (.some (a! 52771), .BTy_loaded .OTy_pointer)))
                 (.Expr [.Aloc (rg! «send.c» 335 16 335 20), .Aexpr] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 52775), .BTy_object .OTy_pointer)))
                   (.Expr
                     [.Aloc (rg! «send.c» 335 16 335 20), .Aexpr]
                     (.Epure (.Pexpr [] () (.PEsym (addr! "peer" 3381))))) <| .Expr [] <|
                 .Eaction <| .Paction .Pos <| .Action (rg! «send.c» 335 16 335 20) () <|
                 .Load0
                   (.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype
                     [.Aloc (rg! «queueing.h» 46 52 46 53), .Aloc (rg! «send.c» 333 52 333 53)]
                     (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
                   (.Pexpr [] () (.PEsym (a! 52775)))
                   .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52771))) <|
               [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEundef
                   (rgc! «send.c» 335 16 335 41 335 20)
                   (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                (.Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 52772), .BTy_object .OTy_pointer))],
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEmember_shift
                   (.Pexpr [] () (.PEsym (a! 52772)))
                   (c! "wg_peer" 1602)
                   (.Identifier (rg! «send.c» 335 22 335 41) "staged_packet_queue"))]) <|
             .Expr [] <| .Epure <| .Pexpr [] () <|
             .PEmember_shift
               (.Pexpr [] () (.PEsym (a! 52770)))
               (c! "sk_buff_head" 1252)
               (.Identifier (rg! «send.c» 335 42 335 46) "lock")) <|
           .Expr [] (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 52769))])))]) <|
        .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
          .PEop
            .OpEq
            (.Pexpr [] () <|
            .PEcall
              (.Sym (rt! "params_length" 18299737999929047716))
              [.Pexpr [] () (.PEsym (a! 52764))])
            (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#6, sentence 3"]
            ()
            (.PEundef (rg! «send.c» 335 2 335 47) .UB038_number_of_args)) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 52765))) <| .Pexpr [] () <|
          .PEnot <| .Pexpr [] () <|
          .PEare_compatible
            (.Pexpr
              []
              ()
              (.PEval (.Vctype (.Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] .Void0))))
            (.Pexpr [] () (.PEsym (a! 52763))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#9"]
            ()
            (.PEundef (rg! «send.c» 335 2 335 47) .UB041_function_not_compatible)) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some (sym.Symbol Src.digest 52767 (.SD_FunArg (rgc! «send.c» 335 15 335 46 335 15) 0)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 52776), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 52764)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
              .Pointer (.mk .false .false .false) <|
              .Ctype [.Aloc .unknown, .Atypedef (c! "spinlock_t" 491)] (.Struct (c! "spinlock" 490)))
              (.Pexpr [] () (.PEsym (a! 52776))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «send.c» 335 2 335 47) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 52777), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «send.c» 335 2 335 47) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
               .Pointer (.mk .false .false .false) <|
               .Ctype
                 [.Aloc .unknown, .Atypedef (c! "spinlock_t" 491)]
                 (.Struct (c! "spinlock" 490))])
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
              .Pointer (.mk .false .false .false) <|
              .Ctype [.Aloc .unknown, .Atypedef (c! "spinlock_t" 491)] (.Struct (c! "spinlock" 490)))
              (.PrefFunArg (rg! «send.c» 335 2 335 47) "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «send.c» 335 2 335 47) () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
              .Pointer (.mk .false .false .false) <|
              .Ctype [.Aloc .unknown, .Atypedef (c! "spinlock_t" 491)] (.Struct (c! "spinlock" 490)))
              (.Pexpr [] () (.PEsym (a! 52777)))
              (.Pexpr [] () (.PEsym (a! 52768)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52777)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 52778), .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
          .Eccall
            ()
            (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc (rg! «send.c» 335 2 335 14)] <|
            .Pointer (.mk .false .false .false) <| .Ctype [] <|
            .Function
              (.mk .false .false .false,
               .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] .Void0)
              [(.mk .false .false .false,
                (.Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
                 .Pointer (.mk .false .false .false) <|
                 .Ctype
                   [.Aloc .unknown, .Atypedef (c! "spinlock_t" 491)]
                   (.Struct (c! "spinlock" 490)),
                 .false))]
              .false)
            (.Pexpr [] () (.PEsym (a! 52762))) <|
          [.Pexpr [] () <|
           .PEsym
             (sym.Symbol Src.digest 52767 (.SD_FunArg (rgc! «send.c» 335 15 335 46 335 15) 0))]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «send.c» 335 2 335 47) () <|
          .Kill
            (.Static0 <| .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
            .Pointer
              (.mk .false .false .false)
              (.Ctype
                [.Aloc .unknown, .Atypedef (c! "spinlock_t" 491)]
                (.Struct (c! "spinlock" 490)))) <| .Pexpr [] () <| .PEsym <|
          sym.Symbol Src.digest 52767 (.SD_FunArg (rgc! «send.c» 335 15 335 46 335 15) 0))
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52778))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «send.c» 336 2 336 107), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc (rg! «send.c» 336 2 336 106), .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
        .Esseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <| .CaseCtor .Ctuple <|
           [.Pattern [] (.CaseBase (.some (a! 52780), .BTy_loaded .OTy_pointer)),
            .Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 52781), .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 52782), .BTy_list .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 52783), .BTy_boolean)),
             .Pattern [] (.CaseBase (.some (a! 52784), .BTy_boolean))]],
           .Pattern [] (.CaseBase (.some (a! 52787), .BTy_loaded .OTy_integer)),
           .Pattern [] (.CaseBase (.some (a! 52795), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
          [.Expr [] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 52779), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc (rg! «send.c» 336 2 336 17), .Aexpr] <| .Epure <| .Pexpr [] () <|
             .PEval <|
             .Vloaded
               (.LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "atomic_long_add" 433)))))) <|
           .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
           [.Pexpr [] () (.PEsym (a! 52779)),
            .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 52779))))],
           .Expr
             [.Aloc (rg! «send.c» 336 18 336 50), .Aexpr, .Avalue (.Ainteger (.Unsigned .Int_))] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 52794), .BTy_object .OTy_pointer)))
             (.Expr
               [.Aloc (rg! «send.c» 336 18 336 50), .Aexpr, .Astd "\xa76.5.2.3#3, sentence 2"] <|
             .Esseq
               (.Pattern [] (.CaseBase (.some (a! 52788), .BTy_object .OTy_pointer)))
               (.Expr
                 [.Aloc (rgc! «send.c» 336 19 336 44 336 23),
                  .Aexpr,
                  .Astd "\xa76.5.2.3#4, sentence 2"] <|
               .Esseq
                 (.Pattern [] (.CaseBase (.some (a! 52789), .BTy_loaded .OTy_pointer)))
                 (.Expr [.Aloc (rg! «send.c» 336 19 336 23), .Aexpr] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 52793), .BTy_object .OTy_pointer)))
                   (.Expr
                     [.Aloc (rg! «send.c» 336 19 336 23), .Aexpr]
                     (.Epure (.Pexpr [] () (.PEsym (addr! "peer" 3381))))) <| .Expr [] <|
                 .Eaction <| .Paction .Pos <| .Action (rg! «send.c» 336 19 336 23) () <|
                 .Load0
                   (.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype
                     [.Aloc (rg! «queueing.h» 46 52 46 53), .Aloc (rg! «send.c» 333 52 333 53)]
                     (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
                   (.Pexpr [] () (.PEsym (a! 52793)))
                   .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52789))) <|
               [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEundef
                   (rgc! «send.c» 336 19 336 44 336 23)
                   (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                (.Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 52790), .BTy_object .OTy_pointer))],
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEmember_shift
                   (.Pexpr [] () (.PEsym (a! 52790)))
                   (c! "wg_peer" 1602)
                   (.Identifier (rg! «send.c» 336 25 336 44) "staged_packet_queue"))]) <|
             .Expr [] <| .Epure <| .Pexpr [] () <|
             .PEmember_shift
               (.Pexpr [] () (.PEsym (a! 52788)))
               (c! "sk_buff_head" 1252)
               (.Identifier (rg! «send.c» 336 45 336 49) "qlen")) <| .Expr [] <| .Eaction <|
           .Paction .Pos <| .Action (rg! «send.c» 336 18 336 50) () <|
           .Load0
             (.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype [.Aloc .unknown, .Atypedef (c! "__u32" 3)] (.Basic (.Integer (.Unsigned .Int_))))
             (.Pexpr [] () (.PEsym (a! 52794)))
             .NA,
           .Expr
             [.Aloc (rgc! «send.c» 336 52 336 105 336 52),
              .Aexpr,
              .Astd "\xa76.5.3.2#3, sentence 5"] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 52796), .BTy_object .OTy_pointer)))
             (.Expr
               [.Aloc (rgc! «send.c» 336 53 336 105 336 92),
                .Aexpr,
                .Astd "\xa76.5.2.3#3, sentence 2"] <|
             .Esseq
               (.Pattern [] (.CaseBase (.some (a! 52797), .BTy_object .OTy_pointer)))
               (.Expr
                 [.Aloc (rgc! «send.c» 336 53 336 92 336 79),
                  .Aexpr,
                  .Astd "\xa76.5.2.3#3, sentence 2"] <|
               .Esseq
                 (.Pattern [] (.CaseBase (.some (a! 52798), .BTy_object .OTy_pointer)))
                 (.Expr
                   [.Aloc (rgc! «send.c» 336 53 336 79 336 72),
                    .Aexpr,
                    .Astd "\xa76.5.2.3#4, sentence 2"] <|
                 .Esseq
                   (.Pattern [] (.CaseBase (.some (a! 52799), .BTy_loaded .OTy_pointer)))
                   (.Expr [.Aloc (rg! «send.c» 336 53 336 72), .Aexpr] <|
                   .Ewseq
                     (.Pattern [] (.CaseBase (.some (a! 52813), .BTy_object .OTy_pointer)))
                     (.Expr
                       [.Aloc (rg! «send.c» 336 53 336 72),
                        .Aexpr,
                        .Astd "\xa76.5.2.3#4, sentence 2"] <|
                     .Esseq
                       (.Pattern [] (.CaseBase (.some (a! 52803), .BTy_loaded .OTy_pointer)))
                       (.Expr [.Aloc (rgc! «send.c» 336 54 336 66 336 58), .Aexpr] <|
                       .Ewseq
                         (.Pattern [] (.CaseBase (.some (a! 52812), .BTy_object .OTy_pointer)))
                         (.Expr
                           [.Aloc (rgc! «send.c» 336 54 336 66 336 58),
                            .Aexpr,
                            .Astd "\xa76.5.2.3#4, sentence 2"] <|
                         .Esseq
                           (.Pattern [] (.CaseBase (.some (a! 52807), .BTy_loaded .OTy_pointer)))
                           (.Expr [.Aloc (rg! «send.c» 336 54 336 58), .Aexpr] <|
                           .Ewseq
                             (.Pattern [] (.CaseBase (.some (a! 52811), .BTy_object .OTy_pointer)))
                             (.Expr
                               [.Aloc (rg! «send.c» 336 54 336 58), .Aexpr]
                               (.Epure (.Pexpr [] () (.PEsym (addr! "peer" 3381))))) <| .Expr [] <|
                           .Eaction <| .Paction .Pos <| .Action (rg! «send.c» 336 54 336 58) () <|
                           .Load0
                             (.Pexpr [] () <| .PEval <| .Vctype <|
                             .Ctype
                               [.Aloc (rg! «queueing.h» 46 52 46 53),
                                .Aloc (rg! «send.c» 333 52 333 53)]
                               (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
                             (.Pexpr [] () (.PEsym (a! 52811)))
                             .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52807))) <|
                         [(.Pattern
                             []
                             (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                           .Expr [] <| .Epure <| .Pexpr [] () <|
                           .PEundef
                             (rgc! «send.c» 336 54 336 66 336 58)
                             (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                          (.Pattern [] <|
                           .CaseCtor
                             .Cspecified
                             [.Pattern [] (.CaseBase (.some (a! 52808), .BTy_object .OTy_pointer))],
                           .Expr [] <| .Epure <| .Pexpr [] () <|
                           .PEmember_shift
                             (.Pexpr [] () (.PEsym (a! 52808)))
                             (c! "wg_peer" 1602)
                             (.Identifier (rg! «send.c» 336 60 336 66) "device"))]) <| .Expr [] <|
                       .Eaction <| .Paction .Pos <|
                       .Action (rgc! «send.c» 336 54 336 66 336 58) () <|
                       .Load0
                         (.Pexpr [] () <| .PEval <| .Vctype <|
                         .Ctype
                           [.Aloc (rg! "linux/drivers/net/wireguard/peer.h" 38 19 38 20)]
                           (.Pointer (.mk .false .false .false) Ty.struct_wg_device))
                         (.Pexpr [] () (.PEsym (a! 52812)))
                         .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52803))) <|
                     [(.Pattern
                         []
                         (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                       .Expr [] <| .Epure <| .Pexpr [] () <|
                       .PEundef
                         (rg! «send.c» 336 53 336 72)
                         (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                      (.Pattern [] <|
                       .CaseCtor
                         .Cspecified
                         [.Pattern [] (.CaseBase (.some (a! 52804), .BTy_object .OTy_pointer))],
                       .Expr [] <| .Epure <| .Pexpr [] () <|
                       .PEmember_shift
                         (.Pexpr [] () (.PEsym (a! 52804)))
                         (c! "wg_device" 1732)
                         (.Identifier (rg! «send.c» 336 68 336 71) "dev"))]) <| .Expr [] <|
                   .Eaction <| .Paction .Pos <| .Action (rg! «send.c» 336 53 336 72) () <|
                   .Load0
                     (.Pexpr [] () <| .PEval <| .Vctype <|
                     .Ctype
                       [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 41 20 41 21)]
                       (.Pointer (.mk .false .false .false) Ty.struct_net_device))
                     (.Pexpr [] () (.PEsym (a! 52813)))
                     .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52799))) <|
                 [(.Pattern
                     []
                     (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                   .Expr [] <| .Epure <| .Pexpr [] () <|
                   .PEundef
                     (rgc! «send.c» 336 53 336 79 336 72)
                     (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                  (.Pattern [] <|
                   .CaseCtor
                     .Cspecified
                     [.Pattern [] (.CaseBase (.some (a! 52800), .BTy_object .OTy_pointer))],
                   .Expr [] <| .Epure <| .Pexpr [] () <|
                   .PEmember_shift
                     (.Pexpr [] () (.PEsym (a! 52800)))
                     (c! "net_device" 590)
                     (.Identifier (rg! «send.c» 336 74 336 79) "stats"))]) <| .Expr [] <| .Epure <|
               .Pexpr [] () <|
               .PEmember_shift
                 (.Pexpr [] () (.PEsym (a! 52798)))
                 (c! "net_device_stats" 1859)
                 (.Identifier (rg! «send.c» 336 80 336 92) "u_tx_dropped")) <| .Expr [] <| .Epure <|
             .Pexpr [] () <|
             .PEmember_shift
               (.Pexpr [] () (.PEsym (a! 52797)))
               (sym.Symbol Src.digest 1867 (.SD_unnamed_tag .unknown))
               (.Identifier (rg! «send.c» 336 93 336 105) "__tx_dropped")) <|
           .Expr [] (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 52796))])))]) <|
        .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
          .PEop
            .OpEq
            (.Pexpr [] () <|
            .PEcall
              (.Sym (rt! "params_length" 18299737999929047716))
              [.Pexpr [] () (.PEsym (a! 52782))])
            (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#6, sentence 3"]
            ()
            (.PEundef (rg! «send.c» 336 2 336 106) .UB038_number_of_args)) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 52783))) <| .Pexpr [] () <|
          .PEnot <| .Pexpr [] () <|
          .PEare_compatible
            (.Pexpr [] () (.PEval (.Vctype (.Ctype [.Aloc .unknown] .Void0))))
            (.Pexpr [] () (.PEsym (a! 52781))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#9"]
            ()
            (.PEundef (rg! «send.c» 336 2 336 106) .UB041_function_not_compatible)) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some (sym.Symbol Src.digest 52785 (.SD_FunArg (rg! «send.c» 336 18 336 50) 0)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 52814), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 52782)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr
                []
                ()
                (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Long)))))))
              (.Pexpr [] () (.PEsym (a! 52814))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «send.c» 336 2 336 106) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 52815), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «send.c» 336 2 336 106) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr
                 []
                 ()
                 (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Long))))))])
              (.Pexpr
                []
                ()
                (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Long)))))))
              (.PrefFunArg (rg! «send.c» 336 2 336 106) "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «send.c» 336 2 336 106) () <|
            .Store0
              .false
              (.Pexpr
                []
                ()
                (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Long)))))))
              (.Pexpr [] () (.PEsym (a! 52815)))
              (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
              [.Pexpr
                 []
                 ()
                 (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Long)))))),
               .Pexpr [] () (.PEsym (a! 52787))])
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52815)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some
             (sym.Symbol Src.digest 52786 (.SD_FunArg (rgc! «send.c» 336 52 336 105 336 52) 1)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 52816), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 52782)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
              .Pointer (.mk .false .false .false) <|
              .Ctype
                [.Aloc .unknown, .Atypedef (c! "atomic_long_t" 400)]
                (.Struct (sym.Symbol Src.digest 41 (.SD_unnamed_tag .unknown))))
              (.Pexpr [] () (.PEsym (a! 52816))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «send.c» 336 2 336 106) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 52817), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «send.c» 336 2 336 106) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
               .Pointer (.mk .false .false .false) <|
               .Ctype
                 [.Aloc .unknown, .Atypedef (c! "atomic_long_t" 400)]
                 (.Struct (sym.Symbol Src.digest 41 (.SD_unnamed_tag .unknown)))])
              (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
              .Pointer (.mk .false .false .false) <|
              .Ctype
                [.Aloc .unknown, .Atypedef (c! "atomic_long_t" 400)]
                (.Struct (sym.Symbol Src.digest 41 (.SD_unnamed_tag .unknown))))
              (.PrefFunArg (rg! «send.c» 336 2 336 106) "fa5a43434dcb33dc130b30cb8faeddf7" 1)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «send.c» 336 2 336 106) () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
              .Pointer (.mk .false .false .false) <|
              .Ctype
                [.Aloc .unknown, .Atypedef (c! "atomic_long_t" 400)]
                (.Struct (sym.Symbol Src.digest 41 (.SD_unnamed_tag .unknown))))
              (.Pexpr [] () (.PEsym (a! 52817)))
              (.Pexpr [] () (.PEsym (a! 52795)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52817)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 52818), .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
          .Eccall
            ()
            (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc (rg! «send.c» 336 2 336 17)] <|
            .Pointer (.mk .false .false .false) <| .Ctype [] <|
            .Function
              (.mk .false .false .false, .Ctype [.Aloc .unknown] .Void0)
              [(.mk .false .false .false,
                (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Long))), .false)),
               (.mk .false .false .false,
                (.Ctype [.Aloc .unknown] <| .Pointer (.mk .false .false .false) <|
                 .Ctype
                   [.Aloc .unknown, .Atypedef (c! "atomic_long_t" 400)]
                   (.Struct (sym.Symbol Src.digest 41 (.SD_unnamed_tag .unknown))),
                 .false))]
              .false)
            (.Pexpr [] () (.PEsym (a! 52780))) <|
          [.Pexpr
             []
             ()
             (.PEsym (sym.Symbol Src.digest 52785 (.SD_FunArg (rg! «send.c» 336 18 336 50) 0))),
           .Pexpr [] () <|
           .PEsym
             (sym.Symbol Src.digest 52786 (.SD_FunArg (rgc! «send.c» 336 52 336 105 336 52) 1))]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit])))
          (.Expr [] <| .Eunseq <|
          [.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «send.c» 336 2 336 106) () <|
           .Kill (.Static0 (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Long))))) <|
           .Pexpr
             []
             ()
             (.PEsym (sym.Symbol Src.digest 52785 (.SD_FunArg (rg! «send.c» 336 18 336 50) 0))),
           .Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «send.c» 336 2 336 106) () <|
           .Kill
             (.Static0 <| .Ctype [.Aloc .unknown] <| .Pointer (.mk .false .false .false) <|
             .Ctype
               [.Aloc .unknown, .Atypedef (c! "atomic_long_t" 400)]
               (.Struct (sym.Symbol Src.digest 41 (.SD_unnamed_tag .unknown)))) <| .Pexpr [] () <|
           .PEsym
             (sym.Symbol Src.digest 52786 (.SD_FunArg (rgc! «send.c» 336 52 336 105 336 52) 1))])
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52818))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «send.c» 338 2 338 48), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc (rg! «send.c» 338 2 338 47), .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
        .Esseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <| .CaseCtor .Ctuple <|
           [.Pattern [] (.CaseBase (.some (a! 52820), .BTy_loaded .OTy_pointer)),
            .Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 52821), .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 52822), .BTy_list .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 52823), .BTy_boolean)),
             .Pattern [] (.CaseBase (.some (a! 52824), .BTy_boolean))]],
           .Pattern [] (.CaseBase (.some (a! 52826), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
          [.Expr [] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 52819), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc (rg! «send.c» 338 2 338 19), .Aexpr] <| .Epure <| .Pexpr [] () <|
             .PEval <| .Vloaded <|
             .LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "__skb_queue_purge" 1397))))) <|
           .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
           [.Pexpr [] () (.PEsym (a! 52819)),
            .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 52819))))],
           .Expr
             [.Aloc (rgc! «send.c» 338 20 338 46 338 20),
              .Aexpr,
              .Astd "\xa76.5.3.2#3, sentence 5"] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 52827), .BTy_object .OTy_pointer)))
             (.Expr
               [.Aloc (rgc! «send.c» 338 21 338 46 338 25),
                .Aexpr,
                .Astd "\xa76.5.2.3#4, sentence 2"] <|
             .Esseq
               (.Pattern [] (.CaseBase (.some (a! 52828), .BTy_loaded .OTy_pointer)))
               (.Expr [.Aloc (rg! «send.c» 338 21 338 25), .Aexpr] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 52832), .BTy_object .OTy_pointer)))
                 (.Expr
                   [.Aloc (rg! «send.c» 338 21 338 25), .Aexpr]
                   (.Epure (.Pexpr [] () (.PEsym (addr! "peer" 3381))))) <| .Expr [] <| .Eaction <|
               .Paction .Pos <| .Action (rg! «send.c» 338 21 338 25) () <|
               .Load0
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype
                   [.Aloc (rg! «queueing.h» 46 52 46 53), .Aloc (rg! «send.c» 333 52 333 53)]
                   (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
                 (.Pexpr [] () (.PEsym (a! 52832)))
                 .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52828))) <|
             [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
               .Expr [] <| .Epure <| .Pexpr [] () <|
               .PEundef
                 (rgc! «send.c» 338 21 338 46 338 25)
                 (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
              (.Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 52829), .BTy_object .OTy_pointer))],
               .Expr [] <| .Epure <| .Pexpr [] () <|
               .PEmember_shift
                 (.Pexpr [] () (.PEsym (a! 52829)))
                 (c! "wg_peer" 1602)
                 (.Identifier (rg! «send.c» 338 27 338 46) "staged_packet_queue"))]) <|
           .Expr [] (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 52827))])))]) <|
        .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
          .PEop
            .OpEq
            (.Pexpr [] () <|
            .PEcall
              (.Sym (rt! "params_length" 18299737999929047716))
              [.Pexpr [] () (.PEsym (a! 52822))])
            (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#6, sentence 3"]
            ()
            (.PEundef (rg! «send.c» 338 2 338 47) .UB038_number_of_args)) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 52823))) <| .Pexpr [] () <|
          .PEnot <| .Pexpr [] () <|
          .PEare_compatible
            (.Pexpr [] () (.PEval (.Vctype (.Ctype [.Aloc .unknown] .Void0))))
            (.Pexpr [] () (.PEsym (a! 52821))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#9"]
            ()
            (.PEundef (rg! «send.c» 338 2 338 47) .UB041_function_not_compatible)) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some (sym.Symbol Src.digest 52825 (.SD_FunArg (rgc! «send.c» 338 20 338 46 338 20) 0)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 52833), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 52822)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_sk_buff_head))
              (.Pexpr [] () (.PEsym (a! 52833))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «send.c» 338 2 338 47) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 52834), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «send.c» 338 2 338 47) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_sk_buff_head)])
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_sk_buff_head))
              (.PrefFunArg (rg! «send.c» 338 2 338 47) "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «send.c» 338 2 338 47) () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_sk_buff_head))
              (.Pexpr [] () (.PEsym (a! 52834)))
              (.Pexpr [] () (.PEsym (a! 52826)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52834)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 52835), .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
          .Eccall
            ()
            (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc (rg! «send.c» 338 2 338 19)] <|
            .Pointer (.mk .false .false .false) <| .Ctype [] <|
            .Function
              (.mk .false .false .false, .Ctype [.Aloc .unknown] .Void0)
              [(.mk .false .false .false,
                (.Ctype
                   [.Aloc .unknown]
                   (.Pointer (.mk .false .false .false) Ty.struct_sk_buff_head),
                 .false))]
              .false)
            (.Pexpr [] () (.PEsym (a! 52820))) <|
          [.Pexpr [] () <|
           .PEsym
             (sym.Symbol Src.digest 52825 (.SD_FunArg (rgc! «send.c» 338 20 338 46 338 20) 0))]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «send.c» 338 2 338 47) () <|
          .Kill
            (.Static0
              (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_sk_buff_head))) <|
          .Pexpr [] () <|
          .PEsym (sym.Symbol Src.digest 52825 (.SD_FunArg (rgc! «send.c» 338 20 338 46 338 20) 0)))
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52835))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «send.c» 339 2 339 50), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc (rg! «send.c» 339 2 339 49), .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
        .Esseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <| .CaseCtor .Ctuple <|
           [.Pattern [] (.CaseBase (.some (a! 52837), .BTy_loaded .OTy_pointer)),
            .Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 52838), .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 52839), .BTy_list .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 52840), .BTy_boolean)),
             .Pattern [] (.CaseBase (.some (a! 52841), .BTy_boolean))]],
           .Pattern [] (.CaseBase (.some (a! 52843), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
          [.Expr [] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 52836), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc (rg! «send.c» 339 2 339 16), .Aexpr] <| .Epure <| .Pexpr [] () <|
             .PEval <|
             .Vloaded
               (.LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "spin_unlock_bh" 499)))))) <|
           .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
           [.Pexpr [] () (.PEsym (a! 52836)),
            .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 52836))))],
           .Expr
             [.Aloc (rgc! «send.c» 339 17 339 48 339 17),
              .Aexpr,
              .Astd "\xa76.5.3.2#3, sentence 5"] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 52844), .BTy_object .OTy_pointer)))
             (.Expr
               [.Aloc (rgc! «send.c» 339 18 339 48 339 43),
                .Aexpr,
                .Astd "\xa76.5.2.3#3, sentence 2"] <|
             .Esseq
               (.Pattern [] (.CaseBase (.some (a! 52845), .BTy_object .OTy_pointer)))
               (.Expr
                 [.Aloc (rgc! «send.c» 339 18 339 43 339 22),
                  .Aexpr,
                  .Astd "\xa76.5.2.3#4, sentence 2"] <|
               .Esseq
                 (.Pattern [] (.CaseBase (.some (a! 52846), .BTy_loaded .OTy_pointer)))
                 (.Expr [.Aloc (rg! «send.c» 339 18 339 22), .Aexpr] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 52850), .BTy_object .OTy_pointer)))
                   (.Expr
                     [.Aloc (rg! «send.c» 339 18 339 22), .Aexpr]
                     (.Epure (.Pexpr [] () (.PEsym (addr! "peer" 3381))))) <| .Expr [] <|
                 .Eaction <| .Paction .Pos <| .Action (rg! «send.c» 339 18 339 22) () <|
                 .Load0
                   (.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype
                     [.Aloc (rg! «queueing.h» 46 52 46 53), .Aloc (rg! «send.c» 333 52 333 53)]
                     (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
                   (.Pexpr [] () (.PEsym (a! 52850)))
                   .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52846))) <|
               [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEundef
                   (rgc! «send.c» 339 18 339 43 339 22)
                   (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                (.Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 52847), .BTy_object .OTy_pointer))],
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEmember_shift
                   (.Pexpr [] () (.PEsym (a! 52847)))
                   (c! "wg_peer" 1602)
                   (.Identifier (rg! «send.c» 339 24 339 43) "staged_packet_queue"))]) <|
             .Expr [] <| .Epure <| .Pexpr [] () <|
             .PEmember_shift
               (.Pexpr [] () (.PEsym (a! 52845)))
               (c! "sk_buff_head" 1252)
               (.Identifier (rg! «send.c» 339 44 339 48) "lock")) <|
           .Expr [] (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 52844))])))]) <|
        .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
          .PEop
            .OpEq
            (.Pexpr [] () <|
            .PEcall
              (.Sym (rt! "params_length" 18299737999929047716))
              [.Pexpr [] () (.PEsym (a! 52839))])
            (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#6, sentence 3"]
            ()
            (.PEundef (rg! «send.c» 339 2 339 49) .UB038_number_of_args)) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 52840))) <| .Pexpr [] () <|
          .PEnot <| .Pexpr [] () <|
          .PEare_compatible
            (.Pexpr
              []
              ()
              (.PEval (.Vctype (.Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] .Void0))))
            (.Pexpr [] () (.PEsym (a! 52838))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#9"]
            ()
            (.PEundef (rg! «send.c» 339 2 339 49) .UB041_function_not_compatible)) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some (sym.Symbol Src.digest 52842 (.SD_FunArg (rgc! «send.c» 339 17 339 48 339 17) 0)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 52851), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 52839)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
              .Pointer (.mk .false .false .false) <|
              .Ctype [.Aloc .unknown, .Atypedef (c! "spinlock_t" 491)] (.Struct (c! "spinlock" 490)))
              (.Pexpr [] () (.PEsym (a! 52851))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «send.c» 339 2 339 49) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 52852), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «send.c» 339 2 339 49) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
               .Pointer (.mk .false .false .false) <|
               .Ctype
                 [.Aloc .unknown, .Atypedef (c! "spinlock_t" 491)]
                 (.Struct (c! "spinlock" 490))])
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
              .Pointer (.mk .false .false .false) <|
              .Ctype [.Aloc .unknown, .Atypedef (c! "spinlock_t" 491)] (.Struct (c! "spinlock" 490)))
              (.PrefFunArg (rg! «send.c» 339 2 339 49) "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «send.c» 339 2 339 49) () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
              .Pointer (.mk .false .false .false) <|
              .Ctype [.Aloc .unknown, .Atypedef (c! "spinlock_t" 491)] (.Struct (c! "spinlock" 490)))
              (.Pexpr [] () (.PEsym (a! 52852)))
              (.Pexpr [] () (.PEsym (a! 52843)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52852)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 52853), .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
          .Eccall
            ()
            (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc (rg! «send.c» 339 2 339 16)] <|
            .Pointer (.mk .false .false .false) <| .Ctype [] <|
            .Function
              (.mk .false .false .false,
               .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] .Void0)
              [(.mk .false .false .false,
                (.Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
                 .Pointer (.mk .false .false .false) <|
                 .Ctype
                   [.Aloc .unknown, .Atypedef (c! "spinlock_t" 491)]
                   (.Struct (c! "spinlock" 490)),
                 .false))]
              .false)
            (.Pexpr [] () (.PEsym (a! 52837))) <|
          [.Pexpr [] () <|
           .PEsym
             (sym.Symbol Src.digest 52842 (.SD_FunArg (rgc! «send.c» 339 17 339 48 339 17) 0))]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «send.c» 339 2 339 49) () <|
          .Kill
            (.Static0 <| .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
            .Pointer
              (.mk .false .false .false)
              (.Ctype
                [.Aloc .unknown, .Atypedef (c! "spinlock_t" 491)]
                (.Struct (c! "spinlock" 490)))) <| .Pexpr [] () <| .PEsym <|
          sym.Symbol Src.digest 52842 (.SD_FunArg (rgc! «send.c» 339 17 339 48 339 17) 0))
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52853))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc (rgr! «send.c» 333 1 340 2 333 6 333 36)] <|
  .Esave
    (c! "ret_52760" 52760, .BTy_unit)
    [(a! 52854,
      ((.BTy_unit,
        .some <|
        (.Ctype [.Aloc (rg! «queueing.h» 46 1 46 5), .Aloc (rg! «send.c» 333 1 333 5)] .Void0,
         .By_value)),
       .Pexpr [] () (.PEval .Vunit)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52854)))))

end WireGuard.Send
