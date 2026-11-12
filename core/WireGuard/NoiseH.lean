import Program.Types

/-! The C functions of `linux/drivers/net/wireguard/noise.h` that the program uses, in source order: one definition per function, named as in C, holding its Core procedure. -/

set_option maxHeartbeats 0
set_option maxRecDepth 100000

open Src

namespace WireGuard.NoiseH

/--
```c
static inline void wg_noise_reset_last_sent_handshake(atomic64_t *handshake_ns)
```

`linux/drivers/net/wireguard/noise.h:101` -/
def wg_noise_reset_last_sent_handshake : Procedure :=
  .Proc
    (rgr! «noise.h» 101 1 105 2 101 20 101 54)
    (.some 1748)
    .BTy_unit
    [(addr! "handshake_ns" 1746, .BTy_object .OTy_pointer)] <| .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc (rg! «noise.h» 102 1 105 2), .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc (rg! «noise.h» 103 2 104 52), .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc (rg! «noise.h» 103 2 104 51), .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
        .Esseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <| .CaseCtor .Ctuple <|
           [.Pattern [] (.CaseBase (.some (a! 59030), .BTy_loaded .OTy_pointer)),
            .Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 59031), .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 59032), .BTy_list .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 59033), .BTy_boolean)),
             .Pattern [] (.CaseBase (.some (a! 59034), .BTy_boolean))]],
           .Pattern [] (.CaseBase (.some (a! 59037), .BTy_loaded .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 59039), .BTy_loaded .OTy_integer))])
          (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
          [.Expr [] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 59029), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc (rg! «noise.h» 103 2 103 14), .Aexpr] <| .Epure <| .Pexpr [] () <|
             .PEval <|
             .Vloaded
               (.LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "atomic64_set" 426)))))) <|
           .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
           [.Pexpr [] () (.PEsym (a! 59029)),
            .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 59029))))],
           .Expr [.Aloc (rg! «noise.h» 103 15 103 27), .Aexpr] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 59038), .BTy_object .OTy_pointer)))
             (.Expr
               [.Aloc (rg! «noise.h» 103 15 103 27), .Aexpr]
               (.Epure (.Pexpr [] () (.PEsym (addr! "handshake_ns" 1746))))) <| .Expr [] <|
           .Eaction <| .Paction .Pos <| .Action (rg! «noise.h» 103 15 103 27) () <|
           .Load0
             (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc (rg! «noise.h» 101 55 101 67)] <|
             .Pointer (.mk .false .false .false) <|
             .Ctype
               [.Aloc (pt! «noise.h» 101 55), .Atypedef (c! "atomic64_t" 42)]
               (.Struct (sym.Symbol Src.digest 41 (.SD_unnamed_tag .unknown))))
             (.Pexpr [] () (.PEsym (a! 59038)))
             .NA,
           .Expr
             [.Aloc (rgc! «noise.h» 103 29 104 50 103 60),
              .Aexpr,
              .Avalue (.Ainteger (.Unsigned .LongLong)),
              .Astd "\xa76.5.6"] <|
           .Ewseq
             (.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] (.CaseBase (.some (a! 59056), .BTy_loaded .OTy_integer)),
              .Pattern [] (.CaseBase (.some (a! 59057), .BTy_loaded .OTy_integer))])
             (.Expr [] <| .Eunseq <|
             [.Expr
                [.Aloc (rg! «noise.h» 103 29 103 59),
                 .Aexpr,
                 .Avalue (.Ainteger (.Unsigned .LongLong))] <|
              .Esseq
                (.Pattern [] (.CaseBase (.some (a! 59040), .BTy_loaded .OTy_pointer)))
                (.Expr [.Aloc (rg! «noise.h» 103 29 103 57), .Aexpr] <| .Epure <| .Pexpr [] () <|
                .PEval <| .Vloaded <| .LVspecified <|
                .OVpointer (.PV .Prov_none (.PVfunction (c! "ktime_get_coarse_boottime_ns" 648)))) <|
              .Expr [] <|
              .Elet
                (.Pattern [] <| .CaseCtor .Ctuple <|
                [.Pattern [] (.CaseBase (.some (a! 59041), .BTy_ctype)),
                 .Pattern [] (.CaseBase (.some (a! 59042), .BTy_list .BTy_ctype)),
                 .Pattern [] (.CaseBase (.none, .BTy_boolean)),
                 .Pattern [] (.CaseBase (.none, .BTy_boolean))])
                (.Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 59040))))) <| .Expr [] <|
              .Eif
                (.Pexpr [] () <|
                .PEop
                  .OpEq
                  (.Pexpr [] () <|
                  .PEcall
                    (.Sym (rt! "params_length" 18299737999929047716))
                    [.Pexpr [] () (.PEsym (a! 59042))])
                  (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                (.Expr [] <|
                .Eif
                  (.Pexpr [] () <|
                  .PEare_compatible
                    (.Pexpr [] () <| .PEval <| .Vctype <|
                    .Ctype
                      [.Aloc .unknown, .Atypedef (c! "u64" 11)]
                      (.Basic (.Integer (.Unsigned .LongLong))))
                    (.Pexpr [] () (.PEsym (a! 59041))))
                  (.Expr [] <|
                  .Eccall
                    ()
                    (.Pexpr [] () <| .PEval <| .Vctype <|
                    .Ctype [.Aloc (rg! «noise.h» 103 29 103 57)] <|
                    .Pointer (.mk .false .false .false) <| .Ctype [] <|
                    .Function
                      (.mk .false .false .false,
                       .Ctype
                         [.Aloc .unknown, .Atypedef (c! "u64" 11)]
                         (.Basic (.Integer (.Unsigned .LongLong))))
                      []
                      .false)
                    (.Pexpr [] () (.PEsym (a! 59040)))
                    []) <| .Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.2.2#9"] () <|
                .PEundef (rg! «noise.h» 103 29 103 59) .UB041_function_not_compatible) <|
              .Expr [] <| .Epure <|
              .Pexpr
                [.Astd "\xa76.5.2.2#6, sentence 3"]
                ()
                (.PEundef (rg! «noise.h» 103 29 103 59) .UB038_number_of_args),
              .Expr
                [.Aloc (rgc! «noise.h» 104 12 104 50 104 37),
                 .Aexpr,
                 .Avalue (.Ainteger (.Unsigned .LongLong)),
                 .Astd "\xa76.5.5"] <|
              .Ewseq
                (.Pattern [] <| .CaseCtor .Ctuple <|
                [.Pattern [] (.CaseBase (.some (a! 59051), .BTy_loaded .OTy_integer)),
                 .Pattern [] (.CaseBase (.some (a! 59052), .BTy_loaded .OTy_integer))])
                (.Expr [] <| .Eunseq <|
                [.Expr
                   [.Aloc (rgc! «noise.h» 104 12 104 36 104 12),
                    .Aexpr,
                    .Avalue (.Ainteger (.Unsigned .LongLong)),
                    .Astd "\xa76.5.4"] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 59043), .BTy_loaded .OTy_integer)))
                   (.Expr
                     [.Aloc (rg! «noise.h» 104 17 104 36),
                      .Aexpr,
                      .Avalue (.Ainteger (.Signed .Int_)),
                      .Astd "\xa76.5.6"] <|
                   .Ewseq
                     (.Pattern [] <| .CaseCtor .Ctuple <|
                     [.Pattern [] (.CaseBase (.some (a! 59045), .BTy_loaded .OTy_integer)),
                      .Pattern [] (.CaseBase (.some (a! 59046), .BTy_loaded .OTy_integer))])
                     (.Expr [] <| .Eunseq <|
                     [.Expr
                        [.Aloc (rg! «noise.h» 104 18 104 31),
                         .Aexpr,
                         .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                      .Pexpr
                        []
                        ()
                        (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 5))))),
                      .Expr
                        [.Aloc (rg! «noise.h» 104 34 104 35),
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
                       [.Pexpr [] () (.PEsym (a! 59045)), .Pexpr [] () (.PEsym (a! 59046))]) <|
                   [(.Pattern [] <| .CaseCtor .Ctuple <|
                     [.Pattern [] <|
                      .CaseCtor
                        .Cspecified
                        [.Pattern [] (.CaseBase (.some (a! 59047), .BTy_object .OTy_integer))],
                      .Pattern [] <|
                      .CaseCtor
                        .Cspecified
                        [.Pattern [] (.CaseBase (.some (a! 59048), .BTy_object .OTy_integer))]],
                     .Pexpr [] () <| .PEctor .Cspecified <|
                     [.Pexpr [.Astd "\xa76.5.6#5"] () <|
                      .PEcatch_exceptional_condition
                        (.Signed .Int_)
                        .IOpAdd
                        (.Pexpr
                          [.Astd "\xa76.5.6#4"]
                          ()
                          (.PEconv_int (.Signed .Int_) (.Pexpr [] () (.PEsym (a! 59047))))) <|
                      .Pexpr
                        [.Astd "\xa76.5.6#4"]
                        ()
                        (.PEconv_int (.Signed .Int_) (.Pexpr [] () (.PEsym (a! 59048))))]),
                    (.Pattern [] <|
                     .CaseBase
                       (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                     .Pexpr
                       [.Astd "\xa76.5#5"]
                       ()
                       (.PEundef (rg! «noise.h» 104 17 104 36) .UB036_exceptional_condition))]) <|
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                 [.Pexpr [] () <| .PEval <| .Vctype <|
                  .Ctype
                    [.Aloc (pt! «noise.h» 104 13), .Atypedef (c! "u64" 11)]
                    (.Basic (.Integer (.Unsigned .LongLong))),
                  .Pexpr [] () (.PEsym (a! 59043))],
                 .Expr
                   [.Aloc (rg! «noise.h» 104 39 104 50),
                    .Aexpr,
                    .Avalue (.Ainteger (.Signed .Long))] <| .Epure <| .Pexpr [] () <|
                 .PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1000000000))))]) <|
              .Expr [] <| .Epure <| .Pexpr [] () <|
              .PEcase
                (.Pexpr [] () <|
                .PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 59051)), .Pexpr [] () (.PEsym (a! 59052))]) <|
              [(.Pattern [] <| .CaseCtor .Ctuple <|
                [.Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 59053), .BTy_object .OTy_integer))],
                 .Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 59054), .BTy_object .OTy_integer))]],
                .Pexpr [] () <| .PEctor .Cspecified <|
                [.Pexpr [.Astd "\xa76.5.5#4"] () <|
                 .PEwrapI
                   (.Unsigned .LongLong)
                   .IOpMul
                   (.Pexpr [.Astd "\xa76.5.5#3"] () <|
                   .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                   [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_long_long)),
                    .Pexpr [] () (.PEsym (a! 59053))]) <| .Pexpr [.Astd "\xa76.5.5#3"] () <|
                 .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                 [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_long_long)),
                  .Pexpr [] () (.PEsym (a! 59054))]]),
               (.Pattern
                  []
                  (.CaseBase
                    (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer])),
                .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
                .Ctype
                  [.Aloc (rgc! «noise.h» 104 12 104 50 104 37)]
                  (.Basic (.Integer (.Unsigned .LongLong))))]]) <| .Expr [] <| .Epure <|
           .Pexpr [] () <|
           .PEcase
             (.Pexpr
               []
               ()
               (.PEctor
                 .Ctuple
                 [.Pexpr [] () (.PEsym (a! 59056)), .Pexpr [] () (.PEsym (a! 59057))])) <|
           [(.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 59058), .BTy_object .OTy_integer))],
              .Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 59059), .BTy_object .OTy_integer))]],
             .Pexpr [] () <| .PEctor .Cspecified <|
             [.Pexpr [.Astd "\xa76.5.5#6"] () <|
              .PEwrapI
                (.Unsigned .LongLong)
                .IOpSub
                (.Pexpr [.Astd "\xa76.5.6#4"] () <|
                .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_long_long)),
                 .Pexpr [] () (.PEsym (a! 59058))]) <| .Pexpr [.Astd "\xa76.5.6#4"] () <|
              .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
              [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_long_long)),
               .Pexpr [] () (.PEsym (a! 59059))]]),
            (.Pattern
               []
               (.CaseBase (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer])),
             .Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
             .Ctype
               [.Aloc (rgc! «noise.h» 103 29 104 50 103 60)]
               (.Basic (.Integer (.Unsigned .LongLong))))]]) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
          .PEop
            .OpEq
            (.Pexpr [] () <|
            .PEcall
              (.Sym (rt! "params_length" 18299737999929047716))
              [.Pexpr [] () (.PEsym (a! 59032))])
            (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#6, sentence 3"]
            ()
            (.PEundef (rg! «noise.h» 103 2 104 51) .UB038_number_of_args)) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 59033))) <| .Pexpr [] () <|
          .PEnot <| .Pexpr [] () <|
          .PEare_compatible
            (.Pexpr [] () (.PEval (.Vctype (.Ctype [.Aloc .unknown] .Void0))))
            (.Pexpr [] () (.PEsym (a! 59031))))
          (.Expr [] <| .Epure <|
          .Pexpr
            [.Astd "\xa76.5.2.2#9"]
            ()
            (.PEundef (rg! «noise.h» 103 2 104 51) .UB041_function_not_compatible)) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some (sym.Symbol Src.digest 59035 (.SD_FunArg (rg! «noise.h» 103 15 103 27) 0)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 59061), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 59032)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
              .Pointer (.mk .false .false .false) <|
              .Ctype
                [.Aloc .unknown, .Atypedef (c! "atomic64_t" 42)]
                (.Struct (sym.Symbol Src.digest 41 (.SD_unnamed_tag .unknown))))
              (.Pexpr [] () (.PEsym (a! 59061))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «noise.h» 103 2 104 51) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 59062), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «noise.h» 103 2 104 51) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
               .Pointer (.mk .false .false .false) <|
               .Ctype
                 [.Aloc .unknown, .Atypedef (c! "atomic64_t" 42)]
                 (.Struct (sym.Symbol Src.digest 41 (.SD_unnamed_tag .unknown)))])
              (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
              .Pointer (.mk .false .false .false) <|
              .Ctype
                [.Aloc .unknown, .Atypedef (c! "atomic64_t" 42)]
                (.Struct (sym.Symbol Src.digest 41 (.SD_unnamed_tag .unknown))))
              (.PrefFunArg (rg! «noise.h» 103 2 104 51) "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «noise.h» 103 2 104 51) () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
              .Pointer (.mk .false .false .false) <|
              .Ctype
                [.Aloc .unknown, .Atypedef (c! "atomic64_t" 42)]
                (.Struct (sym.Symbol Src.digest 41 (.SD_unnamed_tag .unknown))))
              (.Pexpr [] () (.PEsym (a! 59062)))
              (.Pexpr [] () (.PEsym (a! 59037)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 59062)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] <| .CaseBase <|
          (.some
             (sym.Symbol Src.digest 59036 (.SD_FunArg (rgc! «noise.h» 103 29 104 50 103 60) 1)),
           .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 59063), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 59032)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown, .Atypedef (c! "s64" 10)]
                (.Basic (.Integer (.Signed .LongLong))))
              (.Pexpr [] () (.PEsym (a! 59063))))
            (.Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.2.2#9"]
              ()
              (.PEundef (rg! «noise.h» 103 2 104 51) .UB041_function_not_compatible)) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 59064), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «noise.h» 103 2 104 51) () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc .unknown, .Atypedef (c! "s64" 10)]
                 (.Basic (.Integer (.Signed .LongLong)))])
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown, .Atypedef (c! "s64" 10)]
                (.Basic (.Integer (.Signed .LongLong))))
              (.PrefFunArg (rg! «noise.h» 103 2 104 51) "fa5a43434dcb33dc130b30cb8faeddf7" 1)) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «noise.h» 103 2 104 51) () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown, .Atypedef (c! "s64" 10)]
                (.Basic (.Integer (.Signed .LongLong))))
              (.Pexpr [] () (.PEsym (a! 59064)))
              (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc .unknown, .Atypedef (c! "s64" 10)]
                 (.Basic (.Integer (.Signed .LongLong))),
               .Pexpr [] () (.PEsym (a! 59039))])
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 59064)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 59065), .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#1, bullet 1"] <|
          .Eccall
            ()
            (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc (rg! «noise.h» 103 2 103 14)] <|
            .Pointer (.mk .false .false .false) <| .Ctype [] <|
            .Function
              (.mk .false .false .false, .Ctype [.Aloc .unknown] .Void0)
              [(.mk .false .false .false,
                (.Ctype [.Aloc .unknown] <| .Pointer (.mk .false .false .false) <|
                 .Ctype
                   [.Aloc .unknown, .Atypedef (c! "atomic64_t" 42)]
                   (.Struct (sym.Symbol Src.digest 41 (.SD_unnamed_tag .unknown))),
                 .false)),
               (.mk .false .false .false,
                (.Ctype
                   [.Aloc .unknown, .Atypedef (c! "s64" 10)]
                   (.Basic (.Integer (.Signed .LongLong))),
                 .false))]
              .false)
            (.Pexpr [] () (.PEsym (a! 59030))) <|
          [.Pexpr
             []
             ()
             (.PEsym (sym.Symbol Src.digest 59035 (.SD_FunArg (rg! «noise.h» 103 15 103 27) 0))),
           .Pexpr [] () <|
           .PEsym
             (sym.Symbol Src.digest 59036 (.SD_FunArg (rgc! «noise.h» 103 29 104 50 103 60) 1))]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit])))
          (.Expr [] <| .Eunseq <|
          [.Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «noise.h» 103 2 104 51) () <|
           .Kill
             (.Static0 <| .Ctype [.Aloc .unknown] <| .Pointer (.mk .false .false .false) <|
             .Ctype
               [.Aloc .unknown, .Atypedef (c! "atomic64_t" 42)]
               (.Struct (sym.Symbol Src.digest 41 (.SD_unnamed_tag .unknown)))) <|
           .Pexpr
             []
             ()
             (.PEsym (sym.Symbol Src.digest 59035 (.SD_FunArg (rg! «noise.h» 103 15 103 27) 0))),
           .Expr [] <| .Eaction <| .Paction .Pos <| .Action (rg! «noise.h» 103 2 104 51) () <|
           .Kill
             (.Static0 <|
             .Ctype
               [.Aloc .unknown, .Atypedef (c! "s64" 10)]
               (.Basic (.Integer (.Signed .LongLong)))) <| .Pexpr [] () <| .PEsym <|
           sym.Symbol Src.digest 59036 (.SD_FunArg (rgc! «noise.h» 103 29 104 50 103 60) 1)])
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 59065))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc (rgr! «noise.h» 101 1 105 2 101 20 101 54)] <|
  .Esave
    (c! "ret_59028" 59028, .BTy_unit)
    [(a! 59066,
      ((.BTy_unit, .some (.Ctype [.Aloc (rg! «noise.h» 101 15 101 19)] .Void0, .By_value)),
       .Pexpr [] () (.PEval .Vunit)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 59066)))))

end WireGuard.NoiseH
