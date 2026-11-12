import Program.Types

/-! The C functions of `linux/drivers/net/wireguard/queueing.c` that the program uses, in source order: one definition per function, named as in C, holding its Core procedure. -/

set_option maxHeartbeats 0
set_option maxRecDepth 100000

open Src

namespace WireGuard.Queueing

/--
```c
void wg_prev_queue_init(struct prev_queue *queue)
```

`linux/drivers/net/wireguard/queueing.c:53` -/
def wg_prev_queue_init : Procedure :=
  .Proc
    (rgr! «queueing.c» 53 1 64 2 53 6 53 24)
    (.some 3384)
    .BTy_unit
    [(addr! "queue" 3383, .BTy_object .OTy_pointer)] <| .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc (rg! «queueing.c» 54 1 64 2), .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «queueing.c» 55 2 55 74), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc (rgc! «queueing.c» 55 2 55 73 55 60), .Aexpr, .Astd "\xa76.5.16#3, sentence 4"] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 52613), .BTy_object .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 52629), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
          [.Expr
             [.Aloc (rg! «queueing.c» 55 2 55 59), .Aexpr, .Astd "\xa76.5.2.3#3, sentence 2"] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 52614), .BTy_object .OTy_pointer)))
             (.Expr
               [.Aloc (rgc! «queueing.c» 55 3 55 53 55 46),
                .Aexpr,
                .Astd "\xa76.5.2.3#3, sentence 2"] <|
             .Esseq
               (.Pattern [] (.CaseBase (.some (a! 52615), .BTy_object .OTy_pointer)))
               (.Expr
                 [.Aloc (rgc! «queueing.c» 55 3 55 46 55 38),
                  .Aexpr,
                  .Astd "\xa76.5.2.3#4, sentence 2"] <|
               .Esseq
                 (.Pattern [] (.CaseBase (.some (a! 52616), .BTy_loaded .OTy_pointer)))
                 (.Expr [.Aloc (rg! «queueing.c» 55 3 55 38), .Aexpr, .Astd "\xa76.5.4"] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 52620), .BTy_loaded .OTy_pointer)))
                   (.Expr
                     [.Aloc (rgc! «queueing.c» 55 23 55 36 55 23),
                      .Aexpr,
                      .Astd "\xa76.5.3.2#3, sentence 5"] <|
                   .Ewseq
                     (.Pattern [] (.CaseBase (.some (a! 52622), .BTy_object .OTy_pointer)))
                     (.Expr
                       [.Aloc (rgc! «queueing.c» 55 24 55 36 55 29),
                        .Aexpr,
                        .Astd "\xa76.5.2.3#4, sentence 2"] <|
                     .Esseq
                       (.Pattern [] (.CaseBase (.some (a! 52623), .BTy_loaded .OTy_pointer)))
                       (.Expr [.Aloc (rg! «queueing.c» 55 24 55 29), .Aexpr] <|
                       .Ewseq
                         (.Pattern [] (.CaseBase (.some (a! 52627), .BTy_object .OTy_pointer)))
                         (.Expr
                           [.Aloc (rg! «queueing.c» 55 24 55 29), .Aexpr]
                           (.Epure (.Pexpr [] () (.PEsym (addr! "queue" 3383))))) <| .Expr [] <|
                       .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 55 24 55 29) () <|
                       .Load0
                         (.Pexpr [] () <| .PEval <| .Vctype <|
                         .Ctype
                           [.Aloc (rg! «queueing.h» 131 43 131 44),
                            .Aloc (rg! «queueing.c» 53 43 53 44)]
                           (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
                         (.Pexpr [] () (.PEsym (a! 52627)))
                         .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52623))) <|
                     [(.Pattern
                         []
                         (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                       .Expr [] <| .Epure <| .Pexpr [] () <|
                       .PEundef
                         (rgc! «queueing.c» 55 24 55 36 55 29)
                         (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                      (.Pattern [] <|
                       .CaseCtor
                         .Cspecified
                         [.Pattern [] (.CaseBase (.some (a! 52624), .BTy_object .OTy_pointer))],
                       .Expr [] <| .Epure <| .Pexpr [] () <|
                       .PEmember_shift
                         (.Pexpr [] () (.PEsym (a! 52624)))
                         (c! "prev_queue" 2191)
                         (.Identifier (rg! «queueing.c» 55 31 55 36) "empty"))]) <|
                   .Expr
                     []
                     (.Epure
                       (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 52622))])))) <|
                 .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52620))) <|
                 [(.Pattern [] <|
                   .CaseCtor
                     .Cspecified
                     [.Pattern [] (.CaseBase (.some (a! 52621), .BTy_object .OTy_pointer))],
                   .Expr [] <|
                   .Ewseq
                     (.Pattern [] (.CaseBase (.some (a! 52628), .BTy_boolean)))
                     (.Expr [] <| .Ememop .PtrWellAligned <|
                     [.Pexpr [] () (.PEval (.Vctype Ty.struct_sk_buff)),
                      .Pexpr [] () (.PEsym (a! 52621))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
                   .PEctor .Cspecified <|
                   [.Pexpr [] () <|
                    .PEif (.Pexpr [] () (.PEsym (a! 52628))) (.Pexpr [] () (.PEsym (a! 52621))) <|
                    .Pexpr
                      []
                      ()
                      (.PEundef
                        (rg! «queueing.c» 55 3 55 38)
                        .UB025_misaligned_pointer_conversion)]),
                  (.Pattern
                     []
                     (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                   .Expr [] <| .Epure <| .Pexpr [] () <|
                   .PEundef (rg! «queueing.c» 55 3 55 38) .UB025_misaligned_pointer_conversion)]) <|
               .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52616))) <|
               [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEundef
                   (rgc! «queueing.c» 55 3 55 46 55 38)
                   (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                (.Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 52617), .BTy_object .OTy_pointer))],
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEmember_shift
                   (.Pexpr [] () (.PEsym (a! 52617)))
                   (c! "sk_buff" 1059)
                   (.Identifier (rg! «queueing.c» 55 40 55 46) "u_node"))]) <| .Expr [] <| .Epure <|
             .Pexpr [] () <|
             .PEmember_shift
               (.Pexpr [] () (.PEsym (a! 52615)))
               (sym.Symbol Src.digest 1280 (.SD_unnamed_tag .unknown))
               (.Identifier (rg! «queueing.c» 55 47 55 53) "s_node")) <| .Expr [] <| .Epure <|
           .Pexpr [] () <|
           .PEmember_shift
             (.Pexpr [] () (.PEsym (a! 52614)))
             (sym.Symbol Src.digest 1281 (.SD_unnamed_tag .unknown))
             (.Identifier (rg! «queueing.c» 55 54 55 58) "prev"),
           .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Cspecified <|
           [.Pexpr
              []
              ()
              (.PEval (.Vobject (.OVpointer (.PV .Prov_none (.PVnull Ty.struct_sk_buff)))))]]) <|
        .Expr [] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
          .Action (rgc! «queueing.c» 55 2 55 73 55 60) () <|
          .Store0
            .false
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
            (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 52613)))
            (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52629)))
            .NA)
          (.Expr [] (.Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52629))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «queueing.c» 56 2 56 64), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc (rgc! «queueing.c» 56 2 56 63 56 14), .Aexpr, .Astd "\xa76.5.16#3, sentence 4"] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 52630), .BTy_object .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 52652), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
          [.Expr
             [.Aloc (rgc! «queueing.c» 56 2 56 13 56 7),
              .Aexpr,
              .Astd "\xa76.5.2.3#4, sentence 2"] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 52631), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc (rg! «queueing.c» 56 2 56 7), .Aexpr] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 52635), .BTy_object .OTy_pointer)))
               (.Expr
                 [.Aloc (rg! «queueing.c» 56 2 56 7), .Aexpr]
                 (.Epure (.Pexpr [] () (.PEsym (addr! "queue" 3383))))) <| .Expr [] <| .Eaction <|
             .Paction .Pos <| .Action (rg! «queueing.c» 56 2 56 7) () <|
             .Load0
               (.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc (rg! «queueing.h» 131 43 131 44), .Aloc (rg! «queueing.c» 53 43 53 44)]
                 (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
               (.Pexpr [] () (.PEsym (a! 52635)))
               .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52631))) <|
           [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
             .Expr [] <| .Epure <| .Pexpr [] () <|
             .PEundef
               (rgc! «queueing.c» 56 2 56 13 56 7)
               (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
            (.Pattern [] <|
             .CaseCtor
               .Cspecified
               [.Pattern [] (.CaseBase (.some (a! 52632), .BTy_object .OTy_pointer))],
             .Expr [] <| .Epure <| .Pexpr [] () <|
             .PEmember_shift
               (.Pexpr [] () (.PEsym (a! 52632)))
               (c! "prev_queue" 2191)
               (.Identifier (rg! «queueing.c» 56 9 56 13) "head"))],
           .Expr
             [.Aloc (rgc! «queueing.c» 56 16 56 63 56 28),
              .Aexpr,
              .Astd "\xa76.5.16#3, sentence 4"] <|
           .Ewseq
             (.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] (.CaseBase (.some (a! 52636), .BTy_object .OTy_pointer)),
              .Pattern [] (.CaseBase (.some (a! 52651), .BTy_loaded .OTy_pointer))])
             (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
             [.Expr
                [.Aloc (rgc! «queueing.c» 56 16 56 27 56 21),
                 .Aexpr,
                 .Astd "\xa76.5.2.3#4, sentence 2"] <|
              .Esseq
                (.Pattern [] (.CaseBase (.some (a! 52637), .BTy_loaded .OTy_pointer)))
                (.Expr [.Aloc (rg! «queueing.c» 56 16 56 21), .Aexpr] <|
                .Ewseq
                  (.Pattern [] (.CaseBase (.some (a! 52641), .BTy_object .OTy_pointer)))
                  (.Expr
                    [.Aloc (rg! «queueing.c» 56 16 56 21), .Aexpr]
                    (.Epure (.Pexpr [] () (.PEsym (addr! "queue" 3383))))) <| .Expr [] <|
                .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 56 16 56 21) () <|
                .Load0
                  (.Pexpr [] () <| .PEval <| .Vctype <|
                  .Ctype
                    [.Aloc (rg! «queueing.h» 131 43 131 44),
                     .Aloc (rg! «queueing.c» 53 43 53 44)]
                    (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
                  (.Pexpr [] () (.PEsym (a! 52641)))
                  .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52637))) <|
              [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                .Expr [] <| .Epure <| .Pexpr [] () <|
                .PEundef
                  (rgc! «queueing.c» 56 16 56 27 56 21)
                  (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
               (.Pattern [] <|
                .CaseCtor
                  .Cspecified
                  [.Pattern [] (.CaseBase (.some (a! 52638), .BTy_object .OTy_pointer))],
                .Expr [] <| .Epure <| .Pexpr [] () <|
                .PEmember_shift
                  (.Pexpr [] () (.PEsym (a! 52638)))
                  (c! "prev_queue" 2191)
                  (.Identifier (rg! «queueing.c» 56 23 56 27) "tail"))],
              .Expr [.Aloc (rg! «queueing.c» 56 30 56 63), .Aexpr, .Astd "\xa76.5.4"] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 52642), .BTy_loaded .OTy_pointer)))
                (.Expr
                  [.Aloc (rgc! «queueing.c» 56 49 56 62 56 49),
                   .Aexpr,
                   .Astd "\xa76.5.3.2#3, sentence 5"] <|
                .Ewseq
                  (.Pattern [] (.CaseBase (.some (a! 52644), .BTy_object .OTy_pointer)))
                  (.Expr
                    [.Aloc (rgc! «queueing.c» 56 50 56 62 56 55),
                     .Aexpr,
                     .Astd "\xa76.5.2.3#4, sentence 2"] <|
                  .Esseq
                    (.Pattern [] (.CaseBase (.some (a! 52645), .BTy_loaded .OTy_pointer)))
                    (.Expr [.Aloc (rg! «queueing.c» 56 50 56 55), .Aexpr] <|
                    .Ewseq
                      (.Pattern [] (.CaseBase (.some (a! 52649), .BTy_object .OTy_pointer)))
                      (.Expr
                        [.Aloc (rg! «queueing.c» 56 50 56 55), .Aexpr]
                        (.Epure (.Pexpr [] () (.PEsym (addr! "queue" 3383))))) <| .Expr [] <|
                    .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 56 50 56 55) () <|
                    .Load0
                      (.Pexpr [] () <| .PEval <| .Vctype <|
                      .Ctype
                        [.Aloc (rg! «queueing.h» 131 43 131 44),
                         .Aloc (rg! «queueing.c» 53 43 53 44)]
                        (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
                      (.Pexpr [] () (.PEsym (a! 52649)))
                      .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52645))) <|
                  [(.Pattern
                      []
                      (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                    .Expr [] <| .Epure <| .Pexpr [] () <|
                    .PEundef
                      (rgc! «queueing.c» 56 50 56 62 56 55)
                      (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                   (.Pattern [] <|
                    .CaseCtor
                      .Cspecified
                      [.Pattern [] (.CaseBase (.some (a! 52646), .BTy_object .OTy_pointer))],
                    .Expr [] <| .Epure <| .Pexpr [] () <|
                    .PEmember_shift
                      (.Pexpr [] () (.PEsym (a! 52646)))
                      (c! "prev_queue" 2191)
                      (.Identifier (rg! «queueing.c» 56 57 56 62) "empty"))]) <|
                .Expr
                  []
                  (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 52644))])))) <|
              .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52642))) <|
              [(.Pattern [] <|
                .CaseCtor
                  .Cspecified
                  [.Pattern [] (.CaseBase (.some (a! 52643), .BTy_object .OTy_pointer))],
                .Expr [] <|
                .Ewseq
                  (.Pattern [] (.CaseBase (.some (a! 52650), .BTy_boolean)))
                  (.Expr [] <| .Ememop .PtrWellAligned <|
                  [.Pexpr [] () (.PEval (.Vctype Ty.struct_sk_buff)),
                   .Pexpr [] () (.PEsym (a! 52643))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
                .PEctor .Cspecified <|
                [.Pexpr [] () <|
                 .PEif (.Pexpr [] () (.PEsym (a! 52650))) (.Pexpr [] () (.PEsym (a! 52643))) <|
                 .Pexpr
                   []
                   ()
                   (.PEundef (rg! «queueing.c» 56 30 56 63) .UB025_misaligned_pointer_conversion)]),
               (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                .Expr [] <| .Epure <| .Pexpr [] () <|
                .PEundef (rg! «queueing.c» 56 30 56 63) .UB025_misaligned_pointer_conversion)]]) <|
           .Expr [] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.none, .BTy_unit)))
             (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
             .Action (rgc! «queueing.c» 56 16 56 63 56 28) () <|
             .Store0
               .false
               (.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 24 35 25)]
                 (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
               (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 52636)))
               (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52651)))
               .NA)
             (.Expr
               []
               (.Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52651)))))]) <|
        .Expr [] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
          .Action (rgc! «queueing.c» 56 2 56 63 56 14) () <|
          .Store0
            .false
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype
              [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
              (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
            (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 52630)))
            (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52652)))
            .NA)
          (.Expr [] (.Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52652))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «queueing.c» 57 2 57 30), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc (rgc! «queueing.c» 57 2 57 29 57 16), .Aexpr, .Astd "\xa76.5.16#3, sentence 4"] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 52653), .BTy_object .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 52659), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
          [.Expr
             [.Aloc (rgc! «queueing.c» 57 2 57 15 57 7),
              .Aexpr,
              .Astd "\xa76.5.2.3#4, sentence 2"] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 52654), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc (rg! «queueing.c» 57 2 57 7), .Aexpr] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 52658), .BTy_object .OTy_pointer)))
               (.Expr
                 [.Aloc (rg! «queueing.c» 57 2 57 7), .Aexpr]
                 (.Epure (.Pexpr [] () (.PEsym (addr! "queue" 3383))))) <| .Expr [] <| .Eaction <|
             .Paction .Pos <| .Action (rg! «queueing.c» 57 2 57 7) () <|
             .Load0
               (.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc (rg! «queueing.h» 131 43 131 44), .Aloc (rg! «queueing.c» 53 43 53 44)]
                 (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
               (.Pexpr [] () (.PEsym (a! 52658)))
               .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52654))) <|
           [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
             .Expr [] <| .Epure <| .Pexpr [] () <|
             .PEundef
               (rgc! «queueing.c» 57 2 57 15 57 7)
               (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
            (.Pattern [] <|
             .CaseCtor
               .Cspecified
               [.Pattern [] (.CaseBase (.some (a! 52655), .BTy_object .OTy_pointer))],
             .Expr [] <| .Epure <| .Pexpr [] () <|
             .PEmember_shift
               (.Pexpr [] () (.PEsym (a! 52655)))
               (c! "prev_queue" 2191)
               (.Identifier (rg! «queueing.c» 57 9 57 15) "peeked"))],
           .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Cspecified <|
           [.Pexpr
              []
              ()
              (.PEval (.Vobject (.OVpointer (.PV .Prov_none (.PVnull Ty.struct_sk_buff)))))]]) <|
        .Expr [] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
          .Action (rgc! «queueing.c» 57 2 57 29 57 16) () <|
          .Store0
            .false
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype
              [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 31 35 32)]
              (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
            (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 52653)))
            (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52659)))
            .NA)
          (.Expr [] (.Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52659))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «queueing.c» 58 2 58 31), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc (rg! «queueing.c» 58 2 58 30), .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
        .Esseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <| .CaseCtor .Ctuple <|
           [.Pattern [] (.CaseBase (.some (a! 52661), .BTy_loaded .OTy_pointer)),
            .Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 52662), .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 52663), .BTy_list .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 52664), .BTy_boolean)),
             .Pattern [] (.CaseBase (.some (a! 52665), .BTy_boolean))]],
           .Pattern [] (.CaseBase (.some (a! 52668), .BTy_loaded .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 52675), .BTy_loaded .OTy_integer))])
          (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
          [.Expr [] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 52660), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc (rg! «queueing.c» 58 2 58 12), .Aexpr] <| .Epure <| .Pexpr [] () <|
             .PEval <|
             .Vloaded
               (.LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "atomic_set" 406)))))) <|
           .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
           [.Pexpr [] () (.PEsym (a! 52660)),
            .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 52660))))],
           .Expr
             [.Aloc (rgc! «queueing.c» 58 13 58 26 58 13),
              .Aexpr,
              .Astd "\xa76.5.3.2#3, sentence 5"] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 52669), .BTy_object .OTy_pointer)))
             (.Expr
               [.Aloc (rgc! «queueing.c» 58 14 58 26 58 19),
                .Aexpr,
                .Astd "\xa76.5.2.3#4, sentence 2"] <|
             .Esseq
               (.Pattern [] (.CaseBase (.some (a! 52670), .BTy_loaded .OTy_pointer)))
               (.Expr [.Aloc (rg! «queueing.c» 58 14 58 19), .Aexpr] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 52674), .BTy_object .OTy_pointer)))
                 (.Expr
                   [.Aloc (rg! «queueing.c» 58 14 58 19), .Aexpr]
                   (.Epure (.Pexpr [] () (.PEsym (addr! "queue" 3383))))) <| .Expr [] <| .Eaction <|
               .Paction .Pos <| .Action (rg! «queueing.c» 58 14 58 19) () <|
               .Load0
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype
                   [.Aloc (rg! «queueing.h» 131 43 131 44),
                    .Aloc (rg! «queueing.c» 53 43 53 44)]
                   (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
                 (.Pexpr [] () (.PEsym (a! 52674)))
                 .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52670))) <|
             [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
               .Expr [] <| .Epure <| .Pexpr [] () <|
               .PEundef
                 (rgc! «queueing.c» 58 14 58 26 58 19)
                 (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
              (.Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 52671), .BTy_object .OTy_pointer))],
               .Expr [] <| .Epure <| .Pexpr [] () <|
               .PEmember_shift
                 (.Pexpr [] () (.PEsym (a! 52671)))
                 (c! "prev_queue" 2191)
                 (.Identifier (rg! «queueing.c» 58 21 58 26) "count"))]) <|
           .Expr [] (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 52669))]))),
           .Expr
             [.Aloc (rg! «queueing.c» 58 28 58 29), .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
           .Epure (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
        .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
          .PEop
            .OpEq
            (.Pexpr [] () <|
            .PEcall
              (.Sym (rt! "params_length" 18299737999929047716))
              [.Pexpr [] () (.PEsym (a! 52663))])
            (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#6, sentence 3"]
            ()
            (.PEundef (rg! «queueing.c» 58 2 58 30) .UB038_number_of_args)) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 52664))) <| .Pexpr [] () <|
          .PEnot <| .Pexpr [] () <|
          .PEare_compatible
            (.Pexpr [] () (.PEval (.Vctype (.Ctype [.Aloc .unknown] .Void0))))
            (.Pexpr [] () (.PEsym (a! 52662))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#9"]
            ()
            (.PEundef (rg! «queueing.c» 58 2 58 30) .UB041_function_not_compatible)) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some
             (sym.Symbol Src.digest 52666 (.SD_FunArg (rgc! «queueing.c» 58 13 58 26 58 13) 0)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 52676), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 52663)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
              .Pointer (.mk .false .false .false) <|
              .Ctype
                [.Aloc .unknown, .Atypedef (c! "atomic_t" 40)]
                (.Struct (sym.Symbol Src.digest 36 (.SD_unnamed_tag .unknown))))
              (.Pexpr [] () (.PEsym (a! 52676))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «queueing.c» 58 2 58 30) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 52677), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 58 2 58 30) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
               .Pointer (.mk .false .false .false) <|
               .Ctype
                 [.Aloc .unknown, .Atypedef (c! "atomic_t" 40)]
                 (.Struct (sym.Symbol Src.digest 36 (.SD_unnamed_tag .unknown)))])
              (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
              .Pointer (.mk .false .false .false) <|
              .Ctype
                [.Aloc .unknown, .Atypedef (c! "atomic_t" 40)]
                (.Struct (sym.Symbol Src.digest 36 (.SD_unnamed_tag .unknown))))
              (.PrefFunArg (rg! «queueing.c» 58 2 58 30) "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 58 2 58 30) () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
              .Pointer (.mk .false .false .false) <|
              .Ctype
                [.Aloc .unknown, .Atypedef (c! "atomic_t" 40)]
                (.Struct (sym.Symbol Src.digest 36 (.SD_unnamed_tag .unknown))))
              (.Pexpr [] () (.PEsym (a! 52677)))
              (.Pexpr [] () (.PEsym (a! 52668)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52677)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some (sym.Symbol Src.digest 52667 (.SD_FunArg (rg! «queueing.c» 58 28 58 29) 1)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 52678), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 52663)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr
                []
                ()
                (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))))
              (.Pexpr [] () (.PEsym (a! 52678))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «queueing.c» 58 2 58 30) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 52679), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 58 2 58 30) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr
                 []
                 ()
                 (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_))))))])
              (.Pexpr
                []
                ()
                (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))))
              (.PrefFunArg (rg! «queueing.c» 58 2 58 30) "fa5a43434dcb33dc130b30cb8faeddf7" 1)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 58 2 58 30) () <|
            .Store0
              .false
              (.Pexpr
                []
                ()
                (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))))
              (.Pexpr [] () (.PEsym (a! 52679)))
              (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
              [.Pexpr
                 []
                 ()
                 (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))),
               .Pexpr [] () (.PEsym (a! 52675))])
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52679)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 52680), .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#1, bullet 1"] <|
          .Eccall
            ()
            (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc (rg! «queueing.c» 58 2 58 12)] <|
            .Pointer (.mk .false .false .false) <| .Ctype [] <|
            .Function
              (.mk .false .false .false, .Ctype [.Aloc .unknown] .Void0)
              [(.mk .false .false .false,
                (.Ctype [.Aloc .unknown] <| .Pointer (.mk .false .false .false) <|
                 .Ctype
                   [.Aloc .unknown, .Atypedef (c! "atomic_t" 40)]
                   (.Struct (sym.Symbol Src.digest 36 (.SD_unnamed_tag .unknown))),
                 .false)),
               (.mk .false .false .false,
                (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_))), .false))]
              .false)
            (.Pexpr [] () (.PEsym (a! 52661))) <|
          [.Pexpr [] () <|
           .PEsym
             (sym.Symbol Src.digest 52666 (.SD_FunArg (rgc! «queueing.c» 58 13 58 26 58 13) 0)),
           .Pexpr
             []
             ()
             (.PEsym (sym.Symbol Src.digest 52667 (.SD_FunArg (rg! «queueing.c» 58 28 58 29) 1)))]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit])))
          (.Expr [] <| .Eunseq <|
          [.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 58 2 58 30) () <|
           .Kill
             (.Static0 <| .Ctype [.Aloc .unknown] <| .Pointer (.mk .false .false .false) <|
             .Ctype
               [.Aloc .unknown, .Atypedef (c! "atomic_t" 40)]
               (.Struct (sym.Symbol Src.digest 36 (.SD_unnamed_tag .unknown)))) <| .Pexpr [] () <|
           .PEsym
             (sym.Symbol Src.digest 52666 (.SD_FunArg (rgc! «queueing.c» 58 13 58 26 58 13) 0)),
           .Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 58 2 58 30) () <|
           .Kill (.Static0 (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_))))) <|
           .Pexpr
             []
             ()
             (.PEsym (sym.Symbol Src.digest 52667 (.SD_FunArg (rg! «queueing.c» 58 28 58 29) 1)))])
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52680))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «queueing.c» 59 2 59 600), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc (rg! «queueing.c» 59 2 59 599), .Aexpr, .Astd "\xa76.5.4"] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.some (a! 52681), .BTy_loaded .OTy_integer)))
          (.Expr
            [.Aloc (rg! «queueing.c» 59 9 59 598), .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
          .Ewseq
            (.Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 52683), .BTy_loaded .OTy_integer)),
             .Pattern [] (.CaseBase (.some (a! 52684), .BTy_loaded .OTy_integer))])
            (.Expr [] <| .Eunseq <|
            [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
             .Epure
               (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))),
             .Expr
               [.Aloc (rg! «queueing.c» 59 11 59 597),
                .Aexpr,
                .Avalue (.Ainteger (.Signed .Int_)),
                .Astd "6.5.14#3",
                .Astd "6.5.14#4",
                .Aexpr,
                .Avalue (.Ainteger (.Signed .Int_))] <|
             .Esseq
               (.Pattern [] (.CaseBase (.some (a! 52723), .BTy_loaded .OTy_integer)))
               (.Expr
                 [.Aloc (rgc! «queueing.c» 59 12 59 302 59 168),
                  .Aexpr,
                  .Avalue (.Ainteger (.Signed .Int_))] <|
               .Ewseq
                 (.Pattern [] <| .CaseCtor .Ctuple <|
                 [.Pattern [] (.CaseBase (.some (a! 52688), .BTy_loaded .OTy_integer)),
                  .Pattern [] (.CaseBase (.some (a! 52689), .BTy_loaded .OTy_integer))])
                 (.Expr [] <| .Eunseq <|
                 [.Expr
                    [.Aloc (rgc! «queueing.c» 59 12 59 302 59 168),
                     .Aexpr,
                     .Avalue (.Ainteger (.Signed .Int_))] <|
                  .Ewseq
                    (.Pattern [] <| .CaseCtor .Ctuple <|
                    [.Pattern [] (.CaseBase (.some (a! 52693), .BTy_loaded .OTy_integer)),
                     .Pattern [] (.CaseBase (.some (a! 52694), .BTy_loaded .OTy_integer))])
                    (.Expr [] <| .Eunseq <|
                    [.Expr
                       [.Aloc (rgc! «queueing.c» 59 12 59 302 59 168),
                        .Aexpr,
                        .Avalue (.Ainteger (.Signed .Int_))] <|
                     .Ewseq
                       (.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern [] (.CaseBase (.some (a! 52698), .BTy_loaded .OTy_integer)),
                        .Pattern [] (.CaseBase (.some (a! 52699), .BTy_loaded .OTy_integer))])
                       (.Expr [] <| .Eunseq <|
                       [.Expr
                          [.Aloc (rg! «queueing.c» 59 12 59 167),
                           .Aexpr,
                           .Avalue (.Ainteger .Size_t),
                           .Astd "\xa76.5.6"] <|
                        .Ewseq
                          (.Pattern [] <| .CaseCtor .Ctuple <|
                          [.Pattern [] (.CaseBase (.some (a! 52703), .BTy_loaded .OTy_integer)),
                           .Pattern [] (.CaseBase (.some (a! 52704), .BTy_loaded .OTy_integer))])
                          (.Expr [] <| .Eunseq <|
                          [.Expr
                             [.Aloc (rgc! «queueing.c» 59 13 59 103 59 46),
                              .Aexpr,
                              .Avalue (.Ainteger .Size_t),
                              .Astd "\xa76.5.6"] <|
                           .Ewseq
                             (.Pattern [] <| .CaseCtor .Ctuple <|
                             [.Pattern [] (.CaseBase (.some (a! 52708), .BTy_loaded .OTy_integer)),
                              .Pattern [] (.CaseBase (.some (a! 52709), .BTy_loaded .OTy_integer))])
                             (.Expr [] <| .Eunseq <|
                             [.Expr
                                [.Aloc (rg! «queueing.c» 59 13 59 45),
                                 .Aexpr,
                                 .Avalue (.Ainteger .Size_t)] <| .Epure <|
                              .Pexpr
                                []
                                ()
                                (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))),
                              .Expr
                                [.Aloc (rg! «queueing.c» 59 48 59 103),
                                 .Aexpr,
                                 .Avalue (.Ainteger .Size_t)] <| .Epure <|
                              .Pexpr
                                []
                                ()
                                (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                           .Expr [] <| .Epure <| .Pexpr [] () <|
                           .PEcase
                             (.Pexpr [] () <|
                             .PEctor
                               .Ctuple
                               [.Pexpr [] () (.PEsym (a! 52708)), .Pexpr [] () (.PEsym (a! 52709))]) <|
                           [(.Pattern [] <| .CaseCtor .Ctuple <|
                             [.Pattern [] <|
                              .CaseCtor
                                .Cspecified
                                [.Pattern [] (.CaseBase (.some (a! 52710), .BTy_object .OTy_integer))],
                              .Pattern [] <|
                              .CaseCtor
                                .Cspecified
                                [.Pattern [] (.CaseBase (.some (a! 52711), .BTy_object .OTy_integer))]],
                             .Pexpr [] () <| .PEctor .Cspecified <|
                             [.Pexpr [.Astd "\xa76.5.6#5"] () <|
                              .PEwrapI
                                .Size_t
                                .IOpAdd
                                (.Pexpr
                                  [.Astd "\xa76.5.6#4"]
                                  ()
                                  (.PEconv_int .Size_t (.Pexpr [] () (.PEsym (a! 52710))))) <|
                              .Pexpr
                                [.Astd "\xa76.5.6#4"]
                                ()
                                (.PEconv_int .Size_t (.Pexpr [] () (.PEsym (a! 52711))))]),
                            (.Pattern [] <|
                             .CaseBase
                               (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                             .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                             .Ctype
                               [.Aloc (rgc! «queueing.c» 59 13 59 103 59 46)]
                               (.Basic (.Integer .Size_t)))],
                           .Expr
                             [.Aloc (rg! «queueing.c» 59 106 59 166),
                              .Aexpr,
                              .Avalue (.Ainteger .Size_t)] <| .Epure <|
                           .Pexpr
                             []
                             ()
                             (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                        .Expr [] <| .Epure <| .Pexpr [] () <|
                        .PEcase
                          (.Pexpr [] () <|
                          .PEctor
                            .Ctuple
                            [.Pexpr [] () (.PEsym (a! 52703)), .Pexpr [] () (.PEsym (a! 52704))]) <|
                        [(.Pattern [] <| .CaseCtor .Ctuple <|
                          [.Pattern [] <|
                           .CaseCtor
                             .Cspecified
                             [.Pattern [] (.CaseBase (.some (a! 52705), .BTy_object .OTy_integer))],
                           .Pattern [] <|
                           .CaseCtor
                             .Cspecified
                             [.Pattern [] (.CaseBase (.some (a! 52706), .BTy_object .OTy_integer))]],
                          .Pexpr [] () <| .PEctor .Cspecified <|
                          [.Pexpr [.Astd "\xa76.5.6#5"] () <|
                           .PEwrapI
                             .Size_t
                             .IOpAdd
                             (.Pexpr
                               [.Astd "\xa76.5.6#4"]
                               ()
                               (.PEconv_int .Size_t (.Pexpr [] () (.PEsym (a! 52705))))) <|
                           .Pexpr
                             [.Astd "\xa76.5.6#4"]
                             ()
                             (.PEconv_int .Size_t (.Pexpr [] () (.PEsym (a! 52706))))]),
                         (.Pattern [] <|
                          .CaseBase
                            (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                          .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                          .Ctype
                            [.Aloc (rg! «queueing.c» 59 12 59 167)]
                            (.Basic (.Integer .Size_t)))],
                        .Expr
                          [.Aloc (rgc! «queueing.c» 59 171 59 302 59 266),
                           .Aexpr,
                           .Avalue (.Ainteger .Size_t),
                           .Astd "\xa76.5.6"] <|
                        .Ewseq
                          (.Pattern [] <| .CaseCtor .Ctuple <|
                          [.Pattern [] (.CaseBase (.some (a! 52718), .BTy_loaded .OTy_integer)),
                           .Pattern [] (.CaseBase (.some (a! 52719), .BTy_loaded .OTy_integer))])
                          (.Expr [] <| .Eunseq <|
                          [.Expr
                             [.Aloc (rg! «queueing.c» 59 171 59 265),
                              .Aexpr,
                              .Avalue (.Ainteger .Size_t),
                              .Astd "\xa76.5.6"] <|
                           .Ewseq
                             (.Pattern [] <| .CaseCtor .Ctuple <|
                             [.Pattern [] (.CaseBase (.some (a! 52713), .BTy_loaded .OTy_integer)),
                              .Pattern [] (.CaseBase (.some (a! 52714), .BTy_loaded .OTy_integer))])
                             (.Expr [] <| .Eunseq <|
                             [.Expr
                                [.Aloc (rg! «queueing.c» 59 172 59 206),
                                 .Aexpr,
                                 .Avalue (.Ainteger .Size_t)] <| .Epure <|
                              .Pexpr
                                []
                                ()
                                (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 24))))),
                              .Expr
                                [.Aloc (rg! «queueing.c» 59 209 59 264),
                                 .Aexpr,
                                 .Avalue (.Ainteger .Size_t)] <| .Epure <|
                              .Pexpr
                                []
                                ()
                                (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                           .Expr [] <| .Epure <| .Pexpr [] () <|
                           .PEcase
                             (.Pexpr [] () <|
                             .PEctor
                               .Ctuple
                               [.Pexpr [] () (.PEsym (a! 52713)), .Pexpr [] () (.PEsym (a! 52714))]) <|
                           [(.Pattern [] <| .CaseCtor .Ctuple <|
                             [.Pattern [] <|
                              .CaseCtor
                                .Cspecified
                                [.Pattern [] (.CaseBase (.some (a! 52715), .BTy_object .OTy_integer))],
                              .Pattern [] <|
                              .CaseCtor
                                .Cspecified
                                [.Pattern [] (.CaseBase (.some (a! 52716), .BTy_object .OTy_integer))]],
                             .Pexpr [] () <| .PEctor .Cspecified <|
                             [.Pexpr [.Astd "\xa76.5.6#5"] () <|
                              .PEwrapI
                                .Size_t
                                .IOpAdd
                                (.Pexpr
                                  [.Astd "\xa76.5.6#4"]
                                  ()
                                  (.PEconv_int .Size_t (.Pexpr [] () (.PEsym (a! 52715))))) <|
                              .Pexpr
                                [.Astd "\xa76.5.6#4"]
                                ()
                                (.PEconv_int .Size_t (.Pexpr [] () (.PEsym (a! 52716))))]),
                            (.Pattern [] <|
                             .CaseBase
                               (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                             .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                             .Ctype
                               [.Aloc (rg! «queueing.c» 59 171 59 265)]
                               (.Basic (.Integer .Size_t)))],
                           .Expr
                             [.Aloc (rg! «queueing.c» 59 268 59 302),
                              .Aexpr,
                              .Avalue (.Ainteger .Size_t)] <| .Epure <|
                           .Pexpr
                             []
                             ()
                             (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 24)))))]) <|
                        .Expr [] <| .Epure <| .Pexpr [] () <|
                        .PEcase
                          (.Pexpr [] () <|
                          .PEctor
                            .Ctuple
                            [.Pexpr [] () (.PEsym (a! 52718)), .Pexpr [] () (.PEsym (a! 52719))]) <|
                        [(.Pattern [] <| .CaseCtor .Ctuple <|
                          [.Pattern [] <|
                           .CaseCtor
                             .Cspecified
                             [.Pattern [] (.CaseBase (.some (a! 52720), .BTy_object .OTy_integer))],
                           .Pattern [] <|
                           .CaseCtor
                             .Cspecified
                             [.Pattern [] (.CaseBase (.some (a! 52721), .BTy_object .OTy_integer))]],
                          .Pexpr [] () <| .PEctor .Cspecified <|
                          [.Pexpr [.Astd "\xa76.5.5#6"] () <|
                           .PEwrapI
                             .Size_t
                             .IOpSub
                             (.Pexpr [.Astd "\xa76.5.6#4"] () <|
                             .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                             [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                              .Pexpr [] () (.PEsym (a! 52720))]) <|
                           .Pexpr [.Astd "\xa76.5.6#4"] () <|
                           .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                           [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                            .Pexpr [] () (.PEsym (a! 52721))]]),
                         (.Pattern [] <|
                          .CaseBase
                            (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                          .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                          .Ctype
                            [.Aloc (rgc! «queueing.c» 59 171 59 302 59 266)]
                            (.Basic (.Integer .Size_t)))]]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
                     .PEcase
                       (.Pexpr [] () <|
                       .PEctor
                         .Ctuple
                         [.Pexpr [] () (.PEsym (a! 52698)), .Pexpr [] () (.PEsym (a! 52699))]) <|
                     [(.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern [] <|
                        .CaseCtor
                          .Cspecified
                          [.Pattern [] (.CaseBase (.some (a! 52700), .BTy_object .OTy_integer))],
                        .Pattern [] <|
                        .CaseCtor
                          .Cspecified
                          [.Pattern [] (.CaseBase (.some (a! 52701), .BTy_object .OTy_integer))]],
                       .Pexpr [.Astd "\xa76.5.9#3"] () <|
                       .PEif
                         (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <| .PEnot <| .Pexpr [] () <|
                         .PEop
                           .OpEq
                           (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                           .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                           [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                            .Pexpr [] () (.PEsym (a! 52700))]) <|
                         .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                         .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                         [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                          .Pexpr [] () (.PEsym (a! 52701))])
                         (.Pexpr [] () <|
                         .PEctor
                           .Cspecified
                           [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                       .Pexpr [] () <|
                       .PEctor
                         .Cspecified
                         [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                      (.Pattern [] <|
                       .CaseBase
                         (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                       .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                       .Ctype
                         [.Aloc (rgc! «queueing.c» 59 12 59 302 59 168)]
                         (.Basic (.Integer (.Signed .Int_))))],
                     .Expr
                       [.Aloc (rgc! «queueing.c» 59 12 59 302 59 168),
                        .Aexpr,
                        .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                     .Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                  .Expr [] <| .Epure <| .Pexpr [] () <|
                  .PEcase
                    (.Pexpr [] () <|
                    .PEctor
                      .Ctuple
                      [.Pexpr [] () (.PEsym (a! 52693)), .Pexpr [] () (.PEsym (a! 52694))]) <|
                  [(.Pattern [] <| .CaseCtor .Ctuple <|
                    [.Pattern [] <|
                     .CaseCtor
                       .Cspecified
                       [.Pattern [] (.CaseBase (.some (a! 52695), .BTy_object .OTy_integer))],
                     .Pattern [] <|
                     .CaseCtor
                       .Cspecified
                       [.Pattern [] (.CaseBase (.some (a! 52696), .BTy_object .OTy_integer))]],
                    .Pexpr [.Astd "\xa76.5.9#3"] () <|
                    .PEif
                      (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                      .PEop
                        .OpEq
                        (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                        .PEcall
                          (.Sym (rt! "conv_int" 15837442492999787586))
                          [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52695))]) <|
                      .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                      .PEcall
                        (.Sym (rt! "conv_int" 15837442492999787586))
                        [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52696))])
                      (.Pexpr [] () <|
                      .PEctor
                        .Cspecified
                        [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                    .Pexpr [] () <|
                    .PEctor
                      .Cspecified
                      [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                   (.Pattern [] <|
                    .CaseBase
                      (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                    .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                    .Ctype
                      [.Aloc (rgc! «queueing.c» 59 12 59 302 59 168)]
                      (.Basic (.Integer (.Signed .Int_))))],
                  .Expr
                    [.Aloc (rgc! «queueing.c» 59 12 59 302 59 168),
                     .Aexpr,
                     .Avalue (.Ainteger (.Signed .Int_))] <|
                  .Epure
                    (.Pexpr
                      []
                      ()
                      (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
               .Expr [] <| .Epure <| .Pexpr [] () <|
               .PEcase
                 (.Pexpr [] () <|
                 .PEctor
                   .Ctuple
                   [.Pexpr [] () (.PEsym (a! 52688)), .Pexpr [] () (.PEsym (a! 52689))]) <|
               [(.Pattern [] <| .CaseCtor .Ctuple <|
                 [.Pattern [] <|
                  .CaseCtor
                    .Cspecified
                    [.Pattern [] (.CaseBase (.some (a! 52690), .BTy_object .OTy_integer))],
                  .Pattern [] <|
                  .CaseCtor
                    .Cspecified
                    [.Pattern [] (.CaseBase (.some (a! 52691), .BTy_object .OTy_integer))]],
                 .Pexpr [.Astd "\xa76.5.9#3"] () <|
                 .PEif
                   (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                   .PEop
                     .OpEq
                     (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                     .PEcall
                       (.Sym (rt! "conv_int" 15837442492999787586))
                       [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52690))]) <|
                   .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                   .PEcall
                     (.Sym (rt! "conv_int" 15837442492999787586))
                     [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52691))])
                   (.Pexpr [] () <|
                   .PEctor
                     .Cspecified
                     [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                 .Pexpr [] () <|
                 .PEctor
                   .Cspecified
                   [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                (.Pattern [] <|
                 .CaseBase (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                 .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                 .Ctype
                   [.Aloc (rgc! «queueing.c» 59 12 59 302 59 168)]
                   (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <|
             .Ecase (.Pexpr [] () (.PEsym (a! 52723))) <|
             [(.Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 52724), .BTy_object .OTy_integer))],
               .Expr [] <|
               .Eif
                 (.Pexpr [] () <|
                 .PEop
                   .OpEq
                   (.Pexpr [] () (.PEsym (a! 52724)))
                   (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                 (.Expr [] <|
                 .Esseq
                   (.Pattern [] (.CaseBase (.some (a! 52755), .BTy_loaded .OTy_integer)))
                   (.Expr
                     [.Aloc (rgc! «queueing.c» 59 306 59 596 59 462),
                      .Aexpr,
                      .Avalue (.Ainteger (.Signed .Int_))] <|
                   .Ewseq
                     (.Pattern [] <| .CaseCtor .Ctuple <|
                     [.Pattern [] (.CaseBase (.some (a! 52725), .BTy_loaded .OTy_integer)),
                      .Pattern [] (.CaseBase (.some (a! 52726), .BTy_loaded .OTy_integer))])
                     (.Expr [] <| .Eunseq <|
                     [.Expr
                        [.Aloc (rgc! «queueing.c» 59 306 59 596 59 462),
                         .Aexpr,
                         .Avalue (.Ainteger (.Signed .Int_))] <|
                      .Ewseq
                        (.Pattern [] <| .CaseCtor .Ctuple <|
                        [.Pattern [] (.CaseBase (.some (a! 52730), .BTy_loaded .OTy_integer)),
                         .Pattern [] (.CaseBase (.some (a! 52731), .BTy_loaded .OTy_integer))])
                        (.Expr [] <| .Eunseq <|
                        [.Expr
                           [.Aloc (rg! «queueing.c» 59 306 59 461),
                            .Aexpr,
                            .Avalue (.Ainteger .Size_t),
                            .Astd "\xa76.5.6"] <|
                         .Ewseq
                           (.Pattern [] <| .CaseCtor .Ctuple <|
                           [.Pattern [] (.CaseBase (.some (a! 52735), .BTy_loaded .OTy_integer)),
                            .Pattern [] (.CaseBase (.some (a! 52736), .BTy_loaded .OTy_integer))])
                           (.Expr [] <| .Eunseq <|
                           [.Expr
                              [.Aloc (rgc! «queueing.c» 59 307 59 397 59 340),
                               .Aexpr,
                               .Avalue (.Ainteger .Size_t),
                               .Astd "\xa76.5.6"] <|
                            .Ewseq
                              (.Pattern [] <| .CaseCtor .Ctuple <|
                              [.Pattern [] (.CaseBase (.some (a! 52740), .BTy_loaded .OTy_integer)),
                               .Pattern [] (.CaseBase (.some (a! 52741), .BTy_loaded .OTy_integer))])
                              (.Expr [] <| .Eunseq <|
                              [.Expr
                                 [.Aloc (rg! «queueing.c» 59 307 59 339),
                                  .Aexpr,
                                  .Avalue (.Ainteger .Size_t)] <| .Epure <|
                               .Pexpr
                                 []
                                 ()
                                 (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))),
                               .Expr
                                 [.Aloc (rg! «queueing.c» 59 342 59 397),
                                  .Aexpr,
                                  .Avalue (.Ainteger .Size_t)] <| .Epure <|
                               .Pexpr
                                 []
                                 ()
                                 (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                            .Expr [] <| .Epure <| .Pexpr [] () <|
                            .PEcase
                              (.Pexpr [] () <|
                              .PEctor
                                .Ctuple
                                [.Pexpr [] () (.PEsym (a! 52740)), .Pexpr [] () (.PEsym (a! 52741))]) <|
                            [(.Pattern [] <| .CaseCtor .Ctuple <|
                              [.Pattern [] <|
                               .CaseCtor
                                 .Cspecified
                                 [.Pattern [] (.CaseBase (.some (a! 52742), .BTy_object .OTy_integer))],
                               .Pattern [] <|
                               .CaseCtor
                                 .Cspecified
                                 [.Pattern [] (.CaseBase (.some (a! 52743), .BTy_object .OTy_integer))]],
                              .Pexpr [] () <| .PEctor .Cspecified <|
                              [.Pexpr [.Astd "\xa76.5.6#5"] () <|
                               .PEwrapI
                                 .Size_t
                                 .IOpAdd
                                 (.Pexpr
                                   [.Astd "\xa76.5.6#4"]
                                   ()
                                   (.PEconv_int .Size_t (.Pexpr [] () (.PEsym (a! 52742))))) <|
                               .Pexpr
                                 [.Astd "\xa76.5.6#4"]
                                 ()
                                 (.PEconv_int .Size_t (.Pexpr [] () (.PEsym (a! 52743))))]),
                             (.Pattern [] <|
                              .CaseBase
                                (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                              .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                              .Ctype
                                [.Aloc (rgc! «queueing.c» 59 307 59 397 59 340)]
                                (.Basic (.Integer .Size_t)))],
                            .Expr
                              [.Aloc (rg! «queueing.c» 59 400 59 460),
                               .Aexpr,
                               .Avalue (.Ainteger .Size_t)] <| .Epure <|
                            .Pexpr
                              []
                              ()
                              (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 8)))))]) <|
                         .Expr [] <| .Epure <| .Pexpr [] () <|
                         .PEcase
                           (.Pexpr [] () <|
                           .PEctor
                             .Ctuple
                             [.Pexpr [] () (.PEsym (a! 52735)), .Pexpr [] () (.PEsym (a! 52736))]) <|
                         [(.Pattern [] <| .CaseCtor .Ctuple <|
                           [.Pattern [] <|
                            .CaseCtor
                              .Cspecified
                              [.Pattern [] (.CaseBase (.some (a! 52737), .BTy_object .OTy_integer))],
                            .Pattern [] <|
                            .CaseCtor
                              .Cspecified
                              [.Pattern [] (.CaseBase (.some (a! 52738), .BTy_object .OTy_integer))]],
                           .Pexpr [] () <| .PEctor .Cspecified <|
                           [.Pexpr [.Astd "\xa76.5.6#5"] () <|
                            .PEwrapI
                              .Size_t
                              .IOpAdd
                              (.Pexpr
                                [.Astd "\xa76.5.6#4"]
                                ()
                                (.PEconv_int .Size_t (.Pexpr [] () (.PEsym (a! 52737))))) <|
                            .Pexpr
                              [.Astd "\xa76.5.6#4"]
                              ()
                              (.PEconv_int .Size_t (.Pexpr [] () (.PEsym (a! 52738))))]),
                          (.Pattern [] <|
                           .CaseBase
                             (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                           .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                           .Ctype
                             [.Aloc (rg! «queueing.c» 59 306 59 461)]
                             (.Basic (.Integer .Size_t)))],
                         .Expr
                           [.Aloc (rgc! «queueing.c» 59 465 59 596 59 560),
                            .Aexpr,
                            .Avalue (.Ainteger .Size_t),
                            .Astd "\xa76.5.6"] <|
                         .Ewseq
                           (.Pattern [] <| .CaseCtor .Ctuple <|
                           [.Pattern [] (.CaseBase (.some (a! 52750), .BTy_loaded .OTy_integer)),
                            .Pattern [] (.CaseBase (.some (a! 52751), .BTy_loaded .OTy_integer))])
                           (.Expr [] <| .Eunseq <|
                           [.Expr
                              [.Aloc (rg! «queueing.c» 59 465 59 559),
                               .Aexpr,
                               .Avalue (.Ainteger .Size_t),
                               .Astd "\xa76.5.6"] <|
                            .Ewseq
                              (.Pattern [] <| .CaseCtor .Ctuple <|
                              [.Pattern [] (.CaseBase (.some (a! 52745), .BTy_loaded .OTy_integer)),
                               .Pattern [] (.CaseBase (.some (a! 52746), .BTy_loaded .OTy_integer))])
                              (.Expr [] <| .Eunseq <|
                              [.Expr
                                 [.Aloc (rg! «queueing.c» 59 466 59 500),
                                  .Aexpr,
                                  .Avalue (.Ainteger .Size_t)] <| .Epure <|
                               .Pexpr
                                 []
                                 ()
                                 (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 24))))),
                               .Expr
                                 [.Aloc (rg! «queueing.c» 59 503 59 558),
                                  .Aexpr,
                                  .Avalue (.Ainteger .Size_t)] <| .Epure <|
                               .Pexpr
                                 []
                                 ()
                                 (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 8)))))]) <|
                            .Expr [] <| .Epure <| .Pexpr [] () <|
                            .PEcase
                              (.Pexpr [] () <|
                              .PEctor
                                .Ctuple
                                [.Pexpr [] () (.PEsym (a! 52745)), .Pexpr [] () (.PEsym (a! 52746))]) <|
                            [(.Pattern [] <| .CaseCtor .Ctuple <|
                              [.Pattern [] <|
                               .CaseCtor
                                 .Cspecified
                                 [.Pattern [] (.CaseBase (.some (a! 52747), .BTy_object .OTy_integer))],
                               .Pattern [] <|
                               .CaseCtor
                                 .Cspecified
                                 [.Pattern [] (.CaseBase (.some (a! 52748), .BTy_object .OTy_integer))]],
                              .Pexpr [] () <| .PEctor .Cspecified <|
                              [.Pexpr [.Astd "\xa76.5.6#5"] () <|
                               .PEwrapI
                                 .Size_t
                                 .IOpAdd
                                 (.Pexpr
                                   [.Astd "\xa76.5.6#4"]
                                   ()
                                   (.PEconv_int .Size_t (.Pexpr [] () (.PEsym (a! 52747))))) <|
                               .Pexpr
                                 [.Astd "\xa76.5.6#4"]
                                 ()
                                 (.PEconv_int .Size_t (.Pexpr [] () (.PEsym (a! 52748))))]),
                             (.Pattern [] <|
                              .CaseBase
                                (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                              .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                              .Ctype
                                [.Aloc (rg! «queueing.c» 59 465 59 559)]
                                (.Basic (.Integer .Size_t)))],
                            .Expr
                              [.Aloc (rg! «queueing.c» 59 562 59 596),
                               .Aexpr,
                               .Avalue (.Ainteger .Size_t)] <| .Epure <|
                            .Pexpr
                              []
                              ()
                              (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 24)))))]) <|
                         .Expr [] <| .Epure <| .Pexpr [] () <|
                         .PEcase
                           (.Pexpr [] () <|
                           .PEctor
                             .Ctuple
                             [.Pexpr [] () (.PEsym (a! 52750)), .Pexpr [] () (.PEsym (a! 52751))]) <|
                         [(.Pattern [] <| .CaseCtor .Ctuple <|
                           [.Pattern [] <|
                            .CaseCtor
                              .Cspecified
                              [.Pattern [] (.CaseBase (.some (a! 52752), .BTy_object .OTy_integer))],
                            .Pattern [] <|
                            .CaseCtor
                              .Cspecified
                              [.Pattern [] (.CaseBase (.some (a! 52753), .BTy_object .OTy_integer))]],
                           .Pexpr [] () <| .PEctor .Cspecified <|
                           [.Pexpr [.Astd "\xa76.5.5#6"] () <|
                            .PEwrapI
                              .Size_t
                              .IOpSub
                              (.Pexpr [.Astd "\xa76.5.6#4"] () <|
                              .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                              [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                               .Pexpr [] () (.PEsym (a! 52752))]) <|
                            .Pexpr [.Astd "\xa76.5.6#4"] () <|
                            .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                            [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                             .Pexpr [] () (.PEsym (a! 52753))]]),
                          (.Pattern [] <|
                           .CaseBase
                             (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                           .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                           .Ctype
                             [.Aloc (rgc! «queueing.c» 59 465 59 596 59 560)]
                             (.Basic (.Integer .Size_t)))]]) <| .Expr [] <| .Epure <|
                      .Pexpr [] () <|
                      .PEcase
                        (.Pexpr [] () <|
                        .PEctor
                          .Ctuple
                          [.Pexpr [] () (.PEsym (a! 52730)), .Pexpr [] () (.PEsym (a! 52731))]) <|
                      [(.Pattern [] <| .CaseCtor .Ctuple <|
                        [.Pattern [] <|
                         .CaseCtor
                           .Cspecified
                           [.Pattern [] (.CaseBase (.some (a! 52732), .BTy_object .OTy_integer))],
                         .Pattern [] <|
                         .CaseCtor
                           .Cspecified
                           [.Pattern [] (.CaseBase (.some (a! 52733), .BTy_object .OTy_integer))]],
                        .Pexpr [.Astd "\xa76.5.9#3"] () <|
                        .PEif
                          (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <| .PEnot <| .Pexpr [] () <|
                          .PEop
                            .OpEq
                            (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                            .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                            [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                             .Pexpr [] () (.PEsym (a! 52732))]) <|
                          .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                          .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                          [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                           .Pexpr [] () (.PEsym (a! 52733))])
                          (.Pexpr [] () <|
                          .PEctor
                            .Cspecified
                            [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                        .Pexpr [] () <|
                        .PEctor
                          .Cspecified
                          [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                       (.Pattern [] <|
                        .CaseBase
                          (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                        .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                        .Ctype
                          [.Aloc (rgc! «queueing.c» 59 306 59 596 59 462)]
                          (.Basic (.Integer (.Signed .Int_))))],
                      .Expr
                        [.Aloc (rgc! «queueing.c» 59 306 59 596 59 462),
                         .Aexpr,
                         .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                      .Pexpr
                        []
                        ()
                        (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                   .Expr [] <| .Epure <| .Pexpr [] () <|
                   .PEcase
                     (.Pexpr [] () <|
                     .PEctor
                       .Ctuple
                       [.Pexpr [] () (.PEsym (a! 52725)), .Pexpr [] () (.PEsym (a! 52726))]) <|
                   [(.Pattern [] <| .CaseCtor .Ctuple <|
                     [.Pattern [] <|
                      .CaseCtor
                        .Cspecified
                        [.Pattern [] (.CaseBase (.some (a! 52727), .BTy_object .OTy_integer))],
                      .Pattern [] <|
                      .CaseCtor
                        .Cspecified
                        [.Pattern [] (.CaseBase (.some (a! 52728), .BTy_object .OTy_integer))]],
                     .Pexpr [.Astd "\xa76.5.9#3"] () <|
                     .PEif
                       (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <| .PEnot <| .Pexpr [] () <|
                       .PEop
                         .OpEq
                         (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                         .PEcall
                           (.Sym (rt! "conv_int" 15837442492999787586))
                           [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                            .Pexpr [] () (.PEsym (a! 52727))]) <|
                       .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                       .PEcall
                         (.Sym (rt! "conv_int" 15837442492999787586))
                         [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52728))])
                       (.Pexpr [] () <|
                       .PEctor
                         .Cspecified
                         [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                     .Pexpr [] () <|
                     .PEctor
                       .Cspecified
                       [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                    (.Pattern [] <|
                     .CaseBase
                       (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                     .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                     .Ctype
                       [.Aloc (rgc! «queueing.c» 59 306 59 596 59 462)]
                       (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <| .Epure <|
                 .Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                 [.Pexpr [] () <| .PEval <| .Vctype <|
                  .Ctype
                    [.Aloc (rg! «queueing.c» 59 11 59 597)]
                    (.Basic (.Integer (.Signed .Int_))),
                  .Pexpr [] () (.PEsym (a! 52755))]) <| .Expr [] <|
               .Esseq
                 (.Pattern [] (.CaseBase (.some (a! 52756), .BTy_loaded .OTy_integer)))
                 (.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                 .Epure
                   (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1))))))) <|
               .Expr [] <| .Epure <| .Pexpr [] () <|
               .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
               [.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype [.Aloc (rg! «queueing.c» 59 11 59 597)] (.Basic (.Integer (.Signed .Int_))),
                .Pexpr [] () (.PEsym (a! 52756))]),
              (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
               .Expr [] <| .Epure <| .Pexpr [] () <|
               .PEundef
                 (rg! «queueing.c» 59 11 59 597)
                 (.UB_CERB004_unspecified .UB_unspec_conditional))]]) <| .Expr [] <| .Epure <|
          .Pexpr [] () <|
          .PEcase
            (.Pexpr
              []
              ()
              (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 52683)), .Pexpr [] () (.PEsym (a! 52684))])) <|
          [(.Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] <|
             .CaseCtor
               .Cspecified
               [.Pattern [] (.CaseBase (.some (a! 52685), .BTy_object .OTy_integer))],
             .Pattern [] <|
             .CaseCtor
               .Cspecified
               [.Pattern [] (.CaseBase (.some (a! 52686), .BTy_object .OTy_integer))]],
            .Pexpr [.Astd "\xa76.5.9#3"] () <|
            .PEif
              (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
              .PEop
                .OpEq
                (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                .PEcall
                  (.Sym (rt! "conv_int" 15837442492999787586))
                  [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52685))]) <|
              .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
              .PEcall
                (.Sym (rt! "conv_int" 15837442492999787586))
                [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52686))])
              (.Pexpr [] () <|
              .PEctor .Cspecified [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
            .Pexpr
              []
              ()
              (.PEctor
                .Cspecified
                [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))])),
           (.Pattern
              []
              (.CaseBase (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer])),
            .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
            .Ctype [.Aloc (rg! «queueing.c» 59 9 59 598)] (.Basic (.Integer (.Signed .Int_))))])
          (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc (rgr! «queueing.c» 53 1 64 2 53 6 53 24)] <|
  .Esave
    (c! "ret_52612" 52612, .BTy_unit)
    [(a! 52758,
      ((.BTy_unit,
        .some <|
        (.Ctype
           [.Aloc (rg! «queueing.h» 131 1 131 5), .Aloc (rg! «queueing.c» 53 1 53 5)]
           .Void0,
         .By_value)),
       .Pexpr [] () (.PEval .Vunit)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52758)))))

/--
```c
static void __wg_prev_queue_enqueue(struct prev_queue *queue, struct sk_buff *skb)
```

`linux/drivers/net/wireguard/queueing.c:66` -/
def __wg_prev_queue_enqueue : Procedure :=
  .Proc
    (rgr! «queueing.c» 66 1 70 2 66 13 66 36)
    (.some 3388)
    .BTy_unit
    [(addr! "queue" 3385, .BTy_object .OTy_pointer), (addr! "skb" 3386, .BTy_object .OTy_pointer)] <|
  .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc (rg! «queueing.c» 67 1 70 2), .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «queueing.c» 68 2 68 464), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Aloc (rg! «queueing.c» 68 2 68 464), .Astmt, .Alabel (.LAloop 3393)] <|
        .Esave (c! "do_46414" 46414, .BTy_unit) [] <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc (rg! «queueing.c» 68 2 68 464), .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [.Aloc (rg! «queueing.c» 68 5 68 453), .Astmt] <|
            .Esseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [.Aloc (rg! «queueing.c» 68 7 68 336), .Astmt] <|
              .Esseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                .Expr [.Aloc (rg! «queueing.c» 68 7 68 335), .Aexpr, .Astd "\xa76.5.4"] <|
                .Ewseq
                  (.Pattern [] (.CaseBase (.some (a! 46417), .BTy_loaded .OTy_integer)))
                  (.Expr
                    [.Aloc (rg! «queueing.c» 68 14 68 334),
                     .Aexpr,
                     .Avalue (.Ainteger (.Signed .Int_)),
                     .Astd "6.5.14#3",
                     .Astd "6.5.14#4",
                     .Aexpr,
                     .Avalue (.Ainteger (.Signed .Int_))] <|
                  .Esseq
                    (.Pattern [] (.CaseBase (.some (a! 46506), .BTy_loaded .OTy_integer)))
                    (.Expr
                      [.Aloc (rg! «queueing.c» 68 15 68 265),
                       .Aexpr,
                       .Avalue (.Ainteger (.Signed .Int_))] <|
                    .Ewseq
                      (.Pattern [] <| .CaseCtor .Ctuple <|
                      [.Pattern [] (.CaseBase (.some (a! 46419), .BTy_loaded .OTy_integer)),
                       .Pattern [] (.CaseBase (.some (a! 46420), .BTy_loaded .OTy_integer))])
                      (.Expr [] <| .Eunseq <|
                      [.Expr
                         [.Aloc (rg! «queueing.c» 68 15 68 265),
                          .Aexpr,
                          .Avalue (.Ainteger (.Signed .Int_))] <|
                       .Ewseq
                         (.Pattern [] <| .CaseCtor .Ctuple <|
                         [.Pattern [] (.CaseBase (.some (a! 46424), .BTy_loaded .OTy_integer)),
                          .Pattern [] (.CaseBase (.some (a! 46425), .BTy_loaded .OTy_integer))])
                         (.Expr [] <| .Eunseq <|
                         [.Expr
                            [.Aloc (rg! «queueing.c» 68 15 68 265),
                             .Aexpr,
                             .Avalue (.Ainteger (.Signed .Int_)),
                             .Astd "6.5.14#3",
                             .Astd "6.5.14#4",
                             .Aexpr,
                             .Avalue (.Ainteger (.Signed .Int_))] <|
                          .Esseq
                            (.Pattern [] (.CaseBase (.some (a! 46492), .BTy_loaded .OTy_integer)))
                            (.Expr
                              [.Aloc (rgc! «queueing.c» 68 16 68 201 68 140),
                               .Aexpr,
                               .Avalue (.Ainteger (.Signed .Int_))] <|
                            .Ewseq
                              (.Pattern [] <| .CaseCtor .Ctuple <|
                              [.Pattern [] (.CaseBase (.some (a! 46429), .BTy_loaded .OTy_integer)),
                               .Pattern [] (.CaseBase (.some (a! 46430), .BTy_loaded .OTy_integer))])
                              (.Expr [] <| .Eunseq <|
                              [.Expr
                                 [.Aloc (rgc! «queueing.c» 68 16 68 201 68 140),
                                  .Aexpr,
                                  .Avalue (.Ainteger (.Signed .Int_))] <|
                               .Ewseq
                                 (.Pattern [] <| .CaseCtor .Ctuple <|
                                 [.Pattern [] (.CaseBase (.some (a! 46434), .BTy_loaded .OTy_integer)),
                                  .Pattern [] (.CaseBase (.some (a! 46435), .BTy_loaded .OTy_integer))])
                                 (.Expr [] <| .Eunseq <|
                                 [.Expr
                                    [.Aloc (rgc! «queueing.c» 68 16 68 201 68 140),
                                     .Aexpr,
                                     .Avalue (.Ainteger (.Signed .Int_)),
                                     .Astd "6.5.14#3",
                                     .Astd "6.5.14#4",
                                     .Aexpr,
                                     .Avalue (.Ainteger (.Signed .Int_))] <|
                                  .Esseq
                                    (.Pattern [] (.CaseBase (.some (a! 46478), .BTy_loaded .OTy_integer)))
                                    (.Expr
                                      [.Aloc (rgc! «queueing.c» 68 16 68 139 68 76),
                                       .Aexpr,
                                       .Avalue (.Ainteger (.Signed .Int_))] <|
                                    .Ewseq
                                      (.Pattern [] <| .CaseCtor .Ctuple <|
                                      [.Pattern [] (.CaseBase (.some (a! 46439), .BTy_loaded .OTy_integer)),
                                       .Pattern [] (.CaseBase (.some (a! 46440), .BTy_loaded .OTy_integer))])
                                      (.Expr [] <| .Eunseq <|
                                      [.Expr
                                         [.Aloc (rgc! «queueing.c» 68 16 68 139 68 76),
                                          .Aexpr,
                                          .Avalue (.Ainteger (.Signed .Int_))] <|
                                       .Ewseq
                                         (.Pattern [] <| .CaseCtor .Ctuple <|
                                         [.Pattern [] (.CaseBase (.some (a! 46444), .BTy_loaded .OTy_integer)),
                                          .Pattern [] (.CaseBase (.some (a! 46445), .BTy_loaded .OTy_integer))])
                                         (.Expr [] <| .Eunseq <|
                                         [.Expr
                                            [.Aloc (rgc! «queueing.c» 68 16 68 139 68 76),
                                             .Aexpr,
                                             .Avalue (.Ainteger (.Signed .Int_)),
                                             .Astd "6.5.14#3",
                                             .Astd "6.5.14#4",
                                             .Aexpr,
                                             .Avalue (.Ainteger (.Signed .Int_))] <|
                                          .Esseq
                                            (.Pattern [] (.CaseBase (.some (a! 46464), .BTy_loaded .OTy_integer)))
                                            (.Expr
                                              [.Aloc (rgc! «queueing.c» 68 16 68 75 68 60),
                                               .Aexpr,
                                               .Avalue (.Ainteger (.Signed .Int_))] <|
                                            .Ewseq
                                              (.Pattern [] <| .CaseCtor .Ctuple <|
                                              [.Pattern [] (.CaseBase (.some (a! 46449), .BTy_loaded .OTy_integer)),
                                               .Pattern [] (.CaseBase (.some (a! 46450), .BTy_loaded .OTy_integer))])
                                              (.Expr [] <| .Eunseq <|
                                              [.Expr
                                                 [.Aloc (rgc! «queueing.c» 68 16 68 75 68 60),
                                                  .Aexpr,
                                                  .Avalue (.Ainteger (.Signed .Int_))] <|
                                               .Ewseq
                                                 (.Pattern [] <| .CaseCtor .Ctuple <|
                                                 [.Pattern [] (.CaseBase (.some (a! 46454), .BTy_loaded .OTy_integer)),
                                                  .Pattern [] (.CaseBase (.some (a! 46455), .BTy_loaded .OTy_integer))])
                                                 (.Expr [] <| .Eunseq <|
                                                 [.Expr
                                                    [.Aloc (rgc! «queueing.c» 68 16 68 75 68 60),
                                                     .Aexpr,
                                                     .Avalue (.Ainteger (.Signed .Int_))] <|
                                                  .Ewseq
                                                    (.Pattern [] <| .CaseCtor .Ctuple <|
                                                    [.Pattern [] (.CaseBase (.some (a! 46459), .BTy_loaded .OTy_integer)),
                                                     .Pattern [] (.CaseBase (.some (a! 46460), .BTy_loaded .OTy_integer))])
                                                    (.Expr [] <| .Eunseq <|
                                                    [.Expr
                                                       [.Aloc (rgc! «queueing.c» 68 16 68 59 68 16),
                                                        .Aexpr,
                                                        .Avalue (.Ainteger .Size_t)] <| .Epure <|
                                                     .Pexpr [] () <| .PEctor .Cspecified <|
                                                     [.Pexpr [] () <| .PEctor .Civsizeof <|
                                                      [.Pexpr [] () <| .PEval <| .Vctype <|
                                                       .Ctype
                                                         [.Aloc .unknown]
                                                         (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]],
                                                     .Expr
                                                       [.Aloc (rgc! «queueing.c» 68 63 68 75 68 63),
                                                        .Aexpr,
                                                        .Avalue (.Ainteger .Size_t),
                                                        .Astd "\xa76.5.3.4#4, sentence 1"] <|
                                                     .Epure <| .Pexpr [] () <|
                                                     .PEctor
                                                       .Cspecified
                                                       [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]]) <|
                                                  .Expr [] <| .Epure <| .Pexpr [] () <|
                                                  .PEcase
                                                    (.Pexpr [] () <|
                                                    .PEctor
                                                      .Ctuple
                                                      [.Pexpr [] () (.PEsym (a! 46459)), .Pexpr [] () (.PEsym (a! 46460))]) <|
                                                  [(.Pattern [] <| .CaseCtor .Ctuple <|
                                                    [.Pattern [] <|
                                                     .CaseCtor
                                                       .Cspecified
                                                       [.Pattern [] (.CaseBase (.some (a! 46461), .BTy_object .OTy_integer))],
                                                     .Pattern [] <|
                                                     .CaseCtor
                                                       .Cspecified
                                                       [.Pattern [] (.CaseBase (.some (a! 46462), .BTy_object .OTy_integer))]],
                                                    .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                                    .PEif
                                                      (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                                      .PEop
                                                        .OpEq
                                                        (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                        .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                        [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                                         .Pexpr [] () (.PEsym (a! 46461))]) <|
                                                      .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                      .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                      [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                                       .Pexpr [] () (.PEsym (a! 46462))])
                                                      (.Pexpr [] () <|
                                                      .PEctor
                                                        .Cspecified
                                                        [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                                    .Pexpr [] () <|
                                                    .PEctor
                                                      .Cspecified
                                                      [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                                   (.Pattern [] <|
                                                    .CaseBase
                                                      (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                                    .Pexpr [] () <| .PEval <| .Vloaded <|
                                                    .LVunspecified <|
                                                    .Ctype
                                                      [.Aloc (rgc! «queueing.c» 68 16 68 75 68 60)]
                                                      (.Basic (.Integer (.Signed .Int_))))],
                                                  .Expr
                                                    [.Aloc (rgc! «queueing.c» 68 16 68 75 68 60),
                                                     .Aexpr,
                                                     .Avalue (.Ainteger (.Signed .Int_))] <|
                                                  .Epure <|
                                                  .Pexpr
                                                    []
                                                    ()
                                                    (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                                               .Expr [] <| .Epure <| .Pexpr [] () <|
                                               .PEcase
                                                 (.Pexpr [] () <|
                                                 .PEctor
                                                   .Ctuple
                                                   [.Pexpr [] () (.PEsym (a! 46454)), .Pexpr [] () (.PEsym (a! 46455))]) <|
                                               [(.Pattern [] <| .CaseCtor .Ctuple <|
                                                 [.Pattern [] <|
                                                  .CaseCtor
                                                    .Cspecified
                                                    [.Pattern [] (.CaseBase (.some (a! 46456), .BTy_object .OTy_integer))],
                                                  .Pattern [] <|
                                                  .CaseCtor
                                                    .Cspecified
                                                    [.Pattern [] (.CaseBase (.some (a! 46457), .BTy_object .OTy_integer))]],
                                                 .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                                 .PEif
                                                   (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                                   .PEop
                                                     .OpEq
                                                     (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                     .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                     [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                                      .Pexpr [] () (.PEsym (a! 46456))]) <|
                                                   .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                   .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                   [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                                    .Pexpr [] () (.PEsym (a! 46457))])
                                                   (.Pexpr [] () <|
                                                   .PEctor
                                                     .Cspecified
                                                     [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                                 .Pexpr [] () <|
                                                 .PEctor
                                                   .Cspecified
                                                   [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                                (.Pattern [] <|
                                                 .CaseBase
                                                   (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                                 .Pexpr [] () <| .PEval <| .Vloaded <|
                                                 .LVunspecified <|
                                                 .Ctype
                                                   [.Aloc (rgc! «queueing.c» 68 16 68 75 68 60)]
                                                   (.Basic (.Integer (.Signed .Int_))))],
                                               .Expr
                                                 [.Aloc (rgc! «queueing.c» 68 16 68 75 68 60),
                                                  .Aexpr,
                                                  .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                                               .Pexpr
                                                 []
                                                 ()
                                                 (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                                            .Expr [] <| .Epure <| .Pexpr [] () <|
                                            .PEcase
                                              (.Pexpr [] () <|
                                              .PEctor
                                                .Ctuple
                                                [.Pexpr [] () (.PEsym (a! 46449)), .Pexpr [] () (.PEsym (a! 46450))]) <|
                                            [(.Pattern [] <| .CaseCtor .Ctuple <|
                                              [.Pattern [] <|
                                               .CaseCtor
                                                 .Cspecified
                                                 [.Pattern [] (.CaseBase (.some (a! 46451), .BTy_object .OTy_integer))],
                                               .Pattern [] <|
                                               .CaseCtor
                                                 .Cspecified
                                                 [.Pattern [] (.CaseBase (.some (a! 46452), .BTy_object .OTy_integer))]],
                                              .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                              .PEif
                                                (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                                .PEop
                                                  .OpEq
                                                  (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                  .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                  [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                                   .Pexpr [] () (.PEsym (a! 46451))]) <|
                                                .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                                 .Pexpr [] () (.PEsym (a! 46452))])
                                                (.Pexpr [] () <|
                                                .PEctor
                                                  .Cspecified
                                                  [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                              .Pexpr [] () <|
                                              .PEctor
                                                .Cspecified
                                                [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                             (.Pattern [] <|
                                              .CaseBase
                                                (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                              .Pexpr [] () <| .PEval <| .Vloaded <|
                                              .LVunspecified <|
                                              .Ctype
                                                [.Aloc (rgc! «queueing.c» 68 16 68 75 68 60)]
                                                (.Basic (.Integer (.Signed .Int_))))]) <|
                                          .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46464))) <|
                                          [(.Pattern [] <|
                                            .CaseCtor
                                              .Cspecified
                                              [.Pattern [] (.CaseBase (.some (a! 46465), .BTy_object .OTy_integer))],
                                            .Expr [] <|
                                            .Eif
                                              (.Pexpr [] () <|
                                              .PEop
                                                .OpEq
                                                (.Pexpr [] () (.PEsym (a! 46465)))
                                                (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                                              (.Expr [] <|
                                              .Esseq
                                                (.Pattern [] (.CaseBase (.some (a! 46476), .BTy_loaded .OTy_integer)))
                                                (.Expr
                                                  [.Aloc (rgc! «queueing.c» 68 79 68 139 68 123),
                                                   .Aexpr,
                                                   .Avalue (.Ainteger (.Signed .Int_))] <|
                                                .Ewseq
                                                  (.Pattern [] <| .CaseCtor .Ctuple <|
                                                  [.Pattern [] (.CaseBase (.some (a! 46466), .BTy_loaded .OTy_integer)),
                                                   .Pattern [] (.CaseBase (.some (a! 46467), .BTy_loaded .OTy_integer))])
                                                  (.Expr [] <| .Eunseq <|
                                                  [.Expr
                                                     [.Aloc (rgc! «queueing.c» 68 79 68 139 68 123),
                                                      .Aexpr,
                                                      .Avalue (.Ainteger (.Signed .Int_))] <|
                                                   .Ewseq
                                                     (.Pattern [] <| .CaseCtor .Ctuple <|
                                                     [.Pattern [] (.CaseBase (.some (a! 46471), .BTy_loaded .OTy_integer)),
                                                      .Pattern [] (.CaseBase (.some (a! 46472), .BTy_loaded .OTy_integer))])
                                                     (.Expr [] <| .Eunseq <|
                                                     [.Expr
                                                        [.Aloc (rgc! «queueing.c» 68 79 68 122 68 79),
                                                         .Aexpr,
                                                         .Avalue (.Ainteger .Size_t)] <| .Epure <|
                                                      .Pexpr [] () <| .PEctor .Cspecified <|
                                                      [.Pexpr [] () <| .PEctor .Civsizeof <|
                                                       [.Pexpr [] () <| .PEval <| .Vctype <|
                                                        .Ctype
                                                          [.Aloc .unknown]
                                                          (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]],
                                                      .Expr
                                                        [.Aloc (rgc! «queueing.c» 68 126 68 139 68 126),
                                                         .Aexpr,
                                                         .Avalue (.Ainteger .Size_t)] <| .Epure <|
                                                      .Pexpr [] () <| .PEctor .Cspecified <|
                                                      [.Pexpr [] () <| .PEctor .Civsizeof <|
                                                       [.Pexpr [] () <| .PEval <| .Vctype <|
                                                        .Ctype
                                                          [.Aloc (rg! «queueing.c» 68 133 68 138)]
                                                          (.Basic (.Integer (.Signed .Short)))]]]) <|
                                                   .Expr [] <| .Epure <| .Pexpr [] () <|
                                                   .PEcase
                                                     (.Pexpr [] () <|
                                                     .PEctor
                                                       .Ctuple
                                                       [.Pexpr [] () (.PEsym (a! 46471)), .Pexpr [] () (.PEsym (a! 46472))]) <|
                                                   [(.Pattern [] <| .CaseCtor .Ctuple <|
                                                     [.Pattern [] <|
                                                      .CaseCtor
                                                        .Cspecified
                                                        [.Pattern [] (.CaseBase (.some (a! 46473), .BTy_object .OTy_integer))],
                                                      .Pattern [] <|
                                                      .CaseCtor
                                                        .Cspecified
                                                        [.Pattern [] (.CaseBase (.some (a! 46474), .BTy_object .OTy_integer))]],
                                                     .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                                     .PEif
                                                       (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                                       .PEop
                                                         .OpEq
                                                         (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                         .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                         [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                                          .Pexpr [] () (.PEsym (a! 46473))]) <|
                                                       .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                       .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                       [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                                        .Pexpr [] () (.PEsym (a! 46474))])
                                                       (.Pexpr [] () <|
                                                       .PEctor
                                                         .Cspecified
                                                         [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                                     .Pexpr [] () <|
                                                     .PEctor
                                                       .Cspecified
                                                       [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                                    (.Pattern [] <|
                                                     .CaseBase
                                                       (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                                     .Pexpr [] () <| .PEval <| .Vloaded <|
                                                     .LVunspecified <|
                                                     .Ctype
                                                       [.Aloc (rgc! «queueing.c» 68 79 68 139 68 123)]
                                                       (.Basic (.Integer (.Signed .Int_))))],
                                                   .Expr
                                                     [.Aloc (rgc! «queueing.c» 68 79 68 139 68 123),
                                                      .Aexpr,
                                                      .Avalue (.Ainteger (.Signed .Int_))] <|
                                                   .Epure <|
                                                   .Pexpr
                                                     []
                                                     ()
                                                     (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                                                .Expr [] <| .Epure <| .Pexpr [] () <|
                                                .PEcase
                                                  (.Pexpr [] () <|
                                                  .PEctor
                                                    .Ctuple
                                                    [.Pexpr [] () (.PEsym (a! 46466)), .Pexpr [] () (.PEsym (a! 46467))]) <|
                                                [(.Pattern [] <| .CaseCtor .Ctuple <|
                                                  [.Pattern [] <|
                                                   .CaseCtor
                                                     .Cspecified
                                                     [.Pattern [] (.CaseBase (.some (a! 46468), .BTy_object .OTy_integer))],
                                                   .Pattern [] <|
                                                   .CaseCtor
                                                     .Cspecified
                                                     [.Pattern [] (.CaseBase (.some (a! 46469), .BTy_object .OTy_integer))]],
                                                  .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                                  .PEif
                                                    (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                                    .PEnot <| .Pexpr [] () <|
                                                    .PEop
                                                      .OpEq
                                                      (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                      .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                      [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                                       .Pexpr [] () (.PEsym (a! 46468))]) <|
                                                    .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                    .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                    [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                                     .Pexpr [] () (.PEsym (a! 46469))])
                                                    (.Pexpr [] () <|
                                                    .PEctor
                                                      .Cspecified
                                                      [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                                  .Pexpr [] () <|
                                                  .PEctor
                                                    .Cspecified
                                                    [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                                 (.Pattern [] <|
                                                  .CaseBase
                                                    (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                                  .Pexpr [] () <| .PEval <| .Vloaded <|
                                                  .LVunspecified <|
                                                  .Ctype
                                                    [.Aloc (rgc! «queueing.c» 68 79 68 139 68 123)]
                                                    (.Basic (.Integer (.Signed .Int_))))]) <|
                                              .Expr [] <| .Epure <| .Pexpr [] () <|
                                              .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                                              [.Pexpr [] () <| .PEval <| .Vctype <|
                                               .Ctype
                                                 [.Aloc (rgc! «queueing.c» 68 16 68 139 68 76)]
                                                 (.Basic (.Integer (.Signed .Int_))),
                                               .Pexpr [] () (.PEsym (a! 46476))]) <| .Expr [] <|
                                            .Esseq
                                              (.Pattern [] (.CaseBase (.some (a! 46477), .BTy_loaded .OTy_integer)))
                                              (.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                                              .Epure <|
                                              .Pexpr
                                                []
                                                ()
                                                (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1)))))) <|
                                            .Expr [] <| .Epure <| .Pexpr [] () <|
                                            .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                                            [.Pexpr [] () <| .PEval <| .Vctype <|
                                             .Ctype
                                               [.Aloc (rgc! «queueing.c» 68 16 68 139 68 76)]
                                               (.Basic (.Integer (.Signed .Int_))),
                                             .Pexpr [] () (.PEsym (a! 46477))]),
                                           (.Pattern
                                              []
                                              (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                                            .Expr [] <| .Epure <| .Pexpr [] () <|
                                            .PEundef
                                              (rgc! «queueing.c» 68 16 68 139 68 76)
                                              (.UB_CERB004_unspecified .UB_unspec_conditional))],
                                          .Expr
                                            [.Aloc (rgc! «queueing.c» 68 16 68 139 68 76),
                                             .Aexpr,
                                             .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                                          .Pexpr
                                            []
                                            ()
                                            (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                                       .Expr [] <| .Epure <| .Pexpr [] () <|
                                       .PEcase
                                         (.Pexpr [] () <|
                                         .PEctor
                                           .Ctuple
                                           [.Pexpr [] () (.PEsym (a! 46444)), .Pexpr [] () (.PEsym (a! 46445))]) <|
                                       [(.Pattern [] <| .CaseCtor .Ctuple <|
                                         [.Pattern [] <|
                                          .CaseCtor
                                            .Cspecified
                                            [.Pattern [] (.CaseBase (.some (a! 46446), .BTy_object .OTy_integer))],
                                          .Pattern [] <|
                                          .CaseCtor
                                            .Cspecified
                                            [.Pattern [] (.CaseBase (.some (a! 46447), .BTy_object .OTy_integer))]],
                                         .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                         .PEif
                                           (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                           .PEop
                                             .OpEq
                                             (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                             .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                             [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                              .Pexpr [] () (.PEsym (a! 46446))]) <|
                                           .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                           .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                           [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                            .Pexpr [] () (.PEsym (a! 46447))])
                                           (.Pexpr [] () <|
                                           .PEctor
                                             .Cspecified
                                             [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                         .Pexpr [] () <|
                                         .PEctor
                                           .Cspecified
                                           [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                        (.Pattern [] <|
                                         .CaseBase
                                           (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                         .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                                         .Ctype
                                           [.Aloc (rgc! «queueing.c» 68 16 68 139 68 76)]
                                           (.Basic (.Integer (.Signed .Int_))))],
                                       .Expr
                                         [.Aloc (rgc! «queueing.c» 68 16 68 139 68 76),
                                          .Aexpr,
                                          .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                                       .Pexpr
                                         []
                                         ()
                                         (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                                    .Expr [] <| .Epure <| .Pexpr [] () <|
                                    .PEcase
                                      (.Pexpr [] () <|
                                      .PEctor
                                        .Ctuple
                                        [.Pexpr [] () (.PEsym (a! 46439)), .Pexpr [] () (.PEsym (a! 46440))]) <|
                                    [(.Pattern [] <| .CaseCtor .Ctuple <|
                                      [.Pattern [] <|
                                       .CaseCtor
                                         .Cspecified
                                         [.Pattern [] (.CaseBase (.some (a! 46441), .BTy_object .OTy_integer))],
                                       .Pattern [] <|
                                       .CaseCtor
                                         .Cspecified
                                         [.Pattern [] (.CaseBase (.some (a! 46442), .BTy_object .OTy_integer))]],
                                      .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                      .PEif
                                        (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                        .PEop
                                          .OpEq
                                          (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                          .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                          [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                           .Pexpr [] () (.PEsym (a! 46441))]) <|
                                        .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                        .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                        [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                         .Pexpr [] () (.PEsym (a! 46442))])
                                        (.Pexpr [] () <|
                                        .PEctor
                                          .Cspecified
                                          [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                      .Pexpr [] () <|
                                      .PEctor
                                        .Cspecified
                                        [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                     (.Pattern [] <|
                                      .CaseBase
                                        (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                      .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                                      .Ctype
                                        [.Aloc (rgc! «queueing.c» 68 16 68 139 68 76)]
                                        (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <|
                                  .Ecase (.Pexpr [] () (.PEsym (a! 46478))) <|
                                  [(.Pattern [] <|
                                    .CaseCtor
                                      .Cspecified
                                      [.Pattern [] (.CaseBase (.some (a! 46479), .BTy_object .OTy_integer))],
                                    .Expr [] <|
                                    .Eif
                                      (.Pexpr [] () <|
                                      .PEop
                                        .OpEq
                                        (.Pexpr [] () (.PEsym (a! 46479)))
                                        (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                                      (.Expr [] <|
                                      .Esseq
                                        (.Pattern [] (.CaseBase (.some (a! 46490), .BTy_loaded .OTy_integer)))
                                        (.Expr
                                          [.Aloc (rgc! «queueing.c» 68 143 68 201 68 187),
                                           .Aexpr,
                                           .Avalue (.Ainteger (.Signed .Int_))] <|
                                        .Ewseq
                                          (.Pattern [] <| .CaseCtor .Ctuple <|
                                          [.Pattern [] (.CaseBase (.some (a! 46480), .BTy_loaded .OTy_integer)),
                                           .Pattern [] (.CaseBase (.some (a! 46481), .BTy_loaded .OTy_integer))])
                                          (.Expr [] <| .Eunseq <|
                                          [.Expr
                                             [.Aloc (rgc! «queueing.c» 68 143 68 201 68 187),
                                              .Aexpr,
                                              .Avalue (.Ainteger (.Signed .Int_))] <|
                                           .Ewseq
                                             (.Pattern [] <| .CaseCtor .Ctuple <|
                                             [.Pattern [] (.CaseBase (.some (a! 46485), .BTy_loaded .OTy_integer)),
                                              .Pattern [] (.CaseBase (.some (a! 46486), .BTy_loaded .OTy_integer))])
                                             (.Expr [] <| .Eunseq <|
                                             [.Expr
                                                [.Aloc (rgc! «queueing.c» 68 143 68 186 68 143),
                                                 .Aexpr,
                                                 .Avalue (.Ainteger .Size_t)] <| .Epure <|
                                              .Pexpr [] () <| .PEctor .Cspecified <|
                                              [.Pexpr [] () <| .PEctor .Civsizeof <|
                                               [.Pexpr [] () <| .PEval <| .Vctype <|
                                                .Ctype
                                                  [.Aloc .unknown]
                                                  (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]],
                                              .Expr
                                                [.Aloc (rgc! «queueing.c» 68 190 68 201 68 190),
                                                 .Aexpr,
                                                 .Avalue (.Ainteger .Size_t)] <| .Epure <|
                                              .Pexpr [] () <| .PEctor .Cspecified <|
                                              [.Pexpr [] () <| .PEctor .Civsizeof <|
                                               [.Pexpr [] () <| .PEval <| .Vctype <|
                                                .Ctype
                                                  [.Aloc (rg! «queueing.c» 68 197 68 200)]
                                                  (.Basic (.Integer (.Signed .Int_)))]]]) <|
                                           .Expr [] <| .Epure <| .Pexpr [] () <|
                                           .PEcase
                                             (.Pexpr [] () <|
                                             .PEctor
                                               .Ctuple
                                               [.Pexpr [] () (.PEsym (a! 46485)), .Pexpr [] () (.PEsym (a! 46486))]) <|
                                           [(.Pattern [] <| .CaseCtor .Ctuple <|
                                             [.Pattern [] <|
                                              .CaseCtor
                                                .Cspecified
                                                [.Pattern [] (.CaseBase (.some (a! 46487), .BTy_object .OTy_integer))],
                                              .Pattern [] <|
                                              .CaseCtor
                                                .Cspecified
                                                [.Pattern [] (.CaseBase (.some (a! 46488), .BTy_object .OTy_integer))]],
                                             .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                             .PEif
                                               (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                               .PEop
                                                 .OpEq
                                                 (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                 .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                 [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                                  .Pexpr [] () (.PEsym (a! 46487))]) <|
                                               .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                               .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                               [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                                .Pexpr [] () (.PEsym (a! 46488))])
                                               (.Pexpr [] () <|
                                               .PEctor
                                                 .Cspecified
                                                 [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                             .Pexpr [] () <|
                                             .PEctor
                                               .Cspecified
                                               [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                            (.Pattern [] <|
                                             .CaseBase
                                               (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                             .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                                             .Ctype
                                               [.Aloc (rgc! «queueing.c» 68 143 68 201 68 187)]
                                               (.Basic (.Integer (.Signed .Int_))))],
                                           .Expr
                                             [.Aloc (rgc! «queueing.c» 68 143 68 201 68 187),
                                              .Aexpr,
                                              .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                                           .Pexpr
                                             []
                                             ()
                                             (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                                        .Expr [] <| .Epure <| .Pexpr [] () <|
                                        .PEcase
                                          (.Pexpr [] () <|
                                          .PEctor
                                            .Ctuple
                                            [.Pexpr [] () (.PEsym (a! 46480)), .Pexpr [] () (.PEsym (a! 46481))]) <|
                                        [(.Pattern [] <| .CaseCtor .Ctuple <|
                                          [.Pattern [] <|
                                           .CaseCtor
                                             .Cspecified
                                             [.Pattern [] (.CaseBase (.some (a! 46482), .BTy_object .OTy_integer))],
                                           .Pattern [] <|
                                           .CaseCtor
                                             .Cspecified
                                             [.Pattern [] (.CaseBase (.some (a! 46483), .BTy_object .OTy_integer))]],
                                          .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                          .PEif
                                            (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                            .PEnot <| .Pexpr [] () <|
                                            .PEop
                                              .OpEq
                                              (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                              .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                              [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                               .Pexpr [] () (.PEsym (a! 46482))]) <|
                                            .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                            .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                            [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                             .Pexpr [] () (.PEsym (a! 46483))])
                                            (.Pexpr [] () <|
                                            .PEctor
                                              .Cspecified
                                              [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                          .Pexpr [] () <|
                                          .PEctor
                                            .Cspecified
                                            [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                         (.Pattern [] <|
                                          .CaseBase
                                            (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                          .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                                          .Ctype
                                            [.Aloc (rgc! «queueing.c» 68 143 68 201 68 187)]
                                            (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <|
                                      .Epure <| .Pexpr [] () <|
                                      .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                                      [.Pexpr [] () <| .PEval <| .Vctype <|
                                       .Ctype
                                         [.Aloc (rgc! «queueing.c» 68 16 68 201 68 140)]
                                         (.Basic (.Integer (.Signed .Int_))),
                                       .Pexpr [] () (.PEsym (a! 46490))]) <| .Expr [] <|
                                    .Esseq
                                      (.Pattern [] (.CaseBase (.some (a! 46491), .BTy_loaded .OTy_integer)))
                                      (.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                                      .Epure <|
                                      .Pexpr
                                        []
                                        ()
                                        (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1)))))) <|
                                    .Expr [] <| .Epure <| .Pexpr [] () <|
                                    .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                                    [.Pexpr [] () <| .PEval <| .Vctype <|
                                     .Ctype
                                       [.Aloc (rgc! «queueing.c» 68 16 68 201 68 140)]
                                       (.Basic (.Integer (.Signed .Int_))),
                                     .Pexpr [] () (.PEsym (a! 46491))]),
                                   (.Pattern
                                      []
                                      (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                                    .Expr [] <| .Epure <| .Pexpr [] () <|
                                    .PEundef
                                      (rgc! «queueing.c» 68 16 68 201 68 140)
                                      (.UB_CERB004_unspecified .UB_unspec_conditional))],
                                  .Expr
                                    [.Aloc (rgc! «queueing.c» 68 16 68 201 68 140),
                                     .Aexpr,
                                     .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                                  .Pexpr
                                    []
                                    ()
                                    (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                               .Expr [] <| .Epure <| .Pexpr [] () <|
                               .PEcase
                                 (.Pexpr [] () <|
                                 .PEctor
                                   .Ctuple
                                   [.Pexpr [] () (.PEsym (a! 46434)), .Pexpr [] () (.PEsym (a! 46435))]) <|
                               [(.Pattern [] <| .CaseCtor .Ctuple <|
                                 [.Pattern [] <|
                                  .CaseCtor
                                    .Cspecified
                                    [.Pattern [] (.CaseBase (.some (a! 46436), .BTy_object .OTy_integer))],
                                  .Pattern [] <|
                                  .CaseCtor
                                    .Cspecified
                                    [.Pattern [] (.CaseBase (.some (a! 46437), .BTy_object .OTy_integer))]],
                                 .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                 .PEif
                                   (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                   .PEop
                                     .OpEq
                                     (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                     .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                     [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                      .Pexpr [] () (.PEsym (a! 46436))]) <|
                                   .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                   .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                   [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                    .Pexpr [] () (.PEsym (a! 46437))])
                                   (.Pexpr [] () <|
                                   .PEctor
                                     .Cspecified
                                     [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                 .Pexpr [] () <|
                                 .PEctor
                                   .Cspecified
                                   [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                (.Pattern [] <|
                                 .CaseBase
                                   (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                 .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                                 .Ctype
                                   [.Aloc (rgc! «queueing.c» 68 16 68 201 68 140)]
                                   (.Basic (.Integer (.Signed .Int_))))],
                               .Expr
                                 [.Aloc (rgc! «queueing.c» 68 16 68 201 68 140),
                                  .Aexpr,
                                  .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                               .Pexpr
                                 []
                                 ()
                                 (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                            .Expr [] <| .Epure <| .Pexpr [] () <|
                            .PEcase
                              (.Pexpr [] () <|
                              .PEctor
                                .Ctuple
                                [.Pexpr [] () (.PEsym (a! 46429)), .Pexpr [] () (.PEsym (a! 46430))]) <|
                            [(.Pattern [] <| .CaseCtor .Ctuple <|
                              [.Pattern [] <|
                               .CaseCtor
                                 .Cspecified
                                 [.Pattern [] (.CaseBase (.some (a! 46431), .BTy_object .OTy_integer))],
                               .Pattern [] <|
                               .CaseCtor
                                 .Cspecified
                                 [.Pattern [] (.CaseBase (.some (a! 46432), .BTy_object .OTy_integer))]],
                              .Pexpr [.Astd "\xa76.5.9#3"] () <|
                              .PEif
                                (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                .PEop
                                  .OpEq
                                  (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                  .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                  [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                   .Pexpr [] () (.PEsym (a! 46431))]) <|
                                .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                 .Pexpr [] () (.PEsym (a! 46432))])
                                (.Pexpr [] () <|
                                .PEctor
                                  .Cspecified
                                  [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                              .Pexpr [] () <|
                              .PEctor
                                .Cspecified
                                [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                             (.Pattern [] <|
                              .CaseBase
                                (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                              .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                              .Ctype
                                [.Aloc (rgc! «queueing.c» 68 16 68 201 68 140)]
                                (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <|
                          .Ecase (.Pexpr [] () (.PEsym (a! 46492))) <|
                          [(.Pattern [] <|
                            .CaseCtor
                              .Cspecified
                              [.Pattern [] (.CaseBase (.some (a! 46493), .BTy_object .OTy_integer))],
                            .Expr [] <|
                            .Eif
                              (.Pexpr [] () <|
                              .PEop
                                .OpEq
                                (.Pexpr [] () (.PEsym (a! 46493)))
                                (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                              (.Expr [] <|
                              .Esseq
                                (.Pattern [] (.CaseBase (.some (a! 46504), .BTy_loaded .OTy_integer)))
                                (.Expr
                                  [.Aloc (rgc! «queueing.c» 68 205 68 264 68 249),
                                   .Aexpr,
                                   .Avalue (.Ainteger (.Signed .Int_))] <|
                                .Ewseq
                                  (.Pattern [] <| .CaseCtor .Ctuple <|
                                  [.Pattern [] (.CaseBase (.some (a! 46494), .BTy_loaded .OTy_integer)),
                                   .Pattern [] (.CaseBase (.some (a! 46495), .BTy_loaded .OTy_integer))])
                                  (.Expr [] <| .Eunseq <|
                                  [.Expr
                                     [.Aloc (rgc! «queueing.c» 68 205 68 264 68 249),
                                      .Aexpr,
                                      .Avalue (.Ainteger (.Signed .Int_))] <|
                                   .Ewseq
                                     (.Pattern [] <| .CaseCtor .Ctuple <|
                                     [.Pattern [] (.CaseBase (.some (a! 46499), .BTy_loaded .OTy_integer)),
                                      .Pattern [] (.CaseBase (.some (a! 46500), .BTy_loaded .OTy_integer))])
                                     (.Expr [] <| .Eunseq <|
                                     [.Expr
                                        [.Aloc (rgc! «queueing.c» 68 205 68 248 68 205),
                                         .Aexpr,
                                         .Avalue (.Ainteger .Size_t)] <| .Epure <| .Pexpr [] () <|
                                      .PEctor .Cspecified <|
                                      [.Pexpr [] () <| .PEctor .Civsizeof <|
                                       [.Pexpr [] () <| .PEval <| .Vctype <|
                                        .Ctype
                                          [.Aloc .unknown]
                                          (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]],
                                      .Expr
                                        [.Aloc (rgc! «queueing.c» 68 252 68 264 68 252),
                                         .Aexpr,
                                         .Avalue (.Ainteger .Size_t)] <| .Epure <| .Pexpr [] () <|
                                      .PEctor .Cspecified <|
                                      [.Pexpr [] () <| .PEctor .Civsizeof <|
                                       [.Pexpr [] () <| .PEval <| .Vctype <|
                                        .Ctype
                                          [.Aloc (rg! «queueing.c» 68 259 68 263)]
                                          (.Basic (.Integer (.Signed .Long)))]]]) <| .Expr [] <|
                                   .Epure <| .Pexpr [] () <|
                                   .PEcase
                                     (.Pexpr [] () <|
                                     .PEctor
                                       .Ctuple
                                       [.Pexpr [] () (.PEsym (a! 46499)), .Pexpr [] () (.PEsym (a! 46500))]) <|
                                   [(.Pattern [] <| .CaseCtor .Ctuple <|
                                     [.Pattern [] <|
                                      .CaseCtor
                                        .Cspecified
                                        [.Pattern [] (.CaseBase (.some (a! 46501), .BTy_object .OTy_integer))],
                                      .Pattern [] <|
                                      .CaseCtor
                                        .Cspecified
                                        [.Pattern [] (.CaseBase (.some (a! 46502), .BTy_object .OTy_integer))]],
                                     .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                     .PEif
                                       (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                       .PEop
                                         .OpEq
                                         (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                         .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                         [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                          .Pexpr [] () (.PEsym (a! 46501))]) <|
                                       .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                       .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                       [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                        .Pexpr [] () (.PEsym (a! 46502))])
                                       (.Pexpr [] () <|
                                       .PEctor
                                         .Cspecified
                                         [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                     .Pexpr [] () <|
                                     .PEctor
                                       .Cspecified
                                       [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                    (.Pattern [] <|
                                     .CaseBase
                                       (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                     .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                                     .Ctype
                                       [.Aloc (rgc! «queueing.c» 68 205 68 264 68 249)]
                                       (.Basic (.Integer (.Signed .Int_))))],
                                   .Expr
                                     [.Aloc (rgc! «queueing.c» 68 205 68 264 68 249),
                                      .Aexpr,
                                      .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                                   .Pexpr
                                     []
                                     ()
                                     (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                                .Expr [] <| .Epure <| .Pexpr [] () <|
                                .PEcase
                                  (.Pexpr [] () <|
                                  .PEctor
                                    .Ctuple
                                    [.Pexpr [] () (.PEsym (a! 46494)), .Pexpr [] () (.PEsym (a! 46495))]) <|
                                [(.Pattern [] <| .CaseCtor .Ctuple <|
                                  [.Pattern [] <|
                                   .CaseCtor
                                     .Cspecified
                                     [.Pattern [] (.CaseBase (.some (a! 46496), .BTy_object .OTy_integer))],
                                   .Pattern [] <|
                                   .CaseCtor
                                     .Cspecified
                                     [.Pattern [] (.CaseBase (.some (a! 46497), .BTy_object .OTy_integer))]],
                                  .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                  .PEif
                                    (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <| .PEnot <|
                                    .Pexpr [] () <|
                                    .PEop
                                      .OpEq
                                      (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                      .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                      [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                       .Pexpr [] () (.PEsym (a! 46496))]) <|
                                    .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                    .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                    [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                     .Pexpr [] () (.PEsym (a! 46497))])
                                    (.Pexpr [] () <|
                                    .PEctor
                                      .Cspecified
                                      [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                  .Pexpr [] () <|
                                  .PEctor
                                    .Cspecified
                                    [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                 (.Pattern [] <|
                                  .CaseBase
                                    (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                  .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                                  .Ctype
                                    [.Aloc (rgc! «queueing.c» 68 205 68 264 68 249)]
                                    (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <| .Epure <|
                              .Pexpr [] () <|
                              .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                              [.Pexpr [] () <| .PEval <| .Vctype <|
                               .Ctype
                                 [.Aloc (rg! «queueing.c» 68 15 68 265)]
                                 (.Basic (.Integer (.Signed .Int_))),
                               .Pexpr [] () (.PEsym (a! 46504))]) <| .Expr [] <|
                            .Esseq
                              (.Pattern [] (.CaseBase (.some (a! 46505), .BTy_loaded .OTy_integer)))
                              (.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                              .Epure <|
                              .Pexpr
                                []
                                ()
                                (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1)))))) <|
                            .Expr [] <| .Epure <| .Pexpr [] () <|
                            .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                            [.Pexpr [] () <| .PEval <| .Vctype <|
                             .Ctype
                               [.Aloc (rg! «queueing.c» 68 15 68 265)]
                               (.Basic (.Integer (.Signed .Int_))),
                             .Pexpr [] () (.PEsym (a! 46505))]),
                           (.Pattern
                              []
                              (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                            .Expr [] <| .Epure <| .Pexpr [] () <|
                            .PEundef
                              (rg! «queueing.c» 68 15 68 265)
                              (.UB_CERB004_unspecified .UB_unspec_conditional))],
                          .Expr
                            [.Aloc (rg! «queueing.c» 68 15 68 265),
                             .Aexpr,
                             .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                          .Pexpr
                            []
                            ()
                            (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                       .Expr [] <| .Epure <| .Pexpr [] () <|
                       .PEcase
                         (.Pexpr [] () <|
                         .PEctor
                           .Ctuple
                           [.Pexpr [] () (.PEsym (a! 46424)), .Pexpr [] () (.PEsym (a! 46425))]) <|
                       [(.Pattern [] <| .CaseCtor .Ctuple <|
                         [.Pattern [] <|
                          .CaseCtor
                            .Cspecified
                            [.Pattern [] (.CaseBase (.some (a! 46426), .BTy_object .OTy_integer))],
                          .Pattern [] <|
                          .CaseCtor
                            .Cspecified
                            [.Pattern [] (.CaseBase (.some (a! 46427), .BTy_object .OTy_integer))]],
                         .Pexpr [.Astd "\xa76.5.9#3"] () <|
                         .PEif
                           (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                           .PEop
                             .OpEq
                             (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                             .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                             [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                              .Pexpr [] () (.PEsym (a! 46426))]) <|
                           .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                           .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                           [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                            .Pexpr [] () (.PEsym (a! 46427))])
                           (.Pexpr [] () <|
                           .PEctor
                             .Cspecified
                             [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                         .Pexpr [] () <|
                         .PEctor
                           .Cspecified
                           [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                        (.Pattern [] <|
                         .CaseBase
                           (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                         .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                         .Ctype
                           [.Aloc (rg! «queueing.c» 68 15 68 265)]
                           (.Basic (.Integer (.Signed .Int_))))],
                       .Expr
                         [.Aloc (rg! «queueing.c» 68 15 68 265),
                          .Aexpr,
                          .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                       .Pexpr
                         []
                         ()
                         (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                    .Expr [] <| .Epure <| .Pexpr [] () <|
                    .PEcase
                      (.Pexpr [] () <|
                      .PEctor
                        .Ctuple
                        [.Pexpr [] () (.PEsym (a! 46419)), .Pexpr [] () (.PEsym (a! 46420))]) <|
                    [(.Pattern [] <| .CaseCtor .Ctuple <|
                      [.Pattern [] <|
                       .CaseCtor
                         .Cspecified
                         [.Pattern [] (.CaseBase (.some (a! 46421), .BTy_object .OTy_integer))],
                       .Pattern [] <|
                       .CaseCtor
                         .Cspecified
                         [.Pattern [] (.CaseBase (.some (a! 46422), .BTy_object .OTy_integer))]],
                      .Pexpr [.Astd "\xa76.5.9#3"] () <|
                      .PEif
                        (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                        .PEop
                          .OpEq
                          (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                          .PEcall
                            (.Sym (rt! "conv_int" 15837442492999787586))
                            [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                             .Pexpr [] () (.PEsym (a! 46421))]) <|
                        .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                        .PEcall
                          (.Sym (rt! "conv_int" 15837442492999787586))
                          [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 46422))])
                        (.Pexpr [] () <|
                        .PEctor
                          .Cspecified
                          [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                      .Pexpr [] () <|
                      .PEctor
                        .Cspecified
                        [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                     (.Pattern [] <|
                      .CaseBase
                        (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                      .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                      .Ctype
                        [.Aloc (rg! «queueing.c» 68 15 68 265)]
                        (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <|
                  .Ecase (.Pexpr [] () (.PEsym (a! 46506))) <|
                  [(.Pattern [] <|
                    .CaseCtor
                      .Cspecified
                      [.Pattern [] (.CaseBase (.some (a! 46507), .BTy_object .OTy_integer))],
                    .Expr [] <|
                    .Eif
                      (.Pexpr [] () <|
                      .PEop
                        .OpEq
                        (.Pexpr [] () (.PEsym (a! 46507)))
                        (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                      (.Expr [] <|
                      .Esseq
                        (.Pattern [] (.CaseBase (.some (a! 46518), .BTy_loaded .OTy_integer)))
                        (.Expr
                          [.Aloc (rgc! «queueing.c» 68 269 68 333 68 313),
                           .Aexpr,
                           .Avalue (.Ainteger (.Signed .Int_))] <|
                        .Ewseq
                          (.Pattern [] <| .CaseCtor .Ctuple <|
                          [.Pattern [] (.CaseBase (.some (a! 46508), .BTy_loaded .OTy_integer)),
                           .Pattern [] (.CaseBase (.some (a! 46509), .BTy_loaded .OTy_integer))])
                          (.Expr [] <| .Eunseq <|
                          [.Expr
                             [.Aloc (rgc! «queueing.c» 68 269 68 333 68 313),
                              .Aexpr,
                              .Avalue (.Ainteger (.Signed .Int_))] <|
                           .Ewseq
                             (.Pattern [] <| .CaseCtor .Ctuple <|
                             [.Pattern [] (.CaseBase (.some (a! 46513), .BTy_loaded .OTy_integer)),
                              .Pattern [] (.CaseBase (.some (a! 46514), .BTy_loaded .OTy_integer))])
                             (.Expr [] <| .Eunseq <|
                             [.Expr
                                [.Aloc (rgc! «queueing.c» 68 269 68 312 68 269),
                                 .Aexpr,
                                 .Avalue (.Ainteger .Size_t)] <| .Epure <| .Pexpr [] () <|
                              .PEctor .Cspecified <|
                              [.Pexpr [] () <| .PEctor .Civsizeof <|
                               [.Pexpr [] () <| .PEval <| .Vctype <|
                                .Ctype
                                  [.Aloc .unknown]
                                  (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]],
                              .Expr
                                [.Aloc (rgc! «queueing.c» 68 316 68 333 68 316),
                                 .Aexpr,
                                 .Avalue (.Ainteger .Size_t)] <| .Epure <| .Pexpr [] () <|
                              .PEctor .Cspecified <|
                              [.Pexpr [] () <| .PEctor .Civsizeof <|
                               [.Pexpr [] () <| .PEval <| .Vctype <|
                                .Ctype
                                  [.Aloc (rg! «queueing.c» 68 323 68 332)]
                                  (.Basic (.Integer (.Signed .LongLong)))]]]) <| .Expr [] <|
                           .Epure <| .Pexpr [] () <|
                           .PEcase
                             (.Pexpr [] () <|
                             .PEctor
                               .Ctuple
                               [.Pexpr [] () (.PEsym (a! 46513)), .Pexpr [] () (.PEsym (a! 46514))]) <|
                           [(.Pattern [] <| .CaseCtor .Ctuple <|
                             [.Pattern [] <|
                              .CaseCtor
                                .Cspecified
                                [.Pattern [] (.CaseBase (.some (a! 46515), .BTy_object .OTy_integer))],
                              .Pattern [] <|
                              .CaseCtor
                                .Cspecified
                                [.Pattern [] (.CaseBase (.some (a! 46516), .BTy_object .OTy_integer))]],
                             .Pexpr [.Astd "\xa76.5.9#3"] () <|
                             .PEif
                               (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                               .PEop
                                 .OpEq
                                 (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                 .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                 [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                  .Pexpr [] () (.PEsym (a! 46515))]) <|
                               .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                               .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                               [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                .Pexpr [] () (.PEsym (a! 46516))])
                               (.Pexpr [] () <|
                               .PEctor
                                 .Cspecified
                                 [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                             .Pexpr [] () <|
                             .PEctor
                               .Cspecified
                               [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                            (.Pattern [] <|
                             .CaseBase
                               (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                             .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                             .Ctype
                               [.Aloc (rgc! «queueing.c» 68 269 68 333 68 313)]
                               (.Basic (.Integer (.Signed .Int_))))],
                           .Expr
                             [.Aloc (rgc! «queueing.c» 68 269 68 333 68 313),
                              .Aexpr,
                              .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                           .Pexpr
                             []
                             ()
                             (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                        .Expr [] <| .Epure <| .Pexpr [] () <|
                        .PEcase
                          (.Pexpr [] () <|
                          .PEctor
                            .Ctuple
                            [.Pexpr [] () (.PEsym (a! 46508)), .Pexpr [] () (.PEsym (a! 46509))]) <|
                        [(.Pattern [] <| .CaseCtor .Ctuple <|
                          [.Pattern [] <|
                           .CaseCtor
                             .Cspecified
                             [.Pattern [] (.CaseBase (.some (a! 46510), .BTy_object .OTy_integer))],
                           .Pattern [] <|
                           .CaseCtor
                             .Cspecified
                             [.Pattern [] (.CaseBase (.some (a! 46511), .BTy_object .OTy_integer))]],
                          .Pexpr [.Astd "\xa76.5.9#3"] () <|
                          .PEif
                            (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <| .PEnot <|
                            .Pexpr [] () <|
                            .PEop
                              .OpEq
                              (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                              .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                              [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                               .Pexpr [] () (.PEsym (a! 46510))]) <|
                            .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                            .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                            [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                             .Pexpr [] () (.PEsym (a! 46511))])
                            (.Pexpr [] () <|
                            .PEctor
                              .Cspecified
                              [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                          .Pexpr [] () <|
                          .PEctor
                            .Cspecified
                            [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                         (.Pattern [] <|
                          .CaseBase
                            (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                          .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                          .Ctype
                            [.Aloc (rgc! «queueing.c» 68 269 68 333 68 313)]
                            (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <| .Epure <|
                      .Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                      [.Pexpr [] () <| .PEval <| .Vctype <|
                       .Ctype
                         [.Aloc (rg! «queueing.c» 68 14 68 334)]
                         (.Basic (.Integer (.Signed .Int_))),
                       .Pexpr [] () (.PEsym (a! 46518))]) <| .Expr [] <|
                    .Esseq
                      (.Pattern [] (.CaseBase (.some (a! 46519), .BTy_loaded .OTy_integer)))
                      (.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                      .Epure <|
                      .Pexpr
                        []
                        ()
                        (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1)))))) <|
                    .Expr [] <| .Epure <| .Pexpr [] () <|
                    .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                    [.Pexpr [] () <| .PEval <| .Vctype <|
                     .Ctype
                       [.Aloc (rg! «queueing.c» 68 14 68 334)]
                       (.Basic (.Integer (.Signed .Int_))),
                     .Pexpr [] () (.PEsym (a! 46519))]),
                   (.Pattern
                      []
                      (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                    .Expr [] <| .Epure <| .Pexpr [] () <|
                    .PEundef
                      (rg! «queueing.c» 68 14 68 334)
                      (.UB_CERB004_unspecified .UB_unspec_conditional))])
                  (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
                (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [.Aloc (rg! «queueing.c» 68 337 68 451), .Astmt] <|
              .Esseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [.Aloc (rg! «queueing.c» 68 337 68 451), .Astmt, .Alabel (.LAloop 3391)] <|
                .Esave (c! "do_46521" 46521, .BTy_unit) [] <| .Expr [] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                  (.Expr [.Aloc (rg! «queueing.c» 68 337 68 451), .Astmt] <|
                  .Esseq
                    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                    (.Expr [.Aloc (rg! «queueing.c» 68 340 68 440), .Astmt] <|
                    .Esseq
                      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                      (.Expr [.Aloc (rg! «queueing.c» 68 342 68 438), .Astmt] <|
                      .Esseq
                        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
                        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                        .Expr
                          [.Aloc (rgc! «queueing.c» 68 342 68 437 68 422),
                           .Aexpr,
                           .Astd "\xa76.5.16#3, sentence 4"] <|
                        .Ewseq
                          (.Pattern [] <| .CaseCtor .Ctuple <|
                          [.Pattern [] (.CaseBase (.some (a! 46524), .BTy_object .OTy_pointer)),
                           .Pattern [] (.CaseBase (.some (a! 46539), .BTy_loaded .OTy_pointer))])
                          (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
                          [.Expr
                             [.Aloc (rgc! «queueing.c» 68 342 68 421 68 342),
                              .Aexpr,
                              .Astd "\xa76.5.3.2"] <|
                           .Ewseq
                             (.Pattern [] (.CaseBase (.some (a! 46525), .BTy_loaded .OTy_pointer)))
                             (.Expr
                               [.Aloc (rgc! «queueing.c» 68 343 68 421 68 343),
                                .Aexpr,
                                .Astd "\xa76.5.4"] <|
                             .Ewseq
                               (.Pattern [] (.CaseBase (.some (a! 46528), .BTy_loaded .OTy_pointer)))
                               (.Expr
                                 [.Aloc (rgc! «queueing.c» 68 391 68 421 68 391),
                                  .Aexpr,
                                  .Astd "\xa76.5.3.2#3, sentence 5"] <|
                               .Ewseq
                                 (.Pattern [] (.CaseBase (.some (a! 46530), .BTy_object .OTy_pointer)))
                                 (.Expr
                                   [.Aloc (rg! «queueing.c» 68 392 68 421),
                                    .Aexpr,
                                    .Astd "\xa76.5.2.3#3, sentence 2"] <|
                                 .Esseq
                                   (.Pattern [] (.CaseBase (.some (a! 46531), .BTy_object .OTy_pointer)))
                                   (.Expr
                                     [.Aloc (rgc! «queueing.c» 68 394 68 414 68 407),
                                      .Aexpr,
                                      .Astd "\xa76.5.2.3#3, sentence 2"] <|
                                   .Esseq
                                     (.Pattern [] (.CaseBase (.some (a! 46532), .BTy_object .OTy_pointer)))
                                     (.Expr
                                       [.Aloc (rgc! «queueing.c» 68 394 68 407 68 399),
                                        .Aexpr,
                                        .Astd "\xa76.5.2.3#4, sentence 2"] <|
                                     .Esseq
                                       (.Pattern [] (.CaseBase (.some (a! 46533), .BTy_loaded .OTy_pointer)))
                                       (.Expr [.Aloc (rg! «queueing.c» 68 394 68 399), .Aexpr] <|
                                       .Ewseq
                                         (.Pattern [] (.CaseBase (.some (a! 46537), .BTy_object .OTy_pointer)))
                                         (.Expr
                                           [.Aloc (rg! «queueing.c» 68 394 68 399), .Aexpr]
                                           (.Epure (.Pexpr [] () (.PEsym (addr! "skb" 3386))))) <|
                                       .Expr [] <| .Eaction <| .Paction .Pos <|
                                       .Action (rg! «queueing.c» 68 394 68 399) () <|
                                       .Load0
                                         (.Pexpr [] () <| .PEval <| .Vctype <|
                                         .Ctype
                                           [.Aloc (rg! «queueing.c» 66 78 66 79)]
                                           (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                                         (.Pexpr [] () (.PEsym (a! 46537)))
                                         .NA) <| .Expr [] <|
                                     .Ecase (.Pexpr [] () (.PEsym (a! 46533))) <|
                                     [(.Pattern
                                         []
                                         (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                                       .Expr [] <| .Epure <| .Pexpr [] () <|
                                       .PEundef
                                         (rgc! «queueing.c» 68 394 68 407 68 399)
                                         (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                                      (.Pattern [] <|
                                       .CaseCtor
                                         .Cspecified
                                         [.Pattern [] (.CaseBase (.some (a! 46534), .BTy_object .OTy_pointer))],
                                       .Expr [] <| .Epure <| .Pexpr [] () <|
                                       .PEmember_shift
                                         (.Pexpr [] () (.PEsym (a! 46534)))
                                         (c! "sk_buff" 1059)
                                         (.Identifier (rg! «queueing.c» 68 401 68 407) "u_node"))]) <|
                                   .Expr [] <| .Epure <| .Pexpr [] () <|
                                   .PEmember_shift
                                     (.Pexpr [] () (.PEsym (a! 46532)))
                                     (sym.Symbol Src.digest 1280 (.SD_unnamed_tag .unknown))
                                     (.Identifier (rg! «queueing.c» 68 408 68 414) "s_node")) <|
                                 .Expr [] <| .Epure <| .Pexpr [] () <|
                                 .PEmember_shift
                                   (.Pexpr [] () (.PEsym (a! 46531)))
                                   (sym.Symbol Src.digest 1281 (.SD_unnamed_tag .unknown))
                                   (.Identifier (rg! «queueing.c» 68 415 68 419) "prev")) <|
                               .Expr [] <|
                               .Epure
                                 (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 46530))]))) <|
                             .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46528))) <|
                             [(.Pattern [] <|
                               .CaseCtor
                                 .Cspecified
                                 [.Pattern [] (.CaseBase (.some (a! 46529), .BTy_object .OTy_pointer))],
                               .Expr [] <|
                               .Ewseq
                                 (.Pattern [] (.CaseBase (.some (a! 46538), .BTy_boolean)))
                                 (.Expr [] <| .Ememop .PtrWellAligned <|
                                 [.Pexpr [] () <| .PEval <| .Vctype <|
                                  .Ctype
                                    [.Aloc .unknown]
                                    (.Pointer (.mk .false .false .false) Ty.struct_sk_buff),
                                  .Pexpr [] () (.PEsym (a! 46529))]) <| .Expr [] <| .Epure <|
                               .Pexpr [] () <| .PEctor .Cspecified <|
                               [.Pexpr [] () <|
                                .PEif
                                  (.Pexpr [] () (.PEsym (a! 46538)))
                                  (.Pexpr [] () (.PEsym (a! 46529))) <| .Pexpr [] () <|
                                .PEundef
                                  (rgc! «queueing.c» 68 343 68 421 68 343)
                                  .UB025_misaligned_pointer_conversion]),
                              (.Pattern
                                 []
                                 (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                               .Expr [] <| .Epure <| .Pexpr [] () <|
                               .PEundef
                                 (rgc! «queueing.c» 68 343 68 421 68 343)
                                 .UB025_misaligned_pointer_conversion)]) <| .Expr [] <|
                           .Ecase (.Pexpr [] () (.PEsym (a! 46525))) <|
                           [(.Pattern [] <|
                             .CaseCtor
                               .Cspecified
                               [.Pattern [] (.CaseBase (.some (a! 46526), .BTy_object .OTy_pointer))],
                             .Expr [] <|
                             .Ewseq
                               (.Pattern [] (.CaseBase (.some (a! 46527), .BTy_boolean)))
                               (.Expr [] <| .Ememop .PtrValidForDeref <|
                               [.Pexpr [] () <| .PEval <| .Vctype <|
                                .Ctype
                                  [.Aloc .unknown]
                                  (.Pointer (.mk .false .false .false) Ty.struct_sk_buff),
                                .Pexpr [] () (.PEsym (a! 46526))]) <| .Expr [] <| .Epure <|
                             .Pexpr [] () <|
                             .PEif
                               (.Pexpr [] () (.PEsym (a! 46527)))
                               (.Pexpr [] () (.PEsym (a! 46526))) <|
                             .Pexpr [.Astd "\xa76.5.3.2#4, sentence 4"] () <|
                             .PEundef
                               (rgc! «queueing.c» 68 342 68 421 68 342)
                               .UB043_indirection_invalid_value),
                            (.Pattern
                               []
                               (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                             .Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.3.2#4, sentence 4"] () <|
                             .PEundef
                               (rgc! «queueing.c» 68 342 68 421 68 342)
                               .UB043_indirection_invalid_value)],
                           .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Cspecified <|
                           [.Pexpr [] () <|
                            .PEval
                              (.Vobject (.OVpointer (.PV .Prov_none (.PVnull Ty.struct_sk_buff))))]]) <|
                        .Expr [] <|
                        .Ewseq
                          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                          (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
                          .Action (rgc! «queueing.c» 68 342 68 437 68 422) () <|
                          .Store0
                            .false
                            (.Pexpr [] () <| .PEval <| .Vctype <|
                            .Ctype
                              [.Aloc .unknown]
                              (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                            (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 46524)))
                            (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 46539)))
                            .NA) <| .Expr [] <|
                        .Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 46539))))
                        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
                      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
                  .Esseq
                    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                    (.Expr
                      [.Aloc (rg! «queueing.c» 68 337 68 451),
                       .Astmt,
                       .Alabel (.LAloop_continue 3391)] <|
                    .Esave (c! "continue_46408" 46408, .BTy_unit) [] <|
                    .Expr
                      [.Aloc (rg! «queueing.c» 68 337 68 451), .Astmt]
                      (.Epure (.Pexpr [] () (.PEval .Vunit))))
                    (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.some (a! 46523), .BTy_loaded .OTy_integer)))
                  (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                  .Expr
                    [.Aloc (rg! «queueing.c» 68 448 68 449),
                     .Aexpr,
                     .Avalue (.Ainteger (.Signed .Int_))] <|
                  .Epure
                    (.Pexpr
                      []
                      ()
                      (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))) <|
                .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46523))) <|
                [(.Pattern [] <|
                  .CaseCtor
                    .Cspecified
                    [.Pattern [] (.CaseBase (.some (a! 46522), .BTy_object .OTy_integer))],
                  .Expr [] <|
                  .Eif
                    (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                    .PEop
                      .OpEq
                      (.Pexpr [] () (.PEsym (a! 46522)))
                      (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                    (.Expr [] (.Erun () (c! "do_46521" 46521) []))
                    (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))),
                 (.Pattern
                    []
                    (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                  .Expr [] <| .Epure <| .Pexpr [] () <|
                  .PEundef (rg! «queueing.c» 68 337 68 451) (.DUMMY "unspecified AilSdo"))]) <|
              .Expr [] <|
              .Esseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr
                  [.Aloc (rg! «queueing.c» 68 337 68 451), .Astmt, .Alabel (.LAloop_break 3391)] <|
                .Esave (c! "break_46409" 46409, .BTy_unit) [] <|
                .Expr
                  [.Aloc (rg! «queueing.c» 68 337 68 451), .Astmt]
                  (.Epure (.Pexpr [] () (.PEval .Vunit))))
                (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
              (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr
              [.Aloc (rg! «queueing.c» 68 2 68 464), .Astmt, .Alabel (.LAloop_continue 3393)] <|
            .Esave (c! "continue_46406" 46406, .BTy_unit) [] <|
            .Expr
              [.Aloc (rg! «queueing.c» 68 2 68 464), .Astmt]
              (.Epure (.Pexpr [] () (.PEval .Vunit))))
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 46416), .BTy_loaded .OTy_integer)))
          (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
          .Expr
            [.Aloc (rg! «queueing.c» 68 461 68 462), .Aexpr, .Avalue (.Ainteger (.Signed .Int_))]
            (.Epure
              (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))))) <|
        .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46416))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 46415), .BTy_object .OTy_integer))],
          .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 46415)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
            (.Expr [] (.Erun () (c! "do_46414" 46414) []))
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <|
          .Epure
            (.Pexpr [] () (.PEundef (rg! «queueing.c» 68 2 68 464) (.DUMMY "unspecified AilSdo"))))]) <|
      .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Aloc (rg! «queueing.c» 68 2 68 464), .Astmt, .Alabel (.LAloop_break 3393)] <|
        .Esave (c! "break_46407" 46407, .BTy_unit) [] <|
        .Expr
          [.Aloc (rg! «queueing.c» 68 2 68 464), .Astmt]
          (.Epure (.Pexpr [] () (.PEval .Vunit))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «queueing.c» 69 2 69 1618), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Aloc (rg! «queueing.c» 69 2 69 1618), .Astmt, .Alabel (.LAloop 3420)] <|
        .Esave (c! "do_46540" 46540, .BTy_unit) [] <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc (rg! «queueing.c» 69 2 69 1618), .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [.Aloc (rg! «queueing.c» 69 5 69 1607), .Astmt] <|
            .Esseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [.Aloc (rg! «queueing.c» 69 7 69 1166), .Astmt] <|
              .Esseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                .Expr [.Aloc (rg! «queueing.c» 69 7 69 1165), .Aexpr, .Astd "\xa76.5.4"] <|
                .Ewseq
                  (.Pattern [] (.CaseBase (.some (a! 46543), .BTy_loaded .OTy_integer)))
                  (.Expr
                    [.Aloc (rg! «queueing.c» 69 14 69 1164),
                     .Aexpr,
                     .Avalue (.Ainteger (.Signed .Int_)),
                     .Astd "6.5.14#3",
                     .Astd "6.5.14#4",
                     .Aexpr,
                     .Avalue (.Ainteger (.Signed .Int_))] <|
                  .Esseq
                    (.Pattern [] (.CaseBase (.some (a! 46632), .BTy_loaded .OTy_integer)))
                    (.Expr
                      [.Aloc (rg! «queueing.c» 69 15 69 929),
                       .Aexpr,
                       .Avalue (.Ainteger (.Signed .Int_))] <|
                    .Ewseq
                      (.Pattern [] <| .CaseCtor .Ctuple <|
                      [.Pattern [] (.CaseBase (.some (a! 46545), .BTy_loaded .OTy_integer)),
                       .Pattern [] (.CaseBase (.some (a! 46546), .BTy_loaded .OTy_integer))])
                      (.Expr [] <| .Eunseq <|
                      [.Expr
                         [.Aloc (rg! «queueing.c» 69 15 69 929),
                          .Aexpr,
                          .Avalue (.Ainteger (.Signed .Int_))] <|
                       .Ewseq
                         (.Pattern [] <| .CaseCtor .Ctuple <|
                         [.Pattern [] (.CaseBase (.some (a! 46550), .BTy_loaded .OTy_integer)),
                          .Pattern [] (.CaseBase (.some (a! 46551), .BTy_loaded .OTy_integer))])
                         (.Expr [] <| .Eunseq <|
                         [.Expr
                            [.Aloc (rg! «queueing.c» 69 15 69 929),
                             .Aexpr,
                             .Avalue (.Ainteger (.Signed .Int_)),
                             .Astd "6.5.14#3",
                             .Astd "6.5.14#4",
                             .Aexpr,
                             .Avalue (.Ainteger (.Signed .Int_))] <|
                          .Esseq
                            (.Pattern [] (.CaseBase (.some (a! 46618), .BTy_loaded .OTy_integer)))
                            (.Expr
                              [.Aloc (rgc! «queueing.c» 69 16 69 699 69 472),
                               .Aexpr,
                               .Avalue (.Ainteger (.Signed .Int_))] <|
                            .Ewseq
                              (.Pattern [] <| .CaseCtor .Ctuple <|
                              [.Pattern [] (.CaseBase (.some (a! 46555), .BTy_loaded .OTy_integer)),
                               .Pattern [] (.CaseBase (.some (a! 46556), .BTy_loaded .OTy_integer))])
                              (.Expr [] <| .Eunseq <|
                              [.Expr
                                 [.Aloc (rgc! «queueing.c» 69 16 69 699 69 472),
                                  .Aexpr,
                                  .Avalue (.Ainteger (.Signed .Int_))] <|
                               .Ewseq
                                 (.Pattern [] <| .CaseCtor .Ctuple <|
                                 [.Pattern [] (.CaseBase (.some (a! 46560), .BTy_loaded .OTy_integer)),
                                  .Pattern [] (.CaseBase (.some (a! 46561), .BTy_loaded .OTy_integer))])
                                 (.Expr [] <| .Eunseq <|
                                 [.Expr
                                    [.Aloc (rgc! «queueing.c» 69 16 69 699 69 472),
                                     .Aexpr,
                                     .Avalue (.Ainteger (.Signed .Int_)),
                                     .Astd "6.5.14#3",
                                     .Astd "6.5.14#4",
                                     .Aexpr,
                                     .Avalue (.Ainteger (.Signed .Int_))] <|
                                  .Esseq
                                    (.Pattern [] (.CaseBase (.some (a! 46604), .BTy_loaded .OTy_integer)))
                                    (.Expr
                                      [.Aloc (rgc! «queueing.c» 69 16 69 471 69 242),
                                       .Aexpr,
                                       .Avalue (.Ainteger (.Signed .Int_))] <|
                                    .Ewseq
                                      (.Pattern [] <| .CaseCtor .Ctuple <|
                                      [.Pattern [] (.CaseBase (.some (a! 46565), .BTy_loaded .OTy_integer)),
                                       .Pattern [] (.CaseBase (.some (a! 46566), .BTy_loaded .OTy_integer))])
                                      (.Expr [] <| .Eunseq <|
                                      [.Expr
                                         [.Aloc (rgc! «queueing.c» 69 16 69 471 69 242),
                                          .Aexpr,
                                          .Avalue (.Ainteger (.Signed .Int_))] <|
                                       .Ewseq
                                         (.Pattern [] <| .CaseCtor .Ctuple <|
                                         [.Pattern [] (.CaseBase (.some (a! 46570), .BTy_loaded .OTy_integer)),
                                          .Pattern [] (.CaseBase (.some (a! 46571), .BTy_loaded .OTy_integer))])
                                         (.Expr [] <| .Eunseq <|
                                         [.Expr
                                            [.Aloc (rgc! «queueing.c» 69 16 69 471 69 242),
                                             .Aexpr,
                                             .Avalue (.Ainteger (.Signed .Int_)),
                                             .Astd "6.5.14#3",
                                             .Astd "6.5.14#4",
                                             .Aexpr,
                                             .Avalue (.Ainteger (.Signed .Int_))] <|
                                          .Esseq
                                            (.Pattern [] (.CaseBase (.some (a! 46590), .BTy_loaded .OTy_integer)))
                                            (.Expr
                                              [.Aloc (rgc! «queueing.c» 69 16 69 241 69 226),
                                               .Aexpr,
                                               .Avalue (.Ainteger (.Signed .Int_))] <|
                                            .Ewseq
                                              (.Pattern [] <| .CaseCtor .Ctuple <|
                                              [.Pattern [] (.CaseBase (.some (a! 46575), .BTy_loaded .OTy_integer)),
                                               .Pattern [] (.CaseBase (.some (a! 46576), .BTy_loaded .OTy_integer))])
                                              (.Expr [] <| .Eunseq <|
                                              [.Expr
                                                 [.Aloc (rgc! «queueing.c» 69 16 69 241 69 226),
                                                  .Aexpr,
                                                  .Avalue (.Ainteger (.Signed .Int_))] <|
                                               .Ewseq
                                                 (.Pattern [] <| .CaseCtor .Ctuple <|
                                                 [.Pattern [] (.CaseBase (.some (a! 46580), .BTy_loaded .OTy_integer)),
                                                  .Pattern [] (.CaseBase (.some (a! 46581), .BTy_loaded .OTy_integer))])
                                                 (.Expr [] <| .Eunseq <|
                                                 [.Expr
                                                    [.Aloc (rgc! «queueing.c» 69 16 69 241 69 226),
                                                     .Aexpr,
                                                     .Avalue (.Ainteger (.Signed .Int_))] <|
                                                  .Ewseq
                                                    (.Pattern [] <| .CaseCtor .Ctuple <|
                                                    [.Pattern [] (.CaseBase (.some (a! 46585), .BTy_loaded .OTy_integer)),
                                                     .Pattern [] (.CaseBase (.some (a! 46586), .BTy_loaded .OTy_integer))])
                                                    (.Expr [] <| .Eunseq <|
                                                    [.Expr
                                                       [.Aloc (rgc! «queueing.c» 69 16 69 225 69 16),
                                                        .Aexpr,
                                                        .Avalue (.Ainteger .Size_t)] <| .Epure <|
                                                     .Pexpr [] () <| .PEctor .Cspecified <|
                                                     [.Pexpr [] () <| .PEctor .Civsizeof <|
                                                      [.Pexpr [] () <| .PEval <| .Vctype <|
                                                       .Ctype
                                                         [.Aloc .unknown]
                                                         (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]],
                                                     .Expr
                                                       [.Aloc (rgc! «queueing.c» 69 229 69 241 69 229),
                                                        .Aexpr,
                                                        .Avalue (.Ainteger .Size_t),
                                                        .Astd "\xa76.5.3.4#4, sentence 1"] <|
                                                     .Epure <| .Pexpr [] () <|
                                                     .PEctor
                                                       .Cspecified
                                                       [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]]) <|
                                                  .Expr [] <| .Epure <| .Pexpr [] () <|
                                                  .PEcase
                                                    (.Pexpr [] () <|
                                                    .PEctor
                                                      .Ctuple
                                                      [.Pexpr [] () (.PEsym (a! 46585)), .Pexpr [] () (.PEsym (a! 46586))]) <|
                                                  [(.Pattern [] <| .CaseCtor .Ctuple <|
                                                    [.Pattern [] <|
                                                     .CaseCtor
                                                       .Cspecified
                                                       [.Pattern [] (.CaseBase (.some (a! 46587), .BTy_object .OTy_integer))],
                                                     .Pattern [] <|
                                                     .CaseCtor
                                                       .Cspecified
                                                       [.Pattern [] (.CaseBase (.some (a! 46588), .BTy_object .OTy_integer))]],
                                                    .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                                    .PEif
                                                      (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                                      .PEop
                                                        .OpEq
                                                        (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                        .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                        [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                                         .Pexpr [] () (.PEsym (a! 46587))]) <|
                                                      .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                      .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                      [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                                       .Pexpr [] () (.PEsym (a! 46588))])
                                                      (.Pexpr [] () <|
                                                      .PEctor
                                                        .Cspecified
                                                        [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                                    .Pexpr [] () <|
                                                    .PEctor
                                                      .Cspecified
                                                      [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                                   (.Pattern [] <|
                                                    .CaseBase
                                                      (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                                    .Pexpr [] () <| .PEval <| .Vloaded <|
                                                    .LVunspecified <|
                                                    .Ctype
                                                      [.Aloc (rgc! «queueing.c» 69 16 69 241 69 226)]
                                                      (.Basic (.Integer (.Signed .Int_))))],
                                                  .Expr
                                                    [.Aloc (rgc! «queueing.c» 69 16 69 241 69 226),
                                                     .Aexpr,
                                                     .Avalue (.Ainteger (.Signed .Int_))] <|
                                                  .Epure <|
                                                  .Pexpr
                                                    []
                                                    ()
                                                    (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                                               .Expr [] <| .Epure <| .Pexpr [] () <|
                                               .PEcase
                                                 (.Pexpr [] () <|
                                                 .PEctor
                                                   .Ctuple
                                                   [.Pexpr [] () (.PEsym (a! 46580)), .Pexpr [] () (.PEsym (a! 46581))]) <|
                                               [(.Pattern [] <| .CaseCtor .Ctuple <|
                                                 [.Pattern [] <|
                                                  .CaseCtor
                                                    .Cspecified
                                                    [.Pattern [] (.CaseBase (.some (a! 46582), .BTy_object .OTy_integer))],
                                                  .Pattern [] <|
                                                  .CaseCtor
                                                    .Cspecified
                                                    [.Pattern [] (.CaseBase (.some (a! 46583), .BTy_object .OTy_integer))]],
                                                 .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                                 .PEif
                                                   (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                                   .PEop
                                                     .OpEq
                                                     (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                     .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                     [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                                      .Pexpr [] () (.PEsym (a! 46582))]) <|
                                                   .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                   .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                   [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                                    .Pexpr [] () (.PEsym (a! 46583))])
                                                   (.Pexpr [] () <|
                                                   .PEctor
                                                     .Cspecified
                                                     [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                                 .Pexpr [] () <|
                                                 .PEctor
                                                   .Cspecified
                                                   [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                                (.Pattern [] <|
                                                 .CaseBase
                                                   (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                                 .Pexpr [] () <| .PEval <| .Vloaded <|
                                                 .LVunspecified <|
                                                 .Ctype
                                                   [.Aloc (rgc! «queueing.c» 69 16 69 241 69 226)]
                                                   (.Basic (.Integer (.Signed .Int_))))],
                                               .Expr
                                                 [.Aloc (rgc! «queueing.c» 69 16 69 241 69 226),
                                                  .Aexpr,
                                                  .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                                               .Pexpr
                                                 []
                                                 ()
                                                 (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                                            .Expr [] <| .Epure <| .Pexpr [] () <|
                                            .PEcase
                                              (.Pexpr [] () <|
                                              .PEctor
                                                .Ctuple
                                                [.Pexpr [] () (.PEsym (a! 46575)), .Pexpr [] () (.PEsym (a! 46576))]) <|
                                            [(.Pattern [] <| .CaseCtor .Ctuple <|
                                              [.Pattern [] <|
                                               .CaseCtor
                                                 .Cspecified
                                                 [.Pattern [] (.CaseBase (.some (a! 46577), .BTy_object .OTy_integer))],
                                               .Pattern [] <|
                                               .CaseCtor
                                                 .Cspecified
                                                 [.Pattern [] (.CaseBase (.some (a! 46578), .BTy_object .OTy_integer))]],
                                              .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                              .PEif
                                                (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                                .PEop
                                                  .OpEq
                                                  (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                  .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                  [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                                   .Pexpr [] () (.PEsym (a! 46577))]) <|
                                                .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                                 .Pexpr [] () (.PEsym (a! 46578))])
                                                (.Pexpr [] () <|
                                                .PEctor
                                                  .Cspecified
                                                  [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                              .Pexpr [] () <|
                                              .PEctor
                                                .Cspecified
                                                [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                             (.Pattern [] <|
                                              .CaseBase
                                                (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                              .Pexpr [] () <| .PEval <| .Vloaded <|
                                              .LVunspecified <|
                                              .Ctype
                                                [.Aloc (rgc! «queueing.c» 69 16 69 241 69 226)]
                                                (.Basic (.Integer (.Signed .Int_))))]) <|
                                          .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46590))) <|
                                          [(.Pattern [] <|
                                            .CaseCtor
                                              .Cspecified
                                              [.Pattern [] (.CaseBase (.some (a! 46591), .BTy_object .OTy_integer))],
                                            .Expr [] <|
                                            .Eif
                                              (.Pexpr [] () <|
                                              .PEop
                                                .OpEq
                                                (.Pexpr [] () (.PEsym (a! 46591)))
                                                (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                                              (.Expr [] <|
                                              .Esseq
                                                (.Pattern [] (.CaseBase (.some (a! 46602), .BTy_loaded .OTy_integer)))
                                                (.Expr
                                                  [.Aloc (rgc! «queueing.c» 69 245 69 471 69 455),
                                                   .Aexpr,
                                                   .Avalue (.Ainteger (.Signed .Int_))] <|
                                                .Ewseq
                                                  (.Pattern [] <| .CaseCtor .Ctuple <|
                                                  [.Pattern [] (.CaseBase (.some (a! 46592), .BTy_loaded .OTy_integer)),
                                                   .Pattern [] (.CaseBase (.some (a! 46593), .BTy_loaded .OTy_integer))])
                                                  (.Expr [] <| .Eunseq <|
                                                  [.Expr
                                                     [.Aloc (rgc! «queueing.c» 69 245 69 471 69 455),
                                                      .Aexpr,
                                                      .Avalue (.Ainteger (.Signed .Int_))] <|
                                                   .Ewseq
                                                     (.Pattern [] <| .CaseCtor .Ctuple <|
                                                     [.Pattern [] (.CaseBase (.some (a! 46597), .BTy_loaded .OTy_integer)),
                                                      .Pattern [] (.CaseBase (.some (a! 46598), .BTy_loaded .OTy_integer))])
                                                     (.Expr [] <| .Eunseq <|
                                                     [.Expr
                                                        [.Aloc (rgc! «queueing.c» 69 245 69 454 69 245),
                                                         .Aexpr,
                                                         .Avalue (.Ainteger .Size_t)] <| .Epure <|
                                                      .Pexpr [] () <| .PEctor .Cspecified <|
                                                      [.Pexpr [] () <| .PEctor .Civsizeof <|
                                                       [.Pexpr [] () <| .PEval <| .Vctype <|
                                                        .Ctype
                                                          [.Aloc .unknown]
                                                          (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]],
                                                      .Expr
                                                        [.Aloc (rgc! «queueing.c» 69 458 69 471 69 458),
                                                         .Aexpr,
                                                         .Avalue (.Ainteger .Size_t)] <| .Epure <|
                                                      .Pexpr [] () <| .PEctor .Cspecified <|
                                                      [.Pexpr [] () <| .PEctor .Civsizeof <|
                                                       [.Pexpr [] () <| .PEval <| .Vctype <|
                                                        .Ctype
                                                          [.Aloc (rg! «queueing.c» 69 465 69 470)]
                                                          (.Basic (.Integer (.Signed .Short)))]]]) <|
                                                   .Expr [] <| .Epure <| .Pexpr [] () <|
                                                   .PEcase
                                                     (.Pexpr [] () <|
                                                     .PEctor
                                                       .Ctuple
                                                       [.Pexpr [] () (.PEsym (a! 46597)), .Pexpr [] () (.PEsym (a! 46598))]) <|
                                                   [(.Pattern [] <| .CaseCtor .Ctuple <|
                                                     [.Pattern [] <|
                                                      .CaseCtor
                                                        .Cspecified
                                                        [.Pattern [] (.CaseBase (.some (a! 46599), .BTy_object .OTy_integer))],
                                                      .Pattern [] <|
                                                      .CaseCtor
                                                        .Cspecified
                                                        [.Pattern [] (.CaseBase (.some (a! 46600), .BTy_object .OTy_integer))]],
                                                     .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                                     .PEif
                                                       (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                                       .PEop
                                                         .OpEq
                                                         (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                         .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                         [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                                          .Pexpr [] () (.PEsym (a! 46599))]) <|
                                                       .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                       .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                       [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                                        .Pexpr [] () (.PEsym (a! 46600))])
                                                       (.Pexpr [] () <|
                                                       .PEctor
                                                         .Cspecified
                                                         [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                                     .Pexpr [] () <|
                                                     .PEctor
                                                       .Cspecified
                                                       [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                                    (.Pattern [] <|
                                                     .CaseBase
                                                       (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                                     .Pexpr [] () <| .PEval <| .Vloaded <|
                                                     .LVunspecified <|
                                                     .Ctype
                                                       [.Aloc (rgc! «queueing.c» 69 245 69 471 69 455)]
                                                       (.Basic (.Integer (.Signed .Int_))))],
                                                   .Expr
                                                     [.Aloc (rgc! «queueing.c» 69 245 69 471 69 455),
                                                      .Aexpr,
                                                      .Avalue (.Ainteger (.Signed .Int_))] <|
                                                   .Epure <|
                                                   .Pexpr
                                                     []
                                                     ()
                                                     (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                                                .Expr [] <| .Epure <| .Pexpr [] () <|
                                                .PEcase
                                                  (.Pexpr [] () <|
                                                  .PEctor
                                                    .Ctuple
                                                    [.Pexpr [] () (.PEsym (a! 46592)), .Pexpr [] () (.PEsym (a! 46593))]) <|
                                                [(.Pattern [] <| .CaseCtor .Ctuple <|
                                                  [.Pattern [] <|
                                                   .CaseCtor
                                                     .Cspecified
                                                     [.Pattern [] (.CaseBase (.some (a! 46594), .BTy_object .OTy_integer))],
                                                   .Pattern [] <|
                                                   .CaseCtor
                                                     .Cspecified
                                                     [.Pattern [] (.CaseBase (.some (a! 46595), .BTy_object .OTy_integer))]],
                                                  .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                                  .PEif
                                                    (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                                    .PEnot <| .Pexpr [] () <|
                                                    .PEop
                                                      .OpEq
                                                      (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                      .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                      [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                                       .Pexpr [] () (.PEsym (a! 46594))]) <|
                                                    .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                    .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                    [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                                     .Pexpr [] () (.PEsym (a! 46595))])
                                                    (.Pexpr [] () <|
                                                    .PEctor
                                                      .Cspecified
                                                      [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                                  .Pexpr [] () <|
                                                  .PEctor
                                                    .Cspecified
                                                    [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                                 (.Pattern [] <|
                                                  .CaseBase
                                                    (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                                  .Pexpr [] () <| .PEval <| .Vloaded <|
                                                  .LVunspecified <|
                                                  .Ctype
                                                    [.Aloc (rgc! «queueing.c» 69 245 69 471 69 455)]
                                                    (.Basic (.Integer (.Signed .Int_))))]) <|
                                              .Expr [] <| .Epure <| .Pexpr [] () <|
                                              .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                                              [.Pexpr [] () <| .PEval <| .Vctype <|
                                               .Ctype
                                                 [.Aloc (rgc! «queueing.c» 69 16 69 471 69 242)]
                                                 (.Basic (.Integer (.Signed .Int_))),
                                               .Pexpr [] () (.PEsym (a! 46602))]) <| .Expr [] <|
                                            .Esseq
                                              (.Pattern [] (.CaseBase (.some (a! 46603), .BTy_loaded .OTy_integer)))
                                              (.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                                              .Epure <|
                                              .Pexpr
                                                []
                                                ()
                                                (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1)))))) <|
                                            .Expr [] <| .Epure <| .Pexpr [] () <|
                                            .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                                            [.Pexpr [] () <| .PEval <| .Vctype <|
                                             .Ctype
                                               [.Aloc (rgc! «queueing.c» 69 16 69 471 69 242)]
                                               (.Basic (.Integer (.Signed .Int_))),
                                             .Pexpr [] () (.PEsym (a! 46603))]),
                                           (.Pattern
                                              []
                                              (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                                            .Expr [] <| .Epure <| .Pexpr [] () <|
                                            .PEundef
                                              (rgc! «queueing.c» 69 16 69 471 69 242)
                                              (.UB_CERB004_unspecified .UB_unspec_conditional))],
                                          .Expr
                                            [.Aloc (rgc! «queueing.c» 69 16 69 471 69 242),
                                             .Aexpr,
                                             .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                                          .Pexpr
                                            []
                                            ()
                                            (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                                       .Expr [] <| .Epure <| .Pexpr [] () <|
                                       .PEcase
                                         (.Pexpr [] () <|
                                         .PEctor
                                           .Ctuple
                                           [.Pexpr [] () (.PEsym (a! 46570)), .Pexpr [] () (.PEsym (a! 46571))]) <|
                                       [(.Pattern [] <| .CaseCtor .Ctuple <|
                                         [.Pattern [] <|
                                          .CaseCtor
                                            .Cspecified
                                            [.Pattern [] (.CaseBase (.some (a! 46572), .BTy_object .OTy_integer))],
                                          .Pattern [] <|
                                          .CaseCtor
                                            .Cspecified
                                            [.Pattern [] (.CaseBase (.some (a! 46573), .BTy_object .OTy_integer))]],
                                         .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                         .PEif
                                           (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                           .PEop
                                             .OpEq
                                             (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                             .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                             [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                              .Pexpr [] () (.PEsym (a! 46572))]) <|
                                           .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                           .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                           [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                            .Pexpr [] () (.PEsym (a! 46573))])
                                           (.Pexpr [] () <|
                                           .PEctor
                                             .Cspecified
                                             [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                         .Pexpr [] () <|
                                         .PEctor
                                           .Cspecified
                                           [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                        (.Pattern [] <|
                                         .CaseBase
                                           (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                         .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                                         .Ctype
                                           [.Aloc (rgc! «queueing.c» 69 16 69 471 69 242)]
                                           (.Basic (.Integer (.Signed .Int_))))],
                                       .Expr
                                         [.Aloc (rgc! «queueing.c» 69 16 69 471 69 242),
                                          .Aexpr,
                                          .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                                       .Pexpr
                                         []
                                         ()
                                         (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                                    .Expr [] <| .Epure <| .Pexpr [] () <|
                                    .PEcase
                                      (.Pexpr [] () <|
                                      .PEctor
                                        .Ctuple
                                        [.Pexpr [] () (.PEsym (a! 46565)), .Pexpr [] () (.PEsym (a! 46566))]) <|
                                    [(.Pattern [] <| .CaseCtor .Ctuple <|
                                      [.Pattern [] <|
                                       .CaseCtor
                                         .Cspecified
                                         [.Pattern [] (.CaseBase (.some (a! 46567), .BTy_object .OTy_integer))],
                                       .Pattern [] <|
                                       .CaseCtor
                                         .Cspecified
                                         [.Pattern [] (.CaseBase (.some (a! 46568), .BTy_object .OTy_integer))]],
                                      .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                      .PEif
                                        (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                        .PEop
                                          .OpEq
                                          (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                          .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                          [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                           .Pexpr [] () (.PEsym (a! 46567))]) <|
                                        .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                        .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                        [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                         .Pexpr [] () (.PEsym (a! 46568))])
                                        (.Pexpr [] () <|
                                        .PEctor
                                          .Cspecified
                                          [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                      .Pexpr [] () <|
                                      .PEctor
                                        .Cspecified
                                        [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                     (.Pattern [] <|
                                      .CaseBase
                                        (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                      .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                                      .Ctype
                                        [.Aloc (rgc! «queueing.c» 69 16 69 471 69 242)]
                                        (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <|
                                  .Ecase (.Pexpr [] () (.PEsym (a! 46604))) <|
                                  [(.Pattern [] <|
                                    .CaseCtor
                                      .Cspecified
                                      [.Pattern [] (.CaseBase (.some (a! 46605), .BTy_object .OTy_integer))],
                                    .Expr [] <|
                                    .Eif
                                      (.Pexpr [] () <|
                                      .PEop
                                        .OpEq
                                        (.Pexpr [] () (.PEsym (a! 46605)))
                                        (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                                      (.Expr [] <|
                                      .Esseq
                                        (.Pattern [] (.CaseBase (.some (a! 46616), .BTy_loaded .OTy_integer)))
                                        (.Expr
                                          [.Aloc (rgc! «queueing.c» 69 475 69 699 69 685),
                                           .Aexpr,
                                           .Avalue (.Ainteger (.Signed .Int_))] <|
                                        .Ewseq
                                          (.Pattern [] <| .CaseCtor .Ctuple <|
                                          [.Pattern [] (.CaseBase (.some (a! 46606), .BTy_loaded .OTy_integer)),
                                           .Pattern [] (.CaseBase (.some (a! 46607), .BTy_loaded .OTy_integer))])
                                          (.Expr [] <| .Eunseq <|
                                          [.Expr
                                             [.Aloc (rgc! «queueing.c» 69 475 69 699 69 685),
                                              .Aexpr,
                                              .Avalue (.Ainteger (.Signed .Int_))] <|
                                           .Ewseq
                                             (.Pattern [] <| .CaseCtor .Ctuple <|
                                             [.Pattern [] (.CaseBase (.some (a! 46611), .BTy_loaded .OTy_integer)),
                                              .Pattern [] (.CaseBase (.some (a! 46612), .BTy_loaded .OTy_integer))])
                                             (.Expr [] <| .Eunseq <|
                                             [.Expr
                                                [.Aloc (rgc! «queueing.c» 69 475 69 684 69 475),
                                                 .Aexpr,
                                                 .Avalue (.Ainteger .Size_t)] <| .Epure <|
                                              .Pexpr [] () <| .PEctor .Cspecified <|
                                              [.Pexpr [] () <| .PEctor .Civsizeof <|
                                               [.Pexpr [] () <| .PEval <| .Vctype <|
                                                .Ctype
                                                  [.Aloc .unknown]
                                                  (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]],
                                              .Expr
                                                [.Aloc (rgc! «queueing.c» 69 688 69 699 69 688),
                                                 .Aexpr,
                                                 .Avalue (.Ainteger .Size_t)] <| .Epure <|
                                              .Pexpr [] () <| .PEctor .Cspecified <|
                                              [.Pexpr [] () <| .PEctor .Civsizeof <|
                                               [.Pexpr [] () <| .PEval <| .Vctype <|
                                                .Ctype
                                                  [.Aloc (rg! «queueing.c» 69 695 69 698)]
                                                  (.Basic (.Integer (.Signed .Int_)))]]]) <|
                                           .Expr [] <| .Epure <| .Pexpr [] () <|
                                           .PEcase
                                             (.Pexpr [] () <|
                                             .PEctor
                                               .Ctuple
                                               [.Pexpr [] () (.PEsym (a! 46611)), .Pexpr [] () (.PEsym (a! 46612))]) <|
                                           [(.Pattern [] <| .CaseCtor .Ctuple <|
                                             [.Pattern [] <|
                                              .CaseCtor
                                                .Cspecified
                                                [.Pattern [] (.CaseBase (.some (a! 46613), .BTy_object .OTy_integer))],
                                              .Pattern [] <|
                                              .CaseCtor
                                                .Cspecified
                                                [.Pattern [] (.CaseBase (.some (a! 46614), .BTy_object .OTy_integer))]],
                                             .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                             .PEif
                                               (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                               .PEop
                                                 .OpEq
                                                 (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                 .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                 [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                                  .Pexpr [] () (.PEsym (a! 46613))]) <|
                                               .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                               .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                               [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                                .Pexpr [] () (.PEsym (a! 46614))])
                                               (.Pexpr [] () <|
                                               .PEctor
                                                 .Cspecified
                                                 [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                             .Pexpr [] () <|
                                             .PEctor
                                               .Cspecified
                                               [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                            (.Pattern [] <|
                                             .CaseBase
                                               (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                             .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                                             .Ctype
                                               [.Aloc (rgc! «queueing.c» 69 475 69 699 69 685)]
                                               (.Basic (.Integer (.Signed .Int_))))],
                                           .Expr
                                             [.Aloc (rgc! «queueing.c» 69 475 69 699 69 685),
                                              .Aexpr,
                                              .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                                           .Pexpr
                                             []
                                             ()
                                             (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                                        .Expr [] <| .Epure <| .Pexpr [] () <|
                                        .PEcase
                                          (.Pexpr [] () <|
                                          .PEctor
                                            .Ctuple
                                            [.Pexpr [] () (.PEsym (a! 46606)), .Pexpr [] () (.PEsym (a! 46607))]) <|
                                        [(.Pattern [] <| .CaseCtor .Ctuple <|
                                          [.Pattern [] <|
                                           .CaseCtor
                                             .Cspecified
                                             [.Pattern [] (.CaseBase (.some (a! 46608), .BTy_object .OTy_integer))],
                                           .Pattern [] <|
                                           .CaseCtor
                                             .Cspecified
                                             [.Pattern [] (.CaseBase (.some (a! 46609), .BTy_object .OTy_integer))]],
                                          .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                          .PEif
                                            (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                            .PEnot <| .Pexpr [] () <|
                                            .PEop
                                              .OpEq
                                              (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                              .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                              [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                               .Pexpr [] () (.PEsym (a! 46608))]) <|
                                            .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                            .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                            [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                             .Pexpr [] () (.PEsym (a! 46609))])
                                            (.Pexpr [] () <|
                                            .PEctor
                                              .Cspecified
                                              [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                          .Pexpr [] () <|
                                          .PEctor
                                            .Cspecified
                                            [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                         (.Pattern [] <|
                                          .CaseBase
                                            (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                          .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                                          .Ctype
                                            [.Aloc (rgc! «queueing.c» 69 475 69 699 69 685)]
                                            (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <|
                                      .Epure <| .Pexpr [] () <|
                                      .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                                      [.Pexpr [] () <| .PEval <| .Vctype <|
                                       .Ctype
                                         [.Aloc (rgc! «queueing.c» 69 16 69 699 69 472)]
                                         (.Basic (.Integer (.Signed .Int_))),
                                       .Pexpr [] () (.PEsym (a! 46616))]) <| .Expr [] <|
                                    .Esseq
                                      (.Pattern [] (.CaseBase (.some (a! 46617), .BTy_loaded .OTy_integer)))
                                      (.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                                      .Epure <|
                                      .Pexpr
                                        []
                                        ()
                                        (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1)))))) <|
                                    .Expr [] <| .Epure <| .Pexpr [] () <|
                                    .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                                    [.Pexpr [] () <| .PEval <| .Vctype <|
                                     .Ctype
                                       [.Aloc (rgc! «queueing.c» 69 16 69 699 69 472)]
                                       (.Basic (.Integer (.Signed .Int_))),
                                     .Pexpr [] () (.PEsym (a! 46617))]),
                                   (.Pattern
                                      []
                                      (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                                    .Expr [] <| .Epure <| .Pexpr [] () <|
                                    .PEundef
                                      (rgc! «queueing.c» 69 16 69 699 69 472)
                                      (.UB_CERB004_unspecified .UB_unspec_conditional))],
                                  .Expr
                                    [.Aloc (rgc! «queueing.c» 69 16 69 699 69 472),
                                     .Aexpr,
                                     .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                                  .Pexpr
                                    []
                                    ()
                                    (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                               .Expr [] <| .Epure <| .Pexpr [] () <|
                               .PEcase
                                 (.Pexpr [] () <|
                                 .PEctor
                                   .Ctuple
                                   [.Pexpr [] () (.PEsym (a! 46560)), .Pexpr [] () (.PEsym (a! 46561))]) <|
                               [(.Pattern [] <| .CaseCtor .Ctuple <|
                                 [.Pattern [] <|
                                  .CaseCtor
                                    .Cspecified
                                    [.Pattern [] (.CaseBase (.some (a! 46562), .BTy_object .OTy_integer))],
                                  .Pattern [] <|
                                  .CaseCtor
                                    .Cspecified
                                    [.Pattern [] (.CaseBase (.some (a! 46563), .BTy_object .OTy_integer))]],
                                 .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                 .PEif
                                   (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                   .PEop
                                     .OpEq
                                     (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                     .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                     [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                      .Pexpr [] () (.PEsym (a! 46562))]) <|
                                   .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                   .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                   [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                    .Pexpr [] () (.PEsym (a! 46563))])
                                   (.Pexpr [] () <|
                                   .PEctor
                                     .Cspecified
                                     [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                 .Pexpr [] () <|
                                 .PEctor
                                   .Cspecified
                                   [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                (.Pattern [] <|
                                 .CaseBase
                                   (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                 .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                                 .Ctype
                                   [.Aloc (rgc! «queueing.c» 69 16 69 699 69 472)]
                                   (.Basic (.Integer (.Signed .Int_))))],
                               .Expr
                                 [.Aloc (rgc! «queueing.c» 69 16 69 699 69 472),
                                  .Aexpr,
                                  .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                               .Pexpr
                                 []
                                 ()
                                 (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                            .Expr [] <| .Epure <| .Pexpr [] () <|
                            .PEcase
                              (.Pexpr [] () <|
                              .PEctor
                                .Ctuple
                                [.Pexpr [] () (.PEsym (a! 46555)), .Pexpr [] () (.PEsym (a! 46556))]) <|
                            [(.Pattern [] <| .CaseCtor .Ctuple <|
                              [.Pattern [] <|
                               .CaseCtor
                                 .Cspecified
                                 [.Pattern [] (.CaseBase (.some (a! 46557), .BTy_object .OTy_integer))],
                               .Pattern [] <|
                               .CaseCtor
                                 .Cspecified
                                 [.Pattern [] (.CaseBase (.some (a! 46558), .BTy_object .OTy_integer))]],
                              .Pexpr [.Astd "\xa76.5.9#3"] () <|
                              .PEif
                                (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                .PEop
                                  .OpEq
                                  (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                  .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                  [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                   .Pexpr [] () (.PEsym (a! 46557))]) <|
                                .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                 .Pexpr [] () (.PEsym (a! 46558))])
                                (.Pexpr [] () <|
                                .PEctor
                                  .Cspecified
                                  [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                              .Pexpr [] () <|
                              .PEctor
                                .Cspecified
                                [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                             (.Pattern [] <|
                              .CaseBase
                                (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                              .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                              .Ctype
                                [.Aloc (rgc! «queueing.c» 69 16 69 699 69 472)]
                                (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <|
                          .Ecase (.Pexpr [] () (.PEsym (a! 46618))) <|
                          [(.Pattern [] <|
                            .CaseCtor
                              .Cspecified
                              [.Pattern [] (.CaseBase (.some (a! 46619), .BTy_object .OTy_integer))],
                            .Expr [] <|
                            .Eif
                              (.Pexpr [] () <|
                              .PEop
                                .OpEq
                                (.Pexpr [] () (.PEsym (a! 46619)))
                                (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                              (.Expr [] <|
                              .Esseq
                                (.Pattern [] (.CaseBase (.some (a! 46630), .BTy_loaded .OTy_integer)))
                                (.Expr
                                  [.Aloc (rgc! «queueing.c» 69 703 69 928 69 913),
                                   .Aexpr,
                                   .Avalue (.Ainteger (.Signed .Int_))] <|
                                .Ewseq
                                  (.Pattern [] <| .CaseCtor .Ctuple <|
                                  [.Pattern [] (.CaseBase (.some (a! 46620), .BTy_loaded .OTy_integer)),
                                   .Pattern [] (.CaseBase (.some (a! 46621), .BTy_loaded .OTy_integer))])
                                  (.Expr [] <| .Eunseq <|
                                  [.Expr
                                     [.Aloc (rgc! «queueing.c» 69 703 69 928 69 913),
                                      .Aexpr,
                                      .Avalue (.Ainteger (.Signed .Int_))] <|
                                   .Ewseq
                                     (.Pattern [] <| .CaseCtor .Ctuple <|
                                     [.Pattern [] (.CaseBase (.some (a! 46625), .BTy_loaded .OTy_integer)),
                                      .Pattern [] (.CaseBase (.some (a! 46626), .BTy_loaded .OTy_integer))])
                                     (.Expr [] <| .Eunseq <|
                                     [.Expr
                                        [.Aloc (rgc! «queueing.c» 69 703 69 912 69 703),
                                         .Aexpr,
                                         .Avalue (.Ainteger .Size_t)] <| .Epure <| .Pexpr [] () <|
                                      .PEctor .Cspecified <|
                                      [.Pexpr [] () <| .PEctor .Civsizeof <|
                                       [.Pexpr [] () <| .PEval <| .Vctype <|
                                        .Ctype
                                          [.Aloc .unknown]
                                          (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]],
                                      .Expr
                                        [.Aloc (rgc! «queueing.c» 69 916 69 928 69 916),
                                         .Aexpr,
                                         .Avalue (.Ainteger .Size_t)] <| .Epure <| .Pexpr [] () <|
                                      .PEctor .Cspecified <|
                                      [.Pexpr [] () <| .PEctor .Civsizeof <|
                                       [.Pexpr [] () <| .PEval <| .Vctype <|
                                        .Ctype
                                          [.Aloc (rg! «queueing.c» 69 923 69 927)]
                                          (.Basic (.Integer (.Signed .Long)))]]]) <| .Expr [] <|
                                   .Epure <| .Pexpr [] () <|
                                   .PEcase
                                     (.Pexpr [] () <|
                                     .PEctor
                                       .Ctuple
                                       [.Pexpr [] () (.PEsym (a! 46625)), .Pexpr [] () (.PEsym (a! 46626))]) <|
                                   [(.Pattern [] <| .CaseCtor .Ctuple <|
                                     [.Pattern [] <|
                                      .CaseCtor
                                        .Cspecified
                                        [.Pattern [] (.CaseBase (.some (a! 46627), .BTy_object .OTy_integer))],
                                      .Pattern [] <|
                                      .CaseCtor
                                        .Cspecified
                                        [.Pattern [] (.CaseBase (.some (a! 46628), .BTy_object .OTy_integer))]],
                                     .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                     .PEif
                                       (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                       .PEop
                                         .OpEq
                                         (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                         .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                         [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                          .Pexpr [] () (.PEsym (a! 46627))]) <|
                                       .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                       .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                       [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                        .Pexpr [] () (.PEsym (a! 46628))])
                                       (.Pexpr [] () <|
                                       .PEctor
                                         .Cspecified
                                         [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                     .Pexpr [] () <|
                                     .PEctor
                                       .Cspecified
                                       [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                    (.Pattern [] <|
                                     .CaseBase
                                       (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                     .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                                     .Ctype
                                       [.Aloc (rgc! «queueing.c» 69 703 69 928 69 913)]
                                       (.Basic (.Integer (.Signed .Int_))))],
                                   .Expr
                                     [.Aloc (rgc! «queueing.c» 69 703 69 928 69 913),
                                      .Aexpr,
                                      .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                                   .Pexpr
                                     []
                                     ()
                                     (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                                .Expr [] <| .Epure <| .Pexpr [] () <|
                                .PEcase
                                  (.Pexpr [] () <|
                                  .PEctor
                                    .Ctuple
                                    [.Pexpr [] () (.PEsym (a! 46620)), .Pexpr [] () (.PEsym (a! 46621))]) <|
                                [(.Pattern [] <| .CaseCtor .Ctuple <|
                                  [.Pattern [] <|
                                   .CaseCtor
                                     .Cspecified
                                     [.Pattern [] (.CaseBase (.some (a! 46622), .BTy_object .OTy_integer))],
                                   .Pattern [] <|
                                   .CaseCtor
                                     .Cspecified
                                     [.Pattern [] (.CaseBase (.some (a! 46623), .BTy_object .OTy_integer))]],
                                  .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                  .PEif
                                    (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <| .PEnot <|
                                    .Pexpr [] () <|
                                    .PEop
                                      .OpEq
                                      (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                      .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                      [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                       .Pexpr [] () (.PEsym (a! 46622))]) <|
                                    .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                    .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                    [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                     .Pexpr [] () (.PEsym (a! 46623))])
                                    (.Pexpr [] () <|
                                    .PEctor
                                      .Cspecified
                                      [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                  .Pexpr [] () <|
                                  .PEctor
                                    .Cspecified
                                    [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                 (.Pattern [] <|
                                  .CaseBase
                                    (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                  .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                                  .Ctype
                                    [.Aloc (rgc! «queueing.c» 69 703 69 928 69 913)]
                                    (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <| .Epure <|
                              .Pexpr [] () <|
                              .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                              [.Pexpr [] () <| .PEval <| .Vctype <|
                               .Ctype
                                 [.Aloc (rg! «queueing.c» 69 15 69 929)]
                                 (.Basic (.Integer (.Signed .Int_))),
                               .Pexpr [] () (.PEsym (a! 46630))]) <| .Expr [] <|
                            .Esseq
                              (.Pattern [] (.CaseBase (.some (a! 46631), .BTy_loaded .OTy_integer)))
                              (.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                              .Epure <|
                              .Pexpr
                                []
                                ()
                                (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1)))))) <|
                            .Expr [] <| .Epure <| .Pexpr [] () <|
                            .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                            [.Pexpr [] () <| .PEval <| .Vctype <|
                             .Ctype
                               [.Aloc (rg! «queueing.c» 69 15 69 929)]
                               (.Basic (.Integer (.Signed .Int_))),
                             .Pexpr [] () (.PEsym (a! 46631))]),
                           (.Pattern
                              []
                              (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                            .Expr [] <| .Epure <| .Pexpr [] () <|
                            .PEundef
                              (rg! «queueing.c» 69 15 69 929)
                              (.UB_CERB004_unspecified .UB_unspec_conditional))],
                          .Expr
                            [.Aloc (rg! «queueing.c» 69 15 69 929),
                             .Aexpr,
                             .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                          .Pexpr
                            []
                            ()
                            (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                       .Expr [] <| .Epure <| .Pexpr [] () <|
                       .PEcase
                         (.Pexpr [] () <|
                         .PEctor
                           .Ctuple
                           [.Pexpr [] () (.PEsym (a! 46550)), .Pexpr [] () (.PEsym (a! 46551))]) <|
                       [(.Pattern [] <| .CaseCtor .Ctuple <|
                         [.Pattern [] <|
                          .CaseCtor
                            .Cspecified
                            [.Pattern [] (.CaseBase (.some (a! 46552), .BTy_object .OTy_integer))],
                          .Pattern [] <|
                          .CaseCtor
                            .Cspecified
                            [.Pattern [] (.CaseBase (.some (a! 46553), .BTy_object .OTy_integer))]],
                         .Pexpr [.Astd "\xa76.5.9#3"] () <|
                         .PEif
                           (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                           .PEop
                             .OpEq
                             (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                             .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                             [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                              .Pexpr [] () (.PEsym (a! 46552))]) <|
                           .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                           .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                           [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                            .Pexpr [] () (.PEsym (a! 46553))])
                           (.Pexpr [] () <|
                           .PEctor
                             .Cspecified
                             [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                         .Pexpr [] () <|
                         .PEctor
                           .Cspecified
                           [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                        (.Pattern [] <|
                         .CaseBase
                           (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                         .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                         .Ctype
                           [.Aloc (rg! «queueing.c» 69 15 69 929)]
                           (.Basic (.Integer (.Signed .Int_))))],
                       .Expr
                         [.Aloc (rg! «queueing.c» 69 15 69 929),
                          .Aexpr,
                          .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                       .Pexpr
                         []
                         ()
                         (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                    .Expr [] <| .Epure <| .Pexpr [] () <|
                    .PEcase
                      (.Pexpr [] () <|
                      .PEctor
                        .Ctuple
                        [.Pexpr [] () (.PEsym (a! 46545)), .Pexpr [] () (.PEsym (a! 46546))]) <|
                    [(.Pattern [] <| .CaseCtor .Ctuple <|
                      [.Pattern [] <|
                       .CaseCtor
                         .Cspecified
                         [.Pattern [] (.CaseBase (.some (a! 46547), .BTy_object .OTy_integer))],
                       .Pattern [] <|
                       .CaseCtor
                         .Cspecified
                         [.Pattern [] (.CaseBase (.some (a! 46548), .BTy_object .OTy_integer))]],
                      .Pexpr [.Astd "\xa76.5.9#3"] () <|
                      .PEif
                        (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                        .PEop
                          .OpEq
                          (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                          .PEcall
                            (.Sym (rt! "conv_int" 15837442492999787586))
                            [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                             .Pexpr [] () (.PEsym (a! 46547))]) <|
                        .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                        .PEcall
                          (.Sym (rt! "conv_int" 15837442492999787586))
                          [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 46548))])
                        (.Pexpr [] () <|
                        .PEctor
                          .Cspecified
                          [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                      .Pexpr [] () <|
                      .PEctor
                        .Cspecified
                        [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                     (.Pattern [] <|
                      .CaseBase
                        (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                      .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                      .Ctype
                        [.Aloc (rg! «queueing.c» 69 15 69 929)]
                        (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <|
                  .Ecase (.Pexpr [] () (.PEsym (a! 46632))) <|
                  [(.Pattern [] <|
                    .CaseCtor
                      .Cspecified
                      [.Pattern [] (.CaseBase (.some (a! 46633), .BTy_object .OTy_integer))],
                    .Expr [] <|
                    .Eif
                      (.Pexpr [] () <|
                      .PEop
                        .OpEq
                        (.Pexpr [] () (.PEsym (a! 46633)))
                        (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                      (.Expr [] <|
                      .Esseq
                        (.Pattern [] (.CaseBase (.some (a! 46644), .BTy_loaded .OTy_integer)))
                        (.Expr
                          [.Aloc (rgc! «queueing.c» 69 933 69 1163 69 1143),
                           .Aexpr,
                           .Avalue (.Ainteger (.Signed .Int_))] <|
                        .Ewseq
                          (.Pattern [] <| .CaseCtor .Ctuple <|
                          [.Pattern [] (.CaseBase (.some (a! 46634), .BTy_loaded .OTy_integer)),
                           .Pattern [] (.CaseBase (.some (a! 46635), .BTy_loaded .OTy_integer))])
                          (.Expr [] <| .Eunseq <|
                          [.Expr
                             [.Aloc (rgc! «queueing.c» 69 933 69 1163 69 1143),
                              .Aexpr,
                              .Avalue (.Ainteger (.Signed .Int_))] <|
                           .Ewseq
                             (.Pattern [] <| .CaseCtor .Ctuple <|
                             [.Pattern [] (.CaseBase (.some (a! 46639), .BTy_loaded .OTy_integer)),
                              .Pattern [] (.CaseBase (.some (a! 46640), .BTy_loaded .OTy_integer))])
                             (.Expr [] <| .Eunseq <|
                             [.Expr
                                [.Aloc (rgc! «queueing.c» 69 933 69 1142 69 933),
                                 .Aexpr,
                                 .Avalue (.Ainteger .Size_t)] <| .Epure <| .Pexpr [] () <|
                              .PEctor .Cspecified <|
                              [.Pexpr [] () <| .PEctor .Civsizeof <|
                               [.Pexpr [] () <| .PEval <| .Vctype <|
                                .Ctype
                                  [.Aloc .unknown]
                                  (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]],
                              .Expr
                                [.Aloc (rgc! «queueing.c» 69 1146 69 1163 69 1146),
                                 .Aexpr,
                                 .Avalue (.Ainteger .Size_t)] <| .Epure <| .Pexpr [] () <|
                              .PEctor .Cspecified <|
                              [.Pexpr [] () <| .PEctor .Civsizeof <|
                               [.Pexpr [] () <| .PEval <| .Vctype <|
                                .Ctype
                                  [.Aloc (rg! «queueing.c» 69 1153 69 1162)]
                                  (.Basic (.Integer (.Signed .LongLong)))]]]) <| .Expr [] <|
                           .Epure <| .Pexpr [] () <|
                           .PEcase
                             (.Pexpr [] () <|
                             .PEctor
                               .Ctuple
                               [.Pexpr [] () (.PEsym (a! 46639)), .Pexpr [] () (.PEsym (a! 46640))]) <|
                           [(.Pattern [] <| .CaseCtor .Ctuple <|
                             [.Pattern [] <|
                              .CaseCtor
                                .Cspecified
                                [.Pattern [] (.CaseBase (.some (a! 46641), .BTy_object .OTy_integer))],
                              .Pattern [] <|
                              .CaseCtor
                                .Cspecified
                                [.Pattern [] (.CaseBase (.some (a! 46642), .BTy_object .OTy_integer))]],
                             .Pexpr [.Astd "\xa76.5.9#3"] () <|
                             .PEif
                               (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                               .PEop
                                 .OpEq
                                 (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                 .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                 [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                  .Pexpr [] () (.PEsym (a! 46641))]) <|
                               .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                               .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                               [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                .Pexpr [] () (.PEsym (a! 46642))])
                               (.Pexpr [] () <|
                               .PEctor
                                 .Cspecified
                                 [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                             .Pexpr [] () <|
                             .PEctor
                               .Cspecified
                               [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                            (.Pattern [] <|
                             .CaseBase
                               (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                             .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                             .Ctype
                               [.Aloc (rgc! «queueing.c» 69 933 69 1163 69 1143)]
                               (.Basic (.Integer (.Signed .Int_))))],
                           .Expr
                             [.Aloc (rgc! «queueing.c» 69 933 69 1163 69 1143),
                              .Aexpr,
                              .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                           .Pexpr
                             []
                             ()
                             (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                        .Expr [] <| .Epure <| .Pexpr [] () <|
                        .PEcase
                          (.Pexpr [] () <|
                          .PEctor
                            .Ctuple
                            [.Pexpr [] () (.PEsym (a! 46634)), .Pexpr [] () (.PEsym (a! 46635))]) <|
                        [(.Pattern [] <| .CaseCtor .Ctuple <|
                          [.Pattern [] <|
                           .CaseCtor
                             .Cspecified
                             [.Pattern [] (.CaseBase (.some (a! 46636), .BTy_object .OTy_integer))],
                           .Pattern [] <|
                           .CaseCtor
                             .Cspecified
                             [.Pattern [] (.CaseBase (.some (a! 46637), .BTy_object .OTy_integer))]],
                          .Pexpr [.Astd "\xa76.5.9#3"] () <|
                          .PEif
                            (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <| .PEnot <|
                            .Pexpr [] () <|
                            .PEop
                              .OpEq
                              (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                              .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                              [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                               .Pexpr [] () (.PEsym (a! 46636))]) <|
                            .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                            .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                            [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                             .Pexpr [] () (.PEsym (a! 46637))])
                            (.Pexpr [] () <|
                            .PEctor
                              .Cspecified
                              [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                          .Pexpr [] () <|
                          .PEctor
                            .Cspecified
                            [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                         (.Pattern [] <|
                          .CaseBase
                            (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                          .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                          .Ctype
                            [.Aloc (rgc! «queueing.c» 69 933 69 1163 69 1143)]
                            (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <| .Epure <|
                      .Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                      [.Pexpr [] () <| .PEval <| .Vctype <|
                       .Ctype
                         [.Aloc (rg! «queueing.c» 69 14 69 1164)]
                         (.Basic (.Integer (.Signed .Int_))),
                       .Pexpr [] () (.PEsym (a! 46644))]) <| .Expr [] <|
                    .Esseq
                      (.Pattern [] (.CaseBase (.some (a! 46645), .BTy_loaded .OTy_integer)))
                      (.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                      .Epure <|
                      .Pexpr
                        []
                        ()
                        (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1)))))) <|
                    .Expr [] <| .Epure <| .Pexpr [] () <|
                    .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                    [.Pexpr [] () <| .PEval <| .Vctype <|
                     .Ctype
                       [.Aloc (rg! «queueing.c» 69 14 69 1164)]
                       (.Basic (.Integer (.Signed .Int_))),
                     .Pexpr [] () (.PEsym (a! 46645))]),
                   (.Pattern
                      []
                      (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                    .Expr [] <| .Epure <| .Pexpr [] () <|
                    .PEundef
                      (rg! «queueing.c» 69 14 69 1164)
                      (.UB_CERB004_unspecified .UB_unspec_conditional))])
                  (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
                (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [.Aloc (rg! «queueing.c» 69 1167 69 1605), .Astmt] <|
              .Esseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr
                  [.Aloc (rg! «queueing.c» 69 1167 69 1605), .Astmt, .Alabel (.LAloop 3418)] <|
                .Esave (c! "do_46647" 46647, .BTy_unit) [] <| .Expr [] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                  (.Expr [.Aloc (rg! «queueing.c» 69 1167 69 1605), .Astmt] <|
                  .Esseq
                    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                    (.Expr [.Aloc (rg! «queueing.c» 69 1170 69 1594), .Astmt] <|
                    .Esseq
                      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                      (.Expr [.Aloc (rg! «queueing.c» 69 1172 69 1592), .Astmt] <|
                      .Esseq
                        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
                        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                        .Expr
                          [.Aloc (rgc! «queueing.c» 69 1172 69 1591 69 1584),
                           .Aexpr,
                           .Astd "\xa76.5.16#3, sentence 4"] <|
                        .Ewseq
                          (.Pattern [] <| .CaseCtor .Ctuple <|
                          [.Pattern [] (.CaseBase (.some (a! 46650), .BTy_object .OTy_pointer)),
                           .Pattern [] (.CaseBase (.some (a! 46703), .BTy_loaded .OTy_pointer))])
                          (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
                          [.Expr
                             [.Aloc (rgc! «queueing.c» 69 1172 69 1583 69 1172),
                              .Aexpr,
                              .Astd "\xa76.5.3.2"] <|
                           .Ewseq
                             (.Pattern [] (.CaseBase (.some (a! 46651), .BTy_loaded .OTy_pointer)))
                             (.Expr
                               [.Aloc (rgc! «queueing.c» 69 1173 69 1583 69 1173),
                                .Aexpr,
                                .Astd "\xa76.5.4"] <|
                             .Ewseq
                               (.Pattern [] (.CaseBase (.some (a! 46654), .BTy_loaded .OTy_pointer)))
                               (.Expr
                                 [.Aloc (rgc! «queueing.c» 69 1387 69 1583 69 1387),
                                  .Aexpr,
                                  .Astd "\xa76.5.3.2#3, sentence 5"] <|
                               .Ewseq
                                 (.Pattern [] (.CaseBase (.some (a! 46656), .BTy_object .OTy_pointer)))
                                 (.Expr
                                   [.Aloc (rg! «queueing.c» 69 1388 69 1583),
                                    .Aexpr,
                                    .Astd "\xa76.5.2.3#3, sentence 2"] <|
                                 .Esseq
                                   (.Pattern [] (.CaseBase (.some (a! 46657), .BTy_object .OTy_pointer)))
                                   (.Expr
                                     [.Aloc (rgc! «queueing.c» 69 1390 69 1576 69 1569),
                                      .Aexpr,
                                      .Astd "\xa76.5.2.3#3, sentence 2"] <|
                                   .Esseq
                                     (.Pattern [] (.CaseBase (.some (a! 46658), .BTy_object .OTy_pointer)))
                                     (.Expr
                                       [.Aloc (rgc! «queueing.c» 69 1390 69 1569 69 1561),
                                        .Aexpr,
                                        .Astd "\xa76.5.2.3#4, sentence 2"] <|
                                     .Esseq
                                       (.Pattern [] (.CaseBase (.some (a! 46659), .BTy_loaded .OTy_pointer)))
                                       (.Expr [.Aloc (rg! «queueing.c» 69 1390 69 1561), .Aexpr] <|
                                       .Esseq
                                         (.Pattern
                                           []
                                           (.CaseBase (.some (addr! "__xr_ptr" 3415), .BTy_object .OTy_pointer)))
                                         (.Expr [] <| .Eaction <| .Paction .Pos <|
                                         .Action (rgr! «queueing.c» 69 1172 69 1592 69 1415 69 1423) () <|
                                         .Create
                                           (.Pexpr [] () <| .PEctor .Civalignof <|
                                           [.Pexpr [] () <| .PEval <| .Vctype <|
                                            .Ctype [.Aloc (rgc! «queueing.c» 69 1401 69 1413 69 1401)] <|
                                            .Pointer (.mk .false .false .false) <|
                                            .Ctype
                                              [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
                                              (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)])
                                           (.Pexpr [] () <| .PEval <| .Vctype <|
                                           .Ctype [.Aloc (rgc! «queueing.c» 69 1401 69 1413 69 1401)] <|
                                           .Pointer (.mk .false .false .false) <|
                                           .Ctype
                                             [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
                                             (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)) <|
                                         .PrefSource
                                           (rg! «queueing.c» 69 1415 69 1423)
                                           [c! "__wg_prev_queue_enqueue" 3387, addr! "__xr_ptr" 3415]) <|
                                       .Expr [] <|
                                       .Esseq
                                         (.Pattern
                                           []
                                           (.CaseBase (.some (addr! "__xr_new" 3416), .BTy_object .OTy_pointer)))
                                         (.Expr [] <| .Eaction <| .Paction .Pos <|
                                         .Action (rgr! «queueing.c» 69 1172 69 1592 69 1460 69 1468) () <|
                                         .Create
                                           (.Pexpr [] () <| .PEctor .Civalignof <|
                                           [.Pexpr [] () <| .PEval <| .Vctype <|
                                            .Ctype
                                              [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
                                              (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)])
                                           (.Pexpr [] () <| .PEval <| .Vctype <|
                                           .Ctype
                                             [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
                                             (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)) <|
                                         .PrefSource
                                           (rg! «queueing.c» 69 1460 69 1468)
                                           [c! "__wg_prev_queue_enqueue" 3387, addr! "__xr_new" 3416]) <|
                                       .Expr [] <|
                                       .Esseq
                                         (.Pattern
                                           []
                                           (.CaseBase (.some (addr! "__xr_old" 3417), .BTy_object .OTy_pointer)))
                                         (.Expr [] <| .Eaction <| .Paction .Pos <|
                                         .Action (rgr! «queueing.c» 69 1172 69 1592 69 1478 69 1486) () <|
                                         .Create
                                           (.Pexpr [] () <| .PEctor .Civalignof <|
                                           [.Pexpr [] () <| .PEval <| .Vctype <|
                                            .Ctype
                                              [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
                                              (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)])
                                           (.Pexpr [] () <| .PEval <| .Vctype <|
                                           .Ctype
                                             [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
                                             (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)) <|
                                         .PrefSource
                                           (rg! «queueing.c» 69 1478 69 1486)
                                           [c! "__wg_prev_queue_enqueue" 3387, addr! "__xr_old" 3417]) <|
                                       .Expr [] <|
                                       .Esseq
                                         (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                                         (.Expr [.Aloc (rg! «queueing.c» 69 1394 69 1441), .Astmt] <|
                                         .Esseq
                                           (.Pattern [] (.CaseBase (.some (a! 46664), .BTy_loaded .OTy_pointer)))
                                           (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                                           .Expr
                                             [.Aloc (rg! «queueing.c» 69 1426 69 1440),
                                              .Aexpr,
                                              .Astd "\xa76.5.3.2#3, sentence 5"] <|
                                           .Ewseq
                                             (.Pattern [] (.CaseBase (.some (a! 46665), .BTy_object .OTy_pointer)))
                                             (.Expr
                                               [.Aloc (rgc! «queueing.c» 69 1428 69 1439 69 1433),
                                                .Aexpr,
                                                .Astd "\xa76.5.2.3#4, sentence 2"] <|
                                             .Esseq
                                               (.Pattern [] (.CaseBase (.some (a! 46666), .BTy_loaded .OTy_pointer)))
                                               (.Expr [.Aloc (rg! «queueing.c» 69 1428 69 1433), .Aexpr] <|
                                               .Ewseq
                                                 (.Pattern [] (.CaseBase (.some (a! 46670), .BTy_object .OTy_pointer)))
                                                 (.Expr
                                                   [.Aloc (rg! «queueing.c» 69 1428 69 1433), .Aexpr]
                                                   (.Epure (.Pexpr [] () (.PEsym (addr! "queue" 3385))))) <|
                                               .Expr [] <| .Eaction <| .Paction .Pos <|
                                               .Action (rg! «queueing.c» 69 1428 69 1433) () <|
                                               .Load0
                                                 (.Pexpr [] () <| .PEval <| .Vctype <|
                                                 .Ctype
                                                   [.Aloc (rg! «queueing.c» 66 55 66 56)]
                                                   (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
                                                 (.Pexpr [] () (.PEsym (a! 46670)))
                                                 .NA) <| .Expr [] <|
                                             .Ecase (.Pexpr [] () (.PEsym (a! 46666))) <|
                                             [(.Pattern
                                                 []
                                                 (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                                               .Expr [] <| .Epure <| .Pexpr [] () <|
                                               .PEundef
                                                 (rgc! «queueing.c» 69 1428 69 1439 69 1433)
                                                 (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                                              (.Pattern [] <|
                                               .CaseCtor
                                                 .Cspecified
                                                 [.Pattern [] (.CaseBase (.some (a! 46667), .BTy_object .OTy_pointer))],
                                               .Expr [] <| .Epure <| .Pexpr [] () <|
                                               .PEmember_shift
                                                 (.Pexpr [] () (.PEsym (a! 46667)))
                                                 (c! "prev_queue" 2191)
                                                 (.Identifier (rg! «queueing.c» 69 1435 69 1439) "head"))]) <|
                                           .Expr [] <|
                                           .Epure
                                             (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 46665))]))) <|
                                         .Expr [] <| .Eaction <| .Paction .Pos <|
                                         .Action (rg! «queueing.c» 69 1394 69 1441) () <|
                                         .Store0
                                           .false
                                           (.Pexpr [] () <| .PEval <| .Vctype <|
                                           .Ctype [.Aloc (rgc! «queueing.c» 69 1401 69 1413 69 1401)] <|
                                           .Pointer (.mk .false .false .false) <|
                                           .Ctype
                                             [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
                                             (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                                           (.Pexpr [] () (.PEsym (addr! "__xr_ptr" 3415)))
                                           (.Pexpr [] () (.PEsym (a! 46664)))
                                           .NA) <| .Expr [] <|
                                       .Esseq
                                         (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                                         (.Expr [.Aloc (rg! «queueing.c» 69 1442 69 1499), .Astmt] <|
                                         .Esseq
                                           (.Pattern [] (.CaseBase (.some (a! 46671), .BTy_loaded .OTy_pointer)))
                                           (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                                           .Expr [.Aloc (rg! «queueing.c» 69 1471 69 1476), .Aexpr] <|
                                           .Ewseq
                                             (.Pattern [] (.CaseBase (.some (a! 46672), .BTy_object .OTy_pointer)))
                                             (.Expr
                                               [.Aloc (rg! «queueing.c» 69 1471 69 1476), .Aexpr]
                                               (.Epure (.Pexpr [] () (.PEsym (addr! "skb" 3386))))) <|
                                           .Expr [] <| .Eaction <| .Paction .Pos <|
                                           .Action (rg! «queueing.c» 69 1471 69 1476) () <|
                                           .Load0
                                             (.Pexpr [] () <| .PEval <| .Vctype <|
                                             .Ctype
                                               [.Aloc (rg! «queueing.c» 66 78 66 79)]
                                               (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                                             (.Pexpr [] () (.PEsym (a! 46672)))
                                             .NA) <| .Expr [] <|
                                         .Esseq
                                           (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                                           (.Expr [] <| .Eaction <| .Paction .Pos <|
                                           .Action (rg! «queueing.c» 69 1442 69 1499) () <|
                                           .Store0
                                             .false
                                             (.Pexpr [] () <| .PEval <| .Vctype <|
                                             .Ctype
                                               [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
                                               (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                                             (.Pexpr [] () (.PEsym (addr! "__xr_new" 3416)))
                                             (.Pexpr [] () (.PEsym (a! 46671)))
                                             .NA) <| .Expr [] <|
                                         .Esseq
                                           (.Pattern [] (.CaseBase (.some (a! 46673), .BTy_loaded .OTy_pointer)))
                                           (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                                           .Expr [.Aloc (rgc! «queueing.c» 69 1489 69 1498 69 1489), .Aexpr] <|
                                           .Ewseq
                                             (.Pattern [] (.CaseBase (.some (a! 46678), .BTy_object .OTy_pointer)))
                                             (.Expr
                                               [.Aloc (rgc! «queueing.c» 69 1489 69 1498 69 1489),
                                                .Aexpr,
                                                .Astd "\xa76.5.3.2"] <|
                                             .Ewseq
                                               (.Pattern [] (.CaseBase (.some (a! 46674), .BTy_loaded .OTy_pointer)))
                                               (.Expr [.Aloc (rg! «queueing.c» 69 1490 69 1498), .Aexpr] <|
                                               .Ewseq
                                                 (.Pattern [] (.CaseBase (.some (a! 46677), .BTy_object .OTy_pointer)))
                                                 (.Expr
                                                   [.Aloc (rg! «queueing.c» 69 1490 69 1498), .Aexpr]
                                                   (.Epure (.Pexpr [] () (.PEsym (addr! "__xr_ptr" 3415))))) <|
                                               .Expr [] <| .Eaction <| .Paction .Pos <|
                                               .Action (rg! «queueing.c» 69 1490 69 1498) () <|
                                               .Load0
                                                 (.Pexpr [] () <| .PEval <| .Vctype <|
                                                 .Ctype [.Aloc (rgc! «queueing.c» 69 1401 69 1413 69 1401)] <|
                                                 .Pointer (.mk .false .false .false) <|
                                                 .Ctype
                                                   [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
                                                   (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                                                 (.Pexpr [] () (.PEsym (a! 46677)))
                                                 .NA) <| .Expr [] <|
                                             .Ecase (.Pexpr [] () (.PEsym (a! 46674))) <|
                                             [(.Pattern [] <|
                                               .CaseCtor
                                                 .Cspecified
                                                 [.Pattern [] (.CaseBase (.some (a! 46675), .BTy_object .OTy_pointer))],
                                               .Expr [] <|
                                               .Ewseq
                                                 (.Pattern [] (.CaseBase (.some (a! 46676), .BTy_boolean)))
                                                 (.Expr [] <| .Ememop .PtrValidForDeref <|
                                                 [.Pexpr [] () <| .PEval <| .Vctype <|
                                                  .Ctype
                                                    [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
                                                    (.Pointer (.mk .false .false .false) Ty.struct_sk_buff),
                                                  .Pexpr [] () (.PEsym (a! 46675))]) <| .Expr [] <|
                                               .Epure <| .Pexpr [] () <|
                                               .PEif
                                                 (.Pexpr [] () (.PEsym (a! 46676)))
                                                 (.Pexpr [] () (.PEsym (a! 46675))) <|
                                               .Pexpr [.Astd "\xa76.5.3.2#4, sentence 4"] () <|
                                               .PEundef
                                                 (rgc! «queueing.c» 69 1489 69 1498 69 1489)
                                                 .UB043_indirection_invalid_value),
                                              (.Pattern
                                                 []
                                                 (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                                               .Expr [] <| .Epure <|
                                               .Pexpr [.Astd "\xa76.5.3.2#4, sentence 4"] () <|
                                               .PEundef
                                                 (rgc! «queueing.c» 69 1489 69 1498 69 1489)
                                                 .UB043_indirection_invalid_value)]) <| .Expr [] <|
                                           .Eaction <| .Paction .Pos <|
                                           .Action (rgc! «queueing.c» 69 1489 69 1498 69 1489) () <|
                                           .Load0
                                             (.Pexpr [] () <| .PEval <| .Vctype <|
                                             .Ctype
                                               [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
                                               (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                                             (.Pexpr [] () (.PEsym (a! 46678)))
                                             .NA) <| .Expr [] <| .Eaction <| .Paction .Pos <|
                                         .Action (rg! «queueing.c» 69 1442 69 1499) () <|
                                         .Store0
                                           .false
                                           (.Pexpr [] () <| .PEval <| .Vctype <|
                                           .Ctype
                                             [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
                                             (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                                           (.Pexpr [] () (.PEsym (addr! "__xr_old" 3417)))
                                           (.Pexpr [] () (.PEsym (a! 46673)))
                                           .NA) <| .Expr [] <|
                                       .Esseq
                                         (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                                         (.Expr [.Aloc (rg! «queueing.c» 69 1500 69 1547), .Astmt] <|
                                         .Esseq
                                           (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
                                           (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                                           .Expr
                                             [.Aloc (rg! «queueing.c» 69 1500 69 1546),
                                              .Aexpr,
                                              .Astd "\xa76.5.2.2#10, sentence 1"] <|
                                           .Esseq
                                             (.Pattern [] <| .CaseCtor .Ctuple <|
                                             [.Pattern [] <| .CaseCtor .Ctuple <|
                                              [.Pattern [] (.CaseBase (.some (a! 46680), .BTy_loaded .OTy_pointer)),
                                               .Pattern [] <| .CaseCtor .Ctuple <|
                                               [.Pattern [] (.CaseBase (.some (a! 46681), .BTy_ctype)),
                                                .Pattern [] (.CaseBase (.some (a! 46682), .BTy_list .BTy_ctype)),
                                                .Pattern [] (.CaseBase (.some (a! 46683), .BTy_boolean)),
                                                .Pattern [] (.CaseBase (.some (a! 46684), .BTy_boolean))]],
                                              .Pattern [] (.CaseBase (.some (a! 46688), .BTy_loaded .OTy_pointer)),
                                              .Pattern [] (.CaseBase (.some (a! 46690), .BTy_loaded .OTy_pointer)),
                                              .Pattern [] (.CaseBase (.some (a! 46692), .BTy_loaded .OTy_integer))])
                                             (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <|
                                             .Eunseq <|
                                             [.Expr [] <|
                                              .Esseq
                                                (.Pattern [] (.CaseBase (.some (a! 46679), .BTy_loaded .OTy_pointer)))
                                                (.Expr [.Aloc (rg! «queueing.c» 69 1500 69 1506), .Aexpr] <|
                                                .Epure <| .Pexpr [] () <| .PEval <| .Vloaded <|
                                                .LVspecified <|
                                                .OVpointer
                                                  (.PV .Prov_none (.PVfunction (rt! "memcpy_proxy" 2564151446013814833)))) <|
                                              .Expr [] <| .Epure <| .Pexpr [] () <|
                                              .PEctor .Ctuple <|
                                              [.Pexpr [] () (.PEsym (a! 46679)),
                                               .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 46679))))],
                                              .Expr [.Aloc (rg! «queueing.c» 69 1507 69 1515), .Aexpr] <|
                                              .Ewseq
                                                (.Pattern [] (.CaseBase (.some (a! 46689), .BTy_object .OTy_pointer)))
                                                (.Expr
                                                  [.Aloc (rg! «queueing.c» 69 1507 69 1515), .Aexpr]
                                                  (.Epure (.Pexpr [] () (.PEsym (addr! "__xr_ptr" 3415))))) <|
                                              .Expr [] <| .Eaction <| .Paction .Pos <|
                                              .Action (rg! «queueing.c» 69 1507 69 1515) () <|
                                              .Load0
                                                (.Pexpr [] () <| .PEval <| .Vctype <|
                                                .Ctype [.Aloc (rgc! «queueing.c» 69 1401 69 1413 69 1401)] <|
                                                .Pointer (.mk .false .false .false) <|
                                                .Ctype
                                                  [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
                                                  (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                                                (.Pexpr [] () (.PEsym (a! 46689)))
                                                .NA,
                                              .Expr
                                                [.Aloc (rgc! «queueing.c» 69 1517 69 1526 69 1517),
                                                 .Aexpr,
                                                 .Astd "\xa76.5.3.2#3, sentence 5"] <|
                                              .Ewseq
                                                (.Pattern [] (.CaseBase (.some (a! 46691), .BTy_object .OTy_pointer)))
                                                (.Expr
                                                  [.Aloc (rg! «queueing.c» 69 1518 69 1526), .Aexpr]
                                                  (.Epure (.Pexpr [] () (.PEsym (addr! "__xr_new" 3416))))) <|
                                              .Expr [] <|
                                              .Epure
                                                (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 46691))])),
                                              .Expr
                                                [.Aloc (rgc! «queueing.c» 69 1528 69 1545 69 1528),
                                                 .Aexpr,
                                                 .Avalue (.Ainteger .Size_t)] <| .Epure <|
                                              .Pexpr [] () <| .PEctor .Cspecified <|
                                              [.Pexpr [] () <| .PEctor .Civsizeof <|
                                               [.Pexpr [] () <| .PEval <| .Vctype <|
                                                .Ctype
                                                  [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
                                                  (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]]]) <|
                                           .Expr [] <|
                                           .Eif
                                             (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                                             .PEop
                                               .OpEq
                                               (.Pexpr [] () <|
                                               .PEcall
                                                 (.Sym (rt! "params_length" 18299737999929047716))
                                                 [.Pexpr [] () (.PEsym (a! 46682))])
                                               (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 3))))))
                                             (.Expr [] <| .Epure <|
                                             .Pexpr
                                               [.Astd "\xa76.5.2.2#6, sentence 3"]
                                               ()
                                               (.PEundef (rg! «queueing.c» 69 1500 69 1546) .UB038_number_of_args)) <|
                                           .Expr [] <|
                                           .Eif
                                             (.Pexpr [] () <|
                                             .PEop .OpOr (.Pexpr [] () (.PEsym (a! 46683))) <|
                                             .Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                                             .PEare_compatible
                                               (.Pexpr [] () <| .PEval <| .Vctype <|
                                               .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
                                               .Pointer
                                                 (.mk .false .false .false)
                                                 (.Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] .Void0))
                                               (.Pexpr [] () (.PEsym (a! 46681))))
                                             (.Expr [] <| .Epure <|
                                             .Pexpr [.Astd "\xa76.5.2.2#9"] () <|
                                             .PEundef
                                               (rg! «queueing.c» 69 1500 69 1546)
                                               .UB041_function_not_compatible) <| .Expr [] <|
                                           .Esseq
                                             (.Pattern [] <| .CaseBase <|
                                             (.some <|
                                              sym.Symbol
                                                Src.digest
                                                46685
                                                (.SD_FunArg (rg! «queueing.c» 69 1507 69 1515) 0),
                                              .BTy_object .OTy_pointer))
                                             (.Expr [] <|
                                             .Elet
                                               (.Pattern [] (.CaseBase (.some (a! 46693), .BTy_ctype)))
                                               (.Pexpr [] () <|
                                               .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                                               [.Pexpr [] () (.PEsym (a! 46682)),
                                                .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
                                             .Expr [] <|
                                             .Eif
                                               (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                                               .PEare_compatible
                                                 (.Pexpr [] () <| .PEval <| .Vctype <|
                                                 .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
                                                 .Pointer
                                                   (.mk .false .false .false)
                                                   (.Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] .Void0))
                                                 (.Pexpr [] () (.PEsym (a! 46693))))
                                               (.Expr [] <| .Epure <|
                                               .Pexpr [.Astd "\xa76.5.2.2#9"] () <|
                                               .PEundef
                                                 (rg! «queueing.c» 69 1500 69 1546)
                                                 .UB041_function_not_compatible) <|
                                             .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
                                             .Ewseq
                                               (.Pattern [] (.CaseBase (.some (a! 46694), .BTy_object .OTy_pointer)))
                                               (.Expr [] <| .Eaction <| .Paction .Pos <|
                                               .Action (rg! «queueing.c» 69 1500 69 1546) () <|
                                               .Create
                                                 (.Pexpr [] () <| .PEctor .Civalignof <|
                                                 [.Pexpr [] () <| .PEval <| .Vctype <|
                                                  .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
                                                  .Pointer
                                                    (.mk .false .false .false)
                                                    (.Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] .Void0)])
                                                 (.Pexpr [] () <| .PEval <| .Vctype <|
                                                 .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
                                                 .Pointer
                                                   (.mk .false .false .false)
                                                   (.Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] .Void0)) <|
                                               .PrefFunArg
                                                 (rg! «queueing.c» 69 1500 69 1546)
                                                 "fa5a43434dcb33dc130b30cb8faeddf7"
                                                 0) <| .Expr [] <|
                                             .Ewseq
                                               (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                                               (.Expr [] <| .Eaction <| .Paction .Pos <|
                                               .Action (rg! «queueing.c» 69 1500 69 1546) () <|
                                               .Store0
                                                 .false
                                                 (.Pexpr [] () <| .PEval <| .Vctype <|
                                                 .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
                                                 .Pointer
                                                   (.mk .false .false .false)
                                                   (.Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] .Void0))
                                                 (.Pexpr [] () (.PEsym (a! 46694)))
                                                 (.Pexpr [] () (.PEsym (a! 46688)))
                                                 .NA)
                                               (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46694)))))) <|
                                           .Expr [] <|
                                           .Esseq
                                             (.Pattern [] <| .CaseBase <|
                                             (.some <|
                                              sym.Symbol
                                                Src.digest
                                                46686
                                                (.SD_FunArg (rgc! «queueing.c» 69 1517 69 1526 69 1517) 1),
                                              .BTy_object .OTy_pointer))
                                             (.Expr [] <|
                                             .Elet
                                               (.Pattern [] (.CaseBase (.some (a! 46695), .BTy_ctype)))
                                               (.Pexpr [] () <|
                                               .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                                               [.Pexpr [] () (.PEsym (a! 46682)),
                                                .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                             .Expr [] <|
                                             .Eif
                                               (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                                               .PEare_compatible
                                                 (.Pexpr [] () <| .PEval <| .Vctype <|
                                                 .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
                                                 .Pointer
                                                   (.mk .true .false .false)
                                                   (.Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] .Void0))
                                                 (.Pexpr [] () (.PEsym (a! 46695))))
                                               (.Expr [] <| .Epure <|
                                               .Pexpr [.Astd "\xa76.5.2.2#9"] () <|
                                               .PEundef
                                                 (rg! «queueing.c» 69 1500 69 1546)
                                                 .UB041_function_not_compatible) <|
                                             .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
                                             .Ewseq
                                               (.Pattern [] (.CaseBase (.some (a! 46696), .BTy_object .OTy_pointer)))
                                               (.Expr [] <| .Eaction <| .Paction .Pos <|
                                               .Action (rg! «queueing.c» 69 1500 69 1546) () <|
                                               .Create
                                                 (.Pexpr [] () <| .PEctor .Civalignof <|
                                                 [.Pexpr [] () <| .PEval <| .Vctype <|
                                                  .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
                                                  .Pointer
                                                    (.mk .true .false .false)
                                                    (.Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] .Void0)])
                                                 (.Pexpr [] () <| .PEval <| .Vctype <|
                                                 .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
                                                 .Pointer
                                                   (.mk .true .false .false)
                                                   (.Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] .Void0)) <|
                                               .PrefFunArg
                                                 (rg! «queueing.c» 69 1500 69 1546)
                                                 "fa5a43434dcb33dc130b30cb8faeddf7"
                                                 1) <| .Expr [] <|
                                             .Ewseq
                                               (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                                               (.Expr [] <| .Eaction <| .Paction .Pos <|
                                               .Action (rg! «queueing.c» 69 1500 69 1546) () <|
                                               .Store0
                                                 .false
                                                 (.Pexpr [] () <| .PEval <| .Vctype <|
                                                 .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
                                                 .Pointer
                                                   (.mk .true .false .false)
                                                   (.Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] .Void0))
                                                 (.Pexpr [] () (.PEsym (a! 46696)))
                                                 (.Pexpr [] () (.PEsym (a! 46690)))
                                                 .NA)
                                               (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46696)))))) <|
                                           .Expr [] <|
                                           .Esseq
                                             (.Pattern [] <| .CaseBase <|
                                             (.some <|
                                              sym.Symbol
                                                Src.digest
                                                46687
                                                (.SD_FunArg (rgc! «queueing.c» 69 1528 69 1545 69 1528) 2),
                                              .BTy_object .OTy_pointer))
                                             (.Expr [] <|
                                             .Elet
                                               (.Pattern [] (.CaseBase (.some (a! 46697), .BTy_ctype)))
                                               (.Pexpr [] () <|
                                               .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                                               [.Pexpr [] () (.PEsym (a! 46682)),
                                                .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))]) <|
                                             .Expr [] <|
                                             .Eif
                                               (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                                               .PEare_compatible
                                                 (.Pexpr [] () <| .PEval <| .Vctype <|
                                                 .Ctype
                                                   [.Aloc .unknown,
                                                    .Atypedef (c! "size_t" 31),
                                                    .Aloc .unknown,
                                                    .Aloc .unknown]
                                                   (.Basic (.Integer (.Unsigned .Long))))
                                                 (.Pexpr [] () (.PEsym (a! 46697))))
                                               (.Expr [] <| .Epure <|
                                               .Pexpr [.Astd "\xa76.5.2.2#9"] () <|
                                               .PEundef
                                                 (rg! «queueing.c» 69 1500 69 1546)
                                                 .UB041_function_not_compatible) <|
                                             .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
                                             .Ewseq
                                               (.Pattern [] (.CaseBase (.some (a! 46698), .BTy_object .OTy_pointer)))
                                               (.Expr [] <| .Eaction <| .Paction .Pos <|
                                               .Action (rg! «queueing.c» 69 1500 69 1546) () <|
                                               .Create
                                                 (.Pexpr [] () <| .PEctor .Civalignof <|
                                                 [.Pexpr [] () <| .PEval <| .Vctype <|
                                                  .Ctype
                                                    [.Aloc .unknown,
                                                     .Atypedef (c! "size_t" 31),
                                                     .Aloc .unknown,
                                                     .Aloc .unknown]
                                                    (.Basic (.Integer (.Unsigned .Long)))])
                                                 (.Pexpr [] () <| .PEval <| .Vctype <|
                                                 .Ctype
                                                   [.Aloc .unknown,
                                                    .Atypedef (c! "size_t" 31),
                                                    .Aloc .unknown,
                                                    .Aloc .unknown]
                                                   (.Basic (.Integer (.Unsigned .Long)))) <|
                                               .PrefFunArg
                                                 (rg! «queueing.c» 69 1500 69 1546)
                                                 "fa5a43434dcb33dc130b30cb8faeddf7"
                                                 2) <| .Expr [] <|
                                             .Ewseq
                                               (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                                               (.Expr [] <| .Eaction <| .Paction .Pos <|
                                               .Action (rg! «queueing.c» 69 1500 69 1546) () <|
                                               .Store0
                                                 .false
                                                 (.Pexpr [] () <| .PEval <| .Vctype <|
                                                 .Ctype
                                                   [.Aloc .unknown,
                                                    .Atypedef (c! "size_t" 31),
                                                    .Aloc .unknown,
                                                    .Aloc .unknown]
                                                   (.Basic (.Integer (.Unsigned .Long))))
                                                 (.Pexpr [] () (.PEsym (a! 46698)))
                                                 (.Pexpr [] () <|
                                                 .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                                                 [.Pexpr [] () <| .PEval <| .Vctype <|
                                                  .Ctype
                                                    [.Aloc .unknown,
                                                     .Atypedef (c! "size_t" 31),
                                                     .Aloc .unknown,
                                                     .Aloc .unknown]
                                                    (.Basic (.Integer (.Unsigned .Long))),
                                                  .Pexpr [] () (.PEsym (a! 46692))])
                                                 .NA)
                                               (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46698)))))) <|
                                           .Expr [] <|
                                           .Esseq
                                             (.Pattern [] (.CaseBase (.some (a! 46699), .BTy_loaded .OTy_pointer)))
                                             (.Expr [.Astd "\xa76.5.16.1#1, bullet 1"] <|
                                             .Eccall
                                               ()
                                               (.Pexpr [] () <| .PEval <| .Vctype <|
                                               .Ctype [.Aloc (rg! «queueing.c» 69 1500 69 1506)] <|
                                               .Pointer (.mk .false .false .false) <| .Ctype [] <|
                                               .Function
                                                 (.mk .false .false .false,
                                                  .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
                                                  .Pointer
                                                    (.mk .false .false .false)
                                                    (.Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] .Void0))
                                                 [(.mk .false .false .false,
                                                   (.Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
                                                    .Pointer
                                                      (.mk .false .false .false)
                                                      (.Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] .Void0),
                                                    .false)),
                                                  (.mk .false .false .false,
                                                   (.Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
                                                    .Pointer
                                                      (.mk .true .false .false)
                                                      (.Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] .Void0),
                                                    .false)),
                                                  (.mk .false .false .false,
                                                   (.Ctype
                                                      [.Aloc .unknown,
                                                       .Atypedef (c! "size_t" 31),
                                                       .Aloc .unknown,
                                                       .Aloc .unknown]
                                                      (.Basic (.Integer (.Unsigned .Long))),
                                                    .false))]
                                                 .false)
                                               (.Pexpr [] () (.PEsym (a! 46680))) <|
                                             [.Pexpr [] () <| .PEsym <|
                                              sym.Symbol
                                                Src.digest
                                                46685
                                                (.SD_FunArg (rg! «queueing.c» 69 1507 69 1515) 0),
                                              .Pexpr [] () <| .PEsym <|
                                              sym.Symbol
                                                Src.digest
                                                46686
                                                (.SD_FunArg (rgc! «queueing.c» 69 1517 69 1526 69 1517) 1),
                                              .Pexpr [] () <| .PEsym <|
                                              sym.Symbol
                                                Src.digest
                                                46687
                                                (.SD_FunArg (rgc! «queueing.c» 69 1528 69 1545 69 1528) 2)]) <|
                                           .Expr [] <|
                                           .Esseq
                                             (.Pattern
                                               []
                                               (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit, .BTy_unit])))
                                             (.Expr [] <| .Eunseq <|
                                             [.Expr [] <| .Eaction <| .Paction .Pos <|
                                              .Action (rg! «queueing.c» 69 1500 69 1546) () <|
                                              .Kill
                                                (.Static0 <|
                                                .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
                                                .Pointer
                                                  (.mk .false .false .false)
                                                  (.Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] .Void0)) <|
                                              .Pexpr [] () <| .PEsym <|
                                              sym.Symbol
                                                Src.digest
                                                46685
                                                (.SD_FunArg (rg! «queueing.c» 69 1507 69 1515) 0),
                                              .Expr [] <| .Eaction <| .Paction .Pos <|
                                              .Action (rg! «queueing.c» 69 1500 69 1546) () <|
                                              .Kill
                                                (.Static0 <|
                                                .Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] <|
                                                .Pointer
                                                  (.mk .true .false .false)
                                                  (.Ctype [.Aloc .unknown, .Aloc .unknown, .Aloc .unknown] .Void0)) <|
                                              .Pexpr [] () <| .PEsym <|
                                              sym.Symbol
                                                Src.digest
                                                46686
                                                (.SD_FunArg (rgc! «queueing.c» 69 1517 69 1526 69 1517) 1),
                                              .Expr [] <| .Eaction <| .Paction .Pos <|
                                              .Action (rg! «queueing.c» 69 1500 69 1546) () <|
                                              .Kill
                                                (.Static0 <|
                                                .Ctype
                                                  [.Aloc .unknown,
                                                   .Atypedef (c! "size_t" 31),
                                                   .Aloc .unknown,
                                                   .Aloc .unknown]
                                                  (.Basic (.Integer (.Unsigned .Long)))) <|
                                              .Pexpr [] () <| .PEsym <|
                                              sym.Symbol
                                                Src.digest
                                                46687
                                                (.SD_FunArg (rgc! «queueing.c» 69 1528 69 1545 69 1528) 2)])
                                             (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46699))))))
                                           (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
                                       .Expr [] <|
                                       .Esseq
                                         (.Pattern [] (.CaseBase (.some (a! 46663), .BTy_loaded .OTy_pointer)))
                                         (.Expr [.Aloc (rg! «queueing.c» 69 1548 69 1556), .Aexpr] <|
                                         .Ewseq
                                           (.Pattern [] (.CaseBase (.some (a! 46700), .BTy_object .OTy_pointer)))
                                           (.Expr
                                             [.Aloc (rg! «queueing.c» 69 1548 69 1556), .Aexpr]
                                             (.Epure (.Pexpr [] () (.PEsym (addr! "__xr_old" 3417))))) <|
                                         .Expr [] <| .Eaction <| .Paction .Pos <|
                                         .Action (rg! «queueing.c» 69 1548 69 1556) () <|
                                         .Load0
                                           (.Pexpr [] () <| .PEval <| .Vctype <|
                                           .Ctype
                                             [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
                                             (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                                           (.Pexpr [] () (.PEsym (a! 46700)))
                                           .NA) <| .Expr [] <|
                                       .Esseq
                                         (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                                         (.Expr [] <| .Eaction <| .Paction .Pos <|
                                         .Action (rgr! «queueing.c» 69 1172 69 1592 69 1415 69 1423) () <|
                                         .Kill
                                           (.Static0 <|
                                           .Ctype [.Aloc (rgc! «queueing.c» 69 1401 69 1413 69 1401)] <|
                                           .Pointer (.mk .false .false .false) <|
                                           .Ctype
                                             [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
                                             (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                                           (.Pexpr [] () (.PEsym (addr! "__xr_ptr" 3415)))) <|
                                       .Expr [] <|
                                       .Esseq
                                         (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                                         (.Expr [] <| .Eaction <| .Paction .Pos <|
                                         .Action (rgr! «queueing.c» 69 1172 69 1592 69 1460 69 1468) () <|
                                         .Kill
                                           (.Static0 <|
                                           .Ctype
                                             [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
                                             (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                                           (.Pexpr [] () (.PEsym (addr! "__xr_new" 3416)))) <|
                                       .Expr [] <|
                                       .Esseq
                                         (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                                         (.Expr [] <| .Eaction <| .Paction .Pos <|
                                         .Action (rgr! «queueing.c» 69 1172 69 1592 69 1478 69 1486) () <|
                                         .Kill
                                           (.Static0 <|
                                           .Ctype
                                             [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
                                             (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                                           (.Pexpr [] () (.PEsym (addr! "__xr_old" 3417))))
                                         (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46663)))))) <|
                                     .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46659))) <|
                                     [(.Pattern
                                         []
                                         (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                                       .Expr [] <| .Epure <| .Pexpr [] () <|
                                       .PEundef
                                         (rgc! «queueing.c» 69 1390 69 1569 69 1561)
                                         (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                                      (.Pattern [] <|
                                       .CaseCtor
                                         .Cspecified
                                         [.Pattern [] (.CaseBase (.some (a! 46660), .BTy_object .OTy_pointer))],
                                       .Expr [] <| .Epure <| .Pexpr [] () <|
                                       .PEmember_shift
                                         (.Pexpr [] () (.PEsym (a! 46660)))
                                         (c! "sk_buff" 1059)
                                         (.Identifier (rg! «queueing.c» 69 1563 69 1569) "u_node"))]) <|
                                   .Expr [] <| .Epure <| .Pexpr [] () <|
                                   .PEmember_shift
                                     (.Pexpr [] () (.PEsym (a! 46658)))
                                     (sym.Symbol Src.digest 1280 (.SD_unnamed_tag .unknown))
                                     (.Identifier (rg! «queueing.c» 69 1570 69 1576) "s_node")) <|
                                 .Expr [] <| .Epure <| .Pexpr [] () <|
                                 .PEmember_shift
                                   (.Pexpr [] () (.PEsym (a! 46657)))
                                   (sym.Symbol Src.digest 1281 (.SD_unnamed_tag .unknown))
                                   (.Identifier (rg! «queueing.c» 69 1577 69 1581) "prev")) <|
                               .Expr [] <|
                               .Epure
                                 (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 46656))]))) <|
                             .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46654))) <|
                             [(.Pattern [] <|
                               .CaseCtor
                                 .Cspecified
                                 [.Pattern [] (.CaseBase (.some (a! 46655), .BTy_object .OTy_pointer))],
                               .Expr [] <|
                               .Ewseq
                                 (.Pattern [] (.CaseBase (.some (a! 46701), .BTy_boolean)))
                                 (.Expr [] <| .Ememop .PtrWellAligned <|
                                 [.Pexpr [] () <| .PEval <| .Vctype <|
                                  .Ctype
                                    [.Aloc .unknown]
                                    (.Pointer (.mk .false .false .false) Ty.struct_sk_buff),
                                  .Pexpr [] () (.PEsym (a! 46655))]) <| .Expr [] <| .Epure <|
                               .Pexpr [] () <| .PEctor .Cspecified <|
                               [.Pexpr [] () <|
                                .PEif
                                  (.Pexpr [] () (.PEsym (a! 46701)))
                                  (.Pexpr [] () (.PEsym (a! 46655))) <| .Pexpr [] () <|
                                .PEundef
                                  (rgc! «queueing.c» 69 1173 69 1583 69 1173)
                                  .UB025_misaligned_pointer_conversion]),
                              (.Pattern
                                 []
                                 (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                               .Expr [] <| .Epure <| .Pexpr [] () <|
                               .PEundef
                                 (rgc! «queueing.c» 69 1173 69 1583 69 1173)
                                 .UB025_misaligned_pointer_conversion)]) <| .Expr [] <|
                           .Ecase (.Pexpr [] () (.PEsym (a! 46651))) <|
                           [(.Pattern [] <|
                             .CaseCtor
                               .Cspecified
                               [.Pattern [] (.CaseBase (.some (a! 46652), .BTy_object .OTy_pointer))],
                             .Expr [] <|
                             .Ewseq
                               (.Pattern [] (.CaseBase (.some (a! 46653), .BTy_boolean)))
                               (.Expr [] <| .Ememop .PtrValidForDeref <|
                               [.Pexpr [] () <| .PEval <| .Vctype <|
                                .Ctype
                                  [.Aloc .unknown]
                                  (.Pointer (.mk .false .false .false) Ty.struct_sk_buff),
                                .Pexpr [] () (.PEsym (a! 46652))]) <| .Expr [] <| .Epure <|
                             .Pexpr [] () <|
                             .PEif
                               (.Pexpr [] () (.PEsym (a! 46653)))
                               (.Pexpr [] () (.PEsym (a! 46652))) <|
                             .Pexpr [.Astd "\xa76.5.3.2#4, sentence 4"] () <|
                             .PEundef
                               (rgc! «queueing.c» 69 1172 69 1583 69 1172)
                               .UB043_indirection_invalid_value),
                            (.Pattern
                               []
                               (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                             .Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.3.2#4, sentence 4"] () <|
                             .PEundef
                               (rgc! «queueing.c» 69 1172 69 1583 69 1172)
                               .UB043_indirection_invalid_value)],
                           .Expr [.Aloc (rg! «queueing.c» 69 1586 69 1591), .Aexpr] <|
                           .Ewseq
                             (.Pattern [] (.CaseBase (.some (a! 46702), .BTy_object .OTy_pointer)))
                             (.Expr
                               [.Aloc (rg! «queueing.c» 69 1586 69 1591), .Aexpr]
                               (.Epure (.Pexpr [] () (.PEsym (addr! "skb" 3386))))) <| .Expr [] <|
                           .Eaction <| .Paction .Pos <|
                           .Action (rg! «queueing.c» 69 1586 69 1591) () <|
                           .Load0
                             (.Pexpr [] () <| .PEval <| .Vctype <|
                             .Ctype
                               [.Aloc (rg! «queueing.c» 66 78 66 79)]
                               (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                             (.Pexpr [] () (.PEsym (a! 46702)))
                             .NA]) <| .Expr [] <|
                        .Ewseq
                          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                          (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
                          .Action (rgc! «queueing.c» 69 1172 69 1591 69 1584) () <|
                          .Store0
                            .false
                            (.Pexpr [] () <| .PEval <| .Vctype <|
                            .Ctype
                              [.Aloc .unknown]
                              (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                            (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 46650)))
                            (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 46703)))
                            .NA) <| .Expr [] <|
                        .Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 46703))))
                        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
                      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
                  .Esseq
                    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                    (.Expr
                      [.Aloc (rg! «queueing.c» 69 1167 69 1605),
                       .Astmt,
                       .Alabel (.LAloop_continue 3418)] <|
                    .Esave (c! "continue_46412" 46412, .BTy_unit) [] <|
                    .Expr
                      [.Aloc (rg! «queueing.c» 69 1167 69 1605), .Astmt]
                      (.Epure (.Pexpr [] () (.PEval .Vunit))))
                    (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.some (a! 46649), .BTy_loaded .OTy_integer)))
                  (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                  .Expr
                    [.Aloc (rg! «queueing.c» 69 1602 69 1603),
                     .Aexpr,
                     .Avalue (.Ainteger (.Signed .Int_))] <|
                  .Epure
                    (.Pexpr
                      []
                      ()
                      (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))) <|
                .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46649))) <|
                [(.Pattern [] <|
                  .CaseCtor
                    .Cspecified
                    [.Pattern [] (.CaseBase (.some (a! 46648), .BTy_object .OTy_integer))],
                  .Expr [] <|
                  .Eif
                    (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                    .PEop
                      .OpEq
                      (.Pexpr [] () (.PEsym (a! 46648)))
                      (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                    (.Expr [] (.Erun () (c! "do_46647" 46647) []))
                    (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))),
                 (.Pattern
                    []
                    (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                  .Expr [] <| .Epure <| .Pexpr [] () <|
                  .PEundef (rg! «queueing.c» 69 1167 69 1605) (.DUMMY "unspecified AilSdo"))]) <|
              .Expr [] <|
              .Esseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr
                  [.Aloc (rg! «queueing.c» 69 1167 69 1605), .Astmt, .Alabel (.LAloop_break 3418)] <|
                .Esave (c! "break_46413" 46413, .BTy_unit) [] <|
                .Expr
                  [.Aloc (rg! «queueing.c» 69 1167 69 1605), .Astmt]
                  (.Epure (.Pexpr [] () (.PEval .Vunit))))
                (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
              (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr
              [.Aloc (rg! «queueing.c» 69 2 69 1618), .Astmt, .Alabel (.LAloop_continue 3420)] <|
            .Esave (c! "continue_46410" 46410, .BTy_unit) [] <|
            .Expr
              [.Aloc (rg! «queueing.c» 69 2 69 1618), .Astmt]
              (.Epure (.Pexpr [] () (.PEval .Vunit))))
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 46542), .BTy_loaded .OTy_integer)))
          (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
          .Expr
            [.Aloc (rg! «queueing.c» 69 1615 69 1616),
             .Aexpr,
             .Avalue (.Ainteger (.Signed .Int_))]
            (.Epure
              (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))))) <|
        .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46542))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 46541), .BTy_object .OTy_integer))],
          .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 46541)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
            (.Expr [] (.Erun () (c! "do_46540" 46540) []))
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <|
          .Epure
            (.Pexpr
              []
              ()
              (.PEundef (rg! «queueing.c» 69 2 69 1618) (.DUMMY "unspecified AilSdo"))))]) <|
      .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Aloc (rg! «queueing.c» 69 2 69 1618), .Astmt, .Alabel (.LAloop_break 3420)] <|
        .Esave (c! "break_46411" 46411, .BTy_unit) [] <|
        .Expr
          [.Aloc (rg! «queueing.c» 69 2 69 1618), .Astmt]
          (.Epure (.Pexpr [] () (.PEval .Vunit))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc (rgr! «queueing.c» 66 1 70 2 66 13 66 36)] <|
  .Esave
    (c! "ret_46405" 46405, .BTy_unit)
    [(a! 46704,
      ((.BTy_unit, .some (.Ctype [.Aloc (rg! «queueing.c» 66 8 66 12)] .Void0, .By_value)),
       .Pexpr [] () (.PEval .Vunit)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46704)))))

/--
```c
struct sk_buff *wg_prev_queue_dequeue(struct prev_queue *queue)
```

`linux/drivers/net/wireguard/queueing.c:80` -/
def wg_prev_queue_dequeue : Procedure :=
  .Proc
    (rgr! «queueing.c» 80 1 106 2 80 17 80 38)
    (.some 3423)
    (.BTy_loaded .OTy_pointer)
    [(addr! "queue" 3422, .BTy_object .OTy_pointer)] <| .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc (rg! «queueing.c» 81 1 106 2), .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.some (addr! "tail" 3424), .BTy_object .OTy_pointer)))
      (.Expr [] <| .Eaction <| .Paction .Pos <|
      .Action (rgr! «queueing.c» 81 1 106 2 82 18 82 22) () <|
      .Create
        (.Pexpr [] () <| .PEctor .Civalignof <|
        [.Pexpr [] () <| .PEval <| .Vctype <|
         .Ctype
           [.Aloc (rg! «queueing.c» 82 17 82 18)]
           (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)])
        (.Pexpr [] () <| .PEval <| .Vctype <|
        .Ctype
          [.Aloc (rg! «queueing.c» 82 17 82 18)]
          (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)) <|
      .PrefSource
        (rg! «queueing.c» 82 18 82 22)
        [c! "wg_prev_queue_dequeue" 2242, addr! "tail" 3424]) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.some (addr! "next" 3425), .BTy_object .OTy_pointer)))
      (.Expr [] <| .Eaction <| .Paction .Pos <|
      .Action (rgr! «queueing.c» 81 1 106 2 82 39 82 43) () <|
      .Create
        (.Pexpr [] () <| .PEctor .Civalignof <|
        [.Pexpr [] () <| .PEval <| .Vctype <|
         .Ctype
           [.Aloc (rg! «queueing.c» 82 38 82 39)]
           (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)])
        (.Pexpr [] () <| .PEval <| .Vctype <|
        .Ctype
          [.Aloc (rg! «queueing.c» 82 38 82 39)]
          (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)) <|
      .PrefSource
        (rg! «queueing.c» 82 39 82 43)
        [c! "wg_prev_queue_dequeue" 2242, addr! "next" 3425]) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «queueing.c» 82 2 82 81), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 52291), .BTy_loaded .OTy_pointer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc (rgc! «queueing.c» 82 25 82 36 82 30), .Aexpr] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.some (a! 52297), .BTy_object .OTy_pointer)))
          (.Expr
            [.Aloc (rgc! «queueing.c» 82 25 82 36 82 30),
             .Aexpr,
             .Astd "\xa76.5.2.3#4, sentence 2"] <|
          .Esseq
            (.Pattern [] (.CaseBase (.some (a! 52292), .BTy_loaded .OTy_pointer)))
            (.Expr [.Aloc (rg! «queueing.c» 82 25 82 30), .Aexpr] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.some (a! 52296), .BTy_object .OTy_pointer)))
              (.Expr
                [.Aloc (rg! «queueing.c» 82 25 82 30), .Aexpr]
                (.Epure (.Pexpr [] () (.PEsym (addr! "queue" 3422))))) <| .Expr [] <| .Eaction <|
            .Paction .Pos <| .Action (rg! «queueing.c» 82 25 82 30) () <|
            .Load0
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc (rg! «queueing.h» 137 57 137 58), .Aloc (rg! «queueing.c» 80 57 80 58)]
                (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
              (.Pexpr [] () (.PEsym (a! 52296)))
              .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52292))) <|
          [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
            .Expr [] <| .Epure <| .Pexpr [] () <|
            .PEundef
              (rgc! «queueing.c» 82 25 82 36 82 30)
              (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
           (.Pattern [] <|
            .CaseCtor
              .Cspecified
              [.Pattern [] (.CaseBase (.some (a! 52293), .BTy_object .OTy_pointer))],
            .Expr [] <| .Epure <| .Pexpr [] () <|
            .PEmember_shift
              (.Pexpr [] () (.PEsym (a! 52293)))
              (c! "prev_queue" 2191)
              (.Identifier (rg! «queueing.c» 82 32 82 36) "tail"))]) <| .Expr [] <| .Eaction <|
        .Paction .Pos <| .Action (rgc! «queueing.c» 82 25 82 36 82 30) () <|
        .Load0
          (.Pexpr [] () <| .PEval <| .Vctype <|
          .Ctype
            [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 24 35 25)]
            (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
          (.Pexpr [] () (.PEsym (a! 52297)))
          .NA) <| .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 82 2 82 81) () <|
        .Store0
          .false
          (.Pexpr [] () <| .PEval <| .Vctype <|
          .Ctype
            [.Aloc (rg! «queueing.c» 82 17 82 18)]
            (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
          (.Pexpr [] () (.PEsym (addr! "tail" 3424)))
          (.Pexpr [] () (.PEsym (a! 52291)))
          .NA) <| .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 52298), .BTy_loaded .OTy_pointer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc (rg! «queueing.c» 82 46 82 80), .Aexpr] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.some (a! 52310), .BTy_object .OTy_pointer)))
          (.Expr [.Aloc (rg! «queueing.c» 82 46 82 80), .Aexpr, .Astd "\xa76.5.3.2"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 52299), .BTy_loaded .OTy_pointer)))
            (.Expr
              [.Aloc (rg! «queueing.c» 82 48 82 79), .Aexpr, .Astd "\xa76.5.3.2#3, sentence 5"] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.some (a! 52302), .BTy_object .OTy_pointer)))
              (.Expr
                [.Aloc (rg! «queueing.c» 82 50 82 78), .Aexpr, .Astd "\xa76.5.2.3#3, sentence 2"] <|
              .Esseq
                (.Pattern [] (.CaseBase (.some (a! 52303), .BTy_object .OTy_pointer)))
                (.Expr
                  [.Aloc (rgc! «queueing.c» 82 51 82 72 82 65),
                   .Aexpr,
                   .Astd "\xa76.5.2.3#3, sentence 2"] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.some (a! 52304), .BTy_object .OTy_pointer)))
                  (.Expr
                    [.Aloc (rgc! «queueing.c» 82 51 82 65 82 57),
                     .Aexpr,
                     .Astd "\xa76.5.2.3#4, sentence 2"] <|
                  .Esseq
                    (.Pattern [] (.CaseBase (.some (a! 52305), .BTy_loaded .OTy_pointer)))
                    (.Expr [.Aloc (rg! «queueing.c» 82 51 82 57), .Aexpr] <|
                    .Ewseq
                      (.Pattern [] (.CaseBase (.some (a! 52309), .BTy_object .OTy_pointer)))
                      (.Expr
                        [.Aloc (rg! «queueing.c» 82 51 82 57), .Aexpr]
                        (.Epure (.Pexpr [] () (.PEsym (addr! "tail" 3424))))) <| .Expr [] <|
                    .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 82 51 82 57) () <|
                    .Load0
                      (.Pexpr [] () <| .PEval <| .Vctype <|
                      .Ctype
                        [.Aloc (rg! «queueing.c» 82 17 82 18)]
                        (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                      (.Pexpr [] () (.PEsym (a! 52309)))
                      .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52305))) <|
                  [(.Pattern
                      []
                      (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                    .Expr [] <| .Epure <| .Pexpr [] () <|
                    .PEundef
                      (rgc! «queueing.c» 82 51 82 65 82 57)
                      (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                   (.Pattern [] <|
                    .CaseCtor
                      .Cspecified
                      [.Pattern [] (.CaseBase (.some (a! 52306), .BTy_object .OTy_pointer))],
                    .Expr [] <| .Epure <| .Pexpr [] () <|
                    .PEmember_shift
                      (.Pexpr [] () (.PEsym (a! 52306)))
                      (c! "sk_buff" 1059)
                      (.Identifier (rg! «queueing.c» 82 59 82 65) "u_node"))]) <| .Expr [] <|
                .Epure <| .Pexpr [] () <|
                .PEmember_shift
                  (.Pexpr [] () (.PEsym (a! 52304)))
                  (sym.Symbol Src.digest 1280 (.SD_unnamed_tag .unknown))
                  (.Identifier (rg! «queueing.c» 82 66 82 72) "s_node")) <| .Expr [] <| .Epure <|
              .Pexpr [] () <|
              .PEmember_shift
                (.Pexpr [] () (.PEsym (a! 52303)))
                (sym.Symbol Src.digest 1281 (.SD_unnamed_tag .unknown))
                (.Identifier (rg! «queueing.c» 82 73 82 77) "prev")) <|
            .Expr
              []
              (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 52302))])))) <|
          .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52299))) <|
          [(.Pattern [] <|
            .CaseCtor
              .Cspecified
              [.Pattern [] (.CaseBase (.some (a! 52300), .BTy_object .OTy_pointer))],
            .Expr [] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.some (a! 52301), .BTy_boolean)))
              (.Expr [] <| .Ememop .PtrValidForDeref <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_sk_buff),
               .Pexpr [] () (.PEsym (a! 52300))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
            .PEif (.Pexpr [] () (.PEsym (a! 52301))) (.Pexpr [] () (.PEsym (a! 52300))) <|
            .Pexpr
              [.Astd "\xa76.5.3.2#4, sentence 4"]
              ()
              (.PEundef (rg! «queueing.c» 82 46 82 80) .UB043_indirection_invalid_value)),
           (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
            .Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.3.2#4, sentence 4"]
              ()
              (.PEundef (rg! «queueing.c» 82 46 82 80) .UB043_indirection_invalid_value))]) <|
        .Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 82 46 82 80) () <|
        .Load0
          (.Pexpr [] () <| .PEval <| .Vctype <|
          .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
          (.Pexpr [] () (.PEsym (a! 52310)))
          .NA) <| .Expr [] <| .Eaction <| .Paction .Pos <|
      .Action (rg! «queueing.c» 82 2 82 81) () <|
      .Store0
        .false
        (.Pexpr [] () <| .PEval <| .Vctype <|
        .Ctype
          [.Aloc (rg! «queueing.c» 82 38 82 39)]
          (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
        (.Pexpr [] () (.PEsym (addr! "next" 3425)))
        (.Pexpr [] () (.PEsym (a! 52298)))
        .NA) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «queueing.c» 84 2 90 3), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 52312), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc (rgc! «queueing.c» 84 6 84 47 84 11),
           .Aexpr,
           .Avalue (.Ainteger (.Signed .Int_))] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 52314), .BTy_loaded .OTy_integer)),
           .Pattern [] (.CaseBase (.some (a! 52315), .BTy_loaded .OTy_integer))])
          (.Expr [] <| .Eunseq <|
          [.Expr
             [.Aloc (rgc! «queueing.c» 84 6 84 47 84 11),
              .Aexpr,
              .Avalue (.Ainteger (.Signed .Int_))] <|
           .Ewseq
             (.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] (.CaseBase (.some (a! 52319), .BTy_loaded .OTy_pointer)),
              .Pattern [] (.CaseBase (.some (a! 52320), .BTy_loaded .OTy_pointer))])
             (.Expr [] <| .Eunseq <|
             [.Expr [.Aloc (rg! «queueing.c» 84 6 84 10), .Aexpr] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 52324), .BTy_object .OTy_pointer)))
                (.Expr
                  [.Aloc (rg! «queueing.c» 84 6 84 10), .Aexpr]
                  (.Epure (.Pexpr [] () (.PEsym (addr! "tail" 3424))))) <| .Expr [] <| .Eaction <|
              .Paction .Pos <| .Action (rg! «queueing.c» 84 6 84 10) () <|
              .Load0
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype
                  [.Aloc (rg! «queueing.c» 82 17 82 18)]
                  (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                (.Pexpr [] () (.PEsym (a! 52324)))
                .NA,
              .Expr [.Aloc (rg! «queueing.c» 84 14 84 47), .Aexpr, .Astd "\xa76.5.4"] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 52325), .BTy_loaded .OTy_pointer)))
                (.Expr
                  [.Aloc (rgc! «queueing.c» 84 33 84 46 84 33),
                   .Aexpr,
                   .Astd "\xa76.5.3.2#3, sentence 5"] <|
                .Ewseq
                  (.Pattern [] (.CaseBase (.some (a! 52327), .BTy_object .OTy_pointer)))
                  (.Expr
                    [.Aloc (rgc! «queueing.c» 84 34 84 46 84 39),
                     .Aexpr,
                     .Astd "\xa76.5.2.3#4, sentence 2"] <|
                  .Esseq
                    (.Pattern [] (.CaseBase (.some (a! 52328), .BTy_loaded .OTy_pointer)))
                    (.Expr [.Aloc (rg! «queueing.c» 84 34 84 39), .Aexpr] <|
                    .Ewseq
                      (.Pattern [] (.CaseBase (.some (a! 52332), .BTy_object .OTy_pointer)))
                      (.Expr
                        [.Aloc (rg! «queueing.c» 84 34 84 39), .Aexpr]
                        (.Epure (.Pexpr [] () (.PEsym (addr! "queue" 3422))))) <| .Expr [] <|
                    .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 84 34 84 39) () <|
                    .Load0
                      (.Pexpr [] () <| .PEval <| .Vctype <|
                      .Ctype
                        [.Aloc (rg! «queueing.h» 137 57 137 58),
                         .Aloc (rg! «queueing.c» 80 57 80 58)]
                        (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
                      (.Pexpr [] () (.PEsym (a! 52332)))
                      .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52328))) <|
                  [(.Pattern
                      []
                      (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                    .Expr [] <| .Epure <| .Pexpr [] () <|
                    .PEundef
                      (rgc! «queueing.c» 84 34 84 46 84 39)
                      (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                   (.Pattern [] <|
                    .CaseCtor
                      .Cspecified
                      [.Pattern [] (.CaseBase (.some (a! 52329), .BTy_object .OTy_pointer))],
                    .Expr [] <| .Epure <| .Pexpr [] () <|
                    .PEmember_shift
                      (.Pexpr [] () (.PEsym (a! 52329)))
                      (c! "prev_queue" 2191)
                      (.Identifier (rg! «queueing.c» 84 41 84 46) "empty"))]) <|
                .Expr
                  []
                  (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 52327))])))) <|
              .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52325))) <|
              [(.Pattern [] <|
                .CaseCtor
                  .Cspecified
                  [.Pattern [] (.CaseBase (.some (a! 52326), .BTy_object .OTy_pointer))],
                .Expr [] <|
                .Ewseq
                  (.Pattern [] (.CaseBase (.some (a! 52333), .BTy_boolean)))
                  (.Expr [] <| .Ememop .PtrWellAligned <|
                  [.Pexpr [] () (.PEval (.Vctype Ty.struct_sk_buff)),
                   .Pexpr [] () (.PEsym (a! 52326))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
                .PEctor .Cspecified <|
                [.Pexpr [] () <|
                 .PEif (.Pexpr [] () (.PEsym (a! 52333))) (.Pexpr [] () (.PEsym (a! 52326))) <|
                 .Pexpr
                   []
                   ()
                   (.PEundef (rg! «queueing.c» 84 14 84 47) .UB025_misaligned_pointer_conversion)]),
               (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                .Expr [] <| .Epure <| .Pexpr [] () <|
                .PEundef (rg! «queueing.c» 84 14 84 47) .UB025_misaligned_pointer_conversion)]]) <|
           .Expr [] <|
           .Ecase
             (.Pexpr
               []
               ()
               (.PEctor
                 .Ctuple
                 [.Pexpr [] () (.PEsym (a! 52319)), .Pexpr [] () (.PEsym (a! 52320))])) <|
           [(.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 52321), .BTy_object .OTy_pointer))],
              .Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 52322), .BTy_object .OTy_pointer))]],
             .Expr [] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 52323), .BTy_boolean)))
               (.Expr
                 []
                 (.Ememop
                   .PtrEq
                   [.Pexpr [] () (.PEsym (a! 52321)), .Pexpr [] () (.PEsym (a! 52322))])) <|
             .Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.9#3"] () <|
             .PEif
               (.Pexpr [] () (.PEsym (a! 52323)))
               (.Pexpr [] () <|
               .PEctor
                 .Cspecified
                 [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
             .Pexpr [] () <|
             .PEctor .Cspecified [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
            (.Pattern
               []
               (.CaseBase (.none, .BTy_tuple [.BTy_loaded .OTy_pointer, .BTy_loaded .OTy_pointer])),
             .Expr [] <| .Epure <| .Pexpr [] () <|
             .PEundef
               (rgc! «queueing.c» 84 6 84 47 84 11)
               (.UB_CERB004_unspecified .UB_unspec_equality_both_arith_or_ptr))],
           .Expr
             [.Aloc (rgc! «queueing.c» 84 6 84 47 84 11),
              .Aexpr,
              .Avalue (.Ainteger (.Signed .Int_))] <|
           .Epure (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
        .Expr [] <| .Epure <| .Pexpr [] () <|
        .PEcase
          (.Pexpr
            []
            ()
            (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 52314)), .Pexpr [] () (.PEsym (a! 52315))])) <|
        [(.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 52316), .BTy_object .OTy_integer))],
           .Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 52317), .BTy_object .OTy_integer))]],
          .Pexpr [.Astd "\xa76.5.9#3"] () <|
          .PEif
            (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
            .PEop
              .OpEq
              (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
              .PEcall
                (.Sym (rt! "conv_int" 15837442492999787586))
                [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52316))]) <|
            .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
            .PEcall
              (.Sym (rt! "conv_int" 15837442492999787586))
              [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52317))])
            (.Pexpr
              []
              ()
              (.PEctor
                .Cspecified
                [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))])) <|
          .Pexpr
            []
            ()
            (.PEctor .Cspecified [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))])),
         (.Pattern
            []
            (.CaseBase (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer])),
          .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
          .Ctype [.Aloc (rgc! «queueing.c» 84 6 84 47 84 11)] (.Basic (.Integer (.Signed .Int_))))]) <|
      .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 52311), .BTy_boolean)))
        (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52312))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 52313), .BTy_object .OTy_integer))],
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 52313)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
            (.Pexpr [] () (.PEval .Vtrue))
            (.Pexpr [] () (.PEval .Vfalse))),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <| .End <|
          [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
           .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
      .Eif
        (.Pexpr [] () (.PEsym (a! 52311)))
        (.Expr [.Aloc (rg! «queueing.c» 84 49 90 3), .Astmt] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc (rg! «queueing.c» 85 3 86 23), .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.some (a! 52335), .BTy_loaded .OTy_integer)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr
              [.Aloc (rgc! «queueing.c» 85 7 85 12 85 7),
               .Aexpr,
               .Avalue (.Ainteger (.Signed .Int_))] <|
            .Ewseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] (.CaseBase (.some (a! 52337), .BTy_loaded .OTy_integer)),
               .Pattern [] (.CaseBase (.some (a! 52338), .BTy_loaded .OTy_integer))])
              (.Expr [] <| .Eunseq <|
              [.Expr
                 [.Aloc (rgc! «queueing.c» 85 7 85 12 85 7),
                  .Aexpr,
                  .Avalue (.Ainteger (.Signed .Int_))] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 52343), .BTy_loaded .OTy_pointer)))
                 (.Expr [.Aloc (rg! «queueing.c» 85 8 85 12), .Aexpr] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 52342), .BTy_object .OTy_pointer)))
                   (.Expr
                     [.Aloc (rg! «queueing.c» 85 8 85 12), .Aexpr]
                     (.Epure (.Pexpr [] () (.PEsym (addr! "next" 3425))))) <| .Expr [] <|
                 .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 85 8 85 12) () <|
                 .Load0
                   (.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype
                     [.Aloc (rg! «queueing.c» 82 38 82 39)]
                     (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                   (.Pexpr [] () (.PEsym (a! 52342)))
                   .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52343))) <|
               [(.Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 52344), .BTy_object .OTy_pointer))],
                 .Expr [] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 52345), .BTy_boolean)))
                   (.Expr [] <| .Ememop .PtrEq <|
                   [.Pexpr [] () (.PEsym (a! 52344)),
                    .Pexpr [.Astd "\xa76.5.9#5, sentence 2"] () <| .PEval <| .Vobject <|
                    .OVpointer <| .PV .Prov_none <| .PVnull <|
                    .Ctype
                      [.Aloc (rg! «queueing.c» 85 8 85 12)]
                      (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]) <|
                 .Expr [.Astd "\xa76.5.9#3"] <| .Epure <| .Pexpr [] () <|
                 .PEif
                   (.Pexpr [] () (.PEsym (a! 52345)))
                   (.Pexpr [] () <|
                   .PEctor
                     .Cspecified
                     [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                 .Pexpr [] () <|
                 .PEctor
                   .Cspecified
                   [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)),
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEundef
                   (rgc! «queueing.c» 85 7 85 12 85 7)
                   (.UB_CERB004_unspecified .UB_unspec_equality_ptr_vs_NULL))],
               .Expr
                 [.Aloc (rgc! «queueing.c» 85 7 85 12 85 7),
                  .Aexpr,
                  .Avalue (.Ainteger (.Signed .Int_))] <|
               .Epure
                 (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
            .Expr [] <| .Epure <| .Pexpr [] () <|
            .PEcase
              (.Pexpr
                []
                ()
                (.PEctor
                  .Ctuple
                  [.Pexpr [] () (.PEsym (a! 52337)), .Pexpr [] () (.PEsym (a! 52338))])) <|
            [(.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 52339), .BTy_object .OTy_integer))],
               .Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 52340), .BTy_object .OTy_integer))]],
              .Pexpr [.Astd "\xa76.5.9#3"] () <|
              .PEif
                (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                .PEop
                  .OpEq
                  (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                  .PEcall
                    (.Sym (rt! "conv_int" 15837442492999787586))
                    [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52339))]) <|
                .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                .PEcall
                  (.Sym (rt! "conv_int" 15837442492999787586))
                  [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52340))])
                (.Pexpr [] () <|
                .PEctor
                  .Cspecified
                  [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
              .Pexpr [] () <|
              .PEctor .Cspecified [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
             (.Pattern
                []
                (.CaseBase (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer])),
              .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
              .Ctype
                [.Aloc (rgc! «queueing.c» 85 7 85 12 85 7)]
                (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <|
          .Esseq
            (.Pattern [] (.CaseBase (.some (a! 52334), .BTy_boolean)))
            (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52335))) <|
            [(.Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 52336), .BTy_object .OTy_integer))],
              .Expr [] <| .Epure <| .Pexpr [] () <|
              .PEif
                (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                .PEop
                  .OpEq
                  (.Pexpr [] () (.PEsym (a! 52336)))
                  (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
                (.Pexpr [] () (.PEval .Vtrue))
                (.Pexpr [] () (.PEval .Vfalse))),
             (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
              .Expr [] <| .End <|
              [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
               .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () (.PEsym (a! 52334)))
            (.Expr [.Aloc (rg! «queueing.c» 86 4 86 23), .Astmt] <|
            .Esseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [] <| .Eaction <| .Paction .Pos <|
              .Action (rg! «queueing.c» 86 4 86 23) () <|
              .Kill
                (.Static0 <|
                .Ctype
                  [.Aloc (rg! «queueing.c» 82 17 82 18)]
                  (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                (.Pexpr [] () (.PEsym (addr! "tail" 3424)))) <| .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [] <| .Eaction <| .Paction .Pos <|
              .Action (rg! «queueing.c» 86 4 86 23) () <|
              .Kill
                (.Static0 <|
                .Ctype
                  [.Aloc (rg! «queueing.c» 82 38 82 39)]
                  (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                (.Pexpr [] () (.PEsym (addr! "next" 3425)))) <| .Expr [] <|
            .Erun () (c! "ret_52290" 52290) <|
            [.Pexpr [] () <| .PEctor .Cspecified <|
             [.Pexpr [] () <| .PEval <| .Vobject <| .OVpointer <| .PV .Prov_none <| .PVnull <|
              .Ctype
                [.Aloc (rg! «queueing.h» 137 16 137 17), .Aloc (rg! «queueing.c» 80 16 80 17)]
                (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]]) <|
          .Expr
            [.Aloc (rg! «queueing.c» 85 3 86 23), .Astmt]
            (.Epure (.Pexpr [] () (.PEval .Vunit)))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc (rg! «queueing.c» 87 3 87 22), .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr
              [.Aloc (rgc! «queueing.c» 87 3 87 21 87 15),
               .Aexpr,
               .Astd "\xa76.5.16#3, sentence 4"] <|
            .Ewseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] (.CaseBase (.some (a! 52346), .BTy_object .OTy_pointer)),
               .Pattern [] (.CaseBase (.some (a! 52353), .BTy_loaded .OTy_pointer))])
              (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
              [.Expr
                 [.Aloc (rgc! «queueing.c» 87 3 87 14 87 8),
                  .Aexpr,
                  .Astd "\xa76.5.2.3#4, sentence 2"] <|
               .Esseq
                 (.Pattern [] (.CaseBase (.some (a! 52347), .BTy_loaded .OTy_pointer)))
                 (.Expr [.Aloc (rg! «queueing.c» 87 3 87 8), .Aexpr] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 52351), .BTy_object .OTy_pointer)))
                   (.Expr
                     [.Aloc (rg! «queueing.c» 87 3 87 8), .Aexpr]
                     (.Epure (.Pexpr [] () (.PEsym (addr! "queue" 3422))))) <| .Expr [] <|
                 .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 87 3 87 8) () <|
                 .Load0
                   (.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype
                     [.Aloc (rg! «queueing.h» 137 57 137 58),
                      .Aloc (rg! «queueing.c» 80 57 80 58)]
                     (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
                   (.Pexpr [] () (.PEsym (a! 52351)))
                   .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52347))) <|
               [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEundef
                   (rgc! «queueing.c» 87 3 87 14 87 8)
                   (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                (.Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 52348), .BTy_object .OTy_pointer))],
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEmember_shift
                   (.Pexpr [] () (.PEsym (a! 52348)))
                   (c! "prev_queue" 2191)
                   (.Identifier (rg! «queueing.c» 87 10 87 14) "tail"))],
               .Expr [.Aloc (rg! «queueing.c» 87 17 87 21), .Aexpr] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 52352), .BTy_object .OTy_pointer)))
                 (.Expr
                   [.Aloc (rg! «queueing.c» 87 17 87 21), .Aexpr]
                   (.Epure (.Pexpr [] () (.PEsym (addr! "next" 3425))))) <| .Expr [] <| .Eaction <|
               .Paction .Pos <| .Action (rg! «queueing.c» 87 17 87 21) () <|
               .Load0
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype
                   [.Aloc (rg! «queueing.c» 82 38 82 39)]
                   (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                 (.Pexpr [] () (.PEsym (a! 52352)))
                 .NA]) <| .Expr [] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
              .Action (rgc! «queueing.c» 87 3 87 21 87 15) () <|
              .Store0
                .false
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype
                  [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 24 35 25)]
                  (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 52346)))
                (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52353)))
                .NA)
              (.Expr
                []
                (.Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52353))))))
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc (rg! «queueing.c» 88 3 88 15), .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr
              [.Aloc (rgc! «queueing.c» 88 3 88 14 88 8),
               .Aexpr,
               .Astd "\xa76.5.16#3, sentence 4"] <|
            .Ewseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] (.CaseBase (.some (a! 52354), .BTy_object .OTy_pointer)),
               .Pattern [] (.CaseBase (.some (a! 52356), .BTy_loaded .OTy_pointer))])
              (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
              [.Expr
                 [.Aloc (rg! «queueing.c» 88 3 88 7), .Aexpr]
                 (.Epure (.Pexpr [] () (.PEsym (addr! "tail" 3424)))),
               .Expr [.Aloc (rg! «queueing.c» 88 10 88 14), .Aexpr] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 52355), .BTy_object .OTy_pointer)))
                 (.Expr
                   [.Aloc (rg! «queueing.c» 88 10 88 14), .Aexpr]
                   (.Epure (.Pexpr [] () (.PEsym (addr! "next" 3425))))) <| .Expr [] <| .Eaction <|
               .Paction .Pos <| .Action (rg! «queueing.c» 88 10 88 14) () <|
               .Load0
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype
                   [.Aloc (rg! «queueing.c» 82 38 82 39)]
                   (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                 (.Pexpr [] () (.PEsym (a! 52355)))
                 .NA]) <| .Expr [] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
              .Action (rgc! «queueing.c» 88 3 88 14 88 8) () <|
              .Store0
                .false
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype
                  [.Aloc (rg! «queueing.c» 82 17 82 18)]
                  (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 52354)))
                (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52356)))
                .NA)
              (.Expr
                []
                (.Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52356))))))
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc (rg! «queueing.c» 89 3 89 45), .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr
              [.Aloc (rgc! «queueing.c» 89 3 89 44 89 8),
               .Aexpr,
               .Astd "\xa76.5.16#3, sentence 4"] <|
            .Ewseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] (.CaseBase (.some (a! 52357), .BTy_object .OTy_pointer)),
               .Pattern [] (.CaseBase (.some (a! 52370), .BTy_loaded .OTy_pointer))])
              (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
              [.Expr
                 [.Aloc (rg! «queueing.c» 89 3 89 7), .Aexpr]
                 (.Epure (.Pexpr [] () (.PEsym (addr! "next" 3425)))),
               .Expr [.Aloc (rg! «queueing.c» 89 10 89 44), .Aexpr] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 52369), .BTy_object .OTy_pointer)))
                 (.Expr [.Aloc (rg! «queueing.c» 89 10 89 44), .Aexpr, .Astd "\xa76.5.3.2"] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 52358), .BTy_loaded .OTy_pointer)))
                   (.Expr
                     [.Aloc (rg! «queueing.c» 89 12 89 43),
                      .Aexpr,
                      .Astd "\xa76.5.3.2#3, sentence 5"] <|
                   .Ewseq
                     (.Pattern [] (.CaseBase (.some (a! 52361), .BTy_object .OTy_pointer)))
                     (.Expr
                       [.Aloc (rg! «queueing.c» 89 14 89 42),
                        .Aexpr,
                        .Astd "\xa76.5.2.3#3, sentence 2"] <|
                     .Esseq
                       (.Pattern [] (.CaseBase (.some (a! 52362), .BTy_object .OTy_pointer)))
                       (.Expr
                         [.Aloc (rgc! «queueing.c» 89 15 89 36 89 29),
                          .Aexpr,
                          .Astd "\xa76.5.2.3#3, sentence 2"] <|
                       .Esseq
                         (.Pattern [] (.CaseBase (.some (a! 52363), .BTy_object .OTy_pointer)))
                         (.Expr
                           [.Aloc (rgc! «queueing.c» 89 15 89 29 89 21),
                            .Aexpr,
                            .Astd "\xa76.5.2.3#4, sentence 2"] <|
                         .Esseq
                           (.Pattern [] (.CaseBase (.some (a! 52364), .BTy_loaded .OTy_pointer)))
                           (.Expr [.Aloc (rg! «queueing.c» 89 15 89 21), .Aexpr] <|
                           .Ewseq
                             (.Pattern [] (.CaseBase (.some (a! 52368), .BTy_object .OTy_pointer)))
                             (.Expr
                               [.Aloc (rg! «queueing.c» 89 15 89 21), .Aexpr]
                               (.Epure (.Pexpr [] () (.PEsym (addr! "next" 3425))))) <| .Expr [] <|
                           .Eaction <| .Paction .Pos <|
                           .Action (rg! «queueing.c» 89 15 89 21) () <|
                           .Load0
                             (.Pexpr [] () <| .PEval <| .Vctype <|
                             .Ctype
                               [.Aloc (rg! «queueing.c» 82 38 82 39)]
                               (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                             (.Pexpr [] () (.PEsym (a! 52368)))
                             .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52364))) <|
                         [(.Pattern
                             []
                             (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                           .Expr [] <| .Epure <| .Pexpr [] () <|
                           .PEundef
                             (rgc! «queueing.c» 89 15 89 29 89 21)
                             (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                          (.Pattern [] <|
                           .CaseCtor
                             .Cspecified
                             [.Pattern [] (.CaseBase (.some (a! 52365), .BTy_object .OTy_pointer))],
                           .Expr [] <| .Epure <| .Pexpr [] () <|
                           .PEmember_shift
                             (.Pexpr [] () (.PEsym (a! 52365)))
                             (c! "sk_buff" 1059)
                             (.Identifier (rg! «queueing.c» 89 23 89 29) "u_node"))]) <| .Expr [] <|
                       .Epure <| .Pexpr [] () <|
                       .PEmember_shift
                         (.Pexpr [] () (.PEsym (a! 52363)))
                         (sym.Symbol Src.digest 1280 (.SD_unnamed_tag .unknown))
                         (.Identifier (rg! «queueing.c» 89 30 89 36) "s_node")) <| .Expr [] <|
                     .Epure <| .Pexpr [] () <|
                     .PEmember_shift
                       (.Pexpr [] () (.PEsym (a! 52362)))
                       (sym.Symbol Src.digest 1281 (.SD_unnamed_tag .unknown))
                       (.Identifier (rg! «queueing.c» 89 37 89 41) "prev")) <|
                   .Expr
                     []
                     (.Epure
                       (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 52361))])))) <|
                 .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52358))) <|
                 [(.Pattern [] <|
                   .CaseCtor
                     .Cspecified
                     [.Pattern [] (.CaseBase (.some (a! 52359), .BTy_object .OTy_pointer))],
                   .Expr [] <|
                   .Ewseq
                     (.Pattern [] (.CaseBase (.some (a! 52360), .BTy_boolean)))
                     (.Expr [] <| .Ememop .PtrValidForDeref <|
                     [.Pexpr [] () <| .PEval <| .Vctype <|
                      .Ctype
                        [.Aloc .unknown]
                        (.Pointer (.mk .false .false .false) Ty.struct_sk_buff),
                      .Pexpr [] () (.PEsym (a! 52359))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
                   .PEif (.Pexpr [] () (.PEsym (a! 52360))) (.Pexpr [] () (.PEsym (a! 52359))) <|
                   .Pexpr
                     [.Astd "\xa76.5.3.2#4, sentence 4"]
                     ()
                     (.PEundef (rg! «queueing.c» 89 10 89 44) .UB043_indirection_invalid_value)),
                  (.Pattern
                     []
                     (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                   .Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.3.2#4, sentence 4"] () <|
                   .PEundef (rg! «queueing.c» 89 10 89 44) .UB043_indirection_invalid_value)]) <|
               .Expr [] <| .Eaction <| .Paction .Pos <|
               .Action (rg! «queueing.c» 89 10 89 44) () <|
               .Load0
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                 (.Pexpr [] () (.PEsym (a! 52369)))
                 .NA]) <| .Expr [] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
              .Action (rgc! «queueing.c» 89 3 89 44 89 8) () <|
              .Store0
                .false
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype
                  [.Aloc (rg! «queueing.c» 82 38 82 39)]
                  (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 52357)))
                (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52370)))
                .NA)
              (.Expr
                []
                (.Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52370))))))
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
          (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
        (.Expr
          [.Aloc (rg! «queueing.c» 84 2 90 3), .Astmt]
          (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «queueing.c» 91 2 95 3), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 52372), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc (rg! «queueing.c» 91 6 91 10), .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.some (a! 52375), .BTy_loaded .OTy_pointer)))
          (.Expr [.Aloc (rg! «queueing.c» 91 6 91 10), .Aexpr] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 52374), .BTy_object .OTy_pointer)))
            (.Expr
              [.Aloc (rg! «queueing.c» 91 6 91 10), .Aexpr]
              (.Epure (.Pexpr [] () (.PEsym (addr! "next" 3425))))) <| .Expr [] <| .Eaction <|
          .Paction .Pos <| .Action (rg! «queueing.c» 91 6 91 10) () <|
          .Load0
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype
              [.Aloc (rg! «queueing.c» 82 38 82 39)]
              (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
            (.Pexpr [] () (.PEsym (a! 52374)))
            .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52375))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 52376), .BTy_object .OTy_pointer))],
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 52377), .BTy_boolean)))
            (.Expr [] <| .Ememop .PtrEq <|
            [.Pexpr [] () (.PEsym (a! 52376)),
             .Pexpr [.Astd "\xa76.5.9#5, sentence 2"] () <| .PEval <| .Vobject <| .OVpointer <|
             .PV .Prov_none <| .PVnull <|
             .Ctype
               [.Aloc (rg! «queueing.c» 91 6 91 10)]
               (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]) <|
          .Expr [.Astd "\xa76.5.9#3"] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () (.PEsym (a! 52377)))
            (.Pexpr
              []
              ()
              (.PEctor
                .Cspecified
                [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))])) <|
          .Pexpr
            []
            ()
            (.PEctor .Cspecified [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))])),
         (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)),
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEundef
            (rg! «queueing.c» 91 6 91 10)
            (.UB_CERB004_unspecified .UB_unspec_equality_ptr_vs_NULL))]) <| .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 52371), .BTy_boolean)))
        (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52372))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 52373), .BTy_object .OTy_integer))],
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 52373)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
            (.Pexpr [] () (.PEval .Vtrue))
            (.Pexpr [] () (.PEval .Vfalse))),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <| .End <|
          [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
           .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
      .Eif
        (.Pexpr [] () (.PEsym (a! 52371)))
        (.Expr [.Aloc (rg! «queueing.c» 91 12 95 3), .Astmt] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc (rg! «queueing.c» 92 3 92 22), .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr
              [.Aloc (rgc! «queueing.c» 92 3 92 21 92 15),
               .Aexpr,
               .Astd "\xa76.5.16#3, sentence 4"] <|
            .Ewseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] (.CaseBase (.some (a! 52378), .BTy_object .OTy_pointer)),
               .Pattern [] (.CaseBase (.some (a! 52385), .BTy_loaded .OTy_pointer))])
              (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
              [.Expr
                 [.Aloc (rgc! «queueing.c» 92 3 92 14 92 8),
                  .Aexpr,
                  .Astd "\xa76.5.2.3#4, sentence 2"] <|
               .Esseq
                 (.Pattern [] (.CaseBase (.some (a! 52379), .BTy_loaded .OTy_pointer)))
                 (.Expr [.Aloc (rg! «queueing.c» 92 3 92 8), .Aexpr] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 52383), .BTy_object .OTy_pointer)))
                   (.Expr
                     [.Aloc (rg! «queueing.c» 92 3 92 8), .Aexpr]
                     (.Epure (.Pexpr [] () (.PEsym (addr! "queue" 3422))))) <| .Expr [] <|
                 .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 92 3 92 8) () <|
                 .Load0
                   (.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype
                     [.Aloc (rg! «queueing.h» 137 57 137 58),
                      .Aloc (rg! «queueing.c» 80 57 80 58)]
                     (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
                   (.Pexpr [] () (.PEsym (a! 52383)))
                   .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52379))) <|
               [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEundef
                   (rgc! «queueing.c» 92 3 92 14 92 8)
                   (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                (.Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 52380), .BTy_object .OTy_pointer))],
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEmember_shift
                   (.Pexpr [] () (.PEsym (a! 52380)))
                   (c! "prev_queue" 2191)
                   (.Identifier (rg! «queueing.c» 92 10 92 14) "tail"))],
               .Expr [.Aloc (rg! «queueing.c» 92 17 92 21), .Aexpr] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 52384), .BTy_object .OTy_pointer)))
                 (.Expr
                   [.Aloc (rg! «queueing.c» 92 17 92 21), .Aexpr]
                   (.Epure (.Pexpr [] () (.PEsym (addr! "next" 3425))))) <| .Expr [] <| .Eaction <|
               .Paction .Pos <| .Action (rg! «queueing.c» 92 17 92 21) () <|
               .Load0
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype
                   [.Aloc (rg! «queueing.c» 82 38 82 39)]
                   (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                 (.Pexpr [] () (.PEsym (a! 52384)))
                 .NA]) <| .Expr [] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
              .Action (rgc! «queueing.c» 92 3 92 21 92 15) () <|
              .Store0
                .false
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype
                  [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 24 35 25)]
                  (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 52378)))
                (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52385)))
                .NA)
              (.Expr
                []
                (.Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52385))))))
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc (rg! «queueing.c» 93 3 93 29), .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr
              [.Aloc (rg! «queueing.c» 93 3 93 28), .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
            .Esseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] <| .CaseCtor .Ctuple <|
               [.Pattern [] (.CaseBase (.some (a! 52387), .BTy_loaded .OTy_pointer)),
                .Pattern [] <| .CaseCtor .Ctuple <|
                [.Pattern [] (.CaseBase (.some (a! 52388), .BTy_ctype)),
                 .Pattern [] (.CaseBase (.some (a! 52389), .BTy_list .BTy_ctype)),
                 .Pattern [] (.CaseBase (.some (a! 52390), .BTy_boolean)),
                 .Pattern [] (.CaseBase (.some (a! 52391), .BTy_boolean))]],
               .Pattern [] (.CaseBase (.some (a! 52393), .BTy_loaded .OTy_pointer))])
              (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
              [.Expr [] <|
               .Esseq
                 (.Pattern [] (.CaseBase (.some (a! 52386), .BTy_loaded .OTy_pointer)))
                 (.Expr [.Aloc (rg! «queueing.c» 93 3 93 13), .Aexpr] <| .Epure <| .Pexpr [] () <|
                 .PEval <|
                 .Vloaded
                   (.LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "atomic_dec" 414)))))) <|
               .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
               [.Pexpr [] () (.PEsym (a! 52386)),
                .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 52386))))],
               .Expr
                 [.Aloc (rgc! «queueing.c» 93 14 93 27 93 14),
                  .Aexpr,
                  .Astd "\xa76.5.3.2#3, sentence 5"] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 52394), .BTy_object .OTy_pointer)))
                 (.Expr
                   [.Aloc (rgc! «queueing.c» 93 15 93 27 93 20),
                    .Aexpr,
                    .Astd "\xa76.5.2.3#4, sentence 2"] <|
                 .Esseq
                   (.Pattern [] (.CaseBase (.some (a! 52395), .BTy_loaded .OTy_pointer)))
                   (.Expr [.Aloc (rg! «queueing.c» 93 15 93 20), .Aexpr] <|
                   .Ewseq
                     (.Pattern [] (.CaseBase (.some (a! 52399), .BTy_object .OTy_pointer)))
                     (.Expr
                       [.Aloc (rg! «queueing.c» 93 15 93 20), .Aexpr]
                       (.Epure (.Pexpr [] () (.PEsym (addr! "queue" 3422))))) <| .Expr [] <|
                   .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 93 15 93 20) () <|
                   .Load0
                     (.Pexpr [] () <| .PEval <| .Vctype <|
                     .Ctype
                       [.Aloc (rg! «queueing.h» 137 57 137 58),
                        .Aloc (rg! «queueing.c» 80 57 80 58)]
                       (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
                     (.Pexpr [] () (.PEsym (a! 52399)))
                     .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52395))) <|
                 [(.Pattern
                     []
                     (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                   .Expr [] <| .Epure <| .Pexpr [] () <|
                   .PEundef
                     (rgc! «queueing.c» 93 15 93 27 93 20)
                     (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                  (.Pattern [] <|
                   .CaseCtor
                     .Cspecified
                     [.Pattern [] (.CaseBase (.some (a! 52396), .BTy_object .OTy_pointer))],
                   .Expr [] <| .Epure <| .Pexpr [] () <|
                   .PEmember_shift
                     (.Pexpr [] () (.PEsym (a! 52396)))
                     (c! "prev_queue" 2191)
                     (.Identifier (rg! «queueing.c» 93 22 93 27) "count"))]) <|
               .Expr
                 []
                 (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 52394))])))]) <|
            .Expr [] <|
            .Eif
              (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
              .PEop
                .OpEq
                (.Pexpr [] () <|
                .PEcall
                  (.Sym (rt! "params_length" 18299737999929047716))
                  [.Pexpr [] () (.PEsym (a! 52389))])
                (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
              (.Expr [] <| .Epure <|
              .Pexpr
                [.Astd "\xa76.5.2.2#6, sentence 3"]
                ()
                (.PEundef (rg! «queueing.c» 93 3 93 28) .UB038_number_of_args)) <| .Expr [] <|
            .Eif
              (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 52390))) <| .Pexpr [] () <|
              .PEnot <| .Pexpr [] () <|
              .PEare_compatible
                (.Pexpr [] () (.PEval (.Vctype (.Ctype [.Aloc .unknown] .Void0))))
                (.Pexpr [] () (.PEsym (a! 52388))))
              (.Expr [] <| .Epure <|
              .Pexpr
                [.Astd "\xa76.5.2.2#9"]
                ()
                (.PEundef (rg! «queueing.c» 93 3 93 28) .UB041_function_not_compatible)) <|
            .Expr [] <|
            .Esseq
              (.Pattern [] <| .CaseBase <|
              (.some
                 (sym.Symbol
                   Src.digest
                   52392
                   (.SD_FunArg (rgc! «queueing.c» 93 14 93 27 93 14) 0)),
               .BTy_object .OTy_pointer))
              (.Expr [] <|
              .Elet
                (.Pattern [] (.CaseBase (.some (a! 52400), .BTy_ctype)))
                (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                [.Pexpr [] () (.PEsym (a! 52389)),
                 .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
              .Eif
                (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                .PEare_compatible
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                  .Pointer (.mk .false .false .false) <|
                  .Ctype
                    [.Aloc .unknown, .Atypedef (c! "atomic_t" 40)]
                    (.Struct (sym.Symbol Src.digest 36 (.SD_unnamed_tag .unknown))))
                  (.Pexpr [] () (.PEsym (a! 52400))))
                (.Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.2.2#9"] () <|
                .PEundef (rg! «queueing.c» 93 3 93 28) .UB041_function_not_compatible) <|
              .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 52401), .BTy_object .OTy_pointer)))
                (.Expr [] <| .Eaction <| .Paction .Pos <|
                .Action (rg! «queueing.c» 93 3 93 28) () <|
                .Create
                  (.Pexpr [] () <| .PEctor .Civalignof <|
                  [.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                   .Pointer (.mk .false .false .false) <|
                   .Ctype
                     [.Aloc .unknown, .Atypedef (c! "atomic_t" 40)]
                     (.Struct (sym.Symbol Src.digest 36 (.SD_unnamed_tag .unknown)))])
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                  .Pointer (.mk .false .false .false) <|
                  .Ctype
                    [.Aloc .unknown, .Atypedef (c! "atomic_t" 40)]
                    (.Struct (sym.Symbol Src.digest 36 (.SD_unnamed_tag .unknown))))
                  (.PrefFunArg (rg! «queueing.c» 93 3 93 28) "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <|
              .Expr [] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [] <| .Eaction <| .Paction .Pos <|
                .Action (rg! «queueing.c» 93 3 93 28) () <|
                .Store0
                  .false
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                  .Pointer (.mk .false .false .false) <|
                  .Ctype
                    [.Aloc .unknown, .Atypedef (c! "atomic_t" 40)]
                    (.Struct (sym.Symbol Src.digest 36 (.SD_unnamed_tag .unknown))))
                  (.Pexpr [] () (.PEsym (a! 52401)))
                  (.Pexpr [] () (.PEsym (a! 52393)))
                  .NA)
                (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52401)))))) <| .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.some (a! 52402), .BTy_unit)))
              (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
              .Eccall
                ()
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype [.Aloc (rg! «queueing.c» 93 3 93 13)] <|
                .Pointer (.mk .false .false .false) <| .Ctype [] <|
                .Function
                  (.mk .false .false .false, .Ctype [.Aloc .unknown] .Void0)
                  [(.mk .false .false .false,
                    (.Ctype [.Aloc .unknown] <| .Pointer (.mk .false .false .false) <|
                     .Ctype
                       [.Aloc .unknown, .Atypedef (c! "atomic_t" 40)]
                       (.Struct (sym.Symbol Src.digest 36 (.SD_unnamed_tag .unknown))),
                     .false))]
                  .false)
                (.Pexpr [] () (.PEsym (a! 52387))) <|
              [.Pexpr [] () <|
               .PEsym
                 (sym.Symbol
                   Src.digest
                   52392
                   (.SD_FunArg (rgc! «queueing.c» 93 14 93 27 93 14) 0))]) <| .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [] <| .Eaction <| .Paction .Pos <|
              .Action (rg! «queueing.c» 93 3 93 28) () <|
              .Kill
                (.Static0 <| .Ctype [.Aloc .unknown] <| .Pointer (.mk .false .false .false) <|
                .Ctype
                  [.Aloc .unknown, .Atypedef (c! "atomic_t" 40)]
                  (.Struct (sym.Symbol Src.digest 36 (.SD_unnamed_tag .unknown)))) <|
              .Pexpr [] () <|
              .PEsym
                (sym.Symbol Src.digest 52392 (.SD_FunArg (rgc! «queueing.c» 93 14 93 27 93 14) 0)))
              (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52402))))))
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc (rg! «queueing.c» 94 3 94 15), .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.some (a! 52404), .BTy_loaded .OTy_pointer)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr [.Aloc (rg! «queueing.c» 94 10 94 14), .Aexpr] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.some (a! 52403), .BTy_object .OTy_pointer)))
              (.Expr
                [.Aloc (rg! «queueing.c» 94 10 94 14), .Aexpr]
                (.Epure (.Pexpr [] () (.PEsym (addr! "tail" 3424))))) <| .Expr [] <| .Eaction <|
            .Paction .Pos <| .Action (rg! «queueing.c» 94 10 94 14) () <|
            .Load0
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc (rg! «queueing.c» 82 17 82 18)]
                (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
              (.Pexpr [] () (.PEsym (a! 52403)))
              .NA) <| .Expr [] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 94 3 94 15) () <|
            .Kill
              (.Static0 <|
              .Ctype
                [.Aloc (rg! «queueing.c» 82 17 82 18)]
                (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
              (.Pexpr [] () (.PEsym (addr! "tail" 3424)))) <| .Expr [] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 94 3 94 15) () <|
            .Kill
              (.Static0 <|
              .Ctype
                [.Aloc (rg! «queueing.c» 82 38 82 39)]
                (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
              (.Pexpr [] () (.PEsym (addr! "next" 3425))))
            (.Expr [] (.Erun () (c! "ret_52290" 52290) [.Pexpr [] () (.PEsym (a! 52404))])))
          (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
        (.Expr
          [.Aloc (rg! «queueing.c» 91 2 95 3), .Astmt]
          (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «queueing.c» 96 2 97 22), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 52406), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc (rgc! «queueing.c» 96 6 96 708 96 11),
           .Aexpr,
           .Avalue (.Ainteger (.Signed .Int_))] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 52408), .BTy_loaded .OTy_integer)),
           .Pattern [] (.CaseBase (.some (a! 52409), .BTy_loaded .OTy_integer))])
          (.Expr [] <| .Eunseq <|
          [.Expr
             [.Aloc (rgc! «queueing.c» 96 6 96 708 96 11),
              .Aexpr,
              .Avalue (.Ainteger (.Signed .Int_))] <|
           .Ewseq
             (.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] (.CaseBase (.some (a! 52413), .BTy_loaded .OTy_pointer)),
              .Pattern [] (.CaseBase (.some (a! 52414), .BTy_loaded .OTy_pointer))])
             (.Expr [] <| .Eunseq <|
             [.Expr [.Aloc (rg! «queueing.c» 96 6 96 10), .Aexpr] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 52418), .BTy_object .OTy_pointer)))
                (.Expr
                  [.Aloc (rg! «queueing.c» 96 6 96 10), .Aexpr]
                  (.Epure (.Pexpr [] () (.PEsym (addr! "tail" 3424))))) <| .Expr [] <| .Eaction <|
              .Paction .Pos <| .Action (rg! «queueing.c» 96 6 96 10) () <|
              .Load0
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype
                  [.Aloc (rg! «queueing.c» 82 17 82 18)]
                  (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                (.Pexpr [] () (.PEsym (a! 52418)))
                .NA,
              .Expr [.Aloc (rgc! «queueing.c» 96 14 96 708 96 15), .Aexpr] <|
              .Esseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [.Aloc (rg! «queueing.c» 96 17 96 266), .Astmt] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                  (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                  .Expr [.Aloc (rg! «queueing.c» 96 17 96 265), .Aexpr, .Astd "\xa76.5.4"] <|
                  .Ewseq
                    (.Pattern [] (.CaseBase (.some (a! 52420), .BTy_loaded .OTy_integer)))
                    (.Expr
                      [.Aloc (rg! «queueing.c» 96 24 96 264),
                       .Aexpr,
                       .Avalue (.Ainteger (.Signed .Int_)),
                       .Astd "6.5.14#3",
                       .Astd "6.5.14#4",
                       .Aexpr,
                       .Avalue (.Ainteger (.Signed .Int_))] <|
                    .Esseq
                      (.Pattern [] (.CaseBase (.some (a! 52509), .BTy_loaded .OTy_integer)))
                      (.Expr
                        [.Aloc (rg! «queueing.c» 96 25 96 211),
                         .Aexpr,
                         .Avalue (.Ainteger (.Signed .Int_))] <|
                      .Ewseq
                        (.Pattern [] <| .CaseCtor .Ctuple <|
                        [.Pattern [] (.CaseBase (.some (a! 52422), .BTy_loaded .OTy_integer)),
                         .Pattern [] (.CaseBase (.some (a! 52423), .BTy_loaded .OTy_integer))])
                        (.Expr [] <| .Eunseq <|
                        [.Expr
                           [.Aloc (rg! «queueing.c» 96 25 96 211),
                            .Aexpr,
                            .Avalue (.Ainteger (.Signed .Int_))] <|
                         .Ewseq
                           (.Pattern [] <| .CaseCtor .Ctuple <|
                           [.Pattern [] (.CaseBase (.some (a! 52427), .BTy_loaded .OTy_integer)),
                            .Pattern [] (.CaseBase (.some (a! 52428), .BTy_loaded .OTy_integer))])
                           (.Expr [] <| .Eunseq <|
                           [.Expr
                              [.Aloc (rg! «queueing.c» 96 25 96 211),
                               .Aexpr,
                               .Avalue (.Ainteger (.Signed .Int_)),
                               .Astd "6.5.14#3",
                               .Astd "6.5.14#4",
                               .Aexpr,
                               .Avalue (.Ainteger (.Signed .Int_))] <|
                            .Esseq
                              (.Pattern [] (.CaseBase (.some (a! 52495), .BTy_loaded .OTy_integer)))
                              (.Expr
                                [.Aloc (rgc! «queueing.c» 96 26 96 163 96 118),
                                 .Aexpr,
                                 .Avalue (.Ainteger (.Signed .Int_))] <|
                              .Ewseq
                                (.Pattern [] <| .CaseCtor .Ctuple <|
                                [.Pattern [] (.CaseBase (.some (a! 52432), .BTy_loaded .OTy_integer)),
                                 .Pattern [] (.CaseBase (.some (a! 52433), .BTy_loaded .OTy_integer))])
                                (.Expr [] <| .Eunseq <|
                                [.Expr
                                   [.Aloc (rgc! «queueing.c» 96 26 96 163 96 118),
                                    .Aexpr,
                                    .Avalue (.Ainteger (.Signed .Int_))] <|
                                 .Ewseq
                                   (.Pattern [] <| .CaseCtor .Ctuple <|
                                   [.Pattern [] (.CaseBase (.some (a! 52437), .BTy_loaded .OTy_integer)),
                                    .Pattern [] (.CaseBase (.some (a! 52438), .BTy_loaded .OTy_integer))])
                                   (.Expr [] <| .Eunseq <|
                                   [.Expr
                                      [.Aloc (rgc! «queueing.c» 96 26 96 163 96 118),
                                       .Aexpr,
                                       .Avalue (.Ainteger (.Signed .Int_)),
                                       .Astd "6.5.14#3",
                                       .Astd "6.5.14#4",
                                       .Aexpr,
                                       .Avalue (.Ainteger (.Signed .Int_))] <|
                                    .Esseq
                                      (.Pattern [] (.CaseBase (.some (a! 52481), .BTy_loaded .OTy_integer)))
                                      (.Expr
                                        [.Aloc (rgc! «queueing.c» 96 26 96 117 96 70),
                                         .Aexpr,
                                         .Avalue (.Ainteger (.Signed .Int_))] <|
                                      .Ewseq
                                        (.Pattern [] <| .CaseCtor .Ctuple <|
                                        [.Pattern [] (.CaseBase (.some (a! 52442), .BTy_loaded .OTy_integer)),
                                         .Pattern [] (.CaseBase (.some (a! 52443), .BTy_loaded .OTy_integer))])
                                        (.Expr [] <| .Eunseq <|
                                        [.Expr
                                           [.Aloc (rgc! «queueing.c» 96 26 96 117 96 70),
                                            .Aexpr,
                                            .Avalue (.Ainteger (.Signed .Int_))] <|
                                         .Ewseq
                                           (.Pattern [] <| .CaseCtor .Ctuple <|
                                           [.Pattern [] (.CaseBase (.some (a! 52447), .BTy_loaded .OTy_integer)),
                                            .Pattern [] (.CaseBase (.some (a! 52448), .BTy_loaded .OTy_integer))])
                                           (.Expr [] <| .Eunseq <|
                                           [.Expr
                                              [.Aloc (rgc! «queueing.c» 96 26 96 117 96 70),
                                               .Aexpr,
                                               .Avalue (.Ainteger (.Signed .Int_)),
                                               .Astd "6.5.14#3",
                                               .Astd "6.5.14#4",
                                               .Aexpr,
                                               .Avalue (.Ainteger (.Signed .Int_))] <|
                                            .Esseq
                                              (.Pattern [] (.CaseBase (.some (a! 52467), .BTy_loaded .OTy_integer)))
                                              (.Expr
                                                [.Aloc (rgc! «queueing.c» 96 26 96 69 96 54),
                                                 .Aexpr,
                                                 .Avalue (.Ainteger (.Signed .Int_))] <|
                                              .Ewseq
                                                (.Pattern [] <| .CaseCtor .Ctuple <|
                                                [.Pattern [] (.CaseBase (.some (a! 52452), .BTy_loaded .OTy_integer)),
                                                 .Pattern [] (.CaseBase (.some (a! 52453), .BTy_loaded .OTy_integer))])
                                                (.Expr [] <| .Eunseq <|
                                                [.Expr
                                                   [.Aloc (rgc! «queueing.c» 96 26 96 69 96 54),
                                                    .Aexpr,
                                                    .Avalue (.Ainteger (.Signed .Int_))] <|
                                                 .Ewseq
                                                   (.Pattern [] <| .CaseCtor .Ctuple <|
                                                   [.Pattern [] (.CaseBase (.some (a! 52457), .BTy_loaded .OTy_integer)),
                                                    .Pattern [] (.CaseBase (.some (a! 52458), .BTy_loaded .OTy_integer))])
                                                   (.Expr [] <| .Eunseq <|
                                                   [.Expr
                                                      [.Aloc (rgc! «queueing.c» 96 26 96 69 96 54),
                                                       .Aexpr,
                                                       .Avalue (.Ainteger (.Signed .Int_))] <|
                                                    .Ewseq
                                                      (.Pattern [] <| .CaseCtor .Ctuple <|
                                                      [.Pattern [] (.CaseBase (.some (a! 52462), .BTy_loaded .OTy_integer)),
                                                       .Pattern [] (.CaseBase (.some (a! 52463), .BTy_loaded .OTy_integer))])
                                                      (.Expr [] <| .Eunseq <|
                                                      [.Expr
                                                         [.Aloc (rgc! «queueing.c» 96 26 96 53 96 26),
                                                          .Aexpr,
                                                          .Avalue (.Ainteger .Size_t)] <| .Epure <|
                                                       .Pexpr [] () <| .PEctor .Cspecified <|
                                                       [.Pexpr [] () <| .PEctor .Civsizeof <|
                                                        [.Pexpr [] () <| .PEval <| .Vctype <|
                                                         .Ctype
                                                           [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
                                                           (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]],
                                                       .Expr
                                                         [.Aloc (rgc! «queueing.c» 96 57 96 69 96 57),
                                                          .Aexpr,
                                                          .Avalue (.Ainteger .Size_t),
                                                          .Astd "\xa76.5.3.4#4, sentence 1"] <|
                                                       .Epure <| .Pexpr [] () <|
                                                       .PEctor
                                                         .Cspecified
                                                         [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]]) <|
                                                    .Expr [] <| .Epure <| .Pexpr [] () <|
                                                    .PEcase
                                                      (.Pexpr [] () <|
                                                      .PEctor
                                                        .Ctuple
                                                        [.Pexpr [] () (.PEsym (a! 52462)), .Pexpr [] () (.PEsym (a! 52463))]) <|
                                                    [(.Pattern [] <| .CaseCtor .Ctuple <|
                                                      [.Pattern [] <|
                                                       .CaseCtor
                                                         .Cspecified
                                                         [.Pattern [] (.CaseBase (.some (a! 52464), .BTy_object .OTy_integer))],
                                                       .Pattern [] <|
                                                       .CaseCtor
                                                         .Cspecified
                                                         [.Pattern [] (.CaseBase (.some (a! 52465), .BTy_object .OTy_integer))]],
                                                      .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                                      .PEif
                                                        (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                                        .PEop
                                                          .OpEq
                                                          (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                          .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                          [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                                           .Pexpr [] () (.PEsym (a! 52464))]) <|
                                                        .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                        .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                        [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                                         .Pexpr [] () (.PEsym (a! 52465))])
                                                        (.Pexpr [] () <|
                                                        .PEctor
                                                          .Cspecified
                                                          [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                                      .Pexpr [] () <|
                                                      .PEctor
                                                        .Cspecified
                                                        [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                                     (.Pattern [] <|
                                                      .CaseBase
                                                        (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                                      .Pexpr [] () <| .PEval <| .Vloaded <|
                                                      .LVunspecified <|
                                                      .Ctype
                                                        [.Aloc (rgc! «queueing.c» 96 26 96 69 96 54)]
                                                        (.Basic (.Integer (.Signed .Int_))))],
                                                    .Expr
                                                      [.Aloc (rgc! «queueing.c» 96 26 96 69 96 54),
                                                       .Aexpr,
                                                       .Avalue (.Ainteger (.Signed .Int_))] <|
                                                    .Epure <|
                                                    .Pexpr
                                                      []
                                                      ()
                                                      (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                                                 .Expr [] <| .Epure <| .Pexpr [] () <|
                                                 .PEcase
                                                   (.Pexpr [] () <|
                                                   .PEctor
                                                     .Ctuple
                                                     [.Pexpr [] () (.PEsym (a! 52457)), .Pexpr [] () (.PEsym (a! 52458))]) <|
                                                 [(.Pattern [] <| .CaseCtor .Ctuple <|
                                                   [.Pattern [] <|
                                                    .CaseCtor
                                                      .Cspecified
                                                      [.Pattern [] (.CaseBase (.some (a! 52459), .BTy_object .OTy_integer))],
                                                    .Pattern [] <|
                                                    .CaseCtor
                                                      .Cspecified
                                                      [.Pattern [] (.CaseBase (.some (a! 52460), .BTy_object .OTy_integer))]],
                                                   .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                                   .PEif
                                                     (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                                     .PEop
                                                       .OpEq
                                                       (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                       .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                       [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                                        .Pexpr [] () (.PEsym (a! 52459))]) <|
                                                     .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                     .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                     [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                                      .Pexpr [] () (.PEsym (a! 52460))])
                                                     (.Pexpr [] () <|
                                                     .PEctor
                                                       .Cspecified
                                                       [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                                   .Pexpr [] () <|
                                                   .PEctor
                                                     .Cspecified
                                                     [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                                  (.Pattern [] <|
                                                   .CaseBase
                                                     (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                                   .Pexpr [] () <| .PEval <| .Vloaded <|
                                                   .LVunspecified <|
                                                   .Ctype
                                                     [.Aloc (rgc! «queueing.c» 96 26 96 69 96 54)]
                                                     (.Basic (.Integer (.Signed .Int_))))],
                                                 .Expr
                                                   [.Aloc (rgc! «queueing.c» 96 26 96 69 96 54),
                                                    .Aexpr,
                                                    .Avalue (.Ainteger (.Signed .Int_))] <|
                                                 .Epure <|
                                                 .Pexpr
                                                   []
                                                   ()
                                                   (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                                              .Expr [] <| .Epure <| .Pexpr [] () <|
                                              .PEcase
                                                (.Pexpr [] () <|
                                                .PEctor
                                                  .Ctuple
                                                  [.Pexpr [] () (.PEsym (a! 52452)), .Pexpr [] () (.PEsym (a! 52453))]) <|
                                              [(.Pattern [] <| .CaseCtor .Ctuple <|
                                                [.Pattern [] <|
                                                 .CaseCtor
                                                   .Cspecified
                                                   [.Pattern [] (.CaseBase (.some (a! 52454), .BTy_object .OTy_integer))],
                                                 .Pattern [] <|
                                                 .CaseCtor
                                                   .Cspecified
                                                   [.Pattern [] (.CaseBase (.some (a! 52455), .BTy_object .OTy_integer))]],
                                                .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                                .PEif
                                                  (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                                  .PEop
                                                    .OpEq
                                                    (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                    .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                    [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                                     .Pexpr [] () (.PEsym (a! 52454))]) <|
                                                  .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                  .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                  [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                                   .Pexpr [] () (.PEsym (a! 52455))])
                                                  (.Pexpr [] () <|
                                                  .PEctor
                                                    .Cspecified
                                                    [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                                .Pexpr [] () <|
                                                .PEctor
                                                  .Cspecified
                                                  [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                               (.Pattern [] <|
                                                .CaseBase
                                                  (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                                .Pexpr [] () <| .PEval <| .Vloaded <|
                                                .LVunspecified <|
                                                .Ctype
                                                  [.Aloc (rgc! «queueing.c» 96 26 96 69 96 54)]
                                                  (.Basic (.Integer (.Signed .Int_))))]) <|
                                            .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52467))) <|
                                            [(.Pattern [] <|
                                              .CaseCtor
                                                .Cspecified
                                                [.Pattern [] (.CaseBase (.some (a! 52468), .BTy_object .OTy_integer))],
                                              .Expr [] <|
                                              .Eif
                                                (.Pexpr [] () <|
                                                .PEop
                                                  .OpEq
                                                  (.Pexpr [] () (.PEsym (a! 52468)))
                                                  (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                                                (.Expr [] <|
                                                .Esseq
                                                  (.Pattern [] (.CaseBase (.some (a! 52479), .BTy_loaded .OTy_integer)))
                                                  (.Expr
                                                    [.Aloc (rgc! «queueing.c» 96 73 96 117 96 101),
                                                     .Aexpr,
                                                     .Avalue (.Ainteger (.Signed .Int_))] <|
                                                  .Ewseq
                                                    (.Pattern [] <| .CaseCtor .Ctuple <|
                                                    [.Pattern [] (.CaseBase (.some (a! 52469), .BTy_loaded .OTy_integer)),
                                                     .Pattern [] (.CaseBase (.some (a! 52470), .BTy_loaded .OTy_integer))])
                                                    (.Expr [] <| .Eunseq <|
                                                    [.Expr
                                                       [.Aloc (rgc! «queueing.c» 96 73 96 117 96 101),
                                                        .Aexpr,
                                                        .Avalue (.Ainteger (.Signed .Int_))] <|
                                                     .Ewseq
                                                       (.Pattern [] <| .CaseCtor .Ctuple <|
                                                       [.Pattern [] (.CaseBase (.some (a! 52474), .BTy_loaded .OTy_integer)),
                                                        .Pattern [] (.CaseBase (.some (a! 52475), .BTy_loaded .OTy_integer))])
                                                       (.Expr [] <| .Eunseq <|
                                                       [.Expr
                                                          [.Aloc (rgc! «queueing.c» 96 73 96 100 96 73),
                                                           .Aexpr,
                                                           .Avalue (.Ainteger .Size_t)] <| .Epure <|
                                                        .Pexpr [] () <| .PEctor .Cspecified <|
                                                        [.Pexpr [] () <| .PEctor .Civsizeof <|
                                                         [.Pexpr [] () <| .PEval <| .Vctype <|
                                                          .Ctype
                                                            [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
                                                            (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]],
                                                        .Expr
                                                          [.Aloc (rgc! «queueing.c» 96 104 96 117 96 104),
                                                           .Aexpr,
                                                           .Avalue (.Ainteger .Size_t)] <| .Epure <|
                                                        .Pexpr [] () <| .PEctor .Cspecified <|
                                                        [.Pexpr [] () <| .PEctor .Civsizeof <|
                                                         [.Pexpr [] () <| .PEval <| .Vctype <|
                                                          .Ctype
                                                            [.Aloc (rg! «queueing.c» 96 111 96 116)]
                                                            (.Basic (.Integer (.Signed .Short)))]]]) <|
                                                     .Expr [] <| .Epure <| .Pexpr [] () <|
                                                     .PEcase
                                                       (.Pexpr [] () <|
                                                       .PEctor
                                                         .Ctuple
                                                         [.Pexpr [] () (.PEsym (a! 52474)), .Pexpr [] () (.PEsym (a! 52475))]) <|
                                                     [(.Pattern [] <| .CaseCtor .Ctuple <|
                                                       [.Pattern [] <|
                                                        .CaseCtor
                                                          .Cspecified
                                                          [.Pattern [] (.CaseBase (.some (a! 52476), .BTy_object .OTy_integer))],
                                                        .Pattern [] <|
                                                        .CaseCtor
                                                          .Cspecified
                                                          [.Pattern [] (.CaseBase (.some (a! 52477), .BTy_object .OTy_integer))]],
                                                       .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                                       .PEif
                                                         (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                                         .PEop
                                                           .OpEq
                                                           (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                           .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                           [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                                            .Pexpr [] () (.PEsym (a! 52476))]) <|
                                                         .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                         .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                         [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                                          .Pexpr [] () (.PEsym (a! 52477))])
                                                         (.Pexpr [] () <|
                                                         .PEctor
                                                           .Cspecified
                                                           [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                                       .Pexpr [] () <|
                                                       .PEctor
                                                         .Cspecified
                                                         [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                                      (.Pattern [] <|
                                                       .CaseBase
                                                         (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                                       .Pexpr [] () <| .PEval <| .Vloaded <|
                                                       .LVunspecified <|
                                                       .Ctype
                                                         [.Aloc (rgc! «queueing.c» 96 73 96 117 96 101)]
                                                         (.Basic (.Integer (.Signed .Int_))))],
                                                     .Expr
                                                       [.Aloc (rgc! «queueing.c» 96 73 96 117 96 101),
                                                        .Aexpr,
                                                        .Avalue (.Ainteger (.Signed .Int_))] <|
                                                     .Epure <|
                                                     .Pexpr
                                                       []
                                                       ()
                                                       (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                                                  .Expr [] <| .Epure <| .Pexpr [] () <|
                                                  .PEcase
                                                    (.Pexpr [] () <|
                                                    .PEctor
                                                      .Ctuple
                                                      [.Pexpr [] () (.PEsym (a! 52469)), .Pexpr [] () (.PEsym (a! 52470))]) <|
                                                  [(.Pattern [] <| .CaseCtor .Ctuple <|
                                                    [.Pattern [] <|
                                                     .CaseCtor
                                                       .Cspecified
                                                       [.Pattern [] (.CaseBase (.some (a! 52471), .BTy_object .OTy_integer))],
                                                     .Pattern [] <|
                                                     .CaseCtor
                                                       .Cspecified
                                                       [.Pattern [] (.CaseBase (.some (a! 52472), .BTy_object .OTy_integer))]],
                                                    .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                                    .PEif
                                                      (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                                      .PEnot <| .Pexpr [] () <|
                                                      .PEop
                                                        .OpEq
                                                        (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                        .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                        [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                                         .Pexpr [] () (.PEsym (a! 52471))]) <|
                                                      .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                      .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                      [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                                       .Pexpr [] () (.PEsym (a! 52472))])
                                                      (.Pexpr [] () <|
                                                      .PEctor
                                                        .Cspecified
                                                        [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                                    .Pexpr [] () <|
                                                    .PEctor
                                                      .Cspecified
                                                      [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                                   (.Pattern [] <|
                                                    .CaseBase
                                                      (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                                    .Pexpr [] () <| .PEval <| .Vloaded <|
                                                    .LVunspecified <|
                                                    .Ctype
                                                      [.Aloc (rgc! «queueing.c» 96 73 96 117 96 101)]
                                                      (.Basic (.Integer (.Signed .Int_))))]) <|
                                                .Expr [] <| .Epure <| .Pexpr [] () <|
                                                .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                                                [.Pexpr [] () <| .PEval <| .Vctype <|
                                                 .Ctype
                                                   [.Aloc (rgc! «queueing.c» 96 26 96 117 96 70)]
                                                   (.Basic (.Integer (.Signed .Int_))),
                                                 .Pexpr [] () (.PEsym (a! 52479))]) <| .Expr [] <|
                                              .Esseq
                                                (.Pattern [] (.CaseBase (.some (a! 52480), .BTy_loaded .OTy_integer)))
                                                (.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                                                .Epure <|
                                                .Pexpr
                                                  []
                                                  ()
                                                  (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1)))))) <|
                                              .Expr [] <| .Epure <| .Pexpr [] () <|
                                              .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                                              [.Pexpr [] () <| .PEval <| .Vctype <|
                                               .Ctype
                                                 [.Aloc (rgc! «queueing.c» 96 26 96 117 96 70)]
                                                 (.Basic (.Integer (.Signed .Int_))),
                                               .Pexpr [] () (.PEsym (a! 52480))]),
                                             (.Pattern
                                                []
                                                (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                                              .Expr [] <| .Epure <| .Pexpr [] () <|
                                              .PEundef
                                                (rgc! «queueing.c» 96 26 96 117 96 70)
                                                (.UB_CERB004_unspecified .UB_unspec_conditional))],
                                            .Expr
                                              [.Aloc (rgc! «queueing.c» 96 26 96 117 96 70),
                                               .Aexpr,
                                               .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                                            .Pexpr
                                              []
                                              ()
                                              (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                                         .Expr [] <| .Epure <| .Pexpr [] () <|
                                         .PEcase
                                           (.Pexpr [] () <|
                                           .PEctor
                                             .Ctuple
                                             [.Pexpr [] () (.PEsym (a! 52447)), .Pexpr [] () (.PEsym (a! 52448))]) <|
                                         [(.Pattern [] <| .CaseCtor .Ctuple <|
                                           [.Pattern [] <|
                                            .CaseCtor
                                              .Cspecified
                                              [.Pattern [] (.CaseBase (.some (a! 52449), .BTy_object .OTy_integer))],
                                            .Pattern [] <|
                                            .CaseCtor
                                              .Cspecified
                                              [.Pattern [] (.CaseBase (.some (a! 52450), .BTy_object .OTy_integer))]],
                                           .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                           .PEif
                                             (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                             .PEop
                                               .OpEq
                                               (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                               .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                               [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                                .Pexpr [] () (.PEsym (a! 52449))]) <|
                                             .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                             .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                             [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                              .Pexpr [] () (.PEsym (a! 52450))])
                                             (.Pexpr [] () <|
                                             .PEctor
                                               .Cspecified
                                               [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                           .Pexpr [] () <|
                                           .PEctor
                                             .Cspecified
                                             [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                          (.Pattern [] <|
                                           .CaseBase
                                             (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                           .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                                           .Ctype
                                             [.Aloc (rgc! «queueing.c» 96 26 96 117 96 70)]
                                             (.Basic (.Integer (.Signed .Int_))))],
                                         .Expr
                                           [.Aloc (rgc! «queueing.c» 96 26 96 117 96 70),
                                            .Aexpr,
                                            .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                                         .Pexpr
                                           []
                                           ()
                                           (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                                      .Expr [] <| .Epure <| .Pexpr [] () <|
                                      .PEcase
                                        (.Pexpr [] () <|
                                        .PEctor
                                          .Ctuple
                                          [.Pexpr [] () (.PEsym (a! 52442)), .Pexpr [] () (.PEsym (a! 52443))]) <|
                                      [(.Pattern [] <| .CaseCtor .Ctuple <|
                                        [.Pattern [] <|
                                         .CaseCtor
                                           .Cspecified
                                           [.Pattern [] (.CaseBase (.some (a! 52444), .BTy_object .OTy_integer))],
                                         .Pattern [] <|
                                         .CaseCtor
                                           .Cspecified
                                           [.Pattern [] (.CaseBase (.some (a! 52445), .BTy_object .OTy_integer))]],
                                        .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                        .PEif
                                          (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                          .PEop
                                            .OpEq
                                            (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                            .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                            [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                             .Pexpr [] () (.PEsym (a! 52444))]) <|
                                          .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                          .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                          [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                           .Pexpr [] () (.PEsym (a! 52445))])
                                          (.Pexpr [] () <|
                                          .PEctor
                                            .Cspecified
                                            [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                        .Pexpr [] () <|
                                        .PEctor
                                          .Cspecified
                                          [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                       (.Pattern [] <|
                                        .CaseBase
                                          (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                        .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                                        .Ctype
                                          [.Aloc (rgc! «queueing.c» 96 26 96 117 96 70)]
                                          (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <|
                                    .Ecase (.Pexpr [] () (.PEsym (a! 52481))) <|
                                    [(.Pattern [] <|
                                      .CaseCtor
                                        .Cspecified
                                        [.Pattern [] (.CaseBase (.some (a! 52482), .BTy_object .OTy_integer))],
                                      .Expr [] <|
                                      .Eif
                                        (.Pexpr [] () <|
                                        .PEop
                                          .OpEq
                                          (.Pexpr [] () (.PEsym (a! 52482)))
                                          (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                                        (.Expr [] <|
                                        .Esseq
                                          (.Pattern [] (.CaseBase (.some (a! 52493), .BTy_loaded .OTy_integer)))
                                          (.Expr
                                            [.Aloc (rgc! «queueing.c» 96 121 96 163 96 149),
                                             .Aexpr,
                                             .Avalue (.Ainteger (.Signed .Int_))] <|
                                          .Ewseq
                                            (.Pattern [] <| .CaseCtor .Ctuple <|
                                            [.Pattern [] (.CaseBase (.some (a! 52483), .BTy_loaded .OTy_integer)),
                                             .Pattern [] (.CaseBase (.some (a! 52484), .BTy_loaded .OTy_integer))])
                                            (.Expr [] <| .Eunseq <|
                                            [.Expr
                                               [.Aloc (rgc! «queueing.c» 96 121 96 163 96 149),
                                                .Aexpr,
                                                .Avalue (.Ainteger (.Signed .Int_))] <|
                                             .Ewseq
                                               (.Pattern [] <| .CaseCtor .Ctuple <|
                                               [.Pattern [] (.CaseBase (.some (a! 52488), .BTy_loaded .OTy_integer)),
                                                .Pattern [] (.CaseBase (.some (a! 52489), .BTy_loaded .OTy_integer))])
                                               (.Expr [] <| .Eunseq <|
                                               [.Expr
                                                  [.Aloc (rgc! «queueing.c» 96 121 96 148 96 121),
                                                   .Aexpr,
                                                   .Avalue (.Ainteger .Size_t)] <| .Epure <|
                                                .Pexpr [] () <| .PEctor .Cspecified <|
                                                [.Pexpr [] () <| .PEctor .Civsizeof <|
                                                 [.Pexpr [] () <| .PEval <| .Vctype <|
                                                  .Ctype
                                                    [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
                                                    (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]],
                                                .Expr
                                                  [.Aloc (rgc! «queueing.c» 96 152 96 163 96 152),
                                                   .Aexpr,
                                                   .Avalue (.Ainteger .Size_t)] <| .Epure <|
                                                .Pexpr [] () <| .PEctor .Cspecified <|
                                                [.Pexpr [] () <| .PEctor .Civsizeof <|
                                                 [.Pexpr [] () <| .PEval <| .Vctype <|
                                                  .Ctype
                                                    [.Aloc (rg! «queueing.c» 96 159 96 162)]
                                                    (.Basic (.Integer (.Signed .Int_)))]]]) <|
                                             .Expr [] <| .Epure <| .Pexpr [] () <|
                                             .PEcase
                                               (.Pexpr [] () <|
                                               .PEctor
                                                 .Ctuple
                                                 [.Pexpr [] () (.PEsym (a! 52488)), .Pexpr [] () (.PEsym (a! 52489))]) <|
                                             [(.Pattern [] <| .CaseCtor .Ctuple <|
                                               [.Pattern [] <|
                                                .CaseCtor
                                                  .Cspecified
                                                  [.Pattern [] (.CaseBase (.some (a! 52490), .BTy_object .OTy_integer))],
                                                .Pattern [] <|
                                                .CaseCtor
                                                  .Cspecified
                                                  [.Pattern [] (.CaseBase (.some (a! 52491), .BTy_object .OTy_integer))]],
                                               .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                               .PEif
                                                 (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                                 .PEop
                                                   .OpEq
                                                   (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                   .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                   [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                                    .Pexpr [] () (.PEsym (a! 52490))]) <|
                                                 .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                 .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                 [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                                  .Pexpr [] () (.PEsym (a! 52491))])
                                                 (.Pexpr [] () <|
                                                 .PEctor
                                                   .Cspecified
                                                   [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                               .Pexpr [] () <|
                                               .PEctor
                                                 .Cspecified
                                                 [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                              (.Pattern [] <|
                                               .CaseBase
                                                 (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                               .Pexpr [] () <| .PEval <| .Vloaded <|
                                               .LVunspecified <|
                                               .Ctype
                                                 [.Aloc (rgc! «queueing.c» 96 121 96 163 96 149)]
                                                 (.Basic (.Integer (.Signed .Int_))))],
                                             .Expr
                                               [.Aloc (rgc! «queueing.c» 96 121 96 163 96 149),
                                                .Aexpr,
                                                .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                                             .Pexpr
                                               []
                                               ()
                                               (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                                          .Expr [] <| .Epure <| .Pexpr [] () <|
                                          .PEcase
                                            (.Pexpr [] () <|
                                            .PEctor
                                              .Ctuple
                                              [.Pexpr [] () (.PEsym (a! 52483)), .Pexpr [] () (.PEsym (a! 52484))]) <|
                                          [(.Pattern [] <| .CaseCtor .Ctuple <|
                                            [.Pattern [] <|
                                             .CaseCtor
                                               .Cspecified
                                               [.Pattern [] (.CaseBase (.some (a! 52485), .BTy_object .OTy_integer))],
                                             .Pattern [] <|
                                             .CaseCtor
                                               .Cspecified
                                               [.Pattern [] (.CaseBase (.some (a! 52486), .BTy_object .OTy_integer))]],
                                            .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                            .PEif
                                              (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                              .PEnot <| .Pexpr [] () <|
                                              .PEop
                                                .OpEq
                                                (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                                .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                                [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                                 .Pexpr [] () (.PEsym (a! 52485))]) <|
                                              .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                              .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                              [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                               .Pexpr [] () (.PEsym (a! 52486))])
                                              (.Pexpr [] () <|
                                              .PEctor
                                                .Cspecified
                                                [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                            .Pexpr [] () <|
                                            .PEctor
                                              .Cspecified
                                              [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                           (.Pattern [] <|
                                            .CaseBase
                                              (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                            .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                                            .Ctype
                                              [.Aloc (rgc! «queueing.c» 96 121 96 163 96 149)]
                                              (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <|
                                        .Epure <| .Pexpr [] () <|
                                        .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                                        [.Pexpr [] () <| .PEval <| .Vctype <|
                                         .Ctype
                                           [.Aloc (rgc! «queueing.c» 96 26 96 163 96 118)]
                                           (.Basic (.Integer (.Signed .Int_))),
                                         .Pexpr [] () (.PEsym (a! 52493))]) <| .Expr [] <|
                                      .Esseq
                                        (.Pattern [] (.CaseBase (.some (a! 52494), .BTy_loaded .OTy_integer)))
                                        (.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                                        .Epure <|
                                        .Pexpr
                                          []
                                          ()
                                          (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1)))))) <|
                                      .Expr [] <| .Epure <| .Pexpr [] () <|
                                      .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                                      [.Pexpr [] () <| .PEval <| .Vctype <|
                                       .Ctype
                                         [.Aloc (rgc! «queueing.c» 96 26 96 163 96 118)]
                                         (.Basic (.Integer (.Signed .Int_))),
                                       .Pexpr [] () (.PEsym (a! 52494))]),
                                     (.Pattern
                                        []
                                        (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                                      .Expr [] <| .Epure <| .Pexpr [] () <|
                                      .PEundef
                                        (rgc! «queueing.c» 96 26 96 163 96 118)
                                        (.UB_CERB004_unspecified .UB_unspec_conditional))],
                                    .Expr
                                      [.Aloc (rgc! «queueing.c» 96 26 96 163 96 118),
                                       .Aexpr,
                                       .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                                    .Pexpr
                                      []
                                      ()
                                      (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                                 .Expr [] <| .Epure <| .Pexpr [] () <|
                                 .PEcase
                                   (.Pexpr [] () <|
                                   .PEctor
                                     .Ctuple
                                     [.Pexpr [] () (.PEsym (a! 52437)), .Pexpr [] () (.PEsym (a! 52438))]) <|
                                 [(.Pattern [] <| .CaseCtor .Ctuple <|
                                   [.Pattern [] <|
                                    .CaseCtor
                                      .Cspecified
                                      [.Pattern [] (.CaseBase (.some (a! 52439), .BTy_object .OTy_integer))],
                                    .Pattern [] <|
                                    .CaseCtor
                                      .Cspecified
                                      [.Pattern [] (.CaseBase (.some (a! 52440), .BTy_object .OTy_integer))]],
                                   .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                   .PEif
                                     (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                     .PEop
                                       .OpEq
                                       (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                       .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                       [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                        .Pexpr [] () (.PEsym (a! 52439))]) <|
                                     .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                     .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                     [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                      .Pexpr [] () (.PEsym (a! 52440))])
                                     (.Pexpr [] () <|
                                     .PEctor
                                       .Cspecified
                                       [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                   .Pexpr [] () <|
                                   .PEctor
                                     .Cspecified
                                     [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                  (.Pattern [] <|
                                   .CaseBase
                                     (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                   .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                                   .Ctype
                                     [.Aloc (rgc! «queueing.c» 96 26 96 163 96 118)]
                                     (.Basic (.Integer (.Signed .Int_))))],
                                 .Expr
                                   [.Aloc (rgc! «queueing.c» 96 26 96 163 96 118),
                                    .Aexpr,
                                    .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                                 .Pexpr
                                   []
                                   ()
                                   (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                              .Expr [] <| .Epure <| .Pexpr [] () <|
                              .PEcase
                                (.Pexpr [] () <|
                                .PEctor
                                  .Ctuple
                                  [.Pexpr [] () (.PEsym (a! 52432)), .Pexpr [] () (.PEsym (a! 52433))]) <|
                              [(.Pattern [] <| .CaseCtor .Ctuple <|
                                [.Pattern [] <|
                                 .CaseCtor
                                   .Cspecified
                                   [.Pattern [] (.CaseBase (.some (a! 52434), .BTy_object .OTy_integer))],
                                 .Pattern [] <|
                                 .CaseCtor
                                   .Cspecified
                                   [.Pattern [] (.CaseBase (.some (a! 52435), .BTy_object .OTy_integer))]],
                                .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                .PEif
                                  (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                  .PEop
                                    .OpEq
                                    (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                    .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                    [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                     .Pexpr [] () (.PEsym (a! 52434))]) <|
                                  .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                  .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                  [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                   .Pexpr [] () (.PEsym (a! 52435))])
                                  (.Pexpr [] () <|
                                  .PEctor
                                    .Cspecified
                                    [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                .Pexpr [] () <|
                                .PEctor
                                  .Cspecified
                                  [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                               (.Pattern [] <|
                                .CaseBase
                                  (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                                .Ctype
                                  [.Aloc (rgc! «queueing.c» 96 26 96 163 96 118)]
                                  (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <|
                            .Ecase (.Pexpr [] () (.PEsym (a! 52495))) <|
                            [(.Pattern [] <|
                              .CaseCtor
                                .Cspecified
                                [.Pattern [] (.CaseBase (.some (a! 52496), .BTy_object .OTy_integer))],
                              .Expr [] <|
                              .Eif
                                (.Pexpr [] () <|
                                .PEop
                                  .OpEq
                                  (.Pexpr [] () (.PEsym (a! 52496)))
                                  (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                                (.Expr [] <|
                                .Esseq
                                  (.Pattern [] (.CaseBase (.some (a! 52507), .BTy_loaded .OTy_integer)))
                                  (.Expr
                                    [.Aloc (rgc! «queueing.c» 96 167 96 210 96 195),
                                     .Aexpr,
                                     .Avalue (.Ainteger (.Signed .Int_))] <|
                                  .Ewseq
                                    (.Pattern [] <| .CaseCtor .Ctuple <|
                                    [.Pattern [] (.CaseBase (.some (a! 52497), .BTy_loaded .OTy_integer)),
                                     .Pattern [] (.CaseBase (.some (a! 52498), .BTy_loaded .OTy_integer))])
                                    (.Expr [] <| .Eunseq <|
                                    [.Expr
                                       [.Aloc (rgc! «queueing.c» 96 167 96 210 96 195),
                                        .Aexpr,
                                        .Avalue (.Ainteger (.Signed .Int_))] <|
                                     .Ewseq
                                       (.Pattern [] <| .CaseCtor .Ctuple <|
                                       [.Pattern [] (.CaseBase (.some (a! 52502), .BTy_loaded .OTy_integer)),
                                        .Pattern [] (.CaseBase (.some (a! 52503), .BTy_loaded .OTy_integer))])
                                       (.Expr [] <| .Eunseq <|
                                       [.Expr
                                          [.Aloc (rgc! «queueing.c» 96 167 96 194 96 167),
                                           .Aexpr,
                                           .Avalue (.Ainteger .Size_t)] <| .Epure <| .Pexpr [] () <|
                                        .PEctor .Cspecified <|
                                        [.Pexpr [] () <| .PEctor .Civsizeof <|
                                         [.Pexpr [] () <| .PEval <| .Vctype <|
                                          .Ctype
                                            [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
                                            (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]],
                                        .Expr
                                          [.Aloc (rgc! «queueing.c» 96 198 96 210 96 198),
                                           .Aexpr,
                                           .Avalue (.Ainteger .Size_t)] <| .Epure <| .Pexpr [] () <|
                                        .PEctor .Cspecified <|
                                        [.Pexpr [] () <| .PEctor .Civsizeof <|
                                         [.Pexpr [] () <| .PEval <| .Vctype <|
                                          .Ctype
                                            [.Aloc (rg! «queueing.c» 96 205 96 209)]
                                            (.Basic (.Integer (.Signed .Long)))]]]) <| .Expr [] <|
                                     .Epure <| .Pexpr [] () <|
                                     .PEcase
                                       (.Pexpr [] () <|
                                       .PEctor
                                         .Ctuple
                                         [.Pexpr [] () (.PEsym (a! 52502)), .Pexpr [] () (.PEsym (a! 52503))]) <|
                                     [(.Pattern [] <| .CaseCtor .Ctuple <|
                                       [.Pattern [] <|
                                        .CaseCtor
                                          .Cspecified
                                          [.Pattern [] (.CaseBase (.some (a! 52504), .BTy_object .OTy_integer))],
                                        .Pattern [] <|
                                        .CaseCtor
                                          .Cspecified
                                          [.Pattern [] (.CaseBase (.some (a! 52505), .BTy_object .OTy_integer))]],
                                       .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                       .PEif
                                         (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                         .PEop
                                           .OpEq
                                           (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                           .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                           [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                            .Pexpr [] () (.PEsym (a! 52504))]) <|
                                         .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                         .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                         [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                          .Pexpr [] () (.PEsym (a! 52505))])
                                         (.Pexpr [] () <|
                                         .PEctor
                                           .Cspecified
                                           [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                       .Pexpr [] () <|
                                       .PEctor
                                         .Cspecified
                                         [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                      (.Pattern [] <|
                                       .CaseBase
                                         (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                       .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                                       .Ctype
                                         [.Aloc (rgc! «queueing.c» 96 167 96 210 96 195)]
                                         (.Basic (.Integer (.Signed .Int_))))],
                                     .Expr
                                       [.Aloc (rgc! «queueing.c» 96 167 96 210 96 195),
                                        .Aexpr,
                                        .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                                     .Pexpr
                                       []
                                       ()
                                       (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                                  .Expr [] <| .Epure <| .Pexpr [] () <|
                                  .PEcase
                                    (.Pexpr [] () <|
                                    .PEctor
                                      .Ctuple
                                      [.Pexpr [] () (.PEsym (a! 52497)), .Pexpr [] () (.PEsym (a! 52498))]) <|
                                  [(.Pattern [] <| .CaseCtor .Ctuple <|
                                    [.Pattern [] <|
                                     .CaseCtor
                                       .Cspecified
                                       [.Pattern [] (.CaseBase (.some (a! 52499), .BTy_object .OTy_integer))],
                                     .Pattern [] <|
                                     .CaseCtor
                                       .Cspecified
                                       [.Pattern [] (.CaseBase (.some (a! 52500), .BTy_object .OTy_integer))]],
                                    .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                    .PEif
                                      (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <| .PEnot <|
                                      .Pexpr [] () <|
                                      .PEop
                                        .OpEq
                                        (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                        .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                        [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                         .Pexpr [] () (.PEsym (a! 52499))]) <|
                                      .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                      .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                      [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                       .Pexpr [] () (.PEsym (a! 52500))])
                                      (.Pexpr [] () <|
                                      .PEctor
                                        .Cspecified
                                        [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                                    .Pexpr [] () <|
                                    .PEctor
                                      .Cspecified
                                      [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                                   (.Pattern [] <|
                                    .CaseBase
                                      (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                    .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                                    .Ctype
                                      [.Aloc (rgc! «queueing.c» 96 167 96 210 96 195)]
                                      (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <|
                                .Epure <| .Pexpr [] () <|
                                .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                                [.Pexpr [] () <| .PEval <| .Vctype <|
                                 .Ctype
                                   [.Aloc (rg! «queueing.c» 96 25 96 211)]
                                   (.Basic (.Integer (.Signed .Int_))),
                                 .Pexpr [] () (.PEsym (a! 52507))]) <| .Expr [] <|
                              .Esseq
                                (.Pattern [] (.CaseBase (.some (a! 52508), .BTy_loaded .OTy_integer)))
                                (.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                                .Epure <|
                                .Pexpr
                                  []
                                  ()
                                  (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1)))))) <|
                              .Expr [] <| .Epure <| .Pexpr [] () <|
                              .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                              [.Pexpr [] () <| .PEval <| .Vctype <|
                               .Ctype
                                 [.Aloc (rg! «queueing.c» 96 25 96 211)]
                                 (.Basic (.Integer (.Signed .Int_))),
                               .Pexpr [] () (.PEsym (a! 52508))]),
                             (.Pattern
                                []
                                (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                              .Expr [] <| .Epure <| .Pexpr [] () <|
                              .PEundef
                                (rg! «queueing.c» 96 25 96 211)
                                (.UB_CERB004_unspecified .UB_unspec_conditional))],
                            .Expr
                              [.Aloc (rg! «queueing.c» 96 25 96 211),
                               .Aexpr,
                               .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                            .Pexpr
                              []
                              ()
                              (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                         .Expr [] <| .Epure <| .Pexpr [] () <|
                         .PEcase
                           (.Pexpr [] () <|
                           .PEctor
                             .Ctuple
                             [.Pexpr [] () (.PEsym (a! 52427)), .Pexpr [] () (.PEsym (a! 52428))]) <|
                         [(.Pattern [] <| .CaseCtor .Ctuple <|
                           [.Pattern [] <|
                            .CaseCtor
                              .Cspecified
                              [.Pattern [] (.CaseBase (.some (a! 52429), .BTy_object .OTy_integer))],
                            .Pattern [] <|
                            .CaseCtor
                              .Cspecified
                              [.Pattern [] (.CaseBase (.some (a! 52430), .BTy_object .OTy_integer))]],
                           .Pexpr [.Astd "\xa76.5.9#3"] () <|
                           .PEif
                             (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                             .PEop
                               .OpEq
                               (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                               .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                               [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                .Pexpr [] () (.PEsym (a! 52429))]) <|
                             .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                             .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                             [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                              .Pexpr [] () (.PEsym (a! 52430))])
                             (.Pexpr [] () <|
                             .PEctor
                               .Cspecified
                               [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                           .Pexpr [] () <|
                           .PEctor
                             .Cspecified
                             [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                          (.Pattern [] <|
                           .CaseBase
                             (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                           .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                           .Ctype
                             [.Aloc (rg! «queueing.c» 96 25 96 211)]
                             (.Basic (.Integer (.Signed .Int_))))],
                         .Expr
                           [.Aloc (rg! «queueing.c» 96 25 96 211),
                            .Aexpr,
                            .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                         .Pexpr
                           []
                           ()
                           (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                      .Expr [] <| .Epure <| .Pexpr [] () <|
                      .PEcase
                        (.Pexpr [] () <|
                        .PEctor
                          .Ctuple
                          [.Pexpr [] () (.PEsym (a! 52422)), .Pexpr [] () (.PEsym (a! 52423))]) <|
                      [(.Pattern [] <| .CaseCtor .Ctuple <|
                        [.Pattern [] <|
                         .CaseCtor
                           .Cspecified
                           [.Pattern [] (.CaseBase (.some (a! 52424), .BTy_object .OTy_integer))],
                         .Pattern [] <|
                         .CaseCtor
                           .Cspecified
                           [.Pattern [] (.CaseBase (.some (a! 52425), .BTy_object .OTy_integer))]],
                        .Pexpr [.Astd "\xa76.5.9#3"] () <|
                        .PEif
                          (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                          .PEop
                            .OpEq
                            (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                            .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                            [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                             .Pexpr [] () (.PEsym (a! 52424))]) <|
                          .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                          .PEcall
                            (.Sym (rt! "conv_int" 15837442492999787586))
                            [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                             .Pexpr [] () (.PEsym (a! 52425))])
                          (.Pexpr [] () <|
                          .PEctor
                            .Cspecified
                            [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                        .Pexpr [] () <|
                        .PEctor
                          .Cspecified
                          [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                       (.Pattern [] <|
                        .CaseBase
                          (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                        .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                        .Ctype
                          [.Aloc (rg! «queueing.c» 96 25 96 211)]
                          (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <|
                    .Ecase (.Pexpr [] () (.PEsym (a! 52509))) <|
                    [(.Pattern [] <|
                      .CaseCtor
                        .Cspecified
                        [.Pattern [] (.CaseBase (.some (a! 52510), .BTy_object .OTy_integer))],
                      .Expr [] <|
                      .Eif
                        (.Pexpr [] () <|
                        .PEop
                          .OpEq
                          (.Pexpr [] () (.PEsym (a! 52510)))
                          (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                        (.Expr [] <|
                        .Esseq
                          (.Pattern [] (.CaseBase (.some (a! 52521), .BTy_loaded .OTy_integer)))
                          (.Expr
                            [.Aloc (rgc! «queueing.c» 96 215 96 263 96 243),
                             .Aexpr,
                             .Avalue (.Ainteger (.Signed .Int_))] <|
                          .Ewseq
                            (.Pattern [] <| .CaseCtor .Ctuple <|
                            [.Pattern [] (.CaseBase (.some (a! 52511), .BTy_loaded .OTy_integer)),
                             .Pattern [] (.CaseBase (.some (a! 52512), .BTy_loaded .OTy_integer))])
                            (.Expr [] <| .Eunseq <|
                            [.Expr
                               [.Aloc (rgc! «queueing.c» 96 215 96 263 96 243),
                                .Aexpr,
                                .Avalue (.Ainteger (.Signed .Int_))] <|
                             .Ewseq
                               (.Pattern [] <| .CaseCtor .Ctuple <|
                               [.Pattern [] (.CaseBase (.some (a! 52516), .BTy_loaded .OTy_integer)),
                                .Pattern [] (.CaseBase (.some (a! 52517), .BTy_loaded .OTy_integer))])
                               (.Expr [] <| .Eunseq <|
                               [.Expr
                                  [.Aloc (rgc! «queueing.c» 96 215 96 242 96 215),
                                   .Aexpr,
                                   .Avalue (.Ainteger .Size_t)] <| .Epure <| .Pexpr [] () <|
                                .PEctor .Cspecified <|
                                [.Pexpr [] () <| .PEctor .Civsizeof <|
                                 [.Pexpr [] () <| .PEval <| .Vctype <|
                                  .Ctype
                                    [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 17 35 18)]
                                    (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]],
                                .Expr
                                  [.Aloc (rgc! «queueing.c» 96 246 96 263 96 246),
                                   .Aexpr,
                                   .Avalue (.Ainteger .Size_t)] <| .Epure <| .Pexpr [] () <|
                                .PEctor .Cspecified <|
                                [.Pexpr [] () <| .PEctor .Civsizeof <|
                                 [.Pexpr [] () <| .PEval <| .Vctype <|
                                  .Ctype
                                    [.Aloc (rg! «queueing.c» 96 253 96 262)]
                                    (.Basic (.Integer (.Signed .LongLong)))]]]) <| .Expr [] <|
                             .Epure <| .Pexpr [] () <|
                             .PEcase
                               (.Pexpr [] () <|
                               .PEctor
                                 .Ctuple
                                 [.Pexpr [] () (.PEsym (a! 52516)), .Pexpr [] () (.PEsym (a! 52517))]) <|
                             [(.Pattern [] <| .CaseCtor .Ctuple <|
                               [.Pattern [] <|
                                .CaseCtor
                                  .Cspecified
                                  [.Pattern [] (.CaseBase (.some (a! 52518), .BTy_object .OTy_integer))],
                                .Pattern [] <|
                                .CaseCtor
                                  .Cspecified
                                  [.Pattern [] (.CaseBase (.some (a! 52519), .BTy_object .OTy_integer))]],
                               .Pexpr [.Astd "\xa76.5.9#3"] () <|
                               .PEif
                                 (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                 .PEop
                                   .OpEq
                                   (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                   .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                   [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                    .Pexpr [] () (.PEsym (a! 52518))]) <|
                                 .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                 .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                 [.Pexpr [] () (.PEval (.Vctype Ty.size_t)),
                                  .Pexpr [] () (.PEsym (a! 52519))])
                                 (.Pexpr [] () <|
                                 .PEctor
                                   .Cspecified
                                   [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                               .Pexpr [] () <|
                               .PEctor
                                 .Cspecified
                                 [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                              (.Pattern [] <|
                               .CaseBase
                                 (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                               .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                               .Ctype
                                 [.Aloc (rgc! «queueing.c» 96 215 96 263 96 243)]
                                 (.Basic (.Integer (.Signed .Int_))))],
                             .Expr
                               [.Aloc (rgc! «queueing.c» 96 215 96 263 96 243),
                                .Aexpr,
                                .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                             .Pexpr
                               []
                               ()
                               (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                          .Expr [] <| .Epure <| .Pexpr [] () <|
                          .PEcase
                            (.Pexpr [] () <|
                            .PEctor
                              .Ctuple
                              [.Pexpr [] () (.PEsym (a! 52511)), .Pexpr [] () (.PEsym (a! 52512))]) <|
                          [(.Pattern [] <| .CaseCtor .Ctuple <|
                            [.Pattern [] <|
                             .CaseCtor
                               .Cspecified
                               [.Pattern [] (.CaseBase (.some (a! 52513), .BTy_object .OTy_integer))],
                             .Pattern [] <|
                             .CaseCtor
                               .Cspecified
                               [.Pattern [] (.CaseBase (.some (a! 52514), .BTy_object .OTy_integer))]],
                            .Pexpr [.Astd "\xa76.5.9#3"] () <|
                            .PEif
                              (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <| .PEnot <|
                              .Pexpr [] () <|
                              .PEop
                                .OpEq
                                (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                 .Pexpr [] () (.PEsym (a! 52513))]) <|
                              .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                              .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                              [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                               .Pexpr [] () (.PEsym (a! 52514))])
                              (.Pexpr [] () <|
                              .PEctor
                                .Cspecified
                                [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                            .Pexpr [] () <|
                            .PEctor
                              .Cspecified
                              [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
                           (.Pattern [] <|
                            .CaseBase
                              (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                            .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                            .Ctype
                              [.Aloc (rgc! «queueing.c» 96 215 96 263 96 243)]
                              (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <| .Epure <|
                        .Pexpr [] () <|
                        .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                        [.Pexpr [] () <| .PEval <| .Vctype <|
                         .Ctype
                           [.Aloc (rg! «queueing.c» 96 24 96 264)]
                           (.Basic (.Integer (.Signed .Int_))),
                         .Pexpr [] () (.PEsym (a! 52521))]) <| .Expr [] <|
                      .Esseq
                        (.Pattern [] (.CaseBase (.some (a! 52522), .BTy_loaded .OTy_integer)))
                        (.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                        .Epure <|
                        .Pexpr
                          []
                          ()
                          (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1)))))) <|
                      .Expr [] <| .Epure <| .Pexpr [] () <|
                      .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                      [.Pexpr [] () <| .PEval <| .Vctype <|
                       .Ctype
                         [.Aloc (rg! «queueing.c» 96 24 96 264)]
                         (.Basic (.Integer (.Signed .Int_))),
                       .Pexpr [] () (.PEsym (a! 52522))]),
                     (.Pattern
                        []
                        (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                      .Expr [] <| .Epure <| .Pexpr [] () <|
                      .PEundef
                        (rg! «queueing.c» 96 24 96 264)
                        (.UB_CERB004_unspecified .UB_unspec_conditional))])
                    (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
                  (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
              .Esseq
                (.Pattern [] (.CaseBase (.some (a! 52419), .BTy_loaded .OTy_pointer)))
                (.Expr [.Aloc (rg! «queueing.c» 96 267 96 704), .Aexpr] <|
                .Ewseq
                  (.Pattern [] (.CaseBase (.some (a! 52536), .BTy_object .OTy_pointer)))
                  (.Expr [.Aloc (rg! «queueing.c» 96 267 96 704), .Aexpr, .Astd "\xa76.5.3.2"] <|
                  .Ewseq
                    (.Pattern [] (.CaseBase (.some (a! 52524), .BTy_loaded .OTy_pointer)))
                    (.Expr
                      [.Aloc (rgc! «queueing.c» 96 269 96 703 96 269), .Aexpr, .Astd "\xa76.5.4"] <|
                    .Ewseq
                      (.Pattern [] (.CaseBase (.some (a! 52527), .BTy_loaded .OTy_pointer)))
                      (.Expr
                        [.Aloc (rgc! «queueing.c» 96 689 96 703 96 689),
                         .Aexpr,
                         .Astd "\xa76.5.3.2#3, sentence 5"] <|
                      .Ewseq
                        (.Pattern [] (.CaseBase (.some (a! 52529), .BTy_object .OTy_pointer)))
                        (.Expr
                          [.Aloc (rg! «queueing.c» 96 690 96 703),
                           .Aexpr,
                           .Astd "\xa76.5.2.3#4, sentence 2"] <|
                        .Esseq
                          (.Pattern [] (.CaseBase (.some (a! 52530), .BTy_loaded .OTy_pointer)))
                          (.Expr [.Aloc (rg! «queueing.c» 96 691 96 696), .Aexpr] <|
                          .Ewseq
                            (.Pattern [] (.CaseBase (.some (a! 52534), .BTy_object .OTy_pointer)))
                            (.Expr
                              [.Aloc (rg! «queueing.c» 96 691 96 696), .Aexpr]
                              (.Epure (.Pexpr [] () (.PEsym (addr! "queue" 3422))))) <| .Expr [] <|
                          .Eaction <| .Paction .Pos <|
                          .Action (rg! «queueing.c» 96 691 96 696) () <|
                          .Load0
                            (.Pexpr [] () <| .PEval <| .Vctype <|
                            .Ctype
                              [.Aloc (rg! «queueing.h» 137 57 137 58),
                               .Aloc (rg! «queueing.c» 80 57 80 58)]
                              (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
                            (.Pexpr [] () (.PEsym (a! 52534)))
                            .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52530))) <|
                        [(.Pattern
                            []
                            (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                          .Expr [] <| .Epure <| .Pexpr [] () <|
                          .PEundef
                            (rg! «queueing.c» 96 690 96 703)
                            (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                         (.Pattern [] <|
                          .CaseCtor
                            .Cspecified
                            [.Pattern [] (.CaseBase (.some (a! 52531), .BTy_object .OTy_pointer))],
                          .Expr [] <| .Epure <| .Pexpr [] () <|
                          .PEmember_shift
                            (.Pexpr [] () (.PEsym (a! 52531)))
                            (c! "prev_queue" 2191)
                            (.Identifier (rg! «queueing.c» 96 698 96 702) "head"))]) <| .Expr [] <|
                      .Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 52529))]))) <|
                    .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52527))) <|
                    [(.Pattern [] <|
                      .CaseCtor
                        .Cspecified
                        [.Pattern [] (.CaseBase (.some (a! 52528), .BTy_object .OTy_pointer))],
                      .Expr [] <|
                      .Ewseq
                        (.Pattern [] (.CaseBase (.some (a! 52535), .BTy_boolean)))
                        (.Expr [] <| .Ememop .PtrWellAligned <|
                        [.Pexpr [] () <| .PEval <| .Vctype <|
                         .Ctype
                           [.Aloc (rg! «queueing.c» 96 293 96 685)]
                           (.Pointer (.mk .false .false .false) Ty.struct_sk_buff),
                         .Pexpr [] () (.PEsym (a! 52528))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
                      .PEctor .Cspecified <|
                      [.Pexpr [] () <|
                       .PEif
                         (.Pexpr [] () (.PEsym (a! 52535)))
                         (.Pexpr [] () (.PEsym (a! 52528))) <| .Pexpr [] () <|
                       .PEundef
                         (rgc! «queueing.c» 96 269 96 703 96 269)
                         .UB025_misaligned_pointer_conversion]),
                     (.Pattern
                        []
                        (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                      .Expr [] <| .Epure <| .Pexpr [] () <|
                      .PEundef
                        (rgc! «queueing.c» 96 269 96 703 96 269)
                        .UB025_misaligned_pointer_conversion)]) <| .Expr [] <|
                  .Ecase (.Pexpr [] () (.PEsym (a! 52524))) <|
                  [(.Pattern [] <|
                    .CaseCtor
                      .Cspecified
                      [.Pattern [] (.CaseBase (.some (a! 52525), .BTy_object .OTy_pointer))],
                    .Expr [] <|
                    .Ewseq
                      (.Pattern [] (.CaseBase (.some (a! 52526), .BTy_boolean)))
                      (.Expr [] <| .Ememop .PtrValidForDeref <|
                      [.Pexpr [] () <| .PEval <| .Vctype <|
                       .Ctype
                         [.Aloc (rg! «queueing.c» 96 293 96 685)]
                         (.Pointer (.mk .false .false .false) Ty.struct_sk_buff),
                       .Pexpr [] () (.PEsym (a! 52525))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
                    .PEif (.Pexpr [] () (.PEsym (a! 52526))) (.Pexpr [] () (.PEsym (a! 52525))) <|
                    .Pexpr
                      [.Astd "\xa76.5.3.2#4, sentence 4"]
                      ()
                      (.PEundef (rg! «queueing.c» 96 267 96 704) .UB043_indirection_invalid_value)),
                   (.Pattern
                      []
                      (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                    .Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.3.2#4, sentence 4"] () <|
                    .PEundef (rg! «queueing.c» 96 267 96 704) .UB043_indirection_invalid_value)]) <|
                .Expr [] <| .Eaction <| .Paction .Pos <|
                .Action (rg! «queueing.c» 96 267 96 704) () <|
                .Load0
                  (.Pexpr [] () <| .PEval <| .Vctype <|
                  .Ctype
                    [.Aloc (rg! «queueing.c» 96 293 96 685)]
                    (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                  (.Pexpr [] () (.PEsym (a! 52536)))
                  .NA)
                (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52419)))))]) <| .Expr [] <|
           .Ecase
             (.Pexpr
               []
               ()
               (.PEctor
                 .Ctuple
                 [.Pexpr [] () (.PEsym (a! 52413)), .Pexpr [] () (.PEsym (a! 52414))])) <|
           [(.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 52415), .BTy_object .OTy_pointer))],
              .Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 52416), .BTy_object .OTy_pointer))]],
             .Expr [] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 52417), .BTy_boolean)))
               (.Expr
                 []
                 (.Ememop
                   .PtrNe
                   [.Pexpr [] () (.PEsym (a! 52415)), .Pexpr [] () (.PEsym (a! 52416))])) <|
             .Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.9#3"] () <|
             .PEif
               (.Pexpr [] () (.PEsym (a! 52417)))
               (.Pexpr [] () <|
               .PEctor
                 .Cspecified
                 [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
             .Pexpr [] () <|
             .PEctor .Cspecified [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
            (.Pattern
               []
               (.CaseBase (.none, .BTy_tuple [.BTy_loaded .OTy_pointer, .BTy_loaded .OTy_pointer])),
             .Expr [] <| .Epure <| .Pexpr [] () <|
             .PEundef
               (rgc! «queueing.c» 96 6 96 708 96 11)
               (.UB_CERB004_unspecified .UB_unspec_equality_both_arith_or_ptr))],
           .Expr
             [.Aloc (rgc! «queueing.c» 96 6 96 708 96 11),
              .Aexpr,
              .Avalue (.Ainteger (.Signed .Int_))] <|
           .Epure (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
        .Expr [] <| .Epure <| .Pexpr [] () <|
        .PEcase
          (.Pexpr
            []
            ()
            (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 52408)), .Pexpr [] () (.PEsym (a! 52409))])) <|
        [(.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 52410), .BTy_object .OTy_integer))],
           .Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 52411), .BTy_object .OTy_integer))]],
          .Pexpr [.Astd "\xa76.5.9#3"] () <|
          .PEif
            (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
            .PEop
              .OpEq
              (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
              .PEcall
                (.Sym (rt! "conv_int" 15837442492999787586))
                [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52410))]) <|
            .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
            .PEcall
              (.Sym (rt! "conv_int" 15837442492999787586))
              [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52411))])
            (.Pexpr
              []
              ()
              (.PEctor
                .Cspecified
                [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))])) <|
          .Pexpr
            []
            ()
            (.PEctor .Cspecified [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))])),
         (.Pattern
            []
            (.CaseBase (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer])),
          .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
          .Ctype [.Aloc (rgc! «queueing.c» 96 6 96 708 96 11)] (.Basic (.Integer (.Signed .Int_))))]) <|
      .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 52405), .BTy_boolean)))
        (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52406))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 52407), .BTy_object .OTy_integer))],
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 52407)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
            (.Pexpr [] () (.PEval .Vtrue))
            (.Pexpr [] () (.PEval .Vfalse))),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <| .End <|
          [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
           .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
      .Eif
        (.Pexpr [] () (.PEsym (a! 52405)))
        (.Expr [.Aloc (rg! «queueing.c» 97 3 97 22), .Astmt] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 97 3 97 22) () <|
          .Kill
            (.Static0 <|
            .Ctype
              [.Aloc (rg! «queueing.c» 82 17 82 18)]
              (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
            (.Pexpr [] () (.PEsym (addr! "tail" 3424)))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 97 3 97 22) () <|
          .Kill
            (.Static0 <|
            .Ctype
              [.Aloc (rg! «queueing.c» 82 38 82 39)]
              (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
            (.Pexpr [] () (.PEsym (addr! "next" 3425)))) <| .Expr [] <|
        .Erun () (c! "ret_52290" 52290) <|
        [.Pexpr [] () <| .PEctor .Cspecified <|
         [.Pexpr [] () <| .PEval <| .Vobject <| .OVpointer <| .PV .Prov_none <| .PVnull <|
          .Ctype
            [.Aloc (rg! «queueing.h» 137 16 137 17), .Aloc (rg! «queueing.c» 80 16 80 17)]
            (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]]) <|
      .Expr [.Aloc (rg! «queueing.c» 96 2 97 22), .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit)))) <|
    .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «queueing.c» 98 2 98 68), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc (rg! «queueing.c» 98 2 98 67), .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
        .Esseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <| .CaseCtor .Ctuple <|
           [.Pattern [] (.CaseBase (.some (a! 52538), .BTy_loaded .OTy_pointer)),
            .Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 52539), .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 52540), .BTy_list .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 52541), .BTy_boolean)),
             .Pattern [] (.CaseBase (.some (a! 52542), .BTy_boolean))]],
           .Pattern [] (.CaseBase (.some (a! 52545), .BTy_loaded .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 52547), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
          [.Expr [] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 52537), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc (rg! «queueing.c» 98 2 98 25), .Aexpr] <| .Epure <| .Pexpr [] () <|
             .PEval <| .Vloaded <| .LVspecified <|
             .OVpointer (.PV .Prov_none (.PVfunction (c! "__wg_prev_queue_enqueue" 3387)))) <|
           .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
           [.Pexpr [] () (.PEsym (a! 52537)),
            .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 52537))))],
           .Expr [.Aloc (rg! «queueing.c» 98 26 98 31), .Aexpr] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 52546), .BTy_object .OTy_pointer)))
             (.Expr
               [.Aloc (rg! «queueing.c» 98 26 98 31), .Aexpr]
               (.Epure (.Pexpr [] () (.PEsym (addr! "queue" 3422))))) <| .Expr [] <| .Eaction <|
           .Paction .Pos <| .Action (rg! «queueing.c» 98 26 98 31) () <|
           .Load0
             (.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype
               [.Aloc (rg! «queueing.h» 137 57 137 58), .Aloc (rg! «queueing.c» 80 57 80 58)]
               (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
             (.Pexpr [] () (.PEsym (a! 52546)))
             .NA,
           .Expr [.Aloc (rg! «queueing.c» 98 33 98 66), .Aexpr, .Astd "\xa76.5.4"] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 52548), .BTy_loaded .OTy_pointer)))
             (.Expr
               [.Aloc (rgc! «queueing.c» 98 52 98 65 98 52),
                .Aexpr,
                .Astd "\xa76.5.3.2#3, sentence 5"] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 52550), .BTy_object .OTy_pointer)))
               (.Expr
                 [.Aloc (rgc! «queueing.c» 98 53 98 65 98 58),
                  .Aexpr,
                  .Astd "\xa76.5.2.3#4, sentence 2"] <|
               .Esseq
                 (.Pattern [] (.CaseBase (.some (a! 52551), .BTy_loaded .OTy_pointer)))
                 (.Expr [.Aloc (rg! «queueing.c» 98 53 98 58), .Aexpr] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 52555), .BTy_object .OTy_pointer)))
                   (.Expr
                     [.Aloc (rg! «queueing.c» 98 53 98 58), .Aexpr]
                     (.Epure (.Pexpr [] () (.PEsym (addr! "queue" 3422))))) <| .Expr [] <|
                 .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 98 53 98 58) () <|
                 .Load0
                   (.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype
                     [.Aloc (rg! «queueing.h» 137 57 137 58),
                      .Aloc (rg! «queueing.c» 80 57 80 58)]
                     (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
                   (.Pexpr [] () (.PEsym (a! 52555)))
                   .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52551))) <|
               [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEundef
                   (rgc! «queueing.c» 98 53 98 65 98 58)
                   (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                (.Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 52552), .BTy_object .OTy_pointer))],
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEmember_shift
                   (.Pexpr [] () (.PEsym (a! 52552)))
                   (c! "prev_queue" 2191)
                   (.Identifier (rg! «queueing.c» 98 60 98 65) "empty"))]) <|
             .Expr
               []
               (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 52550))])))) <|
           .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52548))) <|
           [(.Pattern [] <|
             .CaseCtor
               .Cspecified
               [.Pattern [] (.CaseBase (.some (a! 52549), .BTy_object .OTy_pointer))],
             .Expr [] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 52556), .BTy_boolean)))
               (.Expr [] <|
               .Ememop
                 .PtrWellAligned
                 [.Pexpr [] () (.PEval (.Vctype Ty.struct_sk_buff)),
                  .Pexpr [] () (.PEsym (a! 52549))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
             .PEctor .Cspecified <|
             [.Pexpr [] () <|
              .PEif (.Pexpr [] () (.PEsym (a! 52556))) (.Pexpr [] () (.PEsym (a! 52549))) <|
              .Pexpr
                []
                ()
                (.PEundef (rg! «queueing.c» 98 33 98 66) .UB025_misaligned_pointer_conversion)]),
            (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
             .Expr [] <| .Epure <| .Pexpr [] () <|
             .PEundef (rg! «queueing.c» 98 33 98 66) .UB025_misaligned_pointer_conversion)]]) <|
        .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
          .PEop
            .OpEq
            (.Pexpr [] () <|
            .PEcall
              (.Sym (rt! "params_length" 18299737999929047716))
              [.Pexpr [] () (.PEsym (a! 52540))])
            (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#6, sentence 3"]
            ()
            (.PEundef (rg! «queueing.c» 98 2 98 67) .UB038_number_of_args)) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 52541))) <| .Pexpr [] () <|
          .PEnot <| .Pexpr [] () <|
          .PEare_compatible
            (.Pexpr
              []
              ()
              (.PEval (.Vctype (.Ctype [.Aloc (rg! «queueing.c» 66 8 66 12)] .Void0))))
            (.Pexpr [] () (.PEsym (a! 52539))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#9"]
            ()
            (.PEundef (rg! «queueing.c» 98 2 98 67) .UB041_function_not_compatible)) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some (sym.Symbol Src.digest 52543 (.SD_FunArg (rg! «queueing.c» 98 26 98 31) 0)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 52557), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 52540)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc (rg! «queueing.c» 66 55 66 56)]
                (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
              (.Pexpr [] () (.PEsym (a! 52557))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «queueing.c» 98 2 98 67) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 52558), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 98 2 98 67) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc (rg! «queueing.c» 66 55 66 56)]
                 (.Pointer (.mk .false .false .false) Ty.struct_prev_queue)])
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc (rg! «queueing.c» 66 55 66 56)]
                (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
              (.PrefFunArg (rg! «queueing.c» 98 2 98 67) "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 98 2 98 67) () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc (rg! «queueing.c» 66 55 66 56)]
                (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
              (.Pexpr [] () (.PEsym (a! 52558)))
              (.Pexpr [] () (.PEsym (a! 52545)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52558)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some (sym.Symbol Src.digest 52544 (.SD_FunArg (rg! «queueing.c» 98 33 98 66) 1)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 52559), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 52540)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc (rg! «queueing.c» 66 78 66 79)]
                (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
              (.Pexpr [] () (.PEsym (a! 52559))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «queueing.c» 98 2 98 67) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 52560), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 98 2 98 67) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc (rg! «queueing.c» 66 78 66 79)]
                 (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)])
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc (rg! «queueing.c» 66 78 66 79)]
                (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
              (.PrefFunArg (rg! «queueing.c» 98 2 98 67) "fa5a43434dcb33dc130b30cb8faeddf7" 1)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 98 2 98 67) () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc (rg! «queueing.c» 66 78 66 79)]
                (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
              (.Pexpr [] () (.PEsym (a! 52560)))
              (.Pexpr [] () (.PEsym (a! 52547)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52560)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 52561), .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
          .Eccall
            ()
            (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc (rg! «queueing.c» 98 2 98 25)] <|
            .Pointer (.mk .false .false .false) <| .Ctype [] <|
            .Function
              (.mk .false .false .false, .Ctype [.Aloc (rg! «queueing.c» 66 8 66 12)] .Void0)
              [(.mk .false .false .false,
                (.Ctype
                   [.Aloc (rg! «queueing.c» 66 55 66 56)]
                   (.Pointer (.mk .false .false .false) Ty.struct_prev_queue),
                 .false)),
               (.mk .false .false .false,
                (.Ctype
                   [.Aloc (rg! «queueing.c» 66 78 66 79)]
                   (.Pointer (.mk .false .false .false) Ty.struct_sk_buff),
                 .false))]
              .false)
            (.Pexpr [] () (.PEsym (a! 52538))) <|
          [.Pexpr
             []
             ()
             (.PEsym (sym.Symbol Src.digest 52543 (.SD_FunArg (rg! «queueing.c» 98 26 98 31) 0))),
           .Pexpr
             []
             ()
             (.PEsym (sym.Symbol Src.digest 52544 (.SD_FunArg (rg! «queueing.c» 98 33 98 66) 1)))]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit])))
          (.Expr [] <| .Eunseq <|
          [.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 98 2 98 67) () <|
           .Kill
             (.Static0 <|
             .Ctype
               [.Aloc (rg! «queueing.c» 66 55 66 56)]
               (.Pointer (.mk .false .false .false) Ty.struct_prev_queue)) <|
           .Pexpr
             []
             ()
             (.PEsym (sym.Symbol Src.digest 52543 (.SD_FunArg (rg! «queueing.c» 98 26 98 31) 0))),
           .Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 98 2 98 67) () <|
           .Kill
             (.Static0 <|
             .Ctype
               [.Aloc (rg! «queueing.c» 66 78 66 79)]
               (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)) <|
           .Pexpr
             []
             ()
             (.PEsym (sym.Symbol Src.digest 52544 (.SD_FunArg (rg! «queueing.c» 98 33 98 66) 1)))])
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52561))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «queueing.c» 99 2 99 44), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc (rgc! «queueing.c» 99 2 99 43 99 7), .Aexpr, .Astd "\xa76.5.16#3, sentence 4"] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 52562), .BTy_object .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 52575), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
          [.Expr
             [.Aloc (rg! «queueing.c» 99 2 99 6), .Aexpr]
             (.Epure (.Pexpr [] () (.PEsym (addr! "next" 3425)))),
           .Expr [.Aloc (rg! «queueing.c» 99 9 99 43), .Aexpr] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 52574), .BTy_object .OTy_pointer)))
             (.Expr [.Aloc (rg! «queueing.c» 99 9 99 43), .Aexpr, .Astd "\xa76.5.3.2"] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 52563), .BTy_loaded .OTy_pointer)))
               (.Expr
                 [.Aloc (rg! «queueing.c» 99 11 99 42), .Aexpr, .Astd "\xa76.5.3.2#3, sentence 5"] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 52566), .BTy_object .OTy_pointer)))
                 (.Expr
                   [.Aloc (rg! «queueing.c» 99 13 99 41),
                    .Aexpr,
                    .Astd "\xa76.5.2.3#3, sentence 2"] <|
                 .Esseq
                   (.Pattern [] (.CaseBase (.some (a! 52567), .BTy_object .OTy_pointer)))
                   (.Expr
                     [.Aloc (rgc! «queueing.c» 99 14 99 35 99 28),
                      .Aexpr,
                      .Astd "\xa76.5.2.3#3, sentence 2"] <|
                   .Esseq
                     (.Pattern [] (.CaseBase (.some (a! 52568), .BTy_object .OTy_pointer)))
                     (.Expr
                       [.Aloc (rgc! «queueing.c» 99 14 99 28 99 20),
                        .Aexpr,
                        .Astd "\xa76.5.2.3#4, sentence 2"] <|
                     .Esseq
                       (.Pattern [] (.CaseBase (.some (a! 52569), .BTy_loaded .OTy_pointer)))
                       (.Expr [.Aloc (rg! «queueing.c» 99 14 99 20), .Aexpr] <|
                       .Ewseq
                         (.Pattern [] (.CaseBase (.some (a! 52573), .BTy_object .OTy_pointer)))
                         (.Expr
                           [.Aloc (rg! «queueing.c» 99 14 99 20), .Aexpr]
                           (.Epure (.Pexpr [] () (.PEsym (addr! "tail" 3424))))) <| .Expr [] <|
                       .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 99 14 99 20) () <|
                       .Load0
                         (.Pexpr [] () <| .PEval <| .Vctype <|
                         .Ctype
                           [.Aloc (rg! «queueing.c» 82 17 82 18)]
                           (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                         (.Pexpr [] () (.PEsym (a! 52573)))
                         .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52569))) <|
                     [(.Pattern
                         []
                         (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                       .Expr [] <| .Epure <| .Pexpr [] () <|
                       .PEundef
                         (rgc! «queueing.c» 99 14 99 28 99 20)
                         (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                      (.Pattern [] <|
                       .CaseCtor
                         .Cspecified
                         [.Pattern [] (.CaseBase (.some (a! 52570), .BTy_object .OTy_pointer))],
                       .Expr [] <| .Epure <| .Pexpr [] () <|
                       .PEmember_shift
                         (.Pexpr [] () (.PEsym (a! 52570)))
                         (c! "sk_buff" 1059)
                         (.Identifier (rg! «queueing.c» 99 22 99 28) "u_node"))]) <| .Expr [] <|
                   .Epure <| .Pexpr [] () <|
                   .PEmember_shift
                     (.Pexpr [] () (.PEsym (a! 52568)))
                     (sym.Symbol Src.digest 1280 (.SD_unnamed_tag .unknown))
                     (.Identifier (rg! «queueing.c» 99 29 99 35) "s_node")) <| .Expr [] <| .Epure <|
                 .Pexpr [] () <|
                 .PEmember_shift
                   (.Pexpr [] () (.PEsym (a! 52567)))
                   (sym.Symbol Src.digest 1281 (.SD_unnamed_tag .unknown))
                   (.Identifier (rg! «queueing.c» 99 36 99 40) "prev")) <|
               .Expr
                 []
                 (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 52566))])))) <|
             .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52563))) <|
             [(.Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 52564), .BTy_object .OTy_pointer))],
               .Expr [] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 52565), .BTy_boolean)))
                 (.Expr [] <| .Ememop .PtrValidForDeref <|
                 [.Pexpr [] () <| .PEval <| .Vctype <|
                  .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_sk_buff),
                  .Pexpr [] () (.PEsym (a! 52564))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
               .PEif (.Pexpr [] () (.PEsym (a! 52565))) (.Pexpr [] () (.PEsym (a! 52564))) <|
               .Pexpr
                 [.Astd "\xa76.5.3.2#4, sentence 4"]
                 ()
                 (.PEundef (rg! «queueing.c» 99 9 99 43) .UB043_indirection_invalid_value)),
              (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
               .Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.3.2#4, sentence 4"] () <|
               .PEundef (rg! «queueing.c» 99 9 99 43) .UB043_indirection_invalid_value)]) <|
           .Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 99 9 99 43) () <|
           .Load0
             (.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
             (.Pexpr [] () (.PEsym (a! 52574)))
             .NA]) <| .Expr [] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
          .Action (rgc! «queueing.c» 99 2 99 43 99 7) () <|
          .Store0
            .false
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype
              [.Aloc (rg! «queueing.c» 82 38 82 39)]
              (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
            (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 52562)))
            (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52575)))
            .NA)
          (.Expr [] (.Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52575))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «queueing.c» 100 2 104 3), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 52577), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc (rg! «queueing.c» 100 6 100 10), .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.some (a! 52580), .BTy_loaded .OTy_pointer)))
          (.Expr [.Aloc (rg! «queueing.c» 100 6 100 10), .Aexpr] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 52579), .BTy_object .OTy_pointer)))
            (.Expr
              [.Aloc (rg! «queueing.c» 100 6 100 10), .Aexpr]
              (.Epure (.Pexpr [] () (.PEsym (addr! "next" 3425))))) <| .Expr [] <| .Eaction <|
          .Paction .Pos <| .Action (rg! «queueing.c» 100 6 100 10) () <|
          .Load0
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype
              [.Aloc (rg! «queueing.c» 82 38 82 39)]
              (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
            (.Pexpr [] () (.PEsym (a! 52579)))
            .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52580))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 52581), .BTy_object .OTy_pointer))],
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 52582), .BTy_boolean)))
            (.Expr [] <| .Ememop .PtrEq <|
            [.Pexpr [] () (.PEsym (a! 52581)),
             .Pexpr [.Astd "\xa76.5.9#5, sentence 2"] () <| .PEval <| .Vobject <| .OVpointer <|
             .PV .Prov_none <| .PVnull <|
             .Ctype
               [.Aloc (rg! «queueing.c» 100 6 100 10)]
               (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]) <|
          .Expr [.Astd "\xa76.5.9#3"] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () (.PEsym (a! 52582)))
            (.Pexpr
              []
              ()
              (.PEctor
                .Cspecified
                [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))])) <|
          .Pexpr
            []
            ()
            (.PEctor .Cspecified [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))])),
         (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)),
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEundef
            (rg! «queueing.c» 100 6 100 10)
            (.UB_CERB004_unspecified .UB_unspec_equality_ptr_vs_NULL))]) <| .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 52576), .BTy_boolean)))
        (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52577))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 52578), .BTy_object .OTy_integer))],
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 52578)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
            (.Pexpr [] () (.PEval .Vtrue))
            (.Pexpr [] () (.PEval .Vfalse))),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <| .End <|
          [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
           .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
      .Eif
        (.Pexpr [] () (.PEsym (a! 52576)))
        (.Expr [.Aloc (rg! «queueing.c» 100 12 104 3), .Astmt] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc (rg! «queueing.c» 101 3 101 22), .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr
              [.Aloc (rgc! «queueing.c» 101 3 101 21 101 15),
               .Aexpr,
               .Astd "\xa76.5.16#3, sentence 4"] <|
            .Ewseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] (.CaseBase (.some (a! 52583), .BTy_object .OTy_pointer)),
               .Pattern [] (.CaseBase (.some (a! 52590), .BTy_loaded .OTy_pointer))])
              (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
              [.Expr
                 [.Aloc (rgc! «queueing.c» 101 3 101 14 101 8),
                  .Aexpr,
                  .Astd "\xa76.5.2.3#4, sentence 2"] <|
               .Esseq
                 (.Pattern [] (.CaseBase (.some (a! 52584), .BTy_loaded .OTy_pointer)))
                 (.Expr [.Aloc (rg! «queueing.c» 101 3 101 8), .Aexpr] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 52588), .BTy_object .OTy_pointer)))
                   (.Expr
                     [.Aloc (rg! «queueing.c» 101 3 101 8), .Aexpr]
                     (.Epure (.Pexpr [] () (.PEsym (addr! "queue" 3422))))) <| .Expr [] <|
                 .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 101 3 101 8) () <|
                 .Load0
                   (.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype
                     [.Aloc (rg! «queueing.h» 137 57 137 58),
                      .Aloc (rg! «queueing.c» 80 57 80 58)]
                     (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
                   (.Pexpr [] () (.PEsym (a! 52588)))
                   .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52584))) <|
               [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEundef
                   (rgc! «queueing.c» 101 3 101 14 101 8)
                   (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                (.Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 52585), .BTy_object .OTy_pointer))],
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEmember_shift
                   (.Pexpr [] () (.PEsym (a! 52585)))
                   (c! "prev_queue" 2191)
                   (.Identifier (rg! «queueing.c» 101 10 101 14) "tail"))],
               .Expr [.Aloc (rg! «queueing.c» 101 17 101 21), .Aexpr] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 52589), .BTy_object .OTy_pointer)))
                 (.Expr
                   [.Aloc (rg! «queueing.c» 101 17 101 21), .Aexpr]
                   (.Epure (.Pexpr [] () (.PEsym (addr! "next" 3425))))) <| .Expr [] <| .Eaction <|
               .Paction .Pos <| .Action (rg! «queueing.c» 101 17 101 21) () <|
               .Load0
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype
                   [.Aloc (rg! «queueing.c» 82 38 82 39)]
                   (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                 (.Pexpr [] () (.PEsym (a! 52589)))
                 .NA]) <| .Expr [] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
              .Action (rgc! «queueing.c» 101 3 101 21 101 15) () <|
              .Store0
                .false
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype
                  [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 24 35 25)]
                  (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 52583)))
                (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52590)))
                .NA)
              (.Expr
                []
                (.Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52590))))))
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc (rg! «queueing.c» 102 3 102 29), .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr
              [.Aloc (rg! «queueing.c» 102 3 102 28), .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
            .Esseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] <| .CaseCtor .Ctuple <|
               [.Pattern [] (.CaseBase (.some (a! 52592), .BTy_loaded .OTy_pointer)),
                .Pattern [] <| .CaseCtor .Ctuple <|
                [.Pattern [] (.CaseBase (.some (a! 52593), .BTy_ctype)),
                 .Pattern [] (.CaseBase (.some (a! 52594), .BTy_list .BTy_ctype)),
                 .Pattern [] (.CaseBase (.some (a! 52595), .BTy_boolean)),
                 .Pattern [] (.CaseBase (.some (a! 52596), .BTy_boolean))]],
               .Pattern [] (.CaseBase (.some (a! 52598), .BTy_loaded .OTy_pointer))])
              (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
              [.Expr [] <|
               .Esseq
                 (.Pattern [] (.CaseBase (.some (a! 52591), .BTy_loaded .OTy_pointer)))
                 (.Expr [.Aloc (rg! «queueing.c» 102 3 102 13), .Aexpr] <| .Epure <| .Pexpr [] () <|
                 .PEval <|
                 .Vloaded
                   (.LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "atomic_dec" 414)))))) <|
               .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
               [.Pexpr [] () (.PEsym (a! 52591)),
                .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 52591))))],
               .Expr
                 [.Aloc (rgc! «queueing.c» 102 14 102 27 102 14),
                  .Aexpr,
                  .Astd "\xa76.5.3.2#3, sentence 5"] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 52599), .BTy_object .OTy_pointer)))
                 (.Expr
                   [.Aloc (rgc! «queueing.c» 102 15 102 27 102 20),
                    .Aexpr,
                    .Astd "\xa76.5.2.3#4, sentence 2"] <|
                 .Esseq
                   (.Pattern [] (.CaseBase (.some (a! 52600), .BTy_loaded .OTy_pointer)))
                   (.Expr [.Aloc (rg! «queueing.c» 102 15 102 20), .Aexpr] <|
                   .Ewseq
                     (.Pattern [] (.CaseBase (.some (a! 52604), .BTy_object .OTy_pointer)))
                     (.Expr
                       [.Aloc (rg! «queueing.c» 102 15 102 20), .Aexpr]
                       (.Epure (.Pexpr [] () (.PEsym (addr! "queue" 3422))))) <| .Expr [] <|
                   .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 102 15 102 20) () <|
                   .Load0
                     (.Pexpr [] () <| .PEval <| .Vctype <|
                     .Ctype
                       [.Aloc (rg! «queueing.h» 137 57 137 58),
                        .Aloc (rg! «queueing.c» 80 57 80 58)]
                       (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
                     (.Pexpr [] () (.PEsym (a! 52604)))
                     .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52600))) <|
                 [(.Pattern
                     []
                     (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                   .Expr [] <| .Epure <| .Pexpr [] () <|
                   .PEundef
                     (rgc! «queueing.c» 102 15 102 27 102 20)
                     (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                  (.Pattern [] <|
                   .CaseCtor
                     .Cspecified
                     [.Pattern [] (.CaseBase (.some (a! 52601), .BTy_object .OTy_pointer))],
                   .Expr [] <| .Epure <| .Pexpr [] () <|
                   .PEmember_shift
                     (.Pexpr [] () (.PEsym (a! 52601)))
                     (c! "prev_queue" 2191)
                     (.Identifier (rg! «queueing.c» 102 22 102 27) "count"))]) <|
               .Expr
                 []
                 (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 52599))])))]) <|
            .Expr [] <|
            .Eif
              (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
              .PEop
                .OpEq
                (.Pexpr [] () <|
                .PEcall
                  (.Sym (rt! "params_length" 18299737999929047716))
                  [.Pexpr [] () (.PEsym (a! 52594))])
                (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
              (.Expr [] <| .Epure <|
              .Pexpr
                [.Astd "\xa76.5.2.2#6, sentence 3"]
                ()
                (.PEundef (rg! «queueing.c» 102 3 102 28) .UB038_number_of_args)) <| .Expr [] <|
            .Eif
              (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 52595))) <| .Pexpr [] () <|
              .PEnot <| .Pexpr [] () <|
              .PEare_compatible
                (.Pexpr [] () (.PEval (.Vctype (.Ctype [.Aloc .unknown] .Void0))))
                (.Pexpr [] () (.PEsym (a! 52593))))
              (.Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.2.2#9"] () <|
              .PEundef (rg! «queueing.c» 102 3 102 28) .UB041_function_not_compatible) <|
            .Expr [] <|
            .Esseq
              (.Pattern [] <| .CaseBase <|
              (.some <|
               sym.Symbol Src.digest 52597 (.SD_FunArg (rgc! «queueing.c» 102 14 102 27 102 14) 0),
               .BTy_object .OTy_pointer))
              (.Expr [] <|
              .Elet
                (.Pattern [] (.CaseBase (.some (a! 52605), .BTy_ctype)))
                (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                [.Pexpr [] () (.PEsym (a! 52594)),
                 .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
              .Eif
                (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                .PEare_compatible
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                  .Pointer (.mk .false .false .false) <|
                  .Ctype
                    [.Aloc .unknown, .Atypedef (c! "atomic_t" 40)]
                    (.Struct (sym.Symbol Src.digest 36 (.SD_unnamed_tag .unknown))))
                  (.Pexpr [] () (.PEsym (a! 52605))))
                (.Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.2.2#9"] () <|
                .PEundef (rg! «queueing.c» 102 3 102 28) .UB041_function_not_compatible) <|
              .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 52606), .BTy_object .OTy_pointer)))
                (.Expr [] <| .Eaction <| .Paction .Pos <|
                .Action (rg! «queueing.c» 102 3 102 28) () <|
                .Create
                  (.Pexpr [] () <| .PEctor .Civalignof <|
                  [.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                   .Pointer (.mk .false .false .false) <|
                   .Ctype
                     [.Aloc .unknown, .Atypedef (c! "atomic_t" 40)]
                     (.Struct (sym.Symbol Src.digest 36 (.SD_unnamed_tag .unknown)))])
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                  .Pointer (.mk .false .false .false) <|
                  .Ctype
                    [.Aloc .unknown, .Atypedef (c! "atomic_t" 40)]
                    (.Struct (sym.Symbol Src.digest 36 (.SD_unnamed_tag .unknown))))
                  (.PrefFunArg
                    (rg! «queueing.c» 102 3 102 28)
                    "fa5a43434dcb33dc130b30cb8faeddf7"
                    0)) <| .Expr [] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [] <| .Eaction <| .Paction .Pos <|
                .Action (rg! «queueing.c» 102 3 102 28) () <|
                .Store0
                  .false
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                  .Pointer (.mk .false .false .false) <|
                  .Ctype
                    [.Aloc .unknown, .Atypedef (c! "atomic_t" 40)]
                    (.Struct (sym.Symbol Src.digest 36 (.SD_unnamed_tag .unknown))))
                  (.Pexpr [] () (.PEsym (a! 52606)))
                  (.Pexpr [] () (.PEsym (a! 52598)))
                  .NA)
                (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52606)))))) <| .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.some (a! 52607), .BTy_unit)))
              (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
              .Eccall
                ()
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype [.Aloc (rg! «queueing.c» 102 3 102 13)] <|
                .Pointer (.mk .false .false .false) <| .Ctype [] <|
                .Function
                  (.mk .false .false .false, .Ctype [.Aloc .unknown] .Void0)
                  [(.mk .false .false .false,
                    (.Ctype [.Aloc .unknown] <| .Pointer (.mk .false .false .false) <|
                     .Ctype
                       [.Aloc .unknown, .Atypedef (c! "atomic_t" 40)]
                       (.Struct (sym.Symbol Src.digest 36 (.SD_unnamed_tag .unknown))),
                     .false))]
                  .false)
                (.Pexpr [] () (.PEsym (a! 52592))) <|
              [.Pexpr [] () <| .PEsym <|
               sym.Symbol Src.digest 52597 (.SD_FunArg (rgc! «queueing.c» 102 14 102 27 102 14) 0)]) <|
            .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [] <| .Eaction <| .Paction .Pos <|
              .Action (rg! «queueing.c» 102 3 102 28) () <|
              .Kill
                (.Static0 <| .Ctype [.Aloc .unknown] <| .Pointer (.mk .false .false .false) <|
                .Ctype
                  [.Aloc .unknown, .Atypedef (c! "atomic_t" 40)]
                  (.Struct (sym.Symbol Src.digest 36 (.SD_unnamed_tag .unknown)))) <|
              .Pexpr [] () <| .PEsym <|
              sym.Symbol Src.digest 52597 (.SD_FunArg (rgc! «queueing.c» 102 14 102 27 102 14) 0))
              (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52607))))))
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc (rg! «queueing.c» 103 3 103 15), .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.some (a! 52609), .BTy_loaded .OTy_pointer)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr [.Aloc (rg! «queueing.c» 103 10 103 14), .Aexpr] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.some (a! 52608), .BTy_object .OTy_pointer)))
              (.Expr
                [.Aloc (rg! «queueing.c» 103 10 103 14), .Aexpr]
                (.Epure (.Pexpr [] () (.PEsym (addr! "tail" 3424))))) <| .Expr [] <| .Eaction <|
            .Paction .Pos <| .Action (rg! «queueing.c» 103 10 103 14) () <|
            .Load0
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc (rg! «queueing.c» 82 17 82 18)]
                (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
              (.Pexpr [] () (.PEsym (a! 52608)))
              .NA) <| .Expr [] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <|
            .Action (rg! «queueing.c» 103 3 103 15) () <|
            .Kill
              (.Static0 <|
              .Ctype
                [.Aloc (rg! «queueing.c» 82 17 82 18)]
                (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
              (.Pexpr [] () (.PEsym (addr! "tail" 3424)))) <| .Expr [] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <|
            .Action (rg! «queueing.c» 103 3 103 15) () <|
            .Kill
              (.Static0 <|
              .Ctype
                [.Aloc (rg! «queueing.c» 82 38 82 39)]
                (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
              (.Pexpr [] () (.PEsym (addr! "next" 3425))))
            (.Expr [] (.Erun () (c! "ret_52290" 52290) [.Pexpr [] () (.PEsym (a! 52609))])))
          (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
      .Expr [.Aloc (rg! «queueing.c» 100 2 104 3), .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit)))) <|
    .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «queueing.c» 105 2 105 21), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 105 2 105 21) () <|
        .Kill
          (.Static0 <|
          .Ctype
            [.Aloc (rg! «queueing.c» 82 17 82 18)]
            (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
          (.Pexpr [] () (.PEsym (addr! "tail" 3424)))) <| .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «queueing.c» 105 2 105 21) () <|
        .Kill
          (.Static0 <|
          .Ctype
            [.Aloc (rg! «queueing.c» 82 38 82 39)]
            (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
          (.Pexpr [] () (.PEsym (addr! "next" 3425)))) <| .Expr [] <|
      .Erun () (c! "ret_52290" 52290) <|
      [.Pexpr [] () <| .PEctor .Cspecified <|
       [.Pexpr [] () <| .PEval <| .Vobject <| .OVpointer <| .PV .Prov_none <| .PVnull <|
        .Ctype
          [.Aloc (rg! «queueing.h» 137 16 137 17), .Aloc (rg! «queueing.c» 80 16 80 17)]
          (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]]) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [] <| .Eaction <| .Paction .Pos <|
      .Action (rgr! «queueing.c» 81 1 106 2 82 18 82 22) () <|
      .Kill
        (.Static0 <|
        .Ctype
          [.Aloc (rg! «queueing.c» 82 17 82 18)]
          (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
        (.Pexpr [] () (.PEsym (addr! "tail" 3424)))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [] <| .Eaction <| .Paction .Pos <|
      .Action (rgr! «queueing.c» 81 1 106 2 82 39 82 43) () <|
      .Kill
        (.Static0 <|
        .Ctype
          [.Aloc (rg! «queueing.c» 82 38 82 39)]
          (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
        (.Pexpr [] () (.PEsym (addr! "next" 3425))))
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc (rgr! «queueing.c» 80 1 106 2 80 17 80 38)] <|
  .Esave
    (c! "ret_52290" 52290, .BTy_loaded .OTy_pointer)
    [(a! 52610,
      ((.BTy_loaded .OTy_pointer,
        .some <|
        (.Ctype
           [.Aloc (rg! «queueing.h» 137 16 137 17), .Aloc (rg! «queueing.c» 80 16 80 17)]
           (.Pointer (.mk .false .false .false) Ty.struct_sk_buff),
         .By_value)),
       .Pexpr
         [.Astd "\xa76.9.1#12"]
         ()
         (.PEundef (rgr! «queueing.c» 80 1 106 2 80 17 80 38) .UB088_reached_end_of_function)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52610)))))

end WireGuard.Queueing
