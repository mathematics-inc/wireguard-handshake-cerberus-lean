import Program.Types

/-! The C functions of `linux/drivers/net/wireguard/queueing.h` that the program uses, in source order: one definition per function, named as in C, holding its Core procedure. -/

set_option maxHeartbeats 0
set_option maxRecDepth 100000

open Src

namespace WireGuard.QueueingH

/--
```c
static inline struct sk_buff *wg_prev_queue_peek(struct prev_queue *queue)
```

`linux/drivers/net/wireguard/queueing.h:140` -/
def wg_prev_queue_peek : Procedure :=
  .Proc
    (rgr! «queueing.h» 140 1 146 2 140 31 140 49)
    (.some 2245)
    (.BTy_loaded .OTy_pointer)
    [(addr! "queue" 2243, .BTy_object .OTy_pointer)] <| .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc (rg! «queueing.h» 141 1 146 2), .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «queueing.h» 142 2 143 24), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 52244), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc (rgc! «queueing.h» 142 6 142 19 142 11),
           .Aexpr,
           .Avalue (.Ainteger (.Signed .Int_))] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.some (a! 52252), .BTy_loaded .OTy_pointer)))
          (.Expr [.Aloc (rgc! «queueing.h» 142 6 142 19 142 11), .Aexpr] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 52251), .BTy_object .OTy_pointer)))
            (.Expr
              [.Aloc (rgc! «queueing.h» 142 6 142 19 142 11),
               .Aexpr,
               .Astd "\xa76.5.2.3#4, sentence 2"] <|
            .Esseq
              (.Pattern [] (.CaseBase (.some (a! 52246), .BTy_loaded .OTy_pointer)))
              (.Expr [.Aloc (rg! «queueing.h» 142 6 142 11), .Aexpr] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 52250), .BTy_object .OTy_pointer)))
                (.Expr
                  [.Aloc (rg! «queueing.h» 142 6 142 11), .Aexpr]
                  (.Epure (.Pexpr [] () (.PEsym (addr! "queue" 2243))))) <| .Expr [] <| .Eaction <|
              .Paction .Pos <| .Action (rg! «queueing.h» 142 6 142 11) () <|
              .Load0
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype
                  [.Aloc (rg! «queueing.h» 140 68 140 69)]
                  (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
                (.Pexpr [] () (.PEsym (a! 52250)))
                .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52246))) <|
            [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
              .Expr [] <| .Epure <| .Pexpr [] () <|
              .PEundef
                (rgc! «queueing.h» 142 6 142 19 142 11)
                (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
             (.Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 52247), .BTy_object .OTy_pointer))],
              .Expr [] <| .Epure <| .Pexpr [] () <|
              .PEmember_shift
                (.Pexpr [] () (.PEsym (a! 52247)))
                (c! "prev_queue" 2191)
                (.Identifier (rg! «queueing.h» 142 13 142 19) "peeked"))]) <| .Expr [] <|
          .Eaction <| .Paction .Pos <| .Action (rgc! «queueing.h» 142 6 142 19 142 11) () <|
          .Load0
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype
              [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 31 35 32)]
              (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
            (.Pexpr [] () (.PEsym (a! 52251)))
            .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52252))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 52253), .BTy_object .OTy_pointer))],
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 52254), .BTy_boolean)))
            (.Expr [] <| .Ememop .PtrEq <|
            [.Pexpr [] () (.PEsym (a! 52253)),
             .Pexpr [.Astd "\xa76.5.9#5, sentence 2"] () <| .PEval <| .Vobject <| .OVpointer <|
             .PV .Prov_none <| .PVnull <|
             .Ctype
               [.Aloc (rgc! «queueing.h» 142 6 142 19 142 11)]
               (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]) <|
          .Expr [.Astd "\xa76.5.9#3"] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () (.PEsym (a! 52254)))
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
            (rgc! «queueing.h» 142 6 142 19 142 11)
            (.UB_CERB004_unspecified .UB_unspec_equality_ptr_vs_NULL))]) <| .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 52243), .BTy_boolean)))
        (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52244))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 52245), .BTy_object .OTy_integer))],
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 52245)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
            (.Pexpr [] () (.PEval .Vtrue))
            (.Pexpr [] () (.PEval .Vfalse))),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <| .End <|
          [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
           .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
      .Eif
        (.Pexpr [] () (.PEsym (a! 52243)))
        (.Expr [.Aloc (rg! «queueing.h» 143 3 143 24), .Astmt] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 52261), .BTy_loaded .OTy_pointer)))
          (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
          .Expr [.Aloc (rgc! «queueing.h» 143 10 143 23 143 15), .Aexpr] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 52260), .BTy_object .OTy_pointer)))
            (.Expr
              [.Aloc (rgc! «queueing.h» 143 10 143 23 143 15),
               .Aexpr,
               .Astd "\xa76.5.2.3#4, sentence 2"] <|
            .Esseq
              (.Pattern [] (.CaseBase (.some (a! 52255), .BTy_loaded .OTy_pointer)))
              (.Expr [.Aloc (rg! «queueing.h» 143 10 143 15), .Aexpr] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 52259), .BTy_object .OTy_pointer)))
                (.Expr
                  [.Aloc (rg! «queueing.h» 143 10 143 15), .Aexpr]
                  (.Epure (.Pexpr [] () (.PEsym (addr! "queue" 2243))))) <| .Expr [] <| .Eaction <|
              .Paction .Pos <| .Action (rg! «queueing.h» 143 10 143 15) () <|
              .Load0
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype
                  [.Aloc (rg! «queueing.h» 140 68 140 69)]
                  (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
                (.Pexpr [] () (.PEsym (a! 52259)))
                .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52255))) <|
            [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
              .Expr [] <| .Epure <| .Pexpr [] () <|
              .PEundef
                (rgc! «queueing.h» 143 10 143 23 143 15)
                (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
             (.Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 52256), .BTy_object .OTy_pointer))],
              .Expr [] <| .Epure <| .Pexpr [] () <|
              .PEmember_shift
                (.Pexpr [] () (.PEsym (a! 52256)))
                (c! "prev_queue" 2191)
                (.Identifier (rg! «queueing.h» 143 17 143 23) "peeked"))]) <| .Expr [] <|
          .Eaction <| .Paction .Pos <| .Action (rgc! «queueing.h» 143 10 143 23 143 15) () <|
          .Load0
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype
              [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 31 35 32)]
              (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
            (.Pexpr [] () (.PEsym (a! 52260)))
            .NA)
          (.Expr [] (.Erun () (c! "ret_52242" 52242) [.Pexpr [] () (.PEsym (a! 52261))]))) <|
      .Expr
        [.Aloc (rg! «queueing.h» 142 2 143 24), .Astmt]
        (.Epure (.Pexpr [] () (.PEval .Vunit)))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «queueing.h» 144 2 144 47), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc (rgc! «queueing.h» 144 2 144 46 144 16),
           .Aexpr,
           .Astd "\xa76.5.16#3, sentence 4"] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 52262), .BTy_object .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 52280), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
          [.Expr
             [.Aloc (rgc! «queueing.h» 144 2 144 15 144 7),
              .Aexpr,
              .Astd "\xa76.5.2.3#4, sentence 2"] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 52263), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc (rg! «queueing.h» 144 2 144 7), .Aexpr] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 52267), .BTy_object .OTy_pointer)))
               (.Expr
                 [.Aloc (rg! «queueing.h» 144 2 144 7), .Aexpr]
                 (.Epure (.Pexpr [] () (.PEsym (addr! "queue" 2243))))) <| .Expr [] <| .Eaction <|
             .Paction .Pos <| .Action (rg! «queueing.h» 144 2 144 7) () <|
             .Load0
               (.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc (rg! «queueing.h» 140 68 140 69)]
                 (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
               (.Pexpr [] () (.PEsym (a! 52267)))
               .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52263))) <|
           [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
             .Expr [] <| .Epure <| .Pexpr [] () <|
             .PEundef
               (rgc! «queueing.h» 144 2 144 15 144 7)
               (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
            (.Pattern [] <|
             .CaseCtor
               .Cspecified
               [.Pattern [] (.CaseBase (.some (a! 52264), .BTy_object .OTy_pointer))],
             .Expr [] <| .Epure <| .Pexpr [] () <|
             .PEmember_shift
               (.Pexpr [] () (.PEsym (a! 52264)))
               (c! "prev_queue" 2191)
               (.Identifier (rg! «queueing.h» 144 9 144 15) "peeked"))],
           .Expr
             [.Aloc (rg! «queueing.h» 144 18 144 46), .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
           .Esseq
             (.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] (.CaseBase (.some (a! 52269), .BTy_loaded .OTy_pointer)),
               .Pattern [] <| .CaseCtor .Ctuple <|
               [.Pattern [] (.CaseBase (.some (a! 52270), .BTy_ctype)),
                .Pattern [] (.CaseBase (.some (a! 52271), .BTy_list .BTy_ctype)),
                .Pattern [] (.CaseBase (.some (a! 52272), .BTy_boolean)),
                .Pattern [] (.CaseBase (.some (a! 52273), .BTy_boolean))]],
              .Pattern [] (.CaseBase (.some (a! 52275), .BTy_loaded .OTy_pointer))])
             (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
             [.Expr [] <|
              .Esseq
                (.Pattern [] (.CaseBase (.some (a! 52268), .BTy_loaded .OTy_pointer)))
                (.Expr [.Aloc (rg! «queueing.h» 144 18 144 39), .Aexpr] <| .Epure <| .Pexpr [] () <|
                .PEval <| .Vloaded <| .LVspecified <|
                .OVpointer (.PV .Prov_none (.PVfunction (c! "wg_prev_queue_dequeue" 2242)))) <|
              .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
              [.Pexpr [] () (.PEsym (a! 52268)),
               .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 52268))))],
              .Expr [.Aloc (rg! «queueing.h» 144 40 144 45), .Aexpr] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 52276), .BTy_object .OTy_pointer)))
                (.Expr
                  [.Aloc (rg! «queueing.h» 144 40 144 45), .Aexpr]
                  (.Epure (.Pexpr [] () (.PEsym (addr! "queue" 2243))))) <| .Expr [] <| .Eaction <|
              .Paction .Pos <| .Action (rg! «queueing.h» 144 40 144 45) () <|
              .Load0
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype
                  [.Aloc (rg! «queueing.h» 140 68 140 69)]
                  (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
                (.Pexpr [] () (.PEsym (a! 52276)))
                .NA]) <| .Expr [] <|
           .Eif
             (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
             .PEop
               .OpEq
               (.Pexpr [] () <|
               .PEcall
                 (.Sym (rt! "params_length" 18299737999929047716))
                 [.Pexpr [] () (.PEsym (a! 52271))])
               (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
             (.Expr [] <| .Epure <|
             .Pexpr
               [.Astd "\xa76.5.2.2#6, sentence 3"]
               ()
               (.PEundef (rg! «queueing.h» 144 18 144 46) .UB038_number_of_args)) <| .Expr [] <|
           .Eif
             (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 52272))) <| .Pexpr [] () <|
             .PEnot <| .Pexpr [] () <|
             .PEare_compatible
               (.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc (rg! «queueing.h» 137 16 137 17), .Aloc (rg! «queueing.c» 80 16 80 17)]
                 (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
               (.Pexpr [] () (.PEsym (a! 52270))))
             (.Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.2.2#9"] () <|
             .PEundef (rg! «queueing.h» 144 18 144 46) .UB041_function_not_compatible) <|
           .Expr [] <|
           .Esseq
             (.Pattern [] <| .CaseBase <|
             (.some (sym.Symbol Src.digest 52274 (.SD_FunArg (rg! «queueing.h» 144 40 144 45) 0)),
              .BTy_object .OTy_pointer))
             (.Expr [] <|
             .Elet
               (.Pattern [] (.CaseBase (.some (a! 52277), .BTy_ctype)))
               (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
               [.Pexpr [] () (.PEsym (a! 52271)),
                .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
             .Eif
               (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
               .PEare_compatible
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype
                   [.Aloc (rg! «queueing.h» 137 57 137 58),
                    .Aloc (rg! «queueing.c» 80 57 80 58)]
                   (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
                 (.Pexpr [] () (.PEsym (a! 52277))))
               (.Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.2.2#9"] () <|
               .PEundef (rg! «queueing.h» 144 18 144 46) .UB041_function_not_compatible) <|
             .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 52278), .BTy_object .OTy_pointer)))
               (.Expr [] <| .Eaction <| .Paction .Pos <|
               .Action (rg! «queueing.h» 144 18 144 46) () <|
               .Create
                 (.Pexpr [] () <| .PEctor .Civalignof <|
                 [.Pexpr [] () <| .PEval <| .Vctype <|
                  .Ctype
                    [.Aloc (rg! «queueing.h» 137 57 137 58),
                     .Aloc (rg! «queueing.c» 80 57 80 58)]
                    (.Pointer (.mk .false .false .false) Ty.struct_prev_queue)])
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype
                   [.Aloc (rg! «queueing.h» 137 57 137 58),
                    .Aloc (rg! «queueing.c» 80 57 80 58)]
                   (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
                 (.PrefFunArg
                   (rg! «queueing.h» 144 18 144 46)
                   "fa5a43434dcb33dc130b30cb8faeddf7"
                   0)) <| .Expr [] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.none, .BTy_unit)))
               (.Expr [] <| .Eaction <| .Paction .Pos <|
               .Action (rg! «queueing.h» 144 18 144 46) () <|
               .Store0
                 .false
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype
                   [.Aloc (rg! «queueing.h» 137 57 137 58),
                    .Aloc (rg! «queueing.c» 80 57 80 58)]
                   (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
                 (.Pexpr [] () (.PEsym (a! 52278)))
                 (.Pexpr [] () (.PEsym (a! 52275)))
                 .NA)
               (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52278)))))) <| .Expr [] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 52279), .BTy_loaded .OTy_pointer)))
             (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
             .Eccall
               ()
               (.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype [.Aloc (rg! «queueing.h» 144 18 144 39)] <|
               .Pointer (.mk .false .false .false) <| .Ctype [] <|
               .Function
                 (.mk .false .false .false,
                  .Ctype
                    [.Aloc (rg! «queueing.h» 137 16 137 17),
                     .Aloc (rg! «queueing.c» 80 16 80 17)]
                    (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                 [(.mk .false .false .false,
                   (.Ctype
                      [.Aloc (rg! «queueing.h» 137 57 137 58),
                       .Aloc (rg! «queueing.c» 80 57 80 58)]
                      (.Pointer (.mk .false .false .false) Ty.struct_prev_queue),
                    .false))]
                 .false)
               (.Pexpr [] () (.PEsym (a! 52269))) <|
             [.Pexpr [] () <|
              .PEsym (sym.Symbol Src.digest 52274 (.SD_FunArg (rg! «queueing.h» 144 40 144 45) 0))]) <|
           .Expr [] <|
           .Esseq
             (.Pattern [] (.CaseBase (.none, .BTy_unit)))
             (.Expr [] <| .Eaction <| .Paction .Pos <|
             .Action (rg! «queueing.h» 144 18 144 46) () <|
             .Kill
               (.Static0 <|
               .Ctype
                 [.Aloc (rg! «queueing.h» 137 57 137 58), .Aloc (rg! «queueing.c» 80 57 80 58)]
                 (.Pointer (.mk .false .false .false) Ty.struct_prev_queue)) <| .Pexpr [] () <|
             .PEsym (sym.Symbol Src.digest 52274 (.SD_FunArg (rg! «queueing.h» 144 40 144 45) 0)))
             (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52279)))))]) <| .Expr [] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
          .Action (rgc! «queueing.h» 144 2 144 46 144 16) () <|
          .Store0
            .false
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype
              [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 31 35 32)]
              (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
            (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 52262)))
            (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52280)))
            .NA)
          (.Expr [] (.Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52280))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «queueing.h» 145 2 145 23), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 52287), .BTy_loaded .OTy_pointer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc (rgc! «queueing.h» 145 9 145 22 145 14), .Aexpr] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.some (a! 52286), .BTy_object .OTy_pointer)))
          (.Expr
            [.Aloc (rgc! «queueing.h» 145 9 145 22 145 14),
             .Aexpr,
             .Astd "\xa76.5.2.3#4, sentence 2"] <|
          .Esseq
            (.Pattern [] (.CaseBase (.some (a! 52281), .BTy_loaded .OTy_pointer)))
            (.Expr [.Aloc (rg! «queueing.h» 145 9 145 14), .Aexpr] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.some (a! 52285), .BTy_object .OTy_pointer)))
              (.Expr
                [.Aloc (rg! «queueing.h» 145 9 145 14), .Aexpr]
                (.Epure (.Pexpr [] () (.PEsym (addr! "queue" 2243))))) <| .Expr [] <| .Eaction <|
            .Paction .Pos <| .Action (rg! «queueing.h» 145 9 145 14) () <|
            .Load0
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc (rg! «queueing.h» 140 68 140 69)]
                (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
              (.Pexpr [] () (.PEsym (a! 52285)))
              .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52281))) <|
          [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
            .Expr [] <| .Epure <| .Pexpr [] () <|
            .PEundef
              (rgc! «queueing.h» 145 9 145 22 145 14)
              (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
           (.Pattern [] <|
            .CaseCtor
              .Cspecified
              [.Pattern [] (.CaseBase (.some (a! 52282), .BTy_object .OTy_pointer))],
            .Expr [] <| .Epure <| .Pexpr [] () <|
            .PEmember_shift
              (.Pexpr [] () (.PEsym (a! 52282)))
              (c! "prev_queue" 2191)
              (.Identifier (rg! «queueing.h» 145 16 145 22) "peeked"))]) <| .Expr [] <| .Eaction <|
        .Paction .Pos <| .Action (rgc! «queueing.h» 145 9 145 22 145 14) () <|
        .Load0
          (.Pexpr [] () <| .PEval <| .Vctype <|
          .Ctype
            [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 35 31 35 32)]
            (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
          (.Pexpr [] () (.PEsym (a! 52286)))
          .NA)
        (.Expr [] (.Erun () (c! "ret_52242" 52242) [.Pexpr [] () (.PEsym (a! 52287))])))
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc (rgr! «queueing.h» 140 1 146 2 140 31 140 49)] <|
  .Esave
    (c! "ret_52242" 52242, .BTy_loaded .OTy_pointer)
    [(a! 52288,
      ((.BTy_loaded .OTy_pointer,
        .some <|
        (.Ctype
           [.Aloc (rg! «queueing.h» 140 30 140 31)]
           (.Pointer (.mk .false .false .false) Ty.struct_sk_buff),
         .By_value)),
       .Pexpr
         [.Astd "\xa76.9.1#12"]
         ()
         (.PEundef (rgr! «queueing.h» 140 1 146 2 140 31 140 49) .UB088_reached_end_of_function)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52288)))))

end WireGuard.QueueingH
