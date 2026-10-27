import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A288000: Expansion of 1/((1-x)(1-x^3)(1-x^5) ... (1-x^17)).

The programs for A288000, there is no canonical definition to state claims against.
-/

/-! ## A288000.P2708018062266556292

`A259094(A155212(n+5))`
-/

namespace A288000.P2708018062266556292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A155212 (n + 5)).toNat

end

end A288000.P2708018062266556292

/-! ## A288000.P5912975758932012962

`A259094(A055999(n+6)-2)`
-/

namespace A288000.P5912975758932012962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A055999 (n + 6) - 2).toNat

end

end A288000.P5912975758932012962

/-! ## A288000.P5714641813856998152

`A259094(A046691(n+7)-4)`
-/

namespace A288000.P5714641813856998152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A046691 (n + 7) - 4).toNat

end

end A288000.P5714641813856998152

/-! ## A288000.P3331695304916628397

`A259094(A000124(n+9)-9)`
-/

namespace A288000.P3331695304916628397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A000124 (n + 9) - 9).toNat

end

end A288000.P3331695304916628397

/-! ## A288000.P11206306318669982233

`A259094(A152947(n+11)-9)`
-/

namespace A288000.P11206306318669982233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A152947 (n + 11) - 9).toNat

end

end A288000.P11206306318669982233

/-! ## A288000.P11147061933343033039

`A259094(A000217(n+8)+n+1)`
-/

namespace A288000.P11147061933343033039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A000217 (n + 8) + (n + 1 : ℤ)).toNat

end

end A288000.P11147061933343033039

/-!
# A288001: Expansion of 1/((1-x)(1-x^3)(1-x^5) ... (1-x^19)).

The programs for A288001, there is no canonical definition to state claims against.
-/

/-! ## A288001.P12022370926921892953

`A259094(A056000(n+6)+1)`
-/

namespace A288001.P12022370926921892953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A056000 (n + 6) + 1).toNat

end

end A288001.P12022370926921892953

/-! ## A288001.P3531363321609934599

`A259094(A055999(n+7)-3)`
-/

namespace A288001.P3531363321609934599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A055999 (n + 7) - 3).toNat

end

end A288001.P3531363321609934599

/-! ## A288001.P8690991481505845848

`A259094(A052905(n+7)-4)`
-/

namespace A288001.P8690991481505845848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A052905 (n + 7) - 4).toNat

end

end A288001.P8690991481505845848

/-! ## A288001.P11766245101482623041

`A259094(A046691(n+8)-5)`
-/

namespace A288001.P11766245101482623041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A046691 (n + 8) - 5).toNat

end

end A288001.P11766245101482623041

/-! ## A288001.P17832168281428521706

`A259094(A055998(n+8)-6)`
-/

namespace A288001.P17832168281428521706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A055998 (n + 8) - 6).toNat

end

end A288001.P17832168281428521706

/-! ## A288001.P2748060233917499502

`A259094(A034856(n+9)-7)`
-/

namespace A288001.P2748060233917499502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A034856 (n + 9) - 7).toNat

end

end A288001.P2748060233917499502

/-! ## A288001.P7173679122533940893

`A259094(A000124(n+10)-10)`
-/

namespace A288001.P7173679122533940893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A000124 (n + 10) - 10).toNat

end

end A288001.P7173679122533940893

/-! ## A288001.P11641268611815140684

`A259094(n+1+A000217(n+9))`
-/

namespace A288001.P11641268611815140684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 ((n + 1 : ℤ) + A000217 (n + 9)).toNat

end

end A288001.P11641268611815140684

/-! ## A288001.P14957330877123402322

`A259094(A241848(n+6)-A167487(n))`
-/

namespace A288001.P14957330877123402322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A241848 (n + 6) - A167487 n).toNat

end

end A288001.P14957330877123402322

/-! ## A288001.P6449742659014528518

`A259094(A167614(n+5)+A130824(n+6))`
-/

namespace A288001.P6449742659014528518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (A167614 (n + 5) + A130824 (n + 6)).toNat

end

end A288001.P6449742659014528518

/-! ## A288001.P2847969834590100362

`A259094(A005475(n+8)%A027688(n+7))`
-/

namespace A288001.P2847969834590100362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259094 (Int.tmod (A005475 (n + 8)) (A027688 (n + 7))).toNat

end

end A288001.P2847969834590100362

/-!
# A288002: L-fusc, sequence l of the mutual diatomic recurrence pair: l(1)=0, r(1)=1, l(2n) = l(n), r(2n) = r(n), l(2n+1) = l(n)+r(n), r(2n+1) = l(n+1)+r(n+1), where r(n) = A288003(n).

The programs for A288002, the canonical program `A288002.P13918482005494738107` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288002 has offset 1).

The definition of A288002 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007306, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A288002.P15457764666504012791

`A002487(n+1)-A288003(n+1)`
-/

namespace A288002.P15457764666504012791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) - A288003 (n + 1)

end

end A288002.P15457764666504012791

namespace A288002

/-- `A002487(n+1)-A288003(n+1)` -/
def P15457764666504012791.Spec : Prop :=
  ∀ n, P15457764666504012791.a n = A288002 (n + 1)

theorem P15457764666504012791.correct : P15457764666504012791.Spec := by
  intro n
  simp only [A288002, Nat.add_sub_cancel, A288002.P15457764666504012791.a, A288002.P13918482005494738107.a, A002487, A002487.P6236436194084017932.a, A007306, A007306.P17183682227013142410.a, A287896, A287896.P4517701552711881970.a, A288003, A288003.P13602552641808821543.a, A000120, A000120.P2816527436160941581.a, A001511, A001511.P17146462531039486101.a, A003602, A003602.P7612175048291952394.a, A168081, A168081.P16359451533663323532.a, A005187, A005187.P3874015513960485494.a, A006519, A006519.P10435570611646570274.a, A110963, A110963.P3344771894533151408.a, A025480, A025480.P15873863116418380882.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A288002

/-! ## A288002.P13918482005494738107

`A007306(n+1)-A287896(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A288002

/-- `A007306(n+1)-A287896(n+1)` -/
def P13918482005494738107.Spec : Prop :=
  ∀ n, P13918482005494738107.a n = A288002 (n + 1)

theorem P13918482005494738107.correct : P13918482005494738107.Spec := by
  intro n
  simp only [A288002, Nat.add_sub_cancel]

end A288002

/-! ## A288002.P445027742153475948

`A007306(n+1)%A002487(n+1)`
-/

namespace A288002.P445027742153475948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007306 (n + 1)) (A002487 (n + 1))

end

end A288002.P445027742153475948

namespace A288002

/-- `A007306(n+1)%A002487(n+1)` -/
def P445027742153475948.Spec : Prop :=
  ∀ n, P445027742153475948.a n = A288002 (n + 1)

end A288002

/-! ## A288002.P18189285388315908996

`A002487(n+1)-A002487(A003602(n+1))`
-/

namespace A288002.P18189285388315908996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) - A002487 (A003602 (n + 1)).toNat

end

end A288002.P18189285388315908996

namespace A288002

/-- `A002487(n+1)-A002487(A003602(n+1))` -/
def P18189285388315908996.Spec : Prop :=
  ∀ n, P18189285388315908996.a n = A288002 (n + 1)

end A288002

/-! ## A288002.P12003706300985951904

`A002487(and(n, n+1))`
-/

namespace A288002.P12003706300985951904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Nat.land n (n + 1))

end

end A288002.P12003706300985951904

namespace A288002

/-- `A002487(and(n, n+1))` -/
def P12003706300985951904.Spec : Prop :=
  ∀ n, P12003706300985951904.a n = A288002 (n + 1)

end A288002

/-! ## A288002.P11080559896362897469

`A283976(and(n, n+1))`
-/

namespace A288002.P11080559896362897469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283976 (Nat.land n (n + 1))

end

end A288002.P11080559896362897469

namespace A288002

/-- `A283976(and(n, n+1))` -/
def P11080559896362897469.Spec : Prop :=
  ∀ n, P11080559896362897469.a n = A288002 (n + 1)

end A288002

/-! ## A288002.P7590651016220242922

`A283977(and(n, n+1))`
-/

namespace A288002.P7590651016220242922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283977 (Nat.land n (n + 1))

end

end A288002.P7590651016220242922

namespace A288002

/-- `A283977(and(n, n+1))` -/
def P7590651016220242922.Spec : Prop :=
  ∀ n, P7590651016220242922.a n = A288002 (n + 1)

end A288002

/-! ## A288002.P6030288732786774891

`A295515(and(n, n+1)+1)`
-/

namespace A288002.P6030288732786774891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (Nat.land n (n + 1) + 1)

end

end A288002.P6030288732786774891

namespace A288002

/-- `A295515(and(n, n+1)+1)` -/
def P6030288732786774891.Spec : Prop :=
  ∀ n, P6030288732786774891.a n = A288002 (n + 1)

end A288002

/-! ## A288002.P2564375687671930117

`∑{d}[and(n, n+1)/2, A317839(#)]`
-/

namespace A288002.P2564375687671930117
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land n (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A317839 d

end

end A288002.P2564375687671930117

namespace A288002

/-- `∑{d}[and(n, n+1)/2, A317839(#)]` -/
def P2564375687671930117.Spec : Prop :=
  ∀ n, P2564375687671930117.a n = A288002 (n + 1)

end A288002

/-! ## A288002.P5299685091745502253

`A002487(Δ[n²]-or(n, n+1))`
-/

namespace A288002.P5299685091745502253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (Nat.lor n (n + 1) : ℤ)).toNat

end

end A288002.P5299685091745502253

namespace A288002

/-- `A002487(Δ[n²]-or(n, n+1))` -/
def P5299685091745502253.Spec : Prop :=
  ∀ n, P5299685091745502253.a n = A288002 (n + 1)

end A288002

/-! ## A288002.P16876640254303862600

`A002487(Δ[n²]%or(n, n+1))`
-/

namespace A288002.P16876640254303862600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (Nat.lor n (n + 1) : ℤ)).toNat

end

end A288002.P16876640254303862600

namespace A288002

/-- `A002487(Δ[n²]%or(n, n+1))` -/
def P16876640254303862600.Spec : Prop :=
  ∀ n, P16876640254303862600.a n = A288002 (n + 1)

end A288002

/-! ## A288002.P14971964969362789443

`A002487(floor(n/2^val(n+1, 2)))`
-/

namespace A288002.P14971964969362789443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋.toNat

end

end A288002.P14971964969362789443

namespace A288002

/-- `A002487(floor(n/2^val(n+1, 2)))` -/
def P14971964969362789443.Spec : Prop :=
  ∀ n, P14971964969362789443.a n = A288002 (n + 1)

end A288002

/-! ## A288002.P9435908992207009000

`A002487(or(n, -(n+2))+n+2)`
-/

namespace A288002.P9435908992207009000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (Int.lor (n : ℤ) (-(n + 2 : ℤ)) + (n + 2 : ℤ)).toNat

end

end A288002.P9435908992207009000

namespace A288002

/-- `A002487(or(n, -(n+2))+n+2)` -/
def P9435908992207009000.Spec : Prop :=
  ∀ n, P9435908992207009000.a n = A288002 (n + 1)

end A288002

/-! ## A288002.P7975726517326739831

`A002487(A025480(n))`
-/

namespace A288002.P7975726517326739831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A025480 n).toNat

end

end A288002.P7975726517326739831

namespace A288002

/-- `A002487(A025480(n))` -/
def P7975726517326739831.Spec : Prop :=
  ∀ n, P7975726517326739831.a n = A288002 (n + 1)

end A288002

/-! ## A288002.P5112180536773957012

`A002487(A153733(n))`
-/

namespace A288002.P5112180536773957012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A153733 n).toNat

end

end A288002.P5112180536773957012

namespace A288002

/-- `A002487(A153733(n))` -/
def P5112180536773957012.Spec : Prop :=
  ∀ n, P5112180536773957012.a n = A288002 (n + 1)

end A288002

/-! ## A288002.P12014911856133170122

`A002487(A104594(n+1))`
-/

namespace A288002.P12014911856133170122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A104594 (n + 1)).toNat

end

end A288002.P12014911856133170122

namespace A288002

/-- `A002487(A104594(n+1))` -/
def P12014911856133170122.Spec : Prop :=
  ∀ n, P12014911856133170122.a n = A288002 (n + 1)

end A288002

/-! ## A288002.P3204284516504828605

`A002487(A129760(n+1))`
-/

namespace A288002.P3204284516504828605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A129760 (n + 1)).toNat

end

end A288002.P3204284516504828605

namespace A288002

/-- `A002487(A129760(n+1))` -/
def P3204284516504828605.Spec : Prop :=
  ∀ n, P3204284516504828605.a n = A288002 (n + 1)

end A288002

/-! ## A288002.P720504792476357778

`A295515(A000265(n+1))`
-/

namespace A288002.P720504792476357778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A000265 (n + 1)).toNat

end

end A288002.P720504792476357778

namespace A288002

/-- `A295515(A000265(n+1))` -/
def P720504792476357778.Spec : Prop :=
  ∀ n, P720504792476357778.a n = A288002 (n + 1)

end A288002

/-! ## A288002.P6142409735593944141

`A295515(A322250(n+1))`
-/

namespace A288002.P6142409735593944141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A322250 (n + 1)).toNat

end

end A288002.P6142409735593944141

namespace A288002

/-- `A295515(A322250(n+1))` -/
def P6142409735593944141.Spec : Prop :=
  ∀ n, P6142409735593944141.a n = A288002 (n + 1)

end A288002

/-! ## A288002.P2016087690750661701

`A002487(n-A135481(n))`
-/

namespace A288002.P2016087690750661701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 ((n : ℤ) - A135481 n).toNat

end

end A288002.P2016087690750661701

namespace A288002

/-- `A002487(n-A135481(n))` -/
def P2016087690750661701.Spec : Prop :=
  ∀ n, P2016087690750661701.a n = A288002 (n + 1)

end A288002

/-!
# A288003: R-fusc, sequence r of the mutual diatomic recurrence pair: l(1)=0, r(1)=1, l(2n) = l(n), r(2n) = r(n), l(2n+1) = l(n)+r(n), r(2n+1) = l(n+1)+r(n+1), where l(n) = A288002(n).

The programs for A288003, the canonical program `A288003.P13602552641808821543` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288003 has offset 1).

The definition of A288003 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A288002, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A288003.P13602552641808821543

`A002487(n+1)-A288002(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A288003

/-- `A002487(n+1)-A288002(n+1)` -/
def P13602552641808821543.Spec : Prop :=
  ∀ n, P13602552641808821543.a n = A288003 (n + 1)

theorem P13602552641808821543.correct : P13602552641808821543.Spec := by
  intro n
  simp only [A288003, Nat.add_sub_cancel]

end A288003

/-! ## A288003.P12234719702761519015

`A002487(floor(n/2^val(n+1, 2))+2)`
-/

namespace A288003.P12234719702761519015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (⌊(n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)⌋ + 2).toNat

end

end A288003.P12234719702761519015

namespace A288003

/-- `A002487(floor(n/2^val(n+1, 2))+2)` -/
def P12234719702761519015.Spec : Prop :=
  ∀ n, P12234719702761519015.a n = A288003 (n + 1)

end A288003

/-! ## A288003.P13173635259290220770

`A002487(floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A288003.P13173635259290220770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

end

end A288003.P13173635259290220770

namespace A288003

/-- `A002487(floor(n/(xor(n, n+1)+1))+1)` -/
def P13173635259290220770.Spec : Prop :=
  ∀ n, P13173635259290220770.a n = A288003 (n + 1)

end A288003

/-! ## A288003.P12826561655821434220

`A002487((n+1)/2^val(n+1, 2)+1)`
-/

namespace A288003.P12826561655821434220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1)).toNat

end

end A288003.P12826561655821434220

namespace A288003

/-- `A002487((n+1)/2^val(n+1, 2)+1)` -/
def P12826561655821434220.Spec : Prop :=
  ∀ n, P12826561655821434220.a n = A288003 (n + 1)

end A288003

/-! ## A288003.P1850417193353600644

`A002487((n+1)/(or(n, n+1)-n)+1)`
-/

namespace A288003.P1850417193353600644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ) + 1)).toNat

end

end A288003.P1850417193353600644

namespace A288003

/-- `A002487((n+1)/(or(n, n+1)-n)+1)` -/
def P1850417193353600644.Spec : Prop :=
  ∀ n, P1850417193353600644.a n = A288003 (n + 1)

end A288003

/-! ## A288003.P16987274299253664743

`A002487(floor(n/and(n+1, -(n+1)))+2)`
-/

namespace A288003.P16987274299253664743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (⌊(n : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋ + 2).toNat

end

end A288003.P16987274299253664743

namespace A288003

/-- `A002487(floor(n/and(n+1, -(n+1)))+2)` -/
def P16987274299253664743.Spec : Prop :=
  ∀ n, P16987274299253664743.a n = A288003 (n + 1)

end A288003

/-! ## A288003.P1994693780256591724

`A002487((n+1)*2^-val(n+1, 2)+1)`
-/

namespace A288003.P1994693780256591724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ) + 1)).toNat

end

end A288003.P1994693780256591724

namespace A288003

/-- `A002487((n+1)*2^-val(n+1, 2)+1)` -/
def P1994693780256591724.Spec : Prop :=
  ∀ n, P1994693780256591724.a n = A288003 (n + 1)

end A288003

/-! ## A288003.P16548694755425792129

`A002487(2^(log2(n+1)-val(n+1, 2))+1)`
-/

namespace A288003.P16548694755425792129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (Real.logb 2 (n + 1 : ℝ) - (SequenceMachineLib.valuation (n + 1) 2 : ℝ)) + 1)).toNat

end

end A288003.P16548694755425792129

namespace A288003

/-- `A002487(2^(log2(n+1)-val(n+1, 2))+1)` -/
def P16548694755425792129.Spec : Prop :=
  ∀ n, P16548694755425792129.a n = A288003 (n + 1)

end A288003

/-! ## A288003.P14735592222681714362

`A002487((n+1)/and(n+1, -(n+1))+1)`
-/

namespace A288003.P14735592222681714362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ) + 1)).toNat

end

end A288003.P14735592222681714362

namespace A288003

/-- `A002487((n+1)/and(n+1, -(n+1))+1)` -/
def P14735592222681714362.Spec : Prop :=
  ∀ n, P14735592222681714362.a n = A288003 (n + 1)

end A288003

/-! ## A288003.P18429032657178655208

`A002487((n+1)/ceil(xor(n, n+1)/2)+1)`
-/

namespace A288003.P18429032657178655208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ) + 1)).toNat

end

end A288003.P18429032657178655208

namespace A288003

/-- `A002487((n+1)/ceil(xor(n, n+1)/2)+1)` -/
def P18429032657178655208.Spec : Prop :=
  ∀ n, P18429032657178655208.a n = A288003 (n + 1)

end A288003

/-! ## A288003.P85136725721146744

`A002487((n+1)/round(xor(n, n+1)/2)+1)`
-/

namespace A288003.P85136725721146744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (SequenceMachineLib.roundAway ((Nat.xor n (n + 1) : ℚ) / 2) : ℚ) + 1)).toNat

end

end A288003.P85136725721146744

namespace A288003

/-- `A002487((n+1)/round(xor(n, n+1)/2)+1)` -/
def P85136725721146744.Spec : Prop :=
  ∀ n, P85136725721146744.a n = A288003 (n + 1)

end A288003

/-! ## A288003.P2751100423698778381

`A392671(A101925(n))`
-/

namespace A288003.P2751100423698778381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392671 (A101925 n).toNat

end

end A288003.P2751100423698778381

namespace A288003

/-- `A392671(A101925(n))` -/
def P2751100423698778381.Spec : Prop :=
  ∀ n, P2751100423698778381.a n = A288003 (n + 1)

end A288003

/-! ## A288003.P17859641637025589119

`A002487(A003602(n+1))`
-/

namespace A288003.P17859641637025589119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A003602 (n + 1)).toNat

end

end A288003.P17859641637025589119

namespace A288003

/-- `A002487(A003602(n+1))` -/
def P17859641637025589119.Spec : Prop :=
  ∀ n, P17859641637025589119.a n = A288003 (n + 1)

end A288003

/-! ## A288003.P470456131328905417

`A002487(A025480(n)+1)`
-/

namespace A288003.P470456131328905417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A025480 n + 1).toNat

end

end A288003.P470456131328905417

namespace A288003

/-- `A002487(A025480(n)+1)` -/
def P470456131328905417.Spec : Prop :=
  ∀ n, P470456131328905417.a n = A288003 (n + 1)

end A288003

/-! ## A288003.P3604068174493842480

`A002487(A109168(n+1))`
-/

namespace A288003.P3604068174493842480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A109168 (n + 1)).toNat

end

end A288003.P3604068174493842480

namespace A288003

/-- `A002487(A109168(n+1))` -/
def P3604068174493842480.Spec : Prop :=
  ∀ n, P3604068174493842480.a n = A288003 (n + 1)

end A288003

/-! ## A288003.P3056027998341742600

`A002487(A109170(n+1))`
-/

namespace A288003.P3056027998341742600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A109170 (n + 1)).toNat

end

end A288003.P3056027998341742600

namespace A288003

/-- `A002487(A109170(n+1))` -/
def P3056027998341742600.Spec : Prop :=
  ∀ n, P3056027998341742600.a n = A288003 (n + 1)

end A288003

/-! ## A288003.P15225558534100838087

`A007306(A110963(n+1))`
-/

namespace A288003.P15225558534100838087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A110963 (n + 1)).toNat

end

end A288003.P15225558534100838087

namespace A288003

/-- `A007306(A110963(n+1))` -/
def P15225558534100838087.Spec : Prop :=
  ∀ n, P15225558534100838087.a n = A288003 (n + 1)

end A288003

/-! ## A288003.P10889803349545996346

`A002487(A140472(n+1))`
-/

namespace A288003.P10889803349545996346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A140472 (n + 1)).toNat

end

end A288003.P10889803349545996346

namespace A288003

/-- `A002487(A140472(n+1))` -/
def P10889803349545996346.Spec : Prop :=
  ∀ n, P10889803349545996346.a n = A288003 (n + 1)

end A288003

/-! ## A288003.P14604236896524370219

`A002487(A351565(n+1))`
-/

namespace A288003.P14604236896524370219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A351565 (n + 1)).toNat

end

end A288003.P14604236896524370219

namespace A288003

/-- `A002487(A351565(n+1))` -/
def P14604236896524370219.Spec : Prop :=
  ∀ n, P14604236896524370219.a n = A288003 (n + 1)

end A288003

/-! ## A288003.P9705265014381558786

`A002487(A153733(n)+2)`
-/

namespace A288003.P9705265014381558786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A153733 n + 2).toNat

end

end A288003.P9705265014381558786

namespace A288003

/-- `A002487(A153733(n)+2)` -/
def P9705265014381558786.Spec : Prop :=
  ∀ n, P9705265014381558786.a n = A288003 (n + 1)

end A288003

/-!
# A288004: The Chain Hereditary Form. For n > 0, let j(n) = A289342(n) and construct two intervals around j(n) of length r(n) = A288003(n): old = flip([j(n)-[0:r(n)-1]]) to the left of j(n) and new = [j(n)+[1:r(n)]] to the right of j(n). Let a(0) = 1; and for n > 0 and for each point in the intervals set a(new[1..r(n)]) = a(old[1..r(n)]) if l-fusc A288002(n) > 0 and a(new[1..r(n)]) = ~a(old[1..r(n)]) if l-fusc A288002(n) == 0.

The programs for A288004, there is no canonical definition to state claims against.
-/

/-! ## A288004.P11150625837110141410

`A096270(A227568(n)+A211100(A004890(n+1)))`
-/

namespace A288004.P11150625837110141410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (A227568 n + A211100 (A004890 (n + 1)).toNat).toNat

end

end A288004.P11150625837110141410

/-! ## A288004.P25874590986514138

`A144611(or(floor((n/2)²), A017912(n)))`
-/

namespace A288004.P25874590986514138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (Int.lor ⌊((n : ℚ) / 2) ^ 2⌋ (A017912 n)).toNat

end

end A288004.P25874590986514138

/-! ## A288004.P6448920715262375995

`A188967(A250120(n)+A129919(3*n+4))`
-/

namespace A288004.P6448920715262375995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188967 (A250120 n + A129919 (3 * n + 4)).toNat

end

end A288004.P6448920715262375995

/-! ## A288004.P9905941403827574821

`A003849(A325468(2*n)+∑{digits}[n, #])`
-/

namespace A288004.P9905941403827574821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A325468 (2 * n) + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat

end

end A288004.P9905941403827574821

/-! ## A288004.P11165168262540630797

`and(A027960(n), A266754(A076586(n+2)))`
-/

namespace A288004.P11165168262540630797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027960 n) (A266754 (A076586 (n + 2)).toNat)

end

end A288004.P11165168262540630797

/-!
# A288005: Number of symmetrical fountains of n coins.

The programs for A288005, there is no canonical definition to state claims against.
-/

/-! ## A288005.P3931519582836567207

`2*A288006(n)-A005169(n)`
-/

namespace A288005.P3931519582836567207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288006 n - A005169 n

end

end A288005.P3931519582836567207

/-! ## A288005.P16779457413323895936

`2*A288006(n)-∑[A289080(n)]`
-/

namespace A288005.P16779457413323895936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288006 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288005.P16779457413323895936

/-! ## A288005.P11566341456524735837

`2*A288006(n)-A168396(A152947(n+1))`
-/

namespace A288005.P11566341456524735837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288006 n - A168396 (A152947 (n + 1)).toNat

end

end A288005.P11566341456524735837

/-! ## A288005.P6644196987227374805

`2*A288006(n)-A168396(∑[n-A158388(n)])`
-/

namespace A288005.P6644196987227374805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A158388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288006 n - A168396 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A288005.P6644196987227374805

/-! ## A288005.P7891315820253943268

`2*A288006(n)-A168396(A008795(2*n)-2*n)`
-/

namespace A288005.P7891315820253943268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288006 n - A168396 (A008795 (2 * n) - (2 * n : ℤ)).toNat

end

end A288005.P7891315820253943268

/-! ## A288005.P11258693029967467869

`2*A288006(n)-A185646(2*n²)`
-/

namespace A288005.P11258693029967467869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288006 n - A185646 (2 * n ^ 2)

end

end A288005.P11258693029967467869

/-!
# A288006: Number of distinct fountains of n coins.

The programs for A288006, there is no canonical definition to state claims against.
-/

/-! ## A288006.P8159483861485814486

`(A005169(n)+A288005(n))/2`
-/

namespace A288006.P8159483861485814486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005169 n + A288005 n : ℚ) / 2

end

end A288006.P8159483861485814486

/-! ## A288006.P12045937743065274870

`A289436(A288005(n)+A005169(n))`
-/

namespace A288006.P12045937743065274870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (A288005 n + A005169 n).toNat

end

end A288006.P12045937743065274870

/-! ## A288006.P15308605226957491320

`A032742(A288005(n)+∑[A289080(n)])`
-/

namespace A288006.P15308605226957491320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A288005 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A288006.P15308605226957491320

/-! ## A288006.P8387427084228665318

`A032742(A288005(n)+A185646(2*n²))`
-/

namespace A288006.P8387427084228665318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A288005 n + A185646 (2 * n ^ 2)).toNat

end

end A288006.P8387427084228665318

/-! ## A288006.P7363461850472792420

`A122921(A022855(n+1))`
-/

namespace A288006.P7363461850472792420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A022855 (n + 1)).toNat

end

end A288006.P7363461850472792420

/-!
# A288008: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 397", based on the 5-celled von Neumann neighborhood.

The programs for A288008, there is no canonical definition to state claims against.
-/

/-! ## A288008.P10957917690805664710

`A007088(A288010(n))`
-/

namespace A288008.P10957917690805664710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288010 n).toNat

end

end A288008.P10957917690805664710

/-! ## A288008.P4904247192529825035

`A185544(2*A288010(n))`
-/

namespace A288008.P4904247192529825035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288010 n).toNat

end

end A288008.P4904247192529825035

/-! ## A288008.P2525933061588059215

`A007088(A288663(n)-A185284(3*n))`
-/

namespace A288008.P2525933061588059215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288663 n - A185284 (3 * n)).toNat

end

end A288008.P2525933061588059215

/-! ## A288008.P3481194310495229079

`A185544(2*(A288663(n)-A185284(3*n)))`
-/

namespace A288008.P3481194310495229079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (A288663 n - A185284 (3 * n))).toNat

end

end A288008.P3481194310495229079

/-! ## A288008.P6802044992566639387

`A288661(n)%A123061(2*(n+2))`
-/

namespace A288008.P6802044992566639387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288661 n) (A123061 (2 * (n + 2)))

end

end A288008.P6802044992566639387

/-!
# A288009: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 397", based on the 5-celled von Neumann neighborhood.

The programs for A288009, there is no canonical definition to state claims against.
-/

/-! ## A288009.P2324067804671172434

`A007088(A288011(n))`
-/

namespace A288009.P2324067804671172434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288011 n).toNat

end

end A288009.P2324067804671172434

/-! ## A288009.P14819502876886965643

`A185544(2*A288011(n))`
-/

namespace A288009.P14819502876886965643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288011 n).toNat

end

end A288009.P14819502876886965643

/-! ## A288009.P12456476270552329741

`A288662(A062003(n))`
-/

namespace A288009.P12456476270552329741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288662 (A062003 n).toNat

end

end A288009.P12456476270552329741

/-! ## A288009.P15693085146869861102

`A185544(2*A288664(n))`
-/

namespace A288009.P15693085146869861102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288664 n).toNat

end

end A288009.P15693085146869861102

/-!
# A288010: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 397", based on the 5-celled von Neumann neighborhood.

The programs for A288010, there is no canonical definition to state claims against.
-/

/-! ## A288010.P1603205474521191841

`A288663(n)-A185284(3*n)`
-/

namespace A288010.P1603205474521191841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288663 n - A185284 (3 * n)

end

end A288010.P1603205474521191841

/-! ## A288010.P2225330225840329377

`xor(A185284(A008486(n)), A288663(n))`
-/

namespace A288010.P2225330225840329377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185284 (A008486 n).toNat) (A288663 n)

end

end A288010.P2225330225840329377

/-! ## A288010.P827210835618601870

`A288663(n)-A128114(A211849(n+1))`
-/

namespace A288010.P827210835618601870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288663 n - A128114 (A211849 (n + 1)).toNat

end

end A288010.P827210835618601870

/-! ## A288010.P10148248571755316710

`A185284(n)+A288663(n)-A185284(A008486(n))`
-/

namespace A288010.P10148248571755316710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + (A288663 n - A185284 (A008486 n).toNat)

end

end A288010.P10148248571755316710

/-! ## A288010.P80942557312113929

`A288663(A004895(n+1))`
-/

namespace A288010.P80942557312113929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288663 (A004895 (n + 1)).toNat

end

end A288010.P80942557312113929

/-!
# A288011: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 397", based on the 5-celled von Neumann neighborhood.

The programs for A288011, there is no canonical definition to state claims against.
-/

/-! ## A288011.P14632465669594954916

`A154470(A288664(n))`
-/

namespace A288011.P14632465669594954916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154470 (A288664 n).toNat

end

end A288011.P14632465669594954916

/-! ## A288011.P9059520101673483211

`A288664(A004895(n+1))`
-/

namespace A288011.P9059520101673483211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288664 (A004895 (n + 1)).toNat

end

end A288011.P9059520101673483211

/-! ## A288011.P10572158916391655718

`A288664(A004906(n+1))`
-/

namespace A288011.P10572158916391655718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288664 (A004906 (n + 1)).toNat

end

end A288011.P10572158916391655718

/-! ## A288011.P14028067567792868044

`A288664(A004917(n+1))`
-/

namespace A288011.P14028067567792868044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288664 (A004917 (n + 1)).toNat

end

end A288011.P14028067567792868044

/-! ## A288011.P11472711797879949709

`A060973(A279879(n+1))`
-/

namespace A288011.P11472711797879949709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A279879 (n + 1)).toNat

end

end A288011.P11472711797879949709

/-!
# A288012: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 398", based on the 5-celled von Neumann neighborhood.

The programs for A288012, there is no canonical definition to state claims against.
-/

/-! ## A288012.P7857072399274733518

`A288013(n)+A289407(n)-A289406(n)`
-/

namespace A288012.P7857072399274733518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288013 n + (A289407 n - A289406 n)

end

end A288012.P7857072399274733518

/-! ## A288012.P7629624400543695945

`A007088(A288014(n))`
-/

namespace A288012.P7629624400543695945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288014 n).toNat

end

end A288012.P7629624400543695945

/-! ## A288012.P14585048561148636535

`A185544(2*A288014(n))`
-/

namespace A288012.P14585048561148636535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288014 n).toNat

end

end A288012.P14585048561148636535

/-! ## A288012.P4728075177524704189

`A185544(A288014(n)+A288014(n))`
-/

namespace A288012.P4728075177524704189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A288014 n + A288014 n).toNat

end

end A288012.P4728075177524704189

/-! ## A288012.P2422867883543689655

`A007088(A095121(n)+1-A289408(n))`
-/

namespace A288012.P2422867883543689655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A289408 n)).toNat

end

end A288012.P2422867883543689655

/-!
# A288013: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 398", based on the 5-celled von Neumann neighborhood.

The programs for A288013, there is no canonical definition to state claims against.
-/

/-! ## A288013.P3469118289861502995

`A288012(n)+A289406(n)-A289407(n)`
-/

namespace A288013.P3469118289861502995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288012 n + (A289406 n - A289407 n)

end

end A288013.P3469118289861502995

/-! ## A288013.P7811201427315993149

`A007088(A288015(n))`
-/

namespace A288013.P7811201427315993149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288015 n).toNat

end

end A288013.P7811201427315993149

/-! ## A288013.P598352808536141774

`A007088(and(-A289409(n), A095121(n)))`
-/

namespace A288013.P598352808536141774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (-A289409 n) (A095121 n)).toNat

end

end A288013.P598352808536141774

/-! ## A288013.P16596928616946985890

`A007088(A095121(n)+1-A289409(n))`
-/

namespace A288013.P16596928616946985890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A289409 n)).toNat

end

end A288013.P16596928616946985890

/-! ## A288013.P8654902199055269324

`A007088(1-(A289409(n)-A095121(n)))`
-/

namespace A288013.P8654902199055269324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A289409 n - A095121 n)).toNat

end

end A288013.P8654902199055269324

/-!
# A288014: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 398", based on the 5-celled von Neumann neighborhood.

The programs for A288014, there is no canonical definition to state claims against.
-/

/-! ## A288014.P740427701299146105

`A095121(n)+1-A289408(n)`
-/

namespace A288014.P740427701299146105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A289408 n)

end

end A288014.P740427701299146105

/-! ## A288014.P1611556826863669612

`xor(record[A324715(n+1)], A289408(n))`
-/

namespace A288014.P1611556826863669612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A289408 n)

end

end A288014.P1611556826863669612

/-! ## A288014.P18030633353449364327

`A052955(A004277(n))-A289408(n)`
-/

namespace A288014.P18030633353449364327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A289408 n

end

end A288014.P18030633353449364327

/-! ## A288014.P15392018102450524302

`A126646(n)%A289408(A028310(n))`
-/

namespace A288014.P15392018102450524302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (A289408 (A028310 n).toNat)

end

end A288014.P15392018102450524302

/-! ## A288014.P3590817185273779735

`A288015(n)+A289409(n)-A289408(n)`
-/

namespace A288014.P3590817185273779735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288015 n + (A289409 n - A289408 n)

end

end A288014.P3590817185273779735

/-! ## A288014.P9799049362360032657

`A127330(A000124(n))-A289408(n)`
-/

namespace A288014.P9799049362360032657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (A000124 n).toNat - A289408 n

end

end A288014.P9799049362360032657

/-! ## A288014.P18351964841030367363

`A126646(n)-A289408(n)%A289406(n)`
-/

namespace A288014.P18351964841030367363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A289408 n) (A289406 n)

end

end A288014.P18351964841030367363

/-!
# A288015: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 398", based on the 5-celled von Neumann neighborhood.

The programs for A288015, there is no canonical definition to state claims against.
-/

/-! ## A288015.P6857928685353869831

`and(-A289409(n), A095121(n))`
-/

namespace A288015.P6857928685353869831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A289409 n) (A095121 n)

end

end A288015.P6857928685353869831

/-! ## A288015.P6346462425386431439

`A052955(A004277(n))-A289409(n)`
-/

namespace A288015.P6346462425386431439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A289409 n

end

end A288015.P6346462425386431439

/-! ## A288015.P12534251003081262979

`A288014(n)+A289408(n)-A289409(n)`
-/

namespace A288015.P12534251003081262979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288014 n + (A289408 n - A289409 n)

end

end A288015.P12534251003081262979

/-! ## A288015.P10740766576763511302

`and(A126646(n)*A289409(n), A095121(n))`
-/

namespace A288015.P10740766576763511302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A126646 n * A289409 n) (A095121 n)

end

end A288015.P10740766576763511302

/-! ## A288015.P9307842445646864621

`A126646(n)-A289409(n)%A289406(n)`
-/

namespace A288015.P9307842445646864621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A289409 n) (A289406 n)

end

end A288015.P9307842445646864621

/-!
# A288016: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 403", based on the 5-celled von Neumann neighborhood.

The programs for A288016, there is no canonical definition to state claims against.
-/

/-! ## A288016.P2349358101831212846

`A007088(A288018(n))`
-/

namespace A288016.P2349358101831212846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288018 n).toNat

end

end A288016.P2349358101831212846

/-! ## A288016.P17321810519128963869

`A185544(2*A288018(n))`
-/

namespace A288016.P17321810519128963869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288018 n).toNat

end

end A288016.P17321810519128963869

/-! ## A288016.P6155099932798359961

`A185544(A288018(n)+A288018(n))`
-/

namespace A288016.P6155099932798359961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A288018 n + A288018 n).toNat

end

end A288016.P6155099932798359961

/-! ## A288016.P14662738644826557541

`A288439(A073789(n))`
-/

namespace A288016.P14662738644826557541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288439 (A073789 n).toNat

end

end A288016.P14662738644826557541

/-!
# A288017: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 403", based on the 5-celled von Neumann neighborhood.

The programs for A288017, there is no canonical definition to state claims against.
-/

/-! ## A288017.P12141244294031065552

`A007088(A288019(n))`
-/

namespace A288017.P12141244294031065552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288019 n).toNat

end

end A288017.P12141244294031065552

/-! ## A288017.P578360261464540642

`A185544(2*A288019(n))`
-/

namespace A288017.P578360261464540642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288019 n).toNat

end

end A288017.P578360261464540642

/-! ## A288017.P12524636790959838232

`A185544(A288019(n)+A288019(n))`
-/

namespace A288017.P12524636790959838232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A288019 n + A288019 n).toNat

end

end A288017.P12524636790959838232

/-! ## A288017.P15302120438042326476

`A288499(record[A342652(n+2)])`
-/

namespace A288017.P15302120438042326476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342652 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288499 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A288017.P15302120438042326476

/-! ## A288017.P5866403014230189783

`A288499(or(n, A288548(n+10)))`
-/

namespace A288017.P5866403014230189783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288499 (Int.lor (n : ℤ) (A288548 (n + 10))).toNat

end

end A288017.P5866403014230189783

/-!
# A288018: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 403", based on the 5-celled von Neumann neighborhood.

The programs for A288018, there is no canonical definition to state claims against.
-/

/-! ## A288018.P5549194213287597419

`or(A001222(A007482(n)), A286505(n))`
-/

namespace A288018.P5549194213287597419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A007482 n).toNat) (A286505 n)

end

end A288018.P5549194213287597419

/-! ## A288018.P17288709134270576462

`or(A001222(A007482(n)), A288500(n))`
-/

namespace A288018.P17288709134270576462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A007482 n).toNat) (A288500 n)

end

end A288018.P17288709134270576462

/-! ## A288018.P1004886719440166777

`or(A025442(A326308(n)), A288500(n))`
-/

namespace A288018.P1004886719440166777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025442 (A326308 n).toNat) (A288500 n)

end

end A288018.P1004886719440166777

/-! ## A288018.P12797055035013543865

`or(A275387(A160999(n)), A288500(n))`
-/

namespace A288018.P12797055035013543865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A275387 (A160999 n).toNat) (A288500 n)

end

end A288018.P12797055035013543865

/-!
# A288019: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 403", based on the 5-celled von Neumann neighborhood.

The programs for A288019, there is no canonical definition to state claims against.
-/

/-! ## A288019.P5916664555951029870

`A288501(record[A342652(n+2)])`
-/

namespace A288019.P5916664555951029870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342652 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288501 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A288019.P5916664555951029870

/-! ## A288019.P15629244109272540338

`A288501(or(n, A288548(n+10)))`
-/

namespace A288019.P15629244109272540338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288501 (Int.lor (n : ℤ) (A288548 (n + 10))).toNat

end

end A288019.P15629244109272540338

/-! ## A288019.P16408413804470028958

`∏{e}[5^n, A288501(#)]`
-/

namespace A288019.P16408413804470028958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A288501 (Nat.factorization (f1 n) p)

end

end A288019.P16408413804470028958

/-! ## A288019.P13041284267515764411

`A288501(A004892(n+1))`
-/

namespace A288019.P13041284267515764411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288501 (A004892 (n + 1)).toNat

end

end A288019.P13041284267515764411

/-! ## A288019.P8720337984209030454

`A288501(A004903(n+1))`
-/

namespace A288019.P8720337984209030454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288501 (A004903 (n + 1)).toNat

end

end A288019.P8720337984209030454

/-!
# A288020: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 501", based on the 5-celled von Neumann neighborhood.

The programs for A288020, there is no canonical definition to state claims against.
-/

/-! ## A288020.P6510027065117451966

`A287129(n)+char[2]`
-/

namespace A288020.P6510027065117451966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287129 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A288020.P6510027065117451966

/-! ## A288020.P5731728929358497897

`A287129(n*A266678(n))`
-/

namespace A288020.P5731728929358497897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287129 ((n : ℤ) * A266678 n).toNat

end

end A288020.P5731728929358497897

/-! ## A288020.P14462319922495665881

`A287129(lcm(n, A288699(n)))`
-/

namespace A288020.P14462319922495665881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287129 (Int.lcm (n : ℤ) (A288699 n))

end

end A288020.P14462319922495665881

/-! ## A288020.P9384473877637832780

`or(A130713(n), A287129(n))`
-/

namespace A288020.P9384473877637832780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130713 n) (A287129 n)

end

end A288020.P9384473877637832780

/-! ## A288020.P9507617244644073359

`A287129(n*and(1, A287128(n)))`
-/

namespace A288020.P9507617244644073359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287129 ((n : ℤ) * Int.land 1 (A287128 n)).toNat

end

end A288020.P9507617244644073359

/-! ## A288020.P8861089222717404814

`abs(A287129(n)-char[2]*A109128(n))`
-/

namespace A288020.P8861089222717404814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A287129 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A109128 n|

end

end A288020.P8861089222717404814

/-! ## A288020.P1441030927957936411

`gcd(A287129(n), A287146(A287117(n+1)))`
-/

namespace A288020.P1441030927957936411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A287129 n) (A287146 (A287117 (n + 1)).toNat)

end

end A288020.P1441030927957936411

/-! ## A288020.P15728864092600059434

`A287146(2*A287117(n+1))+A287129(n)`
-/

namespace A288020.P15728864092600059434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287146 (2 * A287117 (n + 1)).toNat + A287129 n

end

end A288020.P15728864092600059434

/-! ## A288020.P16221209364420341452

`A287129(n*A288699(n))`
-/

namespace A288020.P16221209364420341452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287129 ((n : ℤ) * A288699 n).toNat

end

end A288020.P16221209364420341452

/-!
# A288021: Prime p1 of consecutive primes p1, p2, where p2 - p1 = 4, and p1, p2 are in different decades.

The programs for A288021, there is no canonical definition to state claims against.
-/

/-! ## A288021.P5890275399082280775

`p?[A218255(n)-4]`
-/

namespace A288021.P5890275399082280775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218255 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288021.P5890275399082280775

/-! ## A288021.P900028001019629822

`p?[A045405(n+1)-4]`
-/

namespace A288021.P900028001019629822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288021.P900028001019629822

/-! ## A288021.P16099800567256050511

`p?[A045407(n+1)-4]`
-/

namespace A288021.P16099800567256050511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045407 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288021.P16099800567256050511

/-! ## A288021.P12489024142868757379

`p?[A045428(n+1)-4]`
-/

namespace A288021.P12489024142868757379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288021.P12489024142868757379

/-! ## A288021.P4744052144489194079

`p?[A045429(n+1)-4]`
-/

namespace A288021.P4744052144489194079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288021.P4744052144489194079

/-! ## A288021.P4357356680526167199

`p?[A337845(n+1)-4]`
-/

namespace A288021.P4357356680526167199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337845 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288021.P4357356680526167199

/-! ## A288021.P2238287937374821452

`p?[A060264(5*n)-4]`
-/

namespace A288021.P2238287937374821452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (5 * n) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288021.P2238287937374821452

/-! ## A288021.P8661856794190987559

`p?[A007918(10*n)-4]`
-/

namespace A288021.P8661856794190987559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (10 * n) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288021.P8661856794190987559

/-! ## A288021.P14362188277725719146

`p?[p?[A001068(2*n+1)]-4]`
-/

namespace A288021.P14362188277725719146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288021.P14362188277725719146

/-! ## A288021.P12362753467883060102

`p?[abs(4-p?[A047203(n+1)+1])]`
-/

namespace A288021.P12362753467883060102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047203 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288021.P12362753467883060102

/-!
# A288022: Prime p1 of consecutive primes p1, p2, where p2 - p1 = 6, and p1, p2 are in different decades.

The programs for A288022, the canonical program `A288022.P13806557595186574534` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288022 has offset 1).

The definition of A288022 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2956 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288022.P13806557595186574534

`∩[A030432(n+1), A031924(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A288022

/-- `∩[A030432(n+1), A031924(n+1)]` -/
def P13806557595186574534.Spec : Prop :=
  ∀ n, (P13806557595186574534.a n : ℤ) = A288022 (n + 1)

theorem P13806557595186574534.correct : P13806557595186574534.Spec := by
  intro n
  simp only [A288022, Nat.add_sub_cancel]

end A288022

/-! ## A288022.P7980548501621224216

`∩[A031924(n+1), A045357(n+1)]`
-/

namespace A288022.P7980548501621224216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288022.P7980548501621224216

namespace A288022

/-- `∩[A031924(n+1), A045357(n+1)]` -/
def P7980548501621224216.Spec : Prop :=
  ∀ n, (P7980548501621224216.a n : ℤ) = A288022 (n + 1)

end A288022

/-! ## A288022.P5239075000539166298

`∩[A031924(n+1), A045380(n+1)]`
-/

namespace A288022.P5239075000539166298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288022.P5239075000539166298

namespace A288022

/-- `∩[A031924(n+1), A045380(n+1)]` -/
def P5239075000539166298.Spec : Prop :=
  ∀ n, (P5239075000539166298.a n : ℤ) = A288022 (n + 1)

end A288022

/-! ## A288022.P7305614956348009068

`∩[A031924(n+1), A090652(n+1)]`
-/

namespace A288022.P7305614956348009068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288022.P7305614956348009068

namespace A288022

/-- `∩[A031924(n+1), A090652(n+1)]` -/
def P7305614956348009068.Spec : Prop :=
  ∀ n, (P7305614956348009068.a n : ℤ) = A288022 (n + 1)

end A288022

/-! ## A288022.P5567842595059914326

`∩[A031924(n+1), A261338(n+1)]`
-/

namespace A288022.P5567842595059914326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288022.P5567842595059914326

namespace A288022

/-- `∩[A031924(n+1), A261338(n+1)]` -/
def P5567842595059914326.Spec : Prop :=
  ∀ n, (P5567842595059914326.a n : ℤ) = A288022 (n + 1)

end A288022

/-! ## A288022.P12463751889481099042

`∩[A031924(n+1), A045356(n+1)]`
-/

namespace A288022.P12463751889481099042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288022.P12463751889481099042

namespace A288022

/-- `∩[A031924(n+1), A045356(n+1)]` -/
def P12463751889481099042.Spec : Prop :=
  ∀ n, (P12463751889481099042.a n : ℤ) = A288022 (n + 1)

end A288022

/-! ## A288022.P2139471184314507006

`∩[A031924(n+1), A045378(n+1)]`
-/

namespace A288022.P2139471184314507006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288022.P2139471184314507006

namespace A288022

/-- `∩[A031924(n+1), A045378(n+1)]` -/
def P2139471184314507006.Spec : Prop :=
  ∀ n, (P2139471184314507006.a n : ℤ) = A288022 (n + 1)

end A288022

/-! ## A288022.P17888462905801857931

`∩[A004616(n+1), A031924(n+1)]`
-/

namespace A288022.P17888462905801857931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288022.P17888462905801857931

namespace A288022

/-- `∩[A004616(n+1), A031924(n+1)]` -/
def P17888462905801857931.Spec : Prop :=
  ∀ n, (P17888462905801857931.a n : ℤ) = A288022 (n + 1)

end A288022

/-! ## A288022.P7962597270845225970

`∩[A118538(A049509(n+1)), A045380(n+2)]`
-/

namespace A288022.P7962597270845225970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (A049509 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288022.P7962597270845225970

namespace A288022

/-- `∩[A118538(A049509(n+1)), A045380(n+2)]` -/
def P7962597270845225970.Spec : Prop :=
  ∀ n, (P7962597270845225970.a n : ℤ) = A288022 (n + 1)

end A288022

/-! ## A288022.P16021588344420061765

`∩[A118538(A049509(n+1)), A045357(n+3)]`
-/

namespace A288022.P16021588344420061765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (A049509 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288022.P16021588344420061765

namespace A288022

/-- `∩[A118538(A049509(n+1)), A045357(n+3)]` -/
def P16021588344420061765.Spec : Prop :=
  ∀ n, (P16021588344420061765.a n : ℤ) = A288022 (n + 1)

end A288022

/-! ## A288022.P12065295612214132248

`∩[A031924(n+1), A017353(n)]`
-/

namespace A288022.P12065295612214132248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288022.P12065295612214132248

namespace A288022

/-- `∩[A031924(n+1), A017353(n)]` -/
def P12065295612214132248.Spec : Prop :=
  ∀ n, (P12065295612214132248.a n : ℤ) = A288022 (n + 1)

end A288022

/-! ## A288022.P5304582795660134760

`∩[A031924(n+1), A160912(n+1)]`
-/

namespace A288022.P5304582795660134760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288022.P5304582795660134760

namespace A288022

/-- `∩[A031924(n+1), A160912(n+1)]` -/
def P5304582795660134760.Spec : Prop :=
  ∀ n, (P5304582795660134760.a n : ℤ) = A288022 (n + 1)

end A288022

/-! ## A288022.P395914479966206976

`∩[A031924(n+1), A277594(n+1)]`
-/

namespace A288022.P395914479966206976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288022.P395914479966206976

namespace A288022

/-- `∩[A031924(n+1), A277594(n+1)]` -/
def P395914479966206976.Spec : Prop :=
  ∀ n, (P395914479966206976.a n : ℤ) = A288022 (n + 1)

end A288022

/-! ## A288022.P4356399682481609868

`∩[A031924(n+1), A129811(n+2)]`
-/

namespace A288022.P4356399682481609868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129811 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288022.P4356399682481609868

namespace A288022

/-- `∩[A031924(n+1), A129811(n+2)]` -/
def P4356399682481609868.Spec : Prop :=
  ∀ n, (P4356399682481609868.a n : ℤ) = A288022 (n + 1)

end A288022

/-! ## A288022.P15024725686757037502

`filter[A031924(n+1), A185708(#)]`
-/

namespace A288022.P15024725686757037502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185708 (f1 j).toNat = 1) n)

end

end A288022.P15024725686757037502

namespace A288022

/-- `filter[A031924(n+1), A185708(#)]` -/
def P15024725686757037502.Spec : Prop :=
  ∀ n, P15024725686757037502.a n = A288022 (n + 1)

end A288022

/-! ## A288022.P4136459891191478026

`∩[A031924(n+1), A016873(n)]`
-/

namespace A288022.P4136459891191478026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288022.P4136459891191478026

namespace A288022

/-- `∩[A031924(n+1), A016873(n)]` -/
def P4136459891191478026.Spec : Prop :=
  ∀ n, (P4136459891191478026.a n : ℤ) = A288022 (n + 1)

end A288022

/-! ## A288022.P16412282125400973144

`∩[A031924(n+1), A016861(n)+1]`
-/

namespace A288022.P16412282125400973144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288022.P16412282125400973144

namespace A288022

/-- `∩[A031924(n+1), A016861(n)+1]` -/
def P16412282125400973144.Spec : Prop :=
  ∀ n, (P16412282125400973144.a n : ℤ) = A288022 (n + 1)

end A288022

/-! ## A288022.P13541927881139539742

`∩[A031924(n+1), A385869(n+7)]`
-/

namespace A288022.P13541927881139539742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385869 (n + 7)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288022.P13541927881139539742

namespace A288022

/-- `∩[A031924(n+1), A385869(n+7)]` -/
def P13541927881139539742.Spec : Prop :=
  ∀ n, (P13541927881139539742.a n : ℤ) = A288022 (n + 1)

end A288022

/-! ## A288022.P13851798554679925042

`∩[A031924(n+1), A306277(n+1)-1]`
-/

namespace A288022.P13851798554679925042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306277 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288022.P13851798554679925042

namespace A288022

/-- `∩[A031924(n+1), A306277(n+1)-1]` -/
def P13851798554679925042.Spec : Prop :=
  ∀ n, (P13851798554679925042.a n : ℤ) = A288022 (n + 1)

end A288022

/-! ## A288022.P14152095186862627930

`∩[A031924(n+1), A090771(n+1)-2]`
-/

namespace A288022.P14152095186862627930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288022.P14152095186862627930

namespace A288022

/-- `∩[A031924(n+1), A090771(n+1)-2]` -/
def P14152095186862627930.Spec : Prop :=
  ∀ n, (P14152095186862627930.a n : ℤ) = A288022 (n + 1)

end A288022

/-!
# A288023: Number of steps to reach 1 in the Collatz 3x+1 problem starting with the n-th triangular number, or -1 if 1 is never reached.

The programs for A288023, there is no canonical definition to state claims against.
-/

/-! ## A288023.P8305043606711119495

`A006577(A000217(n+1))`
-/

namespace A288023.P8305043606711119495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A000217 (n + 1)).toNat

end

end A288023.P8305043606711119495

/-! ## A288023.P2018713456748297272

`A006577(∑[n+1])`
-/

namespace A288023.P2018713456748297272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A288023.P2018713456748297272

/-! ## A288023.P4255146929388420520

`A008908(∑[n+1])-1`
-/

namespace A288023.P4255146929388420520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A288023.P4255146929388420520

/-! ## A288023.P3128528311902394971

`floor(log2(A221468(∑[n+1])))`
-/

namespace A288023.P3128528311902394971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A221468 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A288023.P3128528311902394971

/-! ## A288023.P17993796821287190132

`abs(1-A008908(C(n+1, 2)+1+n))`
-/

namespace A288023.P17993796821287190132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A008908 (Nat.choose (n + 1) 2 + 1 + n)|

end

end A288023.P17993796821287190132

/-! ## A288023.P9542932944439771191

`(A008908(C(n+2, 2))-1)%((n+1)*(n+11)+1)`
-/

namespace A288023.P9542932944439771191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008908 (Nat.choose (n + 2) 2) - 1) ((n + 1) * (n + 11) + 1 : ℤ)

end

end A288023.P9542932944439771191

/-! ## A288023.P9286655326998650009

`A023443(A008908(∑[n+1]))`
-/

namespace A288023.P9286655326998650009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A008908 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A288023.P9286655326998650009

/-! ## A288023.P17686542907628793114

`A289207(A008908(∑[n+1])+1)`
-/

namespace A288023.P17686542907628793114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A008908 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A288023.P17686542907628793114

/-! ## A288023.P7672045428349565219

`A006667(∑[n+1])+A006666(∑[n+1])`
-/

namespace A288023.P7672045428349565219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (∑ j ∈ Finset.range (n + 1), f1 j) + A006666 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A288023.P7672045428349565219

/-! ## A288023.P7182376205311834358

`A006577(A002378(n+1))-1`
-/

namespace A288023.P7182376205311834358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A002378 (n + 1)).toNat - 1

end

end A288023.P7182376205311834358

/-!
# A288024: Prime p1 of consecutive primes p1, p2, where p2 - p1 = 8, and p1, p2 are in different decades.

The programs for A288024, there is no canonical definition to state claims against.
-/

/-! ## A288024.P7175924611488699116

`∩[A031926(n+1), A045413(n+1)]`
-/

namespace A288024.P7175924611488699116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288024.P7175924611488699116

/-! ## A288024.P8689326801491610024

`∩[A031926(n+1), A045435(n+1)]`
-/

namespace A288024.P8689326801491610024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288024.P8689326801491610024

/-! ## A288024.P3374923466587753389

`∩[A031926(n+1), A129809(n+1)]`
-/

namespace A288024.P3374923466587753389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129809 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288024.P3374923466587753389

/-! ## A288024.P9145554370042655203

`∩[A031926(n+1), A261338(n+1)]`
-/

namespace A288024.P9145554370042655203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288024.P9145554370042655203

/-! ## A288024.P2609419213705265106

`∩[A031926(n+1), A045327(n+1)]`
-/

namespace A288024.P2609419213705265106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045327 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288024.P2609419213705265106

/-! ## A288024.P3409302484944703539

`∩[A031926(n+1), A042991(n+1)]`
-/

namespace A288024.P3409302484944703539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288024.P3409302484944703539

/-! ## A288024.P5102949890103426254

`∩[A031926(n+1), A268044(n+1)]`
-/

namespace A288024.P5102949890103426254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288024.P5102949890103426254

/-! ## A288024.P600850998739215624

`filter[A031926(n+1), A011658(#)]`
-/

namespace A288024.P600850998739215624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011658 (f1 j).toNat = 1) n)

end

end A288024.P600850998739215624

/-! ## A288024.P1320678462140302225

`filter[A031926(n+1), A144597(#)]`
-/

namespace A288024.P1320678462140302225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144597 (f1 j).toNat = 1) n)

end

end A288024.P1320678462140302225

/-!
# A288027: Number of minimal edge covers in the grid graph P_n X P_n.

The programs for A288027, there is no canonical definition to state claims against.
-/

/-! ## A288027.P4239182741649302493

`A288025((n+1)²+n²)`
-/

namespace A288027.P4239182741649302493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288025 ((n + 1) ^ 2 + n ^ 2)

end

end A288027.P4239182741649302493

/-! ## A288027.P14448461841875637161

`record[A003982(n)*A288025(n+1)]`
-/

namespace A288027.P14448461841875637161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A288025 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288027.P14448461841875637161

/-! ## A288027.P18174334004445187207

`record[lcm(A000122(2*n+3), A288025(n+2))]`
-/

namespace A288027.P18174334004445187207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000122 (2 * n + 3)) (A288025 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288027.P18174334004445187207

/-! ## A288027.P1955311372261235439

`A288025(A001844(n))+A230614(n+1)`
-/

namespace A288027.P1955311372261235439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288025 (A001844 n).toNat + A230614 (n + 1)

end

end A288027.P1955311372261235439

/-! ## A288027.P1342945943930436185

`A288025(A001844(n))/A001987(n+1)`
-/

namespace A288027.P1342945943930436185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288025 (A001844 n).toNat : ℚ) / (A001987 (n + 1) : ℚ)

end

end A288027.P1342945943930436185

/-!
# A288028: Number of maximal matchings in the grid graph P_3 X P_n.

The programs for A288028, there is no canonical definition to state claims against.
-/

/-! ## A288028.P12577139139775080673

`A288026(∑[n+3]+1)`
-/

namespace A288028.P12577139139775080673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288026 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A288028.P12577139139775080673

/-! ## A288028.P17030046186813102110

`lcm((-1)^∑{e}[n+1, #], A288026(A167614(n+1)))`
-/

namespace A288028.P17030046186813102110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A288026 (A167614 (n + 1)).toNat)

end

end A288028.P17030046186813102110

/-! ## A288028.P18149776212581418066

`lcm(A033999(n), A288026(A167614(n+1)))`
-/

namespace A288028.P18149776212581418066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A288026 (A167614 (n + 1)).toNat)

end

end A288028.P18149776212581418066

/-! ## A288028.P3210485545100512364

`A288026(A167614(n+1))%A220366(n+1)`
-/

namespace A288028.P3210485545100512364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288026 (A167614 (n + 1)).toNat) (A220366 (n + 1))

end

end A288028.P3210485545100512364

/-! ## A288028.P11855889743144360182

`record[A288026(A167614(val(n+1, 2)+1))]`
-/

namespace A288028.P11855889743144360182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288026 (A167614 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288028.P11855889743144360182

/-!
# A288029: Number of minimal edge covers in the ladder graph P_2 X P_n.

The programs for A288029, the canonical program `A288029.P146658989041407590` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288029 has offset 0).

The definition of A288029 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288029.P146658989041407590

`2*a(n-1)+a(n-2)+2*a(n-3)+a(n-4)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=17, a(5)=45`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A288029

/-- `2*a(n-1)+a(n-2)+2*a(n-3)+a(n-4)-a(n-6)` -/
def P146658989041407590.Spec : Prop :=
  ∀ n, P146658989041407590.a n = A288029 n

theorem P146658989041407590.correct : P146658989041407590.Spec := by
  intro n
  simp only [A288029]

end A288029

/-! ## A288029.P12412788703906202202

`A288025(∑[n]+2)`
-/

namespace A288029.P12412788703906202202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288025 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A288029.P12412788703906202202

namespace A288029

/-- `A288025(∑[n]+2)` -/
def P12412788703906202202.Spec : Prop :=
  ∀ n, P12412788703906202202.a n = A288029 n

end A288029

/-! ## A288029.P13012371215260518835

`A193569(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A288029.P13012371215260518835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A193569 (a (n - 1)).toNat

end

end A288029.P13012371215260518835

namespace A288029

/-- `A193569(a(n-1))` -/
def P13012371215260518835.Spec : Prop :=
  ∀ n, P13012371215260518835.a n = A288029 n

end A288029

/-!
# A288030: Number of minimal edge covers in the grid graph P_3 X P_n.

The programs for A288030, there is no canonical definition to state claims against.
-/

/-! ## A288030.P13619644758677030638

`A288025(∑[n+1]+3)`
-/

namespace A288030.P13619644758677030638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288025 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A288030.P13619644758677030638

/-!
# A288031: Number of edge covers in the grid graph P_3 X P_n.

The programs for A288031, there is no canonical definition to state claims against.
-/

/-! ## A288031.P16758568281374684465

`A286912(∑[n+1]+3)`
-/

namespace A288031.P16758568281374684465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286912 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A288031.P16758568281374684465

/-!
# A288032: Number of (undirected) paths in the n X n grid graph.

The programs for A288032, there is no canonical definition to state claims against.
-/

/-! ## A288032.P7288548670109108623

`A288518(∑[4*n]+1)`
-/

namespace A288032.P7288548670109108623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288518 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A288032.P7288548670109108623

/-! ## A288032.P2043302499246088546

`lcm(2, A288518(A001844(n)))`
-/

namespace A288032.P2043302499246088546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A288518 (A001844 n).toNat)

end

end A288032.P2043302499246088546

/-! ## A288032.P5574289135008865556

`and(-1, A288518(A099392(2*(n+1))))`
-/

namespace A288032.P5574289135008865556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A288518 (A099392 (2 * (n + 1))).toNat)

end

end A288032.P5574289135008865556

/-! ## A288032.P18134224594328552323

`A054977(n)*A288518(A001844(n))`
-/

namespace A288032.P18134224594328552323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A288518 (A001844 n).toNat

end

end A288032.P18134224594328552323

/-! ## A288032.P15335895618863926007

`A057427(n)*A288518(A001844(n))`
-/

namespace A288032.P15335895618863926007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A288518 (A001844 n).toNat

end

end A288032.P15335895618863926007

/-!
# A288033: Number of (undirected) paths in the n X n king graph.

The programs for A288033, there is no canonical definition to state claims against.
-/

/-! ## A288033.P5097233888238804853

`A307026(∑[n+1])`
-/

namespace A288033.P5097233888238804853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307026 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A288033.P5097233888238804853

/-!
# A288035: Number of (undirected) paths in the complete bipartite graph K_n,n.

The programs for A288035, there is no canonical definition to state claims against.
-/

/-! ## A288035.P4688951547909584309

`(a(n-1)+1+n)*(n+1)²` with `a(0)=1`
-/

namespace A288035.P4688951547909584309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 1 + n) * (n + 1) ^ 2

end

end A288035.P4688951547909584309

/-! ## A288035.P14034600285568313096

`(a(n-1)+n+1)*(n+1)^2` with `a(0)=1`
-/

namespace A288035.P14034600285568313096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (n + 1)) * (n + 1) ^ 2

end

end A288035.P14034600285568313096

/-! ## A288035.P867532775534672458

`(a(n-1)+n+1)/(1/(n+1))²` with `a(0)=1`
-/

namespace A288035.P867532775534672458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (n + 1 : ℚ)) / (1 / (n + 1 : ℚ)) ^ 2

end

end A288035.P867532775534672458

/-! ## A288035.P14256917787912891992

`(n+1)*(n+1)*(a(n-1)+1+n)` with `a(0)=1`
-/

namespace A288035.P14256917787912891992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * ((n + 1) * (a (n - 1) + 1 + n))

end

end A288035.P14256917787912891992

/-! ## A288035.P13796135305420776639

`A360852(n+1)+(n+1)*(n+1)`
-/

namespace A288035.P13796135305420776639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360852 (n + 1) + ((n + 1) * (n + 1) : ℤ)

end

end A288035.P13796135305420776639

/-!
# A288038: Number of independent vertex sets in the n-Andrásfai graph.

The programs for A288038, the canonical program `A288038.P16181383783703015949` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288038 has offset 1).

The definition of A288038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288038.P16181383783703015949

`1+(3*(n+1)-1)*2^n`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A288038

/-- `1+(3*(n+1)-1)*2^n` -/
def P16181383783703015949.Spec : Prop :=
  ∀ n, P16181383783703015949.a n = A288038 (n + 1)

theorem P16181383783703015949.correct : P16181383783703015949.Spec := by
  intro n
  simp only [A288038, Nat.add_sub_cancel]

end A288038

/-! ## A288038.P2007602327407855915

`∑[ogf((3-4x+2x^2)/(1-4x+4x^2))]`
-/

namespace A288038.P2007602327407855915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4, 2] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288038.P2007602327407855915

namespace A288038

/-- `∑[ogf((3-4x+2x^2)/(1-4x+4x^2))]` -/
def P2007602327407855915.Spec : Prop :=
  ∀ n, P2007602327407855915.a n = A288038 (n + 1)

end A288038

/-! ## A288038.P16415056852455954820

`record[(n+2)*A077958(n)+1]`
-/

namespace A288038.P16415056852455954820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A077958 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288038.P16415056852455954820

namespace A288038

/-- `record[(n+2)*A077958(n)+1]` -/
def P16415056852455954820.Spec : Prop :=
  ∀ n, P16415056852455954820.a n = A288038 (n + 1)

end A288038

/-! ## A288038.P2777712786340486569

`∑[A084858(n+1)-A131577(n)]`
-/

namespace A288038.P2777712786340486569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084858 (n + 1) - A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288038.P2777712786340486569

namespace A288038

/-- `∑[A084858(n+1)-A131577(n)]` -/
def P2777712786340486569.Spec : Prop :=
  ∀ n, P2777712786340486569.a n = A288038 (n + 1)

end A288038

/-! ## A288038.P5003883630486955545

`abs(Δ[A000225(n)]*A016789(n)+1)`
-/

namespace A288038.P5003883630486955545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A016789 n + 1|

end

end A288038.P5003883630486955545

namespace A288038

/-- `abs(Δ[A000225(n)]*A016789(n)+1)` -/
def P5003883630486955545.Spec : Prop :=
  ∀ n, P5003883630486955545.a n = A288038 (n + 1)

end A288038

/-! ## A288038.P15449551613679415197

`abs((2*n-A016873(n))*A000079(n)-1)`
-/

namespace A288038.P15449551613679415197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * n : ℤ) - A016873 n) * A000079 n - 1|

end

end A288038.P15449551613679415197

namespace A288038

/-- `abs((2*n-A016873(n))*A000079(n)-1)` -/
def P15449551613679415197.Spec : Prop :=
  ∀ n, P15449551613679415197.a n = A288038 (n + 1)

end A288038

/-! ## A288038.P15960136212243756113

`ogf((3-4x+2x^2)/(1-5x+8x^2-4x^3))`
-/

namespace A288038.P15960136212243756113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4, 2] [1, -5, 8, -4] n

end

end A288038.P15960136212243756113

namespace A288038

/-- `ogf((3-4x+2x^2)/(1-5x+8x^2-4x^3))` -/
def P15960136212243756113.Spec : Prop :=
  ∀ n, P15960136212243756113.a n = A288038 (n + 1)

end A288038

/-! ## A288038.P5066313831614552816

`A027992(n+1)/2`
-/

namespace A288038.P5066313831614552816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027992 (n + 1) : ℚ) / 2

end

end A288038.P5066313831614552816

namespace A288038

/-- `A027992(n+1)/2` -/
def P5066313831614552816.Spec : Prop :=
  ∀ n, P5066313831614552816.a n = (A288038 (n + 1) : ℚ)

theorem P5066313831614552816.correct : P5066313831614552816.Spec := by
  intro n
  simp only [A288038, Nat.add_sub_cancel, A288038.P5066313831614552816.a, A288038.P16181383783703015949.a, A027992, A027992.P7713747682354996554.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A288038

/-! ## A288038.P11505829151858505237

`(A048496(n+2)-1)/2`
-/

namespace A288038.P11505829151858505237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048496 (n + 2) - 1 : ℚ) / 2

end

end A288038.P11505829151858505237

namespace A288038

/-- `(A048496(n+2)-1)/2` -/
def P11505829151858505237.Spec : Prop :=
  ∀ n, P11505829151858505237.a n = (A288038 (n + 1) : ℚ)

end A288038

/-! ## A288038.P5060065298048919706

`(A000079(n)*A016957(n)+2)/2`
-/

namespace A288038.P5060065298048919706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n * A016957 n + 2 : ℚ) / 2

end

end A288038.P5060065298048919706

namespace A288038

/-- `(A000079(n)*A016957(n)+2)/2` -/
def P5060065298048919706.Spec : Prop :=
  ∀ n, P5060065298048919706.a n = (A288038 (n + 1) : ℚ)

theorem P5060065298048919706.correct : P5060065298048919706.Spec := by
  intro n
  simp only [A288038, Nat.add_sub_cancel, A288038.P5060065298048919706.a, A288038.P16181383783703015949.a, A000079, A000079.P10855139691139572931.a, A016957, A016957.P9941618694539595759.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A288038

/-! ## A288038.P6909392683574044277

`(A048477(n+1)-A000225(n+1))/2`
-/

namespace A288038.P6909392683574044277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048477 (n + 1) - A000225 (n + 1) : ℚ) / 2

end

end A288038.P6909392683574044277

namespace A288038

/-- `(A048477(n+1)-A000225(n+1))/2` -/
def P6909392683574044277.Spec : Prop :=
  ∀ n, P6909392683574044277.a n = (A288038 (n + 1) : ℚ)

theorem P6909392683574044277.correct : P6909392683574044277.Spec := by
  intro n
  simp only [A288038, Nat.add_sub_cancel, A288038.P6909392683574044277.a, A288038.P16181383783703015949.a, A000225, A000225.P6535533121115206393.a, A048477, A048477.P4668765606070532470.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A288038

/-! ## A288038.P12883609045304601351

`Δ[A045618(n)-A036289(n)]`
-/

namespace A288038.P12883609045304601351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045618 n - A036289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288038.P12883609045304601351

namespace A288038

/-- `Δ[A045618(n)-A036289(n)]` -/
def P12883609045304601351.Spec : Prop :=
  ∀ n, P12883609045304601351.a n = A288038 (n + 1)

theorem P12883609045304601351.correct : P12883609045304601351.Spec := by
  intro n
  simp only [A288038, Nat.add_sub_cancel, A288038.P12883609045304601351.f1, A288038.P12883609045304601351.a, A288038.P16181383783703015949.a, A036289, A036289.P13525419631139213940.a, A045618, A045618.P16738991353215400118.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A288038

/-! ## A288038.P4824871842573496083

`(A048479(n+1)-A087323(n+1))/2`
-/

namespace A288038.P4824871842573496083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048479 (n + 1) - A087323 (n + 1) : ℚ) / 2

end

end A288038.P4824871842573496083

namespace A288038

/-- `(A048479(n+1)-A087323(n+1))/2` -/
def P4824871842573496083.Spec : Prop :=
  ∀ n, P4824871842573496083.a n = (A288038 (n + 1) : ℚ)

end A288038

/-! ## A288038.P14298647123960027601

`(A339771(n+1)-A000337(n+1))/2`
-/

namespace A288038.P14298647123960027601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339771 (n + 1) - A000337 (n + 1) : ℚ) / 2

end

end A288038.P14298647123960027601

namespace A288038

/-- `(A339771(n+1)-A000337(n+1))/2` -/
def P14298647123960027601.Spec : Prop :=
  ∀ n, P14298647123960027601.a n = (A288038 (n + 1) : ℚ)

theorem P14298647123960027601.correct : P14298647123960027601.Spec := by
  intro n
  simp only [A288038, Nat.add_sub_cancel, A288038.P14298647123960027601.a, A288038.P16181383783703015949.a, A000337, A000337.P10298485350018343423.a, A339771, A339771.P5084121294361121818.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A288038

/-! ## A288038.P11613507765742019721

`(A118417(n+1)-A328890(n+2))/2`
-/

namespace A288038.P11613507765742019721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118417 (n + 1) - A328890 (n + 2) : ℚ) / 2

end

end A288038.P11613507765742019721

namespace A288038

/-- `(A118417(n+1)-A328890(n+2))/2` -/
def P11613507765742019721.Spec : Prop :=
  ∀ n, P11613507765742019721.a n = (A288038 (n + 1) : ℚ)

theorem P11613507765742019721.correct : P11613507765742019721.Spec := by
  intro n
  simp only [A288038, Nat.add_sub_cancel, A288038.P11613507765742019721.a, A288038.P16181383783703015949.a, A118417, A118417.P9530151106302004125.a, A328890, A328890.P10807691076493716178.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A288038

/-! ## A288038.P11138629500063965048

`∑[A209776(∑[n+2])]`
-/

namespace A288038.P11138629500063965048
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209776 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288038.P11138629500063965048

namespace A288038

/-- `∑[A209776(∑[n+2])]` -/
def P11138629500063965048.Spec : Prop :=
  ∀ n, P11138629500063965048.a n = A288038 (n + 1)

end A288038

/-! ## A288038.P10538982986979255297

`A105728(∑[n+2]+4)`
-/

namespace A288038.P10538982986979255297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105728 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A288038.P10538982986979255297

namespace A288038

/-- `A105728(∑[n+2]+4)` -/
def P10538982986979255297.Spec : Prop :=
  ∀ n, P10538982986979255297.a n = A288038 (n + 1)

end A288038

/-!
# A288039: Number of compositions (ordered partitions) of n into Lucas numbers (beginning with 1) (A000204).

The programs for A288039, there is no canonical definition to state claims against.
-/

/-! ## A288039.P8516589564666445921

`A005708(2*n)-A033665(A127296(n))`
-/

namespace A288039.P8516589564666445921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (2 * n) - A033665 (A127296 n).toNat

end

end A288039.P8516589564666445921

/-! ## A288039.P9385622543905668873

`A005708(2*n)-A185284(A016116(n))`
-/

namespace A288039.P9385622543905668873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (2 * n) - A185284 (A016116 n).toNat

end

end A288039.P9385622543905668873

/-! ## A288039.P11383177162405027128

`A005708(2*n)-A058276(A328508(n))`
-/

namespace A288039.P11383177162405027128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (2 * n) - A058276 (A328508 n).toNat

end

end A288039.P11383177162405027128

/-! ## A288039.P2643093461573650100

`A005708(2*n)-A316345(A056457(n+1))`
-/

namespace A288039.P2643093461573650100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (2 * n) - A316345 (A056457 (n + 1)).toNat

end

end A288039.P2643093461573650100

/-! ## A288039.P6276143592323020216

`A005708(2*n)-A178798(A001301(2*(n+2)))`
-/

namespace A288039.P6276143592323020216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005708 (2 * n) - A178798 (A001301 (2 * (n + 2))).toNat

end

end A288039.P6276143592323020216

/-!
# A288041: Numbers k such that prime(k) + prime(k+1) + ... + prime(k+4) is prime.

The programs for A288041, the canonical program `A288041.P16531561564463658720` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288041 has offset 1).

The definition of A288041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 589 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288041.P12056671231367866091

`A000720(A152468(n+1))`
-/

namespace A288041.P12056671231367866091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A152468 (n + 1)).toNat

end

end A288041.P12056671231367866091

namespace A288041

/-- `A000720(A152468(n+1))` -/
def P12056671231367866091.Spec : Prop :=
  ∀ n, P12056671231367866091.a n = A288041 (n + 1)

end A288041

/-! ## A288041.P252695767627392607

`A061395(2*A152468(n+1))`
-/

namespace A288041.P252695767627392607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A152468 (n + 1)).toNat

end

end A288041.P252695767627392607

namespace A288041

/-- `A061395(2*A152468(n+1))` -/
def P252695767627392607.Spec : Prop :=
  ∀ n, P252695767627392607.a n = A288041 (n + 1)

end A288041

/-! ## A288041.P9597037271208002389

`A061395(lcm(2, A152468(n+1)))`
-/

namespace A288041.P9597037271208002389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A152468 (n + 1)))

end

end A288041.P9597037271208002389

namespace A288041

/-- `A061395(lcm(2, A152468(n+1)))` -/
def P9597037271208002389.Spec : Prop :=
  ∀ n, P9597037271208002389.a n = A288041 (n + 1)

end A288041

/-! ## A288041.P4610147201732229872

`A061395(or(1, A152468(n+1)))`
-/

namespace A288041.P4610147201732229872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A152468 (n + 1))).toNat

end

end A288041.P4610147201732229872

namespace A288041

/-- `A061395(or(1, A152468(n+1)))` -/
def P4610147201732229872.Spec : Prop :=
  ∀ n, P4610147201732229872.a n = A288041 (n + 1)

end A288041

/-! ## A288041.P1056458998467430027

`A061395(A152468(n+1)%A268195(n+4))`
-/

namespace A288041.P1056458998467430027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A152468 (n + 1)) (A268195 (n + 4))).toNat

end

end A288041.P1056458998467430027

namespace A288041

/-- `A061395(A152468(n+1)%A268195(n+4))` -/
def P1056458998467430027.Spec : Prop :=
  ∀ n, P1056458998467430027.a n = A288041 (n + 1)

end A288041

/-! ## A288041.P16531561564463658720

`eq[2, A000005(A034964(n+1))]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A288041

/-- `eq[2, A000005(A034964(n+1))]+1` -/
def P16531561564463658720.Spec : Prop :=
  ∀ n, (P16531561564463658720.a n : ℤ) = A288041 (n + 1)

theorem P16531561564463658720.correct : P16531561564463658720.Spec := by
  intro n
  simp only [A288041, Nat.add_sub_cancel]

end A288041

/-! ## A288041.P11992229221960244310

`A003963(or(1, A152468(n+1)))`
-/

namespace A288041.P11992229221960244310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (Int.lor 1 (A152468 (n + 1))).toNat

end

end A288041.P11992229221960244310

namespace A288041

/-- `A003963(or(1, A152468(n+1)))` -/
def P11992229221960244310.Spec : Prop :=
  ∀ n, P11992229221960244310.a n = A288041 (n + 1)

end A288041

/-! ## A288041.P17993325327199434792

`A252464(2*A152468(n+1)-A152468(n+1))`
-/

namespace A288041.P17993325327199434792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (2 * A152468 (n + 1) - A152468 (n + 1)).toNat

end

end A288041.P17993325327199434792

namespace A288041

/-- `A252464(2*A152468(n+1)-A152468(n+1))` -/
def P17993325327199434792.Spec : Prop :=
  ∀ n, P17993325327199434792.a n = A288041 (n + 1)

end A288041

/-! ## A288041.P18350696146037617803

`A003963(2*A152468(n+1))`
-/

namespace A288041.P18350696146037617803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A152468 (n + 1)).toNat

end

end A288041.P18350696146037617803

namespace A288041

/-- `A003963(2*A152468(n+1))` -/
def P18350696146037617803.Spec : Prop :=
  ∀ n, P18350696146037617803.a n = A288041 (n + 1)

end A288041

/-! ## A288041.P12493767478689421393

`A252464(2*A152468(n+1))-1`
-/

namespace A288041.P12493767478689421393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (2 * A152468 (n + 1)).toNat - 1

end

end A288041.P12493767478689421393

namespace A288041

/-- `A252464(2*A152468(n+1))-1` -/
def P12493767478689421393.Spec : Prop :=
  ∀ n, P12493767478689421393.a n = A288041 (n + 1)

end A288041

/-! ## A288041.P3462569267845212392

`A372627(A167614(n+1))`
-/

namespace A288041.P3462569267845212392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372627 (A167614 (n + 1)).toNat

end

end A288041.P3462569267845212392

namespace A288041

/-- `A372627(A167614(n+1))` -/
def P3462569267845212392.Spec : Prop :=
  ∀ n, P3462569267845212392.a n = A288041 (n + 1)

end A288041

/-! ## A288041.P10427690790588477564

`A064989(A130321(n))*A252464(A152468(n+1))`
-/

namespace A288041.P10427690790588477564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A130321 n).toNat * A252464 (A152468 (n + 1)).toNat

end

end A288041.P10427690790588477564

namespace A288041

/-- `A064989(A130321(n))*A252464(A152468(n+1))` -/
def P10427690790588477564.Spec : Prop :=
  ∀ n, P10427690790588477564.a n = A288041 (n + 1)

end A288041

/-!
# A288042: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 406", based on the 5-celled von Neumann neighborhood.

The programs for A288042, there is no canonical definition to state claims against.
-/

/-! ## A288042.P11435533428695227073

`A007088(A288044(n))`
-/

namespace A288042.P11435533428695227073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288044 n).toNat

end

end A288042.P11435533428695227073

/-! ## A288042.P13685124239981896064

`A007088(A198633(n)-(A289774(n)+1))`
-/

namespace A288042.P13685124239981896064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A198633 n - (A289774 n + 1)).toNat

end

end A288042.P13685124239981896064

/-! ## A288042.P3829460057368859564

`A007088(A198633(n)-1-A289774(n))`
-/

namespace A288042.P3829460057368859564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A198633 n - 1 - A289774 n).toNat

end

end A288042.P3829460057368859564

/-! ## A288042.P15770905946548726200

`A007088(A288045(n)+A289775(n)-A289774(n))`
-/

namespace A288042.P15770905946548726200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288045 n + (A289775 n - A289774 n)).toNat

end

end A288042.P15770905946548726200

/-! ## A288042.P6450227926035587322

`A007088(A288045(n)-(A289774(n)-A289775(n)))`
-/

namespace A288042.P6450227926035587322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288045 n - (A289774 n - A289775 n)).toNat

end

end A288042.P6450227926035587322

/-!
# A288043: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 406", based on the 5-celled von Neumann neighborhood.

The programs for A288043, there is no canonical definition to state claims against.
-/

/-! ## A288043.P1820194642228327011

`A007088(A288045(n))`
-/

namespace A288043.P1820194642228327011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288045 n).toNat

end

end A288043.P1820194642228327011

/-! ## A288043.P1907710139112420469

`A007088(and(-A289775(n), A095121(n)))`
-/

namespace A288043.P1907710139112420469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (-A289775 n) (A095121 n)).toNat

end

end A288043.P1907710139112420469

/-! ## A288043.P14515367683861989098

`A007088(and(-A289775(n), A122746(n)))`
-/

namespace A288043.P14515367683861989098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (-A289775 n) (A122746 n)).toNat

end

end A288043.P14515367683861989098

/-! ## A288043.P806460265259809301

`A007088(A095121(n)+1-A289775(n))`
-/

namespace A288043.P806460265259809301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A289775 n)).toNat

end

end A288043.P806460265259809301

/-! ## A288043.P12577185678675203573

`A007088(A198633(n)-(A289775(n)+1))`
-/

namespace A288043.P12577185678675203573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A198633 n - (A289775 n + 1)).toNat

end

end A288043.P12577185678675203573

/-!
# A288044: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 406", based on the 5-celled von Neumann neighborhood.

The programs for A288044, there is no canonical definition to state claims against.
-/

/-! ## A288044.P6631000688941670435

`A198633(n)-(A289774(n)+1)`
-/

namespace A288044.P6631000688941670435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n - (A289774 n + 1)

end

end A288044.P6631000688941670435

/-! ## A288044.P5269342553403534066

`xor(record[A324713(n+1)], A289774(n))`
-/

namespace A288044.P5269342553403534066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A289774 n)

end

end A288044.P5269342553403534066

/-! ## A288044.P7724049016987134390

`A288045(n)+A289775(n)-A289774(n)`
-/

namespace A288044.P7724049016987134390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288045 n + (A289775 n - A289774 n)

end

end A288044.P7724049016987134390

/-! ## A288044.P6400549659954960745

`A198633(A000038(n+1)+n)%(A289774(n)+1)`
-/

namespace A288044.P6400549659954960745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198633 (A000038 (n + 1) + (n : ℤ)).toNat) (A289774 n + 1)

end

end A288044.P6400549659954960745

/-! ## A288044.P3182253454437500323

`record[A324713(A029906(n)+1)]%(A289774(n)+1)+1`
-/

namespace A288044.P3182253454437500323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324713 (A029906 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A289774 n + 1) + 1

end

end A288044.P3182253454437500323

/-!
# A288045: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 406", based on the 5-celled von Neumann neighborhood.

The programs for A288045, there is no canonical definition to state claims against.
-/

/-! ## A288045.P5146171915065028044

`and(-A289775(n), A095121(n))`
-/

namespace A288045.P5146171915065028044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A289775 n) (A095121 n)

end

end A288045.P5146171915065028044

/-! ## A288045.P13203189296188456275

`and(-A289775(n), A122746(n))`
-/

namespace A288045.P13203189296188456275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A289775 n) (A122746 n)

end

end A288045.P13203189296188456275

/-! ## A288045.P5044019788981140058

`A198633(n)-(A289775(n)+1)`
-/

namespace A288045.P5044019788981140058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198633 n - (A289775 n + 1)

end

end A288045.P5044019788981140058

/-! ## A288045.P16776581713159254141

`xor(record[A324713(n+1)], A289775(n))`
-/

namespace A288045.P16776581713159254141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A289775 n)

end

end A288045.P16776581713159254141

/-! ## A288045.P9497608942122932237

`A288044(n)+A289774(n)-A289775(n)`
-/

namespace A288045.P9497608942122932237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288044 n + (A289774 n - A289775 n)

end

end A288045.P9497608942122932237

/-!
# A288046: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 411", based on the 5-celled von Neumann neighborhood.

The programs for A288046, there is no canonical definition to state claims against.
-/

/-! ## A288046.P1451564189377610492

`A007088(A288048(n))`
-/

namespace A288046.P1451564189377610492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288048 n).toNat

end

end A288046.P1451564189377610492

/-! ## A288046.P8558826511665442507

`A185544(2*A288048(n))`
-/

namespace A288046.P8558826511665442507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288048 n).toNat

end

end A288046.P8558826511665442507

/-! ## A288046.P14037355288606538193

`A007088(xor(A025442(n!), A288018(n)))`
-/

namespace A288046.P14037355288606538193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor (A025442 (Nat.factorial n)) (A288018 n)).toNat

end

end A288046.P14037355288606538193

/-! ## A288046.P18156504537889306987

`A007088(xor(A025442(n!), A288500(n)))`
-/

namespace A288046.P18156504537889306987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor (A025442 (Nat.factorial n)) (A288500 n)).toNat

end

end A288046.P18156504537889306987

/-!
# A288047: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 411", based on the 5-celled von Neumann neighborhood.

The programs for A288047, there is no canonical definition to state claims against.
-/

/-! ## A288047.P11904456954052443660

`A007088(A288049(n))`
-/

namespace A288047.P11904456954052443660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288049 n).toNat

end

end A288047.P11904456954052443660

/-! ## A288047.P10402332992240306792

`A185544(2*A288049(n))`
-/

namespace A288047.P10402332992240306792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288049 n).toNat

end

end A288047.P10402332992240306792

/-!
# A288048: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 411", based on the 5-celled von Neumann neighborhood.

The programs for A288048, there is no canonical definition to state claims against.
-/

/-! ## A288048.P9851303111403283387

`xor(A025442(n!), A288018(n))`
-/

namespace A288048.P9851303111403283387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025442 (Nat.factorial n)) (A288018 n)

end

end A288048.P9851303111403283387

/-! ## A288048.P11874007650490433770

`xor(A025442(n!), A288500(n))`
-/

namespace A288048.P11874007650490433770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025442 (Nat.factorial n)) (A288500 n)

end

end A288048.P11874007650490433770

/-! ## A288048.P10008864612645560135

`A286644(n)-A060951(A335945(n))`
-/

namespace A288048.P10008864612645560135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286644 n - A060951 (A335945 n).toNat

end

end A288048.P10008864612645560135

/-! ## A288048.P4007580184072145664

`or(A275387(A007482(n)), A288403(n))`
-/

namespace A288048.P4007580184072145664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A275387 (A007482 n).toNat) (A288403 n)

end

end A288048.P4007580184072145664

/-!
# A288050: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 414", based on the 5-celled von Neumann neighborhood.

The programs for A288050, there is no canonical definition to state claims against.
-/

/-! ## A288050.P799828039643565018

`∑[10^n]%A289038(A028310(n))`
-/

namespace A288050.P799828039643565018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A289038 (A028310 n).toNat)

end

end A288050.P799828039643565018

/-! ## A288050.P14423098620053766858

`A007088(A288052(n))`
-/

namespace A288050.P14423098620053766858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288052 n).toNat

end

end A288050.P14423098620053766858

/-! ## A288050.P15867698145279914758

`A007088(A095121(n)+1-A289040(n))`
-/

namespace A288050.P15867698145279914758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A289040 n)).toNat

end

end A288050.P15867698145279914758

/-! ## A288050.P15528569734333835165

`A007088(1-(A289040(n)-A095121(n)))`
-/

namespace A288050.P15528569734333835165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A289040 n - A095121 n)).toNat

end

end A288050.P15528569734333835165

/-! ## A288050.P1832766294931488018

`A007088(A288053(n)+A289041(n)-A289040(n))`
-/

namespace A288050.P1832766294931488018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288053 n + (A289041 n - A289040 n)).toNat

end

end A288050.P1832766294931488018

/-!
# A288051: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 414", based on the 5-celled von Neumann neighborhood.

The programs for A288051, there is no canonical definition to state claims against.
-/

/-! ## A288051.P10468192514512473809

`A007088(A288053(n))`
-/

namespace A288051.P10468192514512473809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288053 n).toNat

end

end A288051.P10468192514512473809

/-! ## A288051.P14804552505967258364

`A007088(and(-A289041(n), A095121(n)))`
-/

namespace A288051.P14804552505967258364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (-A289041 n) (A095121 n)).toNat

end

end A288051.P14804552505967258364

/-! ## A288051.P6687963592214034684

`A007088(A095121(n)+1-A289041(n))`
-/

namespace A288051.P6687963592214034684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A289041 n)).toNat

end

end A288051.P6687963592214034684

/-! ## A288051.P12595657753651805728

`A007088(1-(A289041(n)-A095121(n)))`
-/

namespace A288051.P12595657753651805728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A289041 n - A095121 n)).toNat

end

end A288051.P12595657753651805728

/-! ## A288051.P13207271918717268341

`A007088(A288052(n)+A289040(n)-A289041(n))`
-/

namespace A288051.P13207271918717268341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288052 n + (A289040 n - A289041 n)).toNat

end

end A288051.P13207271918717268341

/-!
# A288052: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 414", based on the 5-celled von Neumann neighborhood.

The programs for A288052, there is no canonical definition to state claims against.
-/

/-! ## A288052.P18277179752603270475

`A095121(n)+1-A289040(n)`
-/

namespace A288052.P18277179752603270475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A289040 n)

end

end A288052.P18277179752603270475

/-! ## A288052.P4820549763776243015

`A052955(A004277(n))-A289040(n)`
-/

namespace A288052.P4820549763776243015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A289040 n

end

end A288052.P4820549763776243015

/-! ## A288052.P6761284704266888705

`A288053(n)+A289041(n)-A289040(n)`
-/

namespace A288052.P6761284704266888705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288053 n + (A289041 n - A289040 n)

end

end A288052.P6761284704266888705

/-! ## A288052.P6368020750213999151

`A288505(n)+A288905(n)-A289040(n)`
-/

namespace A288052.P6368020750213999151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288505 n + (A288905 n - A289040 n)

end

end A288052.P6368020750213999151

/-! ## A288052.P6984295729356546394

`A288506(n)+A288906(n)-A289040(n)`
-/

namespace A288052.P6984295729356546394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288506 n + (A288906 n - A289040 n)

end

end A288052.P6984295729356546394

/-!
# A288053: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 414", based on the 5-celled von Neumann neighborhood.

The programs for A288053, there is no canonical definition to state claims against.
-/

/-! ## A288053.P4420642904607153190

`and(-A289041(n), A095121(n))`
-/

namespace A288053.P4420642904607153190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A289041 n) (A095121 n)

end

end A288053.P4420642904607153190

/-! ## A288053.P6333809230541304529

`A052955(A004277(n))-A289041(n)`
-/

namespace A288053.P6333809230541304529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A289041 n

end

end A288053.P6333809230541304529

/-! ## A288053.P12189053600403307358

`A288052(n)+A289040(n)-A289041(n)`
-/

namespace A288053.P12189053600403307358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288052 n + (A289040 n - A289041 n)

end

end A288053.P12189053600403307358

/-! ## A288053.P6034241087523673781

`A288505(n)+A288905(n)-A289041(n)`
-/

namespace A288053.P6034241087523673781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288505 n + (A288905 n - A289041 n)

end

end A288053.P6034241087523673781

/-! ## A288053.P18309303137228610520

`A288506(n)+A288906(n)-A289041(n)`
-/

namespace A288053.P18309303137228610520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288506 n + (A288906 n - A289041 n)

end

end A288053.P18309303137228610520

/-!
# A288054: Ordered prime numbers as encountered from the building set of positive integers.

The programs for A288054, there is no canonical definition to state claims against.
-/

/-! ## A288054.P3362789928237561471

`filter[A386085(n+1), A178788(#)]`
-/

namespace A288054.P3362789928237561471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A288054.P3362789928237561471

/-! ## A288054.P5888184343935917400

`record[A137564(p?[A084544(n+1)])]`
-/

namespace A288054.P5888184343935917400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288054.P5888184343935917400

/-! ## A288054.P2542391629211712776

`record[A320485(p?[A084544(n+1)])]`
-/

namespace A288054.P2542391629211712776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288054.P2542391629211712776

/-! ## A288054.P1927862034900593783

`record[A320486(p?[A084544(n+1)])]`
-/

namespace A288054.P1927862034900593783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320486 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288054.P1927862034900593783

/-! ## A288054.P1583940187183702253

`∩[A029743(n+1), A084544(n+1)]`
-/

namespace A288054.P1583940187183702253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288054.P1583940187183702253

/-!
# A288058: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 417", based on the 5-celled von Neumann neighborhood.

The programs for A288058, there is no canonical definition to state claims against.
-/

/-! ## A288058.P2833743302253488946

`A288129(n*A185284(n)!)`
-/

namespace A288058.P2833743302253488946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 (n * Nat.factorial (A185284 n).toNat)

end

end A288058.P2833743302253488946

/-! ## A288058.P2428121728806503519

`A288129(n^A185284(n)!)`
-/

namespace A288058.P2428121728806503519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 (n ^ Nat.factorial (A185284 n).toNat)

end

end A288058.P2428121728806503519

/-! ## A288058.P2543590156564131205

`A288129(n)/A185284(n)²!`
-/

namespace A288058.P2543590156564131205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288129 n : ℚ) / (Nat.factorial (A185284 n ^ 2).toNat : ℚ)

end

end A288058.P2543590156564131205

/-! ## A288058.P16101679182530210784

`A288129(n)%A119753(n+5)²`
-/

namespace A288058.P16101679182530210784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288129 n) (A119753 (n + 5) ^ 2)

end

end A288058.P16101679182530210784

/-! ## A288058.P4841160145308859521

`A288129(n)+A000007(A347577(n))`
-/

namespace A288058.P4841160145308859521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288129 n + A000007 (A347577 (n + 55)).toNat

end

end A288058.P4841160145308859521

/-!
# A288059: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 417", based on the 5-celled von Neumann neighborhood.

The programs for A288059, there is no canonical definition to state claims against.
-/

/-! ## A288059.P128487593627187647

`A288130(n)^A185284(n)!`
-/

namespace A288059.P128487593627187647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288130 n ^ Nat.factorial (A185284 n).toNat

end

end A288059.P128487593627187647

/-! ## A288059.P1843650799280718085

`A288130(n)%A119753(n+5)²`
-/

namespace A288059.P1843650799280718085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288130 n) (A119753 (n + 5) ^ 2)

end

end A288059.P1843650799280718085

/-! ## A288059.P12515598029238459158

`C(A010893(n), n)!*A288130(n)`
-/

namespace A288059.P12515598029238459158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.choose (A010893 (n + 13)).toNat n) : ℤ) * A288130 n

end

end A288059.P12515598029238459158

/-! ## A288059.P11146579030229094518

`A288130(n)+C(n, A281918(n+1))`
-/

namespace A288059.P11146579030229094518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288130 n + (Nat.choose n (A281918 (n + 1)).toNat : ℤ)

end

end A288059.P11146579030229094518

/-! ## A288059.P9263614247606935369

`A288130(n)+A185284(A010893(n))`
-/

namespace A288059.P9263614247606935369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288130 n + A185284 (A010893 (n + 13)).toNat

end

end A288059.P9263614247606935369

/-!
# A288060: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 419", based on the 5-celled von Neumann neighborhood.

The programs for A288060, there is no canonical definition to state claims against.
-/

/-! ## A288060.P1658766209019099030

`A007088(A288062(n))`
-/

namespace A288060.P1658766209019099030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288062 n).toNat

end

end A288060.P1658766209019099030

/-! ## A288060.P18022058704625400670

`A185544(2*A288062(n))`
-/

namespace A288060.P18022058704625400670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288062 n).toNat

end

end A288060.P18022058704625400670

/-! ## A288060.P8176830842743606635

`xor(A284932(A029889(n)), A284940(n))`
-/

namespace A288060.P8176830842743606635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A284932 (A029889 n).toNat) (A284940 n)

end

end A288060.P8176830842743606635

/-! ## A288060.P1168463868340867386

`xor(A284932(A152806(n)), A284940(n))`
-/

namespace A288060.P1168463868340867386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A284932 (A152806 n).toNat) (A284940 n)

end

end A288060.P1168463868340867386

/-!
# A288061: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 419", based on the 5-celled von Neumann neighborhood.

The programs for A288061, there is no canonical definition to state claims against.
-/

/-! ## A288061.P6652337343776364677

`A007088(A288063(n))`
-/

namespace A288061.P6652337343776364677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288063 n).toNat

end

end A288061.P6652337343776364677

/-! ## A288061.P15189189733193242404

`A185544(2*A288063(n))`
-/

namespace A288061.P15189189733193242404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288063 n).toNat

end

end A288061.P15189189733193242404

/-! ## A288061.P5157118784350901746

`A185544(A288063(n)+A288063(n))`
-/

namespace A288061.P5157118784350901746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A288063 n + A288063 n).toNat

end

end A288061.P5157118784350901746

/-!
# A288062: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 419", based on the 5-celled von Neumann neighborhood.

The programs for A288062, there is no canonical definition to state claims against.
-/

/-! ## A288062.P17007266695561026890

`A287780(n)+A000120(A159083(n))`
-/

namespace A288062.P17007266695561026890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287780 n + A000120 (A159083 n).toNat

end

end A288062.P17007266695561026890

/-! ## A288062.P12858355430712813924

`A287850(n)+A000120(A159083(n))`
-/

namespace A288062.P12858355430712813924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287850 n + A000120 (A159083 n).toNat

end

end A288062.P12858355430712813924

/-! ## A288062.P2427607168204462875

`or(A000120(A000142(n)), A287780(n))`
-/

namespace A288062.P2427607168204462875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (A000142 n).toNat) (A287780 n)

end

end A288062.P2427607168204462875

/-! ## A288062.P6955940780234049870

`or(A000120(A000142(n)), A287850(n))`
-/

namespace A288062.P6955940780234049870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (A000142 n).toNat) (A287850 n)

end

end A288062.P6955940780234049870

/-!
# A288064: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 421", based on the 5-celled von Neumann neighborhood.

The programs for A288064, there is no canonical definition to state claims against.
-/

/-! ## A288064.P14293766062283969419

`A007088(A288066(n))`
-/

namespace A288064.P14293766062283969419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288066 n).toNat

end

end A288064.P14293766062283969419

/-! ## A288064.P14320033414100707151

`A185544(2*A288066(n))`
-/

namespace A288064.P14320033414100707151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288066 n).toNat

end

end A288064.P14320033414100707151

/-! ## A288064.P4193436138094248743

`A288592(n)-A184955((3-n)²)`
-/

namespace A288064.P4193436138094248743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288592 n - A184955 ((3 - (n : ℤ)) ^ 2).toNat

end

end A288064.P4193436138094248743

/-! ## A288064.P9788230897447388266

`A321936(A287978(n))+A287975(n)`
-/

namespace A288064.P9788230897447388266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A287978 n).toNat + A287975 n

end

end A288064.P9788230897447388266

/-!
# A288065: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 421", based on the 5-celled von Neumann neighborhood.

The programs for A288065, there is no canonical definition to state claims against.
-/

/-! ## A288065.P12438094347501662147

`A007088(A288067(n))`
-/

namespace A288065.P12438094347501662147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288067 n).toNat

end

end A288065.P12438094347501662147

/-! ## A288065.P14629499050732582758

`A185544(2*A288067(n))`
-/

namespace A288065.P14629499050732582758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288067 n).toNat

end

end A288065.P14629499050732582758

/-! ## A288065.P1161072494515620010

`A185544(A288067(n)+A288067(n))`
-/

namespace A288065.P1161072494515620010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A288067 n + A288067 n).toNat

end

end A288065.P1161072494515620010

/-!
# A288066: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 421", based on the 5-celled von Neumann neighborhood.

The programs for A288066, there is no canonical definition to state claims against.
-/

/-! ## A288066.P3337143813930063073

`A287977(n)+A063725(A001710(n))`
-/

namespace A288066.P3337143813930063073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287977 n + A063725 (A001710 n).toNat

end

end A288066.P3337143813930063073

/-! ## A288066.P13699520521039794698

`A287977(n)+A216600(A026597(n))`
-/

namespace A288066.P13699520521039794698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287977 n + A216600 (A026597 n).toNat

end

end A288066.P13699520521039794698

/-! ## A288066.P6290515609378324631

`A321537(A055099(n))+A287977(n)`
-/

namespace A288066.P6290515609378324631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 (A055099 n).toNat + A287977 n

end

end A288066.P6290515609378324631

/-! ## A288066.P12787748072772714354

`A349798(A287963(n))+A287977(n)`
-/

namespace A288066.P12787748072772714354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349798 (A287963 n).toNat + A287977 n

end

end A288066.P12787748072772714354

/-!
# A288067: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 421", based on the 5-celled von Neumann neighborhood.

The programs for A288067, there is no canonical definition to state claims against.
-/

/-! ## A288067.P6488911561006333545

`A288595(n)+A061858(A181545(n))`
-/

namespace A288067.P6488911561006333545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288595 n + A061858 (A181545 n).toNat

end

end A288067.P6488911561006333545

/-! ## A288067.P16696357950062069259

`xor(A061858(A279558(n)), A288595(n))`
-/

namespace A288067.P16696357950062069259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A061858 (A279558 n).toNat) (A288595 n)

end

end A288067.P16696357950062069259

/-!
# A288068: Repdigits in base 10 which are Brazilian numbers.

The programs for A288068, there is no canonical definition to state claims against.
-/

/-! ## A288068.P11269622432386939264

`∩[A010785(n), A325322(n+1)]`
-/

namespace A288068.P11269622432386939264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010785 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288068.P11269622432386939264

/-! ## A288068.P13956694668576572801

`∩[A048307(n), A325322(n+1)]`
-/

namespace A288068.P13956694668576572801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048307 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288068.P13956694668576572801

/-! ## A288068.P16847782789696953902

`∩[A325322(n+1), A064222(n)]`
-/

namespace A288068.P16847782789696953902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064222 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288068.P16847782789696953902

/-! ## A288068.P17557054536558845181

`∩[A044821(n+1), A325322(n+1)]`
-/

namespace A288068.P17557054536558845181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288068.P17557054536558845181

/-! ## A288068.P9552061270305146038

`∩[A048321(n+1), A325322(n+1)]`
-/

namespace A288068.P9552061270305146038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288068.P9552061270305146038

/-! ## A288068.P14608114813771585254

`∩[A096105(n+1), A325322(n+1)]`
-/

namespace A288068.P14608114813771585254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288068.P14608114813771585254

/-! ## A288068.P5800790514804554349

`∩[A160818(n+1), A325322(n+1)]`
-/

namespace A288068.P5800790514804554349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288068.P5800790514804554349

/-! ## A288068.P4132583236282141736

`∩[A193460(n+1), A325322(n+1)]`
-/

namespace A288068.P4132583236282141736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288068.P4132583236282141736

/-! ## A288068.P6067555465545111337

`∩[A325322(n+1), A378949(n+1)]`
-/

namespace A288068.P6067555465545111337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288068.P6067555465545111337

/-! ## A288068.P12126643141504208012

`∩[A009996(n+1), A325322(n+1)]`
-/

namespace A288068.P12126643141504208012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288068.P12126643141504208012

/-!
# A288069: Quotients obtained when the Zuckerman numbers are divided by the product of their digits.

The programs for A288069, there is no canonical definition to state claims against.
-/

/-! ## A288069.P2650906517455769111

`A007602(n+1)/A360075(n+1)`
-/

namespace A288069.P2650906517455769111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007602 (n + 1) : ℚ) / (A360075 (n + 1) : ℚ)

end

end A288069.P2650906517455769111

/-! ## A288069.P12463914449524648005

`A007602(n+1)/∏{digits}[A007602(n+1), A007602(#)]`
-/

namespace A288069.P12463914449524648005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007602 (n + 1) : ℚ) / ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007602 x).prod : ℤ) : ℚ)

end

end A288069.P12463914449524648005

/-! ## A288069.P13892615628375253059

`∩[A055471(n+1), A180484(n+1)]/A360075(n+1)`
-/

namespace A288069.P13892615628375253059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180484 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A360075 (n + 1) : ℚ)

end

end A288069.P13892615628375253059

/-! ## A288069.P7136108766399616451

`∩[A034838(n+1), A055471(n+1)]/A360075(n+1)`
-/

namespace A288069.P7136108766399616451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A360075 (n + 1) : ℚ)

end

end A288069.P7136108766399616451

/-! ## A288069.P9048344564085737797

`∩[A055471(n+1), A180478(n+1)]/A360075(n+1)`
-/

namespace A288069.P9048344564085737797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180478 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A360075 (n + 1) : ℚ)

end

end A288069.P9048344564085737797

/-! ## A288069.P15581659701571791258

`A066577(A007602(n+1))`
-/

namespace A288069.P15581659701571791258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066577 (A007602 (n + 1)).toNat

end

end A288069.P15581659701571791258

/-! ## A288069.P8613791387334812234

`lt[0, A188642(n)]/A360075(n+1)`
-/

namespace A288069.P8613791387334812234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188642 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℚ) / (A360075 (n + 1) : ℚ)

end

end A288069.P8613791387334812234

/-! ## A288069.P14217780384753948274

`record[A360073(n+1)]/A360075(n+1)`
-/

namespace A288069.P14217780384753948274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360073 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A360075 (n + 1) : ℚ)

end

end A288069.P14217780384753948274

/-! ## A288069.P6841075643551357771

`record[(n+1)*A188642(n+1)]/A051801(A007602(n+1))`
-/

namespace A288069.P6841075643551357771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A188642 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A051801 (A007602 (n + 1)).toNat : ℚ)

end

end A288069.P6841075643551357771

/-! ## A288069.P4565574569728982637

`A007602(n+1)/A007954(A007602(n+1))%A180484(n+5)`
-/

namespace A288069.P4565574569728982637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007602 (n + 1) : ℚ) / (Int.tmod (A007954 (A007602 (n + 1)).toNat) (A180484 (n + 5)) : ℚ)

end

end A288069.P4565574569728982637

/-!
# A288071: a(n) is the number of rooted maps with n edges and 4 faces on an orientable surface of genus 1.

The programs for A288071, there is no canonical definition to state claims against.
-/

/-! ## A288071.P1755594105045996231

`A269921(A167499(n+2))`
-/

namespace A288071.P1755594105045996231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (A167499 (n + 2)).toNat

end

end A288071.P1755594105045996231

/-! ## A288071.P11944348750541180180

`record[A269921(A167499(A028242(n)))]`
-/

namespace A288071.P11944348750541180180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (A167499 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288071.P11944348750541180180

/-! ## A288071.P2759844425139790230

`record[A269921(A167499(A123108(n)))]`
-/

namespace A288071.P2759844425139790230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (A167499 (A123108 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288071.P2759844425139790230

/-! ## A288071.P9988970984753797784

`A269921((n+3)²-∑[n+1])`
-/

namespace A288071.P9988970984753797784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A288071.P9988970984753797784

/-!
# A288072: a(n) is the number of rooted maps with n edges and 5 faces on an orientable surface of genus 1.

The programs for A288072, there is no canonical definition to state claims against.
-/

/-! ## A288072.P13224584500645346180

`A269921(A155212(n)+14)`
-/

namespace A288072.P13224584500645346180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (A155212 n + 14).toNat

end

end A288072.P13224584500645346180

/-! ## A288072.P5200570786740769105

`A269921(A330034(n+1)²+A056000(n)+15)`
-/

namespace A288072.P5200570786740769105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (A330034 (n + 1) ^ 2 + (A056000 n + 15)).toNat

end

end A288072.P5200570786740769105

/-! ## A288072.P14987599801410097815

`A269921(eq[2, A092921(n)]+1)`
-/

namespace A288072.P14987599801410097815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A288072.P14987599801410097815

/-! ## A288072.P17984242483755624007

`A269921(eq[3, A244657(n+1)])`
-/

namespace A288072.P17984242483755624007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288072.P17984242483755624007

/-! ## A288072.P8048149523175050597

`A269921(eq[8, A286158(n+1)])`
-/

namespace A288072.P8048149523175050597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288072.P8048149523175050597

/-!
# A288073: a(n) is the number of rooted maps with n edges and 9 faces on an orientable surface of genus 1.

The programs for A288073, there is no canonical definition to state claims against.
-/

/-! ## A288073.P9885762126361921176

`A269921(A155212(n+5)+1)`
-/

namespace A288073.P9885762126361921176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (A155212 (n + 5) + 1).toNat

end

end A288073.P9885762126361921176

/-!
# A288074: a(n) is the number of rooted maps with n edges and 10 faces on an orientable surface of genus 1.

The programs for A288074, there is no canonical definition to state claims against.
-/

/-! ## A288074.P3169890525787790490

`A269921(A155212(n+6))`
-/

namespace A288074.P3169890525787790490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269921 (A155212 (n + 6)).toNat

end

end A288074.P3169890525787790490

/-!
# A288075: a(n) is the number of rooted maps with n edges and one face on an orientable surface of genus 3.

The programs for A288075, there is no canonical definition to state claims against.
-/

/-! ## A288075.P14699406457298217282

`A269923(∑[n]+6)`
-/

namespace A288075.P14699406457298217282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269923 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A288075.P14699406457298217282

/-! ## A288075.P11377459525544021109

`record[gcd(A049600(n), A269923(n+6))]`
-/

namespace A288075.P11377459525544021109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049600 n) (A269923 (n + 6))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288075.P11377459525544021109

/-! ## A288075.P11501225232386029082

`record[root(A269923(n+6), A001497(n))]`
-/

namespace A288075.P11501225232386029082
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A269923 (n + 6) : ℝ) ^ (1 / (A001497 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288075.P11501225232386029082

/-! ## A288075.P2165873851937241479

`record[A269923(n+6)/A174150(n)]`
-/

namespace A288075.P2165873851937241479
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269923 (n + 6) : ℚ) / (A174150 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288075.P2165873851937241479

/-! ## A288075.P14040160742374713003

`record[A269923(n+6)/A334394(n)]`
-/

namespace A288075.P14040160742374713003
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269923 (n + 6) : ℚ) / (A334394 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288075.P14040160742374713003

/-!
# A288076: a(n) is the number of rooted maps with n edges and 2 faces on an orientable surface of genus 3.

The programs for A288076, there is no canonical definition to state claims against.
-/

/-! ## A288076.P9398192117162085832

`A269923(A167487(n))`
-/

namespace A288076.P9398192117162085832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269923 (A167487 n).toNat

end

end A288076.P9398192117162085832

/-! ## A288076.P13078307053002470212

`record[A103452(n)*A269923(n+8)]`
-/

namespace A288076.P13078307053002470212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n * A269923 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288076.P13078307053002470212

/-! ## A288076.P7713380437127295389

`record[gcd(A049600(n), A269923(n+7))]`
-/

namespace A288076.P7713380437127295389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049600 n) (A269923 (n + 7))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288076.P7713380437127295389

/-! ## A288076.P11784807091730885355

`A269923(∑[n+2]+5)`
-/

namespace A288076.P11784807091730885355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269923 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A288076.P11784807091730885355

/-!
# A288077: a(n) is the number of rooted maps with n edges and 3 faces on an orientable surface of genus 3.

The programs for A288077, there is no canonical definition to state claims against.
-/

/-! ## A288077.P11382158585924277169

`A269923(A167487(n+1)+1)`
-/

namespace A288077.P11382158585924277169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269923 (A167487 (n + 1) + 1).toNat

end

end A288077.P11382158585924277169

/-! ## A288077.P1696760994898360008

`A269923(∑[n+3]+6)`
-/

namespace A288077.P1696760994898360008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269923 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A288077.P1696760994898360008

/-! ## A288077.P15251064467461355592

`A269923(A167614(n+2))+A049347(3*n+2)`
-/

namespace A288077.P15251064467461355592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269923 (A167614 (n + 2)).toNat + A049347 (3 * n + 2)

end

end A288077.P15251064467461355592

/-! ## A288077.P5805029474294878622

`record[gcd(A269923(n+9), A269947(n+1))]`
-/

namespace A288077.P5805029474294878622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A269923 (n + 9)) (A269947 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288077.P5805029474294878622

/-!
# A288078: a(n) is the number of rooted maps with n edges and 4 faces on an orientable surface of genus 3.

The programs for A288078, there is no canonical definition to state claims against.
-/

/-! ## A288078.P3261132647216468581

`A269923(A052905(n)+14)`
-/

namespace A288078.P3261132647216468581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269923 (A052905 n + 14).toNat

end

end A288078.P3261132647216468581

/-! ## A288078.P7020011214729910822

`A269923(A055999(n)+15)`
-/

namespace A288078.P7020011214729910822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269923 (A055999 n + 15).toNat

end

end A288078.P7020011214729910822

/-! ## A288078.P16031534627873786660

`A269923(A155212(n)+10)`
-/

namespace A288078.P16031534627873786660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269923 (A155212 n + 10).toNat

end

end A288078.P16031534627873786660

/-! ## A288078.P13906075625180157292

`A269923(A167614(n+3)-1)`
-/

namespace A288078.P13906075625180157292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269923 (A167614 (n + 3) - 1).toNat

end

end A288078.P13906075625180157292

/-! ## A288078.P5525161130552905324

`A269923(∑[A000027(2*(n+2))]-∑[n]+8)`
-/

namespace A288078.P5525161130552905324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269923 (∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + 8).toNat

end

end A288078.P5525161130552905324

/-!
# A288079: a(n) is the number of rooted maps with n edges and 5 faces on an orientable surface of genus 3.

The programs for A288079, there is no canonical definition to state claims against.
-/

/-! ## A288079.P12766663748666388218

`A269923(A000124(n+5))`
-/

namespace A288079.P12766663748666388218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269923 (A000124 (n + 5)).toNat

end

end A288079.P12766663748666388218

/-! ## A288079.P10254806624868287613

`A269923(eq[10, A051162(n)])`
-/

namespace A288079.P10254806624868287613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269923 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288079.P10254806624868287613

/-!
# A288080: a(n) is the number of rooted maps with n edges and 6 faces on an orientable surface of genus 3.

The programs for A288080, there is no canonical definition to state claims against.
-/

/-! ## A288080.P18003738684560451144

`A269923(A000217(n+6))`
-/

namespace A288080.P18003738684560451144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269923 (A000217 (n + 6)).toNat

end

end A288080.P18003738684560451144

/-!
# A288082: a(n) is the number of rooted maps with n edges and 2 faces on an orientable surface of genus 2.

The programs for A288082, there is no canonical definition to state claims against.
-/

/-! ## A288082.P1272530999391784047

`A269922(∑[n+1]+5)`
-/

namespace A288082.P1272530999391784047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A288082.P1272530999391784047

/-! ## A288082.P18272276723832902442

`lcm(3, A269922(A167499(n)))`
-/

namespace A288082.P18272276723832902442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A269922 (A167499 n).toNat)

end

end A288082.P18272276723832902442

/-! ## A288082.P3195863535528419328

`record[gcd(A002262(n), A269922(n+5))]`
-/

namespace A288082.P3195863535528419328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A269922 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288082.P3195863535528419328

/-! ## A288082.P12968376381599573422

`or(A000007(n), A269922(A167499(n)))`
-/

namespace A288082.P12968376381599573422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A269922 (A167499 n).toNat)

end

end A288082.P12968376381599573422

/-! ## A288082.P6949668281651231778

`or(A000038(n), A269922(A167499(n)))`
-/

namespace A288082.P6949668281651231778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A269922 (A167499 n).toNat)

end

end A288082.P6949668281651231778

/-!
# A288083: a(n) is the number of rooted maps with n edges and 3 faces on an orientable surface of genus 2.

The programs for A288083, there is no canonical definition to state claims against.
-/

/-! ## A288083.P15079850425167060760

`A269922(A166136(n+1))`
-/

namespace A288083.P15079850425167060760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (A166136 (n + 1)).toNat

end

end A288083.P15079850425167060760

/-! ## A288083.P12174952779884332196

`A269922(A167499(n+1)+1)`
-/

namespace A288083.P12174952779884332196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (A167499 (n + 1) + 1).toNat

end

end A288083.P12174952779884332196

/-! ## A288083.P5760399935295846119

`A269922(A167614(n+2)-n)`
-/

namespace A288083.P5760399935295846119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (A167614 (n + 2) - (n : ℤ)).toNat

end

end A288083.P5760399935295846119

/-! ## A288083.P56544878902860881

`A269922(∑[n+3]+4)`
-/

namespace A288083.P56544878902860881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A288083.P56544878902860881

/-!
# A288084: a(n) is the number of rooted maps with n edges and 4 faces on an orientable surface of genus 2.

The programs for A288084, there is no canonical definition to state claims against.
-/

/-! ## A288084.P16109527799505912547

`A269922(A052905(n)+12)`
-/

namespace A288084.P16109527799505912547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (A052905 n + 12).toNat

end

end A288084.P16109527799505912547

/-! ## A288084.P18218956807792298750

`A269922(A055999(n)+13)`
-/

namespace A288084.P18218956807792298750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (A055999 n + 13).toNat

end

end A288084.P18218956807792298750

/-! ## A288084.P14704528851575062665

`A269922(A166136(n+2)+1)`
-/

namespace A288084.P14704528851575062665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (A166136 (n + 2) + 1).toNat

end

end A288084.P14704528851575062665

/-! ## A288084.P6548045182522437560

`A269922(A155212(n)+8)`
-/

namespace A288084.P6548045182522437560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (A155212 n + 8).toNat

end

end A288084.P6548045182522437560

/-! ## A288084.P13967045596471366249

`A269922(A112355(n+2))`
-/

namespace A288084.P13967045596471366249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (A112355 (n + 2)).toNat

end

end A288084.P13967045596471366249

/-!
# A288085: a(n) is the number of rooted maps with n edges and 5 faces on an orientable surface of genus 2.

The programs for A288085, there is no canonical definition to state claims against.
-/

/-! ## A288085.P106658173502599229

`A269922(A155212(n)+16)`
-/

namespace A288085.P106658173502599229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (A155212 n + 16).toNat

end

end A288085.P106658173502599229

/-! ## A288085.P7047439318017616776

`A269922(A056000(n)+18)`
-/

namespace A288085.P7047439318017616776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (A056000 n + 18).toNat

end

end A288085.P7047439318017616776

/-! ## A288085.P8217808096713071620

`A269922(eq[5, A002260(n+1)]+4)`
-/

namespace A288085.P8217808096713071620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4)

end

end A288085.P8217808096713071620

/-! ## A288085.P15434577389657589973

`A269922(A056115(n)+14)`
-/

namespace A288085.P15434577389657589973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (A056115 n + 14).toNat

end

end A288085.P15434577389657589973

/-! ## A288085.P7571487360182336931

`A269922(eq[11, A099375(n)]-(n+1))`
-/

namespace A288085.P7571487360182336931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - (n + 1))

end

end A288085.P7571487360182336931

/-!
# A288086: a(n) is the number of rooted maps with n edges and 6 faces on an orientable surface of genus 2.

The programs for A288086, there is no canonical definition to state claims against.
-/

/-! ## A288086.P13450464008286609781

`A269922(eq[5, A002260(n+1)]+n+10)`
-/

namespace A288086.P13450464008286609781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 10))

end

end A288086.P13450464008286609781

/-! ## A288086.P8981658381456198508

`A269922(A302537(n)+18)`
-/

namespace A288086.P8981658381456198508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (A302537 n + 18).toNat

end

end A288086.P8981658381456198508

/-! ## A288086.P2450543695384680647

`A269922(A000096(n+5)-1)`
-/

namespace A288086.P2450543695384680647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (A000096 (n + 5) - 1).toNat

end

end A288086.P2450543695384680647

/-! ## A288086.P16839167522965778988

`A269922(eq[11, A099375(n)]+4)`
-/

namespace A288086.P16839167522965778988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4)

end

end A288086.P16839167522965778988

/-! ## A288086.P7510230016222716990

`A269922(A167614(n+4)+1+n)`
-/

namespace A288086.P7510230016222716990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (A167614 (n + 4) + 1 + (n : ℤ)).toNat

end

end A288086.P7510230016222716990

/-!
# A288088: a(n) is the number of rooted maps with n edges and 8 faces on an orientable surface of genus 2.

The programs for A288088, there is no canonical definition to state claims against.
-/

/-! ## A288088.P1058195423805541811

`A269922(eq[9, A131818(n+1)]+3)`
-/

namespace A288088.P1058195423805541811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3)

end

end A288088.P1058195423805541811

/-! ## A288088.P14328139953545881858

`A269922(A055999(n+4)+n+10)`
-/

namespace A288088.P14328139953545881858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (A055999 (n + 4) + (n + 10 : ℤ)).toNat

end

end A288088.P14328139953545881858

/-!
# A288089: a(n) is the number of rooted maps with n edges and 9 faces on an orientable surface of genus 2.

The programs for A288089, there is no canonical definition to state claims against.
-/

/-! ## A288089.P17673319598293233298

`A269922(eq[16, A216955(n+1)])`
-/

namespace A288089.P17673319598293233298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269922 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288089.P17673319598293233298

/-!
# A288099: Number of solutions to x^4 + y^4 = z^4 mod n.

The programs for A288099, there is no canonical definition to state claims against.
-/

/-! ## A288099.P8428461348977946765

`A288103(A001222(2^(n+1)))`
-/

namespace A288099.P8428461348977946765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288103 (A001222 (2 ^ (n + 1))).toNat

end

end A288099.P8428461348977946765

/-! ## A288099.P5020894764480430405

`A288103(n+1)%A123660(n)`
-/

namespace A288099.P5020894764480430405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288103 (n + 1)) (A123660 (n + 35))

end

end A288099.P5020894764480430405

/-! ## A288099.P17821331547597156714

`A288103(n+1)^A055965(n)!`
-/

namespace A288099.P17821331547597156714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288103 (n + 1) ^ Nat.factorial (A055965 n).toNat

end

end A288099.P17821331547597156714

/-! ## A288099.P1544713080084351359

`A288103(n+1)^A185274(n)!`
-/

namespace A288099.P1544713080084351359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288103 (n + 1) ^ Nat.factorial (A185274 n).toNat

end

end A288099.P1544713080084351359

/-! ## A288099.P4319553527812170538

`A288103(n+1)^(A327918(n+1)%2)`
-/

namespace A288099.P4319553527812170538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288103 (n + 1) : ℚ) ^ (Int.tmod (A327918 (n + 1)) 2 : ℤ)

end

end A288099.P4319553527812170538

