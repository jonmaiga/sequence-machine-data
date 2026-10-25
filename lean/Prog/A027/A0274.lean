import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
import Seq.B014.C000
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
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A027412: a(n) = 2*a(n-1) + (n-2)*a(n-2) with a(0) = 1, a(1) = 2.

The programs for A027412, the canonical program `A027412.P14875660920077692251` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027412 has offset 0).

The definition of A027412 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+(n-2)*a(n-2)` (program `A027412.P14875660920077692251`, by `A027412.P14875660920077692251.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027412.P14875660920077692251

`2*a(n-1)+(n-2)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027412

/-- `2*a(n-1)+(n-2)*a(n-2)` -/
def P14875660920077692251.Spec : Prop :=
  ∀ n, P14875660920077692251.a n = A027412 n

theorem P14875660920077692251.correct : P14875660920077692251.Spec := by
  intro n
  simp only [A027412]

end A027412

/-! ## A027412.P9301999356625955645

`∏[(n-2)/a(n-1)+2]` with `a(0)=1, a(1)=2`
-/

namespace A027412.P9301999356625955645
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ((n : ℤ) - 2 : ℚ) / f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027412.P9301999356625955645

namespace A027412

/-- `∏[(n-2)/a(n-1)+2]` -/
def P9301999356625955645.Spec : Prop :=
  ∀ n, P9301999356625955645.a n = (A027412 n : ℚ)

end A027412

/-! ## A027412.P10331908052494621382

`∏[2-(2-n)/a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A027412.P10331908052494621382
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 - (2 - (n : ℤ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A027412.P10331908052494621382

namespace A027412

/-- `∏[2-(2-n)/a(n-1)]` -/
def P10331908052494621382.Spec : Prop :=
  ∀ n, P10331908052494621382.a n = (A027412 n : ℚ)

end A027412

/-! ## A027412.P10128881760803237343

`a(n-1)-((2-n)*a(n-2)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A027412.P10128881760803237343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - ((2 - (n : ℤ)) * a (n - 2) - a (n - 1))

end

end A027412.P10128881760803237343

namespace A027412

/-- `a(n-1)-((2-n)*a(n-2)-a(n-1))` -/
def P10128881760803237343.Spec : Prop :=
  ∀ n, P10128881760803237343.a n = A027412 n

theorem P10128881760803237343.correct : P10128881760803237343.Spec := by
  intro n
  simp only [A027412, Nat.add_sub_cancel, A027412.P10128881760803237343.a, A027412.P14875660920077692251.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A027412

/-! ## A027412.P13197033944722167228

`∏{e}[A003945(n), A005425(#)]`
-/

namespace A027412.P13197033944722167228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005425 (Nat.factorization (f1 n).natAbs p)

end

end A027412.P13197033944722167228

namespace A027412

/-- `∏{e}[A003945(n), A005425(#)]` -/
def P13197033944722167228.Spec : Prop :=
  ∀ n, P13197033944722167228.a n = A027412 n

end A027412

/-!
# A027413: If n is an odd prime, a(n) = the number of primitive roots mod n, otherwise a(n) = the number of k < n divisible by at least one but not all of the prime factors of n.

The programs for A027413, there is no canonical definition to state claims against.
-/

/-! ## A027413.P15951898117130341937

`and(A292600(n), A326142(A056451(n)))`
-/

namespace A027413.P15951898117130341937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A292600 n) (A326142 (A056451 n).toNat)

end

end A027413.P15951898117130341937

/-! ## A027413.P16254909867412459891

`and(ceil(n/2), A349801(A344607(n)))`
-/

namespace A027413.P16254909867412459891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌈(n : ℚ) / 2⌉ (A349801 (A344607 n).toNat)

end

end A027413.P16254909867412459891

/-! ## A027413.P9988204156517371795

`and(ceil(n/2), A163480(A084917(n+2)))`
-/

namespace A027413.P9988204156517371795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌈(n : ℚ) / 2⌉ (A163480 (A084917 (n + 2)).toNat)

end

end A027413.P9988204156517371795

/-! ## A027413.P1830560909873015114

`A326502(3*n+5)%∑[A288640(3*n+4)]`
-/

namespace A027413.P1830560909873015114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288640 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326502 (3 * n + 5)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027413.P1830560909873015114

/-!
# A027414: G.f. for Moebius transform is x * (1 + x) / (1 + x^4).

The programs for A027414, the canonical program `A027414.P10695984215047308030` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027414 has offset 1).

The definition of A027414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027414.P8821495474566250692

`∑{d}[n+1, A056594(A140106(#+1))]`
-/

namespace A027414.P8821495474566250692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056594 (A140106 (d + 1)).toNat

end

end A027414.P8821495474566250692

namespace A027414

/-- `∑{d}[n+1, A056594(A140106(#+1))]` -/
def P8821495474566250692.Spec : Prop :=
  ∀ n, P8821495474566250692.a n = A027414 (n + 1)

end A027414

/-! ## A027414.P10695984215047308030

`∑{d}[n+1, A128834(#-A002265(#))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A027414

/-- `∑{d}[n+1, A128834(#-A002265(#))]` -/
def P10695984215047308030.Spec : Prop :=
  ∀ n, P10695984215047308030.a n = A027414 (n + 1)

theorem P10695984215047308030.correct : P10695984215047308030.Spec := by
  intro n
  simp only [A027414, Nat.add_sub_cancel]

end A027414

/-! ## A027414.P5388675000862216572

`∑{d}[n+1, A132380(#+1)]`
-/

namespace A027414.P5388675000862216572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A132380 (d + 1)

end

end A027414.P5388675000862216572

namespace A027414

/-- `∑{d}[n+1, A132380(#+1)]` -/
def P5388675000862216572.Spec : Prop :=
  ∀ n, P5388675000862216572.a n = A027414 (n + 1)

end A027414

/-! ## A027414.P8591263971513774985

`∑{d}[n+1, A056594(A116668(#))]`
-/

namespace A027414.P8591263971513774985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056594 (A116668 d).toNat

end

end A027414.P8591263971513774985

namespace A027414

/-- `∑{d}[n+1, A056594(A116668(#))]` -/
def P8591263971513774985.Spec : Prop :=
  ∀ n, P8591263971513774985.a n = A027414 (n + 1)

end A027414

/-! ## A027414.P17235616315497978838

`∑{d}[n+1, A117569(A022268(#))]`
-/

namespace A027414.P17235616315497978838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117569 (A022268 d).toNat

end

end A027414.P17235616315497978838

namespace A027414

/-- `∑{d}[n+1, A117569(A022268(#))]` -/
def P17235616315497978838.Spec : Prop :=
  ∀ n, P17235616315497978838.a n = A027414 (n + 1)

end A027414

/-!
# A027415: Number of rooted unlabeled trees on n nodes having a primary branch.

The programs for A027415, there is no canonical definition to state claims against.
-/

/-! ## A027415.P14732912415024624123

`∑[A174145(n)]-A027416(n+1)`
-/

namespace A027415.P14732912415024624123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A027416 (n + 1)

end

end A027415.P14732912415024624123

/-! ## A027415.P1134353940119448458

`A000081(n+1)-A027416(n+1)`
-/

namespace A027415.P1134353940119448458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1) - A027416 (n + 1)

end

end A027415.P1134353940119448458

/-! ## A027415.P11337286059474245667

`A339067(A133263(n))-A106236(A133263(n))`
-/

namespace A027415.P11337286059474245667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (A133263 n).toNat - A106236 (A133263 n).toNat

end

end A027415.P11337286059474245667

/-! ## A027415.P17554525619384222808

`A106234(A133263(n+1))-A027416(n+1)`
-/

namespace A027415.P17554525619384222808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (A133263 (n + 1)).toNat - A027416 (n + 1)

end

end A027415.P17554525619384222808

/-! ## A027415.P11167925279455393420

`A217781(A000124(n))-A027416(n+1)`
-/

namespace A027415.P11167925279455393420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217781 (A000124 n).toNat - A027416 (n + 1)

end

end A027415.P11167925279455393420

/-!
# A027416: Number of unlabeled (and unrooted) trees on n nodes having a centroid.

The programs for A027416, there is no canonical definition to state claims against.
-/

/-! ## A027416.P8106251936844596887

`A106234(A133263(n))-A027415(A028310(n))`
-/

namespace A027416.P8106251936844596887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (A133263 n).toNat - A027415 (A028310 n).toNat

end

end A027416.P8106251936844596887

/-!
# A027417: Number of distinct products i*j with 0 <= i, j <= 2^n - 1.

The programs for A027417, there is no canonical definition to state claims against.
-/

/-! ## A027417.P13340596621485284495

`A027384(2^n-1)`
-/

namespace A027417.P13340596621485284495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (2 ^ n - 1)

end

end A027417.P13340596621485284495

/-! ## A027417.P9848901080091508112

`record[A027384(A173787(n))]`
-/

namespace A027417.P9848901080091508112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027417.P9848901080091508112

/-! ## A027417.P12223299463553472308

`record[A027384(A303763(n))]`
-/

namespace A027417.P12223299463553472308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027417.P12223299463553472308

/-! ## A027417.P5625357077628877517

`record[A027384(Δ[A228693(n)])]`
-/

namespace A027417.P5625357077628877517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027417.P5625357077628877517

/-! ## A027417.P8472675309982087543

`record[A027384(A253564(n+1))]`
-/

namespace A027417.P8472675309982087543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027417.P8472675309982087543

/-!
# A027419: Number of distinct products i*j with 0 <= i, j <= n-th prime.

The programs for A027419, there is no canonical definition to state claims against.
-/

/-! ## A027419.P17827434639195000294

`A027384(A000040(n+1))`
-/

namespace A027419.P17827434639195000294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (A000040 (n + 1)).toNat

end

end A027419.P17827434639195000294

/-! ## A027419.P17094743671934284345

`A027384(A008578(n+2))`
-/

namespace A027419.P17094743671934284345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (A008578 (n + 2)).toNat

end

end A027419.P17094743671934284345

/-! ## A027419.P13244251382751035622

`A027384(A182986(n+2))`
-/

namespace A027419.P13244251382751035622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (A182986 (n + 2)).toNat

end

end A027419.P13244251382751035622

/-! ## A027419.P14325268790949712298

`A027424(Δ[A007504(n)])+1`
-/

namespace A027419.P14325268790949712298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (f1 (n + 1) - f1 n).toNat + 1

end

end A027419.P14325268790949712298

/-! ## A027419.P14665155585467963117

`A027384(record[A006530(n+2)])`
-/

namespace A027419.P14665155585467963117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027419.P14665155585467963117

/-! ## A027419.P14437854614438982724

`A027384(record[A014963(n+2)])`
-/

namespace A027419.P14437854614438982724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027419.P14437854614438982724

/-! ## A027419.P17124607053547915657

`A027384(record[A020639(n+2)])`
-/

namespace A027419.P17124607053547915657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027419.P17124607053547915657

/-! ## A027419.P6545898065922333089

`A027384(record[Δ[A027384(n+1)]])`
-/

namespace A027419.P6545898065922333089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A027419.P6545898065922333089

/-! ## A027419.P14335668056253570564

`A027424(A006093(n+1)+1)+1`
-/

namespace A027419.P14335668056253570564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (A006093 (n + 1) + 1).toNat + 1

end

end A027419.P14335668056253570564

/-! ## A027419.P3128700623127137052

`A027424(record[Δ[A027424(n+1)]])+1`
-/

namespace A027419.P3128700623127137052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A027419.P3128700623127137052

/-! ## A027419.P206995830415757766

`A027424(record[A000010(n+1)]+1)+1`
-/

namespace A027419.P206995830415757766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat + 1

end

end A027419.P206995830415757766

/-!
# A027420: Triangle T00, T10, T01, T20, T11, T02, etc., where Tmn = number of distinct products ij with min(m,n) <= i,j <= max(m,n).

The programs for A027420, there is no canonical definition to state claims against.
-/

/-! ## A027420.P7914022735197780958

`A393584(A143183(n))`
-/

namespace A027420.P7914022735197780958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393584 (A143183 n).toNat

end

end A027420.P7914022735197780958

/-! ## A027420.P16474152411230605571

`A093354(A098361(n))+A066202(n+1)`
-/

namespace A027420.P16474152411230605571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093354 (A098361 n).toNat + A066202 (n + 1)

end

end A027420.P16474152411230605571

/-!
# A027421: Triangle T(n,k) = number of distinct products i*j with k<=i,j<=n, for 0<=k<=n.

The programs for A027421, there is no canonical definition to state claims against.
-/

/-! ## A027421.P2298425728117546669

`A027422(A061579(n))`
-/

namespace A027421.P2298425728117546669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027422 (A061579 n).toNat

end

end A027421.P2298425728117546669

/-! ## A027421.P14581282853398238326

`A027422(A114327(n)+n)`
-/

namespace A027421.P14581282853398238326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027422 (A114327 n + (n : ℤ)).toNat

end

end A027421.P14581282853398238326

/-! ## A027421.P2102984390636145817

`A027422(A038722(n+1)-1)`
-/

namespace A027421.P2102984390636145817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027422 (A038722 (n + 1) - 1).toNat

end

end A027421.P2102984390636145817

/-! ## A027421.P6163699055191303182

`A027422(A093995(n+1)-(n+1))`
-/

namespace A027421.P6163699055191303182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027422 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A027421.P6163699055191303182

/-! ## A027421.P17545557188550961041

`A027422(A002024(n+1)²-(n+1))`
-/

namespace A027421.P17545557188550961041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027422 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A027421.P17545557188550961041

/-! ## A027421.P3263587624363184016

`A027422(A025581(n)+n-A002262(n))`
-/

namespace A027421.P3263587624363184016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027422 (A025581 n + ((n : ℤ) - A002262 n)).toNat

end

end A027421.P3263587624363184016

/-! ## A027421.P12845099360845032036

`A027422(n-(A002262(n)-A025581(n)))`
-/

namespace A027421.P12845099360845032036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027422 ((n : ℤ) - (A002262 n - A025581 n)).toNat

end

end A027421.P12845099360845032036

/-! ## A027421.P551636949752811835

`A027422(A038722(n+2))`
-/

namespace A027421.P551636949752811835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027422 (A038722 (n + 2)).toNat

end

end A027421.P551636949752811835

/-! ## A027421.P1820088561429843236

`A027420(A245300(n))`
-/

namespace A027421.P1820088561429843236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027420 (A245300 n).toNat

end

end A027421.P1820088561429843236

/-!
# A027422: Triangle T00, T10, T11, T20, T21, T22, etc. where Tmn = number of distinct products ij with m-n<=i,j<=m.

The programs for A027422, there is no canonical definition to state claims against.
-/

/-! ## A027422.P3543244888308265323

`A027421(A061579(n))`
-/

namespace A027422.P3543244888308265323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027421 (A061579 n).toNat

end

end A027422.P3543244888308265323

/-! ## A027422.P4080944912062735158

`A027421(A114327(n)+n)`
-/

namespace A027422.P4080944912062735158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027421 (A114327 n + (n : ℤ)).toNat

end

end A027422.P4080944912062735158

/-! ## A027422.P6919414134549146765

`A027421(A038722(n+1)-1)`
-/

namespace A027422.P6919414134549146765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027421 (A038722 (n + 1) - 1).toNat

end

end A027422.P6919414134549146765

/-! ## A027422.P4335211200731895458

`A027421(A057944(n)+A025581(n))`
-/

namespace A027422.P4335211200731895458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027421 (A057944 n + A025581 n).toNat

end

end A027422.P4335211200731895458

/-! ## A027422.P6390089667765210074

`A027421(A002378(n)%A080036(n))`
-/

namespace A027422.P6390089667765210074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027421 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A027422.P6390089667765210074

/-!
# A027423: Number of divisors of n!.

The programs for A027423, the canonical program `A027423.P14066705804803784298` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027423 has offset 0).

The definition of A027423 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027423.P14066705804803784298

`A000005(A000142(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A027423

/-- `A000005(A000142(n))` -/
def P14066705804803784298.Spec : Prop :=
  ∀ n, P14066705804803784298.a n = A027423 n

theorem P14066705804803784298.correct : P14066705804803784298.Spec := by
  intro n
  simp only [A027423]

end A027423

/-! ## A027423.P14653436844127337787

`A153823(n)+1`
-/

namespace A027423.P14653436844127337787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153823 n + 1

end

end A027423.P14653436844127337787

namespace A027423

/-- `A153823(n)+1` -/
def P14653436844127337787.Spec : Prop :=
  ∀ n, P14653436844127337787.a n = A027423 n

theorem P14653436844127337787.correct : P14653436844127337787.Spec := by
  intro n
  simp only [A027423, Nat.add_sub_cancel, A027423.P14653436844127337787.a, A027423.P14066705804803784298.a, A000005, A000005.P16091521709108585461.a, A000142, A000142.P3272619076580183195.a, A153823, A153823.P12958428199370976494.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027423

/-! ## A027423.P5133115496685917634

`A038024(n)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A027423.P5133115496685917634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A038024 n + a (n - 1)

end

end A027423.P5133115496685917634

namespace A027423

/-- `A038024(n)+a(n-1)` -/
def P5133115496685917634.Spec : Prop :=
  ∀ n, P5133115496685917634.a n = A027423 n

end A027423

/-! ## A027423.P5882748127241253286

`A337257(n)+A336940(n)`
-/

namespace A027423.P5882748127241253286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337257 n + A336940 n

end

end A027423.P5882748127241253286

namespace A027423

/-- `A337257(n)+A336940(n)` -/
def P5882748127241253286.Spec : Prop :=
  ∀ n, P5882748127241253286.a n = A027423 n

theorem P5882748127241253286.correct : P5882748127241253286.Spec := by
  intro n
  simp only [A027423, Nat.add_sub_cancel, A027423.P5882748127241253286.a, A027423.P14066705804803784298.a, A000005, A000005.P16091521709108585461.a, A000142, A000142.P3272619076580183195.a, A336940, A336940.P4983532060712905772.a, A337257, A337257.P14876870470645707118.a, A011371, A011371.P8892659874704383252.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027423

/-! ## A027423.P4464101442672386940

`(A011371(n)+1)*A336940(n)`
-/

namespace A027423.P4464101442672386940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011371 n + 1) * A336940 n

end

end A027423.P4464101442672386940

namespace A027423

/-- `(A011371(n)+1)*A336940(n)` -/
def P4464101442672386940.Spec : Prop :=
  ∀ n, P4464101442672386940.a n = A027423 n

end A027423

/-! ## A027423.P2120807334621465257

`(A005187(A004526(n))+1)*A336940(n)`
-/

namespace A027423.P2120807334621465257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005187 (A004526 n).toNat + 1) * A336940 n

end

end A027423.P2120807334621465257

namespace A027423

/-- `(A005187(A004526(n))+1)*A336940(n)` -/
def P2120807334621465257.Spec : Prop :=
  ∀ n, P2120807334621465257.a n = A027423 n

end A027423

/-! ## A027423.P17299911591521021451

`(log2(A060818(n))+1)*A336940(n)`
-/

namespace A027423.P17299911591521021451
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.logb 2 (A060818 n : ℝ) + 1) * (A336940 n : ℝ)

end

end A027423.P17299911591521021451

namespace A027423

/-- `(log2(A060818(n))+1)*A336940(n)` -/
def P17299911591521021451.Spec : Prop :=
  ∀ n, P17299911591521021451.a n = (A027423 n : ℝ)

end A027423

/-! ## A027423.P17791243879879870782

`2-(A007318(∑[n])-A153823(n))`
-/

namespace A027423.P17791243879879870782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) - A153823 n)

end

end A027423.P17791243879879870782

namespace A027423

/-- `2-(A007318(∑[n])-A153823(n))` -/
def P17791243879879870782.Spec : Prop :=
  ∀ n, P17791243879879870782.a n = A027423 n

end A027423

/-! ## A027423.P4069570395518079788

`A153824(n)+1-A153825(n)`
-/

namespace A027423.P4069570395518079788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153824 n + (1 - A153825 n)

end

end A027423.P4069570395518079788

namespace A027423

/-- `A153824(n)+1-A153825(n)` -/
def P4069570395518079788.Spec : Prop :=
  ∀ n, P4069570395518079788.a n = A027423 n

theorem P4069570395518079788.correct : P4069570395518079788.Spec := by
  intro n
  simp only [A027423, Nat.add_sub_cancel, A027423.P4069570395518079788.a, A027423.P14066705804803784298.a, A000005, A000005.P16091521709108585461.a, A000142, A000142.P3272619076580183195.a, A153824, A153824.P9864172349537721965.a, A153825, A153825.P2086424196053372448.a, A001065, A001065.P4097147489331274860.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A152770, A152770.P4996422170920482869.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A062249, A062249.P5473932307129171226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027423

/-!
# A027424: Number of distinct products i*j with 1 <= i, j <= n (number of distinct terms in n X n multiplication table).

The programs for A027424, there is no canonical definition to state claims against.
-/

/-! ## A027424.P4692789477066749185

`∑[A062854(n+1)]`
-/

namespace A027424.P4692789477066749185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027424.P4692789477066749185

/-! ## A027424.P10249361524474613990

`∑[abs(Δ[A027384(n)])]`
-/

namespace A027424.P10249361524474613990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027424.P10249361524474613990

/-! ## A027424.P10135033982810095540

`A027384(n+1)-1`
-/

namespace A027424.P10135033982810095540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 (n + 1) - 1

end

end A027424.P10135033982810095540

/-! ## A027424.P2497695418758456981

`A373716(n+1)+Δ[n²]`
-/

namespace A027424.P2497695418758456981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373716 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A027424.P2497695418758456981

/-! ## A027424.P8879061222230331258

`(n+1)²-A062851(n+1)`
-/

namespace A027424.P8879061222230331258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A062851 (n + 1)

end

end A027424.P8879061222230331258

/-! ## A027424.P2770214398352238806

`(n+1)²-∑[A062855(n+1)]`
-/

namespace A027424.P2770214398352238806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027424.P2770214398352238806

/-! ## A027424.P1404256794407015253

`A064047(n+1)+A027428(n+1)`
-/

namespace A027424.P1404256794407015253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064047 (n + 1) + A027428 (n + 1)

end

end A027424.P1404256794407015253

/-! ## A027424.P416858180484867345

`A263995(n+1)-A108954(n+1)`
-/

namespace A027424.P416858180484867345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263995 (n + 1) - A108954 (n + 1)

end

end A027424.P416858180484867345

/-! ## A027424.P10610397387569010005

`A000217(n+1)+A000217(n)-A062851(n+1)`
-/

namespace A027424.P10610397387569010005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A000217 n - A062851 (n + 1))

end

end A027424.P10610397387569010005

/-! ## A027424.P14811543773541765366

`A000290(n+1)+A373716(n+1)-A000290(n)`
-/

namespace A027424.P14811543773541765366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) + (A373716 (n + 1) - A000290 n)

end

end A027424.P14811543773541765366

/-! ## A027424.P11974505706981123553

`A193990(n+1)+A263995(n+1)-A067434(n+1)`
-/

namespace A027424.P11974505706981123553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193990 (n + 1) + (A263995 (n + 1) - A067434 (n + 1))

end

end A027424.P11974505706981123553

/-! ## A027424.P3857655676692425862

`A263995(n+1)+A373716(n+1)-A375109(n+1)`
-/

namespace A027424.P3857655676692425862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263995 (n + 1) + (A373716 (n + 1) - A375109 (n + 1))

end

end A027424.P3857655676692425862

/-! ## A027424.P16037023908565562136

`A263995(n+1)-(A000720(2*(n+1))-A000720(n+1))`
-/

namespace A027424.P16037023908565562136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263995 (n + 1) - (A000720 (2 * (n + 1)) - A000720 (n + 1))

end

end A027424.P16037023908565562136

/-! ## A027424.P9696963531629911818

`A062851(n+2)+A373716(n+2)-A062851(n+1)`
-/

namespace A027424.P9696963531629911818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062851 (n + 2) + (A373716 (n + 2) - A062851 (n + 1))

end

end A027424.P9696963531629911818

/-! ## A027424.P14602798701364001857

`∑[n+1-A108407(A065033(2*n))]`
-/

namespace A027424.P14602798701364001857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A108407 (A065033 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027424.P14602798701364001857

/-! ## A027424.P2262126684754207189

`A023443(A027384(n+1))`
-/

namespace A027424.P2262126684754207189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A027384 (n + 1)).toNat

end

end A027424.P2262126684754207189

/-! ## A027424.P16409283445959979334

`record[Δ[A027421(n)]]`
-/

namespace A027424.P16409283445959979334
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027421 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027424.P16409283445959979334

/-! ## A027424.P11362426031261611070

`A027421(∑[n+1]+1)`
-/

namespace A027424.P11362426031261611070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027421 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027424.P11362426031261611070

/-! ## A027424.P7991924980923353562

`A027420(∑[n+1])-1`
-/

namespace A027424.P7991924980923353562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027420 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A027424.P7991924980923353562

/-! ## A027424.P18051588719802343241

`record[A027420(n+1)-1]`
-/

namespace A027424.P18051588719802343241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027420 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027424.P18051588719802343241

/-!
# A027425: Number of distinct products ijk with 1 <= i,j,k <= n.

The programs for A027425, there is no canonical definition to state claims against.
-/

/-! ## A027425.P11280115340660140075

`A027426(n+1)-1`
-/

namespace A027425.P11280115340660140075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027426 (n + 1) - 1

end

end A027425.P11280115340660140075

/-! ## A027425.P1649835586159342659

`∑[abs(Δ[A027426(n)])]`
-/

namespace A027425.P1649835586159342659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027426 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027425.P1649835586159342659

/-! ## A027425.P4667745826544786442

`∑[A000027(Δ[A027426(n)])]`
-/

namespace A027425.P4667745826544786442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027426 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027425.P4667745826544786442

/-! ## A027425.P641215040050759794

`∑[Δ[A027426(n)]%A027426(n+1)]`
-/

namespace A027425.P641215040050759794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027426 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A027426 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027425.P641215040050759794

/-! ## A027425.P5269350820889109089

`A225249(and(1, A225249(n+1))+1)+A027426(n+1)`
-/

namespace A027425.P5269350820889109089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225249 (Int.land 1 (A225249 (n + 1)) + 1).toNat + A027426 (n + 1)

end

end A027425.P5269350820889109089

/-! ## A027425.P5913330733365462563

`A225258(∑[n]+1)-1`
-/

namespace A027425.P5913330733365462563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225258 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A027425.P5913330733365462563

/-! ## A027425.P7351003920413246396

`A023443(A027426(n+1))`
-/

namespace A027425.P7351003920413246396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A027426 (n + 1)).toNat

end

end A027425.P7351003920413246396

/-! ## A027425.P6440331913965941400

`A225249(A225246(∑[n+1]))+A027426(n+1)`
-/

namespace A027425.P6440331913965941400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225249 (A225246 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A027426 (n + 1)

end

end A027425.P6440331913965941400

/-!
# A027426: Number of distinct products ijk with 0 <= i,j,k <= n.

The programs for A027426, there is no canonical definition to state claims against.
-/

/-! ## A027426.P17613388834913729226

`record[A057427(n)+A027425(A328399(n))]`
-/

namespace A027426.P17613388834913729226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A027425 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027426.P17613388834913729226

/-! ## A027426.P11042315924103482932

`A057427(n)+A027425(A065033(2*n))`
-/

namespace A027426.P11042315924103482932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A027425 (A065033 (2 * n)).toNat

end

end A027426.P11042315924103482932

/-! ## A027426.P1782892440398488658

`A057427(n)+A027425(A123108(2*n))`
-/

namespace A027426.P1782892440398488658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A027425 (A123108 (2 * n)).toNat

end

end A027426.P1782892440398488658

/-! ## A027426.P10921715253745059212

`A027425(A065033(2*n))+A062157(n)²`
-/

namespace A027426.P10921715253745059212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027425 (A065033 (2 * n)).toNat + A062157 n ^ 2

end

end A027426.P10921715253745059212

/-! ## A027426.P11075239165139298375

`A027425(A065033(2*n))+char[A029579(n)]`
-/

namespace A027426.P11075239165139298375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027425 (A065033 (2 * n)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A027426.P11075239165139298375

/-! ## A027426.P14530099309276086022

`A027425(A065033(2*n))+char[A052938(n)]`
-/

namespace A027426.P14530099309276086022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027425 (A065033 (2 * n)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A027426.P14530099309276086022

/-! ## A027426.P16706250361321300974

`A027425(A123108(2*n))+char[A344180(n)]`
-/

namespace A027426.P16706250361321300974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027425 (A123108 (2 * n)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A027426.P16706250361321300974

/-! ## A027426.P3217284930472104741

`A027425(A065033(2*n))-A062157(2*n)`
-/

namespace A027426.P3217284930472104741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027425 (A065033 (2 * n)).toNat - A062157 (2 * n)

end

end A027426.P3217284930472104741

/-! ## A027426.P338516751019908962

`A027425(A123108(2*n))+char[A057028(n+1)]`
-/

namespace A027426.P338516751019908962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027425 (A123108 (2 * n)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A027426.P338516751019908962

/-! ## A027426.P17042037794631981105

`A046079(A000040(n+1))+A027425(A123108(2*n))`
-/

namespace A027426.P17042037794631981105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A000040 (n + 1)).toNat + A027425 (A123108 (2 * n)).toNat

end

end A027426.P17042037794631981105

/-!
# A027427: Number of distinct products ij with 0 <= i < j <= n.

The programs for A027427, there is no canonical definition to state claims against.
-/

/-! ## A027427.P16412789003773170249

`record[A057427(n)+A027428(A328399(n))]`
-/

namespace A027427.P16412789003773170249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A027428 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027427.P16412789003773170249

/-! ## A027427.P4848745940493974033

`A027428(A065033(2*n))+n²%(n+1)`
-/

namespace A027427.P4848745940493974033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027428 (A065033 (2 * n)).toNat + ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A027427.P4848745940493974033

/-! ## A027427.P14910532514137071024

`A057427(n)+A027428(A065033(2*n))`
-/

namespace A027427.P14910532514137071024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A027428 (A065033 (2 * n)).toNat

end

end A027427.P14910532514137071024

/-! ## A027427.P13448087873566232909

`A057427(n)+A027428(A123108(2*n))`
-/

namespace A027427.P13448087873566232909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A027428 (A123108 (2 * n)).toNat

end

end A027427.P13448087873566232909

/-! ## A027427.P16595361552766254293

`A027384(n)-A064047(A065033(2*n))`
-/

namespace A027427.P16595361552766254293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 n - A064047 (A065033 (2 * n)).toNat

end

end A027427.P16595361552766254293

/-! ## A027427.P10701641948659894059

`A027384(n)-A064047(A123108(2*n))`
-/

namespace A027427.P10701641948659894059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027384 n - A064047 (A123108 (2 * n)).toNat

end

end A027427.P10701641948659894059

/-! ## A027427.P2702210173952195396

`(A027428(A123108(2*n))+1)%A046691(n)`
-/

namespace A027427.P2702210173952195396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027428 (A123108 (2 * n)).toNat + 1) (A046691 n)

end

end A027427.P2702210173952195396

/-! ## A027427.P4212729268019038564

`A027428(A065033(2*n))+char[A052938(n)]`
-/

namespace A027427.P4212729268019038564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027428 (A065033 (2 * n)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A027427.P4212729268019038564

/-!
# A027428: Number of distinct products ij with 1 <= i < j <= n. (Number of terms appearing more than once in a 1-to-n multiplication table.)

The programs for A027428, there is no canonical definition to state claims against.
-/

/-! ## A027428.P11793418693309400555

`A027427(n+1)-1`
-/

namespace A027428.P11793418693309400555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027427 (n + 1) - 1

end

end A027428.P11793418693309400555

/-! ## A027428.P14801272953449185416

`A027424(n+1)-A064047(n+1)`
-/

namespace A027428.P14801272953449185416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1) - A064047 (n + 1)

end

end A027428.P14801272953449185416

/-! ## A027428.P17838686447268474074

`∑[A062854(n+1)]-A064047(n+1)`
-/

namespace A027428.P17838686447268474074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A064047 (n + 1)

end

end A027428.P17838686447268474074

/-! ## A027428.P1100047175971314451

`A057428(n+1)+A027427(n+1)`
-/

namespace A027428.P1100047175971314451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A027427 (n + 1)

end

end A027428.P1100047175971314451

/-! ## A027428.P6441652606084834013

`A307445(A255313(n+1))+A027427(n+1)`
-/

namespace A027428.P6441652606084834013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A255313 (n + 1)).toNat + A027427 (n + 1)

end

end A027428.P6441652606084834013

/-! ## A027428.P9269996122117498301

`record[A027427(A117910(n))-1]`
-/

namespace A027428.P9269996122117498301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027427 (A117910 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027428.P9269996122117498301

/-! ## A027428.P4243363970720897432

`record[A027427(A065648(n))-1]`
-/

namespace A027428.P4243363970720897432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027427 (A065648 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027428.P4243363970720897432

/-! ## A027428.P4417820236822588619

`A023443(A027427(n+1))`
-/

namespace A027428.P4417820236822588619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A027427 (n + 1)).toNat

end

end A027428.P4417820236822588619

/-! ## A027428.P11340690329659356607

`A027422(A034856(n+1))-A064047(n+1)`
-/

namespace A027428.P11340690329659356607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027422 (A034856 (n + 1)).toNat - A064047 (n + 1)

end

end A027428.P11340690329659356607

/-! ## A027428.P7996421312126680064

`A027424(n+1)-gcd(A308531(n+1), A335152(n+1))`
-/

namespace A027428.P7996421312126680064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027424 (n + 1) - (Int.gcd (A308531 (n + 1)) (A335152 (n + 1)) : ℤ)

end

end A027428.P7996421312126680064

/-!
# A027429: Number of distinct products ijk with 0 <= i < j < k <= n.

The programs for A027429, there is no canonical definition to state claims against.
-/

/-! ## A027429.P12624802839075665235

`A157928(n)+A027430(A028310(n))`
-/

namespace A027429.P12624802839075665235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A027430 (A028310 n).toNat

end

end A027429.P12624802839075665235

/-! ## A027429.P17348028251391500444

`A157928(n)+A027430(A233583(n+1))`
-/

namespace A027429.P17348028251391500444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A027430 (A233583 (n + 1)).toNat

end

end A027429.P17348028251391500444

/-! ## A027429.P17004005819797213309

`A157928(n)+A027430(A123108(2*n))`
-/

namespace A027429.P17004005819797213309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A027430 (A123108 (2 * n)).toNat

end

end A027429.P17004005819797213309

/-! ## A027429.P4070322417408987885

`A157928(n)+A027430(A000007(n)+n)`
-/

namespace A027429.P4070322417408987885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + A027430 (A000007 n + (n : ℤ)).toNat

end

end A027429.P4070322417408987885

/-! ## A027429.P17141564555568186588

`A178334(A328847(n))+A027430(A233583(n+1))`
-/

namespace A027429.P17141564555568186588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A328847 n).toNat + A027430 (A233583 (n + 1)).toNat

end

end A027429.P17141564555568186588

/-! ## A027429.P9958227591044736898

`A178334(A328848(n))+A027430(A233583(n+1))`
-/

namespace A027429.P9958227591044736898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A328848 n).toNat + A027430 (A233583 (n + 1)).toNat

end

end A027429.P9958227591044736898

/-!
# A027430: Number of distinct products i*j*k with 1 <= i < j < k <= n.

The programs for A027430, there is no canonical definition to state claims against.
-/

/-! ## A027430.P17794347889113518559

`A027429(n+1)-ceil(n/A027384(n))`
-/

namespace A027430.P17794347889113518559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027429 (n + 1) - ⌈(n : ℚ) / (A027384 n : ℚ)⌉

end

end A027430.P17794347889113518559

/-! ## A027430.P1193541385143811967

`A027429(n+1)-ceil(n/A027426(n))`
-/

namespace A027430.P1193541385143811967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027429 (n + 1) - ⌈(n : ℚ) / (A027426 n : ℚ)⌉

end

end A027430.P1193541385143811967

/-! ## A027430.P10208360749601347820

`A027429(n+1)-A027427(ceil(n/(n+1)))`
-/

namespace A027430.P10208360749601347820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027429 (n + 1) - A027427 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat

end

end A027430.P10208360749601347820

/-! ## A027430.P11228975423267892982

`A027429(n+1)-ceil(n/A027424(n+1))`
-/

namespace A027430.P11228975423267892982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027429 (n + 1) - ⌈(n : ℚ) / (A027424 (n + 1) : ℚ)⌉

end

end A027430.P11228975423267892982

/-! ## A027430.P2125355916884395988

`A027429(n+1)-ceil(n/A027425(n+1))`
-/

namespace A027430.P2125355916884395988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027429 (n + 1) - ⌈(n : ℚ) / (A027425 (n + 1) : ℚ)⌉

end

end A027430.P2125355916884395988

/-!
# A027432: Related to sorting procedure studied by West: number of permutations that are both sorted (i.e., obtainable as output of the sorting procedure) and one-stack sortable.

The programs for A027432, there is no canonical definition to state claims against.
-/

/-! ## A027432.P11191298784511273090

`A033183(4*A097893(n))`
-/

namespace A027432.P11191298784511273090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033183 (4 * A097893 n).toNat

end

end A027432.P11191298784511273090

/-! ## A027432.P18428292913445669936

`A083382(or(10, A094374(n)))`
-/

namespace A027432.P18428292913445669936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (Int.lor 10 (A094374 n)).toNat

end

end A027432.P18428292913445669936

/-! ## A027432.P16467191428761406207

`ceil(A248227(A027102(n))/3)`
-/

namespace A027432.P16467191428761406207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A248227 (A027102 n).toNat : ℚ) / 3⌉

end

end A027432.P16467191428761406207

/-! ## A027432.P10740932921712389179

`A346075(lcm(comp[2*n+3], A181061(n)))`
-/

namespace A027432.P10740932921712389179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346075 (Int.lcm (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A181061 n))

end

end A027432.P10740932921712389179

/-!
# A027433: Sum over all 2^(2n) pairs (u,v) of binary sequences of length n of length of maximal common subsequence between them.

The programs for A027433, there is no canonical definition to state claims against.
-/

/-! ## A027433.P14501027398646906023

`A156684(A022641(n))`
-/

namespace A027433.P14501027398646906023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156684 (A022641 n).toNat

end

end A027433.P14501027398646906023

/-!
# A027434: a(1) = 2; then defined by property that a(n) = smallest number >= a(n-1) such that successive runs have lengths 1,1,2,2,3,3,4,4.

The programs for A027434, the canonical program `A027434.P12538987724617011991` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027434 has offset 1).

The definition of A027434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027434.P12538987724617011991

`ceil(2*sqrt(n+1))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027434

/-- `ceil(2*sqrt(n+1))` -/
def P12538987724617011991.Spec : Prop :=
  ∀ n, P12538987724617011991.a n = A027434 (n + 1)

theorem P12538987724617011991.correct : P12538987724617011991.Spec := by
  intro n
  simp only [A027434, Nat.add_sub_cancel]

end A027434

/-! ## A027434.P12798413973125494334

`A027709(n+1)/2`
-/

namespace A027434.P12798413973125494334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027709 (n + 1) : ℚ) / 2

end

end A027434.P12798413973125494334

namespace A027434

/-- `A027709(n+1)/2` -/
def P12798413973125494334.Spec : Prop :=
  ∀ n, P12798413973125494334.a n = (A027434 (n + 1) : ℚ)

theorem P12798413973125494334.correct : P12798413973125494334.Spec := by
  intro n
  simp only [A027434, Nat.add_sub_cancel, A027434.P12798413973125494334.a, A027434.P12538987724617011991.a, A027709, A027709.P11339494392271686754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A027434

/-! ## A027434.P3064827694282619079

`sqrt(A082375(n)²+4*A350634(n+1))`
-/

namespace A027434.P3064827694282619079
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A082375 n ^ 2 + 4 * A350634 (n + 1) : ℝ)

end

end A027434.P3064827694282619079

namespace A027434

/-- `sqrt(A082375(n)²+4*A350634(n+1))` -/
def P3064827694282619079.Spec : Prop :=
  ∀ n, P3064827694282619079.a n = (A027434 (n + 1) : ℝ)

end A027434

/-! ## A027434.P3375144737494551632

`floor(sqrt(xor(3, 4*n)))+1`
-/

namespace A027434.P3375144737494551632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (Nat.xor 3 (4 * n)) + 1

end

end A027434.P3375144737494551632

namespace A027434

/-- `floor(sqrt(xor(3, 4*n)))+1` -/
def P3375144737494551632.Spec : Prop :=
  ∀ n, (P3375144737494551632.a n : ℤ) = A027434 (n + 1)

end A027434

/-! ## A027434.P3814393014249614444

`a(round(n-sqrt(n)))+1` with `a(0)=2`
-/

namespace A027434.P3814393014249614444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (n : ℝ))).toNat + 1

end

end A027434.P3814393014249614444

namespace A027434

/-- `a(round(n-sqrt(n)))+1` -/
def P3814393014249614444.Spec : Prop :=
  ∀ n, (P3814393014249614444.a n : ℤ) = A027434 (n + 1)

end A027434

/-! ## A027434.P15530248068605438608

`-xor(floor(1/Δ[sqrt(n)]), -1)`
-/

namespace A027434.P15530248068605438608
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ⌊1 / (f1 (n + 1) - f1 n)⌋ (-1)

end

end A027434.P15530248068605438608

namespace A027434

/-- `-xor(floor(1/Δ[sqrt(n)]), -1)` -/
def P15530248068605438608.Spec : Prop :=
  ∀ n, P15530248068605438608.a n = A027434 (n + 1)

end A027434

/-! ## A027434.P790895572685202710

`comp[∑[∑[n%2]]]-(n+1)`
-/

namespace A027434.P790895572685202710
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ)

end

end A027434.P790895572685202710

namespace A027434

/-- `comp[∑[∑[n%2]]]-(n+1)` -/
def P790895572685202710.Spec : Prop :=
  ∀ n, P790895572685202710.a n = A027434 (n + 1)

end A027434

/-! ## A027434.P1100793223329194822

`comp[∑[∑[and(1, n)]]]-(n+1)`
-/

namespace A027434.P1100793223329194822
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ)

end

end A027434.P1100793223329194822

namespace A027434

/-- `comp[∑[∑[and(1, n)]]]-(n+1)` -/
def P1100793223329194822.Spec : Prop :=
  ∀ n, P1100793223329194822.a n = A027434 (n + 1)

end A027434

/-! ## A027434.P14907083423494627342

`comp[a(n-2)+n]-n` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A027434.P14907083423494627342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 2) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A027434.P14907083423494627342

namespace A027434

/-- `comp[a(n-2)+n]-n` -/
def P14907083423494627342.Spec : Prop :=
  ∀ n, P14907083423494627342.a n = A027434 (n + 1)

end A027434

/-! ## A027434.P17655730816727574255

`sqrt(A248928(n))`
-/

namespace A027434.P17655730816727574255
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A248928 n : ℝ)

end

end A027434.P17655730816727574255

namespace A027434

/-- `sqrt(A248928(n))` -/
def P17655730816727574255.Spec : Prop :=
  ∀ n, P17655730816727574255.a n = (A027434 (n + 1) : ℝ)

end A027434

/-! ## A027434.P16908289537741265005

`1+A000267(n)`
-/

namespace A027434.P16908289537741265005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000267 n

end

end A027434.P16908289537741265005

namespace A027434

/-- `1+A000267(n)` -/
def P16908289537741265005.Spec : Prop :=
  ∀ n, P16908289537741265005.a n = A027434 (n + 1)

end A027434

/-! ## A027434.P5351236090500969814

`A055086(n)+2`
-/

namespace A027434.P5351236090500969814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n + 2

end

end A027434.P5351236090500969814

namespace A027434

/-- `A055086(n)+2` -/
def P5351236090500969814.Spec : Prop :=
  ∀ n, P5351236090500969814.a n = A027434 (n + 1)

theorem P5351236090500969814.correct : P5351236090500969814.Spec := by
  intro n
  simp only [A027434, Nat.add_sub_cancel, A027434.P5351236090500969814.a, A027434.P12538987724617011991.a, A055086, A055086.P18168198331367643999.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A027434

/-! ## A027434.P10375767882590435230

`∑[A240025(n)]+1`
-/

namespace A027434.P10375767882590435230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A027434.P10375767882590435230

namespace A027434

/-- `∑[A240025(n)]+1` -/
def P10375767882590435230.Spec : Prop :=
  ∀ n, P10375767882590435230.a n = A027434 (n + 1)

end A027434

/-! ## A027434.P17467317889716107436

`comp[A078126(n)]-n`
-/

namespace A027434.P17467317889716107436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078126 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A027434.P17467317889716107436

namespace A027434

/-- `comp[A078126(n)]-n` -/
def P17467317889716107436.Spec : Prop :=
  ∀ n, P17467317889716107436.a n = A027434 (n + 1)

end A027434

/-! ## A027434.P12335346344154617018

`A307136(n+1)-1`
-/

namespace A027434.P12335346344154617018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307136 (n + 1) - 1

end

end A027434.P12335346344154617018

namespace A027434

/-- `A307136(n+1)-1` -/
def P12335346344154617018.Spec : Prop :=
  ∀ n, P12335346344154617018.a n = A027434 (n + 1)

end A027434

/-! ## A027434.P946960971279543176

`A183569(n+1)-n`
-/

namespace A027434.P946960971279543176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183569 (n + 1) - (n : ℤ)

end

end A027434.P946960971279543176

namespace A027434

/-- `A183569(n+1)-n` -/
def P946960971279543176.Spec : Prop :=
  ∀ n, P946960971279543176.a n = A027434 (n + 1)

end A027434

/-! ## A027434.P16323897720218473820

`floor(sqrt(A004767(n)))+1`
-/

namespace A027434.P16323897720218473820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A004767 n) + 1

end

end A027434.P16323897720218473820

namespace A027434

/-- `floor(sqrt(A004767(n)))+1` -/
def P16323897720218473820.Spec : Prop :=
  ∀ n, P16323897720218473820.a n = A027434 (n + 1)

end A027434

/-! ## A027434.P10612095826209293818

`floor(sqrt(A077425(n+1)))`
-/

namespace A027434.P10612095826209293818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A077425 (n + 1))

end

end A027434.P10612095826209293818

namespace A027434

/-- `floor(sqrt(A077425(n+1)))` -/
def P10612095826209293818.Spec : Prop :=
  ∀ n, P10612095826209293818.a n = A027434 (n + 1)

end A027434

/-! ## A027434.P16402847072849493189

`A172471(Δ[n²])+1`
-/

namespace A027434.P16402847072849493189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A027434.P16402847072849493189

namespace A027434

/-- `A172471(Δ[n²])+1` -/
def P16402847072849493189.Spec : Prop :=
  ∀ n, P16402847072849493189.a n = A027434 (n + 1)

end A027434

/-! ## A027434.P6771203075306757871

`A168230(A143730(n+1))`
-/

namespace A027434.P6771203075306757871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168230 (A143730 (n + 1)).toNat

end

end A027434.P6771203075306757871

namespace A027434

/-- `A168230(A143730(n+1))` -/
def P6771203075306757871.Spec : Prop :=
  ∀ n, P6771203075306757871.a n = A027434 (n + 1)

end A027434

/-!
# A027435: Number of distinct products ij with 1 <= i <= n, 1 <= j <= n, (i,j)=1.

The programs for A027435, there is no canonical definition to state claims against.
-/

/-! ## A027435.P10434443898271643800

`A236309(n+1)+1`
-/

namespace A027435.P10434443898271643800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236309 (n + 1) + 1

end

end A027435.P10434443898271643800

/-! ## A027435.P4920517547495865396

`∑[A014665(n+1)]`
-/

namespace A027435.P4920517547495865396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027435.P4920517547495865396

/-! ## A027435.P3934044956341334476

`a(n-1)+A014665(n+1)%A003600(n)` with `a(0)=1`
-/

namespace A027435.P3934044956341334476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A014665 (n + 1)) (A003600 n)

end

end A027435.P3934044956341334476

/-! ## A027435.P13198922900517373620

`a(n-1)+A007318(ceil(n/(n+1)))*A014665(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A027435.P13198922900517373620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A007318 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat * A014665 (n + 1)

end

end A027435.P13198922900517373620

/-! ## A027435.P466006535610143603

`a(n-1)+A014963(4*n+2)*A014665(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A027435.P466006535610143603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + A014963 (4 * n + 2) * A014665 (n + 1)

end

end A027435.P466006535610143603

/-! ## A027435.P12426969364987978852

`A028310(a(n-1))+A014665(n+1)` with `a(0)=1`
-/

namespace A027435.P12426969364987978852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A014665 (n + 1)

end

end A027435.P12426969364987978852

/-!
# A027436: G.f. f(x) = Sum_{n>=1} a(n)*x^n satisfies f(f(x)) = x*(1 + 4*x).

The programs for A027436, there is no canonical definition to state claims against.
-/

/-! ## A027436.P14029352170632929404

`4^(n-1)*A097088(n)/2^A097089(n)`
-/

namespace A027436.P14029352170632929404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A097088 n : ℚ) / (2 : ℚ) ^ (A097089 n : ℤ)

end

end A027436.P14029352170632929404

/-!
# A027437: a(n) = floor( e * 2^n ).

The programs for A027437, the canonical program `A027437.P7224799280885798610` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027437 has offset 0).

The definition of A027437 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(e*2^n)` (program `A027437.P7224799280885798610`, by `A027437.P7224799280885798610.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027437.P7224799280885798610

`floor(e*2^n)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027437

/-- `floor(e*2^n)` -/
def P7224799280885798610.Spec : Prop :=
  ∀ n, P7224799280885798610.a n = A027437 n

theorem P7224799280885798610.correct : P7224799280885798610.Spec := by
  intro n
  simp only [A027437]

end A027437

/-! ## A027437.P1141994746079420539

`A293337(n)-1`
-/

namespace A027437.P1141994746079420539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293337 n - 1

end

end A027437.P1141994746079420539

namespace A027437

/-- `A293337(n)-1` -/
def P1141994746079420539.Spec : Prop :=
  ∀ n, P1141994746079420539.a n = A027437 n

theorem P1141994746079420539.correct : P1141994746079420539.Spec := by
  intro n
  simp only [A027437, Nat.add_sub_cancel, A027437.P1141994746079420539.a, A027437.P7224799280885798610.a, A293337, A293337.P12686929730737990883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027437

/-! ## A027437.P8353652121722968434

`record[floor(e*A034008(n))]`
-/

namespace A027437.P8353652121722968434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (A034008 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027437.P8353652121722968434

namespace A027437

/-- `record[floor(e*A034008(n))]` -/
def P8353652121722968434.Spec : Prop :=
  ∀ n, P8353652121722968434.a n = A027437 n

end A027437

/-! ## A027437.P12427476610530410299

`record[floor(e*A077957(n))]`
-/

namespace A027437.P12427476610530410299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp 1 * (A077957 n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027437.P12427476610530410299

namespace A027437

/-- `record[floor(e*A077957(n))]` -/
def P12427476610530410299.Spec : Prop :=
  ∀ n, P12427476610530410299.a n = A027437 n

end A027437

/-! ## A027437.P12428162754056007878

`∑[round(e*A011782(n))]-1`
-/

namespace A027437.P12428162754056007878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp 1 * (A011782 n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A027437.P12428162754056007878

namespace A027437

/-- `∑[round(e*A011782(n))]-1` -/
def P12428162754056007878.Spec : Prop :=
  ∀ n, P12428162754056007878.a n = A027437 n

end A027437

/-! ## A027437.P16307668668749692520

`A293338(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A027437.P16307668668749692520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A293338 (n - 1) + a (n - 1)

end

end A027437.P16307668668749692520

namespace A027437

/-- `A293338(n-1)+a(n-1)` -/
def P16307668668749692520.Spec : Prop :=
  ∀ n, P16307668668749692520.a n = A027437 n

end A027437

/-! ## A027437.P16011084731407118378

`A293338(n)-A004593(n+4)`
-/

namespace A027437.P16011084731407118378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293338 n - A004593 (n + 4)

end

end A027437.P16011084731407118378

namespace A027437

/-- `A293338(n)-A004593(n+4)` -/
def P16011084731407118378.Spec : Prop :=
  ∀ n, P16011084731407118378.a n = A027437 n

theorem P16011084731407118378.correct : P16011084731407118378.Spec := by
  intro n
  simp only [A027437, Nat.add_sub_cancel, A027437.P16011084731407118378.a, A027437.P7224799280885798610.a, A004593, A004593.P10915400110262315907.a, A293338, A293338.P12856302276837498788.a, A000045, A000045.P11838749114346432762.a, A293337, A293337.P12686929730737990883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027437

/-!
# A027438: Largest prime factor of [e*2^n].

The programs for A027438, there is no canonical definition to state claims against.
-/

/-! ## A027438.P12913231065680978645

`A006530(floor(e*2^n))`
-/

namespace A027438.P12913231065680978645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌊Real.exp 1 * (2 ^ n : ℝ)⌋.toNat

end

end A027438.P12913231065680978645

/-! ## A027438.P1386347071070795768

`∏{d}[A006530(A027437(n)), #]`
-/

namespace A027438.P1386347071070795768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A027437 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A027438.P1386347071070795768

/-! ## A027438.P11947733785951645535

`∏{d}[A006530(A293337(n)-1), #]`
-/

namespace A027438.P11947733785951645535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A293337 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A027438.P11947733785951645535

/-! ## A027438.P16249743609634008817

`A006530(A027437(n))/A304042(n)`
-/

namespace A027438.P16249743609634008817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006530 (A027437 n).toNat : ℚ) / (A304042 n : ℚ)

end

end A027438.P16249743609634008817

/-! ## A027438.P14068248540892511758

`A006530(A027437(n))%A041200(n)`
-/

namespace A027438.P14068248540892511758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A027437 n).toNat) (A041200 n)

end

end A027438.P14068248540892511758

/-!
# A027439: Expansion of 1/(1 - 4*x + 5*x^2 - 3*x^3).

The programs for A027439, the canonical program `A027439.P9702454607505395701` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027439 has offset 0).

The definition of A027439 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+5x^2-3x^3))` (program `A027439.P9702454607505395701`, by `A027439.P9702454607505395701.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027439.P9702454607505395701

`ogf(1/(1-4x+5x^2-3x^3))`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027439

/-- `ogf(1/(1-4x+5x^2-3x^3))` -/
def P9702454607505395701.Spec : Prop :=
  ∀ n, P9702454607505395701.a n = A027439 n

theorem P9702454607505395701.correct : P9702454607505395701.Spec := by
  intro n
  simp only [A027439]

end A027439

/-! ## A027439.P11289934099268750300

`2*Δ[A116703(n+1)]-A116703(n+1)`
-/

namespace A027439.P11289934099268750300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) - A116703 (n + 1)

end

end A027439.P11289934099268750300

namespace A027439

/-- `2*Δ[A116703(n+1)]-A116703(n+1)` -/
def P11289934099268750300.Spec : Prop :=
  ∀ n, P11289934099268750300.a n = A027439 n

end A027439

/-! ## A027439.P2855546230399252693

`∑[A116703(n+3)%A116703(n+2)]`
-/

namespace A027439.P2855546230399252693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A116703 (n + 3)) (A116703 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027439.P2855546230399252693

namespace A027439

/-- `∑[A116703(n+3)%A116703(n+2)]` -/
def P2855546230399252693.Spec : Prop :=
  ∀ n, P2855546230399252693.a n = A027439 n

end A027439

/-!
# A027441: a(n) = (n^4 + n)/2 (Row sums of an n X n X n magic cube, when it exists).

The programs for A027441, the canonical program `A027441.P15301790606305427808` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027441 has offset 0).

The definition of A027441 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^4+n)/2` (program `A027441.P9920630799465178935`, by `A027441.P9920630799465178935.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027441.P9920630799465178935

`(n^4+n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027441.P9920630799465178935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 4 + n : ℚ) / 2

end

end A027441.P9920630799465178935

namespace A027441

/-- `(n^4+n)/2` -/
def P9920630799465178935.Spec : Prop :=
  ∀ n, P9920630799465178935.a n = (A027441 n : ℚ)

theorem P9920630799465178935.correct : P9920630799465178935.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A027441, Nat.add_sub_cancel, A027441.P9920630799465178935.a, A027441.P15301790606305427808.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A027441, Nat.add_sub_cancel, A027441.P9920630799465178935.a, A027441.P15301790606305427808.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A027441

/-! ## A027441.P17832768408856860946

`(n+1)*(a(n-1)/(n-1)+n*(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A027441.P17832768408856860946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n + 1 : ℚ) * (a (n - 1) / ((n : ℤ) - 1 : ℚ) + ((n : ℤ) * ((n : ℤ) - 1) : ℚ))

end

end A027441.P17832768408856860946

namespace A027441

/-- `(n+1)*(a(n-1)/(n-1)+n*(n-1))` -/
def P17832768408856860946.Spec : Prop :=
  ∀ n, P17832768408856860946.a n = (A027441 n : ℚ)

end A027441

/-! ## A027441.P15301790606305427808

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=9, a(3)=42, a(4)=130`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027441

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P15301790606305427808.Spec : Prop :=
  ∀ n, P15301790606305427808.a n = A027441 n

theorem P15301790606305427808.correct : P15301790606305427808.Spec := by
  intro n
  simp only [A027441]

end A027441

/-! ## A027441.P6199657621289893935

`A002061(n)*A000217(n)`
-/

namespace A027441.P6199657621289893935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n * A000217 n

end

end A027441.P6199657621289893935

namespace A027441

/-- `A002061(n)*A000217(n)` -/
def P6199657621289893935.Spec : Prop :=
  ∀ n, P6199657621289893935.a n = A027441 n

end A027441

/-! ## A027441.P11367139271045837116

`∑[n]+C(n², 2)`
-/

namespace A027441.P11367139271045837116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n ^ 2) 2

end

end A027441.P11367139271045837116

namespace A027441

/-- `∑[n]+C(n², 2)` -/
def P11367139271045837116.Spec : Prop :=
  ∀ n, (P11367139271045837116.a n : ℤ) = A027441 n

end A027441

/-! ## A027441.P11946335457437222195

`or(1, n²-n)*∑[n]`
-/

namespace A027441.P11946335457437222195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n ^ 2 : ℤ) - (n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A027441.P11946335457437222195

namespace A027441

/-- `or(1, n²-n)*∑[n]` -/
def P11946335457437222195.Spec : Prop :=
  ∀ n, P11946335457437222195.a n = A027441 n

end A027441

/-! ## A027441.P18007228592545231211

`xor(1, n²-n)*∑[n]`
-/

namespace A027441.P18007228592545231211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n ^ 2 : ℤ) - (n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A027441.P18007228592545231211

namespace A027441

/-- `xor(1, n²-n)*∑[n]` -/
def P18007228592545231211.Spec : Prop :=
  ∀ n, P18007228592545231211.a n = A027441 n

end A027441

/-! ## A027441.P6206072774704710459

`(2*C(n, 2)+1)*∑[n]`
-/

namespace A027441.P6206072774704710459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose n 2 + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027441.P6206072774704710459

namespace A027441

/-- `(2*C(n, 2)+1)*∑[n]` -/
def P6206072774704710459.Spec : Prop :=
  ∀ n, (P6206072774704710459.a n : ℤ) = A027441 n

end A027441

/-! ## A027441.P9386748204162089050

`(lcm(n, n-1)+1)*∑[n]`
-/

namespace A027441.P9386748204162089050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n : ℤ) ((n : ℤ) - 1) + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027441.P9386748204162089050

namespace A027441

/-- `(lcm(n, n-1)+1)*∑[n]` -/
def P9386748204162089050.Spec : Prop :=
  ∀ n, (P9386748204162089050.a n : ℤ) = A027441 n

end A027441

/-! ## A027441.P4950002971727409618

`C(n², 2)-∑[n-2*n]`
-/

namespace A027441.P4950002971727409618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027441.P4950002971727409618

namespace A027441

/-- `C(n², 2)-∑[n-2*n]` -/
def P4950002971727409618.Spec : Prop :=
  ∀ n, P4950002971727409618.a n = A027441 n

end A027441

/-! ## A027441.P15789628610612769150

`∑[a(n-1)+2]*∑[n]` with `a(0)=1, a(1)=0`
-/

namespace A027441.P15789628610612769150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A027441.P15789628610612769150

namespace A027441

/-- `∑[a(n-1)+2]*∑[n]` -/
def P15789628610612769150.Spec : Prop :=
  ∀ n, (P15789628610612769150.a n : ℤ) = A027441 n

end A027441

/-! ## A027441.P9988353419389998857

`((1-n)²+n)*C(n+1, 2)`
-/

namespace A027441.P9988353419389998857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 + (n : ℤ)) * (Nat.choose (n + 1) 2 : ℤ)

end

end A027441.P9988353419389998857

namespace A027441

/-- `((1-n)²+n)*C(n+1, 2)` -/
def P9988353419389998857.Spec : Prop :=
  ∀ n, P9988353419389998857.a n = A027441 n

end A027441

/-! ## A027441.P9670953745712169498

`∑[∑[∑[ogf((x+4x^2+7x^3)/(1-2x+x^2))]]]`
-/

namespace A027441.P9670953745712169498
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, 7] [1, -2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027441.P9670953745712169498

namespace A027441

/-- `∑[∑[∑[ogf((x+4x^2+7x^3)/(1-2x+x^2))]]]` -/
def P9670953745712169498.Spec : Prop :=
  ∀ n, P9670953745712169498.a n = A027441 n

end A027441

/-! ## A027441.P2626132874045079545

`(3-∑[a(n-1)-2])*∑[n]` with `a(0)=2`
-/

namespace A027441.P2626132874045079545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - ∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A027441.P2626132874045079545

namespace A027441

/-- `(3-∑[a(n-1)-2])*∑[n]` -/
def P2626132874045079545.Spec : Prop :=
  ∀ n, P2626132874045079545.a n = A027441 n

end A027441

/-! ## A027441.P17508244492977963295

`((n-1)²+n)*∑[gcd(n, 2*n)]`
-/

namespace A027441.P17508244492977963295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) ^ 2 + (n : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A027441.P17508244492977963295

namespace A027441

/-- `((n-1)²+n)*∑[gcd(n, 2*n)]` -/
def P17508244492977963295.Spec : Prop :=
  ∀ n, P17508244492977963295.a n = A027441 n

end A027441

/-! ## A027441.P4966920728932250065

`∑[A212133(n)]`
-/

namespace A027441.P4966920728932250065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212133 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027441.P4966920728932250065

namespace A027441

/-- `∑[A212133(n)]` -/
def P4966920728932250065.Spec : Prop :=
  ∀ n, P4966920728932250065.a n = A027441 n

end A027441

/-! ## A027441.P2572461424980043370

`A058895(n)/2+n`
-/

namespace A027441.P2572461424980043370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058895 n : ℚ) / 2 + (n : ℚ)

end

end A027441.P2572461424980043370

namespace A027441

/-- `A058895(n)/2+n` -/
def P2572461424980043370.Spec : Prop :=
  ∀ n, P2572461424980043370.a n = (A027441 n : ℚ)

end A027441

/-! ## A027441.P13309068375128446446

`∑[n]*∑[A004275(n)]`
-/

namespace A027441.P13309068375128446446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A027441.P13309068375128446446

namespace A027441

/-- `∑[n]*∑[A004275(n)]` -/
def P13309068375128446446.Spec : Prop :=
  ∀ n, P13309068375128446446.a n = A027441 n

end A027441

/-! ## A027441.P5367999186666072987

`floor((A002523(n)+n)/2)`
-/

namespace A027441.P5367999186666072987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002523 n + (n : ℤ) : ℚ) / 2⌋

end

end A027441.P5367999186666072987

namespace A027441

/-- `floor((A002523(n)+n)/2)` -/
def P5367999186666072987.Spec : Prop :=
  ∀ n, P5367999186666072987.a n = A027441 n

end A027441

/-!
# A027442: For n odd, >1, not divisible by 3, we can write 3/n = 1/a + 1/b + 1/c with a>b>c>0, a,b,c distinct and odd; sequence gives smallest a.

The programs for A027442, there is no canonical definition to state claims against.
-/

/-! ## A027442.P15417844273524463755

`A027443(∑[gcd(2, n)])`
-/

namespace A027442.P15417844273524463755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027443 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027442.P15417844273524463755

/-! ## A027442.P12744155660558633938

`A027443(comp[3*n]+1)`
-/

namespace A027442.P12744155660558633938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027443 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A027442.P12744155660558633938

/-! ## A027442.P12820182734239582477

`filter[A027443(n+1), A049240(#)]`
-/

namespace A027442.P12820182734239582477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A027442.P12820182734239582477

/-! ## A027442.P13314381592253891545

`filter[A027443(n+1), A053867(#)]`
-/

namespace A027442.P13314381592253891545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053867 (f1 j).toNat = 1) n)

end

end A027442.P13314381592253891545

/-! ## A027442.P3661329877147466970

`filter[A027443(n+1), A066247(#)]`
-/

namespace A027442.P3661329877147466970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A027442.P3661329877147466970

/-!
# A027443: For n != 1 mod 3, we can write 3/(2n+1) = 1/a + 1/b + 1/c with a>b>c>0, a,b,c distinct and odd; sequence gives smallest such a, or 1 if n = 1 mod 3.

The programs for A027443, there is no canonical definition to state claims against.
-/

/-! ## A027443.P16168051235614167881

`filter[A291665(n+3), A179776(#)]`
-/

namespace A027443.P16168051235614167881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291665 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179776 (f1 j).toNat = 1) n)

end

end A027443.P16168051235614167881

/-!
# A027444: a(n) = n^3 + n^2 + n.

The programs for A027444, the canonical program `A027444.P13486811862535796769` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027444 has offset 0).

The definition of A027444 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+n²+n` (program `A027444.P13486811862535796769`, by `A027444.P13486811862535796769.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027444.P13486811862535796769

`n^3+n²+n`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027444

/-- `n^3+n²+n` -/
def P13486811862535796769.Spec : Prop :=
  ∀ n, (P13486811862535796769.a n : ℤ) = A027444 n

theorem P13486811862535796769.correct : P13486811862535796769.Spec := by
  intro n
  simp only [A027444]

end A027444

/-! ## A027444.P16708527368165921901

`floor(n/Δ[atan(n)])`
-/

namespace A027444.P16708527368165921901
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (f1 (n + 1) - f1 n)⌋

end

end A027444.P16708527368165921901

namespace A027444

/-- `floor(n/Δ[atan(n)])` -/
def P16708527368165921901.Spec : Prop :=
  ∀ n, P16708527368165921901.a n = A027444 n

end A027444

/-! ## A027444.P602031454657978693

`round(n/Δ[atan(n)])`
-/

namespace A027444.P602031454657978693
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / (f1 (n + 1) - f1 n))

end

end A027444.P602031454657978693

namespace A027444

/-- `round(n/Δ[atan(n)])` -/
def P602031454657978693.Spec : Prop :=
  ∀ n, P602031454657978693.a n = A027444 n

end A027444

/-! ## A027444.P6080073603587046290

`lcm(n, or(1, ∑[2*n]))`
-/

namespace A027444.P6080073603587046290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A027444.P6080073603587046290

namespace A027444

/-- `lcm(n, or(1, ∑[2*n]))` -/
def P6080073603587046290.Spec : Prop :=
  ∀ n, (P6080073603587046290.a n : ℤ) = A027444 n

end A027444

/-! ## A027444.P16050425081319280213

`n*(record[(n-1)²]-n)`
-/

namespace A027444.P16050425081319280213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ))

end

end A027444.P16050425081319280213

namespace A027444

/-- `n*(record[(n-1)²]-n)` -/
def P16050425081319280213.Spec : Prop :=
  ∀ n, P16050425081319280213.a n = A027444 n

end A027444

/-! ## A027444.P12372081823199623114

`-(n*xor(-1, ∑[2*n]))`
-/

namespace A027444.P12372081823199623114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A027444.P12372081823199623114

namespace A027444

/-- `-(n*xor(-1, ∑[2*n]))` -/
def P12372081823199623114.Spec : Prop :=
  ∀ n, P12372081823199623114.a n = A027444 n

end A027444

/-! ## A027444.P10662761469689752487

`floor((n+1)/acot(n²)+n)`
-/

namespace A027444.P10662761469689752487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot (n ^ 2 : ℝ) + (n : ℝ)⌋

end

end A027444.P10662761469689752487

namespace A027444

/-- `floor((n+1)/acot(n²)+n)` -/
def P10662761469689752487.Spec : Prop :=
  ∀ n, P10662761469689752487.a n = A027444 n

end A027444

/-! ## A027444.P4571692759382429653

`ceil((acot(n)+n+1)*n²)`
-/

namespace A027444.P4571692759382429653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.acot (n : ℝ) + (n + 1 : ℝ)) * (n ^ 2 : ℝ)⌉

end

end A027444.P4571692759382429653

namespace A027444

/-- `ceil((acot(n)+n+1)*n²)` -/
def P4571692759382429653.Spec : Prop :=
  ∀ n, P4571692759382429653.a n = A027444 n

end A027444

/-! ## A027444.P12871983841124148672

`round((acot(n)+n+1)*n²)`
-/

namespace A027444.P12871983841124148672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.acot (n : ℝ) + (n + 1 : ℝ)) * (n ^ 2 : ℝ))

end

end A027444.P12871983841124148672

namespace A027444

/-- `round((acot(n)+n+1)*n²)` -/
def P12871983841124148672.Spec : Prop :=
  ∀ n, P12871983841124148672.a n = A027444 n

end A027444

/-! ## A027444.P10583480997616762121

`round(n/acot(n²+1+n))`
-/

namespace A027444.P10583480997616762121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (n ^ 2 + 1 + n : ℝ))

end

end A027444.P10583480997616762121

namespace A027444

/-- `round(n/acot(n²+1+n))` -/
def P10583480997616762121.Spec : Prop :=
  ∀ n, P10583480997616762121.a n = A027444 n

end A027444

/-! ## A027444.P9322948319237519147

`n/tan(acot(n²+1+n))`
-/

namespace A027444.P9322948319237519147
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.tan (SequenceMachineLib.acot (n ^ 2 + 1 + n : ℝ))

end

end A027444.P9322948319237519147

namespace A027444

/-- `n/tan(acot(n²+1+n))` -/
def P9322948319237519147.Spec : Prop :=
  ∀ n, P9322948319237519147.a n = (A027444 n : ℝ)

end A027444

/-! ## A027444.P7135586102227311553

`floor(n/(atan(n+1)-atan(n)))`
-/

namespace A027444.P7135586102227311553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (Real.arctan (n + 1 : ℝ) - Real.arctan (n : ℝ))⌋

end

end A027444.P7135586102227311553

namespace A027444

/-- `floor(n/(atan(n+1)-atan(n)))` -/
def P7135586102227311553.Spec : Prop :=
  ∀ n, P7135586102227311553.a n = A027444 n

end A027444

/-! ## A027444.P16681355437110983238

`round(n/(atan(n+1)-atan(n)))`
-/

namespace A027444.P16681355437110983238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / (Real.arctan (n + 1 : ℝ) - Real.arctan (n : ℝ)))

end

end A027444.P16681355437110983238

namespace A027444

/-- `round(n/(atan(n+1)-atan(n)))` -/
def P16681355437110983238.Spec : Prop :=
  ∀ n, P16681355437110983238.a n = A027444 n

end A027444

/-! ## A027444.P8857274741164201559

`floor(n/(acot(n)-acot(n+1)))`
-/

namespace A027444.P8857274741164201559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (SequenceMachineLib.acot (n : ℝ) - SequenceMachineLib.acot (n + 1 : ℝ))⌋

end

end A027444.P8857274741164201559

namespace A027444

/-- `floor(n/(acot(n)-acot(n+1)))` -/
def P8857274741164201559.Spec : Prop :=
  ∀ n, P8857274741164201559.a n = A027444 n

end A027444

/-! ## A027444.P6529381682783686698

`round(n/(acot(n)-acot(n+1)))`
-/

namespace A027444.P6529381682783686698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / (SequenceMachineLib.acot (n : ℝ) - SequenceMachineLib.acot (n + 1 : ℝ)))

end

end A027444.P6529381682783686698

namespace A027444

/-- `round(n/(acot(n)-acot(n+1)))` -/
def P6529381682783686698.Spec : Prop :=
  ∀ n, P6529381682783686698.a n = A027444 n

end A027444

/-! ## A027444.P5048012078422280363

`∑[∑[a(n-1)+6]]` with `a(0)=0, a(1)=3, a(2)=8`
-/

namespace A027444.P5048012078422280363
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 8] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027444.P5048012078422280363

namespace A027444

/-- `∑[∑[a(n-1)+6]]` -/
def P5048012078422280363.Spec : Prop :=
  ∀ n, (P5048012078422280363.a n : ℤ) = A027444 n

end A027444

/-! ## A027444.P16360429505016969728

`n*xor(5, (2*n+1)²)/4`
-/

namespace A027444.P16360429505016969728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * Nat.xor 5 ((2 * n + 1) ^ 2) : ℚ) / 4

end

end A027444.P16360429505016969728

namespace A027444

/-- `n*xor(5, (2*n+1)²)/4` -/
def P16360429505016969728.Spec : Prop :=
  ∀ n, P16360429505016969728.a n = (A027444 n : ℚ)

end A027444

/-! ## A027444.P9991822875555347045

`n*∑[A004277(n)]`
-/

namespace A027444.P9991822875555347045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027444.P9991822875555347045

namespace A027444

/-- `n*∑[A004277(n)]` -/
def P9991822875555347045.Spec : Prop :=
  ∀ n, P9991822875555347045.a n = A027444 n

end A027444

/-! ## A027444.P7391355887393002139

`(A155120(n)+2)/2`
-/

namespace A027444.P7391355887393002139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155120 n + 2 : ℚ) / 2

end

end A027444.P7391355887393002139

namespace A027444

/-- `(A155120(n)+2)/2` -/
def P7391355887393002139.Spec : Prop :=
  ∀ n, P7391355887393002139.a n = (A027444 n : ℚ)

theorem P7391355887393002139.correct : P7391355887393002139.Spec := by
  intro n
  simp only [A027444, Nat.add_sub_cancel, A027444.P7391355887393002139.a, A027444.P13486811862535796769.a, A155120, A155120.P9013044835970434456.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027444

/-! ## A027444.P5682582993986178350

`n*A002061(n+1)`
-/

namespace A027444.P5682582993986178350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002061 (n + 1)

end

end A027444.P5682582993986178350

namespace A027444

/-- `n*A002061(n+1)` -/
def P5682582993986178350.Spec : Prop :=
  ∀ n, P5682582993986178350.a n = A027444 n

theorem P5682582993986178350.correct : P5682582993986178350.Spec := by
  intro n
  simp only [A027444, Nat.add_sub_cancel, A027444.P5682582993986178350.a, A027444.P13486811862535796769.a, A002061, A002061.P13016590216674735232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027444

/-!
# A027445: a(n) = n^4 + n^3 + n^2 + n.

The programs for A027445, the canonical program `A027445.P2062535294747488403` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027445 has offset 0).

The definition of A027445 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4+n^3+n²+n` (program `A027445.P2062535294747488403`, by `A027445.P2062535294747488403.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027445.P2062535294747488403

`n^4+n^3+n²+n`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027445

/-- `n^4+n^3+n²+n` -/
def P2062535294747488403.Spec : Prop :=
  ∀ n, (P2062535294747488403.a n : ℤ) = A027445 n

theorem P2062535294747488403.correct : P2062535294747488403.Spec := by
  intro n
  simp only [A027445]

end A027445

/-! ## A027445.P11940930709214135134

`2*A071237(n)`
-/

namespace A027445.P11940930709214135134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071237 n

end

end A027445.P11940930709214135134

namespace A027445

/-- `2*A071237(n)` -/
def P11940930709214135134.Spec : Prop :=
  ∀ n, P11940930709214135134.a n = A027445 n

end A027445

/-! ## A027445.P2078031391858940829

`floor((n+1)/acot(n)^3)`
-/

namespace A027445.P2078031391858940829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot (n : ℝ) ^ 3⌋

end

end A027445.P2078031391858940829

namespace A027445

/-- `floor((n+1)/acot(n)^3)` -/
def P2078031391858940829.Spec : Prop :=
  ∀ n, P2078031391858940829.a n = A027445 n

end A027445

/-! ## A027445.P6221578579637746937

`round((n+1)/acot(n)^3)`
-/

namespace A027445.P6221578579637746937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / SequenceMachineLib.acot (n : ℝ) ^ 3)

end

end A027445.P6221578579637746937

namespace A027445

/-- `round((n+1)/acot(n)^3)` -/
def P6221578579637746937.Spec : Prop :=
  ∀ n, P6221578579637746937.a n = A027445 n

end A027445

/-! ## A027445.P4327991136807260795

`(n²+n)/cos(atan(n))²`
-/

namespace A027445.P4327991136807260795
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℝ) / Real.cos (Real.arctan (n : ℝ)) ^ 2

end

end A027445.P4327991136807260795

namespace A027445

/-- `(n²+n)/cos(atan(n))²` -/
def P4327991136807260795.Spec : Prop :=
  ∀ n, P4327991136807260795.a n = (A027445 n : ℝ)

end A027445

/-! ## A027445.P1629689992980422027

`(n²+n)/sin(acot(n))²`
-/

namespace A027445.P1629689992980422027
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + n : ℝ) / Real.sin (SequenceMachineLib.acot (n : ℝ)) ^ 2

end

end A027445.P1629689992980422027

namespace A027445

/-- `(n²+n)/sin(acot(n))²` -/
def P1629689992980422027.Spec : Prop :=
  ∀ n, P1629689992980422027.a n = (A027445 n : ℝ)

end A027445

/-! ## A027445.P9571681642866444176

`lcm(n, (n+1)*(n²+1))`
-/

namespace A027445.P9571681642866444176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n ((n + 1) * (n ^ 2 + 1))

end

end A027445.P9571681642866444176

namespace A027445

/-- `lcm(n, (n+1)*(n²+1))` -/
def P9571681642866444176.Spec : Prop :=
  ∀ n, (P9571681642866444176.a n : ℤ) = A027445 n

end A027445

/-! ## A027445.P807678002266810892

`xor(1, ceil((n+1)/acot(n)^3))`
-/

namespace A027445.P807678002266810892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (n : ℝ) ^ 3⌉

end

end A027445.P807678002266810892

namespace A027445

/-- `xor(1, ceil((n+1)/acot(n)^3))` -/
def P807678002266810892.Spec : Prop :=
  ∀ n, P807678002266810892.a n = A027445 n

end A027445

/-! ## A027445.P10735625701767394398

`∑[n*∑[a(n-1)+8]]` with `a(0)=3, a(1)=1`
-/

namespace A027445.P10735625701767394398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027445.P10735625701767394398

namespace A027445

/-- `∑[n*∑[a(n-1)+8]]` -/
def P10735625701767394398.Spec : Prop :=
  ∀ n, (P10735625701767394398.a n : ℤ) = A027445 n

end A027445

/-! ## A027445.P9075304683416060078

`n*A053698(n)`
-/

namespace A027445.P9075304683416060078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A053698 n

end

end A027445.P9075304683416060078

namespace A027445

/-- `n*A053698(n)` -/
def P9075304683416060078.Spec : Prop :=
  ∀ n, P9075304683416060078.a n = A027445 n

theorem P9075304683416060078.correct : P9075304683416060078.Spec := by
  intro n
  simp only [A027445, Nat.add_sub_cancel, A027445.P9075304683416060078.a, A027445.P2062535294747488403.a, A053698, A053698.P17380684271159484773.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027445

/-! ## A027445.P12483673453879000418

`∑[n]*A005893(n)`
-/

namespace A027445.P12483673453879000418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A005893 n

end

end A027445.P12483673453879000418

namespace A027445

/-- `∑[n]*A005893(n)` -/
def P12483673453879000418.Spec : Prop :=
  ∀ n, P12483673453879000418.a n = A027445 n

end A027445

/-! ## A027445.P15776519478124950594

`n*∑[A056106(n)]`
-/

namespace A027445.P15776519478124950594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027445.P15776519478124950594

namespace A027445

/-- `n*∑[A056106(n)]` -/
def P15776519478124950594.Spec : Prop :=
  ∀ n, P15776519478124950594.a n = A027445 n

end A027445

/-! ## A027445.P7931134846759335973

`(A155121(n)+3)/2`
-/

namespace A027445.P7931134846759335973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155121 n + 3 : ℚ) / 2

end

end A027445.P7931134846759335973

namespace A027445

/-- `(A155121(n)+3)/2` -/
def P7931134846759335973.Spec : Prop :=
  ∀ n, P7931134846759335973.a n = (A027445 n : ℚ)

theorem P7931134846759335973.correct : P7931134846759335973.Spec := by
  intro n
  simp only [A027445, Nat.add_sub_cancel, A027445.P7931134846759335973.a, A027445.P2062535294747488403.a, A155121, A155121.P2507026567840269680.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027445

/-! ## A027445.P17760423738293430325

`n*(A027444(n)+1)`
-/

namespace A027445.P17760423738293430325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A027444 n + 1)

end

end A027445.P17760423738293430325

namespace A027445

/-- `n*(A027444(n)+1)` -/
def P17760423738293430325.Spec : Prop :=
  ∀ n, P17760423738293430325.a n = A027445 n

theorem P17760423738293430325.correct : P17760423738293430325.Spec := by
  intro n
  simp only [A027445, Nat.add_sub_cancel, A027445.P17760423738293430325.a, A027445.P2062535294747488403.a, A027444, A027444.P13486811862535796769.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027445

/-! ## A027445.P708723882907073982

`(n+1)*A034262(n)`
-/

namespace A027445.P708723882907073982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A034262 n

end

end A027445.P708723882907073982

namespace A027445

/-- `(n+1)*A034262(n)` -/
def P708723882907073982.Spec : Prop :=
  ∀ n, P708723882907073982.a n = A027445 n

theorem P708723882907073982.correct : P708723882907073982.Spec := by
  intro n
  simp only [A027445, Nat.add_sub_cancel, A027445.P708723882907073982.a, A027445.P2062535294747488403.a, A034262, A034262.P1986901683698587680.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027445

/-! ## A027445.P4292438322286651631

`n*(A098547(n)+n)`
-/

namespace A027445.P4292438322286651631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A098547 n + (n : ℤ))

end

end A027445.P4292438322286651631

namespace A027445

/-- `n*(A098547(n)+n)` -/
def P4292438322286651631.Spec : Prop :=
  ∀ n, P4292438322286651631.a n = A027445 n

theorem P4292438322286651631.correct : P4292438322286651631.Spec := by
  intro n
  simp only [A027445, Nat.add_sub_cancel, A027445.P4292438322286651631.a, A027445.P2062535294747488403.a, A098547, A098547.P2884746087904860817.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027445

/-! ## A027445.P11642193040405720027

`n*(A100705(n)-n)`
-/

namespace A027445.P11642193040405720027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A100705 n - (n : ℤ))

end

end A027445.P11642193040405720027

namespace A027445

/-- `n*(A100705(n)-n)` -/
def P11642193040405720027.Spec : Prop :=
  ∀ n, P11642193040405720027.a n = A027445 n

theorem P11642193040405720027.correct : P11642193040405720027.Spec := by
  intro n
  simp only [A027445, Nat.add_sub_cancel, A027445.P11642193040405720027.a, A027445.P2062535294747488403.a, A100705, A100705.P6779774238995480043.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027445

/-! ## A027445.P10051840167626484609

`∑[n]*A271624(n+1)`
-/

namespace A027445.P10051840167626484609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A271624 (n + 1)

end

end A027445.P10051840167626484609

namespace A027445

/-- `∑[n]*A271624(n+1)` -/
def P10051840167626484609.Spec : Prop :=
  ∀ n, P10051840167626484609.a n = A027445 n

end A027445

/-! ## A027445.P6289863498265310609

`∑[n*(A054552(n)+2)]`
-/

namespace A027445.P6289863498265310609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A054552 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027445.P6289863498265310609

namespace A027445

/-- `∑[n*(A054552(n)+2)]` -/
def P6289863498265310609.Spec : Prop :=
  ∀ n, P6289863498265310609.a n = A027445 n

end A027445

/-! ## A027445.P15094941087425049694

`(n+1)*(A071568(n)-1)`
-/

namespace A027445.P15094941087425049694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A071568 n - 1)

end

end A027445.P15094941087425049694

namespace A027445

/-- `(n+1)*(A071568(n)-1)` -/
def P15094941087425049694.Spec : Prop :=
  ∀ n, P15094941087425049694.a n = A027445 n

theorem P15094941087425049694.correct : P15094941087425049694.Spec := by
  intro n
  simp only [A027445, Nat.add_sub_cancel, A027445.P15094941087425049694.a, A027445.P2062535294747488403.a, A071568, A071568.P7566850844924228464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027445

/-!
# A027446: Triangle read by rows: square of the lower triangular mean matrix.

The programs for A027446, there is no canonical definition to state claims against.
-/

/-! ## A027446.P7638897465530690194

`A074761(n+1)+A106609(A165674(n+1)^A349056(n+1))-1`
-/

namespace A027446.P7638897465530690194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074761 (n + 1) + (A106609 (SequenceMachineLib.roundAway ((A165674 (n + 1) : ℚ) ^ (A349056 (n + 1) : ℤ))).toNat - 1)

end

end A027446.P7638897465530690194

/-!
# A027447: Triangle read by rows: cube of the lower triangular mean matrix.

The programs for A027447, there is no canonical definition to state claims against.
-/

/-! ## A027447.P4734001820860245618

`A112622(A007689(n))*A119935(n+1)`
-/

namespace A027447.P4734001820860245618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112622 (A007689 n).toNat * A119935 (n + 1)

end

end A027447.P4734001820860245618

/-! ## A027447.P11145043515882803989

`A010766(A325258(n))*A119935(n+1)`
-/

namespace A027447.P11145043515882803989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A325258 n).toNat * A119935 (n + 1)

end

end A027447.P11145043515882803989

/-! ## A027447.P8154188226684516962

`A101479(A101479(3*n+2))*A119935(n+1)`
-/

namespace A027447.P8154188226684516962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101479 (A101479 (3 * n + 2)).toNat * A119935 (n + 1)

end

end A027447.P8154188226684516962

/-!
# A027448: Triangle read by rows: 4th power of the lower triangular mean matrix (M[i,j] = 1/i for i <= j).

The programs for A027448, there is no canonical definition to state claims against.
-/

/-! ## A027448.P5274832811456149667

`A027518(n+1)%A253550(A237472(n+1))`
-/

namespace A027448.P5274832811456149667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027518 (n + 1)) (A253550 (A237472 (n + 1)).toNat)

end

end A027448.P5274832811456149667

/-!
# A027449: Second diagonal of A027446.

The programs for A027449, the canonical program `A027449.P7596124845904246112` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027449 has offset 2).

The definition of A027449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027449.P15718469494737979128

`A027446(∑[n+2])`
-/

namespace A027449.P15718469494737979128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027446 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027449.P15718469494737979128

namespace A027449

/-- `A027446(∑[n+2])` -/
def P15718469494737979128.Spec : Prop :=
  ∀ n, P15718469494737979128.a n = A027449 (n + 2)

end A027449

/-! ## A027449.P1337504738139542956

`(2*n+3)*A099946(n+2)`
-/

namespace A027449.P1337504738139542956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A099946 (n + 2)

end

end A027449.P1337504738139542956

namespace A027449

/-- `(2*n+3)*A099946(n+2)` -/
def P1337504738139542956.Spec : Prop :=
  ∀ n, P1337504738139542956.a n = A027449 (n + 2)

end A027449

/-! ## A027449.P9381428635350470190

`A099946(n+2)*A144396(n+1)`
-/

namespace A027449.P9381428635350470190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099946 (n + 2) * A144396 (n + 1)

end

end A027449.P9381428635350470190

namespace A027449

/-- `A099946(n+2)*A144396(n+1)` -/
def P9381428635350470190.Spec : Prop :=
  ∀ n, P9381428635350470190.a n = A027449 (n + 2)

end A027449

/-! ## A027449.P10342924891906954

`A002944(n+2)+A099946(n+2)+A002944(n+2)`
-/

namespace A027449.P10342924891906954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (n + 2) + (A099946 (n + 2) + A002944 (n + 2))

end

end A027449.P10342924891906954

namespace A027449

/-- `A002944(n+2)+A099946(n+2)+A002944(n+2)` -/
def P10342924891906954.Spec : Prop :=
  ∀ n, P10342924891906954.a n = A027449 (n + 2)

end A027449

/-! ## A027449.P7596124845904246112

`A002944(n+2)+A002944(n+1)*A014963(n+2)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A027449

/-- `A002944(n+2)+A002944(n+1)*A014963(n+2)` -/
def P7596124845904246112.Spec : Prop :=
  ∀ n, P7596124845904246112.a n = A027449 (n + 2)

theorem P7596124845904246112.correct : P7596124845904246112.Spec := by
  intro n
  simp only [A027449, Nat.add_sub_cancel]

end A027449

/-! ## A027449.P3185921660430575993

`(A387027(n+1)+A003418(n+1))/A048671(n+2)`
-/

namespace A027449.P3185921660430575993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387027 (n + 1) + A003418 (n + 1) : ℚ) / (A048671 (n + 2) : ℚ)

end

end A027449.P3185921660430575993

namespace A027449

/-- `(A387027(n+1)+A003418(n+1))/A048671(n+2)` -/
def P3185921660430575993.Spec : Prop :=
  ∀ n, P3185921660430575993.a n = (A027449 (n + 2) : ℚ)

end A027449

/-! ## A027449.P5974670685626517823

`A002944(n+2)+A387027(n+1)/A048671(n+2)`
-/

namespace A027449.P5974670685626517823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002944 (n + 2) : ℚ) + (A387027 (n + 1) : ℚ) / (A048671 (n + 2) : ℚ)

end

end A027449.P5974670685626517823

namespace A027449

/-- `A002944(n+2)+A387027(n+1)/A048671(n+2)` -/
def P5974670685626517823.Spec : Prop :=
  ∀ n, P5974670685626517823.a n = (A027449 (n + 2) : ℚ)

end A027449

/-! ## A027449.P17868295990569320138

`A129326(n+1)/A025527(n+2)`
-/

namespace A027449.P17868295990569320138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129326 (n + 1) : ℚ) / (A025527 (n + 2) : ℚ)

end

end A027449.P17868295990569320138

namespace A027449

/-- `A129326(n+1)/A025527(n+2)` -/
def P17868295990569320138.Spec : Prop :=
  ∀ n, P17868295990569320138.a n = (A027449 (n + 2) : ℚ)

end A027449

/-!
# A027450: Third diagonal of A027446.

The programs for A027450, there is no canonical definition to state claims against.
-/

/-! ## A027450.P5556941098703430901

`A027446(∑[n+3]+1)`
-/

namespace A027450.P5556941098703430901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027446 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027450.P5556941098703430901

/-! ## A027450.P815903123181261909

`lcm((-1)^n, A027446(Δ[A008778(n)]))`
-/

namespace A027450.P815903123181261909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A027446 (f1 (n + 1) - f1 n).toNat)

end

end A027450.P815903123181261909

/-! ## A027450.P2254386835719885851

`A027446(A052905(n)+3)%A316425(n+1)`
-/

namespace A027450.P2254386835719885851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027446 (A052905 n + 3).toNat) (A316425 (n + 1))

end

end A027450.P2254386835719885851

/-! ## A027450.P242101852464630947

`A027446(Δ[A008778(n)])+A010051((n+1)²)`
-/

namespace A027450.P242101852464630947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027446 (f1 (n + 1) - f1 n).toNat + A010051 ((n + 1) ^ 2)

end

end A027450.P242101852464630947

/-! ## A027450.P11451501748946991551

`A031387(n+1)%2*A027446(Δ[A008778(n)])`
-/

namespace A027450.P11451501748946991551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031387 (n + 1)) 2 * A027446 (f1 (n + 1) - f1 n).toNat

end

end A027450.P11451501748946991551

/-! ## A027450.P17646078092252158591

`A142862(n+1)%2*A027446(Δ[A008778(n)])`
-/

namespace A027450.P17646078092252158591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142862 (n + 1)) 2 * A027446 (f1 (n + 1) - f1 n).toNat

end

end A027450.P17646078092252158591

/-! ## A027450.P6155865366765721007

`A027446(A055999(n)+4)+A002448(A139831(n+1))`
-/

namespace A027450.P6155865366765721007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027446 (A055999 n + 4).toNat + A002448 (A139831 (n + 1)).toNat

end

end A027450.P6155865366765721007

/-! ## A027450.P13073388578117998240

`A027446(Δ[A008778(n)])*A195198(n²)`
-/

namespace A027450.P13073388578117998240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027446 (f1 (n + 1) - f1 n).toNat * A195198 (n ^ 2)

end

end A027450.P13073388578117998240

/-! ## A027450.P15891266318462701778

`A203887(n+1)%2*A027446(Δ[A008778(n)])`
-/

namespace A027450.P15891266318462701778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A203887 (n + 1)) 2 * A027446 (f1 (n + 1) - f1 n).toNat

end

end A027450.P15891266318462701778

/-!
# A027451: First diagonal of A027447.

The programs for A027451, the canonical program `A027451.P8818521852691643235` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027451 has offset 1).

The definition of A027451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027451.P9482970546565306366

`a(n-1)/gcd((n+1)², a(n-1))*n²` with `a(0)=1`
-/

namespace A027451.P9482970546565306366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (Int.gcd ((n + 1) ^ 2 : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) * (n ^ 2 : ℚ)

end

end A027451.P9482970546565306366

namespace A027451

/-- `a(n-1)/gcd((n+1)², a(n-1))*n²` -/
def P9482970546565306366.Spec : Prop :=
  ∀ n, P9482970546565306366.a n = (A027451 (n + 1) : ℚ)

end A027451

/-! ## A027451.P598078753510030365

`(∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])]/(n+1))²`
-/

namespace A027451.P598078753510030365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A027451.P598078753510030365

namespace A027451

/-- `(∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])]/(n+1))²` -/
def P598078753510030365.Spec : Prop :=
  ∀ n, P598078753510030365.a n = (A027451 (n + 1) : ℚ)

end A027451

/-! ## A027451.P8818521852691643235

`A002944(n+1)²`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A027451

/-- `A002944(n+1)²` -/
def P8818521852691643235.Spec : Prop :=
  ∀ n, P8818521852691643235.a n = A027451 (n + 1)

theorem P8818521852691643235.correct : P8818521852691643235.Spec := by
  intro n
  simp only [A027451, Nat.add_sub_cancel]

end A027451

/-! ## A027451.P931816805335007779

`A027447(∑[n+1])`
-/

namespace A027451.P931816805335007779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027447 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027451.P931816805335007779

namespace A027451

/-- `A027447(∑[n+1])` -/
def P931816805335007779.Spec : Prop :=
  ∀ n, P931816805335007779.a n = A027451 (n + 1)

end A027451

/-! ## A027451.P5707970041248232308

`A027446(∑[n+1])²`
-/

namespace A027451.P5707970041248232308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027446 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A027451.P5707970041248232308

namespace A027451

/-- `A027446(∑[n+1])²` -/
def P5707970041248232308.Spec : Prop :=
  ∀ n, P5707970041248232308.a n = A027451 (n + 1)

end A027451

/-! ## A027451.P3388114430079347908

`A120435(∑[n+1])²`
-/

namespace A027451.P3388114430079347908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120435 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A027451.P3388114430079347908

namespace A027451

/-- `A120435(∑[n+1])²` -/
def P3388114430079347908.Spec : Prop :=
  ∀ n, P3388114430079347908.a n = A027451 (n + 1)

end A027451

/-! ## A027451.P1653855817191260497

`(A139547(∑[n])/(n+1))²`
-/

namespace A027451.P1653855817191260497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A139547 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A027451.P1653855817191260497

namespace A027451

/-- `(A139547(∑[n])/(n+1))²` -/
def P1653855817191260497.Spec : Prop :=
  ∀ n, P1653855817191260497.a n = (A027451 (n + 1) : ℚ)

end A027451

/-! ## A027451.P11293592014020175350

`(Δ[A173185(n)]/(n+1))²`
-/

namespace A027451.P11293592014020175350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A027451.P11293592014020175350

namespace A027451

/-- `(Δ[A173185(n)]/(n+1))²` -/
def P11293592014020175350.Spec : Prop :=
  ∀ n, P11293592014020175350.a n = (A027451 (n + 1) : ℚ)

end A027451

/-! ## A027451.P15613765422329506158

`(Δ[A236856(n)]/(n+1))²`
-/

namespace A027451.P15613765422329506158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A027451.P15613765422329506158

namespace A027451

/-- `(Δ[A236856(n)]/(n+1))²` -/
def P15613765422329506158.Spec : Prop :=
  ∀ n, P15613765422329506158.a n = (A027451 (n + 1) : ℚ)

end A027451

/-! ## A027451.P1517303451526868775

`(A003418(n+1)/(n+1))²`
-/

namespace A027451.P1517303451526868775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A003418 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A027451.P1517303451526868775

namespace A027451

/-- `(A003418(n+1)/(n+1))²` -/
def P1517303451526868775.Spec : Prop :=
  ∀ n, P1517303451526868775.a n = (A027451 (n + 1) : ℚ)

end A027451

/-! ## A027451.P6484740822054039635

`A051418(n+1)/(n+1)²`
-/

namespace A027451.P6484740822054039635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051418 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A027451.P6484740822054039635

namespace A027451

/-- `A051418(n+1)/(n+1)²` -/
def P6484740822054039635.Spec : Prop :=
  ∀ n, P6484740822054039635.a n = (A027451 (n + 1) : ℚ)

end A027451

/-! ## A027451.P14345100322557952248

`(A081528(n+1)/(n+1)²)²`
-/

namespace A027451.P14345100322557952248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A081528 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)) ^ 2

end

end A027451.P14345100322557952248

namespace A027451

/-- `(A081528(n+1)/(n+1)²)²` -/
def P14345100322557952248.Spec : Prop :=
  ∀ n, P14345100322557952248.a n = (A027451 (n + 1) : ℚ)

end A027451

/-! ## A027451.P8493351874113646102

`(∏[A014963(n+1)]/(n+1))²`
-/

namespace A027451.P8493351874113646102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)) ^ 2

end

end A027451.P8493351874113646102

namespace A027451

/-- `(∏[A014963(n+1)]/(n+1))²` -/
def P8493351874113646102.Spec : Prop :=
  ∀ n, P8493351874113646102.a n = (A027451 (n + 1) : ℚ)

end A027451

/-! ## A027451.P5138741258358773153

`(A001405(n)*A048619(n))²`
-/

namespace A027451.P5138741258358773153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001405 n * A048619 n) ^ 2

end

end A027451.P5138741258358773153

namespace A027451

/-- `(A001405(n)*A048619(n))²` -/
def P5138741258358773153.Spec : Prop :=
  ∀ n, P5138741258358773153.a n = A027451 (n + 1)

end A027451

/-! ## A027451.P6914979906602935405

`lcm(A027611(n+1), A046826(n))²`
-/

namespace A027451.P6914979906602935405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027611 (n + 1)) (A046826 n) ^ 2

end

end A027451.P6914979906602935405

namespace A027451

/-- `lcm(A027611(n+1), A046826(n))²` -/
def P6914979906602935405.Spec : Prop :=
  ∀ n, (P6914979906602935405.a n : ℤ) = A027451 (n + 1)

end A027451

/-! ## A027451.P3804874475688413361

`A120079(n+1)/A056220(n+1)`
-/

namespace A027451.P3804874475688413361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120079 (n + 1) : ℚ) / (A056220 (n + 1) : ℚ)

end

end A027451.P3804874475688413361

namespace A027451

/-- `A120079(n+1)/A056220(n+1)` -/
def P3804874475688413361.Spec : Prop :=
  ∀ n, P3804874475688413361.a n = (A027451 (n + 1) : ℚ)

end A027451

/-! ## A027451.P17953343023524416662

`(A051426(n+1)/(A005408(n)+1))²`
-/

namespace A027451.P17953343023524416662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A051426 (n + 1) : ℚ) / (A005408 n + 1 : ℚ)) ^ 2

end

end A027451.P17953343023524416662

namespace A027451

/-- `(A051426(n+1)/(A005408(n)+1))²` -/
def P17953343023524416662.Spec : Prop :=
  ∀ n, P17953343023524416662.a n = (A027451 (n + 1) : ℚ)

end A027451

/-! ## A027451.P5015185414372121020

`(A051426(n+1)/A005843(n+1))²`
-/

namespace A027451.P5015185414372121020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A051426 (n + 1) : ℚ) / (A005843 (n + 1) : ℚ)) ^ 2

end

end A027451.P5015185414372121020

namespace A027451

/-- `(A051426(n+1)/A005843(n+1))²` -/
def P5015185414372121020.Spec : Prop :=
  ∀ n, P5015185414372121020.a n = (A027451 (n + 1) : ℚ)

end A027451

/-! ## A027451.P14271801641663635859

`lcm(A038610(n+1), A099946(n+2))²`
-/

namespace A027451.P14271801641663635859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038610 (n + 1)) (A099946 (n + 2)) ^ 2

end

end A027451.P14271801641663635859

namespace A027451

/-- `lcm(A038610(n+1), A099946(n+2))²` -/
def P14271801641663635859.Spec : Prop :=
  ∀ n, (P14271801641663635859.a n : ℤ) = A027451 (n + 1)

end A027451

/-! ## A027451.P13018255684129513885

`2*A051418(n+1)-A120079(n+1)`
-/

namespace A027451.P13018255684129513885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051418 (n + 1) - A120079 (n + 1)

end

end A027451.P13018255684129513885

namespace A027451

/-- `2*A051418(n+1)-A120079(n+1)` -/
def P13018255684129513885.Spec : Prop :=
  ∀ n, P13018255684129513885.a n = A027451 (n + 1)

end A027451

/-!
# A027452: Second diagonal of A027447.

The programs for A027452, the canonical program `A027452.P10262170508951782877` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027452 has offset 2).

The definition of A027452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027452.P10262170508951782877

`A099946(n+2)²*A003215(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A027452

/-- `A099946(n+2)²*A003215(n+1)` -/
def P10262170508951782877.Spec : Prop :=
  ∀ n, P10262170508951782877.a n = A027452 (n + 2)

theorem P10262170508951782877.correct : P10262170508951782877.Spec := by
  intro n
  simp only [A027452, Nat.add_sub_cancel]

end A027452

/-! ## A027452.P1859929034120040795

`A027447(∑[n+2])`
-/

namespace A027452.P1859929034120040795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027447 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027452.P1859929034120040795

namespace A027452

/-- `A027447(∑[n+2])` -/
def P1859929034120040795.Spec : Prop :=
  ∀ n, P1859929034120040795.a n = A027452 (n + 2)

end A027452

/-! ## A027452.P8004022129933856338

`or(A000007(n), A027447(A000096(n+1)))`
-/

namespace A027452.P8004022129933856338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A027447 (A000096 (n + 1)).toNat)

end

end A027452.P8004022129933856338

namespace A027452

/-- `or(A000007(n), A027447(A000096(n+1)))` -/
def P8004022129933856338.Spec : Prop :=
  ∀ n, P8004022129933856338.a n = A027452 (n + 2)

end A027452

/-! ## A027452.P7332561920500834137

`A027447(A000096(n+1))+A000007(n+1)`
-/

namespace A027452.P7332561920500834137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027447 (A000096 (n + 1)).toNat + A000007 (n + 1)

end

end A027452.P7332561920500834137

namespace A027452

/-- `A027447(A000096(n+1))+A000007(n+1)` -/
def P7332561920500834137.Spec : Prop :=
  ∀ n, P7332561920500834137.a n = A027452 (n + 2)

end A027452

/-! ## A027452.P11348067562934217971

`A027447(A000096(n+1))*A033999(2*n)`
-/

namespace A027452.P11348067562934217971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027447 (A000096 (n + 1)).toNat * A033999 (2 * n)

end

end A027452.P11348067562934217971

namespace A027452

/-- `A027447(A000096(n+1))*A033999(2*n)` -/
def P11348067562934217971.Spec : Prop :=
  ∀ n, P11348067562934217971.a n = A027452 (n + 2)

end A027452

/-!
# A027453: Third diagonal of A027447.

The programs for A027453, there is no canonical definition to state claims against.
-/

/-! ## A027453.P12024667669864047232

`A027447(∑[n+3]+1)`
-/

namespace A027453.P12024667669864047232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027447 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027453.P12024667669864047232

/-! ## A027453.P7850056310007560274

`A020985(n)²*A027447(A055999(n)+4)`
-/

namespace A027453.P7850056310007560274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A027447 (A055999 n + 4).toNat

end

end A027453.P7850056310007560274

/-! ## A027453.P13171527934491690276

`A027447(A055999(n)+4)+A000007(n+1)`
-/

namespace A027453.P13171527934491690276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027447 (A055999 n + 4).toNat + A000007 (n + 1)

end

end A027453.P13171527934491690276

/-! ## A027453.P6769681667768708018

`A035444(2*n+1)+A027447(A055999(n)+4)`
-/

namespace A027453.P6769681667768708018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (2 * n + 1) + A027447 (A055999 n + 4).toNat

end

end A027453.P6769681667768708018

/-! ## A027453.P15783074846237190115

`A000034(4*n)+A027447(A055999(n)+4)-1`
-/

namespace A027453.P15783074846237190115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (4 * n) + (A027447 (A055999 n + 4).toNat - 1)

end

end A027453.P15783074846237190115

/-! ## A027453.P7695840792809567661

`A027447(A055999(n)+4)^A007318(C(2, n)+1)`
-/

namespace A027453.P7695840792809567661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027447 (A055999 n + 4).toNat : ℚ) ^ (A007318 (Nat.choose 2 n + 1) : ℤ)

end

end A027453.P7695840792809567661

/-! ## A027453.P11602360925595614086

`A027447(A055999(n)+4)+2%A014963(2*(n+1))`
-/

namespace A027453.P11602360925595614086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027447 (A055999 n + 4).toNat + Int.tmod 2 (A014963 (2 * (n + 1)))

end

end A027453.P11602360925595614086

/-! ## A027453.P3516011507721073059

`A001221(A270310(n+1))*A027447(A055999(n)+4)`
-/

namespace A027453.P3516011507721073059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A270310 (n + 1)).toNat * A027447 (A055999 n + 4).toNat

end

end A027453.P3516011507721073059

/-!
# A027454: First diagonal of A027448.

The programs for A027454, there is no canonical definition to state claims against.
-/

/-! ## A027454.P9130465830590769824

`A002944(n+1)^3`
-/

namespace A027454.P9130465830590769824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (n + 1) ^ 3

end

end A027454.P9130465830590769824

/-! ## A027454.P3821491475541258187

`A027446(∑[n+1])^3`
-/

namespace A027454.P3821491475541258187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027446 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A027454.P3821491475541258187

/-! ## A027454.P10572956612424133249

`A120435(∑[n+1])^3`
-/

namespace A027454.P10572956612424133249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120435 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A027454.P10572956612424133249

/-! ## A027454.P16015462991580505526

`(Δ[A173185(n)]/(n+1))^3`
-/

namespace A027454.P16015462991580505526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)) ^ 3

end

end A027454.P16015462991580505526

/-! ## A027454.P11603216096774395720

`(Δ[A236856(n)]/(n+1))^3`
-/

namespace A027454.P11603216096774395720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)) ^ 3

end

end A027454.P11603216096774395720

/-! ## A027454.P4413618841824242015

`(A003418(n+1)/(n+1))^3`
-/

namespace A027454.P4413618841824242015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A003418 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ 3

end

end A027454.P4413618841824242015

/-! ## A027454.P8281482867622879749

`((A070198(n)+1)/(n+1))^3`
-/

namespace A027454.P8281482867622879749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A070198 n + 1 : ℚ) / (n + 1 : ℚ)) ^ 3

end

end A027454.P8281482867622879749

/-! ## A027454.P11101047890345562864

`(A081528(n+1)/(n+1)²)^3`
-/

namespace A027454.P11101047890345562864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A081528 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)) ^ 3

end

end A027454.P11101047890345562864

/-! ## A027454.P515715797584856493

`(∏[A014963(n+1)]/(n+1))^3`
-/

namespace A027454.P515715797584856493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)) ^ 3

end

end A027454.P515715797584856493

/-! ## A027454.P11782773093959949819

`A002944(n+1)*A027451(n+1)`
-/

namespace A027454.P11782773093959949819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (n + 1) * A027451 (n + 1)

end

end A027454.P11782773093959949819

/-!
# A027455: Second diagonal of A027448.

The programs for A027455, there is no canonical definition to state claims against.
-/

/-! ## A027455.P3010733286157100741

`A027448(∑[n+2])`
-/

namespace A027455.P3010733286157100741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027448 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027455.P3010733286157100741

/-!
# A027456: Third diagonal of A027448.

The programs for A027456, there is no canonical definition to state claims against.
-/

/-! ## A027456.P1430431364823309521

`A027448(∑[n+3]+1)`
-/

namespace A027456.P1430431364823309521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027448 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027456.P1430431364823309521

/-!
# A027457: a(n) = (H(n) - 1)*lcm{1,...,n}, where H(n) is the n-th harmonic number.

The programs for A027457, the canonical program `A027457.P5210784852604014020` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027457 has offset 1).

The definition of A027457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 232 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027457.P5210784852604014020

`A025529(n+1)-Δ[A173185(n)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A027457

/-- `A025529(n+1)-Δ[A173185(n)]` -/
def P5210784852604014020.Spec : Prop :=
  ∀ n, P5210784852604014020.a n = A027457 (n + 1)

theorem P5210784852604014020.correct : P5210784852604014020.Spec := by
  intro n
  simp only [A027457, Nat.add_sub_cancel]

end A027457

/-! ## A027457.P13752284360463909101

`A025529(n+1)-Δ[A236856(n)]`
-/

namespace A027457.P13752284360463909101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025529 (n + 1) - (f1 (n + 1) - f1 n)

end

end A027457.P13752284360463909101

namespace A027457

/-- `A025529(n+1)-Δ[A236856(n)]` -/
def P13752284360463909101.Spec : Prop :=
  ∀ n, P13752284360463909101.a n = A027457 (n + 1)

theorem P13752284360463909101.correct : P13752284360463909101.Spec := by
  intro n
  simp only [A027457, Nat.add_sub_cancel, A027457.P13752284360463909101.f1, A027457.P13752284360463909101.a, A027457.P5210784852604014020.f1, A027457.P5210784852604014020.a, A025529, A025529.P10152674282350827364.f1, A025529.P10152674282350827364.f2, A025529.P10152674282350827364.a, A173185, A173185.P11378797572863628532.f1, A173185.P11378797572863628532.a, A236856, A236856.P12242245037929288109.a, A014963, A014963.P5975177236000282614.a, A166140, A166140.P17649384582351937107.f1, A166140.P17649384582351937107.a, A166142, A166142.P10122674445425206392.f1, A166142.P10122674445425206392.a, A080304, A080304.P9910366703239988167.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027457

/-! ## A027457.P11587869195468186828

`A025529(n+1)-A003418(n+1)`
-/

namespace A027457.P11587869195468186828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025529 (n + 1) - A003418 (n + 1)

end

end A027457.P11587869195468186828

namespace A027457

/-- `A025529(n+1)-A003418(n+1)` -/
def P11587869195468186828.Spec : Prop :=
  ∀ n, P11587869195468186828.a n = A027457 (n + 1)

end A027457

/-! ## A027457.P14523163714109318902

`A064169(n+1)*A110566(n+1)`
-/

namespace A027457.P14523163714109318902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064169 (n + 1) * A110566 (n + 1)

end

end A027457.P14523163714109318902

namespace A027457

/-- `A064169(n+1)*A110566(n+1)` -/
def P14523163714109318902.Spec : Prop :=
  ∀ n, P14523163714109318902.a n = A027457 (n + 1)

end A027457

/-! ## A027457.P1807279356811811113

`A025529(n+1)-(n+1)*A002944(n+1)`
-/

namespace A027457.P1807279356811811113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025529 (n + 1) - (n + 1 : ℤ) * A002944 (n + 1)

end

end A027457.P1807279356811811113

namespace A027457

/-- `A025529(n+1)-(n+1)*A002944(n+1)` -/
def P1807279356811811113.Spec : Prop :=
  ∀ n, P1807279356811811113.a n = A027457 (n + 1)

end A027457

/-! ## A027457.P8961729611770892491

`A025529(n+1)-A051451(A065515(n+1))`
-/

namespace A027457.P8961729611770892491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025529 (n + 1) - A051451 (A065515 (n + 1)).toNat

end

end A027457.P8961729611770892491

namespace A027457

/-- `A025529(n+1)-A051451(A065515(n+1))` -/
def P8961729611770892491.Spec : Prop :=
  ∀ n, P8961729611770892491.a n = A027457 (n + 1)

end A027457

/-! ## A027457.P8668403762049280411

`gcd(A003418(n), A025529(n+1))*A064169(n+1)`
-/

namespace A027457.P8668403762049280411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A003418 n) (A025529 (n + 1)) : ℤ) * A064169 (n + 1)

end

end A027457.P8668403762049280411

namespace A027457

/-- `gcd(A003418(n), A025529(n+1))*A064169(n+1)` -/
def P8668403762049280411.Spec : Prop :=
  ∀ n, P8668403762049280411.a n = A027457 (n + 1)

end A027457

/-! ## A027457.P17953250307436290032

`A001008(n+1)*A110566(n+1)-Δ[A173185(n)]`
-/

namespace A027457.P17953250307436290032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1) * A110566 (n + 1) - (f1 (n + 1) - f1 n)

end

end A027457.P17953250307436290032

namespace A027457

/-- `A001008(n+1)*A110566(n+1)-Δ[A173185(n)]` -/
def P17953250307436290032.Spec : Prop :=
  ∀ n, P17953250307436290032.a n = A027457 (n + 1)

end A027457

/-! ## A027457.P13882885395829360460

`A001008(n+1)*A110566(n+1)-Δ[A236856(n)]`
-/

namespace A027457.P13882885395829360460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1) * A110566 (n + 1) - (f1 (n + 1) - f1 n)

end

end A027457.P13882885395829360460

namespace A027457

/-- `A001008(n+1)*A110566(n+1)-Δ[A236856(n)]` -/
def P13882885395829360460.Spec : Prop :=
  ∀ n, P13882885395829360460.a n = A027457 (n + 1)

end A027457

/-! ## A027457.P13633161171792387527

`(A001008(n+1)-A002805(n+1))*A110566(n+1)`
-/

namespace A027457.P13633161171792387527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001008 (n + 1) - A002805 (n + 1)) * A110566 (n + 1)

end

end A027457.P13633161171792387527

namespace A027457

/-- `(A001008(n+1)-A002805(n+1))*A110566(n+1)` -/
def P13633161171792387527.Spec : Prop :=
  ∀ n, P13633161171792387527.a n = A027457 (n + 1)

end A027457

/-! ## A027457.P17263727221939430123

`A001008(n+1)*A110566(n+1)-A003418(n+1)`
-/

namespace A027457.P17263727221939430123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001008 (n + 1) * A110566 (n + 1) - A003418 (n + 1)

end

end A027457.P17263727221939430123

namespace A027457

/-- `A001008(n+1)*A110566(n+1)-A003418(n+1)` -/
def P17263727221939430123.Spec : Prop :=
  ∀ n, P17263727221939430123.a n = A027457 (n + 1)

end A027457

/-! ## A027457.P17707826483061912465

`A025529(n+1)-A002805(n+1)*A110566(n+1)`
-/

namespace A027457.P17707826483061912465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025529 (n + 1) - A002805 (n + 1) * A110566 (n + 1)

end

end A027457.P17707826483061912465

namespace A027457

/-- `A025529(n+1)-A002805(n+1)*A110566(n+1)` -/
def P17707826483061912465.Spec : Prop :=
  ∀ n, P17707826483061912465.a n = A027457 (n + 1)

end A027457

/-! ## A027457.P6595790121111910279

`A025529(n+1)/A001008(n+1)*A064169(n+1)`
-/

namespace A027457.P6595790121111910279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (n + 1) : ℚ) / (A001008 (n + 1) : ℚ) * (A064169 (n + 1) : ℚ)

end

end A027457.P6595790121111910279

namespace A027457

/-- `A025529(n+1)/A001008(n+1)*A064169(n+1)` -/
def P6595790121111910279.Spec : Prop :=
  ∀ n, P6595790121111910279.a n = (A027457 (n + 1) : ℚ)

end A027457

/-! ## A027457.P12548277250505465851

`A175455(n+1)/A003418(n+1)-A003418(n+1)`
-/

namespace A027457.P12548277250505465851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175455 (n + 1) : ℚ) / (A003418 (n + 1) : ℚ) - (A003418 (n + 1) : ℚ)

end

end A027457.P12548277250505465851

namespace A027457

/-- `A175455(n+1)/A003418(n+1)-A003418(n+1)` -/
def P12548277250505465851.Spec : Prop :=
  ∀ n, P12548277250505465851.a n = (A027457 (n + 1) : ℚ)

end A027457

/-! ## A027457.P9518955902204163721

`A025529(n+1)-A175455(n+1)/A025529(n+1)`
-/

namespace A027457.P9518955902204163721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025529 (n + 1) : ℚ) - (A175455 (n + 1) : ℚ) / (A025529 (n + 1) : ℚ)

end

end A027457.P9518955902204163721

namespace A027457

/-- `A025529(n+1)-A175455(n+1)/A025529(n+1)` -/
def P9518955902204163721.Spec : Prop :=
  ∀ n, P9518955902204163721.a n = (A027457 (n + 1) : ℚ)

end A027457

/-!
# A027458: Third column of A027446.

The programs for A027458, there is no canonical definition to state claims against.
-/

/-! ## A027458.P9857611993140308767

`A027446(∑[n+2]+4)`
-/

namespace A027458.P9857611993140308767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027446 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A027458.P9857611993140308767

/-! ## A027458.P3962681425378991786

`or(A000035(n), A027446(A167614(n+1)))`
-/

namespace A027458.P3962681425378991786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A027446 (A167614 (n + 1)).toNat)

end

end A027458.P3962681425378991786

/-! ## A027458.P10862121168400762731

`or(A011664(n), A027446(A167614(n+1)))`
-/

namespace A027458.P10862121168400762731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011664 n) (A027446 (A167614 (n + 1)).toNat)

end

end A027458.P10862121168400762731

/-! ## A027458.P13061260984102710903

`or(A027446(A167614(n+1)), A097325(n))`
-/

namespace A027458.P13061260984102710903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027446 (A167614 (n + 1)).toNat) (A097325 n)

end

end A027458.P13061260984102710903

/-! ## A027458.P5862417801272332031

`or(A027446(A167614(n+1)), A102683(n))`
-/

namespace A027458.P5862417801272332031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027446 (A167614 (n + 1)).toNat) (A102683 n)

end

end A027458.P5862417801272332031

/-! ## A027458.P10440749438360873181

`or(A027446(A167614(n+1)), A168046(n))`
-/

namespace A027458.P10440749438360873181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027446 (A167614 (n + 1)).toNat) (A168046 n)

end

end A027458.P10440749438360873181

/-! ## A027458.P5735783427222618496

`or(A027446(A167614(n+1)), A168181(n))`
-/

namespace A027458.P5735783427222618496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027446 (A167614 (n + 1)).toNat) (A168181 n)

end

end A027458.P5735783427222618496

/-! ## A027458.P17136554437618508354

`A027446(A167614(n+1))%A264238(n+1)`
-/

namespace A027458.P17136554437618508354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027446 (A167614 (n + 1)).toNat) (A264238 (n + 1))

end

end A027458.P17136554437618508354

/-! ## A027458.P13647055219017473052

`or(A010051(n+1), A027446(A167614(n+1)))`
-/

namespace A027458.P13647055219017473052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (n + 1)) (A027446 (A167614 (n + 1)).toNat)

end

end A027458.P13647055219017473052

/-! ## A027458.P2386843733751691074

`or(A027446(A167614(n+1)), A066829(n+1))`
-/

namespace A027458.P2386843733751691074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027446 (A167614 (n + 1)).toNat) (A066829 (n + 1))

end

end A027458.P2386843733751691074

/-! ## A027458.P304429605517583525

`or(A027446(A167614(n+1)), A215036(n+1))`
-/

namespace A027458.P304429605517583525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027446 (A167614 (n + 1)).toNat) (A215036 (n + 1))

end

end A027458.P304429605517583525

/-! ## A027458.P17455066011721931699

`or(A027446(A167614(n+1)), A286059(n+1))`
-/

namespace A027458.P17455066011721931699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027446 (A167614 (n + 1)).toNat) (A286059 (n + 1))

end

end A027458.P17455066011721931699

/-! ## A027458.P16139003586799793363

`lcm(A027446(A167499(n)+n), A120263(n+1))`
-/

namespace A027458.P16139003586799793363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027446 (A167499 n + (n : ℤ)).toNat) (A120263 (n + 1))

end

end A027458.P16139003586799793363

/-!
# A027459: Numerator of Sum_{k=1..n} H(k)/k, where H(k) is k-th harmonic number.

The programs for A027459, there is no canonical definition to state claims against.
-/

/-! ## A027459.P13808260067259165565

`A329108(n+1)/gcd(A007407(n+1), A329108(n+1))`
-/

namespace A027459.P13808260067259165565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329108 (n + 1) : ℚ) / (Int.gcd (A007407 (n + 1)) (A329108 (n + 1)) : ℚ)

end

end A027459.P13808260067259165565

/-! ## A027459.P4080873447758581600

`A329108(n+1)^gcd(13, n)`
-/

namespace A027459.P4080873447758581600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329108 (n + 1) ^ Nat.gcd 13 n

end

end A027459.P4080873447758581600

/-! ## A027459.P16782228013945865609

`record[A027447(A085736(n+1))]`
-/

namespace A027459.P16782228013945865609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027447 (A085736 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027459.P16782228013945865609

/-! ## A027459.P7261305268818322103

`record[A027447(A115180(n+1))]`
-/

namespace A027459.P7261305268818322103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027447 (A115180 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027459.P7261305268818322103

/-! ## A027459.P9201459762096661872

`record[A027447(A175857(n+1))]`
-/

namespace A027459.P9201459762096661872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027447 (A175857 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027459.P9201459762096661872

/-!
# A027460: Second column of A027447.

The programs for A027460, there is no canonical definition to state claims against.
-/

/-! ## A027460.P15626798599026266609

`A027447(∑[n+1]+2)`
-/

namespace A027460.P15626798599026266609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027447 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A027460.P15626798599026266609

/-! ## A027460.P17481304810999308875

`record[A027447(A080036(n))]`
-/

namespace A027460.P17481304810999308875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027447 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027460.P17481304810999308875

/-! ## A027460.P1476565969689781268

`record[gcd(A027447(n+1), A293051(n))]`
-/

namespace A027460.P1476565969689781268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027447 (n + 1)) (A293051 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027460.P1476565969689781268

/-! ## A027460.P9551748489393445915

`record[and(A027447(n+1), A293305(n))]`
-/

namespace A027460.P9551748489393445915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027447 (n + 1)) (A293305 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027460.P9551748489393445915

/-! ## A027460.P13488560858136639561

`record[or(A027447(n+1), A103452(n))]`
-/

namespace A027460.P13488560858136639561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027447 (n + 1)) (A103452 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027460.P13488560858136639561

/-!
# A027461: Third column of A027447.

The programs for A027461, there is no canonical definition to state claims against.
-/

/-! ## A027461.P17588413295725133342

`A027447(∑[n+2]+4)`
-/

namespace A027461.P17588413295725133342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027447 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A027461.P17588413295725133342

/-! ## A027461.P1866614686247510971

`or(A000035(n), A027447(A167614(n+1)))`
-/

namespace A027461.P1866614686247510971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A027447 (A167614 (n + 1)).toNat)

end

end A027461.P1866614686247510971

/-! ## A027461.P8501980837096487392

`or(A027447(A167614(n+1)), A097325(n))`
-/

namespace A027461.P8501980837096487392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027447 (A167614 (n + 1)).toNat) (A097325 n)

end

end A027461.P8501980837096487392

/-! ## A027461.P11021175069879943214

`or(A010051(n+1), A027447(A167614(n+1)))`
-/

namespace A027461.P11021175069879943214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (n + 1)) (A027447 (A167614 (n + 1)).toNat)

end

end A027461.P11021175069879943214

/-! ## A027461.P6342713549678066905

`or(A027447(A167614(n+1)), A147873(n+1))`
-/

namespace A027461.P6342713549678066905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027447 (A167614 (n + 1)).toNat) (A147873 (n + 1))

end

end A027461.P6342713549678066905

/-!
# A027462: a(n) is the numerator of (-1/6) * Integral_{x=0..1} x^n * log^3(1-x) dx.

The programs for A027462, there is no canonical definition to state claims against.
-/

/-! ## A027462.P9369003103607641806

`A257894(A141214(n)+7)`
-/

namespace A027462.P9369003103607641806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257894 (A141214 n + 7).toNat

end

end A027462.P9369003103607641806

/-! ## A027462.P6775355364716335284

`A257894(A052905(n)+9)`
-/

namespace A027462.P6775355364716335284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257894 (A052905 n + 9).toNat

end

end A027462.P6775355364716335284

/-! ## A027462.P1860104523360453526

`A257894(A055999(n)+10)`
-/

namespace A027462.P1860104523360453526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257894 (A055999 n + 10).toNat

end

end A027462.P1860104523360453526

/-!
# A027463: Second column of A027448.

The programs for A027463, there is no canonical definition to state claims against.
-/

/-! ## A027463.P61005206027721886

`A027448(∑[n+1]+2)`
-/

namespace A027463.P61005206027721886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027448 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A027463.P61005206027721886

/-! ## A027463.P1956666236362456677

`record[A027448(A080036(n))]`
-/

namespace A027463.P1956666236362456677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027448 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027463.P1956666236362456677

/-! ## A027463.P14790979355324713489

`record[gcd(A027448(n+1), A039991(n))]`
-/

namespace A027463.P14790979355324713489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027448 (n + 1)) (A039991 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027463.P14790979355324713489

/-! ## A027463.P2702252858871808755

`record[and(A027448(n+1), A287325(n))]`
-/

namespace A027463.P2702252858871808755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027448 (n + 1)) (A287325 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027463.P2702252858871808755

/-! ## A027463.P7648308007279723877

`record[A027448(record[A194916(n+1)])]`
-/

namespace A027463.P7648308007279723877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194916 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027448 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027463.P7648308007279723877

/-!
# A027464: Third column of A027448.

The programs for A027464, there is no canonical definition to state claims against.
-/

/-! ## A027464.P14242076253423076827

`A027448(∑[n+2]+4)`
-/

namespace A027464.P14242076253423076827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027448 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A027464.P14242076253423076827

/-! ## A027464.P2662085630904037661

`xor(2, xor(2, A027448(A167614(n+1))))`
-/

namespace A027464.P2662085630904037661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor 2 (A027448 (A167614 (n + 1)).toNat))

end

end A027464.P2662085630904037661

/-! ## A027464.P6108468682373601193

`lcm(A027448(A167614(n+1)), A057077(n))`
-/

namespace A027464.P6108468682373601193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027448 (A167614 (n + 1)).toNat) (A057077 n)

end

end A027464.P6108468682373601193

/-! ## A027464.P9310130720134357117

`or(A027448(A167614(n+1)), A057427(n))`
-/

namespace A027464.P9310130720134357117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027448 (A167614 (n + 1)).toNat) (A057427 n)

end

end A027464.P9310130720134357117

/-! ## A027464.P15853543182170044346

`or(A027448(A167614(n+1)), A095076(n))`
-/

namespace A027464.P15853543182170044346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027448 (A167614 (n + 1)).toNat) (A095076 n)

end

end A027464.P15853543182170044346

/-! ## A027464.P13472702265390229193

`or(A027448(A167614(n+1)), A178226(n))`
-/

namespace A027464.P13472702265390229193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027448 (A167614 (n + 1)).toNat) (A178226 n)

end

end A027464.P13472702265390229193

/-! ## A027464.P12863198892338097016

`A033999(n)²*A027448(A167614(n+1))`
-/

namespace A027464.P12863198892338097016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A027448 (A167614 (n + 1)).toNat

end

end A027464.P12863198892338097016

/-! ## A027464.P2231644274838889842

`A027448(A167614(n+1))*A057979(2*n)`
-/

namespace A027464.P2231644274838889842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027448 (A167614 (n + 1)).toNat * A057979 (2 * n)

end

end A027464.P2231644274838889842

/-! ## A027464.P7973981700668815533

`A007318(C(3, n))*A027448(A167614(n+1))`
-/

namespace A027464.P7973981700668815533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A027448 (A167614 (n + 1)).toNat

end

end A027464.P7973981700668815533

/-! ## A027464.P2867194388303989966

`A014963(6*(n+1))*A027448(A167614(n+1))`
-/

namespace A027464.P2867194388303989966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A027448 (A167614 (n + 1)).toNat

end

end A027464.P2867194388303989966

/-!
# A027465: Cube of lower triangular normalized binomial matrix.

The programs for A027465, the canonical program `A027465.P7818449600311689091` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027465 has offset 0).

The definition of A027465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027465.P15614376083326724412

`abs(A164942(n))`
-/

namespace A027465.P15614376083326724412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A164942 n|

end

end A027465.P15614376083326724412

namespace A027465

/-- `abs(A164942(n))` -/
def P15614376083326724412.Spec : Prop :=
  ∀ n, P15614376083326724412.a n = A027465 n

end A027465

/-! ## A027465.P7818449600311689091

`A007318(n)*A140303(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A027465

/-- `A007318(n)*A140303(n)` -/
def P7818449600311689091.Spec : Prop :=
  ∀ n, P7818449600311689091.a n = A027465 n

theorem P7818449600311689091.correct : P7818449600311689091.Spec := by
  intro n
  simp only [A027465]

end A027465

/-! ## A027465.P14008765614018506316

`A038220(n)/A059268(n)`
-/

namespace A027465.P14008765614018506316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038220 n : ℚ) / (A059268 n : ℚ)

end

end A027465.P14008765614018506316

namespace A027465

/-- `A038220(n)/A059268(n)` -/
def P14008765614018506316.Spec : Prop :=
  ∀ n, P14008765614018506316.a n = (A027465 n : ℚ)

end A027465

/-! ## A027465.P1276255254054708926

`gcd(A000038(n), A164942(n))`
-/

namespace A027465.P1276255254054708926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A164942 n)

end

end A027465.P1276255254054708926

namespace A027465

/-- `gcd(A000038(n), A164942(n))` -/
def P1276255254054708926.Spec : Prop :=
  ∀ n, (P1276255254054708926.a n : ℤ) = A027465 n

end A027465

/-! ## A027465.P15014624756432344318

`lcm(A007318(n), A164942(n))`
-/

namespace A027465.P15014624756432344318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A164942 n)

end

end A027465.P15014624756432344318

namespace A027465

/-- `lcm(A007318(n), A164942(n))` -/
def P15014624756432344318.Spec : Prop :=
  ∀ n, (P15014624756432344318.a n : ℤ) = A027465 n

end A027465

/-! ## A027465.P4775362932440073040

`2*A193673(n)-A007318(n)`
-/

namespace A027465.P4775362932440073040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193673 n - A007318 n

end

end A027465.P4775362932440073040

namespace A027465

/-- `2*A193673(n)-A007318(n)` -/
def P4775362932440073040.Spec : Prop :=
  ∀ n, P4775362932440073040.a n = A027465 n

end A027465

/-! ## A027465.P17618842272392341951

`3^A025581(n)*A007318(n)`
-/

namespace A027465.P17618842272392341951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A025581 n : ℤ) * (A007318 n : ℚ)

end

end A027465.P17618842272392341951

namespace A027465

/-- `3^A025581(n)*A007318(n)` -/
def P17618842272392341951.Spec : Prop :=
  ∀ n, P17618842272392341951.a n = (A027465 n : ℚ)

end A027465

/-! ## A027465.P15083025302617858777

`3^(A004736(n+1)-1)*A007318(n)`
-/

namespace A027465.P15083025302617858777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A004736 (n + 1) - 1 : ℤ) * (A007318 n : ℚ)

end

end A027465.P15083025302617858777

namespace A027465

/-- `3^(A004736(n+1)-1)*A007318(n)` -/
def P15083025302617858777.Spec : Prop :=
  ∀ n, P15083025302617858777.a n = (A027465 n : ℚ)

end A027465

/-! ## A027465.P11184560362071593599

`A007318(n)*A000244(A025581(n))`
-/

namespace A027465.P11184560362071593599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000244 (A025581 n).toNat

end

end A027465.P11184560362071593599

namespace A027465

/-- `A007318(n)*A000244(A025581(n))` -/
def P11184560362071593599.Spec : Prop :=
  ∀ n, P11184560362071593599.a n = A027465 n

end A027465

/-! ## A027465.P2191713815226718674

`A013609(n)/A013611(n)*A038220(n)`
-/

namespace A027465.P2191713815226718674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A013611 n : ℚ) * (A038220 n : ℚ)

end

end A027465.P2191713815226718674

namespace A027465

/-- `A013609(n)/A013611(n)*A038220(n)` -/
def P2191713815226718674.Spec : Prop :=
  ∀ n, P2191713815226718674.a n = (A027465 n : ℚ)

end A027465

/-! ## A027465.P13143238279971162335

`A038207(n)/A130321(n)*A140303(n)`
-/

namespace A027465.P13143238279971162335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (A130321 n : ℚ) * (A140303 n : ℚ)

end

end A027465.P13143238279971162335

namespace A027465

/-- `A038207(n)/A130321(n)*A140303(n)` -/
def P13143238279971162335.Spec : Prop :=
  ∀ n, P13143238279971162335.a n = (A027465 n : ℚ)

end A027465

/-! ## A027465.P1806355791840357270

`lcm(A020985(n)*A164942(n), A020985(n))`
-/

namespace A027465.P1806355791840357270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n * A164942 n) (A020985 n)

end

end A027465.P1806355791840357270

namespace A027465

/-- `lcm(A020985(n)*A164942(n), A020985(n))` -/
def P1806355791840357270.Spec : Prop :=
  ∀ n, (P1806355791840357270.a n : ℤ) = A027465 n

end A027465

/-! ## A027465.P2485755600679843234

`ceil(A134059(n)/3)*A000244(A025581(n))`
-/

namespace A027465.P2485755600679843234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A134059 n : ℚ) / 3⌉ * A000244 (A025581 n).toNat

end

end A027465.P2485755600679843234

namespace A027465

/-- `ceil(A134059(n)/3)*A000244(A025581(n))` -/
def P2485755600679843234.Spec : Prop :=
  ∀ n, P2485755600679843234.a n = A027465 n

end A027465

/-! ## A027465.P8318979460936947593

`(A285118(n)+A285116(n))*A000244(A025581(n))`
-/

namespace A027465.P8318979460936947593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285118 n + A285116 n) * A000244 (A025581 n).toNat

end

end A027465.P8318979460936947593

namespace A027465

/-- `(A285118(n)+A285116(n))*A000244(A025581(n))` -/
def P8318979460936947593.Spec : Prop :=
  ∀ n, P8318979460936947593.a n = A027465 n

theorem P8318979460936947593.correct : P8318979460936947593.Spec := by
  intro n
  simp only [A027465, Nat.add_sub_cancel, A027465.P8318979460936947593.a, A027465.P7818449600311689091.a, A000244, A000244.P17162167222172810417.a, A007318, A007318.P302227728145965961.a, A025581, A025581.P420762180635059694.a, A140303, A140303.P5150997837901414989.a, A285116, A285116.P11562393058970987769.a, A285118, A285118.P16406240334695016361.a, A004736, A004736.P10337537277358081527.a, A097805, A097805.P1755176267250853107.a, A259525, A259525.P15603515225238104540.f1, A259525.P15603515225238104540.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003056, A003056.P5318256527314048597.a, A074909, A074909.P6707642907239843837.f1, A074909.P6707642907239843837.a, A002262, A002262.P12129691700837801527.a, A010054, A010054.P18347828677204923252.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A027465

/-! ## A027465.P4064113034252130781

`A013610(A061579(n))`
-/

namespace A027465.P4064113034252130781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (A061579 n).toNat

end

end A027465.P4064113034252130781

namespace A027465

/-- `A013610(A061579(n))` -/
def P4064113034252130781.Spec : Prop :=
  ∀ n, P4064113034252130781.a n = A027465 n

end A027465

/-! ## A027465.P14636401527485322594

`A013610(A038722(n+1)-1)`
-/

namespace A027465.P14636401527485322594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (A038722 (n + 1) - 1).toNat

end

end A027465.P14636401527485322594

namespace A027465

/-- `A013610(A038722(n+1)-1)` -/
def P14636401527485322594.Spec : Prop :=
  ∀ n, P14636401527485322594.a n = A027465 n

end A027465

/-! ## A027465.P6729625140022054328

`A013610(A038722(n+2))`
-/

namespace A027465.P6729625140022054328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (A038722 (n + 2)).toNat

end

end A027465.P6729625140022054328

namespace A027465

/-- `A013610(A038722(n+2))` -/
def P6729625140022054328.Spec : Prop :=
  ∀ n, P6729625140022054328.a n = A027465 n

end A027465

/-! ## A027465.P9796825104665306883

`gcd(A038220(n), A038221(n))`
-/

namespace A027465.P9796825104665306883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038220 n) (A038221 n)

end

end A027465.P9796825104665306883

namespace A027465

/-- `gcd(A038220(n), A038221(n))` -/
def P9796825104665306883.Spec : Prop :=
  ∀ n, (P9796825104665306883.a n : ℤ) = A027465 n

end A027465

/-! ## A027465.P11417603172415873028

`A038222(n)/A059268(n)²`
-/

namespace A027465.P11417603172415873028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038222 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A027465.P11417603172415873028

namespace A027465

/-- `A038222(n)/A059268(n)²` -/
def P11417603172415873028.Spec : Prop :=
  ∀ n, P11417603172415873028.a n = (A027465 n : ℚ)

end A027465

/-! ## A027465.P9111115636347822379

`A038255(n)/A130321(n)`
-/

namespace A027465.P9111115636347822379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038255 n : ℚ) / (A130321 n : ℚ)

end

end A027465.P9111115636347822379

namespace A027465

/-- `A038255(n)/A130321(n)` -/
def P9111115636347822379.Spec : Prop :=
  ∀ n, P9111115636347822379.a n = (A027465 n : ℚ)

end A027465

/-!
# A027466: Triangle whose (i,j)-th entry is binomial(i,j)*7^(i-j).

The programs for A027466, the canonical program `A027466.P7234331509965649852` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027466 has offset 0).

The definition of A027466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027466.P7234331509965649852

`A013614(A061579(n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A027466

/-- `A013614(A061579(n))` -/
def P7234331509965649852.Spec : Prop :=
  ∀ n, P7234331509965649852.a n = A027466 n

theorem P7234331509965649852.correct : P7234331509965649852.Spec := by
  intro n
  simp only [A027466]

end A027466

/-! ## A027466.P3768939894929745756

`A013614(A038722(n+1)-1)`
-/

namespace A027466.P3768939894929745756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013614 (A038722 (n + 1) - 1).toNat

end

end A027466.P3768939894929745756

namespace A027466

/-- `A013614(A038722(n+1)-1)` -/
def P3768939894929745756.Spec : Prop :=
  ∀ n, P3768939894929745756.a n = A027466 n

end A027466

/-! ## A027466.P1125939973282103322

`A013614(A038722(n+2))`
-/

namespace A027466.P1125939973282103322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013614 (A038722 (n + 2)).toNat

end

end A027466.P1125939973282103322

namespace A027466

/-- `A013614(A038722(n+2))` -/
def P1125939973282103322.Spec : Prop :=
  ∀ n, P1125939973282103322.a n = A027466 n

end A027466

/-! ## A027466.P4524930729862208721

`A038268(n)/A059268(n)`
-/

namespace A027466.P4524930729862208721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038268 n : ℚ) / (A059268 n : ℚ)

end

end A027466.P4524930729862208721

namespace A027466

/-- `A038268(n)/A059268(n)` -/
def P4524930729862208721.Spec : Prop :=
  ∀ n, P4524930729862208721.a n = (A027466 n : ℚ)

end A027466

/-! ## A027466.P3016629117215656990

`gcd(A038268(n), A038269(n))`
-/

namespace A027466.P3016629117215656990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038268 n) (A038269 n)

end

end A027466.P3016629117215656990

namespace A027466

/-- `gcd(A038268(n), A038269(n))` -/
def P3016629117215656990.Spec : Prop :=
  ∀ n, (P3016629117215656990.a n : ℤ) = A027466 n

end A027466

/-! ## A027466.P9650636216253226869

`A176348(n)/A176346(n)*7^A025581(n)`
-/

namespace A027466.P9650636216253226869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176348 n : ℚ) / (A176346 n : ℚ) * (7 : ℚ) ^ (A025581 n : ℤ)

end

end A027466.P9650636216253226869

namespace A027466

/-- `A176348(n)/A176346(n)*7^A025581(n)` -/
def P9650636216253226869.Spec : Prop :=
  ∀ n, P9650636216253226869.a n = (A027466 n : ℚ)

end A027466

/-! ## A027466.P5659268288974074773

`A038270(n)/A059268(n)²`
-/

namespace A027466.P5659268288974074773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038270 n : ℚ) / (A059268 n ^ 2 : ℚ)

end

end A027466.P5659268288974074773

namespace A027466

/-- `A038270(n)/A059268(n)²` -/
def P5659268288974074773.Spec : Prop :=
  ∀ n, P5659268288974074773.a n = (A027466 n : ℚ)

end A027466

/-! ## A027466.P11823591748275004086

`A038268(n)/A038270(n)*A038268(n)`
-/

namespace A027466.P11823591748275004086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038268 n : ℚ) / (A038270 n : ℚ) * (A038268 n : ℚ)

end

end A027466.P11823591748275004086

namespace A027466

/-- `A038268(n)/A038270(n)*A038268(n)` -/
def P11823591748275004086.Spec : Prop :=
  ∀ n, P11823591748275004086.a n = (A027466 n : ℚ)

end A027466

/-! ## A027466.P6096777846846481034

`gcd(A038270(n), A038271(n))`
-/

namespace A027466.P6096777846846481034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038270 n) (A038271 n)

end

end A027466.P6096777846846481034

namespace A027466

/-- `gcd(A038270(n), A038271(n))` -/
def P6096777846846481034.Spec : Prop :=
  ∀ n, (P6096777846846481034.a n : ℤ) = A027466 n

end A027466

/-! ## A027466.P16194200338483459428

`gcd(A038272(n), A038273(n))`
-/

namespace A027466.P16194200338483459428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038272 n) (A038273 n)

end

end A027466.P16194200338483459428

namespace A027466

/-- `gcd(A038272(n), A038273(n))` -/
def P16194200338483459428.Spec : Prop :=
  ∀ n, (P16194200338483459428.a n : ℤ) = A027466 n

end A027466

/-! ## A027466.P2333898286101372294

`A038274(n)/(A059268(n)²*A059268(n))`
-/

namespace A027466.P2333898286101372294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038274 n : ℚ) / (A059268 n ^ 2 * A059268 n : ℚ)

end

end A027466.P2333898286101372294

namespace A027466

/-- `A038274(n)/(A059268(n)²*A059268(n))` -/
def P2333898286101372294.Spec : Prop :=
  ∀ n, P2333898286101372294.a n = (A027466 n : ℚ)

end A027466

/-! ## A027466.P7111621920429375127

`A147716(n)/A130321(n)`
-/

namespace A027466.P7111621920429375127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147716 n : ℚ) / (A130321 n : ℚ)

end

end A027466.P7111621920429375127

namespace A027466

/-- `A147716(n)/A130321(n)` -/
def P7111621920429375127.Spec : Prop :=
  ∀ n, P7111621920429375127.a n = (A027466 n : ℚ)

end A027466

/-! ## A027466.P1909792960437389302

`A007318(n)/A038207(n)*A147716(n)`
-/

namespace A027466.P1909792960437389302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A038207 n : ℚ) * (A147716 n : ℚ)

end

end A027466.P1909792960437389302

namespace A027466

/-- `A007318(n)/A038207(n)*A147716(n)` -/
def P1909792960437389302.Spec : Prop :=
  ∀ n, P1909792960437389302.a n = (A027466 n : ℚ)

end A027466

/-! ## A027466.P3750526010829790136

`A027465(n)/A038255(n)*A147716(n)`
-/

namespace A027466.P3750526010829790136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027465 n : ℚ) / (A038255 n : ℚ) * (A147716 n : ℚ)

end

end A027466.P3750526010829790136

namespace A027466

/-- `A027465(n)/A038255(n)*A147716(n)` -/
def P3750526010829790136.Spec : Prop :=
  ∀ n, P3750526010829790136.a n = (A027466 n : ℚ)

end A027466

/-! ## A027466.P537832201293105659

`A038207(n)/A038231(n)*A147716(n)`
-/

namespace A027466.P537832201293105659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038207 n : ℚ) / (A038231 n : ℚ) * (A147716 n : ℚ)

end

end A027466.P537832201293105659

namespace A027466

/-- `A038207(n)/A038231(n)*A147716(n)` -/
def P537832201293105659.Spec : Prop :=
  ∀ n, P537832201293105659.a n = (A027466 n : ℚ)

end A027466

/-! ## A027466.P6395909730611945738

`A038243(n)/A038303(n)*A147716(n)`
-/

namespace A027466.P6395909730611945738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038243 n : ℚ) / (A038303 n : ℚ) * (A147716 n : ℚ)

end

end A027466.P6395909730611945738

namespace A027466

/-- `A038243(n)/A038303(n)*A147716(n)` -/
def P6395909730611945738.Spec : Prop :=
  ∀ n, P6395909730611945738.a n = (A027466 n : ℚ)

end A027466

/-! ## A027466.P2542475015319095573

`gcd(A038274(n), A038275(n))`
-/

namespace A027466.P2542475015319095573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038274 n) (A038275 n)

end

end A027466.P2542475015319095573

namespace A027466

/-- `gcd(A038274(n), A038275(n))` -/
def P2542475015319095573.Spec : Prop :=
  ∀ n, (P2542475015319095573.a n : ℤ) = A027466 n

end A027466

/-! ## A027466.P8680032019282801371

`gcd(A038276(n), A038277(n))`
-/

namespace A027466.P8680032019282801371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038276 n) (A038277 n)

end

end A027466.P8680032019282801371

namespace A027466

/-- `gcd(A038276(n), A038277(n))` -/
def P8680032019282801371.Spec : Prop :=
  ∀ n, (P8680032019282801371.a n : ℤ) = A027466 n

end A027466

/-! ## A027466.P2635058166585209192

`A218017(n)/A233543(n)`
-/

namespace A027466.P2635058166585209192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218017 n : ℚ) / (A233543 n : ℚ)

end

end A027466.P2635058166585209192

namespace A027466

/-- `A218017(n)/A233543(n)` -/
def P2635058166585209192.Spec : Prop :=
  ∀ n, P2635058166585209192.a n = (A027466 n : ℚ)

end A027466

/-! ## A027466.P1797074122733856261

`A038268(n)²/A038270(n)`
-/

namespace A027466.P1797074122733856261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038268 n ^ 2 : ℚ) / (A038270 n : ℚ)

end

end A027466.P1797074122733856261

namespace A027466

/-- `A038268(n)²/A038270(n)` -/
def P1797074122733856261.Spec : Prop :=
  ∀ n, P1797074122733856261.a n = (A027466 n : ℚ)

end A027466

/-!
# A027467: Triangle whose (n,k)-th entry is 15^(n-k)*binomial(n,k).

The programs for A027467, the canonical program `A027467.P242322843362571297` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027467 has offset 0).

The definition of A027467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3573 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A027467.P242322843362571297

`A038243(n)*A140303(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A027467

/-- `A038243(n)*A140303(n)` -/
def P242322843362571297.Spec : Prop :=
  ∀ n, P242322843362571297.a n = A027467 n

theorem P242322843362571297.correct : P242322843362571297.Spec := by
  intro n
  simp only [A027467]

end A027467

/-! ## A027467.P7354731486772367744

`lcm(A027465(n), A038243(n))`
-/

namespace A027467.P7354731486772367744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027465 n) (A038243 n)

end

end A027467.P7354731486772367744

namespace A027467

/-- `lcm(A027465(n), A038243(n))` -/
def P7354731486772367744.Spec : Prop :=
  ∀ n, (P7354731486772367744.a n : ℤ) = A027467 n

end A027467

/-! ## A027467.P4957460873809857309

`A027465(n)/A007318(n)*A038243(n)`
-/

namespace A027467.P4957460873809857309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027465 n : ℚ) / (A007318 n : ℚ) * (A038243 n : ℚ)

end

end A027467.P4957460873809857309

namespace A027467

/-- `A027465(n)/A007318(n)*A038243(n)` -/
def P4957460873809857309.Spec : Prop :=
  ∀ n, P4957460873809857309.a n = (A027467 n : ℚ)

end A027467

/-! ## A027467.P9849722196054646442

`A027465(n)/A038207(n)*A038303(n)`
-/

namespace A027467.P9849722196054646442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027465 n : ℚ) / (A038207 n : ℚ) * (A038303 n : ℚ)

end

end A027467.P9849722196054646442

namespace A027467

/-- `A027465(n)/A038207(n)*A038303(n)` -/
def P9849722196054646442.Spec : Prop :=
  ∀ n, P9849722196054646442.a n = (A027467 n : ℚ)

end A027467

/-! ## A027467.P2288653141357331156

`A038243(n)/A027465(n)*A038291(n)`
-/

namespace A027467.P2288653141357331156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038243 n : ℚ) / (A027465 n : ℚ) * (A038291 n : ℚ)

end

end A027467.P2288653141357331156

namespace A027467

/-- `A038243(n)/A027465(n)*A038291(n)` -/
def P2288653141357331156.Spec : Prop :=
  ∀ n, P2288653141357331156.a n = (A027467 n : ℚ)

end A027467

/-! ## A027467.P4943451370575389547

`A038243(n)/A038207(n)*A038255(n)`
-/

namespace A027467.P4943451370575389547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038243 n : ℚ) / (A038207 n : ℚ) * (A038255 n : ℚ)

end

end A027467.P4943451370575389547

namespace A027467

/-- `A038243(n)/A038207(n)*A038255(n)` -/
def P4943451370575389547.Spec : Prop :=
  ∀ n, P4943451370575389547.a n = (A027467 n : ℚ)

end A027467

/-!
# A027468: 9 times the triangular numbers A000217.

The programs for A027468, the canonical program `A027468.P13680370174338496106` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027468 has offset 0).

The definition of A027468 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027468.P16750156415943654939

`9*C(n+1, 2)`
-/

namespace A027468.P16750156415943654939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose (n + 1) 2

end

end A027468.P16750156415943654939

namespace A027468

/-- `9*C(n+1, 2)` -/
def P16750156415943654939.Spec : Prop :=
  ∀ n, (P16750156415943654939.a n : ℤ) = A027468 n

end A027468

/-! ## A027468.P2436973267362931846

`9/2*n*(n+1)`
-/

namespace A027468.P2436973267362931846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) / 2 * (n : ℚ) * (n + 1 : ℚ)

end

end A027468.P2436973267362931846

namespace A027468

/-- `9/2*n*(n+1)` -/
def P2436973267362931846.Spec : Prop :=
  ∀ n, P2436973267362931846.a n = (A027468 n : ℚ)

theorem P2436973267362931846.correct : P2436973267362931846.Spec := by
  intro n
  induction n with
  | zero => simp [A027468, A027468.P2436973267362931846.a, A027468.P13680370174338496106.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A027468, Nat.add_sub_cancel, A027468.P2436973267362931846.a, A027468.P13680370174338496106.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A027468

/-! ## A027468.P13680370174338496106

`a(n-1)+9*n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027468

/-- `a(n-1)+9*n` -/
def P13680370174338496106.Spec : Prop :=
  ∀ n, (P13680370174338496106.a n : ℤ) = A027468 n

theorem P13680370174338496106.correct : P13680370174338496106.Spec := by
  intro n
  simp only [A027468]

end A027468

/-! ## A027468.P5639045066797876201

`A060544(n+1)-1`
-/

namespace A027468.P5639045066797876201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1) - 1

end

end A027468.P5639045066797876201

namespace A027468

/-- `A060544(n+1)-1` -/
def P5639045066797876201.Spec : Prop :=
  ∀ n, P5639045066797876201.a n = A027468 n

end A027468

/-! ## A027468.P11209584073453416156

`A218470(9*n+8)`
-/

namespace A027468.P11209584073453416156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218470 (9 * n + 8)

end

end A027468.P11209584073453416156

namespace A027468

/-- `A218470(9*n+8)` -/
def P11209584073453416156.Spec : Prop :=
  ∀ n, P11209584073453416156.a n = A027468 n

end A027468

/-! ## A027468.P122475940303274630

`∑[n]/tan(acot(9))`
-/

namespace A027468.P122475940303274630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.tan (SequenceMachineLib.acot (9 : ℝ))

end

end A027468.P122475940303274630

namespace A027468

/-- `∑[n]/tan(acot(9))` -/
def P122475940303274630.Spec : Prop :=
  ∀ n, P122475940303274630.a n = (A027468 n : ℝ)

end A027468

/-! ## A027468.P17374537184408973656

`∑[n]/cot(atan(9))`
-/

namespace A027468.P17374537184408973656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / Real.cot (Real.arctan (9 : ℝ))

end

end A027468.P17374537184408973656

namespace A027468

/-- `∑[n]/cot(atan(9))` -/
def P17374537184408973656.Spec : Prop :=
  ∀ n, P17374537184408973656.a n = (A027468 n : ℝ)

end A027468

/-! ## A027468.P6521488049108928507

`∑[a(n-1)+9]` with `a(0)=0`
-/

namespace A027468.P6521488049108928507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027468.P6521488049108928507

namespace A027468

/-- `∑[a(n-1)+9]` -/
def P6521488049108928507.Spec : Prop :=
  ∀ n, (P6521488049108928507.a n : ℤ) = A027468 n

end A027468

/-! ## A027468.P16344548980803444999

`∑[ogf(9x/(1-2x+x^2))]`
-/

namespace A027468.P16344548980803444999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027468.P16344548980803444999

namespace A027468

/-- `∑[ogf(9x/(1-2x+x^2))]` -/
def P16344548980803444999.Spec : Prop :=
  ∀ n, P16344548980803444999.a n = A027468 n

end A027468

/-! ## A027468.P15072427972235438112

`ogf(9x/(1-3x+3x^2-x^3))`
-/

namespace A027468.P15072427972235438112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9] [1, -3, 3, -1] n

end

end A027468.P15072427972235438112

namespace A027468

/-- `ogf(9x/(1-3x+3x^2-x^3))` -/
def P15072427972235438112.Spec : Prop :=
  ∀ n, P15072427972235438112.a n = A027468 n

end A027468

/-! ## A027468.P16389949035390286884

`-∑[a(n-1)-9]` with `a(0)=0`
-/

namespace A027468.P16389949035390286884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027468.P16389949035390286884

namespace A027468

/-- `-∑[a(n-1)-9]` -/
def P16389949035390286884.Spec : Prop :=
  ∀ n, P16389949035390286884.a n = A027468 n

end A027468

/-! ## A027468.P9526800268654773566

`C(n+1, 2)/(1/3)²`
-/

namespace A027468.P9526800268654773566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 : ℚ) / ((1 : ℚ) / 3) ^ 2

end

end A027468.P9526800268654773566

namespace A027468

/-- `C(n+1, 2)/(1/3)²` -/
def P9526800268654773566.Spec : Prop :=
  ∀ n, P9526800268654773566.a n = (A027468 n : ℚ)

end A027468

/-! ## A027468.P4046029174444903166

`(3*n)²-a(n-1)` with `a(0)=0`
-/

namespace A027468.P4046029174444903166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((3 * n) ^ 2 : ℤ) - a (n - 1)

end

end A027468.P4046029174444903166

namespace A027468

/-- `(3*n)²-a(n-1)` -/
def P4046029174444903166.Spec : Prop :=
  ∀ n, P4046029174444903166.a n = A027468 n

end A027468

/-! ## A027468.P8041461984025045097

`C(n+2+n+n, 2)-1`
-/

namespace A027468.P8041461984025045097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2 + n + n) 2 : ℤ) - 1

end

end A027468.P8041461984025045097

namespace A027468

/-- `C(n+2+n+n, 2)-1` -/
def P8041461984025045097.Spec : Prop :=
  ∀ n, P8041461984025045097.a n = A027468 n

end A027468

/-! ## A027468.P16155669273154011246

`10*n-(n-a(n-1))` with `a(0)=0`
-/

namespace A027468.P16155669273154011246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (10 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A027468.P16155669273154011246

namespace A027468

/-- `10*n-(n-a(n-1))` -/
def P16155669273154011246.Spec : Prop :=
  ∀ n, P16155669273154011246.a n = A027468 n

end A027468

/-! ## A027468.P14439955364393661748

`∑[n]-∑[a(n-1)-8]` with `a(0)=0`
-/

namespace A027468.P14439955364393661748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A027468.P14439955364393661748

namespace A027468

/-- `∑[n]-∑[a(n-1)-8]` -/
def P14439955364393661748.Spec : Prop :=
  ∀ n, P14439955364393661748.a n = A027468 n

end A027468

/-! ## A027468.P15239427366918347165

`floor(a(n-1)+n/(1/3)²)` with `a(0)=0`
-/

namespace A027468.P15239427366918347165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) + (n : ℚ) / ((1 : ℚ) / 3) ^ 2⌋

end

end A027468.P15239427366918347165

namespace A027468

/-- `floor(a(n-1)+n/(1/3)²)` -/
def P15239427366918347165.Spec : Prop :=
  ∀ n, P15239427366918347165.a n = A027468 n

end A027468

/-! ## A027468.P10399034484682848820

`∑[record[(n+1)/dr(n+1)]]-(n+1)`
-/

namespace A027468.P10399034484682848820
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (SequenceMachineLib.digitalRoot (n + 1 : ℤ) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℚ)

end

end A027468.P10399034484682848820

namespace A027468

/-- `∑[record[(n+1)/dr(n+1)]]-(n+1)` -/
def P10399034484682848820.Spec : Prop :=
  ∀ n, P10399034484682848820.a n = (A027468 n : ℚ)

end A027468

/-! ## A027468.P8112420195320974487

`A062123(n)-2`
-/

namespace A027468.P8112420195320974487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062123 n - 2

end

end A027468.P8112420195320974487

namespace A027468

/-- `A062123(n)-2` -/
def P8112420195320974487.Spec : Prop :=
  ∀ n, P8112420195320974487.a n = A027468 n

end A027468

/-! ## A027468.P17972208748097891517

`A164013(n)-3`
-/

namespace A027468.P17972208748097891517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164013 n - 3

end

end A027468.P17972208748097891517

namespace A027468

/-- `A164013(n)-3` -/
def P17972208748097891517.Spec : Prop :=
  ∀ n, P17972208748097891517.a n = A027468 n

end A027468

/-!
# A027469: a(n) = 49*(n-1)*(n-2)/2.

The programs for A027469, the canonical program `A027469.P2668764603028757282` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027469 has offset 3).

The definition of A027469 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `49*(n+2)*(n+1)/2` (program `A027469.P13834689727797015865`, by `A027469.P13834689727797015865.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027469.P13834689727797015865

`49*(n+2)*(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027469.P13834689727797015865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (49 * (n + 2) * (n + 1) : ℚ) / 2

end

end A027469.P13834689727797015865

namespace A027469

/-- `49*(n+2)*(n+1)/2` -/
def P13834689727797015865.Spec : Prop :=
  ∀ n, P13834689727797015865.a n = (A027469 (n + 3) : ℚ)

theorem P13834689727797015865.correct : P13834689727797015865.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A027469, Nat.add_sub_cancel, A027469.P13834689727797015865.a, A027469.P2668764603028757282.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A027469, Nat.add_sub_cancel, A027469.P13834689727797015865.a, A027469.P2668764603028757282.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A027469

/-! ## A027469.P2668764603028757282

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=49, a(1)=147, a(2)=294`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027469

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P2668764603028757282.Spec : Prop :=
  ∀ n, P2668764603028757282.a n = A027469 (n + 3)

theorem P2668764603028757282.correct : P2668764603028757282.Spec := by
  intro n
  simp only [A027469, Nat.add_sub_cancel]

end A027469

/-! ## A027469.P11756622026617605589

`49*A000217(n+1)`
-/

namespace A027469.P11756622026617605589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  49 * A000217 (n + 1)

end

end A027469.P11756622026617605589

namespace A027469

/-- `49*A000217(n+1)` -/
def P11756622026617605589.Spec : Prop :=
  ∀ n, P11756622026617605589.a n = A027469 (n + 3)

end A027469

/-! ## A027469.P16303123797521783260

`A162942(n+1)`
-/

namespace A027469.P16303123797521783260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162942 (n + 1)

end

end A027469.P16303123797521783260

namespace A027469

/-- `A162942(n+1)` -/
def P16303123797521783260.Spec : Prop :=
  ∀ n, P16303123797521783260.a n = A027469 (n + 3)

end A027469

/-! ## A027469.P8551521055053802519

`7*A024966(n+1)`
-/

namespace A027469.P8551521055053802519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A024966 (n + 1)

end

end A027469.P8551521055053802519

namespace A027469

/-- `7*A024966(n+1)` -/
def P8551521055053802519.Spec : Prop :=
  ∀ n, P8551521055053802519.a n = A027469 (n + 3)

end A027469

/-! ## A027469.P16980248784558334485

`7*7*C(n+2, 2)`
-/

namespace A027469.P16980248784558334485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (7 * Nat.choose (n + 2) 2)

end

end A027469.P16980248784558334485

namespace A027469

/-- `7*7*C(n+2, 2)` -/
def P16980248784558334485.Spec : Prop :=
  ∀ n, (P16980248784558334485.a n : ℤ) = A027469 (n + 3)

end A027469

/-! ## A027469.P14969566351512793398

`floor(∑[a(n-1)+49])` with `a(0)=49`

`floor` is left out, it is the identity on integers.
-/

namespace A027469.P14969566351512793398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [49] fun n f1 =>
  f1 (n - 1) + 49

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027469.P14969566351512793398

namespace A027469

/-- `floor(∑[a(n-1)+49])` -/
def P14969566351512793398.Spec : Prop :=
  ∀ n, (P14969566351512793398.a n : ℤ) = A027469 (n + 3)

end A027469

/-! ## A027469.P9852729839667397201

`ceil(∑[a(n-1)+49])` with `a(0)=49`

`ceil` is left out, it is the identity on integers.
-/

namespace A027469.P9852729839667397201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [49] fun n f1 =>
  f1 (n - 1) + 49

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027469.P9852729839667397201

namespace A027469

/-- `ceil(∑[a(n-1)+49])` -/
def P9852729839667397201.Spec : Prop :=
  ∀ n, (P9852729839667397201.a n : ℤ) = A027469 (n + 3)

end A027469

/-! ## A027469.P4266231047085085772

`a(n-1)+49*(n+1)` with `a(0)=49`
-/

namespace A027469.P4266231047085085772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [49] fun n a =>
  a (n - 1) + 49 * (n + 1)

end

end A027469.P4266231047085085772

namespace A027469

/-- `a(n-1)+49*(n+1)` -/
def P4266231047085085772.Spec : Prop :=
  ∀ n, (P4266231047085085772.a n : ℤ) = A027469 (n + 3)

end A027469

/-! ## A027469.P4106312128161729856

`Δ[49*A000292(n)]`
-/

namespace A027469.P4106312128161729856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  49 * A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027469.P4106312128161729856

namespace A027469

/-- `Δ[49*A000292(n)]` -/
def P4106312128161729856.Spec : Prop :=
  ∀ n, P4106312128161729856.a n = A027469 (n + 3)

end A027469

/-! ## A027469.P4511735639834111126

`A061792(n+1)-6`
-/

namespace A027469.P4511735639834111126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061792 (n + 1) - 6

end

end A027469.P4511735639834111126

namespace A027469

/-- `A061792(n+1)-6` -/
def P4511735639834111126.Spec : Prop :=
  ∀ n, P4511735639834111126.a n = A027469 (n + 3)

end A027469

/-! ## A027469.P4160193077782904644

`record[A162942(abs(1-n))]`
-/

namespace A027469.P4160193077782904644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162942 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027469.P4160193077782904644

namespace A027469

/-- `record[A162942(abs(1-n))]` -/
def P4160193077782904644.Spec : Prop :=
  ∀ n, P4160193077782904644.a n = A027469 (n + 3)

end A027469

/-! ## A027469.P14783549614000944325

`A001526(n+1)/2-3`
-/

namespace A027469.P14783549614000944325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001526 (n + 1) : ℚ) / 2 - 3

end

end A027469.P14783549614000944325

namespace A027469

/-- `A001526(n+1)/2-3` -/
def P14783549614000944325.Spec : Prop :=
  ∀ n, P14783549614000944325.a n = (A027469 (n + 3) : ℚ)

end A027469

/-! ## A027469.P7484183999501388528

`(n+1)²+A129428(n+1)+n`
-/

namespace A027469.P7484183999501388528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A129428 (n + 1) + (n : ℤ))

end

end A027469.P7484183999501388528

namespace A027469

/-- `(n+1)²+A129428(n+1)+n` -/
def P7484183999501388528.Spec : Prop :=
  ∀ n, P7484183999501388528.a n = A027469 (n + 3)

end A027469

/-! ## A027469.P2146256857276650688

`A114444(n+1)+A051871(n+1)`
-/

namespace A027469.P2146256857276650688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114444 (n + 1) + A051871 (n + 1)

end

end A027469.P2146256857276650688

namespace A027469

/-- `A114444(n+1)+A051871(n+1)` -/
def P2146256857276650688.Spec : Prop :=
  ∀ n, P2146256857276650688.a n = A027469 (n + 3)

end A027469

/-! ## A027469.P3652800168408381820

`A195038(n+1)+A033996(n+1)`
-/

namespace A027469.P3652800168408381820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195038 (n + 1) + A033996 (n + 1)

end

end A027469.P3652800168408381820

namespace A027469

/-- `A195038(n+1)+A033996(n+1)` -/
def P3652800168408381820.Spec : Prop :=
  ∀ n, P3652800168408381820.a n = A027469 (n + 3)

end A027469

/-! ## A027469.P5468191718779284697

`A162940(n+1)+A152741(n+1)`
-/

namespace A027469.P5468191718779284697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162940 (n + 1) + A152741 (n + 1)

end

end A027469.P5468191718779284697

namespace A027469

/-- `A162940(n+1)+A152741(n+1)` -/
def P5468191718779284697.Spec : Prop :=
  ∀ n, P5468191718779284697.a n = A027469 (n + 3)

end A027469

/-! ## A027469.P13130184136998864759

`A049598(n+1)+A123296(n+1)+A049598(n+1)`
-/

namespace A027469.P13130184136998864759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049598 (n + 1) + (A123296 (n + 1) + A049598 (n + 1))

end

end A027469.P13130184136998864759

namespace A027469

/-- `A049598(n+1)+A123296(n+1)+A049598(n+1)` -/
def P13130184136998864759.Spec : Prop :=
  ∀ n, P13130184136998864759.a n = A027469 (n + 3)

end A027469

/-! ## A027469.P11545930576870707001

`A027468(n+1)+A162940(n+1)+A046092(n+1)`
-/

namespace A027469.P11545930576870707001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027468 (n + 1) + (A162940 (n + 1) + A046092 (n + 1))

end

end A027469.P11545930576870707001

namespace A027469

/-- `A027468(n+1)+A162940(n+1)+A046092(n+1)` -/
def P11545930576870707001.Spec : Prop :=
  ∀ n, P11545930576870707001.a n = A027469 (n + 3)

end A027469

/-! ## A027469.P2089585271139143334

`A055999(7*(n+1))`
-/

namespace A027469.P2089585271139143334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 (7 * (n + 1))

end

end A027469.P2089585271139143334

namespace A027469

/-- `A055999(7*(n+1))` -/
def P2089585271139143334.Spec : Prop :=
  ∀ n, P2089585271139143334.a n = A027469 (n + 3)

end A027469

/-!
# A027470: a(n) = 225*(n-1)*(n-2)/2.

The programs for A027470, the canonical program `A027470.P7484819265978295303` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027470 has offset 3).

The definition of A027470 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `225*(n+2)*(n+1)/2` (program `A027470.P3205307826659041145`, by `A027470.P3205307826659041145.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027470.P7484819265978295303

`225*C(n+2, 2)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027470

/-- `225*C(n+2, 2)` -/
def P7484819265978295303.Spec : Prop :=
  ∀ n, (P7484819265978295303.a n : ℤ) = A027470 (n + 3)

theorem P7484819265978295303.correct : P7484819265978295303.Spec := by
  intro n
  simp only [A027470, Nat.add_sub_cancel]

end A027470

/-! ## A027470.P3205307826659041145

`225*(n+2)*(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027470.P3205307826659041145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (225 * (n + 2) * (n + 1) : ℚ) / 2

end

end A027470.P3205307826659041145

namespace A027470

/-- `225*(n+2)*(n+1)/2` -/
def P3205307826659041145.Spec : Prop :=
  ∀ n, P3205307826659041145.a n = (A027470 (n + 3) : ℚ)

theorem P3205307826659041145.correct : P3205307826659041145.Spec := by
  intro n
  simp only [A027470, Nat.add_sub_cancel, A027470.P3205307826659041145.a, A027470.P7484819265978295303.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027470

/-! ## A027470.P16240929578546631567

`15*A194715(n+1)`
-/

namespace A027470.P16240929578546631567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A194715 (n + 1)

end

end A027470.P16240929578546631567

namespace A027470

/-- `15*A194715(n+1)` -/
def P16240929578546631567.Spec : Prop :=
  ∀ n, P16240929578546631567.a n = A027470 (n + 3)

end A027470

/-! ## A027470.P4423956804880217283

`225*A000217(n+1)`
-/

namespace A027470.P4423956804880217283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  225 * A000217 (n + 1)

end

end A027470.P4423956804880217283

namespace A027470

/-- `225*A000217(n+1)` -/
def P4423956804880217283.Spec : Prop :=
  ∀ n, P4423956804880217283.a n = A027470 (n + 3)

theorem P4423956804880217283.correct : P4423956804880217283.Spec := by
  intro n
  simp only [A027470, Nat.add_sub_cancel, A027470.P4423956804880217283.a, A027470.P7484819265978295303.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027470

/-! ## A027470.P518936416298800933

`∑[225+a(n-1)]` with `a(0)=225`
-/

namespace A027470.P518936416298800933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [225] fun n f1 =>
  225 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027470.P518936416298800933

namespace A027470

/-- `∑[225+a(n-1)]` -/
def P518936416298800933.Spec : Prop :=
  ∀ n, (P518936416298800933.a n : ℤ) = A027470 (n + 3)

end A027470

/-! ## A027470.P9417651455741714151

`∑[A158227(n+1)+1]`
-/

namespace A027470.P9417651455741714151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158227 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027470.P9417651455741714151

namespace A027470

/-- `∑[A158227(n+1)+1]` -/
def P9417651455741714151.Spec : Prop :=
  ∀ n, P9417651455741714151.a n = A027470 (n + 3)

end A027470

/-! ## A027470.P546877156842700639

`∑[A158229(n+1)-1]`
-/

namespace A027470.P546877156842700639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158229 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027470.P546877156842700639

namespace A027470

/-- `∑[A158229(n+1)-1]` -/
def P546877156842700639.Spec : Prop :=
  ∀ n, P546877156842700639.a n = A027470 (n + 3)

end A027470

/-! ## A027470.P11559859188297843281

`9*A123296(n+1)`
-/

namespace A027470.P11559859188297843281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A123296 (n + 1)

end

end A027470.P11559859188297843281

namespace A027470

/-- `9*A123296(n+1)` -/
def P11559859188297843281.Spec : Prop :=
  ∀ n, P11559859188297843281.a n = A027470 (n + 3)

end A027470

/-! ## A027470.P9642703865557140948

`A056121(A008597(n+1))`
-/

namespace A027470.P9642703865557140948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056121 (A008597 (n + 1)).toNat

end

end A027470.P9642703865557140948

namespace A027470

/-- `A056121(A008597(n+1))` -/
def P9642703865557140948.Spec : Prop :=
  ∀ n, P9642703865557140948.a n = A027470 (n + 3)

end A027470

/-! ## A027470.P10354797205047521272

`∑[A257645(A257645(n))+1]`
-/

namespace A027470.P10354797205047521272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257645 (A257645 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027470.P10354797205047521272

namespace A027470

/-- `∑[A257645(A257645(n))+1]` -/
def P10354797205047521272.Spec : Prop :=
  ∀ n, P10354797205047521272.a n = A027470 (n + 3)

end A027470

/-! ## A027470.P10946557448025459074

`A056121(A190991(n+1)+2*n+1)`
-/

namespace A027470.P10946557448025459074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056121 (A190991 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A027470.P10946557448025459074

namespace A027470

/-- `A056121(A190991(n+1)+2*n+1)` -/
def P10946557448025459074.Spec : Prop :=
  ∀ n, P10946557448025459074.a n = A027470 (n + 3)

end A027470

/-! ## A027470.P17729101842132886259

`A056121(A098849(n+1)-A002378(n+1))`
-/

namespace A027470.P17729101842132886259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056121 (A098849 (n + 1) - A002378 (n + 1)).toNat

end

end A027470.P17729101842132886259

namespace A027470

/-- `A056121(A098849(n+1)-A002378(n+1))` -/
def P17729101842132886259.Spec : Prop :=
  ∀ n, P17729101842132886259.a n = A027470 (n + 3)

end A027470

/-!
# A027471: a(n) = (n-1)*3^(n-2), n > 0.

The programs for A027471, the canonical program `A027471.P8490952223029099495` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027471 has offset 1).

The definition of A027471 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*3^(n-1)` (program `A027471.P4220259328257286220`, by `A027471.P4220259328257286220.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027471.P13897441662563805578

`3^(n-1)*n`
-/

namespace A027471.P13897441662563805578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (n : ℚ)

end

end A027471.P13897441662563805578

namespace A027471

/-- `3^(n-1)*n` -/
def P13897441662563805578.Spec : Prop :=
  ∀ n, P13897441662563805578.a n = (A027471 (n + 1) : ℚ)

theorem P13897441662563805578.correct : P13897441662563805578.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A027471, Nat.add_sub_cancel, A027471.P13897441662563805578.a, A027471.P8490952223029099495.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A027471, Nat.add_sub_cancel, A027471.P13897441662563805578.a, A027471.P8490952223029099495.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A027471

/-! ## A027471.P4220259328257286220

`n*3^(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027471.P4220259328257286220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A027471.P4220259328257286220

namespace A027471

/-- `n*3^(n-1)` -/
def P4220259328257286220.Spec : Prop :=
  ∀ n, P4220259328257286220.a n = (A027471 (n + 1) : ℚ)

theorem P4220259328257286220.correct : P4220259328257286220.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A027471, Nat.add_sub_cancel, A027471.P4220259328257286220.a, A027471.P8490952223029099495.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A027471, Nat.add_sub_cancel, A027471.P4220259328257286220.a, A027471.P8490952223029099495.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A027471

/-! ## A027471.P8490952223029099495

`6*a(n-1)-9*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027471

/-- `6*a(n-1)-9*a(n-2)` -/
def P8490952223029099495.Spec : Prop :=
  ∀ n, P8490952223029099495.a n = A027471 (n + 1)

theorem P8490952223029099495.correct : P8490952223029099495.Spec := by
  intro n
  simp only [A027471, Nat.add_sub_cancel]

end A027471

/-! ## A027471.P5634654247791926965

`A036290(n)/3`
-/

namespace A027471.P5634654247791926965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036290 n : ℚ) / 3

end

end A027471.P5634654247791926965

namespace A027471

/-- `A036290(n)/3` -/
def P5634654247791926965.Spec : Prop :=
  ∀ n, P5634654247791926965.a n = (A027471 (n + 1) : ℚ)

end A027471

/-! ## A027471.P13057491465450705211

`ogf(x/(1-6x+9x^2))`
-/

namespace A027471.P13057491465450705211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -6, 9] n

end

end A027471.P13057491465450705211

namespace A027471

/-- `ogf(x/(1-6x+9x^2))` -/
def P13057491465450705211.Spec : Prop :=
  ∀ n, P13057491465450705211.a n = A027471 (n + 1)

end A027471

/-! ## A027471.P2429453055574337424

`lcm(n, n/3*3^n)`
-/

namespace A027471.P2429453055574337424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) / 3 * (3 ^ n : ℚ)))

end

end A027471.P2429453055574337424

namespace A027471

/-- `lcm(n, n/3*3^n)` -/
def P2429453055574337424.Spec : Prop :=
  ∀ n, (P2429453055574337424.a n : ℤ) = A027471 (n + 1)

end A027471

/-! ## A027471.P14194852441731723497

`floor(n*∑[3*a(n-1)])` with `a(0)=0, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A027471.P14194852441731723497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027471.P14194852441731723497

namespace A027471

/-- `floor(n*∑[3*a(n-1)])` -/
def P14194852441731723497.Spec : Prop :=
  ∀ n, (P14194852441731723497.a n : ℤ) = A027471 (n + 1)

end A027471

/-! ## A027471.P2329388978110863314

`n/(ceil(acot(n-1))+2)^(1-n)`
-/

namespace A027471.P2329388978110863314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (⌈SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)⌉ + 2 : ℚ) ^ (1 - (n : ℤ) : ℤ)

end

end A027471.P2329388978110863314

namespace A027471

/-- `n/(ceil(acot(n-1))+2)^(1-n)` -/
def P2329388978110863314.Spec : Prop :=
  ∀ n, P2329388978110863314.a n = (A027471 (n + 1) : ℚ)

end A027471

/-! ## A027471.P12274986759625841065

`3^(n-1)+a(n-1)/cot(atan(3))` with `a(0)=0`
-/

namespace A027471.P12274986759625841065
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) + a (n - 1) / Real.cot (Real.arctan (3 : ℝ))

end

end A027471.P12274986759625841065

namespace A027471

/-- `3^(n-1)+a(n-1)/cot(atan(3))` -/
def P12274986759625841065.Spec : Prop :=
  ∀ n, P12274986759625841065.a n = (A027471 (n + 1) : ℝ)

end A027471

/-! ## A027471.P15677227471080245399

`3^(n-1)+a(n-1)/sqrt(1/9)` with `a(0)=0`
-/

namespace A027471.P15677227471080245399
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) + a (n - 1) / Real.sqrt ((1 : ℚ) / 9 : ℝ)

end

end A027471.P15677227471080245399

namespace A027471

/-- `3^(n-1)+a(n-1)/sqrt(1/9)` -/
def P15677227471080245399.Spec : Prop :=
  ∀ n, P15677227471080245399.a n = (A027471 (n + 1) : ℝ)

end A027471

/-! ## A027471.P11864264109971293610

`∑[A229277(n)/3]`
-/

namespace A027471.P11864264109971293610
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229277 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027471.P11864264109971293610

namespace A027471

/-- `∑[A229277(n)/3]` -/
def P11864264109971293610.Spec : Prop :=
  ∀ n, P11864264109971293610.a n = (A027471 (n + 1) : ℚ)

end A027471

/-! ## A027471.P16788783096827604303

`(A140320(n)-1)/2`
-/

namespace A027471.P16788783096827604303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140320 n - 1 : ℚ) / 2

end

end A027471.P16788783096827604303

namespace A027471

/-- `(A140320(n)-1)/2` -/
def P16788783096827604303.Spec : Prop :=
  ∀ n, P16788783096827604303.a n = (A027471 (n + 1) : ℚ)

end A027471

/-! ## A027471.P10721635514043421772

`2*A082133(n)-n`
-/

namespace A027471.P10721635514043421772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082133 n - (n : ℤ)

end

end A027471.P10721635514043421772

namespace A027471

/-- `2*A082133(n)-n` -/
def P10721635514043421772.Spec : Prop :=
  ∀ n, P10721635514043421772.a n = A027471 (n + 1)

end A027471

/-! ## A027471.P7922453164010383448

`n*A025192(n)/2`
-/

namespace A027471.P7922453164010383448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A025192 n : ℚ) / 2

end

end A027471.P7922453164010383448

namespace A027471

/-- `n*A025192(n)/2` -/
def P7922453164010383448.Spec : Prop :=
  ∀ n, P7922453164010383448.a n = (A027471 (n + 1) : ℚ)

end A027471

/-! ## A027471.P17377615963709307338

`n/3^A024000(n)`
-/

namespace A027471.P17377615963709307338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (3 : ℚ) ^ (A024000 n : ℤ)

end

end A027471.P17377615963709307338

namespace A027471

/-- `n/3^A024000(n)` -/
def P17377615963709307338.Spec : Prop :=
  ∀ n, P17377615963709307338.a n = (A027471 (n + 1) : ℚ)

end A027471

/-! ## A027471.P16016496638121454270

`Δ[Δ[A121365(n+1)]]`
-/

namespace A027471.P16016496638121454270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121365 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A027471.P16016496638121454270

namespace A027471

/-- `Δ[Δ[A121365(n+1)]]` -/
def P16016496638121454270.Spec : Prop :=
  ∀ n, P16016496638121454270.a n = A027471 (n + 1)

end A027471

/-! ## A027471.P16598828067216203315

`∑{d}[n, n*A034741(#)]`
-/

namespace A027471.P16598828067216203315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * A034741 d

end

end A027471.P16598828067216203315

namespace A027471

/-- `∑{d}[n, n*A034741(#)]` -/
def P16598828067216203315.Spec : Prop :=
  ∀ n, P16598828067216203315.a n = A027471 (n + 1)

end A027471

/-! ## A027471.P2125219408089891846

`abs(n*A141413(n+1))`
-/

namespace A027471.P2125219408089891846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A141413 (n + 1)|

end

end A027471.P2125219408089891846

namespace A027471

/-- `abs(n*A141413(n+1))` -/
def P2125219408089891846.Spec : Prop :=
  ∀ n, P2125219408089891846.a n = A027471 (n + 1)

end A027471

/-! ## A027471.P4696267951376170986

`abs(n*A287479(2*n))`
-/

namespace A027471.P4696267951376170986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A287479 (2 * n)|

end

end A027471.P4696267951376170986

namespace A027471

/-- `abs(n*A287479(2*n))` -/
def P4696267951376170986.Spec : Prop :=
  ∀ n, P4696267951376170986.a n = A027471 (n + 1)

end A027471

/-! ## A027471.P14243373171466700431

`round(n/3*A000244(n))`
-/

namespace A027471.P14243373171466700431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 3 * (A000244 n : ℚ))

end

end A027471.P14243373171466700431

namespace A027471

/-- `round(n/3*A000244(n))` -/
def P14243373171466700431.Spec : Prop :=
  ∀ n, P14243373171466700431.a n = A027471 (n + 1)

end A027471

/-!
# A027472: Third convolution of the powers of 3 (A000244).

The programs for A027472, the canonical program `A027472.P10528694330442229026` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027472 has offset 3).

The definition of A027472 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027472.P10012896828165771500

`3^n*C(n+2, 2)`
-/

namespace A027472.P10012896828165771500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * Nat.choose (n + 2) 2

end

end A027472.P10012896828165771500

namespace A027472

/-- `3^n*C(n+2, 2)` -/
def P10012896828165771500.Spec : Prop :=
  ∀ n, (P10012896828165771500.a n : ℤ) = A027472 (n + 3)

end A027472

/-! ## A027472.P10528694330442229026

`9*a(n-1)-27*a(n-2)+27*a(n-3)` with `a(0)=1, a(1)=9, a(2)=54`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027472

/-- `9*a(n-1)-27*a(n-2)+27*a(n-3)` -/
def P10528694330442229026.Spec : Prop :=
  ∀ n, P10528694330442229026.a n = A027472 (n + 3)

theorem P10528694330442229026.correct : P10528694330442229026.Spec := by
  intro n
  simp only [A027472, Nat.add_sub_cancel]

end A027472

/-! ## A027472.P92156028320067754

`A006043(n)/2`
-/

namespace A027472.P92156028320067754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006043 n : ℚ) / 2

end

end A027472.P92156028320067754

namespace A027472

/-- `A006043(n)/2` -/
def P92156028320067754.Spec : Prop :=
  ∀ n, P92156028320067754.a n = (A027472 (n + 3) : ℚ)

end A027472

/-! ## A027472.P3412724153726633447

`3^n*∑[n+1]`
-/

namespace A027472.P3412724153726633447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027472.P3412724153726633447

namespace A027472

/-- `3^n*∑[n+1]` -/
def P3412724153726633447.Spec : Prop :=
  ∀ n, (P3412724153726633447.a n : ℤ) = A027472 (n + 3)

end A027472

/-! ## A027472.P15322761599014476588

`C(n+2, 2)/3^-n`
-/

namespace A027472.P15322761599014476588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℚ) / (3 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A027472.P15322761599014476588

namespace A027472

/-- `C(n+2, 2)/3^-n` -/
def P15322761599014476588.Spec : Prop :=
  ∀ n, P15322761599014476588.a n = (A027472 (n + 3) : ℚ)

end A027472

/-! ## A027472.P6715944725589577878

`round(∑[n+1]/acot(3^n))`
-/

namespace A027472.P6715944725589577878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) / SequenceMachineLib.acot (3 ^ n : ℝ))

end

end A027472.P6715944725589577878

namespace A027472

/-- `round(∑[n+1]/acot(3^n))` -/
def P6715944725589577878.Spec : Prop :=
  ∀ n, P6715944725589577878.a n = A027472 (n + 3)

end A027472

/-! ## A027472.P6059788074740049284

`3^n/tan(acot(∑[n+1]))`
-/

namespace A027472.P6059788074740049284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℝ) / Real.tan (SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A027472.P6059788074740049284

namespace A027472

/-- `3^n/tan(acot(∑[n+1]))` -/
def P6059788074740049284.Spec : Prop :=
  ∀ n, P6059788074740049284.a n = (A027472 (n + 3) : ℝ)

end A027472

/-! ## A027472.P17281012414963414916

`floor(3*(n+2)*a(n-1)/n)` with `a(0)=1`
-/

namespace A027472.P17281012414963414916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊3 * ((n + 2 : ℚ) * ((a (n - 1) : ℚ) / (n : ℚ)))⌋

end

end A027472.P17281012414963414916

namespace A027472

/-- `floor(3*(n+2)*a(n-1)/n)` -/
def P17281012414963414916.Spec : Prop :=
  ∀ n, P17281012414963414916.a n = A027472 (n + 3)

end A027472

/-! ## A027472.P4073013934283920812

`3*a(n-1)+(n+1)*3^n` with `a(0)=1`
-/

namespace A027472.P4073013934283920812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) + (n + 1) * 3 ^ n

end

end A027472.P4073013934283920812

namespace A027472

/-- `3*a(n-1)+(n+1)*3^n` -/
def P4073013934283920812.Spec : Prop :=
  ∀ n, (P4073013934283920812.a n : ℤ) = A027472 (n + 3)

end A027472

/-! ## A027472.P12607858489741988455

`floor(∑[3*a(n-1)]*∑[n+1])` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A027472.P12607858489741988455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * f1 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A027472.P12607858489741988455

namespace A027472

/-- `floor(∑[3*a(n-1)]*∑[n+1])` -/
def P12607858489741988455.Spec : Prop :=
  ∀ n, (P12607858489741988455.a n : ℤ) = A027472 (n + 3)

end A027472

/-! ## A027472.P7426044683689953060

`∑[n+1]/3^(gcd(n, n+1)-(n+1))`
-/

namespace A027472.P7426044683689953060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (3 : ℚ) ^ ((Nat.gcd n (n + 1) : ℤ) - (n + 1 : ℤ) : ℤ)

end

end A027472.P7426044683689953060

namespace A027472

/-- `∑[n+1]/3^(gcd(n, n+1)-(n+1))` -/
def P7426044683689953060.Spec : Prop :=
  ∀ n, P7426044683689953060.a n = (A027472 (n + 3) : ℚ)

end A027472

/-! ## A027472.P61392462458929455

`∑[A383136(n+1)]`
-/

namespace A027472.P61392462458929455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027472.P61392462458929455

namespace A027472

/-- `∑[A383136(n+1)]` -/
def P61392462458929455.Spec : Prop :=
  ∀ n, P61392462458929455.a n = A027472 (n + 3)

end A027472

/-! ## A027472.P15742990074346921007

`∑[(n+1)*A006234(n+3)]`
-/

namespace A027472.P15742990074346921007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A006234 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027472.P15742990074346921007

namespace A027472

/-- `∑[(n+1)*A006234(n+3)]` -/
def P15742990074346921007.Spec : Prop :=
  ∀ n, P15742990074346921007.a n = A027472 (n + 3)

end A027472

/-! ## A027472.P15215384596219606203

`A081909(n+2)-3^(n+2)`
-/

namespace A027472.P15215384596219606203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081909 (n + 2) - (3 ^ (n + 2) : ℤ)

end

end A027472.P15215384596219606203

namespace A027472

/-- `A081909(n+2)-3^(n+2)` -/
def P15215384596219606203.Spec : Prop :=
  ∀ n, P15215384596219606203.a n = A027472 (n + 3)

end A027472

/-! ## A027472.P8015484802558412883

`A077616(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A027472.P8015484802558412883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077616 (n + 1) - a (n - 1)

end

end A027472.P8015484802558412883

namespace A027472

/-- `A077616(n+1)-a(n-1)` -/
def P8015484802558412883.Spec : Prop :=
  ∀ n, P8015484802558412883.a n = A027472 (n + 3)

end A027472

/-! ## A027472.P16793227413931236682

`lcm(3^n*A000217(n+1), 3^n)`
-/

namespace A027472.P16793227413931236682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((3 ^ n : ℤ) * A000217 (n + 1)) (3 ^ n : ℤ)

end

end A027472.P16793227413931236682

namespace A027472

/-- `lcm(3^n*A000217(n+1), 3^n)` -/
def P16793227413931236682.Spec : Prop :=
  ∀ n, (P16793227413931236682.a n : ℤ) = A027472 (n + 3)

end A027472

/-! ## A027472.P13527414364720011625

`abs(∑[n+1]*A000244(n)-1)+1`
-/

namespace A027472.P13527414364720011625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000244 n - 1| + 1

end

end A027472.P13527414364720011625

namespace A027472

/-- `abs(∑[n+1]*A000244(n)-1)+1` -/
def P13527414364720011625.Spec : Prop :=
  ∀ n, P13527414364720011625.a n = A027472 (n + 3)

end A027472

/-! ## A027472.P18035741798010966173

`a(n-1)+A080420(n)+a(n-1)` with `a(0)=1`
-/

namespace A027472.P18035741798010966173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A080420 n + a (n - 1))

end

end A027472.P18035741798010966173

namespace A027472

/-- `a(n-1)+A080420(n)+a(n-1)` -/
def P18035741798010966173.Spec : Prop :=
  ∀ n, P18035741798010966173.a n = A027472 (n + 3)

end A027472

/-! ## A027472.P3107614691975472135

`A069515(n+1)+A036068(n)`
-/

namespace A027472.P3107614691975472135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069515 (n + 1) + A036068 n

end

end A027472.P3107614691975472135

namespace A027472

/-- `A069515(n+1)+A036068(n)` -/
def P3107614691975472135.Spec : Prop :=
  ∀ n, P3107614691975472135.a n = A027472 (n + 3)

end A027472

/-! ## A027472.P9563121492723178061

`A080420(n+1)-A027471(n+3)`
-/

namespace A027472.P9563121492723178061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080420 (n + 1) - A027471 (n + 3)

end

end A027472.P9563121492723178061

namespace A027472

/-- `A080420(n+1)-A027471(n+3)` -/
def P9563121492723178061.Spec : Prop :=
  ∀ n, P9563121492723178061.a n = A027472 (n + 3)

end A027472

/-!
# A027473: Second column of A027466.

The programs for A027473, the canonical program `A027473.P14162763558740844376` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027473 has offset 1).

The definition of A027473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027473.P7154730332226046457

`(n+1)*7^n`
-/

namespace A027473.P7154730332226046457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 7 ^ n

end

end A027473.P7154730332226046457

namespace A027473

/-- `(n+1)*7^n` -/
def P7154730332226046457.Spec : Prop :=
  ∀ n, (P7154730332226046457.a n : ℤ) = A027473 (n + 1)

theorem P7154730332226046457.correct : P7154730332226046457.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A027473, Nat.add_sub_cancel, A027473.P7154730332226046457.a, A027473.P14162763558740844376.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A027473, Nat.add_sub_cancel, A027473.P7154730332226046457.a, A027473.P14162763558740844376.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A027473

/-! ## A027473.P14162763558740844376

`14*a(n-1)-49*a(n-2)` with `a(0)=1, a(1)=14`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027473

/-- `14*a(n-1)-49*a(n-2)` -/
def P14162763558740844376.Spec : Prop :=
  ∀ n, P14162763558740844376.a n = A027473 (n + 1)

theorem P14162763558740844376.correct : P14162763558740844376.Spec := by
  intro n
  simp only [A027473, Nat.add_sub_cancel]

end A027473

/-! ## A027473.P15916754511878718293

`A024075(n)+A050919(n)`
-/

namespace A027473.P15916754511878718293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024075 n + A050919 n

end

end A027473.P15916754511878718293

namespace A027473

/-- `A024075(n)+A050919(n)` -/
def P15916754511878718293.Spec : Prop :=
  ∀ n, P15916754511878718293.a n = A027473 (n + 1)

end A027473

/-! ## A027473.P18267260591586670786

`7^n/tan(acot(n+1))`
-/

namespace A027473.P18267260591586670786
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℝ) / Real.tan (SequenceMachineLib.acot (n + 1 : ℝ))

end

end A027473.P18267260591586670786

namespace A027473

/-- `7^n/tan(acot(n+1))` -/
def P18267260591586670786.Spec : Prop :=
  ∀ n, P18267260591586670786.a n = (A027473 (n + 1) : ℝ)

end A027473

/-! ## A027473.P1060362863605762252

`7^n/cot(atan(n+1))`
-/

namespace A027473.P1060362863605762252
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℝ) / Real.cot (Real.arctan (n + 1 : ℝ))

end

end A027473.P1060362863605762252

namespace A027473

/-- `7^n/cot(atan(n+1))` -/
def P1060362863605762252.Spec : Prop :=
  ∀ n, P1060362863605762252.a n = (A027473 (n + 1) : ℝ)

end A027473

/-! ## A027473.P14823897412331644800

`∑[and(Δ[n*7^(n-1)], -3)]`
-/

namespace A027473.P14823897412331644800
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)) (-3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027473.P14823897412331644800

namespace A027473

/-- `∑[and(Δ[n*7^(n-1)], -3)]` -/
def P14823897412331644800.Spec : Prop :=
  ∀ n, P14823897412331644800.a n = A027473 (n + 1)

end A027473

/-! ## A027473.P9925851940217522812

`floor((7/n+7)*a(n-1))` with `a(0)=1`
-/

namespace A027473.P9925851940217522812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(7 / (n : ℚ) + 7) * (a (n - 1) : ℚ)⌋

end

end A027473.P9925851940217522812

namespace A027473

/-- `floor((7/n+7)*a(n-1))` -/
def P9925851940217522812.Spec : Prop :=
  ∀ n, P9925851940217522812.a n = A027473 (n + 1)

end A027473

/-! ## A027473.P6777310651208117320

`7^n/(n+1)^(floor(acot(n))-1)`
-/

namespace A027473.P6777310651208117320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℚ) / (n + 1 : ℚ) ^ (⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1 : ℤ)

end

end A027473.P6777310651208117320

namespace A027473

/-- `7^n/(n+1)^(floor(acot(n))-1)` -/
def P6777310651208117320.Spec : Prop :=
  ∀ n, P6777310651208117320.a n = (A027473 (n + 1) : ℚ)

end A027473

/-! ## A027473.P18159613497436501920

`floor((n+1)*∑[7*a(n-1)])` with `a(0)=1, a(1)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A027473.P18159613497436501920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027473.P18159613497436501920

namespace A027473

/-- `floor((n+1)*∑[7*a(n-1)])` -/
def P18159613497436501920.Spec : Prop :=
  ∀ n, (P18159613497436501920.a n : ℤ) = A027473 (n + 1)

end A027473

/-! ## A027473.P2215522631044681451

`∑[A081042(n)]`
-/

namespace A027473.P2215522631044681451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027473.P2215522631044681451

namespace A027473

/-- `∑[A081042(n)]` -/
def P2215522631044681451.Spec : Prop :=
  ∀ n, P2215522631044681451.a n = A027473 (n + 1)

end A027473

/-! ## A027473.P14020727523226043604

`(A224331(n+1)+n+1)/2`
-/

namespace A027473.P14020727523226043604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A224331 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A027473.P14020727523226043604

namespace A027473

/-- `(A224331(n+1)+n+1)/2` -/
def P14020727523226043604.Spec : Prop :=
  ∀ n, P14020727523226043604.a n = (A027473 (n + 1) : ℚ)

end A027473

/-! ## A027473.P5315840669661966553

`(n+1)*A208704(n+1)/4`
-/

namespace A027473.P5315840669661966553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A208704 (n + 1) : ℚ) / 4

end

end A027473.P5315840669661966553

namespace A027473

/-- `(n+1)*A208704(n+1)/4` -/
def P5315840669661966553.Spec : Prop :=
  ∀ n, P5315840669661966553.a n = (A027473 (n + 1) : ℚ)

end A027473

/-! ## A027473.P1110973703270612200

`abs((n+1)*A000420(n)-1)+1`
-/

namespace A027473.P1110973703270612200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A000420 n - 1| + 1

end

end A027473.P1110973703270612200

namespace A027473

/-- `abs((n+1)*A000420(n)-1)+1` -/
def P1110973703270612200.Spec : Prop :=
  ∀ n, P1110973703270612200.a n = A027473 (n + 1)

end A027473

/-! ## A027473.P17773976167748664458

`A036293(n)+A000420(n)`
-/

namespace A027473.P17773976167748664458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036293 n + A000420 n

end

end A027473.P17773976167748664458

namespace A027473

/-- `A036293(n)+A000420(n)` -/
def P17773976167748664458.Spec : Prop :=
  ∀ n, P17773976167748664458.a n = A027473 (n + 1)

end A027473

/-! ## A027473.P16482627969115198694

`A123752(2*n)+A036293(n)`
-/

namespace A027473.P16482627969115198694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123752 (2 * n) + A036293 n

end

end A027473.P16482627969115198694

namespace A027473

/-- `A123752(2*n)+A036293(n)` -/
def P16482627969115198694.Spec : Prop :=
  ∀ n, P16482627969115198694.a n = A027473 (n + 1)

end A027473

/-! ## A027473.P2668241421166354894

`A212701(n+1)/6`
-/

namespace A027473.P2668241421166354894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212701 (n + 1) : ℚ) / 6

end

end A027473.P2668241421166354894

namespace A027473

/-- `A212701(n+1)/6` -/
def P2668241421166354894.Spec : Prop :=
  ∀ n, P2668241421166354894.a n = (A027473 (n + 1) : ℚ)

end A027473

/-! ## A027473.P305688373127218790

`A036293(n+1)/7`
-/

namespace A027473.P305688373127218790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036293 (n + 1) : ℚ) / 7

end

end A027473.P305688373127218790

namespace A027473

/-- `A036293(n+1)/7` -/
def P305688373127218790.Spec : Prop :=
  ∀ n, P305688373127218790.a n = (A027473 (n + 1) : ℚ)

end A027473

/-! ## A027473.P17767707413061635618

`A270111(n+2)/8`
-/

namespace A027473.P17767707413061635618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270111 (n + 2) : ℚ) / 8

end

end A027473.P17767707413061635618

namespace A027473

/-- `A270111(n+2)/8` -/
def P17767707413061635618.Spec : Prop :=
  ∀ n, P17767707413061635618.a n = (A027473 (n + 1) : ℚ)

end A027473

/-! ## A027473.P528842290218923110

`7*(n+1)*a(n-1)/n` with `a(0)=1`
-/

namespace A027473.P528842290218923110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  7 * ((n + 1 : ℚ) * a (n - 1)) / (n : ℚ)

end

end A027473.P528842290218923110

namespace A027473

/-- `7*(n+1)*a(n-1)/n` -/
def P528842290218923110.Spec : Prop :=
  ∀ n, P528842290218923110.a n = (A027473 (n + 1) : ℚ)

end A027473

/-! ## A027473.P12244791179955630168

`2*A027474(n+2)/(n+2)`
-/

namespace A027473.P12244791179955630168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A027474 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A027473.P12244791179955630168

namespace A027473

/-- `2*A027474(n+2)/(n+2)` -/
def P12244791179955630168.Spec : Prop :=
  ∀ n, P12244791179955630168.a n = (A027473 (n + 1) : ℚ)

end A027473

/-!
# A027474: a(n) = 7^(n-2) * C(n,2).

The programs for A027474, the canonical program `A027474.P9045913481042102889` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027474 has offset 2).

The definition of A027474 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n*C(n+2, 2)` (program `A027474.P9045913481042102889`, by `A027474.P9045913481042102889.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027474.P9045913481042102889

`7^n*C(n+2, 2)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027474

/-- `7^n*C(n+2, 2)` -/
def P9045913481042102889.Spec : Prop :=
  ∀ n, (P9045913481042102889.a n : ℤ) = A027474 (n + 2)

theorem P9045913481042102889.correct : P9045913481042102889.Spec := by
  intro n
  simp only [A027474, Nat.add_sub_cancel]

end A027474

/-! ## A027474.P16204007814378384187

`7^n*(n+2)*(n+1)/2`
-/

namespace A027474.P16204007814378384187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 ^ n * (n + 2) * (n + 1) : ℚ) / 2

end

end A027474.P16204007814378384187

namespace A027474

/-- `7^n*(n+2)*(n+1)/2` -/
def P16204007814378384187.Spec : Prop :=
  ∀ n, P16204007814378384187.a n = (A027474 (n + 2) : ℚ)

theorem P16204007814378384187.correct : P16204007814378384187.Spec := by
  intro n
  simp only [A027474, Nat.add_sub_cancel, A027474.P16204007814378384187.a, A027474.P9045913481042102889.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027474

/-! ## A027474.P8035799825745201113

`21*a(n-1)-147*a(n-2)+343*a(n-3)` with `a(0)=1, a(1)=21, a(2)=294`
-/

namespace A027474.P8035799825745201113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 21, 294] fun n a =>
  21 * a (n - 1) - 147 * a (n - 2) + 343 * a (n - 3)

end

end A027474.P8035799825745201113

namespace A027474

/-- `21*a(n-1)-147*a(n-2)+343*a(n-3)` -/
def P8035799825745201113.Spec : Prop :=
  ∀ n, P8035799825745201113.a n = A027474 (n + 2)

end A027474

/-! ## A027474.P5955001072243541910

`abs(C(n+2, 2)*A000420(n)-n)+n`
-/

namespace A027474.P5955001072243541910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (n + 2) 2 : ℤ) * A000420 n - (n : ℤ)| + (n : ℤ)

end

end A027474.P5955001072243541910

namespace A027474

/-- `abs(C(n+2, 2)*A000420(n)-n)+n` -/
def P5955001072243541910.Spec : Prop :=
  ∀ n, P5955001072243541910.a n = A027474 (n + 2)

end A027474

/-! ## A027474.P17031364067495383255

`∑[n+1]+A024075(n)*A253145(n)`
-/

namespace A027474.P17031364067495383255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + A024075 n * A253145 n

end

end A027474.P17031364067495383255

namespace A027474

/-- `∑[n+1]+A024075(n)*A253145(n)` -/
def P17031364067495383255.Spec : Prop :=
  ∀ n, P17031364067495383255.a n = A027474 (n + 2)

end A027474

/-! ## A027474.P7413659747348224651

`A000420(n)+A000096(n)*A000420(n)`
-/

namespace A027474.P7413659747348224651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n + A000096 n * A000420 n

end

end A027474.P7413659747348224651

namespace A027474

/-- `A000420(n)+A000096(n)*A000420(n)` -/
def P7413659747348224651.Spec : Prop :=
  ∀ n, P7413659747348224651.a n = A027474 (n + 2)

theorem P7413659747348224651.correct : P7413659747348224651.Spec := by
  intro n
  simp only [A027474, Nat.add_sub_cancel, A027474.P7413659747348224651.a, A027474.P9045913481042102889.a, A000096, A000096.P6925830517264718723.a, A000420, A000420.P3695589171832359676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027474

/-! ## A027474.P17082868532855084552

`A027466(∑[n+2]+3)`
-/

namespace A027474.P17082868532855084552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A027474.P17082868532855084552

namespace A027474

/-- `A027466(∑[n+2]+3)` -/
def P17082868532855084552.Spec : Prop :=
  ∀ n, P17082868532855084552.a n = A027474 (n + 2)

end A027474

/-! ## A027474.P13502850027530171830

`A013614(∑[n+3])`
-/

namespace A027474.P13502850027530171830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013614 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027474.P13502850027530171830

namespace A027474

/-- `A013614(∑[n+3])` -/
def P13502850027530171830.Spec : Prop :=
  ∀ n, P13502850027530171830.a n = A027474 (n + 2)

end A027474

/-!
# A027475: a(n) = (n-1) * 15^(n-2).

The programs for A027475, the canonical program `A027475.P15107714565028445481` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027475 has offset 2).

The definition of A027475 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*15^n` (program `A027475.P15107714565028445481`, by `A027475.P15107714565028445481.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027475.P7982607736390885667

`15^n*(n+1)`
-/

namespace A027475.P7982607736390885667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 ^ n * (n + 1)

end

end A027475.P7982607736390885667

namespace A027475

/-- `15^n*(n+1)` -/
def P7982607736390885667.Spec : Prop :=
  ∀ n, (P7982607736390885667.a n : ℤ) = A027475 (n + 2)

theorem P7982607736390885667.correct : P7982607736390885667.Spec := by
  intro n
  simp only [A027475, Nat.add_sub_cancel, A027475.P7982607736390885667.a, A027475.P15107714565028445481.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A027475

/-! ## A027475.P15107714565028445481

`(n+1)*15^n`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027475

/-- `(n+1)*15^n` -/
def P15107714565028445481.Spec : Prop :=
  ∀ n, (P15107714565028445481.a n : ℤ) = A027475 (n + 2)

theorem P15107714565028445481.correct : P15107714565028445481.Spec := by
  intro n
  simp only [A027475, Nat.add_sub_cancel]

end A027475

/-! ## A027475.P13766010371244738436

`30*a(n-1)-225*a(n-2)` with `a(0)=1, a(1)=30`
-/

namespace A027475.P13766010371244738436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 30] fun n a =>
  30 * a (n - 1) - 225 * a (n - 2)

end

end A027475.P13766010371244738436

namespace A027475

/-- `30*a(n-1)-225*a(n-2)` -/
def P13766010371244738436.Spec : Prop :=
  ∀ n, P13766010371244738436.a n = A027475 (n + 2)

theorem P13766010371244738436.correct : P13766010371244738436.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A027475, Nat.add_sub_cancel, A027475.P13766010371244738436.a, A027475.P15107714565028445481.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A027475, Nat.add_sub_cancel, A027475.P13766010371244738436.a, A027475.P15107714565028445481.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [h1, h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A027475

/-! ## A027475.P1515911763251261103

`A027467(∑[n+1]+1)`
-/

namespace A027475.P1515911763251261103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027467 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027475.P1515911763251261103

namespace A027475

/-- `A027467(∑[n+1]+1)` -/
def P1515911763251261103.Spec : Prop :=
  ∀ n, P1515911763251261103.a n = A027475 (n + 2)

end A027475

/-! ## A027475.P8888030932422703515

`A001024(n)+n*A001024(n)`
-/

namespace A027475.P8888030932422703515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001024 n + (n : ℤ) * A001024 n

end

end A027475.P8888030932422703515

namespace A027475

/-- `A001024(n)+n*A001024(n)` -/
def P8888030932422703515.Spec : Prop :=
  ∀ n, P8888030932422703515.a n = A027475 (n + 2)

theorem P8888030932422703515.correct : P8888030932422703515.Spec := by
  intro n
  simp only [A027475, Nat.add_sub_cancel, A027475.P8888030932422703515.a, A027475.P15107714565028445481.a, A001024, A001024.P4674574780989564658.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A027475

/-! ## A027475.P17952498065537752977

`(n+1)*15*a(n-1)/n` with `a(0)=1`
-/

namespace A027475.P17952498065537752977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) * (15 * a (n - 1)) / (n : ℚ)

end

end A027475.P17952498065537752977

namespace A027475

/-- `(n+1)*15*a(n-1)/n` -/
def P17952498065537752977.Spec : Prop :=
  ∀ n, P17952498065537752977.a n = (A027475 (n + 2) : ℚ)

end A027475

/-! ## A027475.P17309069543399395155

`A053464(n+1)*A053540(n+1)/A027471(n+2)`
-/

namespace A027475.P17309069543399395155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053464 (n + 1) * A053540 (n + 1) : ℚ) / (A027471 (n + 2) : ℚ)

end

end A027475.P17309069543399395155

namespace A027475

/-- `A053464(n+1)*A053540(n+1)/A027471(n+2)` -/
def P17309069543399395155.Spec : Prop :=
  ∀ n, P17309069543399395155.a n = (A027475 (n + 2) : ℚ)

end A027475

/-!
# A027476: Third column of A027467.

The programs for A027476, the canonical program `A027476.P2032198004813653236` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027476 has offset 3).

The definition of A027476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027476.P2032198004813653236

`15^n*C(n+2, 2)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027476

/-- `15^n*C(n+2, 2)` -/
def P2032198004813653236.Spec : Prop :=
  ∀ n, (P2032198004813653236.a n : ℤ) = A027476 (n + 3)

theorem P2032198004813653236.correct : P2032198004813653236.Spec := by
  intro n
  simp only [A027476, Nat.add_sub_cancel]

end A027476

/-! ## A027476.P969312210739278316

`(n+2)*(n+1)/2*15^n`
-/

namespace A027476.P969312210739278316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 1) : ℚ) / 2 * (15 ^ n : ℚ)

end

end A027476.P969312210739278316

namespace A027476

/-- `(n+2)*(n+1)/2*15^n` -/
def P969312210739278316.Spec : Prop :=
  ∀ n, P969312210739278316.a n = (A027476 (n + 3) : ℚ)

theorem P969312210739278316.correct : P969312210739278316.Spec := by
  intro n
  simp only [A027476, Nat.add_sub_cancel, A027476.P969312210739278316.a, A027476.P2032198004813653236.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A027476

/-! ## A027476.P3106241085189082301

`A027467(∑[n+2]+3)`
-/

namespace A027476.P3106241085189082301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027467 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A027476.P3106241085189082301

namespace A027476

/-- `A027467(∑[n+2]+3)` -/
def P3106241085189082301.Spec : Prop :=
  ∀ n, P3106241085189082301.a n = A027476 (n + 3)

end A027476

/-! ## A027476.P4731496852462246627

`record[A027467(n)*A130270(n+1)]`
-/

namespace A027476.P4731496852462246627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027467 n * A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027476.P4731496852462246627

namespace A027476

/-- `record[A027467(n)*A130270(n+1)]` -/
def P4731496852462246627.Spec : Prop :=
  ∀ n, P4731496852462246627.a n = A027476 (n + 3)

end A027476

/-! ## A027476.P9820556379481405425

`lcm(A027472(n+3), A081135(n+2))`
-/

namespace A027476.P9820556379481405425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027472 (n + 3)) (A081135 (n + 2))

end

end A027476.P9820556379481405425

namespace A027476

/-- `lcm(A027472(n+3), A081135(n+2))` -/
def P9820556379481405425.Spec : Prop :=
  ∀ n, (P9820556379481405425.a n : ℤ) = A027476 (n + 3)

end A027476

/-! ## A027476.P12472328306933500520

`A000537(n+1)*A001024(n)/A000217(n+1)`
-/

namespace A027476.P12472328306933500520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000537 (n + 1) * A001024 n : ℚ) / (A000217 (n + 1) : ℚ)

end

end A027476.P12472328306933500520

namespace A027476

/-- `A000537(n+1)*A001024(n)/A000217(n+1)` -/
def P12472328306933500520.Spec : Prop :=
  ∀ n, P12472328306933500520.a n = (A027476 (n + 3) : ℚ)

end A027476

/-!
# A027480: a(n) = n*(n+1)*(n+2)/2.

The programs for A027480, the canonical program `A027480.P4665495128858654812` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027480 has offset 0).

The definition of A027480 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+1)*(n+2)/2` (program `A027480.P5011333497656145411`, by `A027480.P5011333497656145411.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027480.P16245666352777846422

`3*C(n+2, 3)`
-/

namespace A027480.P16245666352777846422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (n + 2) 3

end

end A027480.P16245666352777846422

namespace A027480

/-- `3*C(n+2, 3)` -/
def P16245666352777846422.Spec : Prop :=
  ∀ n, (P16245666352777846422.a n : ℤ) = A027480 n

end A027480

/-! ## A027480.P5011333497656145411

`n*(n+1)*(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027480.P5011333497656145411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (n + 2) : ℚ) / 2

end

end A027480.P5011333497656145411

namespace A027480

/-- `n*(n+1)*(n+2)/2` -/
def P5011333497656145411.Spec : Prop :=
  ∀ n, P5011333497656145411.a n = (A027480 n : ℚ)

theorem P5011333497656145411.correct : P5011333497656145411.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A027480, Nat.add_sub_cancel, A027480.P5011333497656145411.a, A027480.P4665495128858654812.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A027480, Nat.add_sub_cancel, A027480.P5011333497656145411.a, A027480.P4665495128858654812.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A027480

/-! ## A027480.P4665495128858654812

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=12, a(3)=30`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027480

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P4665495128858654812.Spec : Prop :=
  ∀ n, P4665495128858654812.a n = A027480 n

theorem P4665495128858654812.correct : P4665495128858654812.Spec := by
  intro n
  simp only [A027480]

end A027480

/-! ## A027480.P7358048585180212648

`3*A000292(n)`
-/

namespace A027480.P7358048585180212648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000292 n

end

end A027480.P7358048585180212648

namespace A027480

/-- `3*A000292(n)` -/
def P7358048585180212648.Spec : Prop :=
  ∀ n, P7358048585180212648.a n = A027480 n

end A027480

/-! ## A027480.P3874883482088597432

`Δ[C(C(n+1, 2), 2)]`
-/

namespace A027480.P3874883482088597432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (n + 1) 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A027480.P3874883482088597432

namespace A027480

/-- `Δ[C(C(n+1, 2), 2)]` -/
def P3874883482088597432.Spec : Prop :=
  ∀ n, P3874883482088597432.a n = A027480 n

end A027480

/-! ## A027480.P11190071840073145165

`lcm(n+2, lcm(n, ∑[n]))`
-/

namespace A027480.P11190071840073145165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) (Nat.lcm n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A027480.P11190071840073145165

namespace A027480

/-- `lcm(n+2, lcm(n, ∑[n]))` -/
def P11190071840073145165.Spec : Prop :=
  ∀ n, (P11190071840073145165.a n : ℤ) = A027480 n

end A027480

/-! ## A027480.P5755777007472333989

`floor(n/acot(∑[n+1]))`
-/

namespace A027480.P5755777007472333989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌋

end

end A027480.P5755777007472333989

namespace A027480

/-- `floor(n/acot(∑[n+1]))` -/
def P5755777007472333989.Spec : Prop :=
  ∀ n, P5755777007472333989.a n = A027480 n

end A027480

/-! ## A027480.P6827178927024610285

`round(n/acot(∑[n+1]))`
-/

namespace A027480.P6827178927024610285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A027480.P6827178927024610285

namespace A027480

/-- `round(n/acot(∑[n+1]))` -/
def P6827178927024610285.Spec : Prop :=
  ∀ n, P6827178927024610285.a n = A027480 n

end A027480

/-! ## A027480.P16529993361181417021

`Δ[C(n²-C(n, 2), 2)]`
-/

namespace A027480.P16529993361181417021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A027480.P16529993361181417021

namespace A027480

/-- `Δ[C(n²-C(n, 2), 2)]` -/
def P16529993361181417021.Spec : Prop :=
  ∀ n, P16529993361181417021.a n = A027480 n

end A027480

/-! ## A027480.P393551825184542704

`∑[∑[ogf(3x/(1-2x+x^2))]]`
-/

namespace A027480.P393551825184542704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027480.P393551825184542704

namespace A027480

/-- `∑[∑[ogf(3x/(1-2x+x^2))]]` -/
def P393551825184542704.Spec : Prop :=
  ∀ n, P393551825184542704.a n = A027480 n

end A027480

/-! ## A027480.P16213482486575129138

`ogf(3x/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A027480.P16213482486575129138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -4, 6, -4, 1] n

end

end A027480.P16213482486575129138

namespace A027480

/-- `ogf(3x/(1-4x+6x^2-4x^3+x^4))` -/
def P16213482486575129138.Spec : Prop :=
  ∀ n, P16213482486575129138.a n = A027480 n

end A027480

/-! ## A027480.P12129311047590231850

`lcm(3, n/Δ[2/(n+1)])`
-/

namespace A027480.P12129311047590231850
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (SequenceMachineLib.roundAway ((n : ℚ) / (f1 (n + 1) - f1 n)))

end

end A027480.P12129311047590231850

namespace A027480

/-- `lcm(3, n/Δ[2/(n+1)])` -/
def P12129311047590231850.Spec : Prop :=
  ∀ n, (P12129311047590231850.a n : ℤ) = A027480 n

end A027480

/-! ## A027480.P9128898225764296530

`abs(∑[∑[a(n-1)+3]])` with `a(0)=0`
-/

namespace A027480.P9128898225764296530
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027480.P9128898225764296530

namespace A027480

/-- `abs(∑[∑[a(n-1)+3]])` -/
def P9128898225764296530.Spec : Prop :=
  ∀ n, (P9128898225764296530.a n : ℤ) = A027480 n

end A027480

/-! ## A027480.P11736622492844187598

`-∑[∑[a(n-1)-3]]` with `a(0)=0`
-/

namespace A027480.P11736622492844187598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027480.P11736622492844187598

namespace A027480

/-- `-∑[∑[a(n-1)-3]]` -/
def P11736622492844187598.Spec : Prop :=
  ∀ n, P11736622492844187598.a n = A027480 n

end A027480

/-! ## A027480.P10556879341159228718

`floor(∑[∑[a(n-1)+3]])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A027480.P10556879341159228718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027480.P10556879341159228718

namespace A027480

/-- `floor(∑[∑[a(n-1)+3]])` -/
def P10556879341159228718.Spec : Prop :=
  ∀ n, (P10556879341159228718.a n : ℤ) = A027480 n

end A027480

/-! ## A027480.P1329969639819700152

`ceil(∑[∑[a(n-1)+3]])` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A027480.P1329969639819700152
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027480.P1329969639819700152

namespace A027480

/-- `ceil(∑[∑[a(n-1)+3]])` -/
def P1329969639819700152.Spec : Prop :=
  ∀ n, (P1329969639819700152.a n : ℤ) = A027480 n

end A027480

/-! ## A027480.P9172720554023203065

`round(∑[∑[a(n-1)+3]])` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A027480.P9172720554023203065
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027480.P9172720554023203065

namespace A027480

/-- `round(∑[∑[a(n-1)+3]])` -/
def P9172720554023203065.Spec : Prop :=
  ∀ n, (P9172720554023203065.a n : ℤ) = A027480 n

end A027480

/-! ## A027480.P5073347546751238207

`n*record[C(n, 2)-(n-1)]`
-/

namespace A027480.P5073347546751238207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027480.P5073347546751238207

namespace A027480

/-- `n*record[C(n, 2)-(n-1)]` -/
def P5073347546751238207.Spec : Prop :=
  ∀ n, P5073347546751238207.a n = A027480 n

end A027480

/-! ## A027480.P5729019863854260590

`(n+1)²*sinh(log(n+1))`
-/

namespace A027480.P5729019863854260590
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℝ) * Real.sinh (Real.log (n + 1 : ℝ))

end

end A027480.P5729019863854260590

namespace A027480

/-- `(n+1)²*sinh(log(n+1))` -/
def P5729019863854260590.Spec : Prop :=
  ∀ n, P5729019863854260590.a n = (A027480 n : ℝ)

end A027480

/-! ## A027480.P9900697693914992164

`floor(n/sin(1/∑[n+1]))`
-/

namespace A027480.P9900697693914992164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sin (1 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) : ℝ)⌋

end

end A027480.P9900697693914992164

namespace A027480

/-- `floor(n/sin(1/∑[n+1]))` -/
def P9900697693914992164.Spec : Prop :=
  ∀ n, P9900697693914992164.a n = A027480 n

end A027480

/-!
# A027481: Second subdiagonal of triangle A027477, constructed from the Stirling numbers of the first kind.

The programs for A027481, there is no canonical definition to state claims against.
-/

/-! ## A027481.P4682079008933679736

`C(n+4, 4)*Δ[A027620(n)]`
-/

namespace A027481.P4682079008933679736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℤ) * (f1 (n + 1) - f1 n)

end

end A027481.P4682079008933679736

/-! ## A027481.P15788978178052150479

`Δ[A027620(n)]*A000332(n+4)`
-/

namespace A027481.P15788978178052150479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000332 (n + 4)

end

end A027481.P15788978178052150479

/-! ## A027481.P2136647528482685204

`∑[A000292(n+1)]*Δ[A027620(n)]`
-/

namespace A027481.P2136647528482685204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A027481.P2136647528482685204

/-! ## A027481.P16166557571520843576

`∑[A000292(n+1)]*Δ[A081437(n+1)]`
-/

namespace A027481.P16166557571520843576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A027481.P16166557571520843576

/-! ## A027481.P8849497015474761638

`∑[A000292(n+1)]*A184005(2*n+5)`
-/

namespace A027481.P8849497015474761638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A184005 (2 * n + 5)

end

end A027481.P8849497015474761638

/-! ## A027481.P7948065386286021421

`Δ[A027620(n)]*A178821(A000217(n))`
-/

namespace A027481.P7948065386286021421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A178821 (A000217 n).toNat

end

end A027481.P7948065386286021421

/-! ## A027481.P2273754880448684842

`Δ[A027620(n)]*A213548(A000124(n))`
-/

namespace A027481.P2273754880448684842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A213548 (A000124 n).toNat

end

end A027481.P2273754880448684842

/-!
# A027482: a(n) = n*(n^3 - 1)/2.

The programs for A027482, the canonical program `A027482.P1334308615150628747` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027482 has offset 2).

The definition of A027482 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)*((n+2)^3-1)/2` (program `A027482.P9537084518043446463`, by `A027482.P9537084518043446463.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A027482.P9537084518043446463

`(n+2)*((n+2)^3-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A027482.P9537084518043446463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * (((n + 2) ^ 3 : ℤ) - 1) : ℚ) / 2

end

end A027482.P9537084518043446463

namespace A027482

/-- `(n+2)*((n+2)^3-1)/2` -/
def P9537084518043446463.Spec : Prop :=
  ∀ n, P9537084518043446463.a n = (A027482 (n + 2) : ℚ)

theorem P9537084518043446463.correct : P9537084518043446463.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A027482, Nat.add_sub_cancel, A027482.P9537084518043446463.a, A027482.P1334308615150628747.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A027482, Nat.add_sub_cancel, A027482.P9537084518043446463.a, A027482.P1334308615150628747.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A027482

/-! ## A027482.P1334308615150628747

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=7, a(1)=39, a(2)=126, a(3)=310, a(4)=645`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027482

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P1334308615150628747.Spec : Prop :=
  ∀ n, P1334308615150628747.a n = A027482 (n + 2)

theorem P1334308615150628747.correct : P1334308615150628747.Spec := by
  intro n
  simp only [A027482, Nat.add_sub_cancel]

end A027482

/-! ## A027482.P6441004785902412885

`A000217((n+2)²)-A000217(n+2)`
-/

namespace A027482.P6441004785902412885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((n + 2) ^ 2) - A000217 (n + 2)

end

end A027482.P6441004785902412885

namespace A027482

/-- `A000217((n+2)²)-A000217(n+2)` -/
def P6441004785902412885.Spec : Prop :=
  ∀ n, P6441004785902412885.a n = A027482 (n + 2)

end A027482

/-! ## A027482.P13198672277554692678

`∑[n+1]+C((n+2)², 2)`
-/

namespace A027482.P13198672277554692678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose ((n + 2) ^ 2) 2

end

end A027482.P13198672277554692678

namespace A027482

/-- `∑[n+1]+C((n+2)², 2)` -/
def P13198672277554692678.Spec : Prop :=
  ∀ n, (P13198672277554692678.a n : ℤ) = A027482 (n + 2)

end A027482

/-! ## A027482.P13131322095857420582

`∑[n+1]*∑[a(n-1)+2]` with `a(0)=7, a(1)=6`
-/

namespace A027482.P13131322095857420582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [7, 6] fun n f2 =>
  f2 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A027482.P13131322095857420582

namespace A027482

/-- `∑[n+1]*∑[a(n-1)+2]` -/
def P13131322095857420582.Spec : Prop :=
  ∀ n, (P13131322095857420582.a n : ℤ) = A027482 (n + 2)

end A027482

/-! ## A027482.P12529779949187248268

`((n+2)²+n+3)*C(n+2, 2)`
-/

namespace A027482.P12529779949187248268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 + (n + 3)) * Nat.choose (n + 2) 2

end

end A027482.P12529779949187248268

namespace A027482

/-- `((n+2)²+n+3)*C(n+2, 2)` -/
def P12529779949187248268.Spec : Prop :=
  ∀ n, (P12529779949187248268.a n : ℤ) = A027482 (n + 2)

end A027482

/-! ## A027482.P16134246185054678475

`(lcm(n+2, n+3)+1)*∑[n+1]`
-/

namespace A027482.P16134246185054678475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 2) (n + 3) + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027482.P16134246185054678475

namespace A027482

/-- `(lcm(n+2, n+3)+1)*∑[n+1]` -/
def P16134246185054678475.Spec : Prop :=
  ∀ n, (P16134246185054678475.a n : ℤ) = A027482 (n + 2)

end A027482

/-! ## A027482.P12256593508863391206

`or(1, (n+2)*(n+3))*∑[n+1]`
-/

namespace A027482.P12256593508863391206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 ((n + 2) * (n + 3)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027482.P12256593508863391206

namespace A027482

/-- `or(1, (n+2)*(n+3))*∑[n+1]` -/
def P12256593508863391206.Spec : Prop :=
  ∀ n, (P12256593508863391206.a n : ℤ) = A027482 (n + 2)

end A027482

/-! ## A027482.P13648391099908944864

`xor(1, (n+2)*(n+3))*∑[n+1]`
-/

namespace A027482.P13648391099908944864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((n + 2) * (n + 3)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027482.P13648391099908944864

namespace A027482

/-- `xor(1, (n+2)*(n+3))*∑[n+1]` -/
def P13648391099908944864.Spec : Prop :=
  ∀ n, (P13648391099908944864.a n : ℤ) = A027482 (n + 2)

end A027482

/-! ## A027482.P17895108907457413654

`A101854(n+1)+A055268(n)`
-/

namespace A027482.P17895108907457413654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101854 (n + 1) + A055268 n

end

end A027482.P17895108907457413654

namespace A027482

/-- `A101854(n+1)+A055268(n)` -/
def P17895108907457413654.Spec : Prop :=
  ∀ n, P17895108907457413654.a n = A027482 (n + 2)

end A027482

/-! ## A027482.P8208131975620032051

`A206808(n+2)-A033487(n)`
-/

namespace A027482.P8208131975620032051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206808 (n + 2) - A033487 n

end

end A027482.P8208131975620032051

namespace A027482

/-- `A206808(n+2)-A033487(n)` -/
def P8208131975620032051.Spec : Prop :=
  ∀ n, P8208131975620032051.a n = A027482 (n + 2)

end A027482

/-! ## A027482.P16708823963140956155

`A213549(n+1)+A136105(n+8)`
-/

namespace A027482.P16708823963140956155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213549 (n + 1) + A136105 (n + 8)

end

end A027482.P16708823963140956155

namespace A027482

/-- `A213549(n+1)+A136105(n+8)` -/
def P16708823963140956155.Spec : Prop :=
  ∀ n, P16708823963140956155.a n = A027482 (n + 2)

end A027482

/-! ## A027482.P10927542746677357635

`∑[∑[A227776(n+1)]]`
-/

namespace A027482.P10927542746677357635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227776 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027482.P10927542746677357635

namespace A027482

/-- `∑[∑[A227776(n+1)]]` -/
def P10927542746677357635.Spec : Prop :=
  ∀ n, P10927542746677357635.a n = A027482 (n + 2)

end A027482

/-! ## A027482.P12584474695099951367

`ceil(A126423(n+2)/2)`
-/

namespace A027482.P12584474695099951367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126423 (n + 2) : ℚ) / 2⌉

end

end A027482.P12584474695099951367

namespace A027482

/-- `ceil(A126423(n+2)/2)` -/
def P12584474695099951367.Spec : Prop :=
  ∀ n, P12584474695099951367.a n = A027482 (n + 2)

end A027482

/-! ## A027482.P3495499922359456424

`A027441(n+2)-(n+2)`
-/

namespace A027482.P3495499922359456424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027441 (n + 2) - (n + 2 : ℤ)

end

end A027482.P3495499922359456424

namespace A027482

/-- `A027441(n+2)-(n+2)` -/
def P3495499922359456424.Spec : Prop :=
  ∀ n, P3495499922359456424.a n = A027482 (n + 2)

end A027482

/-! ## A027482.P12568468939160181169

`∑[A055112(n+1)+n+1]`
-/

namespace A027482.P12568468939160181169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027482.P12568468939160181169

namespace A027482

/-- `∑[A055112(n+1)+n+1]` -/
def P12568468939160181169.Spec : Prop :=
  ∀ n, P12568468939160181169.a n = A027482 (n + 2)

end A027482

/-! ## A027482.P7111595980584159110

`A058310(n+1)-(2*n+3)`
-/

namespace A027482.P7111595980584159110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058310 (n + 1) - (2 * n + 3 : ℤ)

end

end A027482.P7111595980584159110

namespace A027482

/-- `A058310(n+1)-(2*n+3)` -/
def P7111595980584159110.Spec : Prop :=
  ∀ n, P7111595980584159110.a n = A027482 (n + 2)

end A027482

/-! ## A027482.P10585449952131476472

`A033487(n+1)+∑[n+1]²`
-/

namespace A027482.P10585449952131476472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A027482.P10585449952131476472

namespace A027482

/-- `A033487(n+1)+∑[n+1]²` -/
def P10585449952131476472.Spec : Prop :=
  ∀ n, P10585449952131476472.a n = A027482 (n + 2)

end A027482

/-! ## A027482.P2957055732168379174

`A083374(n+2)+A000217(n+1)`
-/

namespace A027482.P2957055732168379174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083374 (n + 2) + A000217 (n + 1)

end

end A027482.P2957055732168379174

namespace A027482

/-- `A083374(n+2)+A000217(n+1)` -/
def P2957055732168379174.Spec : Prop :=
  ∀ n, P2957055732168379174.a n = A027482 (n + 2)

end A027482

/-! ## A027482.P14015460373448600193

`A000217(n+1)+A033487(n+1)+A033487(n)`
-/

namespace A027482.P14015460373448600193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A033487 (n + 1) + A033487 n)

end

end A027482.P14015460373448600193

namespace A027482

/-- `A000217(n+1)+A033487(n+1)+A033487(n)` -/
def P14015460373448600193.Spec : Prop :=
  ∀ n, P14015460373448600193.a n = A027482 (n + 2)

end A027482

/-!
# A027483: Second subdiagonal of triangle A027478, constructed from the Stirling numbers of the first kind.

The programs for A027483, there is no canonical definition to state claims against.
-/

/-! ## A027483.P9177989870397061042

`A027478(∑[n+3]+1)`
-/

namespace A027483.P9177989870397061042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027478 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027483.P9177989870397061042

/-!
# A027484: a(n) = n*(n^4-1)/2.

The programs for A027484, the canonical program `A027484.P4086361051666705444` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A027484 has offset 2).

The definition of A027484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A027484.P4086361051666705444

`(n+2)*((n+2)^4-1)/2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A027484

/-- `(n+2)*((n+2)^4-1)/2` -/
def P4086361051666705444.Spec : Prop :=
  ∀ n, P4086361051666705444.a n = (A027484 (n + 2) : ℚ)

end A027484

/-! ## A027484.P13662491501742288329

`∑[5*C(∑[2*(n+1)]+1, 2)]`
-/

namespace A027484.P13662491501742288329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027484.P13662491501742288329

namespace A027484

/-- `∑[5*C(∑[2*(n+1)]+1, 2)]` -/
def P13662491501742288329.Spec : Prop :=
  ∀ n, (P13662491501742288329.a n : ℤ) = A027484 (n + 2)

end A027484

/-! ## A027484.P17857681597887266227

`(lcm(n+3, (n+2)²)+n+3)*∑[n+1]`
-/

namespace A027484.P17857681597887266227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 3) ((n + 2) ^ 2) + (n + 3)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027484.P17857681597887266227

namespace A027484

/-- `(lcm(n+3, (n+2)²)+n+3)*∑[n+1]` -/
def P17857681597887266227.Spec : Prop :=
  ∀ n, (P17857681597887266227.a n : ℤ) = A027484 (n + 2)

end A027484

/-! ## A027484.P5065313856556219625

`∑[∑[A068236(n)/2]]`
-/

namespace A027484.P5065313856556219625
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068236 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027484.P5065313856556219625

namespace A027484

/-- `∑[∑[A068236(n)/2]]` -/
def P5065313856556219625.Spec : Prop :=
  ∀ n, P5065313856556219625.a n = (A027484 (n + 2) : ℚ)

end A027484

/-! ## A027484.P2168286135317783158

`3*5*A033455(n+1)`
-/

namespace A027484.P2168286135317783158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (5 * A033455 (n + 1))

end

end A027484.P2168286135317783158

namespace A027484

/-- `3*5*A033455(n+1)` -/
def P2168286135317783158.Spec : Prop :=
  ∀ n, P2168286135317783158.a n = A027484 (n + 2)

end A027484

/-! ## A027484.P399521740959112172

`A191902(n+1)-(A004526(n)+1)`
-/

namespace A027484.P399521740959112172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191902 (n + 1) - (A004526 n + 1)

end

end A027484.P399521740959112172

namespace A027484

/-- `A191902(n+1)-(A004526(n)+1)` -/
def P399521740959112172.Spec : Prop :=
  ∀ n, P399521740959112172.a n = A027484 (n + 2)

end A027484

/-! ## A027484.P14744002727406366330

`5*A164938(n+2)`
-/

namespace A027484.P14744002727406366330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A164938 (n + 2)

end

end A027484.P14744002727406366330

namespace A027484

/-- `5*A164938(n+2)` -/
def P14744002727406366330.Spec : Prop :=
  ∀ n, P14744002727406366330.a n = A027484 (n + 2)

end A027484

/-! ## A027484.P16920259582159162781

`∑[5*A110450(n+1)]`
-/

namespace A027484.P16920259582159162781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A110450 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027484.P16920259582159162781

namespace A027484

/-- `∑[5*A110450(n+1)]` -/
def P16920259582159162781.Spec : Prop :=
  ∀ n, P16920259582159162781.a n = A027484 (n + 2)

end A027484

/-! ## A027484.P13959384681277011822

`A021003(n+2)-(n+2)`
-/

namespace A027484.P13959384681277011822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021003 (n + 2) - (n + 2 : ℤ)

end

end A027484.P13959384681277011822

namespace A027484

/-- `A021003(n+2)-(n+2)` -/
def P13959384681277011822.Spec : Prop :=
  ∀ n, P13959384681277011822.a n = A027484 (n + 2)

end A027484

/-! ## A027484.P7189236631730509272

`∑[∑[A101098(n+2)/2]]`
-/

namespace A027484.P7189236631730509272
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101098 (n + 2) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A027484.P7189236631730509272

namespace A027484

/-- `∑[∑[A101098(n+2)/2]]` -/
def P7189236631730509272.Spec : Prop :=
  ∀ n, P7189236631730509272.a n = (A027484 (n + 2) : ℚ)

end A027484

/-! ## A027484.P8669022977995636359

`A131471(n+2)/2-(n+2)`
-/

namespace A027484.P8669022977995636359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131471 (n + 2) : ℚ) / 2 - (n + 2 : ℚ)

end

end A027484.P8669022977995636359

namespace A027484

/-- `A131471(n+2)/2-(n+2)` -/
def P8669022977995636359.Spec : Prop :=
  ∀ n, P8669022977995636359.a n = (A027484 (n + 2) : ℚ)

end A027484

/-! ## A027484.P15073596941708468356

`(A100119(n+1)+A005563(n+1))*A005563(n+1)`
-/

namespace A027484.P15073596941708468356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100119 (n + 1) + A005563 (n + 1)) * A005563 (n + 1)

end

end A027484.P15073596941708468356

namespace A027484

/-- `(A100119(n+1)+A005563(n+1))*A005563(n+1)` -/
def P15073596941708468356.Spec : Prop :=
  ∀ n, P15073596941708468356.a n = A027484 (n + 2)

end A027484

/-! ## A027484.P7804833512115453422

`(n+1)*A071237(n+2)`
-/

namespace A027484.P7804833512115453422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A071237 (n + 2)

end

end A027484.P7804833512115453422

namespace A027484

/-- `(n+1)*A071237(n+2)` -/
def P7804833512115453422.Spec : Prop :=
  ∀ n, P7804833512115453422.a n = A027484 (n + 2)

end A027484

/-! ## A027484.P13979794391705434697

`(n+3)*A071252(n+2)`
-/

namespace A027484.P13979794391705434697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A071252 (n + 2)

end

end A027484.P13979794391705434697

namespace A027484

/-- `(n+3)*A071252(n+2)` -/
def P13979794391705434697.Spec : Prop :=
  ∀ n, P13979794391705434697.a n = A027484 (n + 2)

end A027484

/-! ## A027484.P600509840025864455

`A274325(n+2)-(A008619(n)+1)`
-/

namespace A027484.P600509840025864455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274325 (n + 2) - (A008619 n + 1)

end

end A027484.P600509840025864455

namespace A027484

/-- `A274325(n+2)-(A008619(n)+1)` -/
def P600509840025864455.Spec : Prop :=
  ∀ n, P600509840025864455.a n = A027484 (n + 2)

end A027484

/-! ## A027484.P2903627276846370639

`A005563(n+1)*A006003(n+2)`
-/

namespace A027484.P2903627276846370639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1) * A006003 (n + 2)

end

end A027484.P2903627276846370639

namespace A027484

/-- `A005563(n+1)*A006003(n+2)` -/
def P2903627276846370639.Spec : Prop :=
  ∀ n, P2903627276846370639.a n = A027484 (n + 2)

end A027484

/-! ## A027484.P2160925223443647316

`A000217(n+1)*A053698(n+2)`
-/

namespace A027484.P2160925223443647316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * A053698 (n + 2)

end

end A027484.P2160925223443647316

namespace A027484

/-- `A000217(n+1)*A053698(n+2)` -/
def P2160925223443647316.Spec : Prop :=
  ∀ n, P2160925223443647316.a n = A027484 (n + 2)

end A027484

/-! ## A027484.P12019137608952766749

`A372751(n+2)-A005900(n+2)`
-/

namespace A027484.P12019137608952766749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372751 (n + 2) - A005900 (n + 2)

end

end A027484.P12019137608952766749

namespace A027484

/-- `A372751(n+2)-A005900(n+2)` -/
def P12019137608952766749.Spec : Prop :=
  ∀ n, P12019137608952766749.a n = A027484 (n + 2)

end A027484

/-!
# A027485: Second subdiagonal of triangle A027479, constructed from the Stirling numbers of the first kind.

The programs for A027485, there is no canonical definition to state claims against.
-/

/-! ## A027485.P4641513262611463109

`A027479(∑[n+3]+1)`
-/

namespace A027485.P4641513262611463109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027479 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027485.P4641513262611463109

/-! ## A027485.P8217557714548499284

`A027479(A034856(n+2))*A131534(3*n+2)`
-/

namespace A027485.P8217557714548499284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027479 (A034856 (n + 2)).toNat * A131534 (3 * n + 2)

end

end A027485.P8217557714548499284

/-!
# A027486: First column of triangle A027477, constructed from the Stirling numbers of the first kind.

The programs for A027486, there is no canonical definition to state claims against.
-/

/-! ## A027486.P13719517721081329229

`A027477(∑[n]+1)`
-/

namespace A027486.P13719517721081329229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027477 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027486.P13719517721081329229

/-! ## A027486.P18141007593969551607

`record[A027477(n+1)*A145677(n)]`
-/

namespace A027486.P18141007593969551607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027477 (n + 1) * A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027486.P18141007593969551607

/-! ## A027486.P15838588185269592746

`record[A027477(n+1)/A007318(n)]`
-/

namespace A027486.P15838588185269592746
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027477 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027486.P15838588185269592746

/-! ## A027486.P12521379180698136922

`record[A027477(n+1)/A008459(n)]`
-/

namespace A027486.P12521379180698136922
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027477 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027486.P12521379180698136922

/-! ## A027486.P8268515421625376837

`record[A027477(n+1)/A055898(n)]`
-/

namespace A027486.P8268515421625376837
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027477 (n + 1) : ℚ) / (A055898 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027486.P8268515421625376837

/-!
# A027487: Second column of triangle A027477, constructed from the Stirling numbers of the first kind.

The programs for A027487, there is no canonical definition to state claims against.
-/

/-! ## A027487.P3356654647891437318

`A027477(∑[n+1]+2)`
-/

namespace A027487.P3356654647891437318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027477 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A027487.P3356654647891437318

/-! ## A027487.P5380814718907801470

`record[A027477(A080036(n))]`
-/

namespace A027487.P5380814718907801470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027477 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027487.P5380814718907801470

/-! ## A027487.P10107690043023184707

`record[A027477(n+1)^A167407(n)]`
-/

namespace A027487.P10107690043023184707
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027477 (n + 1) : ℚ) ^ (A167407 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027487.P10107690043023184707

/-! ## A027487.P803699566550687659

`record[gcd(A027477(n+1), A145677(n))]`
-/

namespace A027487.P803699566550687659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027477 (n + 1)) (A145677 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027487.P803699566550687659

/-! ## A027487.P18221805747160049571

`record[or(A027477(n+1), A103452(n))]`
-/

namespace A027487.P18221805747160049571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027477 (n + 1)) (A103452 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027487.P18221805747160049571

/-!
# A027488: Third column of triangle A027477, constructed from the Stirling numbers of the first kind.

The programs for A027488, there is no canonical definition to state claims against.
-/

/-! ## A027488.P14047447799813693358

`A027477(∑[n+2]+4)`
-/

namespace A027488.P14047447799813693358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027477 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A027488.P14047447799813693358

/-! ## A027488.P7594932896181519798

`gcd(A000038(n), A027477(A167614(n+1)))`
-/

namespace A027488.P7594932896181519798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A027477 (A167614 (n + 1)).toNat)

end

end A027488.P7594932896181519798

/-! ## A027488.P12263347042871545121

`lcm(A026517(n), A027477(A167614(n+1)))`
-/

namespace A027488.P12263347042871545121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026517 n) (A027477 (A167614 (n + 1)).toNat)

end

end A027488.P12263347042871545121

/-! ## A027488.P13895864366234441145

`or(A000007(n), A027477(A167614(n+1)))`
-/

namespace A027488.P13895864366234441145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A027477 (A167614 (n + 1)).toNat)

end

end A027488.P13895864366234441145

/-! ## A027488.P18139157387530239348

`or(A027477(A167614(n+1)), A112316(n))`
-/

namespace A027488.P18139157387530239348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027477 (A167614 (n + 1)).toNat) (A112316 n)

end

end A027488.P18139157387530239348

/-!
# A027489: First column of Triangle A027478, constructed from Stirling numbers of the first kind.

The programs for A027489, there is no canonical definition to state claims against.
-/

/-! ## A027489.P10694041630440033183

`A027478(∑[n]+1)`
-/

namespace A027489.P10694041630440033183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027478 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027489.P10694041630440033183

/-! ## A027489.P17473091439882736600

`record[A027478(n+1)]`
-/

namespace A027489.P17473091439882736600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027489.P17473091439882736600

/-! ## A027489.P16296691840166978464

`lcm(A001055(n+1), A027478(A000124(n)))`
-/

namespace A027489.P16296691840166978464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001055 (n + 1)) (A027478 (A000124 n).toNat)

end

end A027489.P16296691840166978464

/-! ## A027489.P14632766255421786083

`A014963(A005914(n))*A027478(A000124(n))`
-/

namespace A027489.P14632766255421786083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005914 n).toNat * A027478 (A000124 n).toNat

end

end A027489.P14632766255421786083

/-! ## A027489.P14309376102190339490

`A014963(A055268(n))*A027478(A000124(n))`
-/

namespace A027489.P14309376102190339490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A055268 n).toNat * A027478 (A000124 n).toNat

end

end A027489.P14309376102190339490

/-!
# A027490: Second column of Triangle A027478, constructed from the Stirling numbers of the first kind.

The programs for A027490, there is no canonical definition to state claims against.
-/

/-! ## A027490.P8467545593319529922

`A027478(∑[n+1]+2)`
-/

namespace A027490.P8467545593319529922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027478 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A027490.P8467545593319529922

/-! ## A027490.P7827503837797182038

`record[gcd(A027478(n+1), A145677(n))]`
-/

namespace A027490.P7827503837797182038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027478 (n + 1)) (A145677 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027490.P7827503837797182038

/-! ## A027490.P6443255787598008353

`record[A027478(n+1)^Δ[A220280(n+1)]]`
-/

namespace A027490.P6443255787598008353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220280 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027478 (n + 1) : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027490.P6443255787598008353

/-! ## A027490.P17439193875376569261

`record[A027478(A133263(∑{e}[n, #]))]`
-/

namespace A027490.P17439193875376569261
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027478 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027490.P17439193875376569261

/-! ## A027490.P7942719044356336155

`record[A027478(n+1)^A033999(A103406(n))]`
-/

namespace A027490.P7942719044356336155
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027478 (n + 1) : ℚ) ^ (A033999 (A103406 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027490.P7942719044356336155

/-!
# A027491: Third column of Triangle A027478, constructed from the Stirling numbers of the first kind.

The programs for A027491, there is no canonical definition to state claims against.
-/

/-! ## A027491.P17275371865618425648

`A027478(∑[n+2]+4)`
-/

namespace A027491.P17275371865618425648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027478 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A027491.P17275371865618425648

/-! ## A027491.P7066020903367390349

`gcd(A000038(n), A027478(A167614(n+1)))`
-/

namespace A027491.P7066020903367390349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A027478 (A167614 (n + 1)).toNat)

end

end A027491.P7066020903367390349

/-! ## A027491.P3988573121866870682

`lcm(A027478(A167614(n+1)), A144464(n))`
-/

namespace A027491.P3988573121866870682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027478 (A167614 (n + 1)).toNat) (A144464 n)

end

end A027491.P3988573121866870682

/-! ## A027491.P4768917335769557844

`or(A000007(n), A027478(A167614(n+1)))`
-/

namespace A027491.P4768917335769557844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A027478 (A167614 (n + 1)).toNat)

end

end A027491.P4768917335769557844

/-! ## A027491.P18218946224470598

`A027478(A167614(n+1))*A055396(2*(n+1))`
-/

namespace A027491.P18218946224470598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027478 (A167614 (n + 1)).toNat * A055396 (2 * (n + 1))

end

end A027491.P18218946224470598

/-!
# A027492: First column of Triangle A027479, constructed from the Stirling numbers of the first kind.

The programs for A027492, there is no canonical definition to state claims against.
-/

/-! ## A027492.P3506823662649025038

`A027479(∑[n]+1)`
-/

namespace A027492.P3506823662649025038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027479 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A027492.P3506823662649025038

/-! ## A027492.P11782257668771018601

`record[A027479(n+1)]`
-/

namespace A027492.P11782257668771018601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027492.P11782257668771018601

/-! ## A027492.P18080434705130728138

`record[ratio[A027479(A028310(n))]]`
-/

namespace A027492.P18080434705130728138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027479 (A028310 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027492.P18080434705130728138

/-! ## A027492.P17449103479153683760

`lcm(A027479(A000124(n)), A108363(n))`
-/

namespace A027492.P17449103479153683760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027479 (A000124 n).toNat) (A108363 n)

end

end A027492.P17449103479153683760

/-! ## A027492.P12278166638219247378

`A007318(∑[n])*A027479(A000124(n))`
-/

namespace A027492.P12278166638219247378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A027479 (A000124 n).toNat

end

end A027492.P12278166638219247378

/-!
# A027493: Second column of Triangle A027479, constructed from the Stirling numbers of the first kind.

The programs for A027493, there is no canonical definition to state claims against.
-/

/-! ## A027493.P1402662985327448203

`A027479(∑[n+1]+2)`
-/

namespace A027493.P1402662985327448203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027479 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A027493.P1402662985327448203

/-!
# A027494: Third column of Triangle A027479, constructed from the Stirling numbers of the first kind.

The programs for A027494, there is no canonical definition to state claims against.
-/

/-! ## A027494.P6870019546615269663

`A027479(∑[n+2]+4)`
-/

namespace A027494.P6870019546615269663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027479 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A027494.P6870019546615269663

/-!
# A027496: Cube of the lower triangular normalized 2nd kind Stirling matrix.

The programs for A027496, there is no canonical definition to state claims against.
-/

/-! ## A027496.P17521472105398040794

`A027379(A007613(n))%A249497(n+1)`
-/

namespace A027496.P17521472105398040794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027379 (A007613 n).toNat) (A249497 (n + 1))

end

end A027496.P17521472105398040794

/-!
# A027498: First diagonal of A027495.

The programs for A027498, there is no canonical definition to state claims against.
-/

/-! ## A027498.P8833504277924333176

`A027495(∑[n+1])`
-/

namespace A027498.P8833504277924333176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027495 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027498.P8833504277924333176

/-! ## A027498.P13714008481806935021

`A326545(n)+A027495(A176659(n+1))`
-/

namespace A027498.P13714008481806935021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326545 n + A027495 (A176659 (n + 1)).toNat

end

end A027498.P13714008481806935021

/-! ## A027498.P12244702082800706604

`lcm(A027495(A176659(n+1)), A033999(n))`
-/

namespace A027498.P12244702082800706604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027495 (A176659 (n + 1)).toNat) (A033999 n)

end

end A027498.P12244702082800706604

/-! ## A027498.P3151173765846734463

`or(A000007(n), A027495(A000217(n+1)))`
-/

namespace A027498.P3151173765846734463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A027495 (A000217 (n + 1)).toNat)

end

end A027498.P3151173765846734463

/-! ## A027498.P6377874597255842133

`A027495(A000217(n+1))+A000007(n+1)`
-/

namespace A027498.P6377874597255842133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027495 (A000217 (n + 1)).toNat + A000007 (n + 1)

end

end A027498.P6377874597255842133

/-!
# A027499: Second diagonal of A027495.

The programs for A027499, there is no canonical definition to state claims against.
-/

/-! ## A027499.P12267952196952989176

`A027495(∑[n+2])`
-/

namespace A027499.P12267952196952989176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027495 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A027499.P12267952196952989176

/-! ## A027499.P16331744810482172850

`record[A010054(n+3)*A027495(n+2)]`
-/

namespace A027499.P16331744810482172850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 3) * A027495 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027499.P16331744810482172850

/-! ## A027499.P5454744976576884433

`record[A027495(n+2)/A046860(n+4)]`
-/

namespace A027499.P5454744976576884433
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027495 (n + 2) : ℚ) / (A046860 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A027499.P5454744976576884433

/-! ## A027499.P14223850649730660097

`lcm(A020985(n), A027495(A000096(n+1)))`
-/

namespace A027499.P14223850649730660097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A027495 (A000096 (n + 1)).toNat)

end

end A027499.P14223850649730660097

/-! ## A027499.P3827750736043327688

`A027495(A000096(n+1))+A000038(n+4)`
-/

namespace A027499.P3827750736043327688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027495 (A000096 (n + 1)).toNat + A000038 (n + 4)

end

end A027499.P3827750736043327688

