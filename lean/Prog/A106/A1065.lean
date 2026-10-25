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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A106500: Values r associated with A106499.

The programs for A106500, there is no canonical definition to state claims against.
-/

/-! ## A106500.P11821666276451735636

`A106499(n+1)/A106501(n+1)-A106501(n+1)`
-/

namespace A106500.P11821666276451735636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106499 (n + 1) : ℚ) / (A106501 (n + 1) : ℚ) - (A106501 (n + 1) : ℚ)

end

end A106500.P11821666276451735636

/-! ## A106500.P2835055840680709457

`A106499(C(n+1, n))%A106501(n+1)²/A106501(n+1)`
-/

namespace A106500.P2835055840680709457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A106499 (Nat.choose (n + 1) n)) (A106501 (n + 1) ^ 2) : ℚ) / (A106501 (n + 1) : ℚ)

end

end A106500.P2835055840680709457

/-! ## A106500.P6907671485140350567

`A106499(n+1)%A106501(A000027(n+1))²/A106501(n+1)`
-/

namespace A106500.P6907671485140350567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A106499 (n + 1)) (A106501 (A000027 (n + 1)).toNat ^ 2) : ℚ) / (A106501 (n + 1) : ℚ)

end

end A106500.P6907671485140350567

/-! ## A106500.P4276573386858611999

`sqrt(A106501(n+1)²-A106506(n+1))`
-/

namespace A106500.P4276573386858611999
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A106501 (n + 1) ^ 2 - A106506 (n + 1) : ℝ)

end

end A106500.P4276573386858611999

/-! ## A106500.P17780361710215166811

`A000188(A106501(n+1)²-A106506(n+1))`
-/

namespace A106500.P17780361710215166811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A106501 (n + 1) ^ 2 - A106506 (n + 1)).toNat

end

end A106500.P17780361710215166811

/-! ## A106500.P17623686739655216350

`A000194(A106501(n+1)²-A106506(n+1))`
-/

namespace A106500.P17623686739655216350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A106501 (n + 1) ^ 2 - A106506 (n + 1)).toNat

end

end A106500.P17623686739655216350

/-! ## A106500.P18313284133189497548

`A033676(A106501(n+1)²-A106506(n+1))`
-/

namespace A106500.P18313284133189497548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A106501 (n + 1) ^ 2 - A106506 (n + 1)).toNat

end

end A106500.P18313284133189497548

/-! ## A106500.P4683711663353623545

`gcd(A106499(n+1), A106506(n+1))-A106501(n+1)`
-/

namespace A106500.P4683711663353623545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A106499 (n + 1)) (A106506 (n + 1)) : ℤ) - A106501 (n + 1)

end

end A106500.P4683711663353623545

/-! ## A106500.P17895390412259443148

`sqrt(A106410(n+1))`
-/

namespace A106500.P17895390412259443148
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A106410 (n + 1) : ℝ)

end

end A106500.P17895390412259443148

/-! ## A106500.P2783057015688761974

`A000194(A106410(n+1)+1)`
-/

namespace A106500.P2783057015688761974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A106410 (n + 1) + 1).toNat

end

end A106500.P2783057015688761974

/-!
# A106501: Values s associated with A106499.

The programs for A106501, there is no canonical definition to state claims against.
-/

/-! ## A106501.P6900597658259994827

`sqrt(A106506(n+1)+A106500(n+1)²)`
-/

namespace A106501.P6900597658259994827
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A106506 (n + 1) + A106500 (n + 1) ^ 2 : ℝ)

end

end A106501.P6900597658259994827

/-! ## A106501.P17305334106887817589

`A000188(A106506(n+1)+A106500(n+1)²)`
-/

namespace A106501.P17305334106887817589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A106506 (n + 1) + A106500 (n + 1) ^ 2).toNat

end

end A106501.P17305334106887817589

/-! ## A106501.P17451000912816779596

`A000194(A106506(n+1)+A106500(n+1)²)`
-/

namespace A106501.P17451000912816779596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A106506 (n + 1) + A106500 (n + 1) ^ 2).toNat

end

end A106501.P17451000912816779596

/-! ## A106501.P16467891164217294401

`A000196(A106506(n+1)+A106500(n+1)²)`
-/

namespace A106501.P16467891164217294401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A106506 (n + 1) + A106500 (n + 1) ^ 2).toNat

end

end A106501.P16467891164217294401

/-! ## A106501.P14832556419303175800

`A033676(A106506(n+1)+A106500(n+1)²)`
-/

namespace A106501.P14832556419303175800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A106506 (n + 1) + A106500 (n + 1) ^ 2).toNat

end

end A106501.P14832556419303175800

/-! ## A106501.P2513500011308758367

`gcd(A106499(n+1), A106506(n+1))-A106500(n+1)`
-/

namespace A106501.P2513500011308758367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A106499 (n + 1)) (A106506 (n + 1)) : ℤ) - A106500 (n + 1)

end

end A106501.P2513500011308758367

/-! ## A106501.P17967331364997062365

`sqrt(A106506(n+1)+A106500(n+1)^A020639(2*(n+1)))`
-/

namespace A106501.P17967331364997062365
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A106506 (n + 1) : ℚ) + (A106500 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) : ℝ)

end

end A106501.P17967331364997062365

/-! ## A106501.P632664647902660720

`sqrt(A106506(n+1)+A106500(n+1)^A272800(2*(n+1)))`
-/

namespace A106501.P632664647902660720
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A106506 (n + 1) : ℚ) + (A106500 (n + 1) : ℚ) ^ (A272800 (2 * (n + 1)) : ℤ) : ℝ)

end

end A106501.P632664647902660720

/-! ## A106501.P15657789287134026019

`sqrt(A106506(n+1)+A106410(n+1))`
-/

namespace A106501.P15657789287134026019
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A106506 (n + 1) + A106410 (n + 1) : ℝ)

end

end A106501.P15657789287134026019

/-! ## A106501.P3714397279076934295

`A000188(A106506(n+1)+A106410(n+1))`
-/

namespace A106501.P3714397279076934295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A106506 (n + 1) + A106410 (n + 1)).toNat

end

end A106501.P3714397279076934295

/-!
# A106502: Shortest side of primitive integer-sided triangle having an angle twice another, sorted on perimeter (A106499).

The programs for A106502, there is no canonical definition to state claims against.
-/

/-! ## A106502.P11369640638143879823

`A106499(n+1)-(A106504(n+1)+A106503(n+1))`
-/

namespace A106502.P11369640638143879823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106499 (n + 1) - (A106504 (n + 1) + A106503 (n + 1))

end

end A106502.P11369640638143879823

/-!
# A106503: Middle side of primitive integer-sided triangle having an angle twice another, sorted on perimeter (A106499).

The programs for A106503, there is no canonical definition to state claims against.
-/

/-! ## A106503.P17538224733257074798

`A106499(n+1)-(A106504(n+1)+A106502(n+1))`
-/

namespace A106503.P17538224733257074798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106499 (n + 1) - (A106504 (n + 1) + A106502 (n + 1))

end

end A106503.P17538224733257074798

/-!
# A106504: Longest side of primitive integer-sided triangle having an angle twice another, sorted on perimeter (A106499).

The programs for A106504, there is no canonical definition to state claims against.
-/

/-! ## A106504.P2893619652608286033

`A106499(n+1)-(A106503(n+1)+A106502(n+1))`
-/

namespace A106504.P2893619652608286033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106499 (n + 1) - (A106503 (n + 1) + A106502 (n + 1))

end

end A106504.P2893619652608286033

/-! ## A106504.P10865076288726191126

`A106420(n+1)+A053200(A092566(n))`
-/

namespace A106504.P10865076288726191126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106420 (n + 1) + A053200 (A092566 n).toNat

end

end A106504.P10865076288726191126

/-!
# A106505: Ordered and uniqued length of side common to the two angles, one being the double of the other, of a primitive integer-sided triangle.

The programs for A106505, the canonical program `A106505.P1753662187388154397` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106505 has offset 1).

The definition of A106505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106505.P8532892764920107073

`∪[2*n+5, 8*(n+2)]`
-/

namespace A106505.P8532892764920107073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A106505.P8532892764920107073

namespace A106505

/-- `∪[2*n+5, 8*(n+2)]` -/
def P8532892764920107073.Spec : Prop :=
  ∀ n, (P8532892764920107073.a n : ℤ) = A106505 (n + 1)

end A106505

/-! ## A106505.P9395167926281206345

`comp[or(abs(2-n), xor(3, n))]+5`
-/

namespace A106505.P9395167926281206345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor |2 - (n : ℤ)| (Nat.xor 3 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 5

end

end A106505.P9395167926281206345

namespace A106505

/-- `comp[or(abs(2-n), xor(3, n))]+5` -/
def P9395167926281206345.Spec : Prop :=
  ∀ n, (P9395167926281206345.a n : ℤ) = A106505 (n + 1)

end A106505

/-! ## A106505.P1753662187388154397

`∑[gcd(2, (a(n-1)*∑[n+1])%5)]` with `a(0)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106505

/-- `∑[gcd(2, (a(n-1)*∑[n+1])%5)]` -/
def P1753662187388154397.Spec : Prop :=
  ∀ n, (P1753662187388154397.a n : ℤ) = A106505 (n + 1)

theorem P1753662187388154397.correct : P1753662187388154397.Spec := by
  intro n
  simp only [A106505, Nat.add_sub_cancel]

end A106505

/-! ## A106505.P3789022724966964151

`lt[4, (and(n, -n)+n)%(lcm(2, n+2)/2)]`
-/

namespace A106505.P3789022724966964151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.land (n : ℤ) (-(n : ℤ)) + (n : ℤ)) (SequenceMachineLib.roundAway ((Nat.lcm 2 (n + 2) : ℚ) / 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A106505.P3789022724966964151

namespace A106505

/-- `lt[4, (and(n, -n)+n)%(lcm(2, n+2)/2)]` -/
def P3789022724966964151.Spec : Prop :=
  ∀ n, (P3789022724966964151.a n : ℤ) = A106505 (n + 1)

end A106505

/-! ## A106505.P12956869761387601508

`A321499(n+2)`
-/

namespace A106505.P12956869761387601508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321499 (n + 2)

end

end A106505.P12956869761387601508

namespace A106505

/-- `A321499(n+2)` -/
def P12956869761387601508.Spec : Prop :=
  ∀ n, P12956869761387601508.a n = A106505 (n + 1)

end A106505

/-! ## A106505.P16149847987722525624

`A047486(floor(atan(n)+n)+4)`
-/

namespace A106505.P16149847987722525624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (⌊Real.arctan (n : ℝ) + (n : ℝ)⌋ + 4).toNat

end

end A106505.P16149847987722525624

namespace A106505

/-- `A047486(floor(atan(n)+n)+4)` -/
def P16149847987722525624.Spec : Prop :=
  ∀ n, P16149847987722525624.a n = A106505 (n + 1)

end A106505

/-! ## A106505.P7941204568142923127

`A047486(n+5-C(n, n²))`
-/

namespace A106505.P7941204568142923127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 5 - Nat.choose n (n ^ 2))

end

end A106505.P7941204568142923127

namespace A106505

/-- `A047486(n+5-C(n, n²))` -/
def P7941204568142923127.Spec : Prop :=
  ∀ n, P7941204568142923127.a n = A106505 (n + 1)

end A106505

/-! ## A106505.P15803548961283468777

`A047486(A055495(n+2))`
-/

namespace A106505.P15803548961283468777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A055495 (n + 2)).toNat

end

end A106505.P15803548961283468777

namespace A106505

/-- `A047486(A055495(n+2))` -/
def P15803548961283468777.Spec : Prop :=
  ∀ n, P15803548961283468777.a n = A106505 (n + 1)

end A106505

/-! ## A106505.P15764059358752499346

`A047486(A257542(n+2))`
-/

namespace A106505.P15764059358752499346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A257542 (n + 2)).toNat

end

end A106505.P15764059358752499346

namespace A106505

/-- `A047486(A257542(n+2))` -/
def P15764059358752499346.Spec : Prop :=
  ∀ n, P15764059358752499346.a n = A106505 (n + 1)

end A106505

/-! ## A106505.P652271553133361689

`lt[6, Δ[A352783(n+1)]]`
-/

namespace A106505.P652271553133361689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A106505.P652271553133361689

namespace A106505

/-- `lt[6, Δ[A352783(n+1)]]` -/
def P652271553133361689.Spec : Prop :=
  ∀ n, (P652271553133361689.a n : ℤ) = A106505 (n + 1)

end A106505

/-! ## A106505.P16147357493191313291

`∑[gcd(10, A122597(n+3))]`
-/

namespace A106505.P16147357493191313291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A122597 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106505.P16147357493191313291

namespace A106505

/-- `∑[gcd(10, A122597(n+3))]` -/
def P16147357493191313291.Spec : Prop :=
  ∀ n, (P16147357493191313291.a n : ℤ) = A106505 (n + 1)

end A106505

/-! ## A106505.P9625509753742896245

`lt[57, Δ[A281672(n)]]`
-/

namespace A106505.P9625509753742896245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281672 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A106505.P9625509753742896245

namespace A106505

/-- `lt[57, Δ[A281672(n)]]` -/
def P9625509753742896245.Spec : Prop :=
  ∀ n, (P9625509753742896245.a n : ℤ) = A106505 (n + 1)

end A106505

/-!
# A106506: Length of side common to the two angles, one being the double of the other, of a primitive integer-sided triangle, sorted on perimeter (A106499).

The programs for A106506, there is no canonical definition to state claims against.
-/

/-! ## A106506.P9322022817957399942

`A106501(n+1)²-A106500(n+1)²`
-/

namespace A106506.P9322022817957399942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106501 (n + 1) ^ 2 - A106500 (n + 1) ^ 2

end

end A106506.P9322022817957399942

/-! ## A106506.P7436526798888694675

`A000290(A106501(n+1))-A000463(2*A106500(n+1))`
-/

namespace A106506.P7436526798888694675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A106501 (n + 1)).toNat - A000463 (2 * A106500 (n + 1)).toNat

end

end A106506.P7436526798888694675

/-! ## A106506.P4214384687063705807

`A000290(A106501(n+1))-A002620(2*A106500(n+1))`
-/

namespace A106506.P4214384687063705807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A106501 (n + 1)).toNat - A002620 (2 * A106500 (n + 1)).toNat

end

end A106506.P4214384687063705807

/-! ## A106506.P6643431846945152842

`A000290(A106501(n+1))-A000290(A106500(n+1)%(n+3))`
-/

namespace A106506.P6643431846945152842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A106501 (n + 1)).toNat - A000290 (Int.tmod (A106500 (n + 1)) (n + 3 : ℤ)).toNat

end

end A106506.P6643431846945152842

/-! ## A106506.P14650627526148382198

`A000290(A106501(n+1))-A106500(n+1)^A020639(2*(n+1))`
-/

namespace A106506.P14650627526148382198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (A106501 (n + 1)).toNat : ℚ) - (A106500 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A106506.P14650627526148382198

/-! ## A106506.P8997352696719486072

`A000290(A106501(n+1))-A106500(n+1)^A272800(2*(n+1))`
-/

namespace A106506.P8997352696719486072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (A106501 (n + 1)).toNat : ℚ) - (A106500 (n + 1) : ℚ) ^ (A272800 (2 * (n + 1)) : ℤ)

end

end A106506.P8997352696719486072

/-! ## A106506.P17271644761312725360

`A106501(n+1)²-A106410(n+1)`
-/

namespace A106506.P17271644761312725360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106501 (n + 1) ^ 2 - A106410 (n + 1)

end

end A106506.P17271644761312725360

/-! ## A106506.P11727579377674188202

`A000290(A106501(n+1))-A106410(A000027(n+1))`
-/

namespace A106506.P11727579377674188202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A106501 (n + 1)).toNat - A106410 (A000027 (n + 1)).toNat

end

end A106506.P11727579377674188202

/-! ## A106506.P14172853080283066386

`A000290(A106501(n+1))-A106410(A090108(n+1))`
-/

namespace A106506.P14172853080283066386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A106501 (n + 1)).toNat - A106410 (A090108 (n + 1)).toNat

end

end A106506.P14172853080283066386

/-!
# A106507: G.f.: Product_{k>0} (1-x^(2k-1))/(1-x^(2k)).

The programs for A106507, there is no canonical definition to state claims against.
-/

/-! ## A106507.P7432470221446970025

`(-1)^n*A006950(n)`
-/

namespace A106507.P7432470221446970025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A006950 n

end

end A106507.P7432470221446970025

/-! ## A106507.P16960997326761133404

`A006950(n)*A033999(n)`
-/

namespace A106507.P16960997326761133404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n * A033999 n

end

end A106507.P16960997326761133404

/-! ## A106507.P10703083671774378356

`A006950(n)*A009001(2*n)`
-/

namespace A106507.P10703083671774378356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n * A009001 (2 * n)

end

end A106507.P10703083671774378356

/-! ## A106507.P15996357833889210824

`A006950(n)/A009001(A005843(n))`
-/

namespace A106507.P15996357833889210824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006950 n : ℚ) / (A009001 (A005843 n).toNat : ℚ)

end

end A106507.P15996357833889210824

/-! ## A106507.P6559787332611786157

`A006950(n)*A097807(Δ[A008619(n)])`
-/

namespace A106507.P6559787332611786157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n * A097807 (f1 (n + 1) - f1 n).toNat

end

end A106507.P6559787332611786157

/-! ## A106507.P14151648787052632679

`A006950(n)*A057077(A057077(n)+n)`
-/

namespace A106507.P14151648787052632679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n * A057077 (A057077 n + (n : ℤ)).toNat

end

end A106507.P14151648787052632679

/-! ## A106507.P18088821081060663609

`A006950(n)/A036016(n)*A258741(n)`
-/

namespace A106507.P18088821081060663609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006950 n : ℚ) / (A036016 n : ℚ) * (A258741 n : ℚ)

end

end A106507.P18088821081060663609

/-! ## A106507.P7717269116267087446

`A006950(n)/A273225(n)*A274621(n)`
-/

namespace A106507.P7717269116267087446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006950 n : ℚ) / (A273225 n : ℚ) * (A274621 n : ℚ)

end

end A106507.P7717269116267087446

/-! ## A106507.P16387267565378408419

`A006950(n)*A057077(2*n)`
-/

namespace A106507.P16387267565378408419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n * A057077 (2 * n)

end

end A106507.P16387267565378408419

/-! ## A106507.P18271519520125358776

`A339416(n)-A339417(n)`
-/

namespace A106507.P18271519520125358776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339416 n - A339417 n

end

end A106507.P18271519520125358776

/-! ## A106507.P17184123751696957139

`2*A339416(n)-A023361(n)`
-/

namespace A106507.P17184123751696957139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339416 n - A023361 n

end

end A106507.P17184123751696957139

/-! ## A106507.P328166568210811776

`A023361(n)-2*A339417(n)`
-/

namespace A106507.P328166568210811776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023361 n - 2 * A339417 n

end

end A106507.P328166568210811776

/-! ## A106507.P1823855490816957624

`A006950(n)*A197870(A000217(n))`
-/

namespace A106507.P1823855490816957624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n * A197870 (A000217 n).toNat

end

end A106507.P1823855490816957624

/-! ## A106507.P6172554286306856591

`A286950(∑[n+3])`
-/

namespace A106507.P6172554286306856591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286950 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A106507.P6172554286306856591

/-!
# A106508: Expansion of psi(x)^4 * chi(-x^2)^2 in powers of x where psi(), chi() are Ramanujan theta functions.

The programs for A106508, there is no canonical definition to state claims against.
-/

/-! ## A106508.P6483201276415226640

`(-1)^n*A187149(n)`
-/

namespace A106508.P6483201276415226640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A187149 n

end

end A106508.P6483201276415226640

/-! ## A106508.P8238596884404700452

`A187149(n)/Δ[A063694(n)]`
-/

namespace A106508.P8238596884404700452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187149 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A106508.P8238596884404700452

/-! ## A106508.P12302602817215156171

`A187149(n)*A309873(n+1)`
-/

namespace A106508.P12302602817215156171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187149 n * A309873 (n + 1)

end

end A106508.P12302602817215156171

/-! ## A106508.P13360445310250687509

`A187149(n)*A195017(A000040(n+1))`
-/

namespace A106508.P13360445310250687509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187149 n * A195017 (A000040 (n + 1)).toNat

end

end A106508.P13360445310250687509

/-! ## A106508.P6611966075254515032

`A187149(n)/A054354(A054353(n+1))`
-/

namespace A106508.P6611966075254515032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187149 n : ℚ) / (A054354 (A054353 (n + 1)).toNat : ℚ)

end

end A106508.P6611966075254515032

/-! ## A106508.P2012011797583065310

`A187149(n)/A066170(A000217(n))`
-/

namespace A106508.P2012011797583065310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187149 n : ℚ) / (A066170 (A000217 n).toNat : ℚ)

end

end A106508.P2012011797583065310

/-!
# A106509: Riordan array ((1+x)/(1+x+x^2), x/(1+x)), read by rows.

The programs for A106509, there is no canonical definition to state claims against.
-/

/-! ## A106509.P15711638967139834081

`A179287(A187115(n+3))`
-/

namespace A106509.P15711638967139834081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179287 (A187115 (n + 3)).toNat

end

end A106509.P15711638967139834081

/-! ## A106509.P11729296764083599321

`Δ[A008683(A328029(∑[n+2]+4))]`
-/

namespace A106509.P11729296764083599321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A328029 (∑ j ∈ Finset.range (n + 1), f2 j + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106509.P11729296764083599321

/-! ## A106509.P2253570873399682963

`A290217(A125979(2*(n+1))^A292795(n))`
-/

namespace A106509.P2253570873399682963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290217 (SequenceMachineLib.roundAway ((A125979 (2 * (n + 1)) : ℚ) ^ (A292795 n : ℤ))).toNat

end

end A106509.P2253570873399682963

/-! ## A106509.P12270482968334746414

`A290217(C(A125979(2*(n+1)), A292795(n)))`
-/

namespace A106509.P12270482968334746414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290217 (Nat.choose (A125979 (2 * (n + 1))).toNat (A292795 n).toNat)

end

end A106509.P12270482968334746414

/-!
# A106510: Expansion of (1+x)^2/(1+x+x^2).

The programs for A106510, the canonical program `A106510.P17145326176693079754` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106510 has offset 0).

The definition of A106510 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1+x+x^2))` (program `A106510.P17145326176693079754`, by `A106510.P17145326176693079754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106510.P17145326176693079754

`ogf((1+2x+x^2)/(1+x+x^2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106510

/-- `ogf((1+2x+x^2)/(1+x+x^2))` -/
def P17145326176693079754.Spec : Prop :=
  ∀ n, P17145326176693079754.a n = A106510 n

theorem P17145326176693079754.correct : P17145326176693079754.Spec := by
  intro n
  simp only [A106510]

end A106510

/-!
# A106511: Expansion of g.f. (1+x)^2/((1 + x + x^2)*(1 + x - x^2)).

The programs for A106511, the canonical program `A106511.P12246738515813669141` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106511 has offset 0).

The definition of A106511 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2)/(1+2x+x^2-x^4))` (program `A106511.P12246738515813669141`, by `A106511.P12246738515813669141.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106511.P12246738515813669141

`ogf((1+2x+x^2)/(1+2x+x^2-x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106511

/-- `ogf((1+2x+x^2)/(1+2x+x^2-x^4))` -/
def P12246738515813669141.Spec : Prop :=
  ∀ n, P12246738515813669141.a n = A106511 n

theorem P12246738515813669141.correct : P12246738515813669141.Spec := by
  intro n
  simp only [A106511]

end A106511

/-! ## A106511.P11974494049709157312

`a(n-4)-(a(n-2)+2*a(n-1))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A106511.P11974494049709157312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  a (n - 4) - (a (n - 2) + 2 * a (n - 1))

end

end A106511.P11974494049709157312

namespace A106511

/-- `a(n-4)-(a(n-2)+2*a(n-1))` -/
def P11974494049709157312.Spec : Prop :=
  ∀ n, P11974494049709157312.a n = A106511 n

end A106511

/-! ## A106511.P6788897904954440536

`a(n-4)-a(n-2)-2*a(n-1)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A106511.P6788897904954440536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  a (n - 4) - a (n - 2) - 2 * a (n - 1)

end

end A106511.P6788897904954440536

namespace A106511

/-- `a(n-4)-a(n-2)-2*a(n-1)` -/
def P6788897904954440536.Spec : Prop :=
  ∀ n, P6788897904954440536.a n = A106511 n

end A106511

/-! ## A106511.P3291190728263664766

`a(n-4)-a(n-1)-a(n-2)-a(n-1)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A106511.P3291190728263664766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0] fun n a =>
  a (n - 4) - a (n - 1) - a (n - 2) - a (n - 1)

end

end A106511.P3291190728263664766

namespace A106511

/-- `a(n-4)-a(n-1)-a(n-2)-a(n-1)` -/
def P3291190728263664766.Spec : Prop :=
  ∀ n, P3291190728263664766.a n = A106511 n

end A106511

/-! ## A106511.P10361697414267705867

`A093040(n)-A094966(n)`
-/

namespace A106511.P10361697414267705867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093040 n - A094966 n

end

end A106511.P10361697414267705867

namespace A106511

/-- `A093040(n)-A094966(n)` -/
def P10361697414267705867.Spec : Prop :=
  ∀ n, P10361697414267705867.a n = A106511 n

end A106511

/-! ## A106511.P2660025843706651541

`A108479(n)-A164267(n)`
-/

namespace A106511.P2660025843706651541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108479 n - A164267 n

end

end A106511.P2660025843706651541

namespace A106511

/-- `A108479(n)-A164267(n)` -/
def P2660025843706651541.Spec : Prop :=
  ∀ n, P2660025843706651541.a n = A106511 n

end A106511

/-!
# A106512: Array read by antidiagonals: a(n,k) = number of k-colorings of a circle of n nodes (n >= 1, k >= 1).

The programs for A106512, there is no canonical definition to state claims against.
-/

/-! ## A106512.P9046979534456015594

`A109502(comp[∑[n]]+1)*A193592(n)`
-/

namespace A106512.P9046979534456015594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109502 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) * A193592 n

end

end A106512.P9046979534456015594

/-! ## A106512.P11370666960011260906

`A004736(n+1)*A109502(A014132(n+1)+1)`
-/

namespace A106512.P11370666960011260906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A109502 (A014132 (n + 1) + 1).toNat

end

end A106512.P11370666960011260906

/-! ## A106512.P12870147604020073037

`A095832(n+1)%A323953(A154537(n))`
-/

namespace A106512.P12870147604020073037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095832 (n + 1)) (A323953 (A154537 n).toNat)

end

end A106512.P12870147604020073037

/-! ## A106512.P8766307948121566685

`A004736(n+1)*A352513(A008277(n+1))`
-/

namespace A106512.P8766307948121566685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A352513 (A008277 (n + 1)).toNat

end

end A106512.P8766307948121566685

/-! ## A106512.P14059860846862441409

`A109626(n+1)*A352513(A008277(n+1))`
-/

namespace A106512.P14059860846862441409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (n + 1) * A352513 (A008277 (n + 1)).toNat

end

end A106512.P14059860846862441409

/-!
# A106513: A Pell-Pascal matrix.

The programs for A106513, there is no canonical definition to state claims against.
-/

/-! ## A106513.P7145179348133769113

`A062507(lt[1, A084097(n)])`
-/

namespace A106513.P7145179348133769113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084097 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062507 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A106513.P7145179348133769113

/-! ## A106513.P7348216575105314310

`A062507(lt[1, A293135(n)])`
-/

namespace A106513.P7348216575105314310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293135 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062507 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A106513.P7348216575105314310

/-! ## A106513.P1117052268022838807

`A062507(lt[1, A293724(n)])`
-/

namespace A106513.P1117052268022838807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062507 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A106513.P1117052268022838807

/-! ## A106513.P17526003164014358392

`A062507(lt[1, A211399(n)])`
-/

namespace A106513.P17526003164014358392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062507 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A106513.P17526003164014358392

/-! ## A106513.P14197105979657248388

`A062507(lt[1, A306245(n)])`
-/

namespace A106513.P14197105979657248388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062507 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A106513.P14197105979657248388

/-!
# A106514: Expansion of (1-x)/((1-2*x)*(1-2*x-x^2)).

The programs for A106514, the canonical program `A106514.P12457227440976886463` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106514 has offset 0).

The definition of A106514 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x)/(1-4x+3x^2+2x^3))` (program `A106514.P12457227440976886463`, by `A106514.P12457227440976886463.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106514.P12457227440976886463

`ogf((1-x)/(1-4x+3x^2+2x^3))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106514

/-- `ogf((1-x)/(1-4x+3x^2+2x^3))` -/
def P12457227440976886463.Spec : Prop :=
  ∀ n, P12457227440976886463.a n = A106514 n

theorem P12457227440976886463.correct : P12457227440976886463.Spec := by
  intro n
  simp only [A106514]

end A106514

/-! ## A106514.P7086376323718576837

`A001333(n+2)-2^(n+1)`
-/

namespace A106514.P7086376323718576837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 2) - (2 ^ (n + 1) : ℤ)

end

end A106514.P7086376323718576837

namespace A106514

/-- `A001333(n+2)-2^(n+1)` -/
def P7086376323718576837.Spec : Prop :=
  ∀ n, P7086376323718576837.a n = A106514 n

end A106514

/-! ## A106514.P3776068172296667645

`(A002203(n+2)-2^(n+2))/2`
-/

namespace A106514.P3776068172296667645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002203 (n + 2) - (2 ^ (n + 2) : ℤ) : ℚ) / 2

end

end A106514.P3776068172296667645

namespace A106514

/-- `(A002203(n+2)-2^(n+2))/2` -/
def P3776068172296667645.Spec : Prop :=
  ∀ n, P3776068172296667645.a n = (A106514 n : ℚ)

end A106514

/-! ## A106514.P11236119036510048016

`∑[4*a(n-1)-3*a(n-2)-2*a(n-3)]` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A106514.P11236119036510048016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n f1 =>
  4 * f1 (n - 1) - 3 * f1 (n - 2) - 2 * f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106514.P11236119036510048016

namespace A106514

/-- `∑[4*a(n-1)-3*a(n-2)-2*a(n-3)]` -/
def P11236119036510048016.Spec : Prop :=
  ∀ n, P11236119036510048016.a n = A106514 n

end A106514

/-! ## A106514.P3093061609401803638

`∑[A156664(n)]`
-/

namespace A106514.P3093061609401803638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106514.P3093061609401803638

namespace A106514

/-- `∑[A156664(n)]` -/
def P3093061609401803638.Spec : Prop :=
  ∀ n, P3093061609401803638.a n = A106514 n

end A106514

/-! ## A106514.P6906992732493263497

`2*A267905(n+1)-1`
-/

namespace A106514.P6906992732493263497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A267905 (n + 1) - 1

end

end A106514.P6906992732493263497

namespace A106514

/-- `2*A267905(n+1)-1` -/
def P6906992732493263497.Spec : Prop :=
  ∀ n, P6906992732493263497.a n = A106514 n

end A106514

/-! ## A106514.P17332432741387664054

`∑[A052542(n+1)-2^n]`
-/

namespace A106514.P17332432741387664054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 (n + 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106514.P17332432741387664054

namespace A106514

/-- `∑[A052542(n+1)-2^n]` -/
def P17332432741387664054.Spec : Prop :=
  ∀ n, P17332432741387664054.a n = A106514 n

end A106514

/-! ## A106514.P3363939345877470739

`A078057(n+1)-2^(n+1)`
-/

namespace A106514.P3363939345877470739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A106514.P3363939345877470739

namespace A106514

/-- `A078057(n+1)-2^(n+1)` -/
def P3363939345877470739.Spec : Prop :=
  ∀ n, P3363939345877470739.a n = A106514 n

end A106514

/-! ## A106514.P9477442703088508003

`Δ[A000129(n)]+2*a(n-1)` with `a(0)=1`
-/

namespace A106514.P9477442703088508003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n + 2 * a (n - 1)

end

end A106514.P9477442703088508003

namespace A106514

/-- `Δ[A000129(n)]+2*a(n-1)` -/
def P9477442703088508003.Spec : Prop :=
  ∀ n, P9477442703088508003.a n = A106514 n

end A106514

/-! ## A106514.P7057007902492285790

`2*(A024537(n+1)-2^n)-1`
-/

namespace A106514.P7057007902492285790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A024537 (n + 1) - (2 ^ n : ℤ)) - 1

end

end A106514.P7057007902492285790

namespace A106514

/-- `2*(A024537(n+1)-2^n)-1` -/
def P7057007902492285790.Spec : Prop :=
  ∀ n, P7057007902492285790.a n = A106514 n

end A106514

/-! ## A106514.P14237970990456318680

`a(n-1)+A001333(n)+a(n-1)` with `a(0)=1`
-/

namespace A106514.P14237970990456318680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A001333 n + a (n - 1))

end

end A106514.P14237970990456318680

namespace A106514

/-- `a(n-1)+A001333(n)+a(n-1)` -/
def P14237970990456318680.Spec : Prop :=
  ∀ n, P14237970990456318680.a n = A106514 n

end A106514

/-! ## A106514.P15679047002066871311

`∑[A094723(n)-A000129(n)]`
-/

namespace A106514.P15679047002066871311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094723 n - A000129 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106514.P15679047002066871311

namespace A106514

/-- `∑[A094723(n)-A000129(n)]` -/
def P15679047002066871311.Spec : Prop :=
  ∀ n, P15679047002066871311.a n = A106514 n

end A106514

/-! ## A106514.P11766918179007173462

`A094706(n)+A000129(n+1)`
-/

namespace A106514.P11766918179007173462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094706 n + A000129 (n + 1)

end

end A106514.P11766918179007173462

namespace A106514

/-- `A094706(n)+A000129(n+1)` -/
def P11766918179007173462.Spec : Prop :=
  ∀ n, P11766918179007173462.a n = A106514 n

end A106514

/-! ## A106514.P4769648507355405007

`A034182(n+1)+1-A126646(n)`
-/

namespace A106514.P4769648507355405007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034182 (n + 1) + (1 - A126646 n)

end

end A106514.P4769648507355405007

namespace A106514

/-- `A034182(n+1)+1-A126646(n)` -/
def P4769648507355405007.Spec : Prop :=
  ∀ n, P4769648507355405007.a n = A106514 n

end A106514

/-! ## A106514.P5014509864587194111

`A182780(n+1)-A000051(n+1)`
-/

namespace A106514.P5014509864587194111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182780 (n + 1) - A000051 (n + 1)

end

end A106514.P5014509864587194111

namespace A106514

/-- `A182780(n+1)-A000051(n+1)` -/
def P5014509864587194111.Spec : Prop :=
  ∀ n, P5014509864587194111.a n = A106514 n

end A106514

/-! ## A106514.P10022920176373984620

`A265278(n+2)-A000225(n+1)`
-/

namespace A106514.P10022920176373984620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265278 (n + 2) - A000225 (n + 1)

end

end A106514.P10022920176373984620

namespace A106514

/-- `A265278(n+2)-A000225(n+1)` -/
def P10022920176373984620.Spec : Prop :=
  ∀ n, P10022920176373984620.a n = A106514 n

end A106514

/-! ## A106514.P8043683977119956004

`A213667(n+1)+1-A151821(n+1)`
-/

namespace A106514.P8043683977119956004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213667 (n + 1) + (1 - A151821 (n + 1))

end

end A106514.P8043683977119956004

namespace A106514

/-- `A213667(n+1)+1-A151821(n+1)` -/
def P8043683977119956004.Spec : Prop :=
  ∀ n, P8043683977119956004.a n = A106514 n

end A106514

/-! ## A106514.P8650528609788969377

`2*A024537(n+1)-A000051(n+1)`
-/

namespace A106514.P8650528609788969377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024537 (n + 1) - A000051 (n + 1)

end

end A106514.P8650528609788969377

namespace A106514

/-- `2*A024537(n+1)-A000051(n+1)` -/
def P8650528609788969377.Spec : Prop :=
  ∀ n, P8650528609788969377.a n = A106514 n

end A106514

/-! ## A106514.P7451962805227910884

`A152113(2*(n+2))-A000079(n+1)`
-/

namespace A106514.P7451962805227910884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152113 (2 * (n + 2)) - A000079 (n + 1)

end

end A106514.P7451962805227910884

namespace A106514

/-- `A152113(2*(n+2))-A000079(n+1)` -/
def P7451962805227910884.Spec : Prop :=
  ∀ n, P7451962805227910884.a n = A106514 n

end A106514

/-! ## A106514.P6233533619190117351

`A143607(2*(n+1))+1-A000051(n+1)`
-/

namespace A106514.P6233533619190117351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143607 (2 * (n + 1)) + (1 - A000051 (n + 1))

end

end A106514.P6233533619190117351

namespace A106514

/-- `A143607(2*(n+1))+1-A000051(n+1)` -/
def P6233533619190117351.Spec : Prop :=
  ∀ n, P6233533619190117351.a n = A106514 n

end A106514

/-!
# A106515: A Fibonacci-Pell convolution.

The programs for A106515, the canonical program `A106515.P4816817730149337077` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106515 has offset 0).

The definition of A106515 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106515.P4816817730149337077

`3*a(n-1)-3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=15`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106515

/-- `3*a(n-1)-3*a(n-3)-a(n-4)` -/
def P4816817730149337077.Spec : Prop :=
  ∀ n, P4816817730149337077.a n = A106515 n

theorem P4816817730149337077.correct : P4816817730149337077.Spec := by
  intro n
  simp only [A106515]

end A106515

/-! ## A106515.P1202206305480474310

`ogf((1-x)/(1-3x+3x^3+x^4))`
-/

namespace A106515.P1202206305480474310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -3, 0, 3, 1] n

end

end A106515.P1202206305480474310

namespace A106515

/-- `ogf((1-x)/(1-3x+3x^3+x^4))` -/
def P1202206305480474310.Spec : Prop :=
  ∀ n, P1202206305480474310.a n = A106515 n

end A106515

/-! ## A106515.P2062053059675292544

`A006684(n)+∑[round((sqrt(2)+1)^n/2)]`
-/

namespace A106515.P2062053059675292544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 1) ^ n / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006684 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106515.P2062053059675292544

namespace A106515

/-- `A006684(n)+∑[round((sqrt(2)+1)^n/2)]` -/
def P2062053059675292544.Spec : Prop :=
  ∀ n, P2062053059675292544.a n = A106515 n

end A106515

/-! ## A106515.P11160730711519619884

`A078057(n)-A000045(n)`
-/

namespace A106515.P11160730711519619884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n - A000045 n

end

end A106515.P11160730711519619884

namespace A106515

/-- `A078057(n)-A000045(n)` -/
def P11160730711519619884.Spec : Prop :=
  ∀ n, P11160730711519619884.a n = A106515 n

end A106515

/-! ## A106515.P5507284490794398693

`A182780(n)-A001611(n)`
-/

namespace A106515.P5507284490794398693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182780 n - A001611 n

end

end A106515.P5507284490794398693

namespace A106515

/-- `A182780(n)-A001611(n)` -/
def P5507284490794398693.Spec : Prop :=
  ∀ n, P5507284490794398693.a n = A106515 n

end A106515

/-! ## A106515.P5134502636997349870

`A100828(n)-A109522(n)`
-/

namespace A106515.P5134502636997349870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100828 n - A109522 n

end

end A106515.P5134502636997349870

namespace A106515

/-- `A100828(n)-A109522(n)` -/
def P5134502636997349870.Spec : Prop :=
  ∀ n, P5134502636997349870.a n = A106515 n

end A106515

/-! ## A106515.P9158610272380165238

`∑[A052542(n)]-A000045(n)`
-/

namespace A106515.P9158610272380165238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000045 n

end

end A106515.P9158610272380165238

namespace A106515

/-- `∑[A052542(n)]-A000045(n)` -/
def P9158610272380165238.Spec : Prop :=
  ∀ n, P9158610272380165238.a n = A106515 n

end A106515

/-! ## A106515.P2651263608316173234

`A215928(n+1)+A006684(n)`
-/

namespace A106515.P2651263608316173234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (n + 1) + A006684 n

end

end A106515.P2651263608316173234

namespace A106515

/-- `A215928(n+1)+A006684(n)` -/
def P2651263608316173234.Spec : Prop :=
  ∀ n, P2651263608316173234.a n = A106515 n

end A106515

/-! ## A106515.P3602569575529297903

`A001333(n+1)-A000045(n)`
-/

namespace A106515.P3602569575529297903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) - A000045 n

end

end A106515.P3602569575529297903

namespace A106515

/-- `A001333(n+1)-A000045(n)` -/
def P3602569575529297903.Spec : Prop :=
  ∀ n, P3602569575529297903.a n = A106515 n

end A106515

/-! ## A106515.P16541369851959441632

`A228797(n+1)-A008346(n)`
-/

namespace A106515.P16541369851959441632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228797 (n + 1) - A008346 n

end

end A106515.P16541369851959441632

namespace A106515

/-- `A228797(n+1)-A008346(n)` -/
def P16541369851959441632.Spec : Prop :=
  ∀ n, P16541369851959441632.a n = A106515 n

end A106515

/-! ## A106515.P16356871210314708503

`abs(A123335(n+1))-A000045(n)`
-/

namespace A106515.P16356871210314708503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123335 (n + 1)| - A000045 n

end

end A106515.P16356871210314708503

namespace A106515

/-- `abs(A123335(n+1))-A000045(n)` -/
def P16356871210314708503.Spec : Prop :=
  ∀ n, P16356871210314708503.a n = A106515 n

end A106515

/-! ## A106515.P6005693054001516581

`record[A155046(n+1)]-A000045(n)`
-/

namespace A106515.P6005693054001516581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000045 n

end

end A106515.P6005693054001516581

namespace A106515

/-- `record[A155046(n+1)]-A000045(n)` -/
def P6005693054001516581.Spec : Prop :=
  ∀ n, P6005693054001516581.a n = A106515 n

end A106515

/-! ## A106515.P4296127413013669579

`A001333(n+1)-A212804(n+1)`
-/

namespace A106515.P4296127413013669579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) - A212804 (n + 1)

end

end A106515.P4296127413013669579

namespace A106515

/-- `A001333(n+1)-A212804(n+1)` -/
def P4296127413013669579.Spec : Prop :=
  ∀ n, P4296127413013669579.a n = A106515 n

end A106515

/-! ## A106515.P12956294385964171530

`A001333(n+1)-(A001611(n)-1)`
-/

namespace A106515.P12956294385964171530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) - (A001611 n - 1)

end

end A106515.P12956294385964171530

namespace A106515

/-- `A001333(n+1)-(A001611(n)-1)` -/
def P12956294385964171530.Spec : Prop :=
  ∀ n, P12956294385964171530.a n = A106515 n

end A106515

/-! ## A106515.P17803954654683961258

`A001333(n+1)-(A157725(n)-2)`
-/

namespace A106515.P17803954654683961258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) - (A157725 n - 2)

end

end A106515.P17803954654683961258

namespace A106515

/-- `A001333(n+1)-(A157725(n)-2)` -/
def P17803954654683961258.Spec : Prop :=
  ∀ n, P17803954654683961258.a n = A106515 n

end A106515

/-! ## A106515.P9921569917594748596

`A082766(2*(n+1))-A000045(n)`
-/

namespace A106515.P9921569917594748596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082766 (2 * (n + 1)) - A000045 n

end

end A106515.P9921569917594748596

namespace A106515

/-- `A082766(2*(n+1))-A000045(n)` -/
def P9921569917594748596.Spec : Prop :=
  ∀ n, P9921569917594748596.a n = A106515 n

end A106515

/-! ## A106515.P8515409370150618031

`A152113(2*(n+1))-A000045(n)`
-/

namespace A106515.P8515409370150618031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152113 (2 * (n + 1)) - A000045 n

end

end A106515.P8515409370150618031

namespace A106515

/-- `A152113(2*(n+1))-A000045(n)` -/
def P8515409370150618031.Spec : Prop :=
  ∀ n, P8515409370150618031.a n = A106515 n

end A106515

/-! ## A106515.P908159336919948844

`A155046(2*n+1)-A000045(n)`
-/

namespace A106515.P908159336919948844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155046 (2 * n + 1) - A000045 n

end

end A106515.P908159336919948844

namespace A106515

/-- `A155046(2*n+1)-A000045(n)` -/
def P908159336919948844.Spec : Prop :=
  ∀ n, P908159336919948844.a n = A106515 n

end A106515

/-! ## A106515.P8232967060246731814

`A001333(n+1)-(A157726(n)-3)`
-/

namespace A106515.P8232967060246731814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1) - (A157726 n - 3)

end

end A106515.P8232967060246731814

namespace A106515

/-- `A001333(n+1)-(A157726(n)-3)` -/
def P8232967060246731814.Spec : Prop :=
  ∀ n, P8232967060246731814.a n = A106515 n

end A106515

/-!
# A106516: A Pascal-like triangle based on 3^n.

The programs for A106516, there is no canonical definition to state claims against.
-/

/-! ## A106516.P13216686615076996885

`2*A125170(n)-A007318(n)`
-/

namespace A106516.P13216686615076996885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125170 n - A007318 n

end

end A106516.P13216686615076996885

/-! ## A106516.P16195011851128497109

`A005843(A125170(n))-A007318(n)`
-/

namespace A106516.P16195011851128497109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A125170 n).toNat - A007318 n

end

end A106516.P16195011851128497109

/-! ## A106516.P18397791179047725733

`A004273(A125170(n))-A014473(n)`
-/

namespace A106516.P18397791179047725733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A125170 n).toNat - A014473 n

end

end A106516.P18397791179047725733

/-! ## A106516.P1432273553224766014

`A193822(A080036(n))/A059268(n)`
-/

namespace A106516.P1432273553224766014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193822 (A080036 n).toNat : ℚ) / (A059268 n : ℚ)

end

end A106516.P1432273553224766014

/-! ## A106516.P17368309405061205241

`A193822(A080036(n))/A000079(A002262(n))`
-/

namespace A106516.P17368309405061205241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193822 (A080036 n).toNat : ℚ) / (A000079 (A002262 n).toNat : ℚ)

end

end A106516.P17368309405061205241

/-!
# A106517: Convolution of Fibonacci(n-1) and 3^n.

The programs for A106517, the canonical program `A106517.P14602133901887459701` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106517 has offset 0).

The definition of A106517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106517.P6201638792645256763

`ogf((1-x)/(1-4x+2x^2+3x^3))`
-/

namespace A106517.P6201638792645256763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -4, 2, 3] n

end

end A106517.P6201638792645256763

namespace A106517

/-- `ogf((1-x)/(1-4x+2x^2+3x^3))` -/
def P6201638792645256763.Spec : Prop :=
  ∀ n, P6201638792645256763.a n = A106517 n

end A106517

/-! ## A106517.P14602133901887459701

`Δ[A094688(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A106517

/-- `Δ[A094688(n)]` -/
def P14602133901887459701.Spec : Prop :=
  ∀ n, P14602133901887459701.a n = A106517 n

theorem P14602133901887459701.correct : P14602133901887459701.Spec := by
  intro n
  simp only [A106517]

end A106517

/-! ## A106517.P11412734184012274966

`∑[3^n-A098703(n)]`
-/

namespace A106517.P11412734184012274966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - A098703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106517.P11412734184012274966

namespace A106517

/-- `∑[3^n-A098703(n)]` -/
def P11412734184012274966.Spec : Prop :=
  ∀ n, P11412734184012274966.a n = A106517 n

end A106517

/-! ## A106517.P14739035413961493382

`A212804(n)+3*a(n-1)` with `a(0)=1`
-/

namespace A106517.P14739035413961493382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A212804 n + 3 * a (n - 1)

end

end A106517.P14739035413961493382

namespace A106517

/-- `A212804(n)+3*a(n-1)` -/
def P14739035413961493382.Spec : Prop :=
  ∀ n, P14739035413961493382.a n = A106517 n

end A106517

/-! ## A106517.P15405910372723505728

`Δ[A000045(n)+3*a(n-1)]` with `a(0)=0`
-/

namespace A106517.P15405910372723505728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000045 n + 3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106517.P15405910372723505728

namespace A106517

/-- `Δ[A000045(n)+3*a(n-1)]` -/
def P15405910372723505728.Spec : Prop :=
  ∀ n, P15405910372723505728.a n = A106517 n

end A106517

/-! ## A106517.P13267210850632886227

`A000045(n-1)+3*a(n-1)` with `a(0)=1`
-/

namespace A106517.P13267210850632886227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (n - 1) + 3 * a (n - 1)

end

end A106517.P13267210850632886227

namespace A106517

/-- `A000045(n-1)+3*a(n-1)` -/
def P13267210850632886227.Spec : Prop :=
  ∀ n, P13267210850632886227.a n = A106517 n

end A106517

/-! ## A106517.P8531888296347245861

`a(n-1)+A099159(n)+a(n-1)` with `a(0)=1`
-/

namespace A106517.P8531888296347245861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A099159 n + a (n - 1))

end

end A106517.P8531888296347245861

namespace A106517

/-- `a(n-1)+A099159(n)+a(n-1)` -/
def P8531888296347245861.Spec : Prop :=
  ∀ n, P8531888296347245861.a n = A106517 n

end A106517

/-! ## A106517.P1495562124294377756

`A212323(n)+A098703(n)`
-/

namespace A106517.P1495562124294377756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212323 n + A098703 n

end

end A106517.P1495562124294377756

namespace A106517

/-- `A212323(n)+A098703(n)` -/
def P1495562124294377756.Spec : Prop :=
  ∀ n, P1495562124294377756.a n = A106517 n

end A106517

/-! ## A106517.P9881479705148339189

`A098703(n+1)+A094688(n)`
-/

namespace A106517.P9881479705148339189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098703 (n + 1) + A094688 n

end

end A106517.P9881479705148339189

namespace A106517

/-- `A098703(n+1)+A094688(n)` -/
def P9881479705148339189.Spec : Prop :=
  ∀ n, P9881479705148339189.a n = A106517 n

end A106517

/-! ## A106517.P14299705533751192304

`A099159(n+1)-A000045(n)`
-/

namespace A106517.P14299705533751192304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099159 (n + 1) - A000045 n

end

end A106517.P14299705533751192304

namespace A106517

/-- `A099159(n+1)-A000045(n)` -/
def P14299705533751192304.Spec : Prop :=
  ∀ n, P14299705533751192304.a n = A106517 n

end A106517

/-! ## A106517.P2090582534458027014

`A094688(n+1)-A094688(n)`
-/

namespace A106517.P2090582534458027014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094688 (n + 1) - A094688 n

end

end A106517.P2090582534458027014

namespace A106517

/-- `A094688(n+1)-A094688(n)` -/
def P2090582534458027014.Spec : Prop :=
  ∀ n, P2090582534458027014.a n = A106517 n

theorem P2090582534458027014.correct : P2090582534458027014.Spec := by
  intro n
  simp only [A106517, Nat.add_sub_cancel, A106517.P2090582534458027014.a, A106517.P14602133901887459701.f1, A106517.P14602133901887459701.a, SequenceMachineLib.memo_apply]

end A106517

/-! ## A106517.P5346950598463887901

`Δ[A098703(n+1)]-A000045(n)`
-/

namespace A106517.P5346950598463887901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098703 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000045 n

end

end A106517.P5346950598463887901

namespace A106517

/-- `Δ[A098703(n+1)]-A000045(n)` -/
def P5346950598463887901.Spec : Prop :=
  ∀ n, P5346950598463887901.a n = A106517 n

end A106517

/-! ## A106517.P2890418910770985489

`A099164(n+1)-A000045(n+2)`
-/

namespace A106517.P2890418910770985489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099164 (n + 1) - A000045 (n + 2)

end

end A106517.P2890418910770985489

namespace A106517

/-- `A099164(n+1)-A000045(n+2)` -/
def P2890418910770985489.Spec : Prop :=
  ∀ n, P2890418910770985489.a n = A106517 n

end A106517

/-! ## A106517.P17438764283306985109

`A000045(n+1)+2*A094688(n)`
-/

namespace A106517.P17438764283306985109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + 2 * A094688 n

end

end A106517.P17438764283306985109

namespace A106517

/-- `A000045(n+1)+2*A094688(n)` -/
def P17438764283306985109.Spec : Prop :=
  ∀ n, P17438764283306985109.a n = A106517 n

end A106517

/-! ## A106517.P2496301011552768771

`A099164(n+1)-(A000071(n+2)+1)`
-/

namespace A106517.P2496301011552768771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099164 (n + 1) - (A000071 (n + 2) + 1)

end

end A106517.P2496301011552768771

namespace A106517

/-- `A099164(n+1)-(A000071(n+2)+1)` -/
def P2496301011552768771.Spec : Prop :=
  ∀ n, P2496301011552768771.a n = A106517 n

end A106517

/-! ## A106517.P14925803095248837063

`2*A098703(n+1)-A000045(n+1)`
-/

namespace A106517.P14925803095248837063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098703 (n + 1) - A000045 (n + 1)

end

end A106517.P14925803095248837063

namespace A106517

/-- `2*A098703(n+1)-A000045(n+1)` -/
def P14925803095248837063.Spec : Prop :=
  ∀ n, P14925803095248837063.a n = A106517 n

end A106517

/-! ## A106517.P13018841480399890849

`A000244(n)+A098703(n)-A000045(n)`
-/

namespace A106517.P13018841480399890849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n + (A098703 n - A000045 n)

end

end A106517.P13018841480399890849

namespace A106517

/-- `A000244(n)+A098703(n)-A000045(n)` -/
def P13018841480399890849.Spec : Prop :=
  ∀ n, P13018841480399890849.a n = A106517 n

end A106517

/-! ## A106517.P10447423715391333672

`3^(n+1)-A098703(n+2)`
-/

namespace A106517.P10447423715391333672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 1) : ℤ) - A098703 (n + 2)

end

end A106517.P10447423715391333672

namespace A106517

/-- `3^(n+1)-A098703(n+2)` -/
def P10447423715391333672.Spec : Prop :=
  ∀ n, P10447423715391333672.a n = A106517 n

end A106517

/-! ## A106517.P17159552615265514602

`Δ[Δ[A099164(n)]]-A099164(n)`
-/

namespace A106517.P17159552615265514602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099164 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099164 n

end

end A106517.P17159552615265514602

namespace A106517

/-- `Δ[Δ[A099164(n)]]-A099164(n)` -/
def P17159552615265514602.Spec : Prop :=
  ∀ n, P17159552615265514602.a n = A106517 n

end A106517

/-!
# A106519: a(n) = (2/n)*binomial(2*n-2, n-1) - (1/(2*n))*Sum_{d|n} Moebius(d)*binomial(2*n/d, n/d).

The programs for A106519, there is no canonical definition to state claims against.
-/

/-! ## A106519.P13695155527518274004

`2*A000108(n)-A022553(n+1)`
-/

namespace A106519.P13695155527518274004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 n - A022553 (n + 1)

end

end A106519.P13695155527518274004

/-! ## A106519.P4312718749583458770

`2*A028304(2*n)-A022553(n+1)`
-/

namespace A106519.P4312718749583458770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028304 (2 * n) - A022553 (n + 1)

end

end A106519.P4312718749583458770

/-! ## A106519.P172678934134036391

`A004277(A000108(n))-A022553(n+1)`
-/

namespace A106519.P172678934134036391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000108 n).toNat - A022553 (n + 1)

end

end A106519.P172678934134036391

/-! ## A106519.P7402593558178650452

`A058367(n+1)+A045917(A004110(n))`
-/

namespace A106519.P7402593558178650452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058367 (n + 1) + A045917 (A004110 n).toNat

end

end A106519.P7402593558178650452

/-!
# A106520: a(n) = A068875(n-1) - A003239(n).

The programs for A106520, there is no canonical definition to state claims against.
-/

/-! ## A106520.P16174132495416457528

`2*A000108(n)-A003239(n+1)`
-/

namespace A106520.P16174132495416457528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000108 n - A003239 (n + 1)

end

end A106520.P16174132495416457528

/-! ## A106520.P15390720382220038348

`A089408(2*(n+1))-A003239(n+1)`
-/

namespace A106520.P15390720382220038348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * (n + 1)) - A003239 (n + 1)

end

end A106520.P15390720382220038348

/-! ## A106520.P6078881873737550938

`A004277(A000108(n))-A003239(n+1)`
-/

namespace A106520.P6078881873737550938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000108 n).toNat - A003239 (n + 1)

end

end A106520.P6078881873737550938

/-!
# A106521: Numbers m such that Sum_{k=0..10} (m+k)^2 is a square.

The programs for A106521, the canonical program `A106521.P11162612905672233530` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106521 has offset 1).

The definition of A106521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106521.P11162612905672233530

`20*a(n-2)-a(n-4)+90` with `a(0)=18, a(1)=38, a(2)=456, a(3)=854`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106521

/-- `20*a(n-2)-a(n-4)+90` -/
def P11162612905672233530.Spec : Prop :=
  ∀ n, P11162612905672233530.a n = A106521 (n + 1)

theorem P11162612905672233530.correct : P11162612905672233530.Spec := by
  intro n
  simp only [A106521, Nat.add_sub_cancel]

end A106521

/-! ## A106521.P6814889710171760331

`A198949(n+2)-5`
-/

namespace A106521.P6814889710171760331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198949 (n + 2) - 5

end

end A106521.P6814889710171760331

namespace A106521

/-- `A198949(n+2)-5` -/
def P6814889710171760331.Spec : Prop :=
  ∀ n, P6814889710171760331.a n = A106521 (n + 1)

end A106521

/-! ## A106521.P16920019026575843895

`ceil(A254443(n+1)/2)`
-/

namespace A106521.P16920019026575843895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A254443 (n + 1) : ℚ) / 2⌉

end

end A106521.P16920019026575843895

namespace A106521

/-- `ceil(A254443(n+1)/2)` -/
def P16920019026575843895.Spec : Prop :=
  ∀ n, P16920019026575843895.a n = A106521 (n + 1)

end A106521

/-! ## A106521.P17192277232558526823

`floor(A007318(C(2, n))+A254443(n+1)/2)`
-/

namespace A106521.P17192277232558526823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (Nat.choose 2 n) : ℚ) + (A254443 (n + 1) : ℚ) / 2⌋

end

end A106521.P17192277232558526823

namespace A106521

/-- `floor(A007318(C(2, n))+A254443(n+1)/2)` -/
def P17192277232558526823.Spec : Prop :=
  ∀ n, P17192277232558526823.a n = A106521 (n + 1)

end A106521

/-! ## A106521.P1759516038165867987

`round(A254443(n+1)/A001316(A001316(n)))`
-/

namespace A106521.P1759516038165867987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A254443 (n + 1) : ℚ) / (A001316 (A001316 n).toNat : ℚ))

end

end A106521.P1759516038165867987

namespace A106521

/-- `round(A254443(n+1)/A001316(A001316(n)))` -/
def P1759516038165867987.Spec : Prop :=
  ∀ n, P1759516038165867987.a n = A106521 (n + 1)

end A106521

/-! ## A106521.P14620556626681785951

`floor(A254443(n+1)/2+A223134(n)/(A223134(n)+n))`
-/

namespace A106521.P14620556626681785951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A254443 (n + 1) : ℚ) / 2 + (A223134 n : ℚ) / (A223134 n + (n : ℤ) : ℚ)⌋

end

end A106521.P14620556626681785951

namespace A106521

/-- `floor(A254443(n+1)/2+A223134(n)/(A223134(n)+n))` -/
def P14620556626681785951.Spec : Prop :=
  ∀ n, P14620556626681785951.a n = A106521 (n + 1)

end A106521

/-!
# A106522: A Pascal type matrix based on the tribonacci numbers.

The programs for A106522, there is no canonical definition to state claims against.
-/

/-! ## A106522.P2736193087377559878

`A333777(A124725(n)%A326131(n+1))`
-/

namespace A106522.P2736193087377559878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333777 (Int.tmod (A124725 n) (A326131 (n + 1))).toNat

end

end A106522.P2736193087377559878

/-! ## A106522.P7178793307674479413

`A351700(A216916(n))`
-/

namespace A106522.P7178793307674479413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351700 (A216916 n).toNat

end

end A106522.P7178793307674479413

/-! ## A106522.P6538926484588143731

`A225644(A193259(A190252(n)))`
-/

namespace A106522.P6538926484588143731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (A193259 (A190252 n).toNat).toNat

end

end A106522.P6538926484588143731

/-! ## A106522.P12660874951540608224

`A104580(n)-A253059(A227655(n))`
-/

namespace A106522.P12660874951540608224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104580 n - A253059 (A227655 n).toNat

end

end A106522.P12660874951540608224

/-! ## A106522.P13824419509890796198

`A185044(A185046(n+1))+A124725(n)`
-/

namespace A106522.P13824419509890796198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 (A185046 (n + 1)).toNat + A124725 n

end

end A106522.P13824419509890796198

/-!
# A106523: Diagonal sums of number triangle A106522.

The programs for A106523, the canonical program `A106523.P18291771191878219699` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106523 has offset 0).

The definition of A106523 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106523.P18291771191878219699

`3*a(n-2)+a(n-3)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4, a(4)=10`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106523

/-- `3*a(n-2)+a(n-3)-a(n-5)` -/
def P18291771191878219699.Spec : Prop :=
  ∀ n, P18291771191878219699.a n = A106523 n

theorem P18291771191878219699.correct : P18291771191878219699.Spec := by
  intro n
  simp only [A106523]

end A106523

/-! ## A106523.P10556470438102370352

`ogf((1+x)/(1-3x^2-x^3+x^5))`
-/

namespace A106523.P10556470438102370352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, 0, -3, -1, 0, 1] n

end

end A106523.P10556470438102370352

namespace A106523

/-- `ogf((1+x)/(1-3x^2-x^3+x^5))` -/
def P10556470438102370352.Spec : Prop :=
  ∀ n, P10556470438102370352.a n = A106523 n

end A106523

/-! ## A106523.P8916897961012124537

`∑[A000213(n)]+a(n-2)-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A106523.P8916897961012124537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (a (n - 2) - a (n - 1))

end

end A106523.P8916897961012124537

namespace A106523

/-- `∑[A000213(n)]+a(n-2)-a(n-1)` -/
def P8916897961012124537.Spec : Prop :=
  ∀ n, P8916897961012124537.a n = A106523 n

end A106523

/-! ## A106523.P6716328360706269689

`A188048(n)+A006053(A032555(n+1))`
-/

namespace A106523.P6716328360706269689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188048 n + A006053 (A032555 (n + 1)).toNat

end

end A106523.P6716328360706269689

namespace A106523

/-- `A188048(n)+A006053(A032555(n+1))` -/
def P6716328360706269689.Spec : Prop :=
  ∀ n, P6716328360706269689.a n = A106523 n

end A106523

/-!
# A106524: Interleave A038573(n+1) and 2*A038573(n+1).

The programs for A106524, the canonical program `A106524.P4919753910904423378` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106524 has offset 0).

The definition of A106524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106524.P4919753910904423378

`A001316(n+2)-A000034(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A106524

/-- `A001316(n+2)-A000034(n)` -/
def P4919753910904423378.Spec : Prop :=
  ∀ n, P4919753910904423378.a n = A106524 n

theorem P4919753910904423378.correct : P4919753910904423378.Spec := by
  intro n
  simp only [A106524]

end A106524

/-! ## A106524.P3563720907141088210

`2^A000120(n+2)-2^(n%2)`
-/

namespace A106524.P3563720907141088210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 (n + 2) : ℤ) - (2 ^ (n % 2) : ℚ)

end

end A106524.P3563720907141088210

namespace A106524

/-- `2^A000120(n+2)-2^(n%2)` -/
def P3563720907141088210.Spec : Prop :=
  ∀ n, P3563720907141088210.a n = (A106524 n : ℚ)

end A106524

/-! ## A106524.P7139301851605454746

`A071055(n+1)+A059841(n)`
-/

namespace A106524.P7139301851605454746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071055 (n + 1) + A059841 n

end

end A106524.P7139301851605454746

namespace A106524

/-- `A071055(n+1)+A059841(n)` -/
def P7139301851605454746.Spec : Prop :=
  ∀ n, P7139301851605454746.a n = A106524 n

end A106524

/-! ## A106524.P5871911917373322913

`2*A048896(n+1)-A134451(n+1)`
-/

namespace A106524.P5871911917373322913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048896 (n + 1) - A134451 (n + 1)

end

end A106524.P5871911917373322913

namespace A106524

/-- `2*A048896(n+1)-A134451(n+1)` -/
def P5871911917373322913.Spec : Prop :=
  ∀ n, P5871911917373322913.a n = A106524 n

end A106524

/-! ## A106524.P11964739765394370238

`A011371(A001316(n+2))-A000035(n)`
-/

namespace A106524.P11964739765394370238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 (A001316 (n + 2)).toNat - A000035 n

end

end A106524.P11964739765394370238

namespace A106524

/-- `A011371(A001316(n+2))-A000035(n)` -/
def P11964739765394370238.Spec : Prop :=
  ∀ n, P11964739765394370238.a n = A106524 n

end A106524

/-! ## A106524.P3077411208448232754

`A023443(A001316(n+2)-A000035(n))`
-/

namespace A106524.P3077411208448232754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A001316 (n + 2) - A000035 n).toNat

end

end A106524.P3077411208448232754

namespace A106524

/-- `A023443(A001316(n+2)-A000035(n))` -/
def P3077411208448232754.Spec : Prop :=
  ∀ n, P3077411208448232754.a n = A106524 n

end A106524

/-! ## A106524.P10508133077990621416

`A001316(n+2)-A273126(A071044(n))`
-/

namespace A106524.P10508133077990621416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 2) - A273126 (A071044 n).toNat

end

end A106524.P10508133077990621416

namespace A106524

/-- `A001316(n+2)-A273126(A071044(n))` -/
def P10508133077990621416.Spec : Prop :=
  ∀ n, P10508133077990621416.a n = A106524 n

end A106524

/-! ## A106524.P4191625431558989981

`A001316(n+2)-A001511(A076618(n+1)-1)`
-/

namespace A106524.P4191625431558989981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 2) - A001511 (A076618 (n + 1) - 1).toNat

end

end A106524.P4191625431558989981

namespace A106524

/-- `A001316(n+2)-A001511(A076618(n+1)-1)` -/
def P4191625431558989981.Spec : Prop :=
  ∀ n, P4191625431558989981.a n = A106524 n

end A106524

/-! ## A106524.P8759940656275750599

`A001316(n+2)-A001511((n+1)/A003557(n+1))`
-/

namespace A106524.P8759940656275750599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 2) - A001511 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A106524.P8759940656275750599

namespace A106524

/-- `A001316(n+2)-A001511((n+1)/A003557(n+1))` -/
def P8759940656275750599.Spec : Prop :=
  ∀ n, P8759940656275750599.a n = A106524 n

end A106524

/-! ## A106524.P13368110511030615470

`Δ[A105321(n+1)]+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A106524.P13368110511030615470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  f1 (n + 1) - f1 n + a (n - 2)

end

end A106524.P13368110511030615470

namespace A106524

/-- `Δ[A105321(n+1)]+a(n-2)` -/
def P13368110511030615470.Spec : Prop :=
  ∀ n, P13368110511030615470.a n = A106524 n

end A106524

/-! ## A106524.P11352103036899818064

`A233775(A233775(n+2))-3`
-/

namespace A106524.P11352103036899818064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233775 (A233775 (n + 2)).toNat - 3

end

end A106524.P11352103036899818064

namespace A106524

/-- `A233775(A233775(n+2))-3` -/
def P11352103036899818064.Spec : Prop :=
  ∀ n, P11352103036899818064.a n = A106524 n

end A106524

/-! ## A106524.P11370583448152647219

`A000034(n+1)+A071055(n+1)-1`
-/

namespace A106524.P11370583448152647219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) + (A071055 (n + 1) - 1)

end

end A106524.P11370583448152647219

namespace A106524

/-- `A000034(n+1)+A071055(n+1)-1` -/
def P11370583448152647219.Spec : Prop :=
  ∀ n, P11370583448152647219.a n = A106524 n

end A106524

/-! ## A106524.P8971791980406654213

`A000079(A000120(n+2))-A000034(n)`
-/

namespace A106524.P8971791980406654213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000120 (n + 2)).toNat - A000034 n

end

end A106524.P8971791980406654213

namespace A106524

/-- `A000079(A000120(n+2))-A000034(n)` -/
def P8971791980406654213.Spec : Prop :=
  ∀ n, P8971791980406654213.a n = A106524 n

end A106524

/-! ## A106524.P9564478353602837988

`A038573(A000265(n+2))-char[A000265(n+2)]`
-/

namespace A106524.P9564478353602837988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (A000265 (n + 2)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A106524.P9564478353602837988

namespace A106524

/-- `A038573(A000265(n+2))-char[A000265(n+2)]` -/
def P9564478353602837988.Spec : Prop :=
  ∀ n, P9564478353602837988.a n = A106524 n

end A106524

/-! ## A106524.P5306981098200973802

`A038573(n+2)-A000035(n)`
-/

namespace A106524.P5306981098200973802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (n + 2) - A000035 n

end

end A106524.P5306981098200973802

namespace A106524

/-- `A038573(n+2)-A000035(n)` -/
def P5306981098200973802.Spec : Prop :=
  ∀ n, P5306981098200973802.a n = A106524 n

theorem P5306981098200973802.correct : P5306981098200973802.Spec := by
  intro n
  simp only [A106524, Nat.add_sub_cancel, A106524.P5306981098200973802.a, A106524.P4919753910904423378.a, A000034, A000034.P10773112074177680709.a, A000035, A000035.P2023072528413494694.a, A001316, A001316.P6850078358198232129.a, A038573, A038573.P5952807231814584452.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A106524

/-! ## A106524.P17032571880647085235

`A038573(n+2)-A135528(n+3)`
-/

namespace A106524.P17032571880647085235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (n + 2) - A135528 (n + 3)

end

end A106524.P17032571880647085235

namespace A106524

/-- `A038573(n+2)-A135528(n+3)` -/
def P17032571880647085235.Spec : Prop :=
  ∀ n, P17032571880647085235.a n = A106524 n

end A106524

/-! ## A106524.P11572370962694978409

`A038573(n+2)-char[A000265(n+1)]`
-/

namespace A106524.P11572370962694978409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (n + 2) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A106524.P11572370962694978409

namespace A106524

/-- `A038573(n+2)-char[A000265(n+1)]` -/
def P11572370962694978409.Spec : Prop :=
  ∀ n, P11572370962694978409.a n = A106524 n

end A106524

/-! ## A106524.P5013349308789573188

`A038573(n+2)-A036987(A135517(n+3))`
-/

namespace A106524.P5013349308789573188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 (n + 2) - A036987 (A135517 (n + 3)).toNat

end

end A106524.P5013349308789573188

namespace A106524

/-- `A038573(n+2)-A036987(A135517(n+3))` -/
def P5013349308789573188.Spec : Prop :=
  ∀ n, P5013349308789573188.a n = A106524 n

end A106524

/-! ## A106524.P4563448388291432839

`2*A048896(n+1)-A000120(A071044(n))`
-/

namespace A106524.P4563448388291432839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048896 (n + 1) - A000120 (A071044 n).toNat

end

end A106524.P4563448388291432839

namespace A106524

/-- `2*A048896(n+1)-A000120(A071044(n))` -/
def P4563448388291432839.Spec : Prop :=
  ∀ n, P4563448388291432839.a n = A106524 n

end A106524

/-! ## A106524.P7971676078469631609

`A071055(n+1)+2-A014709(2*n)`
-/

namespace A106524.P7971676078469631609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071055 (n + 1) + (2 - A014709 (2 * n))

end

end A106524.P7971676078469631609

namespace A106524

/-- `A071055(n+1)+2-A014709(2*n)` -/
def P7971676078469631609.Spec : Prop :=
  ∀ n, P7971676078469631609.a n = A106524 n

end A106524

/-!
# A106525: Values of x in x^2 - 49 = 2*y^2.

The programs for A106525, the canonical program `A106525.P8106908751183711631` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106525 has offset 1).

The definition of A106525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106525.P8106908751183711631

`6*a(n-3)-a(n-6)` with `a(0)=9, a(1)=11, a(2)=21, a(3)=43, a(4)=57, a(5)=119`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106525

/-- `6*a(n-3)-a(n-6)` -/
def P8106908751183711631.Spec : Prop :=
  ∀ n, P8106908751183711631.a n = A106525 (n + 1)

theorem P8106908751183711631.correct : P8106908751183711631.Spec := by
  intro n
  simp only [A106525, Nat.add_sub_cancel]

end A106525

/-! ## A106525.P3024908954697972873

`A076294(n+2)-A106526(n+1)`
-/

namespace A106525.P3024908954697972873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076294 (n + 2) - A106526 (n + 1)

end

end A106525.P3024908954697972873

namespace A106525

/-- `A076294(n+2)-A106526(n+1)` -/
def P3024908954697972873.Spec : Prop :=
  ∀ n, P3024908954697972873.a n = A106525 (n + 1)

end A106525

/-! ## A106525.P13346691462359251324

`A276600(n+5)-3*A276600(n+2)`
-/

namespace A106525.P13346691462359251324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276600 (n + 5) - 3 * A276600 (n + 2)

end

end A106525.P13346691462359251324

namespace A106525

/-- `A276600(n+5)-3*A276600(n+2)` -/
def P13346691462359251324.Spec : Prop :=
  ∀ n, P13346691462359251324.a n = A106525 (n + 1)

end A106525

/-! ## A106525.P18396969647616603351

`record[2*A076294(n)-A076293(n)]`
-/

namespace A106525.P18396969647616603351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A076294 n - A076293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106525.P18396969647616603351

namespace A106525

/-- `record[2*A076294(n)-A076293(n)]` -/
def P18396969647616603351.Spec : Prop :=
  ∀ n, P18396969647616603351.a n = A106525 (n + 1)

end A106525

/-!
# A106526: Values of y in x^2 - 49 = 2*y^2.

The programs for A106526, the canonical program `A106526.P5847744180491660705` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106526 has offset 1).

The definition of A106526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106526.P5847744180491660705

`6*a(n-3)-a(n-6)` with `a(0)=4, a(1)=6, a(2)=14, a(3)=30, a(4)=40, a(5)=84`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106526

/-- `6*a(n-3)-a(n-6)` -/
def P5847744180491660705.Spec : Prop :=
  ∀ n, P5847744180491660705.a n = A106526 (n + 1)

theorem P5847744180491660705.correct : P5847744180491660705.Spec := by
  intro n
  simp only [A106526, Nat.add_sub_cancel]

end A106526

/-! ## A106526.P2195156064134008306

`2*A276600(n+2)`
-/

namespace A106526.P2195156064134008306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A276600 (n + 2)

end

end A106526.P2195156064134008306

namespace A106526

/-- `2*A276600(n+2)` -/
def P2195156064134008306.Spec : Prop :=
  ∀ n, P2195156064134008306.a n = A106526 (n + 1)

end A106526

/-! ## A106526.P11861234067259132175

`A076294(n+2)-A106525(n+1)`
-/

namespace A106526.P11861234067259132175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076294 (n + 2) - A106525 (n + 1)

end

end A106526.P11861234067259132175

namespace A106526

/-- `A076294(n+2)-A106525(n+1)` -/
def P11861234067259132175.Spec : Prop :=
  ∀ n, P11861234067259132175.a n = A106526 (n + 1)

end A106526

/-! ## A106526.P14100675307892454816

`record[abs(A076293(n)-A076294(n))]`
-/

namespace A106526.P14100675307892454816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A076293 n - A076294 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106526.P14100675307892454816

namespace A106526

/-- `record[abs(A076293(n)-A076294(n))]` -/
def P14100675307892454816.Spec : Prop :=
  ∀ n, P14100675307892454816.a n = A106526 (n + 1)

end A106526

/-! ## A106526.P2735669374768431146

`A076293(n+2)-A076294(n+2)`
-/

namespace A106526.P2735669374768431146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076293 (n + 2) - A076294 (n + 2)

end

end A106526.P2735669374768431146

namespace A106526

/-- `A076293(n+2)-A076294(n+2)` -/
def P2735669374768431146.Spec : Prop :=
  ∀ n, P2735669374768431146.a n = A106526 (n + 1)

end A106526

/-! ## A106526.P11894291677125005021

`A276600(n+2)+A276600(n+2)%A084171(n+1)`
-/

namespace A106526.P11894291677125005021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276600 (n + 2) + Int.tmod (A276600 (n + 2)) (A084171 (n + 1))

end

end A106526.P11894291677125005021

namespace A106526

/-- `A276600(n+2)+A276600(n+2)%A084171(n+1)` -/
def P11894291677125005021.Spec : Prop :=
  ∀ n, P11894291677125005021.a n = A106526 (n + 1)

end A106526

/-!
# A106527: Values of x in x^2 - 289 = 2*y^2.

The programs for A106527, the canonical program `A106527.P10118356717270120916` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106527 has offset 1).

The definition of A106527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106527.P10118356717270120916

`6*a(n-3)-a(n-6)` with `a(0)=19, a(1)=33, a(2)=51, a(3)=81, a(4)=179, a(5)=289`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106527

/-- `6*a(n-3)-a(n-6)` -/
def P10118356717270120916.Spec : Prop :=
  ∀ n, P10118356717270120916.a n = A106527 (n + 1)

theorem P10118356717270120916.correct : P10118356717270120916.Spec := by
  intro n
  simp only [A106527, Nat.add_sub_cancel]

end A106527

/-! ## A106527.P7199345075290148219

`2*A145820(n+2)+1`
-/

namespace A106527.P7199345075290148219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A145820 (n + 2) + 1

end

end A106527.P7199345075290148219

namespace A106527

/-- `2*A145820(n+2)+1` -/
def P7199345075290148219.Spec : Prop :=
  ∀ n, P7199345075290148219.a n = A106527 (n + 1)

end A106527

/-! ## A106527.P12012146531119259416

`A145820(n+2)+A145820(n+2)+A007318(C(2, n))`
-/

namespace A106527.P12012146531119259416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145820 (n + 2) + (A145820 (n + 2) + A007318 (Nat.choose 2 n))

end

end A106527.P12012146531119259416

namespace A106527

/-- `A145820(n+2)+A145820(n+2)+A007318(C(2, n))` -/
def P12012146531119259416.Spec : Prop :=
  ∀ n, P12012146531119259416.a n = A106527 (n + 1)

end A106527

/-! ## A106527.P7267346407757182716

`A281239(n+2)/2`
-/

namespace A106527.P7267346407757182716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281239 (n + 2) : ℚ) / 2

end

end A106527.P7267346407757182716

namespace A106527

/-- `A281239(n+2)/2` -/
def P7267346407757182716.Spec : Prop :=
  ∀ n, P7267346407757182716.a n = (A106527 (n + 1) : ℚ)

end A106527

/-! ## A106527.P2508636990616544883

`A281235(n+2)/4`
-/

namespace A106527.P2508636990616544883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281235 (n + 2) : ℚ) / 4

end

end A106527.P2508636990616544883

namespace A106527

/-- `A281235(n+2)/4` -/
def P2508636990616544883.Spec : Prop :=
  ∀ n, P2508636990616544883.a n = (A106527 (n + 1) : ℚ)

end A106527

/-! ## A106527.P6905241680756041856

`A281241(n+2)/8`
-/

namespace A106527.P6905241680756041856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281241 (n + 2) : ℚ) / 8

end

end A106527.P6905241680756041856

namespace A106527

/-- `A281241(n+2)/8` -/
def P6905241680756041856.Spec : Prop :=
  ∀ n, P6905241680756041856.a n = (A106527 (n + 1) : ℚ)

end A106527

/-!
# A106528: Values of y in x^2 - 289 = 2*y^2.

The programs for A106528, the canonical program `A106528.P12359679567225199686` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106528 has offset 1).

The definition of A106528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106528.P12359679567225199686

`6*a(n-3)-a(n-6)` with `a(0)=6, a(1)=20, a(2)=34, a(3)=56, a(4)=126, a(5)=204`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106528

/-- `6*a(n-3)-a(n-6)` -/
def P12359679567225199686.Spec : Prop :=
  ∀ n, P12359679567225199686.a n = A106528 (n + 1)

theorem P12359679567225199686.correct : P12359679567225199686.Spec := by
  intro n
  simp only [A106528, Nat.add_sub_cancel]

end A106528

/-! ## A106528.P16277345539234840963

`A281240(n+2)/24`
-/

namespace A106528.P16277345539234840963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281240 (n + 2) : ℚ) / 24

end

end A106528.P16277345539234840963

namespace A106528

/-- `A281240(n+2)/24` -/
def P16277345539234840963.Spec : Prop :=
  ∀ n, P16277345539234840963.a n = (A106528 (n + 1) : ℚ)

end A106528

/-! ## A106528.P18163438701330156531

`A281236(n+2)/48`
-/

namespace A106528.P18163438701330156531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281236 (n + 2) : ℚ) / 48

end

end A106528.P18163438701330156531

namespace A106528

/-- `A281236(n+2)/48` -/
def P18163438701330156531.Spec : Prop :=
  ∀ n, P18163438701330156531.a n = (A106528 (n + 1) : ℚ)

end A106528

/-! ## A106528.P7628586412969219265

`A281242(n+2)/96`
-/

namespace A106528.P7628586412969219265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281242 (n + 2) : ℚ) / 96

end

end A106528.P7628586412969219265

namespace A106528

/-- `A281242(n+2)/96` -/
def P7628586412969219265.Spec : Prop :=
  ∀ n, P7628586412969219265.a n = (A106528 (n + 1) : ℚ)

end A106528

/-!
# A106529: Numbers having k prime factors (counted with multiplicity), the largest of which is the k-th prime.

The programs for A106529, the canonical program `A106529.P13827986667333050014` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106529 has offset 1).

The definition of A106529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106529.P13827986667333050014

`eq[A001222(n+2), A061395(n+2)]+2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A106529

/-- `eq[A001222(n+2), A061395(n+2)]+2` -/
def P13827986667333050014.Spec : Prop :=
  ∀ n, (P13827986667333050014.a n : ℤ) = A106529 (n + 1)

theorem P13827986667333050014.correct : P13827986667333050014.Spec := by
  intro n
  simp only [A106529, Nat.add_sub_cancel]

end A106529

/-! ## A106529.P7026770294765040538

`filter[A340610(n+1), A331281(#)]`
-/

namespace A106529.P7026770294765040538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A331281 (f1 j).toNat = 1) n)

end

end A106529.P7026770294765040538

namespace A106529

/-- `filter[A340610(n+1), A331281(#)]` -/
def P7026770294765040538.Spec : Prop :=
  ∀ n, P7026770294765040538.a n = A106529 (n + 1)

end A106529

/-! ## A106529.P3448288605978819208

`∩[A324521(n+1), A340610(n+1)]`
-/

namespace A106529.P3448288605978819208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106529.P3448288605978819208

namespace A106529

/-- `∩[A324521(n+1), A340610(n+1)]` -/
def P3448288605978819208.Spec : Prop :=
  ∀ n, (P3448288605978819208.a n : ℤ) = A106529 (n + 1)

end A106529

/-! ## A106529.P14176551887157901658

`∩[A340609(n+1), A340610(n+1)]`
-/

namespace A106529.P14176551887157901658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340609 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340610 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106529.P14176551887157901658

namespace A106529

/-- `∩[A340609(n+1), A340610(n+1)]` -/
def P14176551887157901658.Spec : Prop :=
  ∀ n, (P14176551887157901658.a n : ℤ) = A106529 (n + 1)

end A106529

/-! ## A106529.P12545629491568052382

`eq[A263297(n+2), A325225(n+2)]+2`
-/

namespace A106529.P12545629491568052382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A106529.P12545629491568052382

namespace A106529

/-- `eq[A263297(n+2), A325225(n+2)]+2` -/
def P12545629491568052382.Spec : Prop :=
  ∀ n, (P12545629491568052382.a n : ℤ) = A106529 (n + 1)

end A106529

/-! ## A106529.P15906681249461056435

`∩[A324521(n+1), A324562(n+1)]`
-/

namespace A106529.P15906681249461056435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106529.P15906681249461056435

namespace A106529

/-- `∩[A324521(n+1), A324562(n+1)]` -/
def P15906681249461056435.Spec : Prop :=
  ∀ n, (P15906681249461056435.a n : ℤ) = A106529 (n + 1)

end A106529

/-! ## A106529.P15072362044096240833

`∩[A324562(n+1), A340609(n+1)]`
-/

namespace A106529.P15072362044096240833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106529.P15072362044096240833

namespace A106529

/-- `∩[A324562(n+1), A340609(n+1)]` -/
def P15072362044096240833.Spec : Prop :=
  ∀ n, (P15072362044096240833.a n : ℤ) = A106529 (n + 1)

end A106529

/-! ## A106529.P6054011398324300502

`eq[0, A257541(n+2)]+2`
-/

namespace A106529.P6054011398324300502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257541 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A106529.P6054011398324300502

namespace A106529

/-- `eq[0, A257541(n+2)]+2` -/
def P6054011398324300502.Spec : Prop :=
  ∀ n, (P6054011398324300502.a n : ℤ) = A106529 (n + 1)

end A106529

/-! ## A106529.P2490118519734210426

`eq[A257541(2*A028310(n)), A260196(n)]`
-/

namespace A106529.P2490118519734210426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257541 (2 * A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106529.P2490118519734210426

namespace A106529

/-- `eq[A257541(2*A028310(n)), A260196(n)]` -/
def P2490118519734210426.Spec : Prop :=
  ∀ n, (P2490118519734210426.a n : ℤ) = A106529 (n + 1)

end A106529

/-!
# A106530: Least common multiple of all parts in Zeckendorf representation of n.

The programs for A106530, there is no canonical definition to state claims against.
-/

/-! ## A106530.P991815226763761006

`A372379(A273156(n+1))`
-/

namespace A106530.P991815226763761006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372379 (A273156 (n + 1)).toNat

end

end A106530.P991815226763761006

/-!
# A106531: Record values in A106530.

The programs for A106531, there is no canonical definition to state claims against.
-/

/-! ## A106531.P2074577070711878917

`record[A106530(n+1)]`
-/

namespace A106531.P2074577070711878917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106531.P2074577070711878917

/-! ## A106531.P6668688034184071396

`A106530(A106532(n+1))`
-/

namespace A106531.P6668688034184071396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106530 (A106532 (n + 1)).toNat

end

end A106531.P6668688034184071396

/-! ## A106531.P3048349775331410321

`A273156(A106532(n+1)%A006397(n+3))`
-/

namespace A106531.P3048349775331410321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273156 (Int.tmod (A106532 (n + 1)) (A006397 (n + 3))).toNat

end

end A106531.P3048349775331410321

/-! ## A106531.P4981736528024597815

`record[A273156(A126572(n+1))]`
-/

namespace A106531.P4981736528024597815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273156 (A126572 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106531.P4981736528024597815

/-! ## A106531.P18283906188998580248

`record[A135875(A273156(n+1))]`
-/

namespace A106531.P18283906188998580248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135875 (A273156 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106531.P18283906188998580248

/-!
# A106534: Sum array of Catalan numbers (A000108) read by upward antidiagonals.

The programs for A106534, there is no canonical definition to state claims against.
-/

/-! ## A106534.P4553049389094241967

`A280470(∑[2*n]%comp[∑[n]])`
-/

namespace A106534.P4553049389094241967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280470 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A106534.P4553049389094241967

/-! ## A106534.P4521047181268757781

`A280470(∑[char[∑[n]]]²-(n+1))`
-/

namespace A106534.P4521047181268757781
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280470 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A106534.P4521047181268757781

/-! ## A106534.P15423513635358315144

`and(-1, A280470(A061579(n)))`
-/

namespace A106534.P15423513635358315144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A280470 (A061579 n).toNat)

end

end A106534.P15423513635358315144

/-! ## A106534.P16280640117465006388

`A280470(A061579(n))^A178334(n)`
-/

namespace A106534.P16280640117465006388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280470 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A106534.P16280640117465006388

/-! ## A106534.P14008996043203829960

`A280470(A061579(n))%A016794(n)`
-/

namespace A106534.P14008996043203829960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280470 (A061579 n).toNat) (A016794 n)

end

end A106534.P14008996043203829960

/-! ## A106534.P3518415863917481440

`or(A000007(n), A280470(A061579(n)))`
-/

namespace A106534.P3518415863917481440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A280470 (A061579 n).toNat)

end

end A106534.P3518415863917481440

/-! ## A106534.P3328249481029155001

`A280470(A061579(n))^gcd(2, A000040(n+1))`
-/

namespace A106534.P3328249481029155001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280470 (A061579 n).toNat ^ Int.gcd 2 (A000040 (n + 1))

end

end A106534.P3328249481029155001

/-! ## A106534.P13067261932246891115

`A280470(A061579(n))^gcd(n, A014963(n+1))`
-/

namespace A106534.P13067261932246891115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280470 (A061579 n).toNat ^ Int.gcd (n : ℤ) (A014963 (n + 1))

end

end A106534.P13067261932246891115

/-!
# A106535: Numbers k such that the smallest x > 1 for which Fibonacci(x) == 0 mod k is x = k - 1.

The programs for A106535, there is no canonical definition to state claims against.
-/

/-! ## A106535.P8597568549652351207

`∩[A003147(n+1), A122869(n+1)]`
-/

namespace A106535.P8597568549652351207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106535.P8597568549652351207

/-! ## A106535.P10706256709546609589

`A003147(eq[3, and(3, A003147(n+1))]+1)`
-/

namespace A106535.P10706256709546609589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A003147 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A106535.P10706256709546609589

/-! ## A106535.P6610660865002525193

`∩[A003147(n+1), A053032(n+1)]`
-/

namespace A106535.P6610660865002525193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106535.P6610660865002525193

/-! ## A106535.P8104999932993057456

`∩[A003147(n+1), A112860(n+1)]`
-/

namespace A106535.P8104999932993057456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106535.P8104999932993057456

/-! ## A106535.P1230431088787224260

`∩[A053032(n+1), A079346(n+1)]`
-/

namespace A106535.P1230431088787224260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106535.P1230431088787224260

/-! ## A106535.P3563810863611635221

`∩[A079346(n+1), A122869(n+1)]`
-/

namespace A106535.P3563810863611635221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106535.P3563810863611635221

/-! ## A106535.P13569794959243901559

`∩[A045468(n+1), A079346(n+1)]`
-/

namespace A106535.P13569794959243901559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106535.P13569794959243901559

/-! ## A106535.P11833598539050666852

`∩[A002145(n+1), A003147(n+1)]`
-/

namespace A106535.P11833598539050666852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106535.P11833598539050666852

/-! ## A106535.P7592329660173000186

`∩[A003147(n+1), A045326(n+1)]`
-/

namespace A106535.P7592329660173000186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106535.P7592329660173000186

/-! ## A106535.P1414894629944262450

`∩[A003147(n+1), A003626(n+1)]`
-/

namespace A106535.P1414894629944262450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106535.P1414894629944262450

/-! ## A106535.P11275471546709542519

`∩[A003626(n+1), A079346(n+1)]`
-/

namespace A106535.P11275471546709542519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106535.P11275471546709542519

/-! ## A106535.P7190230582178417257

`∩[A003147(n+1), A296923(n+1)]`
-/

namespace A106535.P7190230582178417257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106535.P7190230582178417257

/-! ## A106535.P15046685244165547078

`∩[A003147(n+1), A085760(n+1)]`
-/

namespace A106535.P15046685244165547078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106535.P15046685244165547078

/-! ## A106535.P4828371466876489213

`∩[A003147(n+1), A197504(n+1)]`
-/

namespace A106535.P4828371466876489213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106535.P4828371466876489213

/-! ## A106535.P17753565218330715121

`∩[A003147(n+1), A332555(n+1)]`
-/

namespace A106535.P17753565218330715121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106535.P17753565218330715121

/-! ## A106535.P16749827901954106992

`∩[A003147(n+1), A292762(n+1)]`
-/

namespace A106535.P16749827901954106992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106535.P16749827901954106992

/-! ## A106535.P12825549326619320222

`∩[A003147(n+1), A216277(n+1)]`
-/

namespace A106535.P12825549326619320222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106535.P12825549326619320222

/-! ## A106535.P1791440318980585672

`∩[A003147(n+1), A066499(n+1)]`
-/

namespace A106535.P1791440318980585672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106535.P1791440318980585672

/-! ## A106535.P14796068769484365847

`∩[A003147(n+1), A097987(n+1)]`
-/

namespace A106535.P14796068769484365847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106535.P14796068769484365847

/-! ## A106535.P8487151292871458547

`∩[A003147(n+1), A094179(n+1)]`
-/

namespace A106535.P8487151292871458547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106535.P8487151292871458547

/-!
# A106539: a(1)=1, a(2)=1, a(n) = (n-1)*a(n-1) - (n-2)*a(n-2) - ... - a(1) for n>=3.

The programs for A106539, the canonical program `A106539.P7516345489314917241` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106539 has offset 1).

The definition of A106539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106539.P7516345489314917241

`(n+1)*a(n-1)-2*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106539

/-- `(n+1)*a(n-1)-2*(n-1)*a(n-2)` -/
def P7516345489314917241.Spec : Prop :=
  ∀ n, P7516345489314917241.a n = A106539 (n + 1)

theorem P7516345489314917241.correct : P7516345489314917241.Spec := by
  intro n
  simp only [A106539, Nat.add_sub_cancel]

end A106539

/-! ## A106539.P3933759150814993449

`2*a(n-1)-(n-1)!` with `a(0)=1`
-/

namespace A106539.P3933759150814993449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - (Nat.factorial ((n : ℤ) - 1).toNat : ℤ)

end

end A106539.P3933759150814993449

namespace A106539

/-- `2*a(n-1)-(n-1)!` -/
def P3933759150814993449.Spec : Prop :=
  ∀ n, P3933759150814993449.a n = A106539 (n + 1)

end A106539

/-! ## A106539.P15733820901765686085

`a(n-1)+a(n-1)-(n-1)!` with `a(0)=1`
-/

namespace A106539.P15733820901765686085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - (Nat.factorial ((n : ℤ) - 1).toNat : ℤ))

end

end A106539.P15733820901765686085

namespace A106539

/-- `a(n-1)+a(n-1)-(n-1)!` -/
def P15733820901765686085.Spec : Prop :=
  ∀ n, P15733820901765686085.a n = A106539 (n + 1)

end A106539

/-! ## A106539.P626046818483455755

`a(n-1)-((n-1)!-a(n-1))` with `a(0)=1`
-/

namespace A106539.P626046818483455755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ((Nat.factorial ((n : ℤ) - 1).toNat : ℤ) - a (n - 1))

end

end A106539.P626046818483455755

namespace A106539

/-- `a(n-1)-((n-1)!-a(n-1))` -/
def P626046818483455755.Spec : Prop :=
  ∀ n, P626046818483455755.a n = A106539 (n + 1)

end A106539

/-! ## A106539.P1285459505849450763

`2*a(n-1)-A104150(n)` with `a(0)=1`
-/

namespace A106539.P1285459505849450763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A104150 n

end

end A106539.P1285459505849450763

namespace A106539

/-- `2*a(n-1)-A104150(n)` -/
def P1285459505849450763.Spec : Prop :=
  ∀ n, P1285459505849450763.a n = A106539 (n + 1)

end A106539

/-! ## A106539.P10117618085384571841

`2*a(n-1)-A000142(n-1)` with `a(0)=1`
-/

namespace A106539.P10117618085384571841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A000142 (n - 1)

end

end A106539.P10117618085384571841

namespace A106539

/-- `2*a(n-1)-A000142(n-1)` -/
def P10117618085384571841.Spec : Prop :=
  ∀ n, P10117618085384571841.a n = A106539 (n + 1)

end A106539

/-! ## A106539.P8684511352800211353

`2*a(n-1)-A084938(A000124(n))` with `a(0)=1`
-/

namespace A106539.P8684511352800211353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A084938 (A000124 n).toNat

end

end A106539.P8684511352800211353

namespace A106539

/-- `2*a(n-1)-A084938(A000124(n))` -/
def P8684511352800211353.Spec : Prop :=
  ∀ n, P8684511352800211353.a n = A106539 (n + 1)

end A106539

/-! ## A106539.P80670408421797344

`2*a(n-1)-A094587(A152947(n+1))` with `a(0)=1`
-/

namespace A106539.P80670408421797344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A094587 (A152947 (n + 1)).toNat

end

end A106539.P80670408421797344

namespace A106539

/-- `2*a(n-1)-A094587(A152947(n+1))` -/
def P80670408421797344.Spec : Prop :=
  ∀ n, P80670408421797344.a n = A106539 (n + 1)

end A106539

/-!
# A106540: a(n) = a(n-1) - 2*a(n-2) - 3*a(n-3) - ... - (n-1)*a(1), with a(1) = a(2) = 1, a(3) = -1.

The programs for A106540, the canonical program `A106540.P6449687213640383394` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106540 has offset 1).

The definition of A106540 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106540.P6449687213640383394

`3*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=-1`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106540

/-- `3*a(n-1)-5*a(n-2)+2*a(n-3)` -/
def P6449687213640383394.Spec : Prop :=
  ∀ n, P6449687213640383394.a n = A106540 (n + 1)

theorem P6449687213640383394.correct : P6449687213640383394.Spec := by
  intro n
  simp only [A106540, Nat.add_sub_cancel]

end A106540

/-! ## A106540.P9062921643137002659

`ogf((1-2x+x^2)/(1-3x+5x^2-2x^3))`
-/

namespace A106540.P9062921643137002659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -3, 5, -2] n

end

end A106540.P9062921643137002659

namespace A106540

/-- `ogf((1-2x+x^2)/(1-3x+5x^2-2x^3))` -/
def P9062921643137002659.Spec : Prop :=
  ∀ n, P9062921643137002659.a n = A106540 (n + 1)

end A106540

/-! ## A106540.P18300495064007516343

`A106541(n+1)/2`
-/

namespace A106540.P18300495064007516343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106541 (n + 1) : ℚ) / 2

end

end A106540.P18300495064007516343

namespace A106540

/-- `A106541(n+1)/2` -/
def P18300495064007516343.Spec : Prop :=
  ∀ n, P18300495064007516343.a n = (A106540 (n + 1) : ℚ)

theorem P18300495064007516343.correct : P18300495064007516343.Spec := by
  intro n
  simp only [A106540, Nat.add_sub_cancel, A106540.P18300495064007516343.a, A106540.P6449687213640383394.a, A106541, A106541.P7427309555548918564.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106540

/-! ## A106540.P17786575433107966047

`A106542(n+1)/3`
-/

namespace A106540.P17786575433107966047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106542 (n + 1) : ℚ) / 3

end

end A106540.P17786575433107966047

namespace A106540

/-- `A106542(n+1)/3` -/
def P17786575433107966047.Spec : Prop :=
  ∀ n, P17786575433107966047.a n = (A106540 (n + 1) : ℚ)

theorem P17786575433107966047.correct : P17786575433107966047.Spec := by
  intro n
  simp only [A106540, Nat.add_sub_cancel, A106540.P17786575433107966047.a, A106540.P6449687213640383394.a, A106542, A106542.P11856518381955656934.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106540

/-! ## A106540.P7505669497726311165

`A106542(n+1)-A106541(n+1)`
-/

namespace A106540.P7505669497726311165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106542 (n + 1) - A106541 (n + 1)

end

end A106540.P7505669497726311165

namespace A106540

/-- `A106542(n+1)-A106541(n+1)` -/
def P7505669497726311165.Spec : Prop :=
  ∀ n, P7505669497726311165.a n = A106540 (n + 1)

theorem P7505669497726311165.correct : P7505669497726311165.Spec := by
  intro n
  simp only [A106540, Nat.add_sub_cancel, A106540.P7505669497726311165.a, A106540.P6449687213640383394.a, A106541, A106541.P7427309555548918564.a, A106542, A106542.P11856518381955656934.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106540

/-! ## A106540.P13432678930175480772

`A106542(n+1)%A106541(char[1]+1+n)`
-/

namespace A106540.P13432678930175480772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106542 (n + 1)) (A106541 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n))

end

end A106540.P13432678930175480772

namespace A106540

/-- `A106542(n+1)%A106541(char[1]+1+n)` -/
def P13432678930175480772.Spec : Prop :=
  ∀ n, P13432678930175480772.a n = A106540 (n + 1)

end A106540

/-! ## A106540.P10327983372252096488

`(A106525(n+1)*A106542(n+1))%A106541(n+1)`
-/

namespace A106540.P10327983372252096488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106525 (n + 1) * A106542 (n + 1)) (A106541 (n + 1))

end

end A106540.P10327983372252096488

namespace A106540

/-- `(A106525(n+1)*A106542(n+1))%A106541(n+1)` -/
def P10327983372252096488.Spec : Prop :=
  ∀ n, P10327983372252096488.a n = A106540 (n + 1)

end A106540

/-!
# A106541: a(n) = a(n-1) - 2*a(n-2) - 3*a(n-3) - ... - (n-1)*a(1), with a(1) = a(2) = 2, a(3) = -2.

The programs for A106541, the canonical program `A106541.P7427309555548918564` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106541 has offset 1).

The definition of A106541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106541.P7427309555548918564

`2*A106540(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A106541

/-- `2*A106540(n+1)` -/
def P7427309555548918564.Spec : Prop :=
  ∀ n, P7427309555548918564.a n = A106541 (n + 1)

theorem P7427309555548918564.correct : P7427309555548918564.Spec := by
  intro n
  simp only [A106541, Nat.add_sub_cancel]

end A106541

/-! ## A106541.P4849450303056770259

`3*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=2, a(1)=2, a(2)=-2`
-/

namespace A106541.P4849450303056770259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, -2] fun n a =>
  3 * a (n - 1) - 5 * a (n - 2) + 2 * a (n - 3)

end

end A106541.P4849450303056770259

namespace A106541

/-- `3*a(n-1)-5*a(n-2)+2*a(n-3)` -/
def P4849450303056770259.Spec : Prop :=
  ∀ n, P4849450303056770259.a n = A106541 (n + 1)

end A106541

/-! ## A106541.P5901767816933052719

`2/3*A106542(n+1)`
-/

namespace A106541.P5901767816933052719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A106542 (n + 1) : ℚ)

end

end A106541.P5901767816933052719

namespace A106541

/-- `2/3*A106542(n+1)` -/
def P5901767816933052719.Spec : Prop :=
  ∀ n, P5901767816933052719.a n = (A106541 (n + 1) : ℚ)

theorem P5901767816933052719.correct : P5901767816933052719.Spec := by
  intro n
  simp only [A106541, Nat.add_sub_cancel, A106541.P5901767816933052719.a, A106541.P7427309555548918564.a, A106540, A106540.P6449687213640383394.a, A106542, A106542.P11856518381955656934.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106541

/-! ## A106541.P3040654668508865736

`A106542(n+1)-A106540(n+1)`
-/

namespace A106541.P3040654668508865736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106542 (n + 1) - A106540 (n + 1)

end

end A106541.P3040654668508865736

namespace A106541

/-- `A106542(n+1)-A106540(n+1)` -/
def P3040654668508865736.Spec : Prop :=
  ∀ n, P3040654668508865736.a n = A106541 (n + 1)

theorem P3040654668508865736.correct : P3040654668508865736.Spec := by
  intro n
  simp only [A106541, Nat.add_sub_cancel, A106541.P3040654668508865736.a, A106541.P7427309555548918564.a, A106540, A106540.P6449687213640383394.a, A106542, A106542.P11856518381955656934.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106541

/-! ## A106541.P5119121296492026613

`A106540(n+2)+∑[∑[A106540(n+1)]]`
-/

namespace A106541.P5119121296492026613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106540 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106540 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106541.P5119121296492026613

namespace A106541

/-- `A106540(n+2)+∑[∑[A106540(n+1)]]` -/
def P5119121296492026613.Spec : Prop :=
  ∀ n, P5119121296492026613.a n = A106541 (n + 1)

end A106541

/-! ## A106541.P13775503870968633022

`A106540(A000027(n+1))+A106540(n+1)`
-/

namespace A106541.P13775503870968633022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106540 (A000027 (n + 1)).toNat + A106540 (n + 1)

end

end A106541.P13775503870968633022

namespace A106541

/-- `A106540(A000027(n+1))+A106540(n+1)` -/
def P13775503870968633022.Spec : Prop :=
  ∀ n, P13775503870968633022.a n = A106541 (n + 1)

end A106541

/-! ## A106541.P13548442989186692849

`ogf((2-4x+2x^2)/(1-3x+5x^2-2x^3))`
-/

namespace A106541.P13548442989186692849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -4, 2] [1, -3, 5, -2] n

end

end A106541.P13548442989186692849

namespace A106541

/-- `ogf((2-4x+2x^2)/(1-3x+5x^2-2x^3))` -/
def P13548442989186692849.Spec : Prop :=
  ∀ n, P13548442989186692849.a n = A106541 (n + 1)

end A106541

/-!
# A106542: a(n) = a(n-1) - 2*a(n-2) - 3*a(n-3) - ... - (n-1)*a(1), a(1) = a(2) = 3, a(3) = -3.

The programs for A106542, the canonical program `A106542.P11856518381955656934` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106542 has offset 1).

The definition of A106542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106542.P11856518381955656934

`3*A106540(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A106542

/-- `3*A106540(n+1)` -/
def P11856518381955656934.Spec : Prop :=
  ∀ n, P11856518381955656934.a n = A106542 (n + 1)

theorem P11856518381955656934.correct : P11856518381955656934.Spec := by
  intro n
  simp only [A106542, Nat.add_sub_cancel]

end A106542

/-! ## A106542.P8621026557137866828

`3*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=3, a(1)=3, a(2)=-3`
-/

namespace A106542.P8621026557137866828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 3, -3] fun n a =>
  3 * a (n - 1) - 5 * a (n - 2) + 2 * a (n - 3)

end

end A106542.P8621026557137866828

namespace A106542

/-- `3*a(n-1)-5*a(n-2)+2*a(n-3)` -/
def P8621026557137866828.Spec : Prop :=
  ∀ n, P8621026557137866828.a n = A106542 (n + 1)

end A106542

/-! ## A106542.P17863938333854276679

`3/2*A106541(n+1)`
-/

namespace A106542.P17863938333854276679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A106541 (n + 1) : ℚ)

end

end A106542.P17863938333854276679

namespace A106542

/-- `3/2*A106541(n+1)` -/
def P17863938333854276679.Spec : Prop :=
  ∀ n, P17863938333854276679.a n = (A106542 (n + 1) : ℚ)

theorem P17863938333854276679.correct : P17863938333854276679.Spec := by
  intro n
  simp only [A106542, Nat.add_sub_cancel, A106542.P17863938333854276679.a, A106542.P11856518381955656934.a, A106540, A106540.P6449687213640383394.a, A106541, A106541.P7427309555548918564.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106542

/-! ## A106542.P595856412070081557

`A106541(n+1)+A106540(n+1)`
-/

namespace A106542.P595856412070081557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106541 (n + 1) + A106540 (n + 1)

end

end A106542.P595856412070081557

namespace A106542

/-- `A106541(n+1)+A106540(n+1)` -/
def P595856412070081557.Spec : Prop :=
  ∀ n, P595856412070081557.a n = A106542 (n + 1)

theorem P595856412070081557.correct : P595856412070081557.Spec := by
  intro n
  simp only [A106542, Nat.add_sub_cancel, A106542.P595856412070081557.a, A106542.P11856518381955656934.a, A106540, A106540.P6449687213640383394.a, A106541, A106541.P7427309555548918564.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106542

/-! ## A106542.P10398100406594634701

`A106541(A000027(n+1))+A106541(n+1)/2`
-/

namespace A106542.P10398100406594634701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106541 (A000027 (n + 1)).toNat : ℚ) + (A106541 (n + 1) : ℚ) / 2

end

end A106542.P10398100406594634701

namespace A106542

/-- `A106541(A000027(n+1))+A106541(n+1)/2` -/
def P10398100406594634701.Spec : Prop :=
  ∀ n, P10398100406594634701.a n = (A106542 (n + 1) : ℚ)

end A106542

/-! ## A106542.P766507019711847739

`A106540(n+1)+A106540(A000027(n+1))+A106540(n+1)`
-/

namespace A106542.P766507019711847739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106540 (n + 1) + (A106540 (A000027 (n + 1)).toNat + A106540 (n + 1))

end

end A106542.P766507019711847739

namespace A106542

/-- `A106540(n+1)+A106540(A000027(n+1))+A106540(n+1)` -/
def P766507019711847739.Spec : Prop :=
  ∀ n, P766507019711847739.a n = A106542 (n + 1)

end A106542

/-! ## A106542.P8009837837823697040

`ogf((3-6x+3x^2)/(1-3x+5x^2-2x^3))`
-/

namespace A106542.P8009837837823697040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -6, 3] [1, -3, 5, -2] n

end

end A106542.P8009837837823697040

namespace A106542

/-- `ogf((3-6x+3x^2)/(1-3x+5x^2-2x^3))` -/
def P8009837837823697040.Spec : Prop :=
  ∀ n, P8009837837823697040.a n = A106542 (n + 1)

end A106542

/-!
# A106543: Composite numbers that are not perfect powers.

The programs for A106543, the canonical program `A106543.P16776134595658652118` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106543 has offset 1).

The definition of A106543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8758 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106543.P15239168678323346612

`eq[1, A158052(n+1)]+1`
-/

namespace A106543.P15239168678323346612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A106543.P15239168678323346612

namespace A106543

/-- `eq[1, A158052(n+1)]+1` -/
def P15239168678323346612.Spec : Prop :=
  ∀ n, (P15239168678323346612.a n : ℤ) = A106543 (n + 1)

end A106543

/-! ## A106543.P2634976520744914794

`record[A052410(A018252(n+3))]`
-/

namespace A106543.P2634976520744914794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A018252 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106543.P2634976520744914794

namespace A106543

/-- `record[A052410(A018252(n+3))]` -/
def P2634976520744914794.Spec : Prop :=
  ∀ n, P2634976520744914794.a n = A106543 (n + 1)

end A106543

/-! ## A106543.P1718041573966211019

`comp[∪[A001597(n+1), A158611(n+1)]]`
-/

namespace A106543.P1718041573966211019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A106543.P1718041573966211019

namespace A106543

/-- `comp[∪[A001597(n+1), A158611(n+1)]]` -/
def P1718041573966211019.Spec : Prop :=
  ∀ n, (P1718041573966211019.a n : ℤ) = A106543 (n + 1)

end A106543

/-! ## A106543.P6076512072272609486

`comp[∪[A001597(n+1), A182986(n+1)]]`
-/

namespace A106543.P6076512072272609486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A106543.P6076512072272609486

namespace A106543

/-- `comp[∪[A001597(n+1), A182986(n+1)]]` -/
def P6076512072272609486.Spec : Prop :=
  ∀ n, (P6076512072272609486.a n : ℤ) = A106543 (n + 1)

end A106543

/-! ## A106543.P4429509320187593507

`eq[A005171(n+1), A052409(n+1)]+1`
-/

namespace A106543.P4429509320187593507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052409 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A106543.P4429509320187593507

namespace A106543

/-- `eq[A005171(n+1), A052409(n+1)]+1` -/
def P4429509320187593507.Spec : Prop :=
  ∀ n, (P4429509320187593507.a n : ℤ) = A106543 (n + 1)

end A106543

/-! ## A106543.P16776134595658652118

`filter[A007916(n+1), A005171(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A106543

/-- `filter[A007916(n+1), A005171(#)]` -/
def P16776134595658652118.Spec : Prop :=
  ∀ n, P16776134595658652118.a n = A106543 (n + 1)

theorem P16776134595658652118.correct : P16776134595658652118.Spec := by
  intro n
  simp only [A106543, Nat.add_sub_cancel]

end A106543

/-! ## A106543.P6836208526920485383

`filter[A007916(n+1), A066247(#)]`
-/

namespace A106543.P6836208526920485383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A106543.P6836208526920485383

namespace A106543

/-- `filter[A007916(n+1), A066247(#)]` -/
def P6836208526920485383.Spec : Prop :=
  ∀ n, P6836208526920485383.a n = A106543 (n + 1)

end A106543

/-! ## A106543.P9849274565543372280

`filter[A007916(n+1), A174898(#)]`
-/

namespace A106543.P9849274565543372280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A106543.P9849274565543372280

namespace A106543

/-- `filter[A007916(n+1), A174898(#)]` -/
def P9849274565543372280.Spec : Prop :=
  ∀ n, P9849274565543372280.a n = A106543 (n + 1)

end A106543

/-! ## A106543.P1404300181440642386

`filter[A007916(n+1), A202238(#)]`
-/

namespace A106543.P1404300181440642386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A106543.P1404300181440642386

namespace A106543

/-- `filter[A007916(n+1), A202238(#)]` -/
def P1404300181440642386.Spec : Prop :=
  ∀ n, P1404300181440642386.a n = A106543 (n + 1)

end A106543

/-! ## A106543.P2816458588255998443

`∩[A002808(n+1), A007916(n+1)]`
-/

namespace A106543.P2816458588255998443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106543.P2816458588255998443

namespace A106543

/-- `∩[A002808(n+1), A007916(n+1)]` -/
def P2816458588255998443.Spec : Prop :=
  ∀ n, (P2816458588255998443.a n : ℤ) = A106543 (n + 1)

end A106543

/-! ## A106543.P2373758166100931624

`∩[A007916(n+1), A018252(n+1)]`
-/

namespace A106543.P2373758166100931624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106543.P2373758166100931624

namespace A106543

/-- `∩[A007916(n+1), A018252(n+1)]` -/
def P2373758166100931624.Spec : Prop :=
  ∀ n, (P2373758166100931624.a n : ℤ) = A106543 (n + 1)

end A106543

/-! ## A106543.P9182900374488280006

`∩[A007916(n+1), A024619(n+1)]`
-/

namespace A106543.P9182900374488280006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106543.P9182900374488280006

namespace A106543

/-- `∩[A007916(n+1), A024619(n+1)]` -/
def P9182900374488280006.Spec : Prop :=
  ∀ n, (P9182900374488280006.a n : ℤ) = A106543 (n + 1)

end A106543

/-! ## A106543.P4916852008700623202

`∩[A007916(n+1), A056653(n+1)]`
-/

namespace A106543.P4916852008700623202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106543.P4916852008700623202

namespace A106543

/-- `∩[A007916(n+1), A056653(n+1)]` -/
def P4916852008700623202.Spec : Prop :=
  ∀ n, (P4916852008700623202.a n : ℤ) = A106543 (n + 1)

end A106543

/-! ## A106543.P3744478275651169350

`∩[A007916(n+1), A080257(n+1)]`
-/

namespace A106543.P3744478275651169350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106543.P3744478275651169350

namespace A106543

/-- `∩[A007916(n+1), A080257(n+1)]` -/
def P3744478275651169350.Spec : Prop :=
  ∀ n, (P3744478275651169350.a n : ℤ) = A106543 (n + 1)

end A106543

/-! ## A106543.P12387622312624624286

`∩[A007916(n+1), A089229(n+1)]`
-/

namespace A106543.P12387622312624624286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106543.P12387622312624624286

namespace A106543

/-- `∩[A007916(n+1), A089229(n+1)]` -/
def P12387622312624624286.Spec : Prop :=
  ∀ n, (P12387622312624624286.a n : ℤ) = A106543 (n + 1)

end A106543

/-! ## A106543.P4165031267971154522

`∩[A007916(n+1), A139118(n+1)]`
-/

namespace A106543.P4165031267971154522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106543.P4165031267971154522

namespace A106543

/-- `∩[A007916(n+1), A139118(n+1)]` -/
def P4165031267971154522.Spec : Prop :=
  ∀ n, (P4165031267971154522.a n : ℤ) = A106543 (n + 1)

end A106543

/-! ## A106543.P9844667394335561612

`∩[A007916(n+1), A141468(n+1)]`
-/

namespace A106543.P9844667394335561612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106543.P9844667394335561612

namespace A106543

/-- `∩[A007916(n+1), A141468(n+1)]` -/
def P9844667394335561612.Spec : Prop :=
  ∀ n, (P9844667394335561612.a n : ℤ) = A106543 (n + 1)

end A106543

/-! ## A106543.P10954956532522631130

`∩[A007916(n+1), A361102(n+1)]`
-/

namespace A106543.P10954956532522631130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106543.P10954956532522631130

namespace A106543

/-- `∩[A007916(n+1), A361102(n+1)]` -/
def P10954956532522631130.Spec : Prop :=
  ∀ n, (P10954956532522631130.a n : ℤ) = A106543 (n + 1)

end A106543

/-! ## A106543.P16594539914017530747

`filter[A175082(n+1), A066247(#)]`
-/

namespace A106543.P16594539914017530747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A106543.P16594539914017530747

namespace A106543

/-- `filter[A175082(n+1), A066247(#)]` -/
def P16594539914017530747.Spec : Prop :=
  ∀ n, P16594539914017530747.a n = A106543 (n + 1)

end A106543

/-! ## A106543.P2532678717491327496

`filter[A175082(n+1), A174898(#)]`
-/

namespace A106543.P2532678717491327496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A106543.P2532678717491327496

namespace A106543

/-- `filter[A175082(n+1), A174898(#)]` -/
def P2532678717491327496.Spec : Prop :=
  ∀ n, P2532678717491327496.a n = A106543 (n + 1)

end A106543

/-!
# A106544: Perfect squares n^2 which are not the sum of two primes (otherwise 0).

The programs for A106544, there is no canonical definition to state claims against.
-/

/-! ## A106544.P11630277341642794030

`(n+1)²-A106545(n+1)`
-/

namespace A106544.P11630277341642794030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A106545 (n + 1)

end

end A106544.P11630277341642794030

/-! ## A106544.P13138186295957073260

`xor((n+1)², A106545(n%(n+1)²+1))`
-/

namespace A106544.P13138186295957073260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 1) ^ 2 : ℤ) (A106545 (n % (n + 1) ^ 2 + 1))

end

end A106544.P13138186295957073260

/-! ## A106544.P9321336292212006863

`A004442(gcd(n, A106545(n+1)))²`
-/

namespace A106544.P9321336292212006863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.gcd (n : ℤ) (A106545 (n + 1))) ^ 2

end

end A106544.P9321336292212006863

/-! ## A106544.P13976254842701897644

`xor(∑[A005408(n)], A106545(n+1))`
-/

namespace A106544.P13976254842701897644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A106545 (n + 1))

end

end A106544.P13976254842701897644

/-! ## A106544.P9408015205036551038

`xor(Δ[A000330(n)], A106545(n+1))`
-/

namespace A106544.P9408015205036551038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A106545 (n + 1))

end

end A106544.P9408015205036551038

/-! ## A106544.P593162542743993653

`xor(A000290(n+1), A106545(n+1))`
-/

namespace A106544.P593162542743993653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000290 (n + 1)) (A106545 (n + 1))

end

end A106544.P593162542743993653

/-! ## A106544.P15658127565138843236

`xor((n+1)², A106545(A000027(n+1)))`
-/

namespace A106544.P15658127565138843236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n + 1) ^ 2 : ℤ) (A106545 (A000027 (n + 1)).toNat)

end

end A106544.P15658127565138843236

/-! ## A106544.P12556995346316594099

`xor(A001478(n+1)², A106545(n+1))`
-/

namespace A106544.P12556995346316594099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001478 (n + 1) ^ 2) (A106545 (n + 1))

end

end A106544.P12556995346316594099

/-! ## A106544.P14820576200044645252

`A106546(n+1)+A106547(n+1)-A106548(n+1)`
-/

namespace A106544.P14820576200044645252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106546 (n + 1) + (A106547 (n + 1) - A106548 (n + 1))

end

end A106544.P14820576200044645252

/-! ## A106544.P17172395390029520404

`xor(Δ[A001057(n)]², A106545(n+1))`
-/

namespace A106544.P17172395390029520404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((f1 (n + 1) - f1 n) ^ 2) (A106545 (n + 1))

end

end A106544.P17172395390029520404

/-! ## A106544.P5435097135790430481

`C(n+1, A334768((n+1)²)+1)²`
-/

namespace A106544.P5435097135790430481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A334768 ((n + 1) ^ 2) + 1).toNat ^ 2

end

end A106544.P5435097135790430481

/-!
# A106545: a(n) = n^2 if n^2 is the sum of two primes, otherwise a(n) = 0.

The programs for A106545, there is no canonical definition to state claims against.
-/

/-! ## A106545.P11408465235499760935

`(n+1)²-A106544(n+1)`
-/

namespace A106545.P11408465235499760935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A106544 (n + 1)

end

end A106545.P11408465235499760935

/-! ## A106545.P17170314499103821964

`((n+1)%(A334768((n+1)²)+1))²`
-/

namespace A106545.P17170314499103821964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A334768 ((n + 1) ^ 2) + 1) ^ 2

end

end A106545.P17170314499103821964

/-! ## A106545.P16607418151407513833

`((n+1)*(n+1))%(A334768((n+1)*(n+1))+n+1)`
-/

namespace A106545.P16607418151407513833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1) * (n + 1) : ℤ) (A334768 ((n + 1) * (n + 1)) + (n + 1 : ℤ))

end

end A106545.P16607418151407513833

/-! ## A106545.P12141342410264877138

`((n+1)*3%A072491(A141310(n)²))²`
-/

namespace A106545.P12141342410264877138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * Int.tmod 3 (A072491 (A141310 n ^ 2).toNat)) ^ 2

end

end A106545.P12141342410264877138

/-! ## A106545.P12555697301468859141

`∑[A005408(n)]-C(n+1, A334768((n+1)²)+1)²`
-/

namespace A106545.P12555697301468859141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (Nat.choose (n + 1) (A334768 ((n + 1) ^ 2) + 1).toNat ^ 2 : ℤ)

end

end A106545.P12555697301468859141

/-! ## A106545.P14954910521754077924

`Δ[A000330(n)]-C(n+1, A334768((n+1)²)+1)²`
-/

namespace A106545.P14954910521754077924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (Nat.choose (n + 1) (A334768 ((n + 1) ^ 2) + 1).toNat ^ 2 : ℤ)

end

end A106545.P14954910521754077924

/-! ## A106545.P7685635662955888406

`3%A072491(A141310(n)²)*∑[A005408(n)]`
-/

namespace A106545.P7685635662955888406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A072491 (A141310 n ^ 2).toNat) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A106545.P7685635662955888406

/-!
# A106546: a(n) = n^2 if n^2 is the difference of two primes, otherwise a(n) = 0.

The programs for A106546, the canonical program `A106546.P8703496101521057786` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106546 has offset 1).

The definition of A106546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106546.P17351964085091723901

`(n+1)²-A108321(n)`
-/

namespace A106546.P17351964085091723901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A108321 n

end

end A106546.P17351964085091723901

namespace A106546

/-- `(n+1)²-A108321(n)` -/
def P17351964085091723901.Spec : Prop :=
  ∀ n, P17351964085091723901.a n = A106546 (n + 1)

theorem P17351964085091723901.correct : P17351964085091723901.Spec := by
  intro n
  simp only [A106546, Nat.add_sub_cancel, A106546.P17351964085091723901.a, A106546.P8703496101521057786.a, A108321, A108321.P5991281429611494977.a, A355450, A355450.P7145778670325853768.a, A355451, A355451.P3968050885105735617.a, A059841, A059841.P2666504972441551157.a, A264739, A264739.P12611076801907111291.f1, A264739.P12611076801907111291.a, A000010, A000010.P4673923239450215316.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106546

/-! ## A106546.P8703496101521057786

`((n+1)*(A355450(n+1)-1))²`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A106546

/-- `((n+1)*(A355450(n+1)-1))²` -/
def P8703496101521057786.Spec : Prop :=
  ∀ n, P8703496101521057786.a n = A106546 (n + 1)

theorem P8703496101521057786.correct : P8703496101521057786.Spec := by
  intro n
  simp only [A106546, Nat.add_sub_cancel]

end A106546

/-! ## A106546.P11429317797410406504

`∑{e}[A300817(n+1), ((n+1)/#)²]`
-/

namespace A106546.P11429317797410406504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((n + 1 : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)) ^ 2

end

end A106546.P11429317797410406504

namespace A106546

/-- `∑{e}[A300817(n+1), ((n+1)/#)²]` -/
def P11429317797410406504.Spec : Prop :=
  ∀ n, P11429317797410406504.a n = (A106546 (n + 1) : ℚ)

end A106546

/-! ## A106546.P16989533622211682470

`((n+1)*A003415(A300817(n+1)))²`
-/

namespace A106546.P16989533622211682470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A003415 (A300817 (n + 1)).toNat) ^ 2

end

end A106546.P16989533622211682470

namespace A106546

/-- `((n+1)*A003415(A300817(n+1)))²` -/
def P16989533622211682470.Spec : Prop :=
  ∀ n, P16989533622211682470.a n = A106546 (n + 1)

end A106546

/-! ## A106546.P10397482838111835237

`∑[A005408(n)]*A003415(A300817(n+1))`
-/

namespace A106546.P10397482838111835237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A003415 (A300817 (n + 1)).toNat

end

end A106546.P10397482838111835237

namespace A106546

/-- `∑[A005408(n)]*A003415(A300817(n+1))` -/
def P10397482838111835237.Spec : Prop :=
  ∀ n, P10397482838111835237.a n = A106546 (n + 1)

end A106546

/-! ## A106546.P10603767849060501808

`Δ[A000330(n)]*A003415(A300817(n+1))`
-/

namespace A106546.P10603767849060501808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A003415 (A300817 (n + 1)).toNat

end

end A106546.P10603767849060501808

namespace A106546

/-- `Δ[A000330(n)]*A003415(A300817(n+1))` -/
def P10603767849060501808.Spec : Prop :=
  ∀ n, P10603767849060501808.a n = A106546 (n + 1)

end A106546

/-! ## A106546.P11323978068462240433

`Δ[A056520(n)]*A003415(A300817(n+1))`
-/

namespace A106546.P11323978068462240433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A003415 (A300817 (n + 1)).toNat

end

end A106546.P11323978068462240433

namespace A106546

/-- `Δ[A056520(n)]*A003415(A300817(n+1))` -/
def P11323978068462240433.Spec : Prop :=
  ∀ n, P11323978068462240433.a n = A106546 (n + 1)

end A106546

/-! ## A106546.P17949870530820901447

`2*(n+1)²-A204896((n+1)²)`
-/

namespace A106546.P17949870530820901447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) ^ 2 : ℤ) - A204896 ((n + 1) ^ 2)

end

end A106546.P17949870530820901447

namespace A106546

/-- `2*(n+1)²-A204896((n+1)²)` -/
def P17949870530820901447.Spec : Prop :=
  ∀ n, P17949870530820901447.a n = A106546 (n + 1)

end A106546

/-! ## A106546.P1081426201943319106

`A204896((n+1)²)%∑[A016825(n)]`
-/

namespace A106546.P1081426201943319106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204896 ((n + 1) ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A106546.P1081426201943319106

namespace A106546

/-- `A204896((n+1)²)%∑[A016825(n)]` -/
def P1081426201943319106.Spec : Prop :=
  ∀ n, P1081426201943319106.a n = A106546 (n + 1)

end A106546

/-! ## A106546.P1102138659047731598

`∑[A005408(n)]-(A204896((n+1)²)-(n+1)²)`
-/

namespace A106546.P1102138659047731598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A204896 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ))

end

end A106546.P1102138659047731598

namespace A106546

/-- `∑[A005408(n)]-(A204896((n+1)²)-(n+1)²)` -/
def P1102138659047731598.Spec : Prop :=
  ∀ n, P1102138659047731598.a n = A106546 (n + 1)

end A106546

/-!
# A106547: Perfect squares n^2 which are neither the sum nor the difference of two primes (otherwise 0).

The programs for A106547, there is no canonical definition to state claims against.
-/

/-! ## A106547.P3244131655343191354

`and(A106544(n+1), A108321(n))`
-/

namespace A106547.P3244131655343191354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106544 (n + 1)) (A108321 n)

end

end A106547.P3244131655343191354

/-! ## A106547.P10599885613631843457

`A106544(n+1)*A355450(n+1)`
-/

namespace A106547.P10599885613631843457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106544 (n + 1) * A355450 (n + 1)

end

end A106547.P10599885613631843457

/-! ## A106547.P10880475766973654238

`((n+1)%(A075388(A051700((n+1)²))+n))²`
-/

namespace A106547.P10880475766973654238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A075388 (A051700 ((n + 1) ^ 2)).toNat + (n : ℤ)) ^ 2

end

end A106547.P10880475766973654238

/-! ## A106547.P12783361298979084266

`C(n+1, A334768((n+1)²)+1)²*A355450(n+1)`
-/

namespace A106547.P12783361298979084266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) (A334768 ((n + 1) ^ 2) + 1).toNat ^ 2 : ℤ) * A355450 (n + 1)

end

end A106547.P12783361298979084266

/-! ## A106547.P1683589074767169609

`A106544(A106546(n+1)+n+1)`
-/

namespace A106547.P1683589074767169609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106544 (A106546 (n + 1) + (n + 1 : ℤ)).toNat

end

end A106547.P1683589074767169609

/-! ## A106547.P13615747582988592355

`lcm(A204896((n+1)²)-(n+1)², C(n+1, A334768((n+1)²)+1)²)`
-/

namespace A106547.P13615747582988592355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A204896 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)) (Nat.choose (n + 1) (A334768 ((n + 1) ^ 2) + 1).toNat ^ 2 : ℤ)

end

end A106547.P13615747582988592355

/-!
# A106548: Perfect squares n^2 which are both the sum and the difference of two primes (otherwise 0).

The programs for A106548, there is no canonical definition to state claims against.
-/

/-! ## A106548.P5886070412073373158

`lcm(A106545(n+1), A106546(n+1))`
-/

namespace A106548.P5886070412073373158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106545 (n + 1)) (A106546 (n + 1))

end

end A106548.P5886070412073373158

/-! ## A106548.P14808865828126257552

`and((n+1)²-A106544(n+1), ∑{e}[A300817(n+1), ((n+1)/#)²])`
-/

namespace A106548.P14808865828126257552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (((n + 1) ^ 2 : ℤ) - A106544 (n + 1)) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((n + 1 : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)) ^ 2))

end

end A106548.P14808865828126257552

/-! ## A106548.P5340057073236549384

`sqrt((2*(n+1)²-A204896((n+1)²))*A106545(n+1))`
-/

namespace A106548.P5340057073236549384
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((2 * (n + 1) ^ 2 : ℤ) - A204896 ((n + 1) ^ 2)) * A106545 (n + 1) : ℝ)

end

end A106548.P5340057073236549384

/-! ## A106548.P7684699232474493379

`and(2*(n+1)²-A204896((n+1)²), (n+1)²-A106544(n+1))`
-/

namespace A106548.P7684699232474493379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 * (n + 1) ^ 2 : ℤ) - A204896 ((n + 1) ^ 2)) (((n + 1) ^ 2 : ℤ) - A106544 (n + 1))

end

end A106548.P7684699232474493379

/-! ## A106548.P11219697445849241067

`lcm(2*(n+1)²-A204896((n+1)²), ((n+1)%(A334768((n+1)²)+1))²)`
-/

namespace A106548.P11219697445849241067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 * (n + 1) ^ 2 : ℤ) - A204896 ((n + 1) ^ 2)) (Int.tmod (n + 1 : ℤ) (A334768 ((n + 1) ^ 2) + 1) ^ 2)

end

end A106548.P11219697445849241067

/-! ## A106548.P9549260981564868075

`C((n+1)²-A106544(n+1), A000124(A204896((n+1)²)-(n+1)²))`
-/

namespace A106548.P9549260981564868075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((n + 1) ^ 2 : ℤ) - A106544 (n + 1)).toNat (A000124 (A204896 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)).toNat).toNat

end

end A106548.P9549260981564868075

/-! ## A106548.P6738654437907452902

`(2*(n+1)²-A204896((n+1)²))*A014578((n+1)²-A106544(n+1))`
-/

namespace A106548.P6738654437907452902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) ^ 2 : ℤ) - A204896 ((n + 1) ^ 2)) * A014578 (((n + 1) ^ 2 : ℤ) - A106544 (n + 1)).toNat

end

end A106548.P6738654437907452902

/-! ## A106548.P15074513487848175066

`((n+1)²-A106544(n+1))%A005408(2*(n+1)²-A204896((n+1)²))`
-/

namespace A106548.P15074513487848175066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n + 1) ^ 2 : ℤ) - A106544 (n + 1)) (A005408 ((2 * (n + 1) ^ 2 : ℤ) - A204896 ((n + 1) ^ 2)).toNat)

end

end A106548.P15074513487848175066

/-! ## A106548.P3788170436401492716

`and(2*(n+1)²-A204896((n+1)²), ((n+1)*3%A072491(A141310(n)²))²)`
-/

namespace A106548.P3788170436401492716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 * (n + 1) ^ 2 : ℤ) - A204896 ((n + 1) ^ 2)) (((n + 1 : ℤ) * Int.tmod 3 (A072491 (A141310 n ^ 2).toNat)) ^ 2)

end

end A106548.P3788170436401492716

/-!
# A106549: a(n) = -1 if 2*n-1 is a prime, 1 if 2*n-1 is a prime squared, or 0 otherwise.

The programs for A106549, the canonical program `A106549.P675491543107455662` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106549 has offset 1).

The definition of A106549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106549.P5504715752626845563

`A003703(∑{d}[Δ[n²], #%2])%2`
-/

namespace A106549.P5504715752626845563
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003703 (∑ d ∈ Nat.divisors (f1 n).natAbs, d % 2)) 2

end

end A106549.P5504715752626845563

namespace A106549

/-- `A003703(∑{d}[Δ[n²], #%2])%2` -/
def P5504715752626845563.Spec : Prop :=
  ∀ n, P5504715752626845563.a n = A106549 (n + 1)

end A106549

/-! ## A106549.P12339983268031664983

`A302048(2*n+1)-A010051(2*n+1)`
-/

namespace A106549.P12339983268031664983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (2 * n + 1) - A010051 (2 * n + 1)

end

end A106549.P12339983268031664983

namespace A106549

/-- `A302048(2*n+1)-A010051(2*n+1)` -/
def P12339983268031664983.Spec : Prop :=
  ∀ n, P12339983268031664983.a n = A106549 (n + 1)

end A106549

/-! ## A106549.P675491543107455662

`A064911(2*n+1)-A353471(2*n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A106549

/-- `A064911(2*n+1)-A353471(2*n+1)` -/
def P675491543107455662.Spec : Prop :=
  ∀ n, P675491543107455662.a n = A106549 (n + 1)

theorem P675491543107455662.correct : P675491543107455662.Spec := by
  intro n
  simp only [A106549, Nat.add_sub_cancel]

end A106549

/-! ## A106549.P3957351916149841120

`A008683(A253139(2*n+1))*A057427(n)`
-/

namespace A106549.P3957351916149841120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A253139 (2 * n + 1)).toNat * A057427 n

end

end A106549.P3957351916149841120

namespace A106549

/-- `A008683(A253139(2*n+1))*A057427(n)` -/
def P3957351916149841120.Spec : Prop :=
  ∀ n, P3957351916149841120.a n = A106549 (n + 1)

end A106549

/-! ## A106549.P7985307141253911920

`A015054(A158647(n))`
-/

namespace A106549.P7985307141253911920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015054 (A158647 n).toNat

end

end A106549.P7985307141253911920

namespace A106549

/-- `A015054(A158647(n))` -/
def P7985307141253911920.Spec : Prop :=
  ∀ n, P7985307141253911920.a n = A106549 (n + 1)

end A106549

/-! ## A106549.P9145472386862705618

`round(1/(A000005((2*n+1)²)-4))`
-/

namespace A106549.P9145472386862705618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A000005 ((2 * n + 1) ^ 2) - 4 : ℚ))

end

end A106549.P9145472386862705618

namespace A106549

/-- `round(1/(A000005((2*n+1)²)-4))` -/
def P9145472386862705618.Spec : Prop :=
  ∀ n, P9145472386862705618.a n = A106549 (n + 1)

end A106549

/-! ## A106549.P17220167662054373106

`A162782(9*abs(∑{d}[2*n+1, (-1)^#]))`
-/

namespace A106549.P17220167662054373106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162782 (9 * |∑ d ∈ Nat.divisors (f1 n), (-1) ^ d|).toNat

end

end A106549.P17220167662054373106

namespace A106549

/-- `A162782(9*abs(∑{d}[2*n+1, (-1)^#]))` -/
def P17220167662054373106.Spec : Prop :=
  ∀ n, P17220167662054373106.a n = A106549 (n + 1)

end A106549

/-! ## A106549.P6779898595263316558

`A382881(A342086(2*n+1)²)`
-/

namespace A106549.P6779898595263316558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382881 (A342086 (2 * n + 1) ^ 2).toNat

end

end A106549.P6779898595263316558

namespace A106549

/-- `A382881(A342086(2*n+1)²)` -/
def P6779898595263316558.Spec : Prop :=
  ∀ n, P6779898595263316558.a n = A106549 (n + 1)

end A106549

/-! ## A106549.P9834180649992167679

`A364205(A186690(A048272((2*n+1)²)))`
-/

namespace A106549.P9834180649992167679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364205 (A186690 (A048272 ((2 * n + 1) ^ 2)).toNat).toNat

end

end A106549.P9834180649992167679

namespace A106549

/-- `A364205(A186690(A048272((2*n+1)²)))` -/
def P9834180649992167679.Spec : Prop :=
  ∀ n, P9834180649992167679.a n = A106549 (n + 1)

end A106549

/-!
# A106550: a(n) = n-th semiprime + (concatenation of its two prime factors, smallest factor first).

The programs for A106550, there is no canonical definition to state claims against.
-/

/-! ## A106550.P3388933740514395901

`A001358(n+1)+A106554(n+1)`
-/

namespace A106550.P3388933740514395901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + A106554 (n + 1)

end

end A106550.P3388933740514395901

/-! ## A106550.P5536618585054910690

`A106554(n+1)+sqrt(A074985(n+1))`
-/

namespace A106550.P5536618585054910690
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A106554 (n + 1) : ℝ) + Real.sqrt (A074985 (n + 1) : ℝ)

end

end A106550.P5536618585054910690

/-! ## A106550.P4532150211725869555

`A106554(n+1)+A186621(n+1)+1`
-/

namespace A106550.P4532150211725869555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106554 (n + 1) + (A186621 (n + 1) + 1)

end

end A106550.P4532150211725869555

/-! ## A106550.P10108685434463763462

`A088707(n+1)+A106554(n+1)-1`
-/

namespace A106550.P10108685434463763462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) + (A106554 (n + 1) - 1)

end

end A106550.P10108685434463763462

/-! ## A106550.P11635620315536413095

`A106554(n+1)+A084126(n+1)*A084127(n+1)`
-/

namespace A106550.P11635620315536413095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106554 (n + 1) + A084126 (n + 1) * A084127 (n + 1)

end

end A106550.P11635620315536413095

/-! ## A106550.P14503056576110021387

`A176540(n+2)+A037276(A176540(n+2))`
-/

namespace A106550.P14503056576110021387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2) + A037276 (A176540 (n + 2)).toNat

end

end A106550.P14503056576110021387

/-!
# A106551: a(n) = n-th semiprime + (concatenation of its two divisors, largest divisor first).

The programs for A106551, there is no canonical definition to state claims against.
-/

/-! ## A106551.P10757855882972831613

`A106555(n+1)+A001358(n+1)`
-/

namespace A106551.P10757855882972831613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106555 (n + 1) + A001358 (n + 1)

end

end A106551.P10757855882972831613

/-! ## A106551.P13512465961503104144

`A106555(n+1)+eq[2, A001222(n+1)]+1`
-/

namespace A106551.P13512465961503104144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106555 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A106551.P13512465961503104144

/-! ## A106551.P8516304236613967165

`A106552(n+1)+A106557(n+1)-A106554(n+1)`
-/

namespace A106551.P8516304236613967165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106552 (n + 1) + (A106557 (n + 1) - A106554 (n + 1))

end

end A106551.P8516304236613967165

/-! ## A106551.P2015177089110997181

`A106553(n+1)+A106556(n+1)-A106554(n+1)`
-/

namespace A106551.P2015177089110997181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106553 (n + 1) + (A106556 (n + 1) - A106554 (n + 1))

end

end A106551.P2015177089110997181

/-! ## A106551.P6334779604497232633

`A106555(n+1)+eq[2, A000005((n+1)/A006530(n+1))]+1`
-/

namespace A106551.P6334779604497232633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106555 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A106551.P6334779604497232633

/-! ## A106551.P17427831365388046463

`A176540(n+2)+A084796(A176540(n+2))`
-/

namespace A106551.P17427831365388046463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2) + A084796 (A176540 (n + 2)).toNat

end

end A106551.P17427831365388046463

/-! ## A106551.P16393540715437170991

`A084796(A186621(n+1)+1)+sqrt(A074985(n+1))`
-/

namespace A106551.P16393540715437170991
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A084796 (A186621 (n + 1) + 1).toNat : ℝ) + Real.sqrt (A074985 (n + 1) : ℝ)

end

end A106551.P16393540715437170991

/-! ## A106551.P4021442784494851706

`A084796(A088707(n+1)-1)+sqrt(A074985(n+1))`
-/

namespace A106551.P4021442784494851706
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A084796 (A088707 (n + 1) - 1).toNat : ℝ) + Real.sqrt (A074985 (n + 1) : ℝ)

end

end A106551.P4021442784494851706

/-! ## A106551.P7957786439621011809

`A084796(A075818(n+1)/2)+sqrt(A074985(n+1))`
-/

namespace A106551.P7957786439621011809
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A084796 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat : ℝ) + Real.sqrt (A074985 (n + 1) : ℝ)

end

end A106551.P7957786439621011809

/-!
# A106552: Semiprime + (smallest integer obtained by concatenating its two divisors).

The programs for A106552, there is no canonical definition to state claims against.
-/

/-! ## A106552.P6671098936851954686

`A106556(n+1)+A001358(n+1)`
-/

namespace A106552.P6671098936851954686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106556 (n + 1) + A001358 (n + 1)

end

end A106552.P6671098936851954686

/-! ## A106552.P10560596845503270688

`A106556(n+1)+sqrt(A074985(n+1))`
-/

namespace A106552.P10560596845503270688
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A106556 (n + 1) : ℝ) + Real.sqrt (A074985 (n + 1) : ℝ)

end

end A106552.P10560596845503270688

/-! ## A106552.P9850930905626173383

`A106556(n+1)+eq[2, A001222(n+1)]+1`
-/

namespace A106552.P9850930905626173383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106556 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A106552.P9850930905626173383

/-! ## A106552.P13072838929402871879

`A106551(n+1)+A106554(n+1)-A106557(n+1)`
-/

namespace A106552.P13072838929402871879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106551 (n + 1) + (A106554 (n + 1) - A106557 (n + 1))

end

end A106552.P13072838929402871879

/-! ## A106552.P14798858478873447348

`A106556(n+1)+eq[2, A000005((n+1)/A006530(n+1))]+1`
-/

namespace A106552.P14798858478873447348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106556 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A106552.P14798858478873447348

/-! ## A106552.P4533264533468583336

`A176540(n+2)+A106556(n+1)`
-/

namespace A106552.P4533264533468583336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2) + A106556 (n + 1)

end

end A106552.P4533264533468583336

/-! ## A106552.P17049471453249989863

`A106556(n+1)+eq[2, A105700(n)]`
-/

namespace A106552.P17049471453249989863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106556 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A106552.P17049471453249989863

/-! ## A106552.P16659725604603560727

`A106556(n+1)+eq[2, A226378(n)]`
-/

namespace A106552.P16659725604603560727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106556 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A106552.P16659725604603560727

/-! ## A106552.P4529483198151006180

`A106556(n+1)+record[A088739(n+1)]`
-/

namespace A106552.P4529483198151006180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106556 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106552.P4529483198151006180

/-! ## A106552.P14938520001524241979

`A106556(n+1)+eq[2, A166974(n)]`
-/

namespace A106552.P14938520001524241979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106556 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A106552.P14938520001524241979

/-!
# A106553: Semiprime + (largest integer obtained by concatenating its two divisors).

The programs for A106553, there is no canonical definition to state claims against.
-/

/-! ## A106553.P13795855595293789435

`A106557(n+1)+A001358(n+1)`
-/

namespace A106553.P13795855595293789435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106557 (n + 1) + A001358 (n + 1)

end

end A106553.P13795855595293789435

/-! ## A106553.P13312866752883232044

`A106557(n+1)+sqrt(A074985(n+1))`
-/

namespace A106553.P13312866752883232044
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A106557 (n + 1) : ℝ) + Real.sqrt (A074985 (n + 1) : ℝ)

end

end A106553.P13312866752883232044

/-! ## A106553.P9240874005482451403

`A106557(n+1)+eq[2, A001222(n+1)]+1`
-/

namespace A106553.P9240874005482451403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106557 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A106553.P9240874005482451403

/-! ## A106553.P8068299853623864402

`A106557(n+1)+eq[2, A000005((n+1)/A006530(n+1))]+1`
-/

namespace A106553.P8068299853623864402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106557 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A106553.P8068299853623864402

/-! ## A106553.P408558124139810387

`A176540(n+2)+A106557(n+1)`
-/

namespace A106553.P408558124139810387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2) + A106557 (n + 1)

end

end A106553.P408558124139810387

/-! ## A106553.P1979010178183553232

`A106557(n+1)+eq[2, A105700(n)]`
-/

namespace A106553.P1979010178183553232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106557 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A106553.P1979010178183553232

/-! ## A106553.P13053518098711621026

`A106557(n+1)+eq[2, A226378(n)]`
-/

namespace A106553.P13053518098711621026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106557 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A106553.P13053518098711621026

/-! ## A106553.P934611569481658786

`A106557(n+1)+eq[2, A001222(A028310(n))]`
-/

namespace A106553.P934611569481658786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106557 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A106553.P934611569481658786

/-! ## A106553.P10574377063662110558

`A106557(n+1)+eq[3, A001222(A004277(n))]`
-/

namespace A106553.P10574377063662110558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106557 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A106553.P10574377063662110558

/-! ## A106553.P14036244581794885709

`A106557(n+1)+record[A088739(n+1)]`
-/

namespace A106553.P14036244581794885709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106557 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106553.P14036244581794885709

/-!
# A106554: Concatenation of the two prime divisors of a semiprime, smallest divisor first.

The programs for A106554, there is no canonical definition to state claims against.
-/

/-! ## A106554.P2527169589257203170

`A037276(A001358(n+1))`
-/

namespace A106554.P2527169589257203170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A001358 (n + 1)).toNat

end

end A106554.P2527169589257203170

/-! ## A106554.P5711061779903031127

`A106550(n+1)-A001358(n+1)`
-/

namespace A106554.P5711061779903031127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106550 (n + 1) - A001358 (n + 1)

end

end A106554.P5711061779903031127

/-! ## A106554.P8720378426260851932

`A106550(n+1)-A084126(n+1)*A084127(n+1)`
-/

namespace A106554.P8720378426260851932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106550 (n + 1) - A084126 (n + 1) * A084127 (n + 1)

end

end A106554.P8720378426260851932

/-! ## A106554.P2694402956110363776

`A037276(A176540(n+2))`
-/

namespace A106554.P2694402956110363776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A176540 (n + 2)).toNat

end

end A106554.P2694402956110363776

/-! ## A106554.P385250818416910196

`A037276(A186621(n+1)+1)`
-/

namespace A106554.P385250818416910196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A186621 (n + 1) + 1).toNat

end

end A106554.P385250818416910196

/-! ## A106554.P12962225882675446952

`A037276(eq[2, A001222(n+1)]+1)`
-/

namespace A106554.P12962225882675446952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A106554.P12962225882675446952

/-! ## A106554.P2474378906482248989

`A037276(lt[(A329378(n+1)-2)², 1]+1)`
-/

namespace A106554.P2474378906482248989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A329378 (n + 1) - 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A106554.P2474378906482248989

/-! ## A106554.P9061149587833712427

`A037276(A084126(n+1)*A084127(n+1))`
-/

namespace A106554.P9061149587833712427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A084126 (n + 1) * A084127 (n + 1)).toNat

end

end A106554.P9061149587833712427

/-! ## A106554.P6996585344028061782

`A119603(A176193(n+1))`
-/

namespace A106554.P6996585344028061782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119603 (A176193 (n + 1)).toNat

end

end A106554.P6996585344028061782

/-! ## A106554.P830251232019453988

`A037276(eq[2, A105700(n)])`
-/

namespace A106554.P830251232019453988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106554.P830251232019453988

/-!
# A106555: Concatenation of the two divisors of a semiprime, largest divisor first.

The programs for A106555, there is no canonical definition to state claims against.
-/

/-! ## A106555.P8808364910283932405

`A106551(n+1)-A001358(n+1)`
-/

namespace A106555.P8808364910283932405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106551 (n + 1) - A001358 (n + 1)

end

end A106555.P8808364910283932405

/-! ## A106555.P2572505948281774247

`A084796(A001358(n+1))`
-/

namespace A106555.P2572505948281774247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084796 (A001358 (n + 1)).toNat

end

end A106555.P2572505948281774247

/-! ## A106555.P1222922954278944434

`A084796(A176540(n+2))`
-/

namespace A106555.P1222922954278944434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084796 (A176540 (n + 2)).toNat

end

end A106555.P1222922954278944434

/-! ## A106555.P2241232946096138912

`A084796(sqrt(A074985(n+1)))`
-/

namespace A106555.P2241232946096138912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084796 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A106555.P2241232946096138912

/-! ## A106555.P1434161433168335015

`A084796(A186621(n+1)+1)`
-/

namespace A106555.P1434161433168335015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084796 (A186621 (n + 1) + 1).toNat

end

end A106555.P1434161433168335015

/-! ## A106555.P12378184900587867404

`A084796(A088707(n+1)-1)`
-/

namespace A106555.P12378184900587867404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084796 (A088707 (n + 1) - 1).toNat

end

end A106555.P12378184900587867404

/-! ## A106555.P1821550319084601004

`A084796(A075818(n+1)/2)`
-/

namespace A106555.P1821550319084601004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084796 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat

end

end A106555.P1821550319084601004

/-! ## A106555.P202164293182746894

`A084796(eq[2, A001222(n+1)]+1)`
-/

namespace A106555.P202164293182746894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A106555.P202164293182746894

/-! ## A106555.P18417567187558517774

`A084796(eq[2, A105700(n)])`
-/

namespace A106555.P18417567187558517774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106555.P18417567187558517774

/-! ## A106555.P17985230594304308606

`A084796(eq[2, A166974(n)])`
-/

namespace A106555.P17985230594304308606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084796 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106555.P17985230594304308606

/-!
# A106556: Smallest number formed by concatenating the two factors of a semiprime.

The programs for A106556, there is no canonical definition to state claims against.
-/

/-! ## A106556.P10049191185932788013

`A106552(n+1)-A001358(n+1)`
-/

namespace A106556.P10049191185932788013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106552 (n + 1) - A001358 (n + 1)

end

end A106556.P10049191185932788013

/-! ## A106556.P1220591946244395100

`A106552(n+1)-sqrt(A074985(n+1))`
-/

namespace A106556.P1220591946244395100
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A106552 (n + 1) : ℝ) - Real.sqrt (A074985 (n + 1) : ℝ)

end

end A106556.P1220591946244395100

/-! ## A106556.P16425225001038324281

`A106552(n+1)-(eq[2, A001222(n+1)]+1)`
-/

namespace A106556.P16425225001038324281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106552 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A106556.P16425225001038324281

/-! ## A106556.P12913164366126965504

`A106552(n+1)-(eq[2, A000005((n+1)/A006530(n+1))]+1)`
-/

namespace A106556.P12913164366126965504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006530 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106552 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A106556.P12913164366126965504

/-! ## A106556.P13004936566014753713

`A106552(n+1)-A176540(n+2)`
-/

namespace A106556.P13004936566014753713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106552 (n + 1) - A176540 (n + 2)

end

end A106556.P13004936566014753713

/-! ## A106556.P3455247000107133627

`A106552(n+1)-eq[2, A105700(n)]`
-/

namespace A106556.P3455247000107133627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106552 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A106556.P3455247000107133627

/-! ## A106556.P17800087819559210273

`A106552(n+1)-eq[2, A226378(n)]`
-/

namespace A106556.P17800087819559210273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106552 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A106556.P17800087819559210273

/-! ## A106556.P13452741021814722982

`A106552(n+1)-eq[2, A001222(A028310(n))]`
-/

namespace A106556.P13452741021814722982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106552 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A106556.P13452741021814722982

/-! ## A106556.P6525218494871977028

`A106552(n+1)-eq[3, A001222(A004277(n))]`
-/

namespace A106556.P6525218494871977028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106552 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A106556.P6525218494871977028

/-! ## A106556.P9337064782635621502

`A106552(n+1)-record[A088739(n+1)]`
-/

namespace A106556.P9337064782635621502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106552 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106556.P9337064782635621502

/-!
# A106557: Largest number that can be obtained by concatenating the two factors of the n-th semiprime.

The programs for A106557, there is no canonical definition to state claims against.
-/

/-! ## A106557.P11364320466435362286

`A084797(A001358(n+1))`
-/

namespace A106557.P11364320466435362286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084797 (A001358 (n + 1)).toNat

end

end A106557.P11364320466435362286

/-! ## A106557.P10272595020706027783

`A106553(n+1)-A001358(n+1)`
-/

namespace A106557.P10272595020706027783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106553 (n + 1) - A001358 (n + 1)

end

end A106557.P10272595020706027783

/-! ## A106557.P16807748183381530122

`A106553(n+1)-(eq[2, A001222(n+1)]+1)`
-/

namespace A106557.P16807748183381530122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106553 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ)

end

end A106557.P16807748183381530122

/-! ## A106557.P5300315798589173649

`A084797(A176540(n+2))`
-/

namespace A106557.P5300315798589173649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084797 (A176540 (n + 2)).toNat

end

end A106557.P5300315798589173649

/-! ## A106557.P7160157445903412711

`A084797(sqrt(A074985(n+1)))`
-/

namespace A106557.P7160157445903412711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084797 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

end

end A106557.P7160157445903412711

/-! ## A106557.P879896662177927759

`A084797(A186621(n+1)+1)`
-/

namespace A106557.P879896662177927759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084797 (A186621 (n + 1) + 1).toNat

end

end A106557.P879896662177927759

/-! ## A106557.P886801287471540222

`A084797(A100493(n+1)-(n+1))`
-/

namespace A106557.P886801287471540222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084797 (A100493 (n + 1) - (n + 1 : ℤ)).toNat

end

end A106557.P886801287471540222

/-! ## A106557.P3379983873359427572

`A084797(eq[2, A105700(n)])`
-/

namespace A106557.P3379983873359427572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084797 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106557.P3379983873359427572

/-! ## A106557.P1018789966030279651

`A084797(eq[2, A226378(n)])`
-/

namespace A106557.P1018789966030279651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084797 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106557.P1018789966030279651

/-! ## A106557.P16852759921455185789

`A106553(n+1)-eq[2, A226378(n)]`
-/

namespace A106557.P16852759921455185789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106553 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A106557.P16852759921455185789

/-!
# A106558: a(n)=1+floor(sqrt(Pi/2)*p(n)#).

The programs for A106558, there is no canonical definition to state claims against.
-/

/-! ## A106558.P1045217245122458665

`A038126(A070826(n+1))+1`
-/

namespace A106558.P1045217245122458665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038126 (A070826 (n + 1)).toNat + 1

end

end A106558.P1045217245122458665

/-!
# A106559: 2-limiting word of the morphism 1->232, 2->313, 3->424, 4->141 started from 1.

The programs for A106559, there is no canonical definition to state claims against.
-/

/-! ## A106559.P6262072928198455760

`A057115(A229555(n))%7`
-/

namespace A106559.P6262072928198455760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057115 (A229555 n).toNat) 7

end

end A106559.P6262072928198455760

/-! ## A106559.P3303964090913501219

`A031346(A064413(3*n+5)*A219529(2*(n+1))+1)`
-/

namespace A106559.P3303964090913501219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A064413 (3 * n + 5) * A219529 (2 * (n + 1)) + 1).toNat

end

end A106559.P3303964090913501219

/-!
# A106560: Trajectory of 1 under the morphism 1->{2, 3, 2}, 2->{3, 1, 3}, 3->{4, 4, 4}, 4->{1, 2, 1}.

The programs for A106560, there is no canonical definition to state claims against.
-/

/-! ## A106560.P14929899102172259259

`Δ[A304498(2*(n+3))-A304498(n+3)]`
-/

namespace A106560.P14929899102172259259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304498 (2 * (n + 3)) - A304498 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106560.P14929899102172259259

/-! ## A106560.P14574028421353006132

`A319081(A004511(n)+A004488(n))`
-/

namespace A106560.P14574028421353006132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319081 (A004511 n + A004488 n).toNat

end

end A106560.P14574028421353006132

/-! ## A106560.P10873203789954637682

`A105203(A059148(n)^A000034(n))`
-/

namespace A106560.P10873203789954637682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 (SequenceMachineLib.roundAway ((A059148 n : ℚ) ^ (A000034 n : ℤ))).toNat

end

end A106560.P10873203789954637682

/-! ## A106560.P17168338553324491790

`A105203(A010694(n)^A289813(n))`
-/

namespace A106560.P17168338553324491790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105203 (SequenceMachineLib.roundAway ((A010694 n : ℚ) ^ (A289813 n : ℤ))).toNat

end

end A106560.P17168338553324491790

/-! ## A106560.P15609605882838637061

`A204257(A001107(2*n+3)+n)`
-/

namespace A106560.P15609605882838637061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204257 (A001107 (2 * n + 3) + (n : ℤ)).toNat

end

end A106560.P15609605882838637061

/-!
# A106561: Primes p for which the polynomial Q(x)=17*x^3+8*x^2+5*x+23 is reducible modulo p.

The programs for A106561, there is no canonical definition to state claims against.
-/

/-! ## A106561.P6116553014765762884

`A000040(∑[∏{e}[A182723(n+1), #]])`
-/

namespace A106561.P6116553014765762884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182723 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A106561.P6116553014765762884

/-! ## A106561.P14141558263036884434

`record[p?[A005408(A133299(2*n+1))]]`
-/

namespace A106561.P14141558263036884434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A133299 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106561.P14141558263036884434

/-! ## A106561.P7829167266551389851

`∩[A028789(n+1), A074781(n+1)]`
-/

namespace A106561.P7829167266551389851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106561.P7829167266551389851

/-! ## A106561.P3060258413342274913

`∩[A028789(n+1), A147545(n+1)]`
-/

namespace A106561.P3060258413342274913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106561.P3060258413342274913

/-! ## A106561.P7471889091954826975

`∩[A074781(n+1), A377463(n+1)]`
-/

namespace A106561.P7471889091954826975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106561.P7471889091954826975

/-!
# A106562: Perfect squares which are not the sum of two primes.

The programs for A106562, there is no canonical definition to state claims against.
-/

/-! ## A106562.P9275410046083782213

`A106563(n+1)²`
-/

namespace A106562.P9275410046083782213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106563 (n + 1) ^ 2

end

end A106562.P9275410046083782213

/-! ## A106562.P14340688015124158785

`(2*comp[A088572(n+1)]+1)²`
-/

namespace A106562.P14340688015124158785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) ^ 2

end

end A106562.P14340688015124158785

/-! ## A106562.P16532990416997477358

`record[A106544(n+1)]`
-/

namespace A106562.P16532990416997477358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106562.P16532990416997477358

/-! ## A106562.P1505646396943594825

`eq[0, A106545(xor(1, n)+1)]²`
-/

namespace A106562.P1505646396943594825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106545 (Nat.xor 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A106562.P1505646396943594825

/-! ## A106562.P13509414748846098739

`filter[A106544(n+1), A014578(#)]`
-/

namespace A106562.P13509414748846098739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A106562.P13509414748846098739

/-! ## A106562.P5099989223910547120

`filter[A106544(n+1), A098108(#)]`
-/

namespace A106562.P5099989223910547120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098108 (f1 j).toNat = 1) n)

end

end A106562.P5099989223910547120

/-! ## A106562.P8711204280885813700

`filter[A106544(n+1), A098725(#)]`
-/

namespace A106562.P8711204280885813700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A106562.P8711204280885813700

/-! ## A106562.P3185948743047795906

`filter[A106544(n+1), A115971(#)]`
-/

namespace A106562.P3185948743047795906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A106562.P3185948743047795906

/-! ## A106562.P4629546965925280205

`filter[A106544(n+1), A166486(#)]`
-/

namespace A106562.P4629546965925280205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A106562.P4629546965925280205

/-! ## A106562.P14888307491399424862

`filter[A106544(n+1), A168185(#)]`
-/

namespace A106562.P14888307491399424862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A106562.P14888307491399424862

/-!
# A106563: Numbers n such that n^2 is not the sum of two primes.

The programs for A106563, there is no canonical definition to state claims against.
-/

/-! ## A106563.P12368558162785024825

`sqrt(A106562(n+1))`
-/

namespace A106563.P12368558162785024825
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A106562 (n + 1) : ℝ)

end

end A106563.P12368558162785024825

/-! ## A106563.P5973068873716337909

`2*comp[A088572(n+1)]+1`
-/

namespace A106563.P5973068873716337909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A106563.P5973068873716337909

/-! ## A106563.P9155138427575628949

`record[sqrt(A106544(n+1))]`
-/

namespace A106563.P9155138427575628949
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A106544 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106563.P9155138427575628949

/-! ## A106563.P418070519507605116

`eq[0, A106545(abs(xor(n, -2)))]`
-/

namespace A106563.P418070519507605116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106545 |Int.xor (n : ℤ) (-2)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A106563.P418070519507605116

/-! ## A106563.P5480433846440852354

`eq[0, A106545(xor(1, n)+1)]`
-/

namespace A106563.P5480433846440852354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106545 (Nat.xor 1 n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A106563.P5480433846440852354

/-! ## A106563.P14602051902469041143

`lt[A106545(or(1, n)), n%2]`
-/

namespace A106563.P14602051902469041143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106545 (Nat.lor 1 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A106563.P14602051902469041143

/-! ## A106563.P3130033181384013805

`eq[0, A106545(abs(1-n)+1)]`
-/

namespace A106563.P3130033181384013805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106545 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A106563.P3130033181384013805

/-! ## A106563.P6514073560449590573

`lt[A106545(round(sqrt(n²+1))), n]`
-/

namespace A106563.P6514073560449590573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106545 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A106563.P6514073560449590573

/-! ## A106563.P3715122596078131040

`lt[A106545(xor(1, n+1)+1), 1]+1`
-/

namespace A106563.P3715122596078131040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106545 (Nat.xor 1 (n + 1) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A106563.P3715122596078131040

/-!
# A106564: Perfect squares which are not the difference of two primes.

The programs for A106564, the canonical program `A106564.P8487788228564906810` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106564 has offset 1).

The definition of A106564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106564.P15807823820835342890

`A106571(n+1)²`
-/

namespace A106564.P15807823820835342890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106571 (n + 1) ^ 2

end

end A106564.P15807823820835342890

namespace A106564

/-- `A106571(n+1)²` -/
def P15807823820835342890.Spec : Prop :=
  ∀ n, P15807823820835342890.a n = A106564 (n + 1)

end A106564

/-! ## A106564.P8487788228564906810

`(eq[1, A355450(n+1)]+1)²`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A106564

/-- `(eq[1, A355450(n+1)]+1)²` -/
def P8487788228564906810.Spec : Prop :=
  ∀ n, (P8487788228564906810.a n : ℤ) = A106564 (n + 1)

theorem P8487788228564906810.correct : P8487788228564906810.Spec := by
  intro n
  simp only [A106564, Nat.add_sub_cancel]

end A106564

/-! ## A106564.P12056322779977504878

`A106571(∑[n+1]-∑[n])^2`
-/

namespace A106564.P12056322779977504878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106571 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A106564.P12056322779977504878

namespace A106564

/-- `A106571(∑[n+1]-∑[n])^2` -/
def P12056322779977504878.Spec : Prop :=
  ∀ n, P12056322779977504878.a n = A106564 (n + 1)

end A106564

/-! ## A106564.P9347216723896979987

`A106571(n+1)*A106571((n+1)%A106571(n+1))`
-/

namespace A106564.P9347216723896979987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106571 (n + 1) * A106571 (Int.tmod (n + 1 : ℤ) (A106571 (n + 1))).toNat

end

end A106564.P9347216723896979987

namespace A106564

/-- `A106571(n+1)*A106571((n+1)%A106571(n+1))` -/
def P9347216723896979987.Spec : Prop :=
  ∀ n, P9347216723896979987.a n = A106564 (n + 1)

end A106564

/-! ## A106564.P4753754553941497925

`eq[0, A300817(n)]²`
-/

namespace A106564.P4753754553941497925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A106564.P4753754553941497925

namespace A106564

/-- `eq[0, A300817(n)]²` -/
def P4753754553941497925.Spec : Prop :=
  ∀ n, (P4753754553941497925.a n : ℤ) = A106564 (n + 1)

end A106564

/-! ## A106564.P877406302156603400

`record[Δ[A108321(n+3)]]`
-/

namespace A106564.P877406302156603400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108321 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106564.P877406302156603400

namespace A106564

/-- `record[Δ[A108321(n+3)]]` -/
def P877406302156603400.Spec : Prop :=
  ∀ n, P877406302156603400.a n = A106564 (n + 1)

end A106564

/-! ## A106564.P989555960346290870

`lt[2, A131732(A053000(n))]²`
-/

namespace A106564.P989555960346290870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A053000 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A106564.P989555960346290870

namespace A106564

/-- `lt[2, A131732(A053000(n))]²` -/
def P989555960346290870.Spec : Prop :=
  ∀ n, (P989555960346290870.a n : ℤ) = A106564 (n + 1)

end A106564

/-! ## A106564.P10851269301946871820

`A108321(A106571(n+1)-1)`
-/

namespace A106564.P10851269301946871820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108321 (A106571 (n + 1) - 1).toNat

end

end A106564.P10851269301946871820

namespace A106564

/-- `A108321(A106571(n+1)-1)` -/
def P10851269301946871820.Spec : Prop :=
  ∀ n, P10851269301946871820.a n = A106564 (n + 1)

end A106564

/-! ## A106564.P16276028971406523028

`A001105(lt[A300817(n), 1])/2`
-/

namespace A106564.P16276028971406523028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001105 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) : ℚ) / 2

end

end A106564.P16276028971406523028

namespace A106564

/-- `A001105(lt[A300817(n), 1])/2` -/
def P16276028971406523028.Spec : Prop :=
  ∀ n, P16276028971406523028.a n = (A106564 (n + 1) : ℚ)

end A106564

/-! ## A106564.P16474213226806186364

`lt[A300817(n), A079978(3*n)]²`
-/

namespace A106564.P16474213226806186364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A106564.P16474213226806186364

namespace A106564

/-- `lt[A300817(n), A079978(3*n)]²` -/
def P16474213226806186364.Spec : Prop :=
  ∀ n, (P16474213226806186364.a n : ℤ) = A106564 (n + 1)

end A106564

/-! ## A106564.P4106694910600042149

`eq[A047760(n+1), A355449(n)]²`
-/

namespace A106564.P4106694910600042149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355449 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A106564.P4106694910600042149

namespace A106564

/-- `eq[A047760(n+1), A355449(n)]²` -/
def P4106694910600042149.Spec : Prop :=
  ∀ n, (P4106694910600042149.a n : ℤ) = A106564 (n + 1)

end A106564

/-! ## A106564.P854652031545301652

`eq[A075091(n), A355449(n)]²`
-/

namespace A106564.P854652031545301652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355449 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 2

end

end A106564.P854652031545301652

namespace A106564

/-- `eq[A075091(n), A355449(n)]²` -/
def P854652031545301652.Spec : Prop :=
  ∀ n, (P854652031545301652.a n : ℤ) = A106564 (n + 1)

end A106564

/-! ## A106564.P8957127024598186102

`filter[A108321(n), A014578(#)]`
-/

namespace A106564.P8957127024598186102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A106564.P8957127024598186102

namespace A106564

/-- `filter[A108321(n), A014578(#)]` -/
def P8957127024598186102.Spec : Prop :=
  ∀ n, P8957127024598186102.a n = A106564 (n + 1)

end A106564

/-! ## A106564.P13972894781976097807

`filter[A108321(n), A014306(#)]`
-/

namespace A106564.P13972894781976097807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A106564.P13972894781976097807

namespace A106564

/-- `filter[A108321(n), A014306(#)]` -/
def P13972894781976097807.Spec : Prop :=
  ∀ n, P13972894781976097807.a n = A106564 (n + 1)

end A106564

/-! ## A106564.P7076650227813117026

`filter[A108321(n), A098108(#)]`
-/

namespace A106564.P7076650227813117026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098108 (f1 j).toNat = 1) n)

end

end A106564.P7076650227813117026

namespace A106564

/-- `filter[A108321(n), A098108(#)]` -/
def P7076650227813117026.Spec : Prop :=
  ∀ n, P7076650227813117026.a n = A106564 (n + 1)

end A106564

/-! ## A106564.P8442023063675399441

`filter[A108321(n), A098725(#)]`
-/

namespace A106564.P8442023063675399441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A106564.P8442023063675399441

namespace A106564

/-- `filter[A108321(n), A098725(#)]` -/
def P8442023063675399441.Spec : Prop :=
  ∀ n, P8442023063675399441.a n = A106564 (n + 1)

end A106564

/-! ## A106564.P6081826597354041305

`filter[A108321(n), A115971(#)]`
-/

namespace A106564.P6081826597354041305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A106564.P6081826597354041305

namespace A106564

/-- `filter[A108321(n), A115971(#)]` -/
def P6081826597354041305.Spec : Prop :=
  ∀ n, P6081826597354041305.a n = A106564 (n + 1)

end A106564

/-! ## A106564.P8473874355201989041

`filter[A108321(n), A166486(#)]`
-/

namespace A106564.P8473874355201989041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A106564.P8473874355201989041

namespace A106564

/-- `filter[A108321(n), A166486(#)]` -/
def P8473874355201989041.Spec : Prop :=
  ∀ n, P8473874355201989041.a n = A106564 (n + 1)

end A106564

/-! ## A106564.P5988412914624263663

`filter[A108321(n), A168185(#)]`
-/

namespace A106564.P5988412914624263663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A106564.P5988412914624263663

namespace A106564

/-- `filter[A108321(n), A168185(#)]` -/
def P5988412914624263663.Spec : Prop :=
  ∀ n, P5988412914624263663.a n = A106564 (n + 1)

end A106564

/-!
# A106565: a(n) = 5*a(n-1) + 5*a(n-2) with a(0) = 0, a(1) = 5.

The programs for A106565, the canonical program `A106565.P2991234516071609887` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106565 has offset 0).

The definition of A106565 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+5*a(n-2)` (program `A106565.P2991234516071609887`, by `A106565.P2991234516071609887.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106565.P2991234516071609887

`5*a(n-1)+5*a(n-2)` with `a(0)=0, a(1)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106565

/-- `5*a(n-1)+5*a(n-2)` -/
def P2991234516071609887.Spec : Prop :=
  ∀ n, (P2991234516071609887.a n : ℤ) = A106565 n

theorem P2991234516071609887.correct : P2991234516071609887.Spec := by
  intro n
  simp only [A106565]

end A106565

/-! ## A106565.P1844527800215691073

`ogf(5x/(1-5x-5x^2))`
-/

namespace A106565.P1844527800215691073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5] [1, -5, -5] n

end

end A106565.P1844527800215691073

namespace A106565

/-- `ogf(5x/(1-5x-5x^2))` -/
def P1844527800215691073.Spec : Prop :=
  ∀ n, P1844527800215691073.a n = A106565 n

end A106565

/-! ## A106565.P10866043167518241873

`5*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=5`
-/

namespace A106565.P10866043167518241873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n a =>
  5 * (a (n - 1) + a (n - 2))

end

end A106565.P10866043167518241873

namespace A106565

/-- `5*(a(n-1)+a(n-2))` -/
def P10866043167518241873.Spec : Prop :=
  ∀ n, (P10866043167518241873.a n : ℤ) = A106565 n

theorem P10866043167518241873.correct : P10866043167518241873.Spec := by
  intro n
  simp only [A106565, Nat.add_sub_cancel, A106565.P10866043167518241873.a, A106565.P2991234516071609887.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A106565

/-! ## A106565.P4142699266577914575

`5*(a(n-1)-floor(-a(n-2)))` with `a(0)=0, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A106565.P4142699266577914575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  5 * (a (n - 1) - (-a (n - 2)))

end

end A106565.P4142699266577914575

namespace A106565

/-- `5*(a(n-1)-floor(-a(n-2)))` -/
def P4142699266577914575.Spec : Prop :=
  ∀ n, P4142699266577914575.a n = A106565 n

end A106565

/-! ## A106565.P1801425916650368050

`Δ[lcm(5, a(n-2)+a(n-1)+1)]` with `a(0)=0, a(1)=0`
-/

namespace A106565.P1801425916650368050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  Nat.lcm 5 (f1 (n - 2) + f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A106565.P1801425916650368050

namespace A106565

/-- `Δ[lcm(5, a(n-2)+a(n-1)+1)]` -/
def P1801425916650368050.Spec : Prop :=
  ∀ n, P1801425916650368050.a n = A106565 n

end A106565

/-! ## A106565.P12454801540999948155

`5*(1-floor(1-a(n-1)-a(n-2)))` with `a(0)=0, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A106565.P12454801540999948155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  5 * (1 - (1 - a (n - 1) - a (n - 2)))

end

end A106565.P12454801540999948155

namespace A106565

/-- `5*(1-floor(1-a(n-1)-a(n-2)))` -/
def P12454801540999948155.Spec : Prop :=
  ∀ n, P12454801540999948155.a n = A106565 n

end A106565

/-! ## A106565.P17578551692832032370

`5*(2-(4/2-a(n-1)-a(n-2)))` with `a(0)=0, a(1)=5`
-/

namespace A106565.P17578551692832032370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 5] fun n a =>
  5 * (2 - ((4 : ℚ) / 2 - a (n - 1) - a (n - 2)))

end

end A106565.P17578551692832032370

namespace A106565

/-- `5*(2-(4/2-a(n-1)-a(n-2)))` -/
def P17578551692832032370.Spec : Prop :=
  ∀ n, P17578551692832032370.a n = (A106565 n : ℚ)

end A106565

/-! ## A106565.P15737736677846875792

`A057088(n)-a(n-1)` with `a(0)=0`
-/

namespace A106565.P15737736677846875792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A057088 n - a (n - 1)

end

end A106565.P15737736677846875792

namespace A106565

/-- `A057088(n)-a(n-1)` -/
def P15737736677846875792.Spec : Prop :=
  ∀ n, P15737736677846875792.a n = A106565 n

end A106565

/-! ## A106565.P7813501627151110054

`Δ[A189749(n+1)/9]`
-/

namespace A106565.P7813501627151110054
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189749 (n + 1) : ℚ) / 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106565.P7813501627151110054

namespace A106565

/-- `Δ[A189749(n+1)/9]` -/
def P7813501627151110054.Spec : Prop :=
  ∀ n, P7813501627151110054.a n = (A106565 n : ℚ)

end A106565

/-! ## A106565.P14093532537017880396

`A221463(∑[n+5]+6)`
-/

namespace A106565.P14093532537017880396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221463 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A106565.P14093532537017880396

namespace A106565

/-- `A221463(∑[n+5]+6)` -/
def P14093532537017880396.Spec : Prop :=
  ∀ n, P14093532537017880396.a n = A106565 n

end A106565

/-!
# A106566: Triangle T(n,k), 0 <= k <= n, read by rows, given by [0, 1, 1, 1, 1, 1, 1, 1, ... ] DELTA [1, 0, 0, 0, 0, 0, 0, 0, ... ] where DELTA is the operator defined in A084938.

The programs for A106566, the canonical program `A106566.P15038054948988524136` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106566 has offset 0).

The definition of A106566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106566.P16245375147135933162

`abs(A099039(n))`
-/

namespace A106566.P16245375147135933162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099039 n|

end

end A106566.P16245375147135933162

namespace A106566

/-- `abs(A099039(n))` -/
def P16245375147135933162.Spec : Prop :=
  ∀ n, P16245375147135933162.a n = A106566 n

end A106566

/-! ## A106566.P14879423359769753384

`A059365(abs(1-n)+1)`
-/

namespace A106566.P14879423359769753384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (|1 - (n : ℤ)| + 1).toNat

end

end A106566.P14879423359769753384

namespace A106566

/-- `A059365(abs(1-n)+1)` -/
def P14879423359769753384.Spec : Prop :=
  ∀ n, P14879423359769753384.a n = A106566 n

end A106566

/-! ## A106566.P6757738647113147606

`A059365(n)+A000007(n)`
-/

namespace A106566.P6757738647113147606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 n + A000007 n

end

end A106566.P6757738647113147606

namespace A106566

/-- `A059365(n)+A000007(n)` -/
def P6757738647113147606.Spec : Prop :=
  ∀ n, P6757738647113147606.a n = A106566 n

end A106566

/-! ## A106566.P16441664099107197686

`A097807(n)*A099039(n)`
-/

namespace A106566.P16441664099107197686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A099039 n

end

end A106566.P16441664099107197686

namespace A106566

/-- `A097807(n)*A099039(n)` -/
def P16441664099107197686.Spec : Prop :=
  ∀ n, P16441664099107197686.a n = A106566 n

end A106566

/-! ## A106566.P4774461220545202728

`gcd(A000038(n), A099039(n))`
-/

namespace A106566.P4774461220545202728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A099039 n)

end

end A106566.P4774461220545202728

namespace A106566

/-- `gcd(A000038(n), A099039(n))` -/
def P4774461220545202728.Spec : Prop :=
  ∀ n, (P4774461220545202728.a n : ℤ) = A106566 n

end A106566

/-! ## A106566.P186583954573544091

`lcm(A020985(n), A099039(n))`
-/

namespace A106566.P186583954573544091
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A099039 n)

end

end A106566.P186583954573544091

namespace A106566

/-- `lcm(A020985(n), A099039(n))` -/
def P186583954573544091.Spec : Prop :=
  ∀ n, (P186583954573544091.a n : ℤ) = A106566 n

end A106566

/-! ## A106566.P10460440806867277445

`A059365(n)+A036987(2*n)`
-/

namespace A106566.P10460440806867277445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 n + A036987 (2 * n)

end

end A106566.P10460440806867277445

namespace A106566

/-- `A059365(n)+A036987(2*n)` -/
def P10460440806867277445.Spec : Prop :=
  ∀ n, P10460440806867277445.a n = A106566 n

end A106566

/-! ## A106566.P15038054948988524136

`2*A100100(n)-A092392(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A106566

/-- `2*A100100(n)-A092392(n)` -/
def P15038054948988524136.Spec : Prop :=
  ∀ n, P15038054948988524136.a n = A106566 n

theorem P15038054948988524136.correct : P15038054948988524136.Spec := by
  intro n
  simp only [A106566]

end A106566

/-! ## A106566.P14096569055411982066

`A059365(n)+char[A059365(∑[n])]`
-/

namespace A106566.P14096569055411982066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (∑ j ∈ Finset.range (n + 1), f2 j)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A106566.P14096569055411982066

namespace A106566

/-- `A059365(n)+char[A059365(∑[n])]` -/
def P14096569055411982066.Spec : Prop :=
  ∀ n, P14096569055411982066.a n = A106566 n

end A106566

/-! ## A106566.P7630211719045624593

`or(A036987(A005843(n)), A059365(n))`
-/

namespace A106566.P7630211719045624593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 (A005843 n).toNat) (A059365 n)

end

end A106566.P7630211719045624593

namespace A106566

/-- `or(A036987(A005843(n)), A059365(n))` -/
def P7630211719045624593.Spec : Prop :=
  ∀ n, P7630211719045624593.a n = A106566 n

end A106566

/-! ## A106566.P17654624213084200042

`A099039(n)/A097807(A014132(n+1))`
-/

namespace A106566.P17654624213084200042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099039 n : ℚ) / (A097807 (A014132 (n + 1)).toNat : ℚ)

end

end A106566.P17654624213084200042

namespace A106566

/-- `A099039(n)/A097807(A014132(n+1))` -/
def P17654624213084200042.Spec : Prop :=
  ∀ n, P17654624213084200042.a n = (A106566 n : ℚ)

end A106566

/-! ## A106566.P8741604374343942102

`A059365(n)-A154955(n+2)`
-/

namespace A106566.P8741604374343942102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 n - A154955 (n + 2)

end

end A106566.P8741604374343942102

namespace A106566

/-- `A059365(n)-A154955(n+2)` -/
def P8741604374343942102.Spec : Prop :=
  ∀ n, P8741604374343942102.a n = A106566 n

end A106566

/-! ## A106566.P10951538276098697270

`A130020(A061579(n))`
-/

namespace A106566.P10951538276098697270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130020 (A061579 n).toNat

end

end A106566.P10951538276098697270

namespace A106566

/-- `A130020(A061579(n))` -/
def P10951538276098697270.Spec : Prop :=
  ∀ n, P10951538276098697270.a n = A106566 n

end A106566

/-! ## A106566.P12124734468462132775

`A130020(A038722(n+1)-1)`
-/

namespace A106566.P12124734468462132775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130020 (A038722 (n + 1) - 1).toNat

end

end A106566.P12124734468462132775

namespace A106566

/-- `A130020(A038722(n+1)-1)` -/
def P12124734468462132775.Spec : Prop :=
  ∀ n, P12124734468462132775.a n = A106566 n

end A106566

/-! ## A106566.P9310418607901136058

`A130020(A038722(n+2))`
-/

namespace A106566.P9310418607901136058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130020 (A038722 (n + 2)).toNat

end

end A106566.P9310418607901136058

namespace A106566

/-- `A130020(A038722(n+2))` -/
def P9310418607901136058.Spec : Prop :=
  ∀ n, P9310418607901136058.a n = A106566 n

end A106566

/-! ## A106566.P11056423784615357433

`2*A100100(n)-A100100(A014132(n+1))`
-/

namespace A106566.P11056423784615357433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100100 n - A100100 (A014132 (n + 1)).toNat

end

end A106566.P11056423784615357433

namespace A106566

/-- `2*A100100(n)-A100100(A014132(n+1))` -/
def P11056423784615357433.Spec : Prop :=
  ∀ n, P11056423784615357433.a n = A106566 n

end A106566

/-! ## A106566.P954298339120682509

`A110510(n)/A130321(n)`
-/

namespace A106566.P954298339120682509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110510 n : ℚ) / (A130321 n : ℚ)

end

end A106566.P954298339120682509

namespace A106566

/-- `A110510(n)/A130321(n)` -/
def P954298339120682509.Spec : Prop :=
  ∀ n, P954298339120682509.a n = (A106566 n : ℚ)

end A106566

/-! ## A106566.P1896059010259954129

`A110510(n)/A057728(n+1)`
-/

namespace A106566.P1896059010259954129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110510 n : ℚ) / (A057728 (n + 1) : ℚ)

end

end A106566.P1896059010259954129

namespace A106566

/-- `A110510(n)/A057728(n+1)` -/
def P1896059010259954129.Spec : Prop :=
  ∀ n, P1896059010259954129.a n = (A106566 n : ℚ)

end A106566

/-! ## A106566.P14441036995392823438

`A154955(2*n+1)+A059365(n)`
-/

namespace A106566.P14441036995392823438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (2 * n + 1) + A059365 n

end

end A106566.P14441036995392823438

namespace A106566

/-- `A154955(2*n+1)+A059365(n)` -/
def P14441036995392823438.Spec : Prop :=
  ∀ n, P14441036995392823438.a n = A106566 n

end A106566

/-! ## A106566.P14881795883912535441

`A110518(n)/A140303(n)`
-/

namespace A106566.P14881795883912535441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110518 n : ℚ) / (A140303 n : ℚ)

end

end A106566.P14881795883912535441

namespace A106566

/-- `A110518(n)/A140303(n)` -/
def P14881795883912535441.Spec : Prop :=
  ∀ n, P14881795883912535441.a n = (A106566 n : ℚ)

end A106566

/-!
# A106567: a(n) = 5*a(n-1) + 4*a(n-2), with a(0) = 4, a(1) = 4.

The programs for A106567, the canonical program `A106567.P1381537035312822954` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106567 has offset 0).

The definition of A106567 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+4*a(n-2)` (program `A106567.P1381537035312822954`, by `A106567.P1381537035312822954.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106567.P1381537035312822954

`5*a(n-1)+4*a(n-2)` with `a(0)=0, a(1)=4`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106567

/-- `5*a(n-1)+4*a(n-2)` -/
def P1381537035312822954.Spec : Prop :=
  ∀ n, (P1381537035312822954.a n : ℤ) = A106567 n

theorem P1381537035312822954.correct : P1381537035312822954.Spec := by
  intro n
  simp only [A106567]

end A106567

/-! ## A106567.P12620005061561592525

`4*A015537(n)`
-/

namespace A106567.P12620005061561592525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A015537 n

end

end A106567.P12620005061561592525

namespace A106567

/-- `4*A015537(n)` -/
def P12620005061561592525.Spec : Prop :=
  ∀ n, P12620005061561592525.a n = A106567 n

end A106567

/-! ## A106567.P8648447242041681280

`ogf(4x/(1-5x-4x^2))`
-/

namespace A106567.P8648447242041681280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -5, -4] n

end

end A106567.P8648447242041681280

namespace A106567

/-- `ogf(4x/(1-5x-4x^2))` -/
def P8648447242041681280.Spec : Prop :=
  ∀ n, P8648447242041681280.a n = A106567 n

end A106567

/-! ## A106567.P8885054024731137110

`Δ[A123270(n)/2]`
-/

namespace A106567.P8885054024731137110
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123270 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106567.P8885054024731137110

namespace A106567

/-- `Δ[A123270(n)/2]` -/
def P8885054024731137110.Spec : Prop :=
  ∀ n, P8885054024731137110.a n = (A106567 n : ℚ)

end A106567

/-! ## A106567.P10748246183491754698

`A122690(n)-a(n-1)` with `a(0)=0`
-/

namespace A106567.P10748246183491754698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A122690 n - a (n - 1)

end

end A106567.P10748246183491754698

namespace A106567

/-- `A122690(n)-a(n-1)` -/
def P10748246183491754698.Spec : Prop :=
  ∀ n, P10748246183491754698.a n = A106567 n

end A106567

/-! ## A106567.P276454576156028489

`A015537(n+1)-A123270(n)`
-/

namespace A106567.P276454576156028489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015537 (n + 1) - A123270 n

end

end A106567.P276454576156028489

namespace A106567

/-- `A015537(n+1)-A123270(n)` -/
def P276454576156028489.Spec : Prop :=
  ∀ n, P276454576156028489.a n = A106567 n

end A106567

/-! ## A106567.P13307332719688988788

`lcm(A036453(n+1)², A015537(n))`
-/

namespace A106567.P13307332719688988788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036453 (n + 1) ^ 2) (A015537 n)

end

end A106567.P13307332719688988788

namespace A106567

/-- `lcm(A036453(n+1)², A015537(n))` -/
def P13307332719688988788.Spec : Prop :=
  ∀ n, (P13307332719688988788.a n : ℤ) = A106567 n

end A106567

/-! ## A106567.P2539242806207150360

`A015537(n+2)%A015537(n+1)`
-/

namespace A106567.P2539242806207150360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015537 (n + 2)) (A015537 (n + 1))

end

end A106567.P2539242806207150360

namespace A106567

/-- `A015537(n+2)%A015537(n+1)` -/
def P2539242806207150360.Spec : Prop :=
  ∀ n, P2539242806207150360.a n = A106567 n

end A106567

/-!
# A106568: Expansion of 4*x/(1 - 4*x - 4*x^2).

The programs for A106568, the canonical program `A106568.P15369548743874150749` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106568 has offset 0).

The definition of A106568 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(4x/(1-4x-4x^2))` (program `A106568.P15369548743874150749`, by `A106568.P15369548743874150749.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106568.P15369548743874150749

`ogf(4x/(1-4x-4x^2))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106568

/-- `ogf(4x/(1-4x-4x^2))` -/
def P15369548743874150749.Spec : Prop :=
  ∀ n, P15369548743874150749.a n = A106568 n

theorem P15369548743874150749.correct : P15369548743874150749.Spec := by
  intro n
  simp only [A106568]

end A106568

/-! ## A106568.P14761270607569430899

`4*a(n-1)+4*a(n-2)` with `a(0)=0, a(1)=4`
-/

namespace A106568.P14761270607569430899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  4 * a (n - 1) + 4 * a (n - 2)

end

end A106568.P14761270607569430899

namespace A106568

/-- `4*a(n-1)+4*a(n-2)` -/
def P14761270607569430899.Spec : Prop :=
  ∀ n, (P14761270607569430899.a n : ℤ) = A106568 n

end A106568

/-! ## A106568.P11215673677296421664

`A094013(n+1)`
-/

namespace A106568.P11215673677296421664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094013 (n + 1)

end

end A106568.P11215673677296421664

namespace A106568

/-- `A094013(n+1)` -/
def P11215673677296421664.Spec : Prop :=
  ∀ n, P11215673677296421664.a n = A106568 n

end A106568

/-! ## A106568.P5454262667994255650

`2^(n+1)*A000129(n)`
-/

namespace A106568.P5454262667994255650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A000129 n

end

end A106568.P5454262667994255650

namespace A106568

/-- `2^(n+1)*A000129(n)` -/
def P5454262667994255650.Spec : Prop :=
  ∀ n, P5454262667994255650.a n = A106568 n

end A106568

/-! ## A106568.P2396365521344338352

`4*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=4`
-/

namespace A106568.P2396365521344338352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  4 * (a (n - 1) + a (n - 2))

end

end A106568.P2396365521344338352

namespace A106568

/-- `4*(a(n-1)+a(n-2))` -/
def P2396365521344338352.Spec : Prop :=
  ∀ n, (P2396365521344338352.a n : ℤ) = A106568 n

end A106568

/-! ## A106568.P18171540444406108235

`(a(n-1)+a(n-2))/(1/2)²` with `a(0)=0, a(1)=4`
-/

namespace A106568.P18171540444406108235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 4] fun n a =>
  (a (n - 1) + a (n - 2)) / ((1 : ℚ) / 2) ^ 2

end

end A106568.P18171540444406108235

namespace A106568

/-- `(a(n-1)+a(n-2))/(1/2)²` -/
def P18171540444406108235.Spec : Prop :=
  ∀ n, P18171540444406108235.a n = (A106568 n : ℚ)

end A106568

/-! ## A106568.P6618558510738446153

`4-4*(1-a(n-1)-a(n-2))` with `a(0)=0, a(1)=4`
-/

namespace A106568.P6618558510738446153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n a =>
  4 - 4 * (1 - a (n - 1) - a (n - 2))

end

end A106568.P6618558510738446153

namespace A106568

/-- `4-4*(1-a(n-1)-a(n-2))` -/
def P6618558510738446153.Spec : Prop :=
  ∀ n, P6618558510738446153.a n = A106568 n

end A106568

/-! ## A106568.P9744351345679508156

`2^n*Δ[A001333(n)]`
-/

namespace A106568.P9744351345679508156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A106568.P9744351345679508156

namespace A106568

/-- `2^n*Δ[A001333(n)]` -/
def P9744351345679508156.Spec : Prop :=
  ∀ n, P9744351345679508156.a n = A106568 n

end A106568

/-! ## A106568.P3763520453499550650

`2^n*A163271(n+1)`
-/

namespace A106568.P3763520453499550650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A163271 (n + 1)

end

end A106568.P3763520453499550650

namespace A106568

/-- `2^n*A163271(n+1)` -/
def P3763520453499550650.Spec : Prop :=
  ∀ n, P3763520453499550650.a n = A106568 n

end A106568

/-! ## A106568.P10673067948626556780

`A057087(n)-A094013(n)`
-/

namespace A106568.P10673067948626556780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057087 n - A094013 n

end

end A106568.P10673067948626556780

namespace A106568

/-- `A057087(n)-A094013(n)` -/
def P10673067948626556780.Spec : Prop :=
  ∀ n, P10673067948626556780.a n = A106568 n

end A106568

/-! ## A106568.P10037499488965679848

`A056450(n)*A089499(n)`
-/

namespace A106568.P10037499488965679848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056450 n * A089499 n

end

end A106568.P10037499488965679848

namespace A106568

/-- `A056450(n)*A089499(n)` -/
def P10037499488965679848.Spec : Prop :=
  ∀ n, P10037499488965679848.a n = A106568 n

end A106568

/-! ## A106568.P5037063424842832852

`A000129(n)*A198633(n)`
-/

namespace A106568.P5037063424842832852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A198633 n

end

end A106568.P5037063424842832852

namespace A106568

/-- `A000129(n)*A198633(n)` -/
def P5037063424842832852.Spec : Prop :=
  ∀ n, P5037063424842832852.a n = A106568 n

end A106568

/-! ## A106568.P6565140212966962385

`A052542(n)*A155559(n)`
-/

namespace A106568.P6565140212966962385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n * A155559 n

end

end A106568.P6565140212966962385

namespace A106568

/-- `A052542(n)*A155559(n)` -/
def P6565140212966962385.Spec : Prop :=
  ∀ n, P6565140212966962385.a n = A106568 n

end A106568

/-! ## A106568.P4164561543342021213

`A131577(n)*A371596(n)`
-/

namespace A106568.P4164561543342021213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n * A371596 n

end

end A106568.P4164561543342021213

namespace A106568

/-- `A131577(n)*A371596(n)` -/
def P4164561543342021213.Spec : Prop :=
  ∀ n, P4164561543342021213.a n = A106568 n

end A106568

/-! ## A106568.P9447258196367085617

`Δ[A084137(n)]-A084137(n)`
-/

namespace A106568.P9447258196367085617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A084137 n

end

end A106568.P9447258196367085617

namespace A106568

/-- `Δ[A084137(n)]-A084137(n)` -/
def P9447258196367085617.Spec : Prop :=
  ∀ n, P9447258196367085617.a n = A106568 n

end A106568

/-! ## A106568.P16166418228023566415

`Δ[A001333(n)]*A000079(n)`
-/

namespace A106568.P16166418228023566415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A106568.P16166418228023566415

namespace A106568

/-- `Δ[A001333(n)]*A000079(n)` -/
def P16166418228023566415.Spec : Prop :=
  ∀ n, P16166418228023566415.a n = A106568 n

end A106568

/-! ## A106568.P13363355055972560628

`Δ[A002203(n)]*A131577(n)`
-/

namespace A106568.P13363355055972560628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A131577 n

end

end A106568.P13363355055972560628

namespace A106568

/-- `Δ[A002203(n)]*A131577(n)` -/
def P13363355055972560628.Spec : Prop :=
  ∀ n, P13363355055972560628.a n = A106568 n

end A106568

/-! ## A106568.P4874456724461505266

`Δ[A293004(n)]*A000079(n)`
-/

namespace A106568.P4874456724461505266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A106568.P4874456724461505266

namespace A106568

/-- `Δ[A293004(n)]*A000079(n)` -/
def P4874456724461505266.Spec : Prop :=
  ∀ n, P4874456724461505266.a n = A106568 n

end A106568

/-! ## A106568.P3221983623809861139

`A000129(n)*A151821(n+1)`
-/

namespace A106568.P3221983623809861139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A151821 (n + 1)

end

end A106568.P3221983623809861139

namespace A106568

/-- `A000129(n)*A151821(n+1)` -/
def P3221983623809861139.Spec : Prop :=
  ∀ n, P3221983623809861139.a n = A106568 n

end A106568

/-! ## A106568.P4404408607761090214

`A000129(n)*A155559(n+1)`
-/

namespace A106568.P4404408607761090214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A155559 (n + 1)

end

end A106568.P4404408607761090214

namespace A106568

/-- `A000129(n)*A155559(n+1)` -/
def P4404408607761090214.Spec : Prop :=
  ∀ n, P4404408607761090214.a n = A106568 n

end A106568

/-!
# A106569: a(n) = 5*a(n-1) + 3*a(n-2), where a(0) = 0, a(1) = 3.

The programs for A106569, the canonical program `A106569.P1711733324562496766` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106569 has offset 0).

The definition of A106569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-1)+3*a(n-2)` (program `A106569.P1711733324562496766`, by `A106569.P1711733324562496766.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106569.P1711733324562496766

`5*a(n-1)+3*a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106569

/-- `5*a(n-1)+3*a(n-2)` -/
def P1711733324562496766.Spec : Prop :=
  ∀ n, (P1711733324562496766.a n : ℤ) = A106569 n

theorem P1711733324562496766.correct : P1711733324562496766.Spec := by
  intro n
  simp only [A106569]

end A106569

/-! ## A106569.P10432901950113081001

`3*A015536(n)`
-/

namespace A106569.P10432901950113081001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A015536 n

end

end A106569.P10432901950113081001

namespace A106569

/-- `3*A015536(n)` -/
def P10432901950113081001.Spec : Prop :=
  ∀ n, P10432901950113081001.a n = A106569 n

end A106569

/-! ## A106569.P17976233255393737787

`ogf(3x/(1-5x-3x^2))`
-/

namespace A106569.P17976233255393737787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -5, -3] n

end

end A106569.P17976233255393737787

namespace A106569

/-- `ogf(3x/(1-5x-3x^2))` -/
def P17976233255393737787.Spec : Prop :=
  ∀ n, P17976233255393737787.a n = A106569 n

end A106569

/-! ## A106569.P3719928953520185115

`A180035(n)-A180036(n)`
-/

namespace A106569.P3719928953520185115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180035 n - A180036 n

end

end A106569.P3719928953520185115

namespace A106569

/-- `A180035(n)-A180036(n)` -/
def P3719928953520185115.Spec : Prop :=
  ∀ n, P3719928953520185115.a n = A106569 n

end A106569

/-! ## A106569.P2496456345272271841

`lcm(p?[A047789(n)], A015536(n))`
-/

namespace A106569.P2496456345272271841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047789 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A015536 n)

end

end A106569.P2496456345272271841

namespace A106569

/-- `lcm(p?[A047789(n)], A015536(n))` -/
def P2496456345272271841.Spec : Prop :=
  ∀ n, (P2496456345272271841.a n : ℤ) = A106569 n

end A106569

/-! ## A106569.P3788945195842358637

`A111365(n+1)-A015536(n+1)`
-/

namespace A106569.P3788945195842358637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111365 (n + 1) - A015536 (n + 1)

end

end A106569.P3788945195842358637

namespace A106569

/-- `A111365(n+1)-A015536(n+1)` -/
def P3788945195842358637.Spec : Prop :=
  ∀ n, P3788945195842358637.a n = A106569 n

end A106569

/-! ## A106569.P11459955856415492995

`A015536(n)+A180035(n)-Δ[A015536(n)]`
-/

namespace A106569.P11459955856415492995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015536 n + (A180035 n - (f1 (n + 1) - f1 n))

end

end A106569.P11459955856415492995

namespace A106569

/-- `A015536(n)+A180035(n)-Δ[A015536(n)]` -/
def P11459955856415492995.Spec : Prop :=
  ∀ n, P11459955856415492995.a n = A106569 n

end A106569

/-! ## A106569.P16450460612146042393

`A015536(n+1)+A015536(n)-A180036(n)`
-/

namespace A106569.P16450460612146042393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015536 (n + 1) + A015536 n - A180036 n

end

end A106569.P16450460612146042393

namespace A106569

/-- `A015536(n+1)+A015536(n)-A180036(n)` -/
def P16450460612146042393.Spec : Prop :=
  ∀ n, P16450460612146042393.a n = A106569 n

end A106569

/-! ## A106569.P5032470238119139925

`(a(n-1)-A180036(n))*A008683(A151800(n))` with `a(0)=0`
-/

namespace A106569.P5032470238119139925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (a (n - 1) - A180036 n) * A008683 (A151800 n).toNat

end

end A106569.P5032470238119139925

namespace A106569

/-- `(a(n-1)-A180036(n))*A008683(A151800(n))` -/
def P5032470238119139925.Spec : Prop :=
  ∀ n, P5032470238119139925.a n = A106569 n

end A106569

/-!
# A106570: a(n) = 4*a(n-1) + 3*a(n-2), with a(0)=0, a(1)=3.

The programs for A106570, the canonical program `A106570.P11024944614505999392` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106570 has offset 0).

The definition of A106570 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+3*a(n-2)` (program `A106570.P11024944614505999392`, by `A106570.P11024944614505999392.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106570.P11024944614505999392

`4*a(n-1)+3*a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106570

/-- `4*a(n-1)+3*a(n-2)` -/
def P11024944614505999392.Spec : Prop :=
  ∀ n, (P11024944614505999392.a n : ℤ) = A106570 n

theorem P11024944614505999392.correct : P11024944614505999392.Spec := by
  intro n
  simp only [A106570]

end A106570

/-! ## A106570.P16593999801318499653

`3*A015530(n)`
-/

namespace A106570.P16593999801318499653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A015530 n

end

end A106570.P16593999801318499653

namespace A106570

/-- `3*A015530(n)` -/
def P16593999801318499653.Spec : Prop :=
  ∀ n, P16593999801318499653.a n = A106570 n

end A106570

/-! ## A106570.P11526775969640692353

`ogf(3x/(1-4x-3x^2))`
-/

namespace A106570.P11526775969640692353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -4, -3] n

end

end A106570.P11526775969640692353

namespace A106570

/-- `ogf(3x/(1-4x-3x^2))` -/
def P11526775969640692353.Spec : Prop :=
  ∀ n, P11526775969640692353.a n = A106570 n

end A106570

/-! ## A106570.P1863731738966546027

`4*a(n-1)-(a(n-2)-4*a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A106570.P1863731738966546027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  4 * a (n - 1) - (a (n - 2) - 4 * a (n - 2))

end

end A106570.P1863731738966546027

namespace A106570

/-- `4*a(n-1)-(a(n-2)-4*a(n-2))` -/
def P1863731738966546027.Spec : Prop :=
  ∀ n, P1863731738966546027.a n = A106570 n

end A106570

/-! ## A106570.P12284447234017767901

`a(n-2)+(a(n-1)+a(n-1)+a(n-2))/(1-1/2)` with `a(0)=0, a(1)=3`
-/

namespace A106570.P12284447234017767901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 2) + (a (n - 1) + (a (n - 1) + a (n - 2))) / (1 - (1 : ℚ) / 2)

end

end A106570.P12284447234017767901

namespace A106570

/-- `a(n-2)+(a(n-1)+a(n-1)+a(n-2))/(1-1/2)` -/
def P12284447234017767901.Spec : Prop :=
  ∀ n, P12284447234017767901.a n = (A106570 n : ℚ)

end A106570

/-! ## A106570.P13979959524483582532

`lcm(A015530(n), A040007(n))`
-/

namespace A106570.P13979959524483582532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015530 n) (A040007 n)

end

end A106570.P13979959524483582532

namespace A106570

/-- `lcm(A015530(n), A040007(n))` -/
def P13979959524483582532.Spec : Prop :=
  ∀ n, (P13979959524483582532.a n : ℤ) = A106570 n

end A106570

/-! ## A106570.P12087731906326219401

`Δ[A086901(n+1)/2]`
-/

namespace A106570.P12087731906326219401
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086901 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106570.P12087731906326219401

namespace A106570

/-- `Δ[A086901(n+1)/2]` -/
def P12087731906326219401.Spec : Prop :=
  ∀ n, P12087731906326219401.a n = (A106570 n : ℚ)

end A106570

/-! ## A106570.P9373400311516031434

`A126473(n)-A108851(n)`
-/

namespace A106570.P9373400311516031434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126473 n - A108851 n

end

end A106570.P9373400311516031434

namespace A106570

/-- `A126473(n)-A108851(n)` -/
def P9373400311516031434.Spec : Prop :=
  ∀ n, P9373400311516031434.a n = A106570 n

end A106570

/-! ## A106570.P1122719676828716089

`A126473(n)-A080042(n)/2`
-/

namespace A106570.P1122719676828716089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126473 n : ℚ) - (A080042 n : ℚ) / 2

end

end A106570.P1122719676828716089

namespace A106570

/-- `A126473(n)-A080042(n)/2` -/
def P1122719676828716089.Spec : Prop :=
  ∀ n, P1122719676828716089.a n = (A106570 n : ℚ)

end A106570

/-! ## A106570.P16021548820559270163

`Δ[A122558(n)/2]-A122558(n)`
-/

namespace A106570.P16021548820559270163
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122558 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A122558 n : ℚ)

end

end A106570.P16021548820559270163

namespace A106570

/-- `Δ[A122558(n)/2]-A122558(n)` -/
def P16021548820559270163.Spec : Prop :=
  ∀ n, P16021548820559270163.a n = (A106570 n : ℚ)

end A106570

/-! ## A106570.P16837364782560399100

`A015530(n+1)-A086901(n+1)`
-/

namespace A106570.P16837364782560399100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015530 (n + 1) - A086901 (n + 1)

end

end A106570.P16837364782560399100

namespace A106570

/-- `A015530(n+1)-A086901(n+1)` -/
def P16837364782560399100.Spec : Prop :=
  ∀ n, P16837364782560399100.a n = A106570 n

end A106570

/-! ## A106570.P17904895994556624365

`2*A086901(n+2)-A108851(n+1)`
-/

namespace A106570.P17904895994556624365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086901 (n + 2) - A108851 (n + 1)

end

end A106570.P17904895994556624365

namespace A106570

/-- `2*A086901(n+2)-A108851(n+1)` -/
def P17904895994556624365.Spec : Prop :=
  ∀ n, P17904895994556624365.a n = A106570 n

end A106570

/-! ## A106570.P12680549525346386628

`A015530(n+1)+A015530(n)-A108851(n)`
-/

namespace A106570.P12680549525346386628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015530 (n + 1) + A015530 n - A108851 n

end

end A106570.P12680549525346386628

namespace A106570

/-- `A015530(n+1)+A015530(n)-A108851(n)` -/
def P12680549525346386628.Spec : Prop :=
  ∀ n, P12680549525346386628.a n = A106570 n

end A106570

/-! ## A106570.P15724659800786896123

`A108851(n+1)-(A086901(n+1)+A086901(n+2))`
-/

namespace A106570.P15724659800786896123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108851 (n + 1) - (A086901 (n + 1) + A086901 (n + 2))

end

end A106570.P15724659800786896123

namespace A106570

/-- `A108851(n+1)-(A086901(n+1)+A086901(n+2))` -/
def P15724659800786896123.Spec : Prop :=
  ∀ n, P15724659800786896123.a n = A106570 n

end A106570

/-! ## A106570.P7988908844239707265

`A080042(n+1)-A015530(n+2)`
-/

namespace A106570.P7988908844239707265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080042 (n + 1) - A015530 (n + 2)

end

end A106570.P7988908844239707265

namespace A106570

/-- `A080042(n+1)-A015530(n+2)` -/
def P7988908844239707265.Spec : Prop :=
  ∀ n, P7988908844239707265.a n = A106570 n

end A106570

/-!
# A106571: Indices n of perfect squares n^2 which are not the difference of two primes.

The programs for A106571, the canonical program `A106571.P2434766786777673595` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106571 has offset 1).

The definition of A106571 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106564, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A106571.P2434766786777673595

`sqrt(A106564(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A106571

/-- `sqrt(A106564(n+1))` -/
def P2434766786777673595.Spec : Prop :=
  ∀ n, P2434766786777673595.a n = (A106571 (n + 1) : ℝ)

end A106571

/-! ## A106571.P8398882093368673817

`eq[1, A355450(n+1)]+1`
-/

namespace A106571.P8398882093368673817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355450 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A106571.P8398882093368673817

namespace A106571

/-- `eq[1, A355450(n+1)]+1` -/
def P8398882093368673817.Spec : Prop :=
  ∀ n, (P8398882093368673817.a n : ℤ) = A106571 (n + 1)

end A106571

/-! ## A106571.P16063825269857451152

`A106564(n+1)^(1/A000005(A020483(n)))`
-/

namespace A106571.P16063825269857451152
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A106564 (n + 1) : ℝ) ^ (1 / (A000005 (A020483 n).toNat : ℚ) : ℝ)

end

end A106571.P16063825269857451152

namespace A106571

/-- `A106564(n+1)^(1/A000005(A020483(n)))` -/
def P16063825269857451152.Spec : Prop :=
  ∀ n, P16063825269857451152.a n = (A106571 (n + 1) : ℝ)

end A106571

/-! ## A106571.P14423631087814924327

`filter[A020735(n+1), A355450(#)]`
-/

namespace A106571.P14423631087814924327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A106571.P14423631087814924327

namespace A106571

/-- `filter[A020735(n+1), A355450(#)]` -/
def P14423631087814924327.Spec : Prop :=
  ∀ n, P14423631087814924327.a n = A106571 (n + 1)

end A106571

/-! ## A106571.P2703081059202248910

`filter[A062545(n+1), A355450(#)]`
-/

namespace A106571.P2703081059202248910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A106571.P2703081059202248910

namespace A106571

/-- `filter[A062545(n+1), A355450(#)]` -/
def P2703081059202248910.Spec : Prop :=
  ∀ n, P2703081059202248910.a n = A106571 (n + 1)

end A106571

/-! ## A106571.P7977150511531137271

`filter[A144396(n+1), A355450(#)]`
-/

namespace A106571.P7977150511531137271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A106571.P7977150511531137271

namespace A106571

/-- `filter[A144396(n+1), A355450(#)]` -/
def P7977150511531137271.Spec : Prop :=
  ∀ n, P7977150511531137271.a n = A106571 (n + 1)

end A106571

/-! ## A106571.P13188606809054112817

`filter[A223134(n), A355450(#)]`
-/

namespace A106571.P13188606809054112817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A106571.P13188606809054112817

namespace A106571

/-- `filter[A223134(n), A355450(#)]` -/
def P13188606809054112817.Spec : Prop :=
  ∀ n, P13188606809054112817.a n = A106571 (n + 1)

end A106571

/-! ## A106571.P8015607066755149314

`filter[A267872(n), A355450(#)]`
-/

namespace A106571.P8015607066755149314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A106571.P8015607066755149314

namespace A106571

/-- `filter[A267872(n), A355450(#)]` -/
def P8015607066755149314.Spec : Prop :=
  ∀ n, P8015607066755149314.a n = A106571 (n + 1)

end A106571

/-! ## A106571.P16912838884133288123

`filter[A004273(n+1), A355450(#)]`
-/

namespace A106571.P16912838884133288123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A106571.P16912838884133288123

namespace A106571

/-- `filter[A004273(n+1), A355450(#)]` -/
def P16912838884133288123.Spec : Prop :=
  ∀ n, P16912838884133288123.a n = A106571 (n + 1)

end A106571

/-! ## A106571.P2813373702875286147

`filter[A130773(n+1), A355450(#)]`
-/

namespace A106571.P2813373702875286147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A106571.P2813373702875286147

namespace A106571

/-- `filter[A130773(n+1), A355450(#)]` -/
def P2813373702875286147.Spec : Prop :=
  ∀ n, P2813373702875286147.a n = A106571 (n + 1)

end A106571

/-! ## A106571.P4661414533063473496

`filter[A140139(n+1), A355450(#)]`
-/

namespace A106571.P4661414533063473496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A106571.P4661414533063473496

namespace A106571

/-- `filter[A140139(n+1), A355450(#)]` -/
def P4661414533063473496.Spec : Prop :=
  ∀ n, P4661414533063473496.a n = A106571 (n + 1)

end A106571

/-! ## A106571.P14521354594445208383

`filter[A004280(n+1), A355450(#)]`
-/

namespace A106571.P14521354594445208383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A106571.P14521354594445208383

namespace A106571

/-- `filter[A004280(n+1), A355450(#)]` -/
def P14521354594445208383.Spec : Prop :=
  ∀ n, P14521354594445208383.a n = A106571 (n + 1)

end A106571

/-! ## A106571.P17559835896809063246

`filter[A060747(n+1), A355450(#)]`
-/

namespace A106571.P17559835896809063246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A106571.P17559835896809063246

namespace A106571

/-- `filter[A060747(n+1), A355450(#)]` -/
def P17559835896809063246.Spec : Prop :=
  ∀ n, P17559835896809063246.a n = A106571 (n + 1)

end A106571

/-! ## A106571.P15346877942605381462

`filter[A163985(n+1), A355450(#)]`
-/

namespace A106571.P15346877942605381462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A106571.P15346877942605381462

namespace A106571

/-- `filter[A163985(n+1), A355450(#)]` -/
def P15346877942605381462.Spec : Prop :=
  ∀ n, P15346877942605381462.a n = A106571 (n + 1)

end A106571

/-! ## A106571.P8863486365002845354

`filter[A004281(n), A355450(#)]`
-/

namespace A106571.P8863486365002845354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A106571.P8863486365002845354

namespace A106571

/-- `filter[A004281(n), A355450(#)]` -/
def P8863486365002845354.Spec : Prop :=
  ∀ n, P8863486365002845354.a n = A106571 (n + 1)

end A106571

/-! ## A106571.P5682348511713829936

`filter[A004274(n+1), A355450(#)]`
-/

namespace A106571.P5682348511713829936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A106571.P5682348511713829936

namespace A106571

/-- `filter[A004274(n+1), A355450(#)]` -/
def P5682348511713829936.Spec : Prop :=
  ∀ n, P5682348511713829936.a n = A106571 (n + 1)

end A106571

/-! ## A106571.P8255375099409409502

`filter[A004276(n+1), A355450(#)]`
-/

namespace A106571.P8255375099409409502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A106571.P8255375099409409502

namespace A106571

/-- `filter[A004276(n+1), A355450(#)]` -/
def P8255375099409409502.Spec : Prop :=
  ∀ n, P8255375099409409502.a n = A106571 (n + 1)

end A106571

/-! ## A106571.P9886977152642433800

`filter[A088948(n+1), A355450(#)]`
-/

namespace A106571.P9886977152642433800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A106571.P9886977152642433800

namespace A106571

/-- `filter[A088948(n+1), A355450(#)]` -/
def P9886977152642433800.Spec : Prop :=
  ∀ n, P9886977152642433800.a n = A106571 (n + 1)

end A106571

/-! ## A106571.P14779939773729841104

`filter[A053460(n+1), A355450(#)]`
-/

namespace A106571.P14779939773729841104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053460 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A106571.P14779939773729841104

namespace A106571

/-- `filter[A053460(n+1), A355450(#)]` -/
def P14779939773729841104.Spec : Prop :=
  ∀ n, P14779939773729841104.a n = A106571 (n + 1)

end A106571

/-! ## A106571.P1637461152431370254

`filter[A128201(n+1), A355450(#)]`
-/

namespace A106571.P1637461152431370254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A106571.P1637461152431370254

namespace A106571

/-- `filter[A128201(n+1), A355450(#)]` -/
def P1637461152431370254.Spec : Prop :=
  ∀ n, P1637461152431370254.a n = A106571 (n + 1)

end A106571

/-!
# A106573: Perfect squares which are neither the sum nor the difference of two primes.

The programs for A106573, there is no canonical definition to state claims against.
-/

/-! ## A106573.P13214115398851736994

`A106574(n+1)²`
-/

namespace A106573.P13214115398851736994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106574 (n + 1) ^ 2

end

end A106573.P13214115398851736994

/-! ## A106573.P12121792214886785880

`∩[A099019(n+1), n²]`
-/

namespace A106573.P12121792214886785880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099019 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A106573.P12121792214886785880

/-! ## A106573.P10268492140114730514

`lt[2, A060272(n^(n%2))]²`
-/

namespace A106573.P10268492140114730514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060272 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A106573.P10268492140114730514

/-! ## A106573.P9322804949755962336

`lt[2, A060272(A093178(n))]²`
-/

namespace A106573.P9322804949755962336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060272 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n ^ 2

end

end A106573.P9322804949755962336

/-! ## A106573.P540227344276095433

`A108321(A106574(n+1)-1)`
-/

namespace A106573.P540227344276095433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108321 (A106574 (n + 1) - 1).toNat

end

end A106573.P540227344276095433

/-!
# A106574: Indices n of perfect squares n^2 which are neither the sum nor the difference of two primes.

The programs for A106574, there is no canonical definition to state claims against.
-/

/-! ## A106574.P15324011215178168209

`sqrt(A106573(n+1))`
-/

namespace A106574.P15324011215178168209
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A106573 (n + 1) : ℝ)

end

end A106574.P15324011215178168209

/-! ## A106574.P1560288138011598466

`lt[2, A060272(n^(n%2))]`
-/

namespace A106574.P1560288138011598466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060272 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A106574.P1560288138011598466

/-! ## A106574.P2834835758545507152

`lt[2, A060272(A093178(n))]`
-/

namespace A106574.P2834835758545507152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060272 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A106574.P2834835758545507152

/-! ## A106574.P7914411701367259148

`filter[A106563(n+1), A355450(#)]`
-/

namespace A106574.P7914411701367259148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A106574.P7914411701367259148

/-! ## A106574.P17400502614054248817

`lt[3, A089594(A060272(n+1))]+1`
-/

namespace A106574.P17400502614054248817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089594 (A060272 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A106574.P17400502614054248817

/-! ## A106574.P12849365569023328840

`A005408(lt[2, A060272(2*n+1)])`
-/

namespace A106574.P12849365569023328840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060272 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A106574.P12849365569023328840

/-! ## A106574.P4752246230089020001

`∩[A106563(n+1), A106571(n+1)]`
-/

namespace A106574.P4752246230089020001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106563 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A106574.P4752246230089020001

/-! ## A106574.P11538037615636378588

`eq[A106545(A029579(n)), A300817(n)]`
-/

namespace A106574.P11538037615636378588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106545 (A029579 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106574.P11538037615636378588

/-! ## A106574.P3550133116004548725

`eq[A106545(A093178(n)), A300817(n)]`
-/

namespace A106574.P3550133116004548725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106545 (A093178 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106574.P3550133116004548725

/-! ## A106574.P10833475832973881434

`eq[A106545(A109613(n)), A300817(n)]`
-/

namespace A106574.P10833475832973881434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106545 (A109613 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A106574.P10833475832973881434

/-!
# A106575: Perfect squares which are both the sum and the difference of two primes.

The programs for A106575, there is no canonical definition to state claims against.
-/

/-! ## A106575.P2134867916526309586

`A106577(n+1)²`
-/

namespace A106575.P2134867916526309586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106577 (n + 1) ^ 2

end

end A106575.P2134867916526309586

/-! ## A106575.P1394576786807968429

`record[A106548(n+2)]`
-/

namespace A106575.P1394576786807968429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106548 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106575.P1394576786807968429

/-! ## A106575.P13324331665186290860

`∪[2*(n+1), A108701(n+1)]²`
-/

namespace A106575.P13324331665186290860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A106575.P13324331665186290860

/-! ## A106575.P12060209630265665770

`∪[(2*(n+1))², A144938(n+1)]`
-/

namespace A106575.P12060209630265665770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106575.P12060209630265665770

/-! ## A106575.P16485415897643555632

`∪[A090120(n+1), a(n-1)+2]²` with `a(0)=2`
-/

namespace A106575.P16485415897643555632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090120 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n ^ 2

end

end A106575.P16485415897643555632

/-!
# A106576: Period 20. Sequence gives last digit of A106157, starting from the first positive term.

The programs for A106576, the canonical program `A106576.P14659276137320816727` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106576 has offset 0).

The definition of A106576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106576.P14659276137320816727

`A029578(or(2, n))%10`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A106576

/-- `A029578(or(2, n))%10` -/
def P14659276137320816727.Spec : Prop :=
  ∀ n, P14659276137320816727.a n = A106576 n

theorem P14659276137320816727.correct : P14659276137320816727.Spec := by
  intro n
  simp only [A106576]

end A106576

/-!
# A106577: Indices n of perfect squares n^2 which are both the sum and the difference of two primes.

The programs for A106577, there is no canonical definition to state claims against.
-/

/-! ## A106577.P11990816141427174518

`sqrt(A106575(n+1))`
-/

namespace A106577.P11990816141427174518
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A106575 (n + 1) : ℝ)

end

end A106577.P11990816141427174518

/-! ## A106577.P8727362527405660564

`record[sqrt(A106548(n+2))]`
-/

namespace A106577.P8727362527405660564
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A106548 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106577.P8727362527405660564

/-! ## A106577.P561595629747529746

`∪[2*(n+1), A108701(n+1)]`
-/

namespace A106577.P561595629747529746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106577.P561595629747529746

/-! ## A106577.P8625598371991832839

`∪[A108701(n+1), A005408(n)+1]`
-/

namespace A106577.P8625598371991832839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106577.P8625598371991832839

/-!
# A106578: First differences of indices of squarefree central binomial numbers.

The programs for A106578, there is no canonical definition to state claims against.
-/

/-! ## A106578.P15513927042865169791

`Δ[A046098(n+2)]`
-/

namespace A106578.P15513927042865169791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046098 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106578.P15513927042865169791

/-! ## A106578.P13606123848200457831

`Δ[eq[0, A048243(n+1)]]`
-/

namespace A106578.P13606123848200457831
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048243 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A106578.P13606123848200457831

/-! ## A106578.P5449733099775570531

`Δ[eq[0, A056175(n+1)]]`
-/

namespace A106578.P5449733099775570531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056175 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A106578.P5449733099775570531

/-! ## A106578.P6394382317448943861

`Δ[eq[0, A056676(n+1)]]`
-/

namespace A106578.P6394382317448943861
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056676 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A106578.P6394382317448943861

/-! ## A106578.P10044512714103214703

`Δ[eq[0, A064141(n+1)]]`
-/

namespace A106578.P10044512714103214703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064141 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A106578.P10044512714103214703

/-!
# A106579: Triangular array associated with Schroeder numbers: T(0,0) = 1, T(n,0) = 0 for n > 0; T(n,k) = 0 if k < n; T(n,k) = T(n,k-1) + T(n-1,k-1) + T(n-1,k).

The programs for A106579, there is no canonical definition to state claims against.
-/

/-! ## A106579.P7844016268953785615

`A033878(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A106579.P7844016268953785615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033878 (n - 1) - a (n - 1)

end

end A106579.P7844016268953785615

/-! ## A106579.P9694686359672965254

`A122538(A167407(n)+A061579(n))`
-/

namespace A106579.P9694686359672965254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122538 (A167407 n + A061579 n).toNat

end

end A106579.P9694686359672965254

/-! ## A106579.P7011617708182563977

`A122538(A093995(n+1)-A066182(n+1))`
-/

namespace A106579.P7011617708182563977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122538 (A093995 (n + 1) - A066182 (n + 1)).toNat

end

end A106579.P7011617708182563977

/-! ## A106579.P2465960161583612108

`A122538(floor(A038722(n+1)+acot(n)))`
-/

namespace A106579.P2465960161583612108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122538 ⌊(A038722 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A106579.P2465960161583612108

/-! ## A106579.P15580293617044070627

`A122538((∑[char[∑[n]]]²-n)%(2^n))`
-/

namespace A106579.P15580293617044070627
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122538 (Int.tmod ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ)) (2 ^ n : ℤ)).toNat

end

end A106579.P15580293617044070627

/-!
# A106580: Triangle T(n, k) = T(n, k-1) + Sum_{i >= 1} T(n-2i, k-i) with T(n,0)=1, read by rows.

The programs for A106580, there is no canonical definition to state claims against.
-/

/-! ## A106580.P5272798336700853806

`A357859(2*A008279(n))`
-/

namespace A106580.P5272798336700853806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357859 (2 * A008279 n).toNat

end

end A106580.P5272798336700853806

/-! ## A106580.P4024359926390734907

`A003059(A182635(A008279(n)))`
-/

namespace A106580.P4024359926390734907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A182635 (A008279 n).toNat).toNat

end

end A106580.P4024359926390734907

/-! ## A106580.P15285239057194189377

`A006530(A221683(A118168(n))!)`
-/

namespace A106580.P15285239057194189377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (A221683 (A118168 n).toNat).toNat)

end

end A106580.P15285239057194189377

/-! ## A106580.P7576896901756550009

`A028749(A283054(n))-A283054(n)`
-/

namespace A106580.P7576896901756550009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028749 (A283054 n).toNat - A283054 n

end

end A106580.P7576896901756550009

/-! ## A106580.P8663431993231154577

`A006530(A000010(A210561(n+1))!)`
-/

namespace A106580.P8663431993231154577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.factorial (A000010 (A210561 (n + 1)).toNat).toNat)

end

end A106580.P8663431993231154577

/-!
# A106581: Alternating two level four-symbol substitution: characteristic polynomial: x^2*(x^2-3).

The programs for A106581, there is no canonical definition to state claims against.
-/

/-! ## A106581.P11410207718769137469

`A368779(A027861(n+1)*A037395(n+4))`
-/

namespace A106581.P11410207718769137469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368779 (A027861 (n + 1) * A037395 (n + 4)).toNat

end

end A106581.P11410207718769137469

/-! ## A106581.P18008556085926316518

`A070080(A291158(3*(n+1))+A001263(n+1))`
-/

namespace A106581.P18008556085926316518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070080 (A291158 (3 * (n + 1)) + A001263 (n + 1)).toNat

end

end A106581.P18008556085926316518

/-! ## A106581.P10308041095464019009

`A106054(A106058(3*n+4)-A100449(n+1))`
-/

namespace A106581.P10308041095464019009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106054 (A106058 (3 * n + 4) - A100449 (n + 1)).toNat

end

end A106581.P10308041095464019009

/-! ## A106581.P11959495614939602621

`A078147(A161342(2*(n+2))-A060324(3*n+2))`
-/

namespace A106581.P11959495614939602621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (A161342 (2 * (n + 2)) - A060324 (3 * n + 2)).toNat

end

end A106581.P11959495614939602621

/-!
# A106582: Numbers which are the concatenation of two primes.

The programs for A106582, there is no canonical definition to state claims against.
-/

/-! ## A106582.P15924542576111413938

`∪[A105184(n+1), A121609(n+1)]`
-/

namespace A106582.P15924542576111413938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121609 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106582.P15924542576111413938

/-! ## A106582.P17166908171256868647

`∪[A019549(n+1), A066737(n+1)]%A167458(2*n+5)`
-/

namespace A106582.P17166908171256868647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066737 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A167458 (2 * n + 5))

end

end A106582.P17166908171256868647

/-! ## A106582.P7459206397507952422

`∪[A066737(n+1), A105184(n+1)]%A167458(2*n+5)`
-/

namespace A106582.P7459206397507952422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105184 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A167458 (2 * n + 5))

end

end A106582.P7459206397507952422

/-! ## A106582.P14208337356463760626

`∪[A019549(n+1), A167459(n+1)]%A167458(2*n+5)`
-/

namespace A106582.P14208337356463760626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167459 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A167458 (2 * n + 5))

end

end A106582.P14208337356463760626

/-! ## A106582.P13345851586061297061

`∪[A066737(n+1), A129800(n+1)]%A167458(2*n+5)`
-/

namespace A106582.P13345851586061297061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129800 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A167458 (2 * n + 5))

end

end A106582.P13345851586061297061

/-!
# A106584: 3-limiting word of the morphism 1->323, 2->135, 3->121, 4->656, 5->246, 6->454 starting from 1.

The programs for A106584, there is no canonical definition to state claims against.
-/

/-! ## A106584.P14881339146531241578

`A001222(A304206(n+1)+A184045(n+1))`
-/

namespace A106584.P14881339146531241578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A304206 (n + 1) + A184045 (n + 1)).toNat

end

end A106584.P14881339146531241578

/-! ## A106584.P9863404087882691365

`A246837(gcd(A246794(2*(n+2)), A246806(n)))`
-/

namespace A106584.P9863404087882691365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246837 (Int.gcd (A246794 (2 * (n + 2))) (A246806 n))

end

end A106584.P9863404087882691365

/-!
# A106585: Triangle read by rows: even-numbered rows of A106580.

The programs for A106585, there is no canonical definition to state claims against.
-/

/-! ## A106585.P687538553019699901

`A106580(A161983(n))`
-/

namespace A106585.P687538553019699901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106580 (A161983 n).toNat

end

end A106585.P687538553019699901

/-! ## A106585.P3097759775069843699

`A106580(A116942(2*n))`
-/

namespace A106585.P3097759775069843699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106580 (A116942 (2 * n)).toNat

end

end A106585.P3097759775069843699

/-! ## A106585.P17158881973589509282

`A106580(A007606(n+1)-1)`
-/

namespace A106585.P17158881973589509282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106580 (A007606 (n + 1) - 1).toNat

end

end A106585.P17158881973589509282

/-! ## A106585.P8483761335218225338

`A106580(eq[1, A057211(n+1)])`
-/

namespace A106585.P8483761335218225338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106580 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106585.P8483761335218225338

/-! ## A106585.P16961352063921166062

`A106580(record[n*A057211(n+1)])`
-/

namespace A106585.P16961352063921166062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106580 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A106585.P16961352063921166062

/-! ## A106585.P12107545292756716955

`A106580(A061887(n)+A000196(n))`
-/

namespace A106585.P12107545292756716955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106580 (A061887 n + A000196 n).toNat

end

end A106585.P12107545292756716955

/-! ## A106585.P3878743620302126085

`A106580(A048760(n)+A028392(n))`
-/

namespace A106585.P3878743620302126085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106580 (A048760 n + A028392 n).toNat

end

end A106585.P3878743620302126085

/-!
# A106586: Digit next to last in squares ending in 6.

The programs for A106586, the canonical program `A106586.P17018002336343586335` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106586 has offset 1).

The definition of A106586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106586.P17018002336343586335

`(∑[C(or(1, n), n)]+n²)%10`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106586

/-- `(∑[C(or(1, n), n)]+n²)%10` -/
def P17018002336343586335.Spec : Prop :=
  ∀ n, (P17018002336343586335.a n : ℤ) = A106586 (n + 1)

theorem P17018002336343586335.correct : P17018002336343586335.Spec := by
  intro n
  simp only [A106586, Nat.add_sub_cancel]

end A106586

/-!
# A106587: Sum of n-th prime squared and n-th perfect square.

The programs for A106587, the canonical program `A106587.P10471474912979414832` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106587 has offset 1).

The definition of A106587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106587.P10471474912979414832

`A001248(n+1)+(n+1)²`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A106587

/-- `A001248(n+1)+(n+1)²` -/
def P10471474912979414832.Spec : Prop :=
  ∀ n, P10471474912979414832.a n = A106587 (n + 1)

theorem P10471474912979414832.correct : P10471474912979414832.Spec := by
  intro n
  simp only [A106587, Nat.add_sub_cancel]

end A106587

/-! ## A106587.P17453414561814741786

`A066872(n+1)+n*(n+2)`
-/

namespace A106587.P17453414561814741786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1) + (n * (n + 2) : ℤ)

end

end A106587.P17453414561814741786

namespace A106587

/-- `A066872(n+1)+n*(n+2)` -/
def P17453414561814741786.Spec : Prop :=
  ∀ n, P17453414561814741786.a n = A106587 (n + 1)

theorem P17453414561814741786.correct : P17453414561814741786.Spec := by
  intro n
  simp only [A106587, Nat.add_sub_cancel, A106587.P17453414561814741786.a, A106587.P10471474912979414832.a, A001248, A001248.P16278241061688229202.a, A066872, A066872.P16309924819967402.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106587

/-! ## A106587.P14902607394703240877

`(n+1)²+A000040(n+1)²`
-/

namespace A106587.P14902607394703240877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A000040 (n + 1) ^ 2

end

end A106587.P14902607394703240877

namespace A106587

/-- `(n+1)²+A000040(n+1)²` -/
def P14902607394703240877.Spec : Prop :=
  ∀ n, P14902607394703240877.a n = A106587 (n + 1)

theorem P14902607394703240877.correct : P14902607394703240877.Spec := by
  intro n
  simp only [A106587, Nat.add_sub_cancel, A106587.P14902607394703240877.a, A106587.P10471474912979414832.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106587

/-! ## A106587.P3914128002716958956

`(n+1)²+A273960(n+1)²`
-/

namespace A106587.P3914128002716958956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A273960 (n + 1) ^ 2

end

end A106587.P3914128002716958956

namespace A106587

/-- `(n+1)²+A273960(n+1)²` -/
def P3914128002716958956.Spec : Prop :=
  ∀ n, P3914128002716958956.a n = A106587 (n + 1)

end A106587

/-! ## A106587.P12890574415224907424

`(n+1)²+A106588(n+1)+(n+1)²`
-/

namespace A106587.P12890574415224907424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A106588 (n + 1) + ((n + 1) ^ 2 : ℤ))

end

end A106587.P12890574415224907424

namespace A106587

/-- `(n+1)²+A106588(n+1)+(n+1)²` -/
def P12890574415224907424.Spec : Prop :=
  ∀ n, P12890574415224907424.a n = A106587 (n + 1)

theorem P12890574415224907424.correct : P12890574415224907424.Spec := by
  intro n
  simp only [A106587, Nat.add_sub_cancel, A106587.P12890574415224907424.a, A106587.P10471474912979414832.a, A001248, A001248.P16278241061688229202.a, A106588, A106588.P17388053404201325295.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106587

/-! ## A106587.P7497495837057212630

`Δ[A000330(n)]+Δ[A007504(n)]²`
-/

namespace A106587.P7497495837057212630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (f2 (n + 1) - f2 n) ^ 2

end

end A106587.P7497495837057212630

namespace A106587

/-- `Δ[A000330(n)]+Δ[A007504(n)]²` -/
def P7497495837057212630.Spec : Prop :=
  ∀ n, P7497495837057212630.a n = A106587 (n + 1)

end A106587

/-! ## A106587.P17395104596042621739

`A036689(n+1)+A004232(n+1)`
-/

namespace A106587.P17395104596042621739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) + A004232 (n + 1)

end

end A106587.P17395104596042621739

namespace A106587

/-- `A036689(n+1)+A004232(n+1)` -/
def P17395104596042621739.Spec : Prop :=
  ∀ n, P17395104596042621739.a n = A106587 (n + 1)

end A106587

/-! ## A106587.P12393976746848673129

`A061725(n+1)+A008865(n+1)`
-/

namespace A106587.P12393976746848673129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061725 (n + 1) + A008865 (n + 1)

end

end A106587.P12393976746848673129

namespace A106587

/-- `A061725(n+1)+A008865(n+1)` -/
def P12393976746848673129.Spec : Prop :=
  ∀ n, P12393976746848673129.a n = A106587 (n + 1)

theorem P12393976746848673129.correct : P12393976746848673129.Spec := by
  intro n
  simp only [A106587, Nat.add_sub_cancel, A106587.P12393976746848673129.a, A106587.P10471474912979414832.a, A001248, A001248.P16278241061688229202.a, A008865, A008865.P16699731729816255732.a, A061725, A061725.P14287202309027882808.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106587

/-! ## A106587.P15406174204285533583

`A073497(n+1)+A036690(n+1)`
-/

namespace A106587.P15406174204285533583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073497 (n + 1) + A036690 (n + 1)

end

end A106587.P15406174204285533583

namespace A106587

/-- `A073497(n+1)+A036690(n+1)` -/
def P15406174204285533583.Spec : Prop :=
  ∀ n, P15406174204285533583.a n = A106587 (n + 1)

end A106587

/-! ## A106587.P5503948575704782680

`A183199(n+1)+A049001(n+1)`
-/

namespace A106587.P5503948575704782680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183199 (n + 1) + A049001 (n + 1)

end

end A106587.P5503948575704782680

namespace A106587

/-- `A183199(n+1)+A049001(n+1)` -/
def P5503948575704782680.Spec : Prop :=
  ∀ n, P5503948575704782680.a n = A106587 (n + 1)

theorem P5503948575704782680.correct : P5503948575704782680.Spec := by
  intro n
  simp only [A106587, Nat.add_sub_cancel, A106587.P5503948575704782680.a, A106587.P10471474912979414832.a, A001248, A001248.P16278241061688229202.a, A049001, A049001.P16714800471455782698.a, A183199, A183199.P9608826618060147428.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106587

/-! ## A106587.P147934001298901168

`A079704(n+1)-A106588(n+1)`
-/

namespace A106587.P147934001298901168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 1) - A106588 (n + 1)

end

end A106587.P147934001298901168

namespace A106587

/-- `A079704(n+1)-A106588(n+1)` -/
def P147934001298901168.Spec : Prop :=
  ∀ n, P147934001298901168.a n = A106587 (n + 1)

theorem P147934001298901168.correct : P147934001298901168.Spec := by
  intro n
  simp only [A106587, Nat.add_sub_cancel, A106587.P147934001298901168.a, A106587.P10471474912979414832.a, A001248, A001248.P16278241061688229202.a, A079704, A079704.P11944309894507862632.a, A106588, A106588.P17388053404201325295.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106587

/-! ## A106587.P11262563207555525652

`(n+1)²+A123914(n+1)+A011757(n+1)`
-/

namespace A106587.P11262563207555525652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A123914 (n + 1) + A011757 (n + 1))

end

end A106587.P11262563207555525652

namespace A106587

/-- `(n+1)²+A123914(n+1)+A011757(n+1)` -/
def P11262563207555525652.Spec : Prop :=
  ∀ n, P11262563207555525652.a n = A106587 (n + 1)

theorem P11262563207555525652.correct : P11262563207555525652.Spec := by
  intro n
  simp only [A106587, Nat.add_sub_cancel, A106587.P11262563207555525652.a, A106587.P10471474912979414832.a, A001248, A001248.P16278241061688229202.a, A011757, A011757.P11703475201892443194.a, A123914, A123914.P8963059744305604548.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106587

/-! ## A106587.P5607361207409781647

`A000217(n+1)+A001248(n+1)+A000217(n)`
-/

namespace A106587.P5607361207409781647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A001248 (n + 1) + A000217 n)

end

end A106587.P5607361207409781647

namespace A106587

/-- `A000217(n+1)+A001248(n+1)+A000217(n)` -/
def P5607361207409781647.Spec : Prop :=
  ∀ n, P5607361207409781647.a n = A106587 (n + 1)

theorem P5607361207409781647.correct : P5607361207409781647.Spec := by
  intro n
  simp only [A106587, Nat.add_sub_cancel, A106587.P5607361207409781647.a, A106587.P10471474912979414832.a, A000217, A000217.P10269402890581615239.a, A001248, A001248.P16278241061688229202.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A106587

/-! ## A106587.P11510023354035721151

`A000330(n+1)+A001248(n+1)-A000330(n)`
-/

namespace A106587.P11510023354035721151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) + (A001248 (n + 1) - A000330 n)

end

end A106587.P11510023354035721151

namespace A106587

/-- `A000330(n+1)+A001248(n+1)-A000330(n)` -/
def P11510023354035721151.Spec : Prop :=
  ∀ n, P11510023354035721151.a n = A106587 (n + 1)

end A106587

/-! ## A106587.P9738188165340154570

`Δ[A024525(n)]+(n+1)²`
-/

namespace A106587.P9738188165340154570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((n + 1) ^ 2 : ℤ)

end

end A106587.P9738188165340154570

namespace A106587

/-- `Δ[A024525(n)]+(n+1)²` -/
def P9738188165340154570.Spec : Prop :=
  ∀ n, P9738188165340154570.a n = A106587 (n + 1)

end A106587

/-! ## A106587.P721879257819958465

`A280076(n+2)+(n+1)²`
-/

namespace A106587.P721879257819958465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 2) + ((n + 1) ^ 2 : ℤ)

end

end A106587.P721879257819958465

namespace A106587

/-- `A280076(n+2)+(n+1)²` -/
def P721879257819958465.Spec : Prop :=
  ∀ n, P721879257819958465.a n = A106587 (n + 1)

end A106587

/-! ## A106587.P6336819748842241757

`(n+1)²+A008578(n+2)²`
-/

namespace A106587.P6336819748842241757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A008578 (n + 2) ^ 2

end

end A106587.P6336819748842241757

namespace A106587

/-- `(n+1)²+A008578(n+2)²` -/
def P6336819748842241757.Spec : Prop :=
  ∀ n, P6336819748842241757.a n = A106587 (n + 1)

end A106587

/-! ## A106587.P658086978315450778

`A084920(n+1)+A002522(n+1)`
-/

namespace A106587.P658086978315450778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) + A002522 (n + 1)

end

end A106587.P658086978315450778

namespace A106587

/-- `A084920(n+1)+A002522(n+1)` -/
def P658086978315450778.Spec : Prop :=
  ∀ n, P658086978315450778.a n = A106587 (n + 1)

theorem P658086978315450778.correct : P658086978315450778.Spec := by
  intro n
  simp only [A106587, Nat.add_sub_cancel, A106587.P658086978315450778.a, A106587.P10471474912979414832.a, A001248, A001248.P16278241061688229202.a, A002522, A002522.P3778392011853271743.a, A084920, A084920.P18008529996685256336.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106587

/-! ## A106587.P3591411705640486723

`A000290(n+1)+A008578(n+2)*A008578(n+2)`
-/

namespace A106587.P3591411705640486723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 1) + A008578 (n + 2) * A008578 (n + 2)

end

end A106587.P3591411705640486723

namespace A106587

/-- `A000290(n+1)+A008578(n+2)*A008578(n+2)` -/
def P3591411705640486723.Spec : Prop :=
  ∀ n, P3591411705640486723.a n = A106587 (n + 1)

end A106587

/-! ## A106587.P676055735851739051

`(n+1)²+A158611(n+3)²`
-/

namespace A106587.P676055735851739051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + A158611 (n + 3) ^ 2

end

end A106587.P676055735851739051

namespace A106587

/-- `(n+1)²+A158611(n+3)²` -/
def P676055735851739051.Spec : Prop :=
  ∀ n, P676055735851739051.a n = A106587 (n + 1)

end A106587

/-!
# A106588: Difference between n-th prime squared and n-th perfect square.

The programs for A106588, the canonical program `A106588.P17388053404201325295` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106588 has offset 1).

The definition of A106588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106588.P17388053404201325295

`A001248(n+1)-(n+1)²`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A106588

/-- `A001248(n+1)-(n+1)²` -/
def P17388053404201325295.Spec : Prop :=
  ∀ n, P17388053404201325295.a n = A106588 (n + 1)

theorem P17388053404201325295.correct : P17388053404201325295.Spec := by
  intro n
  simp only [A106588, Nat.add_sub_cancel]

end A106588

/-! ## A106588.P2721214661732692621

`A182174(n+1)-∑[2*n]`
-/

namespace A106588.P2721214661732692621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182174 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A106588.P2721214661732692621

namespace A106588

/-- `A182174(n+1)-∑[2*n]` -/
def P2721214661732692621.Spec : Prop :=
  ∀ n, P2721214661732692621.a n = A106588 (n + 1)

end A106588

/-! ## A106588.P1628015177230316787

`A084920(n+1)-n*(n+2)`
-/

namespace A106588.P1628015177230316787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) - (n * (n + 2) : ℤ)

end

end A106588.P1628015177230316787

namespace A106588

/-- `A084920(n+1)-n*(n+2)` -/
def P1628015177230316787.Spec : Prop :=
  ∀ n, P1628015177230316787.a n = A106588 (n + 1)

theorem P1628015177230316787.correct : P1628015177230316787.Spec := by
  intro n
  simp only [A106588, Nat.add_sub_cancel, A106588.P1628015177230316787.a, A106588.P17388053404201325295.a, A001248, A001248.P16278241061688229202.a, A084920, A084920.P18008529996685256336.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106588

/-! ## A106588.P570258578308934851

`A000040(n+1)²-(n+1)²`
-/

namespace A106588.P570258578308934851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - ((n + 1) ^ 2 : ℤ)

end

end A106588.P570258578308934851

namespace A106588

/-- `A000040(n+1)²-(n+1)²` -/
def P570258578308934851.Spec : Prop :=
  ∀ n, P570258578308934851.a n = A106588 (n + 1)

end A106588

/-! ## A106588.P1185614515129658542

`A273960(n+1)²-(n+1)²`
-/

namespace A106588.P1185614515129658542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) ^ 2 - ((n + 1) ^ 2 : ℤ)

end

end A106588.P1185614515129658542

namespace A106588

/-- `A273960(n+1)²-(n+1)²` -/
def P1185614515129658542.Spec : Prop :=
  ∀ n, P1185614515129658542.a n = A106588 (n + 1)

end A106588

/-! ## A106588.P1682480969193694559

`A141129(n+1)+A123914(n+1)`
-/

namespace A106588.P1682480969193694559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141129 (n + 1) + A123914 (n + 1)

end

end A106588.P1682480969193694559

namespace A106588

/-- `A141129(n+1)+A123914(n+1)` -/
def P1682480969193694559.Spec : Prop :=
  ∀ n, P1682480969193694559.a n = A106588 (n + 1)

end A106588

/-! ## A106588.P12643633469989376206

`A036690(n+1)-A004232(n+1)`
-/

namespace A106588.P12643633469989376206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036690 (n + 1) - A004232 (n + 1)

end

end A106588.P12643633469989376206

namespace A106588

/-- `A036690(n+1)-A004232(n+1)` -/
def P12643633469989376206.Spec : Prop :=
  ∀ n, P12643633469989376206.a n = A106588 (n + 1)

end A106588

/-! ## A106588.P7442536633892195082

`A049001(n+1)-A008865(n+1)`
-/

namespace A106588.P7442536633892195082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1) - A008865 (n + 1)

end

end A106588.P7442536633892195082

namespace A106588

/-- `A049001(n+1)-A008865(n+1)` -/
def P7442536633892195082.Spec : Prop :=
  ∀ n, P7442536633892195082.a n = A106588 (n + 1)

theorem P7442536633892195082.correct : P7442536633892195082.Spec := by
  intro n
  simp only [A106588, Nat.add_sub_cancel, A106588.P7442536633892195082.a, A106588.P17388053404201325295.a, A001248, A001248.P16278241061688229202.a, A008865, A008865.P16699731729816255732.a, A049001, A049001.P16714800471455782698.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106588

/-! ## A106588.P18166393791308493059

`A036689(n+1)-A073497(n+1)`
-/

namespace A106588.P18166393791308493059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (n + 1) - A073497 (n + 1)

end

end A106588.P18166393791308493059

namespace A106588

/-- `A036689(n+1)-A073497(n+1)` -/
def P18166393791308493059.Spec : Prop :=
  ∀ n, P18166393791308493059.a n = A106588 (n + 1)

end A106588

/-! ## A106588.P5407668241451514060

`A079704(n+1)-A106587(n+1)`
-/

namespace A106588.P5407668241451514060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 1) - A106587 (n + 1)

end

end A106588.P5407668241451514060

namespace A106588

/-- `A079704(n+1)-A106587(n+1)` -/
def P5407668241451514060.Spec : Prop :=
  ∀ n, P5407668241451514060.a n = A106588 (n + 1)

theorem P5407668241451514060.correct : P5407668241451514060.Spec := by
  intro n
  simp only [A106588, Nat.add_sub_cancel, A106588.P5407668241451514060.a, A106588.P17388053404201325295.a, A001248, A001248.P16278241061688229202.a, A079704, A079704.P11944309894507862632.a, A106587, A106587.P10471474912979414832.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106588

/-! ## A106588.P3744948550416583424

`A061725(n+1)-A183199(n+1)`
-/

namespace A106588.P3744948550416583424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061725 (n + 1) - A183199 (n + 1)

end

end A106588.P3744948550416583424

namespace A106588

/-- `A061725(n+1)-A183199(n+1)` -/
def P3744948550416583424.Spec : Prop :=
  ∀ n, P3744948550416583424.a n = A106588 (n + 1)

theorem P3744948550416583424.correct : P3744948550416583424.Spec := by
  intro n
  simp only [A106588, Nat.add_sub_cancel, A106588.P3744948550416583424.a, A106588.P17388053404201325295.a, A001248, A001248.P16278241061688229202.a, A061725, A061725.P14287202309027882808.a, A183199, A183199.P9608826618060147428.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106588

/-! ## A106588.P10843349587730463245

`A182200(n+1)-A123968(n+1)`
-/

namespace A106588.P10843349587730463245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182200 (n + 1) - A123968 (n + 1)

end

end A106588.P10843349587730463245

namespace A106588

/-- `A182200(n+1)-A123968(n+1)` -/
def P10843349587730463245.Spec : Prop :=
  ∀ n, P10843349587730463245.a n = A106588 (n + 1)

theorem P10843349587730463245.correct : P10843349587730463245.Spec := by
  intro n
  simp only [A106588, Nat.add_sub_cancel, A106588.P10843349587730463245.a, A106588.P17388053404201325295.a, A001248, A001248.P16278241061688229202.a, A123968, A123968.P4707337920841887922.a, A182200, A182200.P2957371844516527360.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A166010, A166010.P2251698158040960203.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106588

/-! ## A106588.P10136447488688448120

`A014688(n+1)*A014689(n+1)`
-/

namespace A106588.P10136447488688448120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) * A014689 (n + 1)

end

end A106588.P10136447488688448120

namespace A106588

/-- `A014688(n+1)*A014689(n+1)` -/
def P10136447488688448120.Spec : Prop :=
  ∀ n, P10136447488688448120.a n = A106588 (n + 1)

end A106588

/-! ## A106588.P13169273692306123603

`∑[A230847(n+1)]*A014689(n+1)`
-/

namespace A106588.P13169273692306123603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A014689 (n + 1)

end

end A106588.P13169273692306123603

namespace A106588

/-- `∑[A230847(n+1)]*A014689(n+1)` -/
def P13169273692306123603.Spec : Prop :=
  ∀ n, P13169273692306123603.a n = A106588 (n + 1)

end A106588

/-! ## A106588.P5498336066681356673

`(A095116(n+1)+1)*A014689(n+1)`
-/

namespace A106588.P5498336066681356673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A095116 (n + 1) + 1) * A014689 (n + 1)

end

end A106588.P5498336066681356673

namespace A106588

/-- `(A095116(n+1)+1)*A014689(n+1)` -/
def P5498336066681356673.Spec : Prop :=
  ∀ n, P5498336066681356673.a n = A106588 (n + 1)

end A106588

/-! ## A106588.P15326585938040284628

`(A014692(n+1)-1)*A014688(n+1)`
-/

namespace A106588.P15326585938040284628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014692 (n + 1) - 1) * A014688 (n + 1)

end

end A106588.P15326585938040284628

namespace A106588

/-- `(A014692(n+1)-1)*A014688(n+1)` -/
def P15326585938040284628.Spec : Prop :=
  ∀ n, P15326585938040284628.a n = A106588 (n + 1)

end A106588

/-! ## A106588.P10820184665372656381

`2*A001248(n+1)-A106587(n+1)`
-/

namespace A106588.P10820184665372656381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001248 (n + 1) - A106587 (n + 1)

end

end A106588.P10820184665372656381

namespace A106588

/-- `2*A001248(n+1)-A106587(n+1)` -/
def P10820184665372656381.Spec : Prop :=
  ∀ n, P10820184665372656381.a n = A106588 (n + 1)

theorem P10820184665372656381.correct : P10820184665372656381.Spec := by
  intro n
  simp only [A106588, Nat.add_sub_cancel, A106588.P10820184665372656381.a, A106588.P17388053404201325295.a, A001248, A001248.P16278241061688229202.a, A106587, A106587.P10471474912979414832.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106588

/-! ## A106588.P16261101496323337437

`(A008864(n+1)+n)*A014689(n+1)`
-/

namespace A106588.P16261101496323337437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) + (n : ℤ)) * A014689 (n + 1)

end

end A106588.P16261101496323337437

namespace A106588

/-- `(A008864(n+1)+n)*A014689(n+1)` -/
def P16261101496323337437.Spec : Prop :=
  ∀ n, P16261101496323337437.a n = A106588 (n + 1)

theorem P16261101496323337437.correct : P16261101496323337437.Spec := by
  intro n
  simp only [A106588, Nat.add_sub_cancel, A106588.P16261101496323337437.a, A106588.P17388053404201325295.a, A001248, A001248.P16278241061688229202.a, A008864, A008864.P9177617808325052279.a, A014689, A014689.P3456970834266250440.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106588

/-! ## A106588.P11116583557495819713

`(A006093(n+1)-n)*A014688(n+1)`
-/

namespace A106588.P11116583557495819713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) - (n : ℤ)) * A014688 (n + 1)

end

end A106588.P11116583557495819713

namespace A106588

/-- `(A006093(n+1)-n)*A014688(n+1)` -/
def P11116583557495819713.Spec : Prop :=
  ∀ n, P11116583557495819713.a n = A106588 (n + 1)

end A106588

/-! ## A106588.P3437308767668869710

`A011757(n+1)+A123914(n+1)-(n+1)²`
-/

namespace A106588.P3437308767668869710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011757 (n + 1) + (A123914 (n + 1) - ((n + 1) ^ 2 : ℤ))

end

end A106588.P3437308767668869710

namespace A106588

/-- `A011757(n+1)+A123914(n+1)-(n+1)²` -/
def P3437308767668869710.Spec : Prop :=
  ∀ n, P3437308767668869710.a n = A106588 (n + 1)

theorem P3437308767668869710.correct : P3437308767668869710.Spec := by
  intro n
  simp only [A106588, Nat.add_sub_cancel, A106588.P3437308767668869710.a, A106588.P17388053404201325295.a, A001248, A001248.P16278241061688229202.a, A011757, A011757.P11703475201892443194.a, A123914, A123914.P8963059744305604548.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106588

/-!
# A106589: 2-limiting word of the morphism 1->2, 2->33 3->123 started from 2.

The programs for A106589, there is no canonical definition to state claims against.
-/

/-! ## A106589.P13667124146890124471

`A120992(A138920(3*n+5)+2)`
-/

namespace A106589.P13667124146890124471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120992 (A138920 (3 * n + 5) + 2).toNat

end

end A106589.P13667124146890124471

/-! ## A106589.P6619692881454020247

`A106590(A106576(3*n+2)*A106595(3*n+1))`
-/

namespace A106589.P6619692881454020247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106590 (A106576 (3 * n + 2) * A106595 (3 * n + 1)).toNat

end

end A106589.P6619692881454020247

/-! ## A106589.P13509553502898805784

`A317241(A104844(n+1)%A370972(3*(n+1)))`
-/

namespace A106589.P13509553502898805784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317241 (Int.tmod (A104844 (n + 1)) (A370972 (3 * (n + 1)))).toNat

end

end A106589.P13509553502898805784

/-! ## A106589.P906473030791744632

`∑{e}[∑{d}[A288767(n)+A000583(2*n), #]+3, #]`
-/

namespace A106589.P906473030791744632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288767 n + A000583 (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A106589.P906473030791744632

/-! ## A106589.P8445884219273154436

`A262446(lt[A007372(n+1), A208960(n+3)])`
-/

namespace A106589.P8445884219273154436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208960 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262446 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A106589.P8445884219273154436

/-!
# A106590: Trajectory of 1 under the morphism 1->{2}, 2->{3,3,3}, 3->{1,2,3}.

The programs for A106590, there is no canonical definition to state claims against.
-/

/-! ## A106590.P14069735059480275865

`A010882(lt[A096749(n), A133519(n+1)])`
-/

namespace A106590.P14069735059480275865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096749 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A106590.P14069735059480275865

/-! ## A106590.P17755566544420040520

`A305389(lt[A337412(n+1), A130578(n+1)])`
-/

namespace A106590.P17755566544420040520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305389 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A106590.P17755566544420040520

/-! ## A106590.P14536716765397429611

`A305391(lt[A104614(3*(n+1)), 3])`
-/

namespace A106590.P14536716765397429611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104614 (3 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305391 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A106590.P14536716765397429611

/-! ## A106590.P408001151932124362

`A225926(A053264(n+3)*A320340(n+1))`
-/

namespace A106590.P408001151932124362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225926 (A053264 (n + 3) * A320340 (n + 1)).toNat

end

end A106590.P408001151932124362

/-!
# A106594: a(n) = number of primitive solutions to 4n+1 = x^2 + y^2.

The programs for A106594, the canonical program `A106594.P6257635157998793185` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106594 has offset 1).

The definition of A106594 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A157228, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A106594.P6257635157998793185

`A157228(4*(n+1)+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A106594

/-- `A157228(4*(n+1)+1)` -/
def P6257635157998793185.Spec : Prop :=
  ∀ n, P6257635157998793185.a n = A106594 (n + 1)

theorem P6257635157998793185.correct : P6257635157998793185.Spec := by
  intro n
  simp only [A106594, Nat.add_sub_cancel]

end A106594

/-! ## A106594.P7438179704489849897

`A031358(n+1)/2`
-/

namespace A106594.P7438179704489849897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031358 (n + 1) : ℚ) / 2

end

end A106594.P7438179704489849897

namespace A106594

/-- `A031358(n+1)/2` -/
def P7438179704489849897.Spec : Prop :=
  ∀ n, P7438179704489849897.a n = (A106594 (n + 1) : ℚ)

end A106594

/-! ## A106594.P5393410106377136064

`A001221(A031358(n+1)!)`
-/

namespace A106594.P5393410106377136064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A031358 (n + 1)).toNat)

end

end A106594.P5393410106377136064

namespace A106594

/-- `A001221(A031358(n+1)!)` -/
def P5393410106377136064.Spec : Prop :=
  ∀ n, P5393410106377136064.a n = A106594 (n + 1)

end A106594

/-! ## A106594.P10144559936850705175

`A057365(A350872(2*(n+1))+A031358(n+1))`
-/

namespace A106594.P10144559936850705175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057365 (A350872 (2 * (n + 1)) + A031358 (n + 1)).toNat

end

end A106594.P10144559936850705175

namespace A106594

/-- `A057365(A350872(2*(n+1))+A031358(n+1))` -/
def P10144559936850705175.Spec : Prop :=
  ∀ n, P10144559936850705175.a n = A106594 (n + 1)

end A106594

/-! ## A106594.P6218461694745611831

`A024362(4*n+5)`
-/

namespace A106594.P6218461694745611831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024362 (4 * n + 5)

end

end A106594.P6218461694745611831

namespace A106594

/-- `A024362(4*n+5)` -/
def P6218461694745611831.Spec : Prop :=
  ∀ n, P6218461694745611831.a n = A106594 (n + 1)

end A106594

/-! ## A106594.P7041584854779911154

`Δ[A156685(4*(n+1))]`
-/

namespace A106594.P7041584854779911154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156685 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106594.P7041584854779911154

namespace A106594

/-- `Δ[A156685(4*(n+1))]` -/
def P7041584854779911154.Spec : Prop :=
  ∀ n, P7041584854779911154.a n = A106594 (n + 1)

end A106594

/-! ## A106594.P16359841734634175986

`A000089(4*(n-1)+9)/2`
-/

namespace A106594.P16359841734634175986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000089 (4 * ((n : ℤ) - 1) + 9).toNat : ℚ) / 2

end

end A106594.P16359841734634175986

namespace A106594

/-- `A000089(4*(n-1)+9)/2` -/
def P16359841734634175986.Spec : Prop :=
  ∀ n, P16359841734634175986.a n = (A106594 (n + 1) : ℚ)

end A106594

/-! ## A106594.P3336816906263524994

`A106602(n+1)`
-/

namespace A106594.P3336816906263524994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106602 (n + 1)

end

end A106594.P3336816906263524994

namespace A106594

/-- `A106602(n+1)` -/
def P3336816906263524994.Spec : Prop :=
  ∀ n, P3336816906263524994.a n = A106594 (n + 1)

end A106594

/-! ## A106594.P7220592523897725215

`A091400(A119413(n+2))/2`
-/

namespace A106594.P7220592523897725215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091400 (A119413 (n + 2)).toNat : ℚ) / 2

end

end A106594.P7220592523897725215

namespace A106594

/-- `A091400(A119413(n+2))/2` -/
def P7220592523897725215.Spec : Prop :=
  ∀ n, P7220592523897725215.a n = (A106594 (n + 1) : ℚ)

end A106594

/-! ## A106594.P14510213433898424856

`A091400(A305075(n+2))/2`
-/

namespace A106594.P14510213433898424856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091400 (A305075 (n + 2)).toNat : ℚ) / 2

end

end A106594.P14510213433898424856

namespace A106594

/-- `A091400(A305075(n+2))/2` -/
def P14510213433898424856.Spec : Prop :=
  ∀ n, P14510213433898424856.a n = (A106594 (n + 1) : ℚ)

end A106594

/-!
# A106595: Triangle read by rows: odd-numbered rows of A106580.

The programs for A106595, there is no canonical definition to state claims against.
-/

/-! ## A106595.P8869389804645095052

`A106580(∑[char[(n+1)²]]²+n)`
-/

namespace A106595.P8869389804645095052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106580 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + n)

end

end A106595.P8869389804645095052

/-! ## A106595.P1953106445772378254

`or(char[1], A106580(A061887(n)))`
-/

namespace A106595.P1953106445772378254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A106580 (A061887 n).toNat)

end

end A106595.P1953106445772378254

/-! ## A106595.P2806949402710332249

`(A000041(n)%2)!*A106580(A061887(n))`
-/

namespace A106595.P2806949402710332249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A106580 (A061887 n).toNat

end

end A106595.P2806949402710332249

/-! ## A106595.P135636107270266183

`A106580(A061887(n))+A008683(4*(n+1))`
-/

namespace A106595.P135636107270266183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106580 (A061887 n).toNat + A008683 (4 * (n + 1))

end

end A106595.P135636107270266183

/-! ## A106595.P11024892815713137241

`A014963(8*n+6)*A106580(A061887(n))`
-/

namespace A106595.P11024892815713137241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 6) * A106580 (A061887 n).toNat

end

end A106595.P11024892815713137241

/-! ## A106595.P14863108384791608549

`A000010(C(n, n²)!)*A106580(A061887(n))`
-/

namespace A106595.P14863108384791608549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose n (n ^ 2))) * A106580 (A061887 n).toNat

end

end A106595.P14863108384791608549

/-! ## A106595.P8139005629658311203

`A106580(A061887(n))%∑[A000032(n)]`
-/

namespace A106595.P8139005629658311203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106580 (A061887 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A106595.P8139005629658311203

/-! ## A106595.P3006706108800681073

`A106580(A061887(n))^A014963(∑[n+1])`
-/

namespace A106595.P3006706108800681073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106580 (A061887 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A106595.P3006706108800681073

/-! ## A106595.P6020180517413218081

`∑{d}[A106580(A061887(n)), A000010(#)]`
-/

namespace A106595.P6020180517413218081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106580 (A061887 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A106595.P6020180517413218081

/-! ## A106595.P4744081458519022895

`∏{d}[A106580(A061887(n)), A014963(#)]`
-/

namespace A106595.P4744081458519022895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106580 (A061887 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A106595.P4744081458519022895

/-!
# A106597: Triangle T(n,k) = T(n-1, k-1) + T(n-1, k) + Sum_{i >= 1} T(n-2*i, k-i), with T(n, 0) = T(n, n) = 1, read by rows.

The programs for A106597, there is no canonical definition to state claims against.
-/

/-! ## A106597.P13784123386331217050

`A185651(n)+A115871(A099597(n))`
-/

namespace A106597.P13784123386331217050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 n + A115871 (A099597 n).toNat

end

end A106597.P13784123386331217050

/-! ## A106597.P16604976856378525149

`A330878(A086620(n))+A185651(n)`
-/

namespace A106597.P16604976856378525149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330878 (A086620 n).toNat + A185651 n

end

end A106597.P16604976856378525149

/-! ## A106597.P6064039723422466808

`A330878(A100936(n))+A185651(n)`
-/

namespace A106597.P6064039723422466808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330878 (A100936 n).toNat + A185651 n

end

end A106597.P6064039723422466808

/-! ## A106597.P7534162186203272977

`A330878(A108359(n))+A185651(n)`
-/

namespace A106597.P7534162186203272977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330878 (A108359 n).toNat + A185651 n

end

end A106597.P7534162186203272977

/-! ## A106597.P4183349426880605667

`A341866(A102413(n))+A185651(n)`
-/

namespace A106597.P4183349426880605667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341866 (A102413 n).toNat + A185651 n

end

end A106597.P4183349426880605667

/-!
# A106598: Number of positive integers <= 10^n that are divisible by no prime exceeding 5.

The programs for A106598, there is no canonical definition to state claims against.
-/

/-! ## A106598.P5580501119581157336

`A253635(∑[n+3]+1)`
-/

namespace A106598.P5580501119581157336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253635 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A106598.P5580501119581157336

/-! ## A106598.P16419318723827805328

`record[gcd(A106356(n+2), A253635(n+1))]`
-/

namespace A106598.P16419318723827805328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106356 (n + 2)) (A253635 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106598.P16419318723827805328

/-! ## A106598.P8018675368048603608

`record[gcd(A253635(n+2), A253669(n+4))]`
-/

namespace A106598.P8018675368048603608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A253635 (n + 2)) (A253669 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106598.P8018675368048603608

/-!
# A106599: Irregular triangle read by rows generated by the morphism 1->56, 2->4, 3->5, 4->2, 5->3, 6->12 starting from 1.

The programs for A106599, there is no canonical definition to state claims against.
-/

/-! ## A106599.P17540305973322052501

`A106593(eq[A266840(n), A266978(n)])`
-/

namespace A106599.P17540305973322052501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266978 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106593 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A106599.P17540305973322052501

/-! ## A106599.P12332586215435278294

`A106593(eq[1, A266848(n)+A000035(n)])`
-/

namespace A106599.P12332586215435278294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266848 n + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106599.P12332586215435278294

/-! ## A106599.P4543883191301732238

`A106593(eq[1-A000035(n), A266848(n)])`
-/

namespace A106599.P4543883191301732238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106593 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A106599.P4543883191301732238

/-! ## A106599.P15682600075985235017

`A106593(eq[A014577(2*n), A266848(n)])`
-/

namespace A106599.P15682600075985235017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106593 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A106599.P15682600075985235017

