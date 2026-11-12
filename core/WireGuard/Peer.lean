import Program.Types

/-! The C functions of `linux/drivers/net/wireguard/peer.c` that the program uses, in source order: one definition per function, named as in C, holding its Core procedure. -/

set_option maxHeartbeats 0
set_option maxRecDepth 100000

open Src

namespace WireGuard.Peer

/--
```c
struct wg_peer *wg_peer_get_maybe_zero(struct wg_peer *peer)
```

`linux/drivers/net/wireguard/peer.c:71` -/
def wg_peer_get_maybe_zero : Procedure :=
  .Proc
    (rgr! «peer.c» 71 1 78 2 71 17 71 39)
    (.some 3312)
    (.BTy_loaded .OTy_pointer)
    [(addr! "peer" 3311, .BTy_object .OTy_pointer)] <| .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc (rg! «peer.c» 72 1 78 2), .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «peer.c» 73 2 73 49), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Aloc (rg! «peer.c» 73 2 73 49), .Astmt, .Alabel (.LAloop 3314)] <|
        .Esave (c! "do_52973" 52973, .BTy_unit) [] <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc (rg! «peer.c» 73 2 73 49), .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr
              [.Aloc (rg! «peer.c» 73 5 73 8), .Astmt]
              (.Epure (.Pexpr [] () (.PEval .Vunit)))) <| .Expr [] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [.Aloc (rg! «peer.c» 73 2 73 49), .Astmt, .Alabel (.LAloop_continue 3314)] <|
            .Esave (c! "continue_52971" 52971, .BTy_unit) [] <|
            .Expr
              [.Aloc (rg! «peer.c» 73 2 73 49), .Astmt]
              (.Epure (.Pexpr [] () (.PEval .Vunit))))
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 52975), .BTy_loaded .OTy_integer)))
          (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
          .Expr
            [.Aloc (rgc! «peer.c» 73 16 73 47 73 18),
             .Aexpr,
             .Avalue (.Ainteger (.Signed .Int_)),
             .Astd "6.5.13#3",
             .Astd "6.5.13#4",
             .Aexpr,
             .Avalue (.Ainteger (.Signed .Int_))] <|
          .Esseq
            (.Pattern [] (.CaseBase (.some (a! 52986), .BTy_loaded .OTy_integer)))
            (.Expr
              [.Aloc (rg! «peer.c» 73 16 73 17), .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
            .Ewseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] (.CaseBase (.some (a! 52976), .BTy_loaded .OTy_integer)),
               .Pattern [] (.CaseBase (.some (a! 52977), .BTy_loaded .OTy_integer))])
              (.Expr [] <| .Eunseq <|
              [.Expr
                 [.Aloc (rg! «peer.c» 73 16 73 17), .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
               .Ewseq
                 (.Pattern [] <| .CaseCtor .Ctuple <|
                 [.Pattern [] (.CaseBase (.some (a! 52981), .BTy_loaded .OTy_integer)),
                  .Pattern [] (.CaseBase (.some (a! 52982), .BTy_loaded .OTy_integer))])
                 (.Expr [] <| .Eunseq <|
                 [.Expr
                    [.Aloc (rg! «peer.c» 73 16 73 17),
                     .Aexpr,
                     .Avalue (.Ainteger (.Signed .Int_))] <|
                  .Epure
                    (.Pexpr
                      []
                      ()
                      (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))),
                  .Expr
                    [.Aloc (rg! «peer.c» 73 16 73 17),
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
                   [.Pexpr [] () (.PEsym (a! 52981)), .Pexpr [] () (.PEsym (a! 52982))]) <|
               [(.Pattern [] <| .CaseCtor .Ctuple <|
                 [.Pattern [] <|
                  .CaseCtor
                    .Cspecified
                    [.Pattern [] (.CaseBase (.some (a! 52983), .BTy_object .OTy_integer))],
                  .Pattern [] <|
                  .CaseCtor
                    .Cspecified
                    [.Pattern [] (.CaseBase (.some (a! 52984), .BTy_object .OTy_integer))]],
                 .Pexpr [.Astd "\xa76.5.9#3"] () <|
                 .PEif
                   (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                   .PEop
                     .OpEq
                     (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                     .PEcall
                       (.Sym (rt! "conv_int" 15837442492999787586))
                       [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52983))]) <|
                   .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                   .PEcall
                     (.Sym (rt! "conv_int" 15837442492999787586))
                     [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52984))])
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
                 .Ctype [.Aloc (rg! «peer.c» 73 16 73 17)] (.Basic (.Integer (.Signed .Int_))))],
               .Expr
                 [.Aloc (rg! «peer.c» 73 16 73 17), .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
               .Epure
                 (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
            .Expr [] <| .Epure <| .Pexpr [] () <|
            .PEcase
              (.Pexpr
                []
                ()
                (.PEctor
                  .Ctuple
                  [.Pexpr [] () (.PEsym (a! 52976)), .Pexpr [] () (.PEsym (a! 52977))])) <|
            [(.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 52978), .BTy_object .OTy_integer))],
               .Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 52979), .BTy_object .OTy_integer))]],
              .Pexpr [.Astd "\xa76.5.9#3"] () <|
              .PEif
                (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                .PEop
                  .OpEq
                  (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                  .PEcall
                    (.Sym (rt! "conv_int" 15837442492999787586))
                    [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52978))]) <|
                .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                .PEcall
                  (.Sym (rt! "conv_int" 15837442492999787586))
                  [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52979))])
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
              .Ctype [.Aloc (rg! «peer.c» 73 16 73 17)] (.Basic (.Integer (.Signed .Int_))))]) <|
          .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52986))) <|
          [(.Pattern [] <|
            .CaseCtor
              .Cspecified
              [.Pattern [] (.CaseBase (.some (a! 52987), .BTy_object .OTy_integer))],
            .Expr [] <|
            .Eif
              (.Pexpr [] () <|
              .PEop
                .OpEq
                (.Pexpr [] () (.PEsym (a! 52987)))
                (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
              (.Expr [] <|
              .Esseq
                (.Pattern [] (.CaseBase (.some (a! 52988), .BTy_loaded .OTy_integer)))
                (.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                .Epure
                  (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))) <|
              .Expr [] <| .Epure <| .Pexpr [] () <|
              .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc (rgc! «peer.c» 73 16 73 47 73 18)]
                 (.Basic (.Integer (.Signed .Int_))),
               .Pexpr [] () (.PEsym (a! 52988))]) <| .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.some (a! 53002), .BTy_loaded .OTy_integer)))
              (.Expr
                [.Aloc (rg! «peer.c» 73 21 73 47), .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
              .Ewseq
                (.Pattern [] <| .CaseCtor .Ctuple <|
                [.Pattern [] (.CaseBase (.some (a! 52989), .BTy_loaded .OTy_integer)),
                 .Pattern [] (.CaseBase (.some (a! 52990), .BTy_loaded .OTy_integer))])
                (.Expr [] <| .Eunseq <|
                [.Expr
                   [.Aloc (rg! «peer.c» 73 21 73 47), .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                 .Ewseq
                   (.Pattern [] <| .CaseCtor .Ctuple <|
                   [.Pattern [] (.CaseBase (.some (a! 52994), .BTy_loaded .OTy_integer)),
                    .Pattern [] (.CaseBase (.some (a! 52995), .BTy_loaded .OTy_integer))])
                   (.Expr [] <| .Eunseq <|
                   [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                    .Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))),
                    .Expr
                      [.Aloc (rg! «peer.c» 73 23 73 46),
                       .Aexpr,
                       .Avalue (.Ainteger (.Signed .Int_))] <|
                    .Esseq
                      (.Pattern [] (.CaseBase (.some (a! 52999), .BTy_loaded .OTy_pointer)))
                      (.Expr [.Aloc (rg! «peer.c» 73 23 73 44), .Aexpr] <| .Epure <| .Pexpr [] () <|
                      .PEval <| .Vloaded <| .LVspecified <|
                      .OVpointer (.PV .Prov_none (.PVfunction (c! "rcu_read_lock_bh_held" 598)))) <|
                    .Expr [] <|
                    .Elet
                      (.Pattern [] <| .CaseCtor .Ctuple <|
                      [.Pattern [] (.CaseBase (.some (a! 53000), .BTy_ctype)),
                       .Pattern [] (.CaseBase (.some (a! 53001), .BTy_list .BTy_ctype)),
                       .Pattern [] (.CaseBase (.none, .BTy_boolean)),
                       .Pattern [] (.CaseBase (.none, .BTy_boolean))])
                      (.Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 52999))))) <|
                    .Expr [] <|
                    .Eif
                      (.Pexpr [] () <|
                      .PEop
                        .OpEq
                        (.Pexpr [] () <|
                        .PEcall
                          (.Sym (rt! "params_length" 18299737999929047716))
                          [.Pexpr [] () (.PEsym (a! 53001))])
                        (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                      (.Expr [] <|
                      .Eif
                        (.Pexpr [] () <|
                        .PEare_compatible
                          (.Pexpr [] () <|
                          .PEval
                            (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_))))))
                          (.Pexpr [] () (.PEsym (a! 53000))))
                        (.Expr [] <|
                        .Eccall
                          ()
                          (.Pexpr [] () <| .PEval <| .Vctype <|
                          .Ctype [.Aloc (rg! «peer.c» 73 23 73 44)] <|
                          .Pointer (.mk .false .false .false) <| .Ctype [] <|
                          .Function
                            (.mk .false .false .false,
                             .Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_))))
                            []
                            .false)
                          (.Pexpr [] () (.PEsym (a! 52999)))
                          []) <| .Expr [] <| .Epure <|
                      .Pexpr
                        [.Astd "\xa76.5.2.2#9"]
                        ()
                        (.PEundef (rg! «peer.c» 73 23 73 46) .UB041_function_not_compatible)) <|
                    .Expr [] <| .Epure <|
                    .Pexpr
                      [.Astd "\xa76.5.2.2#6, sentence 3"]
                      ()
                      (.PEundef (rg! «peer.c» 73 23 73 46) .UB038_number_of_args)]) <| .Expr [] <|
                 .Epure <| .Pexpr [] () <|
                 .PEcase
                   (.Pexpr [] () <|
                   .PEctor
                     .Ctuple
                     [.Pexpr [] () (.PEsym (a! 52994)), .Pexpr [] () (.PEsym (a! 52995))]) <|
                 [(.Pattern [] <| .CaseCtor .Ctuple <|
                   [.Pattern [] <|
                    .CaseCtor
                      .Cspecified
                      [.Pattern [] (.CaseBase (.some (a! 52996), .BTy_object .OTy_integer))],
                    .Pattern [] <|
                    .CaseCtor
                      .Cspecified
                      [.Pattern [] (.CaseBase (.some (a! 52997), .BTy_object .OTy_integer))]],
                   .Pexpr [.Astd "\xa76.5.9#3"] () <|
                   .PEif
                     (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                     .PEop
                       .OpEq
                       (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                       .PEcall
                         (.Sym (rt! "conv_int" 15837442492999787586))
                         [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52996))]) <|
                     .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                     .PEcall
                       (.Sym (rt! "conv_int" 15837442492999787586))
                       [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52997))])
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
                   .Ctype [.Aloc (rg! «peer.c» 73 21 73 47)] (.Basic (.Integer (.Signed .Int_))))],
                 .Expr
                   [.Aloc (rg! «peer.c» 73 21 73 47), .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                 .Epure
                   (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
              .Expr [] <| .Epure <| .Pexpr [] () <|
              .PEcase
                (.Pexpr [] () <|
                .PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 52989)), .Pexpr [] () (.PEsym (a! 52990))]) <|
              [(.Pattern [] <| .CaseCtor .Ctuple <|
                [.Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 52991), .BTy_object .OTy_integer))],
                 .Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 52992), .BTy_object .OTy_integer))]],
                .Pexpr [.Astd "\xa76.5.9#3"] () <|
                .PEif
                  (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <| .PEnot <| .Pexpr [] () <|
                  .PEop
                    .OpEq
                    (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                    .PEcall
                      (.Sym (rt! "conv_int" 15837442492999787586))
                      [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52991))]) <|
                  .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                  .PEcall
                    (.Sym (rt! "conv_int" 15837442492999787586))
                    [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52992))])
                  (.Pexpr [] () <|
                  .PEctor
                    .Cspecified
                    [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                .Pexpr [] () <|
                .PEctor
                  .Cspecified
                  [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
               (.Pattern
                  []
                  (.CaseBase
                    (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer])),
                .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                .Ctype [.Aloc (rg! «peer.c» 73 21 73 47)] (.Basic (.Integer (.Signed .Int_))))]) <|
            .Expr [] <| .Epure <| .Pexpr [] () <|
            .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
            [.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype [.Aloc (rgc! «peer.c» 73 16 73 47 73 18)] (.Basic (.Integer (.Signed .Int_))),
             .Pexpr [] () (.PEsym (a! 53002))]),
           (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
            .Expr [] <| .Epure <| .Pexpr [] () <|
            .PEundef
              (rgc! «peer.c» 73 16 73 47 73 18)
              (.UB_CERB004_unspecified .UB_unspec_conditional))]) <| .Expr [] <|
        .Ecase (.Pexpr [] () (.PEsym (a! 52975))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 52974), .BTy_object .OTy_integer))],
          .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 52974)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
            (.Expr [] (.Erun () (c! "do_52973" 52973) []))
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <|
          .Epure (.Pexpr [] () (.PEundef (rg! «peer.c» 73 2 73 49) (.DUMMY "unspecified AilSdo"))))]) <|
      .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Aloc (rg! «peer.c» 73 2 73 49), .Astmt, .Alabel (.LAloop_break 3314)] <|
        .Esave
          (c! "break_52972" 52972, .BTy_unit)
          []
          (.Expr
            [.Aloc (rg! «peer.c» 73 2 73 49), .Astmt]
            (.Epure (.Pexpr [] () (.PEval .Vunit)))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «peer.c» 75 2 76 22), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 53004), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc (rg! «peer.c» 75 6 75 65), .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 53006), .BTy_loaded .OTy_integer)),
           .Pattern [] (.CaseBase (.some (a! 53007), .BTy_loaded .OTy_integer))])
          (.Expr [] <| .Eunseq <|
          [.Expr
             [.Aloc (rg! «peer.c» 75 6 75 65),
              .Aexpr,
              .Avalue (.Ainteger (.Signed .Long)),
              .Astd "\xa76.5.4"] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 53011), .BTy_loaded .OTy_integer)))
             (.Expr
               [.Aloc (rgc! «peer.c» 75 13 75 64 75 13),
                .Aexpr,
                .Avalue (.Ainteger (.Signed .Int_))] <|
             .Ewseq
               (.Pattern [] <| .CaseCtor .Ctuple <|
               [.Pattern [] (.CaseBase (.some (a! 53013), .BTy_loaded .OTy_integer)),
                .Pattern [] (.CaseBase (.some (a! 53014), .BTy_loaded .OTy_integer))])
               (.Expr [] <| .Eunseq <|
               [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                .Epure
                  (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))),
                .Expr
                  [.Aloc (rgc! «peer.c» 75 14 75 64 75 14),
                   .Aexpr,
                   .Avalue (.Ainteger (.Signed .Int_))] <|
                .Ewseq
                  (.Pattern [] <| .CaseCtor .Ctuple <|
                  [.Pattern [] (.CaseBase (.some (a! 53018), .BTy_loaded .OTy_integer)),
                   .Pattern [] (.CaseBase (.some (a! 53019), .BTy_loaded .OTy_integer))])
                  (.Expr [] <| .Eunseq <|
                  [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                   .Epure
                     (.Pexpr
                       []
                       ()
                       (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))),
                   .Expr
                     [.Aloc (rg! «peer.c» 75 15 75 64),
                      .Aexpr,
                      .Avalue (.Ainteger (.Signed .Int_)),
                      .Astd "6.5.14#3",
                      .Astd "6.5.14#4",
                      .Aexpr,
                      .Avalue (.Ainteger (.Signed .Int_))] <|
                   .Esseq
                     (.Pattern [] (.CaseBase (.some (a! 53037), .BTy_loaded .OTy_integer)))
                     (.Expr
                       [.Aloc (rgc! «peer.c» 75 16 75 21 75 16),
                        .Aexpr,
                        .Avalue (.Ainteger (.Signed .Int_))] <|
                     .Ewseq
                       (.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern [] (.CaseBase (.some (a! 53023), .BTy_loaded .OTy_integer)),
                        .Pattern [] (.CaseBase (.some (a! 53024), .BTy_loaded .OTy_integer))])
                       (.Expr [] <| .Eunseq <|
                       [.Expr
                          [.Aloc (rgc! «peer.c» 75 16 75 21 75 16),
                           .Aexpr,
                           .Avalue (.Ainteger (.Signed .Int_))] <|
                        .Ewseq
                          (.Pattern [] <| .CaseCtor .Ctuple <|
                          [.Pattern [] (.CaseBase (.some (a! 53028), .BTy_loaded .OTy_integer)),
                           .Pattern [] (.CaseBase (.some (a! 53029), .BTy_loaded .OTy_integer))])
                          (.Expr [] <| .Eunseq <|
                          [.Expr
                             [.Aloc (rgc! «peer.c» 75 16 75 21 75 16),
                              .Aexpr,
                              .Avalue (.Ainteger (.Signed .Int_))] <|
                           .Ewseq
                             (.Pattern [] (.CaseBase (.some (a! 53034), .BTy_loaded .OTy_pointer)))
                             (.Expr [.Aloc (rg! «peer.c» 75 17 75 21), .Aexpr] <|
                             .Ewseq
                               (.Pattern [] (.CaseBase (.some (a! 53033), .BTy_object .OTy_pointer)))
                               (.Expr
                                 [.Aloc (rg! «peer.c» 75 17 75 21), .Aexpr]
                                 (.Epure (.Pexpr [] () (.PEsym (addr! "peer" 3311))))) <|
                             .Expr [] <| .Eaction <| .Paction .Pos <|
                             .Action (rg! «peer.c» 75 17 75 21) () <|
                             .Load0
                               (.Pexpr [] () <| .PEval <| .Vctype <|
                               .Ctype
                                 [.Aloc (rg! "linux/drivers/net/wireguard/peer.h" 73 56 73 57),
                                  .Aloc (rg! «peer.c» 71 55 71 56)]
                                 (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
                               (.Pexpr [] () (.PEsym (a! 53033)))
                               .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 53034))) <|
                           [(.Pattern [] <|
                             .CaseCtor
                               .Cspecified
                               [.Pattern [] (.CaseBase (.some (a! 53035), .BTy_object .OTy_pointer))],
                             .Expr [] <|
                             .Ewseq
                               (.Pattern [] (.CaseBase (.some (a! 53036), .BTy_boolean)))
                               (.Expr [] <| .Ememop .PtrEq <|
                               [.Pexpr [] () (.PEsym (a! 53035)),
                                .Pexpr [.Astd "\xa76.5.9#5, sentence 2"] () <| .PEval <| .Vobject <|
                                .OVpointer <| .PV .Prov_none <| .PVnull <|
                                .Ctype
                                  [.Aloc (rg! «peer.c» 75 17 75 21)]
                                  (.Pointer (.mk .false .false .false) Ty.struct_wg_peer)]) <|
                             .Expr [.Astd "\xa76.5.9#3"] <| .Epure <| .Pexpr [] () <|
                             .PEif
                               (.Pexpr [] () (.PEsym (a! 53036)))
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
                               (rgc! «peer.c» 75 16 75 21 75 16)
                               (.UB_CERB004_unspecified .UB_unspec_equality_ptr_vs_NULL))],
                           .Expr
                             [.Aloc (rgc! «peer.c» 75 16 75 21 75 16),
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
                            [.Pexpr [] () (.PEsym (a! 53028)), .Pexpr [] () (.PEsym (a! 53029))]) <|
                        [(.Pattern [] <| .CaseCtor .Ctuple <|
                          [.Pattern [] <|
                           .CaseCtor
                             .Cspecified
                             [.Pattern [] (.CaseBase (.some (a! 53030), .BTy_object .OTy_integer))],
                           .Pattern [] <|
                           .CaseCtor
                             .Cspecified
                             [.Pattern [] (.CaseBase (.some (a! 53031), .BTy_object .OTy_integer))]],
                          .Pexpr [.Astd "\xa76.5.9#3"] () <|
                          .PEif
                            (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                            .PEop
                              .OpEq
                              (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                              .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                              [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                               .Pexpr [] () (.PEsym (a! 53030))]) <|
                            .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                            .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                            [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                             .Pexpr [] () (.PEsym (a! 53031))])
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
                            [.Aloc (rgc! «peer.c» 75 16 75 21 75 16)]
                            (.Basic (.Integer (.Signed .Int_))))],
                        .Expr
                          [.Aloc (rgc! «peer.c» 75 16 75 21 75 16),
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
                         [.Pexpr [] () (.PEsym (a! 53023)), .Pexpr [] () (.PEsym (a! 53024))]) <|
                     [(.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern [] <|
                        .CaseCtor
                          .Cspecified
                          [.Pattern [] (.CaseBase (.some (a! 53025), .BTy_object .OTy_integer))],
                        .Pattern [] <|
                        .CaseCtor
                          .Cspecified
                          [.Pattern [] (.CaseBase (.some (a! 53026), .BTy_object .OTy_integer))]],
                       .Pexpr [.Astd "\xa76.5.9#3"] () <|
                       .PEif
                         (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                         .PEop
                           .OpEq
                           (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                           .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                           [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                            .Pexpr [] () (.PEsym (a! 53025))]) <|
                         .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                         .PEcall
                           (.Sym (rt! "conv_int" 15837442492999787586))
                           [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                            .Pexpr [] () (.PEsym (a! 53026))])
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
                         [.Aloc (rgc! «peer.c» 75 16 75 21 75 16)]
                         (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <|
                   .Ecase (.Pexpr [] () (.PEsym (a! 53037))) <|
                   [(.Pattern [] <|
                     .CaseCtor
                       .Cspecified
                       [.Pattern [] (.CaseBase (.some (a! 53038), .BTy_object .OTy_integer))],
                     .Expr [] <|
                     .Eif
                       (.Pexpr [] () <|
                       .PEop
                         .OpEq
                         (.Pexpr [] () (.PEsym (a! 53038)))
                         (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                       (.Expr [] <|
                       .Esseq
                         (.Pattern [] (.CaseBase (.some (a! 53066), .BTy_loaded .OTy_integer)))
                         (.Expr
                           [.Aloc (rgc! «peer.c» 75 25 75 63 75 25),
                            .Aexpr,
                            .Avalue (.Ainteger (.Signed .Int_))] <|
                         .Ewseq
                           (.Pattern [] <| .CaseCtor .Ctuple <|
                           [.Pattern [] (.CaseBase (.some (a! 53039), .BTy_loaded .OTy_integer)),
                            .Pattern [] (.CaseBase (.some (a! 53040), .BTy_loaded .OTy_integer))])
                           (.Expr [] <| .Eunseq <|
                           [.Expr
                              [.Aloc (rgc! «peer.c» 75 25 75 63 75 25),
                               .Aexpr,
                               .Avalue (.Ainteger (.Signed .Int_))] <|
                            .Ewseq
                              (.Pattern [] <| .CaseCtor .Ctuple <|
                              [.Pattern [] (.CaseBase (.some (a! 53044), .BTy_loaded .OTy_integer)),
                               .Pattern [] (.CaseBase (.some (a! 53045), .BTy_loaded .OTy_integer))])
                              (.Expr [] <| .Eunseq <|
                              [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                               .Epure <|
                               .Pexpr
                                 []
                                 ()
                                 (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))),
                               .Expr
                                 [.Aloc (rg! «peer.c» 75 26 75 63),
                                  .Aexpr,
                                  .Avalue (.Ainteger (.Signed .Int_)),
                                  .Astd "\xa76.5.2.2#10, sentence 1"] <|
                               .Esseq
                                 (.Pattern [] <| .CaseCtor .Ctuple <|
                                 [.Pattern [] <| .CaseCtor .Ctuple <|
                                  [.Pattern [] (.CaseBase (.some (a! 53050), .BTy_loaded .OTy_pointer)),
                                   .Pattern [] <| .CaseCtor .Ctuple <|
                                   [.Pattern [] (.CaseBase (.some (a! 53051), .BTy_ctype)),
                                    .Pattern [] (.CaseBase (.some (a! 53052), .BTy_list .BTy_ctype)),
                                    .Pattern [] (.CaseBase (.some (a! 53053), .BTy_boolean)),
                                    .Pattern [] (.CaseBase (.some (a! 53054), .BTy_boolean))]],
                                  .Pattern [] (.CaseBase (.some (a! 53056), .BTy_loaded .OTy_pointer))])
                                 (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
                                 [.Expr [] <|
                                  .Esseq
                                    (.Pattern [] (.CaseBase (.some (a! 53049), .BTy_loaded .OTy_pointer)))
                                    (.Expr [.Aloc (rg! «peer.c» 75 26 75 46), .Aexpr] <| .Epure <|
                                    .Pexpr [] () <| .PEval <| .Vloaded <| .LVspecified <|
                                    .OVpointer
                                      (.PV .Prov_none (.PVfunction (c! "kref_get_unless_zero" 580)))) <|
                                  .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
                                  [.Pexpr [] () (.PEsym (a! 53049)),
                                   .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 53049))))],
                                  .Expr
                                    [.Aloc (rgc! «peer.c» 75 47 75 62 75 47),
                                     .Aexpr,
                                     .Astd "\xa76.5.3.2#3, sentence 5"] <|
                                  .Ewseq
                                    (.Pattern [] (.CaseBase (.some (a! 53057), .BTy_object .OTy_pointer)))
                                    (.Expr
                                      [.Aloc (rgc! «peer.c» 75 48 75 62 75 52),
                                       .Aexpr,
                                       .Astd "\xa76.5.2.3#4, sentence 2"] <|
                                    .Esseq
                                      (.Pattern [] (.CaseBase (.some (a! 53058), .BTy_loaded .OTy_pointer)))
                                      (.Expr [.Aloc (rg! «peer.c» 75 48 75 52), .Aexpr] <|
                                      .Ewseq
                                        (.Pattern [] (.CaseBase (.some (a! 53062), .BTy_object .OTy_pointer)))
                                        (.Expr
                                          [.Aloc (rg! «peer.c» 75 48 75 52), .Aexpr]
                                          (.Epure (.Pexpr [] () (.PEsym (addr! "peer" 3311))))) <|
                                      .Expr [] <| .Eaction <| .Paction .Pos <|
                                      .Action (rg! «peer.c» 75 48 75 52) () <|
                                      .Load0
                                        (.Pexpr [] () <| .PEval <| .Vctype <|
                                        .Ctype
                                          [.Aloc (rg! "linux/drivers/net/wireguard/peer.h" 73 56 73 57),
                                           .Aloc (rg! «peer.c» 71 55 71 56)]
                                          (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
                                        (.Pexpr [] () (.PEsym (a! 53062)))
                                        .NA) <| .Expr [] <|
                                    .Ecase (.Pexpr [] () (.PEsym (a! 53058))) <|
                                    [(.Pattern
                                        []
                                        (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                                      .Expr [] <| .Epure <| .Pexpr [] () <|
                                      .PEundef
                                        (rgc! «peer.c» 75 48 75 62 75 52)
                                        (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                                     (.Pattern [] <|
                                      .CaseCtor
                                        .Cspecified
                                        [.Pattern [] (.CaseBase (.some (a! 53059), .BTy_object .OTy_pointer))],
                                      .Expr [] <| .Epure <| .Pexpr [] () <|
                                      .PEmember_shift
                                        (.Pexpr [] () (.PEsym (a! 53059)))
                                        (c! "wg_peer" 1602)
                                        (.Identifier (rg! «peer.c» 75 54 75 62) "refcount"))]) <|
                                  .Expr [] <|
                                  .Epure
                                    (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 53057))]))]) <|
                               .Expr [] <|
                               .Eif
                                 (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                                 .PEop
                                   .OpEq
                                   (.Pexpr [] () <|
                                   .PEcall
                                     (.Sym (rt! "params_length" 18299737999929047716))
                                     [.Pexpr [] () (.PEsym (a! 53052))])
                                   (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
                                 (.Expr [] <| .Epure <|
                                 .Pexpr
                                   [.Astd "\xa76.5.2.2#6, sentence 3"]
                                   ()
                                   (.PEundef (rg! «peer.c» 75 26 75 63) .UB038_number_of_args)) <|
                               .Expr [] <|
                               .Eif
                                 (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 53053))) <|
                                 .Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                                 .PEare_compatible
                                   (.Pexpr [] () <|
                                   .PEval
                                     (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_))))))
                                   (.Pexpr [] () (.PEsym (a! 53051))))
                                 (.Expr [] <| .Epure <|
                                 .Pexpr
                                   [.Astd "\xa76.5.2.2#9"]
                                   ()
                                   (.PEundef (rg! «peer.c» 75 26 75 63) .UB041_function_not_compatible)) <|
                               .Expr [] <|
                               .Esseq
                                 (.Pattern [] <| .CaseBase <|
                                 (.some <|
                                  sym.Symbol
                                    Src.digest
                                    53055
                                    (.SD_FunArg (rgc! «peer.c» 75 47 75 62 75 47) 0),
                                  .BTy_object .OTy_pointer))
                                 (.Expr [] <|
                                 .Elet
                                   (.Pattern [] (.CaseBase (.some (a! 53063), .BTy_ctype)))
                                   (.Pexpr [] () <|
                                   .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                                   [.Pexpr [] () (.PEsym (a! 53052)),
                                    .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
                                 .Expr [] <|
                                 .Eif
                                   (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                                   .PEare_compatible
                                     (.Pexpr [] () <| .PEval <| .Vctype <|
                                     .Ctype
                                       [.Aloc .unknown]
                                       (.Pointer (.mk .false .false .false) Ty.struct_kref))
                                     (.Pexpr [] () (.PEsym (a! 53063))))
                                   (.Expr [] <| .Epure <|
                                   .Pexpr
                                     [.Astd "\xa76.5.2.2#9"]
                                     ()
                                     (.PEundef (rg! «peer.c» 75 26 75 63) .UB041_function_not_compatible)) <|
                                 .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
                                 .Ewseq
                                   (.Pattern [] (.CaseBase (.some (a! 53064), .BTy_object .OTy_pointer)))
                                   (.Expr [] <| .Eaction <| .Paction .Pos <|
                                   .Action (rg! «peer.c» 75 26 75 63) () <|
                                   .Create
                                     (.Pexpr [] () <| .PEctor .Civalignof <|
                                     [.Pexpr [] () <| .PEval <| .Vctype <|
                                      .Ctype
                                        [.Aloc .unknown]
                                        (.Pointer (.mk .false .false .false) Ty.struct_kref)])
                                     (.Pexpr [] () <| .PEval <| .Vctype <|
                                     .Ctype
                                       [.Aloc .unknown]
                                       (.Pointer (.mk .false .false .false) Ty.struct_kref)) <|
                                   .PrefFunArg
                                     (rg! «peer.c» 75 26 75 63)
                                     "fa5a43434dcb33dc130b30cb8faeddf7"
                                     0) <| .Expr [] <|
                                 .Ewseq
                                   (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                                   (.Expr [] <| .Eaction <| .Paction .Pos <|
                                   .Action (rg! «peer.c» 75 26 75 63) () <|
                                   .Store0
                                     .false
                                     (.Pexpr [] () <| .PEval <| .Vctype <|
                                     .Ctype
                                       [.Aloc .unknown]
                                       (.Pointer (.mk .false .false .false) Ty.struct_kref))
                                     (.Pexpr [] () (.PEsym (a! 53064)))
                                     (.Pexpr [] () (.PEsym (a! 53056)))
                                     .NA)
                                   (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 53064)))))) <|
                               .Expr [] <|
                               .Esseq
                                 (.Pattern [] (.CaseBase (.some (a! 53065), .BTy_loaded .OTy_integer)))
                                 (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
                                 .Eccall
                                   ()
                                   (.Pexpr [] () <| .PEval <| .Vctype <|
                                   .Ctype [.Aloc (rg! «peer.c» 75 26 75 46)] <|
                                   .Pointer (.mk .false .false .false) <| .Ctype [] <|
                                   .Function
                                     (.mk .false .false .false,
                                      .Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_))))
                                     [(.mk .false .false .false,
                                       (.Ctype
                                          [.Aloc .unknown]
                                          (.Pointer (.mk .false .false .false) Ty.struct_kref),
                                        .false))]
                                     .false)
                                   (.Pexpr [] () (.PEsym (a! 53050))) <|
                                 [.Pexpr [] () <| .PEsym <|
                                  sym.Symbol
                                    Src.digest
                                    53055
                                    (.SD_FunArg (rgc! «peer.c» 75 47 75 62 75 47) 0)]) <|
                               .Expr [] <|
                               .Esseq
                                 (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                                 (.Expr [] <| .Eaction <| .Paction .Pos <|
                                 .Action (rg! «peer.c» 75 26 75 63) () <|
                                 .Kill
                                   (.Static0 <|
                                   .Ctype
                                     [.Aloc .unknown]
                                     (.Pointer (.mk .false .false .false) Ty.struct_kref)) <|
                                 .Pexpr [] () <| .PEsym <|
                                 sym.Symbol
                                   Src.digest
                                   53055
                                   (.SD_FunArg (rgc! «peer.c» 75 47 75 62 75 47) 0))
                                 (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 53065)))))]) <|
                            .Expr [] <| .Epure <| .Pexpr [] () <|
                            .PEcase
                              (.Pexpr [] () <|
                              .PEctor
                                .Ctuple
                                [.Pexpr [] () (.PEsym (a! 53044)), .Pexpr [] () (.PEsym (a! 53045))]) <|
                            [(.Pattern [] <| .CaseCtor .Ctuple <|
                              [.Pattern [] <|
                               .CaseCtor
                                 .Cspecified
                                 [.Pattern [] (.CaseBase (.some (a! 53046), .BTy_object .OTy_integer))],
                               .Pattern [] <|
                               .CaseCtor
                                 .Cspecified
                                 [.Pattern [] (.CaseBase (.some (a! 53047), .BTy_object .OTy_integer))]],
                              .Pexpr [.Astd "\xa76.5.9#3"] () <|
                              .PEif
                                (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                .PEop
                                  .OpEq
                                  (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                  .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                  [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                   .Pexpr [] () (.PEsym (a! 53046))]) <|
                                .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                 .Pexpr [] () (.PEsym (a! 53047))])
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
                                [.Aloc (rgc! «peer.c» 75 25 75 63 75 25)]
                                (.Basic (.Integer (.Signed .Int_))))],
                            .Expr
                              [.Aloc (rgc! «peer.c» 75 25 75 63 75 25),
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
                             [.Pexpr [] () (.PEsym (a! 53039)), .Pexpr [] () (.PEsym (a! 53040))]) <|
                         [(.Pattern [] <| .CaseCtor .Ctuple <|
                           [.Pattern [] <|
                            .CaseCtor
                              .Cspecified
                              [.Pattern [] (.CaseBase (.some (a! 53041), .BTy_object .OTy_integer))],
                            .Pattern [] <|
                            .CaseCtor
                              .Cspecified
                              [.Pattern [] (.CaseBase (.some (a! 53042), .BTy_object .OTy_integer))]],
                           .Pexpr [.Astd "\xa76.5.9#3"] () <|
                           .PEif
                             (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <| .PEnot <|
                             .Pexpr [] () <|
                             .PEop
                               .OpEq
                               (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                               .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                               [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                .Pexpr [] () (.PEsym (a! 53041))]) <|
                             .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                             .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                             [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                              .Pexpr [] () (.PEsym (a! 53042))])
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
                             [.Aloc (rgc! «peer.c» 75 25 75 63 75 25)]
                             (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <| .Epure <|
                       .Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                       [.Pexpr [] () <| .PEval <| .Vctype <|
                        .Ctype
                          [.Aloc (rg! «peer.c» 75 15 75 64)]
                          (.Basic (.Integer (.Signed .Int_))),
                        .Pexpr [] () (.PEsym (a! 53066))]) <| .Expr [] <|
                     .Esseq
                       (.Pattern [] (.CaseBase (.some (a! 53067), .BTy_loaded .OTy_integer)))
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
                        [.Aloc (rg! «peer.c» 75 15 75 64)]
                        (.Basic (.Integer (.Signed .Int_))),
                      .Pexpr [] () (.PEsym (a! 53067))]),
                    (.Pattern
                       []
                       (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                     .Expr [] <| .Epure <| .Pexpr [] () <|
                     .PEundef
                       (rg! «peer.c» 75 15 75 64)
                       (.UB_CERB004_unspecified .UB_unspec_conditional))]]) <| .Expr [] <| .Epure <|
                .Pexpr [] () <|
                .PEcase
                  (.Pexpr [] () <|
                  .PEctor
                    .Ctuple
                    [.Pexpr [] () (.PEsym (a! 53018)), .Pexpr [] () (.PEsym (a! 53019))]) <|
                [(.Pattern [] <| .CaseCtor .Ctuple <|
                  [.Pattern [] <|
                   .CaseCtor
                     .Cspecified
                     [.Pattern [] (.CaseBase (.some (a! 53020), .BTy_object .OTy_integer))],
                   .Pattern [] <|
                   .CaseCtor
                     .Cspecified
                     [.Pattern [] (.CaseBase (.some (a! 53021), .BTy_object .OTy_integer))]],
                  .Pexpr [.Astd "\xa76.5.9#3"] () <|
                  .PEif
                    (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                    .PEop
                      .OpEq
                      (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                      .PEcall
                        (.Sym (rt! "conv_int" 15837442492999787586))
                        [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 53020))]) <|
                    .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                    .PEcall
                      (.Sym (rt! "conv_int" 15837442492999787586))
                      [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 53021))])
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
                    [.Aloc (rgc! «peer.c» 75 14 75 64 75 14)]
                    (.Basic (.Integer (.Signed .Int_))))]]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
             .PEcase
               (.Pexpr [] () <|
               .PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 53013)), .Pexpr [] () (.PEsym (a! 53014))]) <|
             [(.Pattern [] <| .CaseCtor .Ctuple <|
               [.Pattern [] <|
                .CaseCtor
                  .Cspecified
                  [.Pattern [] (.CaseBase (.some (a! 53015), .BTy_object .OTy_integer))],
                .Pattern [] <|
                .CaseCtor
                  .Cspecified
                  [.Pattern [] (.CaseBase (.some (a! 53016), .BTy_object .OTy_integer))]],
               .Pexpr [.Astd "\xa76.5.9#3"] () <|
               .PEif
                 (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                 .PEop
                   .OpEq
                   (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                   .PEcall
                     (.Sym (rt! "conv_int" 15837442492999787586))
                     [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 53015))]) <|
                 .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                 .PEcall
                   (.Sym (rt! "conv_int" 15837442492999787586))
                   [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 53016))])
                 (.Pexpr [] () <|
                 .PEctor
                   .Cspecified
                   [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
               .Pexpr [] () <|
               .PEctor
                 .Cspecified
                 [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
              (.Pattern
                 []
                 (.CaseBase
                   (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer])),
               .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
               .Ctype
                 [.Aloc (rgc! «peer.c» 75 13 75 64 75 13)]
                 (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
           .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
           [.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype [.Aloc (rg! «peer.c» 75 8 75 12)] (.Basic (.Integer (.Signed .Long))),
            .Pexpr [] () (.PEsym (a! 53011))],
           .Expr [.Aloc (rg! «peer.c» 75 6 75 65), .Aexpr, .Avalue (.Ainteger (.Signed .Long))] <|
           .Epure (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
        .Expr [] <| .Epure <| .Pexpr [] () <|
        .PEcase
          (.Pexpr
            []
            ()
            (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 53006)), .Pexpr [] () (.PEsym (a! 53007))])) <|
        [(.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 53008), .BTy_object .OTy_integer))],
           .Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 53009), .BTy_object .OTy_integer))]],
          .Pexpr [.Astd "\xa76.5.9#3"] () <|
          .PEif
            (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
            .PEop
              .OpEq
              (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
              .PEcall
                (.Sym (rt! "conv_int" 15837442492999787586))
                [.Pexpr [] () (.PEval (.Vctype Ty.long)), .Pexpr [] () (.PEsym (a! 53008))]) <|
            .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
            .PEcall
              (.Sym (rt! "conv_int" 15837442492999787586))
              [.Pexpr [] () (.PEval (.Vctype Ty.long)), .Pexpr [] () (.PEsym (a! 53009))])
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
          .Ctype [.Aloc (rg! «peer.c» 75 6 75 65)] (.Basic (.Integer (.Signed .Int_))))]) <|
      .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 53003), .BTy_boolean)))
        (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 53004))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 53005), .BTy_object .OTy_integer))],
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 53005)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
            (.Pexpr [] () (.PEval .Vtrue))
            (.Pexpr [] () (.PEval .Vfalse))),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <| .End <|
          [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
           .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
      .Eif
        (.Pexpr [] () (.PEsym (a! 53003)))
        (.Expr [.Aloc (rg! «peer.c» 76 3 76 22), .Astmt] <| .Erun () (c! "ret_52970" 52970) <|
        [.Pexpr [] () <| .PEctor .Cspecified <|
         [.Pexpr [] () <| .PEval <| .Vobject <| .OVpointer <| .PV .Prov_none <| .PVnull <|
          .Ctype
            [.Aloc (rg! "linux/drivers/net/wireguard/peer.h" 73 16 73 17),
             .Aloc (rg! «peer.c» 71 16 71 17)]
            (.Pointer (.mk .false .false .false) Ty.struct_wg_peer)]])
        (.Expr [.Aloc (rg! «peer.c» 75 2 76 22), .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
    .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «peer.c» 77 2 77 14), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 53070), .BTy_loaded .OTy_pointer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc (rg! «peer.c» 77 9 77 13), .Aexpr] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.some (a! 53069), .BTy_object .OTy_pointer)))
          (.Expr
            [.Aloc (rg! «peer.c» 77 9 77 13), .Aexpr]
            (.Epure (.Pexpr [] () (.PEsym (addr! "peer" 3311))))) <| .Expr [] <| .Eaction <|
        .Paction .Pos <| .Action (rg! «peer.c» 77 9 77 13) () <|
        .Load0
          (.Pexpr [] () <| .PEval <| .Vctype <|
          .Ctype
            [.Aloc (rg! "linux/drivers/net/wireguard/peer.h" 73 56 73 57),
             .Aloc (rg! «peer.c» 71 55 71 56)]
            (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
          (.Pexpr [] () (.PEsym (a! 53069)))
          .NA)
        (.Expr [] (.Erun () (c! "ret_52970" 52970) [.Pexpr [] () (.PEsym (a! 53070))])))
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc (rgr! «peer.c» 71 1 78 2 71 17 71 39)] <|
  .Esave
    (c! "ret_52970" 52970, .BTy_loaded .OTy_pointer)
    [(a! 53071,
      ((.BTy_loaded .OTy_pointer,
        .some <|
        (.Ctype
           [.Aloc (rg! "linux/drivers/net/wireguard/peer.h" 73 16 73 17),
            .Aloc (rg! «peer.c» 71 16 71 17)]
           (.Pointer (.mk .false .false .false) Ty.struct_wg_peer),
         .By_value)),
       .Pexpr
         [.Astd "\xa76.9.1#12"]
         ()
         (.PEundef (rgr! «peer.c» 71 1 78 2 71 17 71 39) .UB088_reached_end_of_function)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 53071)))))

/--
```c
static void rcu_release(struct rcu_head *rcu)
```

`linux/drivers/net/wireguard/peer.c:186` -/
def rcu_release : Procedure :=
  .Proc
    (rgr! «peer.c» 186 1 198 2 186 13 186 24)
    (.some 3318)
    .BTy_unit
    [(addr! "rcu" 3316, .BTy_object .OTy_pointer)] <| .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc (rg! «peer.c» 187 1 198 2), .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.some (addr! "peer" 3319), .BTy_object .OTy_pointer)))
      (.Expr [] <| .Eaction <| .Paction .Pos <|
      .Action (rgr! «peer.c» 187 1 198 2 188 18 188 22) () <|
      .Create
        (.Pexpr [] () <| .PEctor .Civalignof <|
        [.Pexpr [] () <| .PEval <| .Vctype <|
         .Ctype
           [.Aloc (rg! «peer.c» 188 17 188 18)]
           (.Pointer (.mk .false .false .false) Ty.struct_wg_peer)])
        (.Pexpr [] () <| .PEval <| .Vctype <|
        .Ctype
          [.Aloc (rg! «peer.c» 188 17 188 18)]
          (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
        (.PrefSource (rg! «peer.c» 188 18 188 22) [c! "rcu_release" 3317, addr! "peer" 3319])) <|
    .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «peer.c» 188 2 188 316), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 46849), .BTy_loaded .OTy_pointer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc (rgc! «peer.c» 188 25 188 315 188 26), .Aexpr] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 46850), .BTy_loaded .OTy_pointer)))
          (.Expr [.Aloc (rgc! «peer.c» 188 238 188 311 188 238), .Aexpr, .Astd "\xa76.5.4"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 46851), .BTy_loaded .OTy_pointer)))
            (.Expr [.Aloc (rg! «peer.c» 188 256 188 311), .Aexpr, .Astd "\xa76.5.6"] <|
            .Ewseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] (.CaseBase (.some (a! 46860), .BTy_loaded .OTy_pointer)),
               .Pattern [] (.CaseBase (.some (a! 46861), .BTy_loaded .OTy_integer))])
              (.Expr [] <| .Eunseq <|
              [.Expr [.Aloc (rgc! «peer.c» 188 257 188 278 188 257), .Aexpr, .Astd "\xa76.5.4"] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 46853), .BTy_loaded .OTy_pointer)))
                 (.Expr
                   [.Aloc (rgc! «peer.c» 188 265 188 278 188 265),
                    .Aexpr,
                    .Astd "\xa76.5.4",
                    .Aexpr] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 46857), .BTy_object .OTy_pointer)))
                   (.Expr
                     [.Aloc (rg! «peer.c» 188 273 188 278), .Aexpr]
                     (.Epure (.Pexpr [] () (.PEsym (addr! "rcu" 3316))))) <| .Expr [] <| .Eaction <|
                 .Paction .Pos <| .Action (rg! «peer.c» 188 273 188 278) () <|
                 .Load0
                   (.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype
                     [.Aloc (rg! «peer.c» 186 46 186 47)]
                     (.Pointer (.mk .false .false .false) Ty.struct_callback_head))
                   (.Pexpr [] () (.PEsym (a! 46857)))
                   .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46853))) <|
               [(.Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 46854), .BTy_object .OTy_pointer))],
                 .Expr [] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 46859), .BTy_boolean)))
                   (.Expr [] <| .Ememop .PtrWellAligned <|
                   [.Pexpr [] () <| .PEval <| .Vctype <|
                    .Ctype [.Aloc (rg! «peer.c» 188 258 188 262)] (.Basic (.Integer .Char0)),
                    .Pexpr [] () (.PEsym (a! 46854))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEctor .Cspecified <|
                 [.Pexpr [] () <|
                  .PEif (.Pexpr [] () (.PEsym (a! 46859))) (.Pexpr [] () (.PEsym (a! 46854))) <|
                  .Pexpr [] () <|
                  .PEundef
                    (rgc! «peer.c» 188 257 188 278 188 257)
                    .UB025_misaligned_pointer_conversion]),
                (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEundef
                   (rgc! «peer.c» 188 257 188 278 188 257)
                   .UB025_misaligned_pointer_conversion)],
               .Expr
                 [.Aloc (rg! «peer.c» 188 281 188 310), .Aexpr, .Avalue (.Ainteger .Size_t)] <|
               .Epure
                 (.Pexpr
                   []
                   ()
                   (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1128))))))]) <|
            .Expr [] <|
            .Ecase
              (.Pexpr
                []
                ()
                (.PEctor
                  .Ctuple
                  [.Pexpr [] () (.PEsym (a! 46860)), .Pexpr [] () (.PEsym (a! 46861))])) <|
            [(.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 46862), .BTy_object .OTy_pointer))],
               .Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 46863), .BTy_object .OTy_integer))]],
              .Expr [] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 46864), .BTy_object .OTy_pointer)))
                (.Expr [] <| .Ememop .PtrArrayShift <|
                [.Pexpr [] () (.PEsym (a! 46862)),
                 .Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype [.Aloc (rg! «peer.c» 188 258 188 262)] (.Basic (.Integer .Char0)),
                 .Pexpr [] () <|
                 .PEop
                   .OpSub
                   (.Pexpr
                     [.Avalue (.Ainteger .Size_t)]
                     ()
                     (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0)))))
                   (.Pexpr [] () (.PEsym (a! 46863)))]) <|
              .Expr
                []
                (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 46864))])))),
             (.Pattern
                []
                (.CaseBase (.none, .BTy_tuple [.BTy_loaded .OTy_pointer, .BTy_loaded .OTy_integer])),
              .Expr [] <| .Epure <| .Pexpr [] () <|
              .PEundef
                (rg! «peer.c» 188 256 188 311)
                (.UB_CERB004_unspecified .UB_unspec_pointer_sub))]) <| .Expr [] <|
          .Ecase (.Pexpr [] () (.PEsym (a! 46851))) <|
          [(.Pattern [] <|
            .CaseCtor
              .Cspecified
              [.Pattern [] (.CaseBase (.some (a! 46852), .BTy_object .OTy_pointer))],
            .Expr [] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.some (a! 46865), .BTy_boolean)))
              (.Expr [] <|
              .Ememop
                .PtrWellAligned
                [.Pexpr [] () (.PEval (.Vctype Ty.struct_wg_peer)),
                 .Pexpr [] () (.PEsym (a! 46852))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
            .PEctor .Cspecified <|
            [.Pexpr [] () <|
             .PEif (.Pexpr [] () (.PEsym (a! 46865))) (.Pexpr [] () (.PEsym (a! 46852))) <|
             .Pexpr [] () <|
             .PEundef (rgc! «peer.c» 188 238 188 311 188 238) .UB025_misaligned_pointer_conversion]),
           (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
            .Expr [] <| .Epure <| .Pexpr [] () <|
            .PEundef (rgc! «peer.c» 188 238 188 311 188 238) .UB025_misaligned_pointer_conversion)])
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46850)))))) <| .Expr [] <| .Eaction <|
      .Paction .Pos <| .Action (rg! «peer.c» 188 2 188 316) () <|
      .Store0
        .false
        (.Pexpr [] () <| .PEval <| .Vctype <|
        .Ctype
          [.Aloc (rg! «peer.c» 188 17 188 18)]
          (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
        (.Pexpr [] () (.PEsym (addr! "peer" 3319)))
        (.Pexpr [] () (.PEsym (a! 46849)))
        .NA) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «peer.c» 190 2 190 43), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc (rg! «peer.c» 190 2 190 42), .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
        .Esseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <| .CaseCtor .Ctuple <|
           [.Pattern [] (.CaseBase (.some (a! 46867), .BTy_loaded .OTy_pointer)),
            .Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 46868), .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 46869), .BTy_list .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 46870), .BTy_boolean)),
             .Pattern [] (.CaseBase (.some (a! 46871), .BTy_boolean))]],
           .Pattern [] (.CaseBase (.some (a! 46873), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
          [.Expr [] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 46866), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc (rg! «peer.c» 190 2 190 19), .Aexpr] <| .Epure <| .Pexpr [] () <|
             .PEval <| .Vloaded <|
             .LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "dst_cache_destroy" 2220))))) <|
           .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
           [.Pexpr [] () (.PEsym (a! 46866)),
            .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 46866))))],
           .Expr
             [.Aloc (rgc! «peer.c» 190 20 190 41 190 20),
              .Aexpr,
              .Astd "\xa76.5.3.2#3, sentence 5"] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 46874), .BTy_object .OTy_pointer)))
             (.Expr
               [.Aloc (rgc! «peer.c» 190 21 190 41 190 25),
                .Aexpr,
                .Astd "\xa76.5.2.3#4, sentence 2"] <|
             .Esseq
               (.Pattern [] (.CaseBase (.some (a! 46875), .BTy_loaded .OTy_pointer)))
               (.Expr [.Aloc (rg! «peer.c» 190 21 190 25), .Aexpr] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 46879), .BTy_object .OTy_pointer)))
                 (.Expr
                   [.Aloc (rg! «peer.c» 190 21 190 25), .Aexpr]
                   (.Epure (.Pexpr [] () (.PEsym (addr! "peer" 3319))))) <| .Expr [] <| .Eaction <|
               .Paction .Pos <| .Action (rg! «peer.c» 190 21 190 25) () <|
               .Load0
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype
                   [.Aloc (rg! «peer.c» 188 17 188 18)]
                   (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
                 (.Pexpr [] () (.PEsym (a! 46879)))
                 .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46875))) <|
             [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
               .Expr [] <| .Epure <| .Pexpr [] () <|
               .PEundef
                 (rgc! «peer.c» 190 21 190 41 190 25)
                 (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
              (.Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 46876), .BTy_object .OTy_pointer))],
               .Expr [] <| .Epure <| .Pexpr [] () <|
               .PEmember_shift
                 (.Pexpr [] () (.PEsym (a! 46876)))
                 (c! "wg_peer" 1602)
                 (.Identifier (rg! «peer.c» 190 27 190 41) "endpoint_cache"))]) <|
           .Expr [] (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 46874))])))]) <|
        .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
          .PEop
            .OpEq
            (.Pexpr [] () <|
            .PEcall
              (.Sym (rt! "params_length" 18299737999929047716))
              [.Pexpr [] () (.PEsym (a! 46869))])
            (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#6, sentence 3"]
            ()
            (.PEundef (rg! «peer.c» 190 2 190 42) .UB038_number_of_args)) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 46870))) <| .Pexpr [] () <|
          .PEnot <| .Pexpr [] () <|
          .PEare_compatible
            (.Pexpr [] () (.PEval (.Vctype (.Ctype [.Aloc .unknown, .Aloc .unknown] .Void0))))
            (.Pexpr [] () (.PEsym (a! 46868))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#9"]
            ()
            (.PEundef (rg! «peer.c» 190 2 190 42) .UB041_function_not_compatible)) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some (sym.Symbol Src.digest 46872 (.SD_FunArg (rgc! «peer.c» 190 20 190 41 190 20) 0)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 46880), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 46869)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown, .Aloc .unknown]
                (.Pointer (.mk .false .false .false) Ty.struct_dst_cache))
              (.Pexpr [] () (.PEsym (a! 46880))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «peer.c» 190 2 190 42) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 46881), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 190 2 190 42) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc .unknown, .Aloc .unknown]
                 (.Pointer (.mk .false .false .false) Ty.struct_dst_cache)])
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown, .Aloc .unknown]
                (.Pointer (.mk .false .false .false) Ty.struct_dst_cache))
              (.PrefFunArg (rg! «peer.c» 190 2 190 42) "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 190 2 190 42) () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown, .Aloc .unknown]
                (.Pointer (.mk .false .false .false) Ty.struct_dst_cache))
              (.Pexpr [] () (.PEsym (a! 46881)))
              (.Pexpr [] () (.PEsym (a! 46873)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46881)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 46882), .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
          .Eccall
            ()
            (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc (rg! «peer.c» 190 2 190 19)] <|
            .Pointer (.mk .false .false .false) <| .Ctype [] <|
            .Function
              (.mk .false .false .false, .Ctype [.Aloc .unknown, .Aloc .unknown] .Void0)
              [(.mk .false .false .false,
                (.Ctype
                   [.Aloc .unknown, .Aloc .unknown]
                   (.Pointer (.mk .false .false .false) Ty.struct_dst_cache),
                 .false))]
              .false)
            (.Pexpr [] () (.PEsym (a! 46867))) <|
          [.Pexpr [] () <|
           .PEsym
             (sym.Symbol Src.digest 46872 (.SD_FunArg (rgc! «peer.c» 190 20 190 41 190 20) 0))]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 190 2 190 42) () <|
          .Kill
            (.Static0 <|
            .Ctype
              [.Aloc .unknown, .Aloc .unknown]
              (.Pointer (.mk .false .false .false) Ty.struct_dst_cache)) <| .Pexpr [] () <|
          .PEsym (sym.Symbol Src.digest 46872 (.SD_FunArg (rgc! «peer.c» 190 20 190 41 190 20) 0)))
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46882))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «peer.c» 191 2 191 426), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc (rgc! «peer.c» 191 2 191 425 191 3), .Aexpr, .Avalue (.Ainteger (.Signed .Long))] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (addr! "__ret_warn_on" 3342), .BTy_object .OTy_pointer)))
          (.Expr [] <| .Eaction <| .Paction .Pos <|
          .Action (rgr! «peer.c» 191 2 191 426 191 9 191 22) () <|
          .Create
            (.Pexpr [] () <| .PEctor .Civalignof <|
            [.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype [.Aloc (rg! «peer.c» 191 5 191 8)] (.Basic (.Integer (.Signed .Int_)))])
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype [.Aloc (rg! «peer.c» 191 5 191 8)] (.Basic (.Integer (.Signed .Int_)))) <|
          .PrefSource
            (rg! «peer.c» 191 9 191 22)
            [c! "rcu_release" 3317, addr! "__ret_warn_on" 3342]) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc (rg! «peer.c» 191 5 191 104), .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.some (a! 46884), .BTy_loaded .OTy_integer)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr
              [.Aloc (rgc! «peer.c» 191 25 191 103 191 25),
               .Aexpr,
               .Avalue (.Ainteger (.Signed .Int_))] <|
            .Ewseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] (.CaseBase (.some (a! 46885), .BTy_loaded .OTy_integer)),
               .Pattern [] (.CaseBase (.some (a! 46886), .BTy_loaded .OTy_integer))])
              (.Expr [] <| .Eunseq <|
              [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
               .Epure
                 (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))),
               .Expr
                 [.Aloc (rgc! «peer.c» 191 26 191 103 191 26),
                  .Aexpr,
                  .Avalue (.Ainteger (.Signed .Int_))] <|
               .Ewseq
                 (.Pattern [] <| .CaseCtor .Ctuple <|
                 [.Pattern [] (.CaseBase (.some (a! 46890), .BTy_loaded .OTy_integer)),
                  .Pattern [] (.CaseBase (.some (a! 46891), .BTy_loaded .OTy_integer))])
                 (.Expr [] <| .Eunseq <|
                 [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                  .Epure
                    (.Pexpr
                      []
                      ()
                      (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))),
                  .Expr
                    [.Aloc (rg! «peer.c» 191 27 191 103),
                     .Aexpr,
                     .Avalue (.Ainteger (.Signed .Int_)),
                     .Astd "6.5.14#3",
                     .Astd "6.5.14#4",
                     .Aexpr,
                     .Avalue (.Ainteger (.Signed .Int_))] <|
                  .Esseq
                    (.Pattern [] (.CaseBase (.some (a! 46920), .BTy_loaded .OTy_integer)))
                    (.Expr
                      [.Aloc (rg! «peer.c» 191 28 191 63),
                       .Aexpr,
                       .Avalue (.Ainteger (.Signed .Int_))] <|
                    .Ewseq
                      (.Pattern [] <| .CaseCtor .Ctuple <|
                      [.Pattern [] (.CaseBase (.some (a! 46895), .BTy_loaded .OTy_integer)),
                       .Pattern [] (.CaseBase (.some (a! 46896), .BTy_loaded .OTy_integer))])
                      (.Expr [] <| .Eunseq <|
                      [.Expr
                         [.Aloc (rg! «peer.c» 191 28 191 63),
                          .Aexpr,
                          .Avalue (.Ainteger (.Signed .Int_))] <|
                       .Ewseq
                         (.Pattern [] (.CaseBase (.some (a! 46917), .BTy_loaded .OTy_pointer)))
                         (.Expr
                           [.Aloc (rg! «peer.c» 191 28 191 63),
                            .Aexpr,
                            .Astd "\xa76.5.2.2#10, sentence 1"] <|
                         .Esseq
                           (.Pattern [] <| .CaseCtor .Ctuple <|
                           [.Pattern [] <| .CaseCtor .Ctuple <|
                            [.Pattern [] (.CaseBase (.some (a! 46901), .BTy_loaded .OTy_pointer)),
                             .Pattern [] <| .CaseCtor .Ctuple <|
                             [.Pattern [] (.CaseBase (.some (a! 46902), .BTy_ctype)),
                              .Pattern [] (.CaseBase (.some (a! 46903), .BTy_list .BTy_ctype)),
                              .Pattern [] (.CaseBase (.some (a! 46904), .BTy_boolean)),
                              .Pattern [] (.CaseBase (.some (a! 46905), .BTy_boolean))]],
                            .Pattern [] (.CaseBase (.some (a! 46907), .BTy_loaded .OTy_pointer))])
                           (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
                           [.Expr [] <|
                            .Esseq
                              (.Pattern [] (.CaseBase (.some (a! 46900), .BTy_loaded .OTy_pointer)))
                              (.Expr [.Aloc (rg! «peer.c» 191 28 191 46), .Aexpr] <| .Epure <|
                              .Pexpr [] () <| .PEval <| .Vloaded <| .LVspecified <|
                              .OVpointer (.PV .Prov_none (.PVfunction (c! "wg_prev_queue_peek" 2244)))) <|
                            .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
                            [.Pexpr [] () (.PEsym (a! 46900)),
                             .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 46900))))],
                            .Expr
                              [.Aloc (rgc! «peer.c» 191 47 191 62 191 47),
                               .Aexpr,
                               .Astd "\xa76.5.3.2#3, sentence 5"] <|
                            .Ewseq
                              (.Pattern [] (.CaseBase (.some (a! 46908), .BTy_object .OTy_pointer)))
                              (.Expr
                                [.Aloc (rgc! «peer.c» 191 48 191 62 191 52),
                                 .Aexpr,
                                 .Astd "\xa76.5.2.3#4, sentence 2"] <|
                              .Esseq
                                (.Pattern [] (.CaseBase (.some (a! 46909), .BTy_loaded .OTy_pointer)))
                                (.Expr [.Aloc (rg! «peer.c» 191 48 191 52), .Aexpr] <|
                                .Ewseq
                                  (.Pattern [] (.CaseBase (.some (a! 46913), .BTy_object .OTy_pointer)))
                                  (.Expr
                                    [.Aloc (rg! «peer.c» 191 48 191 52), .Aexpr]
                                    (.Epure (.Pexpr [] () (.PEsym (addr! "peer" 3319))))) <|
                                .Expr [] <| .Eaction <| .Paction .Pos <|
                                .Action (rg! «peer.c» 191 48 191 52) () <|
                                .Load0
                                  (.Pexpr [] () <| .PEval <| .Vctype <|
                                  .Ctype
                                    [.Aloc (rg! «peer.c» 188 17 188 18)]
                                    (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
                                  (.Pexpr [] () (.PEsym (a! 46913)))
                                  .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46909))) <|
                              [(.Pattern
                                  []
                                  (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                                .Expr [] <| .Epure <| .Pexpr [] () <|
                                .PEundef
                                  (rgc! «peer.c» 191 48 191 62 191 52)
                                  (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                               (.Pattern [] <|
                                .CaseCtor
                                  .Cspecified
                                  [.Pattern [] (.CaseBase (.some (a! 46910), .BTy_object .OTy_pointer))],
                                .Expr [] <| .Epure <| .Pexpr [] () <|
                                .PEmember_shift
                                  (.Pexpr [] () (.PEsym (a! 46910)))
                                  (c! "wg_peer" 1602)
                                  (.Identifier (rg! «peer.c» 191 54 191 62) "tx_queue"))]) <|
                            .Expr [] <|
                            .Epure
                              (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 46908))]))]) <|
                         .Expr [] <|
                         .Eif
                           (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                           .PEop
                             .OpEq
                             (.Pexpr [] () <|
                             .PEcall
                               (.Sym (rt! "params_length" 18299737999929047716))
                               [.Pexpr [] () (.PEsym (a! 46903))])
                             (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
                           (.Expr [] <| .Epure <|
                           .Pexpr
                             [.Astd "\xa76.5.2.2#6, sentence 3"]
                             ()
                             (.PEundef (rg! «peer.c» 191 28 191 63) .UB038_number_of_args)) <|
                         .Expr [] <|
                         .Eif
                           (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 46904))) <|
                           .Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                           .PEare_compatible
                             (.Pexpr [] () <| .PEval <| .Vctype <|
                             .Ctype
                               [.Aloc (rg! «queueing.h» 140 30 140 31)]
                               (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                             (.Pexpr [] () (.PEsym (a! 46902))))
                           (.Expr [] <| .Epure <|
                           .Pexpr
                             [.Astd "\xa76.5.2.2#9"]
                             ()
                             (.PEundef (rg! «peer.c» 191 28 191 63) .UB041_function_not_compatible)) <|
                         .Expr [] <|
                         .Esseq
                           (.Pattern [] <| .CaseBase <|
                           (.some <|
                            sym.Symbol
                              Src.digest
                              46906
                              (.SD_FunArg (rgc! «peer.c» 191 47 191 62 191 47) 0),
                            .BTy_object .OTy_pointer))
                           (.Expr [] <|
                           .Elet
                             (.Pattern [] (.CaseBase (.some (a! 46914), .BTy_ctype)))
                             (.Pexpr [] () <|
                             .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                             [.Pexpr [] () (.PEsym (a! 46903)),
                              .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
                           .Expr [] <|
                           .Eif
                             (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                             .PEare_compatible
                               (.Pexpr [] () <| .PEval <| .Vctype <|
                               .Ctype
                                 [.Aloc (rg! «queueing.h» 140 68 140 69)]
                                 (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
                               (.Pexpr [] () (.PEsym (a! 46914))))
                             (.Expr [] <| .Epure <|
                             .Pexpr
                               [.Astd "\xa76.5.2.2#9"]
                               ()
                               (.PEundef (rg! «peer.c» 191 28 191 63) .UB041_function_not_compatible)) <|
                           .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
                           .Ewseq
                             (.Pattern [] (.CaseBase (.some (a! 46915), .BTy_object .OTy_pointer)))
                             (.Expr [] <| .Eaction <| .Paction .Pos <|
                             .Action (rg! «peer.c» 191 28 191 63) () <|
                             .Create
                               (.Pexpr [] () <| .PEctor .Civalignof <|
                               [.Pexpr [] () <| .PEval <| .Vctype <|
                                .Ctype
                                  [.Aloc (rg! «queueing.h» 140 68 140 69)]
                                  (.Pointer (.mk .false .false .false) Ty.struct_prev_queue)])
                               (.Pexpr [] () <| .PEval <| .Vctype <|
                               .Ctype
                                 [.Aloc (rg! «queueing.h» 140 68 140 69)]
                                 (.Pointer (.mk .false .false .false) Ty.struct_prev_queue)) <|
                             .PrefFunArg
                               (rg! «peer.c» 191 28 191 63)
                               "fa5a43434dcb33dc130b30cb8faeddf7"
                               0) <| .Expr [] <|
                           .Ewseq
                             (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                             (.Expr [] <| .Eaction <| .Paction .Pos <|
                             .Action (rg! «peer.c» 191 28 191 63) () <|
                             .Store0
                               .false
                               (.Pexpr [] () <| .PEval <| .Vctype <|
                               .Ctype
                                 [.Aloc (rg! «queueing.h» 140 68 140 69)]
                                 (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
                               (.Pexpr [] () (.PEsym (a! 46915)))
                               (.Pexpr [] () (.PEsym (a! 46907)))
                               .NA)
                             (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46915)))))) <| .Expr [] <|
                         .Esseq
                           (.Pattern [] (.CaseBase (.some (a! 46916), .BTy_loaded .OTy_pointer)))
                           (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
                           .Eccall
                             ()
                             (.Pexpr [] () <| .PEval <| .Vctype <|
                             .Ctype [.Aloc (rg! «peer.c» 191 28 191 46)] <|
                             .Pointer (.mk .false .false .false) <| .Ctype [] <|
                             .Function
                               (.mk .false .false .false,
                                .Ctype
                                  [.Aloc (rg! «queueing.h» 140 30 140 31)]
                                  (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                               [(.mk .false .false .false,
                                 (.Ctype
                                    [.Aloc (rg! «queueing.h» 140 68 140 69)]
                                    (.Pointer (.mk .false .false .false) Ty.struct_prev_queue),
                                  .false))]
                               .false)
                             (.Pexpr [] () (.PEsym (a! 46901))) <|
                           [.Pexpr [] () <| .PEsym <|
                            sym.Symbol
                              Src.digest
                              46906
                              (.SD_FunArg (rgc! «peer.c» 191 47 191 62 191 47) 0)]) <| .Expr [] <|
                         .Esseq
                           (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                           (.Expr [] <| .Eaction <| .Paction .Pos <|
                           .Action (rg! «peer.c» 191 28 191 63) () <|
                           .Kill
                             (.Static0 <|
                             .Ctype
                               [.Aloc (rg! «queueing.h» 140 68 140 69)]
                               (.Pointer (.mk .false .false .false) Ty.struct_prev_queue)) <|
                           .Pexpr [] () <| .PEsym <|
                           sym.Symbol
                             Src.digest
                             46906
                             (.SD_FunArg (rgc! «peer.c» 191 47 191 62 191 47) 0))
                           (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46916)))))) <| .Expr [] <|
                       .Ecase (.Pexpr [] () (.PEsym (a! 46917))) <|
                       [(.Pattern [] <|
                         .CaseCtor
                           .Cspecified
                           [.Pattern [] (.CaseBase (.some (a! 46918), .BTy_object .OTy_pointer))],
                         .Expr [] <|
                         .Ewseq
                           (.Pattern [] (.CaseBase (.some (a! 46919), .BTy_boolean)))
                           (.Expr [] <| .Ememop .PtrEq <|
                           [.Pexpr [] () (.PEsym (a! 46918)),
                            .Pexpr [.Astd "\xa76.5.9#5, sentence 2"] () <| .PEval <| .Vobject <|
                            .OVpointer <| .PV .Prov_none <| .PVnull <|
                            .Ctype
                              [.Aloc (rg! «peer.c» 191 28 191 63)]
                              (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]) <|
                         .Expr [.Astd "\xa76.5.9#3"] <| .Epure <| .Pexpr [] () <|
                         .PEif
                           (.Pexpr [] () (.PEsym (a! 46919)))
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
                           (rg! «peer.c» 191 28 191 63)
                           (.UB_CERB004_unspecified .UB_unspec_equality_ptr_vs_NULL))],
                       .Expr
                         [.Aloc (rg! «peer.c» 191 28 191 63),
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
                        [.Pexpr [] () (.PEsym (a! 46895)), .Pexpr [] () (.PEsym (a! 46896))]) <|
                    [(.Pattern [] <| .CaseCtor .Ctuple <|
                      [.Pattern [] <|
                       .CaseCtor
                         .Cspecified
                         [.Pattern [] (.CaseBase (.some (a! 46897), .BTy_object .OTy_integer))],
                       .Pattern [] <|
                       .CaseCtor
                         .Cspecified
                         [.Pattern [] (.CaseBase (.some (a! 46898), .BTy_object .OTy_integer))]],
                      .Pexpr [.Astd "\xa76.5.9#3"] () <|
                      .PEif
                        (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                        .PEop
                          .OpEq
                          (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                          .PEcall
                            (.Sym (rt! "conv_int" 15837442492999787586))
                            [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                             .Pexpr [] () (.PEsym (a! 46897))]) <|
                        .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                        .PEcall
                          (.Sym (rt! "conv_int" 15837442492999787586))
                          [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 46898))])
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
                        [.Aloc (rg! «peer.c» 191 28 191 63)]
                        (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <|
                  .Ecase (.Pexpr [] () (.PEsym (a! 46920))) <|
                  [(.Pattern [] <|
                    .CaseCtor
                      .Cspecified
                      [.Pattern [] (.CaseBase (.some (a! 46921), .BTy_object .OTy_integer))],
                    .Expr [] <|
                    .Eif
                      (.Pexpr [] () <|
                      .PEop
                        .OpEq
                        (.Pexpr [] () (.PEsym (a! 46921)))
                        (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                      (.Expr [] <|
                      .Esseq
                        (.Pattern [] (.CaseBase (.some (a! 46942), .BTy_loaded .OTy_integer)))
                        (.Expr
                          [.Aloc (rg! «peer.c» 191 67 191 102),
                           .Aexpr,
                           .Avalue (.Ainteger (.Signed .Int_))] <|
                        .Ewseq
                          (.Pattern [] (.CaseBase (.some (a! 46939), .BTy_loaded .OTy_pointer)))
                          (.Expr
                            [.Aloc (rg! «peer.c» 191 67 191 102),
                             .Aexpr,
                             .Astd "\xa76.5.2.2#10, sentence 1"] <|
                          .Esseq
                            (.Pattern [] <| .CaseCtor .Ctuple <|
                            [.Pattern [] <| .CaseCtor .Ctuple <|
                             [.Pattern [] (.CaseBase (.some (a! 46923), .BTy_loaded .OTy_pointer)),
                              .Pattern [] <| .CaseCtor .Ctuple <|
                              [.Pattern [] (.CaseBase (.some (a! 46924), .BTy_ctype)),
                               .Pattern [] (.CaseBase (.some (a! 46925), .BTy_list .BTy_ctype)),
                               .Pattern [] (.CaseBase (.some (a! 46926), .BTy_boolean)),
                               .Pattern [] (.CaseBase (.some (a! 46927), .BTy_boolean))]],
                             .Pattern [] (.CaseBase (.some (a! 46929), .BTy_loaded .OTy_pointer))])
                            (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
                            [.Expr [] <|
                             .Esseq
                               (.Pattern [] (.CaseBase (.some (a! 46922), .BTy_loaded .OTy_pointer)))
                               (.Expr [.Aloc (rg! «peer.c» 191 67 191 85), .Aexpr] <| .Epure <|
                               .Pexpr [] () <| .PEval <| .Vloaded <| .LVspecified <|
                               .OVpointer (.PV .Prov_none (.PVfunction (c! "wg_prev_queue_peek" 2244)))) <|
                             .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
                             [.Pexpr [] () (.PEsym (a! 46922)),
                              .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 46922))))],
                             .Expr
                               [.Aloc (rgc! «peer.c» 191 86 191 101 191 86),
                                .Aexpr,
                                .Astd "\xa76.5.3.2#3, sentence 5"] <|
                             .Ewseq
                               (.Pattern [] (.CaseBase (.some (a! 46930), .BTy_object .OTy_pointer)))
                               (.Expr
                                 [.Aloc (rgc! «peer.c» 191 87 191 101 191 91),
                                  .Aexpr,
                                  .Astd "\xa76.5.2.3#4, sentence 2"] <|
                               .Esseq
                                 (.Pattern [] (.CaseBase (.some (a! 46931), .BTy_loaded .OTy_pointer)))
                                 (.Expr [.Aloc (rg! «peer.c» 191 87 191 91), .Aexpr] <|
                                 .Ewseq
                                   (.Pattern [] (.CaseBase (.some (a! 46935), .BTy_object .OTy_pointer)))
                                   (.Expr
                                     [.Aloc (rg! «peer.c» 191 87 191 91), .Aexpr]
                                     (.Epure (.Pexpr [] () (.PEsym (addr! "peer" 3319))))) <|
                                 .Expr [] <| .Eaction <| .Paction .Pos <|
                                 .Action (rg! «peer.c» 191 87 191 91) () <|
                                 .Load0
                                   (.Pexpr [] () <| .PEval <| .Vctype <|
                                   .Ctype
                                     [.Aloc (rg! «peer.c» 188 17 188 18)]
                                     (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
                                   (.Pexpr [] () (.PEsym (a! 46935)))
                                   .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46931))) <|
                               [(.Pattern
                                   []
                                   (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                                 .Expr [] <| .Epure <| .Pexpr [] () <|
                                 .PEundef
                                   (rgc! «peer.c» 191 87 191 101 191 91)
                                   (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                                (.Pattern [] <|
                                 .CaseCtor
                                   .Cspecified
                                   [.Pattern [] (.CaseBase (.some (a! 46932), .BTy_object .OTy_pointer))],
                                 .Expr [] <| .Epure <| .Pexpr [] () <|
                                 .PEmember_shift
                                   (.Pexpr [] () (.PEsym (a! 46932)))
                                   (c! "wg_peer" 1602)
                                   (.Identifier (rg! «peer.c» 191 93 191 101) "rx_queue"))]) <|
                             .Expr [] <|
                             .Epure
                               (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 46930))]))]) <|
                          .Expr [] <|
                          .Eif
                            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                            .PEop
                              .OpEq
                              (.Pexpr [] () <|
                              .PEcall
                                (.Sym (rt! "params_length" 18299737999929047716))
                                [.Pexpr [] () (.PEsym (a! 46925))])
                              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
                            (.Expr [] <| .Epure <|
                            .Pexpr
                              [.Astd "\xa76.5.2.2#6, sentence 3"]
                              ()
                              (.PEundef (rg! «peer.c» 191 67 191 102) .UB038_number_of_args)) <|
                          .Expr [] <|
                          .Eif
                            (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 46926))) <|
                            .Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                            .PEare_compatible
                              (.Pexpr [] () <| .PEval <| .Vctype <|
                              .Ctype
                                [.Aloc (rg! «queueing.h» 140 30 140 31)]
                                (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                              (.Pexpr [] () (.PEsym (a! 46924))))
                            (.Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.2.2#9"] () <|
                            .PEundef (rg! «peer.c» 191 67 191 102) .UB041_function_not_compatible) <|
                          .Expr [] <|
                          .Esseq
                            (.Pattern [] <| .CaseBase <|
                            (.some <|
                             sym.Symbol
                               Src.digest
                               46928
                               (.SD_FunArg (rgc! «peer.c» 191 86 191 101 191 86) 0),
                             .BTy_object .OTy_pointer))
                            (.Expr [] <|
                            .Elet
                              (.Pattern [] (.CaseBase (.some (a! 46936), .BTy_ctype)))
                              (.Pexpr [] () <|
                              .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                              [.Pexpr [] () (.PEsym (a! 46925)),
                               .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
                            .Expr [] <|
                            .Eif
                              (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                              .PEare_compatible
                                (.Pexpr [] () <| .PEval <| .Vctype <|
                                .Ctype
                                  [.Aloc (rg! «queueing.h» 140 68 140 69)]
                                  (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
                                (.Pexpr [] () (.PEsym (a! 46936))))
                              (.Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.2.2#9"] () <|
                              .PEundef (rg! «peer.c» 191 67 191 102) .UB041_function_not_compatible) <|
                            .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
                            .Ewseq
                              (.Pattern [] (.CaseBase (.some (a! 46937), .BTy_object .OTy_pointer)))
                              (.Expr [] <| .Eaction <| .Paction .Pos <|
                              .Action (rg! «peer.c» 191 67 191 102) () <|
                              .Create
                                (.Pexpr [] () <| .PEctor .Civalignof <|
                                [.Pexpr [] () <| .PEval <| .Vctype <|
                                 .Ctype
                                   [.Aloc (rg! «queueing.h» 140 68 140 69)]
                                   (.Pointer (.mk .false .false .false) Ty.struct_prev_queue)])
                                (.Pexpr [] () <| .PEval <| .Vctype <|
                                .Ctype
                                  [.Aloc (rg! «queueing.h» 140 68 140 69)]
                                  (.Pointer (.mk .false .false .false) Ty.struct_prev_queue)) <|
                              .PrefFunArg
                                (rg! «peer.c» 191 67 191 102)
                                "fa5a43434dcb33dc130b30cb8faeddf7"
                                0) <| .Expr [] <|
                            .Ewseq
                              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                              (.Expr [] <| .Eaction <| .Paction .Pos <|
                              .Action (rg! «peer.c» 191 67 191 102) () <|
                              .Store0
                                .false
                                (.Pexpr [] () <| .PEval <| .Vctype <|
                                .Ctype
                                  [.Aloc (rg! «queueing.h» 140 68 140 69)]
                                  (.Pointer (.mk .false .false .false) Ty.struct_prev_queue))
                                (.Pexpr [] () (.PEsym (a! 46937)))
                                (.Pexpr [] () (.PEsym (a! 46929)))
                                .NA)
                              (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46937)))))) <| .Expr [] <|
                          .Esseq
                            (.Pattern [] (.CaseBase (.some (a! 46938), .BTy_loaded .OTy_pointer)))
                            (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
                            .Eccall
                              ()
                              (.Pexpr [] () <| .PEval <| .Vctype <|
                              .Ctype [.Aloc (rg! «peer.c» 191 67 191 85)] <|
                              .Pointer (.mk .false .false .false) <| .Ctype [] <|
                              .Function
                                (.mk .false .false .false,
                                 .Ctype
                                   [.Aloc (rg! «queueing.h» 140 30 140 31)]
                                   (.Pointer (.mk .false .false .false) Ty.struct_sk_buff))
                                [(.mk .false .false .false,
                                  (.Ctype
                                     [.Aloc (rg! «queueing.h» 140 68 140 69)]
                                     (.Pointer (.mk .false .false .false) Ty.struct_prev_queue),
                                   .false))]
                                .false)
                              (.Pexpr [] () (.PEsym (a! 46923))) <|
                            [.Pexpr [] () <| .PEsym <|
                             sym.Symbol
                               Src.digest
                               46928
                               (.SD_FunArg (rgc! «peer.c» 191 86 191 101 191 86) 0)]) <| .Expr [] <|
                          .Esseq
                            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                            (.Expr [] <| .Eaction <| .Paction .Pos <|
                            .Action (rg! «peer.c» 191 67 191 102) () <|
                            .Kill
                              (.Static0 <|
                              .Ctype
                                [.Aloc (rg! «queueing.h» 140 68 140 69)]
                                (.Pointer (.mk .false .false .false) Ty.struct_prev_queue)) <|
                            .Pexpr [] () <| .PEsym <|
                            sym.Symbol
                              Src.digest
                              46928
                              (.SD_FunArg (rgc! «peer.c» 191 86 191 101 191 86) 0))
                            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46938)))))) <| .Expr [] <|
                        .Ecase (.Pexpr [] () (.PEsym (a! 46939))) <|
                        [(.Pattern [] <|
                          .CaseCtor
                            .Cspecified
                            [.Pattern [] (.CaseBase (.some (a! 46940), .BTy_object .OTy_pointer))],
                          .Expr [] <|
                          .Ewseq
                            (.Pattern [] (.CaseBase (.some (a! 46941), .BTy_boolean)))
                            (.Expr [] <| .Ememop .PtrNe <|
                            [.Pexpr [] () (.PEsym (a! 46940)),
                             .Pexpr [.Astd "\xa76.5.9#5, sentence 2"] () <| .PEval <| .Vobject <|
                             .OVpointer <| .PV .Prov_none <| .PVnull <|
                             .Ctype
                               [.Aloc (rg! «peer.c» 191 67 191 102)]
                               (.Pointer (.mk .false .false .false) Ty.struct_sk_buff)]) <|
                          .Expr [.Astd "\xa76.5.9#3"] <| .Epure <| .Pexpr [] () <|
                          .PEif
                            (.Pexpr [] () (.PEsym (a! 46941)))
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
                            (rg! «peer.c» 191 67 191 102)
                            (.UB_CERB004_unspecified .UB_unspec_equality_ptr_vs_NULL))]) <|
                      .Expr [] <| .Epure <| .Pexpr [] () <|
                      .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                      [.Pexpr [] () <| .PEval <| .Vctype <|
                       .Ctype
                         [.Aloc (rg! «peer.c» 191 27 191 103)]
                         (.Basic (.Integer (.Signed .Int_))),
                       .Pexpr [] () (.PEsym (a! 46942))]) <| .Expr [] <|
                    .Esseq
                      (.Pattern [] (.CaseBase (.some (a! 46943), .BTy_loaded .OTy_integer)))
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
                       [.Aloc (rg! «peer.c» 191 27 191 103)]
                       (.Basic (.Integer (.Signed .Int_))),
                     .Pexpr [] () (.PEsym (a! 46943))]),
                   (.Pattern
                      []
                      (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                    .Expr [] <| .Epure <| .Pexpr [] () <|
                    .PEundef
                      (rg! «peer.c» 191 27 191 103)
                      (.UB_CERB004_unspecified .UB_unspec_conditional))]]) <| .Expr [] <| .Epure <|
               .Pexpr [] () <|
               .PEcase
                 (.Pexpr [] () <|
                 .PEctor
                   .Ctuple
                   [.Pexpr [] () (.PEsym (a! 46890)), .Pexpr [] () (.PEsym (a! 46891))]) <|
               [(.Pattern [] <| .CaseCtor .Ctuple <|
                 [.Pattern [] <|
                  .CaseCtor
                    .Cspecified
                    [.Pattern [] (.CaseBase (.some (a! 46892), .BTy_object .OTy_integer))],
                  .Pattern [] <|
                  .CaseCtor
                    .Cspecified
                    [.Pattern [] (.CaseBase (.some (a! 46893), .BTy_object .OTy_integer))]],
                 .Pexpr [.Astd "\xa76.5.9#3"] () <|
                 .PEif
                   (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                   .PEop
                     .OpEq
                     (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                     .PEcall
                       (.Sym (rt! "conv_int" 15837442492999787586))
                       [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 46892))]) <|
                   .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                   .PEcall
                     (.Sym (rt! "conv_int" 15837442492999787586))
                     [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 46893))])
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
                   [.Aloc (rgc! «peer.c» 191 26 191 103 191 26)]
                   (.Basic (.Integer (.Signed .Int_))))]]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
            .PEcase
              (.Pexpr
                []
                ()
                (.PEctor
                  .Ctuple
                  [.Pexpr [] () (.PEsym (a! 46885)), .Pexpr [] () (.PEsym (a! 46886))])) <|
            [(.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 46887), .BTy_object .OTy_integer))],
               .Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 46888), .BTy_object .OTy_integer))]],
              .Pexpr [.Astd "\xa76.5.9#3"] () <|
              .PEif
                (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                .PEop
                  .OpEq
                  (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                  .PEcall
                    (.Sym (rt! "conv_int" 15837442492999787586))
                    [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 46887))]) <|
                .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                .PEcall
                  (.Sym (rt! "conv_int" 15837442492999787586))
                  [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 46888))])
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
                [.Aloc (rgc! «peer.c» 191 25 191 103 191 25)]
                (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <| .Eaction <| .Paction .Pos <|
          .Action (rg! «peer.c» 191 5 191 104) () <|
          .Store0
            .false
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype [.Aloc (rg! «peer.c» 191 5 191 8)] (.Basic (.Integer (.Signed .Int_))))
            (.Pexpr [] () (.PEsym (addr! "__ret_warn_on" 3342)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
            [.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype [.Aloc (rg! «peer.c» 191 5 191 8)] (.Basic (.Integer (.Signed .Int_))),
             .Pexpr [] () (.PEsym (a! 46884))])
            .NA) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc (rg! «peer.c» 191 105 191 395), .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.some (a! 46945), .BTy_loaded .OTy_integer)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr
              [.Aloc (rg! «peer.c» 191 109 191 134), .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
            .Ewseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] (.CaseBase (.some (a! 46947), .BTy_loaded .OTy_integer)),
               .Pattern [] (.CaseBase (.some (a! 46948), .BTy_loaded .OTy_integer))])
              (.Expr [] <| .Eunseq <|
              [.Expr
                 [.Aloc (rg! «peer.c» 191 109 191 134),
                  .Aexpr,
                  .Avalue (.Ainteger (.Signed .Long)),
                  .Astd "\xa76.5.4"] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 46952), .BTy_loaded .OTy_integer)))
                 (.Expr
                   [.Aloc (rgc! «peer.c» 191 116 191 133 191 116),
                    .Aexpr,
                    .Avalue (.Ainteger (.Signed .Int_))] <|
                 .Ewseq
                   (.Pattern [] <| .CaseCtor .Ctuple <|
                   [.Pattern [] (.CaseBase (.some (a! 46954), .BTy_loaded .OTy_integer)),
                    .Pattern [] (.CaseBase (.some (a! 46955), .BTy_loaded .OTy_integer))])
                   (.Expr [] <| .Eunseq <|
                   [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                    .Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))),
                    .Expr
                      [.Aloc (rgc! «peer.c» 191 117 191 133 191 117),
                       .Aexpr,
                       .Avalue (.Ainteger (.Signed .Int_))] <|
                    .Ewseq
                      (.Pattern [] <| .CaseCtor .Ctuple <|
                      [.Pattern [] (.CaseBase (.some (a! 46959), .BTy_loaded .OTy_integer)),
                       .Pattern [] (.CaseBase (.some (a! 46960), .BTy_loaded .OTy_integer))])
                      (.Expr [] <| .Eunseq <|
                      [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                       .Epure <|
                       .Pexpr
                         []
                         ()
                         (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))),
                       .Expr
                         [.Aloc (rg! «peer.c» 191 118 191 133),
                          .Aexpr,
                          .Avalue (.Ainteger (.Signed .Int_))] <|
                       .Ewseq
                         (.Pattern [] (.CaseBase (.some (a! 46964), .BTy_object .OTy_pointer)))
                         (.Expr
                           [.Aloc (rg! «peer.c» 191 118 191 133), .Aexpr]
                           (.Epure (.Pexpr [] () (.PEsym (addr! "__ret_warn_on" 3342))))) <|
                       .Expr [] <| .Eaction <| .Paction .Pos <|
                       .Action (rg! «peer.c» 191 118 191 133) () <|
                       .Load0
                         (.Pexpr [] () <| .PEval <| .Vctype <|
                         .Ctype
                           [.Aloc (rg! «peer.c» 191 5 191 8)]
                           (.Basic (.Integer (.Signed .Int_))))
                         (.Pexpr [] () (.PEsym (a! 46964)))
                         .NA]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
                    .PEcase
                      (.Pexpr [] () <|
                      .PEctor
                        .Ctuple
                        [.Pexpr [] () (.PEsym (a! 46959)), .Pexpr [] () (.PEsym (a! 46960))]) <|
                    [(.Pattern [] <| .CaseCtor .Ctuple <|
                      [.Pattern [] <|
                       .CaseCtor
                         .Cspecified
                         [.Pattern [] (.CaseBase (.some (a! 46961), .BTy_object .OTy_integer))],
                       .Pattern [] <|
                       .CaseCtor
                         .Cspecified
                         [.Pattern [] (.CaseBase (.some (a! 46962), .BTy_object .OTy_integer))]],
                      .Pexpr [.Astd "\xa76.5.9#3"] () <|
                      .PEif
                        (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                        .PEop
                          .OpEq
                          (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                          .PEcall
                            (.Sym (rt! "conv_int" 15837442492999787586))
                            [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                             .Pexpr [] () (.PEsym (a! 46961))]) <|
                        .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                        .PEcall
                          (.Sym (rt! "conv_int" 15837442492999787586))
                          [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 46962))])
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
                        [.Aloc (rgc! «peer.c» 191 117 191 133 191 117)]
                        (.Basic (.Integer (.Signed .Int_))))]]) <| .Expr [] <| .Epure <|
                 .Pexpr [] () <|
                 .PEcase
                   (.Pexpr [] () <|
                   .PEctor
                     .Ctuple
                     [.Pexpr [] () (.PEsym (a! 46954)), .Pexpr [] () (.PEsym (a! 46955))]) <|
                 [(.Pattern [] <| .CaseCtor .Ctuple <|
                   [.Pattern [] <|
                    .CaseCtor
                      .Cspecified
                      [.Pattern [] (.CaseBase (.some (a! 46956), .BTy_object .OTy_integer))],
                    .Pattern [] <|
                    .CaseCtor
                      .Cspecified
                      [.Pattern [] (.CaseBase (.some (a! 46957), .BTy_object .OTy_integer))]],
                   .Pexpr [.Astd "\xa76.5.9#3"] () <|
                   .PEif
                     (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                     .PEop
                       .OpEq
                       (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                       .PEcall
                         (.Sym (rt! "conv_int" 15837442492999787586))
                         [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 46956))]) <|
                     .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                     .PEcall
                       (.Sym (rt! "conv_int" 15837442492999787586))
                       [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 46957))])
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
                     [.Aloc (rgc! «peer.c» 191 116 191 133 191 116)]
                     (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
               .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
               [.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype [.Aloc (rg! «peer.c» 191 111 191 115)] (.Basic (.Integer (.Signed .Long))),
                .Pexpr [] () (.PEsym (a! 46952))],
               .Expr
                 [.Aloc (rg! «peer.c» 191 109 191 134),
                  .Aexpr,
                  .Avalue (.Ainteger (.Signed .Long))] <|
               .Epure
                 (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
            .Expr [] <| .Epure <| .Pexpr [] () <|
            .PEcase
              (.Pexpr
                []
                ()
                (.PEctor
                  .Ctuple
                  [.Pexpr [] () (.PEsym (a! 46947)), .Pexpr [] () (.PEsym (a! 46948))])) <|
            [(.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 46949), .BTy_object .OTy_integer))],
               .Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 46950), .BTy_object .OTy_integer))]],
              .Pexpr [.Astd "\xa76.5.9#3"] () <|
              .PEif
                (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                .PEop
                  .OpEq
                  (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                  .PEcall
                    (.Sym (rt! "conv_int" 15837442492999787586))
                    [.Pexpr [] () (.PEval (.Vctype Ty.long)), .Pexpr [] () (.PEsym (a! 46949))]) <|
                .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                .PEcall
                  (.Sym (rt! "conv_int" 15837442492999787586))
                  [.Pexpr [] () (.PEval (.Vctype Ty.long)), .Pexpr [] () (.PEsym (a! 46950))])
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
              .Ctype [.Aloc (rg! «peer.c» 191 109 191 134)] (.Basic (.Integer (.Signed .Int_))))]) <|
          .Expr [] <|
          .Esseq
            (.Pattern [] (.CaseBase (.some (a! 46944), .BTy_boolean)))
            (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46945))) <|
            [(.Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 46946), .BTy_object .OTy_integer))],
              .Expr [] <| .Epure <| .Pexpr [] () <|
              .PEif
                (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                .PEop
                  .OpEq
                  (.Pexpr [] () (.PEsym (a! 46946)))
                  (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
                (.Pexpr [] () (.PEval .Vtrue))
                (.Pexpr [] () (.PEval .Vfalse))),
             (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
              .Expr [] <| .End <|
              [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
               .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () (.PEsym (a! 46944)))
            (.Expr [.Aloc (rg! «peer.c» 191 136 191 395), .Astmt, .Alabel (.LAloop 3346)] <|
            .Esave
              (c! "do_46966" 46966, .BTy_unit)
              [(addr! "__ret_warn_on" 3342,
                ((.BTy_object .OTy_pointer,
                  .some <|
                  (.Ctype [.Aloc (rg! «peer.c» 191 5 191 8)] (.Basic (.Integer (.Signed .Int_))),
                   .By_pointer)),
                 .Pexpr [] () (.PEsym (addr! "__ret_warn_on" 3342)))),
               (addr! "peer" 3319,
                ((.BTy_object .OTy_pointer,
                  .some <|
                  (.Ctype
                     [.Aloc (rg! «peer.c» 188 17 188 18)]
                     (.Pointer (.mk .false .false .false) Ty.struct_wg_peer),
                   .By_pointer)),
                 .Pexpr [] () (.PEsym (addr! "peer" 3319))))] <| .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [.Aloc (rg! «peer.c» 191 139 191 384), .Astmt] <|
              .Esseq
                (.Pattern
                  []
                  (.CaseBase (.some (addr! "__warn_flags" 3345), .BTy_object .OTy_pointer)))
                (.Expr [] <| .Eaction <| .Paction .Pos <|
                .Action (rgr! «peer.c» 191 139 191 384 191 180 191 192) () <|
                .Create
                  (.Pexpr [] () <| .PEctor .Civalignof <|
                  [.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype
                     [.Aloc (rg! «peer.c» 191 167 191 179)]
                     (.Basic (.Integer (.Unsigned .Int_)))])
                  (.Pexpr [] () <| .PEval <| .Vctype <|
                  .Ctype
                    [.Aloc (rg! «peer.c» 191 167 191 179)]
                    (.Basic (.Integer (.Unsigned .Int_)))) <|
                .PrefSource
                  (rg! «peer.c» 191 180 191 192)
                  [c! "rcu_release" 3317, addr! "__warn_flags" 3345]) <| .Expr [] <|
              .Esseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [.Aloc (rg! «peer.c» 191 167 191 219), .Astmt] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.some (a! 46969), .BTy_loaded .OTy_integer)))
                  (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                  .Expr
                    [.Aloc (rgc! «peer.c» 191 195 191 218 191 204),
                     .Aexpr,
                     .Avalue (.Ainteger (.Signed .Int_)),
                     .Astd "\xa76.5.12"] <|
                  .Ewseq
                    (.Pattern [] <| .CaseCtor .Ctuple <|
                    [.Pattern [] (.CaseBase (.some (a! 46970), .BTy_loaded .OTy_integer)),
                     .Pattern [] (.CaseBase (.some (a! 46971), .BTy_loaded .OTy_integer))])
                    (.Expr [] <| .Eunseq <|
                    [.Expr
                       [.Aloc (rg! «peer.c» 191 195 191 203),
                        .Aexpr,
                        .Avalue (.Ainteger (.Signed .Int_)),
                        .Astd "\xa76.5.7"] <|
                     .Ewseq
                       (.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern [] (.CaseBase (.some (a! 46974), .BTy_loaded .OTy_integer)),
                        .Pattern [] (.CaseBase (.some (a! 46975), .BTy_loaded .OTy_integer))])
                       (.Expr [] <| .Eunseq <|
                       [.Expr
                          [.Aloc (rg! «peer.c» 191 196 191 197),
                           .Aexpr,
                           .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                        .Pexpr
                          []
                          ()
                          (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1))))),
                        .Expr
                          [.Aloc (rg! «peer.c» 191 201 191 202),
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
                         [.Pexpr [] () (.PEsym (a! 46974)), .Pexpr [] () (.PEsym (a! 46975))]) <|
                     [(.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)),
                        .Pattern
                          []
                          (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))])],
                       .Pexpr
                         [.Astd "\xa76.5#5"]
                         ()
                         (.PEundef (rg! «peer.c» 191 195 191 203) .UB036_exceptional_condition)),
                      (.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern
                          []
                          (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                        .Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer))],
                       .Pexpr
                         [.Astd "\xa76.5#5"]
                         ()
                         (.PEundef (rg! «peer.c» 191 195 191 203) .UB036_exceptional_condition)),
                      (.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern [] <|
                        .CaseCtor
                          .Cspecified
                          [.Pattern [] (.CaseBase (.some (a! 46976), .BTy_object .OTy_integer))],
                        .Pattern [] <|
                        .CaseCtor
                          .Cspecified
                          [.Pattern [] (.CaseBase (.some (a! 46977), .BTy_object .OTy_integer))]],
                       .Pexpr [] () <|
                       .PElet
                         (.Pattern [] (.CaseBase (.some (a! 46978), .BTy_object .OTy_integer)))
                         (.Pexpr [.Astd "\xa76.5.7#3, sentence 1"] () <|
                         .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                         [.Pexpr [] () <| .PEval <| .Vctype <|
                          .Ctype
                            [.Aloc (rg! «peer.c» 191 196 191 197)]
                            (.Basic (.Integer (.Signed .Int_))),
                          .Pexpr [] () (.PEsym (a! 46976))]) <| .Pexpr [] () <|
                       .PElet
                         (.Pattern [] (.CaseBase (.some (a! 46979), .BTy_object .OTy_integer)))
                         (.Pexpr [.Astd "\xa76.5.7#3, sentence 1"] () <|
                         .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                         [.Pexpr [] () <| .PEval <| .Vctype <|
                          .Ctype
                            [.Aloc (rg! «peer.c» 191 201 191 202)]
                            (.Basic (.Integer (.Signed .Int_))),
                          .Pexpr [] () (.PEsym (a! 46977))]) <| .Pexpr [] () <|
                       .PEif
                         (.Pexpr [] () <|
                         .PEop
                           .OpLt
                           (.Pexpr [] () (.PEsym (a! 46979)))
                           (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                         (.Pexpr
                           [.Astd "\xa76.5.7#3, sentence 3"]
                           ()
                           (.PEundef (rg! «peer.c» 191 195 191 203) .UB051a_negative_shift)) <|
                       .Pexpr [] () <|
                       .PEif
                         (.Pexpr [] () <|
                         .PEop
                           .OpOr
                           (.Pexpr [] () <|
                           .PEop
                             .OpLt
                             (.Pexpr [.Avalue (.Ainteger (.Signed .Int_))] () <|
                             .PEcall (.Sym (rt! "ctype_width" 4407163753016978909)) <|
                             [.Pexpr [] () <| .PEval <| .Vctype <|
                              .Ctype
                                [.Aloc (rg! «peer.c» 191 195 191 203)]
                                (.Basic (.Integer (.Signed .Int_)))])
                             (.Pexpr [] () (.PEsym (a! 46979)))) <| .Pexpr [] () <|
                         .PEop
                           .OpEq
                           (.Pexpr [.Avalue (.Ainteger (.Signed .Int_))] () <|
                           .PEcall (.Sym (rt! "ctype_width" 4407163753016978909)) <|
                           [.Pexpr [] () <| .PEval <| .Vctype <|
                            .Ctype
                              [.Aloc (rg! «peer.c» 191 195 191 203)]
                              (.Basic (.Integer (.Signed .Int_)))])
                           (.Pexpr [] () (.PEsym (a! 46979))))
                         (.Pexpr
                           [.Astd "\xa76.5.7#4, sentence 3"]
                           ()
                           (.PEundef (rg! «peer.c» 191 195 191 203) .UB51b_shift_too_large)) <|
                       .Pexpr [.Astd "\xa76.5.7#4, sentence 3"] () <|
                       .PEif
                         (.Pexpr [] () <|
                         .PEop
                           .OpLt
                           (.Pexpr [] () (.PEsym (a! 46978)))
                           (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                         (.Pexpr
                           [.Astd "\xa76.5.7#3, sentence 3"]
                           ()
                           (.PEundef (rg! «peer.c» 191 195 191 203) .UB052a_negative_left_shift)) <|
                       .Pexpr [] () <|
                       .PElet
                         (.Pattern [] (.CaseBase (.some (a! 46980), .BTy_object .OTy_integer)))
                         (.Pexpr [] () <| .PEop .OpMul (.Pexpr [] () (.PEsym (a! 46978))) <|
                         .Pexpr [] () <|
                         .PEop
                           .OpExp
                           (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2)))))
                           (.Pexpr [] () (.PEsym (a! 46979)))) <| .Pexpr [] () <|
                       .PEif
                         (.Pexpr [] () <|
                         .PEcall (.Sym (rt! "is_representable_integer" 7764867060197914680)) <|
                         [.Pexpr [] () (.PEsym (a! 46980)),
                          .Pexpr [] () <| .PEval <| .Vctype <|
                          .Ctype
                            [.Aloc (rg! «peer.c» 191 195 191 203)]
                            (.Basic (.Integer (.Signed .Int_)))])
                         (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 46980))])) <|
                       .Pexpr [.Astd "\xa76.5.7#3, sentence 3"] () <|
                       .PEundef
                         (rg! «peer.c» 191 195 191 203)
                         .UB052b_non_representable_left_shift)],
                     .Expr
                       [.Aloc (rg! «peer.c» 191 206 191 218),
                        .Aexpr,
                        .Avalue (.Ainteger (.Signed .Int_)),
                        .Astd "\xa76.5.7"] <|
                     .Ewseq
                       (.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern [] (.CaseBase (.some (a! 46981), .BTy_loaded .OTy_integer)),
                        .Pattern [] (.CaseBase (.some (a! 46982), .BTy_loaded .OTy_integer))])
                       (.Expr [] <| .Eunseq <|
                       [.Expr
                          [.Aloc (rg! «peer.c» 191 208 191 211),
                           .Aexpr,
                           .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                        .Pexpr
                          []
                          ()
                          (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 9))))),
                        .Expr
                          [.Aloc (rg! «peer.c» 191 215 191 216),
                           .Aexpr,
                           .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                        .Pexpr
                          []
                          ()
                          (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 8)))))]) <|
                     .Expr [] <| .Epure <| .Pexpr [] () <|
                     .PEcase
                       (.Pexpr [] () <|
                       .PEctor
                         .Ctuple
                         [.Pexpr [] () (.PEsym (a! 46981)), .Pexpr [] () (.PEsym (a! 46982))]) <|
                     [(.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)),
                        .Pattern
                          []
                          (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))])],
                       .Pexpr
                         [.Astd "\xa76.5#5"]
                         ()
                         (.PEundef (rg! «peer.c» 191 206 191 218) .UB036_exceptional_condition)),
                      (.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern
                          []
                          (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                        .Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer))],
                       .Pexpr
                         [.Astd "\xa76.5#5"]
                         ()
                         (.PEundef (rg! «peer.c» 191 206 191 218) .UB036_exceptional_condition)),
                      (.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern [] <|
                        .CaseCtor
                          .Cspecified
                          [.Pattern [] (.CaseBase (.some (a! 46983), .BTy_object .OTy_integer))],
                        .Pattern [] <|
                        .CaseCtor
                          .Cspecified
                          [.Pattern [] (.CaseBase (.some (a! 46984), .BTy_object .OTy_integer))]],
                       .Pexpr [] () <|
                       .PElet
                         (.Pattern [] (.CaseBase (.some (a! 46985), .BTy_object .OTy_integer)))
                         (.Pexpr [.Astd "\xa76.5.7#3, sentence 1"] () <|
                         .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                         [.Pexpr [] () <| .PEval <| .Vctype <|
                          .Ctype
                            [.Aloc (rg! «peer.c» 191 208 191 211)]
                            (.Basic (.Integer (.Signed .Int_))),
                          .Pexpr [] () (.PEsym (a! 46983))]) <| .Pexpr [] () <|
                       .PElet
                         (.Pattern [] (.CaseBase (.some (a! 46986), .BTy_object .OTy_integer)))
                         (.Pexpr [.Astd "\xa76.5.7#3, sentence 1"] () <|
                         .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                         [.Pexpr [] () <| .PEval <| .Vctype <|
                          .Ctype
                            [.Aloc (rg! «peer.c» 191 215 191 216)]
                            (.Basic (.Integer (.Signed .Int_))),
                          .Pexpr [] () (.PEsym (a! 46984))]) <| .Pexpr [] () <|
                       .PEif
                         (.Pexpr [] () <|
                         .PEop
                           .OpLt
                           (.Pexpr [] () (.PEsym (a! 46986)))
                           (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                         (.Pexpr
                           [.Astd "\xa76.5.7#3, sentence 3"]
                           ()
                           (.PEundef (rg! «peer.c» 191 206 191 218) .UB051a_negative_shift)) <|
                       .Pexpr [] () <|
                       .PEif
                         (.Pexpr [] () <|
                         .PEop
                           .OpOr
                           (.Pexpr [] () <|
                           .PEop
                             .OpLt
                             (.Pexpr [.Avalue (.Ainteger (.Signed .Int_))] () <|
                             .PEcall (.Sym (rt! "ctype_width" 4407163753016978909)) <|
                             [.Pexpr [] () <| .PEval <| .Vctype <|
                              .Ctype
                                [.Aloc (rg! «peer.c» 191 206 191 218)]
                                (.Basic (.Integer (.Signed .Int_)))])
                             (.Pexpr [] () (.PEsym (a! 46986)))) <| .Pexpr [] () <|
                         .PEop
                           .OpEq
                           (.Pexpr [.Avalue (.Ainteger (.Signed .Int_))] () <|
                           .PEcall (.Sym (rt! "ctype_width" 4407163753016978909)) <|
                           [.Pexpr [] () <| .PEval <| .Vctype <|
                            .Ctype
                              [.Aloc (rg! «peer.c» 191 206 191 218)]
                              (.Basic (.Integer (.Signed .Int_)))])
                           (.Pexpr [] () (.PEsym (a! 46986))))
                         (.Pexpr
                           [.Astd "\xa76.5.7#4, sentence 3"]
                           ()
                           (.PEundef (rg! «peer.c» 191 206 191 218) .UB51b_shift_too_large)) <|
                       .Pexpr [.Astd "\xa76.5.7#4, sentence 3"] () <|
                       .PEif
                         (.Pexpr [] () <|
                         .PEop
                           .OpLt
                           (.Pexpr [] () (.PEsym (a! 46985)))
                           (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                         (.Pexpr
                           [.Astd "\xa76.5.7#3, sentence 3"]
                           ()
                           (.PEundef (rg! «peer.c» 191 206 191 218) .UB052a_negative_left_shift)) <|
                       .Pexpr [] () <|
                       .PElet
                         (.Pattern [] (.CaseBase (.some (a! 46987), .BTy_object .OTy_integer)))
                         (.Pexpr [] () <| .PEop .OpMul (.Pexpr [] () (.PEsym (a! 46985))) <|
                         .Pexpr [] () <|
                         .PEop
                           .OpExp
                           (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2)))))
                           (.Pexpr [] () (.PEsym (a! 46986)))) <| .Pexpr [] () <|
                       .PEif
                         (.Pexpr [] () <|
                         .PEcall (.Sym (rt! "is_representable_integer" 7764867060197914680)) <|
                         [.Pexpr [] () (.PEsym (a! 46987)),
                          .Pexpr [] () <| .PEval <| .Vctype <|
                          .Ctype
                            [.Aloc (rg! «peer.c» 191 206 191 218)]
                            (.Basic (.Integer (.Signed .Int_)))])
                         (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 46987))])) <|
                       .Pexpr [.Astd "\xa76.5.7#3, sentence 3"] () <|
                       .PEundef
                         (rg! «peer.c» 191 206 191 218)
                         .UB052b_non_representable_left_shift)]]) <| .Expr [] <| .Epure <|
                  .Pexpr [] () <|
                  .PEcase
                    (.Pexpr [] () <|
                    .PEctor
                      .Ctuple
                      [.Pexpr [] () (.PEsym (a! 46970)), .Pexpr [] () (.PEsym (a! 46971))]) <|
                  [(.Pattern [] <| .CaseCtor .Ctuple <|
                    [.Pattern [] <|
                     .CaseCtor
                       .Cspecified
                       [.Pattern [] (.CaseBase (.some (a! 46972), .BTy_object .OTy_integer))],
                     .Pattern [] <|
                     .CaseCtor
                       .Cspecified
                       [.Pattern [] (.CaseBase (.some (a! 46973), .BTy_object .OTy_integer))]],
                    .Pexpr [] () <| .PEctor .Cspecified <|
                    [.Pexpr [.Astd "\xa76.5.12#4"] () <| .PEctor .CivOR <|
                     [.Pexpr [] () <| .PEval <| .Vctype <|
                      .Ctype
                        [.Aloc (rgc! «peer.c» 191 195 191 218 191 204)]
                        (.Basic (.Integer (.Signed .Int_))),
                      .Pexpr [.Astd "\xa76.5.12#3"] () <|
                      .PEcall
                        (.Sym (rt! "conv_int" 15837442492999787586))
                        [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 46972))],
                      .Pexpr [.Astd "\xa76.5.12#3"] () <|
                      .PEcall
                        (.Sym (rt! "conv_int" 15837442492999787586))
                        [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 46973))]]]),
                   (.Pattern [] <|
                    .CaseBase
                      (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                    .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                    .Ctype
                      [.Aloc (rgc! «peer.c» 191 195 191 218 191 204)]
                      (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <| .Eaction <|
                .Paction .Pos <| .Action (rg! «peer.c» 191 167 191 219) () <|
                .Store0
                  .false
                  (.Pexpr [] () <| .PEval <| .Vctype <|
                  .Ctype
                    [.Aloc (rg! «peer.c» 191 167 191 179)]
                    (.Basic (.Integer (.Unsigned .Int_))))
                  (.Pexpr [] () (.PEsym (addr! "__warn_flags" 3345)))
                  (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                  [.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype
                     [.Aloc (rg! «peer.c» 191 167 191 179)]
                     (.Basic (.Integer (.Unsigned .Int_))),
                   .Pexpr [] () (.PEsym (a! 46969))])
                  .NA) <| .Expr [] <|
              .Esseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [.Aloc (rg! «peer.c» 191 220 191 382), .Astmt] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.some (a! 46989), .BTy_loaded .OTy_integer)))
                  (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                  .Expr
                    [.Aloc (rgc! «peer.c» 191 224 191 266 191 251),
                     .Aexpr,
                     .Avalue (.Ainteger (.Signed .Int_))] <|
                  .Ewseq
                    (.Pattern [] <| .CaseCtor .Ctuple <|
                    [.Pattern [] (.CaseBase (.some (a! 46991), .BTy_loaded .OTy_integer)),
                     .Pattern [] (.CaseBase (.some (a! 46992), .BTy_loaded .OTy_integer))])
                    (.Expr [] <| .Eunseq <|
                    [.Expr
                       [.Aloc (rgc! «peer.c» 191 224 191 266 191 251),
                        .Aexpr,
                        .Avalue (.Ainteger (.Signed .Int_)),
                        .Astd "6.5.14#3",
                        .Astd "6.5.14#4",
                        .Aexpr,
                        .Avalue (.Ainteger (.Signed .Int_))] <|
                     .Esseq
                       (.Pattern [] (.CaseBase (.some (a! 47023), .BTy_loaded .OTy_integer)))
                       (.Expr
                         [.Aloc (rgc! «peer.c» 191 224 191 250 191 224),
                          .Aexpr,
                          .Avalue (.Ainteger (.Signed .Int_))] <|
                       .Ewseq
                         (.Pattern [] <| .CaseCtor .Ctuple <|
                         [.Pattern [] (.CaseBase (.some (a! 46996), .BTy_loaded .OTy_integer)),
                          .Pattern [] (.CaseBase (.some (a! 46997), .BTy_loaded .OTy_integer))])
                         (.Expr [] <| .Eunseq <|
                         [.Expr
                            [.Aloc (rgc! «peer.c» 191 224 191 250 191 224),
                             .Aexpr,
                             .Avalue (.Ainteger (.Signed .Int_))] <|
                          .Ewseq
                            (.Pattern [] <| .CaseCtor .Ctuple <|
                            [.Pattern [] (.CaseBase (.some (a! 47001), .BTy_loaded .OTy_integer)),
                             .Pattern [] (.CaseBase (.some (a! 47002), .BTy_loaded .OTy_integer))])
                            (.Expr [] <| .Eunseq <|
                            [.Expr
                               [.Aloc (rgc! «peer.c» 191 224 191 250 191 224),
                                .Aexpr,
                                .Avalue (.Ainteger (.Signed .Int_))] <|
                             .Ewseq
                               (.Pattern [] <| .CaseCtor .Ctuple <|
                               [.Pattern [] (.CaseBase (.some (a! 47006), .BTy_loaded .OTy_integer)),
                                .Pattern [] (.CaseBase (.some (a! 47007), .BTy_loaded .OTy_integer))])
                               (.Expr [] <| .Eunseq <|
                               [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                                .Epure <|
                                .Pexpr
                                  []
                                  ()
                                  (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))),
                                .Expr
                                  [.Aloc (rg! «peer.c» 191 225 191 250),
                                   .Aexpr,
                                   .Avalue (.Ainteger (.Unsigned .Int_)),
                                   .Astd "\xa76.5.10"] <|
                                .Ewseq
                                  (.Pattern [] <| .CaseCtor .Ctuple <|
                                  [.Pattern [] (.CaseBase (.some (a! 47011), .BTy_loaded .OTy_integer)),
                                   .Pattern [] (.CaseBase (.some (a! 47012), .BTy_loaded .OTy_integer))])
                                  (.Expr [] <| .Eunseq <|
                                  [.Expr
                                     [.Aloc (rg! «peer.c» 191 226 191 238),
                                      .Aexpr,
                                      .Avalue (.Ainteger (.Unsigned .Int_))] <|
                                   .Ewseq
                                     (.Pattern [] (.CaseBase (.some (a! 47015), .BTy_object .OTy_pointer)))
                                     (.Expr
                                       [.Aloc (rg! «peer.c» 191 226 191 238), .Aexpr]
                                       (.Epure (.Pexpr [] () (.PEsym (addr! "__warn_flags" 3345))))) <|
                                   .Expr [] <| .Eaction <| .Paction .Pos <|
                                   .Action (rg! «peer.c» 191 226 191 238) () <|
                                   .Load0
                                     (.Pexpr [] () <| .PEval <| .Vctype <|
                                     .Ctype
                                       [.Aloc (rg! «peer.c» 191 167 191 179)]
                                       (.Basic (.Integer (.Unsigned .Int_))))
                                     (.Pexpr [] () (.PEsym (a! 47015)))
                                     .NA,
                                   .Expr
                                     [.Aloc (rg! «peer.c» 191 241 191 249),
                                      .Aexpr,
                                      .Avalue (.Ainteger (.Signed .Int_)),
                                      .Astd "\xa76.5.7"] <|
                                   .Ewseq
                                     (.Pattern [] <| .CaseCtor .Ctuple <|
                                     [.Pattern [] (.CaseBase (.some (a! 47016), .BTy_loaded .OTy_integer)),
                                      .Pattern [] (.CaseBase (.some (a! 47017), .BTy_loaded .OTy_integer))])
                                     (.Expr [] <| .Eunseq <|
                                     [.Expr
                                        [.Aloc (rg! «peer.c» 191 242 191 243),
                                         .Aexpr,
                                         .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                                      .Pexpr
                                        []
                                        ()
                                        (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1))))),
                                      .Expr
                                        [.Aloc (rg! «peer.c» 191 247 191 248),
                                         .Aexpr,
                                         .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                                      .Pexpr
                                        []
                                        ()
                                        (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1)))))]) <|
                                   .Expr [] <| .Epure <| .Pexpr [] () <|
                                   .PEcase
                                     (.Pexpr [] () <|
                                     .PEctor
                                       .Ctuple
                                       [.Pexpr [] () (.PEsym (a! 47016)), .Pexpr [] () (.PEsym (a! 47017))]) <|
                                   [(.Pattern [] <| .CaseCtor .Ctuple <|
                                     [.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)),
                                      .Pattern
                                        []
                                        (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))])],
                                     .Pexpr
                                       [.Astd "\xa76.5#5"]
                                       ()
                                       (.PEundef (rg! «peer.c» 191 241 191 249) .UB036_exceptional_condition)),
                                    (.Pattern [] <| .CaseCtor .Ctuple <|
                                     [.Pattern
                                        []
                                        (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                                      .Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer))],
                                     .Pexpr
                                       [.Astd "\xa76.5#5"]
                                       ()
                                       (.PEundef (rg! «peer.c» 191 241 191 249) .UB036_exceptional_condition)),
                                    (.Pattern [] <| .CaseCtor .Ctuple <|
                                     [.Pattern [] <|
                                      .CaseCtor
                                        .Cspecified
                                        [.Pattern [] (.CaseBase (.some (a! 47018), .BTy_object .OTy_integer))],
                                      .Pattern [] <|
                                      .CaseCtor
                                        .Cspecified
                                        [.Pattern [] (.CaseBase (.some (a! 47019), .BTy_object .OTy_integer))]],
                                     .Pexpr [] () <|
                                     .PElet
                                       (.Pattern [] (.CaseBase (.some (a! 47020), .BTy_object .OTy_integer)))
                                       (.Pexpr [.Astd "\xa76.5.7#3, sentence 1"] () <|
                                       .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                       [.Pexpr [] () <| .PEval <| .Vctype <|
                                        .Ctype
                                          [.Aloc (rg! «peer.c» 191 242 191 243)]
                                          (.Basic (.Integer (.Signed .Int_))),
                                        .Pexpr [] () (.PEsym (a! 47018))]) <| .Pexpr [] () <|
                                     .PElet
                                       (.Pattern [] (.CaseBase (.some (a! 47021), .BTy_object .OTy_integer)))
                                       (.Pexpr [.Astd "\xa76.5.7#3, sentence 1"] () <|
                                       .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                       [.Pexpr [] () <| .PEval <| .Vctype <|
                                        .Ctype
                                          [.Aloc (rg! «peer.c» 191 247 191 248)]
                                          (.Basic (.Integer (.Signed .Int_))),
                                        .Pexpr [] () (.PEsym (a! 47019))]) <| .Pexpr [] () <|
                                     .PEif
                                       (.Pexpr [] () <|
                                       .PEop
                                         .OpLt
                                         (.Pexpr [] () (.PEsym (a! 47021)))
                                         (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                                       (.Pexpr
                                         [.Astd "\xa76.5.7#3, sentence 3"]
                                         ()
                                         (.PEundef (rg! «peer.c» 191 241 191 249) .UB051a_negative_shift)) <|
                                     .Pexpr [] () <|
                                     .PEif
                                       (.Pexpr [] () <|
                                       .PEop
                                         .OpOr
                                         (.Pexpr [] () <|
                                         .PEop
                                           .OpLt
                                           (.Pexpr [.Avalue (.Ainteger (.Signed .Int_))] () <|
                                           .PEcall (.Sym (rt! "ctype_width" 4407163753016978909)) <|
                                           [.Pexpr [] () <| .PEval <| .Vctype <|
                                            .Ctype
                                              [.Aloc (rg! «peer.c» 191 241 191 249)]
                                              (.Basic (.Integer (.Signed .Int_)))])
                                           (.Pexpr [] () (.PEsym (a! 47021)))) <| .Pexpr [] () <|
                                       .PEop
                                         .OpEq
                                         (.Pexpr [.Avalue (.Ainteger (.Signed .Int_))] () <|
                                         .PEcall (.Sym (rt! "ctype_width" 4407163753016978909)) <|
                                         [.Pexpr [] () <| .PEval <| .Vctype <|
                                          .Ctype
                                            [.Aloc (rg! «peer.c» 191 241 191 249)]
                                            (.Basic (.Integer (.Signed .Int_)))])
                                         (.Pexpr [] () (.PEsym (a! 47021))))
                                       (.Pexpr
                                         [.Astd "\xa76.5.7#4, sentence 3"]
                                         ()
                                         (.PEundef (rg! «peer.c» 191 241 191 249) .UB51b_shift_too_large)) <|
                                     .Pexpr [.Astd "\xa76.5.7#4, sentence 3"] () <|
                                     .PEif
                                       (.Pexpr [] () <|
                                       .PEop
                                         .OpLt
                                         (.Pexpr [] () (.PEsym (a! 47020)))
                                         (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                                       (.Pexpr
                                         [.Astd "\xa76.5.7#3, sentence 3"]
                                         ()
                                         (.PEundef (rg! «peer.c» 191 241 191 249) .UB052a_negative_left_shift)) <|
                                     .Pexpr [] () <|
                                     .PElet
                                       (.Pattern [] (.CaseBase (.some (a! 47022), .BTy_object .OTy_integer)))
                                       (.Pexpr [] () <|
                                       .PEop .OpMul (.Pexpr [] () (.PEsym (a! 47020))) <|
                                       .Pexpr [] () <|
                                       .PEop
                                         .OpExp
                                         (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2)))))
                                         (.Pexpr [] () (.PEsym (a! 47021)))) <| .Pexpr [] () <|
                                     .PEif
                                       (.Pexpr [] () <|
                                       .PEcall (.Sym (rt! "is_representable_integer" 7764867060197914680)) <|
                                       [.Pexpr [] () (.PEsym (a! 47022)),
                                        .Pexpr [] () <| .PEval <| .Vctype <|
                                        .Ctype
                                          [.Aloc (rg! «peer.c» 191 241 191 249)]
                                          (.Basic (.Integer (.Signed .Int_)))])
                                       (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 47022))])) <|
                                     .Pexpr [.Astd "\xa76.5.7#3, sentence 3"] () <|
                                     .PEundef
                                       (rg! «peer.c» 191 241 191 249)
                                       .UB052b_non_representable_left_shift)]]) <| .Expr [] <|
                                .Epure <| .Pexpr [] () <|
                                .PEcase
                                  (.Pexpr [] () <|
                                  .PEctor
                                    .Ctuple
                                    [.Pexpr [] () (.PEsym (a! 47011)), .Pexpr [] () (.PEsym (a! 47012))]) <|
                                [(.Pattern [] <| .CaseCtor .Ctuple <|
                                  [.Pattern [] <|
                                   .CaseCtor
                                     .Cspecified
                                     [.Pattern [] (.CaseBase (.some (a! 47013), .BTy_object .OTy_integer))],
                                   .Pattern [] <|
                                   .CaseCtor
                                     .Cspecified
                                     [.Pattern [] (.CaseBase (.some (a! 47014), .BTy_object .OTy_integer))]],
                                  .Pexpr [] () <| .PEctor .Cspecified <|
                                  [.Pexpr [.Astd "\xa76.5.10#4"] () <| .PEctor .CivAND <|
                                   [.Pexpr [] () <| .PEval <| .Vctype <|
                                    .Ctype
                                      [.Aloc (rg! «peer.c» 191 225 191 250)]
                                      (.Basic (.Integer (.Unsigned .Int_))),
                                    .Pexpr [.Astd "\xa76.5.10#3"] () <|
                                    .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                    [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_int)),
                                     .Pexpr [] () (.PEsym (a! 47013))],
                                    .Pexpr [.Astd "\xa76.5.10#3"] () <|
                                    .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                    [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_int)),
                                     .Pexpr [] () (.PEsym (a! 47014))]]]),
                                 (.Pattern [] <|
                                  .CaseBase
                                    (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                  .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                                  .Ctype
                                    [.Aloc (rg! «peer.c» 191 225 191 250)]
                                    (.Basic (.Integer (.Unsigned .Int_))))]]) <| .Expr [] <|
                             .Epure <| .Pexpr [] () <|
                             .PEcase
                               (.Pexpr [] () <|
                               .PEctor
                                 .Ctuple
                                 [.Pexpr [] () (.PEsym (a! 47006)), .Pexpr [] () (.PEsym (a! 47007))]) <|
                             [(.Pattern [] <| .CaseCtor .Ctuple <|
                               [.Pattern [] <|
                                .CaseCtor
                                  .Cspecified
                                  [.Pattern [] (.CaseBase (.some (a! 47008), .BTy_object .OTy_integer))],
                                .Pattern [] <|
                                .CaseCtor
                                  .Cspecified
                                  [.Pattern [] (.CaseBase (.some (a! 47009), .BTy_object .OTy_integer))]],
                               .Pexpr [.Astd "\xa76.5.9#3"] () <|
                               .PEif
                                 (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                 .PEop
                                   .OpEq
                                   (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                   .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                   [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_int)),
                                    .Pexpr [] () (.PEsym (a! 47008))]) <|
                                 .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                 .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                 [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_int)),
                                  .Pexpr [] () (.PEsym (a! 47009))])
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
                                 [.Aloc (rgc! «peer.c» 191 224 191 250 191 224)]
                                 (.Basic (.Integer (.Signed .Int_))))],
                             .Expr
                               [.Aloc (rgc! «peer.c» 191 224 191 250 191 224),
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
                              [.Pexpr [] () (.PEsym (a! 47001)), .Pexpr [] () (.PEsym (a! 47002))]) <|
                          [(.Pattern [] <| .CaseCtor .Ctuple <|
                            [.Pattern [] <|
                             .CaseCtor
                               .Cspecified
                               [.Pattern [] (.CaseBase (.some (a! 47003), .BTy_object .OTy_integer))],
                             .Pattern [] <|
                             .CaseCtor
                               .Cspecified
                               [.Pattern [] (.CaseBase (.some (a! 47004), .BTy_object .OTy_integer))]],
                            .Pexpr [.Astd "\xa76.5.9#3"] () <|
                            .PEif
                              (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                              .PEop
                                .OpEq
                                (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                 .Pexpr [] () (.PEsym (a! 47003))]) <|
                              .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                              .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                              [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                               .Pexpr [] () (.PEsym (a! 47004))])
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
                              [.Aloc (rgc! «peer.c» 191 224 191 250 191 224)]
                              (.Basic (.Integer (.Signed .Int_))))],
                          .Expr
                            [.Aloc (rgc! «peer.c» 191 224 191 250 191 224),
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
                           [.Pexpr [] () (.PEsym (a! 46996)), .Pexpr [] () (.PEsym (a! 46997))]) <|
                       [(.Pattern [] <| .CaseCtor .Ctuple <|
                         [.Pattern [] <|
                          .CaseCtor
                            .Cspecified
                            [.Pattern [] (.CaseBase (.some (a! 46998), .BTy_object .OTy_integer))],
                          .Pattern [] <|
                          .CaseCtor
                            .Cspecified
                            [.Pattern [] (.CaseBase (.some (a! 46999), .BTy_object .OTy_integer))]],
                         .Pexpr [.Astd "\xa76.5.9#3"] () <|
                         .PEif
                           (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                           .PEop
                             .OpEq
                             (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                             .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                             [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                              .Pexpr [] () (.PEsym (a! 46998))]) <|
                           .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                           .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                           [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                            .Pexpr [] () (.PEsym (a! 46999))])
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
                           [.Aloc (rgc! «peer.c» 191 224 191 250 191 224)]
                           (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <|
                     .Ecase (.Pexpr [] () (.PEsym (a! 47023))) <|
                     [(.Pattern [] <|
                       .CaseCtor
                         .Cspecified
                         [.Pattern [] (.CaseBase (.some (a! 47024), .BTy_object .OTy_integer))],
                       .Expr [] <|
                       .Eif
                         (.Pexpr [] () <|
                         .PEop
                           .OpEq
                           (.Pexpr [] () (.PEsym (a! 47024)))
                           (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                         (.Expr [] <|
                         .Esseq
                           (.Pattern [] (.CaseBase (.some (a! 47036), .BTy_loaded .OTy_integer)))
                           (.Expr
                             [.Aloc (rgc! «peer.c» 191 254 191 266 191 254),
                              .Aexpr,
                              .Avalue (.Ainteger (.Signed .Int_))] <|
                           .Ewseq
                             (.Pattern [] <| .CaseCtor .Ctuple <|
                             [.Pattern [] (.CaseBase (.some (a! 47025), .BTy_loaded .OTy_integer)),
                              .Pattern [] (.CaseBase (.some (a! 47026), .BTy_loaded .OTy_integer))])
                             (.Expr [] <| .Eunseq <|
                             [.Expr
                                [.Aloc (rgc! «peer.c» 191 254 191 266 191 254),
                                 .Aexpr,
                                 .Avalue (.Ainteger (.Signed .Int_))] <|
                              .Ewseq
                                (.Pattern [] <| .CaseCtor .Ctuple <|
                                [.Pattern [] (.CaseBase (.some (a! 47030), .BTy_loaded .OTy_integer)),
                                 .Pattern [] (.CaseBase (.some (a! 47031), .BTy_loaded .OTy_integer))])
                                (.Expr [] <| .Eunseq <|
                                [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                                 .Epure <|
                                 .Pexpr
                                   []
                                   ()
                                   (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))),
                                 .Expr
                                   [.Aloc (rg! «peer.c» 191 255 191 266),
                                    .Aexpr,
                                    .Avalue (.Ainteger .Bool0)] <|
                                 .Ewseq
                                   (.Pattern [] (.CaseBase (.some (a! 47035), .BTy_object .OTy_pointer)))
                                   (.Expr
                                     [.Aloc (rg! «peer.c» 191 255 191 266), .Aexpr]
                                     (.Epure (.Pexpr [] () (.PEsym (addr! "__warn_done" 3344))))) <|
                                 .Expr [] <| .Eaction <| .Paction .Pos <|
                                 .Action (rg! «peer.c» 191 255 191 266) () <|
                                 .Load0
                                   (.Pexpr [] () <| .PEval <| .Vctype <|
                                   .Ctype
                                     [.Aloc (rg! «peer.c» 191 148 191 153)]
                                     (.Basic (.Integer .Bool0)))
                                   (.Pexpr [] () (.PEsym (a! 47035)))
                                   .NA]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
                              .PEcase
                                (.Pexpr [] () <|
                                .PEctor
                                  .Ctuple
                                  [.Pexpr [] () (.PEsym (a! 47030)), .Pexpr [] () (.PEsym (a! 47031))]) <|
                              [(.Pattern [] <| .CaseCtor .Ctuple <|
                                [.Pattern [] <|
                                 .CaseCtor
                                   .Cspecified
                                   [.Pattern [] (.CaseBase (.some (a! 47032), .BTy_object .OTy_integer))],
                                 .Pattern [] <|
                                 .CaseCtor
                                   .Cspecified
                                   [.Pattern [] (.CaseBase (.some (a! 47033), .BTy_object .OTy_integer))]],
                                .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                .PEif
                                  (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                  .PEop
                                    .OpEq
                                    (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                    .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                    [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                     .Pexpr [] () (.PEsym (a! 47032))]) <|
                                  .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                  .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                  [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                   .Pexpr [] () (.PEsym (a! 47033))])
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
                                  [.Aloc (rgc! «peer.c» 191 254 191 266 191 254)]
                                  (.Basic (.Integer (.Signed .Int_))))],
                              .Expr
                                [.Aloc (rgc! «peer.c» 191 254 191 266 191 254),
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
                               [.Pexpr [] () (.PEsym (a! 47025)), .Pexpr [] () (.PEsym (a! 47026))]) <|
                           [(.Pattern [] <| .CaseCtor .Ctuple <|
                             [.Pattern [] <|
                              .CaseCtor
                                .Cspecified
                                [.Pattern [] (.CaseBase (.some (a! 47027), .BTy_object .OTy_integer))],
                              .Pattern [] <|
                              .CaseCtor
                                .Cspecified
                                [.Pattern [] (.CaseBase (.some (a! 47028), .BTy_object .OTy_integer))]],
                             .Pexpr [.Astd "\xa76.5.9#3"] () <|
                             .PEif
                               (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <| .PEnot <|
                               .Pexpr [] () <|
                               .PEop
                                 .OpEq
                                 (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                 .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                 [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                  .Pexpr [] () (.PEsym (a! 47027))]) <|
                               .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                               .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                               [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                .Pexpr [] () (.PEsym (a! 47028))])
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
                               [.Aloc (rgc! «peer.c» 191 254 191 266 191 254)]
                               (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <| .Epure <|
                         .Pexpr [] () <|
                         .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                         [.Pexpr [] () <| .PEval <| .Vctype <|
                          .Ctype
                            [.Aloc (rgc! «peer.c» 191 224 191 266 191 251)]
                            (.Basic (.Integer (.Signed .Int_))),
                          .Pexpr [] () (.PEsym (a! 47036))]) <| .Expr [] <|
                       .Esseq
                         (.Pattern [] (.CaseBase (.some (a! 47037), .BTy_loaded .OTy_integer)))
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
                          [.Aloc (rgc! «peer.c» 191 224 191 266 191 251)]
                          (.Basic (.Integer (.Signed .Int_))),
                        .Pexpr [] () (.PEsym (a! 47037))]),
                      (.Pattern
                         []
                         (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                       .Expr [] <| .Epure <| .Pexpr [] () <|
                       .PEundef
                         (rgc! «peer.c» 191 224 191 266 191 251)
                         (.UB_CERB004_unspecified .UB_unspec_conditional))],
                     .Expr
                       [.Aloc (rgc! «peer.c» 191 224 191 266 191 251),
                        .Aexpr,
                        .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                     .Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                  .Expr [] <| .Epure <| .Pexpr [] () <|
                  .PEcase
                    (.Pexpr [] () <|
                    .PEctor
                      .Ctuple
                      [.Pexpr [] () (.PEsym (a! 46991)), .Pexpr [] () (.PEsym (a! 46992))]) <|
                  [(.Pattern [] <| .CaseCtor .Ctuple <|
                    [.Pattern [] <|
                     .CaseCtor
                       .Cspecified
                       [.Pattern [] (.CaseBase (.some (a! 46993), .BTy_object .OTy_integer))],
                     .Pattern [] <|
                     .CaseCtor
                       .Cspecified
                       [.Pattern [] (.CaseBase (.some (a! 46994), .BTy_object .OTy_integer))]],
                    .Pexpr [.Astd "\xa76.5.9#3"] () <|
                    .PEif
                      (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                      .PEop
                        .OpEq
                        (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                        .PEcall
                          (.Sym (rt! "conv_int" 15837442492999787586))
                          [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 46993))]) <|
                      .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                      .PEcall
                        (.Sym (rt! "conv_int" 15837442492999787586))
                        [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 46994))])
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
                      [.Aloc (rgc! «peer.c» 191 224 191 266 191 251)]
                      (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.some (a! 46988), .BTy_boolean)))
                  (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46989))) <|
                  [(.Pattern [] <|
                    .CaseCtor
                      .Cspecified
                      [.Pattern [] (.CaseBase (.some (a! 46990), .BTy_object .OTy_integer))],
                    .Expr [] <| .Epure <| .Pexpr [] () <|
                    .PEif
                      (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                      .PEop
                        .OpEq
                        (.Pexpr [] () (.PEsym (a! 46990)))
                        (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
                      (.Pexpr [] () (.PEval .Vtrue))
                      (.Pexpr [] () (.PEval .Vfalse))),
                   (.Pattern
                      []
                      (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                    .Expr [] <| .End <|
                    [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
                     .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
                .Eif
                  (.Pexpr [] () (.PEsym (a! 46988)))
                  (.Expr [.Aloc (rg! «peer.c» 191 268 191 382), .Astmt] <|
                  .Esseq
                    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                    (.Expr [.Aloc (rg! «peer.c» 191 270 191 286), .Astmt] <|
                    .Esseq
                      (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
                      (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                      .Expr
                        [.Aloc (rgc! «peer.c» 191 270 191 285 191 282),
                         .Aexpr,
                         .Avalue (.Ainteger .Bool0),
                         .Astd "\xa76.5.16#3, sentence 4"] <|
                      .Ewseq
                        (.Pattern [] <| .CaseCtor .Ctuple <|
                        [.Pattern [] (.CaseBase (.some (a! 47038), .BTy_object .OTy_pointer)),
                         .Pattern [] (.CaseBase (.some (a! 47039), .BTy_loaded .OTy_integer))])
                        (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
                        [.Expr
                           [.Aloc (rg! «peer.c» 191 270 191 281), .Aexpr]
                           (.Epure (.Pexpr [] () (.PEsym (addr! "__warn_done" 3344)))),
                         .Expr
                           [.Aloc (rg! «peer.c» 191 284 191 285),
                            .Aexpr,
                            .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                         .Pexpr
                           []
                           ()
                           (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1)))))]) <|
                      .Expr [] <|
                      .Ewseq
                        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                        (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
                        .Action (rgc! «peer.c» 191 270 191 285 191 282) () <|
                        .Store0
                          .false
                          (.Pexpr [] () <| .PEval <| .Vctype <|
                          .Ctype [.Aloc (rg! «peer.c» 191 148 191 153)] (.Basic (.Integer .Bool0)))
                          (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 47038)))
                          (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
                          .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                          [.Pexpr [] () <| .PEval <| .Vctype <|
                           .Ctype
                             [.Aloc (rg! «peer.c» 191 148 191 153)]
                             (.Basic (.Integer .Bool0)),
                           .Pexpr [] () (.PEsym (a! 47039))])
                          .NA) <| .Expr [] <| .Epure <|
                      .Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
                      .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                      [.Pexpr [] () <| .PEval <| .Vctype <|
                       .Ctype [.Aloc (rg! «peer.c» 191 148 191 153)] (.Basic (.Integer .Bool0)),
                       .Pexpr [] () (.PEsym (a! 47039))])
                      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
                  .Esseq
                    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                    (.Expr [.Aloc (rg! «peer.c» 191 287 191 380), .Astmt] <|
                    .Esseq
                      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                      (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                      .Expr
                        [.Aloc (rg! «peer.c» 191 287 191 379),
                         .Aexpr,
                         .Astd "\xa76.5.2.2#10, sentence 1"] <|
                      .Esseq
                        (.Pattern [] <| .CaseCtor .Ctuple <|
                        [.Pattern [] <| .CaseCtor .Ctuple <|
                         [.Pattern [] (.CaseBase (.some (a! 47041), .BTy_loaded .OTy_pointer)),
                          .Pattern [] <| .CaseCtor .Ctuple <|
                          [.Pattern [] (.CaseBase (.some (a! 47042), .BTy_ctype)),
                           .Pattern [] (.CaseBase (.some (a! 47043), .BTy_list .BTy_ctype)),
                           .Pattern [] (.CaseBase (.some (a! 47044), .BTy_boolean)),
                           .Pattern [] (.CaseBase (.some (a! 47045), .BTy_boolean))]],
                         .Pattern [] (.CaseBase (.some (a! 47050), .BTy_loaded .OTy_pointer)),
                         .Pattern [] (.CaseBase (.some (a! 47054), .BTy_loaded .OTy_integer)),
                         .Pattern [] (.CaseBase (.some (a! 47055), .BTy_loaded .OTy_integer)),
                         .Pattern [] (.CaseBase (.some (a! 47063), .BTy_loaded .OTy_pointer))])
                        (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
                        [.Expr [] <|
                         .Esseq
                           (.Pattern [] (.CaseBase (.some (a! 47040), .BTy_loaded .OTy_pointer)))
                           (.Expr [.Aloc (rg! «peer.c» 191 287 191 304), .Aexpr] <| .Epure <|
                           .Pexpr [] () <| .PEval <| .Vloaded <|
                           .LVspecified
                             (.OVpointer (.PV .Prov_none (.PVfunction (c! "warn_slowpath_fmt" 120))))) <|
                         .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
                         [.Pexpr [] () (.PEsym (a! 47040)),
                          .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 47040))))],
                         .Expr [.Aloc (rg! «peer.c» 191 305 191 341), .Aexpr] <|
                         .Ewseq
                           (.Pattern [] (.CaseBase (.some (a! 47052), .BTy_object .OTy_pointer)))
                           (.Expr
                             [.Aloc (rg! «peer.c» 191 305 191 341), .Aexpr]
                             (.Epure (.Pexpr [] () (.PEsym (a! 47051))))) <|
                         .Expr [.Astd "\xa76.3.2.1#3"] <|
                         .Ewseq
                           (.Pattern [] (.CaseBase (.some (a! 47053), .BTy_object .OTy_pointer)))
                           (.Expr [] <| .Ememop .PtrArrayShift <|
                           [.Pexpr [] () (.PEsym (a! 47052)),
                            .Pexpr [] () (.PEval (.Vctype Ty.char)),
                            .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
                         .Expr [] <|
                         .Epure
                           (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 47053))])),
                         .Expr
                           [.Aloc (rg! «peer.c» 191 343 191 346),
                            .Aexpr,
                            .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                         .Pexpr
                           []
                           ()
                           (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 191))))),
                         .Expr
                           [.Aloc (rgc! «peer.c» 191 348 191 365 191 361),
                            .Aexpr,
                            .Avalue (.Ainteger (.Unsigned .Int_)),
                            .Astd "\xa76.5.7"] <|
                         .Ewseq
                           (.Pattern [] <| .CaseCtor .Ctuple <|
                           [.Pattern [] (.CaseBase (.some (a! 47056), .BTy_loaded .OTy_integer)),
                            .Pattern [] (.CaseBase (.some (a! 47057), .BTy_loaded .OTy_integer))])
                           (.Expr [] <| .Eunseq <|
                           [.Expr
                              [.Aloc (rg! «peer.c» 191 348 191 360),
                               .Aexpr,
                               .Avalue (.Ainteger (.Unsigned .Int_))] <|
                            .Ewseq
                              (.Pattern [] (.CaseBase (.some (a! 47062), .BTy_object .OTy_pointer)))
                              (.Expr
                                [.Aloc (rg! «peer.c» 191 348 191 360), .Aexpr]
                                (.Epure (.Pexpr [] () (.PEsym (addr! "__warn_flags" 3345))))) <|
                            .Expr [] <| .Eaction <| .Paction .Pos <|
                            .Action (rg! «peer.c» 191 348 191 360) () <|
                            .Load0
                              (.Pexpr [] () <| .PEval <| .Vctype <|
                              .Ctype
                                [.Aloc (rg! «peer.c» 191 167 191 179)]
                                (.Basic (.Integer (.Unsigned .Int_))))
                              (.Pexpr [] () (.PEsym (a! 47062)))
                              .NA,
                            .Expr
                              [.Aloc (rg! «peer.c» 191 364 191 365),
                               .Aexpr,
                               .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                            .Pexpr
                              []
                              ()
                              (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 8)))))]) <|
                         .Expr [] <| .Epure <| .Pexpr [] () <|
                         .PEcase
                           (.Pexpr [] () <|
                           .PEctor
                             .Ctuple
                             [.Pexpr [] () (.PEsym (a! 47056)), .Pexpr [] () (.PEsym (a! 47057))]) <|
                         [(.Pattern [] <| .CaseCtor .Ctuple <|
                           [.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)),
                            .Pattern
                              []
                              (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))])],
                           .Pexpr [.Astd "\xa76.5#5"] () <|
                           .PEundef
                             (rgc! «peer.c» 191 348 191 365 191 361)
                             .UB036_exceptional_condition),
                          (.Pattern [] <| .CaseCtor .Ctuple <|
                           [.Pattern
                              []
                              (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                            .Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer))],
                           .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                           .Ctype
                             [.Aloc (rgc! «peer.c» 191 348 191 365 191 361)]
                             (.Basic (.Integer (.Unsigned .Int_)))),
                          (.Pattern [] <| .CaseCtor .Ctuple <|
                           [.Pattern [] <|
                            .CaseCtor
                              .Cspecified
                              [.Pattern [] (.CaseBase (.some (a! 47058), .BTy_object .OTy_integer))],
                            .Pattern [] <|
                            .CaseCtor
                              .Cspecified
                              [.Pattern [] (.CaseBase (.some (a! 47059), .BTy_object .OTy_integer))]],
                           .Pexpr [] () <|
                           .PElet
                             (.Pattern [] (.CaseBase (.some (a! 47060), .BTy_object .OTy_integer)))
                             (.Pexpr [] () <|
                             .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                             [.Pexpr [] () <| .PEval <| .Vctype <|
                              .Ctype
                                [.Aloc (rg! «peer.c» 191 348 191 360)]
                                (.Basic (.Integer (.Unsigned .Int_))),
                              .Pexpr [] () (.PEsym (a! 47058))]) <| .Pexpr [] () <|
                           .PElet
                             (.Pattern [] (.CaseBase (.some (a! 47061), .BTy_object .OTy_integer)))
                             (.Pexpr [] () <|
                             .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                             [.Pexpr [] () <| .PEval <| .Vctype <|
                              .Ctype
                                [.Aloc (rg! «peer.c» 191 364 191 365)]
                                (.Basic (.Integer (.Signed .Int_))),
                              .Pexpr [] () (.PEsym (a! 47059))]) <| .Pexpr [] () <|
                           .PEif
                             (.Pexpr [] () <|
                             .PEop
                               .OpLt
                               (.Pexpr [] () (.PEsym (a! 47061)))
                               (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                             (.Pexpr [.Astd "\xa76.5.7#3, sentence 3"] () <|
                             .PEundef
                               (rgc! «peer.c» 191 348 191 365 191 361)
                               .UB051a_negative_shift) <| .Pexpr [] () <|
                           .PEif
                             (.Pexpr [] () <|
                             .PEop
                               .OpOr
                               (.Pexpr [] () <|
                               .PEop
                                 .OpLt
                                 (.Pexpr [.Avalue (.Ainteger (.Signed .Int_))] () <|
                                 .PEcall (.Sym (rt! "ctype_width" 4407163753016978909)) <|
                                 [.Pexpr [] () <| .PEval <| .Vctype <|
                                  .Ctype
                                    [.Aloc (rgc! «peer.c» 191 348 191 365 191 361)]
                                    (.Basic (.Integer (.Unsigned .Int_)))])
                                 (.Pexpr [] () (.PEsym (a! 47061)))) <| .Pexpr [] () <|
                             .PEop
                               .OpEq
                               (.Pexpr [.Avalue (.Ainteger (.Signed .Int_))] () <|
                               .PEcall (.Sym (rt! "ctype_width" 4407163753016978909)) <|
                               [.Pexpr [] () <| .PEval <| .Vctype <|
                                .Ctype
                                  [.Aloc (rgc! «peer.c» 191 348 191 365 191 361)]
                                  (.Basic (.Integer (.Unsigned .Int_)))])
                               (.Pexpr [] () (.PEsym (a! 47061))))
                             (.Pexpr [.Astd "\xa76.5.7#3, sentence 3"] () <|
                             .PEundef
                               (rgc! «peer.c» 191 348 191 365 191 361)
                               .UB51b_shift_too_large) <| .Pexpr [] () <| .PEctor .Cspecified <|
                           [.Pexpr [.Astd "6.5.7#5, sentence 2"] () <|
                            .PEop .OpDiv (.Pexpr [] () (.PEsym (a! 47060))) <| .Pexpr [] () <|
                            .PEop
                              .OpExp
                              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2)))))
                              (.Pexpr [] () (.PEsym (a! 47061)))])],
                         .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Cspecified <|
                         [.Pexpr [] () <| .PEval <| .Vobject <| .OVpointer <| .PV .Prov_none <|
                          .PVnull <| .Ctype [.Aloc (rg! «peer.c» 191 367 191 378)] <|
                          .Pointer
                            (.mk .false .false .false)
                            (.Ctype [.Aloc (rg! «peer.c» 191 369 191 373)] .Void0)]]) <| .Expr [] <|
                      .Eif
                        (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                        .PEop
                          .OpLe
                          (.Pexpr [] () <|
                          .PEcall
                            (.Sym (rt! "params_length" 18299737999929047716))
                            [.Pexpr [] () (.PEsym (a! 47043))])
                          (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 4))))))
                        (.Expr [] <| .Epure <|
                        .Pexpr
                          [.Astd "\xa76.5.2.2#6, sentence 3"]
                          ()
                          (.PEundef (rg! «peer.c» 191 287 191 379) .UB038_number_of_args)) <|
                      .Expr [] <|
                      .Eif
                        (.Pexpr [] () <|
                        .PEop .OpOr (.Pexpr [] () (.PEnot (.Pexpr [] () (.PEsym (a! 47044))))) <|
                        .Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                        .PEare_compatible
                          (.Pexpr
                            []
                            ()
                            (.PEval (.Vctype (.Ctype [.Aloc .unknown, .Aloc .unknown] .Void0))))
                          (.Pexpr [] () (.PEsym (a! 47042))))
                        (.Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.2.2#9"] () <|
                        .PEundef (rg! «peer.c» 191 287 191 379) .UB041_function_not_compatible) <|
                      .Expr [] <|
                      .Esseq
                        (.Pattern [] <| .CaseBase <|
                        (.some <|
                         sym.Symbol Src.digest 47046 (.SD_FunArg (rg! «peer.c» 191 305 191 341) 0),
                         .BTy_object .OTy_pointer))
                        (.Expr [] <|
                        .Elet
                          (.Pattern [] (.CaseBase (.some (a! 47064), .BTy_ctype)))
                          (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                          [.Pexpr [] () (.PEsym (a! 47043)),
                           .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
                        .Expr [] <|
                        .Eif
                          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                          .PEare_compatible
                            (.Pexpr [] () <| .PEval <| .Vctype <|
                            .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                            .Pointer
                              (.mk .true .false .false)
                              (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))))
                            (.Pexpr [] () (.PEsym (a! 47064))))
                          (.Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.2.2#9"] () <|
                          .PEundef (rg! «peer.c» 191 287 191 379) .UB041_function_not_compatible) <|
                        .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
                        .Ewseq
                          (.Pattern [] (.CaseBase (.some (a! 47065), .BTy_object .OTy_pointer)))
                          (.Expr [] <| .Eaction <| .Paction .Pos <|
                          .Action (rg! «peer.c» 191 287 191 379) () <|
                          .Create
                            (.Pexpr [] () <| .PEctor .Civalignof <|
                            [.Pexpr [] () <| .PEval <| .Vctype <|
                             .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                             .Pointer
                               (.mk .true .false .false)
                               (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0)))])
                            (.Pexpr [] () <| .PEval <| .Vctype <|
                            .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                            .Pointer
                              (.mk .true .false .false)
                              (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0)))) <|
                          .PrefFunArg
                            (rg! «peer.c» 191 287 191 379)
                            "fa5a43434dcb33dc130b30cb8faeddf7"
                            0) <| .Expr [] <|
                        .Ewseq
                          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                          (.Expr [] <| .Eaction <| .Paction .Pos <|
                          .Action (rg! «peer.c» 191 287 191 379) () <|
                          .Store0
                            .false
                            (.Pexpr [] () <| .PEval <| .Vctype <|
                            .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                            .Pointer
                              (.mk .true .false .false)
                              (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))))
                            (.Pexpr [] () (.PEsym (a! 47065)))
                            (.Pexpr [] () (.PEsym (a! 47050)))
                            .NA)
                          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 47065)))))) <| .Expr [] <|
                      .Esseq
                        (.Pattern [] <| .CaseBase <|
                        (.some <|
                         sym.Symbol Src.digest 47047 (.SD_FunArg (rg! «peer.c» 191 343 191 346) 1),
                         .BTy_object .OTy_pointer))
                        (.Expr [] <|
                        .Elet
                          (.Pattern [] (.CaseBase (.some (a! 47066), .BTy_ctype)))
                          (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                          [.Pexpr [] () (.PEsym (a! 47043)),
                           .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
                        .Expr [] <|
                        .Eif
                          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                          .PEare_compatible
                            (.Pexpr [] () <| .PEval <| .Vctype <|
                            .Ctype
                              [.Aloc .unknown, .Aloc .unknown]
                              (.Basic (.Integer (.Signed .Int_))))
                            (.Pexpr [] () (.PEsym (a! 47066))))
                          (.Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.2.2#9"] () <|
                          .PEundef (rg! «peer.c» 191 287 191 379) .UB041_function_not_compatible) <|
                        .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
                        .Ewseq
                          (.Pattern [] (.CaseBase (.some (a! 47067), .BTy_object .OTy_pointer)))
                          (.Expr [] <| .Eaction <| .Paction .Pos <|
                          .Action (rg! «peer.c» 191 287 191 379) () <|
                          .Create
                            (.Pexpr [] () <| .PEctor .Civalignof <|
                            [.Pexpr [] () <| .PEval <| .Vctype <|
                             .Ctype
                               [.Aloc .unknown, .Aloc .unknown]
                               (.Basic (.Integer (.Signed .Int_)))])
                            (.Pexpr [] () <| .PEval <| .Vctype <|
                            .Ctype
                              [.Aloc .unknown, .Aloc .unknown]
                              (.Basic (.Integer (.Signed .Int_)))) <|
                          .PrefFunArg
                            (rg! «peer.c» 191 287 191 379)
                            "fa5a43434dcb33dc130b30cb8faeddf7"
                            1) <| .Expr [] <|
                        .Ewseq
                          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                          (.Expr [] <| .Eaction <| .Paction .Pos <|
                          .Action (rg! «peer.c» 191 287 191 379) () <|
                          .Store0
                            .false
                            (.Pexpr [] () <| .PEval <| .Vctype <|
                            .Ctype
                              [.Aloc .unknown, .Aloc .unknown]
                              (.Basic (.Integer (.Signed .Int_))))
                            (.Pexpr [] () (.PEsym (a! 47067)))
                            (.Pexpr [] () <|
                            .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                            [.Pexpr [] () <| .PEval <| .Vctype <|
                             .Ctype
                               [.Aloc .unknown, .Aloc .unknown]
                               (.Basic (.Integer (.Signed .Int_))),
                             .Pexpr [] () (.PEsym (a! 47054))])
                            .NA)
                          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 47067)))))) <| .Expr [] <|
                      .Esseq
                        (.Pattern [] <| .CaseBase <|
                        (.some <|
                         sym.Symbol
                           Src.digest
                           47048
                           (.SD_FunArg (rgc! «peer.c» 191 348 191 365 191 361) 2),
                         .BTy_object .OTy_pointer))
                        (.Expr [] <|
                        .Elet
                          (.Pattern [] (.CaseBase (.some (a! 47068), .BTy_ctype)))
                          (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                          [.Pexpr [] () (.PEsym (a! 47043)),
                           .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))]) <|
                        .Expr [] <|
                        .Eif
                          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                          .PEare_compatible
                            (.Pexpr [] () <| .PEval <| .Vctype <|
                            .Ctype
                              [.Aloc .unknown, .Aloc .unknown]
                              (.Basic (.Integer (.Unsigned .Int_))))
                            (.Pexpr [] () (.PEsym (a! 47068))))
                          (.Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.2.2#9"] () <|
                          .PEundef (rg! «peer.c» 191 287 191 379) .UB041_function_not_compatible) <|
                        .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
                        .Ewseq
                          (.Pattern [] (.CaseBase (.some (a! 47069), .BTy_object .OTy_pointer)))
                          (.Expr [] <| .Eaction <| .Paction .Pos <|
                          .Action (rg! «peer.c» 191 287 191 379) () <|
                          .Create
                            (.Pexpr [] () <| .PEctor .Civalignof <|
                            [.Pexpr [] () <| .PEval <| .Vctype <|
                             .Ctype
                               [.Aloc .unknown, .Aloc .unknown]
                               (.Basic (.Integer (.Unsigned .Int_)))])
                            (.Pexpr [] () <| .PEval <| .Vctype <|
                            .Ctype
                              [.Aloc .unknown, .Aloc .unknown]
                              (.Basic (.Integer (.Unsigned .Int_)))) <|
                          .PrefFunArg
                            (rg! «peer.c» 191 287 191 379)
                            "fa5a43434dcb33dc130b30cb8faeddf7"
                            2) <| .Expr [] <|
                        .Ewseq
                          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                          (.Expr [] <| .Eaction <| .Paction .Pos <|
                          .Action (rg! «peer.c» 191 287 191 379) () <|
                          .Store0
                            .false
                            (.Pexpr [] () <| .PEval <| .Vctype <|
                            .Ctype
                              [.Aloc .unknown, .Aloc .unknown]
                              (.Basic (.Integer (.Unsigned .Int_))))
                            (.Pexpr [] () (.PEsym (a! 47069)))
                            (.Pexpr [] () <|
                            .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                            [.Pexpr [] () <| .PEval <| .Vctype <|
                             .Ctype
                               [.Aloc .unknown, .Aloc .unknown]
                               (.Basic (.Integer (.Unsigned .Int_))),
                             .Pexpr [] () (.PEsym (a! 47055))])
                            .NA)
                          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 47069)))))) <| .Expr [] <|
                      .Esseq
                        (.Pattern [] <| .CaseBase <|
                        (.some <|
                         sym.Symbol Src.digest 47049 (.SD_FunArg (rg! «peer.c» 191 367 191 378) 3),
                         .BTy_object .OTy_pointer))
                        (.Expr [] <|
                        .Elet
                          (.Pattern [] (.CaseBase (.some (a! 47070), .BTy_ctype)))
                          (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                          [.Pexpr [] () (.PEsym (a! 47043)),
                           .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 3))))]) <|
                        .Expr [] <|
                        .Eif
                          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                          .PEare_compatible
                            (.Pexpr [] () <| .PEval <| .Vctype <|
                            .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                            .Pointer
                              (.mk .true .false .false)
                              (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))))
                            (.Pexpr [] () (.PEsym (a! 47070))))
                          (.Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.2.2#9"] () <|
                          .PEundef (rg! «peer.c» 191 287 191 379) .UB041_function_not_compatible) <|
                        .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
                        .Ewseq
                          (.Pattern [] (.CaseBase (.some (a! 47071), .BTy_object .OTy_pointer)))
                          (.Expr [] <| .Eaction <| .Paction .Pos <|
                          .Action (rg! «peer.c» 191 287 191 379) () <|
                          .Create
                            (.Pexpr [] () <| .PEctor .Civalignof <|
                            [.Pexpr [] () <| .PEval <| .Vctype <|
                             .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                             .Pointer
                               (.mk .true .false .false)
                               (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0)))])
                            (.Pexpr [] () <| .PEval <| .Vctype <|
                            .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                            .Pointer
                              (.mk .true .false .false)
                              (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0)))) <|
                          .PrefFunArg
                            (rg! «peer.c» 191 287 191 379)
                            "fa5a43434dcb33dc130b30cb8faeddf7"
                            3) <| .Expr [] <|
                        .Ewseq
                          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                          (.Expr [] <| .Eaction <| .Paction .Pos <|
                          .Action (rg! «peer.c» 191 287 191 379) () <|
                          .Store0
                            .false
                            (.Pexpr [] () <| .PEval <| .Vctype <|
                            .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                            .Pointer
                              (.mk .true .false .false)
                              (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))))
                            (.Pexpr [] () (.PEsym (a! 47071)))
                            (.Pexpr [] () <| .PEctor .Cspecified <|
                            [.Pexpr [] () <| .PEval <| .Vobject <| .OVpointer <| .PV .Prov_none <|
                             .PVnull <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                             .Pointer
                               (.mk .true .false .false)
                               (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0)))])
                            .NA)
                          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 47071)))))) <| .Expr [] <|
                      .Esseq
                        (.Pattern [] (.CaseBase (.some (a! 47072), .BTy_unit)))
                        (.Expr [.Astd "\xa76.5.16.1#1, bullet 4"] <|
                        .Eccall
                          ()
                          (.Pexpr [] () <| .PEval <| .Vctype <|
                          .Ctype [.Aloc (rg! «peer.c» 191 287 191 304)] <|
                          .Pointer (.mk .false .false .false) <| .Ctype [] <|
                          .Function
                            (.mk .false .false .false,
                             .Ctype [.Aloc .unknown, .Aloc .unknown] .Void0)
                            [(.mk .false .false .false,
                              (.Ctype [.Aloc .unknown, .Aloc .unknown] <|
                               .Pointer
                                 (.mk .true .false .false)
                                 (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))),
                               .false)),
                             (.mk .false .false .false,
                              (.Ctype
                                 [.Aloc .unknown, .Aloc .unknown]
                                 (.Basic (.Integer (.Signed .Int_))),
                               .false)),
                             (.mk .false .false .false,
                              (.Ctype
                                 [.Aloc .unknown, .Aloc .unknown]
                                 (.Basic (.Integer (.Unsigned .Int_))),
                               .false)),
                             (.mk .false .false .false,
                              (.Ctype [.Aloc .unknown, .Aloc .unknown] <|
                               .Pointer
                                 (.mk .true .false .false)
                                 (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))),
                               .false))]
                            .true)
                          (.Pexpr [] () (.PEsym (a! 47041))) <|
                        [.Pexpr [] () <| .PEsym <|
                         sym.Symbol Src.digest 47046 (.SD_FunArg (rg! «peer.c» 191 305 191 341) 0),
                         .Pexpr [] () <| .PEsym <|
                         sym.Symbol Src.digest 47047 (.SD_FunArg (rg! «peer.c» 191 343 191 346) 1),
                         .Pexpr [] () <| .PEsym <|
                         sym.Symbol
                           Src.digest
                           47048
                           (.SD_FunArg (rgc! «peer.c» 191 348 191 365 191 361) 2),
                         .Pexpr [] () <| .PEsym <|
                         sym.Symbol Src.digest 47049 (.SD_FunArg (rg! «peer.c» 191 367 191 378) 3),
                         .Pexpr
                           []
                           ()
                           (.PEctor (.Cnil (.BTy_tuple [.BTy_ctype, .BTy_object .OTy_pointer])) [])]) <|
                      .Expr [] <|
                      .Esseq
                        (.Pattern
                          []
                          (.CaseBase
                            (.none, .BTy_tuple [.BTy_unit, .BTy_unit, .BTy_unit, .BTy_unit])))
                        (.Expr [] <| .Eunseq <|
                        [.Expr [] <| .Eaction <| .Paction .Pos <|
                         .Action (rg! «peer.c» 191 287 191 379) () <|
                         .Kill
                           (.Static0 <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                           .Pointer
                             (.mk .true .false .false)
                             (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0)))) <|
                         .Pexpr [] () <| .PEsym <|
                         sym.Symbol Src.digest 47046 (.SD_FunArg (rg! «peer.c» 191 305 191 341) 0),
                         .Expr [] <| .Eaction <| .Paction .Pos <|
                         .Action (rg! «peer.c» 191 287 191 379) () <|
                         .Kill
                           (.Static0 <|
                           .Ctype
                             [.Aloc .unknown, .Aloc .unknown]
                             (.Basic (.Integer (.Signed .Int_)))) <| .Pexpr [] () <| .PEsym <|
                         sym.Symbol Src.digest 47047 (.SD_FunArg (rg! «peer.c» 191 343 191 346) 1),
                         .Expr [] <| .Eaction <| .Paction .Pos <|
                         .Action (rg! «peer.c» 191 287 191 379) () <|
                         .Kill
                           (.Static0 <|
                           .Ctype
                             [.Aloc .unknown, .Aloc .unknown]
                             (.Basic (.Integer (.Unsigned .Int_)))) <| .Pexpr [] () <| .PEsym <|
                         sym.Symbol
                           Src.digest
                           47048
                           (.SD_FunArg (rgc! «peer.c» 191 348 191 365 191 361) 2),
                         .Expr [] <| .Eaction <| .Paction .Pos <|
                         .Action (rg! «peer.c» 191 287 191 379) () <|
                         .Kill
                           (.Static0 <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                           .Pointer
                             (.mk .true .false .false)
                             (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0)))) <|
                         .Pexpr [] () <| .PEsym <|
                         sym.Symbol Src.digest 47049 (.SD_FunArg (rg! «peer.c» 191 367 191 378) 3)])
                        (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 47072))))))
                      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
                    (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
                .Expr
                  [.Aloc (rg! «peer.c» 191 220 191 382), .Astmt]
                  (.Epure (.Pexpr [] () (.PEval .Vunit)))) <| .Expr [] <|
              .Esseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [] <| .Eaction <| .Paction .Pos <|
                .Action (rgr! «peer.c» 191 139 191 384 191 180 191 192) () <|
                .Kill
                  (.Static0 <|
                  .Ctype
                    [.Aloc (rg! «peer.c» 191 167 191 179)]
                    (.Basic (.Integer (.Unsigned .Int_))))
                  (.Pexpr [] () (.PEsym (addr! "__warn_flags" 3345))))
                (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.some (a! 46968), .BTy_loaded .OTy_integer)))
              (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
              .Expr
                [.Aloc (rg! «peer.c» 191 392 191 393),
                 .Aexpr,
                 .Avalue (.Ainteger (.Signed .Int_))] <|
              .Epure
                (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))) <|
            .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46968))) <|
            [(.Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 46967), .BTy_object .OTy_integer))],
              .Expr [] <|
              .Eif
                (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                .PEop
                  .OpEq
                  (.Pexpr [] () (.PEsym (a! 46967)))
                  (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                (.Expr [] <| .Erun () (c! "do_46966" 46966) <|
                [.Pexpr [] () (.PEsym (addr! "__ret_warn_on" 3342)),
                 .Pexpr [] () (.PEsym (addr! "peer" 3319))])
                (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))),
             (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
              .Expr [] <| .Epure <|
              .Pexpr [] () (.PEundef (rg! «peer.c» 191 136 191 395) (.DUMMY "unspecified AilSdo")))]) <|
          .Expr
            [.Aloc (rg! «peer.c» 191 105 191 395), .Astmt]
            (.Epure (.Pexpr [] () (.PEval .Vunit)))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 46883), .BTy_loaded .OTy_integer)))
          (.Expr
            [.Aloc (rg! «peer.c» 191 396 191 421),
             .Aexpr,
             .Avalue (.Ainteger (.Signed .Long)),
             .Astd "\xa76.5.4"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 47073), .BTy_loaded .OTy_integer)))
            (.Expr
              [.Aloc (rgc! «peer.c» 191 403 191 420 191 403),
               .Aexpr,
               .Avalue (.Ainteger (.Signed .Int_))] <|
            .Ewseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] (.CaseBase (.some (a! 47075), .BTy_loaded .OTy_integer)),
               .Pattern [] (.CaseBase (.some (a! 47076), .BTy_loaded .OTy_integer))])
              (.Expr [] <| .Eunseq <|
              [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
               .Epure
                 (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))),
               .Expr
                 [.Aloc (rgc! «peer.c» 191 404 191 420 191 404),
                  .Aexpr,
                  .Avalue (.Ainteger (.Signed .Int_))] <|
               .Ewseq
                 (.Pattern [] <| .CaseCtor .Ctuple <|
                 [.Pattern [] (.CaseBase (.some (a! 47080), .BTy_loaded .OTy_integer)),
                  .Pattern [] (.CaseBase (.some (a! 47081), .BTy_loaded .OTy_integer))])
                 (.Expr [] <| .Eunseq <|
                 [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                  .Epure
                    (.Pexpr
                      []
                      ()
                      (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))),
                  .Expr
                    [.Aloc (rg! «peer.c» 191 405 191 420),
                     .Aexpr,
                     .Avalue (.Ainteger (.Signed .Int_))] <|
                  .Ewseq
                    (.Pattern [] (.CaseBase (.some (a! 47085), .BTy_object .OTy_pointer)))
                    (.Expr
                      [.Aloc (rg! «peer.c» 191 405 191 420), .Aexpr]
                      (.Epure (.Pexpr [] () (.PEsym (addr! "__ret_warn_on" 3342))))) <| .Expr [] <|
                  .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 191 405 191 420) () <|
                  .Load0
                    (.Pexpr [] () <| .PEval <| .Vctype <|
                    .Ctype [.Aloc (rg! «peer.c» 191 5 191 8)] (.Basic (.Integer (.Signed .Int_))))
                    (.Pexpr [] () (.PEsym (a! 47085)))
                    .NA]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
               .PEcase
                 (.Pexpr [] () <|
                 .PEctor
                   .Ctuple
                   [.Pexpr [] () (.PEsym (a! 47080)), .Pexpr [] () (.PEsym (a! 47081))]) <|
               [(.Pattern [] <| .CaseCtor .Ctuple <|
                 [.Pattern [] <|
                  .CaseCtor
                    .Cspecified
                    [.Pattern [] (.CaseBase (.some (a! 47082), .BTy_object .OTy_integer))],
                  .Pattern [] <|
                  .CaseCtor
                    .Cspecified
                    [.Pattern [] (.CaseBase (.some (a! 47083), .BTy_object .OTy_integer))]],
                 .Pexpr [.Astd "\xa76.5.9#3"] () <|
                 .PEif
                   (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                   .PEop
                     .OpEq
                     (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                     .PEcall
                       (.Sym (rt! "conv_int" 15837442492999787586))
                       [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 47082))]) <|
                   .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                   .PEcall
                     (.Sym (rt! "conv_int" 15837442492999787586))
                     [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 47083))])
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
                   [.Aloc (rgc! «peer.c» 191 404 191 420 191 404)]
                   (.Basic (.Integer (.Signed .Int_))))]]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
            .PEcase
              (.Pexpr
                []
                ()
                (.PEctor
                  .Ctuple
                  [.Pexpr [] () (.PEsym (a! 47075)), .Pexpr [] () (.PEsym (a! 47076))])) <|
            [(.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 47077), .BTy_object .OTy_integer))],
               .Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 47078), .BTy_object .OTy_integer))]],
              .Pexpr [.Astd "\xa76.5.9#3"] () <|
              .PEif
                (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                .PEop
                  .OpEq
                  (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                  .PEcall
                    (.Sym (rt! "conv_int" 15837442492999787586))
                    [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 47077))]) <|
                .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                .PEcall
                  (.Sym (rt! "conv_int" 15837442492999787586))
                  [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 47078))])
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
                [.Aloc (rgc! «peer.c» 191 403 191 420 191 403)]
                (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
          [.Pexpr [] () <| .PEval <| .Vctype <|
           .Ctype [.Aloc (rg! «peer.c» 191 398 191 402)] (.Basic (.Integer (.Signed .Long))),
           .Pexpr [] () (.PEsym (a! 47073))]) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [] <| .Eaction <| .Paction .Pos <|
          .Action (rgr! «peer.c» 191 2 191 426 191 9 191 22) () <|
          .Kill
            (.Static0
              (.Ctype [.Aloc (rg! «peer.c» 191 5 191 8)] (.Basic (.Integer (.Signed .Int_)))))
            (.Pexpr [] () (.PEsym (addr! "__ret_warn_on" 3342))))
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46883))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «peer.c» 196 2 196 40), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc (rg! «peer.c» 196 2 196 39), .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
        .Esseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <| .CaseCtor .Ctuple <|
           [.Pattern [] (.CaseBase (.some (a! 47088), .BTy_loaded .OTy_pointer)),
            .Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 47089), .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 47090), .BTy_list .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 47091), .BTy_boolean)),
             .Pattern [] (.CaseBase (.some (a! 47092), .BTy_boolean))]],
           .Pattern [] (.CaseBase (.some (a! 47095), .BTy_loaded .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 47097), .BTy_loaded .OTy_integer))])
          (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
          [.Expr [] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 47087), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc (rg! «peer.c» 196 2 196 18), .Aexpr] <| .Epure <| .Pexpr [] () <|
             .PEval <|
             .Vloaded
               (.LVspecified
                 (.OVpointer (.PV .Prov_none (.PVfunction (c! "memzero_explicit" 338)))))) <|
           .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
           [.Pexpr [] () (.PEsym (a! 47087)),
            .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 47087))))],
           .Expr [.Aloc (rg! «peer.c» 196 19 196 23), .Aexpr] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 47096), .BTy_object .OTy_pointer)))
             (.Expr
               [.Aloc (rg! «peer.c» 196 19 196 23), .Aexpr]
               (.Epure (.Pexpr [] () (.PEsym (addr! "peer" 3319))))) <| .Expr [] <| .Eaction <|
           .Paction .Pos <| .Action (rg! «peer.c» 196 19 196 23) () <|
           .Load0
             (.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype
               [.Aloc (rg! «peer.c» 188 17 188 18)]
               (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
             (.Pexpr [] () (.PEsym (a! 47096)))
             .NA,
           .Expr
             [.Aloc (rgc! «peer.c» 196 25 196 38 196 25), .Aexpr, .Avalue (.Ainteger .Size_t)] <|
           .Epure <| .Pexpr [] () <| .PEctor .Cspecified <|
           [.Pexpr [] () (.PEctor .Civsizeof [.Pexpr [] () (.PEval (.Vctype Ty.struct_wg_peer))])]]) <|
        .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
          .PEop
            .OpEq
            (.Pexpr [] () <|
            .PEcall
              (.Sym (rt! "params_length" 18299737999929047716))
              [.Pexpr [] () (.PEsym (a! 47090))])
            (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#6, sentence 3"]
            ()
            (.PEundef (rg! «peer.c» 196 2 196 39) .UB038_number_of_args)) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 47091))) <| .Pexpr [] () <|
          .PEnot <| .Pexpr [] () <|
          .PEare_compatible
            (.Pexpr [] () (.PEval (.Vctype (.Ctype [.Aloc .unknown] .Void0))))
            (.Pexpr [] () (.PEsym (a! 47089))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#9"]
            ()
            (.PEundef (rg! «peer.c» 196 2 196 39) .UB041_function_not_compatible)) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some (sym.Symbol Src.digest 47093 (.SD_FunArg (rg! «peer.c» 196 19 196 23) 0)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 47098), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 47090)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown]
                (.Pointer (.mk .false .false .false) (.Ctype [.Aloc .unknown] .Void0)))
              (.Pexpr [] () (.PEsym (a! 47098))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «peer.c» 196 2 196 39) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 47099), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 196 2 196 39) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc .unknown]
                 (.Pointer (.mk .false .false .false) (.Ctype [.Aloc .unknown] .Void0))])
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown]
                (.Pointer (.mk .false .false .false) (.Ctype [.Aloc .unknown] .Void0)))
              (.PrefFunArg (rg! «peer.c» 196 2 196 39) "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 196 2 196 39) () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown]
                (.Pointer (.mk .false .false .false) (.Ctype [.Aloc .unknown] .Void0)))
              (.Pexpr [] () (.PEsym (a! 47099)))
              (.Pexpr [] () (.PEsym (a! 47095)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 47099)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some (sym.Symbol Src.digest 47094 (.SD_FunArg (rgc! «peer.c» 196 25 196 38 196 25) 1)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 47100), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 47090)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown, .Atypedef (c! "size_t" 31)]
                (.Basic (.Integer (.Unsigned .Long))))
              (.Pexpr [] () (.PEsym (a! 47100))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «peer.c» 196 2 196 39) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 47101), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 196 2 196 39) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc .unknown, .Atypedef (c! "size_t" 31)]
                 (.Basic (.Integer (.Unsigned .Long)))])
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown, .Atypedef (c! "size_t" 31)]
                (.Basic (.Integer (.Unsigned .Long))))
              (.PrefFunArg (rg! «peer.c» 196 2 196 39) "fa5a43434dcb33dc130b30cb8faeddf7" 1)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 196 2 196 39) () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown, .Atypedef (c! "size_t" 31)]
                (.Basic (.Integer (.Unsigned .Long))))
              (.Pexpr [] () (.PEsym (a! 47101)))
              (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc .unknown, .Atypedef (c! "size_t" 31)]
                 (.Basic (.Integer (.Unsigned .Long))),
               .Pexpr [] () (.PEsym (a! 47097))])
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 47101)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 47102), .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#1, bullet 1"] <|
          .Eccall
            ()
            (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc (rg! «peer.c» 196 2 196 18)] <|
            .Pointer (.mk .false .false .false) <| .Ctype [] <|
            .Function
              (.mk .false .false .false, .Ctype [.Aloc .unknown] .Void0)
              [(.mk .false .false .false,
                (.Ctype
                   [.Aloc .unknown]
                   (.Pointer (.mk .false .false .false) (.Ctype [.Aloc .unknown] .Void0)),
                 .false)),
               (.mk .false .false .false,
                (.Ctype
                   [.Aloc .unknown, .Atypedef (c! "size_t" 31)]
                   (.Basic (.Integer (.Unsigned .Long))),
                 .false))]
              .false)
            (.Pexpr [] () (.PEsym (a! 47088))) <|
          [.Pexpr
             []
             ()
             (.PEsym (sym.Symbol Src.digest 47093 (.SD_FunArg (rg! «peer.c» 196 19 196 23) 0))),
           .Pexpr [] () <|
           .PEsym
             (sym.Symbol Src.digest 47094 (.SD_FunArg (rgc! «peer.c» 196 25 196 38 196 25) 1))]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit])))
          (.Expr [] <| .Eunseq <|
          [.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 196 2 196 39) () <|
           .Kill
             (.Static0 <|
             .Ctype
               [.Aloc .unknown]
               (.Pointer (.mk .false .false .false) (.Ctype [.Aloc .unknown] .Void0))) <|
           .Pexpr
             []
             ()
             (.PEsym (sym.Symbol Src.digest 47093 (.SD_FunArg (rg! «peer.c» 196 19 196 23) 0))),
           .Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 196 2 196 39) () <|
           .Kill
             (.Static0 <|
             .Ctype
               [.Aloc .unknown, .Atypedef (c! "size_t" 31)]
               (.Basic (.Integer (.Unsigned .Long)))) <| .Pexpr [] () <| .PEsym <|
           sym.Symbol Src.digest 47094 (.SD_FunArg (rgc! «peer.c» 196 25 196 38 196 25) 1)])
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 47102))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «peer.c» 197 2 197 36), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc (rg! «peer.c» 197 2 197 35), .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
        .Esseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <| .CaseCtor .Ctuple <|
           [.Pattern [] (.CaseBase (.some (a! 47104), .BTy_loaded .OTy_pointer)),
            .Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 47105), .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 47106), .BTy_list .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 47107), .BTy_boolean)),
             .Pattern [] (.CaseBase (.some (a! 47108), .BTy_boolean))]],
           .Pattern [] (.CaseBase (.some (a! 47111), .BTy_loaded .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 47113), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
          [.Expr [] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 47103), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc (rg! «peer.c» 197 2 197 17), .Aexpr] <| .Epure <| .Pexpr [] () <|
             .PEval <|
             .Vloaded
               (.LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "kmem_cache_free" 855)))))) <|
           .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
           [.Pexpr [] () (.PEsym (a! 47103)),
            .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 47103))))],
           .Expr [.Aloc (rg! «peer.c» 197 18 197 28), .Aexpr] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 47112), .BTy_object .OTy_pointer)))
             (.Expr
               [.Aloc (rg! «peer.c» 197 18 197 28), .Aexpr]
               (.Epure (.Pexpr [] () (.PEsym (addr! "peer_cache" 3310))))) <| .Expr [] <|
           .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 197 18 197 28) () <|
           .Load0
             (.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype
               [.Aloc (rg! «peer.c» 18 26 18 27)]
               (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache))
             (.Pexpr [] () (.PEsym (a! 47112)))
             .NA,
           .Expr [.Aloc (rg! «peer.c» 197 30 197 34), .Aexpr] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 47114), .BTy_object .OTy_pointer)))
             (.Expr
               [.Aloc (rg! «peer.c» 197 30 197 34), .Aexpr]
               (.Epure (.Pexpr [] () (.PEsym (addr! "peer" 3319))))) <| .Expr [] <| .Eaction <|
           .Paction .Pos <| .Action (rg! «peer.c» 197 30 197 34) () <|
           .Load0
             (.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype
               [.Aloc (rg! «peer.c» 188 17 188 18)]
               (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
             (.Pexpr [] () (.PEsym (a! 47114)))
             .NA]) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
          .PEop
            .OpEq
            (.Pexpr [] () <|
            .PEcall
              (.Sym (rt! "params_length" 18299737999929047716))
              [.Pexpr [] () (.PEsym (a! 47106))])
            (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#6, sentence 3"]
            ()
            (.PEundef (rg! «peer.c» 197 2 197 35) .UB038_number_of_args)) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 47107))) <| .Pexpr [] () <|
          .PEnot <| .Pexpr [] () <|
          .PEare_compatible
            (.Pexpr [] () (.PEval (.Vctype (.Ctype [.Aloc .unknown, .Aloc .unknown] .Void0))))
            (.Pexpr [] () (.PEsym (a! 47105))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#9"]
            ()
            (.PEundef (rg! «peer.c» 197 2 197 35) .UB041_function_not_compatible)) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some (sym.Symbol Src.digest 47109 (.SD_FunArg (rg! «peer.c» 197 18 197 28) 0)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 47115), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 47106)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown, .Aloc .unknown]
                (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache))
              (.Pexpr [] () (.PEsym (a! 47115))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «peer.c» 197 2 197 35) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 47116), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 197 2 197 35) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc .unknown, .Aloc .unknown]
                 (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache)])
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown, .Aloc .unknown]
                (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache))
              (.PrefFunArg (rg! «peer.c» 197 2 197 35) "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 197 2 197 35) () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown, .Aloc .unknown]
                (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache))
              (.Pexpr [] () (.PEsym (a! 47116)))
              (.Pexpr [] () (.PEsym (a! 47111)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 47116)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some (sym.Symbol Src.digest 47110 (.SD_FunArg (rg! «peer.c» 197 30 197 34) 1)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 47117), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 47106)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
              .Pointer (.mk .false .false .false) (.Ctype [.Aloc .unknown, .Aloc .unknown] .Void0))
              (.Pexpr [] () (.PEsym (a! 47117))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «peer.c» 197 2 197 35) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 47118), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 197 2 197 35) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
               .Pointer (.mk .false .false .false) (.Ctype [.Aloc .unknown, .Aloc .unknown] .Void0)])
              (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
              .Pointer (.mk .false .false .false) (.Ctype [.Aloc .unknown, .Aloc .unknown] .Void0))
              (.PrefFunArg (rg! «peer.c» 197 2 197 35) "fa5a43434dcb33dc130b30cb8faeddf7" 1)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 197 2 197 35) () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
              .Pointer (.mk .false .false .false) (.Ctype [.Aloc .unknown, .Aloc .unknown] .Void0))
              (.Pexpr [] () (.PEsym (a! 47118)))
              (.Pexpr [] () (.PEsym (a! 47113)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 47118)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 47119), .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#1, bullet 4"] <|
          .Eccall
            ()
            (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc (rg! «peer.c» 197 2 197 17)] <|
            .Pointer (.mk .false .false .false) <| .Ctype [] <|
            .Function
              (.mk .false .false .false, .Ctype [.Aloc .unknown, .Aloc .unknown] .Void0)
              [(.mk .false .false .false,
                (.Ctype
                   [.Aloc .unknown, .Aloc .unknown]
                   (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache),
                 .false)),
               (.mk .false .false .false,
                (.Ctype [.Aloc .unknown, .Aloc .unknown] <|
                 .Pointer
                   (.mk .false .false .false)
                   (.Ctype [.Aloc .unknown, .Aloc .unknown] .Void0),
                 .false))]
              .false)
            (.Pexpr [] () (.PEsym (a! 47104))) <|
          [.Pexpr
             []
             ()
             (.PEsym (sym.Symbol Src.digest 47109 (.SD_FunArg (rg! «peer.c» 197 18 197 28) 0))),
           .Pexpr
             []
             ()
             (.PEsym (sym.Symbol Src.digest 47110 (.SD_FunArg (rg! «peer.c» 197 30 197 34) 1)))]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit])))
          (.Expr [] <| .Eunseq <|
          [.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 197 2 197 35) () <|
           .Kill
             (.Static0 <|
             .Ctype
               [.Aloc .unknown, .Aloc .unknown]
               (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache)) <|
           .Pexpr
             []
             ()
             (.PEsym (sym.Symbol Src.digest 47109 (.SD_FunArg (rg! «peer.c» 197 18 197 28) 0))),
           .Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 197 2 197 35) () <|
           .Kill
             (.Static0 <|
             .Ctype
               [.Aloc .unknown, .Aloc .unknown]
               (.Pointer
                 (.mk .false .false .false)
                 (.Ctype [.Aloc .unknown, .Aloc .unknown] .Void0))) <|
           .Pexpr
             []
             ()
             (.PEsym (sym.Symbol Src.digest 47110 (.SD_FunArg (rg! «peer.c» 197 30 197 34) 1)))])
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 47119))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [] <| .Eaction <| .Paction .Pos <|
      .Action (rgr! «peer.c» 187 1 198 2 188 18 188 22) () <|
      .Kill
        (.Static0 <|
        .Ctype
          [.Aloc (rg! «peer.c» 188 17 188 18)]
          (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
        (.Pexpr [] () (.PEsym (addr! "peer" 3319))))
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc (rgr! «peer.c» 186 1 198 2 186 13 186 24)] <|
  .Esave
    (c! "ret_46848" 46848, .BTy_unit)
    [(a! 47120,
      ((.BTy_unit, .some (.Ctype [.Aloc (rg! «peer.c» 186 8 186 12)] .Void0, .By_value)),
       .Pexpr [] () (.PEval .Vunit)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 47120)))))

/--
```c
static void kref_release(struct kref *refcount)
```

`linux/drivers/net/wireguard/peer.c:200` -/
def kref_release : Procedure :=
  .Proc
    (rgr! «peer.c» 200 1 221 2 200 13 200 25)
    (.some 3350)
    .BTy_unit
    [(addr! "refcount" 3348, .BTy_object .OTy_pointer)] <| .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc (rg! «peer.c» 201 1 221 2), .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.some (addr! "peer" 3351), .BTy_object .OTy_pointer)))
      (.Expr [] <| .Eaction <| .Paction .Pos <|
      .Action (rgr! «peer.c» 201 1 221 2 202 18 202 22) () <|
      .Create
        (.Pexpr [] () <| .PEctor .Civalignof <|
        [.Pexpr [] () <| .PEval <| .Vctype <|
         .Ctype
           [.Aloc (rg! «peer.c» 202 17 202 18)]
           (.Pointer (.mk .false .false .false) Ty.struct_wg_peer)])
        (.Pexpr [] () <| .PEval <| .Vctype <|
        .Ctype
          [.Aloc (rg! «peer.c» 202 17 202 18)]
          (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
        (.PrefSource (rg! «peer.c» 202 18 202 22) [c! "kref_release" 3349, addr! "peer" 3351])) <|
    .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «peer.c» 202 2 202 341), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 46707), .BTy_loaded .OTy_pointer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc (rgc! «peer.c» 202 25 202 340 202 26), .Aexpr] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 46708), .BTy_loaded .OTy_pointer)))
          (.Expr [.Aloc (rgc! «peer.c» 202 253 202 336 202 253), .Aexpr, .Astd "\xa76.5.4"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 46709), .BTy_loaded .OTy_pointer)))
            (.Expr [.Aloc (rg! «peer.c» 202 271 202 336), .Aexpr, .Astd "\xa76.5.6"] <|
            .Ewseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] (.CaseBase (.some (a! 46718), .BTy_loaded .OTy_pointer)),
               .Pattern [] (.CaseBase (.some (a! 46719), .BTy_loaded .OTy_integer))])
              (.Expr [] <| .Eunseq <|
              [.Expr [.Aloc (rgc! «peer.c» 202 272 202 298 202 272), .Aexpr, .Astd "\xa76.5.4"] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 46711), .BTy_loaded .OTy_pointer)))
                 (.Expr
                   [.Aloc (rgc! «peer.c» 202 280 202 298 202 280),
                    .Aexpr,
                    .Astd "\xa76.5.4",
                    .Aexpr] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 46715), .BTy_object .OTy_pointer)))
                   (.Expr
                     [.Aloc (rg! «peer.c» 202 288 202 298), .Aexpr]
                     (.Epure (.Pexpr [] () (.PEsym (addr! "refcount" 3348))))) <| .Expr [] <|
                 .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 202 288 202 298) () <|
                 .Load0
                   (.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype
                     [.Aloc (rg! «peer.c» 200 38 200 39)]
                     (.Pointer (.mk .false .false .false) Ty.struct_kref))
                   (.Pexpr [] () (.PEsym (a! 46715)))
                   .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46711))) <|
               [(.Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 46712), .BTy_object .OTy_pointer))],
                 .Expr [] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 46717), .BTy_boolean)))
                   (.Expr [] <| .Ememop .PtrWellAligned <|
                   [.Pexpr [] () <| .PEval <| .Vctype <|
                    .Ctype [.Aloc (rg! «peer.c» 202 273 202 277)] (.Basic (.Integer .Char0)),
                    .Pexpr [] () (.PEsym (a! 46712))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEctor .Cspecified <|
                 [.Pexpr [] () <|
                  .PEif (.Pexpr [] () (.PEsym (a! 46717))) (.Pexpr [] () (.PEsym (a! 46712))) <|
                  .Pexpr [] () <|
                  .PEundef
                    (rgc! «peer.c» 202 272 202 298 202 272)
                    .UB025_misaligned_pointer_conversion]),
                (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEundef
                   (rgc! «peer.c» 202 272 202 298 202 272)
                   .UB025_misaligned_pointer_conversion)],
               .Expr
                 [.Aloc (rg! «peer.c» 202 301 202 335), .Aexpr, .Avalue (.Ainteger .Size_t)] <|
               .Epure
                 (.Pexpr
                   []
                   ()
                   (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1120))))))]) <|
            .Expr [] <|
            .Ecase
              (.Pexpr
                []
                ()
                (.PEctor
                  .Ctuple
                  [.Pexpr [] () (.PEsym (a! 46718)), .Pexpr [] () (.PEsym (a! 46719))])) <|
            [(.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 46720), .BTy_object .OTy_pointer))],
               .Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 46721), .BTy_object .OTy_integer))]],
              .Expr [] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 46722), .BTy_object .OTy_pointer)))
                (.Expr [] <| .Ememop .PtrArrayShift <|
                [.Pexpr [] () (.PEsym (a! 46720)),
                 .Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype [.Aloc (rg! «peer.c» 202 273 202 277)] (.Basic (.Integer .Char0)),
                 .Pexpr [] () <|
                 .PEop
                   .OpSub
                   (.Pexpr
                     [.Avalue (.Ainteger .Size_t)]
                     ()
                     (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0)))))
                   (.Pexpr [] () (.PEsym (a! 46721)))]) <|
              .Expr
                []
                (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 46722))])))),
             (.Pattern
                []
                (.CaseBase (.none, .BTy_tuple [.BTy_loaded .OTy_pointer, .BTy_loaded .OTy_integer])),
              .Expr [] <| .Epure <| .Pexpr [] () <|
              .PEundef
                (rg! «peer.c» 202 271 202 336)
                (.UB_CERB004_unspecified .UB_unspec_pointer_sub))]) <| .Expr [] <|
          .Ecase (.Pexpr [] () (.PEsym (a! 46709))) <|
          [(.Pattern [] <|
            .CaseCtor
              .Cspecified
              [.Pattern [] (.CaseBase (.some (a! 46710), .BTy_object .OTy_pointer))],
            .Expr [] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.some (a! 46723), .BTy_boolean)))
              (.Expr [] <|
              .Ememop
                .PtrWellAligned
                [.Pexpr [] () (.PEval (.Vctype Ty.struct_wg_peer)),
                 .Pexpr [] () (.PEsym (a! 46710))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
            .PEctor .Cspecified <|
            [.Pexpr [] () <|
             .PEif (.Pexpr [] () (.PEsym (a! 46723))) (.Pexpr [] () (.PEsym (a! 46710))) <|
             .Pexpr [] () <|
             .PEundef (rgc! «peer.c» 202 253 202 336 202 253) .UB025_misaligned_pointer_conversion]),
           (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
            .Expr [] <| .Epure <| .Pexpr [] () <|
            .PEundef (rgc! «peer.c» 202 253 202 336 202 253) .UB025_misaligned_pointer_conversion)])
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46708)))))) <| .Expr [] <| .Eaction <|
      .Paction .Pos <| .Action (rg! «peer.c» 202 2 202 341) () <|
      .Store0
        .false
        (.Pexpr [] () <| .PEval <| .Vctype <|
        .Ctype
          [.Aloc (rg! «peer.c» 202 17 202 18)]
          (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
        (.Pexpr [] () (.PEsym (addr! "peer" 3351)))
        (.Pexpr [] () (.PEsym (a! 46707)))
        .NA) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «peer.c» 204 2 204 168), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc (rgc! «peer.c» 204 2 204 167 204 3), .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc (rg! «peer.c» 204 5 204 21), .Astmt, .Alabel (.LAloop 3375)] <|
          .Esave
            (c! "do_46725" 46725, .BTy_unit)
            [(addr! "peer" 3351,
              ((.BTy_object .OTy_pointer,
                .some <|
                (.Ctype
                   [.Aloc (rg! «peer.c» 202 17 202 18)]
                   (.Pointer (.mk .false .false .false) Ty.struct_wg_peer),
                 .By_pointer)),
               .Pexpr [] () (.PEsym (addr! "peer" 3351))))] <| .Expr [] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr
              [.Aloc (rg! «peer.c» 204 8 204 10), .Astmt]
              (.Epure (.Pexpr [] () (.PEval .Vunit)))) <| .Expr [] <|
          .Esseq
            (.Pattern [] (.CaseBase (.some (a! 46727), .BTy_loaded .OTy_integer)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr
              [.Aloc (rg! «peer.c» 204 18 204 19), .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
            .Epure (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))) <|
          .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46727))) <|
          [(.Pattern [] <|
            .CaseCtor
              .Cspecified
              [.Pattern [] (.CaseBase (.some (a! 46726), .BTy_object .OTy_integer))],
            .Expr [] <|
            .Eif
              (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
              .PEop
                .OpEq
                (.Pexpr [] () (.PEsym (a! 46726)))
                (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
              (.Expr
                []
                (.Erun () (c! "do_46725" 46725) [.Pexpr [] () (.PEsym (addr! "peer" 3351))]))
              (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))),
           (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
            .Expr [] <|
            .Epure
              (.Pexpr [] () (.PEundef (rg! «peer.c» 204 5 204 21) (.DUMMY "unspecified AilSdo"))))]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 46724), .BTy_loaded .OTy_integer)))
          (.Expr
            [.Aloc (rg! «peer.c» 204 22 204 163),
             .Aexpr,
             .Avalue (.Ainteger (.Signed .Int_)),
             .Astd "\xa76.5.2.2#10, sentence 1"] <|
          .Esseq
            (.Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] (.CaseBase (.some (a! 46729), .BTy_loaded .OTy_pointer)),
              .Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] (.CaseBase (.some (a! 46730), .BTy_ctype)),
               .Pattern [] (.CaseBase (.some (a! 46731), .BTy_list .BTy_ctype)),
               .Pattern [] (.CaseBase (.some (a! 46732), .BTy_boolean)),
               .Pattern [] (.CaseBase (.some (a! 46733), .BTy_boolean))]],
             .Pattern [] (.CaseBase (.some (a! 46738), .BTy_loaded .OTy_pointer)),
             .Pattern [] (.CaseBase (.some (a! 46742), .BTy_loaded .OTy_pointer)),
             .Pattern [] (.CaseBase (.some (a! 46760), .BTy_loaded .OTy_integer)),
             .Pattern [] (.CaseBase (.some (a! 46767), .BTy_loaded .OTy_pointer))])
            (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
            [.Expr [] <|
             .Esseq
               (.Pattern [] (.CaseBase (.some (a! 46728), .BTy_loaded .OTy_pointer)))
               (.Expr [.Aloc (rg! «peer.c» 204 22 204 29), .Aexpr] <| .Epure <| .Pexpr [] () <|
               .PEval <|
               .Vloaded
                 (.LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "_printk" 115)))))) <|
             .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
             [.Pexpr [] () (.PEsym (a! 46728)),
              .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 46728))))],
             .Expr [.Aloc (rg! «peer.c» 204 30 204 96), .Aexpr] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 46740), .BTy_object .OTy_pointer)))
               (.Expr
                 [.Aloc (rg! «peer.c» 204 30 204 96), .Aexpr]
                 (.Epure (.Pexpr [] () (.PEsym (a! 46739))))) <| .Expr [.Astd "\xa76.3.2.1#3"] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 46741), .BTy_object .OTy_pointer)))
               (.Expr [] <| .Ememop .PtrArrayShift <|
               [.Pexpr [] () (.PEsym (a! 46740)),
                .Pexpr [] () (.PEval (.Vctype Ty.char)),
                .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
             .Expr
               []
               (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 46741))]))),
             .Expr [.Aloc (rgc! «peer.c» 204 98 204 121 204 115), .Aexpr] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 46758), .BTy_object .OTy_pointer)))
               (.Expr
                 [.Aloc (rgc! «peer.c» 204 98 204 121 204 115),
                  .Aexpr,
                  .Astd "\xa76.5.2.3#4, sentence 2"] <|
               .Esseq
                 (.Pattern [] (.CaseBase (.some (a! 46743), .BTy_loaded .OTy_pointer)))
                 (.Expr [.Aloc (rgc! «peer.c» 204 98 204 115 204 110), .Aexpr] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 46757), .BTy_object .OTy_pointer)))
                   (.Expr
                     [.Aloc (rgc! «peer.c» 204 98 204 115 204 110),
                      .Aexpr,
                      .Astd "\xa76.5.2.3#4, sentence 2"] <|
                   .Esseq
                     (.Pattern [] (.CaseBase (.some (a! 46747), .BTy_loaded .OTy_pointer)))
                     (.Expr [.Aloc (rgc! «peer.c» 204 98 204 110 204 102), .Aexpr] <|
                     .Ewseq
                       (.Pattern [] (.CaseBase (.some (a! 46756), .BTy_object .OTy_pointer)))
                       (.Expr
                         [.Aloc (rgc! «peer.c» 204 98 204 110 204 102),
                          .Aexpr,
                          .Astd "\xa76.5.2.3#4, sentence 2"] <|
                       .Esseq
                         (.Pattern [] (.CaseBase (.some (a! 46751), .BTy_loaded .OTy_pointer)))
                         (.Expr [.Aloc (rg! «peer.c» 204 98 204 102), .Aexpr] <|
                         .Ewseq
                           (.Pattern [] (.CaseBase (.some (a! 46755), .BTy_object .OTy_pointer)))
                           (.Expr
                             [.Aloc (rg! «peer.c» 204 98 204 102), .Aexpr]
                             (.Epure (.Pexpr [] () (.PEsym (addr! "peer" 3351))))) <| .Expr [] <|
                         .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 204 98 204 102) () <|
                         .Load0
                           (.Pexpr [] () <| .PEval <| .Vctype <|
                           .Ctype
                             [.Aloc (rg! «peer.c» 202 17 202 18)]
                             (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
                           (.Pexpr [] () (.PEsym (a! 46755)))
                           .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46751))) <|
                       [(.Pattern
                           []
                           (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                         .Expr [] <| .Epure <| .Pexpr [] () <|
                         .PEundef
                           (rgc! «peer.c» 204 98 204 110 204 102)
                           (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                        (.Pattern [] <|
                         .CaseCtor
                           .Cspecified
                           [.Pattern [] (.CaseBase (.some (a! 46752), .BTy_object .OTy_pointer))],
                         .Expr [] <| .Epure <| .Pexpr [] () <|
                         .PEmember_shift
                           (.Pexpr [] () (.PEsym (a! 46752)))
                           (c! "wg_peer" 1602)
                           (.Identifier (rg! «peer.c» 204 104 204 110) "device"))]) <| .Expr [] <|
                     .Eaction <| .Paction .Pos <|
                     .Action (rgc! «peer.c» 204 98 204 110 204 102) () <|
                     .Load0
                       (.Pexpr [] () <| .PEval <| .Vctype <|
                       .Ctype
                         [.Aloc (rg! "linux/drivers/net/wireguard/peer.h" 38 19 38 20)]
                         (.Pointer (.mk .false .false .false) Ty.struct_wg_device))
                       (.Pexpr [] () (.PEsym (a! 46756)))
                       .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46747))) <|
                   [(.Pattern
                       []
                       (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                     .Expr [] <| .Epure <| .Pexpr [] () <|
                     .PEundef
                       (rgc! «peer.c» 204 98 204 115 204 110)
                       (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                    (.Pattern [] <|
                     .CaseCtor
                       .Cspecified
                       [.Pattern [] (.CaseBase (.some (a! 46748), .BTy_object .OTy_pointer))],
                     .Expr [] <| .Epure <| .Pexpr [] () <|
                     .PEmember_shift
                       (.Pexpr [] () (.PEsym (a! 46748)))
                       (c! "wg_device" 1732)
                       (.Identifier (rg! «peer.c» 204 112 204 115) "dev"))]) <| .Expr [] <|
                 .Eaction <| .Paction .Pos <| .Action (rgc! «peer.c» 204 98 204 115 204 110) () <|
                 .Load0
                   (.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype
                     [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 41 20 41 21)]
                     (.Pointer (.mk .false .false .false) Ty.struct_net_device))
                   (.Pexpr [] () (.PEsym (a! 46757)))
                   .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46743))) <|
               [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEundef
                   (rgc! «peer.c» 204 98 204 121 204 115)
                   (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                (.Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 46744), .BTy_object .OTy_pointer))],
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEmember_shift
                   (.Pexpr [] () (.PEsym (a! 46744)))
                   (c! "net_device" 590)
                   (.Identifier (rg! «peer.c» 204 117 204 121) "name"))]) <|
             .Expr [.Astd "\xa76.3.2.1#3"] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 46759), .BTy_object .OTy_pointer)))
               (.Expr [] <| .Ememop .PtrArrayShift <|
               [.Pexpr [] () (.PEsym (a! 46758)),
                .Pexpr [] () (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))),
                .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
             .Expr
               []
               (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 46759))]))),
             .Expr
               [.Aloc (rgc! «peer.c» 204 123 204 140 204 127),
                .Aexpr,
                .Avalue (.Ainteger (.Unsigned .LongLong))] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 46766), .BTy_object .OTy_pointer)))
               (.Expr
                 [.Aloc (rgc! «peer.c» 204 123 204 140 204 127),
                  .Aexpr,
                  .Astd "\xa76.5.2.3#4, sentence 2"] <|
               .Esseq
                 (.Pattern [] (.CaseBase (.some (a! 46761), .BTy_loaded .OTy_pointer)))
                 (.Expr [.Aloc (rg! «peer.c» 204 123 204 127), .Aexpr] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 46765), .BTy_object .OTy_pointer)))
                   (.Expr
                     [.Aloc (rg! «peer.c» 204 123 204 127), .Aexpr]
                     (.Epure (.Pexpr [] () (.PEsym (addr! "peer" 3351))))) <| .Expr [] <|
                 .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 204 123 204 127) () <|
                 .Load0
                   (.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype
                     [.Aloc (rg! «peer.c» 202 17 202 18)]
                     (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
                   (.Pexpr [] () (.PEsym (a! 46765)))
                   .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46761))) <|
               [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEundef
                   (rgc! «peer.c» 204 123 204 140 204 127)
                   (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                (.Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 46762), .BTy_object .OTy_pointer))],
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEmember_shift
                   (.Pexpr [] () (.PEsym (a! 46762)))
                   (c! "wg_peer" 1602)
                   (.Identifier (rg! «peer.c» 204 129 204 140) "internal_id"))]) <| .Expr [] <|
             .Eaction <| .Paction .Pos <| .Action (rgc! «peer.c» 204 123 204 140 204 127) () <|
             .Load0
               (.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc (pt! "linux/drivers/net/wireguard/peer.h" 66 2), .Atypedef (c! "u64" 11)]
                 (.Basic (.Integer (.Unsigned .LongLong))))
               (.Pexpr [] () (.PEsym (a! 46766)))
               .NA,
             .Expr
               [.Aloc (rgc! «peer.c» 204 142 204 162 204 142),
                .Aexpr,
                .Astd "\xa76.5.3.2#3, sentence 5"] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 46768), .BTy_object .OTy_pointer)))
               (.Expr
                 [.Aloc (rgc! «peer.c» 204 143 204 162 204 157),
                  .Aexpr,
                  .Astd "\xa76.5.2.3#3, sentence 2"] <|
               .Esseq
                 (.Pattern [] (.CaseBase (.some (a! 46769), .BTy_object .OTy_pointer)))
                 (.Expr
                   [.Aloc (rgc! «peer.c» 204 143 204 157 204 147),
                    .Aexpr,
                    .Astd "\xa76.5.2.3#4, sentence 2"] <|
                 .Esseq
                   (.Pattern [] (.CaseBase (.some (a! 46770), .BTy_loaded .OTy_pointer)))
                   (.Expr [.Aloc (rg! «peer.c» 204 143 204 147), .Aexpr] <|
                   .Ewseq
                     (.Pattern [] (.CaseBase (.some (a! 46774), .BTy_object .OTy_pointer)))
                     (.Expr
                       [.Aloc (rg! «peer.c» 204 143 204 147), .Aexpr]
                       (.Epure (.Pexpr [] () (.PEsym (addr! "peer" 3351))))) <| .Expr [] <|
                   .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 204 143 204 147) () <|
                   .Load0
                     (.Pexpr [] () <| .PEval <| .Vctype <|
                     .Ctype
                       [.Aloc (rg! «peer.c» 202 17 202 18)]
                       (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
                     (.Pexpr [] () (.PEsym (a! 46774)))
                     .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46770))) <|
                 [(.Pattern
                     []
                     (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                   .Expr [] <| .Epure <| .Pexpr [] () <|
                   .PEundef
                     (rgc! «peer.c» 204 143 204 157 204 147)
                     (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                  (.Pattern [] <|
                   .CaseCtor
                     .Cspecified
                     [.Pattern [] (.CaseBase (.some (a! 46771), .BTy_object .OTy_pointer))],
                   .Expr [] <| .Epure <| .Pexpr [] () <|
                   .PEmember_shift
                     (.Pexpr [] () (.PEsym (a! 46771)))
                     (c! "wg_peer" 1602)
                     (.Identifier (rg! «peer.c» 204 149 204 157) "endpoint"))]) <| .Expr [] <|
               .Epure <| .Pexpr [] () <|
               .PEmember_shift
                 (.Pexpr [] () (.PEsym (a! 46769)))
                 (c! "endpoint" 2221)
                 (.Identifier (rg! «peer.c» 204 158 204 162) "addr")) <|
             .Expr
               []
               (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 46768))])))]) <|
          .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpLe
              (.Pexpr [] () <|
              .PEcall
                (.Sym (rt! "params_length" 18299737999929047716))
                [.Pexpr [] () (.PEsym (a! 46731))])
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 4))))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#6, sentence 3"]
              ()
              (.PEundef (rg! «peer.c» 204 22 204 163) .UB038_number_of_args)) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <|
            .PEop .OpOr (.Pexpr [] () (.PEnot (.Pexpr [] () (.PEsym (a! 46732))))) <|
            .Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Signed .Int_))))
              (.Pexpr [] () (.PEsym (a! 46730))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «peer.c» 204 22 204 163) .UB041_function_not_compatible)) <|
          .Expr [] <|
          .Esseq
            (.Pattern [] <| .CaseBase <|
            (.some (sym.Symbol Src.digest 46734 (.SD_FunArg (rg! «peer.c» 204 30 204 96) 0)),
             .BTy_object .OTy_pointer))
            (.Expr [] <|
            .Elet
              (.Pattern [] (.CaseBase (.some (a! 46775), .BTy_ctype)))
              (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
              [.Pexpr [] () (.PEsym (a! 46731)),
               .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
            .Eif
              (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
              .PEare_compatible
                (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                .Pointer
                  (.mk .true .false .false)
                  (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))))
                (.Pexpr [] () (.PEsym (a! 46775))))
              (.Expr [] <| .Epure <|
              .Pexpr
                [.Astd "\xa76.5.2.2#9"]
                ()
                (.PEundef (rg! «peer.c» 204 22 204 163) .UB041_function_not_compatible)) <|
            .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.some (a! 46776), .BTy_object .OTy_pointer)))
              (.Expr [] <| .Eaction <| .Paction .Pos <|
              .Action (rg! «peer.c» 204 22 204 163) () <|
              .Create
                (.Pexpr [] () <| .PEctor .Civalignof <|
                [.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                 .Pointer
                   (.mk .true .false .false)
                   (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0)))])
                (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                .Pointer
                  (.mk .true .false .false)
                  (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))))
                (.PrefFunArg (rg! «peer.c» 204 22 204 163) "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <|
            .Expr [] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [] <| .Eaction <| .Paction .Pos <|
              .Action (rg! «peer.c» 204 22 204 163) () <|
              .Store0
                .false
                (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                .Pointer
                  (.mk .true .false .false)
                  (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))))
                (.Pexpr [] () (.PEsym (a! 46776)))
                (.Pexpr [] () (.PEsym (a! 46738)))
                .NA)
              (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46776)))))) <| .Expr [] <|
          .Esseq
            (.Pattern [] <| .CaseBase <|
            (.some
               (sym.Symbol Src.digest 46735 (.SD_FunArg (rgc! «peer.c» 204 98 204 121 204 115) 1)),
             .BTy_object .OTy_pointer))
            (.Expr [.Astd "\xa76.5.2.2#7, sentences 2 and 3"] <|
            .Eproc () (.Sym (rt! "create_and_store" 14023013563394908458)) <|
            [.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype [.Aloc (rgc! «peer.c» 204 98 204 121 204 115)] <|
             .Pointer
               (.mk .false .false .false)
               (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))),
             .Pexpr [] () (.PEsym (a! 46742))]) <| .Expr [] <|
          .Esseq
            (.Pattern [] <| .CaseBase <|
            (.some
               (sym.Symbol
                 Src.digest
                 46736
                 (.SD_FunArg (rgc! «peer.c» 204 123 204 140 204 127) 2)),
             .BTy_object .OTy_pointer))
            (.Expr [.Astd "\xa76.5.2.2#7, sentences 2 and 3"] <|
            .Eproc () (.Sym (rt! "create_and_store" 14023013563394908458)) <|
            [.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype
               [.Aloc (rgc! «peer.c» 204 123 204 140 204 127)]
               (.Basic (.Integer (.Unsigned .LongLong))),
             .Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
             [.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc (rgc! «peer.c» 204 123 204 140 204 127)]
                (.Basic (.Integer (.Unsigned .LongLong))),
              .Pexpr [] () (.PEsym (a! 46760))]]) <| .Expr [] <|
          .Esseq
            (.Pattern [] <| .CaseBase <|
            (.some
               (sym.Symbol
                 Src.digest
                 46737
                 (.SD_FunArg (rgc! «peer.c» 204 142 204 162 204 142) 3)),
             .BTy_object .OTy_pointer))
            (.Expr [.Astd "\xa76.5.2.2#7, sentences 2 and 3"] <|
            .Eproc () (.Sym (rt! "create_and_store" 14023013563394908458)) <|
            [.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype
               [.Aloc (rgc! «peer.c» 204 142 204 162 204 142)]
               (.Pointer (.mk .false .false .false) Ty.struct_sockaddr_inet),
             .Pexpr [] () (.PEsym (a! 46767))]) <| .Expr [] <|
          .Esseq
            (.Pattern [] (.CaseBase (.some (a! 46777), .BTy_loaded .OTy_integer)))
            (.Expr [] <|
            .Eccall
              ()
              (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc (rg! «peer.c» 204 22 204 29)] <|
              .Pointer (.mk .false .false .false) <| .Ctype [] <|
              .Function
                (.mk .false .false .false,
                 .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Signed .Int_))))
                [(.mk .false .false .false,
                  (.Ctype [.Aloc .unknown, .Aloc .unknown] <|
                   .Pointer
                     (.mk .true .false .false)
                     (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))),
                   .false))]
                .true)
              (.Pexpr [] () (.PEsym (a! 46729))) <|
            [.Pexpr
               []
               ()
               (.PEsym (sym.Symbol Src.digest 46734 (.SD_FunArg (rg! «peer.c» 204 30 204 96) 0))),
             .Pexpr [] () <| .PEctor .Ccons <|
             [.Pexpr [] () <| .PEctor .Ctuple <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype [.Aloc (rgc! «peer.c» 204 98 204 121 204 115)] <|
               .Pointer
                 (.mk .false .false .false)
                 (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))),
               .Pexpr [] () <|
               .PEsym
                 (sym.Symbol
                   Src.digest
                   46735
                   (.SD_FunArg (rgc! «peer.c» 204 98 204 121 204 115) 1))],
              .Pexpr [] () <| .PEctor .Ccons <|
              [.Pexpr [] () <| .PEctor .Ctuple <|
               [.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype
                  [.Aloc (rgc! «peer.c» 204 123 204 140 204 127)]
                  (.Basic (.Integer (.Unsigned .LongLong))),
                .Pexpr [] () <| .PEsym <|
                sym.Symbol Src.digest 46736 (.SD_FunArg (rgc! «peer.c» 204 123 204 140 204 127) 2)],
               .Pexpr [] () <| .PEctor .Ccons <|
               [.Pexpr [] () <| .PEctor .Ctuple <|
                [.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype
                   [.Aloc (rgc! «peer.c» 204 142 204 162 204 142)]
                   (.Pointer (.mk .false .false .false) Ty.struct_sockaddr_inet),
                 .Pexpr [] () <| .PEsym <|
                 sym.Symbol
                   Src.digest
                   46737
                   (.SD_FunArg (rgc! «peer.c» 204 142 204 162 204 142) 3)],
                .Pexpr
                  []
                  ()
                  (.PEctor (.Cnil (.BTy_tuple [.BTy_ctype, .BTy_object .OTy_pointer])) [])]]]]) <|
          .Expr [] <|
          .Esseq
            (.Pattern
              []
              (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit, .BTy_unit, .BTy_unit])))
            (.Expr [] <| .Eunseq <|
            [.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 204 22 204 163) () <|
             .Kill
               (.Static0 <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
               .Pointer
                 (.mk .true .false .false)
                 (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0)))) <|
             .Pexpr
               []
               ()
               (.PEsym (sym.Symbol Src.digest 46734 (.SD_FunArg (rg! «peer.c» 204 30 204 96) 0))),
             .Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 204 22 204 163) () <|
             .Kill
               (.Static0 <| .Ctype [.Aloc (rgc! «peer.c» 204 98 204 121 204 115)] <|
               .Pointer
                 (.mk .false .false .false)
                 (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0)))) <| .Pexpr [] () <| .PEsym <|
             sym.Symbol Src.digest 46735 (.SD_FunArg (rgc! «peer.c» 204 98 204 121 204 115) 1),
             .Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 204 22 204 163) () <|
             .Kill
               (.Static0 <|
               .Ctype
                 [.Aloc (rgc! «peer.c» 204 123 204 140 204 127)]
                 (.Basic (.Integer (.Unsigned .LongLong)))) <| .Pexpr [] () <| .PEsym <|
             sym.Symbol Src.digest 46736 (.SD_FunArg (rgc! «peer.c» 204 123 204 140 204 127) 2),
             .Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 204 22 204 163) () <|
             .Kill
               (.Static0 <|
               .Ctype
                 [.Aloc (rgc! «peer.c» 204 142 204 162 204 142)]
                 (.Pointer (.mk .false .false .false) Ty.struct_sockaddr_inet)) <| .Pexpr [] () <|
             .PEsym
               (sym.Symbol
                 Src.digest
                 46737
                 (.SD_FunArg (rgc! «peer.c» 204 142 204 162 204 142) 3))])
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46777))))))
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46724))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «peer.c» 211 2 212 31), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc (rg! «peer.c» 211 2 212 30), .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
        .Esseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <| .CaseCtor .Ctuple <|
           [.Pattern [] (.CaseBase (.some (a! 46779), .BTy_loaded .OTy_pointer)),
            .Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 46780), .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 46781), .BTy_list .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 46782), .BTy_boolean)),
             .Pattern [] (.CaseBase (.some (a! 46783), .BTy_boolean))]],
           .Pattern [] (.CaseBase (.some (a! 46786), .BTy_loaded .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 46798), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
          [.Expr [] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 46778), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc (rg! «peer.c» 211 2 211 27), .Aexpr] <| .Epure <| .Pexpr [] () <|
             .PEval <| .Vloaded <| .LVspecified <|
             .OVpointer (.PV .Prov_none (.PVfunction (c! "wg_index_hashtable_remove" 1672)))) <|
           .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
           [.Pexpr [] () (.PEsym (a! 46778)),
            .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 46778))))],
           .Expr [.Aloc (rgc! «peer.c» 211 28 211 57 211 40), .Aexpr] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 46797), .BTy_object .OTy_pointer)))
             (.Expr
               [.Aloc (rgc! «peer.c» 211 28 211 57 211 40),
                .Aexpr,
                .Astd "\xa76.5.2.3#4, sentence 2"] <|
             .Esseq
               (.Pattern [] (.CaseBase (.some (a! 46787), .BTy_loaded .OTy_pointer)))
               (.Expr [.Aloc (rgc! «peer.c» 211 28 211 40 211 32), .Aexpr] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 46796), .BTy_object .OTy_pointer)))
                 (.Expr
                   [.Aloc (rgc! «peer.c» 211 28 211 40 211 32),
                    .Aexpr,
                    .Astd "\xa76.5.2.3#4, sentence 2"] <|
                 .Esseq
                   (.Pattern [] (.CaseBase (.some (a! 46791), .BTy_loaded .OTy_pointer)))
                   (.Expr [.Aloc (rg! «peer.c» 211 28 211 32), .Aexpr] <|
                   .Ewseq
                     (.Pattern [] (.CaseBase (.some (a! 46795), .BTy_object .OTy_pointer)))
                     (.Expr
                       [.Aloc (rg! «peer.c» 211 28 211 32), .Aexpr]
                       (.Epure (.Pexpr [] () (.PEsym (addr! "peer" 3351))))) <| .Expr [] <|
                   .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 211 28 211 32) () <|
                   .Load0
                     (.Pexpr [] () <| .PEval <| .Vctype <|
                     .Ctype
                       [.Aloc (rg! «peer.c» 202 17 202 18)]
                       (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
                     (.Pexpr [] () (.PEsym (a! 46795)))
                     .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46791))) <|
                 [(.Pattern
                     []
                     (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                   .Expr [] <| .Epure <| .Pexpr [] () <|
                   .PEundef
                     (rgc! «peer.c» 211 28 211 40 211 32)
                     (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                  (.Pattern [] <|
                   .CaseCtor
                     .Cspecified
                     [.Pattern [] (.CaseBase (.some (a! 46792), .BTy_object .OTy_pointer))],
                   .Expr [] <| .Epure <| .Pexpr [] () <|
                   .PEmember_shift
                     (.Pexpr [] () (.PEsym (a! 46792)))
                     (c! "wg_peer" 1602)
                     (.Identifier (rg! «peer.c» 211 34 211 40) "device"))]) <| .Expr [] <|
               .Eaction <| .Paction .Pos <| .Action (rgc! «peer.c» 211 28 211 40 211 32) () <|
               .Load0
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype
                   [.Aloc (rg! "linux/drivers/net/wireguard/peer.h" 38 19 38 20)]
                   (.Pointer (.mk .false .false .false) Ty.struct_wg_device))
                 (.Pexpr [] () (.PEsym (a! 46796)))
                 .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46787))) <|
             [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
               .Expr [] <| .Epure <| .Pexpr [] () <|
               .PEundef
                 (rgc! «peer.c» 211 28 211 57 211 40)
                 (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
              (.Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 46788), .BTy_object .OTy_pointer))],
               .Expr [] <| .Epure <| .Pexpr [] () <|
               .PEmember_shift
                 (.Pexpr [] () (.PEsym (a! 46788)))
                 (c! "wg_device" 1732)
                 (.Identifier (rg! «peer.c» 211 42 211 57) "index_hashtable"))]) <| .Expr [] <|
           .Eaction <| .Paction .Pos <| .Action (rgc! «peer.c» 211 28 211 57 211 40) () <|
           .Load0
             (.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype
               [.Aloc (rg! "linux/drivers/net/wireguard/device.h" 49 25 49 26)]
               (.Pointer (.mk .false .false .false) Ty.struct_index_hashtable))
             (.Pexpr [] () (.PEsym (a! 46797)))
             .NA,
           .Expr
             [.Aloc (rgc! «peer.c» 212 7 212 29 212 7), .Aexpr, .Astd "\xa76.5.3.2#3, sentence 5"] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 46799), .BTy_object .OTy_pointer)))
             (.Expr
               [.Aloc (rgc! «peer.c» 212 8 212 29 212 23),
                .Aexpr,
                .Astd "\xa76.5.2.3#3, sentence 2"] <|
             .Esseq
               (.Pattern [] (.CaseBase (.some (a! 46800), .BTy_object .OTy_pointer)))
               (.Expr
                 [.Aloc (rgc! «peer.c» 212 8 212 23 212 12),
                  .Aexpr,
                  .Astd "\xa76.5.2.3#4, sentence 2"] <|
               .Esseq
                 (.Pattern [] (.CaseBase (.some (a! 46801), .BTy_loaded .OTy_pointer)))
                 (.Expr [.Aloc (rg! «peer.c» 212 8 212 12), .Aexpr] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 46805), .BTy_object .OTy_pointer)))
                   (.Expr
                     [.Aloc (rg! «peer.c» 212 8 212 12), .Aexpr]
                     (.Epure (.Pexpr [] () (.PEsym (addr! "peer" 3351))))) <| .Expr [] <|
                 .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 212 8 212 12) () <|
                 .Load0
                   (.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype
                     [.Aloc (rg! «peer.c» 202 17 202 18)]
                     (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
                   (.Pexpr [] () (.PEsym (a! 46805)))
                   .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46801))) <|
               [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEundef
                   (rgc! «peer.c» 212 8 212 23 212 12)
                   (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
                (.Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 46802), .BTy_object .OTy_pointer))],
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEmember_shift
                   (.Pexpr [] () (.PEsym (a! 46802)))
                   (c! "wg_peer" 1602)
                   (.Identifier (rg! «peer.c» 212 14 212 23) "handshake"))]) <| .Expr [] <|
             .Epure <| .Pexpr [] () <|
             .PEmember_shift
               (.Pexpr [] () (.PEsym (a! 46800)))
               (c! "noise_handshake" 1707)
               (.Identifier (rg! «peer.c» 212 24 212 29) "entry")) <|
           .Expr [] (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 46799))])))]) <|
        .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
          .PEop
            .OpEq
            (.Pexpr [] () <|
            .PEcall
              (.Sym (rt! "params_length" 18299737999929047716))
              [.Pexpr [] () (.PEsym (a! 46781))])
            (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#6, sentence 3"]
            ()
            (.PEundef (rg! «peer.c» 211 2 212 30) .UB038_number_of_args)) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 46782))) <| .Pexpr [] () <|
          .PEnot <| .Pexpr [] () <|
          .PEare_compatible
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype
              [.Aloc (rg! "linux/drivers/net/wireguard/peerlookup.h" 57 1 57 5),
               .Aloc (rg! «peerlookup.c» 192 1 192 5)]
              .Void0)
            (.Pexpr [] () (.PEsym (a! 46780))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#9"]
            ()
            (.PEundef (rg! «peer.c» 211 2 212 30) .UB041_function_not_compatible)) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some (sym.Symbol Src.digest 46784 (.SD_FunArg (rgc! «peer.c» 211 28 211 57 211 40) 0)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 46806), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 46781)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc (rg! "linux/drivers/net/wireguard/peerlookup.h" 57 55 57 56),
                 .Aloc (rg! «peerlookup.c» 192 55 192 56)]
                (.Pointer (.mk .false .false .false) Ty.struct_index_hashtable))
              (.Pexpr [] () (.PEsym (a! 46806))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «peer.c» 211 2 212 30) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 46807), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 211 2 212 30) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc (rg! "linux/drivers/net/wireguard/peerlookup.h" 57 55 57 56),
                  .Aloc (rg! «peerlookup.c» 192 55 192 56)]
                 (.Pointer (.mk .false .false .false) Ty.struct_index_hashtable)])
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc (rg! "linux/drivers/net/wireguard/peerlookup.h" 57 55 57 56),
                 .Aloc (rg! «peerlookup.c» 192 55 192 56)]
                (.Pointer (.mk .false .false .false) Ty.struct_index_hashtable))
              (.PrefFunArg (rg! «peer.c» 211 2 212 30) "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 211 2 212 30) () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc (rg! "linux/drivers/net/wireguard/peerlookup.h" 57 55 57 56),
                 .Aloc (rg! «peerlookup.c» 192 55 192 56)]
                (.Pointer (.mk .false .false .false) Ty.struct_index_hashtable))
              (.Pexpr [] () (.PEsym (a! 46807)))
              (.Pexpr [] () (.PEsym (a! 46786)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46807)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some (sym.Symbol Src.digest 46785 (.SD_FunArg (rgc! «peer.c» 212 7 212 29 212 7) 1)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 46808), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 46781)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc (rg! "linux/drivers/net/wireguard/peerlookup.h" 58 40 58 41),
                 .Aloc (rg! «peerlookup.c» 193 40 193 41)]
                (.Pointer (.mk .false .false .false) Ty.struct_index_hashtable_entry))
              (.Pexpr [] () (.PEsym (a! 46808))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «peer.c» 211 2 212 30) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 46809), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 211 2 212 30) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc (rg! "linux/drivers/net/wireguard/peerlookup.h" 58 40 58 41),
                  .Aloc (rg! «peerlookup.c» 193 40 193 41)]
                 (.Pointer (.mk .false .false .false) Ty.struct_index_hashtable_entry)])
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc (rg! "linux/drivers/net/wireguard/peerlookup.h" 58 40 58 41),
                 .Aloc (rg! «peerlookup.c» 193 40 193 41)]
                (.Pointer (.mk .false .false .false) Ty.struct_index_hashtable_entry))
              (.PrefFunArg (rg! «peer.c» 211 2 212 30) "fa5a43434dcb33dc130b30cb8faeddf7" 1)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 211 2 212 30) () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc (rg! "linux/drivers/net/wireguard/peerlookup.h" 58 40 58 41),
                 .Aloc (rg! «peerlookup.c» 193 40 193 41)]
                (.Pointer (.mk .false .false .false) Ty.struct_index_hashtable_entry))
              (.Pexpr [] () (.PEsym (a! 46809)))
              (.Pexpr [] () (.PEsym (a! 46798)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46809)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 46810), .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
          .Eccall
            ()
            (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc (rg! «peer.c» 211 2 211 27)] <|
            .Pointer (.mk .false .false .false) <| .Ctype [] <|
            .Function
              (.mk .false .false .false,
               .Ctype
                 [.Aloc (rg! "linux/drivers/net/wireguard/peerlookup.h" 57 1 57 5),
                  .Aloc (rg! «peerlookup.c» 192 1 192 5)]
                 .Void0)
              [(.mk .false .false .false,
                (.Ctype
                   [.Aloc (rg! "linux/drivers/net/wireguard/peerlookup.h" 57 55 57 56),
                    .Aloc (rg! «peerlookup.c» 192 55 192 56)]
                   (.Pointer (.mk .false .false .false) Ty.struct_index_hashtable),
                 .false)),
               (.mk .false .false .false,
                (.Ctype
                   [.Aloc (rg! "linux/drivers/net/wireguard/peerlookup.h" 58 40 58 41),
                    .Aloc (rg! «peerlookup.c» 193 40 193 41)]
                   (.Pointer (.mk .false .false .false) Ty.struct_index_hashtable_entry),
                 .false))]
              .false)
            (.Pexpr [] () (.PEsym (a! 46779))) <|
          [.Pexpr [] () <|
           .PEsym
             (sym.Symbol Src.digest 46784 (.SD_FunArg (rgc! «peer.c» 211 28 211 57 211 40) 0)),
           .Pexpr [] () <|
           .PEsym (sym.Symbol Src.digest 46785 (.SD_FunArg (rgc! «peer.c» 212 7 212 29 212 7) 1))]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit])))
          (.Expr [] <| .Eunseq <|
          [.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 211 2 212 30) () <|
           .Kill
             (.Static0 <|
             .Ctype
               [.Aloc (rg! "linux/drivers/net/wireguard/peerlookup.h" 57 55 57 56),
                .Aloc (rg! «peerlookup.c» 192 55 192 56)]
               (.Pointer (.mk .false .false .false) Ty.struct_index_hashtable)) <| .Pexpr [] () <|
           .PEsym
             (sym.Symbol Src.digest 46784 (.SD_FunArg (rgc! «peer.c» 211 28 211 57 211 40) 0)),
           .Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 211 2 212 30) () <|
           .Kill
             (.Static0 <|
             .Ctype
               [.Aloc (rg! "linux/drivers/net/wireguard/peerlookup.h" 58 40 58 41),
                .Aloc (rg! «peerlookup.c» 193 40 193 41)]
               (.Pointer (.mk .false .false .false) Ty.struct_index_hashtable_entry)) <|
           .Pexpr [] () <|
           .PEsym (sym.Symbol Src.digest 46785 (.SD_FunArg (rgc! «peer.c» 212 7 212 29 212 7) 1))])
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46810))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «peer.c» 217 2 217 39), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc (rg! «peer.c» 217 2 217 38), .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
        .Esseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <| .CaseCtor .Ctuple <|
           [.Pattern [] (.CaseBase (.some (a! 46812), .BTy_loaded .OTy_pointer)),
            .Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 46813), .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 46814), .BTy_list .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 46815), .BTy_boolean)),
             .Pattern [] (.CaseBase (.some (a! 46816), .BTy_boolean))]],
           .Pattern [] (.CaseBase (.some (a! 46818), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
          [.Expr [] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 46811), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc (rg! «peer.c» 217 2 217 32), .Aexpr] <| .Epure <| .Pexpr [] () <|
             .PEval <| .Vloaded <| .LVspecified <| .OVpointer <|
             .PV .Prov_none (.PVfunction (c! "wg_packet_purge_staged_packets" 2238))) <| .Expr [] <|
           .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
           [.Pexpr [] () (.PEsym (a! 46811)),
            .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 46811))))],
           .Expr [.Aloc (rg! «peer.c» 217 33 217 37), .Aexpr] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 46819), .BTy_object .OTy_pointer)))
             (.Expr
               [.Aloc (rg! «peer.c» 217 33 217 37), .Aexpr]
               (.Epure (.Pexpr [] () (.PEsym (addr! "peer" 3351))))) <| .Expr [] <| .Eaction <|
           .Paction .Pos <| .Action (rg! «peer.c» 217 33 217 37) () <|
           .Load0
             (.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype
               [.Aloc (rg! «peer.c» 202 17 202 18)]
               (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
             (.Pexpr [] () (.PEsym (a! 46819)))
             .NA]) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
          .PEop
            .OpEq
            (.Pexpr [] () <|
            .PEcall
              (.Sym (rt! "params_length" 18299737999929047716))
              [.Pexpr [] () (.PEsym (a! 46814))])
            (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#6, sentence 3"]
            ()
            (.PEundef (rg! «peer.c» 217 2 217 38) .UB038_number_of_args)) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 46815))) <| .Pexpr [] () <|
          .PEnot <| .Pexpr [] () <|
          .PEare_compatible
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype [.Aloc (rg! «queueing.h» 46 1 46 5), .Aloc (rg! «send.c» 333 1 333 5)] .Void0)
            (.Pexpr [] () (.PEsym (a! 46813))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#9"]
            ()
            (.PEundef (rg! «peer.c» 217 2 217 38) .UB041_function_not_compatible)) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some (sym.Symbol Src.digest 46817 (.SD_FunArg (rg! «peer.c» 217 33 217 37) 0)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 46820), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 46814)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc (rg! «queueing.h» 46 52 46 53), .Aloc (rg! «send.c» 333 52 333 53)]
                (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
              (.Pexpr [] () (.PEsym (a! 46820))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «peer.c» 217 2 217 38) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 46821), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 217 2 217 38) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc (rg! «queueing.h» 46 52 46 53), .Aloc (rg! «send.c» 333 52 333 53)]
                 (.Pointer (.mk .false .false .false) Ty.struct_wg_peer)])
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc (rg! «queueing.h» 46 52 46 53), .Aloc (rg! «send.c» 333 52 333 53)]
                (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
              (.PrefFunArg (rg! «peer.c» 217 2 217 38) "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 217 2 217 38) () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc (rg! «queueing.h» 46 52 46 53), .Aloc (rg! «send.c» 333 52 333 53)]
                (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
              (.Pexpr [] () (.PEsym (a! 46821)))
              (.Pexpr [] () (.PEsym (a! 46818)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46821)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 46822), .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
          .Eccall
            ()
            (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc (rg! «peer.c» 217 2 217 32)] <|
            .Pointer (.mk .false .false .false) <| .Ctype [] <|
            .Function
              (.mk .false .false .false,
               .Ctype
                 [.Aloc (rg! «queueing.h» 46 1 46 5), .Aloc (rg! «send.c» 333 1 333 5)]
                 .Void0)
              [(.mk .false .false .false,
                (.Ctype
                   [.Aloc (rg! «queueing.h» 46 52 46 53), .Aloc (rg! «send.c» 333 52 333 53)]
                   (.Pointer (.mk .false .false .false) Ty.struct_wg_peer),
                 .false))]
              .false)
            (.Pexpr [] () (.PEsym (a! 46812))) <|
          [.Pexpr
             []
             ()
             (.PEsym (sym.Symbol Src.digest 46817 (.SD_FunArg (rg! «peer.c» 217 33 217 37) 0)))]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 217 2 217 38) () <|
          .Kill
            (.Static0 <|
            .Ctype
              [.Aloc (rg! «queueing.h» 46 52 46 53), .Aloc (rg! «send.c» 333 52 333 53)]
              (.Pointer (.mk .false .false .false) Ty.struct_wg_peer)) <|
          .Pexpr
            []
            ()
            (.PEsym (sym.Symbol Src.digest 46817 (.SD_FunArg (rg! «peer.c» 217 33 217 37) 0))))
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46822))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «peer.c» 220 2 220 36), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc (rg! «peer.c» 220 2 220 35), .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
        .Esseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <| .CaseCtor .Ctuple <|
           [.Pattern [] (.CaseBase (.some (a! 46824), .BTy_loaded .OTy_pointer)),
            .Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 46825), .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 46826), .BTy_list .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 46827), .BTy_boolean)),
             .Pattern [] (.CaseBase (.some (a! 46828), .BTy_boolean))]],
           .Pattern [] (.CaseBase (.some (a! 46831), .BTy_loaded .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 46838), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
          [.Expr [] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 46823), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc (rg! «peer.c» 220 2 220 10), .Aexpr] <| .Epure <| .Pexpr [] () <|
             .PEval <|
             .Vloaded (.LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "call_rcu" 597)))))) <|
           .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
           [.Pexpr [] () (.PEsym (a! 46823)),
            .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 46823))))],
           .Expr
             [.Aloc (rgc! «peer.c» 220 11 220 21 220 11),
              .Aexpr,
              .Astd "\xa76.5.3.2#3, sentence 5"] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 46832), .BTy_object .OTy_pointer)))
             (.Expr
               [.Aloc (rgc! «peer.c» 220 12 220 21 220 16),
                .Aexpr,
                .Astd "\xa76.5.2.3#4, sentence 2"] <|
             .Esseq
               (.Pattern [] (.CaseBase (.some (a! 46833), .BTy_loaded .OTy_pointer)))
               (.Expr [.Aloc (rg! «peer.c» 220 12 220 16), .Aexpr] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 46837), .BTy_object .OTy_pointer)))
                 (.Expr
                   [.Aloc (rg! «peer.c» 220 12 220 16), .Aexpr]
                   (.Epure (.Pexpr [] () (.PEsym (addr! "peer" 3351))))) <| .Expr [] <| .Eaction <|
               .Paction .Pos <| .Action (rg! «peer.c» 220 12 220 16) () <|
               .Load0
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype
                   [.Aloc (rg! «peer.c» 202 17 202 18)]
                   (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
                 (.Pexpr [] () (.PEsym (a! 46837)))
                 .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 46833))) <|
             [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
               .Expr [] <| .Epure <| .Pexpr [] () <|
               .PEundef
                 (rgc! «peer.c» 220 12 220 21 220 16)
                 (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
              (.Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 46834), .BTy_object .OTy_pointer))],
               .Expr [] <| .Epure <| .Pexpr [] () <|
               .PEmember_shift
                 (.Pexpr [] () (.PEsym (a! 46834)))
                 (c! "wg_peer" 1602)
                 (.Identifier (rg! «peer.c» 220 18 220 21) "rcu"))]) <|
           .Expr [] (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 46832))]))),
           .Expr [.Aloc (rg! «peer.c» 220 23 220 34), .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <|
           .Vloaded
             (.LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "rcu_release" 3317)))))]) <|
        .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
          .PEop
            .OpEq
            (.Pexpr [] () <|
            .PEcall
              (.Sym (rt! "params_length" 18299737999929047716))
              [.Pexpr [] () (.PEsym (a! 46826))])
            (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#6, sentence 3"]
            ()
            (.PEundef (rg! «peer.c» 220 2 220 35) .UB038_number_of_args)) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 46827))) <| .Pexpr [] () <|
          .PEnot <| .Pexpr [] () <|
          .PEare_compatible
            (.Pexpr [] () (.PEval (.Vctype (.Ctype [.Aloc .unknown, .Aloc .unknown] .Void0))))
            (.Pexpr [] () (.PEsym (a! 46825))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#9"]
            ()
            (.PEundef (rg! «peer.c» 220 2 220 35) .UB041_function_not_compatible)) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some (sym.Symbol Src.digest 46829 (.SD_FunArg (rgc! «peer.c» 220 11 220 21 220 11) 0)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 46839), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 46826)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown, .Aloc .unknown]
                (.Pointer (.mk .false .false .false) Ty.struct_callback_head))
              (.Pexpr [] () (.PEsym (a! 46839))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «peer.c» 220 2 220 35) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 46840), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 220 2 220 35) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc .unknown, .Aloc .unknown]
                 (.Pointer (.mk .false .false .false) Ty.struct_callback_head)])
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown, .Aloc .unknown]
                (.Pointer (.mk .false .false .false) Ty.struct_callback_head))
              (.PrefFunArg (rg! «peer.c» 220 2 220 35) "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 220 2 220 35) () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown, .Aloc .unknown]
                (.Pointer (.mk .false .false .false) Ty.struct_callback_head))
              (.Pexpr [] () (.PEsym (a! 46840)))
              (.Pexpr [] () (.PEsym (a! 46831)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46840)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some (sym.Symbol Src.digest 46830 (.SD_FunArg (rg! «peer.c» 220 23 220 34) 1)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 46841), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 46826)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown,
                 .Atypedef (c! "rcu_callback_t" 54),
                 .Aloc .unknown,
                 .Atypedef (c! "rcu_callback_t" 54)] <| .Pointer (.mk .false .false .false) <|
              .Ctype [.Aloc .unknown, .Aloc .unknown] <|
              .Function
                (.mk .false .false .false, .Ctype [.Aloc .unknown, .Aloc .unknown] .Void0)
                [(.mk .false .false .false,
                  (.Ctype
                     [.Aloc .unknown, .Aloc .unknown]
                     (.Pointer (.mk .false .false .false) Ty.struct_callback_head),
                   .false))]
                .false)
              (.Pexpr [] () (.PEsym (a! 46841))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «peer.c» 220 2 220 35) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 46842), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 220 2 220 35) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc .unknown,
                  .Atypedef (c! "rcu_callback_t" 54),
                  .Aloc .unknown,
                  .Atypedef (c! "rcu_callback_t" 54)] <| .Pointer (.mk .false .false .false) <|
               .Ctype [.Aloc .unknown, .Aloc .unknown] <|
               .Function
                 (.mk .false .false .false, .Ctype [.Aloc .unknown, .Aloc .unknown] .Void0)
                 [(.mk .false .false .false,
                   (.Ctype
                      [.Aloc .unknown, .Aloc .unknown]
                      (.Pointer (.mk .false .false .false) Ty.struct_callback_head),
                    .false))]
                 .false])
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown,
                 .Atypedef (c! "rcu_callback_t" 54),
                 .Aloc .unknown,
                 .Atypedef (c! "rcu_callback_t" 54)] <| .Pointer (.mk .false .false .false) <|
              .Ctype [.Aloc .unknown, .Aloc .unknown] <|
              .Function
                (.mk .false .false .false, .Ctype [.Aloc .unknown, .Aloc .unknown] .Void0)
                [(.mk .false .false .false,
                  (.Ctype
                     [.Aloc .unknown, .Aloc .unknown]
                     (.Pointer (.mk .false .false .false) Ty.struct_callback_head),
                   .false))]
                .false)
              (.PrefFunArg (rg! «peer.c» 220 2 220 35) "fa5a43434dcb33dc130b30cb8faeddf7" 1)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 220 2 220 35) () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown,
                 .Atypedef (c! "rcu_callback_t" 54),
                 .Aloc .unknown,
                 .Atypedef (c! "rcu_callback_t" 54)] <| .Pointer (.mk .false .false .false) <|
              .Ctype [.Aloc .unknown, .Aloc .unknown] <|
              .Function
                (.mk .false .false .false, .Ctype [.Aloc .unknown, .Aloc .unknown] .Void0)
                [(.mk .false .false .false,
                  (.Ctype
                     [.Aloc .unknown, .Aloc .unknown]
                     (.Pointer (.mk .false .false .false) Ty.struct_callback_head),
                   .false))]
                .false)
              (.Pexpr [] () (.PEsym (a! 46842)))
              (.Pexpr [] () (.PEsym (a! 46838)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46842)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 46843), .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
          .Eccall
            ()
            (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc (rg! «peer.c» 220 2 220 10)] <|
            .Pointer (.mk .false .false .false) <| .Ctype [] <|
            .Function
              (.mk .false .false .false, .Ctype [.Aloc .unknown, .Aloc .unknown] .Void0)
              [(.mk .false .false .false,
                (.Ctype
                   [.Aloc .unknown, .Aloc .unknown]
                   (.Pointer (.mk .false .false .false) Ty.struct_callback_head),
                 .false)),
               (.mk .false .false .false,
                (.Ctype
                   [.Aloc .unknown,
                    .Atypedef (c! "rcu_callback_t" 54),
                    .Aloc .unknown,
                    .Atypedef (c! "rcu_callback_t" 54)] <| .Pointer (.mk .false .false .false) <|
                 .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                 .Function
                   (.mk .false .false .false, .Ctype [.Aloc .unknown, .Aloc .unknown] .Void0)
                   [(.mk .false .false .false,
                     (.Ctype
                        [.Aloc .unknown, .Aloc .unknown]
                        (.Pointer (.mk .false .false .false) Ty.struct_callback_head),
                      .false))]
                   .false,
                 .false))]
              .false)
            (.Pexpr [] () (.PEsym (a! 46824))) <|
          [.Pexpr [] () <|
           .PEsym
             (sym.Symbol Src.digest 46829 (.SD_FunArg (rgc! «peer.c» 220 11 220 21 220 11) 0)),
           .Pexpr
             []
             ()
             (.PEsym (sym.Symbol Src.digest 46830 (.SD_FunArg (rg! «peer.c» 220 23 220 34) 1)))]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit])))
          (.Expr [] <| .Eunseq <|
          [.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 220 2 220 35) () <|
           .Kill
             (.Static0 <|
             .Ctype
               [.Aloc .unknown, .Aloc .unknown]
               (.Pointer (.mk .false .false .false) Ty.struct_callback_head)) <| .Pexpr [] () <|
           .PEsym
             (sym.Symbol Src.digest 46829 (.SD_FunArg (rgc! «peer.c» 220 11 220 21 220 11) 0)),
           .Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 220 2 220 35) () <|
           .Kill
             (.Static0 <|
             .Ctype
               [.Aloc .unknown,
                .Atypedef (c! "rcu_callback_t" 54),
                .Aloc .unknown,
                .Atypedef (c! "rcu_callback_t" 54)] <| .Pointer (.mk .false .false .false) <|
             .Ctype [.Aloc .unknown, .Aloc .unknown] <|
             .Function
               (.mk .false .false .false, .Ctype [.Aloc .unknown, .Aloc .unknown] .Void0)
               [(.mk .false .false .false,
                 (.Ctype
                    [.Aloc .unknown, .Aloc .unknown]
                    (.Pointer (.mk .false .false .false) Ty.struct_callback_head),
                  .false))]
               .false) <|
           .Pexpr
             []
             ()
             (.PEsym (sym.Symbol Src.digest 46830 (.SD_FunArg (rg! «peer.c» 220 23 220 34) 1)))])
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46843))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [] <| .Eaction <| .Paction .Pos <|
      .Action (rgr! «peer.c» 201 1 221 2 202 18 202 22) () <|
      .Kill
        (.Static0 <|
        .Ctype
          [.Aloc (rg! «peer.c» 202 17 202 18)]
          (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
        (.Pexpr [] () (.PEsym (addr! "peer" 3351))))
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc (rgr! «peer.c» 200 1 221 2 200 13 200 25)] <|
  .Esave
    (c! "ret_46706" 46706, .BTy_unit)
    [(a! 46844,
      ((.BTy_unit, .some (.Ctype [.Aloc (rg! «peer.c» 200 8 200 12)] .Void0, .By_value)),
       .Pexpr [] () (.PEval .Vunit)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 46844)))))

/--
```c
void wg_peer_put(struct wg_peer *peer)
```

`linux/drivers/net/wireguard/peer.c:223` -/
def wg_peer_put : Procedure :=
  .Proc
    (rgr! «peer.c» 223 1 228 2 223 6 223 17)
    (.some 3378)
    .BTy_unit
    [(addr! "peer" 3377, .BTy_object .OTy_pointer)] <| .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc (rg! «peer.c» 224 1 228 2), .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «peer.c» 225 2 226 10), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 52923), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc (rg! «peer.c» 225 6 225 23), .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 52925), .BTy_loaded .OTy_integer)),
           .Pattern [] (.CaseBase (.some (a! 52926), .BTy_loaded .OTy_integer))])
          (.Expr [] <| .Eunseq <|
          [.Expr
             [.Aloc (rg! «peer.c» 225 6 225 23),
              .Aexpr,
              .Avalue (.Ainteger (.Signed .Long)),
              .Astd "\xa76.5.4"] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 52930), .BTy_loaded .OTy_integer)))
             (.Expr
               [.Aloc (rgc! «peer.c» 225 13 225 22 225 13),
                .Aexpr,
                .Avalue (.Ainteger (.Signed .Int_))] <|
             .Ewseq
               (.Pattern [] <| .CaseCtor .Ctuple <|
               [.Pattern [] (.CaseBase (.some (a! 52932), .BTy_loaded .OTy_integer)),
                .Pattern [] (.CaseBase (.some (a! 52933), .BTy_loaded .OTy_integer))])
               (.Expr [] <| .Eunseq <|
               [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                .Epure
                  (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))),
                .Expr
                  [.Aloc (rgc! «peer.c» 225 14 225 22 225 14),
                   .Aexpr,
                   .Avalue (.Ainteger (.Signed .Int_))] <|
                .Ewseq
                  (.Pattern [] <| .CaseCtor .Ctuple <|
                  [.Pattern [] (.CaseBase (.some (a! 52937), .BTy_loaded .OTy_integer)),
                   .Pattern [] (.CaseBase (.some (a! 52938), .BTy_loaded .OTy_integer))])
                  (.Expr [] <| .Eunseq <|
                  [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                   .Epure
                     (.Pexpr
                       []
                       ()
                       (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))),
                   .Expr
                     [.Aloc (rg! «peer.c» 225 15 225 22),
                      .Aexpr,
                      .Avalue (.Ainteger (.Signed .Int_))] <|
                   .Ewseq
                     (.Pattern [] (.CaseBase (.some (a! 52943), .BTy_loaded .OTy_pointer)))
                     (.Expr [.Aloc (rg! «peer.c» 225 17 225 21), .Aexpr] <|
                     .Ewseq
                       (.Pattern [] (.CaseBase (.some (a! 52942), .BTy_object .OTy_pointer)))
                       (.Expr
                         [.Aloc (rg! «peer.c» 225 17 225 21), .Aexpr]
                         (.Epure (.Pexpr [] () (.PEsym (addr! "peer" 3377))))) <| .Expr [] <|
                     .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 225 17 225 21) () <|
                     .Load0
                       (.Pexpr [] () <| .PEval <| .Vctype <|
                       .Ctype
                         [.Aloc (rg! "linux/drivers/net/wireguard/peer.h" 79 33 79 34),
                          .Aloc (rg! «peer.c» 223 33 223 34)]
                         (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
                       (.Pexpr [] () (.PEsym (a! 52942)))
                       .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52943))) <|
                   [(.Pattern [] <|
                     .CaseCtor
                       .Cspecified
                       [.Pattern [] (.CaseBase (.some (a! 52944), .BTy_object .OTy_pointer))],
                     .Expr [] <|
                     .Ewseq
                       (.Pattern [] (.CaseBase (.some (a! 52945), .BTy_boolean)))
                       (.Expr [] <| .Ememop .PtrEq <|
                       [.Pexpr [] () (.PEsym (a! 52944)),
                        .Pexpr [.Astd "\xa76.5.9#5, sentence 2"] () <| .PEval <| .Vobject <|
                        .OVpointer <| .PV .Prov_none <| .PVnull <|
                        .Ctype
                          [.Aloc (rg! «peer.c» 225 17 225 21)]
                          (.Pointer (.mk .false .false .false) Ty.struct_wg_peer)]) <|
                     .Expr [.Astd "\xa76.5.9#3"] <| .Epure <| .Pexpr [] () <|
                     .PEif
                       (.Pexpr [] () (.PEsym (a! 52945)))
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
                       (rg! «peer.c» 225 15 225 22)
                       (.UB_CERB004_unspecified .UB_unspec_equality_ptr_vs_NULL))]]) <| .Expr [] <|
                .Epure <| .Pexpr [] () <|
                .PEcase
                  (.Pexpr [] () <|
                  .PEctor
                    .Ctuple
                    [.Pexpr [] () (.PEsym (a! 52937)), .Pexpr [] () (.PEsym (a! 52938))]) <|
                [(.Pattern [] <| .CaseCtor .Ctuple <|
                  [.Pattern [] <|
                   .CaseCtor
                     .Cspecified
                     [.Pattern [] (.CaseBase (.some (a! 52939), .BTy_object .OTy_integer))],
                   .Pattern [] <|
                   .CaseCtor
                     .Cspecified
                     [.Pattern [] (.CaseBase (.some (a! 52940), .BTy_object .OTy_integer))]],
                  .Pexpr [.Astd "\xa76.5.9#3"] () <|
                  .PEif
                    (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                    .PEop
                      .OpEq
                      (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                      .PEcall
                        (.Sym (rt! "conv_int" 15837442492999787586))
                        [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52939))]) <|
                    .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                    .PEcall
                      (.Sym (rt! "conv_int" 15837442492999787586))
                      [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52940))])
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
                    [.Aloc (rgc! «peer.c» 225 14 225 22 225 14)]
                    (.Basic (.Integer (.Signed .Int_))))]]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
             .PEcase
               (.Pexpr [] () <|
               .PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 52932)), .Pexpr [] () (.PEsym (a! 52933))]) <|
             [(.Pattern [] <| .CaseCtor .Ctuple <|
               [.Pattern [] <|
                .CaseCtor
                  .Cspecified
                  [.Pattern [] (.CaseBase (.some (a! 52934), .BTy_object .OTy_integer))],
                .Pattern [] <|
                .CaseCtor
                  .Cspecified
                  [.Pattern [] (.CaseBase (.some (a! 52935), .BTy_object .OTy_integer))]],
               .Pexpr [.Astd "\xa76.5.9#3"] () <|
               .PEif
                 (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                 .PEop
                   .OpEq
                   (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                   .PEcall
                     (.Sym (rt! "conv_int" 15837442492999787586))
                     [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52934))]) <|
                 .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                 .PEcall
                   (.Sym (rt! "conv_int" 15837442492999787586))
                   [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 52935))])
                 (.Pexpr [] () <|
                 .PEctor
                   .Cspecified
                   [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
               .Pexpr [] () <|
               .PEctor
                 .Cspecified
                 [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
              (.Pattern
                 []
                 (.CaseBase
                   (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer])),
               .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
               .Ctype
                 [.Aloc (rgc! «peer.c» 225 13 225 22 225 13)]
                 (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
           .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
           [.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype [.Aloc (rg! «peer.c» 225 8 225 12)] (.Basic (.Integer (.Signed .Long))),
            .Pexpr [] () (.PEsym (a! 52930))],
           .Expr
             [.Aloc (rg! «peer.c» 225 6 225 23), .Aexpr, .Avalue (.Ainteger (.Signed .Long))] <|
           .Epure (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
        .Expr [] <| .Epure <| .Pexpr [] () <|
        .PEcase
          (.Pexpr
            []
            ()
            (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 52925)), .Pexpr [] () (.PEsym (a! 52926))])) <|
        [(.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 52927), .BTy_object .OTy_integer))],
           .Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 52928), .BTy_object .OTy_integer))]],
          .Pexpr [.Astd "\xa76.5.9#3"] () <|
          .PEif
            (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
            .PEop
              .OpEq
              (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
              .PEcall
                (.Sym (rt! "conv_int" 15837442492999787586))
                [.Pexpr [] () (.PEval (.Vctype Ty.long)), .Pexpr [] () (.PEsym (a! 52927))]) <|
            .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
            .PEcall
              (.Sym (rt! "conv_int" 15837442492999787586))
              [.Pexpr [] () (.PEval (.Vctype Ty.long)), .Pexpr [] () (.PEsym (a! 52928))])
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
          .Ctype [.Aloc (rg! «peer.c» 225 6 225 23)] (.Basic (.Integer (.Signed .Int_))))]) <|
      .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 52922), .BTy_boolean)))
        (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52923))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 52924), .BTy_object .OTy_integer))],
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 52924)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
            (.Pexpr [] () (.PEval .Vtrue))
            (.Pexpr [] () (.PEval .Vfalse))),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <| .End <|
          [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
           .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
      .Eif
        (.Pexpr [] () (.PEsym (a! 52922)))
        (.Expr [.Aloc (rg! «peer.c» 226 3 226 10), .Astmt] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))
          (.Expr [] (.Erun () (c! "ret_52921" 52921) [.Pexpr [] () (.PEval .Vunit)])))
        (.Expr
          [.Aloc (rg! «peer.c» 225 2 226 10), .Astmt]
          (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «peer.c» 227 2 227 42), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc (rg! «peer.c» 227 2 227 41),
           .Aexpr,
           .Avalue (.Ainteger (.Signed .Int_)),
           .Astd "\xa76.5.2.2#10, sentence 1"] <|
        .Esseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <| .CaseCtor .Ctuple <|
           [.Pattern [] (.CaseBase (.some (a! 52948), .BTy_loaded .OTy_pointer)),
            .Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 52949), .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 52950), .BTy_list .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 52951), .BTy_boolean)),
             .Pattern [] (.CaseBase (.some (a! 52952), .BTy_boolean))]],
           .Pattern [] (.CaseBase (.some (a! 52955), .BTy_loaded .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 52962), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
          [.Expr [] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 52947), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc (rg! «peer.c» 227 2 227 10), .Aexpr] <| .Epure <| .Pexpr [] () <|
             .PEval <|
             .Vloaded (.LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "kref_put" 577)))))) <|
           .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
           [.Pexpr [] () (.PEsym (a! 52947)),
            .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 52947))))],
           .Expr
             [.Aloc (rgc! «peer.c» 227 11 227 26 227 11),
              .Aexpr,
              .Astd "\xa76.5.3.2#3, sentence 5"] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 52956), .BTy_object .OTy_pointer)))
             (.Expr
               [.Aloc (rgc! «peer.c» 227 12 227 26 227 16),
                .Aexpr,
                .Astd "\xa76.5.2.3#4, sentence 2"] <|
             .Esseq
               (.Pattern [] (.CaseBase (.some (a! 52957), .BTy_loaded .OTy_pointer)))
               (.Expr [.Aloc (rg! «peer.c» 227 12 227 16), .Aexpr] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 52961), .BTy_object .OTy_pointer)))
                 (.Expr
                   [.Aloc (rg! «peer.c» 227 12 227 16), .Aexpr]
                   (.Epure (.Pexpr [] () (.PEsym (addr! "peer" 3377))))) <| .Expr [] <| .Eaction <|
               .Paction .Pos <| .Action (rg! «peer.c» 227 12 227 16) () <|
               .Load0
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype
                   [.Aloc (rg! "linux/drivers/net/wireguard/peer.h" 79 33 79 34),
                    .Aloc (rg! «peer.c» 223 33 223 34)]
                   (.Pointer (.mk .false .false .false) Ty.struct_wg_peer))
                 (.Pexpr [] () (.PEsym (a! 52961)))
                 .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52957))) <|
             [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
               .Expr [] <| .Epure <| .Pexpr [] () <|
               .PEundef
                 (rgc! «peer.c» 227 12 227 26 227 16)
                 (.UB_CERB004_unspecified .UB_unspec_memberofptr)),
              (.Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 52958), .BTy_object .OTy_pointer))],
               .Expr [] <| .Epure <| .Pexpr [] () <|
               .PEmember_shift
                 (.Pexpr [] () (.PEsym (a! 52958)))
                 (c! "wg_peer" 1602)
                 (.Identifier (rg! «peer.c» 227 18 227 26) "refcount"))]) <|
           .Expr [] (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 52956))]))),
           .Expr [.Aloc (rg! «peer.c» 227 28 227 40), .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <|
           .Vloaded
             (.LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "kref_release" 3349)))))]) <|
        .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
          .PEop
            .OpEq
            (.Pexpr [] () <|
            .PEcall
              (.Sym (rt! "params_length" 18299737999929047716))
              [.Pexpr [] () (.PEsym (a! 52950))])
            (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#6, sentence 3"]
            ()
            (.PEundef (rg! «peer.c» 227 2 227 41) .UB038_number_of_args)) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 52951))) <| .Pexpr [] () <|
          .PEnot <| .Pexpr [] () <|
          .PEare_compatible
            (.Pexpr
              []
              ()
              (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))))
            (.Pexpr [] () (.PEsym (a! 52949))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#9"]
            ()
            (.PEundef (rg! «peer.c» 227 2 227 41) .UB041_function_not_compatible)) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some (sym.Symbol Src.digest 52953 (.SD_FunArg (rgc! «peer.c» 227 11 227 26 227 11) 0)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 52963), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 52950)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_kref))
              (.Pexpr [] () (.PEsym (a! 52963))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «peer.c» 227 2 227 41) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 52964), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 227 2 227 41) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_kref)])
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_kref))
              (.PrefFunArg (rg! «peer.c» 227 2 227 41) "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 227 2 227 41) () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_kref))
              (.Pexpr [] () (.PEsym (a! 52964)))
              (.Pexpr [] () (.PEsym (a! 52955)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52964)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some (sym.Symbol Src.digest 52954 (.SD_FunArg (rg! «peer.c» 227 28 227 40) 1)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 52965), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 52950)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
              .Pointer (.mk .false .false .false) <| .Ctype [.Aloc .unknown] <|
              .Function
                (.mk .false .false .false, .Ctype [.Aloc .unknown] .Void0)
                [(.mk .false .false .false,
                  (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_kref),
                   .false))]
                .false)
              (.Pexpr [] () (.PEsym (a! 52965))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «peer.c» 227 2 227 41) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 52966), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 227 2 227 41) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
               .Pointer (.mk .false .false .false) <| .Ctype [.Aloc .unknown] <|
               .Function
                 (.mk .false .false .false, .Ctype [.Aloc .unknown] .Void0)
                 [(.mk .false .false .false,
                   (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_kref),
                    .false))]
                 .false])
              (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
              .Pointer (.mk .false .false .false) <| .Ctype [.Aloc .unknown] <|
              .Function
                (.mk .false .false .false, .Ctype [.Aloc .unknown] .Void0)
                [(.mk .false .false .false,
                  (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_kref),
                   .false))]
                .false)
              (.PrefFunArg (rg! «peer.c» 227 2 227 41) "fa5a43434dcb33dc130b30cb8faeddf7" 1)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 227 2 227 41) () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
              .Pointer (.mk .false .false .false) <| .Ctype [.Aloc .unknown] <|
              .Function
                (.mk .false .false .false, .Ctype [.Aloc .unknown] .Void0)
                [(.mk .false .false .false,
                  (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_kref),
                   .false))]
                .false)
              (.Pexpr [] () (.PEsym (a! 52966)))
              (.Pexpr [] () (.PEsym (a! 52962)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52966)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 52967), .BTy_loaded .OTy_integer)))
          (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
          .Eccall
            ()
            (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc (rg! «peer.c» 227 2 227 10)] <|
            .Pointer (.mk .false .false .false) <| .Ctype [] <|
            .Function
              (.mk .false .false .false,
               .Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_))))
              [(.mk .false .false .false,
                (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_kref),
                 .false)),
               (.mk .false .false .false,
                (.Ctype [.Aloc .unknown] <| .Pointer (.mk .false .false .false) <|
                 .Ctype [.Aloc .unknown] <|
                 .Function
                   (.mk .false .false .false, .Ctype [.Aloc .unknown] .Void0)
                   [(.mk .false .false .false,
                     (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_kref),
                      .false))]
                   .false,
                 .false))]
              .false)
            (.Pexpr [] () (.PEsym (a! 52948))) <|
          [.Pexpr [] () <|
           .PEsym
             (sym.Symbol Src.digest 52953 (.SD_FunArg (rgc! «peer.c» 227 11 227 26 227 11) 0)),
           .Pexpr
             []
             ()
             (.PEsym (sym.Symbol Src.digest 52954 (.SD_FunArg (rg! «peer.c» 227 28 227 40) 1)))]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit])))
          (.Expr [] <| .Eunseq <|
          [.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 227 2 227 41) () <|
           .Kill
             (.Static0
               (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_kref))) <|
           .Pexpr [] () <|
           .PEsym
             (sym.Symbol Src.digest 52953 (.SD_FunArg (rgc! «peer.c» 227 11 227 26 227 11) 0)),
           .Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 227 2 227 41) () <|
           .Kill
             (.Static0 <| .Ctype [.Aloc .unknown] <| .Pointer (.mk .false .false .false) <|
             .Ctype [.Aloc .unknown] <|
             .Function
               (.mk .false .false .false, .Ctype [.Aloc .unknown] .Void0)
               [(.mk .false .false .false,
                 (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_kref),
                  .false))]
               .false) <|
           .Pexpr
             []
             ()
             (.PEsym (sym.Symbol Src.digest 52954 (.SD_FunArg (rg! «peer.c» 227 28 227 40) 1)))])
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52967))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc (rgr! «peer.c» 223 1 228 2 223 6 223 17)] <|
  .Esave
    (c! "ret_52921" 52921, .BTy_unit)
    [(a! 52968,
      ((.BTy_unit,
        .some <|
        (.Ctype
           [.Aloc (rg! "linux/drivers/net/wireguard/peer.h" 79 1 79 5),
            .Aloc (rg! «peer.c» 223 1 223 5)]
           .Void0,
         .By_value)),
       .Pexpr [] () (.PEval .Vunit)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52968)))))

/--
```c
int __init wg_peer_init(void)
```

`linux/drivers/net/wireguard/peer.c:230` -/
def wg_peer_init : Procedure :=
  .Proc (rgr! «peer.c» 230 1 234 2 230 5 230 17) (.some 3379) (.BTy_loaded .OTy_integer) [] <|
  .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc (rg! «peer.c» 231 1 234 2), .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.some (a! 52888), .BTy_object .OTy_pointer)))
      (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 232 76 232 139) () <|
      .Create
        (.Pexpr
          []
          ()
          (.PEctor .Civalignof [.Pexpr [] () (.PEval (.Vctype Ty.struct_kmem_cache_args))]))
        (.Pexpr [] () (.PEval (.Vctype Ty.struct_kmem_cache_args)))
        (.PrefCompoundLiteral .unknown "fa5a43434dcb33dc130b30cb8faeddf7")) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «peer.c» 232 2 232 146), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc (rgc! «peer.c» 232 2 232 145 232 13), .Aexpr, .Astd "\xa76.5.16#3, sentence 4"] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 52870), .BTy_object .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 52907), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
          [.Expr
             [.Aloc (rg! «peer.c» 232 2 232 12), .Aexpr]
             (.Epure (.Pexpr [] () (.PEsym (addr! "peer_cache" 3310)))),
           .Expr
             [.Aloc (rg! «peer.c» 232 15 232 145), .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
           .Esseq
             (.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] (.CaseBase (.some (a! 52872), .BTy_loaded .OTy_pointer)),
               .Pattern [] <| .CaseCtor .Ctuple <|
               [.Pattern [] (.CaseBase (.some (a! 52873), .BTy_ctype)),
                .Pattern [] (.CaseBase (.some (a! 52874), .BTy_list .BTy_ctype)),
                .Pattern [] (.CaseBase (.some (a! 52875), .BTy_boolean)),
                .Pattern [] (.CaseBase (.some (a! 52876), .BTy_boolean))]],
              .Pattern [] (.CaseBase (.some (a! 52881), .BTy_loaded .OTy_pointer)),
              .Pattern [] (.CaseBase (.some (a! 52885), .BTy_loaded .OTy_integer)),
              .Pattern [] (.CaseBase (.some (a! 52886), .BTy_loaded .OTy_pointer)),
              .Pattern [] (.CaseBase (.some (a! 52897), .BTy_loaded .OTy_integer))])
             (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
             [.Expr [] <|
              .Esseq
                (.Pattern [] (.CaseBase (.some (a! 52871), .BTy_loaded .OTy_pointer)))
                (.Expr [.Aloc (rg! «peer.c» 232 15 232 39), .Aexpr] <| .Epure <| .Pexpr [] () <|
                .PEval <| .Vloaded <| .LVspecified <|
                .OVpointer (.PV .Prov_none (.PVfunction (c! "__kmem_cache_create_args" 823)))) <|
              .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
              [.Pexpr [] () (.PEsym (a! 52871)),
               .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 52871))))],
              .Expr [.Aloc (rg! «peer.c» 232 40 232 49), .Aexpr] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 52883), .BTy_object .OTy_pointer)))
                (.Expr
                  [.Aloc (rg! «peer.c» 232 40 232 49), .Aexpr]
                  (.Epure (.Pexpr [] () (.PEsym (a! 52882))))) <| .Expr [.Astd "\xa76.3.2.1#3"] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 52884), .BTy_object .OTy_pointer)))
                (.Expr [] <| .Ememop .PtrArrayShift <|
                [.Pexpr [] () (.PEsym (a! 52883)),
                 .Pexpr [] () (.PEval (.Vctype Ty.char)),
                 .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
              .Expr
                []
                (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 52884))]))),
              .Expr
                [.Aloc (rgc! «peer.c» 232 51 232 73 232 51), .Aexpr, .Avalue (.Ainteger .Size_t)] <|
              .Epure <| .Pexpr [] () <| .PEctor .Cspecified <|
              [.Pexpr [] () (.PEctor .Civsizeof [.Pexpr [] () (.PEval (.Vctype Ty.struct_wg_peer))])],
              .Expr
                [.Aloc (rgc! «peer.c» 232 75 232 139 232 75),
                 .Aexpr,
                 .Astd "\xa76.5.3.2#3, sentence 5"] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 52887), .BTy_object .OTy_pointer)))
                (.Expr [.Aloc (rg! «peer.c» 232 76 232 139), .Aexpr] <|
                .Ewseq
                  (.Pattern [] <|
                  .CaseBase (.some (a! 52889), .BTy_loaded (.OTy_struct (c! "kmem_cache_args" 818))))
                  (.Expr [.Aloc .unknown, .Aexpr] <|
                  .Ewseq
                    (.Pattern [] <| .CaseCtor .Ctuple <|
                    [.Pattern [] (.CaseBase (.some (a! 52896), .BTy_loaded .OTy_integer)),
                     .Pattern [] (.CaseBase (.some (a! 52895), .BTy_loaded .OTy_pointer)),
                     .Pattern [] (.CaseBase (.some (a! 52894), .BTy_loaded .OTy_integer)),
                     .Pattern [] (.CaseBase (.some (a! 52893), .BTy_loaded .OTy_integer)),
                     .Pattern [] (.CaseBase (.some (a! 52892), .BTy_loaded .OTy_integer)),
                     .Pattern [] (.CaseBase (.some (a! 52891), .BTy_loaded .OTy_integer)),
                     .Pattern [] (.CaseBase (.some (a! 52890), .BTy_loaded .OTy_integer))])
                    (.Expr [.Astd "\xa76.7.9#23"] <| .Eunseq <|
                    [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                     .Epure <|
                     .Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))),
                     .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Cspecified <|
                     [.Pexpr [] () <| .PEval <| .Vobject <| .OVpointer <| .PV .Prov_none <|
                      .PVnull <| .Ctype [.Aloc .unknown] <|
                      .Function
                        (.mk .false .false .false, .Ctype [.Aloc .unknown] .Void0)
                        [(.mk .false .false .false,
                          (.Ctype
                             [.Aloc .unknown]
                             (.Pointer (.mk .false .false .false) (.Ctype [.Aloc .unknown] .Void0)),
                           .false))]
                        .false],
                     .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                     .Epure <|
                     .Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))),
                     .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                     .Epure <|
                     .Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))),
                     .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                     .Epure <|
                     .Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))),
                     .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                     .Epure <|
                     .Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))),
                     .Expr
                       [.Aloc (rgc! «peer.c» 232 112 232 136 232 112),
                        .Aexpr,
                        .Avalue (.Ainteger .Size_t)] <| .Epure <| .Pexpr [] () <|
                     .PEctor .Cspecified <|
                     [.Pexpr
                        []
                        ()
                        (.PEctor .Civalignof [.Pexpr [] () (.PEval (.Vctype Ty.struct_wg_peer))])]]) <|
                  .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Cspecified <|
                  [.Pexpr [] () <| .PEstruct (c! "kmem_cache_args" 818) <|
                   [(.Identifier .unknown "align",
                     .Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                     [.Pexpr [] () <|
                      .PEval
                        (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_))))),
                      .Pexpr [] () (.PEsym (a! 52890))]),
                    (.Identifier .unknown "useroffset",
                     .Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                     [.Pexpr [] () <|
                      .PEval
                        (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_))))),
                      .Pexpr [] () (.PEsym (a! 52891))]),
                    (.Identifier .unknown "usersize",
                     .Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                     [.Pexpr [] () <|
                      .PEval
                        (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_))))),
                      .Pexpr [] () (.PEsym (a! 52892))]),
                    (.Identifier .unknown "freeptr_offset",
                     .Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                     [.Pexpr [] () <|
                      .PEval
                        (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_))))),
                      .Pexpr [] () (.PEsym (a! 52893))]),
                    (.Identifier .unknown "use_freeptr_offset",
                     .Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                     [.Pexpr [] () <| .PEval <| .Vctype <|
                      .Ctype [.Aloc .unknown, .Atypedef (c! "bool" 30)] (.Basic (.Integer .Bool0)),
                      .Pexpr [] () (.PEsym (a! 52894))]),
                    (.Identifier .unknown "ctor", .Pexpr [] () (.PEsym (a! 52895))),
                    (.Identifier .unknown "sheaf_capacity",
                     .Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                     [.Pexpr [] () <|
                      .PEval
                        (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_))))),
                      .Pexpr [] () (.PEsym (a! 52896))])]]) <| .Expr [] <|
                .Ewseq
                  (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                  (.Expr [] <| .Eaction <| .Paction .Pos <|
                  .Action (rg! «peer.c» 232 76 232 139) () <|
                  .Store0
                    .false
                    (.Pexpr [] () (.PEval (.Vctype Ty.struct_kmem_cache_args)))
                    (.Pexpr [] () (.PEsym (a! 52888)))
                    (.Pexpr [] () (.PEsym (a! 52889)))
                    .NA)
                  (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52888)))))) <|
              .Expr
                []
                (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 52887))]))),
              .Expr
                [.Aloc (rg! «peer.c» 232 141 232 144),
                 .Aexpr,
                 .Avalue (.Ainteger (.Signed .Int_))] <|
              .Epure
                (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
           .Expr [] <|
           .Eif
             (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
             .PEop
               .OpEq
               (.Pexpr [] () <|
               .PEcall
                 (.Sym (rt! "params_length" 18299737999929047716))
                 [.Pexpr [] () (.PEsym (a! 52874))])
               (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 4))))))
             (.Expr [] <| .Epure <|
             .Pexpr
               [.Astd "\xa76.5.2.2#6, sentence 3"]
               ()
               (.PEundef (rg! «peer.c» 232 15 232 145) .UB038_number_of_args)) <| .Expr [] <|
           .Eif
             (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 52875))) <| .Pexpr [] () <|
             .PEnot <| .Pexpr [] () <|
             .PEare_compatible
               (.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc .unknown, .Aloc .unknown]
                 (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache))
               (.Pexpr [] () (.PEsym (a! 52873))))
             (.Expr [] <| .Epure <|
             .Pexpr
               [.Astd "\xa76.5.2.2#9"]
               ()
               (.PEundef (rg! «peer.c» 232 15 232 145) .UB041_function_not_compatible)) <|
           .Expr [] <|
           .Esseq
             (.Pattern [] <| .CaseBase <|
             (.some (sym.Symbol Src.digest 52877 (.SD_FunArg (rg! «peer.c» 232 40 232 49) 0)),
              .BTy_object .OTy_pointer))
             (.Expr [] <|
             .Elet
               (.Pattern [] (.CaseBase (.some (a! 52898), .BTy_ctype)))
               (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
               [.Pexpr [] () (.PEsym (a! 52874)),
                .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
             .Eif
               (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
               .PEare_compatible
                 (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                 .Pointer
                   (.mk .true .false .false)
                   (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))))
                 (.Pexpr [] () (.PEsym (a! 52898))))
               (.Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.2.2#9"] () <|
               .PEundef (rg! «peer.c» 232 15 232 145) .UB041_function_not_compatible) <|
             .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 52899), .BTy_object .OTy_pointer)))
               (.Expr [] <| .Eaction <| .Paction .Pos <|
               .Action (rg! «peer.c» 232 15 232 145) () <|
               .Create
                 (.Pexpr [] () <| .PEctor .Civalignof <|
                 [.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                  .Pointer
                    (.mk .true .false .false)
                    (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0)))])
                 (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                 .Pointer
                   (.mk .true .false .false)
                   (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))))
                 (.PrefFunArg (rg! «peer.c» 232 15 232 145) "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <|
             .Expr [] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.none, .BTy_unit)))
               (.Expr [] <| .Eaction <| .Paction .Pos <|
               .Action (rg! «peer.c» 232 15 232 145) () <|
               .Store0
                 .false
                 (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                 .Pointer
                   (.mk .true .false .false)
                   (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))))
                 (.Pexpr [] () (.PEsym (a! 52899)))
                 (.Pexpr [] () (.PEsym (a! 52881)))
                 .NA)
               (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52899)))))) <| .Expr [] <|
           .Esseq
             (.Pattern [] <| .CaseBase <|
             (.some
                (sym.Symbol Src.digest 52878 (.SD_FunArg (rgc! «peer.c» 232 51 232 73 232 51) 1)),
              .BTy_object .OTy_pointer))
             (.Expr [] <|
             .Elet
               (.Pattern [] (.CaseBase (.some (a! 52900), .BTy_ctype)))
               (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
               [.Pexpr [] () (.PEsym (a! 52874)),
                .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <| .Expr [] <|
             .Eif
               (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
               .PEare_compatible
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_))))
                 (.Pexpr [] () (.PEsym (a! 52900))))
               (.Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.2.2#9"] () <|
               .PEundef (rg! «peer.c» 232 15 232 145) .UB041_function_not_compatible) <|
             .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 52901), .BTy_object .OTy_pointer)))
               (.Expr [] <| .Eaction <| .Paction .Pos <|
               .Action (rg! «peer.c» 232 15 232 145) () <|
               .Create
                 (.Pexpr [] () <| .PEctor .Civalignof <|
                 [.Pexpr [] () <| .PEval <| .Vctype <|
                  .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))])
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_))))
                 (.PrefFunArg (rg! «peer.c» 232 15 232 145) "fa5a43434dcb33dc130b30cb8faeddf7" 1)) <|
             .Expr [] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.none, .BTy_unit)))
               (.Expr [] <| .Eaction <| .Paction .Pos <|
               .Action (rg! «peer.c» 232 15 232 145) () <|
               .Store0
                 .false
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_))))
                 (.Pexpr [] () (.PEsym (a! 52901)))
                 (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                 [.Pexpr [] () <| .PEval <| .Vctype <|
                  .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_))),
                  .Pexpr [] () (.PEsym (a! 52885))])
                 .NA)
               (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52901)))))) <| .Expr [] <|
           .Esseq
             (.Pattern [] <| .CaseBase <|
             (.some
                (sym.Symbol Src.digest 52879 (.SD_FunArg (rgc! «peer.c» 232 75 232 139 232 75) 2)),
              .BTy_object .OTy_pointer))
             (.Expr [] <|
             .Elet
               (.Pattern [] (.CaseBase (.some (a! 52902), .BTy_ctype)))
               (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
               [.Pexpr [] () (.PEsym (a! 52874)),
                .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))]) <| .Expr [] <|
             .Eif
               (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
               .PEare_compatible
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype
                   [.Aloc .unknown, .Aloc .unknown]
                   (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache_args))
                 (.Pexpr [] () (.PEsym (a! 52902))))
               (.Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.2.2#9"] () <|
               .PEundef (rg! «peer.c» 232 15 232 145) .UB041_function_not_compatible) <|
             .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 52903), .BTy_object .OTy_pointer)))
               (.Expr [] <| .Eaction <| .Paction .Pos <|
               .Action (rg! «peer.c» 232 15 232 145) () <|
               .Create
                 (.Pexpr [] () <| .PEctor .Civalignof <|
                 [.Pexpr [] () <| .PEval <| .Vctype <|
                  .Ctype
                    [.Aloc .unknown, .Aloc .unknown]
                    (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache_args)])
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype
                   [.Aloc .unknown, .Aloc .unknown]
                   (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache_args))
                 (.PrefFunArg (rg! «peer.c» 232 15 232 145) "fa5a43434dcb33dc130b30cb8faeddf7" 2)) <|
             .Expr [] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.none, .BTy_unit)))
               (.Expr [] <| .Eaction <| .Paction .Pos <|
               .Action (rg! «peer.c» 232 15 232 145) () <|
               .Store0
                 .false
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype
                   [.Aloc .unknown, .Aloc .unknown]
                   (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache_args))
                 (.Pexpr [] () (.PEsym (a! 52903)))
                 (.Pexpr [] () (.PEsym (a! 52886)))
                 .NA)
               (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52903)))))) <| .Expr [] <|
           .Esseq
             (.Pattern [] <| .CaseBase <|
             (.some (sym.Symbol Src.digest 52880 (.SD_FunArg (rg! «peer.c» 232 141 232 144) 3)),
              .BTy_object .OTy_pointer))
             (.Expr [] <|
             .Elet
               (.Pattern [] (.CaseBase (.some (a! 52904), .BTy_ctype)))
               (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
               [.Pexpr [] () (.PEsym (a! 52874)),
                .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 3))))]) <| .Expr [] <|
             .Eif
               (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
               .PEare_compatible
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype
                   [.Aloc .unknown,
                    .Atypedef (c! "slab_flags_t" 35),
                    .Aloc .unknown,
                    .Atypedef (c! "slab_flags_t" 35)]
                   (.Basic (.Integer (.Unsigned .Int_))))
                 (.Pexpr [] () (.PEsym (a! 52904))))
               (.Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.2.2#9"] () <|
               .PEundef (rg! «peer.c» 232 15 232 145) .UB041_function_not_compatible) <|
             .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 52905), .BTy_object .OTy_pointer)))
               (.Expr [] <| .Eaction <| .Paction .Pos <|
               .Action (rg! «peer.c» 232 15 232 145) () <|
               .Create
                 (.Pexpr [] () <| .PEctor .Civalignof <|
                 [.Pexpr [] () <| .PEval <| .Vctype <|
                  .Ctype
                    [.Aloc .unknown,
                     .Atypedef (c! "slab_flags_t" 35),
                     .Aloc .unknown,
                     .Atypedef (c! "slab_flags_t" 35)]
                    (.Basic (.Integer (.Unsigned .Int_)))])
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype
                   [.Aloc .unknown,
                    .Atypedef (c! "slab_flags_t" 35),
                    .Aloc .unknown,
                    .Atypedef (c! "slab_flags_t" 35)]
                   (.Basic (.Integer (.Unsigned .Int_))))
                 (.PrefFunArg (rg! «peer.c» 232 15 232 145) "fa5a43434dcb33dc130b30cb8faeddf7" 3)) <|
             .Expr [] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.none, .BTy_unit)))
               (.Expr [] <| .Eaction <| .Paction .Pos <|
               .Action (rg! «peer.c» 232 15 232 145) () <|
               .Store0
                 .false
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype
                   [.Aloc .unknown,
                    .Atypedef (c! "slab_flags_t" 35),
                    .Aloc .unknown,
                    .Atypedef (c! "slab_flags_t" 35)]
                   (.Basic (.Integer (.Unsigned .Int_))))
                 (.Pexpr [] () (.PEsym (a! 52905)))
                 (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                 [.Pexpr [] () <| .PEval <| .Vctype <|
                  .Ctype
                    [.Aloc .unknown,
                     .Atypedef (c! "slab_flags_t" 35),
                     .Aloc .unknown,
                     .Atypedef (c! "slab_flags_t" 35)]
                    (.Basic (.Integer (.Unsigned .Int_))),
                  .Pexpr [] () (.PEsym (a! 52897))])
                 .NA)
               (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52905)))))) <| .Expr [] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 52906), .BTy_loaded .OTy_pointer)))
             (.Expr [.Astd "\xa76.5.16.1#1, bullet 1"] <|
             .Eccall
               ()
               (.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype [.Aloc (rg! «peer.c» 232 15 232 39)] <| .Pointer (.mk .false .false .false) <|
               .Ctype [] <|
               .Function
                 (.mk .false .false .false,
                  .Ctype
                    [.Aloc .unknown, .Aloc .unknown]
                    (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache))
                 [(.mk .false .false .false,
                   (.Ctype [.Aloc .unknown, .Aloc .unknown] <|
                    .Pointer
                      (.mk .true .false .false)
                      (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))),
                    .false)),
                  (.mk .false .false .false,
                   (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_))),
                    .false)),
                  (.mk .false .false .false,
                   (.Ctype
                      [.Aloc .unknown, .Aloc .unknown]
                      (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache_args),
                    .false)),
                  (.mk .false .false .false,
                   (.Ctype
                      [.Aloc .unknown,
                       .Atypedef (c! "slab_flags_t" 35),
                       .Aloc .unknown,
                       .Atypedef (c! "slab_flags_t" 35)]
                      (.Basic (.Integer (.Unsigned .Int_))),
                    .false))]
                 .false)
               (.Pexpr [] () (.PEsym (a! 52872))) <|
             [.Pexpr
                []
                ()
                (.PEsym (sym.Symbol Src.digest 52877 (.SD_FunArg (rg! «peer.c» 232 40 232 49) 0))),
              .Pexpr [] () <|
              .PEsym
                (sym.Symbol Src.digest 52878 (.SD_FunArg (rgc! «peer.c» 232 51 232 73 232 51) 1)),
              .Pexpr [] () <|
              .PEsym
                (sym.Symbol Src.digest 52879 (.SD_FunArg (rgc! «peer.c» 232 75 232 139 232 75) 2)),
              .Pexpr
                []
                ()
                (.PEsym
                  (sym.Symbol Src.digest 52880 (.SD_FunArg (rg! «peer.c» 232 141 232 144) 3)))]) <|
           .Expr [] <|
           .Esseq
             (.Pattern
               []
               (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit, .BTy_unit, .BTy_unit])))
             (.Expr [] <| .Eunseq <|
             [.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 232 15 232 145) () <|
              .Kill
                (.Static0 <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                .Pointer
                  (.mk .true .false .false)
                  (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0)))) <|
              .Pexpr
                []
                ()
                (.PEsym (sym.Symbol Src.digest 52877 (.SD_FunArg (rg! «peer.c» 232 40 232 49) 0))),
              .Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 232 15 232 145) () <|
              .Kill
                (.Static0
                  (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_))))) <|
              .Pexpr [] () <|
              .PEsym
                (sym.Symbol Src.digest 52878 (.SD_FunArg (rgc! «peer.c» 232 51 232 73 232 51) 1)),
              .Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 232 15 232 145) () <|
              .Kill
                (.Static0 <|
                .Ctype
                  [.Aloc .unknown, .Aloc .unknown]
                  (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache_args)) <|
              .Pexpr [] () <|
              .PEsym
                (sym.Symbol Src.digest 52879 (.SD_FunArg (rgc! «peer.c» 232 75 232 139 232 75) 2)),
              .Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 232 15 232 145) () <|
              .Kill
                (.Static0 <|
                .Ctype
                  [.Aloc .unknown,
                   .Atypedef (c! "slab_flags_t" 35),
                   .Aloc .unknown,
                   .Atypedef (c! "slab_flags_t" 35)]
                  (.Basic (.Integer (.Unsigned .Int_)))) <|
              .Pexpr
                []
                ()
                (.PEsym
                  (sym.Symbol Src.digest 52880 (.SD_FunArg (rg! «peer.c» 232 141 232 144) 3)))])
             (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52906)))))]) <| .Expr [] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
          .Action (rgc! «peer.c» 232 2 232 145 232 13) () <|
          .Store0
            .false
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype
              [.Aloc (rg! «peer.c» 18 26 18 27)]
              (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache))
            (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 52870)))
            (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52907)))
            .NA)
          (.Expr [] (.Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 52907))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «peer.c» 233 2 233 30), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 52918), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc (rgc! «peer.c» 233 9 233 29 233 20),
           .Aexpr,
           .Avalue (.Ainteger (.Signed .Int_)),
           .Astd "\xa76.5.15#4, sentence 1"] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 52912), .BTy_loaded .OTy_integer)))
          (.Expr
            [.Aloc (rg! «peer.c» 233 9 233 19), .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 52909), .BTy_loaded .OTy_pointer)))
            (.Expr [.Aloc (rg! «peer.c» 233 9 233 19), .Aexpr] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.some (a! 52908), .BTy_object .OTy_pointer)))
              (.Expr
                [.Aloc (rg! «peer.c» 233 9 233 19), .Aexpr]
                (.Epure (.Pexpr [] () (.PEsym (addr! "peer_cache" 3310))))) <| .Expr [] <|
            .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 233 9 233 19) () <|
            .Load0
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc (rg! «peer.c» 18 26 18 27)]
                (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache))
              (.Pexpr [] () (.PEsym (a! 52908)))
              .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 52909))) <|
          [(.Pattern [] <|
            .CaseCtor
              .Cspecified
              [.Pattern [] (.CaseBase (.some (a! 52910), .BTy_object .OTy_pointer))],
            .Expr [] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.some (a! 52911), .BTy_boolean)))
              (.Expr [] <| .Ememop .PtrEq <|
              [.Pexpr [] () (.PEsym (a! 52910)),
               .Pexpr [.Astd "\xa76.5.9#5, sentence 2"] () <| .PEval <| .Vobject <| .OVpointer <|
               .PV .Prov_none <| .PVnull <|
               .Ctype
                 [.Aloc (rg! «peer.c» 233 9 233 19)]
                 (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache)]) <|
            .Expr [.Astd "\xa76.5.9#3"] <| .Epure <| .Pexpr [] () <|
            .PEif
              (.Pexpr [] () (.PEsym (a! 52911)))
              (.Pexpr [] () <|
              .PEctor .Cspecified [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
            .Pexpr
              []
              ()
              (.PEctor
                .Cspecified
                [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))])),
           (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)),
            .Expr [] <| .Epure <| .Pexpr [] () <|
            .PEundef
              (rg! «peer.c» 233 9 233 19)
              (.UB_CERB004_unspecified .UB_unspec_equality_ptr_vs_NULL))]) <| .Expr [] <|
        .Ecase (.Pexpr [] () (.PEsym (a! 52912))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 52913), .BTy_object .OTy_integer))],
          .Expr [.Astd "\xa76.5.15#4, sentence 2"] <|
          .Eif
            (.Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 52913)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
            (.Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.some (a! 52914), .BTy_loaded .OTy_integer)))
              (.Expr
                [.Aloc (rg! «peer.c» 233 22 233 23), .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
              .Epure
                (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))) <|
            .Expr [] <| .Epure <| .Pexpr [] () <|
            .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
            [.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype
               [.Aloc (rgc! «peer.c» 233 9 233 29 233 20)]
               (.Basic (.Integer (.Signed .Int_))),
             .Pexpr [] () (.PEsym (a! 52914))]) <| .Expr [] <|
          .Esseq
            (.Pattern [] (.CaseBase (.some (a! 52917), .BTy_loaded .OTy_integer)))
            (.Expr
              [.Aloc (rgc! «peer.c» 233 26 233 29 233 26),
               .Aexpr,
               .Avalue (.Ainteger (.Signed .Int_)),
               .Astd "\xa76.5.3.3#3"] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.some (a! 52916), .BTy_loaded .OTy_integer)))
              (.Expr
                [.Aloc (rg! «peer.c» 233 27 233 29), .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
              .Epure
                (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 12))))))) <|
            .Expr [] <| .Epure <| .Pexpr [] () <| .PEcase (.Pexpr [] () (.PEsym (a! 52916))) <|
            [(.Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 52915), .BTy_object .OTy_integer))],
              .Pexpr [] () <| .PEctor .Cspecified <|
              [.Pexpr [] () <|
               .PEcatch_exceptional_condition
                 (.Signed .Int_)
                 .IOpSub
                 (.Pexpr
                   [.Avalue (.Ainteger (.Signed .Int_))]
                   ()
                   (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))) <| .Pexpr [] () <|
               .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
               [.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype [.Aloc (rg! «peer.c» 233 27 233 29)] (.Basic (.Integer (.Signed .Int_))),
                .Pexpr [] () (.PEsym (a! 52915))]]),
             (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
              .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
              .Ctype
                [.Aloc (rgc! «peer.c» 233 26 233 29 233 26)]
                (.Basic (.Integer (.Signed .Int_))))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
          [.Pexpr [] () <| .PEval <| .Vctype <|
           .Ctype [.Aloc (rgc! «peer.c» 233 9 233 29 233 20)] (.Basic (.Integer (.Signed .Int_))),
           .Pexpr [] () (.PEsym (a! 52917))]),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEundef
            (rgc! «peer.c» 233 9 233 29 233 20)
            (.UB_CERB004_unspecified .UB_unspec_conditional))]) <| .Expr [] <|
      .Erun () (c! "ret_52869" 52869) <|
      [.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
       [.Pexpr [] () <| .PEval <| .Vctype <|
        .Ctype
          [.Aloc (rg! "linux/drivers/net/wireguard/peer.h" 83 1 83 4),
           .Aloc (rg! «peer.c» 230 1 230 4),
           .Aloc .unknown]
          (.Basic (.Integer (.Signed .Int_))),
        .Pexpr [] () (.PEsym (a! 52918))]]) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [] <| .Eaction <| .Paction .Pos <|
      .Action
        (rgr! «peer.c» 232 76 232 139 232 76 232 139)
        ()
        (.Kill (.Static0 Ty.struct_kmem_cache_args) (.Pexpr [] () (.PEsym (a! 52888)))))
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc (rgr! «peer.c» 230 1 234 2 230 5 230 17)] <|
  .Esave
    (c! "ret_52869" 52869, .BTy_loaded .OTy_integer)
    [(a! 52919,
      ((.BTy_loaded .OTy_integer,
        .some <|
        (.Ctype
           [.Aloc (rg! "linux/drivers/net/wireguard/peer.h" 83 1 83 4),
            .Aloc (rg! «peer.c» 230 1 230 4),
            .Aloc .unknown]
           (.Basic (.Integer (.Signed .Int_))),
         .By_value)),
       .Pexpr
         [.Astd "\xa76.9.1#12"]
         ()
         (.PEundef (rgr! «peer.c» 230 1 234 2 230 5 230 17) .UB088_reached_end_of_function)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52919)))))

/--
```c
void wg_peer_uninit(void)
```

`linux/drivers/net/wireguard/peer.c:236` -/
def wg_peer_uninit : Procedure :=
  .Proc (rgr! «peer.c» 236 1 239 2 236 6 236 20) (.some 3380) .BTy_unit [] <| .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc (rg! «peer.c» 237 1 239 2), .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «peer.c» 238 2 238 33), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc (rg! «peer.c» 238 2 238 32), .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
        .Esseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <| .CaseCtor .Ctuple <|
           [.Pattern [] (.CaseBase (.some (a! 52857), .BTy_loaded .OTy_pointer)),
            .Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 52858), .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 52859), .BTy_list .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 52860), .BTy_boolean)),
             .Pattern [] (.CaseBase (.some (a! 52861), .BTy_boolean))]],
           .Pattern [] (.CaseBase (.some (a! 52863), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
          [.Expr [] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 52856), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc (rg! «peer.c» 238 2 238 20), .Aexpr] <| .Epure <| .Pexpr [] () <|
             .PEval <| .Vloaded <|
             .LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "kmem_cache_destroy" 846))))) <|
           .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
           [.Pexpr [] () (.PEsym (a! 52856)),
            .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 52856))))],
           .Expr [.Aloc (rg! «peer.c» 238 21 238 31), .Aexpr] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 52864), .BTy_object .OTy_pointer)))
             (.Expr
               [.Aloc (rg! «peer.c» 238 21 238 31), .Aexpr]
               (.Epure (.Pexpr [] () (.PEsym (addr! "peer_cache" 3310))))) <| .Expr [] <|
           .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 238 21 238 31) () <|
           .Load0
             (.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype
               [.Aloc (rg! «peer.c» 18 26 18 27)]
               (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache))
             (.Pexpr [] () (.PEsym (a! 52864)))
             .NA]) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
          .PEop
            .OpEq
            (.Pexpr [] () <|
            .PEcall
              (.Sym (rt! "params_length" 18299737999929047716))
              [.Pexpr [] () (.PEsym (a! 52859))])
            (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#6, sentence 3"]
            ()
            (.PEundef (rg! «peer.c» 238 2 238 32) .UB038_number_of_args)) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 52860))) <| .Pexpr [] () <|
          .PEnot <| .Pexpr [] () <|
          .PEare_compatible
            (.Pexpr [] () (.PEval (.Vctype (.Ctype [.Aloc .unknown, .Aloc .unknown] .Void0))))
            (.Pexpr [] () (.PEsym (a! 52858))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#9"]
            ()
            (.PEundef (rg! «peer.c» 238 2 238 32) .UB041_function_not_compatible)) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some (sym.Symbol Src.digest 52862 (.SD_FunArg (rg! «peer.c» 238 21 238 31) 0)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 52865), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 52859)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown, .Aloc .unknown]
                (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache))
              (.Pexpr [] () (.PEsym (a! 52865))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «peer.c» 238 2 238 32) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 52866), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 238 2 238 32) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc .unknown, .Aloc .unknown]
                 (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache)])
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown, .Aloc .unknown]
                (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache))
              (.PrefFunArg (rg! «peer.c» 238 2 238 32) "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 238 2 238 32) () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown, .Aloc .unknown]
                (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache))
              (.Pexpr [] () (.PEsym (a! 52866)))
              (.Pexpr [] () (.PEsym (a! 52863)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52866)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 52867), .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
          .Eccall
            ()
            (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc (rg! «peer.c» 238 2 238 20)] <|
            .Pointer (.mk .false .false .false) <| .Ctype [] <|
            .Function
              (.mk .false .false .false, .Ctype [.Aloc .unknown, .Aloc .unknown] .Void0)
              [(.mk .false .false .false,
                (.Ctype
                   [.Aloc .unknown, .Aloc .unknown]
                   (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache),
                 .false))]
              .false)
            (.Pexpr [] () (.PEsym (a! 52857))) <|
          [.Pexpr
             []
             ()
             (.PEsym (sym.Symbol Src.digest 52862 (.SD_FunArg (rg! «peer.c» 238 21 238 31) 0)))]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «peer.c» 238 2 238 32) () <|
          .Kill
            (.Static0 <|
            .Ctype
              [.Aloc .unknown, .Aloc .unknown]
              (.Pointer (.mk .false .false .false) Ty.struct_kmem_cache)) <|
          .Pexpr
            []
            ()
            (.PEsym (sym.Symbol Src.digest 52862 (.SD_FunArg (rg! «peer.c» 238 21 238 31) 0))))
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52867))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc (rgr! «peer.c» 236 1 239 2 236 6 236 20)] <|
  .Esave
    (c! "ret_52855" 52855, .BTy_unit)
    [(a! 52868,
      ((.BTy_unit,
        .some <|
        (.Ctype
           [.Aloc (rg! "linux/drivers/net/wireguard/peer.h" 84 1 84 5),
            .Aloc (rg! «peer.c» 236 1 236 5),
            .Aloc .unknown]
           .Void0,
         .By_value)),
       .Pexpr [] () (.PEval .Vunit)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 52868)))))

end WireGuard.Peer
