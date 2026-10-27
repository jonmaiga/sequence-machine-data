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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A306900: a(n) is the total number of sum of weighted records over set partitions of [n].

The programs for A306900, there is no canonical definition to state claims against.
-/

/-! ## A306900.P8453835851646884873

`A002266(4*A227081(n))`
-/

namespace A306900.P8453835851646884873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (4 * A227081 n).toNat

end

end A306900.P8453835851646884873

/-! ## A306900.P2374860010379401284

`A059995(8*A227081(n))`
-/

namespace A306900.P2374860010379401284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (8 * A227081 n).toNat

end

end A306900.P2374860010379401284

/-!
# A306902: Sum over all partitions of n of the bitwise OR of the parts.

The programs for A306902, there is no canonical definition to state claims against.
-/

/-! ## A306902.P16635161860797166552

`A164174(n)-A113006(A143571(n))`
-/

namespace A306902.P16635161860797166552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164174 n - A113006 (A143571 n).toNat

end

end A306902.P16635161860797166552

/-! ## A306902.P5525267972549502062

`A164174(n)-A074140(A174646(n+1))`
-/

namespace A306902.P5525267972549502062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164174 n - A074140 (A174646 (n + 1)).toNat

end

end A306902.P5525267972549502062

/-! ## A306902.P13285311982469122973

`A164397(n)-A147199(A147199(n+1))`
-/

namespace A306902.P13285311982469122973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164397 n - A147199 (A147199 (n + 1)).toNat

end

end A306902.P13285311982469122973

/-! ## A306902.P15377096855371133048

`A164406(n)-A001792(A179959(n+4))`
-/

namespace A306902.P15377096855371133048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164406 n - A001792 (A179959 (n + 4)).toNat

end

end A306902.P15377096855371133048

/-!
# A306904: The geometric mean of the first n integers, rounded to the nearest integer.

The programs for A306904, the canonical program `A306904.P2269242515286260611` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306904 has offset 1).

The definition of A306904 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306904.P2269242515286260611

`round(exp(∑[log(n+1)]/(n+1)))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A306904

/-- `round(exp(∑[log(n+1)]/(n+1)))` -/
def P2269242515286260611.Spec : Prop :=
  ∀ n, P2269242515286260611.a n = A306904 (n + 1)

theorem P2269242515286260611.correct : P2269242515286260611.Spec := by
  intro n
  simp only [A306904, Nat.add_sub_cancel]

end A306904

/-! ## A306904.P14827692061426998420

`A003056(A061375(∑[A061375(n+5)]))`
-/

namespace A306904.P14827692061426998420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061375 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A061375 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A306904.P14827692061426998420

namespace A306904

/-- `A003056(A061375(∑[A061375(n+5)]))` -/
def P14827692061426998420.Spec : Prop :=
  ∀ n, P14827692061426998420.a n = A306904 (n + 1)

end A306904

/-! ## A306904.P11474903819528506657

`ceil(A240707(n+1)/A047473(A087475(n)))`
-/

namespace A306904.P11474903819528506657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A240707 (n + 1) : ℚ) / (A047473 (A087475 n).toNat : ℚ)⌉

end

end A306904.P11474903819528506657

namespace A306904

/-- `ceil(A240707(n+1)/A047473(A087475(n)))` -/
def P11474903819528506657.Spec : Prop :=
  ∀ n, P11474903819528506657.a n = A306904 (n + 1)

end A306904

/-! ## A306904.P1002843853194353780

`A204560(A080036(∑[3*round(2*n/5)+n]))`
-/

namespace A306904.P1002843853194353780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway (2 * ((n : ℚ) / 5)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204560 (A080036 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A306904.P1002843853194353780

namespace A306904

/-- `A204560(A080036(∑[3*round(2*n/5)+n]))` -/
def P1002843853194353780.Spec : Prop :=
  ∀ n, P1002843853194353780.a n = A306904 (n + 1)

end A306904

/-! ## A306904.P4817019924860771132

`A220104(∑[A047317(A025764(n))])`
-/

namespace A306904.P4817019924860771132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047317 (A025764 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220104 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306904.P4817019924860771132

namespace A306904

/-- `A220104(∑[A047317(A025764(n))])` -/
def P4817019924860771132.Spec : Prop :=
  ∀ n, P4817019924860771132.a n = A306904 (n + 1)

end A306904

/-! ## A306904.P10479447876682138658

`A048766(∑[A141205(A025764(n))])`
-/

namespace A306904.P10479447876682138658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141205 (A025764 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306904.P10479447876682138658

namespace A306904

/-- `A048766(∑[A141205(A025764(n))])` -/
def P10479447876682138658.Spec : Prop :=
  ∀ n, P10479447876682138658.a n = A306904 (n + 1)

end A306904

/-! ## A306904.P1111414386965351513

`A048766(∑[A000124(A139338(n+1))])`
-/

namespace A306904.P1111414386965351513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A139338 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306904.P1111414386965351513

namespace A306904

/-- `A048766(∑[A000124(A139338(n+1))])` -/
def P1111414386965351513.Spec : Prop :=
  ∀ n, P1111414386965351513.a n = A306904 (n + 1)

end A306904

/-! ## A306904.P15226405271065689735

`A048766(∑[A225373(n)+A166309(n+1)])`
-/

namespace A306904.P15226405271065689735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225373 n + A166309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306904.P15226405271065689735

namespace A306904

/-- `A048766(∑[A225373(n)+A166309(n+1)])` -/
def P15226405271065689735.Spec : Prop :=
  ∀ n, P15226405271065689735.a n = A306904 (n + 1)

end A306904

/-!
# A306905: a(n) = A306898(n)/2.

The programs for A306905, the canonical program `A306905.P16718704859846573319` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306905 has offset 1).

The definition of A306905 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000013, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A306905.P16718704859846573319

`(n+1)*A000013(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A306905

/-- `(n+1)*A000013(n+1)` -/
def P16718704859846573319.Spec : Prop :=
  ∀ n, P16718704859846573319.a n = A306905 (n + 1)

theorem P16718704859846573319.correct : P16718704859846573319.Spec := by
  intro n
  simp only [A306905, Nat.add_sub_cancel]

end A306905

/-! ## A306905.P15120957295957279289

`A306898(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A306905.P15120957295957279289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306898 (n + 1) : ℚ) / 2

end

end A306905.P15120957295957279289

namespace A306905

/-- `A306898(n+1)/2` -/
def P15120957295957279289.Spec : Prop :=
  ∀ n, P15120957295957279289.a n = (A306905 (n + 1) : ℚ)

theorem P15120957295957279289.correct : P15120957295957279289.Spec := by
  intro n
  simp only [A306905, Nat.add_sub_cancel, A306905.P15120957295957279289.a, A306905.P16718704859846573319.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A306898, A306898.P15422346227010139587.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A056295, A056295.P9438402425658344231.a, A000016, A000016.P8500875009608658723.a, A008965, A008965.P16924218572130557635.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A306905

/-! ## A306905.P2697781396571378888

`∑[abs(Δ[n*A000013(n)])]`
-/

namespace A306905.P2697781396571378888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000013 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306905.P2697781396571378888

namespace A306905

/-- `∑[abs(Δ[n*A000013(n)])]` -/
def P2697781396571378888.Spec : Prop :=
  ∀ n, P2697781396571378888.a n = A306905 (n + 1)

end A306905

/-! ## A306905.P10758524423203622322

`(n+1)*(A056295(n+1)+1)`
-/

namespace A306905.P10758524423203622322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A056295 (n + 1) + 1)

end

end A306905.P10758524423203622322

namespace A306905

/-- `(n+1)*(A056295(n+1)+1)` -/
def P10758524423203622322.Spec : Prop :=
  ∀ n, P10758524423203622322.a n = A306905 (n + 1)

end A306905

/-! ## A306905.P455649921067707004

`∑{d}[n+1, #*A011946((n+1)/#)]`
-/

namespace A306905.P455649921067707004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A011946 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306905.P455649921067707004

namespace A306905

/-- `∑{d}[n+1, #*A011946((n+1)/#)]` -/
def P455649921067707004.Spec : Prop :=
  ∀ n, P455649921067707004.a n = A306905 (n + 1)

end A306905

/-! ## A306905.P11391056182889670954

`A381194(n+1)+A000225(n)`
-/

namespace A306905.P11391056182889670954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381194 (n + 1) + A000225 n

end

end A306905.P11391056182889670954

namespace A306905

/-- `A381194(n+1)+A000225(n)` -/
def P11391056182889670954.Spec : Prop :=
  ∀ n, P11391056182889670954.a n = A306905 (n + 1)

theorem P11391056182889670954.correct : P11391056182889670954.Spec := by
  intro n
  simp only [A306905, Nat.add_sub_cancel, A306905.P11391056182889670954.a, A306905.P16718704859846573319.a, A000013, A000013.P13330308426199228881.f1, A000013.P13330308426199228881.a, A000225, A000225.P6535533121115206393.a, A381194, A381194.P16466113372331178624.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A056295, A056295.P9438402425658344231.a, A000016, A000016.P8500875009608658723.a, A008965, A008965.P16924218572130557635.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A306905

/-! ## A306905.P5502687284656844294

`(n+1)/∏[A000013(n)/A000013(n+1)]`
-/

namespace A306905.P5502687284656844294
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000013 n : ℚ) / (A000013 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A306905.P5502687284656844294

namespace A306905

/-- `(n+1)/∏[A000013(n)/A000013(n+1)]` -/
def P5502687284656844294.Spec : Prop :=
  ∀ n, P5502687284656844294.a n = (A306905 (n + 1) : ℚ)

end A306905

/-! ## A306905.P10593185523077706567

`(n+1)*(A000031(n+1)-A000016(n+1))`
-/

namespace A306905.P10593185523077706567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000031 (n + 1) - A000016 (n + 1))

end

end A306905.P10593185523077706567

namespace A306905

/-- `(n+1)*(A000031(n+1)-A000016(n+1))` -/
def P10593185523077706567.Spec : Prop :=
  ∀ n, P10593185523077706567.a n = A306905 (n + 1)

end A306905

/-! ## A306905.P11529139748256061081

`∑{d}[n+1, A034737(#)*A327276((n+1)/#)]`
-/

namespace A306905.P11529139748256061081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034737 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306905.P11529139748256061081

namespace A306905

/-- `∑{d}[n+1, A034737(#)*A327276((n+1)/#)]` -/
def P11529139748256061081.Spec : Prop :=
  ∀ n, P11529139748256061081.a n = A306905 (n + 1)

end A306905

/-! ## A306905.P11392945002294247102

`∑{d}[n+1, A344372(#)*A349570((n+1)/#)]`
-/

namespace A306905.P11392945002294247102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344372 d * A349570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306905.P11392945002294247102

namespace A306905

/-- `∑{d}[n+1, A344372(#)*A349570((n+1)/#)]` -/
def P11392945002294247102.Spec : Prop :=
  ∀ n, P11392945002294247102.a n = A306905 (n + 1)

end A306905

/-! ## A306905.P3286694950118817945

`∑{d}[n+1, A000079(#-1)*A062570((n+1)/#)]`
-/

namespace A306905.P3286694950118817945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000079 (d - 1) * A062570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306905.P3286694950118817945

namespace A306905

/-- `∑{d}[n+1, A000079(#-1)*A062570((n+1)/#)]` -/
def P3286694950118817945.Spec : Prop :=
  ∀ n, P3286694950118817945.a n = A306905 (n + 1)

end A306905

/-! ## A306905.P14997502071191591112

`∑{d}[n+1, A034738(#)*A036987((n+1)/#-1)]`
-/

namespace A306905.P14997502071191591112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034738 d * A036987 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A306905.P14997502071191591112

namespace A306905

/-- `∑{d}[n+1, A034738(#)*A036987((n+1)/#-1)]` -/
def P14997502071191591112.Spec : Prop :=
  ∀ n, P14997502071191591112.a n = A306905 (n + 1)

end A306905

/-! ## A306905.P9700448806137805768

`∑{d}[n+1, A000010(#)*A127804((n+1)/#-1)]`
-/

namespace A306905.P9700448806137805768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A127804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A306905.P9700448806137805768

namespace A306905

/-- `∑{d}[n+1, A000010(#)*A127804((n+1)/#-1)]` -/
def P9700448806137805768.Spec : Prop :=
  ∀ n, P9700448806137805768.a n = A306905 (n + 1)

end A306905

/-! ## A306905.P4573180151005186395

`A053635(n+1)-A053636(n+1)/2`
-/

namespace A306905.P4573180151005186395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053635 (n + 1) : ℚ) - (A053636 (n + 1) : ℚ) / 2

end

end A306905.P4573180151005186395

namespace A306905

/-- `A053635(n+1)-A053636(n+1)/2` -/
def P4573180151005186395.Spec : Prop :=
  ∀ n, P4573180151005186395.a n = (A306905 (n + 1) : ℚ)

end A306905

/-! ## A306905.P13558383502413480783

`(A160619(n+1)-A053636(n+1))/2`
-/

namespace A306905.P13558383502413480783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160619 (n + 1) - A053636 (n + 1) : ℚ) / 2

end

end A306905.P13558383502413480783

namespace A306905

/-- `(A160619(n+1)-A053636(n+1))/2` -/
def P13558383502413480783.Spec : Prop :=
  ∀ n, P13558383502413480783.a n = (A306905 (n + 1) : ℚ)

end A306905

/-!
# A306906: a(n) = A306899(n)/6.

The programs for A306906, the canonical program `A306906.P14077871062807347448` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306906 has offset 1).

The definition of A306906 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306906.P14077871062807347448

`A306899(n+1)/6`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A306906

/-- `A306899(n+1)/6` -/
def P14077871062807347448.Spec : Prop :=
  ∀ n, P14077871062807347448.a n = (A306906 (n + 1) : ℚ)

end A306906

/-! ## A306906.P11442168671859387345

`record[ratio[A306899(A193592(n))]]`
-/

namespace A306906.P11442168671859387345
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306899 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306906.P11442168671859387345

namespace A306906

/-- `record[ratio[A306899(A193592(n))]]` -/
def P11442168671859387345.Spec : Prop :=
  ∀ n, P11442168671859387345.a n = (A306906 (n + 1) : ℚ)

end A306906

/-! ## A306906.P14920099994108472717

`record[ratio[A306899(A050873(n+1))]]`
-/

namespace A306906.P14920099994108472717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306899 (A050873 (n + 1)).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306906.P14920099994108472717

namespace A306906

/-- `record[ratio[A306899(A050873(n+1))]]` -/
def P14920099994108472717.Spec : Prop :=
  ∀ n, P14920099994108472717.a n = (A306906 (n + 1) : ℚ)

end A306906

/-! ## A306906.P3721063493260578024

`A255591(A306899(n+1))`
-/

namespace A306906.P3721063493260578024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A306899 (n + 1)).toNat

end

end A306906.P3721063493260578024

namespace A306906

/-- `A255591(A306899(n+1))` -/
def P3721063493260578024.Spec : Prop :=
  ∀ n, P3721063493260578024.a n = A306906 (n + 1)

end A306906

/-! ## A306906.P11350168861535546077

`A008612(A306899(n+1)+1)`
-/

namespace A306906.P11350168861535546077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A306899 (n + 1) + 1).toNat

end

end A306906.P11350168861535546077

namespace A306906

/-- `A008612(A306899(n+1)+1)` -/
def P11350168861535546077.Spec : Prop :=
  ∀ n, P11350168861535546077.a n = A306906 (n + 1)

end A306906

/-!
# A306908: Numbers k with exactly three distinct prime factors and such that phi(k) is a square.

The programs for A306908, the canonical program `A306908.P12427580242854678339` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306908 has offset 1).

The definition of A306908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306908.P12427580242854678339

`∩[A033992(n+1), A039770(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A306908

/-- `∩[A033992(n+1), A039770(n+1)]` -/
def P12427580242854678339.Spec : Prop :=
  ∀ n, (P12427580242854678339.a n : ℤ) = A306908 (n + 1)

theorem P12427580242854678339.correct : P12427580242854678339.Spec := by
  intro n
  simp only [A306908, Nat.add_sub_cancel]

end A306908

/-! ## A306908.P8340205533793059727

`∩[eq[1, A280988(n+1)]+1, A033992(n+1)]`
-/

namespace A306908.P8340205533793059727
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280988 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A306908.P8340205533793059727

namespace A306908

/-- `∩[eq[1, A280988(n+1)]+1, A033992(n+1)]` -/
def P8340205533793059727.Spec : Prop :=
  ∀ n, (P8340205533793059727.a n : ℤ) = A306908 (n + 1)

end A306908

/-!
# A306912: a(n) = 1 + Sum_{k=1..n} Sum_{d|k} mu(k/d)*p(d), where p(d) = number of partitions of d (A000041).

The programs for A306912, there is no canonical definition to state claims against.
-/

/-! ## A306912.P15265264095797172067

`∑[A000837(n)]`
-/

namespace A306912.P15265264095797172067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306912.P15265264095797172067

/-! ## A306912.P1674177591536069076

`∑[A000041(n)-A018783(n)]`
-/

namespace A306912.P1674177591536069076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306912.P1674177591536069076

/-! ## A306912.P9298749010986741323

`A000070(n)-∑[A018783(n)]`
-/

namespace A306912.P9298749010986741323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306912.P9298749010986741323

/-! ## A306912.P15011265888663324604

`∑[∑[A002865(n)]-A018783(n)]`
-/

namespace A306912.P15011265888663324604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306912.P15011265888663324604

/-! ## A306912.P16878735939920513785

`∑[A000065(n)+1-A018783(n)]`
-/

namespace A306912.P16878735939920513785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A018783 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306912.P16878735939920513785

/-! ## A306912.P5980709483274349085

`∑[A139582(n)/2-A018783(n)]`
-/

namespace A306912.P5980709483274349085
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A018783 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306912.P5980709483274349085

/-! ## A306912.P17142619109028800454

`∑[∑[A085811(n+3)]-A018783(n)]`
-/

namespace A306912.P17142619109028800454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306912.P17142619109028800454

/-! ## A306912.P2732622276867332793

`∑[∑[A232697(n)]-n-A018783(n)]`
-/

namespace A306912.P2732622276867332793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232697 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ) - A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306912.P2732622276867332793

/-! ## A306912.P3690111565750223243

`∑[A000009(n)+A047967(n)-A018783(n)]`
-/

namespace A306912.P3690111565750223243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A018783 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306912.P3690111565750223243

/-! ## A306912.P7039456435764137739

`∑[A035363(n)+A086543(n)-A018783(n)]`
-/

namespace A306912.P7039456435764137739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n + (A086543 n - A018783 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306912.P7039456435764137739

/-! ## A306912.P18310624257934505012

`∑[A000726(n)+A295341(n)-A018783(n)]`
-/

namespace A306912.P18310624257934505012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n + (A295341 n - A018783 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306912.P18310624257934505012

/-! ## A306912.P17048572530730788330

`∑[A035363(2*n)-A018783(n)]`
-/

namespace A306912.P17048572530730788330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306912.P17048572530730788330

/-! ## A306912.P14590226756523073109

`∑[A035377(3*n)-A018783(n)]`
-/

namespace A306912.P14590226756523073109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (3 * n) - A018783 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306912.P14590226756523073109

/-! ## A306912.P5043836980665034212

`∑[sqrt(A001255(n))-A018783(n)]`
-/

namespace A306912.P5043836980665034212
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A018783 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306912.P5043836980665034212

/-! ## A306912.P1437359603214683967

`∑[A332280(n)+A332281(n)-A018783(n)]`
-/

namespace A306912.P1437359603214683967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332280 n + (A332281 n - A018783 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306912.P1437359603214683967

/-! ## A306912.P13250241873070167666

`a(n-1)+A000837(n)%A000204(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A306912.P13250241873070167666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + Int.tmod (A000837 n) (A000204 (n + 1))

end

end A306912.P13250241873070167666

/-! ## A306912.P17582532232766889635

`a(n-1)+A000837(n)%A014739(n)` with `a(0)=1, a(1)=2`
-/

namespace A306912.P17582532232766889635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + Int.tmod (A000837 n) (A014739 n)

end

end A306912.P17582532232766889635

/-! ## A306912.P8686711708601752025

`A000837(n)+a(log2(A011782(n)))` with `a(0)=1`
-/

namespace A306912.P8686711708601752025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000837 n + a (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A306912.P8686711708601752025

/-! ## A306912.P13983953395372627483

`∑[A168532(∑[abs(1-n)])]`
-/

namespace A306912.P13983953395372627483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168532 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306912.P13983953395372627483

/-!
# A306914: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals, where column k is the expansion of g.f. 1/((1-x)^k+x^k).

The programs for A306914, there is no canonical definition to state claims against.
-/

/-! ## A306914.P5093583078185456709

`A306913(n)/A306915(n)*A307047(n)`
-/

namespace A306914.P5093583078185456709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306913 n : ℚ) / (A306915 n : ℚ) * (A307047 n : ℚ)

end

end A306914.P5093583078185456709

/-! ## A306914.P2605169688849041943

`A007318(n)-(A284938(n+1)%A090857(n))²`
-/

namespace A306914.P2605169688849041943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - Int.tmod (A284938 (n + 1)) (A090857 n) ^ 2

end

end A306914.P2605169688849041943

/-! ## A306914.P2051533779682663671

`A317023(lcm(n, A212363(n)))`
-/

namespace A306914.P2051533779682663671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317023 (Int.lcm (n : ℤ) (A212363 n))

end

end A306914.P2051533779682663671

/-! ## A306914.P7022501870975337524

`A317023(n)%A317013(A093768(n))`
-/

namespace A306914.P7022501870975337524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317023 n) (A317013 (A093768 n).toNat)

end

end A306914.P7022501870975337524

/-! ## A306914.P5173991526238444428

`C(A317023(n), A076322(A212363(n)))`
-/

namespace A306914.P5173991526238444428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A317023 n).toNat (A076322 (A212363 n).toNat).toNat

end

end A306914.P5173991526238444428

/-!
# A306915: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals, where column k is the expansion of g.f. 1/((1-x)^k-x^k).

The programs for A306915, there is no canonical definition to state claims against.
-/

/-! ## A306915.P4971724281852763602

`A101508(A061579(n))`
-/

namespace A306915.P4971724281852763602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101508 (A061579 n).toNat

end

end A306915.P4971724281852763602

/-! ## A306915.P6028175592946107944

`A101508(A114327(n)+n)`
-/

namespace A306915.P6028175592946107944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101508 (A114327 n + (n : ℤ)).toNat

end

end A306915.P6028175592946107944

/-! ## A306915.P9550184822476364330

`A101508(∑[A198954(n)-1])`
-/

namespace A306915.P9550184822476364330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101508 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306915.P9550184822476364330

/-! ## A306915.P128185647995180572

`A101508(A038722(n+1)-1)`
-/

namespace A306915.P128185647995180572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101508 (A038722 (n + 1) - 1).toNat

end

end A306915.P128185647995180572

/-! ## A306915.P9844879738609948389

`A101508(A002378(n)%A014132(n+1))`
-/

namespace A306915.P9844879738609948389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101508 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A306915.P9844879738609948389

/-!
# A306916: a(1)=1; for n > 1 replace each p^k in the prime factorization of n with prime(k)^p where prime(k) denotes the k-th prime number.

The programs for A306916, the canonical program `A306916.P10721873889550371981` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306916 has offset 1).

The definition of A306916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306916.P10721873889550371981

`∏{p}[n+1, A000040(val(n+1, #))^#]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A306916

/-- `∏{p}[n+1, A000040(val(n+1, #))^#]` -/
def P10721873889550371981.Spec : Prop :=
  ∀ n, P10721873889550371981.a n = A306916 (n + 1)

theorem P10721873889550371981.correct : P10721873889550371981.Spec := by
  intro n
  simp only [A306916, Nat.add_sub_cancel]

end A306916

/-! ## A306916.P14927540447798046749

`A048767(A064988(n+1))`
-/

namespace A306916.P14927540447798046749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048767 (A064988 (n + 1)).toNat

end

end A306916.P14927540447798046749

namespace A306916

/-- `A048767(A064988(n+1))` -/
def P14927540447798046749.Spec : Prop :=
  ∀ n, P14927540447798046749.a n = A306916 (n + 1)

end A306916

/-! ## A306916.P3132636020591551531

`A048767(A003961(A290641(n+1)))`
-/

namespace A306916.P3132636020591551531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048767 (A003961 (A290641 (n + 1)).toNat).toNat

end

end A306916.P3132636020591551531

namespace A306916

/-- `A048767(A003961(A290641(n+1)))` -/
def P3132636020591551531.Spec : Prop :=
  ∀ n, P3132636020591551531.a n = A306916 (n + 1)

end A306916

/-! ## A306916.P9231311429801899079

`A008477(A304203(n+1))`
-/

namespace A306916.P9231311429801899079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008477 (A304203 (n + 1)).toNat

end

end A306916.P9231311429801899079

namespace A306916

/-- `A008477(A304203(n+1))` -/
def P9231311429801899079.Spec : Prop :=
  ∀ n, P9231311429801899079.a n = A306916 (n + 1)

end A306916

/-! ## A306916.P6719755150910972681

`A008477(A019554(n+1)*A187829(n+1))`
-/

namespace A306916.P6719755150910972681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008477 (A019554 (n + 1) * A187829 (n + 1)).toNat

end

end A306916.P6719755150910972681

namespace A306916

/-- `A008477(A019554(n+1)*A187829(n+1))` -/
def P6719755150910972681.Spec : Prop :=
  ∀ n, P6719755150910972681.a n = A306916 (n + 1)

end A306916

/-!
# A306918: Sum over all partitions of n into distinct parts of the power tower evaluation x^y^...^z, where x, y, ..., z are the parts in decreasing order.

The programs for A306918, there is no canonical definition to state claims against.
-/

/-! ## A306918.P1397071657663420038

`A139555(∑[A064731(n+1)²])`
-/

namespace A306918.P1397071657663420038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064731 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139555 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306918.P1397071657663420038

/-! ## A306918.P12520753206628281817

`A001462(A089872(n)*A089874(n))`
-/

namespace A306918.P12520753206628281817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A089872 n * A089874 n).toNat

end

end A306918.P12520753206628281817

/-!
# A306919: Sum over all partitions of n into distinct parts of the power tower evaluation x^y^...^z, where x, y, ..., z are the parts in increasing order.

The programs for A306919, there is no canonical definition to state claims against.
-/

/-! ## A306919.P7408014661934644397

`A065825(A127279(n))`
-/

namespace A306919.P7408014661934644397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065825 (A127279 n).toNat

end

end A306919.P7408014661934644397

/-!
# A306920: a(n) is the smallest prime > 10 where a string of exactly n zeros can be inserted somewhere into the decimal expansion such that the resulting number is also prime.

The programs for A306920, there is no canonical definition to state claims against.
-/

/-! ## A306920.P3160577534499473024

`A341899(A043317(n+1))`
-/

namespace A306920.P3160577534499473024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341899 (A043317 (n + 1)).toNat

end

end A306920.P3160577534499473024

/-! ## A306920.P5731661337575513760

`A341899(A044914(n+1))`
-/

namespace A306920.P5731661337575513760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341899 (A044914 (n + 1)).toNat

end

end A306920.P5731661337575513760

/-! ## A306920.P14267299972920861798

`A341899(A055648(n+1))`
-/

namespace A306920.P14267299972920861798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341899 (A055648 (n + 1)).toNat

end

end A306920.P14267299972920861798

/-! ## A306920.P8210431860506005388

`A341899(A132378(n+1))`
-/

namespace A306920.P8210431860506005388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341899 (A132378 (n + 1)).toNat

end

end A306920.P8210431860506005388

/-! ## A306920.P11913991142437253059

`A341931(A341899(n+1))`
-/

namespace A306920.P11913991142437253059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341931 (A341899 (n + 1)).toNat

end

end A306920.P11913991142437253059

/-!
# A306921: Number of ways of breaking the binary expansion of n into consecutive blocks with no leading zeros.

The programs for A306921, there is no canonical definition to state claims against.
-/

/-! ## A306921.P9560429635303201553

`A117535(A005836(n+1))`
-/

namespace A306921.P9560429635303201553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117535 (A005836 (n + 1)).toNat

end

end A306921.P9560429635303201553

/-! ## A306921.P6063110336062707876

`A117535(A005823(n+1)/2)`
-/

namespace A306921.P6063110336062707876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117535 (SequenceMachineLib.roundAway ((A005823 (n + 1) : ℚ) / 2)).toNat

end

end A306921.P6063110336062707876

/-! ## A306921.P6140165615916246176

`A117535(A356426(n+1))`
-/

namespace A306921.P6140165615916246176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117535 (A356426 (n + 1)).toNat

end

end A306921.P6140165615916246176

/-! ## A306921.P16158596863664112516

`A117535(eq[1, A205565(2*n)])`
-/

namespace A306921.P16158596863664112516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205565 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117535 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306921.P16158596863664112516

/-! ## A306921.P6388098532386083585

`A117535(eq[A062756(2*n)², A062756(2*n)])`
-/

namespace A306921.P6388098532386083585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (2 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117535 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A306921.P6388098532386083585

/-! ## A306921.P1720749690026834431

`A124758(A048678(n))`
-/

namespace A306921.P1720749690026834431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A048678 n).toNat

end

end A306921.P1720749690026834431

/-! ## A306921.P5211177714533050430

`A124758(A124108(n)/2)`
-/

namespace A306921.P5211177714533050430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (SequenceMachineLib.roundAway ((A124108 n : ℚ) / 2)).toNat

end

end A306921.P5211177714533050430

/-! ## A306921.P17854484275658170320

`A000005(A057335(floor(n/2)))`
-/

namespace A306921.P17854484275658170320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A057335 ⌊(n : ℚ) / 2⌋.toNat).toNat

end

end A306921.P17854484275658170320

/-! ## A306921.P3018658603901899676

`A124758(A124108(n)+1)`
-/

namespace A306921.P3018658603901899676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A124108 n + 1).toNat

end

end A306921.P3018658603901899676

/-! ## A306921.P4842767316465430557

`A303827(A000695(n))`
-/

namespace A306921.P4842767316465430557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303827 (A000695 n).toNat

end

end A306921.P4842767316465430557

/-! ## A306921.P15248445304030466656

`A000005(A057335(n)/A006530(A057335(n)))`
-/

namespace A306921.P15248445304030466656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A057335 n : ℚ) / (A006530 (A057335 n).toNat : ℚ))).toNat

end

end A306921.P15248445304030466656

/-!
# A306922: Number of distinct powers of two obtained by breaking the binary representation of n into consecutive blocks, and then adding the numbers represented by the blocks.

The programs for A306922, there is no canonical definition to state claims against.
-/

/-! ## A306922.P12640658367926697185

`A333768(n+1)+A185264(A005940(n+1))`
-/

namespace A306922.P12640658367926697185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 (n + 1) + A185264 (A005940 (n + 1)).toNat

end

end A306922.P12640658367926697185

/-! ## A306922.P5845620516067382867

`A391642(n+1)+A124760(lt[4, A335465(n)])`
-/

namespace A306922.P5845620516067382867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335465 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391642 (n + 1) + A124760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A306922.P5845620516067382867

/-! ## A306922.P323748748185079496

`A333768(A242474(n+1))+char[14]`
-/

namespace A306922.P323748748185079496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 (A242474 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A306922.P323748748185079496

/-! ## A306922.P4353761960836760882

`gcd(A072078(A005915(n)), A265910(n+1))`
-/

namespace A306922.P4353761960836760882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072078 (A005915 n).toNat) (A265910 (n + 1))

end

end A306922.P4353761960836760882

/-! ## A306922.P10796979305739339371

`A333768(n+1)+A101637(A372517(n+1))`
-/

namespace A306922.P10796979305739339371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 (n + 1) + A101637 (A372517 (n + 1)).toNat

end

end A306922.P10796979305739339371

/-!
# A306924: Sum over all partitions of n into distinct parts of the bitwise OR of the parts.

The programs for A306924, there is no canonical definition to state claims against.
-/

/-! ## A306924.P15057982587701699045

`lt[n, A342671(A349786(n+1)+1)]`
-/

namespace A306924.P15057982587701699045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342671 (A349786 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A306924.P15057982587701699045

/-! ## A306924.P15893165360402201506

`record[A280866(n+1)-A349536(n+1)]`
-/

namespace A306924.P15893165360402201506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280866 (n + 1) - A349536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306924.P15893165360402201506

/-!
# A306925: Sum over all partitions of n into distinct parts of the bitwise XOR of the parts.

The programs for A306925, there is no canonical definition to state claims against.
-/

/-! ## A306925.P14722221408645141430

`A000196(A259451(n)*A353688(n+3))`
-/

namespace A306925.P14722221408645141430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A259451 n * A353688 (n + 3)).toNat

end

end A306925.P14722221408645141430

/-! ## A306925.P13288361985961438033

`A000196(lcm(A259451(n), A269595(n+1)))`
-/

namespace A306925.P13288361985961438033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lcm (A259451 n) (A269595 (n + 1)))

end

end A306925.P13288361985961438033

/-!
# A306927: a(n) = A001615(n) - n.

The programs for A306927, the canonical program `A306927.P17814691939423950955` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306927 has offset 1).

The definition of A306927 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001615(n+1)-(n+1)` (program `A306927.P17814691939423950955`, by `A306927.P17814691939423950955.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A306927.P17814691939423950955

`A001615(n+1)-(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A306927

/-- `A001615(n+1)-(n+1)` -/
def P17814691939423950955.Spec : Prop :=
  ∀ n, P17814691939423950955.a n = A306927 (n + 1)

theorem P17814691939423950955.correct : P17814691939423950955.Spec := by
  intro n
  simp only [A306927, Nat.add_sub_cancel]

end A306927

/-! ## A306927.P15649436146783746783

`∑{d}[∏{p}[n+1, #], (n+1)/#]-(n+1)`
-/

namespace A306927.P15649436146783746783
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) - (n + 1 : ℚ)

end

end A306927.P15649436146783746783

namespace A306927

/-- `∑{d}[∏{p}[n+1, #], (n+1)/#]-(n+1)` -/
def P15649436146783746783.Spec : Prop :=
  ∀ n, P15649436146783746783.a n = (A306927 (n + 1) : ℚ)

end A306927

/-! ## A306927.P13510222906080278722

`abs(A158523(n+1))-(n+1)`
-/

namespace A306927.P13510222906080278722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158523 (n + 1)| - (n + 1 : ℤ)

end

end A306927.P13510222906080278722

namespace A306927

/-- `abs(A158523(n+1))-(n+1)` -/
def P13510222906080278722.Spec : Prop :=
  ∀ n, P13510222906080278722.a n = A306927 (n + 1)

end A306927

/-! ## A306927.P3090997204443933220

`A160890(n+1)/7-(n+1)`
-/

namespace A306927.P3090997204443933220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160890 (n + 1) : ℚ) / 7 - (n + 1 : ℚ)

end

end A306927.P3090997204443933220

namespace A306927

/-- `A160890(n+1)/7-(n+1)` -/
def P3090997204443933220.Spec : Prop :=
  ∀ n, P3090997204443933220.a n = (A306927 (n + 1) : ℚ)

theorem P3090997204443933220.correct : P3090997204443933220.Spec := by
  intro n
  simp only [A306927, Nat.add_sub_cancel, A306927.P3090997204443933220.a, A306927.P17814691939423950955.a, A001615, A001615.P12078511981713404634.a, A160890, A160890.P9259257314874269544.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A306927

/-! ## A306927.P12540627946296068152

`∑{d}[n+1, A063659(#)]-(n+1)`
-/

namespace A306927.P12540627946296068152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d - (n + 1 : ℤ)

end

end A306927.P12540627946296068152

namespace A306927

/-- `∑{d}[n+1, A063659(#)]-(n+1)` -/
def P12540627946296068152.Spec : Prop :=
  ∀ n, P12540627946296068152.a n = A306927 (n + 1)

end A306927

/-! ## A306927.P3402335885769650618

`A000082(n+1)/(n+1)-(n+1)`
-/

namespace A306927.P3402335885769650618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ)

end

end A306927.P3402335885769650618

namespace A306927

/-- `A000082(n+1)/(n+1)-(n+1)` -/
def P3402335885769650618.Spec : Prop :=
  ∀ n, P3402335885769650618.a n = (A306927 (n + 1) : ℚ)

end A306927

/-! ## A306927.P16139453748671931696

`(n+1)/∏{p}[n+1, #]*A001065(∏{p}[n+1, #])`
-/

namespace A306927.P16139453748671931696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A001065 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ)

end

end A306927.P16139453748671931696

namespace A306927

/-- `(n+1)/∏{p}[n+1, #]*A001065(∏{p}[n+1, #])` -/
def P16139453748671931696.Spec : Prop :=
  ∀ n, P16139453748671931696.a n = (A306927 (n + 1) : ℚ)

end A306927

/-! ## A306927.P8208296593437694532

`A344705(n+1)+A033880(n+1)`
-/

namespace A306927.P8208296593437694532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344705 (n + 1) + A033880 (n + 1)

end

end A306927.P8208296593437694532

namespace A306927

/-- `A344705(n+1)+A033880(n+1)` -/
def P8208296593437694532.Spec : Prop :=
  ∀ n, P8208296593437694532.a n = A306927 (n + 1)

theorem P8208296593437694532.correct : P8208296593437694532.Spec := by
  intro n
  simp only [A306927, Nat.add_sub_cancel, A306927.P8208296593437694532.a, A306927.P17814691939423950955.a, A001615, A001615.P12078511981713404634.a, A033880, A033880.P6005875780263802708.a, A344705, A344705.P1217591774318848897.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A306927

/-! ## A306927.P2431293339357615205

`A001065(n+1)-A244963(n+1)`
-/

namespace A306927.P2431293339357615205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A244963 (n + 1)

end

end A306927.P2431293339357615205

namespace A306927

/-- `A001065(n+1)-A244963(n+1)` -/
def P2431293339357615205.Spec : Prop :=
  ∀ n, P2431293339357615205.a n = A306927 (n + 1)

theorem P2431293339357615205.correct : P2431293339357615205.Spec := by
  intro n
  simp only [A306927, Nat.add_sub_cancel, A306927.P2431293339357615205.a, A306927.P17814691939423950955.a, A001065, A001065.P4097147489331274860.a, A001615, A001615.P12078511981713404634.a, A244963, A244963.P8812478636684031312.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A306927

/-! ## A306927.P11314637865150125934

`A344753(n+1)-A001065(n+1)`
-/

namespace A306927.P11314637865150125934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344753 (n + 1) - A001065 (n + 1)

end

end A306927.P11314637865150125934

namespace A306927

/-- `A344753(n+1)-A001065(n+1)` -/
def P11314637865150125934.Spec : Prop :=
  ∀ n, P11314637865150125934.a n = A306927 (n + 1)

theorem P11314637865150125934.correct : P11314637865150125934.Spec := by
  intro n
  simp only [A306927, Nat.add_sub_cancel, A306927.P11314637865150125934.a, A306927.P17814691939423950955.a, A001065, A001065.P4097147489331274860.a, A001615, A001615.P12078511981713404634.a, A344753, A344753.P96052968177767744.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A306927

/-! ## A306927.P7577711803694277596

`A344705(n+1)-A033879(n+1)`
-/

namespace A306927.P7577711803694277596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344705 (n + 1) - A033879 (n + 1)

end

end A306927.P7577711803694277596

namespace A306927

/-- `A344705(n+1)-A033879(n+1)` -/
def P7577711803694277596.Spec : Prop :=
  ∀ n, P7577711803694277596.a n = A306927 (n + 1)

theorem P7577711803694277596.correct : P7577711803694277596.Spec := by
  intro n
  simp only [A306927, Nat.add_sub_cancel, A306927.P7577711803694277596.a, A306927.P17814691939423950955.a, A001615, A001615.P12078511981713404634.a, A033879, A033879.P5965131822542929609.a, A344705, A344705.P1217591774318848897.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A306927

/-! ## A306927.P17610340082915831792

`2*A318320(n+1)-A051953(n+1)`
-/

namespace A306927.P17610340082915831792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318320 (n + 1) - A051953 (n + 1)

end

end A306927.P17610340082915831792

namespace A306927

/-- `2*A318320(n+1)-A051953(n+1)` -/
def P17610340082915831792.Spec : Prop :=
  ∀ n, P17610340082915831792.a n = A306927 (n + 1)

end A306927

/-! ## A306927.P11239350844562180246

`A091818(n+1)/2-A244963(n+1)`
-/

namespace A306927.P11239350844562180246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (n + 1) : ℚ) / 2 - (A244963 (n + 1) : ℚ)

end

end A306927.P11239350844562180246

namespace A306927

/-- `A091818(n+1)/2-A244963(n+1)` -/
def P11239350844562180246.Spec : Prop :=
  ∀ n, P11239350844562180246.a n = (A306927 (n + 1) : ℚ)

theorem P11239350844562180246.correct : P11239350844562180246.Spec := by
  intro n
  simp only [A306927, Nat.add_sub_cancel, A306927.P11239350844562180246.a, A306927.P17814691939423950955.a, A001615, A001615.P12078511981713404634.a, A091818, A091818.P1536144604709334989.a, A244963, A244963.P8812478636684031312.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A306927

/-! ## A306927.P15442004552936470928

`A344753(n+1)-A091818(n+1)/2`
-/

namespace A306927.P15442004552936470928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344753 (n + 1) : ℚ) - (A091818 (n + 1) : ℚ) / 2

end

end A306927.P15442004552936470928

namespace A306927

/-- `A344753(n+1)-A091818(n+1)/2` -/
def P15442004552936470928.Spec : Prop :=
  ∀ n, P15442004552936470928.a n = (A306927 (n + 1) : ℚ)

theorem P15442004552936470928.correct : P15442004552936470928.Spec := by
  intro n
  simp only [A306927, Nat.add_sub_cancel, A306927.P15442004552936470928.a, A306927.P17814691939423950955.a, A001615, A001615.P12078511981713404634.a, A091818, A091818.P1536144604709334989.a, A344753, A344753.P96052968177767744.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A306927

/-! ## A306927.P12539152975284481159

`A001065(∏{p}[n+1, #])*A003557(n+1)`
-/

namespace A306927.P12539152975284481159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (∏ p ∈ Nat.primeFactors (f1 n), p) * A003557 (n + 1)

end

end A306927.P12539152975284481159

namespace A306927

/-- `A001065(∏{p}[n+1, #])*A003557(n+1)` -/
def P12539152975284481159.Spec : Prop :=
  ∀ n, P12539152975284481159.a n = A306927 (n + 1)

end A306927

/-! ## A306927.P16103092670427401028

`A003557(n+1)*A347231(∏{p}[n+1, #])`
-/

namespace A306927.P16103092670427401028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A347231 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A306927.P16103092670427401028

namespace A306927

/-- `A003557(n+1)*A347231(∏{p}[n+1, #])` -/
def P16103092670427401028.Spec : Prop :=
  ∀ n, P16103092670427401028.a n = A306927 (n + 1)

end A306927

/-! ## A306927.P8259270098478553827

`A003557(n+1)*A048250(n+1)-(n+1)`
-/

namespace A306927.P8259270098478553827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A048250 (n + 1) - (n + 1 : ℤ)

end

end A306927.P8259270098478553827

namespace A306927

/-- `A003557(n+1)*A048250(n+1)-(n+1)` -/
def P8259270098478553827.Spec : Prop :=
  ∀ n, P8259270098478553827.a n = A306927 (n + 1)

end A306927

/-! ## A306927.P13631355968446146136

`∑{d}[n+1, A049240(#)*A063659((n+1)/#)]`
-/

namespace A306927.P13631355968446146136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A049240 d * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306927.P13631355968446146136

namespace A306927

/-- `∑{d}[n+1, A049240(#)*A063659((n+1)/#)]` -/
def P13631355968446146136.Spec : Prop :=
  ∀ n, P13631355968446146136.a n = A306927 (n + 1)

end A306927

/-! ## A306927.P14528280753837328122

`∑{d}[n+1, A056595(#)*A130107((n+1)/#)]`
-/

namespace A306927.P14528280753837328122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056595 d * A130107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306927.P14528280753837328122

namespace A306927

/-- `∑{d}[n+1, A056595(#)*A130107((n+1)/#)]` -/
def P14528280753837328122.Spec : Prop :=
  ∀ n, P14528280753837328122.a n = A306927 (n + 1)

end A306927

/-! ## A306927.P8588972582051998282

`∑{d}[n+1, A000010(#)*A309307((n+1)/#)]`
-/

namespace A306927.P8588972582051998282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A309307 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A306927.P8588972582051998282

namespace A306927

/-- `∑{d}[n+1, A000010(#)*A309307((n+1)/#)]` -/
def P8588972582051998282.Spec : Prop :=
  ∀ n, P8588972582051998282.a n = A306927 (n + 1)

end A306927

/-!
# A306928: Number of different values taken by the determinant of a real (0,1,2) matrix of order n.

The programs for A306928, there is no canonical definition to state claims against.
-/

/-! ## A306928.P14112183083282769721

`A125024(n)+A045908(n)`
-/

namespace A306928.P14112183083282769721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125024 n + A045908 n

end

end A306928.P14112183083282769721

/-! ## A306928.P11598389709199201567

`A306838(A102669(n)+n)`
-/

namespace A306928.P11598389709199201567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306838 (A102669 n + (n : ℤ)).toNat

end

end A306928.P11598389709199201567

/-!
# A306930: Primes p of the form 8*k +- 3 such that p-1 has no prime divisor 4*t + 1.

The programs for A306930, the canonical program `A306930.P9649045531916305778` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306930 has offset 1).

The definition of A306930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 365 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306930.P9649045531916305778

`p?[A170818(n+1)+A047495(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A306930

/-- `p?[A170818(n+1)+A047495(n+1)]` -/
def P9649045531916305778.Spec : Prop :=
  ∀ n, P9649045531916305778.a n = A306930 (n + 1)

theorem P9649045531916305778.correct : P9649045531916305778.Spec := by
  intro n
  simp only [A306930, Nat.add_sub_cancel]

end A306930

/-! ## A306930.P11164559356205086733

`p?[A016777(A072438(n+1))-A098180(n)]`
-/

namespace A306930.P11164559356205086733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A072438 (n + 1)).toNat - A098180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306930.P11164559356205086733

namespace A306930

/-- `p?[A016777(A072438(n+1))-A098180(n)]` -/
def P11164559356205086733.Spec : Prop :=
  ∀ n, P11164559356205086733.a n = A306930 (n + 1)

end A306930

/-! ## A306930.P5462485757070591953

`record[A006530(A170818(n+1)+A047495(n+1))]`
-/

namespace A306930.P5462485757070591953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A170818 (n + 1) + A047495 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306930.P5462485757070591953

namespace A306930

/-- `record[A006530(A170818(n+1)+A047495(n+1))]` -/
def P5462485757070591953.Spec : Prop :=
  ∀ n, P5462485757070591953.a n = A306930 (n + 1)

end A306930

/-! ## A306930.P3805173759854638185

`p?[A170818(n+1)+A109451(A005408(n+1))]`
-/

namespace A306930.P3805173759854638185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (n + 1) + A109451 (A005408 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306930.P3805173759854638185

namespace A306930

/-- `p?[A170818(n+1)+A109451(A005408(n+1))]` -/
def P3805173759854638185.Spec : Prop :=
  ∀ n, P3805173759854638185.a n = A306930 (n + 1)

end A306930

/-! ## A306930.P1259758597432473007

`p?[A109451(A170818(n+1)+A005408(n))]`
-/

namespace A306930.P1259758597432473007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109451 (A170818 (n + 1) + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306930.P1259758597432473007

namespace A306930

/-- `p?[A109451(A170818(n+1)+A005408(n))]` -/
def P1259758597432473007.Spec : Prop :=
  ∀ n, P1259758597432473007.a n = A306930 (n + 1)

end A306930

/-! ## A306930.P9386951472068145959

`record[A014963(A170818(n+1)+A047495(n+1))]`
-/

namespace A306930.P9386951472068145959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A170818 (n + 1) + A047495 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306930.P9386951472068145959

namespace A306930

/-- `record[A014963(A170818(n+1)+A047495(n+1))]` -/
def P9386951472068145959.Spec : Prop :=
  ∀ n, P9386951472068145959.a n = A306930 (n + 1)

end A306930

/-!
# A306931: Primes p of the form 8*k + 3 such that every prime divisor of p-2 has the form 8*t + 7.

The programs for A306931, there is no canonical definition to state claims against.
-/

/-! ## A306931.P15171445553511017000

`∩[xor(2, A004628(n+1)), A332514(n+1)]`
-/

namespace A306931.P15171445553511017000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A004628 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306931.P15171445553511017000

/-! ## A306931.P12050002501352334543

`p?[A067060(A004628(n+2))]`
-/

namespace A306931.P12050002501352334543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067060 (A004628 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306931.P12050002501352334543

/-! ## A306931.P14415216257483577804

`∩[A067060(A004628(n+1)), A332514(n+1)]`
-/

namespace A306931.P14415216257483577804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067060 (A004628 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332514 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306931.P14415216257483577804

/-! ## A306931.P15165802521363723761

`∩[A000040(n+1), A067060(A004628(n+5))]`
-/

namespace A306931.P15165802521363723761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067060 (A004628 (n + 5)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306931.P15165802521363723761

/-!
# A306932: Primes p of the form 8*k + 5 such that every odd prime divisor of p-1 has the form 8*t + 7.

The programs for A306932, there is no canonical definition to state claims against.
-/

/-! ## A306932.P6643472285068148563

`p?[4*A004628(n+1)+1]`
-/

namespace A306932.P6643472285068148563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A004628 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306932.P6643472285068148563

/-! ## A306932.P7164397982342851555

`p?[A004766(A004628(n+1))]`
-/

namespace A306932.P7164397982342851555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (A004628 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306932.P7164397982342851555

/-! ## A306932.P16842498658207961898

`∩[A004766(A004628(n+1)), A306930(n+1)]`
-/

namespace A306932.P16842498658207961898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (A004628 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306932.P16842498658207961898

/-! ## A306932.P3205840762327273514

`p?[A005408(2*A004628(n+1))]`
-/

namespace A306932.P3205840762327273514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * A004628 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306932.P3205840762327273514

/-! ## A306932.P9367064042694820834

`p?[A005408(lcm(2, A004628(n+1)))]`
-/

namespace A306932.P9367064042694820834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.lcm 2 (A004628 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306932.P9367064042694820834

/-!
# A306933: Let k be any quadratic field such that all prime factors of n are inert in k, O_k be the corresponding ring of integers and G(n) = (O_k/nO_k)* be the multiplicative group of integers in O_k modulo n; then a(n) is the exponent of G(n).

The programs for A306933, there is no canonical definition to state claims against.
-/

/-! ## A306933.P13666247935788007152

`A316565(A055645(n)+A046534(n+1))`
-/

namespace A306933.P13666247935788007152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316565 (A055645 n + A046534 (n + 1)).toNat

end

end A306933.P13666247935788007152

/-! ## A306933.P4024900763723283210

`gcd(A327568(A174824(n+1)), A345052(n+1))`
-/

namespace A306933.P4024900763723283210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A327568 (A174824 (n + 1)).toNat) (A345052 (n + 1))

end

end A306933.P4024900763723283210

/-! ## A306933.P6324819788423189761

`gcd(A127917(A290551(n)), A345052(n+1))`
-/

namespace A306933.P6324819788423189761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A127917 (A290551 n).toNat) (A345052 (n + 1))

end

end A306933.P6324819788423189761

/-! ## A306933.P17629186507025394283

`gcd((n+1)*∏{p}[n+1, #-1/#], A084920(A127920(n+1)))`
-/

namespace A306933.P17629186507025394283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℚ) - 1 / (p : ℚ))))) (A084920 (A127920 (n + 1)).toNat)

end

end A306933.P17629186507025394283

/-!
# A306935: Coefficients of q-expansion of Eisenstein series G_{7/2}(tau) multiplied by -252.

The programs for A306935, there is no canonical definition to state claims against.
-/

/-! ## A306935.P4639019995906569647

`A080300(∑[n])+A003781(n)`
-/

namespace A306935.P4639019995906569647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080300 (∑ j ∈ Finset.range (n + 1), f1 j) + A003781 n

end

end A306935.P4639019995906569647

/-! ## A306935.P3305384306635711624

`A003781(n)-A089803(n+1)`
-/

namespace A306935.P3305384306635711624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003781 n - A089803 (n + 1)

end

end A306935.P3305384306635711624

/-! ## A306935.P17778934888905867381

`A003781(n)+A000038(xor(4, n))`
-/

namespace A306935.P17778934888905867381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003781 n + A000038 (Nat.xor 4 n)

end

end A306935.P17778934888905867381

/-! ## A306935.P4619812855244400997

`A103756(n+1)+A003781(n)-1`
-/

namespace A306935.P4619812855244400997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103756 (n + 1) + (A003781 n - 1)

end

end A306935.P4619812855244400997

/-! ## A306935.P12532413459081080365

`∑{d}[n+1, A003781(#-1)*A071164((n+1)/#-1)]`
-/

namespace A306935.P12532413459081080365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003781 (d - 1) * A071164 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A306935.P12532413459081080365

/-!
# A306936: Coefficients of q-expansion of Eisenstein series G_{9/2}(tau) multiplied by 240.

The programs for A306936, there is no canonical definition to state claims against.
-/

/-! ## A306936.P18335227746577482043

`2*11^(a(n-1)+2)` with `a(0)=1, a(1)=2, a(2)=0, a(3)=0`
-/

namespace A306936.P18335227746577482043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0, 0] fun n a =>
  2 * 11 ^ (a (n - 1) + 2)

end

end A306936.P18335227746577482043

/-!
# A306937: Coefficients of q-expansion of Eisenstein series G_{11/2}(tau) multiplied by 132.

The programs for A306937, there is no canonical definition to state claims against.
-/

/-! ## A306937.P10288379771457082537

`ceil((A316201(n+2)/A001065(2*(n+2))-3)/2)`
-/

namespace A306937.P10288379771457082537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A316201 (n + 2) : ℚ) / (A001065 (2 * (n + 2)) : ℚ) - 3) / 2⌉

end

end A306937.P10288379771457082537

/-!
# A306938: If n is divisible by 3 then a(n) = n/3 otherwise a(n) = floor(n*sqrt(3)).

The programs for A306938, the canonical program `A306938.P8201564370674792042` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306938 has offset 1).

The definition of A306938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306938.P8201564370674792042

`floor(sqrt(A322550(∑[n+2]+4)))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A306938

/-- `floor(sqrt(A322550(∑[n+2]+4)))` -/
def P8201564370674792042.Spec : Prop :=
  ∀ n, P8201564370674792042.a n = A306938 (n + 1)

theorem P8201564370674792042.correct : P8201564370674792042.Spec := by
  intro n
  simp only [A306938, Nat.add_sub_cancel]

end A306938

/-! ## A306938.P1899392800483768513

`A000196(A322550(A167614(n+1)))`
-/

namespace A306938.P1899392800483768513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A322550 (A167614 (n + 1)).toNat).toNat

end

end A306938.P1899392800483768513

namespace A306938

/-- `A000196(A322550(A167614(n+1)))` -/
def P1899392800483768513.Spec : Prop :=
  ∀ n, P1899392800483768513.a n = A306938 (n + 1)

end A306938

/-! ## A306938.P13612437675699958742

`A060791(A022838(n+1)%A353864(3*n+4))`
-/

namespace A306938.P13612437675699958742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (Int.tmod (A022838 (n + 1)) (A353864 (3 * n + 4))).toNat

end

end A306938.P13612437675699958742

namespace A306938

/-- `A060791(A022838(n+1)%A353864(3*n+4))` -/
def P13612437675699958742.Spec : Prop :=
  ∀ n, P13612437675699958742.a n = A306938 (n + 1)

end A306938

/-! ## A306938.P8009139565299673437

`A060791(A022838(n+1))+A000007(A022169(n))`
-/

namespace A306938.P8009139565299673437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060791 (A022838 (n + 1)).toNat + A000007 (A022169 n).toNat

end

end A306938.P8009139565299673437

namespace A306938

/-- `A060791(A022838(n+1))+A000007(A022169(n))` -/
def P8009139565299673437.Spec : Prop :=
  ∀ n, P8009139565299673437.a n = A306938 (n + 1)

end A306938

/-!
# A306939: Expansion of 1/((1 - x)^9 - x^9).

The programs for A306939, there is no canonical definition to state claims against.
-/

/-! ## A306939.P1794608687938991292

`Δ[A306860(n+8)]`
-/

namespace A306939.P1794608687938991292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306860 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306939.P1794608687938991292

/-! ## A306939.P13695057144246201053

`Δ[record[A306860(A008615(n))]]`
-/

namespace A306939.P13695057144246201053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306860 (A008615 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306939.P13695057144246201053

/-! ## A306939.P17743465900305408463

`Δ[record[A306860(A008616(n))]]`
-/

namespace A306939.P17743465900305408463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306860 (A008616 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306939.P17743465900305408463

/-! ## A306939.P767478699680142307

`Δ[record[A306860(A008624(n))]]`
-/

namespace A306939.P767478699680142307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306860 (A008624 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306939.P767478699680142307

/-! ## A306939.P11727809287476740349

`Δ[record[A306860(A025480(n))]]`
-/

namespace A306939.P11727809287476740349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306860 (A025480 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306939.P11727809287476740349

/-! ## A306939.P8051414534566930239

`Δ[record[A306860(A028242(n))]]`
-/

namespace A306939.P8051414534566930239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306860 (A028242 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306939.P8051414534566930239

/-! ## A306939.P9828464264730220508

`Δ[record[A306860(A052938(n))]]`
-/

namespace A306939.P9828464264730220508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306860 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306939.P9828464264730220508

/-! ## A306939.P13247518188200018521

`Δ[record[A306860(A065648(n))]]`
-/

namespace A306939.P13247518188200018521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306860 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306939.P13247518188200018521

/-! ## A306939.P9221013316521778224

`Δ[record[A306860(A274650(n))]]`
-/

namespace A306939.P9221013316521778224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306860 (A274650 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306939.P9221013316521778224

/-!
# A306940: Expansion of 1/((1 - x)^6 + x^6).

The programs for A306940, the canonical program `A306940.P15756919543381435900` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306940 has offset 0).

The definition of A306940 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+15x^2-20x^3+15x^4-6x^5+2x^6))` (program `A306940.P15756919543381435900`, by `A306940.P15756919543381435900.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A306940.P15756919543381435900

`ogf(1/(1-6x+15x^2-20x^3+15x^4-6x^5+2x^6))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A306940

/-- `ogf(1/(1-6x+15x^2-20x^3+15x^4-6x^5+2x^6))` -/
def P15756919543381435900.Spec : Prop :=
  ∀ n, P15756919543381435900.a n = A306940 n

theorem P15756919543381435900.correct : P15756919543381435900.Spec := by
  intro n
  simp only [A306940]

end A306940

/-! ## A306940.P2284569004450369885

`A307040(n+5)-A307040(n+6)`
-/

namespace A306940.P2284569004450369885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307040 (n + 5) - A307040 (n + 6)

end

end A306940.P2284569004450369885

namespace A306940

/-- `A307040(n+5)-A307040(n+6)` -/
def P2284569004450369885.Spec : Prop :=
  ∀ n, P2284569004450369885.a n = A306940 n

end A306940

/-! ## A306940.P5724438375272996272

`Δ[Δ[n-A307089(n+4)]]`
-/

namespace A306940.P5724438375272996272
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A307089 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306940.P5724438375272996272

namespace A306940

/-- `Δ[Δ[n-A307089(n+4)]]` -/
def P5724438375272996272.Spec : Prop :=
  ∀ n, P5724438375272996272.a n = A306940 n

end A306940

/-! ## A306940.P14942446281259383316

`A306914(A055999(n+3))`
-/

namespace A306940.P14942446281259383316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306914 (A055999 (n + 3)).toNat

end

end A306940.P14942446281259383316

namespace A306940

/-- `A306914(A055999(n+3))` -/
def P14942446281259383316.Spec : Prop :=
  ∀ n, P14942446281259383316.a n = A306940 n

end A306940

/-! ## A306940.P3755747824134992443

`A306914(A034856(n+5)-4)`
-/

namespace A306940.P3755747824134992443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306914 (A034856 (n + 5) - 4).toNat

end

end A306940.P3755747824134992443

namespace A306940

/-- `A306914(A034856(n+5)-4)` -/
def P3755747824134992443.Spec : Prop :=
  ∀ n, P3755747824134992443.a n = A306940 n

end A306940

/-! ## A306940.P4306586509889275420

`A306914(A161680(n+7)-6)`
-/

namespace A306940.P4306586509889275420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306914 (A161680 (n + 7) - 6).toNat

end

end A306940.P4306586509889275420

namespace A306940

/-- `A306914(A161680(n+7)-6)` -/
def P4306586509889275420.Spec : Prop :=
  ∀ n, P4306586509889275420.a n = A306940 n

end A306940

/-!
# A306941: Expansion of 1/((1 - x)^8 + x^8).

The programs for A306941, the canonical program `A306941.P9611869545360002893` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306941 has offset 0).

The definition of A306941 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+2x^8))` (program `A306941.P9611869545360002893`, by `A306941.P9611869545360002893.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A306941.P9611869545360002893

`ogf(1/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+2x^8))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A306941

/-- `ogf(1/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+2x^8))` -/
def P9611869545360002893.Spec : Prop :=
  ∀ n, P9611869545360002893.a n = A306941 n

theorem P9611869545360002893.correct : P9611869545360002893.Spec := by
  intro n
  simp only [A306941]

end A306941

/-! ## A306941.P11886300527658129333

`A307044(n+7)-A307044(n+8)`
-/

namespace A306941.P11886300527658129333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307044 (n + 7) - A307044 (n + 8)

end

end A306941.P11886300527658129333

namespace A306941

/-- `A307044(n+7)-A307044(n+8)` -/
def P11886300527658129333.Spec : Prop :=
  ∀ n, P11886300527658129333.a n = A306941 n

end A306941

/-! ## A306941.P17458205564103249629

`A306914(eq[7, A025581(n)])`
-/

namespace A306941.P17458205564103249629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306941.P17458205564103249629

namespace A306941

/-- `A306914(eq[7, A025581(n)])` -/
def P17458205564103249629.Spec : Prop :=
  ∀ n, P17458205564103249629.a n = A306941 n

end A306941

/-! ## A306941.P8359690985932791552

`A306914(A000217(n+8)-8)`
-/

namespace A306941.P8359690985932791552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306914 (A000217 (n + 8) - 8).toNat

end

end A306941.P8359690985932791552

namespace A306941

/-- `A306914(A000217(n+8)-8)` -/
def P8359690985932791552.Spec : Prop :=
  ∀ n, P8359690985932791552.a n = A306941 n

end A306941

/-! ## A306941.P1016824288565970135

`A306914(A161680(n+9)-8)`
-/

namespace A306941.P1016824288565970135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306914 (A161680 (n + 9) - 8).toNat

end

end A306941.P1016824288565970135

namespace A306941

/-- `A306914(A161680(n+9)-8)` -/
def P1016824288565970135.Spec : Prop :=
  ∀ n, P1016824288565970135.a n = A306941 n

end A306941

/-! ## A306941.P11873086198312741576

`A306914(eq[8, A004736(n+1)])`
-/

namespace A306941.P11873086198312741576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306914 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306941.P11873086198312741576

namespace A306941

/-- `A306914(eq[8, A004736(n+1)])` -/
def P11873086198312741576.Spec : Prop :=
  ∀ n, P11873086198312741576.a n = A306941 n

end A306941

/-! ## A306941.P15772914255889666274

`A306914(A167614(n+5)+2*(n+2))`
-/

namespace A306941.P15772914255889666274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306914 (A167614 (n + 5) + (2 * (n + 2) : ℤ)).toNat

end

end A306941.P15772914255889666274

namespace A306941

/-- `A306914(A167614(n+5)+2*(n+2))` -/
def P15772914255889666274.Spec : Prop :=
  ∀ n, P15772914255889666274.a n = A306941 n

end A306941

/-!
# A306942: Expansion of 1/((1 - x)^9 + x^9).

The programs for A306942, there is no canonical definition to state claims against.
-/

/-! ## A306942.P12413656422498143324

`Δ[-A307045(n+8)]`
-/

namespace A306942.P12413656422498143324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A307045 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306942.P12413656422498143324

/-! ## A306942.P7031052075759262080

`A306914(A000217(n+9)-9)`
-/

namespace A306942.P7031052075759262080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306914 (A000217 (n + 9) - 9).toNat

end

end A306942.P7031052075759262080

/-! ## A306942.P14938492876812632915

`A306914(A161680(n+10)-9)`
-/

namespace A306942.P14938492876812632915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306914 (A161680 (n + 10) - 9).toNat

end

end A306942.P14938492876812632915

/-! ## A306942.P963999430029538731

`A306914(A133263(n+8)+n-2)`
-/

namespace A306942.P963999430029538731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306914 (A133263 (n + 8) + ((n : ℤ) - 2)).toNat

end

end A306942.P963999430029538731

/-! ## A306942.P12370879097358496924

`A306914(A160842(n+6)-A000096(n+1))`
-/

namespace A306942.P12370879097358496924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306914 (A160842 (n + 6) - A000096 (n + 1)).toNat

end

end A306942.P12370879097358496924

/-! ## A306942.P7740008469639165621

`A306914(A160842(n+13)%A000096(n+15))`
-/

namespace A306942.P7740008469639165621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306914 (Int.tmod (A160842 (n + 13)) (A000096 (n + 15))).toNat

end

end A306942.P7740008469639165621

/-!
# A306943: Trajectory of 5 under repeated application of x -> A306938(x).

The programs for A306943, the canonical program `A306943.P7240022653175743199` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306943 has offset 0).

The definition of A306943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 417 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306943.P7240022653175743199

`floor(sqrt(3)*a(n-1))` with `a(0)=5`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A306943

/-- `floor(sqrt(3)*a(n-1))` -/
def P7240022653175743199.Spec : Prop :=
  ∀ n, P7240022653175743199.a n = A306943 n

theorem P7240022653175743199.correct : P7240022653175743199.Spec := by
  intro n
  simp only [A306943]

end A306943

/-! ## A306943.P301256278068586311

`ceil(sqrt(3)*a(n-1))-1` with `a(0)=5`
-/

namespace A306943.P301256278068586311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌈Real.sqrt (3 : ℝ) * (a (n - 1) : ℝ)⌉ - 1

end

end A306943.P301256278068586311

namespace A306943

/-- `ceil(sqrt(3)*a(n-1))-1` -/
def P301256278068586311.Spec : Prop :=
  ∀ n, P301256278068586311.a n = A306943 n

end A306943

/-! ## A306943.P16687957721893214089

`floor(a(n-1)/sqrt(1/3))` with `a(0)=5`
-/

namespace A306943.P16687957721893214089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  ⌊(a (n - 1) : ℝ) / Real.sqrt ((1 : ℚ) / 3 : ℝ)⌋

end

end A306943.P16687957721893214089

namespace A306943

/-- `floor(a(n-1)/sqrt(1/3))` -/
def P16687957721893214089.Spec : Prop :=
  ∀ n, P16687957721893214089.a n = A306943 n

end A306943

/-! ## A306943.P16390261800445328284

`floor(sqrt(lcm(3, a(n-1)²)))` with `a(0)=5`
-/

namespace A306943.P16390261800445328284
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Nat.sqrt (Nat.lcm 3 (a (n - 1) ^ 2))

end

end A306943.P16390261800445328284

namespace A306943

/-- `floor(sqrt(lcm(3, a(n-1)²)))` -/
def P16390261800445328284.Spec : Prop :=
  ∀ n, (P16390261800445328284.a n : ℤ) = A306943 n

end A306943

/-!
# A306946: Expansion of e.g.f. Product_{k>=1} 1/(1 - x^(k^2)/k^2).

The programs for A306946, there is no canonical definition to state claims against.
-/

/-! ## A306946.P5159251565837641909

`A326756(n)+A001489(A029574(n))`
-/

namespace A306946.P5159251565837641909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326756 n + A001489 (A029574 n).toNat

end

end A306946.P5159251565837641909

/-!
# A306947: Expansion of e.g.f. Product_{k>=0} 1/(1 - x^(2^k)/2^k).

The programs for A306947, there is no canonical definition to state claims against.
-/

/-! ## A306947.P4948495443161849883

`A008486(A004526(n)*A107991(n+1))`
-/

namespace A306947.P4948495443161849883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A004526 n * A107991 (n + 1)).toNat

end

end A306947.P4948495443161849883

/-! ## A306947.P16657689294720231898

`A008486(A052657(n)/A090701(n+2))`
-/

namespace A306947.P16657689294720231898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway ((A052657 n : ℚ) / (A090701 (n + 2) : ℚ))).toNat

end

end A306947.P16657689294720231898

/-! ## A306947.P11656318372351726579

`A065033(A330043(n)+A052558(n))`
-/

namespace A306947.P11656318372351726579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A330043 n + A052558 n).toNat

end

end A306947.P11656318372351726579

/-!
# A306948: Expansion of e.g.f. (1 + x)*log(1 + x)*exp(x).

The programs for A306948, there is no canonical definition to state claims against.
-/

/-! ## A306948.P14236282007190939380

`∑[∑[(2-n)*a(n-1)+1]]` with `a(0)=0`
-/

namespace A306948.P14236282007190939380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  (2 - (n : ℤ)) * f2 (n - 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306948.P14236282007190939380

/-! ## A306948.P345595282375013926

`∑[∑[1-(n-2)*a(n-1)]]` with `a(0)=0`
-/

namespace A306948.P345595282375013926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - ((n : ℤ) - 2) * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306948.P345595282375013926

/-!
# A306951: Number of weird numbers (A006037) below 10^n.

The programs for A306951, there is no canonical definition to state claims against.
-/

/-! ## A306951.P16221357964750018966

`A090647(n)%A195924(A083033(n+1))`
-/

namespace A306951.P16221357964750018966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090647 n) (A195924 (A083033 (n + 1)).toNat)

end

end A306951.P16221357964750018966

/-!
# A306955: Let f map k to the sum of the factorials of the digits of k (A061602); sequence lists numbers such that f(f(f(k)))=k.

The programs for A306955, there is no canonical definition to state claims against.
-/

/-! ## A306955.P10254411023834216221

`A188284(∑[A371928(n)])`
-/

namespace A306955.P10254411023834216221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188284 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306955.P10254411023834216221

/-! ## A306955.P7370417052028942681

`A188284(record[A004070(n)])`
-/

namespace A306955.P7370417052028942681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188284 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306955.P7370417052028942681

/-! ## A306955.P4845491151143919316

`A188284(A267458(n)+n)`
-/

namespace A306955.P4845491151143919316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188284 (A267458 n + (n : ℤ)).toNat

end

end A306955.P4845491151143919316

/-!
# A306956: Sum over all partitions of n into distinct parts of the LCM of the parts.

The programs for A306956, there is no canonical definition to state claims against.
-/

/-! ## A306956.P6551877370324984173

`A321453(A000032(n))-A172293(n)`
-/

namespace A306956.P6551877370324984173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321453 (A000032 n).toNat - A172293 n

end

end A306956.P6551877370324984173

/-! ## A306956.P1809494596393370754

`or(A001222(A012263(n)), A026691(n))`
-/

namespace A306956.P1809494596393370754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A012263 n).toNat) (A026691 n)

end

end A306956.P1809494596393370754

/-! ## A306956.P8619337690338469275

`or(A026691(n), A275609(A000142(n)))`
-/

namespace A306956.P8619337690338469275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026691 n) (A275609 (A000142 n).toNat)

end

end A306956.P8619337690338469275

/-! ## A306956.P11811736494323957103

`or(A061257(n), A161906(A101500(n)))`
-/

namespace A306956.P11811736494323957103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061257 n) (A161906 (A101500 n).toNat)

end

end A306956.P11811736494323957103

/-! ## A306956.P1415901221171193415

`or(A061257(n), A246588(A246639(n)))`
-/

namespace A306956.P1415901221171193415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061257 n) (A246588 (A246639 n).toNat)

end

end A306956.P1415901221171193415

/-!
# A306957: a(n) = n!*binomial(10,n).

The programs for A306957, the canonical program `A306957.P15574949536395651414` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306957 has offset 0).

The definition of A306957 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*C(10, n)` (program `A306957.P15574949536395651414`, by `A306957.P15574949536395651414.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A306957.P15574949536395651414

`n!*C(10, n)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A306957

/-- `n!*C(10, n)` -/
def P15574949536395651414.Spec : Prop :=
  ∀ n, (P15574949536395651414.a n : ℤ) = A306957 n

theorem P15574949536395651414.correct : P15574949536395651414.Spec := by
  intro n
  simp only [A306957]

end A306957

/-!
# A306958: If the decimal expansion of n is d_1 ... d_k, a(n) = Sum d_i!*binomial(10,d_i).

The programs for A306958, the canonical program `A306958.P4138550251338086392` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306958 has offset 0).

The definition of A306958 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306958.P4138550251338086392

`∑{digits}[n, #!*C(10, #)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A306958

/-- `∑{digits}[n, #!*C(10, #)]` -/
def P4138550251338086392.Spec : Prop :=
  ∀ n, (P4138550251338086392.a n : ℤ) = A306958 n

theorem P4138550251338086392.correct : P4138550251338086392.Spec := by
  intro n
  simp only [A306958]

end A306958

/-! ## A306958.P14932794719064557049

`∑{digits}[n, A306957(#)]`
-/

namespace A306958.P14932794719064557049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A306957 x).sum

end

end A306958.P14932794719064557049

namespace A306958

/-- `∑{digits}[n, A306957(#)]` -/
def P14932794719064557049.Spec : Prop :=
  ∀ n, P14932794719064557049.a n = A306958 n

end A306958

/-! ## A306958.P2411591553567791367

`A306957(A087051(n))`
-/

namespace A306958.P2411591553567791367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306957 (A087051 n).toNat

end

end A306958.P2411591553567791367

namespace A306958

/-- `A306957(A087051(n))` -/
def P2411591553567791367.Spec : Prop :=
  ∀ n, P2411591553567791367.a n = A306958 n

end A306958

/-! ## A306958.P14133340780941748442

`A306957(A227549(n+1))`
-/

namespace A306958.P14133340780941748442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306957 (A227549 (n + 1)).toNat

end

end A306958.P14133340780941748442

namespace A306958

/-- `A306957(A227549(n+1))` -/
def P14133340780941748442.Spec : Prop :=
  ∀ n, P14133340780941748442.a n = A306958 n

end A306958

/-! ## A306958.P16030458600352909928

`A306957(A396204(n+1))`
-/

namespace A306958.P16030458600352909928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306957 (A396204 (n + 1)).toNat

end

end A306958.P16030458600352909928

namespace A306958

/-- `A306957(A396204(n+1))` -/
def P16030458600352909928.Spec : Prop :=
  ∀ n, P16030458600352909928.a n = A306958 n

end A306958

/-!
# A306960: Trajectory of 1 under repeated application of x -> A306958(x).

The programs for A306960, there is no canonical definition to state claims against.
-/

/-! ## A306960.P11473718063340154980

`A306958(a(n-1))` with `a(0)=1`
-/

namespace A306960.P11473718063340154980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A306958 (a (n - 1)).toNat

end

end A306960.P11473718063340154980

/-!
# A306965: If the decimal expansion of n is d_1 ... d_k, a(n) = Sum binomial(10,d_i).

The programs for A306965, the canonical program `A306965.P6097855342545744026` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306965 has offset 0).

The definition of A306965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306965.P6097855342545744026

`∑{digits}[n, C(10, #)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A306965

/-- `∑{digits}[n, C(10, #)]` -/
def P6097855342545744026.Spec : Prop :=
  ∀ n, (P6097855342545744026.a n : ℤ) = A306965 n

theorem P6097855342545744026.correct : P6097855342545744026.Spec := by
  intro n
  simp only [A306965]

end A306965

/-! ## A306965.P8751767934781955357

`∑{digits}[n, A010926(#)]`
-/

namespace A306965.P8751767934781955357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A010926 x).sum

end

end A306965.P8751767934781955357

namespace A306965

/-- `∑{digits}[n, A010926(#)]` -/
def P8751767934781955357.Spec : Prop :=
  ∀ n, P8751767934781955357.a n = A306965 n

end A306965

/-! ## A306965.P7854322738146787595

`∑{digits}[n, A007318(#+55)]`
-/

namespace A306965.P7854322738146787595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A007318 (x + 55)).sum

end

end A306965.P7854322738146787595

namespace A306965

/-- `∑{digits}[n, A007318(#+55)]` -/
def P7854322738146787595.Spec : Prop :=
  ∀ n, P7854322738146787595.a n = A306965 n

end A306965

/-! ## A306965.P1895056514749783518

`∏{e}[5^n, C(10, #)]`
-/

namespace A306965.P1895056514749783518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 10 (Nat.factorization (f1 n) p)

end

end A306965.P1895056514749783518

namespace A306965

/-- `∏{e}[5^n, C(10, #)]` -/
def P1895056514749783518.Spec : Prop :=
  ∀ n, (P1895056514749783518.a n : ℤ) = A306965 n

end A306965

/-!
# A306966: Decimal expansion of t+t^2, where t is the tribonacci constant, the real root of x^3 - x^2 - x - 1.

The programs for A306966, there is no canonical definition to state claims against.
-/

/-! ## A306966.P1517617217186058924

`A276801(n)-floor(acot(n))`
-/

namespace A306966.P1517617217186058924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276801 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A306966.P1517617217186058924

/-! ## A306966.P434694383632725221

`A276801(n)-A000007(n)`
-/

namespace A306966.P434694383632725221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276801 (n + 1) - A000007 n

end

end A306966.P434694383632725221

/-! ## A306966.P12383546265979942261

`A276801(n)-val(n+2, A287777(n+1))`
-/

namespace A306966.P12383546265979942261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276801 (n + 1) - (SequenceMachineLib.valuation (n + 2) (A287777 (n + 1)).toNat : ℤ)

end

end A306966.P12383546265979942261

/-! ## A306966.P7256479392073116838

`A276801(n)-A007814(A093074(n+1))`
-/

namespace A306966.P7256479392073116838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276801 (n + 1) - A007814 (A093074 (n + 1)).toNat

end

end A306966.P7256479392073116838

/-! ## A306966.P3140778388738098488

`A276801(n)-A007814(A105903(n+1))`
-/

namespace A306966.P3140778388738098488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276801 (n + 1) - A007814 (A105903 (n + 1)).toNat

end

end A306966.P3140778388738098488

/-! ## A306966.P5488113507205142299

`A276801(n)-A007814(A005384(n+1))`
-/

namespace A306966.P5488113507205142299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276801 (n + 1) - A007814 (A005384 (n + 1)).toNat

end

end A306966.P5488113507205142299

/-!
# A306967: a(n) is the first Zagreb index of the Fibonacci cube Gamma(n).

The programs for A306967, the canonical program `A306967.P9003930245909397017` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306967 has offset 1).

The definition of A306967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306967.P6063827380441905602

`A152881(n+1)+A261055(n)+A105423(n)`
-/

namespace A306967.P6063827380441905602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152881 (n + 1) + (A261055 n + A105423 n)

end

end A306967.P6063827380441905602

namespace A306967

/-- `A152881(n+1)+A261055(n)+A105423(n)` -/
def P6063827380441905602.Spec : Prop :=
  ∀ n, P6063827380441905602.a n = A306967 (n + 1)

end A306967

/-! ## A306967.P2394824128479100318

`A213589(n+1)+A105423(n)-A129707(n)`
-/

namespace A306967.P2394824128479100318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213589 (n + 1) + (A105423 n - A129707 n)

end

end A306967.P2394824128479100318

namespace A306967

/-- `A213589(n+1)+A105423(n)-A129707(n)` -/
def P2394824128479100318.Spec : Prop :=
  ∀ n, P2394824128479100318.a n = A306967 (n + 1)

end A306967

/-! ## A306967.P9003930245909397017

`3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` with `a(0)=2, a(1)=6, a(2)=22, a(3)=54, a(4)=132, a(5)=292`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A306967

/-- `3*a(n-1)-5*a(n-3)+3*a(n-5)+a(n-6)` -/
def P9003930245909397017.Spec : Prop :=
  ∀ n, P9003930245909397017.a n = A306967 (n + 1)

theorem P9003930245909397017.correct : P9003930245909397017.Spec := by
  intro n
  simp only [A306967, Nat.add_sub_cancel]

end A306967

/-!
# A306968: Numbers prime to 7 that are not represented by x^2+y^2+7*z^2.

The programs for A306968, there is no canonical definition to state claims against.
-/

/-! ## A306968.P7736706331402455990

`filter[A097633(n+1), A109720(#)]`
-/

namespace A306968.P7736706331402455990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A306968.P7736706331402455990

/-! ## A306968.P9569523125237511955

`∩[A047304(n+1), A097633(n+1)]`
-/

namespace A306968.P9569523125237511955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097633 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306968.P9569523125237511955

/-! ## A306968.P15768612340120922776

`∩[A097633(n+1), A107040(n+1)]`
-/

namespace A306968.P15768612340120922776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097633 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306968.P15768612340120922776

/-!
# A306969: Numbers congruent to 1, 2, or 4 mod 7 that are not represented by x^2+7*y^2+7*z^2.

The programs for A306969, there is no canonical definition to state claims against.
-/

/-! ## A306969.P17003270686048728025

`∩[A047350(n+1), A306296(n+1)]`
-/

namespace A306969.P17003270686048728025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306969.P17003270686048728025

/-! ## A306969.P6553823830430761324

`∩[A047357(n+1)+1, A306296(n+1)]`
-/

namespace A306969.P6553823830430761324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047357 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306969.P6553823830430761324

/-! ## A306969.P13400267075541342920

`∩[A047370(n+1)-1, A306296(n+1)]`
-/

namespace A306969.P13400267075541342920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047370 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306969.P13400267075541342920

/-! ## A306969.P17413321783839062069

`∩[A047296(n+1)-2, A306296(n+1)]`
-/

namespace A306969.P17413321783839062069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047296 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306969.P17413321783839062069

/-!
# A306971: The number of initial values <= 10^n whose trajectory under the iteration x -> A306938(x) reaches 1.

The programs for A306971, there is no canonical definition to state claims against.
-/

/-! ## A306971.P335828912224040291

`A016825(A359994(2*n+3))-3`
-/

namespace A306971.P335828912224040291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A359994 (2 * n + 3)).toNat - 3

end

end A306971.P335828912224040291

/-!
# A306972: Nonsquare numbers n such that the difference between sqrt(n) and its best rational approximation as x/y with y<=n produces a new minimum of abs(sqrt(n)-x/y). x/y is provided as A306973/A306974.

The programs for A306972, there is no canonical definition to state claims against.
-/

/-! ## A306972.P14858085289332055875

`round((A306973(n+1)/A306974(n+1))²)`
-/

namespace A306972.P14858085289332055875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A306973 (n + 1) : ℚ) / (A306974 (n + 1) : ℚ)) ^ 2)

end

end A306972.P14858085289332055875

/-!
# A306973: Numerator of best rational approximation x/y of sqrt(k), y<=k, with k given by A306972. The corresponding denominators are given in A306974.

The programs for A306973, there is no canonical definition to state claims against.
-/

/-! ## A306973.P17072527651410665446

`round(sqrt(A306972(n+1))*A306974(n+1))`
-/

namespace A306973.P17072527651410665446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A306972 (n + 1) : ℝ) * (A306974 (n + 1) : ℝ))

end

end A306973.P17072527651410665446

/-!
# A306974: Denominator of best rational approximation x/y of sqrt(k), y<=k, with k given by A306972. The corresponding numerators are given in A306973.

The programs for A306974, there is no canonical definition to state claims against.
-/

/-! ## A306974.P8668060130199835070

`round(A306973(n+1)/sqrt(A306972(n+1)))`
-/

namespace A306974.P8668060130199835070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A306973 (n + 1) : ℝ) / Real.sqrt (A306972 (n + 1) : ℝ))

end

end A306974.P8668060130199835070

/-!
# A306975: Numbers n>1 such that the difference between log(n) and its best rational approximation as x/y with y<=n produces a new minimum of abs(log(n)-x/y). x/y is provided as A306976/A306977.

The programs for A306975, there is no canonical definition to state claims against.
-/

/-! ## A306975.P2462548575744382317

`round(exp(A306976(n+1)/A306977(n+1)))`
-/

namespace A306975.P2462548575744382317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp ((A306976 (n + 1) : ℚ) / (A306977 (n + 1) : ℚ) : ℝ))

end

end A306975.P2462548575744382317

/-!
# A306976: Numerator of best rational approximation x/y of log(k), y<=k, with k>1 given by A306975. The corresponding denominators are given in A306977.

The programs for A306976, there is no canonical definition to state claims against.
-/

/-! ## A306976.P5360927357726032339

`round(log(A306975(n+1))*A306977(n+1))`
-/

namespace A306976.P5360927357726032339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A306975 (n + 1) : ℝ) * (A306977 (n + 1) : ℝ))

end

end A306976.P5360927357726032339

/-!
# A306979: a(1) = 0; a(n) is the sum of powers of 2 where the exponents are the digits of a(n-1).

The programs for A306979, the canonical program `A306979.P3142410444248294790` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306979 has offset 1).

The definition of A306979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306979.P3142410444248294790

`A397768(a(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A306979

/-- `A397768(a(n-1))` -/
def P3142410444248294790.Spec : Prop :=
  ∀ n, P3142410444248294790.a n = A306979 (n + 1)

theorem P3142410444248294790.correct : P3142410444248294790.Spec := by
  intro n
  simp only [A306979, Nat.add_sub_cancel]

end A306979

/-!
# A306983: Infinitary pseudoperfect numbers: numbers n equal to the sum of a subset of their proper infinitary divisors.

The programs for A306983, there is no canonical definition to state claims against.
-/

/-! ## A306983.P12240657536079023001

`A335197(A335235(n+1)%A335231(3*(n+1)))`
-/

namespace A306983.P12240657536079023001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335197 (Int.tmod (A335235 (n + 1)) (A335231 (3 * (n + 1)))).toNat

end

end A306983.P12240657536079023001

/-! ## A306983.P11149785503296862329

`A335197(A335235(n+1))%A335244(3*(n+1))`
-/

namespace A306983.P11149785503296862329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A335197 (A335235 (n + 1)).toNat) (A335244 (3 * (n + 1)))

end

end A306983.P11149785503296862329

/-! ## A306983.P842540285754726620

`∩[A108408(n+1), A292985(n+1)]`
-/

namespace A306983.P842540285754726620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306983.P842540285754726620

/-! ## A306983.P8244708349634489447

`∩[A122409(n+1), A335197(n+1)]`
-/

namespace A306983.P8244708349634489447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306983.P8244708349634489447

/-! ## A306983.P7369448427973089886

`∩[A224778(n+1), A292985(n+1)]`
-/

namespace A306983.P7369448427973089886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306983.P7369448427973089886

/-!
# A306986: Number of primitive abundant numbers (A071395) < 10^n.

The programs for A306986, there is no canonical definition to state claims against.
-/

/-! ## A306986.P13249292135970483909

`A083853(A173992(n+1))`
-/

namespace A306986.P13249292135970483909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083853 (A173992 (n + 1)).toNat

end

end A306986.P13249292135970483909

/-!
# A306987: Primitive abundant numbers (A071395) that are pseudoperfect (A005835).

The programs for A306987, there is no canonical definition to state claims against.
-/

/-! ## A306987.P9725553028220168824

`∩[A006036(n+1), A071395(n+1)]`
-/

namespace A306987.P9725553028220168824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306987.P9725553028220168824

/-! ## A306987.P14571117627521243669

`∩[A006036(n+1), A091191(n+1)]`
-/

namespace A306987.P14571117627521243669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306987.P14571117627521243669

/-! ## A306987.P18418157504346282537

`filter[A006036(n+1), A294930(#)]`
-/

namespace A306987.P18418157504346282537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)

end

end A306987.P18418157504346282537

/-! ## A306987.P1685549281789685286

`∩[A006036(n+1), A381546(n+1)]`
-/

namespace A306987.P1685549281789685286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381546 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306987.P1685549281789685286

/-! ## A306987.P2151134740723185804

`∩[A005835(n+1), A071395(n+1)]`
-/

namespace A306987.P2151134740723185804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306987.P2151134740723185804

/-! ## A306987.P649653700718403279

`∩[A006036(n+1), record[A091196(n+1)]]`
-/

namespace A306987.P649653700718403279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306987.P649653700718403279

/-! ## A306987.P14679089343306027130

`filter[A071395(n+1), A210455(#)]`
-/

namespace A306987.P14679089343306027130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j).toNat = 1) n)

end

end A306987.P14679089343306027130

/-!
# A306988: a(n) = Sum_{k=1..n} binomial(n,k)*phi(k), where phi is the Euler totient function.

The programs for A306988, there is no canonical definition to state claims against.
-/

/-! ## A306988.P13020448249821232785

`∑[A131045(n)]`
-/

namespace A306988.P13020448249821232785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306988.P13020448249821232785

/-! ## A306988.P17895241061358654867

`A131045(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A306988.P17895241061358654867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A131045 n + a (A023443 n).toNat

end

end A306988.P17895241061358654867

/-! ## A306988.P2956786673193193823

`a(n-1)+A131045(n)%A131045(n+1)` with `a(0)=1`
-/

namespace A306988.P2956786673193193823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A131045 n) (A131045 (n + 1))

end

end A306988.P2956786673193193823

/-! ## A306988.P14166815432436889197

`A131045(n)+a(A028242(A004273(n)))` with `a(0)=1`
-/

namespace A306988.P14166815432436889197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A131045 n + a (A028242 (A004273 n).toNat).toNat

end

end A306988.P14166815432436889197

/-!
# A306991: Number of primitive Heronian isosceles triangles with perimeter A308222(n).

The programs for A306991, there is no canonical definition to state claims against.
-/

/-! ## A306991.P15517343272651971463

`A160385(A019595(n))`
-/

namespace A306991.P15517343272651971463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (A019595 n).toNat

end

end A306991.P15517343272651971463

/-! ## A306991.P9687475792662701984

`A256660(lcm(A000217(n), A247309(n)))`
-/

namespace A306991.P9687475792662701984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256660 (Int.lcm (A000217 n) (A247309 n))

end

end A306991.P9687475792662701984

/-! ## A306991.P15872167177336448050

`A244231(xor(A012265(3*n), A238439(n+1)))`
-/

namespace A306991.P15872167177336448050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244231 (Int.xor (A012265 (3 * n)) (A238439 (n + 1))).toNat

end

end A306991.P15872167177336448050

/-!
# A306995: Number of primes q < prime(n), such that 2*prime(n) + q is prime.

The programs for A306995, there is no canonical definition to state claims against.
-/

/-! ## A306995.P5020898073436288791

`A071127(A000040(n+1))`
-/

namespace A306995.P5020898073436288791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071127 (A000040 (n + 1)).toNat

end

end A306995.P5020898073436288791

/-! ## A306995.P11187216111727413607

`A071127(p?[xor(1, n)])`
-/

namespace A306995.P11187216111727413607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071127 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A306995.P11187216111727413607

/-! ## A306995.P11234717768113660100

`A071127(p?[comp[n²]])`
-/

namespace A306995.P11234717768113660100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071127 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A306995.P11234717768113660100

/-! ## A306995.P11317831649121864848

`A071127(Δ[A007504(n)])`
-/

namespace A306995.P11317831649121864848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071127 (f1 (n + 1) - f1 n).toNat

end

end A306995.P11317831649121864848

/-! ## A306995.P8021452522084943771

`A071127(A006005(n+1))`
-/

namespace A306995.P8021452522084943771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071127 (A006005 (n + 1)).toNat

end

end A306995.P8021452522084943771

/-! ## A306995.P5790876364366106256

`A071127(A063884(n+1))`
-/

namespace A306995.P5790876364366106256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071127 (A063884 (n + 1)).toNat

end

end A306995.P5790876364366106256

/-! ## A306995.P17419175093937738295

`A071127(A008578(n+2))`
-/

namespace A306995.P17419175093937738295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071127 (A008578 (n + 2)).toNat

end

end A306995.P17419175093937738295

/-! ## A306995.P7433476609509417585

`A071127(A075643(n+2))`
-/

namespace A306995.P7433476609509417585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071127 (A075643 (n + 2)).toNat

end

end A306995.P7433476609509417585

/-! ## A306995.P1768361472769225867

`A071127(A171525(n+2))`
-/

namespace A306995.P1768361472769225867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071127 (A171525 (n + 2)).toNat

end

end A306995.P1768361472769225867

/-! ## A306995.P7167689890151124787

`A071127(A182986(n+2))`
-/

namespace A306995.P7167689890151124787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071127 (A182986 (n + 2)).toNat

end

end A306995.P7167689890151124787

/-! ## A306995.P794836470178522527

`A071127(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A306995.P794836470178522527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071127 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A306995.P794836470178522527

/-!
# A306997: Number of primes q < prime(n), such that 6*prime(n) + q is prime.

The programs for A306997, there is no canonical definition to state claims against.
-/

/-! ## A306997.P1006496356603956224

`A080791(xor(A306860(n), A352006(n)))`
-/

namespace A306997.P1006496356603956224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (Int.xor (A306860 n) (A352006 n)).toNat

end

end A306997.P1006496356603956224

/-! ## A306997.P5409085326353788603

`A005811(ceil((A283877(n)-A000005(2*n+1))/4))`
-/

namespace A306997.P5409085326353788603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 ⌈(A283877 n - A000005 (2 * n + 1) : ℚ) / 4⌉.toNat

end

end A306997.P5409085326353788603

/-!
# A306999: Numbers m such that 1 < gcd(m, 21) < m and m does not divide 21^e for e >= 0.

The programs for A306999, there is no canonical definition to state claims against.
-/

/-! ## A306999.P11701836006816590810

`record[A173439(A157330(n+1))]`
-/

namespace A306999.P11701836006816590810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173439 (A157330 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306999.P11701836006816590810

/-! ## A306999.P4108419883027800099

`record[gcd(A024619(n+1), A066085(n+2))]`
-/

namespace A306999.P4108419883027800099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024619 (n + 1)) (A066085 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306999.P4108419883027800099

/-! ## A306999.P1601765089383601087

`lt[Δ[A352157(n+1)], A092694(n+1)]`
-/

namespace A306999.P1601765089383601087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352157 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092694 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A306999.P1601765089383601087

