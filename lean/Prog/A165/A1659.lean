import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A165900: a(n) = n^2 - n - 1.

The programs for A165900, the canonical program `A165900.P16246243669433487557` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165900 has offset 0).

The definition of A165900 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²-n-1` (program `A165900.P16246243669433487557`, by `A165900.P16246243669433487557.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165900.P16246243669433487557

`n²-n-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165900

/-- `n²-n-1` -/
def P16246243669433487557.Spec : Prop :=
  ∀ n, P16246243669433487557.a n = A165900 n

theorem P16246243669433487557.correct : P16246243669433487557.Spec := by
  intro n
  simp only [A165900]

end A165900

/-! ## A165900.P9506200067624919469

`or(1, ∑[2*(n-1)])`
-/

namespace A165900.P9506200067624919469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165900.P9506200067624919469

namespace A165900

/-- `or(1, ∑[2*(n-1)])` -/
def P9506200067624919469.Spec : Prop :=
  ∀ n, P9506200067624919469.a n = A165900 n

end A165900

/-! ## A165900.P4661444646915501402

`xor(1, ∑[2*(n-1)])`
-/

namespace A165900.P4661444646915501402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165900.P4661444646915501402

namespace A165900

/-- `xor(1, ∑[2*(n-1)])` -/
def P4661444646915501402.Spec : Prop :=
  ∀ n, P4661444646915501402.a n = A165900 n

end A165900

/-! ## A165900.P16775528158906513552

`Δ[2*C(n, 3)-n]`
-/

namespace A165900.P16775528158906513552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose n 3 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165900.P16775528158906513552

namespace A165900

/-- `Δ[2*C(n, 3)-n]` -/
def P16775528158906513552.Spec : Prop :=
  ∀ n, P16775528158906513552.a n = A165900 n

theorem P16775528158906513552.correct : P16775528158906513552.Spec := by
  intro n
  simp only [A165900, Nat.add_sub_cancel, A165900.P16775528158906513552.f1, A165900.P16775528158906513552.a, A165900.P16246243669433487557.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A165900

/-! ## A165900.P6946326626954069251

`∑[floor(2/acot(n))-2]`
-/

namespace A165900.P6946326626954069251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165900.P6946326626954069251

namespace A165900

/-- `∑[floor(2/acot(n))-2]` -/
def P6946326626954069251.Spec : Prop :=
  ∀ n, P6946326626954069251.a n = A165900 n

end A165900

/-! ## A165900.P2630597984991323133

`∑[ceil(2/acot(n))-3]`
-/

namespace A165900.P2630597984991323133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉ - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165900.P2630597984991323133

namespace A165900

/-- `∑[ceil(2/acot(n))-3]` -/
def P2630597984991323133.Spec : Prop :=
  ∀ n, P2630597984991323133.a n = A165900 n

end A165900

/-! ## A165900.P1115996444241253097

`2*(C(n, 2)-1/2)`
-/

namespace A165900.P1115996444241253097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.choose n 2 : ℚ) - (1 : ℚ) / 2)

end

end A165900.P1115996444241253097

namespace A165900

/-- `2*(C(n, 2)-1/2)` -/
def P1115996444241253097.Spec : Prop :=
  ∀ n, P1115996444241253097.a n = (A165900 n : ℚ)

theorem P1115996444241253097.correct : P1115996444241253097.Spec := by
  intro n
  simp only [A165900, Nat.add_sub_cancel, A165900.P1115996444241253097.a, A165900.P16246243669433487557.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A165900

/-! ## A165900.P16381093426102290038

`floor(n/acot(n)-(n+1))`
-/

namespace A165900.P16381093426102290038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot (n : ℝ) - (n + 1 : ℝ)⌋

end

end A165900.P16381093426102290038

namespace A165900

/-- `floor(n/acot(n)-(n+1))` -/
def P16381093426102290038.Spec : Prop :=
  ∀ n, P16381093426102290038.a n = A165900 n

end A165900

/-! ## A165900.P10723888740406603017

`round(n/acot(n)-(n+1))`
-/

namespace A165900.P10723888740406603017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (n : ℝ) - (n + 1 : ℝ))

end

end A165900.P10723888740406603017

namespace A165900

/-- `round(n/acot(n)-(n+1))` -/
def P10723888740406603017.Spec : Prop :=
  ∀ n, P10723888740406603017.a n = A165900 n

end A165900

/-! ## A165900.P15049651795807071277

`∑[a(n-1)+2]` with `a(0)=-1, a(1)=0`
-/

namespace A165900.P15049651795807071277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165900.P15049651795807071277

namespace A165900

/-- `∑[a(n-1)+2]` -/
def P15049651795807071277.Spec : Prop :=
  ∀ n, P15049651795807071277.a n = A165900 n

end A165900

/-! ## A165900.P16564359909362165951

`∑[ogf((-1+2x+x^2)/(1-2x+x^2))]`
-/

namespace A165900.P16564359909362165951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 2, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165900.P16564359909362165951

namespace A165900

/-- `∑[ogf((-1+2x+x^2)/(1-2x+x^2))]` -/
def P16564359909362165951.Spec : Prop :=
  ∀ n, P16564359909362165951.a n = A165900 n

end A165900

/-! ## A165900.P746452225982776412

`ogf((-1+2x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A165900.P746452225982776412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 2, 1] [1, -3, 3, -1] n

end

end A165900.P746452225982776412

namespace A165900

/-- `ogf((-1+2x+x^2)/(1-3x+3x^2-x^3))` -/
def P746452225982776412.Spec : Prop :=
  ∀ n, P746452225982776412.a n = A165900 n

end A165900

/-! ## A165900.P10126667870376135044

`-∑[a(n-1)-2]` with `a(0)=1, a(1)=0`
-/

namespace A165900.P10126667870376135044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165900.P10126667870376135044

namespace A165900

/-- `-∑[a(n-1)-2]` -/
def P10126667870376135044.Spec : Prop :=
  ∀ n, P10126667870376135044.a n = A165900 n

end A165900

/-! ## A165900.P15348003379683791678

`∑[eq[2*n, lcm(2, n)]-1]`
-/

namespace A165900.P15348003379683791678
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j = f3 j) n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165900.P15348003379683791678

namespace A165900

/-- `∑[eq[2*n, lcm(2, n)]-1]` -/
def P15348003379683791678.Spec : Prop :=
  ∀ n, P15348003379683791678.a n = A165900 n

end A165900

/-! ## A165900.P13599930437027463522

`∑[∪[2^n-2, 2*n]]`
-/

namespace A165900.P13599930437027463522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165900.P13599930437027463522

namespace A165900

/-- `∑[∪[2^n-2, 2*n]]` -/
def P13599930437027463522.Spec : Prop :=
  ∀ n, (P13599930437027463522.a n : ℤ) = A165900 n

end A165900

/-! ## A165900.P324608702655531334

`-(xor(-1, n²)+n+2)`
-/

namespace A165900.P324608702655531334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(Int.xor (-1) (n ^ 2 : ℤ) + (n + 2 : ℤ))

end

end A165900.P324608702655531334

namespace A165900

/-- `-(xor(-1, n²)+n+2)` -/
def P324608702655531334.Spec : Prop :=
  ∀ n, P324608702655531334.a n = A165900 n

end A165900

/-! ## A165900.P5617812574473157230

`-(∑[or(1, -(2*n))]+n)`
-/

namespace A165900.P5617812574473157230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A165900.P5617812574473157230

namespace A165900

/-- `-(∑[or(1, -(2*n))]+n)` -/
def P5617812574473157230.Spec : Prop :=
  ∀ n, P5617812574473157230.a n = A165900 n

end A165900

/-! ## A165900.P11558056877225974395

`-(∑[xor(1, -(2*n))]+n)`
-/

namespace A165900.P11558056877225974395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A165900.P11558056877225974395

namespace A165900

/-- `-(∑[xor(1, -(2*n))]+n)` -/
def P11558056877225974395.Spec : Prop :=
  ∀ n, P11558056877225974395.a n = A165900 n

end A165900

/-! ## A165900.P16501077888361385328

`∑[floor(2*n-atan(n+1))]`
-/

namespace A165900.P16501077888361385328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) - Real.arctan (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165900.P16501077888361385328

namespace A165900

/-- `∑[floor(2*n-atan(n+1))]` -/
def P16501077888361385328.Spec : Prop :=
  ∀ n, P16501077888361385328.a n = A165900 n

end A165900

/-! ## A165900.P4208252404119987937

`∑[(n-1)*ceil(atan(n+1))]`
-/

namespace A165900.P4208252404119987937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ⌈Real.arctan (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165900.P4208252404119987937

namespace A165900

/-- `∑[(n-1)*ceil(atan(n+1))]` -/
def P4208252404119987937.Spec : Prop :=
  ∀ n, P4208252404119987937.a n = A165900 n

end A165900

/-!
# A165901: a(0)=0, a(1)=1, a(n) = a(n-1) + 2^(n-3)*a(n-2).

The programs for A165901, the canonical program `A165901.P7507800796684951919` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165901 has offset 0).

The definition of A165901 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165901.P7507800796684951919

`a(n-1)+2^(n-3)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165901

/-- `a(n-1)+2^(n-3)*a(n-2)` -/
def P7507800796684951919.Spec : Prop :=
  ∀ n, P7507800796684951919.a n = (A165901 n : ℚ)

end A165901

/-! ## A165901.P5193869811756629600

`A004526(∑[A010554(n!)])`
-/

namespace A165901.P5193869811756629600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A165901.P5193869811756629600

namespace A165901

/-- `A004526(∑[A010554(n!)])` -/
def P5193869811756629600.Spec : Prop :=
  ∀ n, P5193869811756629600.a n = A165901 n

end A165901

/-! ## A165901.P16798619976596668708

`A008679(∑[∏[A130084(n+1)]])`
-/

namespace A165901.P16798619976596668708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130084 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008679 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A165901.P16798619976596668708

namespace A165901

/-- `A008679(∑[∏[A130084(n+1)]])` -/
def P16798619976596668708.Spec : Prop :=
  ∀ n, P16798619976596668708.a n = A165901 n

end A165901

/-! ## A165901.P4830465891262073487

`A166444(n)+A054899(A000166(n))`
-/

namespace A165901.P4830465891262073487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n + A054899 (A000166 n).toNat

end

end A165901.P4830465891262073487

namespace A165901

/-- `A166444(n)+A054899(A000166(n))` -/
def P4830465891262073487.Spec : Prop :=
  ∀ n, P4830465891262073487.a n = A165901 n

end A165901

/-!
# A165902: a(0)=0, a(1)=1, a(n) = a(n-1) + 3^(n-3)*a(n-2).

The programs for A165902, the canonical program `A165902.P15968061700147753395` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165902 has offset 0).

The definition of A165902 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165902.P15968061700147753395

`a(n-1)+3^(n-3)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165902

/-- `a(n-1)+3^(n-3)*a(n-2)` -/
def P15968061700147753395.Spec : Prop :=
  ∀ n, P15968061700147753395.a n = (A165902 n : ℚ)

end A165902

/-! ## A165902.P4210437136109040039

`∑[A342785(a(n-1))]` with `a(0)=0, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A165902.P4210437136109040039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 1] fun n f1 =>
  A342785 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165902.P4210437136109040039

namespace A165902

/-- `∑[A342785(a(n-1))]` -/
def P4210437136109040039.Spec : Prop :=
  ∀ n, P4210437136109040039.a n = A165902 n

end A165902

/-! ## A165902.P14187001343339068039

`A102806(3*a(n-1)+a(n-3)-a(n-2))` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=5`
-/

namespace A165902.P14187001343339068039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 2, 5] fun n a =>
  A102806 (3 * a (n - 1) + (a (n - 3) - a (n - 2))).toNat

end

end A165902.P14187001343339068039

namespace A165902

/-- `A102806(3*a(n-1)+a(n-3)-a(n-2))` -/
def P14187001343339068039.Spec : Prop :=
  ∀ n, P14187001343339068039.a n = A165902 n

end A165902

/-!
# A165903: a(n) = (a(n-1)^2 + a(n-2)^2 + a(n-1)*a(n-2))/a(n-3) with three initial ones.

The programs for A165903, the canonical program `A165903.P4212283143326709548` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165903 has offset 0).

The definition of A165903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165903.P4212283143326709548

`6*a(n-1)*a(n-2)-a(n-1)-a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165903

/-- `6*a(n-1)*a(n-2)-a(n-1)-a(n-2)-a(n-3)` -/
def P4212283143326709548.Spec : Prop :=
  ∀ n, P4212283143326709548.a n = A165903 n

theorem P4212283143326709548.correct : P4212283143326709548.Spec := by
  intro n
  simp only [A165903]

end A165903

/-! ## A165903.P7203085383423538325

`(a(n-1)²+a(n-2)²+a(n-1)*a(n-2))/a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A165903.P7203085383423538325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (a (n - 1) ^ 2 + a (n - 2) ^ 2 + a (n - 1) * a (n - 2)) / a (n - 3)

end

end A165903.P7203085383423538325

namespace A165903

/-- `(a(n-1)²+a(n-2)²+a(n-1)*a(n-2))/a(n-3)` -/
def P7203085383423538325.Spec : Prop :=
  ∀ n, P7203085383423538325.a n = (A165903 n : ℚ)

end A165903

/-!
# A165904: Somos-4 recurrence with a(i)=2^i for 0<=i<=3.

The programs for A165904, the canonical program `A165904.P1462325065743654306` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165904 has offset 0).

The definition of A165904 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165904.P1462325065743654306

`2^n*A006720(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A165904

/-- `2^n*A006720(n)` -/
def P1462325065743654306.Spec : Prop :=
  ∀ n, P1462325065743654306.a n = A165904 n

theorem P1462325065743654306.correct : P1462325065743654306.Spec := by
  intro n
  simp only [A165904]

end A165904

/-! ## A165904.P5478579402774853778

`(a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A165904.P5478579402774853778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  (a (n - 1) * a (n - 3) + a (n - 2) ^ 2) / a (n - 4)

end

end A165904.P5478579402774853778

namespace A165904

/-- `(a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` -/
def P5478579402774853778.Spec : Prop :=
  ∀ n, P5478579402774853778.a n = (A165904 n : ℚ)

end A165904

/-! ## A165904.P18300436554619454740

`A006720(n)*A193730(∑[n])`
-/

namespace A165904.P18300436554619454740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006720 n * A193730 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165904.P18300436554619454740

namespace A165904

/-- `A006720(n)*A193730(∑[n])` -/
def P18300436554619454740.Spec : Prop :=
  ∀ n, P18300436554619454740.a n = A165904 n

end A165904

/-! ## A165904.P3590608576588828025

`A006720(n)*A011782(n+1)`
-/

namespace A165904.P3590608576588828025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006720 n * A011782 (n + 1)

end

end A165904.P3590608576588828025

namespace A165904

/-- `A006720(n)*A011782(n+1)` -/
def P3590608576588828025.Spec : Prop :=
  ∀ n, P3590608576588828025.a n = A165904 n

end A165904

/-! ## A165904.P12804159303604264324

`(A000051(n)-1)*abs(A006769(A004281(n)))`
-/

namespace A165904.P12804159303604264324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000051 n - 1) * |A006769 (A004281 n).toNat|

end

end A165904.P12804159303604264324

namespace A165904

/-- `(A000051(n)-1)*abs(A006769(A004281(n)))` -/
def P12804159303604264324.Spec : Prop :=
  ∀ n, P12804159303604264324.a n = A165904 n

end A165904

/-!
# A165905: Somos-4 recurrence with a(0)=1, a(1)=2, a(2)=4, a(3)=16.

The programs for A165905, the canonical program `A165905.P10433289138713052558` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165905 has offset 0).

The definition of A165905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165905.P10433289138713052558

`2^n*A006720(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A165905

/-- `2^n*A006720(n+1)` -/
def P10433289138713052558.Spec : Prop :=
  ∀ n, P10433289138713052558.a n = A165905 n

theorem P10433289138713052558.correct : P10433289138713052558.Spec := by
  intro n
  simp only [A165905]

end A165905

/-! ## A165905.P6308305116182704972

`(a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=16`
-/

namespace A165905.P6308305116182704972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 4, 16] fun n a =>
  (a (n - 1) * a (n - 3) + a (n - 2) ^ 2) / a (n - 4)

end

end A165905.P6308305116182704972

namespace A165905

/-- `(a(n-1)*a(n-3)+a(n-2)²)/a(n-4)` -/
def P6308305116182704972.Spec : Prop :=
  ∀ n, P6308305116182704972.a n = (A165905 n : ℚ)

end A165905

/-! ## A165905.P4501184225052914533

`A165904(n+1)/2`
-/

namespace A165905.P4501184225052914533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165904 (n + 1) : ℚ) / 2

end

end A165905.P4501184225052914533

namespace A165905

/-- `A165904(n+1)/2` -/
def P4501184225052914533.Spec : Prop :=
  ∀ n, P4501184225052914533.a n = (A165905 n : ℚ)

theorem P4501184225052914533.correct : P4501184225052914533.Spec := by
  intro n
  simp only [A165905, Nat.add_sub_cancel, A165905.P4501184225052914533.a, A165905.P10433289138713052558.a, A006720, A006720.P8178216761220668954.a, A165904, A165904.P1462325065743654306.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165905

/-!
# A165906: Sum of first n primes divided by the n-th prime, rounded up to the nearest integer.

The programs for A165906, the canonical program `A165906.P15162408621057414464` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165906 has offset 1).

The definition of A165906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165906.P16768875666946221410

`ceil(A007504(n+1)/Δ[A007504(n)])`
-/

namespace A165906.P16768875666946221410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007504 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌉

end

end A165906.P16768875666946221410

namespace A165906

/-- `ceil(A007504(n+1)/Δ[A007504(n)])` -/
def P16768875666946221410.Spec : Prop :=
  ∀ n, P16768875666946221410.a n = A165906 (n + 1)

end A165906

/-! ## A165906.P11213236266488649032

`ceil(A007504(n+1)/A000040(n+1))`
-/

namespace A165906.P11213236266488649032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007504 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)⌉

end

end A165906.P11213236266488649032

namespace A165906

/-- `ceil(A007504(n+1)/A000040(n+1))` -/
def P11213236266488649032.Spec : Prop :=
  ∀ n, P11213236266488649032.a n = A165906 (n + 1)

end A165906

/-! ## A165906.P10383667483529353358

`ceil(A007504(n+1)/sqrt(A001248(n+1)))`
-/

namespace A165906.P10383667483529353358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007504 (n + 1) : ℝ) / Real.sqrt (A001248 (n + 1) : ℝ)⌉

end

end A165906.P10383667483529353358

namespace A165906

/-- `ceil(A007504(n+1)/sqrt(A001248(n+1)))` -/
def P10383667483529353358.Spec : Prop :=
  ∀ n, P10383667483529353358.a n = A165906 (n + 1)

end A165906

/-! ## A165906.P15162408621057414464

`ceil(∑[A001748(n+1)]/A001748(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A165906

/-- `ceil(∑[A001748(n+1)]/A001748(n+1))` -/
def P15162408621057414464.Spec : Prop :=
  ∀ n, P15162408621057414464.a n = A165906 (n + 1)

theorem P15162408621057414464.correct : P15162408621057414464.Spec := by
  intro n
  simp only [A165906, Nat.add_sub_cancel]

end A165906

/-! ## A165906.P3537793640334797251

`ceil(A007504(n+1)/∑[A054541(n+1)])`
-/

namespace A165906.P3537793640334797251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007504 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌉

end

end A165906.P3537793640334797251

namespace A165906

/-- `ceil(A007504(n+1)/∑[A054541(n+1)])` -/
def P3537793640334797251.Spec : Prop :=
  ∀ n, P3537793640334797251.a n = A165906 (n + 1)

end A165906

/-! ## A165906.P10056825246891357511

`ceil(∑[A100484(n+1)]/A100484(n+1))`
-/

namespace A165906.P10056825246891357511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A100484 (n + 1) : ℚ)⌉

end

end A165906.P10056825246891357511

namespace A165906

/-- `ceil(∑[A100484(n+1)]/A100484(n+1))` -/
def P10056825246891357511.Spec : Prop :=
  ∀ n, P10056825246891357511.a n = A165906 (n + 1)

end A165906

/-! ## A165906.P9730305016785736827

`ceil(∑[A138636(n+1)]/A138636(n+1))`
-/

namespace A165906.P9730305016785736827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A138636 (n + 1) : ℚ)⌉

end

end A165906.P9730305016785736827

namespace A165906

/-- `ceil(∑[A138636(n+1)]/A138636(n+1))` -/
def P9730305016785736827.Spec : Prop :=
  ∀ n, P9730305016785736827.a n = A165906 (n + 1)

end A165906

/-! ## A165906.P5551855038609658506

`ceil(A007504(n+1)/record[A259153(n+2)])`
-/

namespace A165906.P5551855038609658506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007504 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)⌉

end

end A165906.P5551855038609658506

namespace A165906

/-- `ceil(A007504(n+1)/record[A259153(n+2)])` -/
def P5551855038609658506.Spec : Prop :=
  ∀ n, P5551855038609658506.a n = A165906 (n + 1)

end A165906

/-! ## A165906.P12842852635521540333

`ceil(A007504(n+1)/(A052147(n+1)-2))`
-/

namespace A165906.P12842852635521540333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007504 (n + 1) : ℚ) / (A052147 (n + 1) - 2 : ℚ)⌉

end

end A165906.P12842852635521540333

namespace A165906

/-- `ceil(A007504(n+1)/(A052147(n+1)-2))` -/
def P12842852635521540333.Spec : Prop :=
  ∀ n, P12842852635521540333.a n = A165906 (n + 1)

end A165906

/-! ## A165906.P18034921265484759856

`ceil(A007504(n+1)/A008578(n+2))`
-/

namespace A165906.P18034921265484759856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007504 (n + 1) : ℚ) / (A008578 (n + 2) : ℚ)⌉

end

end A165906.P18034921265484759856

namespace A165906

/-- `ceil(A007504(n+1)/A008578(n+2))` -/
def P18034921265484759856.Spec : Prop :=
  ∀ n, P18034921265484759856.a n = A165906 (n + 1)

end A165906

/-! ## A165906.P8723166363905412346

`ceil(∑[A112773(n+2)]/A112773(n+2))`
-/

namespace A165906.P8723166363905412346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A112773 (n + 2) : ℚ)⌉

end

end A165906.P8723166363905412346

namespace A165906

/-- `ceil(∑[A112773(n+2)]/A112773(n+2))` -/
def P8723166363905412346.Spec : Prop :=
  ∀ n, P8723166363905412346.a n = A165906 (n + 1)

end A165906

/-!
# A165907: Minimal m for packing the first n primes in a prime(n) X m rectangle.

The programs for A165907, there is no canonical definition to state claims against.
-/

/-! ## A165907.P12099839341025606259

`ceil(sqrt(∑[(∏{p}[n, #]+1)/2]))`
-/

namespace A165907.P12099839341025606259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p + 1 : ℕ) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ)⌉

end

end A165907.P12099839341025606259

/-! ## A165907.P5665233668222173969

`∑[abs(floor(cos(n*(n+1)²)))]`
-/

namespace A165907.P5665233668222173969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊Real.cos (n * (n + 1) ^ 2 : ℝ)⌋|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165907.P5665233668222173969

/-! ## A165907.P636485232539629574

`∑[floor(cos(n*(n+1)²))²]`
-/

namespace A165907.P636485232539629574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (n * (n + 1) ^ 2 : ℝ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165907.P636485232539629574

/-! ## A165907.P11095148653452960868

`ceil(2*∑[C(∏{p}[n, #], n)]/3)`
-/

namespace A165907.P11095148653452960868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), p) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3)⌉

end

end A165907.P11095148653452960868

/-! ## A165907.P4228347593692603590

`∑[A219180(xor(7, n))]`
-/

namespace A165907.P4228347593692603590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219180 (Nat.xor 7 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165907.P4228347593692603590

/-!
# A165909: a(n) is the sum of the quadratic residues of n.

The programs for A165909, there is no canonical definition to state claims against.
-/

/-! ## A165909.P5175527090522296816

`∑[n]-A165898(n+1)`
-/

namespace A165909.P5175527090522296816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A165898 (n + 1)

end

end A165909.P5175527090522296816

/-! ## A165909.P7051910881154672220

`A165923(n+1)+A165914(n+1)`
-/

namespace A165909.P7051910881154672220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165923 (n + 1) + A165914 (n + 1)

end

end A165909.P7051910881154672220

/-! ## A165909.P3320347182765035046

`A000124(n)-(A165898(n+1)+1)`
-/

namespace A165909.P3320347182765035046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A165898 (n + 1) + 1)

end

end A165909.P3320347182765035046

/-! ## A165909.P3547038378466094030

`∑[n]-(A165926(n+1)+A165917(n+1))`
-/

namespace A165909.P3547038378466094030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A165926 (n + 1) + A165917 (n + 1))

end

end A165909.P3547038378466094030

/-! ## A165909.P7815766551786882850

`A000217(n+1)%(A165898(n+1)+n+1)`
-/

namespace A165909.P7815766551786882850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 1)) (A165898 (n + 1) + (n + 1 : ℤ))

end

end A165909.P7815766551786882850

/-! ## A165909.P2060250531895852483

`A002620(n+1)-(A165898(n+1)-A002620(n))`
-/

namespace A165909.P2060250531895852483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) - (A165898 (n + 1) - A002620 n)

end

end A165909.P2060250531895852483

/-! ## A165909.P219785096799692165

`(A255644(n+1)+∑[n])/2`
-/

namespace A165909.P219785096799692165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255644 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2

end

end A165909.P219785096799692165

/-!
# A165910: Wiener indices of Fibonacci trees of order k.

The programs for A165910, there is no canonical definition to state claims against.
-/

/-! ## A165910.P4977386179195884393

`A099448(n)-A001065(A335817(n+1))`
-/

namespace A165910.P4977386179195884393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099448 n - A001065 (A335817 (n + 1)).toNat

end

end A165910.P4977386179195884393

/-!
# A165911: a(n) = squarefree kernel (or radical) of a(n-1) + a(n-2), with a(0)=0 and a(1)=1.

The programs for A165911, the canonical program `A165911.P1319005992793890420` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165911 has offset 0).

The definition of A165911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165911.P1319005992793890420

`A121369(n+1)-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A165911

/-- `A121369(n+1)-a(n-1)` -/
def P1319005992793890420.Spec : Prop :=
  ∀ n, P1319005992793890420.a n = A165911 n

theorem P1319005992793890420.correct : P1319005992793890420.Spec := by
  intro n
  simp only [A165911]

end A165911

/-! ## A165911.P10527928519920307484

`A007947(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A165911.P10527928519920307484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A007947 (a (n - 1) + a (n - 2)).toNat

end

end A165911.P10527928519920307484

namespace A165911

/-- `A007947(a(n-1)+a(n-2))` -/
def P10527928519920307484.Spec : Prop :=
  ∀ n, P10527928519920307484.a n = A165911 n

end A165911

/-! ## A165911.P3380286397298537148

`A007947(a(n-1)-floor(-a(n-2)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A165911.P3380286397298537148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A007947 (a (n - 1) - (-a (n - 2))).toNat

end

end A165911.P3380286397298537148

namespace A165911

/-- `A007947(a(n-1)-floor(-a(n-2)))` -/
def P3380286397298537148.Spec : Prop :=
  ∀ n, P3380286397298537148.a n = A165911 n

end A165911

/-! ## A165911.P9275222283066977212

`A007947(a(n-1)-ceil(-a(n-2)))` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A165911.P9275222283066977212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A007947 (a (n - 1) - (-a (n - 2))).toNat

end

end A165911.P9275222283066977212

namespace A165911

/-- `A007947(a(n-1)-ceil(-a(n-2)))` -/
def P9275222283066977212.Spec : Prop :=
  ∀ n, P9275222283066977212.a n = A165911 n

end A165911

/-! ## A165911.P3029849473735367509

`A007947(a(n-1)-round(-a(n-2)))` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A165911.P3029849473735367509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A007947 (a (n - 1) - (-a (n - 2))).toNat

end

end A165911.P3029849473735367509

namespace A165911

/-- `A007947(a(n-1)-round(-a(n-2)))` -/
def P3029849473735367509.Spec : Prop :=
  ∀ n, P3029849473735367509.a n = A165911 n

end A165911

/-! ## A165911.P9304147899733159954

`A007947(a(n-1)-(char[1]-a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A165911.P9304147899733159954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A007947 (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))).toNat

end

end A165911.P9304147899733159954

namespace A165911

/-- `A007947(a(n-1)-(char[1]-a(n-2)))` -/
def P9304147899733159954.Spec : Prop :=
  ∀ n, P9304147899733159954.a n = A165911 n

end A165911

/-! ## A165911.P2921152463876657450

`A007947(1-floor(1-a(n-1)-a(n-2)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A165911.P2921152463876657450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A007947 (1 - (1 - a (n - 1) - a (n - 2))).toNat

end

end A165911.P2921152463876657450

namespace A165911

/-- `A007947(1-floor(1-a(n-1)-a(n-2)))` -/
def P2921152463876657450.Spec : Prop :=
  ∀ n, P2921152463876657450.a n = A165911 n

end A165911

/-!
# A165912: Number of alternating polynomials of degree 3n in GF(2)[X], n>0.

The programs for A165912, there is no canonical definition to state claims against.
-/

/-! ## A165912.P297165363188814365

`2*A165920(n+1)`
-/

namespace A165912.P297165363188814365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A165920 (n + 1)

end

end A165912.P297165363188814365

/-! ## A165912.P6544689637240289492

`A165920(∑[n+1]-∑[n])+A165920(n+1)`
-/

namespace A165912.P6544689637240289492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165920 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j) + A165920 (n + 1)

end

end A165912.P6544689637240289492

/-! ## A165912.P10222076418095215118

`and(A165920(n+1)+A165920(n+1), A000918(n+2)+1)`
-/

namespace A165912.P10222076418095215118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A165920 (n + 1) + A165920 (n + 1)) (A000918 (n + 2) + 1)

end

end A165912.P10222076418095215118

/-! ## A165912.P6791416527668143436

`A165920(n+1)+A165920(n+1)%A119635(n+1)`
-/

namespace A165912.P6791416527668143436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165920 (n + 1) + Int.tmod (A165920 (n + 1)) (A119635 (n + 1))

end

end A165912.P6791416527668143436

/-! ## A165912.P4733142809396191342

`A165920(n+1)+A165920(n+1)%A042838(n)`
-/

namespace A165912.P4733142809396191342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165920 (n + 1) + Int.tmod (A165920 (n + 1)) (A042838 n)

end

end A165912.P4733142809396191342

/-! ## A165912.P13623018458036011371

`A165920(n+1)+A165920(n+1)/A007318(∑[n+1])`
-/

namespace A165912.P13623018458036011371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165920 (n + 1) : ℚ) + (A165920 (n + 1) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A165912.P13623018458036011371

/-! ## A165912.P8108929477379763831

`A165920(n+1)+A165920(n+1)/A329379(A176983(n+5))`
-/

namespace A165912.P8108929477379763831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165920 (n + 1) : ℚ) + (A165920 (n + 1) : ℚ) / (A329379 (A176983 (n + 5)).toNat : ℚ)

end

end A165912.P8108929477379763831

/-!
# A165913: Irregular triangle read by rows: Squarefree nonzero quadratic residues.

The programs for A165913, there is no canonical definition to state claims against.
-/

/-! ## A165913.P3337487184173146754

`filter[A046071(n+2), A008966(#)]`
-/

namespace A165913.P3337487184173146754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A165913.P3337487184173146754

/-! ## A165913.P2313268577114716821

`gcd(A001611(n), A173721(A128209(n)))`
-/

namespace A165913.P2313268577114716821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001611 n) (A173721 (A128209 n).toNat)

end

end A165913.P2313268577114716821

/-! ## A165913.P13093898154569810709

`A222616(A048723(3*n+2))%A155043(2*n+3)`
-/

namespace A165913.P13093898154569810709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222616 (A048723 (3 * n + 2)).toNat) (A155043 (2 * n + 3))

end

end A165913.P13093898154569810709

/-!
# A165914: a(n) = sum of the squarefree quadratic residues of n.

The programs for A165914, there is no canonical definition to state claims against.
-/

/-! ## A165914.P2814110436116954237

`A165909(n+1)-A165923(n+1)`
-/

namespace A165914.P2814110436116954237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (n + 1) - A165923 (n + 1)

end

end A165914.P2814110436116954237

/-! ## A165914.P15885513545508159217

`∑[n]-(A165923(n+1)+A165898(n+1))`
-/

namespace A165914.P15885513545508159217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A165923 (n + 1) + A165898 (n + 1))

end

end A165914.P15885513545508159217

/-! ## A165914.P1678923769214951319

`A000217(n)-A165898(n+1)-A165923(n+1)`
-/

namespace A165914.P1678923769214951319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A165898 (n + 1) - A165923 (n + 1)

end

end A165914.P1678923769214951319

/-! ## A165914.P4537040865748471986

`A000124(n)-(A165898(n+1)+1)-A165923(n+1)`
-/

namespace A165914.P4537040865748471986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A165898 (n + 1) + 1) - A165923 (n + 1)

end

end A165914.P4537040865748471986

/-! ## A165914.P7317574909852549375

`A002620(n+1)-(A165898(n+1)-A002620(n))-A165923(n+1)`
-/

namespace A165914.P7317574909852549375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) - (A165898 (n + 1) - A002620 n) - A165923 (n + 1)

end

end A165914.P7317574909852549375

/-! ## A165914.P10518049889216832679

`A165909(A000027(n+1))+A001489(A165923(n+1))`
-/

namespace A165914.P10518049889216832679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (A000027 (n + 1)).toNat + A001489 (A165923 (n + 1)).toNat

end

end A165914.P10518049889216832679

/-! ## A165914.P2571662121076859831

`(A255644(n+1)+∑[n])/2-A165923(n+1)`
-/

namespace A165914.P2571662121076859831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255644 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2 - (A165923 (n + 1) : ℚ)

end

end A165914.P2571662121076859831

/-! ## A165914.P16970891698601633426

`A165898(n+1)+A255644(n+1)-A165923(n+1)`
-/

namespace A165914.P16970891698601633426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165898 (n + 1) + (A255644 (n + 1) - A165923 (n + 1))

end

end A165914.P16970891698601633426

/-!
# A165915: a(n) = number of squarefree nonzero quadratic residues of n.

The programs for A165915, there is no canonical definition to state claims against.
-/

/-! ## A165915.P7163382624096483725

`A013928(n+1)-A165918(n+1)`
-/

namespace A165915.P7163382624096483725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) - A165918 (n + 1)

end

end A165915.P7163382624096483725

/-! ## A165915.P6024001689400770918

`A105612(n+1)-A165924(n+1)`
-/

namespace A165915.P6024001689400770918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1) - A165924 (n + 1)

end

end A165915.P6024001689400770918

/-! ## A165915.P10522636133774425455

`A000224(n+1)-(A165924(n+1)+1)`
-/

namespace A165915.P10522636133774425455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (n + 1) - (A165924 (n + 1) + 1)

end

end A165915.P10522636133774425455

/-! ## A165915.P15509646063234787249

`n-(A165924(n+1)+A095972(n+1))`
-/

namespace A165915.P15509646063234787249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A165924 (n + 1) + A095972 (n + 1))

end

end A165915.P15509646063234787249

/-! ## A165915.P7349914638495495629

`A262869(A005408(n))-A165918(n+1)`
-/

namespace A165915.P7349914638495495629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (A005408 n).toNat - A165918 (n + 1)

end

end A165915.P7349914638495495629

/-! ## A165915.P5454003641102426127

`A023443(A000224(n+1)-A165924(n+1))`
-/

namespace A165915.P5454003641102426127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A000224 (n + 1) - A165924 (n + 1)).toNat

end

end A165915.P5454003641102426127

/-!
# A165916: Irregular triangle read by rows: squarefree quadratic non-residues.

The programs for A165916, there is no canonical definition to state claims against.
-/

/-! ## A165916.P11654760076528460564

`filter[A096013(n+3), A008966(#)]`
-/

namespace A165916.P11654760076528460564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096013 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A165916.P11654760076528460564

/-! ## A165916.P1131324102065051145

`A096013(n+3)%A096582(A273734(n))`
-/

namespace A165916.P1131324102065051145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096013 (n + 3)) (A096582 (A273734 n).toNat)

end

end A165916.P1131324102065051145

/-! ## A165916.P6309293064948485854

`A007913(A096013(n+3))%A115739(n+1)`
-/

namespace A165916.P6309293064948485854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007913 (A096013 (n + 3)).toNat) (A115739 (n + 1))

end

end A165916.P6309293064948485854

/-! ## A165916.P4181522195207265563

`gcd(A096013(n+3), A206042(A316576(n+3)))`
-/

namespace A165916.P4181522195207265563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A096013 (n + 3)) (A206042 (A316576 (n + 3)).toNat)

end

end A165916.P4181522195207265563

/-!
# A165917: a(n) = sum of the squarefree quadratic non-residues of n.

The programs for A165917, there is no canonical definition to state claims against.
-/

/-! ## A165917.P8429319469872123682

`A165898(n+1)-A165926(n+1)`
-/

namespace A165917.P8429319469872123682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165898 (n + 1) - A165926 (n + 1)

end

end A165917.P8429319469872123682

/-! ## A165917.P18320687046314460929

`∑[n]-(A165926(n+1)+A165909(n+1))`
-/

namespace A165917.P18320687046314460929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A165926 (n + 1) + A165909 (n + 1))

end

end A165917.P18320687046314460929

/-! ## A165917.P13145556651533688577

`A000217(n)-A165909(n+1)-A165926(n+1)`
-/

namespace A165917.P13145556651533688577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A165909 (n + 1) - A165926 (n + 1)

end

end A165917.P13145556651533688577

/-! ## A165917.P9527367311739711134

`A000124(n)-(A165909(n+1)+1)-A165926(n+1)`
-/

namespace A165917.P9527367311739711134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A165909 (n + 1) + 1) - A165926 (n + 1)

end

end A165917.P9527367311739711134

/-! ## A165917.P5620509088878086885

`Δ[A000292(n)]-(A165909(n+1)+n+1)-A165926(n+1)`
-/

namespace A165917.P5620509088878086885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A165909 (n + 1) + (n + 1 : ℤ)) - A165926 (n + 1)

end

end A165917.P5620509088878086885

/-! ## A165917.P12800616784353882388

`A165898(A000027(n+1))+A001489(A165926(n+1))`
-/

namespace A165917.P12800616784353882388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165898 (A000027 (n + 1)).toNat + A001489 (A165926 (n + 1)).toNat

end

end A165917.P12800616784353882388

/-! ## A165917.P17126332257583049493

`A165909(n+1)-(A255644(n+1)+A165926(n+1))`
-/

namespace A165917.P17126332257583049493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (n + 1) - (A255644 (n + 1) + A165926 (n + 1))

end

end A165917.P17126332257583049493

/-!
# A165918: a(n) = number of squarefree quadratic non-residues of n.

The programs for A165918, there is no canonical definition to state claims against.
-/

/-! ## A165918.P15120109693191150346

`A013928(n+1)-A165915(n+1)`
-/

namespace A165918.P15120109693191150346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) - A165915 (n + 1)

end

end A165918.P15120109693191150346

/-! ## A165918.P8548054349265469591

`A095972(n+1)-A165927(n+1)`
-/

namespace A165918.P8548054349265469591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095972 (n + 1) - A165927 (n + 1)

end

end A165918.P8548054349265469591

/-! ## A165918.P2222229347695836093

`A107079(n+1)-(A165915(n+1)+1)`
-/

namespace A165918.P2222229347695836093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (n + 1) - (A165915 (n + 1) + 1)

end

end A165918.P2222229347695836093

/-! ## A165918.P17930670037814714275

`n+1-(A165927(n+1)+A000224(n+1))`
-/

namespace A165918.P17930670037814714275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A165927 (n + 1) + A000224 (n + 1))

end

end A165918.P17930670037814714275

/-! ## A165918.P8928283023180891303

`A262869(A005408(n))-A165915(n+1)`
-/

namespace A165918.P8928283023180891303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262869 (A005408 n).toNat - A165915 (n + 1)

end

end A165918.P8928283023180891303

/-!
# A165919: Irregular triangle read by rows: square-full nonzero quadratic residues mod n.

The programs for A165919, there is no canonical definition to state claims against.
-/

/-! ## A165919.P16492995170634310686

`filter[A046071(n+2), A107078(#)]`
-/

namespace A165919.P16492995170634310686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A165919.P16492995170634310686

/-! ## A165919.P2432192147074876373

`A194987(lt[A194987(n+1), A194917(n+1)]+1)`
-/

namespace A165919.P2432192147074876373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194987 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A165919.P2432192147074876373

/-! ## A165919.P5607306717468161927

`A059269(A001227(A000010(n+1)^A001511(n+1)))`
-/

namespace A165919.P5607306717468161927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059269 (A001227 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) ^ (A001511 (n + 1) : ℤ))).toNat).toNat

end

end A165919.P5607306717468161927

/-!
# A165920: Number of 2-elements orbits of S3 action on irreducible polynomials of degree 3n, n > 0, over GF(2).

The programs for A165920, there is no canonical definition to state claims against.
-/

/-! ## A165920.P3022118159483887743

`A165912(n+1)/2`
-/

namespace A165920.P3022118159483887743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165912 (n + 1) : ℚ) / 2

end

end A165920.P3022118159483887743

/-! ## A165920.P14091726617872179745

`A014682(A165912(n+1))`
-/

namespace A165920.P14091726617872179745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A165912 (n + 1)).toNat

end

end A165920.P14091726617872179745

/-! ## A165920.P5848445247368404628

`A273943(lcm(2, A165912(n+1)))`
-/

namespace A165920.P5848445247368404628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A165912 (n + 1)))

end

end A165920.P5848445247368404628

/-! ## A165920.P7516194000732964389

`A273943(A165912(n+1)-A000007(n))`
-/

namespace A165920.P7516194000732964389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A165912 (n + 1) - A000007 n).toNat

end

end A165920.P7516194000732964389

/-! ## A165920.P13198802881943916975

`A273943(or(A000038(n), A165912(n+1)))`
-/

namespace A165920.P13198802881943916975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lor (A000038 n) (A165912 (n + 1))).toNat

end

end A165920.P13198802881943916975

/-!
# A165921: Number of 6-elements orbits of S3 action on irreducible polynomials of degree n > 1 over GF(2).

The programs for A165921, there is no canonical definition to state claims against.
-/

/-! ## A165921.P4798625719782920392

`A051841(n+2)-A165920(n+2)`
-/

namespace A165921.P4798625719782920392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051841 (n + 2) - A165920 (n + 2)

end

end A165921.P4798625719782920392

/-! ## A165921.P14296241362616707316

`A042979(n+2)+A042980(n+2)-A165920(n+2)`
-/

namespace A165921.P14296241362616707316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042979 (n + 2) + (A042980 (n + 2) - A165920 (n + 2))

end

end A165921.P14296241362616707316

/-! ## A165921.P1988784273749180479

`A008612(A321413(n)+A130709(n))`
-/

namespace A165921.P1988784273749180479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A321413 n + A130709 n).toNat

end

end A165921.P1988784273749180479

/-! ## A165921.P13292695135543679720

`A131617(A088518(n))`
-/

namespace A165921.P13292695135543679720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131617 (A088518 n).toNat

end

end A165921.P13292695135543679720

/-! ## A165921.P8119377792778016776

`A109401(A304867(n+1))`
-/

namespace A165921.P8119377792778016776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109401 (A304867 (n + 1)).toNat

end

end A165921.P8119377792778016776

/-!
# A165923: a(n) = sum of the square-full quadratic residues of n.

The programs for A165923, there is no canonical definition to state claims against.
-/

/-! ## A165923.P6706871603975195088

`∑[A105570(n)]-A165926(n+1)`
-/

namespace A165923.P6706871603975195088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A165926 (n + 1)

end

end A165923.P6706871603975195088

/-! ## A165923.P593749991819699062

`A165909(n+1)-A165914(n+1)`
-/

namespace A165923.P593749991819699062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (n + 1) - A165914 (n + 1)

end

end A165923.P593749991819699062

/-! ## A165923.P16582603768992091935

`A000217(n)-(A165914(n+1)+A165898(n+1))`
-/

namespace A165923.P16582603768992091935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - (A165914 (n + 1) + A165898 (n + 1))

end

end A165923.P16582603768992091935

/-! ## A165923.P3463552192465083470

`A000124(n)-(A165898(n+1)+1)-A165914(n+1)`
-/

namespace A165923.P3463552192465083470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A165898 (n + 1) + 1) - A165914 (n + 1)

end

end A165923.P3463552192465083470

/-! ## A165923.P13977141142296148649

`A165909(A000027(n+1))+A001489(A165914(n+1))`
-/

namespace A165923.P13977141142296148649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (A000027 (n + 1)).toNat + A001489 (A165914 (n + 1)).toNat

end

end A165923.P13977141142296148649

/-! ## A165923.P10559287755547844235

`A165898(n+1)+A255644(n+1)-A165914(n+1)`
-/

namespace A165923.P10559287755547844235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165898 (n + 1) + (A255644 (n + 1) - A165914 (n + 1))

end

end A165923.P10559287755547844235

/-!
# A165924: a(n) = number of squareful nonzero quadratic residues of n.

The programs for A165924, there is no canonical definition to state claims against.
-/

/-! ## A165924.P17418748099265545085

`A105612(n+1)-A165915(n+1)`
-/

namespace A165924.P17418748099265545085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (n + 1) - A165915 (n + 1)

end

end A165924.P17418748099265545085

/-! ## A165924.P6587116317275079941

`A000224(n+1)-(A165915(n+1)+1)`
-/

namespace A165924.P6587116317275079941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (n + 1) - (A165915 (n + 1) + 1)

end

end A165924.P6587116317275079941

/-! ## A165924.P16080813779147619503

`n-(A165927(n+1)+A013928(n+1))`
-/

namespace A165924.P16080813779147619503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A165927 (n + 1) + A013928 (n + 1))

end

end A165924.P16080813779147619503

/-! ## A165924.P8987533972073547686

`n-(A165915(n+1)+A095972(n+1))`
-/

namespace A165924.P8987533972073547686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A165915 (n + 1) + A095972 (n + 1))

end

end A165924.P8987533972073547686

/-! ## A165924.P13877637623322853938

`A023443(A000224(n+1)-A165915(n+1))`
-/

namespace A165924.P13877637623322853938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A000224 (n + 1) - A165915 (n + 1)).toNat

end

end A165924.P13877637623322853938

/-! ## A165924.P4344588814722782392

`A105612(A000027(n+1))+A001489(A165915(n+1))`
-/

namespace A165924.P4344588814722782392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105612 (A000027 (n + 1)).toNat + A001489 (A165915 (n + 1)).toNat

end

end A165924.P4344588814722782392

/-!
# A165925: Irregular triangle read by rows: square-full quadratic non-residues.

The programs for A165925, there is no canonical definition to state claims against.
-/

/-! ## A165925.P3814936944103410113

`4*A010693(A036643(n))`
-/

namespace A165925.P3814936944103410113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A010693 (A036643 n).toNat

end

end A165925.P3814936944103410113

/-! ## A165925.P12564549379609139351

`4*A022922(A166249(n))`
-/

namespace A165925.P12564549379609139351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A022922 (A166249 n).toNat

end

end A165925.P12564549379609139351

/-! ## A165925.P9369669147909212794

`4*p?[A094587(A004070(n))]`
-/

namespace A165925.P9369669147909212794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A004070 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165925.P9369669147909212794

/-! ## A165925.P13238097818679580211

`A008574(p?[A094587(A004070(n))])`
-/

namespace A165925.P13238097818679580211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (A004070 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A165925.P13238097818679580211

/-!
# A165926: a(n) = sum of the square-full quadratic non-residues of n.

The programs for A165926, there is no canonical definition to state claims against.
-/

/-! ## A165926.P12851911869615258383

`∑[A105570(n)]-A165923(n+1)`
-/

namespace A165926.P12851911869615258383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A165923 (n + 1)

end

end A165926.P12851911869615258383

/-! ## A165926.P17262415691554251858

`A165898(n+1)-A165917(n+1)`
-/

namespace A165926.P17262415691554251858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165898 (n + 1) - A165917 (n + 1)

end

end A165926.P17262415691554251858

/-! ## A165926.P1047541623303272027

`∑[n]-A165909(n+1)-A165917(n+1)`
-/

namespace A165926.P1047541623303272027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A165909 (n + 1) - A165917 (n + 1)

end

end A165926.P1047541623303272027

/-! ## A165926.P10849382092364177255

`A000217(n)-(A165917(n+1)+A165909(n+1))`
-/

namespace A165926.P10849382092364177255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - (A165917 (n + 1) + A165909 (n + 1))

end

end A165926.P10849382092364177255

/-! ## A165926.P5228962510316317017

`A000124(n)-(A165909(n+1)+1)-A165917(n+1)`
-/

namespace A165926.P5228962510316317017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A165909 (n + 1) + 1) - A165917 (n + 1)

end

end A165926.P5228962510316317017

/-! ## A165926.P16542551356145453957

`Δ[A000292(n)]-(A165909(n+1)+n+1)-A165917(n+1)`
-/

namespace A165926.P16542551356145453957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A165909 (n + 1) + (n + 1 : ℤ)) - A165917 (n + 1)

end

end A165926.P16542551356145453957

/-! ## A165926.P10260350740244955634

`A165898(A000027(n+1))+A001489(A165917(n+1))`
-/

namespace A165926.P10260350740244955634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165898 (A000027 (n + 1)).toNat + A001489 (A165917 (n + 1)).toNat

end

end A165926.P10260350740244955634

/-! ## A165926.P16309167469320315948

`A165909(n+1)-(A255644(n+1)+A165917(n+1))`
-/

namespace A165926.P16309167469320315948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165909 (n + 1) - (A255644 (n + 1) + A165917 (n + 1))

end

end A165926.P16309167469320315948

/-!
# A165927: a(n) = number of square-full quadratic non-residues of n.

The programs for A165927, there is no canonical definition to state claims against.
-/

/-! ## A165927.P4317832751695469567

`A095972(n+1)-A165918(n+1)`
-/

namespace A165927.P4317832751695469567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095972 (n + 1) - A165918 (n + 1)

end

end A165927.P4317832751695469567

/-! ## A165927.P11439725070332316365

`n-(A165924(n+1)+A013928(n+1))`
-/

namespace A165927.P11439725070332316365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A165924 (n + 1) + A013928 (n + 1))

end

end A165927.P11439725070332316365

/-! ## A165927.P16602281233243446795

`n-(A165918(n+1)+A105612(n+1))`
-/

namespace A165927.P16602281233243446795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A165918 (n + 1) + A105612 (n + 1))

end

end A165927.P16602281233243446795

/-! ## A165927.P13753167517849043242

`n+1-(A165918(n+1)+A000224(n+1))`
-/

namespace A165927.P13753167517849043242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A165918 (n + 1) + A000224 (n + 1))

end

end A165927.P13753167517849043242

/-! ## A165927.P5801358474092975663

`A095972(n+1)+A165915(n+1)-A013928(n+1)`
-/

namespace A165927.P5801358474092975663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095972 (n + 1) + (A165915 (n + 1) - A013928 (n + 1))

end

end A165927.P5801358474092975663

/-! ## A165927.P895767808635973413

`A000027(n+1)%(A165918(n+1)+A000224(n+1))`
-/

namespace A165927.P895767808635973413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A165918 (n + 1) + A000224 (n + 1))

end

end A165927.P895767808635973413

/-!
# A165928: a(n) = 2^(n^2)*(2^(2n+1)/3 + 1/3).

The programs for A165928, the canonical program `A165928.P4459701991682730612` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165928 has offset 0).

The definition of A165928 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165928.P4459701991682730612

`2^n²*(2^(2*n+1)/3+1/3)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165928

/-- `2^n²*(2^(2*n+1)/3+1/3)` -/
def P4459701991682730612.Spec : Prop :=
  ∀ n, P4459701991682730612.a n = (A165928 n : ℚ)

end A165928

/-! ## A165928.P15254950160286466563

`abs(Δ[A084247(n²)])`
-/

namespace A165928.P15254950160286466563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084247 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A165928.P15254950160286466563

namespace A165928

/-- `abs(Δ[A084247(n²)])` -/
def P15254950160286466563.Spec : Prop :=
  ∀ n, P15254950160286466563.a n = A165928 n

end A165928

/-! ## A165928.P1519959600991410196

`abs(Δ[A140966(n²)])`
-/

namespace A165928.P1519959600991410196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140966 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A165928.P1519959600991410196

namespace A165928

/-- `abs(Δ[A140966(n²)])` -/
def P1519959600991410196.Spec : Prop :=
  ∀ n, P1519959600991410196.a n = A165928 n

end A165928

/-! ## A165928.P14157374994938641424

`abs(Δ[A151575(n²)])`
-/

namespace A165928.P14157374994938641424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A165928.P14157374994938641424

namespace A165928

/-- `abs(Δ[A151575(n²)])` -/
def P14157374994938641424.Spec : Prop :=
  ∀ n, P14157374994938641424.a n = A165928 n

end A165928

/-! ## A165928.P9067315103892769850

`abs(Δ[A171501(n²)])`
-/

namespace A165928.P9067315103892769850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171501 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A165928.P9067315103892769850

namespace A165928

/-- `abs(Δ[A171501(n²)])` -/
def P9067315103892769850.Spec : Prop :=
  ∀ n, P9067315103892769850.a n = A165928 n

end A165928

/-!
# A165929: a(1) = 1; for n > 1, a(n) = sigma(sum of the previous terms) where sigma(k) = sum of the divisors of k.

The programs for A165929, there is no canonical definition to state claims against.
-/

/-! ## A165929.P16390071173551317465

`Δ[A081973(A028310(n))]+C(2, n+2)`
-/

namespace A165929.P16390071173551317465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081973 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (Nat.choose 2 (n + 2) : ℤ)

end

end A165929.P16390071173551317465

/-! ## A165929.P17911356333115815130

`A000007(n)+Δ[A081973(A028310(n))]`
-/

namespace A165929.P17911356333115815130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081973 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A165929.P17911356333115815130

/-! ## A165929.P2540246318818873805

`Δ[A081973(A028310(n))+A057427(n)]`
-/

namespace A165929.P2540246318818873805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081973 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165929.P2540246318818873805

/-! ## A165929.P12016895036733648805

`A112316(n)+Δ[A081973(A028310(n))]`
-/

namespace A165929.P12016895036733648805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081973 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 n + (f1 (n + 1) - f1 n)

end

end A165929.P12016895036733648805

/-! ## A165929.P9666730422850934158

`Δ[A081973(A028310(n))+A000040(n+1)%2]`
-/

namespace A165929.P9666730422850934158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081973 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165929.P9666730422850934158

/-!
# A165930: a(1) = 1, for n > 1: a(n) = tau(sum of the previous terms) where tau(k) = number of the divisors of k.

The programs for A165930, the canonical program `A165930.P10363881907716294125` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165930 has offset 1).

The definition of A165930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165930.P10363881907716294125

`A028310(Δ[A064491(A028310(n))])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A165930

/-- `A028310(Δ[A064491(A028310(n))])` -/
def P10363881907716294125.Spec : Prop :=
  ∀ n, P10363881907716294125.a n = A165930 (n + 1)

theorem P10363881907716294125.correct : P10363881907716294125.Spec := by
  intro n
  simp only [A165930, Nat.add_sub_cancel]

end A165930

/-! ## A165930.P10815242258502760440

`A028310(A064491(n+1)-A064491(A028310(n)))`
-/

namespace A165930.P10815242258502760440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A064491 (n + 1) - A064491 (A028310 n).toNat).toNat

end

end A165930.P10815242258502760440

namespace A165930

/-- `A028310(A064491(n+1)-A064491(A028310(n)))` -/
def P10815242258502760440.Spec : Prop :=
  ∀ n, P10815242258502760440.a n = A165930 (n + 1)

end A165930

/-! ## A165930.P4849271545932280079

`Δ[A064491(A000007(n)+n)+A057427(n)]`
-/

namespace A165930.P4849271545932280079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064491 (A000007 n + (n : ℤ)).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165930.P4849271545932280079

namespace A165930

/-- `Δ[A064491(A000007(n)+n)+A057427(n)]` -/
def P4849271545932280079.Spec : Prop :=
  ∀ n, P4849271545932280079.a n = A165930 (n + 1)

end A165930

/-! ## A165930.P17283664848349657673

`Δ[A064491(A000007(n)+n)%A000124(n)]`
-/

namespace A165930.P17283664848349657673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064491 (A000007 n + (n : ℤ)).toNat) (A000124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165930.P17283664848349657673

namespace A165930

/-- `Δ[A064491(A000007(n)+n)%A000124(n)]` -/
def P17283664848349657673.Spec : Prop :=
  ∀ n, P17283664848349657673.a n = A165930 (n + 1)

end A165930

/-! ## A165930.P14558024727681854016

`A000005(A064491(A028310(n)))`
-/

namespace A165930.P14558024727681854016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A064491 (A028310 n).toNat).toNat

end

end A165930.P14558024727681854016

namespace A165930

/-- `A000005(A064491(A028310(n)))` -/
def P14558024727681854016.Spec : Prop :=
  ∀ n, P14558024727681854016.a n = A165930 (n + 1)

end A165930

/-! ## A165930.P12922837669044765770

`A000005(A064491(A000007(n)+n))`
-/

namespace A165930.P12922837669044765770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A064491 (A000007 n + (n : ℤ)).toNat).toNat

end

end A165930.P12922837669044765770

namespace A165930

/-- `A000005(A064491(A000007(n)+n))` -/
def P12922837669044765770.Spec : Prop :=
  ∀ n, P12922837669044765770.a n = A165930 (n + 1)

end A165930

/-! ## A165930.P6622313729132845352

`Δ[A064491(A065033(2*n))%A000125(n)]`
-/

namespace A165930.P6622313729132845352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064491 (A065033 (2 * n)).toNat) (A000125 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165930.P6622313729132845352

namespace A165930

/-- `Δ[A064491(A065033(2*n))%A000125(n)]` -/
def P6622313729132845352.Spec : Prop :=
  ∀ n, P6622313729132845352.a n = A165930 (n + 1)

end A165930

/-! ## A165930.P5456557145478613911

`Δ[A062249(a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A165930.P5456557145478613911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A062249 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165930.P5456557145478613911

namespace A165930

/-- `Δ[A062249(a(n-1))]` -/
def P5456557145478613911.Spec : Prop :=
  ∀ n, P5456557145478613911.a n = A165930 (n + 1)

end A165930

/-! ## A165930.P13033653502702514476

`Δ[a(n-1)+A032741(a(n-1))+1]` with `a(0)=0`
-/

namespace A165930.P13033653502702514476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + (A032741 (f1 (n - 1)).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165930.P13033653502702514476

namespace A165930

/-- `Δ[a(n-1)+A032741(a(n-1))+1]` -/
def P13033653502702514476.Spec : Prop :=
  ∀ n, P13033653502702514476.a n = A165930 (n + 1)

end A165930

/-!
# A165931: a(1) = 1, for n > 1: a(n) = phi(sum of the previous terms) where phi is Euler's totient function.

The programs for A165931, the canonical program `A165931.P14215265576820430206` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165931 has offset 1).

The definition of A165931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 450 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165931.P14215265576820430206

`Δ[A074693(A028310(n))]+C(2, n+2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A165931

/-- `Δ[A074693(A028310(n))]+C(2, n+2)` -/
def P14215265576820430206.Spec : Prop :=
  ∀ n, P14215265576820430206.a n = A165931 (n + 1)

theorem P14215265576820430206.correct : P14215265576820430206.Spec := by
  intro n
  simp only [A165931, Nat.add_sub_cancel]

end A165931

/-! ## A165931.P4042835386791812146

`A000007(n)+Δ[A074693(A028310(n))]`
-/

namespace A165931.P4042835386791812146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074693 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A165931.P4042835386791812146

namespace A165931

/-- `A000007(n)+Δ[A074693(A028310(n))]` -/
def P4042835386791812146.Spec : Prop :=
  ∀ n, P4042835386791812146.a n = A165931 (n + 1)

end A165931

/-! ## A165931.P15650230109656695153

`Δ[A074693(A028310(n))+A057427(n)]`
-/

namespace A165931.P15650230109656695153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074693 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165931.P15650230109656695153

namespace A165931

/-- `Δ[A074693(A028310(n))+A057427(n)]` -/
def P15650230109656695153.Spec : Prop :=
  ∀ n, P15650230109656695153.a n = A165931 (n + 1)

end A165931

/-! ## A165931.P2402201859805832616

`Δ[A074693(A028310(n))-A054977(n)]`
-/

namespace A165931.P2402201859805832616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074693 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165931.P2402201859805832616

namespace A165931

/-- `Δ[A074693(A028310(n))-A054977(n)]` -/
def P2402201859805832616.Spec : Prop :=
  ∀ n, P2402201859805832616.a n = A165931 (n + 1)

end A165931

/-! ## A165931.P3529375305836082170

`Δ[A074693(A028310(n))-A057428(n)]`
-/

namespace A165931.P3529375305836082170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074693 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165931.P3529375305836082170

namespace A165931

/-- `Δ[A074693(A028310(n))-A057428(n)]` -/
def P3529375305836082170.Spec : Prop :=
  ∀ n, P3529375305836082170.a n = A165931 (n + 1)

end A165931

/-! ## A165931.P13486384094067763121

`Δ[A074693(A028310(n))+A060576(n+1)]`
-/

namespace A165931.P13486384094067763121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074693 (A028310 n).toNat + A060576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165931.P13486384094067763121

namespace A165931

/-- `Δ[A074693(A028310(n))+A060576(n+1)]` -/
def P13486384094067763121.Spec : Prop :=
  ∀ n, P13486384094067763121.a n = A165931 (n + 1)

end A165931

/-! ## A165931.P14598703471620618090

`A074693(n+1)+A000007(n)-A074693(A028310(n))`
-/

namespace A165931.P14598703471620618090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074693 (n + 1) + (A000007 n - A074693 (A028310 n).toNat)

end

end A165931.P14598703471620618090

namespace A165931

/-- `A074693(n+1)+A000007(n)-A074693(A028310(n))` -/
def P14598703471620618090.Spec : Prop :=
  ∀ n, P14598703471620618090.a n = A165931 (n + 1)

end A165931

/-! ## A165931.P11869478047458570437

`A074693(n+1)+A057428(n)*A074693(A028310(n))`
-/

namespace A165931.P11869478047458570437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074693 (n + 1) + A057428 n * A074693 (A028310 n).toNat

end

end A165931.P11869478047458570437

namespace A165931

/-- `A074693(n+1)+A057428(n)*A074693(A028310(n))` -/
def P11869478047458570437.Spec : Prop :=
  ∀ n, P11869478047458570437.a n = A165931 (n + 1)

end A165931

/-! ## A165931.P14033980767124212365

`A054977(n)*A074693(n+1)-A074693(A028310(n))`
-/

namespace A165931.P14033980767124212365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A074693 (n + 1) - A074693 (A028310 n).toNat

end

end A165931.P14033980767124212365

namespace A165931

/-- `A054977(n)*A074693(n+1)-A074693(A028310(n))` -/
def P14033980767124212365.Spec : Prop :=
  ∀ n, P14033980767124212365.a n = A165931 (n + 1)

end A165931

/-! ## A165931.P16690794886450068863

`A074693(n+1)-A057427(n)*A074693(A028310(n))`
-/

namespace A165931.P16690794886450068863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074693 (n + 1) - A057427 n * A074693 (A028310 n).toNat

end

end A165931.P16690794886450068863

namespace A165931

/-- `A074693(n+1)-A057427(n)*A074693(A028310(n))` -/
def P16690794886450068863.Spec : Prop :=
  ∀ n, P16690794886450068863.a n = A165931 (n + 1)

end A165931

/-! ## A165931.P2177600429633588115

`Δ[A074693(A028310(n))%A000079(n)]`
-/

namespace A165931.P2177600429633588115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074693 (A028310 n).toNat) (A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165931.P2177600429633588115

namespace A165931

/-- `Δ[A074693(A028310(n))%A000079(n)]` -/
def P2177600429633588115.Spec : Prop :=
  ∀ n, P2177600429633588115.a n = A165931 (n + 1)

end A165931

/-!
# A165932: Positive integers N such that for some integer d => 2 this number is a d-digit palindrome base 10 as well as a d-digit palindrome for some base b different from 10.

The programs for A165932, there is no canonical definition to state claims against.
-/

/-! ## A165932.P6386241638115820841

`A325322(A062399(n)+3)`
-/

namespace A165932.P6386241638115820841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (A062399 n + 3).toNat

end

end A165932.P6386241638115820841

/-! ## A165932.P13643522848071862198

`A325322(A351870(n)+3)`
-/

namespace A165932.P13643522848071862198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (A351870 n + 3).toNat

end

end A165932.P13643522848071862198

/-! ## A165932.P4202053919516011043

`A032350(A062399(n)+6)`
-/

namespace A165932.P4202053919516011043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (A062399 n + 6).toNat

end

end A165932.P4202053919516011043

/-! ## A165932.P3500202948063478686

`A032350(A351870(n)+6)`
-/

namespace A165932.P3500202948063478686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (A351870 n + 6).toNat

end

end A165932.P3500202948063478686

/-! ## A165932.P6047064196414187580

`A353481(A010551(n))+A325322(n+3)`
-/

namespace A165932.P6047064196414187580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (A010551 n).toNat + A325322 (n + 3)

end

end A165932.P6047064196414187580

/-!
# A165933: Least integer, k, whose value is n in A165413.

The programs for A165933, there is no canonical definition to state claims against.
-/

/-! ## A165933.P9210709711775127597

`A175061(∑[n!])`
-/

namespace A165933.P9210709711775127597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175061 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165933.P9210709711775127597

/-! ## A165933.P13856583083790041445

`A161000(∑[n]+1)`
-/

namespace A165933.P13856583083790041445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161000 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A165933.P13856583083790041445

/-! ## A165933.P11024531205034450590

`record[A161000(n+1)]`
-/

namespace A165933.P11024531205034450590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165933.P11024531205034450590

/-! ## A165933.P6847461318690711701

`A175061(∑[A000142(n)])`
-/

namespace A165933.P6847461318690711701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175061 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A165933.P6847461318690711701

/-!
# A165935: a(n) = (-1)^(n-1)*n*(4n^2-5)^2.

The programs for A165935, the canonical program `A165935.P9005917101505347445` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165935 has offset 1).

The definition of A165935 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*(n+1)*(4*(n+1)²-5)²` (program `A165935.P9005917101505347445`, by `A165935.P9005917101505347445.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165935.P9005917101505347445

`(-1)^n*(n+1)*(4*(n+1)²-5)²`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165935

/-- `(-1)^n*(n+1)*(4*(n+1)²-5)²` -/
def P9005917101505347445.Spec : Prop :=
  ∀ n, P9005917101505347445.a n = A165935 (n + 1)

theorem P9005917101505347445.correct : P9005917101505347445.Spec := by
  intro n
  simp only [A165935, Nat.add_sub_cancel]

end A165935

/-! ## A165935.P13821159058006477141

`∑[A157142(n)^5]`
-/

namespace A165935.P13821159058006477141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 n ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165935.P13821159058006477141

namespace A165935

/-- `∑[A157142(n)^5]` -/
def P13821159058006477141.Spec : Prop :=
  ∀ n, P13821159058006477141.a n = A165935 (n + 1)

end A165935

/-!
# A165938: a(n) = A002203(n^2) for n>=1.

The programs for A165938, the canonical program `A165938.P16763498278609329602` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165938 has offset 1).

The definition of A165938 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A002203((n+1)²)` (program `A165938.P16763498278609329602`, by `A165938.P16763498278609329602.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A165938.P15148717834080367568

`(1+sqrt(2))^(n+1)²+(1-sqrt(2))^(n+1)²`
-/

namespace A165938.P15148717834080367568
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 + Real.sqrt (2 : ℝ)) ^ (n + 1) ^ 2 + (1 - Real.sqrt (2 : ℝ)) ^ (n + 1) ^ 2

end

end A165938.P15148717834080367568

namespace A165938

/-- `(1+sqrt(2))^(n+1)²+(1-sqrt(2))^(n+1)²` -/
def P15148717834080367568.Spec : Prop :=
  ∀ n, P15148717834080367568.a n = (A165938 (n + 1) : ℝ)

end A165938

/-! ## A165938.P16763498278609329602

`A002203((n+1)²)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A165938

/-- `A002203((n+1)²)` -/
def P16763498278609329602.Spec : Prop :=
  ∀ n, P16763498278609329602.a n = A165938 (n + 1)

theorem P16763498278609329602.correct : P16763498278609329602.Spec := by
  intro n
  simp only [A165938, Nat.add_sub_cancel]

end A165938

/-! ## A165938.P13454625525984237015

`A099425((n+1)²)`
-/

namespace A165938.P13454625525984237015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099425 ((n + 1) ^ 2)

end

end A165938.P13454625525984237015

namespace A165938

/-- `A099425((n+1)²)` -/
def P13454625525984237015.Spec : Prop :=
  ∀ n, P13454625525984237015.a n = A165938 (n + 1)

end A165938

/-! ## A165938.P16304834584222607107

`record[A099425((n-1)²)]`
-/

namespace A165938.P16304834584222607107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099425 (((n : ℤ) - 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165938.P16304834584222607107

namespace A165938

/-- `record[A099425((n-1)²)]` -/
def P16304834584222607107.Spec : Prop :=
  ∀ n, P16304834584222607107.a n = A165938 (n + 1)

end A165938

/-!
# A165940: G.f.: Sum_{n>=0} a(n)*x^n/2^(n^2+n) = exp( Sum_{n>=1} x^n/[n*2^(n^2)] ).

The programs for A165940, there is no canonical definition to state claims against.
-/

/-! ## A165940.P544325811092754037

`A074067(A060595(n+3))`
-/

namespace A165940.P544325811092754037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A060595 (n + 3)).toNat

end

end A165940.P544325811092754037

/-!
# A165943: a(n) = A061037(7*n+2).

The programs for A165943, the canonical program `A165943.P9933738983943013805` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165943 has offset 0).

The definition of A165943 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165943.P9933738983943013805

`A061037(7*n+2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A165943

/-- `A061037(7*n+2)` -/
def P9933738983943013805.Spec : Prop :=
  ∀ n, P9933738983943013805.a n = A165943 n

theorem P9933738983943013805.correct : P9933738983943013805.Spec := by
  intro n
  simp only [A165943]

end A165943

/-! ## A165943.P11481172836579135951

`A061037(A017005(n))%A001505(n)`
-/

namespace A165943.P11481172836579135951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061037 (A017005 n).toNat) (A001505 n)

end

end A165943.P11481172836579135951

namespace A165943

/-- `A061037(A017005(n))%A001505(n)` -/
def P11481172836579135951.Spec : Prop :=
  ∀ n, P11481172836579135951.a n = A165943 n

end A165943

/-! ## A165943.P16515113440477334179

`or(1-A035263(n+1), A061037(A017005(n)))`
-/

namespace A165943.P16515113440477334179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - A035263 (n + 1)) (A061037 (A017005 n).toNat)

end

end A165943.P16515113440477334179

namespace A165943

/-- `or(1-A035263(n+1), A061037(A017005(n)))` -/
def P16515113440477334179.Spec : Prop :=
  ∀ n, P16515113440477334179.a n = A165943 n

end A165943

/-! ## A165943.P15153405963818824903

`A239832(round(n/(n+1)))+A061037(A017005(n))`
-/

namespace A165943.P15153405963818824903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239832 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat + A061037 (A017005 n).toNat

end

end A165943.P15153405963818824903

namespace A165943

/-- `A239832(round(n/(n+1)))+A061037(A017005(n))` -/
def P15153405963818824903.Spec : Prop :=
  ∀ n, P15153405963818824903.a n = A165943 n

end A165943

/-! ## A165943.P979497610963404616

`A290342(round(n/(n+1)))+A061037(A017005(n))`
-/

namespace A165943.P979497610963404616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290342 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ))).toNat + A061037 (A017005 n).toNat

end

end A165943.P979497610963404616

namespace A165943

/-- `A290342(round(n/(n+1)))+A061037(A017005(n))` -/
def P979497610963404616.Spec : Prop :=
  ∀ n, P979497610963404616.a n = A165943 n

end A165943

/-! ## A165943.P13718740980533240881

`A247829(A249693(7*n+2))`
-/

namespace A165943.P13718740980533240881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247829 (A249693 (7 * n + 2)).toNat

end

end A165943.P13718740980533240881

namespace A165943

/-- `A247829(A249693(7*n+2))` -/
def P13718740980533240881.Spec : Prop :=
  ∀ n, P13718740980533240881.a n = A165943 n

end A165943

/-! ## A165943.P1850471125781192310

`A175628(2*(7*n+1))`
-/

namespace A165943.P1850471125781192310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175628 (2 * (7 * n + 1))

end

end A165943.P1850471125781192310

namespace A165943

/-- `A175628(2*(7*n+1))` -/
def P1850471125781192310.Spec : Prop :=
  ∀ n, P1850471125781192310.a n = A165943 n

end A165943

/-! ## A165943.P3861632051820604840

`A225948(2*(7*n+2))`
-/

namespace A165943.P3861632051820604840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225948 (2 * (7 * n + 2))

end

end A165943.P3861632051820604840

namespace A165943

/-- `A225948(2*(7*n+2))` -/
def P3861632051820604840.Spec : Prop :=
  ∀ n, P3861632051820604840.a n = A165943 n

end A165943

/-! ## A165943.P11413408430774282515

`A214297(A145979(7*n))`
-/

namespace A165943.P11413408430774282515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214297 (A145979 (7 * n)).toNat

end

end A165943.P11413408430774282515

namespace A165943

/-- `A214297(A145979(7*n))` -/
def P11413408430774282515.Spec : Prop :=
  ∀ n, P11413408430774282515.a n = A165943 n

end A165943

/-!
# A165944: Primes of the form p^2 +3p + 1, where p is also a prime.

The programs for A165944, there is no canonical definition to state claims against.
-/

/-! ## A165944.P2458702048355894991

`A153590(n+1)+A000203(A153590(n+1))²`
-/

namespace A165944.P2458702048355894991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153590 (n + 1) + A000203 (A153590 (n + 1)).toNat ^ 2

end

end A165944.P2458702048355894991

/-! ## A165944.P15781047442990035842

`A028387(A153590(n+1))`
-/

namespace A165944.P15781047442990035842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 (A153590 (n + 1)).toNat

end

end A165944.P15781047442990035842

/-! ## A165944.P13495825388102339742

`record[A108151(A000040(n+1))]`
-/

namespace A165944.P13495825388102339742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108151 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165944.P13495825388102339742

/-! ## A165944.P5511852100238098279

`record[A209188(A151800(n)+1)]`
-/

namespace A165944.P5511852100238098279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209188 (A151800 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165944.P5511852100238098279

/-! ## A165944.P18390606553917830098

`record[A108151(A006530(n+2))]`
-/

namespace A165944.P18390606553917830098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108151 (A006530 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165944.P18390606553917830098

/-! ## A165944.P5498644869365972783

`record[A108151(A014963(n+2))]`
-/

namespace A165944.P5498644869365972783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108151 (A014963 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165944.P5498644869365972783

/-! ## A165944.P8896627371122587152

`record[A108151(A020639(n+2))]`
-/

namespace A165944.P8896627371122587152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108151 (A020639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165944.P8896627371122587152

/-! ## A165944.P3643960878710381269

`A161550(A153590(n+1)+1)`
-/

namespace A165944.P3643960878710381269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161550 (A153590 (n + 1) + 1).toNat

end

end A165944.P3643960878710381269

/-! ## A165944.P9100743569981273028

`A165900(A153590(n+1)+2)`
-/

namespace A165944.P9100743569981273028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (A153590 (n + 1) + 2).toNat

end

end A165944.P9100743569981273028

/-! ## A165944.P14605566021004807133

`A161550(p?[A094210(n+1)]+1)`
-/

namespace A165944.P14605566021004807133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161550 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A165944.P14605566021004807133

/-! ## A165944.P18267061521649987834

`record[A356247(A000040(n+1)+2)]`
-/

namespace A165944.P18267061521649987834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356247 (A000040 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165944.P18267061521649987834

/-! ## A165944.P12486121820134345347

`A165900(p?[A094210(n+1)]+2)`
-/

namespace A165944.P12486121820134345347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165900 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2).toNat

end

end A165944.P12486121820134345347

/-! ## A165944.P272870907263401071

`record[A356247(A006530(n+2)+2)]`
-/

namespace A165944.P272870907263401071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356247 (A006530 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165944.P272870907263401071

/-! ## A165944.P14491766654746504529

`record[A356247(A020639(n+2)+2)]`
-/

namespace A165944.P14491766654746504529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356247 (A020639 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165944.P14491766654746504529

/-! ## A165944.P15138257110152974117

`A028552(p?[A045546(n+1)-1])+1`
-/

namespace A165944.P15138257110152974117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A165944.P15138257110152974117

/-! ## A165944.P9316211855824241964

`A161550(p?[A045546(n+1)-1]+1)`
-/

namespace A165944.P9316211855824241964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045546 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161550 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A165944.P9316211855824241964

/-! ## A165944.P3579545596100815816

`A028552(p?[A002328(n+1)-2])+1`
-/

namespace A165944.P3579545596100815816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A165944.P3579545596100815816

/-! ## A165944.P13122122682970617645

`A028552(p?[A089362(n+1)-4])+1`
-/

namespace A165944.P13122122682970617645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089362 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A165944.P13122122682970617645

/-! ## A165944.P7076099541777585050

`A028552(p?[floor(A088502(n+1)/2)-1])+1`
-/

namespace A165944.P7076099541777585050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088502 (n + 1) : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A165944.P7076099541777585050

/-! ## A165944.P15272683544699947295

`A028552(p?[A002327(n+1)%A045546(n+1)])+1`
-/

namespace A165944.P15272683544699947295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002327 (n + 1)) (A045546 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + 1

end

end A165944.P15272683544699947295

/-!
# A165946: Primes of the form p + (p-1)^3, where p is also prime.

The programs for A165946, there is no canonical definition to state claims against.
-/

/-! ## A165946.P2908319837450596350

`A071568(∩[A006093(n+1), A049407(n+1)])`
-/

namespace A165946.P2908319837450596350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071568 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A165946.P2908319837450596350

/-! ## A165946.P15806499731216510588

`p?[∑{p}[n+1, C(#, n)]+n^3]`
-/

namespace A165946.P15806499731216510588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n + n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A165946.P15806499731216510588

/-! ## A165946.P1245169117075100302

`p?[A171462(n+1)^3+1+n]`
-/

namespace A165946.P1245169117075100302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171462 (n + 1) ^ 3 + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165946.P1245169117075100302

/-! ## A165946.P18378724039988467670

`p?[C(A006530(n+1), n)+n^3]`
-/

namespace A165946.P18378724039988467670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n + n ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A165946.P18378724039988467670

/-!
# A165947: Primes of the form 2q + 3 where q is composite.

The programs for A165947, the canonical program `A165947.P15194943752302719736` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165947 has offset 1).

The definition of A165947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165947.P15194943752302719736

`p?[2*A002808(n+1)+3]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A165947

/-- `p?[2*A002808(n+1)+3]` -/
def P15194943752302719736.Spec : Prop :=
  ∀ n, P15194943752302719736.a n = A165947 (n + 1)

theorem P15194943752302719736.correct : P15194943752302719736.Spec := by
  intro n
  simp only [A165947, Nat.add_sub_cancel]

end A165947

/-! ## A165947.P6717011013672981647

`p?[2*A018252(n+2)+3]`
-/

namespace A165947.P6717011013672981647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A018252 (n + 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165947.P6717011013672981647

namespace A165947

/-- `p?[2*A018252(n+2)+3]` -/
def P6717011013672981647.Spec : Prop :=
  ∀ n, P6717011013672981647.a n = A165947 (n + 1)

end A165947

/-! ## A165947.P11760406666644205228

`record[A006530(2*A018252(n+2)+3)]`
-/

namespace A165947.P11760406666644205228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A018252 (n + 2) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165947.P11760406666644205228

namespace A165947

/-- `record[A006530(2*A018252(n+2)+3)]` -/
def P11760406666644205228.Spec : Prop :=
  ∀ n, P11760406666644205228.a n = A165947 (n + 1)

end A165947

/-! ## A165947.P11611393072835474063

`record[A001414(2*(A018252(n+2)+1)+1)]`
-/

namespace A165947.P11611393072835474063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (2 * (A018252 (n + 2) + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165947.P11611393072835474063

namespace A165947

/-- `record[A001414(2*(A018252(n+2)+1)+1)]` -/
def P11611393072835474063.Spec : Prop :=
  ∀ n, P11611393072835474063.a n = A165947 (n + 1)

end A165947

/-! ## A165947.P17814100734285992596

`p?[A018252(n+2)+A002808(n+1)+3]`
-/

namespace A165947.P17814100734285992596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) + (A002808 (n + 1) + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165947.P17814100734285992596

namespace A165947

/-- `p?[A018252(n+2)+A002808(n+1)+3]` -/
def P17814100734285992596.Spec : Prop :=
  ∀ n, P17814100734285992596.a n = A165947 (n + 1)

end A165947

/-! ## A165947.P16427249580840440455

`p?[2*A079696(n+1)+1]`
-/

namespace A165947.P16427249580840440455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079696 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165947.P16427249580840440455

namespace A165947

/-- `p?[2*A079696(n+1)+1]` -/
def P16427249580840440455.Spec : Prop :=
  ∀ n, P16427249580840440455.a n = A165947 (n + 1)

end A165947

/-! ## A165947.P15253521203499742072

`p?[2*A072668(n+1)+5]`
-/

namespace A165947.P15253521203499742072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072668 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165947.P15253521203499742072

namespace A165947

/-- `p?[2*A072668(n+1)+5]` -/
def P15253521203499742072.Spec : Prop :=
  ∀ n, P15253521203499742072.a n = A165947 (n + 1)

end A165947

/-! ## A165947.P14616986219037132215

`p?[2*(lt[A089026(n+1), n]+2)+1]`
-/

namespace A165947.P14616986219037132215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A165947.P14616986219037132215

namespace A165947

/-- `p?[2*(lt[A089026(n+1), n]+2)+1]` -/
def P14616986219037132215.Spec : Prop :=
  ∀ n, (P14616986219037132215.a n : ℤ) = A165947 (n + 1)

end A165947

/-! ## A165947.P15995782772624630110

`record[A076567(A018252(n+2))]`
-/

namespace A165947.P15995782772624630110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076567 (A018252 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165947.P15995782772624630110

namespace A165947

/-- `record[A076567(A018252(n+2))]` -/
def P15995782772624630110.Spec : Prop :=
  ∀ n, P15995782772624630110.a n = A165947 (n + 1)

end A165947

/-! ## A165947.P10297740645876234367

`record[A051417(A018252(n+2)+1)]`
-/

namespace A165947.P10297740645876234367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051417 (A018252 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165947.P10297740645876234367

namespace A165947

/-- `record[A051417(A018252(n+2)+1)]` -/
def P10297740645876234367.Spec : Prop :=
  ∀ n, P10297740645876234367.a n = A165947 (n + 1)

end A165947

/-! ## A165947.P14456690527247003817

`p?[A051445(A018252(n+2)+1)]`
-/

namespace A165947.P14456690527247003817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051445 (A018252 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165947.P14456690527247003817

namespace A165947

/-- `p?[A051445(A018252(n+2)+1)]` -/
def P14456690527247003817.Spec : Prop :=
  ∀ n, P14456690527247003817.a n = A165947 (n + 1)

end A165947

/-! ## A165947.P10572737801980598937

`record[A085090(A018252(n+2)+2)]`
-/

namespace A165947.P10572737801980598937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (A018252 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165947.P10572737801980598937

namespace A165947

/-- `record[A085090(A018252(n+2)+2)]` -/
def P10572737801980598937.Spec : Prop :=
  ∀ n, P10572737801980598937.a n = A165947 (n + 1)

end A165947

/-! ## A165947.P10671858284339438999

`p?[A126888(A018252(n+2)+1)]`
-/

namespace A165947.P10671858284339438999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126888 (A018252 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165947.P10671858284339438999

namespace A165947

/-- `p?[A126888(A018252(n+2)+1)]` -/
def P10671858284339438999.Spec : Prop :=
  ∀ n, P10671858284339438999.a n = A165947 (n + 1)

end A165947

/-! ## A165947.P7804416610236827252

`p?[A004273(A018252(n+2)+2)]`
-/

namespace A165947.P7804416610236827252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A018252 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165947.P7804416610236827252

namespace A165947

/-- `p?[A004273(A018252(n+2)+2)]` -/
def P7804416610236827252.Spec : Prop :=
  ∀ n, P7804416610236827252.a n = A165947 (n + 1)

end A165947

/-! ## A165947.P18373152706020413083

`p?[A004277(A018252(n+2)+2)-1]`
-/

namespace A165947.P18373152706020413083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A018252 (n + 2) + 2).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165947.P18373152706020413083

namespace A165947

/-- `p?[A004277(A018252(n+2)+2)-1]` -/
def P18373152706020413083.Spec : Prop :=
  ∀ n, P18373152706020413083.a n = A165947 (n + 1)

end A165947

/-! ## A165947.P13798383831206901724

`p?[A033942(n+1)+3]`
-/

namespace A165947.P13798383831206901724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165947.P13798383831206901724

namespace A165947

/-- `p?[A033942(n+1)+3]` -/
def P13798383831206901724.Spec : Prop :=
  ∀ n, P13798383831206901724.a n = A165947 (n + 1)

end A165947

/-! ## A165947.P16847358872136897868

`p?[A005408(A067747(2*(n+1))+1)]`
-/

namespace A165947.P16847358872136897868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A067747 (2 * (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165947.P16847358872136897868

namespace A165947

/-- `p?[A005408(A067747(2*(n+1))+1)]` -/
def P16847358872136897868.Spec : Prop :=
  ∀ n, P16847358872136897868.a n = A165947 (n + 1)

end A165947

/-! ## A165947.P3787346431274037367

`p?[A004442(2*A079696(n+1))]`
-/

namespace A165947.P3787346431274037367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A079696 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165947.P3787346431274037367

namespace A165947

/-- `p?[A004442(2*A079696(n+1))]` -/
def P3787346431274037367.Spec : Prop :=
  ∀ n, P3787346431274037367.a n = A165947 (n + 1)

end A165947

/-! ## A165947.P5999683492981456940

`record[A014963(2*A018252(n+2)+3)]`
-/

namespace A165947.P5999683492981456940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A018252 (n + 2) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165947.P5999683492981456940

namespace A165947

/-- `record[A014963(2*A018252(n+2)+3)]` -/
def P5999683492981456940.Spec : Prop :=
  ∀ n, P5999683492981456940.a n = A165947 (n + 1)

end A165947

/-! ## A165947.P13610618489629566647

`record[A093074(2*(A018252(n+2)+1)+1)]`
-/

namespace A165947.P13610618489629566647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (2 * (A018252 (n + 2) + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165947.P13610618489629566647

namespace A165947

/-- `record[A093074(2*(A018252(n+2)+1)+1)]` -/
def P13610618489629566647.Spec : Prop :=
  ∀ n, P13610618489629566647.a n = A165947 (n + 1)

end A165947

/-!
# A165949: a(n) = A027762(n)/A165734(n).

The programs for A165949, the canonical program `A165949.P17479391633647191962` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165949 has offset 1).

The definition of A165949 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027762, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165949.P17479391633647191962

`A027762(n+1)/A165734(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A165949

/-- `A027762(n+1)/A165734(n+1)` -/
def P17479391633647191962.Spec : Prop :=
  ∀ n, P17479391633647191962.a n = (A165949 (n + 1) : ℚ)

end A165949

/-! ## A165949.P2924747479319781086

`lcm(5, A002445(n+1))/30`
-/

namespace A165949.P2924747479319781086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 5 (A002445 (n + 1)) : ℚ) / 30

end

end A165949.P2924747479319781086

namespace A165949

/-- `lcm(5, A002445(n+1))/30` -/
def P2924747479319781086.Spec : Prop :=
  ∀ n, P2924747479319781086.a n = (A165949 (n + 1) : ℚ)

end A165949

/-! ## A165949.P10777246157657812574

`A277087(n+1)/A010700(n)`
-/

namespace A165949.P10777246157657812574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277087 (n + 1) : ℚ) / (A010700 n : ℚ)

end

end A165949.P10777246157657812574

namespace A165949

/-- `A277087(n+1)/A010700(n)` -/
def P10777246157657812574.Spec : Prop :=
  ∀ n, P10777246157657812574.a n = (A165949 (n + 1) : ℚ)

end A165949

/-! ## A165949.P18071532491200835446

`A002445(n+1)/A165734(n+1)`
-/

namespace A165949.P18071532491200835446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002445 (n + 1) : ℚ) / (A165734 (n + 1) : ℚ)

end

end A165949.P18071532491200835446

namespace A165949

/-- `A002445(n+1)/A165734(n+1)` -/
def P18071532491200835446.Spec : Prop :=
  ∀ n, P18071532491200835446.a n = (A165949 (n + 1) : ℚ)

end A165949

/-! ## A165949.P17946797447572680050

`A002445(n+1)/A040214(n+1)`
-/

namespace A165949.P17946797447572680050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002445 (n + 1) : ℚ) / (A040214 (n + 1) : ℚ)

end

end A165949.P17946797447572680050

namespace A165949

/-- `A002445(n+1)/A040214(n+1)` -/
def P17946797447572680050.Spec : Prop :=
  ∀ n, P17946797447572680050.a n = (A165949 (n + 1) : ℚ)

end A165949

/-! ## A165949.P7162089562133481708

`(A027762(n+1)+A027762(n+1))/A040874(n+1)`
-/

namespace A165949.P7162089562133481708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027762 (n + 1) + A027762 (n + 1) : ℚ) / (A040874 (n + 1) : ℚ)

end

end A165949.P7162089562133481708

namespace A165949

/-- `(A027762(n+1)+A027762(n+1))/A040874(n+1)` -/
def P7162089562133481708.Spec : Prop :=
  ∀ n, P7162089562133481708.a n = (A165949 (n + 1) : ℚ)

end A165949

/-! ## A165949.P14671168158785919080

`A288872(2*(n+1))/6`
-/

namespace A165949.P14671168158785919080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288872 (2 * (n + 1)) : ℚ) / 6

end

end A165949.P14671168158785919080

namespace A165949

/-- `A288872(2*(n+1))/6` -/
def P14671168158785919080.Spec : Prop :=
  ∀ n, P14671168158785919080.a n = (A165949 (n + 1) : ℚ)

end A165949

/-! ## A165949.P15333355633181291919

`A027760(2*(n+1))/A165734(n+1)`
-/

namespace A165949.P15333355633181291919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027760 (2 * (n + 1)) : ℚ) / (A165734 (n + 1) : ℚ)

end

end A165949.P15333355633181291919

namespace A165949

/-- `A027760(2*(n+1))/A165734(n+1)` -/
def P15333355633181291919.Spec : Prop :=
  ∀ n, P15333355633181291919.a n = (A165949 (n + 1) : ℚ)

end A165949

/-! ## A165949.P6753152053430842957

`A140814(n+1)/A165734(n+1)`
-/

namespace A165949.P6753152053430842957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140814 (n + 1) : ℚ) / (A165734 (n + 1) : ℚ)

end

end A165949.P6753152053430842957

namespace A165949

/-- `A140814(n+1)/A165734(n+1)` -/
def P6753152053430842957.Spec : Prop :=
  ∀ n, P6753152053430842957.a n = (A165949 (n + 1) : ℚ)

end A165949

/-! ## A165949.P14815745636605748325

`6/A165734(n+1)*A177735(n+1)`
-/

namespace A165949.P14815745636605748325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 / (A165734 (n + 1) : ℚ) * (A177735 (n + 1) : ℚ)

end

end A165949.P14815745636605748325

namespace A165949

/-- `6/A165734(n+1)*A177735(n+1)` -/
def P14815745636605748325.Spec : Prop :=
  ∀ n, P14815745636605748325.a n = (A165949 (n + 1) : ℚ)

end A165949

/-! ## A165949.P4770784244550889166

`A006954(n+2)/A165734(n+1)`
-/

namespace A165949.P4770784244550889166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006954 (n + 2) : ℚ) / (A165734 (n + 1) : ℚ)

end

end A165949.P4770784244550889166

namespace A165949

/-- `A006954(n+2)/A165734(n+1)` -/
def P4770784244550889166.Spec : Prop :=
  ∀ n, P4770784244550889166.a n = (A165949 (n + 1) : ℚ)

end A165949

/-! ## A165949.P2126947029770715587

`lcm(A177735(2*n), A177735(n+1))/A177735(2*n)`
-/

namespace A165949.P2126947029770715587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A177735 (2 * n)) (A177735 (n + 1)) : ℚ) / (A177735 (2 * n) : ℚ)

end

end A165949.P2126947029770715587

namespace A165949

/-- `lcm(A177735(2*n), A177735(n+1))/A177735(2*n)` -/
def P2126947029770715587.Spec : Prop :=
  ∀ n, P2126947029770715587.a n = (A165949 (n + 1) : ℚ)

end A165949

/-! ## A165949.P13010596519186159080

`A285068(A103517(n))/A010700(n)`
-/

namespace A165949.P13010596519186159080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285068 (A103517 n).toNat : ℚ) / (A010700 n : ℚ)

end

end A165949.P13010596519186159080

namespace A165949

/-- `A285068(A103517(n))/A010700(n)` -/
def P13010596519186159080.Spec : Prop :=
  ∀ n, P13010596519186159080.a n = (A165949 (n + 1) : ℚ)

end A165949

/-! ## A165949.P7103007346434805996

`A212655(n+1)/A000302(n)`
-/

namespace A165949.P7103007346434805996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212655 (n + 1) : ℚ) / (A000302 n : ℚ)

end

end A165949.P7103007346434805996

namespace A165949

/-- `A212655(n+1)/A000302(n)` -/
def P7103007346434805996.Spec : Prop :=
  ∀ n, P7103007346434805996.a n = (A165949 (n + 1) : ℚ)

end A165949

/-! ## A165949.P2113860868362568652

`A212655(n+1)/A131577(n+1)²`
-/

namespace A165949.P2113860868362568652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212655 (n + 1) : ℚ) / (A131577 (n + 1) ^ 2 : ℚ)

end

end A165949.P2113860868362568652

namespace A165949

/-- `A212655(n+1)/A131577(n+1)²` -/
def P2113860868362568652.Spec : Prop :=
  ∀ n, P2113860868362568652.a n = (A165949 (n + 1) : ℚ)

end A165949

/-! ## A165949.P8376870500092690209

`A212655(n+1)/A131577(2*n+1)`
-/

namespace A165949.P8376870500092690209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212655 (n + 1) : ℚ) / (A131577 (2 * n + 1) : ℚ)

end

end A165949.P8376870500092690209

namespace A165949

/-- `A212655(n+1)/A131577(2*n+1)` -/
def P8376870500092690209.Spec : Prop :=
  ∀ n, P8376870500092690209.a n = (A165949 (n + 1) : ℚ)

end A165949

/-!
# A165950: Number of acyclic digraphs on n labeled nodes with one source and one sink.

The programs for A165950, there is no canonical definition to state claims against.
-/

/-! ## A165950.P9585173998938979534

`A000010(∑{d}[∏{p}[n+1, #], (n+1)/#]*A317343(n)+1)`
-/

namespace A165950.P9585173998938979534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ)) * (A317343 n : ℚ) + 1)).toNat

end

end A165950.P9585173998938979534

/-!
# A165951: a(n) = (Sum of the quadratic non-residues of prime(n) - Sum of the quadratic residues of prime(n)) / prime(n).

The programs for A165951, there is no canonical definition to state claims against.
-/

/-! ## A165951.P769594414549663323

`A058305(A171525(n+2))`
-/

namespace A165951.P769594414549663323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A171525 (n + 2)).toNat

end

end A165951.P769594414549663323

/-! ## A165951.P14726241777601396506

`A191410(A156037(n+1)+1)`
-/

namespace A165951.P14726241777601396506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (A156037 (n + 1) + 1).toNat

end

end A165951.P14726241777601396506

/-! ## A165951.P2514171183627684789

`A191410(Δ[A007504(n)])%A088669(n)`
-/

namespace A165951.P2514171183627684789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191410 (f1 (n + 1) - f1 n).toNat) (A088669 n)

end

end A165951.P2514171183627684789

/-! ## A165951.P8090501084092967861

`A058305(A000040(n+1))%A028310(n)`
-/

namespace A165951.P8090501084092967861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058305 (A000040 (n + 1)).toNat) (A028310 n)

end

end A165951.P8090501084092967861

/-! ## A165951.P15316311865061793376

`A191410(A000040(n+1))%A000041(n)`
-/

namespace A165951.P15316311865061793376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191410 (A000040 (n + 1)).toNat) (A000041 n)

end

end A165951.P15316311865061793376

/-! ## A165951.P14367193616137680414

`A191410(A000040(n+1)-gcd(45, A000040(n+1))+1)`
-/

namespace A165951.P14367193616137680414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (A000040 (n + 1) - (Int.gcd 45 (A000040 (n + 1)) : ℤ) + 1).toNat

end

end A165951.P14367193616137680414

/-! ## A165951.P6045126772646688442

`(2*A125615(n+1))%A123108(A000040(n+1))`
-/

namespace A165951.P6045126772646688442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A125615 (n + 1)) (A123108 (A000040 (n + 1)).toNat)

end

end A165951.P6045126772646688442

/-! ## A165951.P13498285653307318720

`A191410(p?[A006370(n)]-A191410((n+1)²))`
-/

namespace A165951.P13498285653307318720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A191410 ((n + 1) ^ 2)).toNat

end

end A165951.P13498285653307318720

/-! ## A165951.P11170762865088984508

`A191410(A000040(n+1)-A191410((n+1)²))`
-/

namespace A165951.P11170762865088984508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (A000040 (n + 1) - A191410 ((n + 1) ^ 2)).toNat

end

end A165951.P11170762865088984508

/-!
# A165955: n-th odd nonprime plus n-th even nonprime.

The programs for A165955, the canonical program `A165955.P529933159275814728` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165955 has offset 1).

The definition of A165955 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165955.P529933159275814728

`A014076(n+1)+A163300(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A165955

/-- `A014076(n+1)+A163300(n+1)` -/
def P529933159275814728.Spec : Prop :=
  ∀ n, P529933159275814728.a n = A165955 (n + 1)

theorem P529933159275814728.correct : P529933159275814728.Spec := by
  intro n
  simp only [A165955, Nat.add_sub_cancel]

end A165955

/-! ## A165955.P11771425905392490448

`A165971(n+1)+2*A163300(n+1)`
-/

namespace A165955.P11771425905392490448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165971 (n + 1) + 2 * A163300 (n + 1)

end

end A165955.P11771425905392490448

namespace A165955

/-- `A165971(n+1)+2*A163300(n+1)` -/
def P11771425905392490448.Spec : Prop :=
  ∀ n, P11771425905392490448.a n = A165955 (n + 1)

theorem P11771425905392490448.correct : P11771425905392490448.Spec := by
  intro n
  simp only [A165955, Nat.add_sub_cancel, A165955.P11771425905392490448.a, A165955.P529933159275814728.a, A014076, A014076.P11944548580381270581.f1, A014076.P11944548580381270581.f2, A014076.P11944548580381270581.a, A163300, A163300.P6939037721526909123.a, A165971, A165971.P2237179008475242652.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165955

/-! ## A165955.P1627851571298041940

`2*A014076(n+1)-A165971(n+1)`
-/

namespace A165955.P1627851571298041940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014076 (n + 1) - A165971 (n + 1)

end

end A165955.P1627851571298041940

namespace A165955

/-- `2*A014076(n+1)-A165971(n+1)` -/
def P1627851571298041940.Spec : Prop :=
  ∀ n, P1627851571298041940.a n = A165955 (n + 1)

theorem P1627851571298041940.correct : P1627851571298041940.Spec := by
  intro n
  simp only [A165955, Nat.add_sub_cancel, A165955.P1627851571298041940.a, A165955.P529933159275814728.a, A014076, A014076.P11944548580381270581.f1, A014076.P11944548580381270581.f2, A014076.P11944548580381270581.a, A163300, A163300.P6939037721526909123.a, A165971, A165971.P2237179008475242652.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165955

/-! ## A165955.P11722175388686300171

`A014076(n+1)+(n+1)*A020639(a(n-1)+1)` with `a(0)=1`
-/

namespace A165955.P11722175388686300171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014076 (n + 1) + (n + 1 : ℤ) * A020639 (a (n - 1) + 1).toNat

end

end A165955.P11722175388686300171

namespace A165955

/-- `A014076(n+1)+(n+1)*A020639(a(n-1)+1)` -/
def P11722175388686300171.Spec : Prop :=
  ∀ n, P11722175388686300171.a n = A165955 (n + 1)

end A165955

/-! ## A165955.P18337332416985093768

`A014076(n+1)+A163751(n+1)+A141468(n+1)`
-/

namespace A165955.P18337332416985093768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1) + (A163751 (n + 1) + A141468 (n + 1))

end

end A165955.P18337332416985093768

namespace A165955

/-- `A014076(n+1)+A163751(n+1)+A141468(n+1)` -/
def P18337332416985093768.Spec : Prop :=
  ∀ n, P18337332416985093768.a n = A165955 (n + 1)

end A165955

/-! ## A165955.P16699676755487417529

`A308833(2*n+1)+A062545(n)`
-/

namespace A165955.P16699676755487417529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308833 (2 * n + 1) + A062545 n

end

end A165955.P16699676755487417529

namespace A165955

/-- `A308833(2*n+1)+A062545(n)` -/
def P16699676755487417529.Spec : Prop :=
  ∀ n, P16699676755487417529.a n = A165955 (n + 1)

end A165955

/-! ## A165955.P4648233515413939604

`A165971(n+1)+A005843(A163300(n+1))`
-/

namespace A165955.P4648233515413939604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165971 (n + 1) + A005843 (A163300 (n + 1)).toNat

end

end A165955.P4648233515413939604

namespace A165955

/-- `A165971(n+1)+A005843(A163300(n+1))` -/
def P4648233515413939604.Spec : Prop :=
  ∀ n, P4648233515413939604.a n = A165955 (n + 1)

end A165955

/-! ## A165955.P13763929653804043226

`A165971(n+1)+A005843(A014076(n+1)-A165971(n+1))`
-/

namespace A165955.P13763929653804043226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165971 (n + 1) + A005843 (A014076 (n + 1) - A165971 (n + 1)).toNat

end

end A165955.P13763929653804043226

namespace A165955

/-- `A165971(n+1)+A005843(A014076(n+1)-A165971(n+1))` -/
def P13763929653804043226.Spec : Prop :=
  ∀ n, P13763929653804043226.a n = A165955 (n + 1)

end A165955

/-! ## A165955.P1035929328840768119

`record[A020742(n)^(A002808(n+1)%2)]`
-/

namespace A165955.P1035929328840768119
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020742 n : ℚ) ^ (Int.tmod (A002808 (n + 1)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165955.P1035929328840768119

namespace A165955

/-- `record[A020742(n)^(A002808(n+1)%2)]` -/
def P1035929328840768119.Spec : Prop :=
  ∀ n, P1035929328840768119.a n = (A165955 (n + 1) : ℚ)

end A165955

/-! ## A165955.P6817642079010660047

`A191558(2*(n+1))+record[A191558(2*n+1)]`
-/

namespace A165955.P6817642079010660047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (2 * (n + 1)) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165955.P6817642079010660047

namespace A165955

/-- `A191558(2*(n+1))+record[A191558(2*n+1)]` -/
def P6817642079010660047.Spec : Prop :=
  ∀ n, P6817642079010660047.a n = A165955 (n + 1)

end A165955

/-! ## A165955.P17371409190630021266

`A005843(A014076(n+1))-A165971(n+1)`
-/

namespace A165955.P17371409190630021266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A014076 (n + 1)).toNat - A165971 (n + 1)

end

end A165955.P17371409190630021266

namespace A165955

/-- `A005843(A014076(n+1))-A165971(n+1)` -/
def P17371409190630021266.Spec : Prop :=
  ∀ n, P17371409190630021266.a n = A165955 (n + 1)

end A165955

/-! ## A165955.P15566840249021913059

`A191558(2*(n+1))+record[A093178(A191558(n+2))]`
-/

namespace A165955.P15566840249021913059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A191558 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (2 * (n + 1)) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165955.P15566840249021913059

namespace A165955

/-- `A191558(2*(n+1))+record[A093178(A191558(n+2))]` -/
def P15566840249021913059.Spec : Prop :=
  ∀ n, P15566840249021913059.a n = A165955 (n + 1)

end A165955

/-!
# A165957: Product of the digits of the n-th nonprime.

The programs for A165957, the canonical program `A165957.P16780599109594843717` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165957 has offset 1).

The definition of A165957 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007954, A018252, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165957.P16780599109594843717

`A007954(A018252(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A165957

/-- `A007954(A018252(n+1))` -/
def P16780599109594843717.Spec : Prop :=
  ∀ n, P16780599109594843717.a n = A165957 (n + 1)

theorem P16780599109594843717.correct : P16780599109594843717.Spec := by
  intro n
  simp only [A165957, Nat.add_sub_cancel]

end A165957

/-! ## A165957.P7549865167945710948

`∏{digits}[A141468(n+2), #]`
-/

namespace A165957.P7549865167945710948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A165957.P7549865167945710948

namespace A165957

/-- `∏{digits}[A141468(n+2), #]` -/
def P7549865167945710948.Spec : Prop :=
  ∀ n, (P7549865167945710948.a n : ℤ) = A165957 (n + 1)

end A165957

/-! ## A165957.P16186102238877754474

`∏{digits}[comp[A182986(n+1)], #]`
-/

namespace A165957.P16186102238877754474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A165957.P16186102238877754474

namespace A165957

/-- `∏{digits}[comp[A182986(n+1)], #]` -/
def P16186102238877754474.Spec : Prop :=
  ∀ n, (P16186102238877754474.a n : ℤ) = A165957 (n + 1)

end A165957

/-! ## A165957.P14567344007836473207

`∏{digits}[A222307(2*n+1), #]`
-/

namespace A165957.P14567344007836473207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222307 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A165957.P14567344007836473207

namespace A165957

/-- `∏{digits}[A222307(2*n+1), #]` -/
def P14567344007836473207.Spec : Prop :=
  ∀ n, (P14567344007836473207.a n : ℤ) = A165957 (n + 1)

end A165957

/-! ## A165957.P8470894734183632107

`∏{digits}[comp[record[A000010(n+1)]]+1, #]`
-/

namespace A165957.P8470894734183632107
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A165957.P8470894734183632107

namespace A165957

/-- `∏{digits}[comp[record[A000010(n+1)]]+1, #]` -/
def P8470894734183632107.Spec : Prop :=
  ∀ n, (P8470894734183632107.a n : ℤ) = A165957 (n + 1)

end A165957

/-! ## A165957.P1770873981483506191

`∏{digits}[comp[A006530(n+2)-1]+1, #]`
-/

namespace A165957.P1770873981483506191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A165957.P1770873981483506191

namespace A165957

/-- `∏{digits}[comp[A006530(n+2)-1]+1, #]` -/
def P1770873981483506191.Spec : Prop :=
  ∀ n, (P1770873981483506191.a n : ℤ) = A165957 (n + 1)

end A165957

/-! ## A165957.P2761289019761149676

`∏{digits}[comp[eq[2, A000005(n+1)]]+1, #]`
-/

namespace A165957.P2761289019761149676
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A165957.P2761289019761149676

namespace A165957

/-- `∏{digits}[comp[eq[2, A000005(n+1)]]+1, #]` -/
def P2761289019761149676.Spec : Prop :=
  ∀ n, (P2761289019761149676.a n : ℤ) = A165957 (n + 1)

end A165957

/-! ## A165957.P2438945225601890429

`∏{digits}[lt[A061397(n+1), n+1]+1, #]`
-/

namespace A165957.P2438945225601890429
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod

end

end A165957.P2438945225601890429

namespace A165957

/-- `∏{digits}[lt[A061397(n+1), n+1]+1, #]` -/
def P2438945225601890429.Spec : Prop :=
  ∀ n, (P2438945225601890429.a n : ℤ) = A165957 (n + 1)

end A165957

/-! ## A165957.P16441612384844616866

`A007954(A141468(n+2))`
-/

namespace A165957.P16441612384844616866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A141468 (n + 2)).toNat

end

end A165957.P16441612384844616866

namespace A165957

/-- `A007954(A141468(n+2))` -/
def P16441612384844616866.Spec : Prop :=
  ∀ n, P16441612384844616866.a n = A165957 (n + 1)

end A165957

/-! ## A165957.P4273149651097601309

`A007954(lt[A047814(n), n])`
-/

namespace A165957.P4273149651097601309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A165957.P4273149651097601309

namespace A165957

/-- `A007954(lt[A047814(n), n])` -/
def P4273149651097601309.Spec : Prop :=
  ∀ n, P4273149651097601309.a n = A165957 (n + 1)

end A165957

/-! ## A165957.P7978470793573981622

`A007954(record[A191558(n+1)])`
-/

namespace A165957.P7978470793573981622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A165957.P7978470793573981622

namespace A165957

/-- `A007954(record[A191558(n+1)])` -/
def P7978470793573981622.Spec : Prop :=
  ∀ n, P7978470793573981622.a n = A165957 (n + 1)

end A165957

/-! ## A165957.P668565058579007334

`∏{digits}[A073846(2*n+1), #]`
-/

namespace A165957.P668565058579007334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A165957.P668565058579007334

namespace A165957

/-- `∏{digits}[A073846(2*n+1), #]` -/
def P668565058579007334.Spec : Prop :=
  ∀ n, (P668565058579007334.a n : ℤ) = A165957 (n + 1)

end A165957

/-!
# A165959: Size of the range of the Ramanujan Prime Corollary, 2*A168421(n) - A104272(n).

The programs for A165959, there is no canonical definition to state claims against.
-/

/-! ## A165959.P13374015699928483157

`2*A168421(n+1)-A104272(n+1)`
-/

namespace A165959.P13374015699928483157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168421 (n + 1) - A104272 (n + 1)

end

end A165959.P13374015699928483157

/-! ## A165959.P14552430780147226853

`2*A168421(n+1)-A000040(A179196(n+1))`
-/

namespace A165959.P14552430780147226853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168421 (n + 1) - A000040 (A179196 (n + 1)).toNat

end

end A165959.P14552430780147226853

/-! ## A165959.P3023742636186664250

`2*A168421(n+1)-A034694(A084139(n))`
-/

namespace A165959.P3023742636186664250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168421 (n + 1) - A034694 (A084139 n).toNat

end

end A165959.P3023742636186664250

/-! ## A165959.P4129954072545351661

`A005843(A168421(n+1))-A104272(n+1)`
-/

namespace A165959.P4129954072545351661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A168421 (n + 1)).toNat - A104272 (n + 1)

end

end A165959.P4129954072545351661

/-! ## A165959.P3983671862835735360

`A005843(A168421(n+1))-A034694(A084139(n))`
-/

namespace A165959.P3983671862835735360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A168421 (n + 1)).toNat - A034694 (A084139 n).toNat

end

end A165959.P3983671862835735360

/-! ## A165959.P4747820903333427935

`A005843(A168421(n+1))-A000040(A179196(n+1))`
-/

namespace A165959.P4747820903333427935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A168421 (n + 1)).toNat - A000040 (A179196 (n + 1)).toNat

end

end A165959.P4747820903333427935

/-! ## A165959.P13790943827718476410

`A100802(A104272(n+1))`
-/

namespace A165959.P13790943827718476410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 (A104272 (n + 1)).toNat

end

end A165959.P13790943827718476410

/-! ## A165959.P7457642879061229561

`A100802(A233739(n+1)+A031215(n+1))`
-/

namespace A165959.P7457642879061229561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100802 (A233739 (n + 1) + A031215 (n + 1)).toNat

end

end A165959.P7457642879061229561

/-!
# A165960: Number of permutations of length n without modular 3-sequences.

The programs for A165960, there is no canonical definition to state claims against.
-/

/-! ## A165960.P7640908605637094442

`A163167(A361354(n+1))+A007949(n+1)`
-/

namespace A165960.P7640908605637094442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163167 (A361354 (n + 1)).toNat + A007949 (n + 1)

end

end A165960.P7640908605637094442

/-!
# A165961: Number of circular permutations of length n without 3-sequences.

The programs for A165961, there is no canonical definition to state claims against.
-/

/-! ## A165961.P14943589430249397476

`A000142(n+2)-A209256(n+2)`
-/

namespace A165961.P14943589430249397476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 2) - A209256 (n + 2)

end

end A165961.P14943589430249397476

/-! ## A165961.P15962026213429122408

`A165960(n+3)/(n+3)`
-/

namespace A165961.P15962026213429122408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165960 (n + 3) : ℚ) / (n + 3 : ℚ)

end

end A165961.P15962026213429122408

/-! ## A165961.P1731223888235088698

`record[A165960(A027656(n))/A008619(n)]`
-/

namespace A165961.P1731223888235088698
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165960 (A027656 n).toNat : ℚ) / (A008619 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165961.P1731223888235088698

/-! ## A165961.P3263791617841002840

`record[A165960(A008619(n))/A029579(n)]`
-/

namespace A165961.P3263791617841002840
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165960 (A008619 n).toNat : ℚ) / (A029579 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165961.P3263791617841002840

/-! ## A165961.P9290808550467415833

`record[A165960(A027656(n))/A029579(n)]`
-/

namespace A165961.P9290808550467415833
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165960 (A027656 n).toNat : ℚ) / (A029579 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165961.P9290808550467415833

/-!
# A165962: Number of circular permutations of length n without modular 3-sequences.

The programs for A165962, there is no canonical definition to state claims against.
-/

/-! ## A165962.P13634201809053083441

`A216722(∑[n+3])`
-/

namespace A165962.P13634201809053083441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216722 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165962.P13634201809053083441

/-! ## A165962.P2028011804225383838

`record[A216722(n+3)]`
-/

namespace A165962.P2028011804225383838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216722 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165962.P2028011804225383838

/-! ## A165962.P16236725949314191812

`A216722(A141214(n))+char[8]`
-/

namespace A165962.P16236725949314191812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216722 (A141214 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A165962.P16236725949314191812

/-! ## A165962.P12844903696911131699

`A235044(n)+A216722(A141214(n))`
-/

namespace A165962.P12844903696911131699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235044 n + A216722 (A141214 n).toNat

end

end A165962.P12844903696911131699

/-!
# A165963: Number of permutations of length n without increasing or decreasing modular 3-sequences.

The programs for A165963, there is no canonical definition to state claims against.
-/

/-! ## A165963.P12126625986178249010

`(n+3)*A165964(n+3)`
-/

namespace A165963.P12126625986178249010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A165964 (n + 3)

end

end A165963.P12126625986178249010

/-! ## A165963.P2896276377002163226

`A340107(A155212(n)+7)`
-/

namespace A165963.P2896276377002163226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340107 (A155212 n + 7).toNat

end

end A165963.P2896276377002163226

/-! ## A165963.P8694543382506240343

`A340107(A056000(n)+9)`
-/

namespace A165963.P8694543382506240343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340107 (A056000 n + 9).toNat

end

end A165963.P8694543382506240343

/-! ## A165963.P11494798683203730781

`A340107(A000124(n+4)-2)`
-/

namespace A165963.P11494798683203730781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340107 (A000124 (n + 4) - 2).toNat

end

end A165963.P11494798683203730781

/-!
# A165964: Number of circular permutations of length n without increasing or decreasing 3-sequences.

The programs for A165964, there is no canonical definition to state claims against.
-/

/-! ## A165964.P5379943767524483826

`A340107(∑[n+2])/(n+1)`
-/

namespace A165964.P5379943767524483826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340107 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A165964.P5379943767524483826

/-! ## A165964.P9098214733132900400

`A008611(xor(A099237(n), A141539(n)))`
-/

namespace A165964.P9098214733132900400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Int.xor (A099237 n) (A141539 n)).toNat

end

end A165964.P9098214733132900400

/-!
# A165966: Triangular numbers that are sums of twin prime pairs.

The programs for A165966, there is no canonical definition to state claims against.
-/

/-! ## A165966.P7535192078953576469

`A105174(n+1)*(A105174(n+1)+1)/2`
-/

namespace A165966.P7535192078953576469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105174 (n + 1) * (A105174 (n + 1) + 1) : ℚ) / 2

end

end A165966.P7535192078953576469

/-! ## A165966.P5254439027484532035

`2*(A086816(n+1)+1)`
-/

namespace A165966.P5254439027484532035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A086816 (n + 1) + 1)

end

end A165966.P5254439027484532035

/-! ## A165966.P611224871586286678

`3*4*A166119(n+1)`
-/

namespace A165966.P611224871586286678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (4 * A166119 (n + 1))

end

end A165966.P611224871586286678

/-! ## A165966.P601557793487414808

`C(A105174(n+1)+1, 2)`
-/

namespace A165966.P601557793487414808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A105174 (n + 1) + 1).toNat 2

end

end A165966.P601557793487414808

/-! ## A165966.P15070535184354699001

`∩[A111163(n+1), A242344(n+1)]`
-/

namespace A165966.P15070535184354699001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165966.P15070535184354699001

/-! ## A165966.P7045886634906498626

`∩[A111163(n+1), A242356(n+1)]`
-/

namespace A165966.P7045886634906498626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165966.P7045886634906498626

/-! ## A165966.P3579986354759463605

`A242356(eq[2, gcd(2, A242356(n+1))]+1)`
-/

namespace A165966.P3579986354759463605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A242356 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242356 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A165966.P3579986354759463605

/-! ## A165966.P5138917354154557968

`∩[A111163(n+1), A242343(n+1)]`
-/

namespace A165966.P5138917354154557968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165966.P5138917354154557968

/-! ## A165966.P8965316671781077959

`A000217(A105174(n+1))`
-/

namespace A165966.P8965316671781077959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A105174 (n + 1)).toNat

end

end A165966.P8965316671781077959

/-! ## A165966.P9787841962362180836

`∩[A069497(n+1), A242356(n+1)]`
-/

namespace A165966.P9787841962362180836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165966.P9787841962362180836

/-! ## A165966.P11810155173035670139

`∩[A242356(n+1), A014494(n)]`
-/

namespace A165966.P11810155173035670139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165966.P11810155173035670139

/-! ## A165966.P14651654997691015354

`A000096(A105174(n+1)-1)+1`
-/

namespace A165966.P14651654997691015354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A105174 (n + 1) - 1).toNat + 1

end

end A165966.P14651654997691015354

/-! ## A165966.P249219220401715639

`∩[A192447(n+1), A242356(n+1)]`
-/

namespace A165966.P249219220401715639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165966.P249219220401715639

/-!
# A165968: Number of pairings disjoint to a given pairing, and containing a given pair not in the given pairing.

The programs for A165968, the canonical program `A165968.P7065933650272667298` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165968 has offset 1).

The definition of A165968 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165968.P7065933650272667298

`(2*(n+1)-4)*a(n-1)+(2*(n+1)-6)*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165968

/-- `(2*(n+1)-4)*a(n-1)+(2*(n+1)-6)*a(n-2)` -/
def P7065933650272667298.Spec : Prop :=
  ∀ n, P7065933650272667298.a n = A165968 (n + 1)

theorem P7065933650272667298.correct : P7065933650272667298.Spec := by
  intro n
  simp only [A165968, Nat.add_sub_cancel]

end A165968

/-! ## A165968.P16994358775179327331

`A179540(n)/A028310(n)`
-/

namespace A165968.P16994358775179327331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179540 n : ℚ) / (A028310 n : ℚ)

end

end A165968.P16994358775179327331

namespace A165968

/-- `A179540(n)/A028310(n)` -/
def P16994358775179327331.Spec : Prop :=
  ∀ n, P16994358775179327331.a n = (A165968 (n + 1) : ℚ)

end A165968

/-! ## A165968.P979838275916706761

`2/A004277(n)*A179540(n)`
-/

namespace A165968.P979838275916706761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A004277 n : ℚ) * (A179540 n : ℚ)

end

end A165968.P979838275916706761

namespace A165968

/-- `2/A004277(n)*A179540(n)` -/
def P979838275916706761.Spec : Prop :=
  ∀ n, P979838275916706761.a n = (A165968 (n + 1) : ℚ)

end A165968

/-! ## A165968.P13378788033398099946

`A053871(n+1)/A000267(n²)`
-/

namespace A165968.P13378788033398099946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053871 (n + 1) : ℚ) / (A000267 (n ^ 2) : ℚ)

end

end A165968.P13378788033398099946

namespace A165968

/-- `A053871(n+1)/A000267(n²)` -/
def P13378788033398099946.Spec : Prop :=
  ∀ n, P13378788033398099946.a n = (A165968 (n + 1) : ℚ)

end A165968

/-! ## A165968.P1203097288072469524

`A053871(n+1)/record[A124625(n)]`
-/

namespace A165968.P1203097288072469524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053871 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A165968.P1203097288072469524

namespace A165968

/-- `A053871(n+1)/record[A124625(n)]` -/
def P1203097288072469524.Spec : Prop :=
  ∀ n, P1203097288072469524.a n = (A165968 (n + 1) : ℚ)

end A165968

/-! ## A165968.P1403981743896774978

`A179540(n)/gcd(n, A142703(n+1))`
-/

namespace A165968.P1403981743896774978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179540 n : ℚ) / (Int.gcd (n : ℤ) (A142703 (n + 1)) : ℚ)

end

end A165968.P1403981743896774978

namespace A165968

/-- `A179540(n)/gcd(n, A142703(n+1))` -/
def P1403981743896774978.Spec : Prop :=
  ∀ n, P1403981743896774978.a n = (A165968 (n + 1) : ℚ)

end A165968

/-! ## A165968.P4795424086936735714

`A053871(n+1)/A233583(2*n+1)`
-/

namespace A165968.P4795424086936735714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053871 (n + 1) : ℚ) / (A233583 (2 * n + 1) : ℚ)

end

end A165968.P4795424086936735714

namespace A165968

/-- `A053871(n+1)/A233583(2*n+1)` -/
def P4795424086936735714.Spec : Prop :=
  ∀ n, P4795424086936735714.a n = (A165968 (n + 1) : ℚ)

end A165968

/-! ## A165968.P1904095259574754115

`ceil(A179540(n)/A000267(A004652(n)))`
-/

namespace A165968.P1904095259574754115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A179540 n : ℚ) / (A000267 (A004652 n).toNat : ℚ)⌉

end

end A165968.P1904095259574754115

namespace A165968

/-- `ceil(A179540(n)/A000267(A004652(n)))` -/
def P1904095259574754115.Spec : Prop :=
  ∀ n, P1904095259574754115.a n = A165968 (n + 1)

end A165968

/-!
# A165969: Triangle read by rows: T(n,m) = A094310(n,m)*A120070(n+1,m), 1 <= m <= n.

The programs for A165969, there is no canonical definition to state claims against.
-/

/-! ## A165969.P18415117210100075445

`∏[round(sqrt(2*n))*char[∑[n]]+1]/(1-C(∑[char[∑[n]]], 2)+n)*A120070(n+2)`
-/

namespace A165969.P18415117210100075445
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + (n : ℤ) : ℚ) * (A120070 (n + 2) : ℚ)

end

end A165969.P18415117210100075445

/-! ## A165969.P6960079708069933460

`∏[round(sqrt(2*n))*char[∑[n]]+1]/(1-C(∑[char[∑[n]]], 2)+n)*sqrt(A165447(n+2))`
-/

namespace A165969.P6960079708069933460
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + (n : ℤ) : ℚ) : ℝ) * Real.sqrt (A165447 (n + 2) : ℝ)

end

end A165969.P6960079708069933460

/-! ## A165969.P5542502810871828778

`A094310(n+1)*A120070(n+2)`
-/

namespace A165969.P5542502810871828778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (n + 1) * A120070 (n + 2)

end

end A165969.P5542502810871828778

/-! ## A165969.P6512216595339827548

`sqrt(A165447(n+2))*A094310(n+1)`
-/

namespace A165969.P6512216595339827548
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A165447 (n + 2) : ℝ) * (A094310 (n + 1) : ℝ)

end

end A165969.P6512216595339827548

/-! ## A165969.P2073159456075954777

`((n-comp[∑[n]])²-A133819(n+1))*A094310(n+1)`
-/

namespace A165969.P2073159456075954777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2 - A133819 (n + 1)) * A094310 (n + 1)

end

end A165969.P2073159456075954777

/-!
# A165971: The n-th odd nonprime minus the n-th even nonprime.

The programs for A165971, the canonical program `A165971.P2237179008475242652` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165971 has offset 1).

The definition of A165971 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A165971.P2237179008475242652

`A014076(n+1)-A163300(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A165971

/-- `A014076(n+1)-A163300(n+1)` -/
def P2237179008475242652.Spec : Prop :=
  ∀ n, P2237179008475242652.a n = A165971 (n + 1)

theorem P2237179008475242652.correct : P2237179008475242652.Spec := by
  intro n
  simp only [A165971, Nat.add_sub_cancel]

end A165971

/-! ## A165971.P213470891502727059

`A165955(n+1)%(4*(n+1))`
-/

namespace A165971.P213470891502727059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165955 (n + 1)) (4 * (n + 1) : ℤ)

end

end A165971.P213470891502727059

namespace A165971

/-- `A165955(n+1)%(4*(n+1))` -/
def P213470891502727059.Spec : Prop :=
  ∀ n, P213470891502727059.a n = A165971 (n + 1)

end A165971

/-! ## A165971.P1824724667008322171

`abs(2*(comp[A005097(n+1)]-n)-1)`
-/

namespace A165971.P1824724667008322171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)) - 1|

end

end A165971.P1824724667008322171

namespace A165971

/-- `abs(2*(comp[A005097(n+1)]-n)-1)` -/
def P1824724667008322171.Spec : Prop :=
  ∀ n, P1824724667008322171.a n = A165971 (n + 1)

end A165971

/-! ## A165971.P16435699624997525795

`2*(lt[A006530(3*(2*n+1)), n+3]-n)-1`
-/

namespace A165971.P16435699624997525795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (3 * (2 * n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ)) - 1

end

end A165971.P16435699624997525795

namespace A165971

/-- `2*(lt[A006530(3*(2*n+1)), n+3]-n)-1` -/
def P16435699624997525795.Spec : Prop :=
  ∀ n, P16435699624997525795.a n = A165971 (n + 1)

end A165971

/-! ## A165971.P4600377001694623196

`2*(lt[2*n, (n+2)*A001222(2*n+1)]-n)-1`
-/

namespace A165971.P4600377001694623196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A001222 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)) - 1

end

end A165971.P4600377001694623196

namespace A165971

/-- `2*(lt[2*n, (n+2)*A001222(2*n+1)]-n)-1` -/
def P4600377001694623196.Spec : Prop :=
  ∀ n, P4600377001694623196.a n = A165971 (n + 1)

end A165971

/-! ## A165971.P15342652440776502224

`A004280(A104275(n+1)-n)`
-/

namespace A165971.P15342652440776502224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A104275 (n + 1) - (n : ℤ)).toNat

end

end A165971.P15342652440776502224

namespace A165971

/-- `A004280(A104275(n+1)-n)` -/
def P15342652440776502224.Spec : Prop :=
  ∀ n, P15342652440776502224.a n = A165971 (n + 1)

end A165971

/-! ## A165971.P734745362052176281

`A004275(A047845(n+1)-n)+1`
-/

namespace A165971.P734745362052176281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A047845 (n + 1) - (n : ℤ)).toNat + 1

end

end A165971.P734745362052176281

namespace A165971

/-- `A004275(A047845(n+1)-n)+1` -/
def P734745362052176281.Spec : Prop :=
  ∀ n, P734745362052176281.a n = A165971 (n + 1)

end A165971

/-! ## A165971.P18372320598526066580

`2*A014076(n+1)-A165955(n+1)`
-/

namespace A165971.P18372320598526066580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014076 (n + 1) - A165955 (n + 1)

end

end A165971.P18372320598526066580

namespace A165971

/-- `2*A014076(n+1)-A165955(n+1)` -/
def P18372320598526066580.Spec : Prop :=
  ∀ n, P18372320598526066580.a n = A165971 (n + 1)

theorem P18372320598526066580.correct : P18372320598526066580.Spec := by
  intro n
  simp only [A165971, Nat.add_sub_cancel, A165971.P18372320598526066580.a, A165971.P2237179008475242652.a, A014076, A014076.P11944548580381270581.f1, A014076.P11944548580381270581.f2, A014076.P11944548580381270581.a, A163300, A163300.P6939037721526909123.a, A165955, A165955.P529933159275814728.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165971

/-! ## A165971.P14660734050331351672

`A165955(n+1)-2*A163300(n+1)`
-/

namespace A165971.P14660734050331351672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165955 (n + 1) - 2 * A163300 (n + 1)

end

end A165971.P14660734050331351672

namespace A165971

/-- `A165955(n+1)-2*A163300(n+1)` -/
def P14660734050331351672.Spec : Prop :=
  ∀ n, P14660734050331351672.a n = A165971 (n + 1)

theorem P14660734050331351672.correct : P14660734050331351672.Spec := by
  intro n
  simp only [A165971, Nat.add_sub_cancel, A165971.P14660734050331351672.a, A165971.P2237179008475242652.a, A014076, A014076.P11944548580381270581.f1, A014076.P11944548580381270581.f2, A014076.P11944548580381270581.a, A163300, A163300.P6939037721526909123.a, A165955, A165955.P529933159275814728.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165971

/-! ## A165971.P14966039583956766770

`A004273(A073432(n+1)-A004273(n))`
-/

namespace A165971.P14966039583956766770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A073432 (n + 1) - A004273 n).toNat

end

end A165971.P14966039583956766770

namespace A165971

/-- `A004273(A073432(n+1)-A004273(n))` -/
def P14966039583956766770.Spec : Prop :=
  ∀ n, P14966039583956766770.a n = A165971 (n + 1)

end A165971

/-! ## A165971.P2888752890852132202

`A014076(n+1)-(A163751(n+1)+A141468(n+1))`
-/

namespace A165971.P2888752890852132202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1) - (A163751 (n + 1) + A141468 (n + 1))

end

end A165971.P2888752890852132202

namespace A165971

/-- `A014076(n+1)-(A163751(n+1)+A141468(n+1))` -/
def P2888752890852132202.Spec : Prop :=
  ∀ n, P2888752890852132202.a n = A165971 (n + 1)

end A165971

/-! ## A165971.P1663576747555418898

`A171153(2*n+1)-2*n`
-/

namespace A165971.P1663576747555418898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171153 (2 * n + 1) - (2 * n : ℤ)

end

end A165971.P1663576747555418898

namespace A165971

/-- `A171153(2*n+1)-2*n` -/
def P1663576747555418898.Spec : Prop :=
  ∀ n, P1663576747555418898.a n = A165971 (n + 1)

end A165971

/-! ## A165971.P15975466318783264661

`eq[3, A135679(n+2)]-2*n`
-/

namespace A165971.P15975466318783264661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135679 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (2 * n : ℤ)

end

end A165971.P15975466318783264661

namespace A165971

/-- `eq[3, A135679(n+2)]-2*n` -/
def P15975466318783264661.Spec : Prop :=
  ∀ n, P15975466318783264661.a n = A165971 (n + 1)

end A165971

/-! ## A165971.P2830521025562004251

`record[A191558(2*n+1)]-A191558(2*(n+1))`
-/

namespace A165971.P2830521025562004251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A191558 (2 * (n + 1))

end

end A165971.P2830521025562004251

namespace A165971

/-- `record[A191558(2*n+1)]-A191558(2*(n+1))` -/
def P2830521025562004251.Spec : Prop :=
  ∀ n, P2830521025562004251.a n = A165971 (n + 1)

end A165971

/-! ## A165971.P18214114435453070470

`record[A093178(A191558(n+2))]-A191558(2*(n+1))`
-/

namespace A165971.P18214114435453070470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A191558 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A191558 (2 * (n + 1))

end

end A165971.P18214114435453070470

namespace A165971

/-- `record[A093178(A191558(n+2))]-A191558(2*(n+1))` -/
def P18214114435453070470.Spec : Prop :=
  ∀ n, P18214114435453070470.a n = A165971 (n + 1)

end A165971

/-! ## A165971.P9005145850631557271

`A014076(n+1)+A001057(2*A163300(n+1))`
-/

namespace A165971.P9005145850631557271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1) + A001057 (2 * A163300 (n + 1)).toNat

end

end A165971.P9005145850631557271

namespace A165971

/-- `A014076(n+1)+A001057(2*A163300(n+1))` -/
def P9005145850631557271.Spec : Prop :=
  ∀ n, P9005145850631557271.a n = A165971 (n + 1)

end A165971

/-!
# A165972: Nonprimes k such that the sum of the smallest and largest divisor of k is prime.

The programs for A165972, the canonical program `A165972.P1616494104125571598` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165972 has offset 1).

The definition of A165972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165972.P13755294708962819547

`floor(p?[2*n+1]-acot(n))`
-/

namespace A165972.P13755294708962819547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) - SequenceMachineLib.acot (n : ℝ)⌋

end

end A165972.P13755294708962819547

namespace A165972

/-- `floor(p?[2*n+1]-acot(n))` -/
def P13755294708962819547.Spec : Prop :=
  ∀ n, P13755294708962819547.a n = A165972 (n + 1)

end A165972

/-! ## A165972.P8014775542867848953

`p?[2*n+1]-ceil(acot(n))`
-/

namespace A165972.P8014775542867848953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - ⌈SequenceMachineLib.acot (n : ℝ)⌉

end

end A165972.P8014775542867848953

namespace A165972

/-- `p?[2*n+1]-ceil(acot(n))` -/
def P8014775542867848953.Spec : Prop :=
  ∀ n, P8014775542867848953.a n = A165972 (n + 1)

end A165972

/-! ## A165972.P838448430958743512

`xor(ceil(acot(n)), p?[2*n+1])`
-/

namespace A165972.P838448430958743512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌈SequenceMachineLib.acot (n : ℝ)⌉ (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A165972.P838448430958743512

namespace A165972

/-- `xor(ceil(acot(n)), p?[2*n+1])` -/
def P838448430958743512.Spec : Prop :=
  ∀ n, P838448430958743512.a n = A165972 (n + 1)

end A165972

/-! ## A165972.P1616494104125571598

`p?[a(n-2)+3]-1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165972

/-- `p?[a(n-2)+3]-1` -/
def P1616494104125571598.Spec : Prop :=
  ∀ n, P1616494104125571598.a n = A165972 (n + 1)

theorem P1616494104125571598.correct : P1616494104125571598.Spec := by
  intro n
  simp only [A165972, Nat.add_sub_cancel]

end A165972

/-! ## A165972.P11385581354769906016

`p?[2*n+1]-floor(ratio[n+1])`
-/

namespace A165972.P11385581354769906016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - ⌊(f2 (n + 1) : ℚ) / (f2 n : ℚ)⌋

end

end A165972.P11385581354769906016

namespace A165972

/-- `p?[2*n+1]-floor(ratio[n+1])` -/
def P11385581354769906016.Spec : Prop :=
  ∀ n, P11385581354769906016.a n = A165972 (n + 1)

end A165972

/-! ## A165972.P10456922558203907208

`ceil(p?[2*n+1]-ratio[n+1])`
-/

namespace A165972.P10456922558203907208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) - (f2 (n + 1) : ℚ) / (f2 n : ℚ)⌉

end

end A165972.P10456922558203907208

namespace A165972

/-- `ceil(p?[2*n+1]-ratio[n+1])` -/
def P10456922558203907208.Spec : Prop :=
  ∀ n, P10456922558203907208.a n = A165972 (n + 1)

end A165972

/-! ## A165972.P13938777695547764243

`round(p?[2*n+1]-ratio[n+1])`
-/

namespace A165972.P13938777695547764243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) - (f2 (n + 1) : ℚ) / (f2 n : ℚ))

end

end A165972.P13938777695547764243

namespace A165972

/-- `round(p?[2*n+1]-ratio[n+1])` -/
def P13938777695547764243.Spec : Prop :=
  ∀ n, P13938777695547764243.a n = A165972 (n + 1)

end A165972

/-! ## A165972.P17039308799880098772

`xor(floor(ratio[n+1]), p?[2*n+1])`
-/

namespace A165972.P17039308799880098772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋ (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ)

end

end A165972.P17039308799880098772

namespace A165972

/-- `xor(floor(ratio[n+1]), p?[2*n+1])` -/
def P17039308799880098772.Spec : Prop :=
  ∀ n, P17039308799880098772.a n = A165972 (n + 1)

end A165972

/-! ## A165972.P1507893053049074706

`A156037(n+2)`
-/

namespace A165972.P1507893053049074706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 2)

end

end A165972.P1507893053049074706

namespace A165972

/-- `A156037(n+2)` -/
def P1507893053049074706.Spec : Prop :=
  ∀ n, P1507893053049074706.a n = A165972 (n + 1)

end A165972

/-! ## A165972.P11299424086220357591

`A045344(n+1)-1`
-/

namespace A165972.P11299424086220357591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1) - 1

end

end A165972.P11299424086220357591

namespace A165972

/-- `A045344(n+1)-1` -/
def P11299424086220357591.Spec : Prop :=
  ∀ n, P11299424086220357591.a n = A165972 (n + 1)

end A165972

/-! ## A165972.P6205644444141359737

`A135731(n+1)-2`
-/

namespace A165972.P6205644444141359737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135731 (n + 1) - 2

end

end A165972.P6205644444141359737

namespace A165972

/-- `A135731(n+1)-2` -/
def P6205644444141359737.Spec : Prop :=
  ∀ n, P6205644444141359737.a n = A165972 (n + 1)

theorem P6205644444141359737.correct : P6205644444141359737.Spec := by
  intro n
  simp only [A165972, Nat.add_sub_cancel, A165972.P6205644444141359737.a, A165972.P1616494104125571598.f1, A165972.P1616494104125571598.a, A135731, A135731.P4450191013934094976.f1, A135731.P4450191013934094976.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165972

/-! ## A165972.P11060259936695930259

`A140475(n+1)+A057428(n)`
-/

namespace A165972.P11060259936695930259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1) + A057428 n

end

end A165972.P11060259936695930259

namespace A165972

/-- `A140475(n+1)+A057428(n)` -/
def P11060259936695930259.Spec : Prop :=
  ∀ n, P11060259936695930259.a n = A165972 (n + 1)

end A165972

/-! ## A165972.P16124695240176331785

`A065091(n+1)-A054977(n)`
-/

namespace A165972.P16124695240176331785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A054977 n

end

end A165972.P16124695240176331785

namespace A165972

/-- `A065091(n+1)-A054977(n)` -/
def P16124695240176331785.Spec : Prop :=
  ∀ n, P16124695240176331785.a n = A165972 (n + 1)

end A165972

/-! ## A165972.P14781423880128698754

`A176569(n+1)-A010673(n)`
-/

namespace A165972.P14781423880128698754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176569 (n + 1) - A010673 n

end

end A165972.P14781423880128698754

namespace A165972

/-- `A176569(n+1)-A010673(n)` -/
def P14781423880128698754.Spec : Prop :=
  ∀ n, P14781423880128698754.a n = A165972 (n + 1)

end A165972

/-! ## A165972.P11011158605877317869

`A140475(n+1)-A057427(n)`
-/

namespace A165972.P11011158605877317869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1) - A057427 n

end

end A165972.P11011158605877317869

namespace A165972

/-- `A140475(n+1)-A057427(n)` -/
def P11011158605877317869.Spec : Prop :=
  ∀ n, P11011158605877317869.a n = A165972 (n + 1)

end A165972

/-! ## A165972.P7639479967783186917

`A383241(n+1)%A045344(n+1)`
-/

namespace A165972.P7639479967783186917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A383241 (n + 1)) (A045344 (n + 1))

end

end A165972.P7639479967783186917

namespace A165972

/-- `A383241(n+1)%A045344(n+1)` -/
def P7639479967783186917.Spec : Prop :=
  ∀ n, P7639479967783186917.a n = A165972 (n + 1)

end A165972

/-! ## A165972.P16340756315602231912

`A397571(n+1)%A045344(n+1)`
-/

namespace A165972.P16340756315602231912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A397571 (n + 1)) (A045344 (n + 1))

end

end A165972.P16340756315602231912

namespace A165972

/-- `A397571(n+1)%A045344(n+1)` -/
def P16340756315602231912.Spec : Prop :=
  ∀ n, P16340756315602231912.a n = A165972 (n + 1)

end A165972

/-! ## A165972.P3392630100304749711

`A352851(n+1)%A110494(n+1)`
-/

namespace A165972.P3392630100304749711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352851 (n + 1)) (A110494 (n + 1))

end

end A165972.P3392630100304749711

namespace A165972

/-- `A352851(n+1)%A110494(n+1)` -/
def P3392630100304749711.Spec : Prop :=
  ∀ n, P3392630100304749711.a n = A165972 (n + 1)

end A165972

/-! ## A165972.P8520647717531876233

`A006093(A065475(n+1))`
-/

namespace A165972.P8520647717531876233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A065475 (n + 1)).toNat

end

end A165972.P8520647717531876233

namespace A165972

/-- `A006093(A065475(n+1))` -/
def P8520647717531876233.Spec : Prop :=
  ∀ n, P8520647717531876233.a n = A165972 (n + 1)

end A165972

/-!
# A165974: Irregular triangle read by rows: floor(j^2 / p) for p prime and j = 1 to p-1.

The programs for A165974, there is no canonical definition to state claims against.
-/

/-! ## A165974.P7282610259703465816

`A351567(A060735(n+1)*A168265(n+1))`
-/

namespace A165974.P7282610259703465816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351567 (A060735 (n + 1) * A168265 (n + 1)).toNat

end

end A165974.P7282610259703465816

/-! ## A165974.P16660388268658441233

`A124762(A192113(n+1)%A334936(n+1))`
-/

namespace A165974.P16660388268658441233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (Int.tmod (A192113 (n + 1)) (A334936 (n + 1))).toNat

end

end A165974.P16660388268658441233

/-! ## A165974.P17119900610099284663

`A124762(A192113(n+1)/A152157(n+3))`
-/

namespace A165974.P17119900610099284663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (SequenceMachineLib.roundAway ((A192113 (n + 1) : ℚ) / (A152157 (n + 3) : ℚ))).toNat

end

end A165974.P17119900610099284663

/-! ## A165974.P115206006548192025

`A124762(∪[(n+3)²², A192113(n+1)])`
-/

namespace A165974.P115206006548192025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192113 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A165974.P115206006548192025

/-! ## A165974.P13581251052978563802

`A124762(∪[A192113(n+1), A000538(2*n+3)])`
-/

namespace A165974.P13581251052978563802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A165974.P13581251052978563802

/-!
# A165976: Number of sequences of n pairs of balanced brackets of three types, round, square, and angle, such that no square brackets are allowed inside matching round brackets.

The programs for A165976, there is no canonical definition to state claims against.
-/

/-! ## A165976.P12124491229820110364

`∑[A336264(∑[A078008(3*n)])]`
-/

namespace A165976.P12124491229820110364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336264 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165976.P12124491229820110364

/-!
# A165977: Primes of the form 4n+3 for which Sum_{i=1..u} J(i,4n+3) is never negative for any u in range [1,2n+1], but obtains at least one value zero, where J(i,m) is the Jacobi symbol.

The programs for A165977, there is no canonical definition to state claims against.
-/

/-! ## A165977.P11174748467304847630

`p?[4*A165607(n+1)+3]`
-/

namespace A165977.P11174748467304847630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A165607 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165977.P11174748467304847630

/-! ## A165977.P2750483418966642891

`p?[A004767(A165607(n+1))]`
-/

namespace A165977.P2750483418966642891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A165607 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165977.P2750483418966642891

/-! ## A165977.P15890353192037830142

`record[A006530(4*A165607(n+1)+3)]`
-/

namespace A165977.P15890353192037830142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (4 * A165607 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165977.P15890353192037830142

/-! ## A165977.P3259057932936659451

`record[A014963(4*A165607(n+1)+3)]`
-/

namespace A165977.P3259057932936659451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * A165607 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165977.P3259057932936659451

/-! ## A165977.P10189047754496436484

`record[A020639(4*A165607(n+1)+3)]`
-/

namespace A165977.P10189047754496436484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (4 * A165607 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165977.P10189047754496436484

/-!
# A165978: Largest prime factor of number formed from a(n-1) with a 1 added at the end, a(1)=2.

The programs for A165978, there is no canonical definition to state claims against.
-/

/-! ## A165978.P15639518588038183480

`A060954(a(n-1))` with `a(0)=2`
-/

namespace A165978.P15639518588038183480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A060954 (a (n - 1)).toNat

end

end A165978.P15639518588038183480

/-!
# A165981: Primes p which are equal to 2 plus the sum of three consecutive primes.

The programs for A165981, the canonical program `A165981.P15510311723054699555` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165981 has offset 1).

The definition of A165981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165981.P15510311723054699555

`p?[A034961(n+1)+2]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A165981

/-- `p?[A034961(n+1)+2]` -/
def P15510311723054699555.Spec : Prop :=
  ∀ n, P15510311723054699555.a n = A165981 (n + 1)

theorem P15510311723054699555.correct : P15510311723054699555.Spec := by
  intro n
  simp only [A165981, Nat.add_sub_cancel]

end A165981

/-! ## A165981.P3129141690995208940

`p?[A113935(n+1)+A076273(n)]`
-/

namespace A165981.P3129141690995208940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) + A076273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165981.P3129141690995208940

namespace A165981

/-- `p?[A113935(n+1)+A076273(n)]` -/
def P3129141690995208940.Spec : Prop :=
  ∀ n, P3129141690995208940.a n = A165981 (n + 1)

end A165981

/-! ## A165981.P11634463534900966577

`p?[A034963(n+1)-A040976(n+1)]`
-/

namespace A165981.P11634463534900966577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 1) - A040976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165981.P11634463534900966577

namespace A165981

/-- `p?[A034963(n+1)-A040976(n+1)]` -/
def P11634463534900966577.Spec : Prop :=
  ∀ n, P11634463534900966577.a n = A165981 (n + 1)

end A165981

/-! ## A165981.P1856800386707415732

`p?[A175222(n+1)+A076273(n)-2]`
-/

namespace A165981.P1856800386707415732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175222 (n + 1) + (A076273 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165981.P1856800386707415732

namespace A165981

/-- `p?[A175222(n+1)+A076273(n)-2]` -/
def P1856800386707415732.Spec : Prop :=
  ∀ n, P1856800386707415732.a n = A165981 (n + 1)

end A165981

/-! ## A165981.P7819962254218222969

`p?[A001043(n+1)+A004139(n+1)+2]`
-/

namespace A165981.P7819962254218222969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A004139 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165981.P7819962254218222969

namespace A165981

/-- `p?[A001043(n+1)+A004139(n+1)+2]` -/
def P7819962254218222969.Spec : Prop :=
  ∀ n, P7819962254218222969.a n = A165981 (n + 1)

end A165981

/-! ## A165981.P13256858041724500295

`p?[A001043(n+1)+A008578(n+1)+2]`
-/

namespace A165981.P13256858041724500295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A008578 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165981.P13256858041724500295

namespace A165981

/-- `p?[A001043(n+1)+A008578(n+1)+2]` -/
def P13256858041724500295.Spec : Prop :=
  ∀ n, P13256858041724500295.a n = A165981 (n + 1)

end A165981

/-! ## A165981.P17048696024872691665

`p?[A001043(n+2)+A000040(n+1)+2]`
-/

namespace A165981.P17048696024872691665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 2) + (A000040 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165981.P17048696024872691665

namespace A165981

/-- `p?[A001043(n+2)+A000040(n+1)+2]` -/
def P17048696024872691665.Spec : Prop :=
  ∀ n, P17048696024872691665.a n = A165981 (n + 1)

end A165981

/-! ## A165981.P8380464071121599377

`p?[A034963(n+1)+2-A000040(n+1)]`
-/

namespace A165981.P8380464071121599377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 1) + (2 - A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165981.P8380464071121599377

namespace A165981

/-- `p?[A034963(n+1)+2-A000040(n+1)]` -/
def P8380464071121599377.Spec : Prop :=
  ∀ n, P8380464071121599377.a n = A165981 (n + 1)

end A165981

/-! ## A165981.P6986358912554139466

`p?[A065091(n+2)+A001043(n+1)+2]`
-/

namespace A165981.P6986358912554139466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) + (A001043 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165981.P6986358912554139466

namespace A165981

/-- `p?[A065091(n+2)+A001043(n+1)+2]` -/
def P6986358912554139466.Spec : Prop :=
  ∀ n, P6986358912554139466.a n = A165981 (n + 1)

end A165981

/-! ## A165981.P6933445149446397739

`∩[A000040(n+1), A034961(n+1)+2]`
-/

namespace A165981.P6933445149446397739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165981.P6933445149446397739

namespace A165981

/-- `∩[A000040(n+1), A034961(n+1)+2]` -/
def P6933445149446397739.Spec : Prop :=
  ∀ n, (P6933445149446397739.a n : ℤ) = A165981 (n + 1)

end A165981

/-! ## A165981.P1871303713071212661

`record[A020639(A034961(n+2)+2)]`
-/

namespace A165981.P1871303713071212661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A034961 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165981.P1871303713071212661

namespace A165981

/-- `record[A020639(A034961(n+2)+2)]` -/
def P1871303713071212661.Spec : Prop :=
  ∀ n, P1871303713071212661.a n = A165981 (n + 1)

end A165981

/-!
# A165982: Primes that are 4 plus the sum of three consecutive primes.

The programs for A165982, the canonical program `A165982.P7822805712144647645` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165982 has offset 1).

The definition of A165982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165982.P7822805712144647645

`p?[A034961(n+1)+4]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A165982

/-- `p?[A034961(n+1)+4]` -/
def P7822805712144647645.Spec : Prop :=
  ∀ n, P7822805712144647645.a n = A165982 (n + 1)

theorem P7822805712144647645.correct : P7822805712144647645.Spec := by
  intro n
  simp only [A165982, Nat.add_sub_cancel]

end A165982

/-! ## A165982.P10326789403554154104

`p?[A175222(n+1)+A076273(n)]`
-/

namespace A165982.P10326789403554154104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175222 (n + 1) + A076273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165982.P10326789403554154104

namespace A165982

/-- `p?[A175222(n+1)+A076273(n)]` -/
def P10326789403554154104.Spec : Prop :=
  ∀ n, P10326789403554154104.a n = A165982 (n + 1)

end A165982

/-! ## A165982.P13779737284185390372

`p?[A175221(n+1)+A001043(n+2)]`
-/

namespace A165982.P13779737284185390372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1) + A001043 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165982.P13779737284185390372

namespace A165982

/-- `p?[A175221(n+1)+A001043(n+2)]` -/
def P13779737284185390372.Spec : Prop :=
  ∀ n, P13779737284185390372.a n = A165982 (n + 1)

theorem P13779737284185390372.correct : P13779737284185390372.Spec := by
  intro n
  simp only [A165982, Nat.add_sub_cancel, A165982.P13779737284185390372.f1, A165982.P13779737284185390372.a, A165982.P7822805712144647645.f1, A165982.P7822805712144647645.a, A001043, A001043.P18269783162673735460.a, A034961, A034961.P9480249767911558173.a, A175221, A175221.P11226718615464862765.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165982

/-! ## A165982.P4836425730011538436

`p?[A113935(n+1)+A076273(n)+2]`
-/

namespace A165982.P4836425730011538436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) + (A076273 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165982.P4836425730011538436

namespace A165982

/-- `p?[A113935(n+1)+A076273(n)+2]` -/
def P4836425730011538436.Spec : Prop :=
  ∀ n, P4836425730011538436.a n = A165982 (n + 1)

end A165982

/-! ## A165982.P2099319802741111648

`p?[A048448(n+1)+A113935(n+1)+1]`
-/

namespace A165982.P2099319802741111648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 (n + 1) + (A113935 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165982.P2099319802741111648

namespace A165982

/-- `p?[A048448(n+1)+A113935(n+1)+1]` -/
def P2099319802741111648.Spec : Prop :=
  ∀ n, P2099319802741111648.a n = A165982 (n + 1)

end A165982

/-! ## A165982.P7645370433544062572

`p?[A034963(n+1)+2-A040976(n+1)]`
-/

namespace A165982.P7645370433544062572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034963 (n + 1) + (2 - A040976 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165982.P7645370433544062572

namespace A165982

/-- `p?[A034963(n+1)+2-A040976(n+1)]` -/
def P7645370433544062572.Spec : Prop :=
  ∀ n, P7645370433544062572.a n = A165982 (n + 1)

end A165982

/-! ## A165982.P14285496815417384759

`p?[A001043(n+2)+A000040(n+1)+4]`
-/

namespace A165982.P14285496815417384759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 2) + (A000040 (n + 1) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165982.P14285496815417384759

namespace A165982

/-- `p?[A001043(n+2)+A000040(n+1)+4]` -/
def P14285496815417384759.Spec : Prop :=
  ∀ n, P14285496815417384759.a n = A165982 (n + 1)

end A165982

/-! ## A165982.P1312032021894498616

`p?[A011974(n+1)+A005408(A098090(n+1))]`
-/

namespace A165982.P1312032021894498616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1) + A005408 (A098090 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165982.P1312032021894498616

namespace A165982

/-- `p?[A011974(n+1)+A005408(A098090(n+1))]` -/
def P1312032021894498616.Spec : Prop :=
  ∀ n, P1312032021894498616.a n = A165982 (n + 1)

end A165982

/-!
# A165983: Period 16: repeat [1, 1, 1, 2, 1, 1, 1, 2, 1, 1, 1, 4, 1, 1, 1, 4].

The programs for A165983, the canonical program `A165983.P8630106657165112535` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165983 has offset 0).

The definition of A165983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165983.P8630106657165112535

`gcd(4, ∑[gcd(1-∑[n], 2*n)])`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165983

/-- `gcd(4, ∑[gcd(1-∑[n], 2*n)])` -/
def P8630106657165112535.Spec : Prop :=
  ∀ n, (P8630106657165112535.a n : ℤ) = A165983 n

theorem P8630106657165112535.correct : P8630106657165112535.Spec := by
  intro n
  simp only [A165983]

end A165983

/-!
# A165984: Number of ways to put n indistinguishable balls into n^3 distinguishable boxes.

The programs for A165984, there is no canonical definition to state claims against.
-/

/-! ## A165984.P691922520850179188

`C(abs(1-n^3)+n, n)`
-/

namespace A165984.P691922520850179188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (|1 - (n ^ 3 : ℤ)| + (n : ℤ)).toNat n

end

end A165984.P691922520850179188

/-! ## A165984.P16248906064375750368

`A230049(∑[4*n])`
-/

namespace A165984.P16248906064375750368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230049 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165984.P16248906064375750368

/-!
# A165985: Primes that are 8 plus the sum of three consecutive primes.

The programs for A165985, the canonical program `A165985.P12541880626013702028` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165985 has offset 1).

The definition of A165985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165985.P12541880626013702028

`p?[A034961(n+1)+8]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A165985

/-- `p?[A034961(n+1)+8]` -/
def P12541880626013702028.Spec : Prop :=
  ∀ n, P12541880626013702028.a n = A165985 (n + 1)

theorem P12541880626013702028.correct : P12541880626013702028.Spec := by
  intro n
  simp only [A165985, Nat.add_sub_cancel]

end A165985

/-! ## A165985.P2405980666397290278

`p?[A175224(n+1)+A001043(n+2)]`
-/

namespace A165985.P2405980666397290278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 1) + A001043 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165985.P2405980666397290278

namespace A165985

/-- `p?[A175224(n+1)+A001043(n+2)]` -/
def P2405980666397290278.Spec : Prop :=
  ∀ n, P2405980666397290278.a n = A165985 (n + 1)

theorem P2405980666397290278.correct : P2405980666397290278.Spec := by
  intro n
  simp only [A165985, Nat.add_sub_cancel, A165985.P2405980666397290278.f1, A165985.P2405980666397290278.a, A165985.P12541880626013702028.f1, A165985.P12541880626013702028.a, A001043, A001043.P18269783162673735460.a, A034961, A034961.P9480249767911558173.a, A175224, A175224.P1386793928636688251.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165985

/-! ## A165985.P998105531861511412

`p?[A175222(n+1)+A076273(n)+4]`
-/

namespace A165985.P998105531861511412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175222 (n + 1) + A076273 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165985.P998105531861511412

namespace A165985

/-- `p?[A175222(n+1)+A076273(n)+4]` -/
def P998105531861511412.Spec : Prop :=
  ∀ n, P998105531861511412.a n = A165985 (n + 1)

end A165985

/-! ## A165985.P3730269159656053824

`p?[A071148(n+2)-A007504(n)+10]`
-/

namespace A165985.P3730269159656053824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071148 (n + 2) - A007504 n + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165985.P3730269159656053824

namespace A165985

/-- `p?[A071148(n+2)-A007504(n)+10]` -/
def P3730269159656053824.Spec : Prop :=
  ∀ n, P3730269159656053824.a n = A165985 (n + 1)

end A165985

/-! ## A165985.P188112671068962533

`p?[A175224(n+1)+2*A024675(n+1)]`
-/

namespace A165985.P188112671068962533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 1) + 2 * A024675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165985.P188112671068962533

namespace A165985

/-- `p?[A175224(n+1)+2*A024675(n+1)]` -/
def P188112671068962533.Spec : Prop :=
  ∀ n, P188112671068962533.a n = A165985 (n + 1)

end A165985

/-! ## A165985.P13739036172463437551

`p?[A181428(n+1)+2*A175221(n+1)]`
-/

namespace A165985.P13739036172463437551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181428 (n + 1) + 2 * A175221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165985.P13739036172463437551

namespace A165985

/-- `p?[A181428(n+1)+2*A175221(n+1)]` -/
def P13739036172463437551.Spec : Prop :=
  ∀ n, P13739036172463437551.a n = A165985 (n + 1)

end A165985

/-! ## A165985.P11710337172986289395

`p?[A001043(n+1)+A000040(n+3)+8]`
-/

namespace A165985.P11710337172986289395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A000040 (n + 3) + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165985.P11710337172986289395

namespace A165985

/-- `p?[A001043(n+1)+A000040(n+3)+8]` -/
def P11710337172986289395.Spec : Prop :=
  ∀ n, P11710337172986289395.a n = A165985 (n + 1)

theorem P11710337172986289395.correct : P11710337172986289395.Spec := by
  intro n
  simp only [A165985, Nat.add_sub_cancel, A165985.P11710337172986289395.f1, A165985.P11710337172986289395.a, A165985.P12541880626013702028.f1, A165985.P12541880626013702028.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A034961, A034961.P9480249767911558173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A165985

/-! ## A165985.P17178957070575917814

`p?[A175224(n+1)+A013634(A065091(n+1))]`
-/

namespace A165985.P17178957070575917814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 1) + A013634 (A065091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165985.P17178957070575917814

namespace A165985

/-- `p?[A175224(n+1)+A013634(A065091(n+1))]` -/
def P17178957070575917814.Spec : Prop :=
  ∀ n, P17178957070575917814.a n = A165985 (n + 1)

end A165985

/-! ## A165985.P186735969024701892

`p?[A181428(n+1)+A005843(A175221(n+1))]`
-/

namespace A165985.P186735969024701892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181428 (n + 1) + A005843 (A175221 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165985.P186735969024701892

namespace A165985

/-- `p?[A181428(n+1)+A005843(A175221(n+1))]` -/
def P186735969024701892.Spec : Prop :=
  ∀ n, P186735969024701892.a n = A165985 (n + 1)

end A165985

/-! ## A165985.P4461183238929544780

`p?[A146308(A113935(n+1)+A076273(n))]`
-/

namespace A165985.P4461183238929544780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146308 (A113935 (n + 1) + A076273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165985.P4461183238929544780

namespace A165985

/-- `p?[A146308(A113935(n+1)+A076273(n))]` -/
def P4461183238929544780.Spec : Prop :=
  ∀ n, P4461183238929544780.a n = A165985 (n + 1)

end A165985

/-!
# A165986: Even semiprimes n such that (the largest prime factor of n) + 4 is prime.

The programs for A165986, there is no canonical definition to state claims against.
-/

/-! ## A165986.P17047859829351691954

`2*A015913(n+1)`
-/

namespace A165986.P17047859829351691954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A015913 (n + 1)

end

end A165986.P17047859829351691954

/-! ## A165986.P10641158492156995932

`2*(A087679(n+1)-2)`
-/

namespace A165986.P10641158492156995932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A087679 (n + 1) - 2)

end

end A165986.P10641158492156995932

/-! ## A165986.P14206100556620587791

`4*A047847(n+1)+2`
-/

namespace A165986.P14206100556620587791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A047847 (n + 1) + 2

end

end A165986.P14206100556620587791

/-! ## A165986.P1513566427902121886

`2*(A046132(n+1)-4)`
-/

namespace A165986.P1513566427902121886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A046132 (n + 1) - 4)

end

end A165986.P1513566427902121886

/-! ## A165986.P7243129997688496593

`4*A088762(n+1)-2`
-/

namespace A165986.P7243129997688496593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A088762 (n + 1) - 2

end

end A165986.P7243129997688496593

/-! ## A165986.P8573400696081091157

`2*(A029710(n+1)-A053320(n+1))`
-/

namespace A165986.P8573400696081091157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A029710 (n + 1) - A053320 (n + 1))

end

end A165986.P8573400696081091157

/-! ## A165986.P1037179845151782060

`2/A046132(n+1)*A143206(n+1)`
-/

namespace A165986.P1037179845151782060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A046132 (n + 1) : ℚ) * (A143206 (n + 1) : ℚ)

end

end A165986.P1037179845151782060

/-! ## A165986.P16047453479301504498

`2*A172238(n+2)`
-/

namespace A165986.P16047453479301504498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172238 (n + 2)

end

end A165986.P16047453479301504498

/-! ## A165986.P9142146649137194537

`2*p?[A056772(n+1)]`
-/

namespace A165986.P9142146649137194537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165986.P9142146649137194537

/-! ## A165986.P15974366812507356407

`2*A094343(Δ[n²])`
-/

namespace A165986.P15974366812507356407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094343 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A165986.P15974366812507356407

/-! ## A165986.P15983124990822795798

`2*(A072541(2*n+1)-1)`
-/

namespace A165986.P15983124990822795798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A072541 (2 * n + 1) - 1)

end

end A165986.P15983124990822795798

/-! ## A165986.P9141050585547405300

`A094343(2*n+1)+A094343(2*n+1)`
-/

namespace A165986.P9141050585547405300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094343 (2 * n + 1) + A094343 (2 * n + 1)

end

end A165986.P9141050585547405300

/-! ## A165986.P4101168561048120711

`2*∩[A007645(n+1), A056772(n+1)]`
-/

namespace A165986.P4101168561048120711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165986.P4101168561048120711

/-! ## A165986.P17589095798601357038

`2*∩[A040116(n+1), A056772(n+1)]`
-/

namespace A165986.P17589095798601357038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165986.P17589095798601357038

/-! ## A165986.P8382983583188624159

`2*∩[A040970(n+1), A056772(n+1)]`
-/

namespace A165986.P8382983583188624159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165986.P8382983583188624159

/-! ## A165986.P11963206830386242195

`2*∩[A040974(n+1), A056772(n+1)]`
-/

namespace A165986.P11963206830386242195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A165986.P11963206830386242195

/-! ## A165986.P8997439825346715050

`2*p?[A172367(n+1)]`
-/

namespace A165986.P8997439825346715050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165986.P8997439825346715050

/-! ## A165986.P5010767240134352681

`2*p?[A086304(n+1)+2]`
-/

namespace A165986.P5010767240134352681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165986.P5010767240134352681

/-! ## A165986.P16889950871159225014

`2*p?[A086801(n+1)-1]`
-/

namespace A165986.P16889950871159225014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165986.P16889950871159225014

/-! ## A165986.P11383679828117276726

`2*p?[A118538(n+1)+2]`
-/

namespace A165986.P11383679828117276726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A165986.P11383679828117276726

/-!
# A165988: First trisection of A022998.

The programs for A165988, the canonical program `A165988.P4700576566094035495` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165988 has offset 0).

The definition of A165988 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165988.P9985232289507668024

`3*n*(3+(-1)^n)/2`
-/

namespace A165988.P9985232289507668024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) * (3 + (-1) ^ n) : ℚ) / 2

end

end A165988.P9985232289507668024

namespace A165988

/-- `3*n*(3+(-1)^n)/2` -/
def P9985232289507668024.Spec : Prop :=
  ∀ n, P9985232289507668024.a n = (A165988 n : ℚ)

theorem P9985232289507668024.correct : P9985232289507668024.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A165988, Nat.add_sub_cancel, A165988.P9985232289507668024.a, A165988.P4700576566094035495.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A165988, Nat.add_sub_cancel, A165988.P9985232289507668024.a, A165988.P4700576566094035495.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A165988

/-! ## A165988.P4700576566094035495

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=12, a(3)=9`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165988

/-- `2*a(n-2)-a(n-4)` -/
def P4700576566094035495.Spec : Prop :=
  ∀ n, P4700576566094035495.a n = A165988 n

theorem P4700576566094035495.correct : P4700576566094035495.Spec := by
  intro n
  simp only [A165988]

end A165988

/-! ## A165988.P454121164021358416

`A022998(3*n)`
-/

namespace A165988.P454121164021358416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (3 * n)

end

end A165988.P454121164021358416

namespace A165988

/-- `A022998(3*n)` -/
def P454121164021358416.Spec : Prop :=
  ∀ n, P454121164021358416.a n = A165988 n

end A165988

/-! ## A165988.P15012589120316054839

`3*n*gcd(2, n)`
-/

namespace A165988.P15012589120316054839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n * Nat.gcd 2 n)

end

end A165988.P15012589120316054839

namespace A165988

/-- `3*n*gcd(2, n)` -/
def P15012589120316054839.Spec : Prop :=
  ∀ n, (P15012589120316054839.a n : ℤ) = A165988 n

end A165988

/-! ## A165988.P6664377853254499993

`n*lcm(3, or(n, -2))`
-/

namespace A165988.P6664377853254499993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.lcm 3 (Int.lor (n : ℤ) (-2))

end

end A165988.P6664377853254499993

namespace A165988

/-- `n*lcm(3, or(n, -2))` -/
def P6664377853254499993.Spec : Prop :=
  ∀ n, (P6664377853254499993.a n : ℤ) = A165988 n

end A165988

/-! ## A165988.P12017663214667180013

`n*∏{d}[n, ceil(3/#)]`
-/

namespace A165988.P12017663214667180013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∏ d ∈ Nat.divisors (f1 n), ⌈3 / (d : ℚ)⌉)

end

end A165988.P12017663214667180013

namespace A165988

/-- `n*∏{d}[n, ceil(3/#)]` -/
def P12017663214667180013.Spec : Prop :=
  ∀ n, P12017663214667180013.a n = A165988 n

end A165988

/-! ## A165988.P14344497619189821503

`(2-n%2)*3*n`
-/

namespace A165988.P14344497619189821503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((n % 2 : ℕ) : ℤ)) * (3 * n : ℤ)

end

end A165988.P14344497619189821503

namespace A165988

/-- `(2-n%2)*3*n` -/
def P14344497619189821503.Spec : Prop :=
  ∀ n, P14344497619189821503.a n = A165988 n

end A165988

/-! ## A165988.P7325717469363831563

`3*n*(2-and(1, n))`
-/

namespace A165988.P7325717469363831563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) * (2 - (Nat.land 1 n : ℤ))

end

end A165988.P7325717469363831563

namespace A165988

/-- `3*n*(2-and(1, n))` -/
def P7325717469363831563.Spec : Prop :=
  ∀ n, P7325717469363831563.a n = A165988 n

end A165988

/-! ## A165988.P7916588074768920880

`lcm(3*n, lcm(2, n)+n)`
-/

namespace A165988.P7916588074768920880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (3 * n) (Nat.lcm 2 n + n)

end

end A165988.P7916588074768920880

namespace A165988

/-- `lcm(3*n, lcm(2, n)+n)` -/
def P7916588074768920880.Spec : Prop :=
  ∀ n, (P7916588074768920880.a n : ℤ) = A165988 n

end A165988

/-! ## A165988.P2446057742860247695

`3*n*((n+1)%2+1)`
-/

namespace A165988.P2446057742860247695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n * ((n + 1) % 2 + 1))

end

end A165988.P2446057742860247695

namespace A165988

/-- `3*n*((n+1)%2+1)` -/
def P2446057742860247695.Spec : Prop :=
  ∀ n, (P2446057742860247695.a n : ℤ) = A165988 n

end A165988

/-! ## A165988.P9268428343088183543

`(and(1, n+1)+1)*3*n`
-/

namespace A165988.P9268428343088183543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) + 1) * (3 * n)

end

end A165988.P9268428343088183543

namespace A165988

/-- `(and(1, n+1)+1)*3*n` -/
def P9268428343088183543.Spec : Prop :=
  ∀ n, (P9268428343088183543.a n : ℤ) = A165988 n

end A165988

/-! ## A165988.P1149529209931335622

`n*∑[-a(n-1)]` with `a(0)=0, a(1)=3, a(2)=3`
-/

namespace A165988.P1149529209931335622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 3] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A165988.P1149529209931335622

namespace A165988

/-- `n*∑[-a(n-1)]` -/
def P1149529209931335622.Spec : Prop :=
  ∀ n, P1149529209931335622.a n = A165988 n

end A165988

/-! ## A165988.P4893684678614288719

`∑{d}[3-a(n-1), n*#]` with `a(0)=5`
-/

namespace A165988.P4893684678614288719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, n * d

end

end A165988.P4893684678614288719

namespace A165988

/-- `∑{d}[3-a(n-1), n*#]` -/
def P4893684678614288719.Spec : Prop :=
  ∀ n, (P4893684678614288719.a n : ℤ) = A165988 n

end A165988

/-! ## A165988.P53028156192713228

`2*n*3/(2*and(1, n))!`
-/

namespace A165988.P53028156192713228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) * (3 / (Nat.factorial (2 * Nat.land 1 n) : ℚ))

end

end A165988.P53028156192713228

namespace A165988

/-- `2*n*3/(2*and(1, n))!` -/
def P53028156192713228.Spec : Prop :=
  ∀ n, P53028156192713228.a n = (A165988 n : ℚ)

end A165988

/-! ## A165988.P6035621653468298985

`lcm(4, a(n-1))-a(n-2)` with `a(0)=0, a(1)=3`
-/

namespace A165988.P6035621653468298985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  (Int.lcm 4 (a (n - 1)) : ℤ) - a (n - 2)

end

end A165988.P6035621653468298985

namespace A165988

/-- `lcm(4, a(n-1))-a(n-2)` -/
def P6035621653468298985.Spec : Prop :=
  ∀ n, P6035621653468298985.a n = A165988 n

end A165988

/-! ## A165988.P8140846251048266420

`n*A040007(n)`
-/

namespace A165988.P8140846251048266420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A040007 n

end

end A165988.P8140846251048266420

namespace A165988

/-- `n*A040007(n)` -/
def P8140846251048266420.Spec : Prop :=
  ∀ n, P8140846251048266420.a n = A165988 n

end A165988

/-! ## A165988.P8107319294714531634

`lcm(n, A298028(n))`
-/

namespace A165988.P8107319294714531634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A298028 n)

end

end A165988.P8107319294714531634

namespace A165988

/-- `lcm(n, A298028(n))` -/
def P8107319294714531634.Spec : Prop :=
  ∀ n, (P8107319294714531634.a n : ℤ) = A165988 n

end A165988

/-! ## A165988.P12387842901741047168

`n*sqrt(A040309(n))`
-/

namespace A165988.P12387842901741047168
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A040309 n : ℝ)

end

end A165988.P12387842901741047168

namespace A165988

/-- `n*sqrt(A040309(n))` -/
def P12387842901741047168.Spec : Prop :=
  ∀ n, P12387842901741047168.a n = (A165988 n : ℝ)

end A165988

/-! ## A165988.P12226604158581189631

`n*(A040005(n)+2)`
-/

namespace A165988.P12226604158581189631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A040005 n + 2)

end

end A165988.P12226604158581189631

namespace A165988

/-- `n*(A040005(n)+2)` -/
def P12226604158581189631.Spec : Prop :=
  ∀ n, P12226604158581189631.a n = A165988 n

end A165988

/-!
# A165990: Nim sum of distinct consecutive pairs of Lucas Numbers.

The programs for A165990, the canonical program `A165990.P11905906101567529010` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165990 has offset 0).

The definition of A165990 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A165990.P4778357686595300330

`xor(ceil((ϕ^n)²), Δ[ceil((ϕ^n)²)])`
-/

namespace A165990.P4778357686595300330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.goldenRatio ^ n) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌈(Real.goldenRatio ^ n) ^ 2⌉ (f1 (n + 1) - f1 n)

end

end A165990.P4778357686595300330

namespace A165990

/-- `xor(ceil((ϕ^n)²), Δ[ceil((ϕ^n)²)])` -/
def P4778357686595300330.Spec : Prop :=
  ∀ n, P4778357686595300330.a n = A165990 n

end A165990

/-! ## A165990.P11905906101567529010

`A165794(2*n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A165990

/-- `A165794(2*n)` -/
def P11905906101567529010.Spec : Prop :=
  ∀ n, P11905906101567529010.a n = A165990 n

theorem P11905906101567529010.correct : P11905906101567529010.Spec := by
  intro n
  simp only [A165990]

end A165990

/-! ## A165990.P8855092761528643676

`xor(A002878(n), A005248(n))*A072345(2*n)`
-/

namespace A165990.P8855092761528643676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002878 n) (A005248 n) * A072345 (2 * n)

end

end A165990.P8855092761528643676

namespace A165990

/-- `xor(A002878(n), A005248(n))*A072345(2*n)` -/
def P8855092761528643676.Spec : Prop :=
  ∀ n, P8855092761528643676.a n = A165990 n

end A165990

/-! ## A165990.P8411840321884843121

`xor(A002878(n), A005248(n))%A246639(n)`
-/

namespace A165990.P8411840321884843121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (A002878 n) (A005248 n)) (A246639 n)

end

end A165990.P8411840321884843121

namespace A165990

/-- `xor(A002878(n), A005248(n))%A246639(n)` -/
def P8411840321884843121.Spec : Prop :=
  ∀ n, P8411840321884843121.a n = A165990 n

end A165990

/-! ## A165990.P3157144567571430447

`xor(A002878(n), A005248(n))*A266298(n²)`
-/

namespace A165990.P3157144567571430447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002878 n) (A005248 n) * A266298 (n ^ 2)

end

end A165990.P3157144567571430447

namespace A165990

/-- `xor(A002878(n), A005248(n))*A266298(n²)` -/
def P3157144567571430447.Spec : Prop :=
  ∀ n, P3157144567571430447.a n = A165990 n

end A165990

/-!
# A165991: Numbers n such that 3 + 2^n is not prime.

The programs for A165991, there is no canonical definition to state claims against.
-/

/-! ## A165991.P9065956331145071782

`eq[3, A116535(n)]`
-/

namespace A165991.P9065956331145071782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116535 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165991.P9065956331145071782

/-! ## A165991.P545671827806026619

`comp[A057732(n+1)]`
-/

namespace A165991.P545671827806026619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057732 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A165991.P545671827806026619

/-! ## A165991.P16088766214648441463

`comp[eq[3, A056206(n)]]`
-/

namespace A165991.P16088766214648441463
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A165991.P16088766214648441463

/-! ## A165991.P4443081899873347634

`lt[A135203(2*n+1), A056206(n)]`
-/

namespace A165991.P4443081899873347634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135203 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A165991.P4443081899873347634

/-! ## A165991.P1102148242988031456

`eq[1, A000079(n*char[A057732(n+1)])]`
-/

namespace A165991.P1102148242988031456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057732 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n * (if ∃ j, f3 j = (n : ℤ) then 1 else 0))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165991.P1102148242988031456

/-! ## A165991.P11494798891486978191

`eq[1, A014963(3*A056206(n))]`
-/

namespace A165991.P11494798891486978191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (3 * A056206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A165991.P11494798891486978191

/-!
# A165993: a(n) = Sum_{j=1..prime(n)-1} floor(j^2/prime(n)).

The programs for A165993, there is no canonical definition to state claims against.
-/

/-! ## A165993.P2803893869073791806

`A166375(A000040(n+1))`
-/

namespace A165993.P2803893869073791806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166375 (A000040 (n + 1)).toNat

end

end A165993.P2803893869073791806

/-! ## A165993.P6960599973253249988

`A166375(A008578(n+2))`
-/

namespace A165993.P6960599973253249988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166375 (A008578 (n + 2)).toNat

end

end A165993.P6960599973253249988

/-! ## A165993.P13501373795413045800

`A166375(A182986(n+2))`
-/

namespace A165993.P13501373795413045800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166375 (A182986 (n + 2)).toNat

end

end A165993.P13501373795413045800

/-! ## A165993.P8107632758060237809

`A166375(record[A006530(n+2)])`
-/

namespace A165993.P8107632758060237809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166375 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A165993.P8107632758060237809

/-! ## A165993.P7675473434186990840

`A166375(record[A014963(n+2)])`
-/

namespace A165993.P7675473434186990840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166375 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A165993.P7675473434186990840

/-! ## A165993.P6446252917331274408

`A166375(record[A020639(n+2)])`
-/

namespace A165993.P6446252917331274408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166375 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A165993.P6446252917331274408

/-! ## A165993.P13745278421190215840

`A166375(A006093(n+1)+1)`
-/

namespace A165993.P13745278421190215840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166375 (A006093 (n + 1) + 1).toNat

end

end A165993.P13745278421190215840

/-! ## A165993.P13507672857708891361

`A166375(record[A000010(n+1)+1])`
-/

namespace A165993.P13507672857708891361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166375 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A165993.P13507672857708891361

/-! ## A165993.P2726446683949264970

`record[A014785(A020639(n+1))-(2*n+1)]`
-/

namespace A165993.P2726446683949264970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014785 (A020639 (n + 1)).toNat - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165993.P2726446683949264970

/-! ## A165993.P5948546065630882172

`record[A014817(n+1)+n+1-A071892(n+1)]`
-/

namespace A165993.P5948546065630882172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014817 (n + 1) + ((n + 1 : ℤ) - A071892 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165993.P5948546065630882172

/-! ## A165993.P17111756943867097693

`record[A014817(A072505(n+1))-A072505(n+1)]`
-/

namespace A165993.P17111756943867097693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014817 (A072505 (n + 1)).toNat - A072505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165993.P17111756943867097693

/-! ## A165993.P11234939687781570125

`A014817(A006093(n+1)+1)-(A006093(n+1)+1)`
-/

namespace A165993.P11234939687781570125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014817 (A006093 (n + 1) + 1).toNat - (A006093 (n + 1) + 1)

end

end A165993.P11234939687781570125

/-!
# A165994: a(n) is the number of nonzero values of floor (j^2/prime(n)), over 1 <= j < prime(n).

The programs for A165994, the canonical program `A165994.P15795052251853394702` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165994 has offset 1).

The definition of A165994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165994.P15795052251853394702

`floor(A000040(n+1)-sqrt(A000040(n+1)))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A165994

/-- `floor(A000040(n+1)-sqrt(A000040(n+1)))` -/
def P15795052251853394702.Spec : Prop :=
  ∀ n, P15795052251853394702.a n = A165994 (n + 1)

theorem P15795052251853394702.correct : P15795052251853394702.Spec := by
  intro n
  simp only [A165994, Nat.add_sub_cancel]

end A165994

/-! ## A165994.P14962882027600427260

`A112045(n+1)-1`
-/

namespace A165994.P14962882027600427260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112045 (n + 1) - 1

end

end A165994.P14962882027600427260

namespace A165994

/-- `A112045(n+1)-1` -/
def P14962882027600427260.Spec : Prop :=
  ∀ n, P14962882027600427260.a n = A165994 (n + 1)

end A165994

/-! ## A165994.P9306603860804034493

`A103416(n)+A014689(n+1)`
-/

namespace A165994.P9306603860804034493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103416 n + A014689 (n + 1)

end

end A165994.P9306603860804034493

namespace A165994

/-- `A103416(n)+A014689(n+1)` -/
def P9306603860804034493.Spec : Prop :=
  ∀ n, P9306603860804034493.a n = A165994 (n + 1)

end A165994

/-! ## A165994.P14550872270000798156

`Δ[A007504(n)]-A104103(n+1)`
-/

namespace A165994.P14550872270000798156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A104103 (n + 1)

end

end A165994.P14550872270000798156

namespace A165994

/-- `Δ[A007504(n)]-A104103(n+1)` -/
def P14550872270000798156.Spec : Prop :=
  ∀ n, P14550872270000798156.a n = A165994 (n + 1)

end A165994

/-! ## A165994.P2829417432762230252

`A103355(n+1)+A065890(n+1)`
-/

namespace A165994.P2829417432762230252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103355 (n + 1) + A065890 (n + 1)

end

end A165994.P2829417432762230252

namespace A165994

/-- `A103355(n+1)+A065890(n+1)` -/
def P2829417432762230252.Spec : Prop :=
  ∀ n, P2829417432762230252.a n = A165994 (n + 1)

end A165994

/-! ## A165994.P3319309986853472074

`A006093(n+1)-A000006(n+1)`
-/

namespace A165994.P3319309986853472074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A000006 (n + 1)

end

end A165994.P3319309986853472074

namespace A165994

/-- `A006093(n+1)-A000006(n+1)` -/
def P3319309986853472074.Spec : Prop :=
  ∀ n, P3319309986853472074.a n = A165994 (n + 1)

end A165994

/-! ## A165994.P1189586868671251126

`A000040(n+1)-A104103(n+1)`
-/

namespace A165994.P1189586868671251126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A104103 (n + 1)

end

end A165994.P1189586868671251126

namespace A165994

/-- `A000040(n+1)-A104103(n+1)` -/
def P1189586868671251126.Spec : Prop :=
  ∀ n, P1189586868671251126.a n = A165994 (n + 1)

end A165994

/-! ## A165994.P7222233149993570579

`A014692(n+1)+A103416(n)-1`
-/

namespace A165994.P7222233149993570579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (n + 1) + (A103416 n - 1)

end

end A165994.P7222233149993570579

namespace A165994

/-- `A014692(n+1)+A103416(n)-1` -/
def P7222233149993570579.Spec : Prop :=
  ∀ n, P7222233149993570579.a n = A165994 (n + 1)

end A165994

/-! ## A165994.P14929219546680440846

`A095116(n+1)-A161188(n+1)`
-/

namespace A165994.P14929219546680440846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095116 (n + 1) - A161188 (n + 1)

end

end A165994.P14929219546680440846

namespace A165994

/-- `A095116(n+1)-A161188(n+1)` -/
def P14929219546680440846.Spec : Prop :=
  ∀ n, P14929219546680440846.a n = A165994 (n + 1)

end A165994

/-! ## A165994.P5114887418338826478

`sqrt(A001248(n+1))-A104103(n+1)`
-/

namespace A165994.P5114887418338826478
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) - (A104103 (n + 1) : ℝ)

end

end A165994.P5114887418338826478

namespace A165994

/-- `sqrt(A001248(n+1))-A104103(n+1)` -/
def P5114887418338826478.Spec : Prop :=
  ∀ n, P5114887418338826478.a n = (A165994 (n + 1) : ℝ)

end A165994

/-! ## A165994.P15006363617025627582

`∑[A054541(n+1)]-A104103(n+1)`
-/

namespace A165994.P15006363617025627582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A104103 (n + 1)

end

end A165994.P15006363617025627582

namespace A165994

/-- `∑[A054541(n+1)]-A104103(n+1)` -/
def P15006363617025627582.Spec : Prop :=
  ∀ n, P15006363617025627582.a n = A165994 (n + 1)

end A165994

/-! ## A165994.P5321399321535020142

`record[A259153(n+2)]-A104103(n+1)`
-/

namespace A165994.P5321399321535020142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A104103 (n + 1)

end

end A165994.P5321399321535020142

namespace A165994

/-- `record[A259153(n+2)]-A104103(n+1)` -/
def P5321399321535020142.Spec : Prop :=
  ∀ n, P5321399321535020142.a n = A165994 (n + 1)

end A165994

/-! ## A165994.P2809918449101681982

`A000040(n+1)-(A000006(n+1)+1)`
-/

namespace A165994.P2809918449101681982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A000006 (n + 1) + 1)

end

end A165994.P2809918449101681982

namespace A165994

/-- `A000040(n+1)-(A000006(n+1)+1)` -/
def P2809918449101681982.Spec : Prop :=
  ∀ n, P2809918449101681982.a n = A165994 (n + 1)

end A165994

/-! ## A165994.P13958957845030355911

`A040976(n+1)+1-A000006(n+1)`
-/

namespace A165994.P13958957845030355911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (1 - A000006 (n + 1))

end

end A165994.P13958957845030355911

namespace A165994

/-- `A040976(n+1)+1-A000006(n+1)` -/
def P13958957845030355911.Spec : Prop :=
  ∀ n, P13958957845030355911.a n = A165994 (n + 1)

end A165994

/-! ## A165994.P2741807253143037503

`A008864(n+1)-(A104103(n+1)+1)`
-/

namespace A165994.P2741807253143037503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A104103 (n + 1) + 1)

end

end A165994.P2741807253143037503

namespace A165994

/-- `A008864(n+1)-(A104103(n+1)+1)` -/
def P2741807253143037503.Spec : Prop :=
  ∀ n, P2741807253143037503.a n = A165994 (n + 1)

end A165994

/-! ## A165994.P1593855669613870039

`A014689(n+1)+A103355(n+1)-1`
-/

namespace A165994.P1593855669613870039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) + (A103355 (n + 1) - 1)

end

end A165994.P1593855669613870039

namespace A165994

/-- `A014689(n+1)+A103355(n+1)-1` -/
def P1593855669613870039.Spec : Prop :=
  ∀ n, P1593855669613870039.a n = A165994 (n + 1)

end A165994

/-! ## A165994.P5865118893051738672

`A014688(n+1)-(A161188(n+1)+1)`
-/

namespace A165994.P5865118893051738672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - (A161188 (n + 1) + 1)

end

end A165994.P5865118893051738672

namespace A165994

/-- `A014688(n+1)-(A161188(n+1)+1)` -/
def P5865118893051738672.Spec : Prop :=
  ∀ n, P5865118893051738672.a n = A165994 (n + 1)

end A165994

/-! ## A165994.P15569669780670963200

`A008864(n+1)-(A000006(n+1)+2)`
-/

namespace A165994.P15569669780670963200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A000006 (n + 1) + 2)

end

end A165994.P15569669780670963200

namespace A165994

/-- `A008864(n+1)-(A000006(n+1)+2)` -/
def P15569669780670963200.Spec : Prop :=
  ∀ n, P15569669780670963200.a n = A165994 (n + 1)

end A165994

/-! ## A165994.P8149915893225739226

`A086801(n+1)+2-A000006(n+1)`
-/

namespace A165994.P8149915893225739226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) + (2 - A000006 (n + 1))

end

end A165994.P8149915893225739226

namespace A165994

/-- `A086801(n+1)+2-A000006(n+1)` -/
def P8149915893225739226.Spec : Prop :=
  ∀ n, P8149915893225739226.a n = A165994 (n + 1)

end A165994

/-! ## A165994.P17328909387631078759

`A014689(n+1)-A000006(n+1)+n`
-/

namespace A165994.P17328909387631078759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - A000006 (n + 1) + (n : ℤ)

end

end A165994.P17328909387631078759

namespace A165994

/-- `A014689(n+1)-A000006(n+1)+n` -/
def P17328909387631078759.Spec : Prop :=
  ∀ n, P17328909387631078759.a n = A165994 (n + 1)

end A165994

/-!
# A165995: a(n) = Sum_{p > n} floor(n^2/p), for primes p.

The programs for A165995, there is no canonical definition to state claims against.
-/

/-! ## A165995.P15551710336940719288

`A241419((n+1)²)`
-/

namespace A165995.P15551710336940719288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241419 ((n + 1) ^ 2)

end

end A165995.P15551710336940719288

/-! ## A165995.P5958845646228832463

`record[A241419(abs(A051494(n)))]`
-/

namespace A165995.P5958845646228832463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241419 |A051494 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165995.P5958845646228832463

/-! ## A165995.P3470360023796599692

`record[A241419(A028920(n)²)]`
-/

namespace A165995.P3470360023796599692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241419 (A028920 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165995.P3470360023796599692

/-! ## A165995.P858437577904273836

`record[A241419(A065648(n)²)]`
-/

namespace A165995.P858437577904273836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241419 (A065648 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165995.P858437577904273836

/-! ## A165995.P16666273185269170533

`record[A241419(A106466(n)²)]`
-/

namespace A165995.P16666273185269170533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241419 (A106466 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165995.P16666273185269170533

/-! ## A165995.P13592898888985648507

`record[A241419(A117910(n)²)]`
-/

namespace A165995.P13592898888985648507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241419 (A117910 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165995.P13592898888985648507

/-! ## A165995.P1687792485362993293

`record[A241419(A126759(n)²)]`
-/

namespace A165995.P1687792485362993293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241419 (A126759 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165995.P1687792485362993293

/-! ## A165995.P10928007792471349697

`record[A241419(A133310(n)²)]`
-/

namespace A165995.P10928007792471349697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241419 (A133310 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165995.P10928007792471349697

/-! ## A165995.P3137609643235222918

`record[A241419(A134478(n)²)]`
-/

namespace A165995.P3137609643235222918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241419 (A134478 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165995.P3137609643235222918

/-! ## A165995.P16192787519601511973

`record[A241419(A152271(n)²)]`
-/

namespace A165995.P16192787519601511973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241419 (A152271 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A165995.P16192787519601511973

/-!
# A165998: Denominators of Taylor series expansion of 1/(3*x)*log((1+x)/(1-x)^2).

The programs for A165998, the canonical program `A165998.P13821127794823257504` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A165998 has offset 0).

The definition of A165998 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A165998.P13821127794823257504

`(2-(-1)^n)*(n+1)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A165998

/-- `(2-(-1)^n)*(n+1)` -/
def P13821127794823257504.Spec : Prop :=
  ∀ n, P13821127794823257504.a n = A165998 n

theorem P13821127794823257504.correct : P13821127794823257504.Spec := by
  intro n
  simp only [A165998]

end A165998

/-! ## A165998.P3670604249293317950

`(n+1)/3^-(n%2)`
-/

namespace A165998.P3670604249293317950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 : ℚ) ^ (-((n % 2 : ℕ) : ℤ) : ℤ)

end

end A165998.P3670604249293317950

namespace A165998

/-- `(n+1)/3^-(n%2)` -/
def P3670604249293317950.Spec : Prop :=
  ∀ n, P3670604249293317950.a n = (A165998 n : ℚ)

end A165998

/-! ## A165998.P4370712614406735867

`(n+1)/3^-and(1, n)`
-/

namespace A165998.P4370712614406735867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 : ℚ) ^ (-(Nat.land 1 n : ℤ) : ℤ)

end

end A165998.P4370712614406735867

namespace A165998

/-- `(n+1)/3^-and(1, n)` -/
def P4370712614406735867.Spec : Prop :=
  ∀ n, P4370712614406735867.a n = (A165998 n : ℚ)

end A165998

/-! ## A165998.P3747033508449287048

`∑[6*n]/a(n-1)` with `a(0)=1`
-/

namespace A165998.P3747033508449287048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / a (n - 1)

end

end A165998.P3747033508449287048

namespace A165998

/-- `∑[6*n]/a(n-1)` -/
def P3747033508449287048.Spec : Prop :=
  ∀ n, P3747033508449287048.a n = (A165998 n : ℚ)

end A165998

/-! ## A165998.P5467105634143226666

`∑[∑[ogf((1+6x+x^2)/(1+2x+x^2))]]`
-/

namespace A165998.P5467105634143226666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 1] [1, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165998.P5467105634143226666

namespace A165998

/-- `∑[∑[ogf((1+6x+x^2)/(1+2x+x^2))]]` -/
def P5467105634143226666.Spec : Prop :=
  ∀ n, P5467105634143226666.a n = A165998 n

end A165998

/-! ## A165998.P66548399670788240

`ogf((1+6x+x^2)/(1-2x^2+x^4))`
-/

namespace A165998.P66548399670788240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 1] [1, 0, -2, 0, 1] n

end

end A165998.P66548399670788240

namespace A165998

/-- `ogf((1+6x+x^2)/(1-2x^2+x^4))` -/
def P66548399670788240.Spec : Prop :=
  ∀ n, P66548399670788240.a n = A165998 n

end A165998

/-! ## A165998.P6081066459568417086

`2*lcm(2, n)-xor(1, n-2)`
-/

namespace A165998.P6081066459568417086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lcm 2 n : ℤ) - Int.xor 1 ((n : ℤ) - 2)

end

end A165998.P6081066459568417086

namespace A165998

/-- `2*lcm(2, n)-xor(1, n-2)` -/
def P6081066459568417086.Spec : Prop :=
  ∀ n, P6081066459568417086.a n = A165998 n

end A165998

/-! ## A165998.P17324305504839503653

`C(2*n+3, and(1, n))+n`
-/

namespace A165998.P17324305504839503653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 3) (Nat.land 1 n) + n

end

end A165998.P17324305504839503653

namespace A165998

/-- `C(2*n+3, and(1, n))+n` -/
def P17324305504839503653.Spec : Prop :=
  ∀ n, (P17324305504839503653.a n : ℤ) = A165998 n

end A165998

/-! ## A165998.P17654974575508970534

`∑[Δ[2*n*gcd(2, n)]-1]`
-/

namespace A165998.P17654974575508970534
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.gcd 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A165998.P17654974575508970534

namespace A165998

/-- `∑[Δ[2*n*gcd(2, n)]-1]` -/
def P17654974575508970534.Spec : Prop :=
  ∀ n, P17654974575508970534.a n = A165998 n

end A165998

/-! ## A165998.P8992203017140316722

`abs((n+1)*(gcd(4, 2*n)-5))`
-/

namespace A165998.P8992203017140316722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * ((Nat.gcd 4 (2 * n) : ℤ) - 5)|

end

end A165998.P8992203017140316722

namespace A165998

/-- `abs((n+1)*(gcd(4, 2*n)-5))` -/
def P8992203017140316722.Spec : Prop :=
  ∀ n, P8992203017140316722.a n = A165998 n

end A165998

/-! ## A165998.P17965486800969820625

`Δ[(2*n+1)*or(1, n)/2]`
-/

namespace A165998.P17965486800969820625
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * ((Nat.lor 1 n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A165998.P17965486800969820625

namespace A165998

/-- `Δ[(2*n+1)*or(1, n)/2]` -/
def P17965486800969820625.Spec : Prop :=
  ∀ n, P17965486800969820625.a n = (A165998 n : ℚ)

end A165998

/-! ## A165998.P12269672634916027459

`abs((n+1)*(xor(1, n)-(n+2)))`
-/

namespace A165998.P12269672634916027459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * ((Nat.xor 1 n : ℤ) - (n + 2 : ℤ))|

end

end A165998.P12269672634916027459

namespace A165998

/-- `abs((n+1)*(xor(1, n)-(n+2)))` -/
def P12269672634916027459.Spec : Prop :=
  ∀ n, P12269672634916027459.a n = A165998 n

end A165998

/-! ## A165998.P4884943668880822635

`-((n+1)*(xor(1, n)-(n+2)))`
-/

namespace A165998.P4884943668880822635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * ((Nat.xor 1 n : ℤ) - (n + 2 : ℤ)))

end

end A165998.P4884943668880822635

namespace A165998

/-- `-((n+1)*(xor(1, n)-(n+2)))` -/
def P4884943668880822635.Spec : Prop :=
  ∀ n, P4884943668880822635.a n = A165998 n

end A165998

/-! ## A165998.P7648536209613309010

`(n+1)*Δ[or(1, n)]+n+1`
-/

namespace A165998.P7648536209613309010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (n + 1 : ℤ)

end

end A165998.P7648536209613309010

namespace A165998

/-- `(n+1)*Δ[or(1, n)]+n+1` -/
def P7648536209613309010.Spec : Prop :=
  ∀ n, P7648536209613309010.a n = A165998 n

end A165998

/-! ## A165998.P5436374191231707255

`∑{d}[or(n+1, -2), #*(n+1)]`
-/

namespace A165998.P5436374191231707255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d * (n + 1)

end

end A165998.P5436374191231707255

namespace A165998

/-- `∑{d}[or(n+1, -2), #*(n+1)]` -/
def P5436374191231707255.Spec : Prop :=
  ∀ n, (P5436374191231707255.a n : ℤ) = A165998 n

end A165998

/-! ## A165998.P908255621796249752

`2*(n+1)*and(1, n)+n+1`
-/

namespace A165998.P908255621796249752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1) * Nat.land 1 n) + (n + 1)

end

end A165998.P908255621796249752

namespace A165998

/-- `2*(n+1)*and(1, n)+n+1` -/
def P908255621796249752.Spec : Prop :=
  ∀ n, (P908255621796249752.a n : ℤ) = A165998 n

end A165998

/-! ## A165998.P9762259665672814702

`∑{d}[3-a(n-1), #*(n+1)]` with `a(0)=1`
-/

namespace A165998.P9762259665672814702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d * (n + 1)

end

end A165998.P9762259665672814702

namespace A165998

/-- `∑{d}[3-a(n-1), #*(n+1)]` -/
def P9762259665672814702.Spec : Prop :=
  ∀ n, (P9762259665672814702.a n : ℤ) = A165998 n

end A165998

/-! ## A165998.P831234963418516396

`∑{digits}[3/a(n-1), #*(n+1)]` with `a(0)=1`
-/

namespace A165998.P831234963418516396
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x * (n + 1)).sum

end

end A165998.P831234963418516396

namespace A165998

/-- `∑{digits}[3/a(n-1), #*(n+1)]` -/
def P831234963418516396.Spec : Prop :=
  ∀ n, (P831234963418516396.a n : ℤ) = A165998 n

end A165998

/-! ## A165998.P9292829272881430644

`∏{digits}[3/a(n-1), #*(n+1)]` with `a(0)=1`
-/

namespace A165998.P9292829272881430644
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x * (n + 1)).prod

end

end A165998.P9292829272881430644

namespace A165998

/-- `∏{digits}[3/a(n-1), #*(n+1)]` -/
def P9292829272881430644.Spec : Prop :=
  ∀ n, (P9292829272881430644.a n : ℤ) = A165998 n

end A165998

/-!
# A165999: Triangle read by rows: T(0,0) = 1, T(n,k) = T(n-1,k-1) + T(n-1,k) for n > 0, 0 < k <= trinv(n), where trinv(n) = floor((1+sqrt(1+8*n))/2), and entries outside triangle are 0.

The programs for A165999, there is no canonical definition to state claims against.
-/

/-! ## A165999.P14396233544893391801

`A008315(record[A008624(A089868(n))])`
-/

namespace A165999.P14396233544893391801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A089868 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008315 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A165999.P14396233544893391801

