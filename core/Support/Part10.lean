import Program.Types

/-! Part of `Support`: the procedures the program uses outside the files with their own modules (library, environment and Cerberus runtime), one definition per function, named as in C. -/

set_option maxHeartbeats 0
set_option maxRecDepth 100000

open Src

namespace Support

/-- `struct wgm_object *releasable(enum wgm_kind release, const void *base, struct wgm_object **previous)` -/
def releasable : Procedure :=
  .Proc
    .unknown
    (.some 5606)
    (.BTy_loaded .OTy_pointer)
    [(addr! "release" 5602, .BTy_object .OTy_pointer),
     (addr! "base" 5603, .BTy_object .OTy_pointer),
     (addr! "previous" 5604, .BTy_object .OTy_pointer)] <| .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc .unknown, .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.some (addr! "object" 5607), .BTy_object .OTy_pointer)))
      (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
      .Create
        (.Pexpr [] () <| .PEctor .Civalignof <|
        [.Pexpr [] () <| .PEval <| .Vctype <|
         .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_object)])
        (.Pexpr [] () <| .PEval <| .Vctype <|
        .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_object))
        (.PrefSource .unknown [c! "releasable" 5605, addr! "object" 5607])) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6690), .BTy_loaded .OTy_pointer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
        .Esseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <| .CaseCtor .Ctuple <|
           [.Pattern [] (.CaseBase (.some (a! 6692), .BTy_loaded .OTy_pointer)),
            .Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 6693), .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 6694), .BTy_list .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 6695), .BTy_boolean)),
             .Pattern [] (.CaseBase (.some (a! 6696), .BTy_boolean))]],
           .Pattern [] (.CaseBase (.some (a! 6699), .BTy_loaded .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 6701), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
          [.Expr [] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 6691), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc .unknown, .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <| .Vloaded <|
             .LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "find" 5566))))) <|
           .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
           [.Pexpr [] () (.PEsym (a! 6691)),
            .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 6691))))],
           .Expr [.Aloc .unknown, .Aexpr] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 6700), .BTy_object .OTy_pointer)))
             (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (addr! "base" 5603))))) <|
           .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
           .Load0
             (.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype
               [.Aloc .unknown]
               (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] .Void0)))
             (.Pexpr [] () (.PEsym (a! 6700)))
             .NA,
           .Expr [.Aloc .unknown, .Aexpr] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 6702), .BTy_object .OTy_pointer)))
             (.Expr
               [.Aloc .unknown, .Aexpr]
               (.Epure (.Pexpr [] () (.PEsym (addr! "previous" 5604))))) <| .Expr [] <| .Eaction <|
           .Paction .Pos <| .Action .unknown () <|
           .Load0
             (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
             .Pointer
               (.mk .false .false .false)
               (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_object)))
             (.Pexpr [] () (.PEsym (a! 6702)))
             .NA]) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
          .PEop
            .OpEq
            (.Pexpr [] () <|
            .PEcall
              (.Sym (rt! "params_length" 18299737999929047716))
              [.Pexpr [] () (.PEsym (a! 6694))])
            (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))))
          (.Expr [] <|
          .Epure
            (.Pexpr
              [.Astd "\xa76.5.2.2#6, sentence 3"]
              ()
              (.PEundef .unknown .UB038_number_of_args))) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 6695))) <| .Pexpr [] () <|
          .PEnot <| .Pexpr [] () <|
          .PEare_compatible
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_object))
            (.Pexpr [] () (.PEsym (a! 6693))))
          (.Expr [] <|
          .Epure
            (.Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible))) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] <|
          .CaseBase
            (.some (sym.Symbol Src.digest 6697 (.SD_FunArg .unknown 0)), .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 6703), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 6694)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown]
                (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] .Void0)))
              (.Pexpr [] () (.PEsym (a! 6703))))
            (.Expr [] <|
            .Epure
              (.Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible))) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 6704), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc .unknown]
                 (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] .Void0))])
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown]
                (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] .Void0)))
              (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <| .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown]
                (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] .Void0)))
              (.Pexpr [] () (.PEsym (a! 6704)))
              (.Pexpr [] () (.PEsym (a! 6699)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6704)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] <|
          .CaseBase
            (.some (sym.Symbol Src.digest 6698 (.SD_FunArg .unknown 1)), .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 6705), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 6694)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
              .Pointer
                (.mk .false .false .false)
                (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_object)))
              (.Pexpr [] () (.PEsym (a! 6705))))
            (.Expr [] <|
            .Epure
              (.Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible))) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 6706), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
               .Pointer
                 (.mk .false .false .false)
                 (.Ctype
                   [.Aloc .unknown]
                   (.Pointer (.mk .false .false .false) Ty.struct_wgm_object))])
              (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
              .Pointer
                (.mk .false .false .false)
                (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_object)))
              (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 1)) <| .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
              .Pointer
                (.mk .false .false .false)
                (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_object)))
              (.Pexpr [] () (.PEsym (a! 6706)))
              (.Pexpr [] () (.PEsym (a! 6701)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6706)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 6707), .BTy_loaded .OTy_pointer)))
          (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
          .Eccall
            ()
            (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
            .Pointer (.mk .false .false .false) <| .Ctype [] <|
            .Function
              (.mk .false .false .false,
               .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_object))
              [(.mk .false .false .false,
                (.Ctype
                   [.Aloc .unknown]
                   (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] .Void0)),
                 .false)),
               (.mk .false .false .false,
                (.Ctype [.Aloc .unknown] <| .Pointer (.mk .false .false .false) <|
                 .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_object),
                 .false))]
              .false)
            (.Pexpr [] () (.PEsym (a! 6692))) <|
          [.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6697 (.SD_FunArg .unknown 0))),
           .Pexpr [] () (.PEsym (sym.Symbol Src.digest 6698 (.SD_FunArg .unknown 1)))]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit])))
          (.Expr [] <| .Eunseq <|
          [.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
           .Kill
             (.Static0 <|
             .Ctype
               [.Aloc .unknown]
               (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] .Void0)))
             (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6697 (.SD_FunArg .unknown 0)))),
           .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
           .Kill
             (.Static0 <| .Ctype [.Aloc .unknown] <| .Pointer (.mk .false .false .false) <|
             .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_object))
             (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6698 (.SD_FunArg .unknown 1))))])
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6707)))))) <| .Expr [] <| .Eaction <|
      .Paction .Pos <| .Action .unknown () <|
      .Store0
        .false
        (.Pexpr [] () <| .PEval <| .Vctype <|
        .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_object))
        (.Pexpr [] () (.PEsym (addr! "object" 5607)))
        (.Pexpr [] () (.PEsym (a! 6690)))
        .NA) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6709), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 6711), .BTy_loaded .OTy_integer)),
           .Pattern [] (.CaseBase (.some (a! 6712), .BTy_loaded .OTy_integer))])
          (.Expr [] <| .Eunseq <|
          [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 6717), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc .unknown, .Aexpr] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 6716), .BTy_object .OTy_pointer)))
               (.Expr
                 [.Aloc .unknown, .Aexpr]
                 (.Epure (.Pexpr [] () (.PEsym (addr! "object" 5607))))) <| .Expr [] <| .Eaction <|
             .Paction .Pos <| .Action .unknown () <|
             .Load0
               (.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_object))
               (.Pexpr [] () (.PEsym (a! 6716)))
               .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6717))) <|
           [(.Pattern [] <|
             .CaseCtor
               .Cspecified
               [.Pattern [] (.CaseBase (.some (a! 6718), .BTy_object .OTy_pointer))],
             .Expr [] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 6719), .BTy_boolean)))
               (.Expr [] <| .Ememop .PtrEq <|
               [.Pexpr [] () (.PEsym (a! 6718)),
                .Pexpr [.Astd "\xa76.5.9#5, sentence 2"] () <| .PEval <| .Vobject <| .OVpointer <|
                .PV .Prov_none <|
                .PVnull
                  (.Ctype
                    [.Aloc .unknown]
                    (.Pointer (.mk .false .false .false) Ty.struct_wgm_object))]) <|
             .Expr [.Astd "\xa76.5.9#3"] <| .Epure <| .Pexpr [] () <|
             .PEif
               (.Pexpr [] () (.PEsym (a! 6719)))
               (.Pexpr [] () <|
               .PEctor
                 .Cspecified
                 [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
             .Pexpr [] () <|
             .PEctor .Cspecified [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
            (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)),
             .Expr [] <| .Epure <| .Pexpr [] () <|
             .PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_equality_ptr_vs_NULL))],
           .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
           .Epure (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
        .Expr [] <| .Epure <| .Pexpr [] () <|
        .PEcase
          (.Pexpr
            []
            ()
            (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 6711)), .Pexpr [] () (.PEsym (a! 6712))])) <|
        [(.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 6713), .BTy_object .OTy_integer))],
           .Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 6714), .BTy_object .OTy_integer))]],
          .Pexpr [.Astd "\xa76.5.9#3"] () <|
          .PEif
            (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
            .PEop
              .OpEq
              (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
              .PEcall
                (.Sym (rt! "conv_int" 15837442492999787586))
                [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6713))]) <|
            .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
            .PEcall
              (.Sym (rt! "conv_int" 15837442492999787586))
              [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6714))])
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
          .Pexpr [] () <|
          .PEval
            (.Vloaded
              (.LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))))]) <|
      .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6708), .BTy_boolean)))
        (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6709))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 6710), .BTy_object .OTy_integer))],
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 6710)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
            (.Pexpr [] () (.PEval .Vtrue))
            (.Pexpr [] () (.PEval .Vfalse))),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <| .End <|
          [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
           .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
      .Eif
        (.Pexpr [] () (.PEsym (a! 6708)))
        (.Expr [.Aloc .unknown, .Astmt] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc .unknown, .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
            .Esseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] <| .CaseCtor .Ctuple <|
               [.Pattern [] (.CaseBase (.some (a! 6721), .BTy_loaded .OTy_pointer)),
                .Pattern [] <| .CaseCtor .Ctuple <|
                [.Pattern [] (.CaseBase (.some (a! 6722), .BTy_ctype)),
                 .Pattern [] (.CaseBase (.some (a! 6723), .BTy_list .BTy_ctype)),
                 .Pattern [] (.CaseBase (.some (a! 6724), .BTy_boolean)),
                 .Pattern [] (.CaseBase (.some (a! 6725), .BTy_boolean))]],
               .Pattern [] (.CaseBase (.some (a! 6728), .BTy_loaded .OTy_pointer)),
               .Pattern [] (.CaseBase (.some (a! 6732), .BTy_loaded .OTy_integer))])
              (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
              [.Expr [] <|
               .Esseq
                 (.Pattern [] (.CaseBase (.some (a! 6720), .BTy_loaded .OTy_pointer)))
                 (.Expr [.Aloc .unknown, .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <| .Vloaded <|
                 .LVspecified
                   (.OVpointer (.PV .Prov_none (.PVfunction (c! "memory_violation" 5530))))) <|
               .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
               [.Pexpr [] () (.PEsym (a! 6720)),
                .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 6720))))],
               .Expr [.Aloc .unknown, .Aexpr] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6730), .BTy_object .OTy_pointer)))
                 (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (a! 6729))))) <|
               .Expr [.Astd "\xa76.3.2.1#3"] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6731), .BTy_object .OTy_pointer)))
                 (.Expr [] <| .Ememop .PtrArrayShift <|
                 [.Pexpr [] () (.PEsym (a! 6730)),
                  .Pexpr [] () (.PEval (.Vctype Ty.char)),
                  .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
               .Expr
                 []
                 (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 6731))]))),
               .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
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
                  [.Pexpr [] () (.PEsym (a! 6723))])
                (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))))
              (.Expr [] <| .Epure <|
              .Pexpr
                [.Astd "\xa76.5.2.2#6, sentence 3"]
                ()
                (.PEundef .unknown .UB038_number_of_args)) <| .Expr [] <|
            .Eif
              (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 6724))) <| .Pexpr [] () <|
              .PEnot <| .Pexpr [] () <|
              .PEare_compatible
                (.Pexpr [] () (.PEval (.Vctype (.Ctype [.Aloc .unknown] .Void0))))
                (.Pexpr [] () (.PEsym (a! 6722))))
              (.Expr [] <|
              .Epure
                (.Pexpr
                  [.Astd "\xa76.5.2.2#9"]
                  ()
                  (.PEundef .unknown .UB041_function_not_compatible))) <| .Expr [] <|
            .Esseq
              (.Pattern [] <|
              .CaseBase
                (.some (sym.Symbol Src.digest 6726 (.SD_FunArg .unknown 0)),
                 .BTy_object .OTy_pointer))
              (.Expr [] <|
              .Elet
                (.Pattern [] (.CaseBase (.some (a! 6733), .BTy_ctype)))
                (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                [.Pexpr [] () (.PEsym (a! 6723)),
                 .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
              .Eif
                (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                .PEare_compatible
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                  .Pointer
                    (.mk .true .false .false)
                    (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                  (.Pexpr [] () (.PEsym (a! 6733))))
                (.Expr [] <| .Epure <|
                .Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible)) <|
              .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6734), .BTy_object .OTy_pointer)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Create
                  (.Pexpr [] () <| .PEctor .Civalignof <|
                  [.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                   .Pointer
                     (.mk .true .false .false)
                     (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0)))])
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                  .Pointer
                    (.mk .true .false .false)
                    (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                  (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <| .Expr [] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Store0
                  .false
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                  .Pointer
                    (.mk .true .false .false)
                    (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                  (.Pexpr [] () (.PEsym (a! 6734)))
                  (.Pexpr [] () (.PEsym (a! 6728)))
                  .NA)
                (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6734)))))) <| .Expr [] <|
            .Esseq
              (.Pattern [] <|
              .CaseBase
                (.some (sym.Symbol Src.digest 6727 (.SD_FunArg .unknown 1)),
                 .BTy_object .OTy_pointer))
              (.Expr [] <|
              .Elet
                (.Pattern [] (.CaseBase (.some (a! 6735), .BTy_ctype)))
                (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                [.Pexpr [] () (.PEsym (a! 6723)),
                 .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <| .Expr [] <|
              .Eif
                (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                .PEare_compatible
                  (.Pexpr
                    []
                    ()
                    (.PEval
                      (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
                  (.Pexpr [] () (.PEsym (a! 6735))))
                (.Expr [] <| .Epure <|
                .Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible)) <|
              .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6736), .BTy_object .OTy_pointer)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Create
                  (.Pexpr [] () <| .PEctor .Civalignof <|
                  [.Pexpr [] () <|
                   .PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))])
                  (.Pexpr
                    []
                    ()
                    (.PEval
                      (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
                  (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 1)) <| .Expr [] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Store0
                  .false
                  (.Pexpr
                    []
                    ()
                    (.PEval
                      (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
                  (.Pexpr [] () (.PEsym (a! 6736)))
                  (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                  [.Pexpr [] () <|
                   .PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))),
                   .Pexpr [] () (.PEsym (a! 6732))])
                  .NA)
                (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6736)))))) <| .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.some (a! 6737), .BTy_unit)))
              (.Expr [.Astd "\xa76.5.16.1#1, bullet 1"] <|
              .Eccall
                ()
                (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                .Pointer (.mk .false .false .false) <| .Ctype [] <|
                .Function
                  (.mk .false .false .false, .Ctype [.Aloc .unknown] .Void0)
                  [(.mk .false .false .false,
                    (.Ctype [.Aloc .unknown] <|
                     .Pointer
                       (.mk .true .false .false)
                       (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))),
                     .false)),
                   (.mk .false .false .false,
                    (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))), .false))]
                  .false)
                (.Pexpr [] () (.PEsym (a! 6721))) <|
              [.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6726 (.SD_FunArg .unknown 0))),
               .Pexpr [] () (.PEsym (sym.Symbol Src.digest 6727 (.SD_FunArg .unknown 1)))]) <|
            .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit])))
              (.Expr [] <| .Eunseq <|
              [.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
               .Kill
                 (.Static0 <| .Ctype [.Aloc .unknown] <|
                 .Pointer
                   (.mk .true .false .false)
                   (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                 (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6726 (.SD_FunArg .unknown 0)))),
               .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
               .Kill
                 (.Static0 (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))
                 (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6727 (.SD_FunArg .unknown 1))))])
              (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6737))))))
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc .unknown, .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
            .Kill
              (.Static0
                (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_object)))
              (.Pexpr [] () (.PEsym (addr! "object" 5607)))) <| .Expr [] <|
          .Erun () (c! "ret_6689" 6689) <|
          [.Pexpr [] () <| .PEctor .Cspecified <|
           [.Pexpr [] () <| .PEval <| .Vobject <| .OVpointer <| .PV .Prov_none <| .PVnull <|
            .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_object)]])
          (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
        (.Expr [.Aloc .unknown, .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6739), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 6741), .BTy_loaded .OTy_integer)),
           .Pattern [] (.CaseBase (.some (a! 6742), .BTy_loaded .OTy_integer))])
          (.Expr [] <| .Eunseq <|
          [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
           .Ewseq
             (.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] (.CaseBase (.some (a! 6746), .BTy_loaded .OTy_integer)),
              .Pattern [] (.CaseBase (.some (a! 6747), .BTy_loaded .OTy_integer))])
             (.Expr [] <| .Eunseq <|
             [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
              .Epure
                (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))),
              .Expr
                [.Aloc .unknown,
                 .Aexpr,
                 .Avalue (.Ainteger (.Signed .Int_)),
                 .Astd "\xa76.5.2.2#10, sentence 1"] <|
              .Esseq
                (.Pattern [] <| .CaseCtor .Ctuple <|
                [.Pattern [] <| .CaseCtor .Ctuple <|
                 [.Pattern [] (.CaseBase (.some (a! 6752), .BTy_loaded .OTy_pointer)),
                  .Pattern [] <| .CaseCtor .Ctuple <|
                  [.Pattern [] (.CaseBase (.some (a! 6753), .BTy_ctype)),
                   .Pattern [] (.CaseBase (.some (a! 6754), .BTy_list .BTy_ctype)),
                   .Pattern [] (.CaseBase (.some (a! 6755), .BTy_boolean)),
                   .Pattern [] (.CaseBase (.some (a! 6756), .BTy_boolean))]],
                 .Pattern [] (.CaseBase (.some (a! 6759), .BTy_loaded .OTy_integer)),
                 .Pattern [] (.CaseBase (.some (a! 6761), .BTy_loaded .OTy_integer))])
                (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
                [.Expr [] <|
                 .Esseq
                   (.Pattern [] (.CaseBase (.some (a! 6751), .BTy_loaded .OTy_pointer)))
                   (.Expr [.Aloc .unknown, .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <|
                   .Vloaded <|
                   .LVspecified
                     (.OVpointer (.PV .Prov_none (.PVfunction (c! "release_accepts" 5583))))) <|
                 .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
                 [.Pexpr [] () (.PEsym (a! 6751)),
                  .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 6751))))],
                 .Expr
                   [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Enum0 (c! "wgm_kind" 4873)))] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 6760), .BTy_object .OTy_pointer)))
                   (.Expr
                     [.Aloc .unknown, .Aexpr]
                     (.Epure (.Pexpr [] () (.PEsym (addr! "release" 5602))))) <| .Expr [] <|
                 .Eaction <| .Paction .Pos <| .Action .unknown () <|
                 .Load0
                   (.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_kind" 4873)))))
                   (.Pexpr [] () (.PEsym (a! 6760)))
                   .NA,
                 .Expr
                   [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Enum0 (c! "wgm_kind" 4873)))] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 6767), .BTy_object .OTy_pointer)))
                   (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.2.3#4, sentence 2"] <|
                   .Esseq
                     (.Pattern [] (.CaseBase (.some (a! 6762), .BTy_loaded .OTy_pointer)))
                     (.Expr [.Aloc .unknown, .Aexpr] <|
                     .Ewseq
                       (.Pattern [] (.CaseBase (.some (a! 6766), .BTy_object .OTy_pointer)))
                       (.Expr
                         [.Aloc .unknown, .Aexpr]
                         (.Epure (.Pexpr [] () (.PEsym (addr! "object" 5607))))) <| .Expr [] <|
                     .Eaction <| .Paction .Pos <| .Action .unknown () <|
                     .Load0
                       (.Pexpr [] () <| .PEval <| .Vctype <|
                       .Ctype
                         [.Aloc .unknown]
                         (.Pointer (.mk .false .false .false) Ty.struct_wgm_object))
                       (.Pexpr [] () (.PEsym (a! 6766)))
                       .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6762))) <|
                   [(.Pattern
                       []
                       (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                     .Expr [] <| .Epure <|
                     .Pexpr
                       []
                       ()
                       (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_memberofptr))),
                    (.Pattern [] <|
                     .CaseCtor
                       .Cspecified
                       [.Pattern [] (.CaseBase (.some (a! 6763), .BTy_object .OTy_pointer))],
                     .Expr [] <| .Epure <| .Pexpr [] () <|
                     .PEmember_shift
                       (.Pexpr [] () (.PEsym (a! 6763)))
                       (c! "wgm_object" 5498)
                       (.Identifier .unknown "kind"))]) <| .Expr [] <| .Eaction <| .Paction .Pos <|
                 .Action .unknown () <|
                 .Load0
                   (.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_kind" 4873)))))
                   (.Pexpr [] () (.PEsym (a! 6767)))
                   .NA]) <| .Expr [] <|
              .Eif
                (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                .PEop
                  .OpEq
                  (.Pexpr [] () <|
                  .PEcall
                    (.Sym (rt! "params_length" 18299737999929047716))
                    [.Pexpr [] () (.PEsym (a! 6754))])
                  (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))))
                (.Expr [] <| .Epure <|
                .Pexpr
                  [.Astd "\xa76.5.2.2#6, sentence 3"]
                  ()
                  (.PEundef .unknown .UB038_number_of_args)) <| .Expr [] <|
              .Eif
                (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 6755))) <| .Pexpr [] () <|
                .PEnot <| .Pexpr [] () <|
                .PEare_compatible
                  (.Pexpr
                    []
                    ()
                    (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))))
                  (.Pexpr [] () (.PEsym (a! 6753))))
                (.Expr [] <| .Epure <|
                .Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible)) <|
              .Expr [] <|
              .Esseq
                (.Pattern [] <| .CaseBase <|
                (.some (sym.Symbol Src.digest 6757 (.SD_FunArg .unknown 0)),
                 .BTy_object .OTy_pointer))
                (.Expr [] <|
                .Elet
                  (.Pattern [] (.CaseBase (.some (a! 6768), .BTy_ctype)))
                  (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                  [.Pexpr [] () (.PEsym (a! 6754)),
                   .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
                .Eif
                  (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                  .PEare_compatible
                    (.Pexpr [] () <| .PEval <| .Vctype <|
                    .Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_kind" 4873)))))
                    (.Pexpr [] () (.PEsym (a! 6768))))
                  (.Expr [] <| .Epure <|
                  .Pexpr
                    [.Astd "\xa76.5.2.2#9"]
                    ()
                    (.PEundef .unknown .UB041_function_not_compatible)) <|
                .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
                .Ewseq
                  (.Pattern [] (.CaseBase (.some (a! 6769), .BTy_object .OTy_pointer)))
                  (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                  .Create
                    (.Pexpr [] () <| .PEctor .Civalignof <|
                    [.Pexpr [] () <| .PEval <| .Vctype <|
                     .Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_kind" 4873))))])
                    (.Pexpr [] () <| .PEval <| .Vctype <|
                    .Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_kind" 4873)))))
                    (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <| .Expr [] <|
                .Ewseq
                  (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                  (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                  .Store0
                    .false
                    (.Pexpr [] () <| .PEval <| .Vctype <|
                    .Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_kind" 4873)))))
                    (.Pexpr [] () (.PEsym (a! 6769)))
                    (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                    [.Pexpr [] () <| .PEval <| .Vctype <|
                     .Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_kind" 4873)))),
                     .Pexpr [] () (.PEsym (a! 6759))])
                    .NA)
                  (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6769)))))) <| .Expr [] <|
              .Esseq
                (.Pattern [] <| .CaseBase <|
                (.some (sym.Symbol Src.digest 6758 (.SD_FunArg .unknown 1)),
                 .BTy_object .OTy_pointer))
                (.Expr [] <|
                .Elet
                  (.Pattern [] (.CaseBase (.some (a! 6770), .BTy_ctype)))
                  (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                  [.Pexpr [] () (.PEsym (a! 6754)),
                   .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <| .Expr [] <|
                .Eif
                  (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                  .PEare_compatible
                    (.Pexpr [] () <| .PEval <| .Vctype <|
                    .Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_kind" 4873)))))
                    (.Pexpr [] () (.PEsym (a! 6770))))
                  (.Expr [] <| .Epure <|
                  .Pexpr
                    [.Astd "\xa76.5.2.2#9"]
                    ()
                    (.PEundef .unknown .UB041_function_not_compatible)) <|
                .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
                .Ewseq
                  (.Pattern [] (.CaseBase (.some (a! 6771), .BTy_object .OTy_pointer)))
                  (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                  .Create
                    (.Pexpr [] () <| .PEctor .Civalignof <|
                    [.Pexpr [] () <| .PEval <| .Vctype <|
                     .Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_kind" 4873))))])
                    (.Pexpr [] () <| .PEval <| .Vctype <|
                    .Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_kind" 4873)))))
                    (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 1)) <| .Expr [] <|
                .Ewseq
                  (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                  (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                  .Store0
                    .false
                    (.Pexpr [] () <| .PEval <| .Vctype <|
                    .Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_kind" 4873)))))
                    (.Pexpr [] () (.PEsym (a! 6771)))
                    (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                    [.Pexpr [] () <| .PEval <| .Vctype <|
                     .Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_kind" 4873)))),
                     .Pexpr [] () (.PEsym (a! 6761))])
                    .NA)
                  (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6771)))))) <| .Expr [] <|
              .Esseq
                (.Pattern [] (.CaseBase (.some (a! 6772), .BTy_loaded .OTy_integer)))
                (.Expr [.Astd "\xa76.5.16.1#1, bullet 1"] <|
                .Eccall
                  ()
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                  .Pointer (.mk .false .false .false) <| .Ctype [] <|
                  .Function
                    (.mk .false .false .false,
                     .Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_))))
                    [(.mk .false .false .false,
                      (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_kind" 4873)))),
                       .false)),
                     (.mk .false .false .false,
                      (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_kind" 4873)))),
                       .false))]
                    .false)
                  (.Pexpr [] () (.PEsym (a! 6752))) <|
                [.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6757 (.SD_FunArg .unknown 0))),
                 .Pexpr [] () (.PEsym (sym.Symbol Src.digest 6758 (.SD_FunArg .unknown 1)))]) <|
              .Expr [] <|
              .Esseq
                (.Pattern [] (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit])))
                (.Expr [] <| .Eunseq <|
                [.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                 .Kill
                   (.Static0
                     (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_kind" 4873))))))
                   (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6757 (.SD_FunArg .unknown 0)))),
                 .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                 .Kill
                   (.Static0
                     (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_kind" 4873))))))
                   (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6758 (.SD_FunArg .unknown 1))))])
                (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6772)))))]) <| .Expr [] <| .Epure <|
           .Pexpr [] () <|
           .PEcase
             (.Pexpr
               []
               ()
               (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 6746)), .Pexpr [] () (.PEsym (a! 6747))])) <|
           [(.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 6748), .BTy_object .OTy_integer))],
              .Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 6749), .BTy_object .OTy_integer))]],
             .Pexpr [.Astd "\xa76.5.9#3"] () <|
             .PEif
               (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
               .PEop
                 .OpEq
                 (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                 .PEcall
                   (.Sym (rt! "conv_int" 15837442492999787586))
                   [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6748))]) <|
               .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
               .PEcall
                 (.Sym (rt! "conv_int" 15837442492999787586))
                 [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6749))])
               (.Pexpr [] () <|
               .PEctor
                 .Cspecified
                 [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
             .Pexpr [] () <|
             .PEctor .Cspecified [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
            (.Pattern
               []
               (.CaseBase (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer])),
             .Pexpr [] () <| .PEval <| .Vloaded <|
             .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))],
           .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
           .Epure (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
        .Expr [] <| .Epure <| .Pexpr [] () <|
        .PEcase
          (.Pexpr
            []
            ()
            (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 6741)), .Pexpr [] () (.PEsym (a! 6742))])) <|
        [(.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 6743), .BTy_object .OTy_integer))],
           .Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 6744), .BTy_object .OTy_integer))]],
          .Pexpr [.Astd "\xa76.5.9#3"] () <|
          .PEif
            (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
            .PEop
              .OpEq
              (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
              .PEcall
                (.Sym (rt! "conv_int" 15837442492999787586))
                [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6743))]) <|
            .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
            .PEcall
              (.Sym (rt! "conv_int" 15837442492999787586))
              [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6744))])
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
          .Pexpr [] () <|
          .PEval
            (.Vloaded
              (.LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))))]) <|
      .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6738), .BTy_boolean)))
        (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6739))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 6740), .BTy_object .OTy_integer))],
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 6740)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
            (.Pexpr [] () (.PEval .Vtrue))
            (.Pexpr [] () (.PEval .Vfalse))),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <| .End <|
          [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
           .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
      .Eif
        (.Pexpr [] () (.PEsym (a! 6738)))
        (.Expr [.Aloc .unknown, .Astmt] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc .unknown, .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr
              [.Aloc .unknown,
               .Aexpr,
               .Avalue (.Ainteger (.Signed .Int_)),
               .Astd "\xa76.5.2.2#10, sentence 1"] <|
            .Esseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] <| .CaseCtor .Ctuple <|
               [.Pattern [] (.CaseBase (.some (a! 6774), .BTy_loaded .OTy_pointer)),
                .Pattern [] <| .CaseCtor .Ctuple <|
                [.Pattern [] (.CaseBase (.some (a! 6775), .BTy_ctype)),
                 .Pattern [] (.CaseBase (.some (a! 6776), .BTy_list .BTy_ctype)),
                 .Pattern [] (.CaseBase (.some (a! 6777), .BTy_boolean)),
                 .Pattern [] (.CaseBase (.some (a! 6778), .BTy_boolean))]],
               .Pattern [] (.CaseBase (.some (a! 6782), .BTy_loaded .OTy_pointer)),
               .Pattern [] (.CaseBase (.some (a! 6786), .BTy_loaded .OTy_pointer)),
               .Pattern [] (.CaseBase (.some (a! 6799), .BTy_loaded .OTy_pointer))])
              (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
              [.Expr [] <|
               .Esseq
                 (.Pattern [] (.CaseBase (.some (a! 6773), .BTy_loaded .OTy_pointer)))
                 (.Expr [.Aloc .unknown, .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <| .Vloaded <|
                 .LVspecified <|
                 .OVpointer (.PV .Prov_none (.PVfunction (rt! "printf_proxy" 17096408249463498481)))) <|
               .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
               [.Pexpr [] () (.PEsym (a! 6773)),
                .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 6773))))],
               .Expr [.Aloc .unknown, .Aexpr] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6784), .BTy_object .OTy_pointer)))
                 (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (a! 6783))))) <|
               .Expr [.Astd "\xa76.3.2.1#3"] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6785), .BTy_object .OTy_pointer)))
                 (.Expr [] <| .Ememop .PtrArrayShift <|
                 [.Pexpr [] () (.PEsym (a! 6784)),
                  .Pexpr [] () (.PEval (.Vctype Ty.char)),
                  .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
               .Expr
                 []
                 (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 6785))]))),
               .Expr [.Aloc .unknown, .Aexpr] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6798), .BTy_object .OTy_pointer)))
                 (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.3.2"] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 6787), .BTy_loaded .OTy_pointer)))
                   (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.6"] <|
                   .Ewseq
                     (.Pattern [] <| .CaseCtor .Ctuple <|
                     [.Pattern [] (.CaseBase (.some (a! 6790), .BTy_loaded .OTy_pointer)),
                      .Pattern [] (.CaseBase (.some (a! 6792), .BTy_loaded .OTy_integer))])
                     (.Expr [] <| .Eunseq <|
                     [.Expr [.Aloc .unknown, .Aexpr] <|
                      .Ewseq
                        (.Pattern [] (.CaseBase (.some (a! 6795), .BTy_object .OTy_pointer)))
                        (.Expr
                          [.Aloc .unknown, .Aexpr]
                          (.Epure (.Pexpr [] () (.PEsym (addr! "release_names" 5510))))) <|
                      .Expr [.Astd "\xa76.3.2.1#3"] <|
                      .Ewseq
                        (.Pattern [] (.CaseBase (.some (a! 6796), .BTy_object .OTy_pointer)))
                        (.Expr [] <| .Ememop .PtrArrayShift <|
                        [.Pexpr [] () (.PEsym (a! 6795)),
                         .Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                         .Pointer
                           (.mk .true .false .false)
                           (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))),
                         .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
                      .Expr [] <|
                      .Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 6796))])),
                      .Expr
                        [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Enum0 (c! "wgm_kind" 4873)))] <|
                      .Ewseq
                        (.Pattern [] (.CaseBase (.some (a! 6797), .BTy_object .OTy_pointer)))
                        (.Expr
                          [.Aloc .unknown, .Aexpr]
                          (.Epure (.Pexpr [] () (.PEsym (addr! "release" 5602))))) <| .Expr [] <|
                      .Eaction <| .Paction .Pos <| .Action .unknown () <|
                      .Load0
                        (.Pexpr [] () <| .PEval <| .Vctype <|
                        .Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_kind" 4873)))))
                        (.Pexpr [] () (.PEsym (a! 6797)))
                        .NA]) <| .Expr [] <|
                   .Ecase
                     (.Pexpr [] () <|
                     .PEctor
                       .Ctuple
                       [.Pexpr [] () (.PEsym (a! 6790)), .Pexpr [] () (.PEsym (a! 6792))]) <|
                   [(.Pattern [] <| .CaseCtor .Ctuple <|
                     [.Pattern [] <|
                      .CaseCtor
                        .Cspecified
                        [.Pattern [] (.CaseBase (.some (a! 6791), .BTy_object .OTy_pointer))],
                      .Pattern [] <|
                      .CaseCtor
                        .Cspecified
                        [.Pattern [] (.CaseBase (.some (a! 6793), .BTy_object .OTy_integer))]],
                     .Expr [] <|
                     .Ewseq
                       (.Pattern [] (.CaseBase (.some (a! 6794), .BTy_object .OTy_pointer)))
                       (.Expr [] <| .Ememop .PtrArrayShift <|
                       [.Pexpr [] () (.PEsym (a! 6791)),
                        .Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                        .Pointer
                          (.mk .true .false .false)
                          (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))),
                        .Pexpr [] () (.PEsym (a! 6793))]) <|
                     .Expr
                       []
                       (.Epure
                         (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 6794))])))),
                    (.Pattern [] <|
                     .CaseBase
                       (.none, .BTy_tuple [.BTy_loaded .OTy_pointer, .BTy_loaded .OTy_integer]),
                     .Expr [] <| .Epure <|
                     .Pexpr
                       []
                       ()
                       (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_pointer_add)))]) <|
                 .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6787))) <|
                 [(.Pattern [] <|
                   .CaseCtor
                     .Cspecified
                     [.Pattern [] (.CaseBase (.some (a! 6788), .BTy_object .OTy_pointer))],
                   .Expr [] <|
                   .Ewseq
                     (.Pattern [] (.CaseBase (.some (a! 6789), .BTy_boolean)))
                     (.Expr [] <| .Ememop .PtrValidForDeref <|
                     [.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                      .Pointer
                        (.mk .true .false .false)
                        (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))),
                      .Pexpr [] () (.PEsym (a! 6788))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
                   .PEif (.Pexpr [] () (.PEsym (a! 6789))) (.Pexpr [] () (.PEsym (a! 6788))) <|
                   .Pexpr
                     [.Astd "\xa76.5.3.2#4, sentence 4"]
                     ()
                     (.PEundef .unknown .UB043_indirection_invalid_value)),
                  (.Pattern
                     []
                     (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                   .Expr [] <| .Epure <|
                   .Pexpr
                     [.Astd "\xa76.5.3.2#4, sentence 4"]
                     ()
                     (.PEundef .unknown .UB043_indirection_invalid_value))]) <| .Expr [] <|
               .Eaction <| .Paction .Pos <| .Action .unknown () <|
               .Load0
                 (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                 .Pointer
                   (.mk .true .false .false)
                   (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                 (.Pexpr [] () (.PEsym (a! 6798)))
                 .NA,
               .Expr [.Aloc .unknown, .Aexpr] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6816), .BTy_object .OTy_pointer)))
                 (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.3.2"] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 6800), .BTy_loaded .OTy_pointer)))
                   (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.6"] <|
                   .Ewseq
                     (.Pattern [] <| .CaseCtor .Ctuple <|
                     [.Pattern [] (.CaseBase (.some (a! 6803), .BTy_loaded .OTy_pointer)),
                      .Pattern [] (.CaseBase (.some (a! 6805), .BTy_loaded .OTy_integer))])
                     (.Expr [] <| .Eunseq <|
                     [.Expr [.Aloc .unknown, .Aexpr] <|
                      .Ewseq
                        (.Pattern [] (.CaseBase (.some (a! 6808), .BTy_object .OTy_pointer)))
                        (.Expr
                          [.Aloc .unknown, .Aexpr]
                          (.Epure (.Pexpr [] () (.PEsym (addr! "kind_names" 5506))))) <|
                      .Expr [.Astd "\xa76.3.2.1#3"] <|
                      .Ewseq
                        (.Pattern [] (.CaseBase (.some (a! 6809), .BTy_object .OTy_pointer)))
                        (.Expr [] <| .Ememop .PtrArrayShift <|
                        [.Pexpr [] () (.PEsym (a! 6808)),
                         .Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                         .Pointer
                           (.mk .true .false .false)
                           (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))),
                         .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
                      .Expr [] <|
                      .Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 6809))])),
                      .Expr
                        [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Enum0 (c! "wgm_kind" 4873)))] <|
                      .Ewseq
                        (.Pattern [] (.CaseBase (.some (a! 6815), .BTy_object .OTy_pointer)))
                        (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.2.3#4, sentence 2"] <|
                        .Esseq
                          (.Pattern [] (.CaseBase (.some (a! 6810), .BTy_loaded .OTy_pointer)))
                          (.Expr [.Aloc .unknown, .Aexpr] <|
                          .Ewseq
                            (.Pattern [] (.CaseBase (.some (a! 6814), .BTy_object .OTy_pointer)))
                            (.Expr
                              [.Aloc .unknown, .Aexpr]
                              (.Epure (.Pexpr [] () (.PEsym (addr! "object" 5607))))) <| .Expr [] <|
                          .Eaction <| .Paction .Pos <| .Action .unknown () <|
                          .Load0
                            (.Pexpr [] () <| .PEval <| .Vctype <|
                            .Ctype
                              [.Aloc .unknown]
                              (.Pointer (.mk .false .false .false) Ty.struct_wgm_object))
                            (.Pexpr [] () (.PEsym (a! 6814)))
                            .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6810))) <|
                        [(.Pattern
                            []
                            (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                          .Expr [] <| .Epure <|
                          .Pexpr
                            []
                            ()
                            (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_memberofptr))),
                         (.Pattern [] <|
                          .CaseCtor
                            .Cspecified
                            [.Pattern [] (.CaseBase (.some (a! 6811), .BTy_object .OTy_pointer))],
                          .Expr [] <| .Epure <| .Pexpr [] () <|
                          .PEmember_shift
                            (.Pexpr [] () (.PEsym (a! 6811)))
                            (c! "wgm_object" 5498)
                            (.Identifier .unknown "kind"))]) <| .Expr [] <| .Eaction <|
                      .Paction .Pos <| .Action .unknown () <|
                      .Load0
                        (.Pexpr [] () <| .PEval <| .Vctype <|
                        .Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_kind" 4873)))))
                        (.Pexpr [] () (.PEsym (a! 6815)))
                        .NA]) <| .Expr [] <|
                   .Ecase
                     (.Pexpr [] () <|
                     .PEctor
                       .Ctuple
                       [.Pexpr [] () (.PEsym (a! 6803)), .Pexpr [] () (.PEsym (a! 6805))]) <|
                   [(.Pattern [] <| .CaseCtor .Ctuple <|
                     [.Pattern [] <|
                      .CaseCtor
                        .Cspecified
                        [.Pattern [] (.CaseBase (.some (a! 6804), .BTy_object .OTy_pointer))],
                      .Pattern [] <|
                      .CaseCtor
                        .Cspecified
                        [.Pattern [] (.CaseBase (.some (a! 6806), .BTy_object .OTy_integer))]],
                     .Expr [] <|
                     .Ewseq
                       (.Pattern [] (.CaseBase (.some (a! 6807), .BTy_object .OTy_pointer)))
                       (.Expr [] <| .Ememop .PtrArrayShift <|
                       [.Pexpr [] () (.PEsym (a! 6804)),
                        .Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                        .Pointer
                          (.mk .true .false .false)
                          (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))),
                        .Pexpr [] () (.PEsym (a! 6806))]) <|
                     .Expr
                       []
                       (.Epure
                         (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 6807))])))),
                    (.Pattern [] <|
                     .CaseBase
                       (.none, .BTy_tuple [.BTy_loaded .OTy_pointer, .BTy_loaded .OTy_integer]),
                     .Expr [] <| .Epure <|
                     .Pexpr
                       []
                       ()
                       (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_pointer_add)))]) <|
                 .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6800))) <|
                 [(.Pattern [] <|
                   .CaseCtor
                     .Cspecified
                     [.Pattern [] (.CaseBase (.some (a! 6801), .BTy_object .OTy_pointer))],
                   .Expr [] <|
                   .Ewseq
                     (.Pattern [] (.CaseBase (.some (a! 6802), .BTy_boolean)))
                     (.Expr [] <| .Ememop .PtrValidForDeref <|
                     [.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                      .Pointer
                        (.mk .true .false .false)
                        (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))),
                      .Pexpr [] () (.PEsym (a! 6801))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
                   .PEif (.Pexpr [] () (.PEsym (a! 6802))) (.Pexpr [] () (.PEsym (a! 6801))) <|
                   .Pexpr
                     [.Astd "\xa76.5.3.2#4, sentence 4"]
                     ()
                     (.PEundef .unknown .UB043_indirection_invalid_value)),
                  (.Pattern
                     []
                     (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                   .Expr [] <| .Epure <|
                   .Pexpr
                     [.Astd "\xa76.5.3.2#4, sentence 4"]
                     ()
                     (.PEundef .unknown .UB043_indirection_invalid_value))]) <| .Expr [] <|
               .Eaction <| .Paction .Pos <| .Action .unknown () <|
               .Load0
                 (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                 .Pointer
                   (.mk .true .false .false)
                   (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                 (.Pexpr [] () (.PEsym (a! 6816)))
                 .NA]) <| .Expr [] <|
            .Eif
              (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
              .PEop
                .OpLe
                (.Pexpr [] () <|
                .PEcall
                  (.Sym (rt! "params_length" 18299737999929047716))
                  [.Pexpr [] () (.PEsym (a! 6776))])
                (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 3))))))
              (.Expr [] <| .Epure <|
              .Pexpr
                [.Astd "\xa76.5.2.2#6, sentence 3"]
                ()
                (.PEundef .unknown .UB038_number_of_args)) <| .Expr [] <|
            .Eif
              (.Pexpr [] () <|
              .PEop .OpOr (.Pexpr [] () (.PEnot (.Pexpr [] () (.PEsym (a! 6777))))) <|
              .Pexpr [] () <| .PEnot <| .Pexpr [] () <|
              .PEare_compatible
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype
                  [.Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown]
                  (.Basic (.Integer (.Signed .Int_))))
                (.Pexpr [] () (.PEsym (a! 6775))))
              (.Expr [] <|
              .Epure
                (.Pexpr
                  [.Astd "\xa76.5.2.2#9"]
                  ()
                  (.PEundef .unknown .UB041_function_not_compatible))) <| .Expr [] <|
            .Esseq
              (.Pattern [] <|
              .CaseBase
                (.some (sym.Symbol Src.digest 6779 (.SD_FunArg .unknown 0)),
                 .BTy_object .OTy_pointer))
              (.Expr [] <|
              .Elet
                (.Pattern [] (.CaseBase (.some (a! 6817), .BTy_ctype)))
                (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                [.Pexpr [] () (.PEsym (a! 6776)),
                 .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
              .Eif
                (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                .PEare_compatible
                  (.Pexpr [] () <| .PEval <| .Vctype <|
                  .Ctype
                    [.Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                  .Ctype
                    [.Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown]
                    (.Basic (.Integer .Char0)))
                  (.Pexpr [] () (.PEsym (a! 6817))))
                (.Expr [] <| .Epure <|
                .Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible)) <|
              .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6818), .BTy_object .OTy_pointer)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Create
                  (.Pexpr [] () <| .PEctor .Civalignof <|
                  [.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype
                     [.Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                   .Ctype
                     [.Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown]
                     (.Basic (.Integer .Char0))])
                  (.Pexpr [] () <| .PEval <| .Vctype <|
                  .Ctype
                    [.Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                  .Ctype
                    [.Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown]
                    (.Basic (.Integer .Char0)))
                  (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <| .Expr [] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Store0
                  .false
                  (.Pexpr [] () <| .PEval <| .Vctype <|
                  .Ctype
                    [.Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                  .Ctype
                    [.Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown,
                     .Aloc .unknown]
                    (.Basic (.Integer .Char0)))
                  (.Pexpr [] () (.PEsym (a! 6818)))
                  (.Pexpr [] () (.PEsym (a! 6782)))
                  .NA)
                (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6818)))))) <| .Expr [] <|
            .Esseq
              (.Pattern [] <|
              .CaseBase
                (.some (sym.Symbol Src.digest 6780 (.SD_FunArg .unknown 1)),
                 .BTy_object .OTy_pointer))
              (.Expr [.Astd "\xa76.5.2.2#7, sentences 2 and 3"] <|
              .Eproc () (.Sym (rt! "create_and_store" 14023013563394908458)) <|
              [.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
               .Pointer
                 (.mk .true .false .false)
                 (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))),
               .Pexpr [] () (.PEsym (a! 6786))]) <| .Expr [] <|
            .Esseq
              (.Pattern [] <|
              .CaseBase
                (.some (sym.Symbol Src.digest 6781 (.SD_FunArg .unknown 2)),
                 .BTy_object .OTy_pointer))
              (.Expr [.Astd "\xa76.5.2.2#7, sentences 2 and 3"] <|
              .Eproc () (.Sym (rt! "create_and_store" 14023013563394908458)) <|
              [.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
               .Pointer
                 (.mk .true .false .false)
                 (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))),
               .Pexpr [] () (.PEsym (a! 6799))]) <| .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.some (a! 6819), .BTy_loaded .OTy_integer)))
              (.Expr [] <|
              .Eccall
                ()
                (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                .Pointer (.mk .false .false .false) <| .Ctype [] <|
                .Function
                  (.mk .false .false .false,
                   .Ctype
                     [.Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown]
                     (.Basic (.Integer (.Signed .Int_))))
                  [(.mk .false .false .false,
                    (.Ctype
                       [.Aloc .unknown,
                        .Aloc .unknown,
                        .Aloc .unknown,
                        .Aloc .unknown,
                        .Aloc .unknown,
                        .Aloc .unknown,
                        .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                     .Ctype
                       [.Aloc .unknown,
                        .Aloc .unknown,
                        .Aloc .unknown,
                        .Aloc .unknown,
                        .Aloc .unknown,
                        .Aloc .unknown,
                        .Aloc .unknown]
                       (.Basic (.Integer .Char0)),
                     .false))]
                  .true)
                (.Pexpr [] () (.PEsym (a! 6774))) <|
              [.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6779 (.SD_FunArg .unknown 0))),
               .Pexpr [] () <| .PEctor .Ccons <|
               [.Pexpr [] () <| .PEctor .Ctuple <|
                [.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                 .Pointer
                   (.mk .true .false .false)
                   (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))),
                 .Pexpr [] () (.PEsym (sym.Symbol Src.digest 6780 (.SD_FunArg .unknown 1)))],
                .Pexpr [] () <| .PEctor .Ccons <|
                [.Pexpr [] () <| .PEctor .Ctuple <|
                 [.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                  .Pointer
                    (.mk .true .false .false)
                    (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))),
                  .Pexpr [] () (.PEsym (sym.Symbol Src.digest 6781 (.SD_FunArg .unknown 2)))],
                 .Pexpr
                   []
                   ()
                   (.PEctor (.Cnil (.BTy_tuple [.BTy_ctype, .BTy_object .OTy_pointer])) [])]]]) <|
            .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit, .BTy_unit])))
              (.Expr [] <| .Eunseq <|
              [.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
               .Kill
                 (.Static0 <|
                 .Ctype
                   [.Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                 .Ctype
                   [.Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown]
                   (.Basic (.Integer .Char0)))
                 (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6779 (.SD_FunArg .unknown 0)))),
               .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
               .Kill
                 (.Static0 <| .Ctype [.Aloc .unknown] <|
                 .Pointer
                   (.mk .true .false .false)
                   (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                 (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6780 (.SD_FunArg .unknown 1)))),
               .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
               .Kill
                 (.Static0 <| .Ctype [.Aloc .unknown] <|
                 .Pointer
                   (.mk .true .false .false)
                   (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                 (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6781 (.SD_FunArg .unknown 2))))])
              (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6819))))))
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc .unknown, .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
            .Esseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] <| .CaseCtor .Ctuple <|
               [.Pattern [] (.CaseBase (.some (a! 6821), .BTy_loaded .OTy_pointer)),
                .Pattern [] <| .CaseCtor .Ctuple <|
                [.Pattern [] (.CaseBase (.some (a! 6822), .BTy_ctype)),
                 .Pattern [] (.CaseBase (.some (a! 6823), .BTy_list .BTy_ctype)),
                 .Pattern [] (.CaseBase (.some (a! 6824), .BTy_boolean)),
                 .Pattern [] (.CaseBase (.some (a! 6825), .BTy_boolean))]],
               .Pattern [] (.CaseBase (.some (a! 6828), .BTy_loaded .OTy_pointer)),
               .Pattern [] (.CaseBase (.some (a! 6832), .BTy_loaded .OTy_integer))])
              (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
              [.Expr [] <|
               .Esseq
                 (.Pattern [] (.CaseBase (.some (a! 6820), .BTy_loaded .OTy_pointer)))
                 (.Expr [.Aloc .unknown, .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <| .Vloaded <|
                 .LVspecified
                   (.OVpointer (.PV .Prov_none (.PVfunction (c! "memory_violation" 5530))))) <|
               .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
               [.Pexpr [] () (.PEsym (a! 6820)),
                .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 6820))))],
               .Expr [.Aloc .unknown, .Aexpr] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6830), .BTy_object .OTy_pointer)))
                 (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (a! 6829))))) <|
               .Expr [.Astd "\xa76.3.2.1#3"] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6831), .BTy_object .OTy_pointer)))
                 (.Expr [] <| .Ememop .PtrArrayShift <|
                 [.Pexpr [] () (.PEsym (a! 6830)),
                  .Pexpr [] () (.PEval (.Vctype Ty.char)),
                  .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
               .Expr
                 []
                 (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 6831))]))),
               .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .Long))] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6838), .BTy_object .OTy_pointer)))
                 (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.2.3#4, sentence 2"] <|
                 .Esseq
                   (.Pattern [] (.CaseBase (.some (a! 6833), .BTy_loaded .OTy_pointer)))
                   (.Expr [.Aloc .unknown, .Aexpr] <|
                   .Ewseq
                     (.Pattern [] (.CaseBase (.some (a! 6837), .BTy_object .OTy_pointer)))
                     (.Expr
                       [.Aloc .unknown, .Aexpr]
                       (.Epure (.Pexpr [] () (.PEsym (addr! "object" 5607))))) <| .Expr [] <|
                   .Eaction <| .Paction .Pos <| .Action .unknown () <|
                   .Load0
                     (.Pexpr [] () <| .PEval <| .Vctype <|
                     .Ctype
                       [.Aloc .unknown]
                       (.Pointer (.mk .false .false .false) Ty.struct_wgm_object))
                     (.Pexpr [] () (.PEsym (a! 6837)))
                     .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6833))) <|
                 [(.Pattern
                     []
                     (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                   .Expr [] <| .Epure <|
                   .Pexpr [] () (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_memberofptr))),
                  (.Pattern [] <|
                   .CaseCtor
                     .Cspecified
                     [.Pattern [] (.CaseBase (.some (a! 6834), .BTy_object .OTy_pointer))],
                   .Expr [] <| .Epure <| .Pexpr [] () <|
                   .PEmember_shift
                     (.Pexpr [] () (.PEsym (a! 6834)))
                     (c! "wgm_object" 5498)
                     (.Identifier .unknown "id"))]) <| .Expr [] <| .Eaction <| .Paction .Pos <|
               .Action .unknown () <|
               .Load0
                 (.Pexpr
                   []
                   ()
                   (.PEval
                     (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
                 (.Pexpr [] () (.PEsym (a! 6838)))
                 .NA]) <| .Expr [] <|
            .Eif
              (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
              .PEop
                .OpEq
                (.Pexpr [] () <|
                .PEcall
                  (.Sym (rt! "params_length" 18299737999929047716))
                  [.Pexpr [] () (.PEsym (a! 6823))])
                (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))))
              (.Expr [] <| .Epure <|
              .Pexpr
                [.Astd "\xa76.5.2.2#6, sentence 3"]
                ()
                (.PEundef .unknown .UB038_number_of_args)) <| .Expr [] <|
            .Eif
              (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 6824))) <| .Pexpr [] () <|
              .PEnot <| .Pexpr [] () <|
              .PEare_compatible
                (.Pexpr [] () (.PEval (.Vctype (.Ctype [.Aloc .unknown] .Void0))))
                (.Pexpr [] () (.PEsym (a! 6822))))
              (.Expr [] <|
              .Epure
                (.Pexpr
                  [.Astd "\xa76.5.2.2#9"]
                  ()
                  (.PEundef .unknown .UB041_function_not_compatible))) <| .Expr [] <|
            .Esseq
              (.Pattern [] <|
              .CaseBase
                (.some (sym.Symbol Src.digest 6826 (.SD_FunArg .unknown 0)),
                 .BTy_object .OTy_pointer))
              (.Expr [] <|
              .Elet
                (.Pattern [] (.CaseBase (.some (a! 6839), .BTy_ctype)))
                (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                [.Pexpr [] () (.PEsym (a! 6823)),
                 .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
              .Eif
                (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                .PEare_compatible
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                  .Pointer
                    (.mk .true .false .false)
                    (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                  (.Pexpr [] () (.PEsym (a! 6839))))
                (.Expr [] <| .Epure <|
                .Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible)) <|
              .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6840), .BTy_object .OTy_pointer)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Create
                  (.Pexpr [] () <| .PEctor .Civalignof <|
                  [.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                   .Pointer
                     (.mk .true .false .false)
                     (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0)))])
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                  .Pointer
                    (.mk .true .false .false)
                    (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                  (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <| .Expr [] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Store0
                  .false
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                  .Pointer
                    (.mk .true .false .false)
                    (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                  (.Pexpr [] () (.PEsym (a! 6840)))
                  (.Pexpr [] () (.PEsym (a! 6828)))
                  .NA)
                (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6840)))))) <| .Expr [] <|
            .Esseq
              (.Pattern [] <|
              .CaseBase
                (.some (sym.Symbol Src.digest 6827 (.SD_FunArg .unknown 1)),
                 .BTy_object .OTy_pointer))
              (.Expr [] <|
              .Elet
                (.Pattern [] (.CaseBase (.some (a! 6841), .BTy_ctype)))
                (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                [.Pexpr [] () (.PEsym (a! 6823)),
                 .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <| .Expr [] <|
              .Eif
                (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                .PEare_compatible
                  (.Pexpr
                    []
                    ()
                    (.PEval
                      (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
                  (.Pexpr [] () (.PEsym (a! 6841))))
                (.Expr [] <| .Epure <|
                .Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible)) <|
              .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6842), .BTy_object .OTy_pointer)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Create
                  (.Pexpr [] () <| .PEctor .Civalignof <|
                  [.Pexpr [] () <|
                   .PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))])
                  (.Pexpr
                    []
                    ()
                    (.PEval
                      (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
                  (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 1)) <| .Expr [] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Store0
                  .false
                  (.Pexpr
                    []
                    ()
                    (.PEval
                      (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
                  (.Pexpr [] () (.PEsym (a! 6842)))
                  (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                  [.Pexpr [] () <|
                   .PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))),
                   .Pexpr [] () (.PEsym (a! 6832))])
                  .NA)
                (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6842)))))) <| .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.some (a! 6843), .BTy_unit)))
              (.Expr [.Astd "\xa76.5.16.1#1, bullet 1"] <|
              .Eccall
                ()
                (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                .Pointer (.mk .false .false .false) <| .Ctype [] <|
                .Function
                  (.mk .false .false .false, .Ctype [.Aloc .unknown] .Void0)
                  [(.mk .false .false .false,
                    (.Ctype [.Aloc .unknown] <|
                     .Pointer
                       (.mk .true .false .false)
                       (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))),
                     .false)),
                   (.mk .false .false .false,
                    (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))), .false))]
                  .false)
                (.Pexpr [] () (.PEsym (a! 6821))) <|
              [.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6826 (.SD_FunArg .unknown 0))),
               .Pexpr [] () (.PEsym (sym.Symbol Src.digest 6827 (.SD_FunArg .unknown 1)))]) <|
            .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit])))
              (.Expr [] <| .Eunseq <|
              [.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
               .Kill
                 (.Static0 <| .Ctype [.Aloc .unknown] <|
                 .Pointer
                   (.mk .true .false .false)
                   (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                 (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6826 (.SD_FunArg .unknown 0)))),
               .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
               .Kill
                 (.Static0 (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))
                 (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6827 (.SD_FunArg .unknown 1))))])
              (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6843))))))
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc .unknown, .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
            .Kill
              (.Static0
                (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_object)))
              (.Pexpr [] () (.PEsym (addr! "object" 5607)))) <| .Expr [] <|
          .Erun () (c! "ret_6689" 6689) <|
          [.Pexpr [] () <| .PEctor .Cspecified <|
           [.Pexpr [] () <| .PEval <| .Vobject <| .OVpointer <| .PV .Prov_none <| .PVnull <|
            .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_object)]])
          (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
        (.Expr [.Aloc .unknown, .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6845), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.some (a! 6863), .BTy_loaded .OTy_pointer)))
          (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
          .Esseq
            (.Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] (.CaseBase (.some (a! 6848), .BTy_loaded .OTy_pointer)),
              .Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] (.CaseBase (.some (a! 6849), .BTy_ctype)),
               .Pattern [] (.CaseBase (.some (a! 6850), .BTy_list .BTy_ctype)),
               .Pattern [] (.CaseBase (.some (a! 6851), .BTy_boolean)),
               .Pattern [] (.CaseBase (.some (a! 6852), .BTy_boolean))]],
             .Pattern [] (.CaseBase (.some (a! 6855), .BTy_loaded .OTy_integer)),
             .Pattern [] (.CaseBase (.some (a! 6856), .BTy_loaded .OTy_pointer))])
            (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
            [.Expr [] <|
             .Esseq
               (.Pattern [] (.CaseBase (.some (a! 6847), .BTy_loaded .OTy_pointer)))
               (.Expr [.Aloc .unknown, .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <| .Vloaded <|
               .LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "find_deferred" 5575))))) <|
             .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
             [.Pexpr [] () (.PEsym (a! 6847)),
              .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 6847))))],
             .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
             .Epure
               (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1)))))),
             .Expr [.Aloc .unknown, .Aexpr] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 6857), .BTy_object .OTy_pointer)))
               (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (addr! "base" 5603))))) <|
             .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
             .Load0
               (.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc .unknown]
                 (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] .Void0)))
               (.Pexpr [] () (.PEsym (a! 6857)))
               .NA]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () <|
              .PEcall
                (.Sym (rt! "params_length" 18299737999929047716))
                [.Pexpr [] () (.PEsym (a! 6850))])
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))))
            (.Expr [] <| .Epure <|
            .Pexpr [.Astd "\xa76.5.2.2#6, sentence 3"] () (.PEundef .unknown .UB038_number_of_args)) <|
          .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 6851))) <| .Pexpr [] () <|
            .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_deferred))
              (.Pexpr [] () (.PEsym (a! 6849))))
            (.Expr [] <|
            .Epure
              (.Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible))) <|
          .Expr [] <|
          .Esseq
            (.Pattern [] <|
            .CaseBase
              (.some (sym.Symbol Src.digest 6853 (.SD_FunArg .unknown 0)), .BTy_object .OTy_pointer))
            (.Expr [] <|
            .Elet
              (.Pattern [] (.CaseBase (.some (a! 6858), .BTy_ctype)))
              (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
              [.Pexpr [] () (.PEsym (a! 6850)),
               .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
            .Eif
              (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
              .PEare_compatible
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_deferred_kind" 5499)))))
                (.Pexpr [] () (.PEsym (a! 6858))))
              (.Expr [] <|
              .Epure
                (.Pexpr
                  [.Astd "\xa76.5.2.2#9"]
                  ()
                  (.PEundef .unknown .UB041_function_not_compatible))) <|
            .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.some (a! 6859), .BTy_object .OTy_pointer)))
              (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
              .Create
                (.Pexpr [] () <| .PEctor .Civalignof <|
                [.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_deferred_kind" 5499))))])
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_deferred_kind" 5499)))))
                (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <| .Expr [] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
              .Store0
                .false
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_deferred_kind" 5499)))))
                (.Pexpr [] () (.PEsym (a! 6859)))
                (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                [.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_deferred_kind" 5499)))),
                 .Pexpr [] () (.PEsym (a! 6855))])
                .NA)
              (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6859)))))) <| .Expr [] <|
          .Esseq
            (.Pattern [] <|
            .CaseBase
              (.some (sym.Symbol Src.digest 6854 (.SD_FunArg .unknown 1)), .BTy_object .OTy_pointer))
            (.Expr [] <|
            .Elet
              (.Pattern [] (.CaseBase (.some (a! 6860), .BTy_ctype)))
              (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
              [.Pexpr [] () (.PEsym (a! 6850)),
               .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <| .Expr [] <|
            .Eif
              (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
              .PEare_compatible
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype
                  [.Aloc .unknown]
                  (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] .Void0)))
                (.Pexpr [] () (.PEsym (a! 6860))))
              (.Expr [] <|
              .Epure
                (.Pexpr
                  [.Astd "\xa76.5.2.2#9"]
                  ()
                  (.PEundef .unknown .UB041_function_not_compatible))) <|
            .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.some (a! 6861), .BTy_object .OTy_pointer)))
              (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
              .Create
                (.Pexpr [] () <| .PEctor .Civalignof <|
                [.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype
                   [.Aloc .unknown]
                   (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] .Void0))])
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype
                  [.Aloc .unknown]
                  (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] .Void0)))
                (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 1)) <| .Expr [] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
              .Store0
                .false
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype
                  [.Aloc .unknown]
                  (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] .Void0)))
                (.Pexpr [] () (.PEsym (a! 6861)))
                (.Pexpr [] () (.PEsym (a! 6856)))
                .NA)
              (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6861)))))) <| .Expr [] <|
          .Esseq
            (.Pattern [] (.CaseBase (.some (a! 6862), .BTy_loaded .OTy_pointer)))
            (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
            .Eccall
              ()
              (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
              .Pointer (.mk .false .false .false) <| .Ctype [] <|
              .Function
                (.mk .false .false .false,
                 .Ctype
                   [.Aloc .unknown]
                   (.Pointer (.mk .false .false .false) Ty.struct_wgm_deferred))
                [(.mk .false .false .false,
                  (.Ctype
                     [.Aloc .unknown]
                     (.Basic (.Integer (.Enum0 (c! "wgm_deferred_kind" 5499)))),
                   .false)),
                 (.mk .false .false .false,
                  (.Ctype
                     [.Aloc .unknown]
                     (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] .Void0)),
                   .false))]
                .false)
              (.Pexpr [] () (.PEsym (a! 6848))) <|
            [.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6853 (.SD_FunArg .unknown 0))),
             .Pexpr [] () (.PEsym (sym.Symbol Src.digest 6854 (.SD_FunArg .unknown 1)))]) <|
          .Expr [] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit])))
            (.Expr [] <| .Eunseq <|
            [.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
             .Kill
               (.Static0
                 (.Ctype
                   [.Aloc .unknown]
                   (.Basic (.Integer (.Enum0 (c! "wgm_deferred_kind" 5499))))))
               (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6853 (.SD_FunArg .unknown 0)))),
             .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
             .Kill
               (.Static0 <|
               .Ctype
                 [.Aloc .unknown]
                 (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] .Void0)))
               (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6854 (.SD_FunArg .unknown 1))))])
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6862)))))) <| .Expr [] <|
        .Ecase (.Pexpr [] () (.PEsym (a! 6863))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 6864), .BTy_object .OTy_pointer))],
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 6865), .BTy_boolean)))
            (.Expr [] <| .Ememop .PtrEq <|
            [.Pexpr [] () (.PEsym (a! 6864)),
             .Pexpr [.Astd "\xa76.5.9#5, sentence 2"] () <| .PEval <| .Vobject <| .OVpointer <|
             .PV .Prov_none <|
             .PVnull
               (.Ctype
                 [.Aloc .unknown]
                 (.Pointer (.mk .false .false .false) Ty.struct_wgm_deferred))]) <|
          .Expr [.Astd "\xa76.5.9#3"] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () (.PEsym (a! 6865)))
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
          .Expr [] <| .Epure <|
          .Pexpr [] () (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_equality_ptr_vs_NULL)))]) <|
      .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6844), .BTy_boolean)))
        (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6845))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 6846), .BTy_object .OTy_integer))],
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 6846)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
            (.Pexpr [] () (.PEval .Vtrue))
            (.Pexpr [] () (.PEval .Vfalse))),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <| .End <|
          [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
           .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
      .Eif
        (.Pexpr [] () (.PEsym (a! 6844)))
        (.Expr [.Aloc .unknown, .Astmt] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc .unknown, .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
            .Esseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] <| .CaseCtor .Ctuple <|
               [.Pattern [] (.CaseBase (.some (a! 6867), .BTy_loaded .OTy_pointer)),
                .Pattern [] <| .CaseCtor .Ctuple <|
                [.Pattern [] (.CaseBase (.some (a! 6868), .BTy_ctype)),
                 .Pattern [] (.CaseBase (.some (a! 6869), .BTy_list .BTy_ctype)),
                 .Pattern [] (.CaseBase (.some (a! 6870), .BTy_boolean)),
                 .Pattern [] (.CaseBase (.some (a! 6871), .BTy_boolean))]],
               .Pattern [] (.CaseBase (.some (a! 6874), .BTy_loaded .OTy_pointer)),
               .Pattern [] (.CaseBase (.some (a! 6878), .BTy_loaded .OTy_integer))])
              (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
              [.Expr [] <|
               .Esseq
                 (.Pattern [] (.CaseBase (.some (a! 6866), .BTy_loaded .OTy_pointer)))
                 (.Expr [.Aloc .unknown, .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <| .Vloaded <|
                 .LVspecified
                   (.OVpointer (.PV .Prov_none (.PVfunction (c! "memory_violation" 5530))))) <|
               .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
               [.Pexpr [] () (.PEsym (a! 6866)),
                .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 6866))))],
               .Expr [.Aloc .unknown, .Aexpr] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6876), .BTy_object .OTy_pointer)))
                 (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (a! 6875))))) <|
               .Expr [.Astd "\xa76.3.2.1#3"] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6877), .BTy_object .OTy_pointer)))
                 (.Expr [] <| .Ememop .PtrArrayShift <|
                 [.Pexpr [] () (.PEsym (a! 6876)),
                  .Pexpr [] () (.PEval (.Vctype Ty.char)),
                  .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
               .Expr
                 []
                 (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 6877))]))),
               .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .Long))] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6884), .BTy_object .OTy_pointer)))
                 (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.2.3#4, sentence 2"] <|
                 .Esseq
                   (.Pattern [] (.CaseBase (.some (a! 6879), .BTy_loaded .OTy_pointer)))
                   (.Expr [.Aloc .unknown, .Aexpr] <|
                   .Ewseq
                     (.Pattern [] (.CaseBase (.some (a! 6883), .BTy_object .OTy_pointer)))
                     (.Expr
                       [.Aloc .unknown, .Aexpr]
                       (.Epure (.Pexpr [] () (.PEsym (addr! "object" 5607))))) <| .Expr [] <|
                   .Eaction <| .Paction .Pos <| .Action .unknown () <|
                   .Load0
                     (.Pexpr [] () <| .PEval <| .Vctype <|
                     .Ctype
                       [.Aloc .unknown]
                       (.Pointer (.mk .false .false .false) Ty.struct_wgm_object))
                     (.Pexpr [] () (.PEsym (a! 6883)))
                     .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6879))) <|
                 [(.Pattern
                     []
                     (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                   .Expr [] <| .Epure <|
                   .Pexpr [] () (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_memberofptr))),
                  (.Pattern [] <|
                   .CaseCtor
                     .Cspecified
                     [.Pattern [] (.CaseBase (.some (a! 6880), .BTy_object .OTy_pointer))],
                   .Expr [] <| .Epure <| .Pexpr [] () <|
                   .PEmember_shift
                     (.Pexpr [] () (.PEsym (a! 6880)))
                     (c! "wgm_object" 5498)
                     (.Identifier .unknown "id"))]) <| .Expr [] <| .Eaction <| .Paction .Pos <|
               .Action .unknown () <|
               .Load0
                 (.Pexpr
                   []
                   ()
                   (.PEval
                     (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
                 (.Pexpr [] () (.PEsym (a! 6884)))
                 .NA]) <| .Expr [] <|
            .Eif
              (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
              .PEop
                .OpEq
                (.Pexpr [] () <|
                .PEcall
                  (.Sym (rt! "params_length" 18299737999929047716))
                  [.Pexpr [] () (.PEsym (a! 6869))])
                (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))))
              (.Expr [] <| .Epure <|
              .Pexpr
                [.Astd "\xa76.5.2.2#6, sentence 3"]
                ()
                (.PEundef .unknown .UB038_number_of_args)) <| .Expr [] <|
            .Eif
              (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 6870))) <| .Pexpr [] () <|
              .PEnot <| .Pexpr [] () <|
              .PEare_compatible
                (.Pexpr [] () (.PEval (.Vctype (.Ctype [.Aloc .unknown] .Void0))))
                (.Pexpr [] () (.PEsym (a! 6868))))
              (.Expr [] <|
              .Epure
                (.Pexpr
                  [.Astd "\xa76.5.2.2#9"]
                  ()
                  (.PEundef .unknown .UB041_function_not_compatible))) <| .Expr [] <|
            .Esseq
              (.Pattern [] <|
              .CaseBase
                (.some (sym.Symbol Src.digest 6872 (.SD_FunArg .unknown 0)),
                 .BTy_object .OTy_pointer))
              (.Expr [] <|
              .Elet
                (.Pattern [] (.CaseBase (.some (a! 6885), .BTy_ctype)))
                (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                [.Pexpr [] () (.PEsym (a! 6869)),
                 .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
              .Eif
                (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                .PEare_compatible
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                  .Pointer
                    (.mk .true .false .false)
                    (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                  (.Pexpr [] () (.PEsym (a! 6885))))
                (.Expr [] <| .Epure <|
                .Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible)) <|
              .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6886), .BTy_object .OTy_pointer)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Create
                  (.Pexpr [] () <| .PEctor .Civalignof <|
                  [.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                   .Pointer
                     (.mk .true .false .false)
                     (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0)))])
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                  .Pointer
                    (.mk .true .false .false)
                    (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                  (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <| .Expr [] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Store0
                  .false
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                  .Pointer
                    (.mk .true .false .false)
                    (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                  (.Pexpr [] () (.PEsym (a! 6886)))
                  (.Pexpr [] () (.PEsym (a! 6874)))
                  .NA)
                (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6886)))))) <| .Expr [] <|
            .Esseq
              (.Pattern [] <|
              .CaseBase
                (.some (sym.Symbol Src.digest 6873 (.SD_FunArg .unknown 1)),
                 .BTy_object .OTy_pointer))
              (.Expr [] <|
              .Elet
                (.Pattern [] (.CaseBase (.some (a! 6887), .BTy_ctype)))
                (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                [.Pexpr [] () (.PEsym (a! 6869)),
                 .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <| .Expr [] <|
              .Eif
                (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                .PEare_compatible
                  (.Pexpr
                    []
                    ()
                    (.PEval
                      (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
                  (.Pexpr [] () (.PEsym (a! 6887))))
                (.Expr [] <| .Epure <|
                .Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible)) <|
              .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6888), .BTy_object .OTy_pointer)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Create
                  (.Pexpr [] () <| .PEctor .Civalignof <|
                  [.Pexpr [] () <|
                   .PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))])
                  (.Pexpr
                    []
                    ()
                    (.PEval
                      (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
                  (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 1)) <| .Expr [] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Store0
                  .false
                  (.Pexpr
                    []
                    ()
                    (.PEval
                      (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
                  (.Pexpr [] () (.PEsym (a! 6888)))
                  (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                  [.Pexpr [] () <|
                   .PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))),
                   .Pexpr [] () (.PEsym (a! 6878))])
                  .NA)
                (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6888)))))) <| .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.some (a! 6889), .BTy_unit)))
              (.Expr [.Astd "\xa76.5.16.1#1, bullet 1"] <|
              .Eccall
                ()
                (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                .Pointer (.mk .false .false .false) <| .Ctype [] <|
                .Function
                  (.mk .false .false .false, .Ctype [.Aloc .unknown] .Void0)
                  [(.mk .false .false .false,
                    (.Ctype [.Aloc .unknown] <|
                     .Pointer
                       (.mk .true .false .false)
                       (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))),
                     .false)),
                   (.mk .false .false .false,
                    (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))), .false))]
                  .false)
                (.Pexpr [] () (.PEsym (a! 6867))) <|
              [.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6872 (.SD_FunArg .unknown 0))),
               .Pexpr [] () (.PEsym (sym.Symbol Src.digest 6873 (.SD_FunArg .unknown 1)))]) <|
            .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit])))
              (.Expr [] <| .Eunseq <|
              [.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
               .Kill
                 (.Static0 <| .Ctype [.Aloc .unknown] <|
                 .Pointer
                   (.mk .true .false .false)
                   (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                 (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6872 (.SD_FunArg .unknown 0)))),
               .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
               .Kill
                 (.Static0 (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))
                 (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6873 (.SD_FunArg .unknown 1))))])
              (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6889))))))
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc .unknown, .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
            .Kill
              (.Static0
                (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_object)))
              (.Pexpr [] () (.PEsym (addr! "object" 5607)))) <| .Expr [] <|
          .Erun () (c! "ret_6689" 6689) <|
          [.Pexpr [] () <| .PEctor .Cspecified <|
           [.Pexpr [] () <| .PEval <| .Vobject <| .OVpointer <| .PV .Prov_none <| .PVnull <|
            .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_object)]])
          (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
        (.Expr [.Aloc .unknown, .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6891), .BTy_loaded .OTy_pointer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <| .Expr [.Aloc .unknown, .Aexpr] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.some (a! 6890), .BTy_object .OTy_pointer)))
          (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (addr! "object" 5607))))) <|
        .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
        .Load0
          (.Pexpr [] () <| .PEval <| .Vctype <|
          .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_object))
          (.Pexpr [] () (.PEsym (a! 6890)))
          .NA) <| .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
        .Kill
          (.Static0
            (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_object)))
          (.Pexpr [] () (.PEsym (addr! "object" 5607))))
        (.Expr [] (.Erun () (c! "ret_6689" 6689) [.Pexpr [] () (.PEsym (a! 6891))]))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
      .Kill
        (.Static0
          (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_object)))
        (.Pexpr [] () (.PEsym (addr! "object" 5607))))
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc .unknown] <|
  .Esave
    (c! "ret_6689" 6689, .BTy_loaded .OTy_pointer)
    [(a! 6892,
      ((.BTy_loaded .OTy_pointer,
        .some <|
        (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_object),
         .By_value)),
       .Pexpr [.Astd "\xa76.9.1#12"] () (.PEundef .unknown .UB088_reached_end_of_function)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6892)))))

/-- `void defer(enum wgm_deferred_kind kind, void *target)` -/
def defer : Procedure :=
  .Proc
    .unknown
    (.some 5681)
    .BTy_unit
    [(addr! "kind" 5678, .BTy_object .OTy_pointer), (addr! "target" 5679, .BTy_object .OTy_pointer)] <|
  .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc .unknown, .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.some (addr! "entry" 5682), .BTy_object .OTy_pointer)))
      (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
      .Create
        (.Pexpr [] () <| .PEctor .Civalignof <|
        [.Pexpr [] () <| .PEval <| .Vctype <|
         .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_deferred)])
        (.Pexpr [] () <| .PEval <| .Vctype <|
        .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_deferred))
        (.PrefSource .unknown [c! "defer" 5680, addr! "entry" 5682])) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6629), .BTy_loaded .OTy_pointer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
        .Esseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <| .CaseCtor .Ctuple <|
           [.Pattern [] (.CaseBase (.some (a! 6631), .BTy_loaded .OTy_pointer)),
            .Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 6632), .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 6633), .BTy_list .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 6634), .BTy_boolean)),
             .Pattern [] (.CaseBase (.some (a! 6635), .BTy_boolean))]],
           .Pattern [] (.CaseBase (.some (a! 6637), .BTy_loaded .OTy_integer))])
          (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
          [.Expr [] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 6630), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc .unknown, .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <| .Vloaded <|
             .LVspecified
               (.OVpointer (.PV .Prov_none (.PVfunction (rt! "malloc_proxy" 9694632360768094044))))) <|
           .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
           [.Pexpr [] () (.PEsym (a! 6630)),
            .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 6630))))],
           .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger .Size_t)] <| .Epure <| .Pexpr [] () <|
           .PEctor .Cspecified <|
           [.Pexpr
              []
              ()
              (.PEctor .Civsizeof [.Pexpr [] () (.PEval (.Vctype Ty.struct_wgm_deferred))])]]) <|
        .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
          .PEop
            .OpEq
            (.Pexpr [] () <|
            .PEcall
              (.Sym (rt! "params_length" 18299737999929047716))
              [.Pexpr [] () (.PEsym (a! 6633))])
            (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
          (.Expr [] <|
          .Epure
            (.Pexpr
              [.Astd "\xa76.5.2.2#6, sentence 3"]
              ()
              (.PEundef .unknown .UB038_number_of_args))) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 6634))) <| .Pexpr [] () <|
          .PEnot <| .Pexpr [] () <|
          .PEare_compatible
            (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
            .Pointer (.mk .false .false .false) (.Ctype [.Aloc .unknown, .Aloc .unknown] .Void0))
            (.Pexpr [] () (.PEsym (a! 6632))))
          (.Expr [] <|
          .Epure
            (.Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible))) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] <|
          .CaseBase
            (.some (sym.Symbol Src.digest 6636 (.SD_FunArg .unknown 0)), .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 6638), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 6633)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown, .Atypedef (c! "wgm_size_t" 4872), .Aloc .unknown]
                (.Basic (.Integer (.Unsigned .Long))))
              (.Pexpr [] () (.PEsym (a! 6638))))
            (.Expr [] <|
            .Epure
              (.Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible))) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 6639), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc .unknown, .Atypedef (c! "wgm_size_t" 4872), .Aloc .unknown]
                 (.Basic (.Integer (.Unsigned .Long)))])
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown, .Atypedef (c! "wgm_size_t" 4872), .Aloc .unknown]
                (.Basic (.Integer (.Unsigned .Long))))
              (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <| .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown, .Atypedef (c! "wgm_size_t" 4872), .Aloc .unknown]
                (.Basic (.Integer (.Unsigned .Long))))
              (.Pexpr [] () (.PEsym (a! 6639)))
              (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc .unknown, .Atypedef (c! "wgm_size_t" 4872), .Aloc .unknown]
                 (.Basic (.Integer (.Unsigned .Long))),
               .Pexpr [] () (.PEsym (a! 6637))])
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6639)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 6640), .BTy_loaded .OTy_pointer)))
          (.Expr [.Astd "\xa76.5.16.1#1, bullet 1"] <|
          .Eccall
            ()
            (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
            .Pointer (.mk .false .false .false) <| .Ctype [] <|
            .Function
              (.mk .false .false .false,
               .Ctype [.Aloc .unknown, .Aloc .unknown] <|
               .Pointer (.mk .false .false .false) (.Ctype [.Aloc .unknown, .Aloc .unknown] .Void0))
              [(.mk .false .false .false,
                (.Ctype
                   [.Aloc .unknown, .Atypedef (c! "wgm_size_t" 4872), .Aloc .unknown]
                   (.Basic (.Integer (.Unsigned .Long))),
                 .false))]
              .false)
            (.Pexpr [] () (.PEsym (a! 6631)))
            [.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6636 (.SD_FunArg .unknown 0)))]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
          .Kill
            (.Static0 <|
            .Ctype
              [.Aloc .unknown, .Atypedef (c! "wgm_size_t" 4872), .Aloc .unknown]
              (.Basic (.Integer (.Unsigned .Long))))
            (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6636 (.SD_FunArg .unknown 0)))))
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6640)))))) <| .Expr [] <| .Eaction <|
      .Paction .Pos <| .Action .unknown () <|
      .Store0
        .false
        (.Pexpr [] () <| .PEval <| .Vctype <|
        .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_deferred))
        (.Pexpr [] () (.PEsym (addr! "entry" 5682)))
        (.Pexpr [] () (.PEsym (a! 6629)))
        .NA) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.16#3, sentence 4"] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 6641), .BTy_object .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 6647), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
          [.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.2.3#4, sentence 2"] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 6642), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc .unknown, .Aexpr] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 6646), .BTy_object .OTy_pointer)))
               (.Expr
                 [.Aloc .unknown, .Aexpr]
                 (.Epure (.Pexpr [] () (.PEsym (addr! "entry" 5682))))) <| .Expr [] <| .Eaction <|
             .Paction .Pos <| .Action .unknown () <|
             .Load0
               (.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_deferred))
               (.Pexpr [] () (.PEsym (a! 6646)))
               .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6642))) <|
           [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
             .Expr [] <|
             .Epure
               (.Pexpr [] () (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_memberofptr)))),
            (.Pattern [] <|
             .CaseCtor
               .Cspecified
               [.Pattern [] (.CaseBase (.some (a! 6643), .BTy_object .OTy_pointer))],
             .Expr [] <| .Epure <| .Pexpr [] () <|
             .PEmember_shift
               (.Pexpr [] () (.PEsym (a! 6643)))
               (c! "wgm_deferred" 5502)
               (.Identifier .unknown "next"))],
           .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Cspecified <|
           [.Pexpr
              []
              ()
              (.PEval (.Vobject (.OVpointer (.PV .Prov_none (.PVnull Ty.struct_wgm_deferred)))))]]) <|
        .Expr [] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
          .Action .unknown () <|
          .Store0
            .false
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_deferred))
            (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 6641)))
            (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 6647)))
            .NA)
          (.Expr [] (.Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 6647))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc .unknown,
           .Aexpr,
           .Avalue (.Ainteger (.Enum0 (c! "wgm_deferred_kind" 5499))),
           .Astd "\xa76.5.16#3, sentence 4"] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 6648), .BTy_object .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 6655), .BTy_loaded .OTy_integer))])
          (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
          [.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.2.3#4, sentence 2"] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 6649), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc .unknown, .Aexpr] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 6653), .BTy_object .OTy_pointer)))
               (.Expr
                 [.Aloc .unknown, .Aexpr]
                 (.Epure (.Pexpr [] () (.PEsym (addr! "entry" 5682))))) <| .Expr [] <| .Eaction <|
             .Paction .Pos <| .Action .unknown () <|
             .Load0
               (.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_deferred))
               (.Pexpr [] () (.PEsym (a! 6653)))
               .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6649))) <|
           [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
             .Expr [] <|
             .Epure
               (.Pexpr [] () (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_memberofptr)))),
            (.Pattern [] <|
             .CaseCtor
               .Cspecified
               [.Pattern [] (.CaseBase (.some (a! 6650), .BTy_object .OTy_pointer))],
             .Expr [] <| .Epure <| .Pexpr [] () <|
             .PEmember_shift
               (.Pexpr [] () (.PEsym (a! 6650)))
               (c! "wgm_deferred" 5502)
               (.Identifier .unknown "kind"))],
           .Expr
             [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Enum0 (c! "wgm_deferred_kind" 5499)))] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 6654), .BTy_object .OTy_pointer)))
             (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (addr! "kind" 5678))))) <|
           .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
           .Load0
             (.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_deferred_kind" 5499)))))
             (.Pexpr [] () (.PEsym (a! 6654)))
             .NA]) <| .Expr [] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
          .Action .unknown () <|
          .Store0
            .false
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_deferred_kind" 5499)))))
            (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 6648)))
            (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
            .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
            [.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_deferred_kind" 5499)))),
             .Pexpr [] () (.PEsym (a! 6655))])
            .NA) <| .Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
        .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
        [.Pexpr [] () <| .PEval <| .Vctype <|
         .Ctype [.Aloc .unknown] (.Basic (.Integer (.Enum0 (c! "wgm_deferred_kind" 5499)))),
         .Pexpr [] () (.PEsym (a! 6655))])
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.16#3, sentence 4"] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 6656), .BTy_object .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 6663), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
          [.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.2.3#4, sentence 2"] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 6657), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc .unknown, .Aexpr] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 6661), .BTy_object .OTy_pointer)))
               (.Expr
                 [.Aloc .unknown, .Aexpr]
                 (.Epure (.Pexpr [] () (.PEsym (addr! "entry" 5682))))) <| .Expr [] <| .Eaction <|
             .Paction .Pos <| .Action .unknown () <|
             .Load0
               (.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_deferred))
               (.Pexpr [] () (.PEsym (a! 6661)))
               .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6657))) <|
           [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
             .Expr [] <|
             .Epure
               (.Pexpr [] () (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_memberofptr)))),
            (.Pattern [] <|
             .CaseCtor
               .Cspecified
               [.Pattern [] (.CaseBase (.some (a! 6658), .BTy_object .OTy_pointer))],
             .Expr [] <| .Epure <| .Pexpr [] () <|
             .PEmember_shift
               (.Pexpr [] () (.PEsym (a! 6658)))
               (c! "wgm_deferred" 5502)
               (.Identifier .unknown "target"))],
           .Expr [.Aloc .unknown, .Aexpr] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 6662), .BTy_object .OTy_pointer)))
             (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (addr! "target" 5679))))) <|
           .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
           .Load0
             (.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype
               [.Aloc .unknown]
               (.Pointer (.mk .false .false .false) (.Ctype [.Aloc .unknown] .Void0)))
             (.Pexpr [] () (.PEsym (a! 6662)))
             .NA]) <| .Expr [] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
          .Action .unknown () <|
          .Store0
            .false
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype
              [.Aloc .unknown]
              (.Pointer (.mk .false .false .false) (.Ctype [.Aloc .unknown] .Void0)))
            (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 6656)))
            (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 6663)))
            .NA)
          (.Expr [] (.Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 6663))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6665), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.some (a! 6668), .BTy_loaded .OTy_pointer)))
          (.Expr [.Aloc .unknown, .Aexpr] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 6667), .BTy_object .OTy_pointer)))
            (.Expr
              [.Aloc .unknown, .Aexpr]
              (.Epure (.Pexpr [] () (.PEsym (addr! "pending_tail" 5516))))) <| .Expr [] <|
          .Eaction <| .Paction .Pos <| .Action .unknown () <|
          .Load0
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_deferred))
            (.Pexpr [] () (.PEsym (a! 6667)))
            .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6668))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 6669), .BTy_object .OTy_pointer))],
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 6670), .BTy_boolean)))
            (.Expr [] <| .Ememop .PtrEq <|
            [.Pexpr [] () (.PEsym (a! 6669)),
             .Pexpr [.Astd "\xa76.5.9#5, sentence 2"] () <| .PEval <| .Vobject <| .OVpointer <|
             .PV .Prov_none <|
             .PVnull
               (.Ctype
                 [.Aloc .unknown]
                 (.Pointer (.mk .false .false .false) Ty.struct_wgm_deferred))]) <|
          .Expr [.Astd "\xa76.5.9#3"] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () (.PEsym (a! 6670)))
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
          .Expr [] <| .Epure <|
          .Pexpr [] () (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_equality_ptr_vs_NULL)))]) <|
      .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6664), .BTy_boolean)))
        (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6665))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 6666), .BTy_object .OTy_integer))],
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 6666)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
            (.Pexpr [] () (.PEval .Vtrue))
            (.Pexpr [] () (.PEval .Vfalse))),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <| .End <|
          [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
           .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
      .Eif
        (.Pexpr [] () (.PEsym (a! 6664)))
        (.Expr [.Aloc .unknown, .Astmt] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
          (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
          .Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.16#3, sentence 4"] <|
          .Ewseq
            (.Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 6671), .BTy_object .OTy_pointer)),
             .Pattern [] (.CaseBase (.some (a! 6678), .BTy_loaded .OTy_pointer))])
            (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
            [.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.2.3#4, sentence 2"] <|
             .Esseq
               (.Pattern [] (.CaseBase (.some (a! 6672), .BTy_loaded .OTy_pointer)))
               (.Expr [.Aloc .unknown, .Aexpr] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6676), .BTy_object .OTy_pointer)))
                 (.Expr
                   [.Aloc .unknown, .Aexpr]
                   (.Epure (.Pexpr [] () (.PEsym (addr! "pending_tail" 5516))))) <| .Expr [] <|
               .Eaction <| .Paction .Pos <| .Action .unknown () <|
               .Load0
                 (.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype
                   [.Aloc .unknown]
                   (.Pointer (.mk .false .false .false) Ty.struct_wgm_deferred))
                 (.Pexpr [] () (.PEsym (a! 6676)))
                 .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6672))) <|
             [(.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
               .Expr [] <|
               .Epure
                 (.Pexpr [] () (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_memberofptr)))),
              (.Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 6673), .BTy_object .OTy_pointer))],
               .Expr [] <| .Epure <| .Pexpr [] () <|
               .PEmember_shift
                 (.Pexpr [] () (.PEsym (a! 6673)))
                 (c! "wgm_deferred" 5502)
                 (.Identifier .unknown "next"))],
             .Expr [.Aloc .unknown, .Aexpr] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 6677), .BTy_object .OTy_pointer)))
               (.Expr
                 [.Aloc .unknown, .Aexpr]
                 (.Epure (.Pexpr [] () (.PEsym (addr! "entry" 5682))))) <| .Expr [] <| .Eaction <|
             .Paction .Pos <| .Action .unknown () <|
             .Load0
               (.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_deferred))
               (.Pexpr [] () (.PEsym (a! 6677)))
               .NA]) <| .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
            .Action .unknown () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_deferred))
              (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 6671)))
              (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 6678)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 6678))))))
          (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.16#3, sentence 4"] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 6679), .BTy_object .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 6681), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
          [.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (addr! "pending" 5515)))),
           .Expr [.Aloc .unknown, .Aexpr] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 6680), .BTy_object .OTy_pointer)))
             (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (addr! "entry" 5682))))) <|
           .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
           .Load0
             (.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_deferred))
             (.Pexpr [] () (.PEsym (a! 6680)))
             .NA]) <| .Expr [] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
          .Action .unknown () <|
          .Store0
            .false
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_deferred))
            (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 6679)))
            (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 6681)))
            .NA)
          (.Expr [] (.Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 6681))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.16#3, sentence 4"] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 6682), .BTy_object .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 6684), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
          [.Expr
             [.Aloc .unknown, .Aexpr]
             (.Epure (.Pexpr [] () (.PEsym (addr! "pending_tail" 5516)))),
           .Expr [.Aloc .unknown, .Aexpr] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 6683), .BTy_object .OTy_pointer)))
             (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (addr! "entry" 5682))))) <|
           .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
           .Load0
             (.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_deferred))
             (.Pexpr [] () (.PEsym (a! 6683)))
             .NA]) <| .Expr [] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
          .Action .unknown () <|
          .Store0
            .false
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_deferred))
            (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 6682)))
            (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 6684)))
            .NA)
          (.Expr [] (.Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 6684))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
      .Kill
        (.Static0
          (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgm_deferred)))
        (.Pexpr [] () (.PEsym (addr! "entry" 5682))))
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc .unknown] <|
  .Esave
    (c! "ret_6628" 6628, .BTy_unit)
    [(a! 6685,
      ((.BTy_unit, .some (.Ctype [.Aloc .unknown] .Void0, .By_value)), .Pexpr [] () (.PEval .Vunit)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6685)))))

/-- `void publish_jiffies(void)` -/
def publish_jiffies : Procedure :=
  .Proc .unknown (.some 5739) .BTy_unit [] <| .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc .unknown, .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6560), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.some (a! 6563), .BTy_loaded .OTy_pointer)))
          (.Expr [.Aloc .unknown, .Aexpr] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 6562), .BTy_object .OTy_pointer)))
            (.Expr
              [.Aloc .unknown, .Aexpr]
              (.Epure (.Pexpr [] () (.PEsym (addr! "jiffies_storage" 5707))))) <| .Expr [] <|
          .Eaction <| .Paction .Pos <| .Action .unknown () <|
          .Load0
            (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
            .Pointer
              (.mk .false .false .true)
              (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))
            (.Pexpr [] () (.PEsym (a! 6562)))
            .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6563))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 6564), .BTy_object .OTy_pointer))],
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 6565), .BTy_boolean)))
            (.Expr [] <| .Ememop .PtrEq <|
            [.Pexpr [] () (.PEsym (a! 6564)),
             .Pexpr [.Astd "\xa76.5.9#5, sentence 2"] () <| .PEval <| .Vobject <| .OVpointer <|
             .PV .Prov_none <| .PVnull <| .Ctype [.Aloc .unknown] <|
             .Pointer
               (.mk .false .false .true)
               (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))]) <|
          .Expr [.Astd "\xa76.5.9#3"] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () (.PEsym (a! 6565)))
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
          .Expr [] <| .Epure <|
          .Pexpr [] () (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_equality_ptr_vs_NULL)))]) <|
      .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6559), .BTy_boolean)))
        (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6560))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 6561), .BTy_object .OTy_integer))],
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 6561)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
            (.Pexpr [] () (.PEval .Vtrue))
            (.Pexpr [] () (.PEval .Vfalse))),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <| .End <|
          [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
           .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
      .Eif
        (.Pexpr [] () (.PEsym (a! 6559)))
        (.Expr [.Aloc .unknown, .Astmt] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
          (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
          .Expr
            [.Aloc .unknown,
             .Aexpr,
             .Avalue (.Ainteger (.Unsigned .Long)),
             .Astd "\xa76.5.16#3, sentence 4"] <|
          .Ewseq
            (.Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 6566), .BTy_object .OTy_pointer)),
             .Pattern [] (.CaseBase (.some (a! 6574), .BTy_loaded .OTy_integer))])
            (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
            [.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.3.2"] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 6567), .BTy_loaded .OTy_pointer)))
               (.Expr [.Aloc .unknown, .Aexpr] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6570), .BTy_object .OTy_pointer)))
                 (.Expr
                   [.Aloc .unknown, .Aexpr]
                   (.Epure (.Pexpr [] () (.PEsym (addr! "jiffies_storage" 5707))))) <| .Expr [] <|
               .Eaction <| .Paction .Pos <| .Action .unknown () <|
               .Load0
                 (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                 .Pointer
                   (.mk .false .false .true)
                   (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))
                 (.Pexpr [] () (.PEsym (a! 6570)))
                 .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6567))) <|
             [(.Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 6568), .BTy_object .OTy_pointer))],
               .Expr [] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6569), .BTy_boolean)))
                 (.Expr [] <| .Ememop .PtrValidForDeref <|
                 [.Pexpr
                    []
                    ()
                    (.PEval
                      (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))),
                  .Pexpr [] () (.PEsym (a! 6568))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
               .PEif (.Pexpr [] () (.PEsym (a! 6569))) (.Pexpr [] () (.PEsym (a! 6568))) <|
               .Pexpr
                 [.Astd "\xa76.5.3.2#4, sentence 4"]
                 ()
                 (.PEundef .unknown .UB043_indirection_invalid_value)),
              (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
               .Expr [] <| .Epure <|
               .Pexpr
                 [.Astd "\xa76.5.3.2#4, sentence 4"]
                 ()
                 (.PEundef .unknown .UB043_indirection_invalid_value))],
             .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .Long))] <|
             .Esseq
               (.Pattern [] (.CaseBase (.some (a! 6571), .BTy_loaded .OTy_pointer)))
               (.Expr [.Aloc .unknown, .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <| .Vloaded <|
               .LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "wgt_jiffies" 5070))))) <|
             .Expr [] <|
             .Elet
               (.Pattern [] <| .CaseCtor .Ctuple <|
               [.Pattern [] (.CaseBase (.some (a! 6572), .BTy_ctype)),
                .Pattern [] (.CaseBase (.some (a! 6573), .BTy_list .BTy_ctype)),
                .Pattern [] (.CaseBase (.none, .BTy_boolean)),
                .Pattern [] (.CaseBase (.none, .BTy_boolean))])
               (.Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 6571))))) <| .Expr [] <|
             .Eif
               (.Pexpr [] () <|
               .PEop
                 .OpEq
                 (.Pexpr [] () <|
                 .PEcall
                   (.Sym (rt! "params_length" 18299737999929047716))
                   [.Pexpr [] () (.PEsym (a! 6573))])
                 (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
               (.Expr [] <|
               .Eif
                 (.Pexpr [] () <|
                 .PEare_compatible
                   (.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))
                   (.Pexpr [] () (.PEsym (a! 6572))))
                 (.Expr [] <|
                 .Eccall
                   ()
                   (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                   .Pointer (.mk .false .false .false) <| .Ctype [] <|
                   .Function
                     (.mk .false .false .false,
                      .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))
                     []
                     .false)
                   (.Pexpr [] () (.PEsym (a! 6571)))
                   []) <| .Expr [] <| .Epure <|
               .Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible)) <|
             .Expr [] <| .Epure <|
             .Pexpr [.Astd "\xa76.5.2.2#6, sentence 3"] () (.PEundef .unknown .UB038_number_of_args)]) <|
          .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
            .Action .unknown () <|
            .Store0
              .false
              (.Pexpr
                []
                ()
                (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
              (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 6566)))
              (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
              .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
              [.Pexpr
                 []
                 ()
                 (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))),
               .Pexpr [] () (.PEsym (a! 6574))])
              .NA) <| .Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
          .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
          [.Pexpr
             []
             ()
             (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))),
           .Pexpr [] () (.PEsym (a! 6574))])
          (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
        (.Expr [.Aloc .unknown, .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc .unknown] <|
  .Esave
    (c! "ret_6558" 6558, .BTy_unit)
    [(a! 6575,
      ((.BTy_unit, .some (.Ctype [.Aloc .unknown] .Void0, .By_value)), .Pexpr [] () (.PEval .Vunit)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6575)))))

/-- `unsigned long long splitmix64(void)` -/
def splitmix64 : Procedure :=
  .Proc .unknown (.some 5751) (.BTy_loaded .OTy_integer) [] <| .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc .unknown, .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.some (addr! "z" 5752), .BTy_object .OTy_pointer)))
      (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
      .Create
        (.Pexpr [] () <| .PEctor .Civalignof <|
        [.Pexpr [] () <| .PEval <| .Vctype <|
         .Ctype
           [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
           (.Basic (.Integer (.Unsigned .LongLong)))])
        (.Pexpr [] () <| .PEval <| .Vctype <|
        .Ctype
          [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
          (.Basic (.Integer (.Unsigned .LongLong))))
        (.PrefSource .unknown [c! "splitmix64" 5750, addr! "z" 5752])) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt, .Astd "\xa76.2.4#6"] <| .Eaction <| .Paction .Pos <|
      .Action .unknown () <|
      .Store0
        .false
        (.Pexpr [] () <| .PEval <| .Vctype <|
        .Ctype
          [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
          (.Basic (.Integer (.Unsigned .LongLong))))
        (.Pexpr [] () (.PEsym (addr! "z" 5752)))
        (.Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
        .Ctype
          [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
          (.Basic (.Integer (.Unsigned .LongLong))))
        .NA) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc .unknown,
           .Aexpr,
           .Avalue (.Ainteger (.Unsigned .LongLong)),
           .Aexpr,
           .Avalue (.Ainteger (.Unsigned .LongLong)),
           .Astd "\xa76.5.16#3, sentence 4"] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 6495), .BTy_object .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 6502), .BTy_loaded .OTy_integer))])
          (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
          [.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (addr! "rng_state" 5716)))),
           .Expr
             [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .LongLong)), .Astd "\xa76.5.6"] <|
           .Ewseq
             (.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] (.CaseBase (.some (a! 6496), .BTy_loaded .OTy_integer)),
              .Pattern [] (.CaseBase (.some (a! 6497), .BTy_loaded .OTy_integer))])
             (.Expr [] <| .Eunseq <|
             [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .LongLong))] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6501), .BTy_object .OTy_pointer)))
                (.Expr
                  [.Aloc .unknown, .Aexpr]
                  (.Epure (.Pexpr [] () (.PEsym (addr! "rng_state" 5716))))) <| .Expr [] <|
              .Eaction <| .Paction .Pos <| .Action .unknown () <|
              .Load0
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype
                  [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
                  (.Basic (.Integer (.Unsigned .LongLong))))
                (.Pexpr [] () (.PEsym (a! 6501)))
                .NA,
              .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .LongLong))] <| .Epure <|
              .Pexpr
                []
                ()
                (.PEval
                  (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 11400714819323198485)))))]) <|
           .Expr [] <| .Epure <| .Pexpr [] () <|
           .PEcase
             (.Pexpr
               []
               ()
               (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 6496)), .Pexpr [] () (.PEsym (a! 6497))])) <|
           [(.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 6498), .BTy_object .OTy_integer))],
              .Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 6499), .BTy_object .OTy_integer))]],
             .Pexpr [] () <| .PEctor .Cspecified <|
             [.Pexpr [.Astd "\xa76.5.6#5"] () <|
              .PEwrapI
                (.Unsigned .LongLong)
                .IOpAdd
                (.Pexpr
                  [.Astd "\xa76.5.6#4"]
                  ()
                  (.PEconv_int (.Unsigned .LongLong) (.Pexpr [] () (.PEsym (a! 6498))))) <|
              .Pexpr
                [.Astd "\xa76.5.6#4"]
                ()
                (.PEconv_int (.Unsigned .LongLong) (.Pexpr [] () (.PEsym (a! 6499))))]),
            (.Pattern
               []
               (.CaseBase (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer])),
             .Pexpr [] () <| .PEval <| .Vloaded <|
             .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong)))))]]) <|
        .Expr [] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
          .Action .unknown () <|
          .Store0
            .false
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype
              [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
              (.Basic (.Integer (.Unsigned .LongLong))))
            (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 6495)))
            (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
            .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
            [.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype
               [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
               (.Basic (.Integer (.Unsigned .LongLong))),
             .Pexpr [] () (.PEsym (a! 6502))])
            .NA) <| .Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
        .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
        [.Pexpr [] () <| .PEval <| .Vctype <|
         .Ctype
           [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
           (.Basic (.Integer (.Unsigned .LongLong))),
         .Pexpr [] () (.PEsym (a! 6502))])
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc .unknown,
           .Aexpr,
           .Avalue (.Ainteger (.Unsigned .LongLong)),
           .Astd "\xa76.5.16#3, sentence 4"] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 6503), .BTy_object .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 6505), .BTy_loaded .OTy_integer))])
          (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
          [.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (addr! "z" 5752)))),
           .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .LongLong))] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 6504), .BTy_object .OTy_pointer)))
             (.Expr
               [.Aloc .unknown, .Aexpr]
               (.Epure (.Pexpr [] () (.PEsym (addr! "rng_state" 5716))))) <| .Expr [] <| .Eaction <|
           .Paction .Pos <| .Action .unknown () <|
           .Load0
             (.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype
               [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
               (.Basic (.Integer (.Unsigned .LongLong))))
             (.Pexpr [] () (.PEsym (a! 6504)))
             .NA]) <| .Expr [] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
          .Action .unknown () <|
          .Store0
            .false
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype
              [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
              (.Basic (.Integer (.Unsigned .LongLong))))
            (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 6503)))
            (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
            .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
            [.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype
               [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
               (.Basic (.Integer (.Unsigned .LongLong))),
             .Pexpr [] () (.PEsym (a! 6505))])
            .NA) <| .Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
        .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
        [.Pexpr [] () <| .PEval <| .Vctype <|
         .Ctype
           [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
           (.Basic (.Integer (.Unsigned .LongLong))),
         .Pexpr [] () (.PEsym (a! 6505))])
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc .unknown,
           .Aexpr,
           .Avalue (.Ainteger (.Unsigned .LongLong)),
           .Astd "\xa76.5.16#3, sentence 4"] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 6506), .BTy_object .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 6524), .BTy_loaded .OTy_integer))])
          (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
          [.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (addr! "z" 5752)))),
           .Expr
             [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .LongLong)), .Astd "\xa76.5.5"] <|
           .Ewseq
             (.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] (.CaseBase (.some (a! 6519), .BTy_loaded .OTy_integer)),
              .Pattern [] (.CaseBase (.some (a! 6520), .BTy_loaded .OTy_integer))])
             (.Expr [] <| .Eunseq <|
             [.Expr
                [.Aloc .unknown,
                 .Aexpr,
                 .Avalue (.Ainteger (.Unsigned .LongLong)),
                 .Astd "\xa76.5.11"] <|
              .Ewseq
                (.Pattern [] <| .CaseCtor .Ctuple <|
                [.Pattern [] (.CaseBase (.some (a! 6507), .BTy_loaded .OTy_integer)),
                 .Pattern [] (.CaseBase (.some (a! 6508), .BTy_loaded .OTy_integer))])
                (.Expr [] <| .Eunseq <|
                [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .LongLong))] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 6511), .BTy_object .OTy_pointer)))
                   (.Expr
                     [.Aloc .unknown, .Aexpr]
                     (.Epure (.Pexpr [] () (.PEsym (addr! "z" 5752))))) <| .Expr [] <| .Eaction <|
                 .Paction .Pos <| .Action .unknown () <|
                 .Load0
                   (.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype
                     [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
                     (.Basic (.Integer (.Unsigned .LongLong))))
                   (.Pexpr [] () (.PEsym (a! 6511)))
                   .NA,
                 .Expr
                   [.Aloc .unknown,
                    .Aexpr,
                    .Avalue (.Ainteger (.Unsigned .LongLong)),
                    .Astd "\xa76.5.7"] <|
                 .Ewseq
                   (.Pattern [] <| .CaseCtor .Ctuple <|
                   [.Pattern [] (.CaseBase (.some (a! 6512), .BTy_loaded .OTy_integer)),
                    .Pattern [] (.CaseBase (.some (a! 6513), .BTy_loaded .OTy_integer))])
                   (.Expr [] <| .Eunseq <|
                   [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .LongLong))] <|
                    .Ewseq
                      (.Pattern [] (.CaseBase (.some (a! 6518), .BTy_object .OTy_pointer)))
                      (.Expr
                        [.Aloc .unknown, .Aexpr]
                        (.Epure (.Pexpr [] () (.PEsym (addr! "z" 5752))))) <| .Expr [] <|
                    .Eaction <| .Paction .Pos <| .Action .unknown () <|
                    .Load0
                      (.Pexpr [] () <| .PEval <| .Vctype <|
                      .Ctype
                        [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
                        (.Basic (.Integer (.Unsigned .LongLong))))
                      (.Pexpr [] () (.PEsym (a! 6518)))
                      .NA,
                    .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                    .Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 30)))))]) <|
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEcase
                   (.Pexpr [] () <|
                   .PEctor
                     .Ctuple
                     [.Pexpr [] () (.PEsym (a! 6512)), .Pexpr [] () (.PEsym (a! 6513))]) <|
                 [(.Pattern [] <| .CaseCtor .Ctuple <|
                   [.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)),
                    .Pattern
                      []
                      (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))])],
                   .Pexpr [.Astd "\xa76.5#5"] () (.PEundef .unknown .UB036_exceptional_condition)),
                  (.Pattern [] <| .CaseCtor .Ctuple <|
                   [.Pattern
                      []
                      (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                    .Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer))],
                   .Pexpr [] () <| .PEval <| .Vloaded <|
                   .LVunspecified
                     (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong))))),
                  (.Pattern [] <| .CaseCtor .Ctuple <|
                   [.Pattern [] <|
                    .CaseCtor
                      .Cspecified
                      [.Pattern [] (.CaseBase (.some (a! 6514), .BTy_object .OTy_integer))],
                    .Pattern [] <|
                    .CaseCtor
                      .Cspecified
                      [.Pattern [] (.CaseBase (.some (a! 6515), .BTy_object .OTy_integer))]],
                   .Pexpr [] () <|
                   .PElet
                     (.Pattern [] (.CaseBase (.some (a! 6516), .BTy_object .OTy_integer)))
                     (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                     [.Pexpr [] () <|
                      .PEval
                        (.Vctype
                          (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong))))),
                      .Pexpr [] () (.PEsym (a! 6514))]) <| .Pexpr [] () <|
                   .PElet
                     (.Pattern [] (.CaseBase (.some (a! 6517), .BTy_object .OTy_integer)))
                     (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                     [.Pexpr [] () <|
                      .PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_))))),
                      .Pexpr [] () (.PEsym (a! 6515))]) <| .Pexpr [] () <|
                   .PEif
                     (.Pexpr [] () <|
                     .PEop
                       .OpLt
                       (.Pexpr [] () (.PEsym (a! 6517)))
                       (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                     (.Pexpr
                       [.Astd "\xa76.5.7#3, sentence 3"]
                       ()
                       (.PEundef .unknown .UB051a_negative_shift)) <| .Pexpr [] () <|
                   .PEif
                     (.Pexpr [] () <|
                     .PEop
                       .OpOr
                       (.Pexpr [] () <|
                       .PEop
                         .OpLt
                         (.Pexpr [.Avalue (.Ainteger (.Signed .Int_))] () <|
                         .PEcall (.Sym (rt! "ctype_width" 4407163753016978909)) <|
                         [.Pexpr [] () <| .PEval <|
                          .Vctype
                            (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong))))])
                         (.Pexpr [] () (.PEsym (a! 6517)))) <| .Pexpr [] () <|
                     .PEop
                       .OpEq
                       (.Pexpr [.Avalue (.Ainteger (.Signed .Int_))] () <|
                       .PEcall (.Sym (rt! "ctype_width" 4407163753016978909)) <|
                       [.Pexpr [] () <| .PEval <|
                        .Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong))))])
                       (.Pexpr [] () (.PEsym (a! 6517))))
                     (.Pexpr
                       [.Astd "\xa76.5.7#3, sentence 3"]
                       ()
                       (.PEundef .unknown .UB51b_shift_too_large)) <| .Pexpr [] () <|
                   .PEctor .Cspecified <|
                   [.Pexpr [.Astd "6.5.7#5, sentence 2"] () <|
                    .PEop .OpDiv (.Pexpr [] () (.PEsym (a! 6516))) <| .Pexpr [] () <|
                    .PEop
                      .OpExp
                      (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2)))))
                      (.Pexpr [] () (.PEsym (a! 6517)))])]]) <| .Expr [] <| .Epure <|
              .Pexpr [] () <|
              .PEcase
                (.Pexpr
                  []
                  ()
                  (.PEctor
                    .Ctuple
                    [.Pexpr [] () (.PEsym (a! 6507)), .Pexpr [] () (.PEsym (a! 6508))])) <|
              [(.Pattern [] <| .CaseCtor .Ctuple <|
                [.Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 6509), .BTy_object .OTy_integer))],
                 .Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 6510), .BTy_object .OTy_integer))]],
                .Pexpr [] () <| .PEctor .Cspecified <|
                [.Pexpr [.Astd "\xa76.5.11#4"] () <| .PEctor .CivXOR <|
                 [.Pexpr [] () <|
                  .PEval
                    (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong))))),
                  .Pexpr [.Astd "\xa76.5.11#3"] () <|
                  .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                  [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_long_long)),
                   .Pexpr [] () (.PEsym (a! 6509))],
                  .Pexpr [.Astd "\xa76.5.11#3"] () <|
                  .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                  [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_long_long)),
                   .Pexpr [] () (.PEsym (a! 6510))]]]),
               (.Pattern
                  []
                  (.CaseBase
                    (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer])),
                .Pexpr [] () <| .PEval <| .Vloaded <|
                .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong)))))],
              .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .LongLong))] <| .Epure <|
              .Pexpr
                []
                ()
                (.PEval
                  (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 13787848793156543929)))))]) <|
           .Expr [] <| .Epure <| .Pexpr [] () <|
           .PEcase
             (.Pexpr
               []
               ()
               (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 6519)), .Pexpr [] () (.PEsym (a! 6520))])) <|
           [(.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 6521), .BTy_object .OTy_integer))],
              .Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 6522), .BTy_object .OTy_integer))]],
             .Pexpr [] () <| .PEctor .Cspecified <|
             [.Pexpr [.Astd "\xa76.5.5#4"] () <|
              .PEwrapI
                (.Unsigned .LongLong)
                .IOpMul
                (.Pexpr [.Astd "\xa76.5.5#3"] () <|
                .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_long_long)),
                 .Pexpr [] () (.PEsym (a! 6521))]) <| .Pexpr [.Astd "\xa76.5.5#3"] () <|
              .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
              [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_long_long)),
               .Pexpr [] () (.PEsym (a! 6522))]]),
            (.Pattern
               []
               (.CaseBase (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer])),
             .Pexpr [] () <| .PEval <| .Vloaded <|
             .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong)))))]]) <|
        .Expr [] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
          .Action .unknown () <|
          .Store0
            .false
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype
              [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
              (.Basic (.Integer (.Unsigned .LongLong))))
            (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 6506)))
            (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
            .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
            [.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype
               [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
               (.Basic (.Integer (.Unsigned .LongLong))),
             .Pexpr [] () (.PEsym (a! 6524))])
            .NA) <| .Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
        .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
        [.Pexpr [] () <| .PEval <| .Vctype <|
         .Ctype
           [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
           (.Basic (.Integer (.Unsigned .LongLong))),
         .Pexpr [] () (.PEsym (a! 6524))])
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc .unknown,
           .Aexpr,
           .Avalue (.Ainteger (.Unsigned .LongLong)),
           .Astd "\xa76.5.16#3, sentence 4"] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 6525), .BTy_object .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 6543), .BTy_loaded .OTy_integer))])
          (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
          [.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (addr! "z" 5752)))),
           .Expr
             [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .LongLong)), .Astd "\xa76.5.5"] <|
           .Ewseq
             (.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] (.CaseBase (.some (a! 6538), .BTy_loaded .OTy_integer)),
              .Pattern [] (.CaseBase (.some (a! 6539), .BTy_loaded .OTy_integer))])
             (.Expr [] <| .Eunseq <|
             [.Expr
                [.Aloc .unknown,
                 .Aexpr,
                 .Avalue (.Ainteger (.Unsigned .LongLong)),
                 .Astd "\xa76.5.11"] <|
              .Ewseq
                (.Pattern [] <| .CaseCtor .Ctuple <|
                [.Pattern [] (.CaseBase (.some (a! 6526), .BTy_loaded .OTy_integer)),
                 .Pattern [] (.CaseBase (.some (a! 6527), .BTy_loaded .OTy_integer))])
                (.Expr [] <| .Eunseq <|
                [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .LongLong))] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 6530), .BTy_object .OTy_pointer)))
                   (.Expr
                     [.Aloc .unknown, .Aexpr]
                     (.Epure (.Pexpr [] () (.PEsym (addr! "z" 5752))))) <| .Expr [] <| .Eaction <|
                 .Paction .Pos <| .Action .unknown () <|
                 .Load0
                   (.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype
                     [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
                     (.Basic (.Integer (.Unsigned .LongLong))))
                   (.Pexpr [] () (.PEsym (a! 6530)))
                   .NA,
                 .Expr
                   [.Aloc .unknown,
                    .Aexpr,
                    .Avalue (.Ainteger (.Unsigned .LongLong)),
                    .Astd "\xa76.5.7"] <|
                 .Ewseq
                   (.Pattern [] <| .CaseCtor .Ctuple <|
                   [.Pattern [] (.CaseBase (.some (a! 6531), .BTy_loaded .OTy_integer)),
                    .Pattern [] (.CaseBase (.some (a! 6532), .BTy_loaded .OTy_integer))])
                   (.Expr [] <| .Eunseq <|
                   [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .LongLong))] <|
                    .Ewseq
                      (.Pattern [] (.CaseBase (.some (a! 6537), .BTy_object .OTy_pointer)))
                      (.Expr
                        [.Aloc .unknown, .Aexpr]
                        (.Epure (.Pexpr [] () (.PEsym (addr! "z" 5752))))) <| .Expr [] <|
                    .Eaction <| .Paction .Pos <| .Action .unknown () <|
                    .Load0
                      (.Pexpr [] () <| .PEval <| .Vctype <|
                      .Ctype
                        [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
                        (.Basic (.Integer (.Unsigned .LongLong))))
                      (.Pexpr [] () (.PEsym (a! 6537)))
                      .NA,
                    .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                    .Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 27)))))]) <|
                 .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEcase
                   (.Pexpr [] () <|
                   .PEctor
                     .Ctuple
                     [.Pexpr [] () (.PEsym (a! 6531)), .Pexpr [] () (.PEsym (a! 6532))]) <|
                 [(.Pattern [] <| .CaseCtor .Ctuple <|
                   [.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)),
                    .Pattern
                      []
                      (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))])],
                   .Pexpr [.Astd "\xa76.5#5"] () (.PEundef .unknown .UB036_exceptional_condition)),
                  (.Pattern [] <| .CaseCtor .Ctuple <|
                   [.Pattern
                      []
                      (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                    .Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer))],
                   .Pexpr [] () <| .PEval <| .Vloaded <|
                   .LVunspecified
                     (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong))))),
                  (.Pattern [] <| .CaseCtor .Ctuple <|
                   [.Pattern [] <|
                    .CaseCtor
                      .Cspecified
                      [.Pattern [] (.CaseBase (.some (a! 6533), .BTy_object .OTy_integer))],
                    .Pattern [] <|
                    .CaseCtor
                      .Cspecified
                      [.Pattern [] (.CaseBase (.some (a! 6534), .BTy_object .OTy_integer))]],
                   .Pexpr [] () <|
                   .PElet
                     (.Pattern [] (.CaseBase (.some (a! 6535), .BTy_object .OTy_integer)))
                     (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                     [.Pexpr [] () <|
                      .PEval
                        (.Vctype
                          (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong))))),
                      .Pexpr [] () (.PEsym (a! 6533))]) <| .Pexpr [] () <|
                   .PElet
                     (.Pattern [] (.CaseBase (.some (a! 6536), .BTy_object .OTy_integer)))
                     (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                     [.Pexpr [] () <|
                      .PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_))))),
                      .Pexpr [] () (.PEsym (a! 6534))]) <| .Pexpr [] () <|
                   .PEif
                     (.Pexpr [] () <|
                     .PEop
                       .OpLt
                       (.Pexpr [] () (.PEsym (a! 6536)))
                       (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                     (.Pexpr
                       [.Astd "\xa76.5.7#3, sentence 3"]
                       ()
                       (.PEundef .unknown .UB051a_negative_shift)) <| .Pexpr [] () <|
                   .PEif
                     (.Pexpr [] () <|
                     .PEop
                       .OpOr
                       (.Pexpr [] () <|
                       .PEop
                         .OpLt
                         (.Pexpr [.Avalue (.Ainteger (.Signed .Int_))] () <|
                         .PEcall (.Sym (rt! "ctype_width" 4407163753016978909)) <|
                         [.Pexpr [] () <| .PEval <|
                          .Vctype
                            (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong))))])
                         (.Pexpr [] () (.PEsym (a! 6536)))) <| .Pexpr [] () <|
                     .PEop
                       .OpEq
                       (.Pexpr [.Avalue (.Ainteger (.Signed .Int_))] () <|
                       .PEcall (.Sym (rt! "ctype_width" 4407163753016978909)) <|
                       [.Pexpr [] () <| .PEval <|
                        .Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong))))])
                       (.Pexpr [] () (.PEsym (a! 6536))))
                     (.Pexpr
                       [.Astd "\xa76.5.7#3, sentence 3"]
                       ()
                       (.PEundef .unknown .UB51b_shift_too_large)) <| .Pexpr [] () <|
                   .PEctor .Cspecified <|
                   [.Pexpr [.Astd "6.5.7#5, sentence 2"] () <|
                    .PEop .OpDiv (.Pexpr [] () (.PEsym (a! 6535))) <| .Pexpr [] () <|
                    .PEop
                      .OpExp
                      (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2)))))
                      (.Pexpr [] () (.PEsym (a! 6536)))])]]) <| .Expr [] <| .Epure <|
              .Pexpr [] () <|
              .PEcase
                (.Pexpr
                  []
                  ()
                  (.PEctor
                    .Ctuple
                    [.Pexpr [] () (.PEsym (a! 6526)), .Pexpr [] () (.PEsym (a! 6527))])) <|
              [(.Pattern [] <| .CaseCtor .Ctuple <|
                [.Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 6528), .BTy_object .OTy_integer))],
                 .Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 6529), .BTy_object .OTy_integer))]],
                .Pexpr [] () <| .PEctor .Cspecified <|
                [.Pexpr [.Astd "\xa76.5.11#4"] () <| .PEctor .CivXOR <|
                 [.Pexpr [] () <|
                  .PEval
                    (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong))))),
                  .Pexpr [.Astd "\xa76.5.11#3"] () <|
                  .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                  [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_long_long)),
                   .Pexpr [] () (.PEsym (a! 6528))],
                  .Pexpr [.Astd "\xa76.5.11#3"] () <|
                  .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                  [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_long_long)),
                   .Pexpr [] () (.PEsym (a! 6529))]]]),
               (.Pattern
                  []
                  (.CaseBase
                    (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer])),
                .Pexpr [] () <| .PEval <| .Vloaded <|
                .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong)))))],
              .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .LongLong))] <| .Epure <|
              .Pexpr
                []
                ()
                (.PEval
                  (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 10723151780598845931)))))]) <|
           .Expr [] <| .Epure <| .Pexpr [] () <|
           .PEcase
             (.Pexpr
               []
               ()
               (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 6538)), .Pexpr [] () (.PEsym (a! 6539))])) <|
           [(.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 6540), .BTy_object .OTy_integer))],
              .Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 6541), .BTy_object .OTy_integer))]],
             .Pexpr [] () <| .PEctor .Cspecified <|
             [.Pexpr [.Astd "\xa76.5.5#4"] () <|
              .PEwrapI
                (.Unsigned .LongLong)
                .IOpMul
                (.Pexpr [.Astd "\xa76.5.5#3"] () <|
                .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_long_long)),
                 .Pexpr [] () (.PEsym (a! 6540))]) <| .Pexpr [.Astd "\xa76.5.5#3"] () <|
              .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
              [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_long_long)),
               .Pexpr [] () (.PEsym (a! 6541))]]),
            (.Pattern
               []
               (.CaseBase (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer])),
             .Pexpr [] () <| .PEval <| .Vloaded <|
             .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong)))))]]) <|
        .Expr [] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
          .Action .unknown () <|
          .Store0
            .false
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype
              [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
              (.Basic (.Integer (.Unsigned .LongLong))))
            (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 6525)))
            (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
            .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
            [.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype
               [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
               (.Basic (.Integer (.Unsigned .LongLong))),
             .Pexpr [] () (.PEsym (a! 6543))])
            .NA) <| .Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
        .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
        [.Pexpr [] () <| .PEval <| .Vctype <|
         .Ctype
           [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
           (.Basic (.Integer (.Unsigned .LongLong))),
         .Pexpr [] () (.PEsym (a! 6543))])
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6556), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .LongLong)), .Astd "\xa76.5.11"] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 6544), .BTy_loaded .OTy_integer)),
           .Pattern [] (.CaseBase (.some (a! 6545), .BTy_loaded .OTy_integer))])
          (.Expr [] <| .Eunseq <|
          [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .LongLong))] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 6548), .BTy_object .OTy_pointer)))
             (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (addr! "z" 5752))))) <|
           .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
           .Load0
             (.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype
               [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
               (.Basic (.Integer (.Unsigned .LongLong))))
             (.Pexpr [] () (.PEsym (a! 6548)))
             .NA,
           .Expr
             [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .LongLong)), .Astd "\xa76.5.7"] <|
           .Ewseq
             (.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] (.CaseBase (.some (a! 6549), .BTy_loaded .OTy_integer)),
              .Pattern [] (.CaseBase (.some (a! 6550), .BTy_loaded .OTy_integer))])
             (.Expr [] <| .Eunseq <|
             [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .LongLong))] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6555), .BTy_object .OTy_pointer)))
                (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (addr! "z" 5752))))) <|
              .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
              .Load0
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype
                  [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
                  (.Basic (.Integer (.Unsigned .LongLong))))
                (.Pexpr [] () (.PEsym (a! 6555)))
                .NA,
              .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
              .Epure
                (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 31))))))]) <|
           .Expr [] <| .Epure <| .Pexpr [] () <|
           .PEcase
             (.Pexpr
               []
               ()
               (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 6549)), .Pexpr [] () (.PEsym (a! 6550))])) <|
           [(.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)),
              .Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))])],
             .Pexpr [.Astd "\xa76.5#5"] () (.PEundef .unknown .UB036_exceptional_condition)),
            (.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
              .Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer))],
             .Pexpr [] () <| .PEval <| .Vloaded <|
             .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong))))),
            (.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 6551), .BTy_object .OTy_integer))],
              .Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 6552), .BTy_object .OTy_integer))]],
             .Pexpr [] () <|
             .PElet
               (.Pattern [] (.CaseBase (.some (a! 6553), .BTy_object .OTy_integer)))
               (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
               [.Pexpr [] () <|
                .PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong))))),
                .Pexpr [] () (.PEsym (a! 6551))]) <| .Pexpr [] () <|
             .PElet
               (.Pattern [] (.CaseBase (.some (a! 6554), .BTy_object .OTy_integer)))
               (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
               [.Pexpr
                  []
                  ()
                  (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))),
                .Pexpr [] () (.PEsym (a! 6552))]) <| .Pexpr [] () <|
             .PEif
               (.Pexpr [] () <|
               .PEop
                 .OpLt
                 (.Pexpr [] () (.PEsym (a! 6554)))
                 (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
               (.Pexpr
                 [.Astd "\xa76.5.7#3, sentence 3"]
                 ()
                 (.PEundef .unknown .UB051a_negative_shift)) <| .Pexpr [] () <|
             .PEif
               (.Pexpr [] () <|
               .PEop
                 .OpOr
                 (.Pexpr [] () <|
                 .PEop
                   .OpLt
                   (.Pexpr [.Avalue (.Ainteger (.Signed .Int_))] () <|
                   .PEcall (.Sym (rt! "ctype_width" 4407163753016978909)) <|
                   [.Pexpr [] () <|
                    .PEval
                      (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong)))))])
                   (.Pexpr [] () (.PEsym (a! 6554)))) <| .Pexpr [] () <|
               .PEop
                 .OpEq
                 (.Pexpr [.Avalue (.Ainteger (.Signed .Int_))] () <|
                 .PEcall (.Sym (rt! "ctype_width" 4407163753016978909)) <|
                 [.Pexpr [] () <|
                  .PEval
                    (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong)))))])
                 (.Pexpr [] () (.PEsym (a! 6554))))
               (.Pexpr
                 [.Astd "\xa76.5.7#3, sentence 3"]
                 ()
                 (.PEundef .unknown .UB51b_shift_too_large)) <| .Pexpr [] () <|
             .PEctor .Cspecified <|
             [.Pexpr [.Astd "6.5.7#5, sentence 2"] () <|
              .PEop .OpDiv (.Pexpr [] () (.PEsym (a! 6553))) <| .Pexpr [] () <|
              .PEop
                .OpExp
                (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2)))))
                (.Pexpr [] () (.PEsym (a! 6554)))])]]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
        .PEcase
          (.Pexpr
            []
            ()
            (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 6544)), .Pexpr [] () (.PEsym (a! 6545))])) <|
        [(.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 6546), .BTy_object .OTy_integer))],
           .Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 6547), .BTy_object .OTy_integer))]],
          .Pexpr [] () <| .PEctor .Cspecified <|
          [.Pexpr [.Astd "\xa76.5.11#4"] () <| .PEctor .CivXOR <|
           [.Pexpr
              []
              ()
              (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong)))))),
            .Pexpr [.Astd "\xa76.5.11#3"] () <|
            .PEcall
              (.Sym (rt! "conv_int" 15837442492999787586))
              [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_long_long)),
               .Pexpr [] () (.PEsym (a! 6546))],
            .Pexpr [.Astd "\xa76.5.11#3"] () <|
            .PEcall
              (.Sym (rt! "conv_int" 15837442492999787586))
              [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_long_long)),
               .Pexpr [] () (.PEsym (a! 6547))]]]),
         (.Pattern
            []
            (.CaseBase (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer])),
          .Pexpr [] () <| .PEval <| .Vloaded <|
          .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong)))))]) <|
      .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
        .Kill
          (.Static0 <|
          .Ctype
            [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
            (.Basic (.Integer (.Unsigned .LongLong))))
          (.Pexpr [] () (.PEsym (addr! "z" 5752)))) <| .Expr [] <| .Erun () (c! "ret_6494" 6494) <|
      [.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
       [.Pexpr [] () <| .PEval <| .Vctype <|
        .Ctype
          [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
          (.Basic (.Integer (.Unsigned .LongLong))),
        .Pexpr [] () (.PEsym (a! 6556))]]) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
      .Kill
        (.Static0 <|
        .Ctype
          [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
          (.Basic (.Integer (.Unsigned .LongLong))))
        (.Pexpr [] () (.PEsym (addr! "z" 5752))))
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc .unknown] <|
  .Esave
    (c! "ret_6494" 6494, .BTy_loaded .OTy_integer)
    [(a! 6557,
      ((.BTy_loaded .OTy_integer,
        .some <|
        (.Ctype
           [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
           (.Basic (.Integer (.Unsigned .LongLong))),
         .By_value)),
       .Pexpr [.Astd "\xa76.9.1#12"] () (.PEundef .unknown .UB088_reached_end_of_function)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6557)))))

/-- `unsigned char next_byte(void)` -/
def next_byte : Procedure :=
  .Proc .unknown (.some 5754) (.BTy_loaded .OTy_integer) [] <| .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc .unknown, .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6352), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 6354), .BTy_loaded .OTy_integer)),
           .Pattern [] (.CaseBase (.some (a! 6355), .BTy_loaded .OTy_integer))])
          (.Expr [] <| .Eunseq <|
          [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_)), .Astd "\xa76.5.8"] <|
           .Ewseq
             (.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] (.CaseBase (.some (a! 6361), .BTy_loaded .OTy_integer)),
              .Pattern [] (.CaseBase (.some (a! 6362), .BTy_loaded .OTy_integer))])
             (.Expr [] <| .Eunseq <|
             [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .Long))] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6359), .BTy_object .OTy_pointer)))
                (.Expr
                  [.Aloc .unknown, .Aexpr]
                  (.Epure (.Pexpr [] () (.PEsym (addr! "script_position" 5710))))) <| .Expr [] <|
              .Eaction <| .Paction .Pos <| .Action .unknown () <|
              .Load0
                (.Pexpr
                  []
                  ()
                  (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
                (.Pexpr [] () (.PEsym (a! 6359)))
                .NA,
              .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .Long))] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6360), .BTy_object .OTy_pointer)))
                (.Expr
                  [.Aloc .unknown, .Aexpr]
                  (.Epure (.Pexpr [] () (.PEsym (addr! "script_length" 5709))))) <| .Expr [] <|
              .Eaction <| .Paction .Pos <| .Action .unknown () <|
              .Load0
                (.Pexpr
                  []
                  ()
                  (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
                (.Pexpr [] () (.PEsym (a! 6360)))
                .NA]) <| .Expr [] <|
           .Ecase
             (.Pexpr
               []
               ()
               (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 6361)), .Pexpr [] () (.PEsym (a! 6362))])) <|
           [(.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 6363), .BTy_object .OTy_integer))],
              .Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 6364), .BTy_object .OTy_integer))]],
             .Expr [.Astd "\xa76.5.8#6"] <| .Epure <| .Pexpr [] () <|
             .PEif
               (.Pexpr [] () <|
               .PEop
                 .OpLt
                 (.Pexpr [.Astd "\xa76.5.8#3"] () <|
                 .PEcall
                   (.Sym (rt! "conv_int" 15837442492999787586))
                   [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_long)),
                    .Pexpr [] () (.PEsym (a! 6363))]) <| .Pexpr [.Astd "\xa76.5.8#3"] () <|
               .PEcall
                 (.Sym (rt! "conv_int" 15837442492999787586))
                 [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_long)), .Pexpr [] () (.PEsym (a! 6364))])
               (.Pexpr [] () <|
               .PEctor
                 .Cspecified
                 [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
             .Pexpr [] () <|
             .PEctor .Cspecified [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
            (.Pattern
               []
               (.CaseBase (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer])),
             .Expr [] <| .Epure <| .Pexpr [] () <| .PEval <| .Vloaded <|
             .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))],
           .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
           .Epure (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
        .Expr [] <| .Epure <| .Pexpr [] () <|
        .PEcase
          (.Pexpr
            []
            ()
            (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 6354)), .Pexpr [] () (.PEsym (a! 6355))])) <|
        [(.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 6356), .BTy_object .OTy_integer))],
           .Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 6357), .BTy_object .OTy_integer))]],
          .Pexpr [.Astd "\xa76.5.9#3"] () <|
          .PEif
            (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
            .PEop
              .OpEq
              (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
              .PEcall
                (.Sym (rt! "conv_int" 15837442492999787586))
                [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6356))]) <|
            .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
            .PEcall
              (.Sym (rt! "conv_int" 15837442492999787586))
              [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6357))])
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
          .Pexpr [] () <|
          .PEval
            (.Vloaded
              (.LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))))]) <|
      .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6351), .BTy_boolean)))
        (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6352))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 6353), .BTy_object .OTy_integer))],
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 6353)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
            (.Pexpr [] () (.PEval .Vtrue))
            (.Pexpr [] () (.PEval .Vfalse))),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <| .End <|
          [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
           .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
      .Eif
        (.Pexpr [] () (.PEsym (a! 6351)))
        (.Expr [.Aloc .unknown, .Astmt] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 6379), .BTy_loaded .OTy_integer)))
          (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
          .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .Ichar))] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 6378), .BTy_object .OTy_pointer)))
            (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.3.2"] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.some (a! 6366), .BTy_loaded .OTy_pointer)))
              (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.6"] <|
              .Ewseq
                (.Pattern [] <| .CaseCtor .Ctuple <|
                [.Pattern [] (.CaseBase (.some (a! 6369), .BTy_loaded .OTy_pointer)),
                 .Pattern [] (.CaseBase (.some (a! 6371), .BTy_loaded .OTy_integer))])
                (.Expr [] <| .Eunseq <|
                [.Expr [.Aloc .unknown, .Aexpr] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 6374), .BTy_object .OTy_pointer)))
                   (.Expr
                     [.Aloc .unknown, .Aexpr]
                     (.Epure (.Pexpr [] () (.PEsym (addr! "script" 5708))))) <| .Expr [] <|
                 .Eaction <| .Paction .Pos <| .Action .unknown () <|
                 .Load0
                   (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                   .Pointer
                     (.mk .true .false .false)
                     (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Ichar)))))
                   (.Pexpr [] () (.PEsym (a! 6374)))
                   .NA,
                 .Expr
                   [.Aloc .unknown,
                    .Aexpr,
                    .Avalue (.Ainteger (.Unsigned .Long)),
                    .Astd "\xa76.5.2.4",
                    .Astd "\xa76.5.2.4#2, sentence 1",
                    .Astd "\xa76.5.2.4#2, sentence 3"] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 6375), .BTy_object .OTy_pointer)))
                   (.Expr
                     [.Aloc .unknown, .Aexpr]
                     (.Epure (.Pexpr [] () (.PEsym (addr! "script_position" 5710))))) <| .Expr [] <|
                 .Eaction <| .Paction .Pos <| .Action .unknown () <|
                 .SeqRMW
                   .false
                   (.Pexpr [] () <|
                   .PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))))
                   (.Pexpr [] () (.PEsym (a! 6375)))
                   (a! 6376) <| .Pexpr [] () <| .PEcase (.Pexpr [] () (.PEsym (a! 6376))) <|
                 [(.Pattern [] <|
                   .CaseCtor
                     .Cspecified
                     [.Pattern [] (.CaseBase (.some (a! 6377), .BTy_object .OTy_integer))],
                   .Pexpr [] () <| .PEctor .Cspecified <|
                   [.Pexpr [.Astd "\xa76.5.2.4#2, sentence 2"] () <|
                    .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                    [.Pexpr [] () <|
                     .PEval
                       (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))),
                     .Pexpr [] () <|
                     .PEwrapI
                       (.Unsigned .Long)
                       .IOpAdd
                       (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                       [.Pexpr [] () <|
                        .PEval
                          (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))),
                        .Pexpr [] () (.PEsym (a! 6377))]) <|
                     .Pexpr
                       [.Avalue (.Ainteger (.Unsigned .Long))]
                       ()
                       (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]]),
                  (.Pattern
                     []
                     (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                   .Pexpr [] () <| .PEval <| .Vloaded <|
                   .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))]]) <|
              .Expr [] <|
              .Ecase
                (.Pexpr
                  []
                  ()
                  (.PEctor
                    .Ctuple
                    [.Pexpr [] () (.PEsym (a! 6369)), .Pexpr [] () (.PEsym (a! 6371))])) <|
              [(.Pattern [] <| .CaseCtor .Ctuple <|
                [.Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 6370), .BTy_object .OTy_pointer))],
                 .Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 6372), .BTy_object .OTy_integer))]],
                .Expr [] <|
                .Ewseq
                  (.Pattern [] (.CaseBase (.some (a! 6373), .BTy_object .OTy_pointer)))
                  (.Expr [] <| .Ememop .PtrArrayShift <|
                  [.Pexpr [] () (.PEsym (a! 6370)),
                   .Pexpr [] () <|
                   .PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Ichar))))),
                   .Pexpr [] () (.PEsym (a! 6372))]) <|
                .Expr
                  []
                  (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 6373))])))),
               (.Pattern
                  []
                  (.CaseBase
                    (.none, .BTy_tuple [.BTy_loaded .OTy_pointer, .BTy_loaded .OTy_integer])),
                .Expr [] <|
                .Epure
                  (.Pexpr
                    []
                    ()
                    (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_pointer_add))))]) <|
            .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6366))) <|
            [(.Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 6367), .BTy_object .OTy_pointer))],
              .Expr [] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6368), .BTy_boolean)))
                (.Expr [] <| .Ememop .PtrValidForDeref <|
                [.Pexpr
                   []
                   ()
                   (.PEval
                     (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Ichar)))))),
                 .Pexpr [] () (.PEsym (a! 6367))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
              .PEif (.Pexpr [] () (.PEsym (a! 6368))) (.Pexpr [] () (.PEsym (a! 6367))) <|
              .Pexpr
                [.Astd "\xa76.5.3.2#4, sentence 4"]
                ()
                (.PEundef .unknown .UB043_indirection_invalid_value)),
             (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
              .Expr [] <| .Epure <|
              .Pexpr
                [.Astd "\xa76.5.3.2#4, sentence 4"]
                ()
                (.PEundef .unknown .UB043_indirection_invalid_value))]) <| .Expr [] <| .Eaction <|
          .Paction .Pos <| .Action .unknown () <|
          .Load0
            (.Pexpr
              []
              ()
              (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Ichar)))))))
            (.Pexpr [] () (.PEsym (a! 6378)))
            .NA) <| .Expr [] <| .Erun () (c! "ret_6348" 6348) <|
        [.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
         [.Pexpr
            []
            ()
            (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Ichar)))))),
          .Pexpr [] () (.PEsym (a! 6379))]])
        (.Expr [.Aloc .unknown, .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6381), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 6383), .BTy_loaded .OTy_integer)),
           .Pattern [] (.CaseBase (.some (a! 6384), .BTy_loaded .OTy_integer))])
          (.Expr [] <| .Eunseq <|
          [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 6388), .BTy_object .OTy_pointer)))
             (.Expr
               [.Aloc .unknown, .Aexpr]
               (.Epure (.Pexpr [] () (.PEsym (addr! "script_only" 5711))))) <| .Expr [] <|
           .Eaction <| .Paction .Pos <| .Action .unknown () <|
           .Load0
             (.Pexpr
               []
               ()
               (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))))
             (.Pexpr [] () (.PEsym (a! 6388)))
             .NA,
           .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
           .Epure (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
        .Expr [] <| .Epure <| .Pexpr [] () <|
        .PEcase
          (.Pexpr
            []
            ()
            (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 6383)), .Pexpr [] () (.PEsym (a! 6384))])) <|
        [(.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 6385), .BTy_object .OTy_integer))],
           .Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 6386), .BTy_object .OTy_integer))]],
          .Pexpr [.Astd "\xa76.5.9#3"] () <|
          .PEif
            (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
            .PEop
              .OpEq
              (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
              .PEcall
                (.Sym (rt! "conv_int" 15837442492999787586))
                [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6385))]) <|
            .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
            .PEcall
              (.Sym (rt! "conv_int" 15837442492999787586))
              [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6386))])
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
          .Pexpr [] () <|
          .PEval
            (.Vloaded
              (.LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))))]) <|
      .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6380), .BTy_boolean)))
        (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6381))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 6382), .BTy_object .OTy_integer))],
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 6382)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
            (.Pexpr [] () (.PEval .Vtrue))
            (.Pexpr [] () (.PEval .Vfalse))),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <| .End <|
          [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
           .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
      .Eif
        (.Pexpr [] () (.PEsym (a! 6380)))
        (.Expr [.Aloc .unknown, .Astmt] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc .unknown, .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
            .Esseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] <| .CaseCtor .Ctuple <|
               [.Pattern [] (.CaseBase (.some (a! 6390), .BTy_loaded .OTy_pointer)),
                .Pattern [] <| .CaseCtor .Ctuple <|
                [.Pattern [] (.CaseBase (.some (a! 6391), .BTy_ctype)),
                 .Pattern [] (.CaseBase (.some (a! 6392), .BTy_list .BTy_ctype)),
                 .Pattern [] (.CaseBase (.some (a! 6393), .BTy_boolean)),
                 .Pattern [] (.CaseBase (.some (a! 6394), .BTy_boolean))]],
               .Pattern [] (.CaseBase (.some (a! 6397), .BTy_loaded .OTy_pointer)),
               .Pattern [] (.CaseBase (.some (a! 6401), .BTy_loaded .OTy_integer))])
              (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
              [.Expr [] <|
               .Esseq
                 (.Pattern [] (.CaseBase (.some (a! 6389), .BTy_loaded .OTy_pointer)))
                 (.Expr [.Aloc .unknown, .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <| .Vloaded <|
                 .LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "wgt_violation" 5059))))) <|
               .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
               [.Pexpr [] () (.PEsym (a! 6389)),
                .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 6389))))],
               .Expr [.Aloc .unknown, .Aexpr] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6399), .BTy_object .OTy_pointer)))
                 (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (a! 6398))))) <|
               .Expr [.Astd "\xa76.3.2.1#3"] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6400), .BTy_object .OTy_pointer)))
                 (.Expr [] <| .Ememop .PtrArrayShift <|
                 [.Pexpr [] () (.PEsym (a! 6399)),
                  .Pexpr [] () (.PEval (.Vctype Ty.char)),
                  .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
               .Expr
                 []
                 (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 6400))]))),
               .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .Long))] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6402), .BTy_object .OTy_pointer)))
                 (.Expr
                   [.Aloc .unknown, .Aexpr]
                   (.Epure (.Pexpr [] () (.PEsym (addr! "rng_draws" 5723))))) <| .Expr [] <|
               .Eaction <| .Paction .Pos <| .Action .unknown () <|
               .Load0
                 (.Pexpr
                   []
                   ()
                   (.PEval
                     (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
                 (.Pexpr [] () (.PEsym (a! 6402)))
                 .NA]) <| .Expr [] <|
            .Eif
              (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
              .PEop
                .OpEq
                (.Pexpr [] () <|
                .PEcall
                  (.Sym (rt! "params_length" 18299737999929047716))
                  [.Pexpr [] () (.PEsym (a! 6392))])
                (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))))
              (.Expr [] <| .Epure <|
              .Pexpr
                [.Astd "\xa76.5.2.2#6, sentence 3"]
                ()
                (.PEundef .unknown .UB038_number_of_args)) <| .Expr [] <|
            .Eif
              (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 6393))) <| .Pexpr [] () <|
              .PEnot <| .Pexpr [] () <|
              .PEare_compatible
                (.Pexpr [] () (.PEval (.Vctype (.Ctype [.Aloc .unknown, .Aloc .unknown] .Void0))))
                (.Pexpr [] () (.PEsym (a! 6391))))
              (.Expr [] <|
              .Epure
                (.Pexpr
                  [.Astd "\xa76.5.2.2#9"]
                  ()
                  (.PEundef .unknown .UB041_function_not_compatible))) <| .Expr [] <|
            .Esseq
              (.Pattern [] <|
              .CaseBase
                (.some (sym.Symbol Src.digest 6395 (.SD_FunArg .unknown 0)),
                 .BTy_object .OTy_pointer))
              (.Expr [] <|
              .Elet
                (.Pattern [] (.CaseBase (.some (a! 6403), .BTy_ctype)))
                (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                [.Pexpr [] () (.PEsym (a! 6392)),
                 .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
              .Eif
                (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                .PEare_compatible
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                  .Pointer
                    (.mk .true .false .false)
                    (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))))
                  (.Pexpr [] () (.PEsym (a! 6403))))
                (.Expr [] <| .Epure <|
                .Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible)) <|
              .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6404), .BTy_object .OTy_pointer)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
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
                  (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <| .Expr [] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Store0
                  .false
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                  .Pointer
                    (.mk .true .false .false)
                    (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))))
                  (.Pexpr [] () (.PEsym (a! 6404)))
                  (.Pexpr [] () (.PEsym (a! 6397)))
                  .NA)
                (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6404)))))) <| .Expr [] <|
            .Esseq
              (.Pattern [] <|
              .CaseBase
                (.some (sym.Symbol Src.digest 6396 (.SD_FunArg .unknown 1)),
                 .BTy_object .OTy_pointer))
              (.Expr [] <|
              .Elet
                (.Pattern [] (.CaseBase (.some (a! 6405), .BTy_ctype)))
                (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                [.Pexpr [] () (.PEsym (a! 6392)),
                 .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <| .Expr [] <|
              .Eif
                (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                .PEare_compatible
                  (.Pexpr [] () <| .PEval <| .Vctype <|
                  .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))
                  (.Pexpr [] () (.PEsym (a! 6405))))
                (.Expr [] <| .Epure <|
                .Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible)) <|
              .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6406), .BTy_object .OTy_pointer)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Create
                  (.Pexpr [] () <| .PEctor .Civalignof <|
                  [.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))])
                  (.Pexpr [] () <| .PEval <| .Vctype <|
                  .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))
                  (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 1)) <| .Expr [] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Store0
                  .false
                  (.Pexpr [] () <| .PEval <| .Vctype <|
                  .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))
                  (.Pexpr [] () (.PEsym (a! 6406)))
                  (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                  [.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))),
                   .Pexpr [] () (.PEsym (a! 6401))])
                  .NA)
                (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6406)))))) <| .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.some (a! 6407), .BTy_unit)))
              (.Expr [.Astd "\xa76.5.16.1#1, bullet 1"] <|
              .Eccall
                ()
                (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                .Pointer (.mk .false .false .false) <| .Ctype [] <|
                .Function
                  (.mk .false .false .false, .Ctype [.Aloc .unknown, .Aloc .unknown] .Void0)
                  [(.mk .false .false .false,
                    (.Ctype [.Aloc .unknown, .Aloc .unknown] <|
                     .Pointer
                       (.mk .true .false .false)
                       (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))),
                     .false)),
                   (.mk .false .false .false,
                    (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))),
                     .false))]
                  .false)
                (.Pexpr [] () (.PEsym (a! 6390))) <|
              [.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6395 (.SD_FunArg .unknown 0))),
               .Pexpr [] () (.PEsym (sym.Symbol Src.digest 6396 (.SD_FunArg .unknown 1)))]) <|
            .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit])))
              (.Expr [] <| .Eunseq <|
              [.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
               .Kill
                 (.Static0 <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                 .Pointer
                   (.mk .true .false .false)
                   (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))))
                 (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6395 (.SD_FunArg .unknown 0)))),
               .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
               .Kill
                 (.Static0
                   (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))
                 (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6396 (.SD_FunArg .unknown 1))))])
              (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6407))))))
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc .unknown, .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.some (a! 6408), .BTy_loaded .OTy_integer)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
            .Epure (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))) <|
          .Expr [] <| .Erun () (c! "ret_6348" 6348) <|
          [.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
           [.Pexpr
              []
              ()
              (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Ichar)))))),
            .Pexpr [] () (.PEsym (a! 6408))]])
          (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
        (.Expr [.Aloc .unknown, .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6410), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 6412), .BTy_loaded .OTy_integer)),
           .Pattern [] (.CaseBase (.some (a! 6413), .BTy_loaded .OTy_integer))])
          (.Expr [] <| .Eunseq <|
          [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
           .Ewseq
             (.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] (.CaseBase (.some (a! 6417), .BTy_loaded .OTy_integer)),
              .Pattern [] (.CaseBase (.some (a! 6418), .BTy_loaded .OTy_integer))])
             (.Expr [] <| .Eunseq <|
             [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .Int_))] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6422), .BTy_object .OTy_pointer)))
                (.Expr
                  [.Aloc .unknown, .Aexpr]
                  (.Epure (.Pexpr [] () (.PEsym (addr! "rng_block_used" 5721))))) <| .Expr [] <|
              .Eaction <| .Paction .Pos <| .Action .unknown () <|
              .Load0
                (.Pexpr
                  []
                  ()
                  (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))))
                (.Pexpr [] () (.PEsym (a! 6422)))
                .NA,
              .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
              .Epure
                (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 8))))))]) <|
           .Expr [] <| .Epure <| .Pexpr [] () <|
           .PEcase
             (.Pexpr
               []
               ()
               (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 6417)), .Pexpr [] () (.PEsym (a! 6418))])) <|
           [(.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 6419), .BTy_object .OTy_integer))],
              .Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 6420), .BTy_object .OTy_integer))]],
             .Pexpr [.Astd "\xa76.5.9#3"] () <|
             .PEif
               (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
               .PEop
                 .OpEq
                 (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                 .PEcall
                   (.Sym (rt! "conv_int" 15837442492999787586))
                   [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_int)),
                    .Pexpr [] () (.PEsym (a! 6419))]) <|
               .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
               .PEcall
                 (.Sym (rt! "conv_int" 15837442492999787586))
                 [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_int)), .Pexpr [] () (.PEsym (a! 6420))])
               (.Pexpr [] () <|
               .PEctor
                 .Cspecified
                 [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
             .Pexpr [] () <|
             .PEctor .Cspecified [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
            (.Pattern
               []
               (.CaseBase (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer])),
             .Pexpr [] () <| .PEval <| .Vloaded <|
             .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))],
           .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
           .Epure (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
        .Expr [] <| .Epure <| .Pexpr [] () <|
        .PEcase
          (.Pexpr
            []
            ()
            (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 6412)), .Pexpr [] () (.PEsym (a! 6413))])) <|
        [(.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 6414), .BTy_object .OTy_integer))],
           .Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 6415), .BTy_object .OTy_integer))]],
          .Pexpr [.Astd "\xa76.5.9#3"] () <|
          .PEif
            (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
            .PEop
              .OpEq
              (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
              .PEcall
                (.Sym (rt! "conv_int" 15837442492999787586))
                [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6414))]) <|
            .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
            .PEcall
              (.Sym (rt! "conv_int" 15837442492999787586))
              [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6415))])
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
          .Pexpr [] () <|
          .PEval
            (.Vloaded
              (.LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))))]) <|
      .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6409), .BTy_boolean)))
        (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6410))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 6411), .BTy_object .OTy_integer))],
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 6411)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
            (.Pexpr [] () (.PEval .Vtrue))
            (.Pexpr [] () (.PEval .Vfalse))),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <| .End <|
          [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
           .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
      .Eif
        (.Pexpr [] () (.PEsym (a! 6409)))
        (.Expr [.Aloc .unknown, .Astmt] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (addr! "value" 5755), .BTy_object .OTy_pointer)))
          (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
          .Create
            (.Pexpr [] () <| .PEctor .Civalignof <|
            [.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype
               [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
               (.Basic (.Integer (.Unsigned .LongLong)))])
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype
              [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
              (.Basic (.Integer (.Unsigned .LongLong))))
            (.PrefSource .unknown [c! "next_byte" 5753, addr! "value" 5755])) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (addr! "i" 5756), .BTy_object .OTy_pointer)))
          (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
          .Create
            (.Pexpr [] () <| .PEctor .Civalignof <|
            [.Pexpr
               []
               ()
               (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_))))))])
            (.Pexpr
              []
              ()
              (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))))
            (.PrefSource .unknown [c! "next_byte" 5753, addr! "i" 5756])) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc .unknown, .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.some (a! 6423), .BTy_loaded .OTy_integer)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .LongLong))] <|
            .Esseq
              (.Pattern [] (.CaseBase (.some (a! 6424), .BTy_loaded .OTy_pointer)))
              (.Expr [.Aloc .unknown, .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <| .Vloaded <|
              .LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "splitmix64" 5750))))) <|
            .Expr [] <|
            .Elet
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] (.CaseBase (.some (a! 6425), .BTy_ctype)),
               .Pattern [] (.CaseBase (.some (a! 6426), .BTy_list .BTy_ctype)),
               .Pattern [] (.CaseBase (.none, .BTy_boolean)),
               .Pattern [] (.CaseBase (.none, .BTy_boolean))])
              (.Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 6424))))) <| .Expr [] <|
            .Eif
              (.Pexpr [] () <|
              .PEop
                .OpEq
                (.Pexpr [] () <|
                .PEcall
                  (.Sym (rt! "params_length" 18299737999929047716))
                  [.Pexpr [] () (.PEsym (a! 6426))])
                (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
              (.Expr [] <|
              .Eif
                (.Pexpr [] () <|
                .PEare_compatible
                  (.Pexpr [] () <| .PEval <| .Vctype <|
                  .Ctype
                    [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
                    (.Basic (.Integer (.Unsigned .LongLong))))
                  (.Pexpr [] () (.PEsym (a! 6425))))
                (.Expr [] <|
                .Eccall
                  ()
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                  .Pointer (.mk .false .false .false) <| .Ctype [] <|
                  .Function
                    (.mk .false .false .false,
                     .Ctype
                       [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
                       (.Basic (.Integer (.Unsigned .LongLong))))
                    []
                    .false)
                  (.Pexpr [] () (.PEsym (a! 6424)))
                  []) <| .Expr [] <| .Epure <|
              .Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible)) <|
            .Expr [] <| .Epure <|
            .Pexpr [.Astd "\xa76.5.2.2#6, sentence 3"] () (.PEundef .unknown .UB038_number_of_args)) <|
          .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
          .Store0
            .false
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype
              [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
              (.Basic (.Integer (.Unsigned .LongLong))))
            (.Pexpr [] () (.PEsym (addr! "value" 5755)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
            [.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype
               [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
               (.Basic (.Integer (.Unsigned .LongLong))),
             .Pexpr [] () (.PEsym (a! 6423))])
            .NA) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc .unknown, .Astmt, .Astd "\xa76.2.4#6"] <| .Eaction <| .Paction .Pos <|
          .Action .unknown () <|
          .Store0
            .false
            (.Pexpr
              []
              ()
              (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))))
            (.Pexpr [] () (.PEsym (addr! "i" 5756)))
            (.Pexpr [] () <| .PEval <| .Vloaded <|
            .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))
            .NA) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc .unknown, .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr
              [.Aloc .unknown,
               .Aexpr,
               .Avalue (.Ainteger (.Unsigned .Int_)),
               .Astd "\xa76.5.16#3, sentence 4"] <|
            .Ewseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] (.CaseBase (.some (a! 6427), .BTy_object .OTy_pointer)),
               .Pattern [] (.CaseBase (.some (a! 6428), .BTy_loaded .OTy_integer))])
              (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
              [.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (addr! "i" 5756)))),
               .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
               .Epure
                 (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
            .Expr [] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
              .Action .unknown () <|
              .Store0
                .false
                (.Pexpr
                  []
                  ()
                  (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))))
                (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 6427)))
                (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
                .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                [.Pexpr
                   []
                   ()
                   (.PEval
                     (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))),
                 .Pexpr [] () (.PEsym (a! 6428))])
                .NA) <| .Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
            .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
            [.Pexpr
               []
               ()
               (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))),
             .Pexpr [] () (.PEsym (a! 6428))])
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc .unknown, .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [.Aloc .unknown, .Astmt, .Alabel (.LAloop 5758)] <|
            .Esave
              (c! "while_6429" 6429, .BTy_unit)
              [(addr! "value" 5755,
                ((.BTy_object .OTy_pointer,
                  .some <|
                  (.Ctype
                     [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
                     (.Basic (.Integer (.Unsigned .LongLong))),
                   .By_pointer)),
                 .Pexpr [] () (.PEsym (addr! "value" 5755)))),
               (addr! "i" 5756,
                ((.BTy_object .OTy_pointer,
                  .some (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_))), .By_pointer)),
                 .Pexpr [] () (.PEsym (addr! "i" 5756))))] <| .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.some (a! 6431), .BTy_loaded .OTy_integer)))
              (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
              .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
              .Ewseq
                (.Pattern [] <| .CaseCtor .Ctuple <|
                [.Pattern [] (.CaseBase (.some (a! 6433), .BTy_loaded .OTy_integer)),
                 .Pattern [] (.CaseBase (.some (a! 6434), .BTy_loaded .OTy_integer))])
                (.Expr [] <| .Eunseq <|
                [.Expr
                   [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_)), .Astd "\xa76.5.8"] <|
                 .Ewseq
                   (.Pattern [] <| .CaseCtor .Ctuple <|
                   [.Pattern [] (.CaseBase (.some (a! 6439), .BTy_loaded .OTy_integer)),
                    .Pattern [] (.CaseBase (.some (a! 6440), .BTy_loaded .OTy_integer))])
                   (.Expr [] <| .Eunseq <|
                   [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .Int_))] <|
                    .Ewseq
                      (.Pattern [] (.CaseBase (.some (a! 6438), .BTy_object .OTy_pointer)))
                      (.Expr
                        [.Aloc .unknown, .Aexpr]
                        (.Epure (.Pexpr [] () (.PEsym (addr! "i" 5756))))) <| .Expr [] <|
                    .Eaction <| .Paction .Pos <| .Action .unknown () <|
                    .Load0
                      (.Pexpr [] () <|
                      .PEval
                        (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_))))))
                      (.Pexpr [] () (.PEsym (a! 6438)))
                      .NA,
                    .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <| .Epure <|
                    .Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 8)))))]) <|
                 .Expr [] <|
                 .Ecase
                   (.Pexpr [] () <|
                   .PEctor
                     .Ctuple
                     [.Pexpr [] () (.PEsym (a! 6439)), .Pexpr [] () (.PEsym (a! 6440))]) <|
                 [(.Pattern [] <| .CaseCtor .Ctuple <|
                   [.Pattern [] <|
                    .CaseCtor
                      .Cspecified
                      [.Pattern [] (.CaseBase (.some (a! 6441), .BTy_object .OTy_integer))],
                    .Pattern [] <|
                    .CaseCtor
                      .Cspecified
                      [.Pattern [] (.CaseBase (.some (a! 6442), .BTy_object .OTy_integer))]],
                   .Expr [.Astd "\xa76.5.8#6"] <| .Epure <| .Pexpr [] () <|
                   .PEif
                     (.Pexpr [] () <|
                     .PEop
                       .OpLt
                       (.Pexpr [.Astd "\xa76.5.8#3"] () <|
                       .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                       [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_int)),
                        .Pexpr [] () (.PEsym (a! 6441))]) <| .Pexpr [.Astd "\xa76.5.8#3"] () <|
                     .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                     [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_int)),
                      .Pexpr [] () (.PEsym (a! 6442))])
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
                   .Expr [] <| .Epure <| .Pexpr [] () <| .PEval <| .Vloaded <|
                   .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))],
                 .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                 .Epure
                   (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
              .Expr [] <| .Epure <| .Pexpr [] () <|
              .PEcase
                (.Pexpr
                  []
                  ()
                  (.PEctor
                    .Ctuple
                    [.Pexpr [] () (.PEsym (a! 6433)), .Pexpr [] () (.PEsym (a! 6434))])) <|
              [(.Pattern [] <| .CaseCtor .Ctuple <|
                [.Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 6435), .BTy_object .OTy_integer))],
                 .Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 6436), .BTy_object .OTy_integer))]],
                .Pexpr [.Astd "\xa76.5.9#3"] () <|
                .PEif
                  (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                  .PEop
                    .OpEq
                    (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                    .PEcall
                      (.Sym (rt! "conv_int" 15837442492999787586))
                      [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6435))]) <|
                  .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                  .PEcall
                    (.Sym (rt! "conv_int" 15837442492999787586))
                    [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6436))])
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
                .Pexpr [] () <| .PEval <| .Vloaded <|
                .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))]) <|
            .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.some (a! 6430), .BTy_boolean)))
              (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6431))) <|
              [(.Pattern [] <|
                .CaseCtor
                  .Cspecified
                  [.Pattern [] (.CaseBase (.some (a! 6432), .BTy_object .OTy_integer))],
                .Expr [] <| .Epure <| .Pexpr [] () <|
                .PEif
                  (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                  .PEop
                    .OpEq
                    (.Pexpr [] () (.PEsym (a! 6432)))
                    (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
                  (.Pexpr [] () (.PEval .Vtrue))
                  (.Pexpr [] () (.PEval .Vfalse))),
               (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                .Expr [] <| .End <|
                [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
                 .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
            .Eif
              (.Pexpr [] () (.PEsym (a! 6430)))
              (.Expr [] <|
              .Esseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [.Aloc .unknown, .Astmt] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                  (.Expr [.Aloc .unknown, .Astmt] <|
                  .Esseq
                    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                    (.Expr [.Aloc .unknown, .Astmt] <|
                    .Esseq
                      (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
                      (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                      .Expr
                        [.Aloc .unknown,
                         .Aexpr,
                         .Avalue (.Ainteger (.Unsigned .Ichar)),
                         .Astd "\xa76.5.16#3, sentence 4"] <|
                      .Ewseq
                        (.Pattern [] <| .CaseCtor .Ctuple <|
                        [.Pattern [] (.CaseBase (.some (a! 6444), .BTy_object .OTy_pointer)),
                         .Pattern [] (.CaseBase (.some (a! 6472), .BTy_loaded .OTy_integer))])
                        (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
                        [.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.3.2"] <|
                         .Ewseq
                           (.Pattern [] (.CaseBase (.some (a! 6445), .BTy_loaded .OTy_pointer)))
                           (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.6"] <|
                           .Ewseq
                             (.Pattern [] <| .CaseCtor .Ctuple <|
                             [.Pattern [] (.CaseBase (.some (a! 6448), .BTy_loaded .OTy_pointer)),
                              .Pattern [] (.CaseBase (.some (a! 6450), .BTy_loaded .OTy_integer))])
                             (.Expr [] <| .Eunseq <|
                             [.Expr [.Aloc .unknown, .Aexpr] <|
                              .Ewseq
                                (.Pattern [] (.CaseBase (.some (a! 6453), .BTy_object .OTy_pointer)))
                                (.Expr
                                  [.Aloc .unknown, .Aexpr]
                                  (.Epure (.Pexpr [] () (.PEsym (addr! "rng_block" 5720))))) <|
                              .Expr [.Astd "\xa76.3.2.1#3"] <|
                              .Ewseq
                                (.Pattern [] (.CaseBase (.some (a! 6454), .BTy_object .OTy_pointer)))
                                (.Expr [] <| .Ememop .PtrArrayShift <|
                                [.Pexpr [] () (.PEsym (a! 6453)),
                                 .Pexpr [] () <| .PEval <|
                                 .Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Ichar)))),
                                 .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
                              .Expr [] <|
                              .Epure
                                (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 6454))])),
                              .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .Int_))] <|
                              .Ewseq
                                (.Pattern [] (.CaseBase (.some (a! 6455), .BTy_object .OTy_pointer)))
                                (.Expr
                                  [.Aloc .unknown, .Aexpr]
                                  (.Epure (.Pexpr [] () (.PEsym (addr! "i" 5756))))) <| .Expr [] <|
                              .Eaction <| .Paction .Pos <| .Action .unknown () <|
                              .Load0
                                (.Pexpr [] () <| .PEval <|
                                .Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))
                                (.Pexpr [] () (.PEsym (a! 6455)))
                                .NA]) <| .Expr [] <|
                           .Ecase
                             (.Pexpr [] () <|
                             .PEctor
                               .Ctuple
                               [.Pexpr [] () (.PEsym (a! 6448)), .Pexpr [] () (.PEsym (a! 6450))]) <|
                           [(.Pattern [] <| .CaseCtor .Ctuple <|
                             [.Pattern [] <|
                              .CaseCtor
                                .Cspecified
                                [.Pattern [] (.CaseBase (.some (a! 6449), .BTy_object .OTy_pointer))],
                              .Pattern [] <|
                              .CaseCtor
                                .Cspecified
                                [.Pattern [] (.CaseBase (.some (a! 6451), .BTy_object .OTy_integer))]],
                             .Expr [] <|
                             .Ewseq
                               (.Pattern [] (.CaseBase (.some (a! 6452), .BTy_object .OTy_pointer)))
                               (.Expr [] <| .Ememop .PtrArrayShift <|
                               [.Pexpr [] () (.PEsym (a! 6449)),
                                .Pexpr [] () <| .PEval <|
                                .Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Ichar)))),
                                .Pexpr [] () (.PEsym (a! 6451))]) <| .Expr [] <|
                             .Epure
                               (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 6452))]))),
                            (.Pattern [] <|
                             .CaseBase
                               (.none, .BTy_tuple [.BTy_loaded .OTy_pointer, .BTy_loaded .OTy_integer]),
                             .Expr [] <| .Epure <|
                             .Pexpr
                               []
                               ()
                               (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_pointer_add)))]) <|
                         .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6445))) <|
                         [(.Pattern [] <|
                           .CaseCtor
                             .Cspecified
                             [.Pattern [] (.CaseBase (.some (a! 6446), .BTy_object .OTy_pointer))],
                           .Expr [] <|
                           .Ewseq
                             (.Pattern [] (.CaseBase (.some (a! 6447), .BTy_boolean)))
                             (.Expr [] <| .Ememop .PtrValidForDeref <|
                             [.Pexpr [] () <| .PEval <|
                              .Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Ichar)))),
                              .Pexpr [] () (.PEsym (a! 6446))]) <| .Expr [] <| .Epure <|
                           .Pexpr [] () <|
                           .PEif
                             (.Pexpr [] () (.PEsym (a! 6447)))
                             (.Pexpr [] () (.PEsym (a! 6446))) <|
                           .Pexpr
                             [.Astd "\xa76.5.3.2#4, sentence 4"]
                             ()
                             (.PEundef .unknown .UB043_indirection_invalid_value)),
                          (.Pattern
                             []
                             (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                           .Expr [] <| .Epure <|
                           .Pexpr
                             [.Astd "\xa76.5.3.2#4, sentence 4"]
                             ()
                             (.PEundef .unknown .UB043_indirection_invalid_value))],
                         .Expr
                           [.Aloc .unknown,
                            .Aexpr,
                            .Avalue (.Ainteger (.Unsigned .Ichar)),
                            .Astd "\xa76.5.4"] <|
                         .Ewseq
                           (.Pattern [] (.CaseBase (.some (a! 6456), .BTy_loaded .OTy_integer)))
                           (.Expr
                             [.Aloc .unknown,
                              .Aexpr,
                              .Avalue (.Ainteger (.Unsigned .LongLong)),
                              .Astd "\xa76.5.7"] <|
                           .Ewseq
                             (.Pattern [] <| .CaseCtor .Ctuple <|
                             [.Pattern [] (.CaseBase (.some (a! 6458), .BTy_loaded .OTy_integer)),
                              .Pattern [] (.CaseBase (.some (a! 6459), .BTy_loaded .OTy_integer))])
                             (.Expr [] <| .Eunseq <|
                             [.Expr
                                [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .LongLong))] <|
                              .Ewseq
                                (.Pattern [] (.CaseBase (.some (a! 6464), .BTy_object .OTy_pointer)))
                                (.Expr
                                  [.Aloc .unknown, .Aexpr]
                                  (.Epure (.Pexpr [] () (.PEsym (addr! "value" 5755))))) <|
                              .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                              .Load0
                                (.Pexpr [] () <| .PEval <| .Vctype <|
                                .Ctype
                                  [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
                                  (.Basic (.Integer (.Unsigned .LongLong))))
                                (.Pexpr [] () (.PEsym (a! 6464)))
                                .NA,
                              .Expr
                                [.Aloc .unknown,
                                 .Aexpr,
                                 .Avalue (.Ainteger (.Unsigned .Int_)),
                                 .Astd "\xa76.5.5"] <|
                              .Ewseq
                                (.Pattern [] <| .CaseCtor .Ctuple <|
                                [.Pattern [] (.CaseBase (.some (a! 6466), .BTy_loaded .OTy_integer)),
                                 .Pattern [] (.CaseBase (.some (a! 6467), .BTy_loaded .OTy_integer))])
                                (.Expr [] <| .Eunseq <|
                                [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                                 .Epure <|
                                 .Pexpr
                                   []
                                   ()
                                   (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 8))))),
                                 .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .Int_))] <|
                                 .Ewseq
                                   (.Pattern [] (.CaseBase (.some (a! 6465), .BTy_object .OTy_pointer)))
                                   (.Expr
                                     [.Aloc .unknown, .Aexpr]
                                     (.Epure (.Pexpr [] () (.PEsym (addr! "i" 5756))))) <|
                                 .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                                 .Load0
                                   (.Pexpr [] () <| .PEval <|
                                   .Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))
                                   (.Pexpr [] () (.PEsym (a! 6465)))
                                   .NA]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
                              .PEcase
                                (.Pexpr [] () <|
                                .PEctor
                                  .Ctuple
                                  [.Pexpr [] () (.PEsym (a! 6466)), .Pexpr [] () (.PEsym (a! 6467))]) <|
                              [(.Pattern [] <| .CaseCtor .Ctuple <|
                                [.Pattern [] <|
                                 .CaseCtor
                                   .Cspecified
                                   [.Pattern [] (.CaseBase (.some (a! 6468), .BTy_object .OTy_integer))],
                                 .Pattern [] <|
                                 .CaseCtor
                                   .Cspecified
                                   [.Pattern [] (.CaseBase (.some (a! 6469), .BTy_object .OTy_integer))]],
                                .Pexpr [] () <| .PEctor .Cspecified <|
                                [.Pexpr [.Astd "\xa76.5.5#4"] () <|
                                 .PEwrapI
                                   (.Unsigned .Int_)
                                   .IOpMul
                                   (.Pexpr [.Astd "\xa76.5.5#3"] () <|
                                   .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                   [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_int)),
                                    .Pexpr [] () (.PEsym (a! 6468))]) <|
                                 .Pexpr [.Astd "\xa76.5.5#3"] () <|
                                 .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                 [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_int)),
                                  .Pexpr [] () (.PEsym (a! 6469))]]),
                               (.Pattern [] <|
                                .CaseBase
                                  (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer]),
                                .Pexpr [] () <| .PEval <| .Vloaded <|
                                .LVunspecified
                                  (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))]]) <|
                           .Expr [] <| .Epure <| .Pexpr [] () <|
                           .PEcase
                             (.Pexpr [] () <|
                             .PEctor
                               .Ctuple
                               [.Pexpr [] () (.PEsym (a! 6458)), .Pexpr [] () (.PEsym (a! 6459))]) <|
                           [(.Pattern [] <| .CaseCtor .Ctuple <|
                             [.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)),
                              .Pattern
                                []
                                (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))])],
                             .Pexpr
                               [.Astd "\xa76.5#5"]
                               ()
                               (.PEundef .unknown .UB036_exceptional_condition)),
                            (.Pattern [] <| .CaseCtor .Ctuple <|
                             [.Pattern
                                []
                                (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                              .Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer))],
                             .Pexpr [] () <| .PEval <| .Vloaded <|
                             .LVunspecified
                               (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong))))),
                            (.Pattern [] <| .CaseCtor .Ctuple <|
                             [.Pattern [] <|
                              .CaseCtor
                                .Cspecified
                                [.Pattern [] (.CaseBase (.some (a! 6460), .BTy_object .OTy_integer))],
                              .Pattern [] <|
                              .CaseCtor
                                .Cspecified
                                [.Pattern [] (.CaseBase (.some (a! 6461), .BTy_object .OTy_integer))]],
                             .Pexpr [] () <|
                             .PElet
                               (.Pattern [] (.CaseBase (.some (a! 6462), .BTy_object .OTy_integer)))
                               (.Pexpr [] () <|
                               .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                               [.Pexpr [] () <| .PEval <|
                                .Vctype
                                  (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong)))),
                                .Pexpr [] () (.PEsym (a! 6460))]) <| .Pexpr [] () <|
                             .PElet
                               (.Pattern [] (.CaseBase (.some (a! 6463), .BTy_object .OTy_integer)))
                               (.Pexpr [] () <|
                               .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                               [.Pexpr [] () <| .PEval <|
                                .Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))),
                                .Pexpr [] () (.PEsym (a! 6461))]) <| .Pexpr [] () <|
                             .PEif
                               (.Pexpr [] () <|
                               .PEop
                                 .OpLt
                                 (.Pexpr [] () (.PEsym (a! 6463)))
                                 (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                               (.Pexpr
                                 [.Astd "\xa76.5.7#3, sentence 3"]
                                 ()
                                 (.PEundef .unknown .UB051a_negative_shift)) <| .Pexpr [] () <|
                             .PEif
                               (.Pexpr [] () <|
                               .PEop
                                 .OpOr
                                 (.Pexpr [] () <|
                                 .PEop
                                   .OpLt
                                   (.Pexpr [.Avalue (.Ainteger (.Unsigned .Int_))] () <|
                                   .PEcall (.Sym (rt! "ctype_width" 4407163753016978909)) <|
                                   [.Pexpr [] () <| .PEval <|
                                    .Vctype
                                      (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong))))])
                                   (.Pexpr [] () (.PEsym (a! 6463)))) <| .Pexpr [] () <|
                               .PEop
                                 .OpEq
                                 (.Pexpr [.Avalue (.Ainteger (.Unsigned .Int_))] () <|
                                 .PEcall (.Sym (rt! "ctype_width" 4407163753016978909)) <|
                                 [.Pexpr [] () <| .PEval <|
                                  .Vctype
                                    (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .LongLong))))])
                                 (.Pexpr [] () (.PEsym (a! 6463))))
                               (.Pexpr
                                 [.Astd "\xa76.5.7#3, sentence 3"]
                                 ()
                                 (.PEundef .unknown .UB51b_shift_too_large)) <| .Pexpr [] () <|
                             .PEctor .Cspecified <|
                             [.Pexpr [.Astd "6.5.7#5, sentence 2"] () <|
                              .PEop .OpDiv (.Pexpr [] () (.PEsym (a! 6462))) <| .Pexpr [] () <|
                              .PEop
                                .OpExp
                                (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2)))))
                                (.Pexpr [] () (.PEsym (a! 6463)))])]) <| .Expr [] <| .Epure <|
                         .Pexpr [] () <|
                         .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                         [.Pexpr [] () <|
                          .PEval
                            (.Vctype
                              (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Ichar))))),
                          .Pexpr [] () (.PEsym (a! 6456))]]) <| .Expr [] <|
                      .Ewseq
                        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                        (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
                        .Action .unknown () <|
                        .Store0
                          .false
                          (.Pexpr [] () <|
                          .PEval
                            (.Vctype
                              (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Ichar))))))
                          (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 6444)))
                          (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
                          .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                          [.Pexpr [] () <| .PEval <|
                           .Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Ichar)))),
                           .Pexpr [] () (.PEsym (a! 6472))])
                          .NA) <| .Expr [] <| .Epure <|
                      .Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
                      .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                      [.Pexpr [] () <|
                       .PEval
                         (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Ichar))))),
                       .Pexpr [] () (.PEsym (a! 6472))])
                      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
                  .Esseq
                    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                    (.Expr [.Aloc .unknown, .Astmt, .Alabel (.LAloop_continue 5758)] <|
                    .Esave
                      (c! "__cerb_continue183" 5757, .BTy_unit)
                      [(addr! "value" 5755,
                        ((.BTy_object .OTy_pointer,
                          .some <|
                          (.Ctype
                             [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
                             (.Basic (.Integer (.Unsigned .LongLong))),
                           .By_pointer)),
                         .Pexpr [] () (.PEsym (addr! "value" 5755)))),
                       (addr! "i" 5756,
                        ((.BTy_object .OTy_pointer,
                          .some <|
                          (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_))),
                           .By_pointer)),
                         .Pexpr [] () (.PEsym (addr! "i" 5756))))] <|
                    .Expr [.Aloc .unknown, .Astmt] <|
                    .Esseq
                      (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
                      (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                      .Expr
                        [.Aloc .unknown,
                         .Aexpr,
                         .Avalue (.Ainteger (.Unsigned .Int_)),
                         .Astd "\xa76.5.2.4",
                         .Astd "\xa76.5.2.4#2, sentence 1",
                         .Astd "\xa76.5.2.4#2, sentence 3"] <|
                      .Ewseq
                        (.Pattern [] (.CaseBase (.some (a! 6473), .BTy_object .OTy_pointer)))
                        (.Expr
                          [.Aloc .unknown, .Aexpr]
                          (.Epure (.Pexpr [] () (.PEsym (addr! "i" 5756))))) <| .Expr [] <|
                      .Eaction <| .Paction .Pos <| .Action .unknown () <|
                      .SeqRMW
                        .false
                        (.Pexpr [] () <|
                        .PEval
                          (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_))))))
                        (.Pexpr [] () (.PEsym (a! 6473)))
                        (a! 6474) <| .Pexpr [] () <| .PEcase (.Pexpr [] () (.PEsym (a! 6474))) <|
                      [(.Pattern [] <|
                        .CaseCtor
                          .Cspecified
                          [.Pattern [] (.CaseBase (.some (a! 6475), .BTy_object .OTy_integer))],
                        .Pexpr [] () <| .PEctor .Cspecified <|
                        [.Pexpr [.Astd "\xa76.5.2.4#2, sentence 2"] () <|
                         .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                         [.Pexpr [] () <|
                          .PEval
                            (.Vctype
                              (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_))))),
                          .Pexpr [] () <|
                          .PEwrapI
                            (.Unsigned .Int_)
                            .IOpAdd
                            (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                            [.Pexpr [] () <| .PEval <|
                             .Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))),
                             .Pexpr [] () (.PEsym (a! 6475))]) <|
                          .Pexpr
                            [.Avalue (.Ainteger (.Unsigned .Int_))]
                            ()
                            (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]]),
                       (.Pattern
                          []
                          (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                        .Pexpr [] () <| .PEval <| .Vloaded <|
                        .LVunspecified
                          (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))])
                      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
                    (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                  (.Expr [.Aloc .unknown, .Astmt, .Alabel (.LAloop_continue 5758)] <|
                  .Esave
                    (c! "continue_6349" 6349, .BTy_unit)
                    [(addr! "value" 5755,
                      ((.BTy_object .OTy_pointer,
                        .some <|
                        (.Ctype
                           [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
                           (.Basic (.Integer (.Unsigned .LongLong))),
                         .By_pointer)),
                       .Pexpr [] () (.PEsym (addr! "value" 5755)))),
                     (addr! "i" 5756,
                      ((.BTy_object .OTy_pointer,
                        .some
                          (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_))),
                           .By_pointer)),
                       .Pexpr [] () (.PEsym (addr! "i" 5756))))]
                    (.Expr [.Aloc .unknown, .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
                  (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
              .Erun
                ()
                (c! "while_6429" 6429)
                [.Pexpr [] () (.PEsym (addr! "value" 5755)), .Pexpr [] () (.PEsym (addr! "i" 5756))])
              (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [.Aloc .unknown, .Astmt, .Alabel (.LAloop_break 5758)] <|
            .Esave
              (c! "break_6350" 6350, .BTy_unit)
              [(addr! "value" 5755,
                ((.BTy_object .OTy_pointer,
                  .some <|
                  (.Ctype
                     [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
                     (.Basic (.Integer (.Unsigned .LongLong))),
                   .By_pointer)),
                 .Pexpr [] () (.PEsym (addr! "value" 5755)))),
               (addr! "i" 5756,
                ((.BTy_object .OTy_pointer,
                  .some (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_))), .By_pointer)),
                 .Pexpr [] () (.PEsym (addr! "i" 5756))))]
              (.Expr [.Aloc .unknown, .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc .unknown, .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr
              [.Aloc .unknown,
               .Aexpr,
               .Avalue (.Ainteger (.Unsigned .Int_)),
               .Astd "\xa76.5.16#3, sentence 4"] <|
            .Ewseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] (.CaseBase (.some (a! 6476), .BTy_object .OTy_pointer)),
               .Pattern [] (.CaseBase (.some (a! 6477), .BTy_loaded .OTy_integer))])
              (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
              [.Expr
                 [.Aloc .unknown, .Aexpr]
                 (.Epure (.Pexpr [] () (.PEsym (addr! "rng_block_used" 5721)))),
               .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
               .Epure
                 (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
            .Expr [] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
              .Action .unknown () <|
              .Store0
                .false
                (.Pexpr
                  []
                  ()
                  (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))))
                (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 6476)))
                (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
                .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                [.Pexpr
                   []
                   ()
                   (.PEval
                     (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))),
                 .Pexpr [] () (.PEsym (a! 6477))])
                .NA) <| .Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
            .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
            [.Pexpr
               []
               ()
               (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))),
             .Pexpr [] () (.PEsym (a! 6477))])
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
          .Kill
            (.Static0 <|
            .Ctype
              [.Aloc .unknown, .Atypedef (c! "wgt_u64" 5054)]
              (.Basic (.Integer (.Unsigned .LongLong))))
            (.Pexpr [] () (.PEsym (addr! "value" 5755)))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
          .Kill
            (.Static0 (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))
            (.Pexpr [] () (.PEsym (addr! "i" 5756))))
          (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
        (.Expr [.Aloc .unknown, .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6492), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .Ichar))] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.some (a! 6491), .BTy_object .OTy_pointer)))
          (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.3.2"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 6478), .BTy_loaded .OTy_pointer)))
            (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.6"] <|
            .Ewseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] (.CaseBase (.some (a! 6481), .BTy_loaded .OTy_pointer)),
               .Pattern [] (.CaseBase (.some (a! 6483), .BTy_loaded .OTy_integer))])
              (.Expr [] <| .Eunseq <|
              [.Expr [.Aloc .unknown, .Aexpr] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6486), .BTy_object .OTy_pointer)))
                 (.Expr
                   [.Aloc .unknown, .Aexpr]
                   (.Epure (.Pexpr [] () (.PEsym (addr! "rng_block" 5720))))) <|
               .Expr [.Astd "\xa76.3.2.1#3"] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6487), .BTy_object .OTy_pointer)))
                 (.Expr [] <| .Ememop .PtrArrayShift <|
                 [.Pexpr [] () (.PEsym (a! 6486)),
                  .Pexpr [] () <|
                  .PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Ichar))))),
                  .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
               .Expr
                 []
                 (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 6487))]))),
               .Expr
                 [.Aloc .unknown,
                  .Aexpr,
                  .Avalue (.Ainteger (.Unsigned .Int_)),
                  .Astd "\xa76.5.2.4",
                  .Astd "\xa76.5.2.4#2, sentence 1",
                  .Astd "\xa76.5.2.4#2, sentence 3"] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6488), .BTy_object .OTy_pointer)))
                 (.Expr
                   [.Aloc .unknown, .Aexpr]
                   (.Epure (.Pexpr [] () (.PEsym (addr! "rng_block_used" 5721))))) <| .Expr [] <|
               .Eaction <| .Paction .Pos <| .Action .unknown () <|
               .SeqRMW
                 .false
                 (.Pexpr
                   []
                   ()
                   (.PEval
                     (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))))
                 (.Pexpr [] () (.PEsym (a! 6488)))
                 (a! 6489) <| .Pexpr [] () <| .PEcase (.Pexpr [] () (.PEsym (a! 6489))) <|
               [(.Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 6490), .BTy_object .OTy_integer))],
                 .Pexpr [] () <| .PEctor .Cspecified <|
                 [.Pexpr [.Astd "\xa76.5.2.4#2, sentence 2"] () <|
                  .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                  [.Pexpr [] () <|
                   .PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_))))),
                   .Pexpr [] () <|
                   .PEwrapI
                     (.Unsigned .Int_)
                     .IOpAdd
                     (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                     [.Pexpr [] () <|
                      .PEval
                        (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_))))),
                      .Pexpr [] () (.PEsym (a! 6490))]) <|
                   .Pexpr
                     [.Avalue (.Ainteger (.Unsigned .Int_))]
                     ()
                     (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]]),
                (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                 .Pexpr [] () <| .PEval <| .Vloaded <|
                 .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))]]) <|
            .Expr [] <|
            .Ecase
              (.Pexpr
                []
                ()
                (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 6481)), .Pexpr [] () (.PEsym (a! 6483))])) <|
            [(.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 6482), .BTy_object .OTy_pointer))],
               .Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 6484), .BTy_object .OTy_integer))]],
              .Expr [] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6485), .BTy_object .OTy_pointer)))
                (.Expr [] <| .Ememop .PtrArrayShift <|
                [.Pexpr [] () (.PEsym (a! 6482)),
                 .Pexpr
                   []
                   ()
                   (.PEval
                     (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Ichar)))))),
                 .Pexpr [] () (.PEsym (a! 6484))]) <|
              .Expr
                []
                (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 6485))])))),
             (.Pattern
                []
                (.CaseBase (.none, .BTy_tuple [.BTy_loaded .OTy_pointer, .BTy_loaded .OTy_integer])),
              .Expr [] <|
              .Epure
                (.Pexpr [] () (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_pointer_add))))]) <|
          .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6478))) <|
          [(.Pattern [] <|
            .CaseCtor
              .Cspecified
              [.Pattern [] (.CaseBase (.some (a! 6479), .BTy_object .OTy_pointer))],
            .Expr [] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.some (a! 6480), .BTy_boolean)))
              (.Expr [] <| .Ememop .PtrValidForDeref <|
              [.Pexpr
                 []
                 ()
                 (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Ichar)))))),
               .Pexpr [] () (.PEsym (a! 6479))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
            .PEif (.Pexpr [] () (.PEsym (a! 6480))) (.Pexpr [] () (.PEsym (a! 6479))) <|
            .Pexpr
              [.Astd "\xa76.5.3.2#4, sentence 4"]
              ()
              (.PEundef .unknown .UB043_indirection_invalid_value)),
           (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
            .Expr [] <| .Epure <|
            .Pexpr
              [.Astd "\xa76.5.3.2#4, sentence 4"]
              ()
              (.PEundef .unknown .UB043_indirection_invalid_value))]) <| .Expr [] <| .Eaction <|
        .Paction .Pos <| .Action .unknown () <|
        .Load0
          (.Pexpr
            []
            ()
            (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Ichar)))))))
          (.Pexpr [] () (.PEsym (a! 6491)))
          .NA) <| .Expr [] <| .Erun () (c! "ret_6348" 6348) <|
      [.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
       [.Pexpr
          []
          ()
          (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Ichar)))))),
        .Pexpr [] () (.PEsym (a! 6492))]])
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc .unknown] <|
  .Esave
    (c! "ret_6348" 6348, .BTy_loaded .OTy_integer)
    [(a! 6493,
      ((.BTy_loaded .OTy_integer,
        .some (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Ichar))), .By_value)),
       .Pexpr [.Astd "\xa76.9.1#12"] () (.PEundef .unknown .UB088_reached_end_of_function)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6493)))))

/-- `int scripted_call(unsigned int *value)` -/
def scripted_call : Procedure :=
  .Proc
    .unknown
    (.some 5781)
    (.BTy_loaded .OTy_integer)
    [(addr! "value" 5779, .BTy_object .OTy_pointer)] <| .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc .unknown, .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6247), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 6249), .BTy_loaded .OTy_integer)),
           .Pattern [] (.CaseBase (.some (a! 6250), .BTy_loaded .OTy_integer))])
          (.Expr [] <| .Eunseq <|
          [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
           .Ewseq
             (.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] (.CaseBase (.some (a! 6254), .BTy_loaded .OTy_integer)),
              .Pattern [] (.CaseBase (.some (a! 6255), .BTy_loaded .OTy_integer))])
             (.Expr [] <| .Eunseq <|
             [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
              .Epure
                (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))),
              .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .Long))] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6259), .BTy_object .OTy_pointer)))
                (.Expr
                  [.Aloc .unknown, .Aexpr]
                  (.Epure (.Pexpr [] () (.PEsym (addr! "call_armed" 5715))))) <| .Expr [] <|
              .Eaction <| .Paction .Pos <| .Action .unknown () <|
              .Load0
                (.Pexpr
                  []
                  ()
                  (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
                (.Pexpr [] () (.PEsym (a! 6259)))
                .NA]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
           .PEcase
             (.Pexpr
               []
               ()
               (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 6254)), .Pexpr [] () (.PEsym (a! 6255))])) <|
           [(.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 6256), .BTy_object .OTy_integer))],
              .Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 6257), .BTy_object .OTy_integer))]],
             .Pexpr [.Astd "\xa76.5.9#3"] () <|
             .PEif
               (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
               .PEop
                 .OpEq
                 (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                 .PEcall
                   (.Sym (rt! "conv_int" 15837442492999787586))
                   [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_long)),
                    .Pexpr [] () (.PEsym (a! 6256))]) <|
               .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
               .PEcall
                 (.Sym (rt! "conv_int" 15837442492999787586))
                 [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_long)), .Pexpr [] () (.PEsym (a! 6257))])
               (.Pexpr [] () <|
               .PEctor
                 .Cspecified
                 [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
             .Pexpr [] () <|
             .PEctor .Cspecified [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
            (.Pattern
               []
               (.CaseBase (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer])),
             .Pexpr [] () <| .PEval <| .Vloaded <|
             .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))],
           .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
           .Epure (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
        .Expr [] <| .Epure <| .Pexpr [] () <|
        .PEcase
          (.Pexpr
            []
            ()
            (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 6249)), .Pexpr [] () (.PEsym (a! 6250))])) <|
        [(.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 6251), .BTy_object .OTy_integer))],
           .Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 6252), .BTy_object .OTy_integer))]],
          .Pexpr [.Astd "\xa76.5.9#3"] () <|
          .PEif
            (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
            .PEop
              .OpEq
              (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
              .PEcall
                (.Sym (rt! "conv_int" 15837442492999787586))
                [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6251))]) <|
            .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
            .PEcall
              (.Sym (rt! "conv_int" 15837442492999787586))
              [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6252))])
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
          .Pexpr [] () <|
          .PEval
            (.Vloaded
              (.LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))))]) <|
      .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6246), .BTy_boolean)))
        (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6247))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 6248), .BTy_object .OTy_integer))],
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 6248)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
            (.Pexpr [] () (.PEval .Vtrue))
            (.Pexpr [] () (.PEval .Vfalse))),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <| .End <|
          [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
           .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
      .Eif
        (.Pexpr [] () (.PEsym (a! 6246)))
        (.Expr [.Aloc .unknown, .Astmt] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 6260), .BTy_loaded .OTy_integer)))
          (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
          .Expr
            [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))]
            (.Epure
              (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))))) <|
        .Expr [] <| .Erun () (c! "ret_6245" 6245) <|
        [.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
         [.Pexpr
            []
            ()
            (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))),
          .Pexpr [] () (.PEsym (a! 6260))]])
        (.Expr [.Aloc .unknown, .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6262), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 6264), .BTy_loaded .OTy_integer)),
           .Pattern [] (.CaseBase (.some (a! 6265), .BTy_loaded .OTy_integer))])
          (.Expr [] <| .Eunseq <|
          [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
           .Ewseq
             (.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] (.CaseBase (.some (a! 6269), .BTy_loaded .OTy_integer)),
              .Pattern [] (.CaseBase (.some (a! 6270), .BTy_loaded .OTy_integer))])
             (.Expr [] <| .Eunseq <|
             [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .Long))] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6274), .BTy_object .OTy_pointer)))
                (.Expr
                  [.Aloc .unknown, .Aexpr]
                  (.Epure (.Pexpr [] () (.PEsym (addr! "call_position" 5714))))) <| .Expr [] <|
              .Eaction <| .Paction .Pos <| .Action .unknown () <|
              .Load0
                (.Pexpr
                  []
                  ()
                  (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
                (.Pexpr [] () (.PEsym (a! 6274)))
                .NA,
              .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .Long))] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6275), .BTy_object .OTy_pointer)))
                (.Expr
                  [.Aloc .unknown, .Aexpr]
                  (.Epure (.Pexpr [] () (.PEsym (addr! "call_count" 5713))))) <| .Expr [] <|
              .Eaction <| .Paction .Pos <| .Action .unknown () <|
              .Load0
                (.Pexpr
                  []
                  ()
                  (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
                (.Pexpr [] () (.PEsym (a! 6275)))
                .NA]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
           .PEcase
             (.Pexpr
               []
               ()
               (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 6269)), .Pexpr [] () (.PEsym (a! 6270))])) <|
           [(.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 6271), .BTy_object .OTy_integer))],
              .Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 6272), .BTy_object .OTy_integer))]],
             .Pexpr [.Astd "\xa76.5.9#3"] () <|
             .PEif
               (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
               .PEop
                 .OpEq
                 (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                 .PEcall
                   (.Sym (rt! "conv_int" 15837442492999787586))
                   [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_long)),
                    .Pexpr [] () (.PEsym (a! 6271))]) <|
               .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
               .PEcall
                 (.Sym (rt! "conv_int" 15837442492999787586))
                 [.Pexpr [] () (.PEval (.Vctype Ty.unsigned_long)), .Pexpr [] () (.PEsym (a! 6272))])
               (.Pexpr [] () <|
               .PEctor
                 .Cspecified
                 [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
             .Pexpr [] () <|
             .PEctor .Cspecified [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
            (.Pattern
               []
               (.CaseBase (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer])),
             .Pexpr [] () <| .PEval <| .Vloaded <|
             .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))],
           .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
           .Epure (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
        .Expr [] <| .Epure <| .Pexpr [] () <|
        .PEcase
          (.Pexpr
            []
            ()
            (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 6264)), .Pexpr [] () (.PEsym (a! 6265))])) <|
        [(.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 6266), .BTy_object .OTy_integer))],
           .Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 6267), .BTy_object .OTy_integer))]],
          .Pexpr [.Astd "\xa76.5.9#3"] () <|
          .PEif
            (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
            .PEop
              .OpEq
              (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
              .PEcall
                (.Sym (rt! "conv_int" 15837442492999787586))
                [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6266))]) <|
            .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
            .PEcall
              (.Sym (rt! "conv_int" 15837442492999787586))
              [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6267))])
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
          .Pexpr [] () <|
          .PEval
            (.Vloaded
              (.LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))))]) <|
      .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6261), .BTy_boolean)))
        (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6262))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 6263), .BTy_object .OTy_integer))],
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 6263)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
            (.Pexpr [] () (.PEval .Vtrue))
            (.Pexpr [] () (.PEval .Vfalse))),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <| .End <|
          [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
           .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
      .Eif
        (.Pexpr [] () (.PEsym (a! 6261)))
        (.Expr [.Aloc .unknown, .Astmt] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc .unknown, .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
            .Esseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] <| .CaseCtor .Ctuple <|
               [.Pattern [] (.CaseBase (.some (a! 6277), .BTy_loaded .OTy_pointer)),
                .Pattern [] <| .CaseCtor .Ctuple <|
                [.Pattern [] (.CaseBase (.some (a! 6278), .BTy_ctype)),
                 .Pattern [] (.CaseBase (.some (a! 6279), .BTy_list .BTy_ctype)),
                 .Pattern [] (.CaseBase (.some (a! 6280), .BTy_boolean)),
                 .Pattern [] (.CaseBase (.some (a! 6281), .BTy_boolean))]],
               .Pattern [] (.CaseBase (.some (a! 6284), .BTy_loaded .OTy_pointer)),
               .Pattern [] (.CaseBase (.some (a! 6288), .BTy_loaded .OTy_integer))])
              (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
              [.Expr [] <|
               .Esseq
                 (.Pattern [] (.CaseBase (.some (a! 6276), .BTy_loaded .OTy_pointer)))
                 (.Expr [.Aloc .unknown, .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <| .Vloaded <|
                 .LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "wgt_violation" 5059))))) <|
               .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
               [.Pexpr [] () (.PEsym (a! 6276)),
                .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 6276))))],
               .Expr [.Aloc .unknown, .Aexpr] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6286), .BTy_object .OTy_pointer)))
                 (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (a! 6285))))) <|
               .Expr [.Astd "\xa76.3.2.1#3"] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6287), .BTy_object .OTy_pointer)))
                 (.Expr [] <| .Ememop .PtrArrayShift <|
                 [.Pexpr [] () (.PEsym (a! 6286)),
                  .Pexpr [] () (.PEval (.Vctype Ty.char)),
                  .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
               .Expr
                 []
                 (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 6287))]))),
               .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .Long))] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6289), .BTy_object .OTy_pointer)))
                 (.Expr
                   [.Aloc .unknown, .Aexpr]
                   (.Epure (.Pexpr [] () (.PEsym (addr! "call_count" 5713))))) <| .Expr [] <|
               .Eaction <| .Paction .Pos <| .Action .unknown () <|
               .Load0
                 (.Pexpr
                   []
                   ()
                   (.PEval
                     (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
                 (.Pexpr [] () (.PEsym (a! 6289)))
                 .NA]) <| .Expr [] <|
            .Eif
              (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
              .PEop
                .OpEq
                (.Pexpr [] () <|
                .PEcall
                  (.Sym (rt! "params_length" 18299737999929047716))
                  [.Pexpr [] () (.PEsym (a! 6279))])
                (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))))
              (.Expr [] <| .Epure <|
              .Pexpr
                [.Astd "\xa76.5.2.2#6, sentence 3"]
                ()
                (.PEundef .unknown .UB038_number_of_args)) <| .Expr [] <|
            .Eif
              (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 6280))) <| .Pexpr [] () <|
              .PEnot <| .Pexpr [] () <|
              .PEare_compatible
                (.Pexpr [] () (.PEval (.Vctype (.Ctype [.Aloc .unknown, .Aloc .unknown] .Void0))))
                (.Pexpr [] () (.PEsym (a! 6278))))
              (.Expr [] <|
              .Epure
                (.Pexpr
                  [.Astd "\xa76.5.2.2#9"]
                  ()
                  (.PEundef .unknown .UB041_function_not_compatible))) <| .Expr [] <|
            .Esseq
              (.Pattern [] <|
              .CaseBase
                (.some (sym.Symbol Src.digest 6282 (.SD_FunArg .unknown 0)),
                 .BTy_object .OTy_pointer))
              (.Expr [] <|
              .Elet
                (.Pattern [] (.CaseBase (.some (a! 6290), .BTy_ctype)))
                (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                [.Pexpr [] () (.PEsym (a! 6279)),
                 .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
              .Eif
                (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                .PEare_compatible
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                  .Pointer
                    (.mk .true .false .false)
                    (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))))
                  (.Pexpr [] () (.PEsym (a! 6290))))
                (.Expr [] <| .Epure <|
                .Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible)) <|
              .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6291), .BTy_object .OTy_pointer)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
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
                  (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <| .Expr [] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Store0
                  .false
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                  .Pointer
                    (.mk .true .false .false)
                    (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))))
                  (.Pexpr [] () (.PEsym (a! 6291)))
                  (.Pexpr [] () (.PEsym (a! 6284)))
                  .NA)
                (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6291)))))) <| .Expr [] <|
            .Esseq
              (.Pattern [] <|
              .CaseBase
                (.some (sym.Symbol Src.digest 6283 (.SD_FunArg .unknown 1)),
                 .BTy_object .OTy_pointer))
              (.Expr [] <|
              .Elet
                (.Pattern [] (.CaseBase (.some (a! 6292), .BTy_ctype)))
                (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                [.Pexpr [] () (.PEsym (a! 6279)),
                 .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <| .Expr [] <|
              .Eif
                (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                .PEare_compatible
                  (.Pexpr [] () <| .PEval <| .Vctype <|
                  .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))
                  (.Pexpr [] () (.PEsym (a! 6292))))
                (.Expr [] <| .Epure <|
                .Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible)) <|
              .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6293), .BTy_object .OTy_pointer)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Create
                  (.Pexpr [] () <| .PEctor .Civalignof <|
                  [.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))])
                  (.Pexpr [] () <| .PEval <| .Vctype <|
                  .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))
                  (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 1)) <| .Expr [] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Store0
                  .false
                  (.Pexpr [] () <| .PEval <| .Vctype <|
                  .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))
                  (.Pexpr [] () (.PEsym (a! 6293)))
                  (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                  [.Pexpr [] () <| .PEval <| .Vctype <|
                   .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))),
                   .Pexpr [] () (.PEsym (a! 6288))])
                  .NA)
                (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6293)))))) <| .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.some (a! 6294), .BTy_unit)))
              (.Expr [.Astd "\xa76.5.16.1#1, bullet 1"] <|
              .Eccall
                ()
                (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                .Pointer (.mk .false .false .false) <| .Ctype [] <|
                .Function
                  (.mk .false .false .false, .Ctype [.Aloc .unknown, .Aloc .unknown] .Void0)
                  [(.mk .false .false .false,
                    (.Ctype [.Aloc .unknown, .Aloc .unknown] <|
                     .Pointer
                       (.mk .true .false .false)
                       (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))),
                     .false)),
                   (.mk .false .false .false,
                    (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))),
                     .false))]
                  .false)
                (.Pexpr [] () (.PEsym (a! 6277))) <|
              [.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6282 (.SD_FunArg .unknown 0))),
               .Pexpr [] () (.PEsym (sym.Symbol Src.digest 6283 (.SD_FunArg .unknown 1)))]) <|
            .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit])))
              (.Expr [] <| .Eunseq <|
              [.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
               .Kill
                 (.Static0 <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                 .Pointer
                   (.mk .true .false .false)
                   (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))))
                 (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6282 (.SD_FunArg .unknown 0)))),
               .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
               .Kill
                 (.Static0
                   (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))
                 (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6283 (.SD_FunArg .unknown 1))))])
              (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6294))))))
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc .unknown, .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr
              [.Aloc .unknown,
               .Aexpr,
               .Avalue (.Ainteger (.Unsigned .Long)),
               .Astd "\xa76.5.16#3, sentence 4"] <|
            .Ewseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] (.CaseBase (.some (a! 6295), .BTy_object .OTy_pointer)),
               .Pattern [] (.CaseBase (.some (a! 6296), .BTy_loaded .OTy_integer))])
              (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
              [.Expr
                 [.Aloc .unknown, .Aexpr]
                 (.Epure (.Pexpr [] () (.PEsym (addr! "call_armed" 5715)))),
               .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
               .Epure
                 (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
            .Expr [] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
              .Action .unknown () <|
              .Store0
                .false
                (.Pexpr
                  []
                  ()
                  (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
                (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 6295)))
                (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
                .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                [.Pexpr
                   []
                   ()
                   (.PEval
                     (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))),
                 .Pexpr [] () (.PEsym (a! 6296))])
                .NA) <| .Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
            .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
            [.Pexpr
               []
               ()
               (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))),
             .Pexpr [] () (.PEsym (a! 6296))])
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc .unknown, .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.some (a! 6297), .BTy_loaded .OTy_integer)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
            .Epure (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))) <|
          .Expr [] <| .Erun () (c! "ret_6245" 6245) <|
          [.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
           [.Pexpr
              []
              ()
              (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))),
            .Pexpr [] () (.PEsym (a! 6297))]])
          (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
        (.Expr [.Aloc .unknown, .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc .unknown,
           .Aexpr,
           .Avalue (.Ainteger (.Unsigned .Int_)),
           .Astd "\xa76.5.16#3, sentence 4"] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 6298), .BTy_object .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 6316), .BTy_loaded .OTy_integer))])
          (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
          [.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.3.2"] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 6299), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc .unknown, .Aexpr] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 6302), .BTy_object .OTy_pointer)))
               (.Expr
                 [.Aloc .unknown, .Aexpr]
                 (.Epure (.Pexpr [] () (.PEsym (addr! "value" 5779))))) <| .Expr [] <| .Eaction <|
             .Paction .Pos <| .Action .unknown () <|
             .Load0
               (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
               .Pointer
                 (.mk .false .false .false)
                 (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))
               (.Pexpr [] () (.PEsym (a! 6302)))
               .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6299))) <|
           [(.Pattern [] <|
             .CaseCtor
               .Cspecified
               [.Pattern [] (.CaseBase (.some (a! 6300), .BTy_object .OTy_pointer))],
             .Expr [] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 6301), .BTy_boolean)))
               (.Expr [] <| .Ememop .PtrValidForDeref <|
               [.Pexpr
                  []
                  ()
                  (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))),
                .Pexpr [] () (.PEsym (a! 6300))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
             .PEif (.Pexpr [] () (.PEsym (a! 6301))) (.Pexpr [] () (.PEsym (a! 6300))) <|
             .Pexpr
               [.Astd "\xa76.5.3.2#4, sentence 4"]
               ()
               (.PEundef .unknown .UB043_indirection_invalid_value)),
            (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
             .Expr [] <| .Epure <|
             .Pexpr
               [.Astd "\xa76.5.3.2#4, sentence 4"]
               ()
               (.PEundef .unknown .UB043_indirection_invalid_value))],
           .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .Int_))] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 6315), .BTy_object .OTy_pointer)))
             (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.3.2"] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 6303), .BTy_loaded .OTy_pointer)))
               (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.6"] <|
               .Ewseq
                 (.Pattern [] <| .CaseCtor .Ctuple <|
                 [.Pattern [] (.CaseBase (.some (a! 6306), .BTy_loaded .OTy_pointer)),
                  .Pattern [] (.CaseBase (.some (a! 6308), .BTy_loaded .OTy_integer))])
                 (.Expr [] <| .Eunseq <|
                 [.Expr [.Aloc .unknown, .Aexpr] <|
                  .Ewseq
                    (.Pattern [] (.CaseBase (.some (a! 6311), .BTy_object .OTy_pointer)))
                    (.Expr
                      [.Aloc .unknown, .Aexpr]
                      (.Epure (.Pexpr [] () (.PEsym (addr! "call_script" 5712))))) <| .Expr [] <|
                  .Eaction <| .Paction .Pos <| .Action .unknown () <|
                  .Load0
                    (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                    .Pointer
                      (.mk .false .false .false)
                      (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))
                    (.Pexpr [] () (.PEsym (a! 6311)))
                    .NA,
                  .Expr
                    [.Aloc .unknown,
                     .Aexpr,
                     .Avalue (.Ainteger (.Unsigned .Long)),
                     .Astd "\xa76.5.2.4",
                     .Astd "\xa76.5.2.4#2, sentence 1",
                     .Astd "\xa76.5.2.4#2, sentence 3"] <|
                  .Ewseq
                    (.Pattern [] (.CaseBase (.some (a! 6312), .BTy_object .OTy_pointer)))
                    (.Expr
                      [.Aloc .unknown, .Aexpr]
                      (.Epure (.Pexpr [] () (.PEsym (addr! "call_position" 5714))))) <| .Expr [] <|
                  .Eaction <| .Paction .Pos <| .Action .unknown () <|
                  .SeqRMW
                    .false
                    (.Pexpr [] () <|
                    .PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))))
                    (.Pexpr [] () (.PEsym (a! 6312)))
                    (a! 6313) <| .Pexpr [] () <| .PEcase (.Pexpr [] () (.PEsym (a! 6313))) <|
                  [(.Pattern [] <|
                    .CaseCtor
                      .Cspecified
                      [.Pattern [] (.CaseBase (.some (a! 6314), .BTy_object .OTy_integer))],
                    .Pexpr [] () <| .PEctor .Cspecified <|
                    [.Pexpr [.Astd "\xa76.5.2.4#2, sentence 2"] () <|
                     .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                     [.Pexpr [] () <|
                      .PEval
                        (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))),
                      .Pexpr [] () <|
                      .PEwrapI
                        (.Unsigned .Long)
                        .IOpAdd
                        (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                        [.Pexpr [] () <|
                         .PEval
                           (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))),
                         .Pexpr [] () (.PEsym (a! 6314))]) <|
                      .Pexpr
                        [.Avalue (.Ainteger (.Unsigned .Long))]
                        ()
                        (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]]),
                   (.Pattern
                      []
                      (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                    .Pexpr [] () <| .PEval <| .Vloaded <|
                    .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))]]) <|
               .Expr [] <|
               .Ecase
                 (.Pexpr [] () <|
                 .PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 6306)), .Pexpr [] () (.PEsym (a! 6308))]) <|
               [(.Pattern [] <| .CaseCtor .Ctuple <|
                 [.Pattern [] <|
                  .CaseCtor
                    .Cspecified
                    [.Pattern [] (.CaseBase (.some (a! 6307), .BTy_object .OTy_pointer))],
                  .Pattern [] <|
                  .CaseCtor
                    .Cspecified
                    [.Pattern [] (.CaseBase (.some (a! 6309), .BTy_object .OTy_integer))]],
                 .Expr [] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 6310), .BTy_object .OTy_pointer)))
                   (.Expr [] <| .Ememop .PtrArrayShift <|
                   [.Pexpr [] () (.PEsym (a! 6307)),
                    .Pexpr [] () <|
                    .PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_))))),
                    .Pexpr [] () (.PEsym (a! 6309))]) <|
                 .Expr
                   []
                   (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 6310))])))),
                (.Pattern [] <|
                 .CaseBase (.none, .BTy_tuple [.BTy_loaded .OTy_pointer, .BTy_loaded .OTy_integer]),
                 .Expr [] <|
                 .Epure
                   (.Pexpr
                     []
                     ()
                     (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_pointer_add))))]) <|
             .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6303))) <|
             [(.Pattern [] <|
               .CaseCtor
                 .Cspecified
                 [.Pattern [] (.CaseBase (.some (a! 6304), .BTy_object .OTy_pointer))],
               .Expr [] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6305), .BTy_boolean)))
                 (.Expr [] <| .Ememop .PtrValidForDeref <|
                 [.Pexpr
                    []
                    ()
                    (.PEval
                      (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))),
                  .Pexpr [] () (.PEsym (a! 6304))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
               .PEif (.Pexpr [] () (.PEsym (a! 6305))) (.Pexpr [] () (.PEsym (a! 6304))) <|
               .Pexpr
                 [.Astd "\xa76.5.3.2#4, sentence 4"]
                 ()
                 (.PEundef .unknown .UB043_indirection_invalid_value)),
              (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
               .Expr [] <| .Epure <|
               .Pexpr
                 [.Astd "\xa76.5.3.2#4, sentence 4"]
                 ()
                 (.PEundef .unknown .UB043_indirection_invalid_value))]) <| .Expr [] <| .Eaction <|
           .Paction .Pos <| .Action .unknown () <|
           .Load0
             (.Pexpr
               []
               ()
               (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))))
             (.Pexpr [] () (.PEsym (a! 6315)))
             .NA]) <| .Expr [] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
          .Action .unknown () <|
          .Store0
            .false
            (.Pexpr
              []
              ()
              (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))))
            (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 6298)))
            (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
            .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
            [.Pexpr
               []
               ()
               (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))),
             .Pexpr [] () (.PEsym (a! 6316))])
            .NA) <| .Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
        .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
        [.Pexpr
           []
           ()
           (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Int_)))))),
         .Pexpr [] () (.PEsym (a! 6316))])
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc .unknown,
           .Aexpr,
           .Avalue (.Ainteger (.Unsigned .Long)),
           .Astd "\xa76.5.2.4",
           .Astd "\xa76.5.2.4#2, sentence 1",
           .Astd "\xa76.5.2.4#2, sentence 3"] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.some (a! 6317), .BTy_object .OTy_pointer)))
          (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (addr! "rng_draws" 5723))))) <|
        .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
        .SeqRMW
          .false
          (.Pexpr
            []
            ()
            (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
          (.Pexpr [] () (.PEsym (a! 6317)))
          (a! 6318) <| .Pexpr [] () <| .PEcase (.Pexpr [] () (.PEsym (a! 6318))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 6319), .BTy_object .OTy_integer))],
          .Pexpr [] () <| .PEctor .Cspecified <|
          [.Pexpr [.Astd "\xa76.5.2.4#2, sentence 2"] () <|
           .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
           [.Pexpr
              []
              ()
              (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))),
            .Pexpr [] () <|
            .PEwrapI
              (.Unsigned .Long)
              .IOpAdd
              (.Pexpr [] () <| .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
              [.Pexpr
                 []
                 ()
                 (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))),
               .Pexpr [] () (.PEsym (a! 6319))]) <|
            .Pexpr
              [.Avalue (.Ainteger (.Unsigned .Long))]
              ()
              (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]]),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Pexpr [] () <| .PEval <| .Vloaded <|
          .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))])
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6321), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 6323), .BTy_loaded .OTy_integer)),
           .Pattern [] (.CaseBase (.some (a! 6324), .BTy_loaded .OTy_integer))])
          (.Expr [] <| .Eunseq <|
          [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 6328), .BTy_object .OTy_pointer)))
             (.Expr
               [.Aloc .unknown, .Aexpr]
               (.Epure (.Pexpr [] () (.PEsym (addr! "tracing" 5703))))) <| .Expr [] <| .Eaction <|
           .Paction .Pos <| .Action .unknown () <|
           .Load0
             (.Pexpr
               []
               ()
               (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))))
             (.Pexpr [] () (.PEsym (a! 6328)))
             .NA,
           .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
           .Epure (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
        .Expr [] <| .Epure <| .Pexpr [] () <|
        .PEcase
          (.Pexpr
            []
            ()
            (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 6323)), .Pexpr [] () (.PEsym (a! 6324))])) <|
        [(.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 6325), .BTy_object .OTy_integer))],
           .Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 6326), .BTy_object .OTy_integer))]],
          .Pexpr [.Astd "\xa76.5.9#3"] () <|
          .PEif
            (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
            .PEop
              .OpEq
              (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
              .PEcall
                (.Sym (rt! "conv_int" 15837442492999787586))
                [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6325))]) <|
            .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
            .PEcall
              (.Sym (rt! "conv_int" 15837442492999787586))
              [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6326))])
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
          .Pexpr [] () <|
          .PEval
            (.Vloaded
              (.LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))))]) <|
      .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6320), .BTy_boolean)))
        (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6321))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 6322), .BTy_object .OTy_integer))],
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 6322)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
            (.Pexpr [] () (.PEval .Vtrue))
            (.Pexpr [] () (.PEval .Vfalse))),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <| .End <|
          [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
           .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
      .Eif
        (.Pexpr [] () (.PEsym (a! 6320)))
        (.Expr [.Aloc .unknown, .Astmt] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
          (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
          .Expr
            [.Aloc .unknown,
             .Aexpr,
             .Avalue (.Ainteger (.Signed .Int_)),
             .Astd "\xa76.5.2.2#10, sentence 1"] <|
          .Esseq
            (.Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] (.CaseBase (.some (a! 6330), .BTy_loaded .OTy_pointer)),
              .Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] (.CaseBase (.some (a! 6331), .BTy_ctype)),
               .Pattern [] (.CaseBase (.some (a! 6332), .BTy_list .BTy_ctype)),
               .Pattern [] (.CaseBase (.some (a! 6333), .BTy_boolean)),
               .Pattern [] (.CaseBase (.some (a! 6334), .BTy_boolean))]],
             .Pattern [] (.CaseBase (.some (a! 6337), .BTy_loaded .OTy_pointer)),
             .Pattern [] (.CaseBase (.some (a! 6341), .BTy_loaded .OTy_integer))])
            (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
            [.Expr [] <|
             .Esseq
               (.Pattern [] (.CaseBase (.some (a! 6329), .BTy_loaded .OTy_pointer)))
               (.Expr [.Aloc .unknown, .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <| .Vloaded <|
               .LVspecified
                 (.OVpointer
                   (.PV .Prov_none (.PVfunction (rt! "printf_proxy" 17096408249463498481))))) <|
             .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
             [.Pexpr [] () (.PEsym (a! 6329)),
              .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 6329))))],
             .Expr [.Aloc .unknown, .Aexpr] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 6339), .BTy_object .OTy_pointer)))
               (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (a! 6338))))) <|
             .Expr [.Astd "\xa76.3.2.1#3"] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 6340), .BTy_object .OTy_pointer)))
               (.Expr [] <| .Ememop .PtrArrayShift <|
               [.Pexpr [] () (.PEsym (a! 6339)),
                .Pexpr [] () (.PEval (.Vctype Ty.char)),
                .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
             .Expr
               []
               (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 6340))]))),
             .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .Long))] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 6342), .BTy_object .OTy_pointer)))
               (.Expr
                 [.Aloc .unknown, .Aexpr]
                 (.Epure (.Pexpr [] () (.PEsym (addr! "rng_draws" 5723))))) <| .Expr [] <|
             .Eaction <| .Paction .Pos <| .Action .unknown () <|
             .Load0
               (.Pexpr
                 []
                 ()
                 (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
               (.Pexpr [] () (.PEsym (a! 6342)))
               .NA]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpLe
              (.Pexpr [] () <|
              .PEcall
                (.Sym (rt! "params_length" 18299737999929047716))
                [.Pexpr [] () (.PEsym (a! 6332))])
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))))
            (.Expr [] <| .Epure <|
            .Pexpr [.Astd "\xa76.5.2.2#6, sentence 3"] () (.PEundef .unknown .UB038_number_of_args)) <|
          .Expr [] <|
          .Eif
            (.Pexpr [] () <|
            .PEop .OpOr (.Pexpr [] () (.PEnot (.Pexpr [] () (.PEsym (a! 6333))))) <| .Pexpr [] () <|
            .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown]
                (.Basic (.Integer (.Signed .Int_))))
              (.Pexpr [] () (.PEsym (a! 6331))))
            (.Expr [] <|
            .Epure
              (.Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible))) <|
          .Expr [] <|
          .Esseq
            (.Pattern [] <|
            .CaseBase
              (.some (sym.Symbol Src.digest 6335 (.SD_FunArg .unknown 0)), .BTy_object .OTy_pointer))
            (.Expr [] <|
            .Elet
              (.Pattern [] (.CaseBase (.some (a! 6343), .BTy_ctype)))
              (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
              [.Pexpr [] () (.PEsym (a! 6332)),
               .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
            .Eif
              (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
              .PEare_compatible
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype
                  [.Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                .Ctype
                  [.Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown]
                  (.Basic (.Integer .Char0)))
                (.Pexpr [] () (.PEsym (a! 6343))))
              (.Expr [] <|
              .Epure
                (.Pexpr
                  [.Astd "\xa76.5.2.2#9"]
                  ()
                  (.PEundef .unknown .UB041_function_not_compatible))) <|
            .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.some (a! 6344), .BTy_object .OTy_pointer)))
              (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
              .Create
                (.Pexpr [] () <| .PEctor .Civalignof <|
                [.Pexpr [] () <| .PEval <| .Vctype <|
                 .Ctype
                   [.Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                 .Ctype
                   [.Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown]
                   (.Basic (.Integer .Char0))])
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype
                  [.Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                .Ctype
                  [.Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown]
                  (.Basic (.Integer .Char0)))
                (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <| .Expr [] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
              .Store0
                .false
                (.Pexpr [] () <| .PEval <| .Vctype <|
                .Ctype
                  [.Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                .Ctype
                  [.Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown,
                   .Aloc .unknown]
                  (.Basic (.Integer .Char0)))
                (.Pexpr [] () (.PEsym (a! 6344)))
                (.Pexpr [] () (.PEsym (a! 6337)))
                .NA)
              (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6344)))))) <| .Expr [] <|
          .Esseq
            (.Pattern [] <|
            .CaseBase
              (.some (sym.Symbol Src.digest 6336 (.SD_FunArg .unknown 1)), .BTy_object .OTy_pointer))
            (.Expr [.Astd "\xa76.5.2.2#7, sentences 2 and 3"] <|
            .Eproc () (.Sym (rt! "create_and_store" 14023013563394908458)) <|
            [.Pexpr
               []
               ()
               (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))),
             .Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
             [.Pexpr
                []
                ()
                (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))),
              .Pexpr [] () (.PEsym (a! 6341))]]) <| .Expr [] <|
          .Esseq
            (.Pattern [] (.CaseBase (.some (a! 6345), .BTy_loaded .OTy_integer)))
            (.Expr [] <|
            .Eccall
              ()
              (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
              .Pointer (.mk .false .false .false) <| .Ctype [] <|
              .Function
                (.mk .false .false .false,
                 .Ctype
                   [.Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown]
                   (.Basic (.Integer (.Signed .Int_))))
                [(.mk .false .false .false,
                  (.Ctype
                     [.Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                   .Ctype
                     [.Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown,
                      .Aloc .unknown]
                     (.Basic (.Integer .Char0)),
                   .false))]
                .true)
              (.Pexpr [] () (.PEsym (a! 6330))) <|
            [.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6335 (.SD_FunArg .unknown 0))),
             .Pexpr [] () <| .PEctor .Ccons <|
             [.Pexpr [] () <| .PEctor .Ctuple <|
              [.Pexpr
                 []
                 ()
                 (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))),
               .Pexpr [] () (.PEsym (sym.Symbol Src.digest 6336 (.SD_FunArg .unknown 1)))],
              .Pexpr [] () (.PEctor (.Cnil (.BTy_tuple [.BTy_ctype, .BTy_object .OTy_pointer])) [])]]) <|
          .Expr [] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit])))
            (.Expr [] <| .Eunseq <|
            [.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
             .Kill
               (.Static0 <|
               .Ctype
                 [.Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
               .Ctype
                 [.Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown]
                 (.Basic (.Integer .Char0)))
               (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6335 (.SD_FunArg .unknown 0)))),
             .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
             .Kill
               (.Static0 (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))
               (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6336 (.SD_FunArg .unknown 1))))])
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6345))))))
          (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
        (.Expr [.Aloc .unknown, .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6346), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))]
          (.Epure (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1)))))))) <|
      .Expr [] <| .Erun () (c! "ret_6245" 6245) <|
      [.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
       [.Pexpr
          []
          ()
          (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))),
        .Pexpr [] () (.PEsym (a! 6346))]])
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc .unknown] <|
  .Esave
    (c! "ret_6245" 6245, .BTy_loaded .OTy_integer)
    [(a! 6347,
      ((.BTy_loaded .OTy_integer,
        .some (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_))), .By_value)),
       .Pexpr [.Astd "\xa76.9.1#12"] () (.PEundef .unknown .UB088_reached_end_of_function)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6347)))))

/-- `struct wgt_wq *find_wq(const void *wq)` -/
def find_wq : Procedure :=
  .Proc
    .unknown
    (.some 5801)
    (.BTy_loaded .OTy_pointer)
    [(addr! "wq" 5799, .BTy_object .OTy_pointer)] <| .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc .unknown, .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.some (addr! "record" 5802), .BTy_object .OTy_pointer)))
      (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
      .Create
        (.Pexpr [] () <| .PEctor .Civalignof <|
        [.Pexpr [] () <|
         .PEval
           (.Vctype
             (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq)))])
        (.Pexpr [] () <|
        .PEval
          (.Vctype (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq))))
        (.PrefSource .unknown [c! "find_wq" 5800, addr! "record" 5802])) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt, .Astd "\xa76.2.4#6"] <| .Eaction <| .Paction .Pos <|
      .Action .unknown () <|
      .Store0
        .false
        (.Pexpr [] () <|
        .PEval
          (.Vctype (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq))))
        (.Pexpr [] () (.PEsym (addr! "record" 5802)))
        (.Pexpr [] () <| .PEval <| .Vloaded <| .LVunspecified <|
        .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq))
        .NA) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.16#3, sentence 4"] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 6202), .BTy_object .OTy_pointer)),
           .Pattern [] (.CaseBase (.some (a! 6204), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
          [.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (addr! "record" 5802)))),
           .Expr [.Aloc .unknown, .Aexpr] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 6203), .BTy_object .OTy_pointer)))
             (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (addr! "wqs" 5727))))) <|
           .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
           .Load0
             (.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq))
             (.Pexpr [] () (.PEsym (a! 6203)))
             .NA]) <| .Expr [] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
          .Action .unknown () <|
          .Store0
            .false
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq))
            (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 6202)))
            (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 6204)))
            .NA)
          (.Expr [] (.Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 6204))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Aloc .unknown, .Astmt, .Alabel (.LAloop 5804)] <|
        .Esave
          (c! "while_6205" 6205, .BTy_unit)
          [(addr! "record" 5802,
            ((.BTy_object .OTy_pointer,
              .some <|
              (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq),
               .By_pointer)),
             .Pexpr [] () (.PEsym (addr! "record" 5802))))] <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 6207), .BTy_loaded .OTy_integer)))
          (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
          .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 6210), .BTy_loaded .OTy_pointer)))
            (.Expr [.Aloc .unknown, .Aexpr] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.some (a! 6209), .BTy_object .OTy_pointer)))
              (.Expr
                [.Aloc .unknown, .Aexpr]
                (.Epure (.Pexpr [] () (.PEsym (addr! "record" 5802))))) <| .Expr [] <| .Eaction <|
            .Paction .Pos <| .Action .unknown () <|
            .Load0
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq))
              (.Pexpr [] () (.PEsym (a! 6209)))
              .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6210))) <|
          [(.Pattern [] <|
            .CaseCtor
              .Cspecified
              [.Pattern [] (.CaseBase (.some (a! 6211), .BTy_object .OTy_pointer))],
            .Expr [] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.some (a! 6212), .BTy_boolean)))
              (.Expr [] <| .Ememop .PtrEq <|
              [.Pexpr [] () (.PEsym (a! 6211)),
               .Pexpr [.Astd "\xa76.5.9#5, sentence 2"] () <| .PEval <| .Vobject <| .OVpointer <|
               .PV .Prov_none <|
               .PVnull
                 (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq))]) <|
            .Expr [.Astd "\xa76.5.9#3"] <| .Epure <| .Pexpr [] () <|
            .PEif
              (.Pexpr [] () (.PEsym (a! 6212)))
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
            .PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_equality_ptr_vs_NULL))]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 6206), .BTy_boolean)))
          (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6207))) <|
          [(.Pattern [] <|
            .CaseCtor
              .Cspecified
              [.Pattern [] (.CaseBase (.some (a! 6208), .BTy_object .OTy_integer))],
            .Expr [] <| .Epure <| .Pexpr [] () <|
            .PEif
              (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
              .PEop
                .OpEq
                (.Pexpr [] () (.PEsym (a! 6208)))
                (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
              (.Pexpr [] () (.PEval .Vtrue))
              (.Pexpr [] () (.PEval .Vfalse))),
           (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
            .Expr [] <| .End <|
            [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
             .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
        .Eif
          (.Pexpr [] () (.PEsym (a! 6206)))
          (.Expr [] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [.Aloc .unknown, .Astmt] <|
            .Esseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [.Aloc .unknown, .Astmt] <|
              .Esseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [.Aloc .unknown, .Astmt] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.some (a! 6214), .BTy_loaded .OTy_integer)))
                  (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                  .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                  .Ewseq
                    (.Pattern [] <| .CaseCtor .Ctuple <|
                    [.Pattern [] (.CaseBase (.some (a! 6216), .BTy_loaded .OTy_integer)),
                     .Pattern [] (.CaseBase (.some (a! 6217), .BTy_loaded .OTy_integer))])
                    (.Expr [] <| .Eunseq <|
                    [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                     .Ewseq
                       (.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern [] (.CaseBase (.some (a! 6221), .BTy_loaded .OTy_pointer)),
                        .Pattern [] (.CaseBase (.some (a! 6222), .BTy_loaded .OTy_pointer))])
                       (.Expr [] <| .Eunseq <|
                       [.Expr [.Aloc .unknown, .Aexpr] <|
                        .Ewseq
                          (.Pattern [] (.CaseBase (.some (a! 6231), .BTy_object .OTy_pointer)))
                          (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.2.3#4, sentence 2"] <|
                          .Esseq
                            (.Pattern [] (.CaseBase (.some (a! 6226), .BTy_loaded .OTy_pointer)))
                            (.Expr [.Aloc .unknown, .Aexpr] <|
                            .Ewseq
                              (.Pattern [] (.CaseBase (.some (a! 6230), .BTy_object .OTy_pointer)))
                              (.Expr
                                [.Aloc .unknown, .Aexpr]
                                (.Epure (.Pexpr [] () (.PEsym (addr! "record" 5802))))) <|
                            .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                            .Load0
                              (.Pexpr [] () <| .PEval <| .Vctype <|
                              .Ctype
                                [.Aloc .unknown]
                                (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq))
                              (.Pexpr [] () (.PEsym (a! 6230)))
                              .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6226))) <|
                          [(.Pattern
                              []
                              (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                            .Expr [] <| .Epure <|
                            .Pexpr
                              []
                              ()
                              (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_memberofptr))),
                           (.Pattern [] <|
                            .CaseCtor
                              .Cspecified
                              [.Pattern [] (.CaseBase (.some (a! 6227), .BTy_object .OTy_pointer))],
                            .Expr [] <| .Epure <| .Pexpr [] () <|
                            .PEmember_shift
                              (.Pexpr [] () (.PEsym (a! 6227)))
                              (c! "wgt_wq" 5701)
                              (.Identifier .unknown "wq"))]) <| .Expr [] <| .Eaction <|
                        .Paction .Pos <| .Action .unknown () <|
                        .Load0
                          (.Pexpr [] () <| .PEval <| .Vctype <|
                          .Ctype
                            [.Aloc .unknown]
                            (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] .Void0)))
                          (.Pexpr [] () (.PEsym (a! 6231)))
                          .NA,
                        .Expr [.Aloc .unknown, .Aexpr] <|
                        .Ewseq
                          (.Pattern [] (.CaseBase (.some (a! 6232), .BTy_object .OTy_pointer)))
                          (.Expr
                            [.Aloc .unknown, .Aexpr]
                            (.Epure (.Pexpr [] () (.PEsym (addr! "wq" 5799))))) <| .Expr [] <|
                        .Eaction <| .Paction .Pos <| .Action .unknown () <|
                        .Load0
                          (.Pexpr [] () <| .PEval <| .Vctype <|
                          .Ctype
                            [.Aloc .unknown]
                            (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] .Void0)))
                          (.Pexpr [] () (.PEsym (a! 6232)))
                          .NA]) <| .Expr [] <|
                     .Ecase
                       (.Pexpr [] () <|
                       .PEctor
                         .Ctuple
                         [.Pexpr [] () (.PEsym (a! 6221)), .Pexpr [] () (.PEsym (a! 6222))]) <|
                     [(.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern [] <|
                        .CaseCtor
                          .Cspecified
                          [.Pattern [] (.CaseBase (.some (a! 6223), .BTy_object .OTy_pointer))],
                        .Pattern [] <|
                        .CaseCtor
                          .Cspecified
                          [.Pattern [] (.CaseBase (.some (a! 6224), .BTy_object .OTy_pointer))]],
                       .Expr [] <|
                       .Ewseq
                         (.Pattern [] (.CaseBase (.some (a! 6225), .BTy_boolean)))
                         (.Expr [] <|
                         .Ememop
                           .PtrEq
                           [.Pexpr [] () (.PEsym (a! 6223)), .Pexpr [] () (.PEsym (a! 6224))]) <|
                       .Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.9#3"] () <|
                       .PEif
                         (.Pexpr [] () (.PEsym (a! 6225)))
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
                         (.none, .BTy_tuple [.BTy_loaded .OTy_pointer, .BTy_loaded .OTy_pointer]),
                       .Expr [] <| .Epure <| .Pexpr [] () <|
                       .PEundef
                         .unknown
                         (.UB_CERB004_unspecified .UB_unspec_equality_both_arith_or_ptr))],
                     .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                     .Epure <|
                     .Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                  .Expr [] <| .Epure <| .Pexpr [] () <|
                  .PEcase
                    (.Pexpr [] () <|
                    .PEctor
                      .Ctuple
                      [.Pexpr [] () (.PEsym (a! 6216)), .Pexpr [] () (.PEsym (a! 6217))]) <|
                  [(.Pattern [] <| .CaseCtor .Ctuple <|
                    [.Pattern [] <|
                     .CaseCtor
                       .Cspecified
                       [.Pattern [] (.CaseBase (.some (a! 6218), .BTy_object .OTy_integer))],
                     .Pattern [] <|
                     .CaseCtor
                       .Cspecified
                       [.Pattern [] (.CaseBase (.some (a! 6219), .BTy_object .OTy_integer))]],
                    .Pexpr [.Astd "\xa76.5.9#3"] () <|
                    .PEif
                      (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                      .PEop
                        .OpEq
                        (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                        .PEcall
                          (.Sym (rt! "conv_int" 15837442492999787586))
                          [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6218))]) <|
                      .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                      .PEcall
                        (.Sym (rt! "conv_int" 15837442492999787586))
                        [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6219))])
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
                    .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))]) <|
                .Expr [] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.some (a! 6213), .BTy_boolean)))
                  (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6214))) <|
                  [(.Pattern [] <|
                    .CaseCtor
                      .Cspecified
                      [.Pattern [] (.CaseBase (.some (a! 6215), .BTy_object .OTy_integer))],
                    .Expr [] <| .Epure <| .Pexpr [] () <|
                    .PEif
                      (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                      .PEop
                        .OpEq
                        (.Pexpr [] () (.PEsym (a! 6215)))
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
                  (.Pexpr [] () (.PEsym (a! 6213)))
                  (.Expr [.Aloc .unknown, .Astmt] <|
                  .Esseq
                    (.Pattern [] (.CaseBase (.some (a! 6234), .BTy_loaded .OTy_pointer)))
                    (.Expr [.Astd "\xa76.5#2"] <| .Ebound <| .Expr [.Aloc .unknown, .Aexpr] <|
                    .Ewseq
                      (.Pattern [] (.CaseBase (.some (a! 6233), .BTy_object .OTy_pointer)))
                      (.Expr
                        [.Aloc .unknown, .Aexpr]
                        (.Epure (.Pexpr [] () (.PEsym (addr! "record" 5802))))) <| .Expr [] <|
                    .Eaction <| .Paction .Pos <| .Action .unknown () <|
                    .Load0
                      (.Pexpr [] () <| .PEval <| .Vctype <|
                      .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq))
                      (.Pexpr [] () (.PEsym (a! 6233)))
                      .NA) <| .Expr [] <|
                  .Esseq
                    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                    (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                    .Kill
                      (.Static0 <|
                      .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq))
                      (.Pexpr [] () (.PEsym (addr! "record" 5802))))
                    (.Expr [] (.Erun () (c! "ret_6199" 6199) [.Pexpr [] () (.PEsym (a! 6234))])))
                  (.Expr [.Aloc .unknown, .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
              .Expr [] <|
              .Esseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [.Aloc .unknown, .Astmt, .Alabel (.LAloop_continue 5804)] <|
                .Esave
                  (c! "__cerb_continue187" 5803, .BTy_unit)
                  [(addr! "record" 5802,
                    ((.BTy_object .OTy_pointer,
                      .some <|
                      (.Ctype
                         [.Aloc .unknown]
                         (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq),
                       .By_pointer)),
                     .Pexpr [] () (.PEsym (addr! "record" 5802))))] <|
                .Expr [.Aloc .unknown, .Astmt] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
                  (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                  .Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.16#3, sentence 4"] <|
                  .Ewseq
                    (.Pattern [] <| .CaseCtor .Ctuple <|
                    [.Pattern [] (.CaseBase (.some (a! 6235), .BTy_object .OTy_pointer)),
                     .Pattern [] (.CaseBase (.some (a! 6242), .BTy_loaded .OTy_pointer))])
                    (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
                    [.Expr
                       [.Aloc .unknown, .Aexpr]
                       (.Epure (.Pexpr [] () (.PEsym (addr! "record" 5802)))),
                     .Expr [.Aloc .unknown, .Aexpr] <|
                     .Ewseq
                       (.Pattern [] (.CaseBase (.some (a! 6241), .BTy_object .OTy_pointer)))
                       (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.2.3#4, sentence 2"] <|
                       .Esseq
                         (.Pattern [] (.CaseBase (.some (a! 6236), .BTy_loaded .OTy_pointer)))
                         (.Expr [.Aloc .unknown, .Aexpr] <|
                         .Ewseq
                           (.Pattern [] (.CaseBase (.some (a! 6240), .BTy_object .OTy_pointer)))
                           (.Expr
                             [.Aloc .unknown, .Aexpr]
                             (.Epure (.Pexpr [] () (.PEsym (addr! "record" 5802))))) <| .Expr [] <|
                         .Eaction <| .Paction .Pos <| .Action .unknown () <|
                         .Load0
                           (.Pexpr [] () <| .PEval <| .Vctype <|
                           .Ctype
                             [.Aloc .unknown]
                             (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq))
                           (.Pexpr [] () (.PEsym (a! 6240)))
                           .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6236))) <|
                       [(.Pattern
                           []
                           (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                         .Expr [] <| .Epure <|
                         .Pexpr
                           []
                           ()
                           (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_memberofptr))),
                        (.Pattern [] <|
                         .CaseCtor
                           .Cspecified
                           [.Pattern [] (.CaseBase (.some (a! 6237), .BTy_object .OTy_pointer))],
                         .Expr [] <| .Epure <| .Pexpr [] () <|
                         .PEmember_shift
                           (.Pexpr [] () (.PEsym (a! 6237)))
                           (c! "wgt_wq" 5701)
                           (.Identifier .unknown "next"))]) <| .Expr [] <| .Eaction <|
                     .Paction .Pos <| .Action .unknown () <|
                     .Load0
                       (.Pexpr [] () <| .PEval <| .Vctype <|
                       .Ctype
                         [.Aloc .unknown]
                         (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq))
                       (.Pexpr [] () (.PEsym (a! 6241)))
                       .NA]) <| .Expr [] <|
                  .Ewseq
                    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                    (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
                    .Action .unknown () <|
                    .Store0
                      .false
                      (.Pexpr [] () <| .PEval <| .Vctype <|
                      .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq))
                      (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 6235)))
                      (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 6242)))
                      .NA) <|
                  .Expr
                    []
                    (.Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 6242)))))
                  (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
                (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [.Aloc .unknown, .Astmt, .Alabel (.LAloop_continue 5804)] <|
              .Esave
                (c! "continue_6200" 6200, .BTy_unit)
                [(addr! "record" 5802,
                  ((.BTy_object .OTy_pointer,
                    .some <|
                    (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq),
                     .By_pointer)),
                   .Pexpr [] () (.PEsym (addr! "record" 5802))))]
                (.Expr [.Aloc .unknown, .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
              (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
            (.Expr
              []
              (.Erun () (c! "while_6205" 6205) [.Pexpr [] () (.PEsym (addr! "record" 5802))])))
          (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Aloc .unknown, .Astmt, .Alabel (.LAloop_break 5804)] <|
        .Esave
          (c! "break_6201" 6201, .BTy_unit)
          [(addr! "record" 5802,
            ((.BTy_object .OTy_pointer,
              .some <|
              (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq),
               .By_pointer)),
             .Pexpr [] () (.PEsym (addr! "record" 5802))))]
          (.Expr [.Aloc .unknown, .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
        .Kill
          (.Static0
            (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq)))
          (.Pexpr [] () (.PEsym (addr! "record" 5802)))) <| .Expr [] <|
      .Erun () (c! "ret_6199" 6199) <|
      [.Pexpr [] () <| .PEctor .Cspecified <|
       [.Pexpr [] () <| .PEval <| .Vobject <| .OVpointer <| .PV .Prov_none <| .PVnull <|
        .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq)]]) <|
    .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
      .Kill
        (.Static0 (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq)))
        (.Pexpr [] () (.PEsym (addr! "record" 5802))))
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc .unknown] <|
  .Esave
    (c! "ret_6199" 6199, .BTy_loaded .OTy_pointer)
    [(a! 6243,
      ((.BTy_loaded .OTy_pointer,
        .some
          (.Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq),
           .By_value)),
       .Pexpr [.Astd "\xa76.9.1#12"] () (.PEundef .unknown .UB088_reached_end_of_function)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6243)))))

/-- `unsigned long wq_id(const void *wq)` -/
def wq_id : Procedure :=
  .Proc
    .unknown
    (.some 5808)
    (.BTy_loaded .OTy_integer)
    [(addr! "wq" 5806, .BTy_object .OTy_pointer)] <| .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc .unknown, .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.some (addr! "record" 5809), .BTy_object .OTy_pointer)))
      (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
      .Create
        (.Pexpr [] () <| .PEctor .Civalignof <|
        [.Pexpr [] () <|
         .PEval
           (.Vctype (.Ctype [.Aloc .unknown] (.Pointer (.mk .true .false .false) Ty.struct_wgt_wq)))])
        (.Pexpr [] () <|
        .PEval
          (.Vctype (.Ctype [.Aloc .unknown] (.Pointer (.mk .true .false .false) Ty.struct_wgt_wq))))
        (.PrefSource .unknown [c! "wq_id" 5807, addr! "record" 5809])) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6169), .BTy_loaded .OTy_pointer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
        .Esseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <| .CaseCtor .Ctuple <|
           [.Pattern [] (.CaseBase (.some (a! 6171), .BTy_loaded .OTy_pointer)),
            .Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 6172), .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 6173), .BTy_list .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 6174), .BTy_boolean)),
             .Pattern [] (.CaseBase (.some (a! 6175), .BTy_boolean))]],
           .Pattern [] (.CaseBase (.some (a! 6177), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
          [.Expr [] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 6170), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc .unknown, .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <| .Vloaded <|
             .LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "find_wq" 5800))))) <|
           .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
           [.Pexpr [] () (.PEsym (a! 6170)),
            .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 6170))))],
           .Expr [.Aloc .unknown, .Aexpr] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 6178), .BTy_object .OTy_pointer)))
             (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (addr! "wq" 5806))))) <|
           .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
           .Load0
             (.Pexpr [] () <| .PEval <| .Vctype <|
             .Ctype
               [.Aloc .unknown]
               (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] .Void0)))
             (.Pexpr [] () (.PEsym (a! 6178)))
             .NA]) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
          .PEop
            .OpEq
            (.Pexpr [] () <|
            .PEcall
              (.Sym (rt! "params_length" 18299737999929047716))
              [.Pexpr [] () (.PEsym (a! 6173))])
            (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
          (.Expr [] <|
          .Epure
            (.Pexpr
              [.Astd "\xa76.5.2.2#6, sentence 3"]
              ()
              (.PEundef .unknown .UB038_number_of_args))) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 6174))) <| .Pexpr [] () <|
          .PEnot <| .Pexpr [] () <|
          .PEare_compatible
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq))
            (.Pexpr [] () (.PEsym (a! 6172))))
          (.Expr [] <|
          .Epure
            (.Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible))) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] <|
          .CaseBase
            (.some (sym.Symbol Src.digest 6176 (.SD_FunArg .unknown 0)), .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 6179), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 6173)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown]
                (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] .Void0)))
              (.Pexpr [] () (.PEsym (a! 6179))))
            (.Expr [] <|
            .Epure
              (.Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible))) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 6180), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc .unknown]
                 (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] .Void0))])
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown]
                (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] .Void0)))
              (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <| .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown]
                (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] .Void0)))
              (.Pexpr [] () (.PEsym (a! 6180)))
              (.Pexpr [] () (.PEsym (a! 6177)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6180)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 6181), .BTy_loaded .OTy_pointer)))
          (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
          .Eccall
            ()
            (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
            .Pointer (.mk .false .false .false) <| .Ctype [] <|
            .Function
              (.mk .false .false .false,
               .Ctype [.Aloc .unknown] (.Pointer (.mk .false .false .false) Ty.struct_wgt_wq))
              [(.mk .false .false .false,
                (.Ctype
                   [.Aloc .unknown]
                   (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] .Void0)),
                 .false))]
              .false)
            (.Pexpr [] () (.PEsym (a! 6171)))
            [.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6176 (.SD_FunArg .unknown 0)))]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
          .Kill
            (.Static0 <|
            .Ctype
              [.Aloc .unknown]
              (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] .Void0)))
            (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6176 (.SD_FunArg .unknown 0)))))
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6181)))))) <| .Expr [] <| .Eaction <|
      .Paction .Pos <| .Action .unknown () <|
      .Store0
        .false
        (.Pexpr [] () <|
        .PEval
          (.Vctype (.Ctype [.Aloc .unknown] (.Pointer (.mk .true .false .false) Ty.struct_wgt_wq))))
        (.Pexpr [] () (.PEsym (addr! "record" 5809)))
        (.Pexpr [] () (.PEsym (a! 6169)))
        .NA) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6196), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc .unknown,
           .Aexpr,
           .Avalue (.Ainteger (.Unsigned .Long)),
           .Astd "\xa76.5.15#4, sentence 1"] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 6186), .BTy_loaded .OTy_integer)))
          (.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 6183), .BTy_loaded .OTy_pointer)))
            (.Expr [.Aloc .unknown, .Aexpr] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.some (a! 6182), .BTy_object .OTy_pointer)))
              (.Expr
                [.Aloc .unknown, .Aexpr]
                (.Epure (.Pexpr [] () (.PEsym (addr! "record" 5809))))) <| .Expr [] <| .Eaction <|
            .Paction .Pos <| .Action .unknown () <|
            .Load0
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype [.Aloc .unknown] (.Pointer (.mk .true .false .false) Ty.struct_wgt_wq))
              (.Pexpr [] () (.PEsym (a! 6182)))
              .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6183))) <|
          [(.Pattern [] <|
            .CaseCtor
              .Cspecified
              [.Pattern [] (.CaseBase (.some (a! 6184), .BTy_object .OTy_pointer))],
            .Expr [] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.some (a! 6185), .BTy_boolean)))
              (.Expr [] <| .Ememop .PtrEq <|
              [.Pexpr [] () (.PEsym (a! 6184)),
               .Pexpr [.Astd "\xa76.5.9#5, sentence 2"] () <| .PEval <| .Vobject <| .OVpointer <|
               .PV .Prov_none <|
               .PVnull
                 (.Ctype [.Aloc .unknown] (.Pointer (.mk .true .false .false) Ty.struct_wgt_wq))]) <|
            .Expr [.Astd "\xa76.5.9#3"] <| .Epure <| .Pexpr [] () <|
            .PEif
              (.Pexpr [] () (.PEsym (a! 6185)))
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
            .PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_equality_ptr_vs_NULL))]) <|
        .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6186))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 6187), .BTy_object .OTy_integer))],
          .Expr [.Astd "\xa76.5.15#4, sentence 2"] <|
          .Eif
            (.Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 6187)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
            (.Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.some (a! 6194), .BTy_loaded .OTy_integer)))
              (.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .Long))] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6193), .BTy_object .OTy_pointer)))
                (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.2.3#4, sentence 2"] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.some (a! 6188), .BTy_loaded .OTy_pointer)))
                  (.Expr [.Aloc .unknown, .Aexpr] <|
                  .Ewseq
                    (.Pattern [] (.CaseBase (.some (a! 6192), .BTy_object .OTy_pointer)))
                    (.Expr
                      [.Aloc .unknown, .Aexpr]
                      (.Epure (.Pexpr [] () (.PEsym (addr! "record" 5809))))) <| .Expr [] <|
                  .Eaction <| .Paction .Pos <| .Action .unknown () <|
                  .Load0
                    (.Pexpr [] () <| .PEval <| .Vctype <|
                    .Ctype [.Aloc .unknown] (.Pointer (.mk .true .false .false) Ty.struct_wgt_wq))
                    (.Pexpr [] () (.PEsym (a! 6192)))
                    .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6188))) <|
                [(.Pattern
                    []
                    (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                  .Expr [] <| .Epure <|
                  .Pexpr [] () (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_memberofptr))),
                 (.Pattern [] <|
                  .CaseCtor
                    .Cspecified
                    [.Pattern [] (.CaseBase (.some (a! 6189), .BTy_object .OTy_pointer))],
                  .Expr [] <| .Epure <| .Pexpr [] () <|
                  .PEmember_shift
                    (.Pexpr [] () (.PEsym (a! 6189)))
                    (c! "wgt_wq" 5701)
                    (.Identifier .unknown "id"))]) <| .Expr [] <| .Eaction <| .Paction .Pos <|
              .Action .unknown () <|
              .Load0
                (.Pexpr
                  []
                  ()
                  (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
                (.Pexpr [] () (.PEsym (a! 6193)))
                .NA) <| .Expr [] <| .Epure <| .Pexpr [] () <|
            .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
            [.Pexpr
               []
               ()
               (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))),
             .Pexpr [] () (.PEsym (a! 6194))]) <| .Expr [] <|
          .Esseq
            (.Pattern [] (.CaseBase (.some (a! 6195), .BTy_loaded .OTy_integer)))
            (.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
            .Epure (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))) <|
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
          [.Pexpr
             []
             ()
             (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))),
           .Pexpr [] () (.PEsym (a! 6195))]),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <|
          .Epure (.Pexpr [] () (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_conditional))))]) <|
      .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
        .Kill
          (.Static0 (.Ctype [.Aloc .unknown] (.Pointer (.mk .true .false .false) Ty.struct_wgt_wq)))
          (.Pexpr [] () (.PEsym (addr! "record" 5809)))) <| .Expr [] <|
      .Erun () (c! "ret_6168" 6168) <|
      [.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
       [.Pexpr
          []
          ()
          (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))),
        .Pexpr [] () (.PEsym (a! 6196))]]) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
      .Kill
        (.Static0 (.Ctype [.Aloc .unknown] (.Pointer (.mk .true .false .false) Ty.struct_wgt_wq)))
        (.Pexpr [] () (.PEsym (addr! "record" 5809))))
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc .unknown] <|
  .Esave
    (c! "ret_6168" 6168, .BTy_loaded .OTy_integer)
    [(a! 6197,
      ((.BTy_loaded .OTy_integer,
        .some (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))), .By_value)),
       .Pexpr [.Astd "\xa76.9.1#12"] () (.PEundef .unknown .UB088_reached_end_of_function)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6197)))))

/-- `unsigned long printk_violations(void)` -/
def printk_violations : Procedure :=
  .Proc .unknown (.some 5827) (.BTy_loaded .OTy_integer) [] <| .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc .unknown, .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6161), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Unsigned .Long))] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.some (a! 6160), .BTy_object .OTy_pointer)))
          (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (addr! "reports" 5825))))) <|
        .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
        .Load0
          (.Pexpr
            []
            ()
            (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))))
          (.Pexpr [] () (.PEsym (a! 6160)))
          .NA) <| .Expr [] <| .Erun () (c! "ret_6159" 6159) <|
      [.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
       [.Pexpr
          []
          ()
          (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))),
        .Pexpr [] () (.PEsym (a! 6161))]])
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc .unknown] <|
  .Esave
    (c! "ret_6159" 6159, .BTy_loaded .OTy_integer)
    [(a! 6162,
      ((.BTy_loaded .OTy_integer,
        .some (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))), .By_value)),
       .Pexpr [.Astd "\xa76.9.1#12"] () (.PEundef .unknown .UB088_reached_end_of_function)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6162)))))

/-- `unsigned long printk_outstanding(void)` -/
def printk_outstanding : Procedure :=
  .Proc .unknown (.some 5829) (.BTy_loaded .OTy_integer) [] <| .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc .unknown, .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6157), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))]
          (.Epure (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))))) <|
      .Expr [] <| .Erun () (c! "ret_6156" 6156) <|
      [.Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
       [.Pexpr
          []
          ()
          (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long)))))),
        .Pexpr [] () (.PEsym (a! 6157))]])
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc .unknown] <|
  .Esave
    (c! "ret_6156" 6156, .BTy_loaded .OTy_integer)
    [(a! 6158,
      ((.BTy_loaded .OTy_integer,
        .some (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))), .By_value)),
       .Pexpr [.Astd "\xa76.9.1#12"] () (.PEundef .unknown .UB088_reached_end_of_function)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6158)))))

/-- `void register_once(void)` -/
def register_once : Procedure :=
  .Proc .unknown (.some 5831) .BTy_unit [] <| .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc .unknown, .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6118), .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
        .Ewseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] (.CaseBase (.some (a! 6120), .BTy_loaded .OTy_integer)),
           .Pattern [] (.CaseBase (.some (a! 6121), .BTy_loaded .OTy_integer))])
          (.Expr [] <| .Eunseq <|
          [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
           .Ewseq
             (.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] (.CaseBase (.some (a! 6125), .BTy_loaded .OTy_integer)),
              .Pattern [] (.CaseBase (.some (a! 6126), .BTy_loaded .OTy_integer))])
             (.Expr [] <| .Eunseq <|
             [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
              .Epure
                (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))),
              .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6130), .BTy_object .OTy_pointer)))
                (.Expr
                  [.Aloc .unknown, .Aexpr]
                  (.Epure (.Pexpr [] () (.PEsym (addr! "registered" 5824))))) <| .Expr [] <|
              .Eaction <| .Paction .Pos <| .Action .unknown () <|
              .Load0
                (.Pexpr
                  []
                  ()
                  (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))))
                (.Pexpr [] () (.PEsym (a! 6130)))
                .NA]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
           .PEcase
             (.Pexpr
               []
               ()
               (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 6125)), .Pexpr [] () (.PEsym (a! 6126))])) <|
           [(.Pattern [] <| .CaseCtor .Ctuple <|
             [.Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 6127), .BTy_object .OTy_integer))],
              .Pattern [] <|
              .CaseCtor
                .Cspecified
                [.Pattern [] (.CaseBase (.some (a! 6128), .BTy_object .OTy_integer))]],
             .Pexpr [.Astd "\xa76.5.9#3"] () <|
             .PEif
               (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
               .PEop
                 .OpEq
                 (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                 .PEcall
                   (.Sym (rt! "conv_int" 15837442492999787586))
                   [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6127))]) <|
               .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
               .PEcall
                 (.Sym (rt! "conv_int" 15837442492999787586))
                 [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6128))])
               (.Pexpr [] () <|
               .PEctor
                 .Cspecified
                 [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
             .Pexpr [] () <|
             .PEctor .Cspecified [.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]),
            (.Pattern
               []
               (.CaseBase (.none, .BTy_tuple [.BTy_loaded .OTy_integer, .BTy_loaded .OTy_integer])),
             .Pexpr [] () <| .PEval <| .Vloaded <|
             .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))],
           .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
           .Epure (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
        .Expr [] <| .Epure <| .Pexpr [] () <|
        .PEcase
          (.Pexpr
            []
            ()
            (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 6120)), .Pexpr [] () (.PEsym (a! 6121))])) <|
        [(.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 6122), .BTy_object .OTy_integer))],
           .Pattern [] <|
           .CaseCtor
             .Cspecified
             [.Pattern [] (.CaseBase (.some (a! 6123), .BTy_object .OTy_integer))]],
          .Pexpr [.Astd "\xa76.5.9#3"] () <|
          .PEif
            (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
            .PEop
              .OpEq
              (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
              .PEcall
                (.Sym (rt! "conv_int" 15837442492999787586))
                [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6122))]) <|
            .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
            .PEcall
              (.Sym (rt! "conv_int" 15837442492999787586))
              [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6123))])
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
          .Pexpr [] () <|
          .PEval
            (.Vloaded
              (.LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))))]) <|
      .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 6117), .BTy_boolean)))
        (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6118))) <|
        [(.Pattern [] <|
          .CaseCtor
            .Cspecified
            [.Pattern [] (.CaseBase (.some (a! 6119), .BTy_object .OTy_integer))],
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEop
              .OpEq
              (.Pexpr [] () (.PEsym (a! 6119)))
              (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
            (.Pexpr [] () (.PEval .Vtrue))
            (.Pexpr [] () (.PEval .Vfalse))),
         (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
          .Expr [] <| .End <|
          [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
           .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
      .Eif
        (.Pexpr [] () (.PEsym (a! 6117)))
        (.Expr [.Aloc .unknown, .Astmt] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc .unknown, .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr
              [.Aloc .unknown,
               .Aexpr,
               .Avalue (.Ainteger (.Signed .Int_)),
               .Astd "\xa76.5.16#3, sentence 4"] <|
            .Ewseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] (.CaseBase (.some (a! 6131), .BTy_object .OTy_pointer)),
               .Pattern [] (.CaseBase (.some (a! 6132), .BTy_loaded .OTy_integer))])
              (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
              [.Expr
                 [.Aloc .unknown, .Aexpr]
                 (.Epure (.Pexpr [] () (.PEsym (addr! "registered" 5824)))),
               .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
               .Epure
                 (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1))))))]) <|
            .Expr [] <|
            .Ewseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
              .Action .unknown () <|
              .Store0
                .false
                (.Pexpr
                  []
                  ()
                  (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))))
                (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 6131)))
                (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
                .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                [.Pexpr
                   []
                   ()
                   (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))),
                 .Pexpr [] () (.PEsym (a! 6132))])
                .NA) <| .Expr [] <| .Epure <| .Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () <|
            .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
            [.Pexpr
               []
               ()
               (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))),
             .Pexpr [] () (.PEsym (a! 6132))])
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [.Aloc .unknown, .Astmt] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
            .Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.2.2#10, sentence 1"] <|
            .Esseq
              (.Pattern [] <| .CaseCtor .Ctuple <|
              [.Pattern [] <| .CaseCtor .Ctuple <|
               [.Pattern [] (.CaseBase (.some (a! 6134), .BTy_loaded .OTy_pointer)),
                .Pattern [] <| .CaseCtor .Ctuple <|
                [.Pattern [] (.CaseBase (.some (a! 6135), .BTy_ctype)),
                 .Pattern [] (.CaseBase (.some (a! 6136), .BTy_list .BTy_ctype)),
                 .Pattern [] (.CaseBase (.some (a! 6137), .BTy_boolean)),
                 .Pattern [] (.CaseBase (.some (a! 6138), .BTy_boolean))]],
               .Pattern [] (.CaseBase (.some (a! 6142), .BTy_loaded .OTy_pointer)),
               .Pattern [] (.CaseBase (.some (a! 6146), .BTy_loaded .OTy_pointer)),
               .Pattern [] (.CaseBase (.some (a! 6147), .BTy_loaded .OTy_pointer))])
              (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
              [.Expr [] <|
               .Esseq
                 (.Pattern [] (.CaseBase (.some (a! 6133), .BTy_loaded .OTy_pointer)))
                 (.Expr [.Aloc .unknown, .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <| .Vloaded <|
                 .LVspecified (.OVpointer (.PV .Prov_none (.PVfunction (c! "wgh_register" 5211))))) <|
               .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
               [.Pexpr [] () (.PEsym (a! 6133)),
                .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 6133))))],
               .Expr [.Aloc .unknown, .Aexpr] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6144), .BTy_object .OTy_pointer)))
                 (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (a! 6143))))) <|
               .Expr [.Astd "\xa76.3.2.1#3"] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 6145), .BTy_object .OTy_pointer)))
                 (.Expr [] <| .Ememop .PtrArrayShift <|
                 [.Pexpr [] () (.PEsym (a! 6144)),
                  .Pexpr [] () (.PEval (.Vctype Ty.char)),
                  .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
               .Expr
                 []
                 (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 6145))]))),
               .Expr [.Aloc .unknown, .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <| .Vloaded <|
               .LVspecified
                 (.OVpointer (.PV .Prov_none (.PVfunction (c! "printk_violations" 5826)))),
               .Expr [.Aloc .unknown, .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <| .Vloaded <|
               .LVspecified
                 (.OVpointer (.PV .Prov_none (.PVfunction (c! "printk_outstanding" 5828))))]) <|
            .Expr [] <|
            .Eif
              (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
              .PEop
                .OpEq
                (.Pexpr [] () <|
                .PEcall
                  (.Sym (rt! "params_length" 18299737999929047716))
                  [.Pexpr [] () (.PEsym (a! 6136))])
                (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 3))))))
              (.Expr [] <| .Epure <|
              .Pexpr
                [.Astd "\xa76.5.2.2#6, sentence 3"]
                ()
                (.PEundef .unknown .UB038_number_of_args)) <| .Expr [] <|
            .Eif
              (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEsym (a! 6137))) <| .Pexpr [] () <|
              .PEnot <| .Pexpr [] () <|
              .PEare_compatible
                (.Pexpr [] () (.PEval (.Vctype (.Ctype [.Aloc .unknown, .Aloc .unknown] .Void0))))
                (.Pexpr [] () (.PEsym (a! 6135))))
              (.Expr [] <|
              .Epure
                (.Pexpr
                  [.Astd "\xa76.5.2.2#9"]
                  ()
                  (.PEundef .unknown .UB041_function_not_compatible))) <| .Expr [] <|
            .Esseq
              (.Pattern [] <|
              .CaseBase
                (.some (sym.Symbol Src.digest 6139 (.SD_FunArg .unknown 0)),
                 .BTy_object .OTy_pointer))
              (.Expr [] <|
              .Elet
                (.Pattern [] (.CaseBase (.some (a! 6148), .BTy_ctype)))
                (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                [.Pexpr [] () (.PEsym (a! 6136)),
                 .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
              .Eif
                (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                .PEare_compatible
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                  .Pointer
                    (.mk .true .false .false)
                    (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))))
                  (.Pexpr [] () (.PEsym (a! 6148))))
                (.Expr [] <| .Epure <|
                .Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible)) <|
              .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6149), .BTy_object .OTy_pointer)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
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
                  (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <| .Expr [] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Store0
                  .false
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                  .Pointer
                    (.mk .true .false .false)
                    (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))))
                  (.Pexpr [] () (.PEsym (a! 6149)))
                  (.Pexpr [] () (.PEsym (a! 6142)))
                  .NA)
                (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6149)))))) <| .Expr [] <|
            .Esseq
              (.Pattern [] <|
              .CaseBase
                (.some (sym.Symbol Src.digest 6140 (.SD_FunArg .unknown 1)),
                 .BTy_object .OTy_pointer))
              (.Expr [] <|
              .Elet
                (.Pattern [] (.CaseBase (.some (a! 6150), .BTy_ctype)))
                (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                [.Pexpr [] () (.PEsym (a! 6136)),
                 .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <| .Expr [] <|
              .Eif
                (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                .PEare_compatible
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                  .Pointer (.mk .false .false .false) <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                  .Function
                    (.mk .false .false .false,
                     .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))
                    []
                    .false)
                  (.Pexpr [] () (.PEsym (a! 6150))))
                (.Expr [] <| .Epure <|
                .Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible)) <|
              .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6151), .BTy_object .OTy_pointer)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Create
                  (.Pexpr [] () <| .PEctor .Civalignof <|
                  [.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                   .Pointer (.mk .false .false .false) <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                   .Function
                     (.mk .false .false .false,
                      .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))
                     []
                     .false])
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                  .Pointer (.mk .false .false .false) <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                  .Function
                    (.mk .false .false .false,
                     .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))
                    []
                    .false)
                  (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 1)) <| .Expr [] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Store0
                  .false
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                  .Pointer (.mk .false .false .false) <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                  .Function
                    (.mk .false .false .false,
                     .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))
                    []
                    .false)
                  (.Pexpr [] () (.PEsym (a! 6151)))
                  (.Pexpr [] () (.PEsym (a! 6146)))
                  .NA)
                (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6151)))))) <| .Expr [] <|
            .Esseq
              (.Pattern [] <|
              .CaseBase
                (.some (sym.Symbol Src.digest 6141 (.SD_FunArg .unknown 2)),
                 .BTy_object .OTy_pointer))
              (.Expr [] <|
              .Elet
                (.Pattern [] (.CaseBase (.some (a! 6152), .BTy_ctype)))
                (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                [.Pexpr [] () (.PEsym (a! 6136)),
                 .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))]) <| .Expr [] <|
              .Eif
                (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                .PEare_compatible
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                  .Pointer (.mk .false .false .false) <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                  .Function
                    (.mk .false .false .false,
                     .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))
                    []
                    .false)
                  (.Pexpr [] () (.PEsym (a! 6152))))
                (.Expr [] <| .Epure <|
                .Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible)) <|
              .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.some (a! 6153), .BTy_object .OTy_pointer)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Create
                  (.Pexpr [] () <| .PEctor .Civalignof <|
                  [.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                   .Pointer (.mk .false .false .false) <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                   .Function
                     (.mk .false .false .false,
                      .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))
                     []
                     .false])
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                  .Pointer (.mk .false .false .false) <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                  .Function
                    (.mk .false .false .false,
                     .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))
                    []
                    .false)
                  (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 2)) <| .Expr [] <|
              .Ewseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                .Store0
                  .false
                  (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                  .Pointer (.mk .false .false .false) <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                  .Function
                    (.mk .false .false .false,
                     .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))
                    []
                    .false)
                  (.Pexpr [] () (.PEsym (a! 6153)))
                  (.Pexpr [] () (.PEsym (a! 6147)))
                  .NA)
                (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6153)))))) <| .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.some (a! 6154), .BTy_unit)))
              (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
              .Eccall
                ()
                (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                .Pointer (.mk .false .false .false) <| .Ctype [] <|
                .Function
                  (.mk .false .false .false, .Ctype [.Aloc .unknown, .Aloc .unknown] .Void0)
                  [(.mk .false .false .false,
                    (.Ctype [.Aloc .unknown, .Aloc .unknown] <|
                     .Pointer
                       (.mk .true .false .false)
                       (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))),
                     .false)),
                   (.mk .false .false .false,
                    (.Ctype [.Aloc .unknown, .Aloc .unknown] <|
                     .Pointer (.mk .false .false .false) <|
                     .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                     .Function
                       (.mk .false .false .false,
                        .Ctype
                          [.Aloc .unknown, .Aloc .unknown]
                          (.Basic (.Integer (.Unsigned .Long))))
                       []
                       .false,
                     .false)),
                   (.mk .false .false .false,
                    (.Ctype [.Aloc .unknown, .Aloc .unknown] <|
                     .Pointer (.mk .false .false .false) <|
                     .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                     .Function
                       (.mk .false .false .false,
                        .Ctype
                          [.Aloc .unknown, .Aloc .unknown]
                          (.Basic (.Integer (.Unsigned .Long))))
                       []
                       .false,
                     .false))]
                  .false)
                (.Pexpr [] () (.PEsym (a! 6134))) <|
              [.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6139 (.SD_FunArg .unknown 0))),
               .Pexpr [] () (.PEsym (sym.Symbol Src.digest 6140 (.SD_FunArg .unknown 1))),
               .Pexpr [] () (.PEsym (sym.Symbol Src.digest 6141 (.SD_FunArg .unknown 2)))]) <|
            .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit, .BTy_unit])))
              (.Expr [] <| .Eunseq <|
              [.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
               .Kill
                 (.Static0 <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                 .Pointer
                   (.mk .true .false .false)
                   (.Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer .Char0))))
                 (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6139 (.SD_FunArg .unknown 0)))),
               .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
               .Kill
                 (.Static0 <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                 .Pointer (.mk .false .false .false) <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                 .Function
                   (.mk .false .false .false,
                    .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))
                   []
                   .false)
                 (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6140 (.SD_FunArg .unknown 1)))),
               .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
               .Kill
                 (.Static0 <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                 .Pointer (.mk .false .false .false) <| .Ctype [.Aloc .unknown, .Aloc .unknown] <|
                 .Function
                   (.mk .false .false .false,
                    .Ctype [.Aloc .unknown, .Aloc .unknown] (.Basic (.Integer (.Unsigned .Long))))
                   []
                   .false)
                 (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6141 (.SD_FunArg .unknown 2))))])
              (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6154))))))
            (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
          (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
        (.Expr [.Aloc .unknown, .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc .unknown] <|
  .Esave
    (c! "ret_6116" 6116, .BTy_unit)
    [(a! 6155,
      ((.BTy_unit, .some (.Ctype [.Aloc .unknown] .Void0, .By_value)), .Pexpr [] () (.PEval .Vunit)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6155)))))

/-- `void print_quoted(const char *fmt)` -/
def print_quoted : Procedure :=
  .Proc .unknown (.some 5834) .BTy_unit [(addr! "fmt" 5832, .BTy_object .OTy_pointer)] <|
  .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc .unknown, .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc .unknown,
           .Aexpr,
           .Avalue (.Ainteger (.Signed .Int_)),
           .Astd "\xa76.5.2.2#10, sentence 1"] <|
        .Esseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <| .CaseCtor .Ctuple <|
           [.Pattern [] (.CaseBase (.some (a! 5945), .BTy_loaded .OTy_pointer)),
            .Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 5946), .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 5947), .BTy_list .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 5948), .BTy_boolean)),
             .Pattern [] (.CaseBase (.some (a! 5949), .BTy_boolean))]],
           .Pattern [] (.CaseBase (.some (a! 5951), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
          [.Expr [] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 5944), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc .unknown, .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <| .Vloaded <|
             .LVspecified
               (.OVpointer (.PV .Prov_none (.PVfunction (rt! "printf_proxy" 17096408249463498481))))) <|
           .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
           [.Pexpr [] () (.PEsym (a! 5944)),
            .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 5944))))],
           .Expr [.Aloc .unknown, .Aexpr] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 5953), .BTy_object .OTy_pointer)))
             (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (a! 5952))))) <|
           .Expr [.Astd "\xa76.3.2.1#3"] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 5954), .BTy_object .OTy_pointer)))
             (.Expr [] <| .Ememop .PtrArrayShift <|
             [.Pexpr [] () (.PEsym (a! 5953)),
              .Pexpr [] () (.PEval (.Vctype Ty.char)),
              .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
           .Expr [] (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 5954))])))]) <|
        .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
          .PEop
            .OpLe
            (.Pexpr [] () <|
            .PEcall
              (.Sym (rt! "params_length" 18299737999929047716))
              [.Pexpr [] () (.PEsym (a! 5947))])
            (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
          (.Expr [] <|
          .Epure
            (.Pexpr
              [.Astd "\xa76.5.2.2#6, sentence 3"]
              ()
              (.PEundef .unknown .UB038_number_of_args))) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEnot (.Pexpr [] () (.PEsym (a! 5948))))) <|
          .Pexpr [] () <| .PEnot <| .Pexpr [] () <|
          .PEare_compatible
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype
              [.Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown]
              (.Basic (.Integer (.Signed .Int_))))
            (.Pexpr [] () (.PEsym (a! 5946))))
          (.Expr [] <|
          .Epure
            (.Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible))) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] <|
          .CaseBase
            (.some (sym.Symbol Src.digest 5950 (.SD_FunArg .unknown 0)), .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 5955), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 5947)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
              .Ctype
                [.Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown]
                (.Basic (.Integer .Char0)))
              (.Pexpr [] () (.PEsym (a! 5955))))
            (.Expr [] <|
            .Epure
              (.Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible))) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 5956), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
               .Ctype
                 [.Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown]
                 (.Basic (.Integer .Char0))])
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
              .Ctype
                [.Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown]
                (.Basic (.Integer .Char0)))
              (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <| .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
              .Ctype
                [.Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown]
                (.Basic (.Integer .Char0)))
              (.Pexpr [] () (.PEsym (a! 5956)))
              (.Pexpr [] () (.PEsym (a! 5951)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 5956)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 5957), .BTy_loaded .OTy_integer)))
          (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
          .Eccall
            ()
            (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
            .Pointer (.mk .false .false .false) <| .Ctype [] <|
            .Function
              (.mk .false .false .false,
               .Ctype
                 [.Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown]
                 (.Basic (.Integer (.Signed .Int_))))
              [(.mk .false .false .false,
                (.Ctype
                   [.Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                 .Ctype
                   [.Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown]
                   (.Basic (.Integer .Char0)),
                 .false))]
              .true)
            (.Pexpr [] () (.PEsym (a! 5945))) <|
          [.Pexpr [] () (.PEsym (sym.Symbol Src.digest 5950 (.SD_FunArg .unknown 0))),
           .Pexpr [] () (.PEctor (.Cnil (.BTy_tuple [.BTy_ctype, .BTy_object .OTy_pointer])) [])]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
          .Kill
            (.Static0 <|
            .Ctype
              [.Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
            .Ctype
              [.Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown]
              (.Basic (.Integer .Char0)))
            (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 5950 (.SD_FunArg .unknown 0)))))
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 5957))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Aloc .unknown, .Astmt, .Alabel (.LAloop 5836)] <|
        .Esave (c! "while_5958" 5958, .BTy_unit) [] <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 5960), .BTy_loaded .OTy_integer)))
          (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
          .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
          .Ewseq
            (.Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 5962), .BTy_loaded .OTy_integer)),
             .Pattern [] (.CaseBase (.some (a! 5963), .BTy_loaded .OTy_integer))])
            (.Expr [] <| .Eunseq <|
            [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger .Char0)] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 5971), .BTy_object .OTy_pointer)))
               (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.3.2"] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 5967), .BTy_loaded .OTy_pointer)))
                 (.Expr [.Aloc .unknown, .Aexpr] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 5970), .BTy_object .OTy_pointer)))
                   (.Expr
                     [.Aloc .unknown, .Aexpr]
                     (.Epure (.Pexpr [] () (.PEsym (addr! "fmt" 5832))))) <| .Expr [] <| .Eaction <|
                 .Paction .Pos <| .Action .unknown () <|
                 .Load0
                   (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                   .Pointer
                     (.mk .true .false .false)
                     (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                   (.Pexpr [] () (.PEsym (a! 5970)))
                   .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 5967))) <|
               [(.Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 5968), .BTy_object .OTy_pointer))],
                 .Expr [] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 5969), .BTy_boolean)))
                   (.Expr [] <| .Ememop .PtrValidForDeref <|
                   [.Pexpr
                      []
                      ()
                      (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))),
                    .Pexpr [] () (.PEsym (a! 5968))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEif (.Pexpr [] () (.PEsym (a! 5969))) (.Pexpr [] () (.PEsym (a! 5968))) <|
                 .Pexpr
                   [.Astd "\xa76.5.3.2#4, sentence 4"]
                   ()
                   (.PEundef .unknown .UB043_indirection_invalid_value)),
                (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                 .Expr [] <| .Epure <|
                 .Pexpr
                   [.Astd "\xa76.5.3.2#4, sentence 4"]
                   ()
                   (.PEundef .unknown .UB043_indirection_invalid_value))]) <| .Expr [] <|
             .Eaction <| .Paction .Pos <| .Action .unknown () <|
             .Load0
               (.Pexpr
                 []
                 ()
                 (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))))
               (.Pexpr [] () (.PEsym (a! 5971)))
               .NA,
             .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger .Char0)] <|
             .Epure
               (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEcase
            (.Pexpr
              []
              ()
              (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 5962)), .Pexpr [] () (.PEsym (a! 5963))])) <|
          [(.Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] <|
             .CaseCtor
               .Cspecified
               [.Pattern [] (.CaseBase (.some (a! 5964), .BTy_object .OTy_integer))],
             .Pattern [] <|
             .CaseCtor
               .Cspecified
               [.Pattern [] (.CaseBase (.some (a! 5965), .BTy_object .OTy_integer))]],
            .Pexpr [.Astd "\xa76.5.9#3"] () <|
            .PEif
              (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
              .PEop
                .OpEq
                (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                .PEcall
                  (.Sym (rt! "conv_int" 15837442492999787586))
                  [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 5964))]) <|
              .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
              .PEcall
                (.Sym (rt! "conv_int" 15837442492999787586))
                [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 5965))])
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
            .Pexpr [] () <| .PEval <| .Vloaded <|
            .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 5959), .BTy_boolean)))
          (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 5960))) <|
          [(.Pattern [] <|
            .CaseCtor
              .Cspecified
              [.Pattern [] (.CaseBase (.some (a! 5961), .BTy_object .OTy_integer))],
            .Expr [] <| .Epure <| .Pexpr [] () <|
            .PEif
              (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
              .PEop
                .OpEq
                (.Pexpr [] () (.PEsym (a! 5961)))
                (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
              (.Pexpr [] () (.PEval .Vtrue))
              (.Pexpr [] () (.PEval .Vfalse))),
           (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
            .Expr [] <| .End <|
            [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
             .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
        .Eif
          (.Pexpr [] () (.PEsym (a! 5959)))
          (.Expr [] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [.Aloc .unknown, .Astmt] <|
            .Esseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [.Aloc .unknown, .Astmt] <|
              .Esseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [.Aloc .unknown, .Astmt] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.some (a! 5973), .BTy_loaded .OTy_integer)))
                  (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                  .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                  .Ewseq
                    (.Pattern [] <| .CaseCtor .Ctuple <|
                    [.Pattern [] (.CaseBase (.some (a! 5975), .BTy_loaded .OTy_integer)),
                     .Pattern [] (.CaseBase (.some (a! 5976), .BTy_loaded .OTy_integer))])
                    (.Expr [] <| .Eunseq <|
                    [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                     .Ewseq
                       (.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern [] (.CaseBase (.some (a! 5980), .BTy_loaded .OTy_integer)),
                        .Pattern [] (.CaseBase (.some (a! 5981), .BTy_loaded .OTy_integer))])
                       (.Expr [] <| .Eunseq <|
                       [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger .Char0)] <|
                        .Ewseq
                          (.Pattern [] (.CaseBase (.some (a! 5989), .BTy_object .OTy_pointer)))
                          (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.3.2"] <|
                          .Ewseq
                            (.Pattern [] (.CaseBase (.some (a! 5985), .BTy_loaded .OTy_pointer)))
                            (.Expr [.Aloc .unknown, .Aexpr] <|
                            .Ewseq
                              (.Pattern [] (.CaseBase (.some (a! 5988), .BTy_object .OTy_pointer)))
                              (.Expr
                                [.Aloc .unknown, .Aexpr]
                                (.Epure (.Pexpr [] () (.PEsym (addr! "fmt" 5832))))) <| .Expr [] <|
                            .Eaction <| .Paction .Pos <| .Action .unknown () <|
                            .Load0
                              (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                              .Pointer
                                (.mk .true .false .false)
                                (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                              (.Pexpr [] () (.PEsym (a! 5988)))
                              .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 5985))) <|
                          [(.Pattern [] <|
                            .CaseCtor
                              .Cspecified
                              [.Pattern [] (.CaseBase (.some (a! 5986), .BTy_object .OTy_pointer))],
                            .Expr [] <|
                            .Ewseq
                              (.Pattern [] (.CaseBase (.some (a! 5987), .BTy_boolean)))
                              (.Expr [] <| .Ememop .PtrValidForDeref <|
                              [.Pexpr
                                 []
                                 ()
                                 (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))),
                               .Pexpr [] () (.PEsym (a! 5986))]) <| .Expr [] <| .Epure <|
                            .Pexpr [] () <|
                            .PEif
                              (.Pexpr [] () (.PEsym (a! 5987)))
                              (.Pexpr [] () (.PEsym (a! 5986))) <|
                            .Pexpr
                              [.Astd "\xa76.5.3.2#4, sentence 4"]
                              ()
                              (.PEundef .unknown .UB043_indirection_invalid_value)),
                           (.Pattern
                              []
                              (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                            .Expr [] <| .Epure <|
                            .Pexpr
                              [.Astd "\xa76.5.3.2#4, sentence 4"]
                              ()
                              (.PEundef .unknown .UB043_indirection_invalid_value))]) <| .Expr [] <|
                        .Eaction <| .Paction .Pos <| .Action .unknown () <|
                        .Load0
                          (.Pexpr
                            []
                            ()
                            (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))))
                          (.Pexpr [] () (.PEsym (a! 5989)))
                          .NA,
                        .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                        .Epure <|
                        .Pexpr
                          []
                          ()
                          (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 10)))))]) <|
                     .Expr [] <| .Epure <| .Pexpr [] () <|
                     .PEcase
                       (.Pexpr [] () <|
                       .PEctor
                         .Ctuple
                         [.Pexpr [] () (.PEsym (a! 5980)), .Pexpr [] () (.PEsym (a! 5981))]) <|
                     [(.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern [] <|
                        .CaseCtor
                          .Cspecified
                          [.Pattern [] (.CaseBase (.some (a! 5982), .BTy_object .OTy_integer))],
                        .Pattern [] <|
                        .CaseCtor
                          .Cspecified
                          [.Pattern [] (.CaseBase (.some (a! 5983), .BTy_object .OTy_integer))]],
                       .Pexpr [.Astd "\xa76.5.9#3"] () <|
                       .PEif
                         (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                         .PEop
                           .OpEq
                           (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                           .PEcall
                             (.Sym (rt! "conv_int" 15837442492999787586))
                             [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                              .Pexpr [] () (.PEsym (a! 5982))]) <|
                         .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                         .PEcall
                           (.Sym (rt! "conv_int" 15837442492999787586))
                           [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 5983))])
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
                       .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))],
                     .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                     .Epure <|
                     .Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                  .Expr [] <| .Epure <| .Pexpr [] () <|
                  .PEcase
                    (.Pexpr [] () <|
                    .PEctor
                      .Ctuple
                      [.Pexpr [] () (.PEsym (a! 5975)), .Pexpr [] () (.PEsym (a! 5976))]) <|
                  [(.Pattern [] <| .CaseCtor .Ctuple <|
                    [.Pattern [] <|
                     .CaseCtor
                       .Cspecified
                       [.Pattern [] (.CaseBase (.some (a! 5977), .BTy_object .OTy_integer))],
                     .Pattern [] <|
                     .CaseCtor
                       .Cspecified
                       [.Pattern [] (.CaseBase (.some (a! 5978), .BTy_object .OTy_integer))]],
                    .Pexpr [.Astd "\xa76.5.9#3"] () <|
                    .PEif
                      (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                      .PEop
                        .OpEq
                        (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                        .PEcall
                          (.Sym (rt! "conv_int" 15837442492999787586))
                          [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 5977))]) <|
                      .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                      .PEcall
                        (.Sym (rt! "conv_int" 15837442492999787586))
                        [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 5978))])
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
                    .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))]) <|
                .Expr [] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.some (a! 5972), .BTy_boolean)))
                  (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 5973))) <|
                  [(.Pattern [] <|
                    .CaseCtor
                      .Cspecified
                      [.Pattern [] (.CaseBase (.some (a! 5974), .BTy_object .OTy_integer))],
                    .Expr [] <| .Epure <| .Pexpr [] () <|
                    .PEif
                      (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                      .PEop
                        .OpEq
                        (.Pexpr [] () (.PEsym (a! 5974)))
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
                  (.Pexpr [] () (.PEsym (a! 5972)))
                  (.Expr [.Aloc .unknown, .Astmt] <|
                  .Esseq
                    (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
                    (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                    .Expr
                      [.Aloc .unknown,
                       .Aexpr,
                       .Avalue (.Ainteger (.Signed .Int_)),
                       .Astd "\xa76.5.2.2#10, sentence 1"] <|
                    .Esseq
                      (.Pattern [] <| .CaseCtor .Ctuple <|
                      [.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern [] (.CaseBase (.some (a! 5991), .BTy_loaded .OTy_pointer)),
                        .Pattern [] <| .CaseCtor .Ctuple <|
                        [.Pattern [] (.CaseBase (.some (a! 5992), .BTy_ctype)),
                         .Pattern [] (.CaseBase (.some (a! 5993), .BTy_list .BTy_ctype)),
                         .Pattern [] (.CaseBase (.some (a! 5994), .BTy_boolean)),
                         .Pattern [] (.CaseBase (.some (a! 5995), .BTy_boolean))]],
                       .Pattern [] (.CaseBase (.some (a! 5997), .BTy_loaded .OTy_pointer))])
                      (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
                      [.Expr [] <|
                       .Esseq
                         (.Pattern [] (.CaseBase (.some (a! 5990), .BTy_loaded .OTy_pointer)))
                         (.Expr [.Aloc .unknown, .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <|
                         .Vloaded <| .LVspecified <|
                         .OVpointer
                           (.PV .Prov_none (.PVfunction (rt! "printf_proxy" 17096408249463498481)))) <|
                       .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
                       [.Pexpr [] () (.PEsym (a! 5990)),
                        .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 5990))))],
                       .Expr [.Aloc .unknown, .Aexpr] <|
                       .Ewseq
                         (.Pattern [] (.CaseBase (.some (a! 5999), .BTy_object .OTy_pointer)))
                         (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (a! 5998))))) <|
                       .Expr [.Astd "\xa76.3.2.1#3"] <|
                       .Ewseq
                         (.Pattern [] (.CaseBase (.some (a! 6000), .BTy_object .OTy_pointer)))
                         (.Expr [] <| .Ememop .PtrArrayShift <|
                         [.Pexpr [] () (.PEsym (a! 5999)),
                          .Pexpr [] () (.PEval (.Vctype Ty.char)),
                          .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
                       .Expr [] <|
                       .Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 6000))]))]) <|
                    .Expr [] <|
                    .Eif
                      (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                      .PEop
                        .OpLe
                        (.Pexpr [] () <|
                        .PEcall
                          (.Sym (rt! "params_length" 18299737999929047716))
                          [.Pexpr [] () (.PEsym (a! 5993))])
                        (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
                      (.Expr [] <| .Epure <|
                      .Pexpr
                        [.Astd "\xa76.5.2.2#6, sentence 3"]
                        ()
                        (.PEundef .unknown .UB038_number_of_args)) <| .Expr [] <|
                    .Eif
                      (.Pexpr [] () <|
                      .PEop .OpOr (.Pexpr [] () (.PEnot (.Pexpr [] () (.PEsym (a! 5994))))) <|
                      .Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                      .PEare_compatible
                        (.Pexpr [] () <| .PEval <| .Vctype <|
                        .Ctype
                          [.Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown]
                          (.Basic (.Integer (.Signed .Int_))))
                        (.Pexpr [] () (.PEsym (a! 5992))))
                      (.Expr [] <| .Epure <|
                      .Pexpr
                        [.Astd "\xa76.5.2.2#9"]
                        ()
                        (.PEundef .unknown .UB041_function_not_compatible)) <| .Expr [] <|
                    .Esseq
                      (.Pattern [] <| .CaseBase <|
                      (.some (sym.Symbol Src.digest 5996 (.SD_FunArg .unknown 0)),
                       .BTy_object .OTy_pointer))
                      (.Expr [] <|
                      .Elet
                        (.Pattern [] (.CaseBase (.some (a! 6001), .BTy_ctype)))
                        (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                        [.Pexpr [] () (.PEsym (a! 5993)),
                         .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
                      .Expr [] <|
                      .Eif
                        (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                        .PEare_compatible
                          (.Pexpr [] () <| .PEval <| .Vctype <|
                          .Ctype
                            [.Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                          .Ctype
                            [.Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown]
                            (.Basic (.Integer .Char0)))
                          (.Pexpr [] () (.PEsym (a! 6001))))
                        (.Expr [] <| .Epure <|
                        .Pexpr
                          [.Astd "\xa76.5.2.2#9"]
                          ()
                          (.PEundef .unknown .UB041_function_not_compatible)) <|
                      .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
                      .Ewseq
                        (.Pattern [] (.CaseBase (.some (a! 6002), .BTy_object .OTy_pointer)))
                        (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                        .Create
                          (.Pexpr [] () <| .PEctor .Civalignof <|
                          [.Pexpr [] () <| .PEval <| .Vctype <|
                           .Ctype
                             [.Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                           .Ctype
                             [.Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown]
                             (.Basic (.Integer .Char0))])
                          (.Pexpr [] () <| .PEval <| .Vctype <|
                          .Ctype
                            [.Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                          .Ctype
                            [.Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown]
                            (.Basic (.Integer .Char0)))
                          (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <|
                      .Expr [] <|
                      .Ewseq
                        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                        (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                        .Store0
                          .false
                          (.Pexpr [] () <| .PEval <| .Vctype <|
                          .Ctype
                            [.Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                          .Ctype
                            [.Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown]
                            (.Basic (.Integer .Char0)))
                          (.Pexpr [] () (.PEsym (a! 6002)))
                          (.Pexpr [] () (.PEsym (a! 5997)))
                          .NA)
                        (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6002)))))) <| .Expr [] <|
                    .Esseq
                      (.Pattern [] (.CaseBase (.some (a! 6003), .BTy_loaded .OTy_integer)))
                      (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
                      .Eccall
                        ()
                        (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                        .Pointer (.mk .false .false .false) <| .Ctype [] <|
                        .Function
                          (.mk .false .false .false,
                           .Ctype
                             [.Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown]
                             (.Basic (.Integer (.Signed .Int_))))
                          [(.mk .false .false .false,
                            (.Ctype
                               [.Aloc .unknown,
                                .Aloc .unknown,
                                .Aloc .unknown,
                                .Aloc .unknown,
                                .Aloc .unknown,
                                .Aloc .unknown,
                                .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                             .Ctype
                               [.Aloc .unknown,
                                .Aloc .unknown,
                                .Aloc .unknown,
                                .Aloc .unknown,
                                .Aloc .unknown,
                                .Aloc .unknown,
                                .Aloc .unknown]
                               (.Basic (.Integer .Char0)),
                             .false))]
                          .true)
                        (.Pexpr [] () (.PEsym (a! 5991))) <|
                      [.Pexpr [] () (.PEsym (sym.Symbol Src.digest 5996 (.SD_FunArg .unknown 0))),
                       .Pexpr
                         []
                         ()
                         (.PEctor (.Cnil (.BTy_tuple [.BTy_ctype, .BTy_object .OTy_pointer])) [])]) <|
                    .Expr [] <|
                    .Esseq
                      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                      (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                      .Kill
                        (.Static0 <|
                        .Ctype
                          [.Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                        .Ctype
                          [.Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown]
                          (.Basic (.Integer .Char0)))
                        (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 5996 (.SD_FunArg .unknown 0)))))
                      (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6003))))))
                    (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
                .Expr [.Aloc .unknown, .Astmt] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.some (a! 6005), .BTy_loaded .OTy_integer)))
                  (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                  .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                  .Ewseq
                    (.Pattern [] <| .CaseCtor .Ctuple <|
                    [.Pattern [] (.CaseBase (.some (a! 6007), .BTy_loaded .OTy_integer)),
                     .Pattern [] (.CaseBase (.some (a! 6008), .BTy_loaded .OTy_integer))])
                    (.Expr [] <| .Eunseq <|
                    [.Expr
                       [.Aloc .unknown,
                        .Aexpr,
                        .Avalue (.Ainteger (.Signed .Int_)),
                        .Astd "6.5.14#3",
                        .Astd "6.5.14#4",
                        .Aexpr,
                        .Avalue (.Ainteger (.Signed .Int_))] <|
                     .Esseq
                       (.Pattern [] (.CaseBase (.some (a! 6032), .BTy_loaded .OTy_integer)))
                       (.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                       .Ewseq
                         (.Pattern [] <| .CaseCtor .Ctuple <|
                         [.Pattern [] (.CaseBase (.some (a! 6012), .BTy_loaded .OTy_integer)),
                          .Pattern [] (.CaseBase (.some (a! 6013), .BTy_loaded .OTy_integer))])
                         (.Expr [] <| .Eunseq <|
                         [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                          .Ewseq
                            (.Pattern [] <| .CaseCtor .Ctuple <|
                            [.Pattern [] (.CaseBase (.some (a! 6017), .BTy_loaded .OTy_integer)),
                             .Pattern [] (.CaseBase (.some (a! 6018), .BTy_loaded .OTy_integer))])
                            (.Expr [] <| .Eunseq <|
                            [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                             .Ewseq
                               (.Pattern [] <| .CaseCtor .Ctuple <|
                               [.Pattern [] (.CaseBase (.some (a! 6022), .BTy_loaded .OTy_integer)),
                                .Pattern [] (.CaseBase (.some (a! 6023), .BTy_loaded .OTy_integer))])
                               (.Expr [] <| .Eunseq <|
                               [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger .Char0)] <|
                                .Ewseq
                                  (.Pattern [] (.CaseBase (.some (a! 6031), .BTy_object .OTy_pointer)))
                                  (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.3.2"] <|
                                  .Ewseq
                                    (.Pattern [] (.CaseBase (.some (a! 6027), .BTy_loaded .OTy_pointer)))
                                    (.Expr [.Aloc .unknown, .Aexpr] <|
                                    .Ewseq
                                      (.Pattern [] (.CaseBase (.some (a! 6030), .BTy_object .OTy_pointer)))
                                      (.Expr
                                        [.Aloc .unknown, .Aexpr]
                                        (.Epure (.Pexpr [] () (.PEsym (addr! "fmt" 5832))))) <|
                                    .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                                    .Load0
                                      (.Pexpr [] () <| .PEval <| .Vctype <|
                                      .Ctype [.Aloc .unknown] <|
                                      .Pointer
                                        (.mk .true .false .false)
                                        (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                                      (.Pexpr [] () (.PEsym (a! 6030)))
                                      .NA) <| .Expr [] <|
                                  .Ecase (.Pexpr [] () (.PEsym (a! 6027))) <|
                                  [(.Pattern [] <|
                                    .CaseCtor
                                      .Cspecified
                                      [.Pattern [] (.CaseBase (.some (a! 6028), .BTy_object .OTy_pointer))],
                                    .Expr [] <|
                                    .Ewseq
                                      (.Pattern [] (.CaseBase (.some (a! 6029), .BTy_boolean)))
                                      (.Expr [] <| .Ememop .PtrValidForDeref <|
                                      [.Pexpr
                                         []
                                         ()
                                         (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))),
                                       .Pexpr [] () (.PEsym (a! 6028))]) <| .Expr [] <| .Epure <|
                                    .Pexpr [] () <|
                                    .PEif
                                      (.Pexpr [] () (.PEsym (a! 6029)))
                                      (.Pexpr [] () (.PEsym (a! 6028))) <|
                                    .Pexpr
                                      [.Astd "\xa76.5.3.2#4, sentence 4"]
                                      ()
                                      (.PEundef .unknown .UB043_indirection_invalid_value)),
                                   (.Pattern
                                      []
                                      (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                                    .Expr [] <| .Epure <|
                                    .Pexpr
                                      [.Astd "\xa76.5.3.2#4, sentence 4"]
                                      ()
                                      (.PEundef .unknown .UB043_indirection_invalid_value))]) <|
                                .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                                .Load0
                                  (.Pexpr
                                    []
                                    ()
                                    (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))))
                                  (.Pexpr [] () (.PEsym (a! 6031)))
                                  .NA,
                                .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                                .Epure <|
                                .Pexpr
                                  []
                                  ()
                                  (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 34)))))]) <|
                             .Expr [] <| .Epure <| .Pexpr [] () <|
                             .PEcase
                               (.Pexpr [] () <|
                               .PEctor
                                 .Ctuple
                                 [.Pexpr [] () (.PEsym (a! 6022)), .Pexpr [] () (.PEsym (a! 6023))]) <|
                             [(.Pattern [] <| .CaseCtor .Ctuple <|
                               [.Pattern [] <|
                                .CaseCtor
                                  .Cspecified
                                  [.Pattern [] (.CaseBase (.some (a! 6024), .BTy_object .OTy_integer))],
                                .Pattern [] <|
                                .CaseCtor
                                  .Cspecified
                                  [.Pattern [] (.CaseBase (.some (a! 6025), .BTy_object .OTy_integer))]],
                               .Pexpr [.Astd "\xa76.5.9#3"] () <|
                               .PEif
                                 (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                 .PEop
                                   .OpEq
                                   (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                   .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                   [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                    .Pexpr [] () (.PEsym (a! 6024))]) <|
                                 .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                 .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                 [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                  .Pexpr [] () (.PEsym (a! 6025))])
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
                               .LVunspecified
                                 (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))],
                             .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
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
                              [.Pexpr [] () (.PEsym (a! 6017)), .Pexpr [] () (.PEsym (a! 6018))]) <|
                          [(.Pattern [] <| .CaseCtor .Ctuple <|
                            [.Pattern [] <|
                             .CaseCtor
                               .Cspecified
                               [.Pattern [] (.CaseBase (.some (a! 6019), .BTy_object .OTy_integer))],
                             .Pattern [] <|
                             .CaseCtor
                               .Cspecified
                               [.Pattern [] (.CaseBase (.some (a! 6020), .BTy_object .OTy_integer))]],
                            .Pexpr [.Astd "\xa76.5.9#3"] () <|
                            .PEif
                              (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                              .PEop
                                .OpEq
                                (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                 .Pexpr [] () (.PEsym (a! 6019))]) <|
                              .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                              .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                              [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                               .Pexpr [] () (.PEsym (a! 6020))])
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
                            .LVunspecified
                              (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))],
                          .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
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
                           [.Pexpr [] () (.PEsym (a! 6012)), .Pexpr [] () (.PEsym (a! 6013))]) <|
                       [(.Pattern [] <| .CaseCtor .Ctuple <|
                         [.Pattern [] <|
                          .CaseCtor
                            .Cspecified
                            [.Pattern [] (.CaseBase (.some (a! 6014), .BTy_object .OTy_integer))],
                          .Pattern [] <|
                          .CaseCtor
                            .Cspecified
                            [.Pattern [] (.CaseBase (.some (a! 6015), .BTy_object .OTy_integer))]],
                         .Pexpr [.Astd "\xa76.5.9#3"] () <|
                         .PEif
                           (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                           .PEop
                             .OpEq
                             (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                             .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                             [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                              .Pexpr [] () (.PEsym (a! 6014))]) <|
                           .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                           .PEcall
                             (.Sym (rt! "conv_int" 15837442492999787586))
                             [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                              .Pexpr [] () (.PEsym (a! 6015))])
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
                         .LVunspecified
                           (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))]) <|
                     .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6032))) <|
                     [(.Pattern [] <|
                       .CaseCtor
                         .Cspecified
                         [.Pattern [] (.CaseBase (.some (a! 6033), .BTy_object .OTy_integer))],
                       .Expr [] <|
                       .Eif
                         (.Pexpr [] () <|
                         .PEop
                           .OpEq
                           (.Pexpr [] () (.PEsym (a! 6033)))
                           (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
                         (.Expr [] <|
                         .Esseq
                           (.Pattern [] (.CaseBase (.some (a! 6049), .BTy_loaded .OTy_integer)))
                           (.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                           .Ewseq
                             (.Pattern [] <| .CaseCtor .Ctuple <|
                             [.Pattern [] (.CaseBase (.some (a! 6034), .BTy_loaded .OTy_integer)),
                              .Pattern [] (.CaseBase (.some (a! 6035), .BTy_loaded .OTy_integer))])
                             (.Expr [] <| .Eunseq <|
                             [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                              .Ewseq
                                (.Pattern [] <| .CaseCtor .Ctuple <|
                                [.Pattern [] (.CaseBase (.some (a! 6039), .BTy_loaded .OTy_integer)),
                                 .Pattern [] (.CaseBase (.some (a! 6040), .BTy_loaded .OTy_integer))])
                                (.Expr [] <| .Eunseq <|
                                [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger .Char0)] <|
                                 .Ewseq
                                   (.Pattern [] (.CaseBase (.some (a! 6048), .BTy_object .OTy_pointer)))
                                   (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.3.2"] <|
                                   .Ewseq
                                     (.Pattern [] (.CaseBase (.some (a! 6044), .BTy_loaded .OTy_pointer)))
                                     (.Expr [.Aloc .unknown, .Aexpr] <|
                                     .Ewseq
                                       (.Pattern [] (.CaseBase (.some (a! 6047), .BTy_object .OTy_pointer)))
                                       (.Expr
                                         [.Aloc .unknown, .Aexpr]
                                         (.Epure (.Pexpr [] () (.PEsym (addr! "fmt" 5832))))) <|
                                     .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                                     .Load0
                                       (.Pexpr [] () <| .PEval <| .Vctype <|
                                       .Ctype [.Aloc .unknown] <|
                                       .Pointer
                                         (.mk .true .false .false)
                                         (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                                       (.Pexpr [] () (.PEsym (a! 6047)))
                                       .NA) <| .Expr [] <|
                                   .Ecase (.Pexpr [] () (.PEsym (a! 6044))) <|
                                   [(.Pattern [] <|
                                     .CaseCtor
                                       .Cspecified
                                       [.Pattern [] (.CaseBase (.some (a! 6045), .BTy_object .OTy_pointer))],
                                     .Expr [] <|
                                     .Ewseq
                                       (.Pattern [] (.CaseBase (.some (a! 6046), .BTy_boolean)))
                                       (.Expr [] <| .Ememop .PtrValidForDeref <|
                                       [.Pexpr
                                          []
                                          ()
                                          (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))),
                                        .Pexpr [] () (.PEsym (a! 6045))]) <| .Expr [] <| .Epure <|
                                     .Pexpr [] () <|
                                     .PEif
                                       (.Pexpr [] () (.PEsym (a! 6046)))
                                       (.Pexpr [] () (.PEsym (a! 6045))) <|
                                     .Pexpr
                                       [.Astd "\xa76.5.3.2#4, sentence 4"]
                                       ()
                                       (.PEundef .unknown .UB043_indirection_invalid_value)),
                                    (.Pattern
                                       []
                                       (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                                     .Expr [] <| .Epure <|
                                     .Pexpr
                                       [.Astd "\xa76.5.3.2#4, sentence 4"]
                                       ()
                                       (.PEundef .unknown .UB043_indirection_invalid_value))]) <|
                                 .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                                 .Load0
                                   (.Pexpr
                                     []
                                     ()
                                     (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))))
                                   (.Pexpr [] () (.PEsym (a! 6048)))
                                   .NA,
                                 .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                                 .Epure <|
                                 .Pexpr
                                   []
                                   ()
                                   (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 92)))))]) <|
                              .Expr [] <| .Epure <| .Pexpr [] () <|
                              .PEcase
                                (.Pexpr [] () <|
                                .PEctor
                                  .Ctuple
                                  [.Pexpr [] () (.PEsym (a! 6039)), .Pexpr [] () (.PEsym (a! 6040))]) <|
                              [(.Pattern [] <| .CaseCtor .Ctuple <|
                                [.Pattern [] <|
                                 .CaseCtor
                                   .Cspecified
                                   [.Pattern [] (.CaseBase (.some (a! 6041), .BTy_object .OTy_integer))],
                                 .Pattern [] <|
                                 .CaseCtor
                                   .Cspecified
                                   [.Pattern [] (.CaseBase (.some (a! 6042), .BTy_object .OTy_integer))]],
                                .Pexpr [.Astd "\xa76.5.9#3"] () <|
                                .PEif
                                  (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                                  .PEop
                                    .OpEq
                                    (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                    .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                    [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                     .Pexpr [] () (.PEsym (a! 6041))]) <|
                                  .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                  .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                  [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                   .Pexpr [] () (.PEsym (a! 6042))])
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
                                .LVunspecified
                                  (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))],
                              .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
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
                               [.Pexpr [] () (.PEsym (a! 6034)), .Pexpr [] () (.PEsym (a! 6035))]) <|
                           [(.Pattern [] <| .CaseCtor .Ctuple <|
                             [.Pattern [] <|
                              .CaseCtor
                                .Cspecified
                                [.Pattern [] (.CaseBase (.some (a! 6036), .BTy_object .OTy_integer))],
                              .Pattern [] <|
                              .CaseCtor
                                .Cspecified
                                [.Pattern [] (.CaseBase (.some (a! 6037), .BTy_object .OTy_integer))]],
                             .Pexpr [.Astd "\xa76.5.9#3"] () <|
                             .PEif
                               (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <| .PEnot <|
                               .Pexpr [] () <|
                               .PEop
                                 .OpEq
                                 (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                                 .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                                 [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                  .Pexpr [] () (.PEsym (a! 6036))]) <|
                               .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                               .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
                               [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                                .Pexpr [] () (.PEsym (a! 6037))])
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
                             .LVunspecified
                               (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))]) <|
                         .Expr [] <| .Epure <| .Pexpr [] () <|
                         .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                         [.Pexpr [] () <|
                          .PEval
                            (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_))))),
                          .Pexpr [] () (.PEsym (a! 6049))]) <| .Expr [] <|
                       .Esseq
                         (.Pattern [] (.CaseBase (.some (a! 6050), .BTy_loaded .OTy_integer)))
                         (.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                         .Epure <|
                         .Pexpr
                           []
                           ()
                           (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1)))))) <|
                       .Expr [] <| .Epure <| .Pexpr [] () <|
                       .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                       [.Pexpr [] () <|
                        .PEval
                          (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_))))),
                        .Pexpr [] () (.PEsym (a! 6050))]),
                      (.Pattern
                         []
                         (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                       .Expr [] <| .Epure <|
                       .Pexpr
                         []
                         ()
                         (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_conditional)))],
                     .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                     .Epure <|
                     .Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                  .Expr [] <| .Epure <| .Pexpr [] () <|
                  .PEcase
                    (.Pexpr [] () <|
                    .PEctor
                      .Ctuple
                      [.Pexpr [] () (.PEsym (a! 6007)), .Pexpr [] () (.PEsym (a! 6008))]) <|
                  [(.Pattern [] <| .CaseCtor .Ctuple <|
                    [.Pattern [] <|
                     .CaseCtor
                       .Cspecified
                       [.Pattern [] (.CaseBase (.some (a! 6009), .BTy_object .OTy_integer))],
                     .Pattern [] <|
                     .CaseCtor
                       .Cspecified
                       [.Pattern [] (.CaseBase (.some (a! 6010), .BTy_object .OTy_integer))]],
                    .Pexpr [.Astd "\xa76.5.9#3"] () <|
                    .PEif
                      (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                      .PEop
                        .OpEq
                        (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                        .PEcall
                          (.Sym (rt! "conv_int" 15837442492999787586))
                          [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6009))]) <|
                      .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                      .PEcall
                        (.Sym (rt! "conv_int" 15837442492999787586))
                        [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 6010))])
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
                    .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))]) <|
                .Expr [] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.some (a! 6004), .BTy_boolean)))
                  (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6005))) <|
                  [(.Pattern [] <|
                    .CaseCtor
                      .Cspecified
                      [.Pattern [] (.CaseBase (.some (a! 6006), .BTy_object .OTy_integer))],
                    .Expr [] <| .Epure <| .Pexpr [] () <|
                    .PEif
                      (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                      .PEop
                        .OpEq
                        (.Pexpr [] () (.PEsym (a! 6006)))
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
                  (.Pexpr [] () (.PEsym (a! 6004)))
                  (.Expr [.Aloc .unknown, .Astmt] <|
                  .Esseq
                    (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
                    (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                    .Expr
                      [.Aloc .unknown,
                       .Aexpr,
                       .Avalue (.Ainteger (.Signed .Int_)),
                       .Astd "\xa76.5.2.2#10, sentence 1"] <|
                    .Esseq
                      (.Pattern [] <| .CaseCtor .Ctuple <|
                      [.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern [] (.CaseBase (.some (a! 6052), .BTy_loaded .OTy_pointer)),
                        .Pattern [] <| .CaseCtor .Ctuple <|
                        [.Pattern [] (.CaseBase (.some (a! 6053), .BTy_ctype)),
                         .Pattern [] (.CaseBase (.some (a! 6054), .BTy_list .BTy_ctype)),
                         .Pattern [] (.CaseBase (.some (a! 6055), .BTy_boolean)),
                         .Pattern [] (.CaseBase (.some (a! 6056), .BTy_boolean))]],
                       .Pattern [] (.CaseBase (.some (a! 6059), .BTy_loaded .OTy_pointer)),
                       .Pattern [] (.CaseBase (.some (a! 6063), .BTy_loaded .OTy_integer))])
                      (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
                      [.Expr [] <|
                       .Esseq
                         (.Pattern [] (.CaseBase (.some (a! 6051), .BTy_loaded .OTy_pointer)))
                         (.Expr [.Aloc .unknown, .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <|
                         .Vloaded <| .LVspecified <|
                         .OVpointer
                           (.PV .Prov_none (.PVfunction (rt! "printf_proxy" 17096408249463498481)))) <|
                       .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
                       [.Pexpr [] () (.PEsym (a! 6051)),
                        .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 6051))))],
                       .Expr [.Aloc .unknown, .Aexpr] <|
                       .Ewseq
                         (.Pattern [] (.CaseBase (.some (a! 6061), .BTy_object .OTy_pointer)))
                         (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (a! 6060))))) <|
                       .Expr [.Astd "\xa76.3.2.1#3"] <|
                       .Ewseq
                         (.Pattern [] (.CaseBase (.some (a! 6062), .BTy_object .OTy_pointer)))
                         (.Expr [] <| .Ememop .PtrArrayShift <|
                         [.Pexpr [] () (.PEsym (a! 6061)),
                          .Pexpr [] () (.PEval (.Vctype Ty.char)),
                          .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
                       .Expr [] <|
                       .Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 6062))])),
                       .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger .Char0)] <|
                       .Ewseq
                         (.Pattern [] (.CaseBase (.some (a! 6068), .BTy_object .OTy_pointer)))
                         (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.3.2"] <|
                         .Ewseq
                           (.Pattern [] (.CaseBase (.some (a! 6064), .BTy_loaded .OTy_pointer)))
                           (.Expr [.Aloc .unknown, .Aexpr] <|
                           .Ewseq
                             (.Pattern [] (.CaseBase (.some (a! 6067), .BTy_object .OTy_pointer)))
                             (.Expr
                               [.Aloc .unknown, .Aexpr]
                               (.Epure (.Pexpr [] () (.PEsym (addr! "fmt" 5832))))) <| .Expr [] <|
                           .Eaction <| .Paction .Pos <| .Action .unknown () <|
                           .Load0
                             (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                             .Pointer
                               (.mk .true .false .false)
                               (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                             (.Pexpr [] () (.PEsym (a! 6067)))
                             .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6064))) <|
                         [(.Pattern [] <|
                           .CaseCtor
                             .Cspecified
                             [.Pattern [] (.CaseBase (.some (a! 6065), .BTy_object .OTy_pointer))],
                           .Expr [] <|
                           .Ewseq
                             (.Pattern [] (.CaseBase (.some (a! 6066), .BTy_boolean)))
                             (.Expr [] <| .Ememop .PtrValidForDeref <|
                             [.Pexpr
                                []
                                ()
                                (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))),
                              .Pexpr [] () (.PEsym (a! 6065))]) <| .Expr [] <| .Epure <|
                           .Pexpr [] () <|
                           .PEif
                             (.Pexpr [] () (.PEsym (a! 6066)))
                             (.Pexpr [] () (.PEsym (a! 6065))) <|
                           .Pexpr
                             [.Astd "\xa76.5.3.2#4, sentence 4"]
                             ()
                             (.PEundef .unknown .UB043_indirection_invalid_value)),
                          (.Pattern
                             []
                             (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                           .Expr [] <| .Epure <|
                           .Pexpr
                             [.Astd "\xa76.5.3.2#4, sentence 4"]
                             ()
                             (.PEundef .unknown .UB043_indirection_invalid_value))]) <| .Expr [] <|
                       .Eaction <| .Paction .Pos <| .Action .unknown () <|
                       .Load0
                         (.Pexpr
                           []
                           ()
                           (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))))
                         (.Pexpr [] () (.PEsym (a! 6068)))
                         .NA]) <| .Expr [] <|
                    .Eif
                      (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                      .PEop
                        .OpLe
                        (.Pexpr [] () <|
                        .PEcall
                          (.Sym (rt! "params_length" 18299737999929047716))
                          [.Pexpr [] () (.PEsym (a! 6054))])
                        (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))))
                      (.Expr [] <| .Epure <|
                      .Pexpr
                        [.Astd "\xa76.5.2.2#6, sentence 3"]
                        ()
                        (.PEundef .unknown .UB038_number_of_args)) <| .Expr [] <|
                    .Eif
                      (.Pexpr [] () <|
                      .PEop .OpOr (.Pexpr [] () (.PEnot (.Pexpr [] () (.PEsym (a! 6055))))) <|
                      .Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                      .PEare_compatible
                        (.Pexpr [] () <| .PEval <| .Vctype <|
                        .Ctype
                          [.Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown]
                          (.Basic (.Integer (.Signed .Int_))))
                        (.Pexpr [] () (.PEsym (a! 6053))))
                      (.Expr [] <| .Epure <|
                      .Pexpr
                        [.Astd "\xa76.5.2.2#9"]
                        ()
                        (.PEundef .unknown .UB041_function_not_compatible)) <| .Expr [] <|
                    .Esseq
                      (.Pattern [] <| .CaseBase <|
                      (.some (sym.Symbol Src.digest 6057 (.SD_FunArg .unknown 0)),
                       .BTy_object .OTy_pointer))
                      (.Expr [] <|
                      .Elet
                        (.Pattern [] (.CaseBase (.some (a! 6069), .BTy_ctype)))
                        (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                        [.Pexpr [] () (.PEsym (a! 6054)),
                         .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
                      .Expr [] <|
                      .Eif
                        (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                        .PEare_compatible
                          (.Pexpr [] () <| .PEval <| .Vctype <|
                          .Ctype
                            [.Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                          .Ctype
                            [.Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown]
                            (.Basic (.Integer .Char0)))
                          (.Pexpr [] () (.PEsym (a! 6069))))
                        (.Expr [] <| .Epure <|
                        .Pexpr
                          [.Astd "\xa76.5.2.2#9"]
                          ()
                          (.PEundef .unknown .UB041_function_not_compatible)) <|
                      .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
                      .Ewseq
                        (.Pattern [] (.CaseBase (.some (a! 6070), .BTy_object .OTy_pointer)))
                        (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                        .Create
                          (.Pexpr [] () <| .PEctor .Civalignof <|
                          [.Pexpr [] () <| .PEval <| .Vctype <|
                           .Ctype
                             [.Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                           .Ctype
                             [.Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown]
                             (.Basic (.Integer .Char0))])
                          (.Pexpr [] () <| .PEval <| .Vctype <|
                          .Ctype
                            [.Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                          .Ctype
                            [.Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown]
                            (.Basic (.Integer .Char0)))
                          (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <|
                      .Expr [] <|
                      .Ewseq
                        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                        (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                        .Store0
                          .false
                          (.Pexpr [] () <| .PEval <| .Vctype <|
                          .Ctype
                            [.Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                          .Ctype
                            [.Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown,
                             .Aloc .unknown]
                            (.Basic (.Integer .Char0)))
                          (.Pexpr [] () (.PEsym (a! 6070)))
                          (.Pexpr [] () (.PEsym (a! 6059)))
                          .NA)
                        (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6070)))))) <| .Expr [] <|
                    .Esseq
                      (.Pattern [] <| .CaseBase <|
                      (.some (sym.Symbol Src.digest 6058 (.SD_FunArg .unknown 1)),
                       .BTy_object .OTy_pointer))
                      (.Expr [.Astd "\xa76.5.2.2#7, sentences 2 and 3"] <|
                      .Eproc () (.Sym (rt! "create_and_store" 14023013563394908458)) <|
                      [.Pexpr [] () <|
                       .PEval
                         (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_))))),
                       .Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                       [.Pexpr [] () <|
                        .PEval
                          (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_))))),
                        .Pexpr [] () (.PEsym (a! 6063))]]) <| .Expr [] <|
                    .Esseq
                      (.Pattern [] (.CaseBase (.some (a! 6071), .BTy_loaded .OTy_integer)))
                      (.Expr [] <|
                      .Eccall
                        ()
                        (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                        .Pointer (.mk .false .false .false) <| .Ctype [] <|
                        .Function
                          (.mk .false .false .false,
                           .Ctype
                             [.Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown]
                             (.Basic (.Integer (.Signed .Int_))))
                          [(.mk .false .false .false,
                            (.Ctype
                               [.Aloc .unknown,
                                .Aloc .unknown,
                                .Aloc .unknown,
                                .Aloc .unknown,
                                .Aloc .unknown,
                                .Aloc .unknown,
                                .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                             .Ctype
                               [.Aloc .unknown,
                                .Aloc .unknown,
                                .Aloc .unknown,
                                .Aloc .unknown,
                                .Aloc .unknown,
                                .Aloc .unknown,
                                .Aloc .unknown]
                               (.Basic (.Integer .Char0)),
                             .false))]
                          .true)
                        (.Pexpr [] () (.PEsym (a! 6052))) <|
                      [.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6057 (.SD_FunArg .unknown 0))),
                       .Pexpr [] () <| .PEctor .Ccons <|
                       [.Pexpr [] () <| .PEctor .Ctuple <|
                        [.Pexpr [] () <|
                         .PEval
                           (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_))))),
                         .Pexpr [] () (.PEsym (sym.Symbol Src.digest 6058 (.SD_FunArg .unknown 1)))],
                        .Pexpr
                          []
                          ()
                          (.PEctor (.Cnil (.BTy_tuple [.BTy_ctype, .BTy_object .OTy_pointer])) [])]]) <|
                    .Expr [] <|
                    .Esseq
                      (.Pattern [] (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit])))
                      (.Expr [] <| .Eunseq <|
                      [.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                       .Kill
                         (.Static0 <|
                         .Ctype
                           [.Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                         .Ctype
                           [.Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown]
                           (.Basic (.Integer .Char0)))
                         (.Pexpr
                           []
                           ()
                           (.PEsym (sym.Symbol Src.digest 6057 (.SD_FunArg .unknown 0)))),
                       .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                       .Kill
                         (.Static0 (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))
                         (.Pexpr
                           []
                           ()
                           (.PEsym (sym.Symbol Src.digest 6058 (.SD_FunArg .unknown 1))))])
                      (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6071))))))
                    (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
                .Expr [.Aloc .unknown, .Astmt] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
                  (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                  .Expr
                    [.Aloc .unknown,
                     .Aexpr,
                     .Avalue (.Ainteger (.Signed .Int_)),
                     .Astd "\xa76.5.2.2#10, sentence 1"] <|
                  .Esseq
                    (.Pattern [] <| .CaseCtor .Ctuple <|
                    [.Pattern [] <| .CaseCtor .Ctuple <|
                     [.Pattern [] (.CaseBase (.some (a! 6073), .BTy_loaded .OTy_pointer)),
                      .Pattern [] <| .CaseCtor .Ctuple <|
                      [.Pattern [] (.CaseBase (.some (a! 6074), .BTy_ctype)),
                       .Pattern [] (.CaseBase (.some (a! 6075), .BTy_list .BTy_ctype)),
                       .Pattern [] (.CaseBase (.some (a! 6076), .BTy_boolean)),
                       .Pattern [] (.CaseBase (.some (a! 6077), .BTy_boolean))]],
                     .Pattern [] (.CaseBase (.some (a! 6080), .BTy_loaded .OTy_pointer)),
                     .Pattern [] (.CaseBase (.some (a! 6084), .BTy_loaded .OTy_integer))])
                    (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
                    [.Expr [] <|
                     .Esseq
                       (.Pattern [] (.CaseBase (.some (a! 6072), .BTy_loaded .OTy_pointer)))
                       (.Expr [.Aloc .unknown, .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <|
                       .Vloaded <| .LVspecified <|
                       .OVpointer
                         (.PV .Prov_none (.PVfunction (rt! "printf_proxy" 17096408249463498481)))) <|
                     .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
                     [.Pexpr [] () (.PEsym (a! 6072)),
                      .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 6072))))],
                     .Expr [.Aloc .unknown, .Aexpr] <|
                     .Ewseq
                       (.Pattern [] (.CaseBase (.some (a! 6082), .BTy_object .OTy_pointer)))
                       (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (a! 6081))))) <|
                     .Expr [.Astd "\xa76.3.2.1#3"] <|
                     .Ewseq
                       (.Pattern [] (.CaseBase (.some (a! 6083), .BTy_object .OTy_pointer)))
                       (.Expr [] <| .Ememop .PtrArrayShift <|
                       [.Pexpr [] () (.PEsym (a! 6082)),
                        .Pexpr [] () (.PEval (.Vctype Ty.char)),
                        .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
                     .Expr
                       []
                       (.Epure
                         (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 6083))]))),
                     .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger .Char0)] <|
                     .Ewseq
                       (.Pattern [] (.CaseBase (.some (a! 6089), .BTy_object .OTy_pointer)))
                       (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.3.2"] <|
                       .Ewseq
                         (.Pattern [] (.CaseBase (.some (a! 6085), .BTy_loaded .OTy_pointer)))
                         (.Expr [.Aloc .unknown, .Aexpr] <|
                         .Ewseq
                           (.Pattern [] (.CaseBase (.some (a! 6088), .BTy_object .OTy_pointer)))
                           (.Expr
                             [.Aloc .unknown, .Aexpr]
                             (.Epure (.Pexpr [] () (.PEsym (addr! "fmt" 5832))))) <| .Expr [] <|
                         .Eaction <| .Paction .Pos <| .Action .unknown () <|
                         .Load0
                           (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                           .Pointer
                             (.mk .true .false .false)
                             (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                           (.Pexpr [] () (.PEsym (a! 6088)))
                           .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 6085))) <|
                       [(.Pattern [] <|
                         .CaseCtor
                           .Cspecified
                           [.Pattern [] (.CaseBase (.some (a! 6086), .BTy_object .OTy_pointer))],
                         .Expr [] <|
                         .Ewseq
                           (.Pattern [] (.CaseBase (.some (a! 6087), .BTy_boolean)))
                           (.Expr [] <| .Ememop .PtrValidForDeref <|
                           [.Pexpr
                              []
                              ()
                              (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))),
                            .Pexpr [] () (.PEsym (a! 6086))]) <| .Expr [] <| .Epure <|
                         .Pexpr [] () <|
                         .PEif
                           (.Pexpr [] () (.PEsym (a! 6087)))
                           (.Pexpr [] () (.PEsym (a! 6086))) <|
                         .Pexpr
                           [.Astd "\xa76.5.3.2#4, sentence 4"]
                           ()
                           (.PEundef .unknown .UB043_indirection_invalid_value)),
                        (.Pattern
                           []
                           (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                         .Expr [] <| .Epure <|
                         .Pexpr
                           [.Astd "\xa76.5.3.2#4, sentence 4"]
                           ()
                           (.PEundef .unknown .UB043_indirection_invalid_value))]) <| .Expr [] <|
                     .Eaction <| .Paction .Pos <| .Action .unknown () <|
                     .Load0
                       (.Pexpr
                         []
                         ()
                         (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))))
                       (.Pexpr [] () (.PEsym (a! 6089)))
                       .NA]) <| .Expr [] <|
                  .Eif
                    (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                    .PEop
                      .OpLe
                      (.Pexpr [] () <|
                      .PEcall
                        (.Sym (rt! "params_length" 18299737999929047716))
                        [.Pexpr [] () (.PEsym (a! 6075))])
                      (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))))
                    (.Expr [] <| .Epure <|
                    .Pexpr
                      [.Astd "\xa76.5.2.2#6, sentence 3"]
                      ()
                      (.PEundef .unknown .UB038_number_of_args)) <| .Expr [] <|
                  .Eif
                    (.Pexpr [] () <|
                    .PEop .OpOr (.Pexpr [] () (.PEnot (.Pexpr [] () (.PEsym (a! 6076))))) <|
                    .Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                    .PEare_compatible
                      (.Pexpr [] () <| .PEval <| .Vctype <|
                      .Ctype
                        [.Aloc .unknown,
                         .Aloc .unknown,
                         .Aloc .unknown,
                         .Aloc .unknown,
                         .Aloc .unknown,
                         .Aloc .unknown,
                         .Aloc .unknown]
                        (.Basic (.Integer (.Signed .Int_))))
                      (.Pexpr [] () (.PEsym (a! 6074))))
                    (.Expr [] <| .Epure <|
                    .Pexpr
                      [.Astd "\xa76.5.2.2#9"]
                      ()
                      (.PEundef .unknown .UB041_function_not_compatible)) <| .Expr [] <|
                  .Esseq
                    (.Pattern [] <| .CaseBase <|
                    (.some (sym.Symbol Src.digest 6078 (.SD_FunArg .unknown 0)),
                     .BTy_object .OTy_pointer))
                    (.Expr [] <|
                    .Elet
                      (.Pattern [] (.CaseBase (.some (a! 6090), .BTy_ctype)))
                      (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
                      [.Pexpr [] () (.PEsym (a! 6075)),
                       .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
                    .Expr [] <|
                    .Eif
                      (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                      .PEare_compatible
                        (.Pexpr [] () <| .PEval <| .Vctype <|
                        .Ctype
                          [.Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                        .Ctype
                          [.Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown]
                          (.Basic (.Integer .Char0)))
                        (.Pexpr [] () (.PEsym (a! 6090))))
                      (.Expr [] <| .Epure <|
                      .Pexpr
                        [.Astd "\xa76.5.2.2#9"]
                        ()
                        (.PEundef .unknown .UB041_function_not_compatible)) <|
                    .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
                    .Ewseq
                      (.Pattern [] (.CaseBase (.some (a! 6091), .BTy_object .OTy_pointer)))
                      (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                      .Create
                        (.Pexpr [] () <| .PEctor .Civalignof <|
                        [.Pexpr [] () <| .PEval <| .Vctype <|
                         .Ctype
                           [.Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                         .Ctype
                           [.Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown]
                           (.Basic (.Integer .Char0))])
                        (.Pexpr [] () <| .PEval <| .Vctype <|
                        .Ctype
                          [.Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                        .Ctype
                          [.Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown]
                          (.Basic (.Integer .Char0)))
                        (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <| .Expr [] <|
                    .Ewseq
                      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                      (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                      .Store0
                        .false
                        (.Pexpr [] () <| .PEval <| .Vctype <|
                        .Ctype
                          [.Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                        .Ctype
                          [.Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown,
                           .Aloc .unknown]
                          (.Basic (.Integer .Char0)))
                        (.Pexpr [] () (.PEsym (a! 6091)))
                        (.Pexpr [] () (.PEsym (a! 6080)))
                        .NA)
                      (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6091)))))) <| .Expr [] <|
                  .Esseq
                    (.Pattern [] <| .CaseBase <|
                    (.some (sym.Symbol Src.digest 6079 (.SD_FunArg .unknown 1)),
                     .BTy_object .OTy_pointer))
                    (.Expr [.Astd "\xa76.5.2.2#7, sentences 2 and 3"] <|
                    .Eproc () (.Sym (rt! "create_and_store" 14023013563394908458)) <|
                    [.Pexpr [] () <|
                     .PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_))))),
                     .Pexpr [] () <| .PEcall (.Sym (rt! "conv_loaded_int" 7499171796590179012)) <|
                     [.Pexpr [] () <|
                      .PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_))))),
                      .Pexpr [] () (.PEsym (a! 6084))]]) <| .Expr [] <|
                  .Esseq
                    (.Pattern [] (.CaseBase (.some (a! 6092), .BTy_loaded .OTy_integer)))
                    (.Expr [] <|
                    .Eccall
                      ()
                      (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                      .Pointer (.mk .false .false .false) <| .Ctype [] <|
                      .Function
                        (.mk .false .false .false,
                         .Ctype
                           [.Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown,
                            .Aloc .unknown]
                           (.Basic (.Integer (.Signed .Int_))))
                        [(.mk .false .false .false,
                          (.Ctype
                             [.Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                           .Ctype
                             [.Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown,
                              .Aloc .unknown]
                             (.Basic (.Integer .Char0)),
                           .false))]
                        .true)
                      (.Pexpr [] () (.PEsym (a! 6073))) <|
                    [.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6078 (.SD_FunArg .unknown 0))),
                     .Pexpr [] () <| .PEctor .Ccons <|
                     [.Pexpr [] () <| .PEctor .Ctuple <|
                      [.Pexpr [] () <|
                       .PEval
                         (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_))))),
                       .Pexpr [] () (.PEsym (sym.Symbol Src.digest 6079 (.SD_FunArg .unknown 1)))],
                      .Pexpr
                        []
                        ()
                        (.PEctor (.Cnil (.BTy_tuple [.BTy_ctype, .BTy_object .OTy_pointer])) [])]]) <|
                  .Expr [] <|
                  .Esseq
                    (.Pattern [] (.CaseBase (.none, .BTy_tuple [.BTy_unit, .BTy_unit])))
                    (.Expr [] <| .Eunseq <|
                    [.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                     .Kill
                       (.Static0 <|
                       .Ctype
                         [.Aloc .unknown,
                          .Aloc .unknown,
                          .Aloc .unknown,
                          .Aloc .unknown,
                          .Aloc .unknown,
                          .Aloc .unknown,
                          .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                       .Ctype
                         [.Aloc .unknown,
                          .Aloc .unknown,
                          .Aloc .unknown,
                          .Aloc .unknown,
                          .Aloc .unknown,
                          .Aloc .unknown,
                          .Aloc .unknown]
                         (.Basic (.Integer .Char0)))
                       (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6078 (.SD_FunArg .unknown 0)))),
                     .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
                     .Kill
                       (.Static0 (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))
                       (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6079 (.SD_FunArg .unknown 1))))])
                    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6092))))))
                  (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
              .Esseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [.Aloc .unknown, .Astmt, .Alabel (.LAloop_continue 5836)] <|
                .Esave (c! "__cerb_continue189" 5835, .BTy_unit) [] <|
                .Expr [.Aloc .unknown, .Astmt] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
                  (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                  .Expr [.Aloc .unknown, .Aexpr, .Aexpr, .Astd "\xa76.5.16#3, sentence 4"] <|
                  .Ewseq
                    (.Pattern [] <| .CaseCtor .Ctuple <|
                    [.Pattern [] (.CaseBase (.some (a! 6093), .BTy_object .OTy_pointer)),
                     .Pattern [] (.CaseBase (.some (a! 6100), .BTy_loaded .OTy_pointer))])
                    (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
                    [.Expr
                       [.Aloc .unknown, .Aexpr]
                       (.Epure (.Pexpr [] () (.PEsym (addr! "fmt" 5832)))),
                     .Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.6"] <|
                     .Ewseq
                       (.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern [] (.CaseBase (.some (a! 6094), .BTy_loaded .OTy_pointer)),
                        .Pattern [] (.CaseBase (.some (a! 6096), .BTy_loaded .OTy_integer))])
                       (.Expr [] <| .Eunseq <|
                       [.Expr [.Aloc .unknown, .Aexpr] <|
                        .Ewseq
                          (.Pattern [] (.CaseBase (.some (a! 6099), .BTy_object .OTy_pointer)))
                          (.Expr
                            [.Aloc .unknown, .Aexpr]
                            (.Epure (.Pexpr [] () (.PEsym (addr! "fmt" 5832))))) <| .Expr [] <|
                        .Eaction <| .Paction .Pos <| .Action .unknown () <|
                        .Load0
                          (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                          .Pointer
                            (.mk .true .false .false)
                            (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                          (.Pexpr [] () (.PEsym (a! 6099)))
                          .NA,
                        .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                        .Epure <|
                        .Pexpr
                          []
                          ()
                          (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1)))))]) <|
                     .Expr [] <|
                     .Ecase
                       (.Pexpr [] () <|
                       .PEctor
                         .Ctuple
                         [.Pexpr [] () (.PEsym (a! 6094)), .Pexpr [] () (.PEsym (a! 6096))]) <|
                     [(.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern [] <|
                        .CaseCtor
                          .Cspecified
                          [.Pattern [] (.CaseBase (.some (a! 6095), .BTy_object .OTy_pointer))],
                        .Pattern [] <|
                        .CaseCtor
                          .Cspecified
                          [.Pattern [] (.CaseBase (.some (a! 6097), .BTy_object .OTy_integer))]],
                       .Expr [] <|
                       .Ewseq
                         (.Pattern [] (.CaseBase (.some (a! 6098), .BTy_object .OTy_pointer)))
                         (.Expr [] <| .Ememop .PtrArrayShift <|
                         [.Pexpr [] () (.PEsym (a! 6095)),
                          .Pexpr
                            []
                            ()
                            (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))),
                          .Pexpr [] () (.PEsym (a! 6097))]) <| .Expr [] <|
                       .Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 6098))]))),
                      (.Pattern [] <|
                       .CaseBase
                         (.none, .BTy_tuple [.BTy_loaded .OTy_pointer, .BTy_loaded .OTy_integer]),
                       .Expr [] <| .Epure <|
                       .Pexpr
                         []
                         ()
                         (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_pointer_add)))]]) <|
                  .Expr [] <|
                  .Ewseq
                    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                    (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
                    .Action .unknown () <|
                    .Store0
                      .false
                      (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                      .Pointer
                        (.mk .true .false .false)
                        (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                      (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 6093)))
                      (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 6100)))
                      .NA) <|
                  .Expr
                    []
                    (.Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 6100)))))
                  (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
                (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [.Aloc .unknown, .Astmt, .Alabel (.LAloop_continue 5836)] <|
              .Esave
                (c! "continue_5942" 5942, .BTy_unit)
                []
                (.Expr [.Aloc .unknown, .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
              (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
            (.Expr [] (.Erun () (c! "while_5958" 5958) [])))
          (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Aloc .unknown, .Astmt, .Alabel (.LAloop_break 5836)] <|
        .Esave
          (c! "break_5943" 5943, .BTy_unit)
          []
          (.Expr [.Aloc .unknown, .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_integer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
        .Expr
          [.Aloc .unknown,
           .Aexpr,
           .Avalue (.Ainteger (.Signed .Int_)),
           .Astd "\xa76.5.2.2#10, sentence 1"] <|
        .Esseq
          (.Pattern [] <| .CaseCtor .Ctuple <|
          [.Pattern [] <| .CaseCtor .Ctuple <|
           [.Pattern [] (.CaseBase (.some (a! 6102), .BTy_loaded .OTy_pointer)),
            .Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 6103), .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 6104), .BTy_list .BTy_ctype)),
             .Pattern [] (.CaseBase (.some (a! 6105), .BTy_boolean)),
             .Pattern [] (.CaseBase (.some (a! 6106), .BTy_boolean))]],
           .Pattern [] (.CaseBase (.some (a! 6108), .BTy_loaded .OTy_pointer))])
          (.Expr [.Astd "\xa76.5.2.2#4, sentence 2"] <| .Eunseq <|
          [.Expr [] <|
           .Esseq
             (.Pattern [] (.CaseBase (.some (a! 6101), .BTy_loaded .OTy_pointer)))
             (.Expr [.Aloc .unknown, .Aexpr] <| .Epure <| .Pexpr [] () <| .PEval <| .Vloaded <|
             .LVspecified
               (.OVpointer (.PV .Prov_none (.PVfunction (rt! "printf_proxy" 17096408249463498481))))) <|
           .Expr [] <| .Epure <| .Pexpr [] () <| .PEctor .Ctuple <|
           [.Pexpr [] () (.PEsym (a! 6101)),
            .Pexpr [] () (.PEcfunction (.Pexpr [] () (.PEsym (a! 6101))))],
           .Expr [.Aloc .unknown, .Aexpr] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 6110), .BTy_object .OTy_pointer)))
             (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (a! 6109))))) <|
           .Expr [.Astd "\xa76.3.2.1#3"] <|
           .Ewseq
             (.Pattern [] (.CaseBase (.some (a! 6111), .BTy_object .OTy_pointer)))
             (.Expr [] <| .Ememop .PtrArrayShift <|
             [.Pexpr [] () (.PEsym (a! 6110)),
              .Pexpr [] () (.PEval (.Vctype Ty.char)),
              .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
           .Expr [] (.Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 6111))])))]) <|
        .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
          .PEop
            .OpLe
            (.Pexpr [] () <|
            .PEcall
              (.Sym (rt! "params_length" 18299737999929047716))
              [.Pexpr [] () (.PEsym (a! 6104))])
            (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
          (.Expr [] <|
          .Epure
            (.Pexpr
              [.Astd "\xa76.5.2.2#6, sentence 3"]
              ()
              (.PEundef .unknown .UB038_number_of_args))) <| .Expr [] <|
        .Eif
          (.Pexpr [] () <| .PEop .OpOr (.Pexpr [] () (.PEnot (.Pexpr [] () (.PEsym (a! 6105))))) <|
          .Pexpr [] () <| .PEnot <| .Pexpr [] () <|
          .PEare_compatible
            (.Pexpr [] () <| .PEval <| .Vctype <|
            .Ctype
              [.Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown]
              (.Basic (.Integer (.Signed .Int_))))
            (.Pexpr [] () (.PEsym (a! 6103))))
          (.Expr [] <|
          .Epure
            (.Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible))) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] <|
          .CaseBase
            (.some (sym.Symbol Src.digest 6107 (.SD_FunArg .unknown 0)), .BTy_object .OTy_pointer))
          (.Expr [] <|
          .Elet
            (.Pattern [] (.CaseBase (.some (a! 6112), .BTy_ctype)))
            (.Pexpr [] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
            [.Pexpr [] () (.PEsym (a! 6104)),
             .Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <| .Expr [] <|
          .Eif
            (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
            .PEare_compatible
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
              .Ctype
                [.Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown]
                (.Basic (.Integer .Char0)))
              (.Pexpr [] () (.PEsym (a! 6112))))
            (.Expr [] <|
            .Epure
              (.Pexpr [.Astd "\xa76.5.2.2#9"] () (.PEundef .unknown .UB041_function_not_compatible))) <|
          .Expr [.Astd "\xa76.5.2.2#7, sentence 1"] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.some (a! 6113), .BTy_object .OTy_pointer)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
            .Create
              (.Pexpr [] () <| .PEctor .Civalignof <|
              [.Pexpr [] () <| .PEval <| .Vctype <|
               .Ctype
                 [.Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
               .Ctype
                 [.Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown]
                 (.Basic (.Integer .Char0))])
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
              .Ctype
                [.Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown]
                (.Basic (.Integer .Char0)))
              (.PrefFunArg .unknown "fa5a43434dcb33dc130b30cb8faeddf7" 0)) <| .Expr [] <|
          .Ewseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
            .Store0
              .false
              (.Pexpr [] () <| .PEval <| .Vctype <|
              .Ctype
                [.Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
              .Ctype
                [.Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown,
                 .Aloc .unknown]
                (.Basic (.Integer .Char0)))
              (.Pexpr [] () (.PEsym (a! 6113)))
              (.Pexpr [] () (.PEsym (a! 6108)))
              .NA)
            (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6113)))))) <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 6114), .BTy_loaded .OTy_integer)))
          (.Expr [.Astd "\xa76.5.16.1#1, bullet 3"] <|
          .Eccall
            ()
            (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
            .Pointer (.mk .false .false .false) <| .Ctype [] <|
            .Function
              (.mk .false .false .false,
               .Ctype
                 [.Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown,
                  .Aloc .unknown]
                 (.Basic (.Integer (.Signed .Int_))))
              [(.mk .false .false .false,
                (.Ctype
                   [.Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
                 .Ctype
                   [.Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown,
                    .Aloc .unknown]
                   (.Basic (.Integer .Char0)),
                 .false))]
              .true)
            (.Pexpr [] () (.PEsym (a! 6102))) <|
          [.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6107 (.SD_FunArg .unknown 0))),
           .Pexpr [] () (.PEctor (.Cnil (.BTy_tuple [.BTy_ctype, .BTy_object .OTy_pointer])) [])]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.none, .BTy_unit)))
          (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
          .Kill
            (.Static0 <|
            .Ctype
              [.Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown] <| .Pointer (.mk .true .false .false) <|
            .Ctype
              [.Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown,
               .Aloc .unknown]
              (.Basic (.Integer .Char0)))
            (.Pexpr [] () (.PEsym (sym.Symbol Src.digest 6107 (.SD_FunArg .unknown 0)))))
          (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6114))))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc .unknown] <|
  .Esave
    (c! "ret_5941" 5941, .BTy_unit)
    [(a! 6115,
      ((.BTy_unit, .some (.Ctype [.Aloc .unknown] .Void0, .By_value)), .Pexpr [] () (.PEval .Vunit)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 6115)))))

/-- `const char *base_name(const char *file)` -/
def base_name : Procedure :=
  .Proc
    .unknown
    (.some 5843)
    (.BTy_loaded .OTy_pointer)
    [(addr! "file" 5841, .BTy_object .OTy_pointer)] <| .Expr [] <|
  .Esseq
    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc .unknown, .Astmt] <|
    .Esseq
      (.Pattern [] (.CaseBase (.some (addr! "base" 5844), .BTy_object .OTy_pointer)))
      (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
      .Create
        (.Pexpr [] () <| .PEctor .Civalignof <|
        [.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
         .Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0)))])
        (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
        .Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
        (.PrefSource .unknown [c! "base_name" 5842, addr! "base" 5844])) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 5887), .BTy_loaded .OTy_pointer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <| .Expr [.Aloc .unknown, .Aexpr] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.some (a! 5888), .BTy_object .OTy_pointer)))
          (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (addr! "file" 5841))))) <|
        .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
        .Load0
          (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
          .Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
          (.Pexpr [] () (.PEsym (a! 5888)))
          .NA) <| .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
      .Store0
        .false
        (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
        .Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
        (.Pexpr [] () (.PEsym (addr! "base" 5844)))
        (.Pexpr [] () (.PEsym (a! 5887)))
        .NA) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Aloc .unknown, .Astmt, .Alabel (.LAloop 5846)] <|
        .Esave
          (c! "while_5889" 5889, .BTy_unit)
          [(addr! "base" 5844,
            ((.BTy_object .OTy_pointer,
              .some <|
              (.Ctype [.Aloc .unknown] <|
               .Pointer
                 (.mk .true .false .false)
                 (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))),
               .By_pointer)),
             .Pexpr [] () (.PEsym (addr! "base" 5844))))] <| .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 5891), .BTy_loaded .OTy_integer)))
          (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
          .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
          .Ewseq
            (.Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] (.CaseBase (.some (a! 5893), .BTy_loaded .OTy_integer)),
             .Pattern [] (.CaseBase (.some (a! 5894), .BTy_loaded .OTy_integer))])
            (.Expr [] <| .Eunseq <|
            [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger .Char0)] <|
             .Ewseq
               (.Pattern [] (.CaseBase (.some (a! 5902), .BTy_object .OTy_pointer)))
               (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.3.2"] <|
               .Ewseq
                 (.Pattern [] (.CaseBase (.some (a! 5898), .BTy_loaded .OTy_pointer)))
                 (.Expr [.Aloc .unknown, .Aexpr] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 5901), .BTy_object .OTy_pointer)))
                   (.Expr
                     [.Aloc .unknown, .Aexpr]
                     (.Epure (.Pexpr [] () (.PEsym (addr! "file" 5841))))) <| .Expr [] <|
                 .Eaction <| .Paction .Pos <| .Action .unknown () <|
                 .Load0
                   (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                   .Pointer
                     (.mk .true .false .false)
                     (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                   (.Pexpr [] () (.PEsym (a! 5901)))
                   .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 5898))) <|
               [(.Pattern [] <|
                 .CaseCtor
                   .Cspecified
                   [.Pattern [] (.CaseBase (.some (a! 5899), .BTy_object .OTy_pointer))],
                 .Expr [] <|
                 .Ewseq
                   (.Pattern [] (.CaseBase (.some (a! 5900), .BTy_boolean)))
                   (.Expr [] <| .Ememop .PtrValidForDeref <|
                   [.Pexpr
                      []
                      ()
                      (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))),
                    .Pexpr [] () (.PEsym (a! 5899))]) <| .Expr [] <| .Epure <| .Pexpr [] () <|
                 .PEif (.Pexpr [] () (.PEsym (a! 5900))) (.Pexpr [] () (.PEsym (a! 5899))) <|
                 .Pexpr
                   [.Astd "\xa76.5.3.2#4, sentence 4"]
                   ()
                   (.PEundef .unknown .UB043_indirection_invalid_value)),
                (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                 .Expr [] <| .Epure <|
                 .Pexpr
                   [.Astd "\xa76.5.3.2#4, sentence 4"]
                   ()
                   (.PEundef .unknown .UB043_indirection_invalid_value))]) <| .Expr [] <|
             .Eaction <| .Paction .Pos <| .Action .unknown () <|
             .Load0
               (.Pexpr
                 []
                 ()
                 (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))))
               (.Pexpr [] () (.PEsym (a! 5902)))
               .NA,
             .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger .Char0)] <|
             .Epure
               (.Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0))))))]) <|
          .Expr [] <| .Epure <| .Pexpr [] () <|
          .PEcase
            (.Pexpr
              []
              ()
              (.PEctor .Ctuple [.Pexpr [] () (.PEsym (a! 5893)), .Pexpr [] () (.PEsym (a! 5894))])) <|
          [(.Pattern [] <| .CaseCtor .Ctuple <|
            [.Pattern [] <|
             .CaseCtor
               .Cspecified
               [.Pattern [] (.CaseBase (.some (a! 5895), .BTy_object .OTy_integer))],
             .Pattern [] <|
             .CaseCtor
               .Cspecified
               [.Pattern [] (.CaseBase (.some (a! 5896), .BTy_object .OTy_integer))]],
            .Pexpr [.Astd "\xa76.5.9#3"] () <|
            .PEif
              (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
              .PEop
                .OpEq
                (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                .PEcall
                  (.Sym (rt! "conv_int" 15837442492999787586))
                  [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 5895))]) <|
              .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
              .PEcall
                (.Sym (rt! "conv_int" 15837442492999787586))
                [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 5896))])
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
            .Pexpr [] () <| .PEval <| .Vloaded <|
            .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))]) <|
        .Expr [] <|
        .Esseq
          (.Pattern [] (.CaseBase (.some (a! 5890), .BTy_boolean)))
          (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 5891))) <|
          [(.Pattern [] <|
            .CaseCtor
              .Cspecified
              [.Pattern [] (.CaseBase (.some (a! 5892), .BTy_object .OTy_integer))],
            .Expr [] <| .Epure <| .Pexpr [] () <|
            .PEif
              (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
              .PEop
                .OpEq
                (.Pexpr [] () (.PEsym (a! 5892)))
                (.Pexpr [] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
              (.Pexpr [] () (.PEval .Vtrue))
              (.Pexpr [] () (.PEval .Vfalse))),
           (.Pattern [] (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
            .Expr [] <| .End <|
            [.Expr [] (.Epure (.Pexpr [] () (.PEval .Vtrue))),
             .Expr [] (.Epure (.Pexpr [] () (.PEval .Vfalse)))])]) <| .Expr [] <|
        .Eif
          (.Pexpr [] () (.PEsym (a! 5890)))
          (.Expr [] <|
          .Esseq
            (.Pattern [] (.CaseBase (.none, .BTy_unit)))
            (.Expr [.Aloc .unknown, .Astmt] <|
            .Esseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [.Aloc .unknown, .Astmt] <|
              .Esseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [.Aloc .unknown, .Astmt] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.some (a! 5904), .BTy_loaded .OTy_integer)))
                  (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                  .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                  .Ewseq
                    (.Pattern [] <| .CaseCtor .Ctuple <|
                    [.Pattern [] (.CaseBase (.some (a! 5906), .BTy_loaded .OTy_integer)),
                     .Pattern [] (.CaseBase (.some (a! 5907), .BTy_loaded .OTy_integer))])
                    (.Expr [] <| .Eunseq <|
                    [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                     .Ewseq
                       (.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern [] (.CaseBase (.some (a! 5911), .BTy_loaded .OTy_integer)),
                        .Pattern [] (.CaseBase (.some (a! 5912), .BTy_loaded .OTy_integer))])
                       (.Expr [] <| .Eunseq <|
                       [.Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger .Char0)] <|
                        .Ewseq
                          (.Pattern [] (.CaseBase (.some (a! 5920), .BTy_object .OTy_pointer)))
                          (.Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.3.2"] <|
                          .Ewseq
                            (.Pattern [] (.CaseBase (.some (a! 5916), .BTy_loaded .OTy_pointer)))
                            (.Expr [.Aloc .unknown, .Aexpr] <|
                            .Ewseq
                              (.Pattern [] (.CaseBase (.some (a! 5919), .BTy_object .OTy_pointer)))
                              (.Expr
                                [.Aloc .unknown, .Aexpr]
                                (.Epure (.Pexpr [] () (.PEsym (addr! "file" 5841))))) <| .Expr [] <|
                            .Eaction <| .Paction .Pos <| .Action .unknown () <|
                            .Load0
                              (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                              .Pointer
                                (.mk .true .false .false)
                                (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                              (.Pexpr [] () (.PEsym (a! 5919)))
                              .NA) <| .Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 5916))) <|
                          [(.Pattern [] <|
                            .CaseCtor
                              .Cspecified
                              [.Pattern [] (.CaseBase (.some (a! 5917), .BTy_object .OTy_pointer))],
                            .Expr [] <|
                            .Ewseq
                              (.Pattern [] (.CaseBase (.some (a! 5918), .BTy_boolean)))
                              (.Expr [] <| .Ememop .PtrValidForDeref <|
                              [.Pexpr
                                 []
                                 ()
                                 (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))),
                               .Pexpr [] () (.PEsym (a! 5917))]) <| .Expr [] <| .Epure <|
                            .Pexpr [] () <|
                            .PEif
                              (.Pexpr [] () (.PEsym (a! 5918)))
                              (.Pexpr [] () (.PEsym (a! 5917))) <|
                            .Pexpr
                              [.Astd "\xa76.5.3.2#4, sentence 4"]
                              ()
                              (.PEundef .unknown .UB043_indirection_invalid_value)),
                           (.Pattern
                              []
                              (.CaseCtor .Cunspecified [.Pattern [] (.CaseBase (.none, .BTy_ctype))]),
                            .Expr [] <| .Epure <|
                            .Pexpr
                              [.Astd "\xa76.5.3.2#4, sentence 4"]
                              ()
                              (.PEundef .unknown .UB043_indirection_invalid_value))]) <| .Expr [] <|
                        .Eaction <| .Paction .Pos <| .Action .unknown () <|
                        .Load0
                          (.Pexpr
                            []
                            ()
                            (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))))
                          (.Pexpr [] () (.PEsym (a! 5920)))
                          .NA,
                        .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                        .Epure <|
                        .Pexpr
                          []
                          ()
                          (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 47)))))]) <|
                     .Expr [] <| .Epure <| .Pexpr [] () <|
                     .PEcase
                       (.Pexpr [] () <|
                       .PEctor
                         .Ctuple
                         [.Pexpr [] () (.PEsym (a! 5911)), .Pexpr [] () (.PEsym (a! 5912))]) <|
                     [(.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern [] <|
                        .CaseCtor
                          .Cspecified
                          [.Pattern [] (.CaseBase (.some (a! 5913), .BTy_object .OTy_integer))],
                        .Pattern [] <|
                        .CaseCtor
                          .Cspecified
                          [.Pattern [] (.CaseBase (.some (a! 5914), .BTy_object .OTy_integer))]],
                       .Pexpr [.Astd "\xa76.5.9#3"] () <|
                       .PEif
                         (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                         .PEop
                           .OpEq
                           (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                           .PEcall
                             (.Sym (rt! "conv_int" 15837442492999787586))
                             [.Pexpr [] () (.PEval (.Vctype Ty.int)),
                              .Pexpr [] () (.PEsym (a! 5913))]) <|
                         .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                         .PEcall
                           (.Sym (rt! "conv_int" 15837442492999787586))
                           [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 5914))])
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
                       .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))],
                     .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                     .Epure <|
                     .Pexpr [] () (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 0)))))]) <|
                  .Expr [] <| .Epure <| .Pexpr [] () <|
                  .PEcase
                    (.Pexpr [] () <|
                    .PEctor
                      .Ctuple
                      [.Pexpr [] () (.PEsym (a! 5906)), .Pexpr [] () (.PEsym (a! 5907))]) <|
                  [(.Pattern [] <| .CaseCtor .Ctuple <|
                    [.Pattern [] <|
                     .CaseCtor
                       .Cspecified
                       [.Pattern [] (.CaseBase (.some (a! 5908), .BTy_object .OTy_integer))],
                     .Pattern [] <|
                     .CaseCtor
                       .Cspecified
                       [.Pattern [] (.CaseBase (.some (a! 5909), .BTy_object .OTy_integer))]],
                    .Pexpr [.Astd "\xa76.5.9#3"] () <|
                    .PEif
                      (.Pexpr [.Astd "\xa76.5.9#4, sentence 3"] () <|
                      .PEop
                        .OpEq
                        (.Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                        .PEcall
                          (.Sym (rt! "conv_int" 15837442492999787586))
                          [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 5908))]) <|
                      .Pexpr [.Astd "\xa76.5.9#4, sentence 1"] () <|
                      .PEcall
                        (.Sym (rt! "conv_int" 15837442492999787586))
                        [.Pexpr [] () (.PEval (.Vctype Ty.int)), .Pexpr [] () (.PEsym (a! 5909))])
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
                    .LVunspecified (.Ctype [.Aloc .unknown] (.Basic (.Integer (.Signed .Int_)))))]) <|
                .Expr [] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.some (a! 5903), .BTy_boolean)))
                  (.Expr [] <| .Ecase (.Pexpr [] () (.PEsym (a! 5904))) <|
                  [(.Pattern [] <|
                    .CaseCtor
                      .Cspecified
                      [.Pattern [] (.CaseBase (.some (a! 5905), .BTy_object .OTy_integer))],
                    .Expr [] <| .Epure <| .Pexpr [] () <|
                    .PEif
                      (.Pexpr [] () <| .PEnot <| .Pexpr [] () <|
                      .PEop
                        .OpEq
                        (.Pexpr [] () (.PEsym (a! 5905)))
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
                  (.Pexpr [] () (.PEsym (a! 5903)))
                  (.Expr [.Aloc .unknown, .Astmt] <|
                  .Esseq
                    (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
                    (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                    .Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.16#3, sentence 4"] <|
                    .Ewseq
                      (.Pattern [] <| .CaseCtor .Ctuple <|
                      [.Pattern [] (.CaseBase (.some (a! 5921), .BTy_object .OTy_pointer)),
                       .Pattern [] (.CaseBase (.some (a! 5928), .BTy_loaded .OTy_pointer))])
                      (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
                      [.Expr
                         [.Aloc .unknown, .Aexpr]
                         (.Epure (.Pexpr [] () (.PEsym (addr! "base" 5844)))),
                       .Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.6"] <|
                       .Ewseq
                         (.Pattern [] <| .CaseCtor .Ctuple <|
                         [.Pattern [] (.CaseBase (.some (a! 5922), .BTy_loaded .OTy_pointer)),
                          .Pattern [] (.CaseBase (.some (a! 5924), .BTy_loaded .OTy_integer))])
                         (.Expr [] <| .Eunseq <|
                         [.Expr [.Aloc .unknown, .Aexpr] <|
                          .Ewseq
                            (.Pattern [] (.CaseBase (.some (a! 5927), .BTy_object .OTy_pointer)))
                            (.Expr
                              [.Aloc .unknown, .Aexpr]
                              (.Epure (.Pexpr [] () (.PEsym (addr! "file" 5841))))) <| .Expr [] <|
                          .Eaction <| .Paction .Pos <| .Action .unknown () <|
                          .Load0
                            (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                            .Pointer
                              (.mk .true .false .false)
                              (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                            (.Pexpr [] () (.PEsym (a! 5927)))
                            .NA,
                          .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                          .Epure <|
                          .Pexpr
                            []
                            ()
                            (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1)))))]) <|
                       .Expr [] <|
                       .Ecase
                         (.Pexpr [] () <|
                         .PEctor
                           .Ctuple
                           [.Pexpr [] () (.PEsym (a! 5922)), .Pexpr [] () (.PEsym (a! 5924))]) <|
                       [(.Pattern [] <| .CaseCtor .Ctuple <|
                         [.Pattern [] <|
                          .CaseCtor
                            .Cspecified
                            [.Pattern [] (.CaseBase (.some (a! 5923), .BTy_object .OTy_pointer))],
                          .Pattern [] <|
                          .CaseCtor
                            .Cspecified
                            [.Pattern [] (.CaseBase (.some (a! 5925), .BTy_object .OTy_integer))]],
                         .Expr [] <|
                         .Ewseq
                           (.Pattern [] (.CaseBase (.some (a! 5926), .BTy_object .OTy_pointer)))
                           (.Expr [] <| .Ememop .PtrArrayShift <|
                           [.Pexpr [] () (.PEsym (a! 5923)),
                            .Pexpr
                              []
                              ()
                              (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))),
                            .Pexpr [] () (.PEsym (a! 5925))]) <| .Expr [] <|
                         .Epure
                           (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 5926))]))),
                        (.Pattern [] <|
                         .CaseBase
                           (.none, .BTy_tuple [.BTy_loaded .OTy_pointer, .BTy_loaded .OTy_integer]),
                         .Expr [] <| .Epure <|
                         .Pexpr
                           []
                           ()
                           (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_pointer_add)))]]) <|
                    .Expr [] <|
                    .Ewseq
                      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                      (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
                      .Action .unknown () <|
                      .Store0
                        .false
                        (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                        .Pointer
                          (.mk .true .false .false)
                          (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                        (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 5921)))
                        (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 5928)))
                        .NA) <|
                    .Expr
                      []
                      (.Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 5928)))))
                    (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
                  (.Expr [.Aloc .unknown, .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
              .Expr [] <|
              .Esseq
                (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                (.Expr [.Aloc .unknown, .Astmt, .Alabel (.LAloop_continue 5846)] <|
                .Esave
                  (c! "__cerb_continue190" 5845, .BTy_unit)
                  [(addr! "base" 5844,
                    ((.BTy_object .OTy_pointer,
                      .some <|
                      (.Ctype [.Aloc .unknown] <|
                       .Pointer
                         (.mk .true .false .false)
                         (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))),
                       .By_pointer)),
                     .Pexpr [] () (.PEsym (addr! "base" 5844))))] <|
                .Expr [.Aloc .unknown, .Astmt] <|
                .Esseq
                  (.Pattern [] (.CaseBase (.none, .BTy_loaded .OTy_pointer)))
                  (.Expr [.Astd "\xa76.5#2"] <| .Ebound <|
                  .Expr [.Aloc .unknown, .Aexpr, .Aexpr, .Astd "\xa76.5.16#3, sentence 4"] <|
                  .Ewseq
                    (.Pattern [] <| .CaseCtor .Ctuple <|
                    [.Pattern [] (.CaseBase (.some (a! 5929), .BTy_object .OTy_pointer)),
                     .Pattern [] (.CaseBase (.some (a! 5936), .BTy_loaded .OTy_pointer))])
                    (.Expr [.Astd "\xa76.5.16#3, sentence 5"] <| .Eunseq <|
                    [.Expr
                       [.Aloc .unknown, .Aexpr]
                       (.Epure (.Pexpr [] () (.PEsym (addr! "file" 5841)))),
                     .Expr [.Aloc .unknown, .Aexpr, .Astd "\xa76.5.6"] <|
                     .Ewseq
                       (.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern [] (.CaseBase (.some (a! 5930), .BTy_loaded .OTy_pointer)),
                        .Pattern [] (.CaseBase (.some (a! 5932), .BTy_loaded .OTy_integer))])
                       (.Expr [] <| .Eunseq <|
                       [.Expr [.Aloc .unknown, .Aexpr] <|
                        .Ewseq
                          (.Pattern [] (.CaseBase (.some (a! 5935), .BTy_object .OTy_pointer)))
                          (.Expr
                            [.Aloc .unknown, .Aexpr]
                            (.Epure (.Pexpr [] () (.PEsym (addr! "file" 5841))))) <| .Expr [] <|
                        .Eaction <| .Paction .Pos <| .Action .unknown () <|
                        .Load0
                          (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                          .Pointer
                            (.mk .true .false .false)
                            (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                          (.Pexpr [] () (.PEsym (a! 5935)))
                          .NA,
                        .Expr [.Aloc .unknown, .Aexpr, .Avalue (.Ainteger (.Signed .Int_))] <|
                        .Epure <|
                        .Pexpr
                          []
                          ()
                          (.PEval (.Vloaded (.LVspecified (.OVinteger (.IV .Prov_none 1)))))]) <|
                     .Expr [] <|
                     .Ecase
                       (.Pexpr [] () <|
                       .PEctor
                         .Ctuple
                         [.Pexpr [] () (.PEsym (a! 5930)), .Pexpr [] () (.PEsym (a! 5932))]) <|
                     [(.Pattern [] <| .CaseCtor .Ctuple <|
                       [.Pattern [] <|
                        .CaseCtor
                          .Cspecified
                          [.Pattern [] (.CaseBase (.some (a! 5931), .BTy_object .OTy_pointer))],
                        .Pattern [] <|
                        .CaseCtor
                          .Cspecified
                          [.Pattern [] (.CaseBase (.some (a! 5933), .BTy_object .OTy_integer))]],
                       .Expr [] <|
                       .Ewseq
                         (.Pattern [] (.CaseBase (.some (a! 5934), .BTy_object .OTy_pointer)))
                         (.Expr [] <| .Ememop .PtrArrayShift <|
                         [.Pexpr [] () (.PEsym (a! 5931)),
                          .Pexpr
                            []
                            ()
                            (.PEval (.Vctype (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))),
                          .Pexpr [] () (.PEsym (a! 5933))]) <| .Expr [] <|
                       .Epure (.Pexpr [] () (.PEctor .Cspecified [.Pexpr [] () (.PEsym (a! 5934))]))),
                      (.Pattern [] <|
                       .CaseBase
                         (.none, .BTy_tuple [.BTy_loaded .OTy_pointer, .BTy_loaded .OTy_integer]),
                       .Expr [] <| .Epure <|
                       .Pexpr
                         []
                         ()
                         (.PEundef .unknown (.UB_CERB004_unspecified .UB_unspec_pointer_add)))]]) <|
                  .Expr [] <|
                  .Ewseq
                    (.Pattern [] (.CaseBase (.none, .BTy_unit)))
                    (.Expr [.Astd "\xa76.5.16.1#2, store"] <| .Eaction <| .Paction .Neg0 <|
                    .Action .unknown () <|
                    .Store0
                      .false
                      (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
                      .Pointer
                        (.mk .true .false .false)
                        (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
                      (.Pexpr [.Astd "\xa76.5.16#3, sentence 1"] () (.PEsym (a! 5929)))
                      (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 5936)))
                      .NA) <|
                  .Expr
                    []
                    (.Epure (.Pexpr [.Astd "\xa76.5.16.1#2, conversion"] () (.PEsym (a! 5936)))))
                  (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
                (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
            .Esseq
              (.Pattern [] (.CaseBase (.none, .BTy_unit)))
              (.Expr [.Aloc .unknown, .Astmt, .Alabel (.LAloop_continue 5846)] <|
              .Esave
                (c! "continue_5885" 5885, .BTy_unit)
                [(addr! "base" 5844,
                  ((.BTy_object .OTy_pointer,
                    .some <|
                    (.Ctype [.Aloc .unknown] <|
                     .Pointer
                       (.mk .true .false .false)
                       (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))),
                     .By_pointer)),
                   .Pexpr [] () (.PEsym (addr! "base" 5844))))]
                (.Expr [.Aloc .unknown, .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
              (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
            (.Expr [] (.Erun () (c! "while_5889" 5889) [.Pexpr [] () (.PEsym (addr! "base" 5844))])))
          (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [.Aloc .unknown, .Astmt, .Alabel (.LAloop_break 5846)] <|
        .Esave
          (c! "break_5886" 5886, .BTy_unit)
          [(addr! "base" 5844,
            ((.BTy_object .OTy_pointer,
              .some <|
              (.Ctype [.Aloc .unknown] <|
               .Pointer
                 (.mk .true .false .false)
                 (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))),
               .By_pointer)),
             .Pexpr [] () (.PEsym (addr! "base" 5844))))]
          (.Expr [.Aloc .unknown, .Astmt] (.Epure (.Pexpr [] () (.PEval .Vunit)))))
        (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [.Aloc .unknown, .Astmt] <|
      .Esseq
        (.Pattern [] (.CaseBase (.some (a! 5938), .BTy_loaded .OTy_pointer)))
        (.Expr [.Astd "\xa76.5#2"] <| .Ebound <| .Expr [.Aloc .unknown, .Aexpr] <|
        .Ewseq
          (.Pattern [] (.CaseBase (.some (a! 5937), .BTy_object .OTy_pointer)))
          (.Expr [.Aloc .unknown, .Aexpr] (.Epure (.Pexpr [] () (.PEsym (addr! "base" 5844))))) <|
        .Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
        .Load0
          (.Pexpr [] () <| .PEval <| .Vctype <| .Ctype [.Aloc .unknown] <|
          .Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0))))
          (.Pexpr [] () (.PEsym (a! 5937)))
          .NA) <| .Expr [] <|
      .Esseq
        (.Pattern [] (.CaseBase (.none, .BTy_unit)))
        (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
        .Kill
          (.Static0 <|
          .Ctype
            [.Aloc .unknown]
            (.Pointer
              (.mk .true .false .false)
              (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0)))))
          (.Pexpr [] () (.PEsym (addr! "base" 5844))))
        (.Expr [] (.Erun () (c! "ret_5884" 5884) [.Pexpr [] () (.PEsym (a! 5938))]))) <| .Expr [] <|
    .Esseq
      (.Pattern [] (.CaseBase (.none, .BTy_unit)))
      (.Expr [] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
      .Kill
        (.Static0 <|
        .Ctype
          [.Aloc .unknown]
          (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0)))))
        (.Pexpr [] () (.PEsym (addr! "base" 5844))))
      (.Expr [] (.Epure (.Pexpr [] () (.PEval .Vunit))))) <|
  .Expr [.Alabel .LAreturn, .Aloc .unknown] <|
  .Esave
    (c! "ret_5884" 5884, .BTy_loaded .OTy_pointer)
    [(a! 5939,
      ((.BTy_loaded .OTy_pointer,
        .some <|
        (.Ctype
           [.Aloc .unknown]
           (.Pointer (.mk .true .false .false) (.Ctype [.Aloc .unknown] (.Basic (.Integer .Char0)))),
         .By_value)),
       .Pexpr [.Astd "\xa76.9.1#12"] () (.PEundef .unknown .UB088_reached_end_of_function)))]
    (.Expr [] (.Epure (.Pexpr [] () (.PEsym (a! 5939)))))

def decodeTwos : Procedure :=
  .Fun
    (.BTy_object .OTy_integer)
    [(rt! "ty" 16930491615947487770, .BTy_ctype),
     (rt! "n" 8148669997605808657, .BTy_object .OTy_integer)] <| .Pexpr [.Aloc .unknown] () <|
  .PElet
    (.Pattern
      [.Aloc .unknown]
      (.CaseBase (.some (rt! "width" 202037604211045601), .BTy_object .OTy_integer)))
    (.Pexpr [.Aloc .unknown] () <|
    .PEcall
      (.Sym (rt! "ctype_width" 4407163753016978909))
      [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty" 16930491615947487770))]) <|
  .Pexpr [.Aloc .unknown] () <|
  .PEif
    (.Pexpr [.Aloc .unknown] () <|
    .PEop
      .OpOr
      (.Pexpr [.Aloc .unknown] () <|
      .PEop
        .OpLt
        (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657)))
        (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0)))))) <|
    .Pexpr [.Aloc .unknown] () <|
    .PEop
      .OpLe
      (.Pexpr [.Aloc .unknown] () <|
      .PEop
        .OpExp
        (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2)))))
        (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "width" 202037604211045601))))
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657))))
    (.Pexpr [.Aloc .unknown] () <| .PEerror "decodeTwos" <| .Pexpr [.Aloc .unknown] () <|
    .PEctor .Ctuple <|
    [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty" 16930491615947487770)),
     .Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657))]) <|
  .Pexpr [.Aloc .unknown] () <|
  .PEif
    (.Pexpr [.Aloc .unknown] () <|
    .PEop .OpLe (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657))) <|
    .Pexpr [.Aloc .unknown] () <|
    .PEop
      .OpSub
      (.Pexpr [.Aloc .unknown] () <|
      .PEop
        .OpExp
        (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))) <|
      .Pexpr [.Aloc .unknown] () <|
      .PEop
        .OpSub
        (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "width" 202037604211045601)))
        (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
      (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
    (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657))) <|
  .Pexpr [.Aloc .unknown] () <|
  .PEop .OpSub (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657))) <|
  .Pexpr [.Aloc .unknown] () <|
  .PEop
    .OpExp
    (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2)))))
    (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "width" 202037604211045601)))

def complementTwos_aux : Procedure :=
  .Fun
    (.BTy_object .OTy_integer)
    [(rt! "n" 8148669997605808657, .BTy_object .OTy_integer),
     (rt! "w" 7137162147818573492, .BTy_object .OTy_integer)] <| .Pexpr [.Aloc .unknown] () <|
  .PEif
    (.Pexpr [.Aloc .unknown] () <|
    .PEop
      .OpEq
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "w" 7137162147818573492)))
      (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
    (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657))) <|
  .Pexpr [.Aloc .unknown] () <|
  .PElet
    (.Pattern
      [.Aloc .unknown]
      (.CaseBase (.some (rt! "n_" 1723055963454271190), .BTy_object .OTy_integer)))
    (.Pexpr [.Aloc .unknown] () <|
    .PEop
      .OpDiv
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657)))
      (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2)))))) <|
  .Pexpr [.Aloc .unknown] () <|
  .PEop
    .OpAdd
    (.Pexpr [.Aloc .unknown] () <|
    .PEop .OpSub (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))) <|
    .Pexpr [.Aloc .unknown] () <|
    .PEop
      .OpRem_f
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657)))
      (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2)))))) <|
  .Pexpr [.Aloc .unknown] () <|
  .PEop .OpMul (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))) <|
  .Pexpr [.Aloc .unknown] () <| .PEcall (.Sym (rt! "complementTwos_aux" 1765051281643384212)) <|
  [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n_" 1723055963454271190)),
   .Pexpr [.Aloc .unknown] () <|
   .PEop
     .OpSub
     (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "w" 7137162147818573492)))
     (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1)))))]

def params_nth : Procedure :=
  .Fun
    .BTy_ctype
    [(rt! "cs" 3411606890003347522, .BTy_list .BTy_ctype),
     (rt! "n" 8148669997605808657, .BTy_object .OTy_integer)] <| .Pexpr [.Aloc .unknown] () <|
  .PEcase (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "cs" 3411606890003347522))) <|
  [(.Pattern [] (.CaseCtor (.Cnil .BTy_ctype) []),
    .Pexpr [.Aloc .unknown] () <| .PEerror "params_nth" <| .Pexpr [.Aloc .unknown] () <|
    .PEctor .Ctuple <|
    [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "cs" 3411606890003347522)),
     .Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657))]),
   (.Pattern [.Aloc .unknown] <| .CaseCtor .Ccons <|
    [.Pattern [.Aloc .unknown] (.CaseBase (.some (rt! "x" 16562859848569467201), .BTy_ctype)),
     .Pattern
       [.Aloc .unknown]
       (.CaseBase (.some (rt! "xs" 12143636885177305775), .BTy_list .BTy_ctype))],
    .Pexpr [.Aloc .unknown] () <|
    .PEif
      (.Pexpr [.Aloc .unknown] () <|
      .PEop
        .OpEq
        (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657)))
        (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "x" 16562859848569467201))) <|
    .Pexpr [.Aloc .unknown] () <|
    .PEif
      (.Pexpr [.Aloc .unknown] () <|
      .PEop
        .OpGt
        (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657)))
        (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
      (.Pexpr [.Aloc .unknown] () <| .PEcall (.Sym (rt! "params_nth" 2542166332461726829)) <|
      [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "xs" 12143636885177305775)),
       .Pexpr [.Aloc .unknown] () <|
       .PEop
         .OpSub
         (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657)))
         (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1)))))]) <|
    .Pexpr [.Aloc .unknown] () <| .PEerror "params_nth" <| .Pexpr [.Aloc .unknown] () <|
    .PEctor .Ctuple <|
    [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "cs" 3411606890003347522)),
     .Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657))])]

/-- `void *memcpy_proxy(void *s1_ptr, const void *s2_ptr, unsigned long n_ptr)` -/
def memcpy_proxy : Procedure :=
  .Proc
    .unknown
    .none
    (.BTy_loaded .OTy_pointer)
    [(rt! "s1_ptr" 4465565641563330146, .BTy_object .OTy_pointer),
     (rt! "s2_ptr" 17791861183741204191, .BTy_object .OTy_pointer),
     (rt! "n_ptr" 1734067922844276399, .BTy_object .OTy_pointer)] <| .Expr [.Aloc .unknown] <|
  .Esseq
    (.Pattern
      [.Aloc .unknown]
      (.CaseBase (.some (rt! "_s1" 15542037342255188870), .BTy_loaded .OTy_pointer)))
    (.Expr [.Aloc .unknown] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
    .Load0
      (.Pexpr [.Aloc .unknown] () (.PEval (.Vctype Ty.ptr_void)))
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "s1_ptr" 4465565641563330146)))
      .NA) <| .Expr [.Aloc .unknown] <|
  .Esseq
    (.Pattern
      [.Aloc .unknown]
      (.CaseBase (.some (rt! "_s2" 847363192369102278), .BTy_loaded .OTy_pointer)))
    (.Expr [.Aloc .unknown] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
    .Load0
      (.Pexpr [.Aloc .unknown] () (.PEval (.Vctype Ty.ptr_void)))
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "s2_ptr" 17791861183741204191)))
      .NA) <| .Expr [.Aloc .unknown] <|
  .Esseq
    (.Pattern
      [.Aloc .unknown]
      (.CaseBase (.some (rt! "_n" 362773788461399393), .BTy_loaded .OTy_integer)))
    (.Expr [.Aloc .unknown] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
    .Load0
      (.Pexpr [.Aloc .unknown] () (.PEval (.Vctype Ty.size_t)))
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n_ptr" 1734067922844276399)))
      .NA) <| .Expr [.Aloc .unknown] <|
  .Ecase
    (.Pexpr [.Aloc .unknown] () <| .PEctor .Ctuple <|
    [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "_s1" 15542037342255188870)),
     .Pexpr [.Aloc .unknown] () (.PEsym (rt! "_s2" 847363192369102278)),
     .Pexpr [.Aloc .unknown] () (.PEsym (rt! "_n" 362773788461399393))]) <|
  [(.Pattern [.Aloc .unknown] <| .CaseCtor .Ctuple <|
    [.Pattern [.Aloc .unknown] <| .CaseCtor .Cspecified <|
     [.Pattern
        [.Aloc .unknown]
        (.CaseBase (.some (rt! "s1" 11988938384518227409), .BTy_object .OTy_pointer))],
     .Pattern [.Aloc .unknown] <| .CaseCtor .Cspecified <|
     [.Pattern
        [.Aloc .unknown]
        (.CaseBase (.some (rt! "s2" 9231935052355199320), .BTy_object .OTy_pointer))],
     .Pattern [.Aloc .unknown] <| .CaseCtor .Cspecified <|
     [.Pattern
        [.Aloc .unknown]
        (.CaseBase (.some (rt! "n" 8148669997605808657), .BTy_object .OTy_integer))]],
    .Expr [.Aloc .unknown] <|
    .Esseq
      (.Pattern
        [.Aloc .unknown]
        (.CaseBase (.some (rt! "res" 4076223125496034029), .BTy_object .OTy_pointer)))
      (.Expr [.Aloc .unknown] <| .Ememop .Memcpy <|
      [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "s1" 11988938384518227409)),
       .Pexpr [.Aloc .unknown] () (.PEsym (rt! "s2" 9231935052355199320)),
       .Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657))]) <|
    .Expr [.Aloc .unknown] <| .Epure <| .Pexpr [.Aloc .unknown] () <|
    .PEctor .Cspecified [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "res" 4076223125496034029))]),
   (.Pattern [.Aloc .unknown] <| .CaseBase <|
    (.none,
     .BTy_tuple [.BTy_loaded .OTy_pointer, .BTy_loaded .OTy_pointer, .BTy_loaded .OTy_integer]),
    .Expr
      [.Aloc .unknown]
      (.Epure (.Pexpr [.Aloc .unknown] () (.PEundef .unknown (.DUMMY "memcpy_proxy")))))]

def reverse_aux : Procedure :=
  .Fun
    (.BTy_list (.BTy_object .OTy_integer))
    [(rt! "xs" 12143636885177305775, .BTy_list (.BTy_object .OTy_integer)),
     (rt! "acc" 11392283251719094476, .BTy_list (.BTy_object .OTy_integer))] <|
  .Pexpr [.Aloc .unknown] () <|
  .PEcase (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "xs" 12143636885177305775))) <|
  [(.Pattern [] (.CaseCtor (.Cnil (.BTy_object .OTy_integer)) []),
    .Pexpr [.Aloc .unknown] () (.PEsym (rt! "acc" 11392283251719094476))),
   (.Pattern [.Aloc .unknown] <| .CaseCtor .Ccons <|
    [.Pattern
       [.Aloc .unknown]
       (.CaseBase (.some (rt! "x" 16562859848569467201), .BTy_object .OTy_integer)),
     .Pattern
       [.Aloc .unknown]
       (.CaseBase (.some (rt! "xs" 12143636885177305775), .BTy_list (.BTy_object .OTy_integer)))],
    .Pexpr [.Aloc .unknown] () <| .PEcall (.Sym (rt! "reverse_aux" 3244124249293398763)) <|
    [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "xs" 12143636885177305775)),
     .Pexpr [.Aloc .unknown] () <| .PEctor .Ccons <|
     [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "x" 16562859848569467201)),
      .Pexpr [.Aloc .unknown] () (.PEsym (rt! "acc" 11392283251719094476))]])]

def encodeTwos : Procedure :=
  .Fun
    (.BTy_object .OTy_integer)
    [(rt! "ty" 16930491615947487770, .BTy_ctype),
     (rt! "n" 8148669997605808657, .BTy_object .OTy_integer)] <| .Pexpr [.Aloc .unknown] () <|
  .PElet
    (.Pattern
      [.Aloc .unknown]
      (.CaseBase (.some (rt! "width" 202037604211045601), .BTy_object .OTy_integer)))
    (.Pexpr [.Aloc .unknown] () <|
    .PEcall
      (.Sym (rt! "ctype_width" 4407163753016978909))
      [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty" 16930491615947487770))]) <|
  .Pexpr [.Aloc .unknown] () <|
  .PEif
    (.Pexpr [.Aloc .unknown] () <|
    .PEop
      .OpOr
      (.Pexpr [.Aloc .unknown] () <|
      .PEop .OpLt (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657))) <|
      .Pexpr
        [.Aloc .unknown]
        ()
        (.PEctor .Civmin [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty" 16930491615947487770))])) <|
    .Pexpr [.Aloc .unknown] () <|
    .PEop
      .OpLt
      (.Pexpr
        [.Aloc .unknown]
        ()
        (.PEctor .Civmax [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty" 16930491615947487770))]))
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657))))
    (.Pexpr [.Aloc .unknown] () <| .PEerror "encodeTwos" <| .Pexpr [.Aloc .unknown] () <|
    .PEctor .Ctuple <|
    [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "width" 202037604211045601)),
     .Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty" 16930491615947487770)),
     .Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657))]) <|
  .Pexpr [.Aloc .unknown] () <|
  .PEif
    (.Pexpr [.Aloc .unknown] () <|
    .PEop
      .OpLe
      (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0)))))
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657))))
    (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657))) <|
  .Pexpr [.Aloc .unknown] () <|
  .PEop
    .OpAdd
    (.Pexpr [.Aloc .unknown] () <|
    .PEop
      .OpExp
      (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2)))))
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "width" 202037604211045601))))
    (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657)))

def ctype_width : Procedure :=
  .Fun (.BTy_object .OTy_integer) [(rt! "ty" 16930491615947487770, .BTy_ctype)] <|
  .Pexpr [.Aloc .unknown] () <|
  .PEop
    .OpMul
    (.Pexpr
      [.Aloc .unknown]
      ()
      (.PEctor .Civsizeof [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty" 16930491615947487770))]))
    (.Pexpr [.Aloc .unknown] () (.PEimpl .Characters__bits_in_byte))

/-- `void *aligned_alloc_proxy(unsigned long align_ptr, unsigned long size_ptr)` -/
def aligned_alloc_proxy : Procedure :=
  .Proc
    .unknown
    .none
    (.BTy_loaded .OTy_pointer)
    [(rt! "align_ptr" 3996319384598887192, .BTy_object .OTy_pointer),
     (rt! "size_ptr" 4974092339171394496, .BTy_object .OTy_pointer)] <| .Expr [.Aloc .unknown] <|
  .Esseq
    (.Pattern
      [.Aloc .unknown]
      (.CaseBase (.some (rt! "align_" 5002784634699758512), .BTy_loaded .OTy_integer)))
    (.Expr [.Aloc .unknown] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
    .Load0
      (.Pexpr [.Aloc .unknown] () (.PEval (.Vctype Ty.size_t)))
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "align_ptr" 3996319384598887192)))
      .NA) <| .Expr [.Aloc .unknown] <|
  .Esseq
    (.Pattern
      [.Aloc .unknown]
      (.CaseBase (.some (rt! "size_" 8470470982241926592), .BTy_loaded .OTy_integer)))
    (.Expr [.Aloc .unknown] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
    .Load0
      (.Pexpr [.Aloc .unknown] () (.PEval (.Vctype Ty.size_t)))
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "size_ptr" 4974092339171394496)))
      .NA) <| .Expr [.Aloc .unknown] <|
  .Ecase
    (.Pexpr [.Aloc .unknown] () <| .PEctor .Ctuple <|
    [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "align_" 5002784634699758512)),
     .Pexpr [.Aloc .unknown] () (.PEsym (rt! "size_" 8470470982241926592))]) <|
  [(.Pattern [.Aloc .unknown] <| .CaseCtor .Ctuple <|
    [.Pattern [.Aloc .unknown] <| .CaseCtor .Cspecified <|
     [.Pattern
        [.Aloc .unknown]
        (.CaseBase (.some (rt! "align" 18122299040501077305), .BTy_object .OTy_integer))],
     .Pattern [.Aloc .unknown] <| .CaseCtor .Cspecified <|
     [.Pattern
        [.Aloc .unknown]
        (.CaseBase (.some (rt! "size" 18347754745985942586), .BTy_object .OTy_integer))]],
    .Expr [.Aloc .unknown] <|
    .Eif
      (.Pexpr [.Aloc .unknown] () <|
      .PEop
        .OpEq
        (.Pexpr [.Aloc .unknown] () <|
        .PEop
          .OpRem_t
          (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "size" 18347754745985942586)))
          (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "align" 18122299040501077305))))
        (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
      (.Expr [.Aloc .unknown] <|
      .Esseq
        (.Pattern
          [.Aloc .unknown]
          (.CaseBase (.some (rt! "ptr" 12873998714540407893), .BTy_object .OTy_pointer)))
        (.Expr [.Aloc .unknown] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
        .Alloc0
          (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "align" 18122299040501077305)))
          (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "size" 18347754745985942586)))
          (.PrefOther "Core")) <| .Expr [.Aloc .unknown] <| .Epure <| .Pexpr [.Aloc .unknown] () <|
      .PEctor .Cspecified [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ptr" 12873998714540407893))]) <|
    .Expr
      [.Aloc .unknown]
      (.Epure (.Pexpr [.Aloc .unknown] () (.PEundef .unknown (.DUMMY "align_alloc"))))),
   (.Pattern [.Aloc .unknown] <| .CaseCtor .Ctuple <|
    [.Pattern [.Aloc .unknown] (.CaseBase (.none, .BTy_loaded .OTy_integer)),
     .Pattern [.Aloc .unknown] (.CaseBase (.none, .BTy_loaded .OTy_integer))],
    .Expr [.Aloc .unknown] <| .Epure <| .Pexpr [.Aloc .unknown] () <|
    .PEerror "align_alloc_proxy" (.Pexpr [.Aloc .unknown] () (.PEval .Vfalse)))]

def listFromStr : Procedure :=
  .Proc
    .unknown
    .none
    (.BTy_list (.BTy_object .OTy_integer))
    [(rt! "str" 10796804682411823810, .BTy_object .OTy_pointer)] <| .Expr [.Aloc .unknown] <|
  .Esseq
    (.Pattern
      [.Aloc .unknown]
      (.CaseBase (.some (rt! "rev_xs" 4871521963352619317), .BTy_list (.BTy_object .OTy_integer))))
    (.Expr [.Aloc .unknown] <| .Eproc () (.Sym (rt! "rev_listFromStr_aux" 15685637226092944688)) <|
    [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "str" 10796804682411823810)),
     .Pexpr [.Aloc .unknown] () (.PEctor (.Cnil (.BTy_object .OTy_integer)) [])]) <|
  .Expr [.Aloc .unknown] <| .Epure <| .Pexpr [.Aloc .unknown] () <|
  .PEcall
    (.Sym (rt! "reverse" 7425223667865989902))
    [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "rev_xs" 4871521963352619317))]

def all_values_representable_in : Procedure :=
  .Fun
    .BTy_boolean
    [(rt! "ty1" 4644658230054401439, .BTy_ctype), (rt! "ty2" 13314684127251557632, .BTy_ctype)] <|
  .Pexpr [.Aloc .unknown] () <|
  .PEop
    .OpAnd
    (.Pexpr [.Aloc .unknown] () <|
    .PEop
      .OpLe
      (.Pexpr
        [.Aloc .unknown]
        ()
        (.PEctor .Civmin [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty2" 13314684127251557632))])) <|
    .Pexpr
      [.Aloc .unknown]
      ()
      (.PEctor .Civmin [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty1" 4644658230054401439))])) <|
  .Pexpr [.Aloc .unknown] () <|
  .PEop
    .OpLe
    (.Pexpr
      [.Aloc .unknown]
      ()
      (.PEctor .Civmax [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty1" 4644658230054401439))])) <|
  .Pexpr
    [.Aloc .unknown]
    ()
    (.PEctor .Civmax [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty2" 13314684127251557632))])

def reverse : Procedure :=
  .Fun
    (.BTy_list (.BTy_object .OTy_integer))
    [(rt! "xs" 12143636885177305775, .BTy_list (.BTy_object .OTy_integer))] <|
  .Pexpr [.Aloc .unknown] () <| .PEcall (.Sym (rt! "reverse_aux" 3244124249293398763)) <|
  [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "xs" 12143636885177305775)),
   .Pexpr [.Aloc .unknown] () (.PEctor (.Cnil (.BTy_object .OTy_integer)) [])]

def conv_loaded_int : Procedure :=
  .Fun
    (.BTy_loaded .OTy_integer)
    [(rt! "ty" 16930491615947487770, .BTy_ctype),
     (rt! "_n" 362773788461399393, .BTy_loaded .OTy_integer)] <| .Pexpr [.Aloc .unknown] () <|
  .PEcase (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "_n" 362773788461399393))) <|
  [(.Pattern [.Aloc .unknown] <| .CaseCtor .Cspecified <|
    [.Pattern
       [.Aloc .unknown]
       (.CaseBase (.some (rt! "n" 8148669997605808657), .BTy_object .OTy_integer))],
    .Pexpr [.Aloc .unknown] () <| .PEctor .Cspecified <|
    [.Pexpr [.Aloc .unknown] () <| .PEcall (.Sym (rt! "conv_int" 15837442492999787586)) <|
     [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty" 16930491615947487770)),
      .Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657))]]),
   (.Pattern
      [.Aloc .unknown]
      (.CaseCtor .Cunspecified [.Pattern [.Aloc .unknown] (.CaseBase (.none, .BTy_ctype))]),
    .Pexpr
      [.Aloc .unknown]
      ()
      (.PEctor .Cunspecified [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty" 16930491615947487770))]))]

def is_representable_integer : Procedure :=
  .Fun
    .BTy_boolean
    [(rt! "n" 8148669997605808657, .BTy_object .OTy_integer),
     (rt! "ty" 16930491615947487770, .BTy_ctype)] <| .Pexpr [.Aloc .unknown] () <|
  .PEop
    .OpAnd
    (.Pexpr [.Aloc .unknown] () <|
    .PEop
      .OpLe
      (.Pexpr
        [.Aloc .unknown]
        ()
        (.PEctor .Civmin [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty" 16930491615947487770))]))
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657)))) <|
  .Pexpr [.Aloc .unknown] () <|
  .PEop .OpLe (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657))) <|
  .Pexpr
    [.Aloc .unknown]
    ()
    (.PEctor .Civmax [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty" 16930491615947487770))])

/-- `int memcmp_proxy(const void *p_ptr, const void *q_ptr, unsigned long size_ptr)` -/
def memcmp_proxy : Procedure :=
  .Proc
    .unknown
    .none
    (.BTy_loaded .OTy_integer)
    [(rt! "p_ptr" 9325163885373131492, .BTy_object .OTy_pointer),
     (rt! "q_ptr" 12771332079766287501, .BTy_object .OTy_pointer),
     (rt! "size_ptr" 4974092339171394496, .BTy_object .OTy_pointer)] <| .Expr [.Aloc .unknown] <|
  .Esseq
    (.Pattern
      [.Aloc .unknown]
      (.CaseBase (.some (rt! "_p" 18428340463967472687), .BTy_loaded .OTy_pointer)))
    (.Expr [.Aloc .unknown] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
    .Load0
      (.Pexpr [.Aloc .unknown] () (.PEval (.Vctype Ty.ptr_void)))
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "p_ptr" 9325163885373131492)))
      .NA) <| .Expr [.Aloc .unknown] <|
  .Esseq
    (.Pattern
      [.Aloc .unknown]
      (.CaseBase (.some (rt! "_q" 6876174131288909741), .BTy_loaded .OTy_pointer)))
    (.Expr [.Aloc .unknown] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
    .Load0
      (.Pexpr [.Aloc .unknown] () (.PEval (.Vctype Ty.ptr_void)))
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "q_ptr" 12771332079766287501)))
      .NA) <| .Expr [.Aloc .unknown] <|
  .Esseq
    (.Pattern
      [.Aloc .unknown]
      (.CaseBase (.some (rt! "_size" 1017591057374839528), .BTy_loaded .OTy_integer)))
    (.Expr [.Aloc .unknown] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
    .Load0
      (.Pexpr [.Aloc .unknown] () (.PEval (.Vctype Ty.size_t)))
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "size_ptr" 4974092339171394496)))
      .NA) <| .Expr [.Aloc .unknown] <|
  .Ecase
    (.Pexpr [.Aloc .unknown] () <| .PEctor .Ctuple <|
    [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "_p" 18428340463967472687)),
     .Pexpr [.Aloc .unknown] () (.PEsym (rt! "_q" 6876174131288909741)),
     .Pexpr [.Aloc .unknown] () (.PEsym (rt! "_size" 1017591057374839528))]) <|
  [(.Pattern [.Aloc .unknown] <| .CaseCtor .Ctuple <|
    [.Pattern [.Aloc .unknown] <| .CaseCtor .Cspecified <|
     [.Pattern
        [.Aloc .unknown]
        (.CaseBase (.some (rt! "p" 7187156974425934), .BTy_object .OTy_pointer))],
     .Pattern [.Aloc .unknown] <| .CaseCtor .Cspecified <|
     [.Pattern
        [.Aloc .unknown]
        (.CaseBase (.some (rt! "q" 9847161165854524911), .BTy_object .OTy_pointer))],
     .Pattern [.Aloc .unknown] <| .CaseCtor .Cspecified <|
     [.Pattern
        [.Aloc .unknown]
        (.CaseBase (.some (rt! "size" 18347754745985942586), .BTy_object .OTy_integer))]],
    .Expr [.Aloc .unknown] <|
    .Esseq
      (.Pattern
        [.Aloc .unknown]
        (.CaseBase (.some (rt! "res" 4076223125496034029), .BTy_object .OTy_integer)))
      (.Expr [.Aloc .unknown] <| .Ememop .Memcmp <|
      [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "p" 7187156974425934)),
       .Pexpr [.Aloc .unknown] () (.PEsym (rt! "q" 9847161165854524911)),
       .Pexpr [.Aloc .unknown] () (.PEsym (rt! "size" 18347754745985942586))]) <|
    .Expr [.Aloc .unknown] <| .Epure <| .Pexpr [.Aloc .unknown] () <|
    .PEctor .Cspecified [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "res" 4076223125496034029))]),
   (.Pattern [.Aloc .unknown] <| .CaseBase <|
    (.none,
     .BTy_tuple [.BTy_loaded .OTy_pointer, .BTy_loaded .OTy_pointer, .BTy_loaded .OTy_integer]),
    .Expr
      [.Aloc .unknown]
      (.Epure (.Pexpr [.Aloc .unknown] () (.PEundef .unknown (.DUMMY "memcmp_proxy")))))]

/-- `void *malloc_proxy(unsigned long size_ptr)` -/
def malloc_proxy : Procedure :=
  .Proc
    .unknown
    .none
    (.BTy_loaded .OTy_pointer)
    [(rt! "size_ptr" 4974092339171394496, .BTy_object .OTy_pointer)] <| .Expr [.Aloc .unknown] <|
  .Esseq
    (.Pattern
      [.Aloc .unknown]
      (.CaseBase (.some (rt! "size_" 8470470982241926592), .BTy_loaded .OTy_integer)))
    (.Expr [.Aloc .unknown] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
    .Load0
      (.Pexpr [.Aloc .unknown] () (.PEval (.Vctype Ty.size_t)))
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "size_ptr" 4974092339171394496)))
      .NA) <| .Expr [.Aloc .unknown] <|
  .Ecase (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "size_" 8470470982241926592))) <|
  [(.Pattern [.Aloc .unknown] <| .CaseCtor .Cspecified <|
    [.Pattern
       [.Aloc .unknown]
       (.CaseBase (.some (rt! "size" 18347754745985942586), .BTy_object .OTy_integer))],
    .Expr [.Aloc .unknown] <|
    .Esseq
      (.Pattern
        [.Aloc .unknown]
        (.CaseBase (.some (rt! "ptr" 12873998714540407893), .BTy_object .OTy_pointer)))
      (.Expr [.Aloc .unknown] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
      .Alloc0
        (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 8)))))
        (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "size" 18347754745985942586)))
        (.PrefOther "Core")) <| .Expr [.Aloc .unknown] <| .Epure <| .Pexpr [.Aloc .unknown] () <|
    .PEctor .Cspecified [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ptr" 12873998714540407893))]),
   (.Pattern
      [.Aloc .unknown]
      (.CaseCtor .Cunspecified [.Pattern [.Aloc .unknown] (.CaseBase (.none, .BTy_ctype))]),
    .Expr [.Aloc .unknown] <| .Epure <|
    .Pexpr
      [.Aloc .unknown]
      ()
      (.PEerror "malloc_proxy" (.Pexpr [.Aloc .unknown] () (.PEval .Vfalse))))]

def params_length_aux : Procedure :=
  .Fun
    (.BTy_object .OTy_integer)
    [(rt! "acc" 11392283251719094476, .BTy_object .OTy_integer),
     (rt! "cs" 3411606890003347522, .BTy_list .BTy_ctype)] <| .Pexpr [.Aloc .unknown] () <|
  .PEcase (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "cs" 3411606890003347522))) <|
  [(.Pattern [] (.CaseCtor (.Cnil .BTy_ctype) []),
    .Pexpr [.Aloc .unknown] () (.PEsym (rt! "acc" 11392283251719094476))),
   (.Pattern [.Aloc .unknown] <| .CaseCtor .Ccons <|
    [.Pattern [.Aloc .unknown] (.CaseBase (.none, .BTy_ctype)),
     .Pattern
       [.Aloc .unknown]
       (.CaseBase (.some (rt! "xs" 12143636885177305775), .BTy_list .BTy_ctype))],
    .Pexpr [.Aloc .unknown] () <| .PEcall (.Sym (rt! "params_length_aux" 9897128682148399964)) <|
    [.Pexpr [.Aloc .unknown] () <|
     .PEop
       .OpAdd
       (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "acc" 11392283251719094476)))
       (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))),
     .Pexpr [.Aloc .unknown] () (.PEsym (rt! "xs" 12143636885177305775))])]

/-- `void free_proxy(void *p_ptr)` -/
def free_proxy : Procedure :=
  .Proc .unknown .none .BTy_unit [(rt! "p_ptr" 9325163885373131492, .BTy_object .OTy_pointer)] <|
  .Expr [.Aloc .unknown] <|
  .Esseq
    (.Pattern
      [.Aloc .unknown]
      (.CaseBase (.some (rt! "_p" 18428340463967472687), .BTy_loaded .OTy_pointer)))
    (.Expr [.Aloc .unknown] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
    .Load0
      (.Pexpr [.Aloc .unknown] () (.PEval (.Vctype Ty.ptr_void)))
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "p_ptr" 9325163885373131492)))
      .NA) <| .Expr [.Aloc .unknown] <|
  .Ecase (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "_p" 18428340463967472687))) <|
  [(.Pattern [.Aloc .unknown] <| .CaseCtor .Cspecified <|
    [.Pattern
       [.Aloc .unknown]
       (.CaseBase (.some (rt! "p" 7187156974425934), .BTy_object .OTy_pointer))],
    .Expr [.Aloc .unknown] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
    .Kill .Dynamic0 (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "p" 7187156974425934)))),
   (.Pattern [.Aloc .unknown] (.CaseBase (.none, .BTy_loaded .OTy_pointer)),
    .Expr
      [.Aloc .unknown]
      (.Epure (.Pexpr [.Aloc .unknown] () (.PEundef .unknown (.DUMMY "kill_proxy_1")))))]

def complementTwos : Procedure :=
  .Fun
    (.BTy_object .OTy_integer)
    [(rt! "ty" 16930491615947487770, .BTy_ctype),
     (rt! "n" 8148669997605808657, .BTy_object .OTy_integer)] <| .Pexpr [.Aloc .unknown] () <|
  .PEcall (.Sym (rt! "complementTwos_aux" 1765051281643384212)) <|
  [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657)),
   .Pexpr [.Aloc .unknown] () <|
   .PEcall
     (.Sym (rt! "ctype_width" 4407163753016978909))
     [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty" 16930491615947487770))]]

def ones_prefix : Procedure :=
  .Fun
    (.BTy_object .OTy_integer)
    [(rt! "i" 16900879642891266615, .BTy_object .OTy_integer),
     (rt! "k" 11901859001352538922, .BTy_object .OTy_integer),
     (rt! "width" 202037604211045601, .BTy_object .OTy_integer)] <| .Pexpr [.Aloc .unknown] () <|
  .PEif
    (.Pexpr [.Aloc .unknown] () <|
    .PEop
      .OpAnd
      (.Pexpr [.Aloc .unknown] () <|
      .PEop
        .OpLe
        (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0)))))
        (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "i" 16900879642891266615)))) <|
    .Pexpr [.Aloc .unknown] () <|
    .PEop
      .OpLt
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "i" 16900879642891266615)))
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "k" 11901859001352538922))))
    (.Pexpr [.Aloc .unknown] () <|
    .PEop
      .OpAdd
      (.Pexpr [.Aloc .unknown] () <|
      .PEop
        .OpExp
        (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 2))))) <|
      .Pexpr [.Aloc .unknown] () <|
      .PEop
        .OpSub
        (.Pexpr [.Aloc .unknown] () <|
        .PEop
          .OpSub
          (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "width" 202037604211045601)))
          (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))))
        (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "i" 16900879642891266615)))) <|
    .Pexpr [.Aloc .unknown] () <| .PEcall (.Sym (rt! "ones_prefix" 13323011593064310141)) <|
    [.Pexpr [.Aloc .unknown] () <|
     .PEop
       .OpAdd
       (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "i" 16900879642891266615)))
       (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))),
     .Pexpr [.Aloc .unknown] () (.PEsym (rt! "k" 11901859001352538922)),
     .Pexpr [.Aloc .unknown] () (.PEsym (rt! "width" 202037604211045601))])
    (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0)))))

def create_and_store : Procedure :=
  .Proc
    .unknown
    .none
    (.BTy_object .OTy_pointer)
    [(rt! "ty" 16930491615947487770, .BTy_ctype), (rt! "x" 16562859848569467201, .BTy_storable)] <|
  .Expr [.Aloc .unknown] <|
  .Ewseq
    (.Pattern
      [.Aloc .unknown]
      (.CaseBase (.some (rt! "p" 7187156974425934), .BTy_object .OTy_pointer)))
    (.Expr [.Aloc .unknown] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
    .Create
      (.Pexpr
        [.Aloc .unknown]
        ()
        (.PEctor .Civalignof [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty" 16930491615947487770))]))
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty" 16930491615947487770)))
      (.PrefOther "Core")) <| .Expr [.Aloc .unknown] <|
  .Ewseq
    (.Pattern [.Aloc .unknown] (.CaseBase (.none, .BTy_unit)))
    (.Expr [.Aloc .unknown] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
    .Store0
      .false
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty" 16930491615947487770)))
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "p" 7187156974425934)))
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "x" 16562859848569467201)))
      .NA)
    (.Expr
      [.Aloc .unknown]
      (.Epure (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "p" 7187156974425934)))))

def wrapI : Procedure :=
  .Fun
    (.BTy_object .OTy_integer)
    [(rt! "ty" 16930491615947487770, .BTy_ctype),
     (rt! "n" 8148669997605808657, .BTy_object .OTy_integer)] <| .Pexpr [.Aloc .unknown] () <|
  .PElet
    (.Pattern
      [.Aloc .unknown]
      (.CaseBase (.some (rt! "dlt" 247316176192104602), .BTy_object .OTy_integer)))
    (.Pexpr [.Aloc .unknown] () <|
    .PEop
      .OpAdd
      (.Pexpr [.Aloc .unknown] () <|
      .PEop
        .OpSub
        (.Pexpr
          [.Aloc .unknown]
          ()
          (.PEctor .Civmax [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty" 16930491615947487770))])) <|
      .Pexpr
        [.Aloc .unknown]
        ()
        (.PEctor .Civmin [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty" 16930491615947487770))]))
      (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1)))))) <|
  .Pexpr [.Aloc .unknown] () <|
  .PElet
    (.Pattern
      [.Aloc .unknown]
      (.CaseBase (.some (rt! "r" 11123243248953317070), .BTy_object .OTy_integer)))
    (.Pexpr [.Aloc .unknown] () <|
    .PEop
      .OpRem_f
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657)))
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "dlt" 247316176192104602)))) <|
  .Pexpr [.Aloc .unknown] () <|
  .PEif
    (.Pexpr [.Aloc .unknown] () <|
    .PEop .OpLe (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "r" 11123243248953317070))) <|
    .Pexpr
      [.Aloc .unknown]
      ()
      (.PEctor .Civmax [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty" 16930491615947487770))]))
    (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "r" 11123243248953317070))) <|
  .Pexpr [.Aloc .unknown] () <|
  .PEop
    .OpSub
    (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "r" 11123243248953317070)))
    (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "dlt" 247316176192104602)))

def rev_listFromStr_aux : Procedure :=
  .Proc
    .unknown
    .none
    (.BTy_list (.BTy_object .OTy_integer))
    [(rt! "str" 10796804682411823810, .BTy_object .OTy_pointer),
     (rt! "acc" 11392283251719094476, .BTy_list (.BTy_object .OTy_integer))] <|
  .Expr [.Aloc .unknown] <|
  .Esseq
    (.Pattern
      [.Aloc .unknown]
      (.CaseBase (.some (rt! "shifted" 16239836281909484550), .BTy_object .OTy_pointer)))
    (.Expr [.Aloc .unknown] <| .Ememop .PtrArrayShift <|
    [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "str" 10796804682411823810)),
     .Pexpr [.Aloc .unknown] () (.PEval (.Vctype Ty.char)),
     .Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))]) <|
  .Expr [.Aloc .unknown] <|
  .Esseq
    (.Pattern
      [.Aloc .unknown]
      (.CaseBase (.some (rt! "c_" 6607822189882850928), .BTy_loaded .OTy_integer)))
    (.Expr [.Aloc .unknown] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
    .Load0
      (.Pexpr [.Aloc .unknown] () (.PEval (.Vctype Ty.char)))
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "shifted" 16239836281909484550)))
      .NA) <| .Expr [.Aloc .unknown] <|
  .Ecase (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "c_" 6607822189882850928))) <|
  [(.Pattern [.Aloc .unknown] <| .CaseCtor .Cspecified <|
    [.Pattern
       [.Aloc .unknown]
       (.CaseBase (.some (rt! "c" 5097672513440128799), .BTy_object .OTy_integer))],
    .Expr [.Aloc .unknown] <|
    .Eif
      (.Pexpr [.Aloc .unknown] () <|
      .PEop
        .OpEq
        (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "c" 5097672513440128799)))
        (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
      (.Expr
        [.Aloc .unknown]
        (.Epure (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "acc" 11392283251719094476))))) <|
    .Expr [.Aloc .unknown] <|
    .Esseq
      (.Pattern
        [.Aloc .unknown]
        (.CaseBase (.some (rt! "shifted" 16239836281909484550), .BTy_object .OTy_pointer)))
      (.Expr [.Aloc .unknown] <| .Ememop .PtrArrayShift <|
      [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "str" 10796804682411823810)),
       .Pexpr [.Aloc .unknown] () (.PEval (.Vctype Ty.char)),
       .Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1))))]) <|
    .Expr [.Aloc .unknown] <|
    .Esseq
      (.Pattern
        [.Aloc .unknown]
        (.CaseBase (.some (rt! "ret" 12549183010339808375), .BTy_list (.BTy_object .OTy_integer))))
      (.Expr [.Aloc .unknown] <|
      .Eproc () (.Sym (rt! "rev_listFromStr_aux" 15685637226092944688)) <|
      [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "shifted" 16239836281909484550)),
       .Pexpr [.Aloc .unknown] () <| .PEctor .Ccons <|
       [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "c" 5097672513440128799)),
        .Pexpr [.Aloc .unknown] () (.PEsym (rt! "acc" 11392283251719094476))]]) <|
    .Expr
      [.Aloc .unknown]
      (.Epure (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ret" 12549183010339808375))))),
   (.Pattern
      [.Aloc .unknown]
      (.CaseCtor .Cunspecified [.Pattern [.Aloc .unknown] (.CaseBase (.none, .BTy_ctype))]),
    .Expr
      [.Aloc .unknown]
      (.Epure (.Pexpr [.Aloc .unknown] () (.PEundef .unknown (.DUMMY "rev_listFromStr_aux")))))]

def conv_int : Procedure :=
  .Fun
    (.BTy_object .OTy_integer)
    [(rt! "ty" 16930491615947487770, .BTy_ctype),
     (rt! "n" 8148669997605808657, .BTy_object .OTy_integer)] <| .Pexpr [.Aloc .unknown] () <|
  .PEif
    (.Pexpr [.Aloc .unknown] () <|
    .PEop
      .OpEq
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty" 16930491615947487770)))
      (.Pexpr [.Aloc .unknown] () (.PEval (.Vctype (.Ctype [] (.Basic (.Integer .Bool0)))))))
    (.Pexpr [.Aloc .unknown] () <|
    .PEif
      (.Pexpr [.Aloc .unknown] () <|
      .PEop
        .OpEq
        (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657)))
        (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0))))))
      (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0)))))
      (.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 1)))))) <|
  .Pexpr [.Aloc .unknown] () <|
  .PEif
    (.Pexpr [.Aloc .unknown] () <|
    .PEcall (.Sym (rt! "is_representable_integer" 7764867060197914680)) <|
    [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657)),
     .Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty" 16930491615947487770))])
    (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657))) <|
  .Pexpr [.Aloc .unknown] () <|
  .PEif
    (.Pexpr
      [.Aloc .unknown]
      ()
      (.PEis_unsigned (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty" 16930491615947487770)))))
    (.Pexpr [.Aloc .unknown] () <| .PEcall (.Sym (rt! "wrapI" 14671517598387306907)) <|
    [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty" 16930491615947487770)),
     .Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657))]) <|
  .Pexpr [.Aloc .unknown] () <| .PEcall (.Impl .Integer__conv_nonrepresentable_signed_integer) <|
  [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ty" 16930491615947487770)),
   .Pexpr [.Aloc .unknown] () (.PEsym (rt! "n" 8148669997605808657))]

/-- `int printf_proxy(const char *tmp_ptr, ...)` -/
def printf_proxy : Procedure :=
  .Proc
    .unknown
    .none
    (.BTy_loaded .OTy_integer)
    [(rt! "tmp_ptr" 16738159453619343385, .BTy_object .OTy_pointer),
     (rt! "args" 1158926163250918684, .BTy_list (.BTy_tuple [.BTy_ctype, .BTy_object .OTy_pointer]))] <|
  .Expr [.Aloc .unknown] <|
  .Esseq
    (.Pattern
      [.Aloc .unknown]
      (.CaseBase (.some (rt! "frmt_ptr_" 8978911404503568190), .BTy_loaded .OTy_pointer)))
    (.Expr [.Aloc .unknown] <| .Eaction <| .Paction .Pos <| .Action .unknown () <|
    .Load0
      (.Pexpr
        [.Aloc .unknown]
        ()
        (.PEval (.Vctype (.Ctype [] (.Pointer (.mk .false .false .false) Ty.char)))))
      (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "tmp_ptr" 16738159453619343385)))
      .NA) <| .Expr [.Aloc .unknown] <|
  .Ecase (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "frmt_ptr_" 8978911404503568190))) <|
  [(.Pattern [.Aloc .unknown] <| .CaseCtor .Cspecified <|
    [.Pattern
       [.Aloc .unknown]
       (.CaseBase (.some (rt! "frmt_ptr" 9216459776920970856), .BTy_object .OTy_pointer))],
    .Expr [.Aloc .unknown] <|
    .Esseq
      (.Pattern
        [.Aloc .unknown]
        (.CaseBase (.some (rt! "xs" 12143636885177305775), .BTy_list (.BTy_object .OTy_integer))))
      (.Expr [.Aloc .unknown] <|
      .Eproc
        ()
        (.Sym (rt! "listFromStr" 5936063570170363975))
        [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "frmt_ptr" 9216459776920970856))]) <|
    .Expr [.Aloc .unknown] <|
    .Esseq
      (.Pattern
        [.Aloc .unknown]
        (.CaseBase (.some (rt! "ret" 12549183010339808375), .BTy_loaded .OTy_integer)))
      (.Expr [.Aloc .unknown] <| .Eproc () (.Impl (.BuiltinFunction "printf")) <|
      [.Pexpr [.Aloc .unknown] () (.PEsym (rt! "xs" 12143636885177305775)),
       .Pexpr [.Aloc .unknown] () (.PEsym (rt! "args" 1158926163250918684))]) <|
    .Expr
      [.Aloc .unknown]
      (.Epure (.Pexpr [.Aloc .unknown] () (.PEsym (rt! "ret" 12549183010339808375))))),
   (.Pattern
      [.Aloc .unknown]
      (.CaseCtor .Cunspecified [.Pattern [.Aloc .unknown] (.CaseBase (.none, .BTy_ctype))]),
    .Expr
      [.Aloc .unknown]
      (.Epure (.Pexpr [.Aloc .unknown] () (.PEundef .unknown (.DUMMY "printf_proxy")))))]

def params_length : Procedure :=
  .Fun (.BTy_object .OTy_integer) [(rt! "cs" 3411606890003347522, .BTy_list .BTy_ctype)] <|
  .Pexpr [.Aloc .unknown] () <| .PEcall (.Sym (rt! "params_length_aux" 9897128682148399964)) <|
  [.Pexpr [.Aloc .unknown] () (.PEval (.Vobject (.OVinteger (.IV .Prov_none 0)))),
   .Pexpr [.Aloc .unknown] () (.PEsym (rt! "cs" 3411606890003347522))]

end Support
