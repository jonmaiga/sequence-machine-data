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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
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
import Seq.B002.C004
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A163100: Triangle giving positive values of A147861.

The programs for A163100, there is no canonical definition to state claims against.
-/

/-! ## A163100.P9950251942650327731

`A003983(A056534(n+1))`
-/

namespace A163100.P9950251942650327731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (A056534 (n + 1)).toNat

end

end A163100.P9950251942650327731

/-! ## A163100.P956045866265085107

`filter[A147861(n+1), A022932(#)]`
-/

namespace A163100.P956045866265085107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022932 (f1 j).toNat = 1) n)

end

end A163100.P956045866265085107

/-! ## A163100.P1494946028410379504

`filter[A147861(n+1), A075897(#)]`
-/

namespace A163100.P1494946028410379504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075897 (f1 j).toNat = 1) n)

end

end A163100.P1494946028410379504

/-! ## A163100.P9933290511248585079

`filter[A147861(n+1), A079421(#)]`
-/

namespace A163100.P9933290511248585079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079421 (f1 j).toNat = 1) n)

end

end A163100.P9933290511248585079

/-! ## A163100.P10044676424311287824

`filter[A147861(n+1), A097325(#)]`
-/

namespace A163100.P10044676424311287824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A163100.P10044676424311287824

/-! ## A163100.P6000186255262220371

`filter[A147861(n+1), A109720(#)]`
-/

namespace A163100.P6000186255262220371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A163100.P6000186255262220371

/-! ## A163100.P3328932210581065945

`filter[A147861(n+1), A112713(#)]`
-/

namespace A163100.P3328932210581065945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A112713 (f1 j).toNat = 1) n)

end

end A163100.P3328932210581065945

/-! ## A163100.P15431964723535017577

`filter[A147861(n+1), A135947(#)]`
-/

namespace A163100.P15431964723535017577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135947 (f1 j).toNat = 1) n)

end

end A163100.P15431964723535017577

/-! ## A163100.P1301023389834259523

`filter[A147861(n+1), A145568(#)]`
-/

namespace A163100.P1301023389834259523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147861 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A163100.P1301023389834259523

/-! ## A163100.P16271895982653568089

`A061017(n+1)/A051125(A056534(n+1))`
-/

namespace A163100.P16271895982653568089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061017 (n + 1) : ℚ) / (A051125 (A056534 (n + 1)).toNat : ℚ)

end

end A163100.P16271895982653568089

/-!
# A163101: Partial sums of A163100.

The programs for A163101, there is no canonical definition to state claims against.
-/

/-! ## A163101.P541745093467484422

`∑[A163100(n+1)]`
-/

namespace A163101.P541745093467484422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163101.P541745093467484422

/-! ## A163101.P4194075304583982203

`∑[A003983(A056534(n+1))]`
-/

namespace A163101.P4194075304583982203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163101.P4194075304583982203

/-! ## A163101.P9088790666134533337

`A163100(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A163101.P9088790666134533337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163100 (n + 1) + a (A023443 n).toNat

end

end A163101.P9088790666134533337

/-! ## A163101.P4142964177928374398

`A163100(n+1)+a(A000027(n+1)-2)` with `a(0)=1`
-/

namespace A163101.P4142964177928374398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163100 (n + 1) + a (A000027 (n + 1) - 2).toNat

end

end A163101.P4142964177928374398

/-! ## A163101.P15428935978940816038

`A163100(n+1)-(A128407(3*n+5)-a(n-1))` with `a(0)=1`
-/

namespace A163101.P15428935978940816038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163100 (n + 1) - (A128407 (3 * n + 5) - a (n - 1))

end

end A163101.P15428935978940816038

/-! ## A163101.P14898292160189424128

`∑[A061017(n+1)/A051125(A056534(n+1))]`
-/

namespace A163101.P14898292160189424128
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061017 (n + 1) : ℚ) / (A051125 (A056534 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163101.P14898292160189424128

/-!
# A163102: a(n) = n^2*(n+1)^2/2.

The programs for A163102, the canonical program `A163102.P18078649972256092389` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163102 has offset 0).

The definition of A163102 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²*(n+1)²/2` (program `A163102.P1402212333294457797`, by `A163102.P1402212333294457797.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163102.P17635395753717258207

`(n*(n+1))²/2`
-/

namespace A163102.P17635395753717258207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1)) ^ 2 : ℚ) / 2

end

end A163102.P17635395753717258207

namespace A163102

/-- `(n*(n+1))²/2` -/
def P17635395753717258207.Spec : Prop :=
  ∀ n, P17635395753717258207.a n = (A163102 n : ℚ)

theorem P17635395753717258207.correct : P17635395753717258207.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A163102, Nat.add_sub_cancel, A163102.P17635395753717258207.a, A163102.P18078649972256092389.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A163102, Nat.add_sub_cancel, A163102.P17635395753717258207.a, A163102.P18078649972256092389.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A163102

/-! ## A163102.P1402212333294457797

`n²*(n+1)²/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163102.P1402212333294457797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 2 * (n + 1) ^ 2 : ℚ) / 2

end

end A163102.P1402212333294457797

namespace A163102

/-- `n²*(n+1)²/2` -/
def P1402212333294457797.Spec : Prop :=
  ∀ n, P1402212333294457797.a n = (A163102 n : ℚ)

theorem P1402212333294457797.correct : P1402212333294457797.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A163102, Nat.add_sub_cancel, A163102.P1402212333294457797.a, A163102.P18078649972256092389.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A163102, Nat.add_sub_cancel, A163102.P1402212333294457797.a, A163102.P18078649972256092389.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A163102

/-! ## A163102.P18078649972256092389

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=18, a(3)=72, a(4)=200`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A163102

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P18078649972256092389.Spec : Prop :=
  ∀ n, P18078649972256092389.a n = A163102 n

theorem P18078649972256092389.correct : P18078649972256092389.Spec := by
  intro n
  simp only [A163102]

end A163102

/-! ## A163102.P854610414592030221

`2*A000537(n)`
-/

namespace A163102.P854610414592030221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000537 n

end

end A163102.P854610414592030221

namespace A163102

/-- `2*A000537(n)` -/
def P854610414592030221.Spec : Prop :=
  ∀ n, P854610414592030221.a n = A163102 n

end A163102

/-! ## A163102.P16560248723644341221

`A000982(n*(n+1))`
-/

namespace A163102.P16560248723644341221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n * (n + 1))

end

end A163102.P16560248723644341221

namespace A163102

/-- `A000982(n*(n+1))` -/
def P16560248723644341221.Spec : Prop :=
  ∀ n, P16560248723644341221.a n = A163102 n

end A163102

/-! ## A163102.P1112851782649656536

`∑[n/cos(atan(1))]²`
-/

namespace A163102.P1112851782649656536
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.cos (Real.arctan (1 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163102.P1112851782649656536

namespace A163102

/-- `∑[n/cos(atan(1))]²` -/
def P1112851782649656536.Spec : Prop :=
  ∀ n, P1112851782649656536.a n = (A163102 n : ℝ)

end A163102

/-! ## A163102.P7228945428585121765

`∑[n/sin(atan(1))]²`
-/

namespace A163102.P7228945428585121765
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.sin (Real.arctan (1 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163102.P7228945428585121765

namespace A163102

/-- `∑[n/sin(atan(1))]²` -/
def P7228945428585121765.Spec : Prop :=
  ∀ n, P7228945428585121765.a n = (A163102 n : ℝ)

end A163102

/-! ## A163102.P13577952498220319812

`∑[n/cos(acot(1))]²`
-/

namespace A163102.P13577952498220319812
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.cos (SequenceMachineLib.acot (1 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163102.P13577952498220319812

namespace A163102

/-- `∑[n/cos(acot(1))]²` -/
def P13577952498220319812.Spec : Prop :=
  ∀ n, P13577952498220319812.a n = (A163102 n : ℝ)

end A163102

/-! ## A163102.P1128917293991802456

`∑[n/sin(acot(1))]²`
-/

namespace A163102.P1128917293991802456
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) / Real.sin (SequenceMachineLib.acot (1 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163102.P1128917293991802456

namespace A163102

/-- `∑[n/sin(acot(1))]²` -/
def P1128917293991802456.Spec : Prop :=
  ∀ n, P1128917293991802456.a n = (A163102 n : ℝ)

end A163102

/-! ## A163102.P3254043912383998530

`2*C(n+1, 2)²`
-/

namespace A163102.P3254043912383998530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (n + 1) 2 ^ 2

end

end A163102.P3254043912383998530

namespace A163102

/-- `2*C(n+1, 2)²` -/
def P3254043912383998530.Spec : Prop :=
  ∀ n, (P3254043912383998530.a n : ℤ) = A163102 n

end A163102

/-! ## A163102.P8273522477665185744

`∑[lcm(2, 2*n^3)]`
-/

namespace A163102.P8273522477665185744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (2 * n ^ 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163102.P8273522477665185744

namespace A163102

/-- `∑[lcm(2, 2*n^3)]` -/
def P8273522477665185744.Spec : Prop :=
  ∀ n, (P8273522477665185744.a n : ℤ) = A163102 n

end A163102

/-! ## A163102.P6739837430109757539

`∑[2*n^acos(cos(3))]`
-/

namespace A163102.P6739837430109757539
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * (n : ℝ) ^ (Real.arccos (Real.cos (3 : ℝ)))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163102.P6739837430109757539

namespace A163102

/-- `∑[2*n^acos(cos(3))]` -/
def P6739837430109757539.Spec : Prop :=
  ∀ n, P6739837430109757539.a n = (A163102 n : ℝ)

end A163102

/-! ## A163102.P10118464835523653599

`∑[n^3/tan(acot(2))]`
-/

namespace A163102.P10118464835523653599
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℝ) / Real.tan (SequenceMachineLib.acot (2 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163102.P10118464835523653599

namespace A163102

/-- `∑[n^3/tan(acot(2))]` -/
def P10118464835523653599.Spec : Prop :=
  ∀ n, P10118464835523653599.a n = (A163102 n : ℝ)

end A163102

/-! ## A163102.P11589021740170980338

`∑[n^3/cot(atan(2))]`
-/

namespace A163102.P11589021740170980338
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℝ) / Real.cot (Real.arctan (2 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163102.P11589021740170980338

namespace A163102

/-- `∑[n^3/cot(atan(2))]` -/
def P11589021740170980338.Spec : Prop :=
  ∀ n, P11589021740170980338.a n = (A163102 n : ℝ)

end A163102

/-! ## A163102.P14268987499369003785

`∑[n]+C(∑[2*n], 2)`
-/

namespace A163102.P14268987499369003785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2

end

end A163102.P14268987499369003785

namespace A163102

/-- `∑[n]+C(∑[2*n], 2)` -/
def P14268987499369003785.Spec : Prop :=
  ∀ n, (P14268987499369003785.a n : ℤ) = A163102 n

end A163102

/-! ## A163102.P2808471838114299157

`sqrt(4*C(n+1, 2)^4)`
-/

namespace A163102.P2808471838114299157
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (4 * Nat.choose (n + 1) 2 ^ 4 : ℝ)

end

end A163102.P2808471838114299157

namespace A163102

/-- `sqrt(4*C(n+1, 2)^4)` -/
def P2808471838114299157.Spec : Prop :=
  ∀ n, P2808471838114299157.a n = (A163102 n : ℝ)

end A163102

/-! ## A163102.P16034501374566526928

`∑[2*(n%(n+1))^3]`
-/

namespace A163102.P16034501374566526928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n % (n + 1)) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163102.P16034501374566526928

namespace A163102

/-- `∑[2*(n%(n+1))^3]` -/
def P16034501374566526928.Spec : Prop :=
  ∀ n, (P16034501374566526928.a n : ℤ) = A163102 n

end A163102

/-! ## A163102.P18421343995269822531

`∑[2*gcd(n, 2*n)^3]`
-/

namespace A163102.P18421343995269822531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd n (2 * n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163102.P18421343995269822531

namespace A163102

/-- `∑[2*gcd(n, 2*n)^3]` -/
def P18421343995269822531.Spec : Prop :=
  ∀ n, (P18421343995269822531.a n : ℤ) = A163102 n

end A163102

/-! ## A163102.P15751021722579979489

`∑[a(n-1)+sqrt(2)]²` with `a(0)=0`
-/

namespace A163102.P15751021722579979489
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + Real.sqrt (2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163102.P15751021722579979489

namespace A163102

/-- `∑[a(n-1)+sqrt(2)]²` -/
def P15751021722579979489.Spec : Prop :=
  ∀ n, P15751021722579979489.a n = (A163102 n : ℝ)

end A163102

/-! ## A163102.P13907971784146988609

`C(n+1, 2)²+∑[n]²`
-/

namespace A163102.P13907971784146988609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163102.P13907971784146988609

namespace A163102

/-- `C(n+1, 2)²+∑[n]²` -/
def P13907971784146988609.Spec : Prop :=
  ∀ n, (P13907971784146988609.a n : ℤ) = A163102 n

end A163102

/-!
# A163105: a(n) = tau(sigma(tau(n))), where tau = number of divisors of n (A000005), and sigma = sum of divisors of n (A000203).

The programs for A163105, the canonical program `A163105.P15390180849648052292` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163105 has offset 1).

The definition of A163105 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A062068, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163105.P15390180849648052292

`A062068(A000005(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A163105

/-- `A062068(A000005(n+1))` -/
def P15390180849648052292.Spec : Prop :=
  ∀ n, P15390180849648052292.a n = A163105 (n + 1)

theorem P15390180849648052292.correct : P15390180849648052292.Spec := by
  intro n
  simp only [A163105, Nat.add_sub_cancel]

end A163105

/-! ## A163105.P13873045804101744851

`A000005(A062069(n+1))`
-/

namespace A163105.P13873045804101744851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A062069 (n + 1)).toNat

end

end A163105.P13873045804101744851

namespace A163105

/-- `A000005(A062069(n+1))` -/
def P13873045804101744851.Spec : Prop :=
  ∀ n, P13873045804101744851.a n = A163105 (n + 1)

end A163105

/-! ## A163105.P4030202882535140110

`∏{e}[∑{d}[∏{e}[n+1, #+1], #], #+1]`
-/

namespace A163105.P4030202882535140110
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A163105.P4030202882535140110

namespace A163105

/-- `∏{e}[∑{d}[∏{e}[n+1, #+1], #], #+1]` -/
def P4030202882535140110.Spec : Prop :=
  ∀ n, (P4030202882535140110.a n : ℤ) = A163105 (n + 1)

end A163105

/-! ## A163105.P5323717271911982781

`A000005(∑{d}[∏{e}[n+1, #+1], #])`
-/

namespace A163105.P5323717271911982781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A163105.P5323717271911982781

namespace A163105

/-- `A000005(∑{d}[∏{e}[n+1, #+1], #])` -/
def P5323717271911982781.Spec : Prop :=
  ∀ n, P5323717271911982781.a n = A163105 (n + 1)

end A163105

/-! ## A163105.P8835865158942679212

`A184395(∑{d}[∏{e}[n+1, #+1], #])`
-/

namespace A163105.P8835865158942679212
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184395 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A163105.P8835865158942679212

namespace A163105

/-- `A184395(∑{d}[∏{e}[n+1, #+1], #])` -/
def P8835865158942679212.Spec : Prop :=
  ∀ n, P8835865158942679212.a n = A163105 (n + 1)

end A163105

/-! ## A163105.P17245094144574590606

`A000005(∑{d}[∑{d}[n+1, gcd(n, #)], #])`
-/

namespace A163105.P17245094144574590606
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A163105.P17245094144574590606

namespace A163105

/-- `A000005(∑{d}[∑{d}[n+1, gcd(n, #)], #])` -/
def P17245094144574590606.Spec : Prop :=
  ∀ n, P17245094144574590606.a n = A163105 (n + 1)

end A163105

/-! ## A163105.P12106744299075601664

`A062068(Δ[A054519(n)])`
-/

namespace A163105.P12106744299075601664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (f1 (n + 1) - f1 n).toNat

end

end A163105.P12106744299075601664

namespace A163105

/-- `A062068(Δ[A054519(n)])` -/
def P12106744299075601664.Spec : Prop :=
  ∀ n, P12106744299075601664.a n = A163105 (n + 1)

end A163105

/-! ## A163105.P17219728508953029906

`A000005(∑{d}[Δ[A006218(n)], #])`
-/

namespace A163105.P17219728508953029906
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A163105.P17219728508953029906

namespace A163105

/-- `A000005(∑{d}[Δ[A006218(n)], #])` -/
def P17219728508953029906.Spec : Prop :=
  ∀ n, P17219728508953029906.a n = A163105 (n + 1)

end A163105

/-! ## A163105.P4740396705103635965

`A062068(A334954(n+1)-1)`
-/

namespace A163105.P4740396705103635965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (A334954 (n + 1) - 1).toNat

end

end A163105.P4740396705103635965

namespace A163105

/-- `A062068(A334954(n+1)-1)` -/
def P4740396705103635965.Spec : Prop :=
  ∀ n, P4740396705103635965.a n = A163105 (n + 1)

end A163105

/-! ## A163105.P6411363492241236139

`A000005(∑{d}[A000005(n+1), #])`
-/

namespace A163105.P6411363492241236139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A163105.P6411363492241236139

namespace A163105

/-- `A000005(∑{d}[A000005(n+1), #])` -/
def P6411363492241236139.Spec : Prop :=
  ∀ n, P6411363492241236139.a n = A163105 (n + 1)

end A163105

/-! ## A163105.P2896101095584219334

`A000005(A069290(A000005(n+1)²))`
-/

namespace A163105.P2896101095584219334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A069290 (A000005 (n + 1) ^ 2).toNat).toNat

end

end A163105.P2896101095584219334

namespace A163105

/-- `A000005(A069290(A000005(n+1)²))` -/
def P2896101095584219334.Spec : Prop :=
  ∀ n, P2896101095584219334.a n = A163105 (n + 1)

end A163105

/-! ## A163105.P6396211288311719587

`A000005(A365347(A000005(n+1)²))`
-/

namespace A163105.P6396211288311719587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A365347 (A000005 (n + 1) ^ 2).toNat).toNat

end

end A163105.P6396211288311719587

namespace A163105

/-- `A000005(A365347(A000005(n+1)²))` -/
def P6396211288311719587.Spec : Prop :=
  ∀ n, P6396211288311719587.a n = A163105 (n + 1)

end A163105

/-! ## A163105.P4208204605056963196

`A000005(A367988(A000005(n+1)²))`
-/

namespace A163105.P4208204605056963196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A367988 (A000005 (n + 1) ^ 2).toNat).toNat

end

end A163105.P4208204605056963196

namespace A163105

/-- `A000005(A367988(A000005(n+1)²))` -/
def P4208204605056963196.Spec : Prop :=
  ∀ n, P4208204605056963196.a n = A163105 (n + 1)

end A163105

/-! ## A163105.P5983100084972165597

`A000005(A039653(A000005(n+1))+1)`
-/

namespace A163105.P5983100084972165597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A039653 (A000005 (n + 1)).toNat + 1).toNat

end

end A163105.P5983100084972165597

namespace A163105

/-- `A000005(A039653(A000005(n+1))+1)` -/
def P5983100084972165597.Spec : Prop :=
  ∀ n, P5983100084972165597.a n = A163105 (n + 1)

end A163105

/-! ## A163105.P8690826160558979100

`A000005(A074400(A000005(n+1))/2)`
-/

namespace A163105.P8690826160558979100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A074400 (A000005 (n + 1)).toNat : ℚ) / 2)).toNat

end

end A163105.P8690826160558979100

namespace A163105

/-- `A000005(A074400(A000005(n+1))/2)` -/
def P8690826160558979100.Spec : Prop :=
  ∀ n, P8690826160558979100.a n = A163105 (n + 1)

end A163105

/-! ## A163105.P8372408525152906445

`A062068(A173438(n+1)+A073802(n+1))`
-/

namespace A163105.P8372408525152906445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (A173438 (n + 1) + A073802 (n + 1)).toNat

end

end A163105.P8372408525152906445

namespace A163105

/-- `A062068(A173438(n+1)+A073802(n+1))` -/
def P8372408525152906445.Spec : Prop :=
  ∀ n, P8372408525152906445.a n = A163105 (n + 1)

end A163105

/-! ## A163105.P3739741707300109208

`A000005(A193350(n+1)+A193349(n+1))`
-/

namespace A163105.P3739741707300109208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A193350 (n + 1) + A193349 (n + 1)).toNat

end

end A163105.P3739741707300109208

namespace A163105

/-- `A000005(A193350(n+1)+A193349(n+1))` -/
def P3739741707300109208.Spec : Prop :=
  ∀ n, P3739741707300109208.a n = A163105 (n + 1)

end A163105

/-! ## A163105.P16811600625926260928

`A000005(A000203(n+1-A049820(n+1)))`
-/

namespace A163105.P16811600625926260928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 ((n + 1 : ℤ) - A049820 (n + 1)).toNat).toNat

end

end A163105.P16811600625926260928

namespace A163105

/-- `A000005(A000203(n+1-A049820(n+1)))` -/
def P16811600625926260928.Spec : Prop :=
  ∀ n, P16811600625926260928.a n = A163105 (n + 1)

end A163105

/-! ## A163105.P12763819540220297019

`A000005(A000203(A062249(n+1)-(n+1)))`
-/

namespace A163105.P12763819540220297019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (A062249 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A163105.P12763819540220297019

namespace A163105

/-- `A000005(A000203(A062249(n+1)-(n+1)))` -/
def P12763819540220297019.Spec : Prop :=
  ∀ n, P12763819540220297019.a n = A163105 (n + 1)

end A163105

/-! ## A163105.P11337822493571376815

`A062068(A062068(n+1)-A295305(n+1))`
-/

namespace A163105.P11337822493571376815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062068 (A062068 (n + 1) - A295305 (n + 1)).toNat

end

end A163105.P11337822493571376815

namespace A163105

/-- `A062068(A062068(n+1)-A295305(n+1))` -/
def P11337822493571376815.Spec : Prop :=
  ∀ n, P11337822493571376815.a n = A163105 (n + 1)

end A163105

/-!
# A163106: a(n) = sigma(sigma(tau(n))), where tau = number of divisors and sigma = sum of divisors.

The programs for A163106, the canonical program `A163106.P14887341656446241983` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163106 has offset 1).

The definition of A163106 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163106.P14887341656446241983

`A051027(A000005(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A163106

/-- `A051027(A000005(n+1))` -/
def P14887341656446241983.Spec : Prop :=
  ∀ n, P14887341656446241983.a n = A163106 (n + 1)

theorem P14887341656446241983.correct : P14887341656446241983.Spec := by
  intro n
  simp only [A163106, Nat.add_sub_cancel]

end A163106

/-! ## A163106.P6226537976033790844

`A000203(A062069(n+1))`
-/

namespace A163106.P6226537976033790844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A062069 (n + 1)).toNat

end

end A163106.P6226537976033790844

namespace A163106

/-- `A000203(A062069(n+1))` -/
def P6226537976033790844.Spec : Prop :=
  ∀ n, P6226537976033790844.a n = A163106 (n + 1)

end A163106

/-! ## A163106.P3760836676451879778

`A051027(∏{e}[n+1, #+1])`
-/

namespace A163106.P3760836676451879778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A163106.P3760836676451879778

namespace A163106

/-- `A051027(∏{e}[n+1, #+1])` -/
def P3760836676451879778.Spec : Prop :=
  ∀ n, P3760836676451879778.a n = A163106 (n + 1)

end A163106

/-! ## A163106.P10798260981685314498

`∑{d}[∑{d}[A329484(n+1), #], #]`
-/

namespace A163106.P10798260981685314498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A163106.P10798260981685314498

namespace A163106

/-- `∑{d}[∑{d}[A329484(n+1), #], #]` -/
def P10798260981685314498.Spec : Prop :=
  ∀ n, (P10798260981685314498.a n : ℤ) = A163106 (n + 1)

end A163106

/-! ## A163106.P5733006304878373259

`∑{d}[∑{d}[sqrt(A035116(n+1)), #], #]`
-/

namespace A163106.P5733006304878373259
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A035116 (n + 1) : ℝ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f2 n)).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A163106.P5733006304878373259

namespace A163106

/-- `∑{d}[∑{d}[sqrt(A035116(n+1)), #], #]` -/
def P5733006304878373259.Spec : Prop :=
  ∀ n, (P5733006304878373259.a n : ℤ) = A163106 (n + 1)

end A163106

/-! ## A163106.P9990617159082524095

`∑{d}[∑{d}[A320111(2*(n+1)), #], #]`
-/

namespace A163106.P9990617159082524095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A163106.P9990617159082524095

namespace A163106

/-- `∑{d}[∑{d}[A320111(2*(n+1)), #], #]` -/
def P9990617159082524095.Spec : Prop :=
  ∀ n, (P9990617159082524095.a n : ℤ) = A163106 (n + 1)

end A163106

/-! ## A163106.P11912990434752888389

`A000203(∑{d}[A000005(n+1), #])`
-/

namespace A163106.P11912990434752888389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A163106.P11912990434752888389

namespace A163106

/-- `A000203(∑{d}[A000005(n+1), #])` -/
def P11912990434752888389.Spec : Prop :=
  ∀ n, P11912990434752888389.a n = A163106 (n + 1)

end A163106

/-! ## A163106.P10164188812805977007

`A000203(∑{d}[A062011(n+1)/2, #])`
-/

namespace A163106.P10164188812805977007
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062011 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d)

end

end A163106.P10164188812805977007

namespace A163106

/-- `A000203(∑{d}[A062011(n+1)/2, #])` -/
def P10164188812805977007.Spec : Prop :=
  ∀ n, P10164188812805977007.a n = A163106 (n + 1)

end A163106

/-! ## A163106.P16943548257933820944

`A000203(A000203(∏{e}[n+1, #+1]))`
-/

namespace A163106.P16943548257933820944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat

end

end A163106.P16943548257933820944

namespace A163106

/-- `A000203(A000203(∏{e}[n+1, #+1]))` -/
def P16943548257933820944.Spec : Prop :=
  ∀ n, P16943548257933820944.a n = A163106 (n + 1)

end A163106

/-! ## A163106.P582755601456008198

`A000203(∑{d}[A038040(n+1)/(n+1), #])`
-/

namespace A163106.P582755601456008198
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d)

end

end A163106.P582755601456008198

namespace A163106

/-- `A000203(∑{d}[A038040(n+1)/(n+1), #])` -/
def P582755601456008198.Spec : Prop :=
  ∀ n, P582755601456008198.a n = A163106 (n + 1)

end A163106

/-! ## A163106.P2787190947371368275

`A000203(A000203(Δ[A006218(n)]))`
-/

namespace A163106.P2787190947371368275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (f1 (n + 1) - f1 n).toNat).toNat

end

end A163106.P2787190947371368275

namespace A163106

/-- `A000203(A000203(Δ[A006218(n)]))` -/
def P2787190947371368275.Spec : Prop :=
  ∀ n, P2787190947371368275.a n = A163106 (n + 1)

end A163106

/-! ## A163106.P10929221195473300284

`A000203(A000203(Δ[A054519(n)]))`
-/

namespace A163106.P10929221195473300284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (f1 (n + 1) - f1 n).toNat).toNat

end

end A163106.P10929221195473300284

namespace A163106

/-- `A000203(A000203(Δ[A054519(n)]))` -/
def P10929221195473300284.Spec : Prop :=
  ∀ n, P10929221195473300284.a n = A163106 (n + 1)

end A163106

/-! ## A163106.P10730328160398494108

`A000203(A069290(A000005(n+1)²))`
-/

namespace A163106.P10730328160398494108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A069290 (A000005 (n + 1) ^ 2).toNat).toNat

end

end A163106.P10730328160398494108

namespace A163106

/-- `A000203(A069290(A000005(n+1)²))` -/
def P10730328160398494108.Spec : Prop :=
  ∀ n, P10730328160398494108.a n = A163106 (n + 1)

end A163106

/-! ## A163106.P806429484650546372

`A000203(A365347(A000005(n+1)²))`
-/

namespace A163106.P806429484650546372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A365347 (A000005 (n + 1) ^ 2).toNat).toNat

end

end A163106.P806429484650546372

namespace A163106

/-- `A000203(A365347(A000005(n+1)²))` -/
def P806429484650546372.Spec : Prop :=
  ∀ n, P806429484650546372.a n = A163106 (n + 1)

end A163106

/-! ## A163106.P16987182689802957643

`A000203(A000203(A032741(n+1)+1))`
-/

namespace A163106.P16987182689802957643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (A032741 (n + 1) + 1).toNat).toNat

end

end A163106.P16987182689802957643

namespace A163106

/-- `A000203(A000203(A032741(n+1)+1))` -/
def P16987182689802957643.Spec : Prop :=
  ∀ n, P16987182689802957643.a n = A163106 (n + 1)

end A163106

/-! ## A163106.P363847088343807853

`A000203(A000203(A334954(n+1)-1))`
-/

namespace A163106.P363847088343807853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (A334954 (n + 1) - 1).toNat).toNat

end

end A163106.P363847088343807853

namespace A163106

/-- `A000203(A000203(A334954(n+1)-1))` -/
def P363847088343807853.Spec : Prop :=
  ∀ n, P363847088343807853.a n = A163106 (n + 1)

end A163106

/-! ## A163106.P16257110187603669726

`A000203(A000203(A320111(2*(n+1))))`
-/

namespace A163106.P16257110187603669726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (A320111 (2 * (n + 1))).toNat).toNat

end

end A163106.P16257110187603669726

namespace A163106

/-- `A000203(A000203(A320111(2*(n+1))))` -/
def P16257110187603669726.Spec : Prop :=
  ∀ n, P16257110187603669726.a n = A163106 (n + 1)

end A163106

/-! ## A163106.P7913734135156795800

`A000203(A000203(A158907(n+1)-n))`
-/

namespace A163106.P7913734135156795800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (A158907 (n + 1) - (n : ℤ)).toNat).toNat

end

end A163106.P7913734135156795800

namespace A163106

/-- `A000203(A000203(A158907(n+1)-n))` -/
def P7913734135156795800.Spec : Prop :=
  ∀ n, P7913734135156795800.a n = A163106 (n + 1)

end A163106

/-! ## A163106.P12466164808819653019

`A000203(A000203(n+1-A049820(n+1)))`
-/

namespace A163106.P12466164808819653019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 ((n + 1 : ℤ) - A049820 (n + 1)).toNat).toNat

end

end A163106.P12466164808819653019

namespace A163106

/-- `A000203(A000203(n+1-A049820(n+1)))` -/
def P12466164808819653019.Spec : Prop :=
  ∀ n, P12466164808819653019.a n = A163106 (n + 1)

end A163106

/-! ## A163106.P7548344598873347025

`A000203(A062068(n+1)-A076360(n+1))`
-/

namespace A163106.P7548344598873347025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A062068 (n + 1) - A076360 (n + 1)).toNat

end

end A163106.P7548344598873347025

namespace A163106

/-- `A000203(A062068(n+1)-A076360(n+1))` -/
def P7548344598873347025.Spec : Prop :=
  ∀ n, P7548344598873347025.a n = A163106 (n + 1)

end A163106

/-!
# A163107: a(n) = tau(tau(sigma(n))), where tau = A000005, the number of divisors, and sigma = A000203, the sum of divisors of n.

The programs for A163107, the canonical program `A163107.P15449425159225054418` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163107 has offset 1).

The definition of A163107 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A062068, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163107.P15449425159225054418

`A000005(A062068(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A163107

/-- `A000005(A062068(n+1))` -/
def P15449425159225054418.Spec : Prop :=
  ∀ n, P15449425159225054418.a n = A163107 (n + 1)

theorem P15449425159225054418.correct : P15449425159225054418.Spec := by
  intro n
  simp only [A163107, Nat.add_sub_cancel]

end A163107

/-! ## A163107.P17905116795025108436

`A010553(A000203(n+1))`
-/

namespace A163107.P17905116795025108436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (A000203 (n + 1)).toNat

end

end A163107.P17905116795025108436

namespace A163107

/-- `A010553(A000203(n+1))` -/
def P17905116795025108436.Spec : Prop :=
  ∀ n, P17905116795025108436.a n = A163107 (n + 1)

end A163107

/-! ## A163107.P7789265044330684143

`∏{e}[∏{e}[∑{d}[n+1, #], #+1], #+1]`
-/

namespace A163107.P7789265044330684143
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A163107.P7789265044330684143

namespace A163107

/-- `∏{e}[∏{e}[∑{d}[n+1, #], #+1], #+1]` -/
def P7789265044330684143.Spec : Prop :=
  ∀ n, (P7789265044330684143.a n : ℤ) = A163107 (n + 1)

end A163107

/-! ## A163107.P3126876031883975396

`A000005(∏{e}[∑{d}[n+1, #], #+1])`
-/

namespace A163107.P3126876031883975396
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A163107.P3126876031883975396

namespace A163107

/-- `A000005(∏{e}[∑{d}[n+1, #], #+1])` -/
def P3126876031883975396.Spec : Prop :=
  ∀ n, P3126876031883975396.a n = A163107 (n + 1)

end A163107

/-! ## A163107.P12581756699231125725

`A046951(A062068(n+1)²)`
-/

namespace A163107.P12581756699231125725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A062068 (n + 1) ^ 2).toNat

end

end A163107.P12581756699231125725

namespace A163107

/-- `A046951(A062068(n+1)²)` -/
def P12581756699231125725.Spec : Prop :=
  ∀ n, P12581756699231125725.a n = A163107 (n + 1)

end A163107

/-! ## A163107.P875030614512148036

`A000005(A000005(∑{d}[n+1, #]))`
-/

namespace A163107.P875030614512148036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (∑ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A163107.P875030614512148036

namespace A163107

/-- `A000005(A000005(∑{d}[n+1, #]))` -/
def P875030614512148036.Spec : Prop :=
  ∀ n, P875030614512148036.a n = A163107 (n + 1)

end A163107

/-! ## A163107.P570323981694369461

`A000005(A000005(Δ[A160664(n)]))`
-/

namespace A163107.P570323981694369461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (f1 (n + 1) - f1 n).toNat).toNat

end

end A163107.P570323981694369461

namespace A163107

/-- `A000005(A000005(Δ[A160664(n)]))` -/
def P570323981694369461.Spec : Prop :=
  ∀ n, P570323981694369461.a n = A163107 (n + 1)

end A163107

/-! ## A163107.P17566187162868592586

`A000005(A000005(A276528(n+1)))`
-/

namespace A163107.P17566187162868592586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A276528 (n + 1)).toNat).toNat

end

end A163107.P17566187162868592586

namespace A163107

/-- `A000005(A000005(A276528(n+1)))` -/
def P17566187162868592586.Spec : Prop :=
  ∀ n, P17566187162868592586.a n = A163107 (n + 1)

end A163107

/-! ## A163107.P11215894872286150391

`A046951(A000005(A000203(n+1))²)`
-/

namespace A163107.P11215894872286150391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A000005 (A000203 (n + 1)).toNat ^ 2).toNat

end

end A163107.P11215894872286150391

namespace A163107

/-- `A046951(A000005(A000203(n+1))²)` -/
def P11215894872286150391.Spec : Prop :=
  ∀ n, P11215894872286150391.a n = A163107 (n + 1)

end A163107

/-! ## A163107.P18198351642430496013

`A000005(A000005(A039653(n+1)+1))`
-/

namespace A163107.P18198351642430496013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A039653 (n + 1) + 1).toNat).toNat

end

end A163107.P18198351642430496013

namespace A163107

/-- `A000005(A000005(A039653(n+1)+1))` -/
def P18198351642430496013.Spec : Prop :=
  ∀ n, P18198351642430496013.a n = A163107 (n + 1)

end A163107

/-! ## A163107.P12813600545515572194

`A000005(A000005(A245092(2*n+1)))`
-/

namespace A163107.P12813600545515572194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A245092 (2 * n + 1)).toNat).toNat

end

end A163107.P12813600545515572194

namespace A163107

/-- `A000005(A000005(A245092(2*n+1)))` -/
def P12813600545515572194.Spec : Prop :=
  ∀ n, P12813600545515572194.a n = A163107 (n + 1)

end A163107

/-! ## A163107.P11321050108378414569

`A000005(A000005(A074400(n+1)/2))`
-/

namespace A163107.P11321050108378414569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat).toNat

end

end A163107.P11321050108378414569

namespace A163107

/-- `A000005(A000005(A074400(n+1)/2))` -/
def P11321050108378414569.Spec : Prop :=
  ∀ n, P11321050108378414569.a n = A163107 (n + 1)

end A163107

/-! ## A163107.P12801681220428114655

`A000005(A000005(A001065(n+1)+n+1))`
-/

namespace A163107.P12801681220428114655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A001065 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A163107.P12801681220428114655

namespace A163107

/-- `A000005(A000005(A001065(n+1)+n+1))` -/
def P12801681220428114655.Spec : Prop :=
  ∀ n, P12801681220428114655.a n = A163107 (n + 1)

end A163107

/-! ## A163107.P6153879301679807878

`A000005(A076360(n+1)+A062069(n+1))`
-/

namespace A163107.P6153879301679807878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A076360 (n + 1) + A062069 (n + 1)).toNat

end

end A163107.P6153879301679807878

namespace A163107

/-- `A000005(A076360(n+1)+A062069(n+1))` -/
def P6153879301679807878.Spec : Prop :=
  ∀ n, P6153879301679807878.a n = A163107 (n + 1)

end A163107

/-! ## A163107.P10700370342287879752

`A000005(A295305(n+1)+A000005(n+1))`
-/

namespace A163107.P10700370342287879752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A295305 (n + 1) + A000005 (n + 1)).toNat

end

end A163107.P10700370342287879752

namespace A163107

/-- `A000005(A295305(n+1)+A000005(n+1))` -/
def P10700370342287879752.Spec : Prop :=
  ∀ n, P10700370342287879752.a n = A163107 (n + 1)

end A163107

/-! ## A163107.P15376819006924282788

`A000005(A193335(n+1)+A193334(n+1))`
-/

namespace A163107.P15376819006924282788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A193335 (n + 1) + A193334 (n + 1)).toNat

end

end A163107.P15376819006924282788

namespace A163107

/-- `A000005(A193335(n+1)+A193334(n+1))` -/
def P15376819006924282788.Spec : Prop :=
  ∀ n, P15376819006924282788.a n = A163107 (n + 1)

end A163107

/-! ## A163107.P283192163163082890

`A000005(A000005(A155085(n+1)-(n+1)))`
-/

namespace A163107.P283192163163082890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A155085 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A163107.P283192163163082890

namespace A163107

/-- `A000005(A000005(A155085(n+1)-(n+1)))` -/
def P283192163163082890.Spec : Prop :=
  ∀ n, P283192163163082890.a n = A163107 (n + 1)

end A163107

/-! ## A163107.P10010784644619058262

`A000005(A000005(A064987(n+1)/(n+1)))`
-/

namespace A163107.P10010784644619058262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A163107.P10010784644619058262

namespace A163107

/-- `A000005(A000005(A064987(n+1)/(n+1)))` -/
def P10010784644619058262.Spec : Prop :=
  ∀ n, P10010784644619058262.a n = A163107 (n + 1)

end A163107

/-! ## A163107.P17558729739293949100

`A000005(A000005(A326065(2*(n+1))))`
-/

namespace A163107.P17558729739293949100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A326065 (2 * (n + 1))).toNat).toNat

end

end A163107.P17558729739293949100

namespace A163107

/-- `A000005(A000005(A326065(2*(n+1))))` -/
def P17558729739293949100.Spec : Prop :=
  ∀ n, P17558729739293949100.a n = A163107 (n + 1)

end A163107

/-! ## A163107.P617836300268452914

`A000005(A000005(A262610(2*n+1)))`
-/

namespace A163107.P617836300268452914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A262610 (2 * n + 1)).toNat).toNat

end

end A163107.P617836300268452914

namespace A163107

/-- `A000005(A000005(A262610(2*n+1)))` -/
def P617836300268452914.Spec : Prop :=
  ∀ n, P617836300268452914.a n = A163107 (n + 1)

end A163107

/-!
# A163108: a(n) = sigma(tau(sigma(n))).

The programs for A163108, the canonical program `A163108.P14757264396306859523` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163108 has offset 1).

The definition of A163108 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062068, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163108.P14757264396306859523

`A000203(A062068(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A163108

/-- `A000203(A062068(n+1))` -/
def P14757264396306859523.Spec : Prop :=
  ∀ n, P14757264396306859523.a n = A163108 (n + 1)

theorem P14757264396306859523.correct : P14757264396306859523.Spec := by
  intro n
  simp only [A163108, Nat.add_sub_cancel]

end A163108

/-! ## A163108.P1672507460414470863

`A062069(A000203(n+1))`
-/

namespace A163108.P1672507460414470863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062069 (A000203 (n + 1)).toNat

end

end A163108.P1672507460414470863

namespace A163108

/-- `A062069(A000203(n+1))` -/
def P1672507460414470863.Spec : Prop :=
  ∀ n, P1672507460414470863.a n = A163108 (n + 1)

end A163108

/-! ## A163108.P7135368773956617394

`∑{d}[A000005(∑{d}[n+1, #]), #]`
-/

namespace A163108.P7135368773956617394
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A163108.P7135368773956617394

namespace A163108

/-- `∑{d}[A000005(∑{d}[n+1, #]), #]` -/
def P7135368773956617394.Spec : Prop :=
  ∀ n, (P7135368773956617394.a n : ℤ) = A163108 (n + 1)

end A163108

/-! ## A163108.P4336937440172339782

`A000203(∏{e}[A000203(n+1), #+1])`
-/

namespace A163108.P4336937440172339782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A163108.P4336937440172339782

namespace A163108

/-- `A000203(∏{e}[A000203(n+1), #+1])` -/
def P4336937440172339782.Spec : Prop :=
  ∀ n, P4336937440172339782.a n = A163108 (n + 1)

end A163108

/-! ## A163108.P9829332406932578355

`A000203(A000005(A001065(n+1)+n+1))`
-/

namespace A163108.P9829332406932578355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000005 (A001065 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A163108.P9829332406932578355

namespace A163108

/-- `A000203(A000005(A001065(n+1)+n+1))` -/
def P9829332406932578355.Spec : Prop :=
  ∀ n, P9829332406932578355.a n = A163108 (n + 1)

end A163108

/-! ## A163108.P13443203167768822100

`A000203(A295305(n+1)+A000005(n+1))`
-/

namespace A163108.P13443203167768822100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A295305 (n + 1) + A000005 (n + 1)).toNat

end

end A163108.P13443203167768822100

namespace A163108

/-- `A000203(A295305(n+1)+A000005(n+1))` -/
def P13443203167768822100.Spec : Prop :=
  ∀ n, P13443203167768822100.a n = A163108 (n + 1)

end A163108

/-! ## A163108.P13575184844211022170

`A000203(A193335(n+1)+A193334(n+1))`
-/

namespace A163108.P13575184844211022170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A193335 (n + 1) + A193334 (n + 1)).toNat

end

end A163108.P13575184844211022170

namespace A163108

/-- `A000203(A193335(n+1)+A193334(n+1))` -/
def P13575184844211022170.Spec : Prop :=
  ∀ n, P13575184844211022170.a n = A163108 (n + 1)

end A163108

/-! ## A163108.P12032565361512373765

`A000203(A000005(A064987(n+1)/(n+1)))`
-/

namespace A163108.P12032565361512373765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000005 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A163108.P12032565361512373765

namespace A163108

/-- `A000203(A000005(A064987(n+1)/(n+1)))` -/
def P12032565361512373765.Spec : Prop :=
  ∀ n, P12032565361512373765.a n = A163108 (n + 1)

end A163108

/-! ## A163108.P10897747929367775347

`A000203(A000005(A000203(A145051(2*n+1))))`
-/

namespace A163108.P10897747929367775347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000005 (A000203 (A145051 (2 * n + 1)).toNat).toNat).toNat

end

end A163108.P10897747929367775347

namespace A163108

/-- `A000203(A000005(A000203(A145051(2*n+1))))` -/
def P10897747929367775347.Spec : Prop :=
  ∀ n, P10897747929367775347.a n = A163108 (n + 1)

end A163108

/-! ## A163108.P11399934475803484520

`A062069(A276528(n+1))`
-/

namespace A163108.P11399934475803484520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062069 (A276528 (n + 1)).toNat

end

end A163108.P11399934475803484520

namespace A163108

/-- `A062069(A276528(n+1))` -/
def P11399934475803484520.Spec : Prop :=
  ∀ n, P11399934475803484520.a n = A163108 (n + 1)

end A163108

/-! ## A163108.P6261127208151017934

`A062069(∑{d}[n+1, #])`
-/

namespace A163108.P6261127208151017934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062069 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A163108.P6261127208151017934

namespace A163108

/-- `A062069(∑{d}[n+1, #])` -/
def P6261127208151017934.Spec : Prop :=
  ∀ n, P6261127208151017934.a n = A163108 (n + 1)

end A163108

/-! ## A163108.P5331778154111090617

`A062069(Δ[A160664(n)])`
-/

namespace A163108.P5331778154111090617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062069 (f1 (n + 1) - f1 n).toNat

end

end A163108.P5331778154111090617

namespace A163108

/-- `A062069(Δ[A160664(n)])` -/
def P5331778154111090617.Spec : Prop :=
  ∀ n, P5331778154111090617.a n = A163108 (n + 1)

end A163108

/-! ## A163108.P4006859559092467297

`A000203(A032741(A000203(n+1))+1)`
-/

namespace A163108.P4006859559092467297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A032741 (A000203 (n + 1)).toNat + 1).toNat

end

end A163108.P4006859559092467297

namespace A163108

/-- `A000203(A032741(A000203(n+1))+1)` -/
def P4006859559092467297.Spec : Prop :=
  ∀ n, P4006859559092467297.a n = A163108 (n + 1)

end A163108

/-! ## A163108.P14237439443810795856

`A000203(A334954(A000203(n+1))-1)`
-/

namespace A163108.P14237439443810795856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A334954 (A000203 (n + 1)).toNat - 1).toNat

end

end A163108.P14237439443810795856

namespace A163108

/-- `A000203(A334954(A000203(n+1))-1)` -/
def P14237439443810795856.Spec : Prop :=
  ∀ n, P14237439443810795856.a n = A163108 (n + 1)

end A163108

/-! ## A163108.P2796364633403905828

`A062069(A160664(n+1)-A160664(n))`
-/

namespace A163108.P2796364633403905828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062069 (A160664 (n + 1) - A160664 n).toNat

end

end A163108.P2796364633403905828

namespace A163108

/-- `A062069(A160664(n+1)-A160664(n))` -/
def P2796364633403905828.Spec : Prop :=
  ∀ n, P2796364633403905828.a n = A163108 (n + 1)

end A163108

/-! ## A163108.P2412318190077841782

`A000203(∑{d}[A000203(n+1), A057427(#)])`
-/

namespace A163108.P2412318190077841782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d).toNat

end

end A163108.P2412318190077841782

namespace A163108

/-- `A000203(∑{d}[A000203(n+1), A057427(#)])` -/
def P2412318190077841782.Spec : Prop :=
  ∀ n, P2412318190077841782.a n = A163108 (n + 1)

end A163108

/-! ## A163108.P5655542607515277439

`A000203(∑{d}[A000203(n+1), A008836(#)²])`
-/

namespace A163108.P5655542607515277439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (f1 n).natAbs, A008836 d ^ 2).toNat

end

end A163108.P5655542607515277439

namespace A163108

/-- `A000203(∑{d}[A000203(n+1), A008836(#)²])` -/
def P5655542607515277439.Spec : Prop :=
  ∀ n, P5655542607515277439.a n = A163108 (n + 1)

end A163108

/-! ## A163108.P9199624109631818468

`A000203(∑{d}[A000203(n+1), A033999(#)²])`
-/

namespace A163108.P9199624109631818468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (f1 n).natAbs, A033999 d ^ 2).toNat

end

end A163108.P9199624109631818468

namespace A163108

/-- `A000203(∑{d}[A000203(n+1), A033999(#)²])` -/
def P9199624109631818468.Spec : Prop :=
  ∀ n, P9199624109631818468.a n = A163108 (n + 1)

end A163108

/-! ## A163108.P14991682188157946307

`A000203(∑{d}[A000203(n+1), A153881(#)²])`
-/

namespace A163108.P14991682188157946307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (f1 n).natAbs, A153881 d ^ 2).toNat

end

end A163108.P14991682188157946307

namespace A163108

/-- `A000203(∑{d}[A000203(n+1), A153881(#)²])` -/
def P14991682188157946307.Spec : Prop :=
  ∀ n, P14991682188157946307.a n = A163108 (n + 1)

end A163108

/-! ## A163108.P10545109818712163069

`A000203(A000203(n+1)-A049820(A000203(n+1)))`
-/

namespace A163108.P10545109818712163069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (n + 1) - A049820 (A000203 (n + 1)).toNat).toNat

end

end A163108.P10545109818712163069

namespace A163108

/-- `A000203(A000203(n+1)-A049820(A000203(n+1)))` -/
def P10545109818712163069.Spec : Prop :=
  ∀ n, P10545109818712163069.a n = A163108 (n + 1)

end A163108

/-!
# A163109: a(n) = phi(tau(n)).

The programs for A163109, the canonical program `A163109.P21367379206329699` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163109 has offset 1).

The definition of A163109 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A000010, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163109.P21367379206329699

`A000010(A000005(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A163109

/-- `A000010(A000005(n+1))` -/
def P21367379206329699.Spec : Prop :=
  ∀ n, P21367379206329699.a n = A163109 (n + 1)

theorem P21367379206329699.correct : P21367379206329699.Spec := by
  intro n
  simp only [A163109, Nat.add_sub_cancel]

end A163109

/-! ## A163109.P3933026029191558634

`A000010(∏{e}[n+1, #+1])`
-/

namespace A163109.P3933026029191558634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A163109.P3933026029191558634

namespace A163109

/-- `A000010(∏{e}[n+1, #+1])` -/
def P3933026029191558634.Spec : Prop :=
  ∀ n, P3933026029191558634.a n = A163109 (n + 1)

end A163109

/-! ## A163109.P1278770904224165020

`A000010(∑{d}[n+1, gcd(n, #)])`
-/

namespace A163109.P1278770904224165020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d)

end

end A163109.P1278770904224165020

namespace A163109

/-- `A000010(∑{d}[n+1, gcd(n, #)])` -/
def P1278770904224165020.Spec : Prop :=
  ∀ n, P1278770904224165020.a n = A163109 (n + 1)

end A163109

/-! ## A163109.P14732773845113995434

`A000010(∑{d}[n+1, ceil(acot(#))])`
-/

namespace A163109.P14732773845113995434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉).toNat

end

end A163109.P14732773845113995434

namespace A163109

/-- `A000010(∑{d}[n+1, ceil(acot(#))])` -/
def P14732773845113995434.Spec : Prop :=
  ∀ n, P14732773845113995434.a n = A163109 (n + 1)

end A163109

/-! ## A163109.P16463065410704344844

`A000010(∑{d}[n+1, (#%2)!])`
-/

namespace A163109.P16463065410704344844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n), Nat.factorial (d % 2))

end

end A163109.P16463065410704344844

namespace A163109

/-- `A000010(∑{d}[n+1, (#%2)!])` -/
def P16463065410704344844.Spec : Prop :=
  ∀ n, P16463065410704344844.a n = A163109 (n + 1)

end A163109

/-! ## A163109.P8558914357586201345

`A055034(lcm(2, ∏{e}[n+1, #+1]))`
-/

namespace A163109.P8558914357586201345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (Nat.lcm 2 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))

end

end A163109.P8558914357586201345

namespace A163109

/-- `A055034(lcm(2, ∏{e}[n+1, #+1]))` -/
def P8558914357586201345.Spec : Prop :=
  ∀ n, P8558914357586201345.a n = A163109 (n + 1)

end A163109

/-! ## A163109.P911022597795943739

`A000010(∑{d}[n+1, ((-1)^#)²])`
-/

namespace A163109.P911022597795943739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n), ((-1) ^ d) ^ 2).toNat

end

end A163109.P911022597795943739

namespace A163109

/-- `A000010(∑{d}[n+1, ((-1)^#)²])` -/
def P911022597795943739.Spec : Prop :=
  ∀ n, P911022597795943739.a n = A163109 (n + 1)

end A163109

/-! ## A163109.P6856893113665683375

`A000010(Δ[A006218(n)])`
-/

namespace A163109.P6856893113665683375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat

end

end A163109.P6856893113665683375

namespace A163109

/-- `A000010(Δ[A006218(n)])` -/
def P6856893113665683375.Spec : Prop :=
  ∀ n, P6856893113665683375.a n = A163109 (n + 1)

end A163109

/-! ## A163109.P8519777349837273506

`A000010(Δ[A054519(n)])`
-/

namespace A163109.P8519777349837273506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat

end

end A163109.P8519777349837273506

namespace A163109

/-- `A000010(Δ[A054519(n)])` -/
def P8519777349837273506.Spec : Prop :=
  ∀ n, P8519777349837273506.a n = A163109 (n + 1)

end A163109

/-! ## A163109.P17094983027088649068

`A057828(A035116(n+1))`
-/

namespace A163109.P17094983027088649068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057828 (A035116 (n + 1)).toNat

end

end A163109.P17094983027088649068

namespace A163109

/-- `A057828(A035116(n+1))` -/
def P17094983027088649068.Spec : Prop :=
  ∀ n, P17094983027088649068.a n = A163109 (n + 1)

end A163109

/-! ## A163109.P5194945997796201454

`A089929(A062011(n+1))`
-/

namespace A163109.P5194945997796201454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089929 (A062011 (n + 1)).toNat

end

end A163109.P5194945997796201454

namespace A163109

/-- `A089929(A062011(n+1))` -/
def P5194945997796201454.Spec : Prop :=
  ∀ n, P5194945997796201454.a n = A163109 (n + 1)

end A163109

/-! ## A163109.P17190386432787325571

`A067541(A114003(n+1))`
-/

namespace A163109.P17190386432787325571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (A114003 (n + 1)).toNat

end

end A163109.P17190386432787325571

namespace A163109

/-- `A067541(A114003(n+1))` -/
def P17190386432787325571.Spec : Prop :=
  ∀ n, P17190386432787325571.a n = A163109 (n + 1)

end A163109

/-! ## A163109.P16824339867090914637

`A054522(A184389(n+1))`
-/

namespace A163109.P16824339867090914637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054522 (A184389 (n + 1)).toNat

end

end A163109.P16824339867090914637

namespace A163109

/-- `A054522(A184389(n+1))` -/
def P16824339867090914637.Spec : Prop :=
  ∀ n, P16824339867090914637.a n = A163109 (n + 1)

end A163109

/-! ## A163109.P5437063483640084752

`A000010(A325765(n)+1)`
-/

namespace A163109.P5437063483640084752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A325765 n + 1).toNat

end

end A163109.P5437063483640084752

namespace A163109

/-- `A000010(A325765(n)+1)` -/
def P5437063483640084752.Spec : Prop :=
  ∀ n, P5437063483640084752.a n = A163109 (n + 1)

end A163109

/-! ## A163109.P1158843122411650216

`A000010(abs(A329484(n+1)))`
-/

namespace A163109.P1158843122411650216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 |A329484 (n + 1)|.toNat

end

end A163109.P1158843122411650216

namespace A163109

/-- `A000010(abs(A329484(n+1)))` -/
def P1158843122411650216.Spec : Prop :=
  ∀ n, P1158843122411650216.a n = A163109 (n + 1)

end A163109

/-! ## A163109.P12382691349878440106

`A057828(A000005(n+1)²)`
-/

namespace A163109.P12382691349878440106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057828 (A000005 (n + 1) ^ 2).toNat

end

end A163109.P12382691349878440106

namespace A163109

/-- `A057828(A000005(n+1)²)` -/
def P12382691349878440106.Spec : Prop :=
  ∀ n, P12382691349878440106.a n = A163109 (n + 1)

end A163109

/-! ## A163109.P10256110288594207675

`A000010(sqrt(A035116(n+1)))`
-/

namespace A163109.P10256110288594207675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A035116 (n + 1) : ℝ))).toNat

end

end A163109.P10256110288594207675

namespace A163109

/-- `A000010(sqrt(A035116(n+1)))` -/
def P10256110288594207675.Spec : Prop :=
  ∀ n, P10256110288594207675.a n = A163109 (n + 1)

end A163109

/-! ## A163109.P2314818263022320264

`A000010(log2(A338506(n+1)))`
-/

namespace A163109.P2314818263022320264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.logb 2 (A338506 (n + 1) : ℝ))).toNat

end

end A163109.P2314818263022320264

namespace A163109

/-- `A000010(log2(A338506(n+1)))` -/
def P2314818263022320264.Spec : Prop :=
  ∀ n, P2314818263022320264.a n = A163109 (n + 1)

end A163109

/-! ## A163109.P13309035565007428052

`A000010(∑[A341062(n+1)])`
-/

namespace A163109.P13309035565007428052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A163109.P13309035565007428052

namespace A163109

/-- `A000010(∑[A341062(n+1)])` -/
def P13309035565007428052.Spec : Prop :=
  ∀ n, P13309035565007428052.a n = A163109 (n + 1)

end A163109

/-! ## A163109.P11617027194519455366

`A109606(Δ[A006218(n)])+1`
-/

namespace A163109.P11617027194519455366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (f1 (n + 1) - f1 n).toNat + 1

end

end A163109.P11617027194519455366

namespace A163109

/-- `A109606(Δ[A006218(n)])+1` -/
def P11617027194519455366.Spec : Prop :=
  ∀ n, P11617027194519455366.a n = A163109 (n + 1)

end A163109

/-!
# A163111: Prime numbers with gaps larger than 18 towards both neighboring primes.

The programs for A163111, the canonical program `A163111.P14893710209663125730` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163111 has offset 1).

The definition of A163111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163111.P14893710209663125730

`∩[A164513(n+1), A151800(A164513(n+1))]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A163111

/-- `∩[A164513(n+1), A151800(A164513(n+1))]` -/
def P14893710209663125730.Spec : Prop :=
  ∀ n, (P14893710209663125730.a n : ℤ) = A163111 (n + 1)

theorem P14893710209663125730.correct : P14893710209663125730.Spec := by
  intro n
  simp only [A163111, Nat.add_sub_cancel]

end A163111

/-!
# A163113: Fibonacci numbers containing equal numbers of prime digits and nonprime digits.

The programs for A163113, there is no canonical definition to state claims against.
-/

/-! ## A163113.P15638674016740566144

`A000045(A114441(n+2)%A114416(n+1))`
-/

namespace A163113.P15638674016740566144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.tmod (A114441 (n + 2)) (A114416 (n + 1))).toNat

end

end A163113.P15638674016740566144

/-! ## A163113.P4920127240674863049

`A087172(record[A257221(3*n+4)^A238529(2*n+3)])`
-/

namespace A163113.P4920127240674863049
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257221 (3 * n + 4) : ℚ) ^ (A238529 (2 * n + 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087172 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A163113.P4920127240674863049

/-!
# A163114: a(n) = 5*a(n-2) for n > 2; a(1) = 3, a(2) = 5.

The programs for A163114, the canonical program `A163114.P10158699939632973018` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163114 has offset 1).

The definition of A163114 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-2)` (program `A163114.P10158699939632973018`, by `A163114.P10158699939632973018.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163114.P10158699939632973018

`5*a(n-2)` with `a(0)=3, a(1)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A163114

/-- `5*a(n-2)` -/
def P10158699939632973018.Spec : Prop :=
  ∀ n, (P10158699939632973018.a n : ℤ) = A163114 (n + 1)

theorem P10158699939632973018.correct : P10158699939632973018.Spec := by
  intro n
  simp only [A163114, Nat.add_sub_cancel]

end A163114

/-! ## A163114.P9372668149994348951

`(2-(-1)^(n+1))*5^(1/4*(2*(n+1)-1+(-1)^(n+1)))`
-/

namespace A163114.P9372668149994348951
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 - (-1) ^ (n + 1) : ℝ) * (5 : ℝ) ^ ((1 : ℚ) / 4 * ((2 * (n + 1) : ℤ) - 1 + (-1) ^ (n + 1) : ℚ) : ℝ)

end

end A163114.P9372668149994348951

namespace A163114

/-- `(2-(-1)^(n+1))*5^(1/4*(2*(n+1)-1+(-1)^(n+1)))` -/
def P9372668149994348951.Spec : Prop :=
  ∀ n, P9372668149994348951.a n = (A163114 (n + 1) : ℝ)

end A163114

/-! ## A163114.P3949840276111282962

`A056487(n+1)`
-/

namespace A163114.P3949840276111282962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 (n + 1)

end

end A163114.P3949840276111282962

namespace A163114

/-- `A056487(n+1)` -/
def P3949840276111282962.Spec : Prop :=
  ∀ n, P3949840276111282962.a n = A163114 (n + 1)

end A163114

/-! ## A163114.P10334413526264480169

`ogf((3+5x)/(1-5x^2))`
-/

namespace A163114.P10334413526264480169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 5] [1, 0, -5] n

end

end A163114.P10334413526264480169

namespace A163114

/-- `ogf((3+5x)/(1-5x^2))` -/
def P10334413526264480169.Spec : Prop :=
  ∀ n, P10334413526264480169.a n = A163114 (n + 1)

end A163114

/-! ## A163114.P15663732148284660427

`∏[5/a(n-1)]` with `a(0)=3`
-/

namespace A163114.P15663732148284660427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  5 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A163114.P15663732148284660427

namespace A163114

/-- `∏[5/a(n-1)]` -/
def P15663732148284660427.Spec : Prop :=
  ∀ n, P15663732148284660427.a n = (A163114 (n + 1) : ℚ)

end A163114

/-! ## A163114.P8363289198532823647

`a(n-2)/(1-4/5)` with `a(0)=3, a(1)=5`
-/

namespace A163114.P8363289198532823647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 5] fun n a =>
  a (n - 2) / (1 - (4 : ℚ) / 5)

end

end A163114.P8363289198532823647

namespace A163114

/-- `a(n-2)/(1-4/5)` -/
def P8363289198532823647.Spec : Prop :=
  ∀ n, P8363289198532823647.a n = (A163114 (n + 1) : ℚ)

end A163114

/-! ## A163114.P10934558029549845188

`∏[2/and(3, 2*n+1)+1]`
-/

namespace A163114.P10934558029549845188
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (Nat.land 3 (2 * n + 1) : ℚ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A163114.P10934558029549845188

namespace A163114

/-- `∏[2/and(3, 2*n+1)+1]` -/
def P10934558029549845188.Spec : Prop :=
  ∀ n, P10934558029549845188.a n = (A163114 (n + 1) : ℚ)

end A163114

/-! ## A163114.P9306727445862182643

`a(n-2)+lcm(4, a(n-2))` with `a(0)=3, a(1)=5`
-/

namespace A163114.P9306727445862182643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n a =>
  a (n - 2) + Nat.lcm 4 (a (n - 2))

end

end A163114.P9306727445862182643

namespace A163114

/-- `a(n-2)+lcm(4, a(n-2))` -/
def P9306727445862182643.Spec : Prop :=
  ∀ n, (P9306727445862182643.a n : ℤ) = A163114 (n + 1)

end A163114

/-! ## A163114.P4212267535159373897

`A140730(2*(n+1))`
-/

namespace A163114.P4212267535159373897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (2 * (n + 1))

end

end A163114.P4212267535159373897

namespace A163114

/-- `A140730(2*(n+1))` -/
def P4212267535159373897.Spec : Prop :=
  ∀ n, P4212267535159373897.a n = A163114 (n + 1)

end A163114

/-! ## A163114.P5158111337889518240

`2*A238366(n)+1`
-/

namespace A163114.P5158111337889518240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238366 n + 1

end

end A163114.P5158111337889518240

namespace A163114

/-- `2*A238366(n)+1` -/
def P5158111337889518240.Spec : Prop :=
  ∀ n, P5158111337889518240.a n = A163114 (n + 1)

end A163114

/-! ## A163114.P15921723957744449566

`record[A056487(abs(1-n))]`
-/

namespace A163114.P15921723957744449566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056487 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163114.P15921723957744449566

namespace A163114

/-- `record[A056487(abs(1-n))]` -/
def P15921723957744449566.Spec : Prop :=
  ∀ n, P15921723957744449566.a n = A163114 (n + 1)

end A163114

/-! ## A163114.P608814177568814703

`A181287(2*n+3)+1`
-/

namespace A163114.P608814177568814703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181287 (2 * n + 3) + 1

end

end A163114.P608814177568814703

namespace A163114

/-- `A181287(2*n+3)+1` -/
def P608814177568814703.Spec : Prop :=
  ∀ n, P608814177568814703.a n = A163114 (n + 1)

end A163114

/-! ## A163114.P1798781345865971746

`2*A294566(n+2)-1`
-/

namespace A163114.P1798781345865971746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294566 (n + 2) - 1

end

end A163114.P1798781345865971746

namespace A163114

/-- `2*A294566(n+2)-1` -/
def P1798781345865971746.Spec : Prop :=
  ∀ n, P1798781345865971746.a n = A163114 (n + 1)

end A163114

/-! ## A163114.P6528028587577579613

`∑[2*A074872(n+1)]+1`
-/

namespace A163114.P6528028587577579613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A163114.P6528028587577579613

namespace A163114

/-- `∑[2*A074872(n+1)]+1` -/
def P6528028587577579613.Spec : Prop :=
  ∀ n, P6528028587577579613.a n = A163114 (n + 1)

end A163114

/-! ## A163114.P429401465695391200

`∑[A020699(∑[char[2*n]])]+1`
-/

namespace A163114.P429401465695391200
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020699 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A163114.P429401465695391200

namespace A163114

/-- `∑[A020699(∑[char[2*n]])]+1` -/
def P429401465695391200.Spec : Prop :=
  ∀ n, P429401465695391200.a n = A163114 (n + 1)

end A163114

/-! ## A163114.P4819488990207580656

`∑[2*5^A002265(2*n)]+1`
-/

namespace A163114.P4819488990207580656
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (5 : ℚ) ^ (A002265 (2 * n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A163114.P4819488990207580656

namespace A163114

/-- `∑[2*5^A002265(2*n)]+1` -/
def P4819488990207580656.Spec : Prop :=
  ∀ n, P4819488990207580656.a n = (A163114 (n + 1) : ℚ)

end A163114

/-! ## A163114.P5838642901468825855

`A133335(A007494(n+1))`
-/

namespace A163114.P5838642901468825855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133335 (A007494 (n + 1)).toNat

end

end A163114.P5838642901468825855

namespace A163114

/-- `A133335(A007494(n+1))` -/
def P5838642901468825855.Spec : Prop :=
  ∀ n, P5838642901468825855.a n = A163114 (n + 1)

end A163114

/-! ## A163114.P10395159528291211157

`A358033(A047235(n+1))`
-/

namespace A163114.P10395159528291211157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358033 (A047235 (n + 1)).toNat

end

end A163114.P10395159528291211157

namespace A163114

/-- `A358033(A047235(n+1))` -/
def P10395159528291211157.Spec : Prop :=
  ∀ n, P10395159528291211157.a n = A163114 (n + 1)

end A163114

/-! ## A163114.P3048572267413140580

`A005517(A032766(n+2))`
-/

namespace A163114.P3048572267413140580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005517 (A032766 (n + 2)).toNat

end

end A163114.P3048572267413140580

namespace A163114

/-- `A005517(A032766(n+2))` -/
def P3048572267413140580.Spec : Prop :=
  ∀ n, P3048572267413140580.a n = A163114 (n + 1)

end A163114

/-! ## A163114.P5135371921541363070

`A133335(A032766(n)+2)`
-/

namespace A163114.P5135371921541363070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133335 (A032766 n + 2).toNat

end

end A163114.P5135371921541363070

namespace A163114

/-- `A133335(A032766(n)+2)` -/
def P5135371921541363070.Spec : Prop :=
  ∀ n, P5135371921541363070.a n = A163114 (n + 1)

end A163114

/-!
# A163115: 

The programs for A163115, there is no canonical definition to state claims against.
-/

/-! ## A163115.P6860986681220177209

`A061761(A301634(n+1))+2`
-/

namespace A163115.P6860986681220177209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061761 (A301634 (n + 1)).toNat + 2

end

end A163115.P6860986681220177209

/-!
# A163116: Partial sums of A161671.

The programs for A163116, the canonical program `A163116.P9298683324671648407` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163116 has offset 1).

The definition of A163116 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A051349, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163116.P9298683324671648407

`A007504(n+1)-A051349(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A163116

/-- `A007504(n+1)-A051349(n)` -/
def P9298683324671648407.Spec : Prop :=
  ∀ n, P9298683324671648407.a n = A163116 (n + 1)

theorem P9298683324671648407.correct : P9298683324671648407.Spec := by
  intro n
  simp only [A163116, Nat.add_sub_cancel]

end A163116

/-! ## A163116.P11477879058726409484

`∑[A161671(n+1)]`
-/

namespace A163116.P11477879058726409484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163116.P11477879058726409484

namespace A163116

/-- `∑[A161671(n+1)]` -/
def P11477879058726409484.Spec : Prop :=
  ∀ n, P11477879058726409484.a n = A163116 (n + 1)

end A163116

/-! ## A163116.P2118888762770893365

`∑[A000040(n+1)]-A051349(n)`
-/

namespace A163116.P2118888762770893365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A051349 n

end

end A163116.P2118888762770893365

namespace A163116

/-- `∑[A000040(n+1)]-A051349(n)` -/
def P2118888762770893365.Spec : Prop :=
  ∀ n, P2118888762770893365.a n = A163116 (n + 1)

end A163116

/-! ## A163116.P12857530252790199463

`A071411(n+1)+A018252(n+1)`
-/

namespace A163116.P12857530252790199463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071411 (n + 1) + A018252 (n + 1)

end

end A163116.P12857530252790199463

namespace A163116

/-- `A071411(n+1)+A018252(n+1)` -/
def P12857530252790199463.Spec : Prop :=
  ∀ n, P12857530252790199463.a n = A163116 (n + 1)

end A163116

/-! ## A163116.P12389510515823718100

`A141468(n+2)+A071411(n+1)`
-/

namespace A163116.P12389510515823718100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2) + A071411 (n + 1)

end

end A163116.P12389510515823718100

namespace A163116

/-- `A141468(n+2)+A071411(n+1)` -/
def P12389510515823718100.Spec : Prop :=
  ∀ n, P12389510515823718100.a n = A163116 (n + 1)

end A163116

/-! ## A163116.P11092379629459961737

`A362419(n+1)-A163061(n+1)`
-/

namespace A163116.P11092379629459961737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362419 (n + 1) - A163061 (n + 1)

end

end A163116.P11092379629459961737

namespace A163116

/-- `A362419(n+1)-A163061(n+1)` -/
def P11092379629459961737.Spec : Prop :=
  ∀ n, P11092379629459961737.a n = A163116 (n + 1)

end A163116

/-! ## A163116.P10979833174317245464

`A163061(n+1)-2*A051349(n)`
-/

namespace A163116.P10979833174317245464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163061 (n + 1) - 2 * A051349 n

end

end A163116.P10979833174317245464

namespace A163116

/-- `A163061(n+1)-2*A051349(n)` -/
def P10979833174317245464.Spec : Prop :=
  ∀ n, P10979833174317245464.a n = A163116 (n + 1)

end A163116

/-! ## A163116.P14468778786715249632

`∑[Δ[A007504(n)]-A141468(n+1)]`
-/

namespace A163116.P14468778786715249632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163116.P14468778786715249632

namespace A163116

/-- `∑[Δ[A007504(n)]-A141468(n+1)]` -/
def P14468778786715249632.Spec : Prop :=
  ∀ n, P14468778786715249632.a n = A163116 (n + 1)

end A163116

/-! ## A163116.P432629147270768280

`∑[A000040(n+1)-comp[A151800(n)]]`
-/

namespace A163116.P432629147270768280
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163116.P432629147270768280

namespace A163116

/-- `∑[A000040(n+1)-comp[A151800(n)]]` -/
def P432629147270768280.Spec : Prop :=
  ∀ n, P432629147270768280.a n = A163116 (n + 1)

end A163116

/-! ## A163116.P7350571514195728562

`∑[A014237(n+1)]+A018252(n+1)`
-/

namespace A163116.P7350571514195728562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A018252 (n + 1)

end

end A163116.P7350571514195728562

namespace A163116

/-- `∑[A014237(n+1)]+A018252(n+1)` -/
def P7350571514195728562.Spec : Prop :=
  ∀ n, P7350571514195728562.a n = A163116 (n + 1)

end A163116

/-! ## A163116.P13531509812709980491

`∑[A000040(n+1)-A141468(n+1)]`
-/

namespace A163116.P13531509812709980491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163116.P13531509812709980491

namespace A163116

/-- `∑[A000040(n+1)-A141468(n+1)]` -/
def P13531509812709980491.Spec : Prop :=
  ∀ n, P13531509812709980491.a n = A163116 (n + 1)

end A163116

/-! ## A163116.P10657767982765929168

`A237589(n+1)+2-A175967(n+1)`
-/

namespace A163116.P10657767982765929168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1) + (2 - A175967 (n + 1))

end

end A163116.P10657767982765929168

namespace A163116

/-- `A237589(n+1)+2-A175967(n+1)` -/
def P10657767982765929168.Spec : Prop :=
  ∀ n, P10657767982765929168.a n = A163116 (n + 1)

end A163116

/-! ## A163116.P4814579502922784954

`∑[∑[A054541(n+1)]-A141468(n+1)]`
-/

namespace A163116.P4814579502922784954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A141468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163116.P4814579502922784954

namespace A163116

/-- `∑[∑[A054541(n+1)]-A141468(n+1)]` -/
def P4814579502922784954.Spec : Prop :=
  ∀ n, P4814579502922784954.a n = A163116 (n + 1)

end A163116

/-! ## A163116.P6550513410697145255

`A000040(n+1)+a(n-1)-A018252(n)` with `a(0)=2`
-/

namespace A163116.P6550513410697145255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (n + 1) + (a (n - 1) - A018252 n)

end

end A163116.P6550513410697145255

namespace A163116

/-- `A000040(n+1)+a(n-1)-A018252(n)` -/
def P6550513410697145255.Spec : Prop :=
  ∀ n, P6550513410697145255.a n = A163116 (n + 1)

end A163116

/-! ## A163116.P15264169245319696086

`a(n-1)+A000040(n+1)-comp[A006530(n+2)]` with `a(0)=2`
-/

namespace A163116.P15264169245319696086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A000040 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ))

end

end A163116.P15264169245319696086

namespace A163116

/-- `a(n-1)+A000040(n+1)-comp[A006530(n+2)]` -/
def P15264169245319696086.Spec : Prop :=
  ∀ n, P15264169245319696086.a n = A163116 (n + 1)

end A163116

/-! ## A163116.P2381430331910380138

`A051349(n+1)+A071411(n+1)-A051349(n)`
-/

namespace A163116.P2381430331910380138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 1) + (A071411 (n + 1) - A051349 n)

end

end A163116.P2381430331910380138

namespace A163116

/-- `A051349(n+1)+A071411(n+1)-A051349(n)` -/
def P2381430331910380138.Spec : Prop :=
  ∀ n, P2381430331910380138.a n = A163116 (n + 1)

end A163116

/-! ## A163116.P8900174948278700989

`A000040(n+1)+A071411(n+1)-A014237(n+1)`
-/

namespace A163116.P8900174948278700989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A071411 (n + 1) - A014237 (n + 1))

end

end A163116.P8900174948278700989

namespace A163116

/-- `A000040(n+1)+A071411(n+1)-A014237(n+1)` -/
def P8900174948278700989.Spec : Prop :=
  ∀ n, P8900174948278700989.a n = A163116 (n + 1)

end A163116

/-! ## A163116.P419943274987221923

`A007504(n+1)+A007504(n+1)-A163061(n+1)`
-/

namespace A163116.P419943274987221923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) + (A007504 (n + 1) - A163061 (n + 1))

end

end A163116.P419943274987221923

namespace A163116

/-- `A007504(n+1)+A007504(n+1)-A163061(n+1)` -/
def P419943274987221923.Spec : Prop :=
  ∀ n, P419943274987221923.a n = A163116 (n + 1)

end A163116

/-! ## A163116.P4034622461045389520

`A018252(n+1)+A112997(n+1)-A161569(n+1)`
-/

namespace A163116.P4034622461045389520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + (A112997 (n + 1) - A161569 (n + 1))

end

end A163116.P4034622461045389520

namespace A163116

/-- `A018252(n+1)+A112997(n+1)-A161569(n+1)` -/
def P4034622461045389520.Spec : Prop :=
  ∀ n, P4034622461045389520.a n = A163116 (n + 1)

end A163116

/-! ## A163116.P17935515206498432569

`∑[A000040(n+1)-A018252(n+1)]+A018252(n+1)`
-/

namespace A163116.P17935515206498432569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A018252 (n + 1)

end

end A163116.P17935515206498432569

namespace A163116

/-- `∑[A000040(n+1)-A018252(n+1)]+A018252(n+1)` -/
def P17935515206498432569.Spec : Prop :=
  ∀ n, P17935515206498432569.a n = A163116 (n + 1)

end A163116

/-!
# A163117: The pairs of central digits of all primes with an even number of digits.

The programs for A163117, there is no canonical definition to state claims against.
-/

/-! ## A163117.P14651833343421629469

`A033308(n+4)+A010815(A345861(n+1))`
-/

namespace A163117.P14651833343421629469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 (n + 4) + A010815 (A345861 (n + 1)).toNat

end

end A163117.P14651833343421629469

/-! ## A163117.P7449982013216648804

`Δ[A067112(n+4)]%A194320(A067112(n+4))`
-/

namespace A163117.P7449982013216648804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067112 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A194320 (A067112 (n + 4)).toNat)

end

end A163117.P7449982013216648804

/-! ## A163117.P4003751353646021465

`A033308(n+4)/A231867(A231867(2*n+3))`
-/

namespace A163117.P4003751353646021465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033308 (n + 4) : ℚ) / (A231867 (A231867 (2 * n + 3)).toNat : ℚ)

end

end A163117.P4003751353646021465

/-! ## A163117.P17649046866000551485

`A056976(A346697(2*(n+1)))+A033308(n+4)`
-/

namespace A163117.P17649046866000551485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056976 (A346697 (2 * (n + 1))).toNat + A033308 (n + 4)

end

end A163117.P17649046866000551485

/-! ## A163117.P16361602714007318759

`Δ[A067112(n+4)%A002146(A002146(2*n+1))]`
-/

namespace A163117.P16361602714007318759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067112 (n + 4)) (A002146 (A002146 (2 * n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163117.P16361602714007318759

/-!
# A163118: Absolute values of the first differences of A163117.

The programs for A163118, there is no canonical definition to state claims against.
-/

/-! ## A163118.P8054724169312607182

`abs(Δ[A163117(n+1)])`
-/

namespace A163118.P8054724169312607182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A163118.P8054724169312607182

/-! ## A163118.P5568488255254353026

`A000194(Δ[A163117(n+1)]²)`
-/

namespace A163118.P5568488255254353026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A163118.P5568488255254353026

/-! ## A163118.P16583590971667123442

`A000196(Δ[A163117(n+1)]²)`
-/

namespace A163118.P16583590971667123442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A163118.P16583590971667123442

/-! ## A163118.P17190829280873006950

`A018851(Δ[A163117(n+1)]²)`
-/

namespace A163118.P17190829280873006950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A163118.P17190829280873006950

/-! ## A163118.P18424374905264980868

`A037213(Δ[A163117(n+1)]²)`
-/

namespace A163118.P18424374905264980868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A163118.P18424374905264980868

/-! ## A163118.P4607391055924402837

`A053615(Δ[A163117(n+1)]²)`
-/

namespace A163118.P4607391055924402837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A163118.P4607391055924402837

/-! ## A163118.P5777095451052458187

`dr(Δ[A163117(A000027(n+1))])`
-/

namespace A163118.P5777095451052458187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163117 (A000027 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A163118.P5777095451052458187

/-! ## A163118.P6256284980497687133

`∑{d}[Δ[A163117(n+1)], A000010(#)]`
-/

namespace A163118.P6256284980497687133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163117 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A163118.P6256284980497687133

/-! ## A163118.P8521042679361698178

`A002262(2*Δ[A163117(n+1)]²)`
-/

namespace A163118.P8521042679361698178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * (f1 (n + 1) - f1 n) ^ 2).toNat

end

end A163118.P8521042679361698178

/-! ## A163118.P12693614465686299821

`lcm(A000038(n)!, Δ[A163117(n+1)])`
-/

namespace A163118.P12693614465686299821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163117 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A000038 n).toNat : ℤ) (f1 (n + 1) - f1 n)

end

end A163118.P12693614465686299821

/-! ## A163118.P5126918303933714288

`gcd(Δ[A163117(n+1)], A000038(n+1))`
-/

namespace A163118.P5126918303933714288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163117 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A000038 (n + 1))

end

end A163118.P5126918303933714288

/-! ## A163118.P128687570133684347

`sqrt(Δ[A163117(n+1)]²%A001844(n))`
-/

namespace A163118.P128687570133684347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163117 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.tmod ((f1 (n + 1) - f1 n) ^ 2) (A001844 n) : ℝ)

end

end A163118.P128687570133684347

/-! ## A163118.P9886255417460361932

`dr(Δ[A163117(n+1)]%A000040(n+1))`
-/

namespace A163118.P9886255417460361932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163117 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (f1 (n + 1) - f1 n) (A000040 (n + 1)))

end

end A163118.P9886255417460361932

/-! ## A163118.P11268758991153084850

`sqrt(A008683(8*n+4)+Δ[A163117(n+1)]²)`
-/

namespace A163118.P11268758991153084850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163117 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008683 (8 * n + 4) + (f1 (n + 1) - f1 n) ^ 2 : ℝ)

end

end A163118.P11268758991153084850

/-!
# A163119: Absolute values of the first differences in the digit chain of the concatenated primes.

The programs for A163119, there is no canonical definition to state claims against.
-/

/-! ## A163119.P311694209086525636

`abs(Δ[A033308(n)])`
-/

namespace A163119.P311694209086525636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A163119.P311694209086525636

/-! ## A163119.P3591191185520492143

`abs(Δ[A154730(n)])`
-/

namespace A163119.P3591191185520492143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A163119.P3591191185520492143

/-! ## A163119.P10967262920872869376

`A000194(Δ[A033308(n)]²)`
-/

namespace A163119.P10967262920872869376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A163119.P10967262920872869376

/-! ## A163119.P2728326194203651472

`A000196(Δ[A033308(n)]²)`
-/

namespace A163119.P2728326194203651472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A163119.P2728326194203651472

/-! ## A163119.P15773195029725743971

`A007967(Δ[A033308(n)]²)`
-/

namespace A163119.P15773195029725743971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A163119.P15773195029725743971

/-! ## A163119.P7102997297741470935

`A037213(Δ[A033308(n)]²)`
-/

namespace A163119.P7102997297741470935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A163119.P7102997297741470935

/-! ## A163119.P14006730612726044390

`A053615(Δ[A033308(n)]²)`
-/

namespace A163119.P14006730612726044390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A163119.P14006730612726044390

/-! ## A163119.P410887303762784116

`∑{d}[Δ[A033308(n)], A000010(#)]`
-/

namespace A163119.P410887303762784116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A163119.P410887303762784116

/-! ## A163119.P5826192999989532367

`∑{d}[Δ[A154730(n)], A000010(#)]`
-/

namespace A163119.P5826192999989532367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154730 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A163119.P5826192999989532367

/-! ## A163119.P12763772980477884372

`A245346(∑{digits}[Δ[A033308(n)], #])`
-/

namespace A163119.P12763772980477884372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245346 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A163119.P12763772980477884372

/-! ## A163119.P5472672582925289781

`abs(A033308(n+1)-A033308(n))`
-/

namespace A163119.P5472672582925289781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033308 (n + 1) - A033308 n|

end

end A163119.P5472672582925289781

/-! ## A163119.P1433771154117251443

`abs(A154730(n+1)-A154730(n))`
-/

namespace A163119.P1433771154117251443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A154730 (n + 1) - A154730 n|

end

end A163119.P1433771154117251443

/-! ## A163119.P1002477131297637214

`A001222(2^∑{digits}[Δ[A033308(n)], #])`
-/

namespace A163119.P1002477131297637214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 ^ ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum)

end

end A163119.P1002477131297637214

/-! ## A163119.P10726125778091384448

`abs(Δ[Δ[A067112(n)]])`
-/

namespace A163119.P10726125778091384448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067112 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A163119.P10726125778091384448

/-! ## A163119.P7186592661376453471

`dr(Δ[A067112(n+1)-A067112(n)])`
-/

namespace A163119.P7186592661376453471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067112 (n + 1) - A067112 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A163119.P7186592661376453471

/-! ## A163119.P18193925704305916840

`∑{digits}[Δ[A033308(n)], #]%A000041(n+2)`
-/

namespace A163119.P18193925704305916840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A000041 (n + 2))

end

end A163119.P18193925704305916840

/-! ## A163119.P17384800974469087986

`gcd(A008683(2*(n+1)²), Δ[A033308(n)])`
-/

namespace A163119.P17384800974469087986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033308 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (2 * (n + 1) ^ 2)) (f1 (n + 1) - f1 n)

end

end A163119.P17384800974469087986

/-!
# A163120: Sum of the first n digits of the concatenation of all nonprimes.

The programs for A163120, there is no canonical definition to state claims against.
-/

/-! ## A163120.P10748623491762325417

`∑[A129808(n)]-A129808(n)`
-/

namespace A163120.P10748623491762325417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A129808 (n + 1)

end

end A163120.P10748623491762325417

/-!
# A163121: (prime(n))^3-(nonprime(n))^3 .

The programs for A163121, the canonical program `A163121.P3309701501368410349` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163121 has offset 1).

The definition of A163121 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030078, A141468, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163121.P3309701501368410349

`A030078(n+1)-A141468(n+1)^3`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A163121

/-- `A030078(n+1)-A141468(n+1)^3` -/
def P3309701501368410349.Spec : Prop :=
  ∀ n, P3309701501368410349.a n = A163121 (n + 1)

theorem P3309701501368410349.correct : P3309701501368410349.Spec := by
  intro n
  simp only [A163121, Nat.add_sub_cancel]

end A163121

/-! ## A163121.P13651803331937567260

`A161671(n+1)*(A001248(n+1)+A000040(n+1)*A141468(n+1)+A161753(n+1))`
-/

namespace A163121.P13651803331937567260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161671 (n + 1) * (A001248 (n + 1) + A000040 (n + 1) * A141468 (n + 1) + A161753 (n + 1))

end

end A163121.P13651803331937567260

namespace A163121

/-- `A161671(n+1)*(A001248(n+1)+A000040(n+1)*A141468(n+1)+A161753(n+1))` -/
def P13651803331937567260.Spec : Prop :=
  ∀ n, P13651803331937567260.a n = A163121 (n + 1)

end A163121

/-! ## A163121.P11523479927370018714

`A030078(n+1)-A000578(A141468(n+1))`
-/

namespace A163121.P11523479927370018714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) - A000578 (A141468 (n + 1)).toNat

end

end A163121.P11523479927370018714

namespace A163121

/-- `A030078(n+1)-A000578(A141468(n+1))` -/
def P11523479927370018714.Spec : Prop :=
  ∀ n, P11523479927370018714.a n = A163121 (n + 1)

end A163121

/-! ## A163121.P14810757222950758299

`A172190(n+1)/2-A000578(A141468(n+1))`
-/

namespace A163121.P14810757222950758299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172190 (n + 1) : ℚ) / 2 - (A000578 (A141468 (n + 1)).toNat : ℚ)

end

end A163121.P14810757222950758299

namespace A163121

/-- `A172190(n+1)/2-A000578(A141468(n+1))` -/
def P14810757222950758299.Spec : Prop :=
  ∀ n, P14810757222950758299.a n = (A163121 (n + 1) : ℚ)

end A163121

/-! ## A163121.P3700603847740726884

`sqrt(A001248(n+1)^3)-A000578(A141468(n+1))`
-/

namespace A163121.P3700603847740726884
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) ^ 3 : ℝ) - (A000578 (A141468 (n + 1)).toNat : ℝ)

end

end A163121.P3700603847740726884

namespace A163121

/-- `sqrt(A001248(n+1)^3)-A000578(A141468(n+1))` -/
def P3700603847740726884.Spec : Prop :=
  ∀ n, P3700603847740726884.a n = (A163121 (n + 1) : ℝ)

end A163121

/-! ## A163121.P11255380084404811084

`∑[A054541(n+1)]^3-A000578(A141468(n+1))`
-/

namespace A163121.P11255380084404811084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3 - A000578 (A141468 (n + 1)).toNat

end

end A163121.P11255380084404811084

namespace A163121

/-- `∑[A054541(n+1)]^3-A000578(A141468(n+1))` -/
def P11255380084404811084.Spec : Prop :=
  ∀ n, P11255380084404811084.a n = A163121 (n + 1)

end A163121

/-!
# A163124: Number of reduced words of length n in Coxeter group on 20 generators S_i with relations (S_i)^2 = (S_i S_j)^4 = I.

The programs for A163124, there is no canonical definition to state claims against.
-/

/-! ## A163124.P5826873873996414391

`xor(A163454(n), A326543(A051296(n)))`
-/

namespace A163124.P5826873873996414391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A163454 n) (A326543 (A051296 n).toNat)

end

end A163124.P5826873873996414391

/-!
# A163125: Sum of digits of the n-th Self-number (or Colombian number), A003052(n).

The programs for A163125, there is no canonical definition to state claims against.
-/

/-! ## A163125.P2313127587917453988

`A007953(A003052(n+1))`
-/

namespace A163125.P2313127587917453988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A003052 (n + 1)).toNat

end

end A163125.P2313127587917453988

/-! ## A163125.P16478084635737278638

`∑{digits}[record[A036233(n+1)], #]`
-/

namespace A163125.P16478084635737278638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A163125.P16478084635737278638

/-! ## A163125.P17890892248785248960

`A007953(record[A036233(n+1)])`
-/

namespace A163125.P17890892248785248960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A163125.P17890892248785248960

/-! ## A163125.P7845668229708738493

`A007953(A163128(n+1)+1+n)`
-/

namespace A163125.P7845668229708738493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A163128 (n + 1) + 1 + (n : ℤ)).toNat

end

end A163125.P7845668229708738493

/-! ## A163125.P5949880792223469545

`A062028(A003052(n+1))-A003052(A000027(n+1))`
-/

namespace A163125.P5949880792223469545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (A003052 (n + 1)).toNat - A003052 (A000027 (n + 1)).toNat

end

end A163125.P5949880792223469545

/-! ## A163125.P6047160649758501610

`A061762(10*A003052(n+1))`
-/

namespace A163125.P6047160649758501610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (10 * A003052 (n + 1)).toNat

end

end A163125.P6047160649758501610

/-!
# A163128: a(n) is the n-th self-number minus n.

The programs for A163128, there is no canonical definition to state claims against.
-/

/-! ## A163128.P13007308404632566452

`A003052(n+1)-(n+1)`
-/

namespace A163128.P13007308404632566452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1) - (n + 1 : ℤ)

end

end A163128.P13007308404632566452

/-! ## A163128.P12435615360658517825

`∑[A163139(n+1)]-A163139(n+1)`
-/

namespace A163128.P12435615360658517825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A163139 (n + 1)

end

end A163128.P12435615360658517825

/-! ## A163128.P2395796742870748662

`A024000(n+2)+A003052(n+1)`
-/

namespace A163128.P2395796742870748662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (n + 2) + A003052 (n + 1)

end

end A163128.P2395796742870748662

/-! ## A163128.P542689687643109669

`A023443(A003052(n+1)-n)`
-/

namespace A163128.P542689687643109669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A003052 (n + 1) - (n : ℤ)).toNat

end

end A163128.P542689687643109669

/-! ## A163128.P11591914332149766947

`record[A036233(n+1)]-(n+1)`
-/

namespace A163128.P11591914332149766947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A163128.P11591914332149766947

/-! ## A163128.P14796652331646162663

`A023443(record[A036233(n+1)]-n)`
-/

namespace A163128.P14796652331646162663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A163128.P14796652331646162663

/-! ## A163128.P3531734025024089381

`lt[A096234(n+1), 0]-n`
-/

namespace A163128.P3531734025024089381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096234 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - (n : ℤ)

end

end A163128.P3531734025024089381

/-! ## A163128.P9281853986192118442

`eq[A096234(n+1), A153881(n+2)]-n`
-/

namespace A163128.P9281853986192118442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ)

end

end A163128.P9281853986192118442

/-!
# A163129: G.f.: A(q) = exp( Sum_{n>=1} sigma(n) * 3*A038500(n) * q^n/n ), where A038500(n) = highest power of 3 dividing n.

The programs for A163129, there is no canonical definition to state claims against.
-/

/-! ## A163129.P211882917703461888

`A138888(A127768(n))+A127790(n)`
-/

namespace A163129.P211882917703461888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138888 (A127768 n).toNat + A127790 n

end

end A163129.P211882917703461888

/-! ## A163129.P17034035901883385176

`A336957(n+1)+A176747(A372888(n))`
-/

namespace A163129.P17034035901883385176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (n + 1) + A176747 (A372888 n).toNat

end

end A163129.P17034035901883385176

/-!
# A163130: A trisection of A163129.

The programs for A163130, there is no canonical definition to state claims against.
-/

/-! ## A163130.P14060449138521759166

`A163129(3*n)`
-/

namespace A163130.P14060449138521759166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163129 (3 * n)

end

end A163130.P14060449138521759166

/-! ## A163130.P11670946419898399236

`record[A163129(A168237(A008611(n)))]`
-/

namespace A163130.P11670946419898399236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163129 (A168237 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163130.P11670946419898399236

/-! ## A163130.P16824407631829592848

`record[A163129(A168237(A057979(n)))]`
-/

namespace A163130.P16824407631829592848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163129 (A168237 (A057979 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163130.P16824407631829592848

/-! ## A163130.P14079940223055511643

`record[A163129(A168237(A075167(n+1)))]`
-/

namespace A163130.P14079940223055511643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163129 (A168237 (A075167 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163130.P14079940223055511643

/-! ## A163130.P2317028659814662176

`record[A163129(A168237(A194960(n+1)))]`
-/

namespace A163130.P2317028659814662176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163129 (A168237 (A194960 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163130.P2317028659814662176

/-! ## A163130.P12663072995163751242

`or(A000007(n), A163129(A016789(n)-2))`
-/

namespace A163130.P12663072995163751242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A163129 (A016789 n - 2).toNat)

end

end A163130.P12663072995163751242

/-!
# A163131: A trisection of A163129.

The programs for A163131, there is no canonical definition to state claims against.
-/

/-! ## A163131.P4261601772302322268

`A163129(3*n+1)`
-/

namespace A163131.P4261601772302322268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163129 (3 * n + 1)

end

end A163131.P4261601772302322268

/-! ## A163131.P1213493017546967260

`lcm(3, A163129(A016777(n)))`
-/

namespace A163131.P1213493017546967260
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A163129 (A016777 n).toNat)

end

end A163131.P1213493017546967260

/-! ## A163131.P3413668537079383000

`abs(A033999(n)*A163129(A016777(n)))`
-/

namespace A163131.P3413668537079383000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A163129 (A016777 n).toNat|

end

end A163131.P3413668537079383000

/-! ## A163131.P12061620687570674221

`abs(A087960(n)*A163129(A016777(n)))`
-/

namespace A163131.P12061620687570674221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A087960 n * A163129 (A016777 n).toNat|

end

end A163131.P12061620687570674221

/-! ## A163131.P3642349224947010423

`A081729(A017053(n))²*A163129(A016777(n))`
-/

namespace A163131.P3642349224947010423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A017053 n).toNat ^ 2 * A163129 (A016777 n).toNat

end

end A163131.P3642349224947010423

/-! ## A163131.P13427650129996705428

`A163129(A016777(n))/A001222(A001124(n+1))`
-/

namespace A163131.P13427650129996705428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163129 (A016777 n).toNat : ℚ) / (A001222 (A001124 (n + 1)).toNat : ℚ)

end

end A163131.P13427650129996705428

/-! ## A163131.P10383909425325406390

`A163129(A016777(n))/A001222(A051093(n+1))`
-/

namespace A163131.P10383909425325406390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163129 (A016777 n).toNat : ℚ) / (A001222 (A051093 (n + 1)).toNat : ℚ)

end

end A163131.P10383909425325406390

/-! ## A163131.P14628261628695571460

`-(A163129(A016777(n))/A008683(A002144(n+1)))`
-/

namespace A163131.P14628261628695571460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A163129 (A016777 n).toNat : ℚ) / (A008683 (A002144 (n + 1)).toNat : ℚ))

end

end A163131.P14628261628695571460

/-! ## A163131.P14320324178619675553

`A047999(A266259(n))*A163129(A016777(n))`
-/

namespace A163131.P14320324178619675553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047999 (A266259 n).toNat * A163129 (A016777 n).toNat

end

end A163131.P14320324178619675553

/-! ## A163131.P1174489568656932675

`A163129(A016777(n))/A001222(A052015(n+1))`
-/

namespace A163131.P1174489568656932675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163129 (A016777 n).toNat : ℚ) / (A001222 (A052015 (n + 1)).toNat : ℚ)

end

end A163131.P1174489568656932675

/-!
# A163132: A trisection of A163129.

The programs for A163132, there is no canonical definition to state claims against.
-/

/-! ## A163132.P2644212093824179322

`A163129(3*n+2)`
-/

namespace A163132.P2644212093824179322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163129 (3 * n + 2)

end

end A163132.P2644212093824179322

/-! ## A163132.P8745728286354494187

`lcm(3, A163129(A016789(n)))`
-/

namespace A163132.P8745728286354494187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A163129 (A016789 n).toNat)

end

end A163132.P8745728286354494187

/-! ## A163132.P12822680156245227415

`or(A000007(n), A163129(A016789(n)))`
-/

namespace A163132.P12822680156245227415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A163129 (A016789 n).toNat)

end

end A163132.P12822680156245227415

/-! ## A163132.P15794476357301363668

`A163129(A016789(n))%A163130(n+1)`
-/

namespace A163132.P15794476357301363668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163129 (A016789 n).toNat) (A163130 (n + 1))

end

end A163132.P15794476357301363668

/-! ## A163132.P16974517579143786165

`A163129(A016789(n))^A007318(C(2, n))^n`
-/

namespace A163132.P16974517579143786165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163129 (A016789 n).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) ^ n : ℤ)

end

end A163132.P16974517579143786165

/-! ## A163132.P15511962457725096688

`A163129(A016789(n))+A010815(A006567(n+1))`
-/

namespace A163132.P15511962457725096688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163129 (A016789 n).toNat + A010815 (A006567 (n + 1)).toNat

end

end A163132.P15511962457725096688

/-!
# A163133: G.f. A(x) equals the composition of functions x*(1 + a(n)*x^n); let F_1(x) = x, F_{n+1}(x) = x*(1 + a(n)*F_n(x)^n), then A(x) = limit F_n(x): A(x) = ...o x*(1+a(n)*x^n) o...o x*(1+a(2)*x^2) o x*(1+a(1)*x).

The programs for A163133, there is no canonical definition to state claims against.
-/

/-! ## A163133.P14346139146522960821

`A341025(A083318(n))+A107594(n)`
-/

namespace A163133.P14346139146522960821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341025 ((A083318 n).toNat + 120) + A107594 n

end

end A163133.P14346139146522960821

/-! ## A163133.P8558239798143116880

`A226762(A137597(n+1)+A004211(n))`
-/

namespace A163133.P8558239798143116880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A137597 (n + 1) + A004211 n).toNat

end

end A163133.P8558239798143116880

/-! ## A163133.P1617944929447510312

`A007306(A033917(n)-A326454(2*n+3))`
-/

namespace A163133.P1617944929447510312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A033917 n - A326454 (2 * n + 3)).toNat

end

end A163133.P1617944929447510312

/-!
# A163134: G.f. A(x) equals an infinite symmetric composition of functions x/(1-x^n), n=1,2,3,...

The programs for A163134, there is no canonical definition to state claims against.
-/

/-! ## A163134.P9032505899652266154

`round(A110118((2^n+1)²+1)/6)`
-/

namespace A163134.P9032505899652266154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A110118 ((2 ^ n + 1) ^ 2 + 1) : ℚ) / 6)

end

end A163134.P9032505899652266154

/-! ## A163134.P3892851830223662677

`A172104(A150860(n))`
-/

namespace A163134.P3892851830223662677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172104 (A150860 n).toNat

end

end A163134.P3892851830223662677

/-! ## A163134.P4817736105706782481

`A111899(A115601(n+1))+A000984(n)`
-/

namespace A163134.P4817736105706782481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111899 (A115601 (n + 1)).toNat + A000984 n

end

end A163134.P4817736105706782481

/-!
# A163135: G.f. A(x) equals an infinite symmetric composition of functions x/(1-x^n), n=1,2,3,...

The programs for A163135, there is no canonical definition to state claims against.
-/

/-! ## A163135.P5144802346493447393

`A123578(A001809(n))+A072110(n)`
-/

namespace A163135.P5144802346493447393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A001809 n).toNat + A072110 n

end

end A163135.P5144802346493447393

/-! ## A163135.P9907094855207969518

`A354912(A209621(n))+A001353(n)`
-/

namespace A163135.P9907094855207969518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354912 (A209621 n).toNat + A001353 n

end

end A163135.P9907094855207969518

/-! ## A163135.P3696535536981208203

`A029651(n)-A194640(A001791(n))`
-/

namespace A163135.P3696535536981208203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029651 n - A194640 (A001791 n).toNat

end

end A163135.P3696535536981208203

/-!
# A163136: G.f. A(x) equals an infinite symmetric composition of functions x+x^n, n=2,3,4,...

The programs for A163136, there is no canonical definition to state claims against.
-/

/-! ## A163136.P15630779145972629038

`A298356(n)+A002264(A006134(n))`
-/

namespace A163136.P15630779145972629038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298356 n + A002264 (A006134 n).toNat

end

end A163136.P15630779145972629038

/-! ## A163136.P11693237071803585529

`A255072(A151054(n))`
-/

namespace A163136.P11693237071803585529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A151054 n).toNat

end

end A163136.P11693237071803585529

/-! ## A163136.P4041152628826200890

`A005317(n)-A330346(n)`
-/

namespace A163136.P4041152628826200890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005317 n - A330346 n

end

end A163136.P4041152628826200890

/-!
# A163137: G.f. A(x) equals an infinite symmetric composition of functions x+x^n, n=2,3,4,...

The programs for A163137, there is no canonical definition to state claims against.
-/

/-! ## A163137.P7706068916410223619

`A007051(n)-A102445(A000085(n))`
-/

namespace A163137.P7706068916410223619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - A102445 (A000085 n).toNat

end

end A163137.P7706068916410223619

/-! ## A163137.P14462821848759867619

`A077070(A058309(n))+A056857(n+1)`
-/

namespace A163137.P14462821848759867619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077070 (A058309 n).toNat + A056857 (n + 1)

end

end A163137.P14462821848759867619

/-!
# A163139: First differences of A163128.

The programs for A163139, there is no canonical definition to state claims against.
-/

/-! ## A163139.P15083852645874258846

`A163128(n+2)-A163128(n+1)`
-/

namespace A163139.P15083852645874258846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163128 (n + 2) - A163128 (n + 1)

end

end A163139.P15083852645874258846

/-! ## A163139.P16095008661107112316

`A003052(n+2)-A003052(n+1)-1`
-/

namespace A163139.P16095008661107112316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 2) - A003052 (n + 1) - 1

end

end A163139.P16095008661107112316

/-! ## A163139.P12951370752333934459

`A377472(n+1)-1`
-/

namespace A163139.P12951370752333934459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377472 (n + 1) - 1

end

end A163139.P12951370752333934459

/-! ## A163139.P16081641527640891119

`Δ[A163128(n+1)]`
-/

namespace A163139.P16081641527640891119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163139.P16081641527640891119

/-! ## A163139.P2615246987354847207

`Δ[A003052(n+1)]-1`
-/

namespace A163139.P2615246987354847207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A163139.P2615246987354847207

/-! ## A163139.P8456099159972979545

`A023443(Δ[A003052(n+1)])`
-/

namespace A163139.P8456099159972979545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A163139.P8456099159972979545

/-! ## A163139.P3748855688221200821

`Δ[A003052(n+1)+A001489(n)]`
-/

namespace A163139.P3748855688221200821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1) + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163139.P3748855688221200821

/-! ## A163139.P2051756236199962663

`A057428(n+1)+Δ[A003052(n+1)]`
-/

namespace A163139.P2051756236199962663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + (f1 (n + 1) - f1 n)

end

end A163139.P2051756236199962663

/-! ## A163139.P4446386672448301730

`Δ[record[A036233(n+1)]]-1`
-/

namespace A163139.P4446386672448301730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A163139.P4446386672448301730

/-! ## A163139.P17560543939484375588

`A023443(Δ[record[A036233(n+1)]])`
-/

namespace A163139.P17560543939484375588
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A163139.P17560543939484375588

/-! ## A163139.P7279104114573917135

`A335524(Δ[record[A036233(n+1)]])`
-/

namespace A163139.P7279104114573917135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335524 (f1 (n + 1) - f1 n).toNat

end

end A163139.P7279104114573917135

/-!
# A163140: Integers n such that in base 2, 3 `1`'s for each `0`.

The programs for A163140, the canonical program `A163140.P8912314780080089725` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163140 has offset 1).

The definition of A163140 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 189 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163140.P5151080213386053601

`eq[12, A126759(A165265(n))]`
-/

namespace A163140.P5151080213386053601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126759 (A165265 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163140.P5151080213386053601

namespace A163140

/-- `eq[12, A126759(A165265(n))]` -/
def P5151080213386053601.Spec : Prop :=
  ∀ n, (P5151080213386053601.a n : ℤ) = A163140 (n + 1)

end A163140

/-! ## A163140.P8912314780080089725

`eq[2*A023416(n), A145037(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A163140

/-- `eq[2*A023416(n), A145037(n)]` -/
def P8912314780080089725.Spec : Prop :=
  ∀ n, (P8912314780080089725.a n : ℤ) = A163140 (n + 1)

theorem P8912314780080089725.correct : P8912314780080089725.Spec := by
  intro n
  simp only [A163140, Nat.add_sub_cancel]

end A163140

/-! ## A163140.P18022118835765651728

`eq[8^A023416(n), A001316(n)]`
-/

namespace A163140.P18022118835765651728
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 : ℚ) ^ (A023416 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A163140.P18022118835765651728

namespace A163140

/-- `eq[8^A023416(n), A001316(n)]` -/
def P18022118835765651728.Spec : Prop :=
  ∀ n, (P18022118835765651728.a n : ℤ) = A163140 (n + 1)

end A163140

/-! ## A163140.P11875134279279757698

`eq[2*A080791(n), abs(A037861(n))]`
-/

namespace A163140.P11875134279279757698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080791 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A037861 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163140.P11875134279279757698

namespace A163140

/-- `eq[2*A080791(n), abs(A037861(n))]` -/
def P11875134279279757698.Spec : Prop :=
  ∀ n, (P11875134279279757698.a n : ℤ) = A163140 (n + 1)

end A163140

/-! ## A163140.P4691328788037611159

`eq[A309074(2*n+1)², A053644(2*n)]`
-/

namespace A163140.P4691328788037611159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309074 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163140.P4691328788037611159

namespace A163140

/-- `eq[A309074(2*n+1)², A053644(2*n)]` -/
def P4691328788037611159.Spec : Prop :=
  ∀ n, (P4691328788037611159.a n : ℤ) = A163140 (n + 1)

end A163140

/-! ## A163140.P6447230411161340863

`eq[A000120(n), A008585(A023416(n))]`
-/

namespace A163140.P6447230411161340863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A023416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163140.P6447230411161340863

namespace A163140

/-- `eq[A000120(n), A008585(A023416(n))]` -/
def P6447230411161340863.Spec : Prop :=
  ∀ n, (P6447230411161340863.a n : ℤ) = A163140 (n + 1)

end A163140

/-! ## A163140.P15910772461944552840

`eq[A029837(n+1), A076310(A023416(n))]`
-/

namespace A163140.P15910772461944552840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076310 (A023416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163140.P15910772461944552840

namespace A163140

/-- `eq[A029837(n+1), A076310(A023416(n))]` -/
def P15910772461944552840.Spec : Prop :=
  ∀ n, (P15910772461944552840.a n : ℤ) = A163140 (n + 1)

end A163140

/-!
# A163141: a(n) = 5*a(n-2) for n > 2; a(1) = 4, a(2) = 5.

The programs for A163141, the canonical program `A163141.P8752200336618386272` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163141 has offset 1).

The definition of A163141 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5*a(n-2)` (program `A163141.P8752200336618386272`, by `A163141.P8752200336618386272.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163141.P8752200336618386272

`5*a(n-2)` with `a(0)=4, a(1)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A163141

/-- `5*a(n-2)` -/
def P8752200336618386272.Spec : Prop :=
  ∀ n, (P8752200336618386272.a n : ℤ) = A163141 (n + 1)

theorem P8752200336618386272.correct : P8752200336618386272.Spec := by
  intro n
  simp only [A163141, Nat.add_sub_cancel]

end A163141

/-! ## A163141.P9250147680508081765

`(5-3*(-1)^(n+1))*5^(1/4*(2*(n+1)-1+(-1)^(n+1)))/2`
-/

namespace A163141.P9250147680508081765
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (5 - 3 * (-1) ^ (n + 1) : ℝ) * (5 : ℝ) ^ ((1 : ℚ) / 4 * ((2 * (n + 1) : ℤ) - 1 + (-1) ^ (n + 1) : ℚ) : ℝ) / 2

end

end A163141.P9250147680508081765

namespace A163141

/-- `(5-3*(-1)^(n+1))*5^(1/4*(2*(n+1)-1+(-1)^(n+1)))/2` -/
def P9250147680508081765.Spec : Prop :=
  ∀ n, P9250147680508081765.a n = (A163141 (n + 1) : ℝ)

end A163141

/-! ## A163141.P17860809826826148549

`ogf((4+5x)/(1-5x^2))`
-/

namespace A163141.P17860809826826148549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 5] [1, 0, -5] n

end

end A163141.P17860809826826148549

namespace A163141

/-- `ogf((4+5x)/(1-5x^2))` -/
def P17860809826826148549.Spec : Prop :=
  ∀ n, P17860809826826148549.a n = A163141 (n + 1)

end A163141

/-! ## A163141.P2588804822258017816

`∏[5/a(n-1)]` with `a(0)=4`
-/

namespace A163141.P2588804822258017816
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4] fun n f1 =>
  5 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A163141.P2588804822258017816

namespace A163141

/-- `∏[5/a(n-1)]` -/
def P2588804822258017816.Spec : Prop :=
  ∀ n, P2588804822258017816.a n = (A163141 (n + 1) : ℚ)

end A163141

/-! ## A163141.P8314278947119584350

`floor(a(n-2)/(1-4/5))` with `a(0)=4, a(1)=5`
-/

namespace A163141.P8314278947119584350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n a =>
  ⌊(a (n - 2) : ℚ) / (1 - (4 : ℚ) / 5)⌋

end

end A163141.P8314278947119584350

namespace A163141

/-- `floor(a(n-2)/(1-4/5))` -/
def P8314278947119584350.Spec : Prop :=
  ∀ n, P8314278947119584350.a n = A163141 (n + 1)

end A163141

/-! ## A163141.P4445298266833728811

`a(n-2)+a(n-2)/(1/2)²` with `a(0)=4, a(1)=5`
-/

namespace A163141.P4445298266833728811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 5] fun n a =>
  a (n - 2) + a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A163141.P4445298266833728811

namespace A163141

/-- `a(n-2)+a(n-2)/(1/2)²` -/
def P4445298266833728811.Spec : Prop :=
  ∀ n, P4445298266833728811.a n = (A163141 (n + 1) : ℚ)

end A163141

/-! ## A163141.P12862091663854271036

`A133632(n+2)`
-/

namespace A163141.P12862091663854271036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133632 (n + 2)

end

end A163141.P12862091663854271036

namespace A163141

/-- `A133632(n+2)` -/
def P12862091663854271036.Spec : Prop :=
  ∀ n, P12862091663854271036.a n = A163141 (n + 1)

end A163141

/-! ## A163141.P12549305367676577312

`gcd(2, n)²*A056451(n)`
-/

namespace A163141.P12549305367676577312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n ^ 2 : ℤ) * A056451 n

end

end A163141.P12549305367676577312

namespace A163141

/-- `gcd(2, n)²*A056451(n)` -/
def P12549305367676577312.Spec : Prop :=
  ∀ n, P12549305367676577312.a n = A163141 (n + 1)

end A163141

/-! ## A163141.P3478869721689079710

`A140730(A014601(n+1))`
-/

namespace A163141.P3478869721689079710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (A014601 (n + 1)).toNat

end

end A163141.P3478869721689079710

namespace A163141

/-- `A140730(A014601(n+1))` -/
def P3478869721689079710.Spec : Prop :=
  ∀ n, P3478869721689079710.a n = A163141 (n + 1)

end A163141

/-! ## A163141.P11588228500275799440

`A193455(A047608(n+1))`
-/

namespace A163141.P11588228500275799440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193455 (A047608 (n + 1)).toNat

end

end A163141.P11588228500275799440

namespace A163141

/-- `A193455(A047608(n+1))` -/
def P11588228500275799440.Spec : Prop :=
  ∀ n, P11588228500275799440.a n = A163141 (n + 1)

end A163141

/-! ## A163141.P18284439762071307170

`A140730(A154708(n+1))`
-/

namespace A163141.P18284439762071307170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (A154708 (n + 1)).toNat

end

end A163141.P18284439762071307170

namespace A163141

/-- `A140730(A154708(n+1))` -/
def P18284439762071307170.Spec : Prop :=
  ∀ n, P18284439762071307170.a n = A163141 (n + 1)

end A163141

/-! ## A163141.P15443648884182005681

`A358033(A047230(n+1))`
-/

namespace A163141.P15443648884182005681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358033 (A047230 (n + 1)).toNat

end

end A163141.P15443648884182005681

namespace A163141

/-- `A358033(A047230(n+1))` -/
def P15443648884182005681.Spec : Prop :=
  ∀ n, P15443648884182005681.a n = A163141 (n + 1)

end A163141

/-! ## A163141.P12283548686644893281

`A245478(A032766(n+2))`
-/

namespace A163141.P12283548686644893281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (A032766 (n + 2)).toNat

end

end A163141.P12283548686644893281

namespace A163141

/-- `A245478(A032766(n+2))` -/
def P12283548686644893281.Spec : Prop :=
  ∀ n, P12283548686644893281.a n = A163141 (n + 1)

end A163141

/-! ## A163141.P16063155966157297509

`lcm(A010710(n), A056451(n))`
-/

namespace A163141.P16063155966157297509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010710 n) (A056451 n)

end

end A163141.P16063155966157297509

namespace A163141

/-- `lcm(A010710(n), A056451(n))` -/
def P16063155966157297509.Spec : Prop :=
  ∀ n, (P16063155966157297509.a n : ℤ) = A163141 (n + 1)

end A163141

/-! ## A163141.P11892013495225980993

`ratio[A056450(n)]*A056451(n)`
-/

namespace A163141.P11892013495225980993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056450 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A056451 n : ℚ)

end

end A163141.P11892013495225980993

namespace A163141

/-- `ratio[A056450(n)]*A056451(n)` -/
def P11892013495225980993.Spec : Prop :=
  ∀ n, P11892013495225980993.a n = (A163141 (n + 1) : ℚ)

end A163141

/-! ## A163141.P15126186273584151740

`A245478(A001651(n+1)+2)`
-/

namespace A163141.P15126186273584151740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (A001651 (n + 1) + 2).toNat

end

end A163141.P15126186273584151740

namespace A163141

/-- `A245478(A001651(n+1)+2)` -/
def P15126186273584151740.Spec : Prop :=
  ∀ n, P15126186273584151740.a n = A163141 (n + 1)

end A163141

/-! ## A163141.P5228175877622137430

`A140730(A338062(n+2)-1)`
-/

namespace A163141.P5228175877622137430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 (A338062 (n + 2) - 1).toNat

end

end A163141.P5228175877622137430

namespace A163141

/-- `A140730(A338062(n+2)-1)` -/
def P5228175877622137430.Spec : Prop :=
  ∀ n, P5228175877622137430.a n = A163141 (n + 1)

end A163141

/-! ## A163141.P2257574149746337960

`A245478(A294732(n+3)+1)`
-/

namespace A163141.P2257574149746337960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245478 (A294732 (n + 3) + 1).toNat

end

end A163141.P2257574149746337960

namespace A163141

/-- `A245478(A294732(n+3)+1)` -/
def P2257574149746337960.Spec : Prop :=
  ∀ n, P2257574149746337960.a n = A163141 (n + 1)

end A163141

/-! ## A163141.P17722276177760194493

`A010710(n)*A074872(n+1)`
-/

namespace A163141.P17722276177760194493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010710 n * A074872 (n + 1)

end

end A163141.P17722276177760194493

namespace A163141

/-- `A010710(n)*A074872(n+1)` -/
def P17722276177760194493.Spec : Prop :=
  ∀ n, P17722276177760194493.a n = A163141 (n + 1)

end A163141

/-! ## A163141.P2139417143543320

`A000034(n+1)*A026383(n+1)`
-/

namespace A163141.P2139417143543320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A026383 (n + 1)

end

end A163141.P2139417143543320

namespace A163141

/-- `A000034(n+1)*A026383(n+1)` -/
def P2139417143543320.Spec : Prop :=
  ∀ n, P2139417143543320.a n = A163141 (n + 1)

end A163141

/-!
# A163142: Integers n such that exactly 80 percent of the digits in base 2 are 1's.

The programs for A163142, there is no canonical definition to state claims against.
-/

/-! ## A163142.P18245074897435373586

`eq[A000120(n), A008586(A023416(n))]`
-/

namespace A163142.P18245074897435373586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A023416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163142.P18245074897435373586

/-! ## A163142.P14506892551294162108

`eq[A008587(A023416(n)), A070939(n)]`
-/

namespace A163142.P14506892551294162108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A023416 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163142.P14506892551294162108

/-! ## A163142.P8943969449502248591

`eq[A023416(n), A037861(A090706(n))]`
-/

namespace A163142.P8943969449502248591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A090706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163142.P8943969449502248591

/-! ## A163142.P18144391609275933592

`eq[A008587(A080791(n)), A070939(n)]`
-/

namespace A163142.P18144391609275933592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A080791 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163142.P18144391609275933592

/-!
# A163144: Partial sums of A058133.

The programs for A163144, there is no canonical definition to state claims against.
-/

/-! ## A163144.P10860789288728883854

`∑[A058133(n+1)]`
-/

namespace A163144.P10860789288728883854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163144.P10860789288728883854

/-! ## A163144.P11555000584869240488

`∑[record[A058133(abs(1-n))]]`
-/

namespace A163144.P11555000584869240488
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058133 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163144.P11555000584869240488

/-! ## A163144.P1689519261270204412

`∑[A151823(n+1)+A001423(n)]`
-/

namespace A163144.P1689519261270204412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151823 (n + 1) + A001423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163144.P1689519261270204412

/-! ## A163144.P10045720932283432427

`A058133(A000027(n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A163144.P10045720932283432427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A058133 (A000027 n + 1).toNat + a (n - 1)

end

end A163144.P10045720932283432427

/-! ## A163144.P1281493851604648172

`A058133(A328188(n)+A000720(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A163144.P1281493851604648172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A058133 (A328188 n + A000720 (n + 1)).toNat + a (n - 1)

end

end A163144.P1281493851604648172

/-!
# A163145: Number of reduced words of length n in Coxeter group on 21 generators S_i with relations (S_i)^2 = (S_i S_j)^4 = I.

The programs for A163145, there is no canonical definition to state claims against.
-/

/-! ## A163145.P16468646047302769952

`A166603(n)%A019284(n+1)-A067159(A023174(n+1))`
-/

namespace A163145.P16468646047302769952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166603 n) (A019284 (n + 1)) - A067159 ((A023174 (n + 1)).toNat + 12)

end

end A163145.P16468646047302769952

/-!
# A163146: a(n) = 12*a(n-1)-31*a(n-2) for n > 1; a(0) = 1, a(1) = 11.

The programs for A163146, the canonical program `A163146.P3035225584071907266` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163146 has offset 0).

The definition of A163146 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)-31*a(n-2)` (program `A163146.P3035225584071907266`, by `A163146.P3035225584071907266.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163146.P3035225584071907266

`12*a(n-1)-31*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A163146

/-- `12*a(n-1)-31*a(n-2)` -/
def P3035225584071907266.Spec : Prop :=
  ∀ n, P3035225584071907266.a n = A163146 n

theorem P3035225584071907266.correct : P3035225584071907266.Spec := by
  intro n
  simp only [A163146]

end A163146

/-! ## A163146.P14143082744191243599

`((1+sqrt(5))*(6+sqrt(5))^n+(1-sqrt(5))*(6-sqrt(5))^n)/2`
-/

namespace A163146.P14143082744191243599
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (5 : ℝ)) * (6 + Real.sqrt (5 : ℝ)) ^ n + (1 - Real.sqrt (5 : ℝ)) * (6 - Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A163146.P14143082744191243599

namespace A163146

/-- `((1+sqrt(5))*(6+sqrt(5))^n+(1-sqrt(5))*(6-sqrt(5))^n)/2` -/
def P14143082744191243599.Spec : Prop :=
  ∀ n, P14143082744191243599.a n = (A163146 n : ℝ)

end A163146

/-! ## A163146.P7942452762821797632

`A163066(n)-A152107(n)`
-/

namespace A163146.P7942452762821797632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163066 n - A152107 n

end

end A163146.P7942452762821797632

namespace A163146

/-- `A163066(n)-A152107(n)` -/
def P7942452762821797632.Spec : Prop :=
  ∀ n, P7942452762821797632.a n = A163146 n

end A163146

/-! ## A163146.P3613462586973712035

`Δ[A163306(n)-A152107(n)]`
-/

namespace A163146.P3613462586973712035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163306 n - A152107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163146.P3613462586973712035

namespace A163146

/-- `Δ[A163306(n)-A152107(n)]` -/
def P3613462586973712035.Spec : Prop :=
  ∀ n, P3613462586973712035.a n = A163146 n

end A163146

/-! ## A163146.P11195040693218194942

`A152107(n+1)-5*A152107(n)`
-/

namespace A163146.P11195040693218194942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152107 (n + 1) - 5 * A152107 n

end

end A163146.P11195040693218194942

namespace A163146

/-- `A152107(n+1)-5*A152107(n)` -/
def P11195040693218194942.Spec : Prop :=
  ∀ n, P11195040693218194942.a n = A163146 n

end A163146

/-! ## A163146.P13861310949128627120

`A163306(n+1)-6*A163306(n)`
-/

namespace A163146.P13861310949128627120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163306 (n + 1) - 6 * A163306 n

end

end A163146.P13861310949128627120

namespace A163146

/-- `A163306(n+1)-6*A163306(n)` -/
def P13861310949128627120.Spec : Prop :=
  ∀ n, P13861310949128627120.a n = A163146 n

end A163146

/-!
# A163147: a(n) = 14*a(n-1) - 44*a(n-2) for n > 1; a(0) = 1, a(1) = 12.

The programs for A163147, the canonical program `A163147.P14456569124751963176` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163147 has offset 0).

The definition of A163147 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)-44*a(n-2)` (program `A163147.P14456569124751963176`, by `A163147.P14456569124751963176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163147.P14456569124751963176

`14*a(n-1)-44*a(n-2)` with `a(0)=1, a(1)=12`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A163147

/-- `14*a(n-1)-44*a(n-2)` -/
def P14456569124751963176.Spec : Prop :=
  ∀ n, P14456569124751963176.a n = A163147 n

theorem P14456569124751963176.correct : P14456569124751963176.Spec := by
  intro n
  simp only [A163147]

end A163147

/-! ## A163147.P6762006051131277230

`((1+sqrt(5))*(7+sqrt(5))^n+(1-sqrt(5))*(7-sqrt(5))^n)/2`
-/

namespace A163147.P6762006051131277230
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (5 : ℝ)) * (7 + Real.sqrt (5 : ℝ)) ^ n + (1 - Real.sqrt (5 : ℝ)) * (7 - Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A163147.P6762006051131277230

namespace A163147

/-- `((1+sqrt(5))*(7+sqrt(5))^n+(1-sqrt(5))*(7-sqrt(5))^n)/2` -/
def P6762006051131277230.Spec : Prop :=
  ∀ n, P6762006051131277230.a n = (A163147 n : ℝ)

end A163147

/-! ## A163147.P11694248818649876389

`A163067(n)-A152108(n)`
-/

namespace A163147.P11694248818649876389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163067 n - A152108 n

end

end A163147.P11694248818649876389

namespace A163147

/-- `A163067(n)-A152108(n)` -/
def P11694248818649876389.Spec : Prop :=
  ∀ n, P11694248818649876389.a n = A163147 n

end A163147

/-! ## A163147.P2199890320303772333

`2^n*Δ[Δ[A081568(n)]%A081568(n)]`
-/

namespace A163147.P2199890320303772333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081568 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A081568 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n)

end

end A163147.P2199890320303772333

namespace A163147

/-- `2^n*Δ[Δ[A081568(n)]%A081568(n)]` -/
def P2199890320303772333.Spec : Prop :=
  ∀ n, P2199890320303772333.a n = A163147 n

end A163147

/-! ## A163147.P13251754613926347713

`Δ[A081568(n+1)%A081568(n)]*A000079(n)`
-/

namespace A163147.P13251754613926347713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081568 (n + 1)) (A081568 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000079 n

end

end A163147.P13251754613926347713

namespace A163147

/-- `Δ[A081568(n+1)%A081568(n)]*A000079(n)` -/
def P13251754613926347713.Spec : Prop :=
  ∀ n, P13251754613926347713.a n = A163147 n

end A163147

/-!
# A163148: a(n) = 16*a(n-1) - 59*a(n-2) for n > 1; a(0) = 1, a(1) = 13.

The programs for A163148, the canonical program `A163148.P15424429852054767423` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163148 has offset 0).

The definition of A163148 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*a(n-1)-59*a(n-2)` (program `A163148.P15424429852054767423`, by `A163148.P15424429852054767423.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163148.P15424429852054767423

`16*a(n-1)-59*a(n-2)` with `a(0)=1, a(1)=13`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A163148

/-- `16*a(n-1)-59*a(n-2)` -/
def P15424429852054767423.Spec : Prop :=
  ∀ n, P15424429852054767423.a n = A163148 n

theorem P15424429852054767423.correct : P15424429852054767423.Spec := by
  intro n
  simp only [A163148]

end A163148

/-! ## A163148.P4323983796172416897

`((1+sqrt(5))*(8+sqrt(5))^n+(1-sqrt(5))*(8-sqrt(5))^n)/2`
-/

namespace A163148.P4323983796172416897
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (5 : ℝ)) * (8 + Real.sqrt (5 : ℝ)) ^ n + (1 - Real.sqrt (5 : ℝ)) * (8 - Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A163148.P4323983796172416897

namespace A163148

/-- `((1+sqrt(5))*(8+sqrt(5))^n+(1-sqrt(5))*(8-sqrt(5))^n)/2` -/
def P4323983796172416897.Spec : Prop :=
  ∀ n, P4323983796172416897.a n = (A163148 n : ℝ)

end A163148

/-! ## A163148.P7554290362390695433

`A163068(n)-A152109(n)`
-/

namespace A163148.P7554290362390695433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163068 n - A152109 n

end

end A163148.P7554290362390695433

namespace A163148

/-- `A163068(n)-A152109(n)` -/
def P7554290362390695433.Spec : Prop :=
  ∀ n, P7554290362390695433.a n = A163148 n

end A163148

/-! ## A163148.P17730767740482723828

`A163068(n)-A163068(n+1)%A163068(n)`
-/

namespace A163148.P17730767740482723828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163068 n - Int.tmod (A163068 (n + 1)) (A163068 n)

end

end A163148.P17730767740482723828

namespace A163148

/-- `A163068(n)-A163068(n+1)%A163068(n)` -/
def P17730767740482723828.Spec : Prop :=
  ∀ n, P17730767740482723828.a n = A163148 n

end A163148

/-!
# A163149: Number of reduced words of length n in Coxeter group on 22 generators S_i with relations (S_i)^2 = (S_i S_j)^4 = I.

The programs for A163149, there is no canonical definition to state claims against.
-/

/-! ## A163149.P15183263676567337994

`or(A191893(A000108(n+1)+1), A342887(n))`
-/

namespace A163149.P15183263676567337994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A191893 (A000108 (n + 1) + 1).toNat) (A342887 n)

end

end A163149.P15183263676567337994

/-!
# A163150: 

The programs for A163150, there is no canonical definition to state claims against.
-/

/-! ## A163150.P8090767451024862409

`A163151(n+1)+A000041(A163151(n+1))`
-/

namespace A163150.P8090767451024862409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163151 (n + 1) + A000041 (A163151 (n + 1)).toNat

end

end A163150.P8090767451024862409

/-!
# A163152: Primes of the form PartitionsP[p], p are prime numbers.

The programs for A163152, there is no canonical definition to state claims against.
-/

/-! ## A163152.P2919724619463888832

`A000041(A038601(n+1))`
-/

namespace A163152.P2919724619463888832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A038601 (n + 1)).toNat

end

end A163152.P2919724619463888832

/-! ## A163152.P13773964306236020503

`A000041(p?[A046063(n+1)])`
-/

namespace A163152.P13773964306236020503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163152.P13773964306236020503

/-! ## A163152.P8448802738221913856

`A000041(p?[A281597(n+1)])`
-/

namespace A163152.P8448802738221913856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163152.P8448802738221913856

/-! ## A163152.P16823802733872826609

`A000041(p?[A281598(n+1)])`
-/

namespace A163152.P16823802733872826609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163152.P16823802733872826609

/-! ## A163152.P1682536800967876097

`A000041(p?[A281599(n+1)])`
-/

namespace A163152.P1682536800967876097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163152.P1682536800967876097

/-!
# A163153: Primes of the form A000009(q)+q, where q are also prime numbers.

The programs for A163153, there is no canonical definition to state claims against.
-/

/-! ## A163153.P1793184693598787625

`p?[A319301(A319333(n+1))+1]`
-/

namespace A163153.P1793184693598787625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319301 (A319333 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163153.P1793184693598787625

/-! ## A163153.P743374846813769042

`p?[A064688(n+1)+A000040(n+1)]`
-/

namespace A163153.P743374846813769042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064688 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163153.P743374846813769042

/-! ## A163153.P17431187043692341157

`p?[A100725(n+1)+A064688(n+1)]`
-/

namespace A163153.P17431187043692341157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100725 (n + 1) + A064688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163153.P17431187043692341157

/-! ## A163153.P17880475908526938813

`p?[A064688(n+1)+p?[A018252(n+1)-7]]`
-/

namespace A163153.P17880475908526938813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064688 (n + 1) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163153.P17880475908526938813

/-! ## A163153.P10100047933591512355

`p?[p?[A018252(n+1)-7]+A123557(n+1)+1]`
-/

namespace A163153.P10100047933591512355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + (A123557 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163153.P10100047933591512355

/-!
# A163157: Primes of the form 1 + some Golden Rectangle Number.

The programs for A163157, there is no canonical definition to state claims against.
-/

/-! ## A163157.P16176882902268970302

`p?[A107387(n)]`
-/

namespace A163157.P16176882902268970302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107387 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163157.P16176882902268970302

/-!
# A163158: Primes of the form f^2-2, where f is a Fibonacci number.

The programs for A163158, there is no canonical definition to state claims against.
-/

/-! ## A163158.P8177882007813301456

`A163159(n+1)²-2`
-/

namespace A163158.P8177882007813301456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163159 (n + 1) ^ 2 - 2

end

end A163158.P8177882007813301456

/-! ## A163158.P16446989227129468087

`A008865(A163159(n+1))`
-/

namespace A163158.P16446989227129468087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (A163159 (n + 1)).toNat

end

end A163158.P16446989227129468087

/-! ## A163158.P9230891916184651165

`A184674(2*A121569(n+2))`
-/

namespace A163158.P9230891916184651165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184674 (2 * A121569 (n + 2)).toNat

end

end A163158.P9230891916184651165

/-! ## A163158.P7503611297312579134

`A184676(2*A121569(n+2))`
-/

namespace A163158.P7503611297312579134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (2 * A121569 (n + 2)).toNat

end

end A163158.P7503611297312579134

/-! ## A163158.P1484385198793488685

`A164314(∏{p}[A163159(n+1), #])`
-/

namespace A163158.P1484385198793488685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163159 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164314 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A163158.P1484385198793488685

/-!
# A163159: Fibonacci numbers F such that F^2-2 is prime.

The programs for A163159, there is no canonical definition to state claims against.
-/

/-! ## A163159.P15486719111799545405

`ceil(sqrt(A163158(n+1)))`
-/

namespace A163159.P15486719111799545405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A163158 (n + 1) : ℝ)⌉

end

end A163159.P15486719111799545405

/-! ## A163159.P15291482604489146039

`round(sqrt(A163158(n+1)+A043562(n)))`
-/

namespace A163159.P15291482604489146039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A163158 (n + 1) + A043562 n : ℝ))

end

end A163159.P15291482604489146039

/-! ## A163159.P8100731668828390105

`floor(sqrt(A163158(n+1)+A028870(n+1)))`
-/

namespace A163159.P8100731668828390105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A163158 (n + 1) + A028870 (n + 1))

end

end A163159.P8100731668828390105

/-! ## A163159.P5352726816180981769

`floor(sqrt(A163158(n+1)+A146329(n+1)))`
-/

namespace A163159.P5352726816180981769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A163158 (n + 1) + A146329 (n + 1))

end

end A163159.P5352726816180981769

/-! ## A163159.P1206407034858807568

`round(sqrt(A205009(n+1)+A163158(n+1)))`
-/

namespace A163159.P1206407034858807568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A205009 (n + 1) + A163158 (n + 1) : ℝ))

end

end A163159.P1206407034858807568

/-!
# A163160: a(n) = A162996(n) - R_n = round(kn * (log(kn)+1)) - R_n, with k = 2.216 and R_n = n-th Ramanujan Prime A104272(n) and where Abs(a(n)) < 2 * sqrt(A162996(n)) for n in [1..1000].

The programs for A163160, there is no canonical definition to state claims against.
-/

/-! ## A163160.P15037104354506069132

`A162996(n+1)-A104272(n+1)`
-/

namespace A163160.P15037104354506069132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162996 (n + 1) - A104272 (n + 1)

end

end A163160.P15037104354506069132

/-! ## A163160.P11487744877433384637

`A162996(n+1)-A034694(A084139(n))`
-/

namespace A163160.P11487744877433384637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162996 (n + 1) - A034694 (A084139 n).toNat

end

end A163160.P11487744877433384637

/-! ## A163160.P13154792691840771634

`A162996(n+1)-A047268(A084140(n+1))`
-/

namespace A163160.P13154792691840771634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162996 (n + 1) - A047268 (A084140 (n + 1)).toNat

end

end A163160.P13154792691840771634

/-! ## A163160.P1128039147751997060

`A162996(n+1)-A000040(A179196(n+1))`
-/

namespace A163160.P1128039147751997060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162996 (n + 1) - A000040 (A179196 (n + 1)).toNat

end

end A163160.P1128039147751997060

/-! ## A163160.P18103664485648331717

`A162996(n+1)-(A233739(n+1)+A031215(n+1))`
-/

namespace A163160.P18103664485648331717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162996 (n + 1) - (A233739 (n + 1) + A031215 (n + 1))

end

end A163160.P18103664485648331717

/-! ## A163160.P7719167092118034260

`A162996(n+1)-(A194217(n+1)+A080359(n+1))`
-/

namespace A163160.P7719167092118034260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162996 (n + 1) - (A194217 (n + 1) + A080359 (n + 1))

end

end A163160.P7719167092118034260

/-! ## A163160.P10549920249931951833

`A162996(n+1)-(A194184(n+1)+A193507(n+1))`
-/

namespace A163160.P10549920249931951833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162996 (n + 1) - (A194184 (n + 1) + A193507 (n + 1))

end

end A163160.P10549920249931951833

/-!
# A163161: Values of n at which the sequence A161865/A161867 equals 1/2.

The programs for A163161, there is no canonical definition to state claims against.
-/

/-! ## A163161.P13462278546202683821

`eq[2, A161867(n+1)]+1`
-/

namespace A163161.P13462278546202683821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161867 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A163161.P13462278546202683821

/-! ## A163161.P15865740204652297724

`eq[1, A161865(n+2)]+2`
-/

namespace A163161.P15865740204652297724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161865 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A163161.P15865740204652297724

/-! ## A163161.P7581986018769760155

`record[(n+5)/A161865(n+5)]`
-/

namespace A163161.P7581986018769760155
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℚ) / (A161865 (n + 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163161.P7581986018769760155

/-! ## A163161.P3186984015981236116

`eq[2, A161867(A028310(n))]`
-/

namespace A163161.P3186984015981236116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161867 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163161.P3186984015981236116

/-! ## A163161.P14750107899540892380

`eq[1, A161865(A233583(n+1))]`
-/

namespace A163161.P14750107899540892380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161865 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163161.P14750107899540892380

/-! ## A163161.P5835172359203825221

`A020725(eq[2, A161867(n+1)])`
-/

namespace A163161.P5835172359203825221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163161.P5835172359203825221

/-! ## A163161.P8107094344746078742

`eq[2, A161867(A000007(n)+n)]`
-/

namespace A163161.P8107094344746078742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161867 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163161.P8107094344746078742

/-! ## A163161.P16396408207448528119

`lt[A161867(n+1)², A093074(n+1)]+1`
-/

namespace A163161.P16396408207448528119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161867 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A163161.P16396408207448528119

/-! ## A163161.P149687188525743860

`eq[A157928(n), A161865(A028310(n))]`
-/

namespace A163161.P149687188525743860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161865 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163161.P149687188525743860

/-!
# A163162: Numbers k such that sigma(k) is not prime.

The programs for A163162, the canonical program `A163162.P2282227001172303416` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163162 has offset 1).

The definition of A163162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163162.P17186822867549959919

`comp[A023194(n+1)-1]+1`
-/

namespace A163162.P17186822867549959919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A163162.P17186822867549959919

namespace A163162

/-- `comp[A023194(n+1)-1]+1` -/
def P17186822867549959919.Spec : Prop :=
  ∀ n, (P17186822867549959919.a n : ℤ) = A163162 (n + 1)

end A163162

/-! ## A163162.P2282227001172303416

`a(n-1)+ceil(2/A058063(a(n-1)+1))` with `a(0)=1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A163162

/-- `a(n-1)+ceil(2/A058063(a(n-1)+1))` -/
def P2282227001172303416.Spec : Prop :=
  ∀ n, P2282227001172303416.a n = A163162 (n + 1)

theorem P2282227001172303416.correct : P2282227001172303416.Spec := by
  intro n
  simp only [A163162, Nat.add_sub_cancel]

end A163162

/-! ## A163162.P17770318380686602039

`∪[A000227(n), A325435(n+1)]`
-/

namespace A163162.P17770318380686602039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000227 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163162.P17770318380686602039

namespace A163162

/-- `∪[A000227(n), A325435(n+1)]` -/
def P17770318380686602039.Spec : Prop :=
  ∀ n, (P17770318380686602039.a n : ℤ) = A163162 (n + 1)

end A163162

/-! ## A163162.P9372455394154317168

`∪[A325435(n+1), A000603(n)]`
-/

namespace A163162.P9372455394154317168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163162.P9372455394154317168

namespace A163162

/-- `∪[A325435(n+1), A000603(n)]` -/
def P9372455394154317168.Spec : Prop :=
  ∀ n, (P9372455394154317168.a n : ℤ) = A163162 (n + 1)

end A163162

/-! ## A163162.P6481109369168588569

`∪[A000648(n), A325435(n+1)]`
-/

namespace A163162.P6481109369168588569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000648 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163162.P6481109369168588569

namespace A163162

/-- `∪[A000648(n), A325435(n+1)]` -/
def P6481109369168588569.Spec : Prop :=
  ∀ n, (P6481109369168588569.a n : ℤ) = A163162 (n + 1)

end A163162

/-! ## A163162.P10042435396267398006

`∪[A000713(n), A325435(n+1)]`
-/

namespace A163162.P10042435396267398006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000713 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163162.P10042435396267398006

namespace A163162

/-- `∪[A000713(n), A325435(n+1)]` -/
def P10042435396267398006.Spec : Prop :=
  ∀ n, (P10042435396267398006.a n : ℤ) = A163162 (n + 1)

end A163162

/-! ## A163162.P6208807549196725057

`∪[A000917(n), A325435(n+1)]`
-/

namespace A163162.P6208807549196725057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000917 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163162.P6208807549196725057

namespace A163162

/-- `∪[A000917(n), A325435(n+1)]` -/
def P6208807549196725057.Spec : Prop :=
  ∀ n, (P6208807549196725057.a n : ℤ) = A163162 (n + 1)

end A163162

/-! ## A163162.P7547232598099047854

`∪[A325435(n+1), A000969(n)]`
-/

namespace A163162.P7547232598099047854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000969 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163162.P7547232598099047854

namespace A163162

/-- `∪[A325435(n+1), A000969(n)]` -/
def P7547232598099047854.Spec : Prop :=
  ∀ n, (P7547232598099047854.a n : ℤ) = A163162 (n + 1)

end A163162

/-! ## A163162.P17066768683863248131

`∪[A000998(n), A325435(n+1)]`
-/

namespace A163162.P17066768683863248131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000998 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163162.P17066768683863248131

namespace A163162

/-- `∪[A000998(n), A325435(n+1)]` -/
def P17066768683863248131.Spec : Prop :=
  ∀ n, (P17066768683863248131.a n : ℤ) = A163162 (n + 1)

end A163162

/-! ## A163162.P5488159150773786312

`∪[A001317(n), A325435(n+1)]`
-/

namespace A163162.P5488159150773786312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163162.P5488159150773786312

namespace A163162

/-- `∪[A001317(n), A325435(n+1)]` -/
def P5488159150773786312.Spec : Prop :=
  ∀ n, (P5488159150773786312.a n : ℤ) = A163162 (n + 1)

end A163162

/-! ## A163162.P8192658115332602599

`∪[A325435(n+1), A001539(n)]`
-/

namespace A163162.P8192658115332602599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001539 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163162.P8192658115332602599

namespace A163162

/-- `∪[A325435(n+1), A001539(n)]` -/
def P8192658115332602599.Spec : Prop :=
  ∀ n, (P8192658115332602599.a n : ℤ) = A163162 (n + 1)

end A163162

/-! ## A163162.P13421235829469486147

`∪[A001550(n), A325435(n+1)]`
-/

namespace A163162.P13421235829469486147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001550 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163162.P13421235829469486147

namespace A163162

/-- `∪[A001550(n), A325435(n+1)]` -/
def P13421235829469486147.Spec : Prop :=
  ∀ n, (P13421235829469486147.a n : ℤ) = A163162 (n + 1)

end A163162

/-! ## A163162.P6853746475729262467

`∪[A001558(n), A325435(n+1)]`
-/

namespace A163162.P6853746475729262467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163162.P6853746475729262467

namespace A163162

/-- `∪[A001558(n), A325435(n+1)]` -/
def P6853746475729262467.Spec : Prop :=
  ∀ n, (P6853746475729262467.a n : ℤ) = A163162 (n + 1)

end A163162

/-! ## A163162.P17526752538640777768

`∪[A001576(n), A325435(n+1)]`
-/

namespace A163162.P17526752538640777768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163162.P17526752538640777768

namespace A163162

/-- `∪[A001576(n), A325435(n+1)]` -/
def P17526752538640777768.Spec : Prop :=
  ∀ n, (P17526752538640777768.a n : ℤ) = A163162 (n + 1)

end A163162

/-! ## A163162.P1533778607470419408

`∪[A001580(n), A325435(n+1)]`
-/

namespace A163162.P1533778607470419408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001580 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163162.P1533778607470419408

namespace A163162

/-- `∪[A001580(n), A325435(n+1)]` -/
def P1533778607470419408.Spec : Prop :=
  ∀ n, (P1533778607470419408.a n : ℤ) = A163162 (n + 1)

end A163162

/-! ## A163162.P15345411780039673096

`∪[A001655(n), A325435(n+1)]`
-/

namespace A163162.P15345411780039673096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163162.P15345411780039673096

namespace A163162

/-- `∪[A001655(n), A325435(n+1)]` -/
def P15345411780039673096.Spec : Prop :=
  ∀ n, (P15345411780039673096.a n : ℤ) = A163162 (n + 1)

end A163162

/-! ## A163162.P16544383084789772457

`∪[A001668(n), A325435(n+1)]`
-/

namespace A163162.P16544383084789772457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163162.P16544383084789772457

namespace A163162

/-- `∪[A001668(n), A325435(n+1)]` -/
def P16544383084789772457.Spec : Prop :=
  ∀ n, (P16544383084789772457.a n : ℤ) = A163162 (n + 1)

end A163162

/-! ## A163162.P17238393569926126580

`∪[A001671(n), A325435(n+1)]`
-/

namespace A163162.P17238393569926126580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163162.P17238393569926126580

namespace A163162

/-- `∪[A001671(n), A325435(n+1)]` -/
def P17238393569926126580.Spec : Prop :=
  ∀ n, (P17238393569926126580.a n : ℤ) = A163162 (n + 1)

end A163162

/-! ## A163162.P17830760492156462965

`∪[A001700(n), A325435(n+1)]`
-/

namespace A163162.P17830760492156462965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163162.P17830760492156462965

namespace A163162

/-- `∪[A001700(n), A325435(n+1)]` -/
def P17830760492156462965.Spec : Prop :=
  ∀ n, (P17830760492156462965.a n : ℤ) = A163162 (n + 1)

end A163162

/-! ## A163162.P15086938369725654436

`∪[A001792(n), A325435(n+1)]`
-/

namespace A163162.P15086938369725654436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163162.P15086938369725654436

namespace A163162

/-- `∪[A001792(n), A325435(n+1)]` -/
def P15086938369725654436.Spec : Prop :=
  ∀ n, (P15086938369725654436.a n : ℤ) = A163162 (n + 1)

end A163162

/-!
# A163163: a(n) = sigma(n) + tau(n) - n.

The programs for A163163, the canonical program `A163163.P6994369131379745311` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163163 has offset 1).

The definition of A163163 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163163.P10302097827191697476

`A007503(n+1)-(n+1)`
-/

namespace A163163.P10302097827191697476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007503 (n + 1) - (n + 1 : ℤ)

end

end A163163.P10302097827191697476

namespace A163163

/-- `A007503(n+1)-(n+1)` -/
def P10302097827191697476.Spec : Prop :=
  ∀ n, P10302097827191697476.a n = A163163 (n + 1)

end A163163

/-! ## A163163.P6994369131379745311

`A000005(n+1)+A001065(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A163163

/-- `A000005(n+1)+A001065(n+1)` -/
def P6994369131379745311.Spec : Prop :=
  ∀ n, P6994369131379745311.a n = A163163 (n + 1)

theorem P6994369131379745311.correct : P6994369131379745311.Spec := by
  intro n
  simp only [A163163, Nat.add_sub_cancel]

end A163163

/-! ## A163163.P5673829929796067677

`A000203(n+1)+A000005(n+1)-(n+1)`
-/

namespace A163163.P5673829929796067677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + A000005 (n + 1) - (n + 1 : ℤ)

end

end A163163.P5673829929796067677

namespace A163163

/-- `A000203(n+1)+A000005(n+1)-(n+1)` -/
def P5673829929796067677.Spec : Prop :=
  ∀ n, P5673829929796067677.a n = A163163 (n + 1)

end A163163

/-! ## A163163.P4016763969757910196

`∑{d}[n+1, #+1]-(n+1)`
-/

namespace A163163.P4016763969757910196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A163163.P4016763969757910196

namespace A163163

/-- `∑{d}[n+1, #+1]-(n+1)` -/
def P4016763969757910196.Spec : Prop :=
  ∀ n, P4016763969757910196.a n = A163163 (n + 1)

end A163163

/-! ## A163163.P1672077581054581299

`∑{d}[n+1, #%(n+1)+1]`
-/

namespace A163163.P1672077581054581299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d % (n + 1) + 1)

end

end A163163.P1672077581054581299

namespace A163163

/-- `∑{d}[n+1, #%(n+1)+1]` -/
def P1672077581054581299.Spec : Prop :=
  ∀ n, (P1672077581054581299.a n : ℤ) = A163163 (n + 1)

end A163163

/-! ## A163163.P888078591643911803

`Δ[A257644(n)]-(n+1)`
-/

namespace A163163.P888078591643911803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A163163.P888078591643911803

namespace A163163

/-- `Δ[A257644(n)]-(n+1)` -/
def P888078591643911803.Spec : Prop :=
  ∀ n, P888078591643911803.a n = A163163 (n + 1)

end A163163

/-! ## A163163.P11942431476809081575

`∑{d}[n+1, 1-A000010(#)+#]`
-/

namespace A163163.P11942431476809081575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A000010 d + (d : ℤ))

end

end A163163.P11942431476809081575

namespace A163163

/-- `∑{d}[n+1, 1-A000010(#)+#]` -/
def P11942431476809081575.Spec : Prop :=
  ∀ n, P11942431476809081575.a n = A163163 (n + 1)

end A163163

/-! ## A163163.P15782459139171782979

`A001065(n+1)+Δ[A006218(n)]`
-/

namespace A163163.P15782459139171782979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (f1 (n + 1) - f1 n)

end

end A163163.P15782459139171782979

namespace A163163

/-- `A001065(n+1)+Δ[A006218(n)]` -/
def P15782459139171782979.Spec : Prop :=
  ∀ n, P15782459139171782979.a n = A163163 (n + 1)

end A163163

/-! ## A163163.P17257113032954046561

`A001065(n+1)+Δ[A054519(n)]`
-/

namespace A163163.P17257113032954046561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (f1 (n + 1) - f1 n)

end

end A163163.P17257113032954046561

namespace A163163

/-- `A001065(n+1)+Δ[A054519(n)]` -/
def P17257113032954046561.Spec : Prop :=
  ∀ n, P17257113032954046561.a n = A163163 (n + 1)

end A163163

/-! ## A163163.P15272684138401206375

`Δ[A160664(n)]-A049820(n+1)`
-/

namespace A163163.P15272684138401206375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A049820 (n + 1)

end

end A163163.P15272684138401206375

namespace A163163

/-- `Δ[A160664(n)]-A049820(n+1)` -/
def P15272684138401206375.Spec : Prop :=
  ∀ n, P15272684138401206375.a n = A163163 (n + 1)

end A163163

/-! ## A163163.P12167708178961889970

`A062249(n+1)+A033880(n+1)`
-/

namespace A163163.P12167708178961889970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1) + A033880 (n + 1)

end

end A163163.P12167708178961889970

namespace A163163

/-- `A062249(n+1)+A033880(n+1)` -/
def P12167708178961889970.Spec : Prop :=
  ∀ n, P12167708178961889970.a n = A163163 (n + 1)

end A163163

/-! ## A163163.P4180632783125499733

`A134156(n+1)+A065608(n+1)`
-/

namespace A163163.P4180632783125499733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134156 (n + 1) + A065608 (n + 1)

end

end A163163.P4180632783125499733

namespace A163163

/-- `A134156(n+1)+A065608(n+1)` -/
def P4180632783125499733.Spec : Prop :=
  ∀ n, P4180632783125499733.a n = A163163 (n + 1)

end A163163

/-! ## A163163.P2489152019246759173

`A152770(n+1)+A114003(n+1)`
-/

namespace A163163.P2489152019246759173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (n + 1) + A114003 (n + 1)

end

end A163163.P2489152019246759173

namespace A163163

/-- `A152770(n+1)+A114003(n+1)` -/
def P2489152019246759173.Spec : Prop :=
  ∀ n, P2489152019246759173.a n = A163163 (n + 1)

end A163163

/-! ## A163163.P14129658235491212488

`A228947(n+1)+A061468(n+1)`
-/

namespace A163163.P14129658235491212488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228947 (n + 1) + A061468 (n + 1)

end

end A163163.P14129658235491212488

namespace A163163

/-- `A228947(n+1)+A061468(n+1)` -/
def P14129658235491212488.Spec : Prop :=
  ∀ n, P14129658235491212488.a n = A163163 (n + 1)

end A163163

/-! ## A163163.P12388781201353882494

`A281006(n+1)+A023645(n+1)`
-/

namespace A163163.P12388781201353882494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281006 (n + 1) + A023645 (n + 1)

end

end A163163.P12388781201353882494

namespace A163163

/-- `A281006(n+1)+A023645(n+1)` -/
def P12388781201353882494.Spec : Prop :=
  ∀ n, P12388781201353882494.a n = A163163 (n + 1)

end A163163

/-! ## A163163.P18256159635548828676

`A237588(n+1)+A158907(n+1)`
-/

namespace A163163.P18256159635548828676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + A158907 (n + 1)

end

end A163163.P18256159635548828676

namespace A163163

/-- `A237588(n+1)+A158907(n+1)` -/
def P18256159635548828676.Spec : Prop :=
  ∀ n, P18256159635548828676.a n = A163163 (n + 1)

end A163163

/-! ## A163163.P1692781275744488919

`A351561(n+1)+A051709(n+1)`
-/

namespace A163163.P1692781275744488919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351561 (n + 1) + A051709 (n + 1)

end

end A163163.P1692781275744488919

namespace A163163

/-- `A351561(n+1)+A051709(n+1)` -/
def P1692781275744488919.Spec : Prop :=
  ∀ n, P1692781275744488919.a n = A163163 (n + 1)

end A163163

/-! ## A163163.P4107162116647046382

`A000203(n+1)-A049820(n+1)`
-/

namespace A163163.P4107162116647046382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A049820 (n + 1)

end

end A163163.P4107162116647046382

namespace A163163

/-- `A000203(n+1)-A049820(n+1)` -/
def P4107162116647046382.Spec : Prop :=
  ∀ n, P4107162116647046382.a n = A163163 (n + 1)

end A163163

/-! ## A163163.P7541360079977355851

`A062249(n+1)-A033879(n+1)`
-/

namespace A163163.P7541360079977355851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1) - A033879 (n + 1)

end

end A163163.P7541360079977355851

namespace A163163

/-- `A062249(n+1)-A033879(n+1)` -/
def P7541360079977355851.Spec : Prop :=
  ∀ n, P7541360079977355851.a n = A163163 (n + 1)

end A163163

/-! ## A163163.P1984374804109857521

`A233541(n+1)-A121048(n+1)`
-/

namespace A163163.P1984374804109857521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233541 (n + 1) - A121048 (n + 1)

end

end A163163.P1984374804109857521

namespace A163163

/-- `A233541(n+1)-A121048(n+1)` -/
def P1984374804109857521.Spec : Prop :=
  ∀ n, P1984374804109857521.a n = A163163 (n + 1)

end A163163

/-!
# A163165: a(n) = 20*a(n-1) - 96*a(n-2) for n > 1; a(0) = 1, a(1) = 10.

The programs for A163165, the canonical program `A163165.P13745313173515505835` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163165 has offset 0).

The definition of A163165 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-96*a(n-2)` (program `A163165.P13745313173515505835`, by `A163165.P13745313173515505835.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163165.P9113687432349578529

`(12^n+8^n)/2`
-/

namespace A163165.P9113687432349578529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 ^ n + 8 ^ n : ℚ) / 2

end

end A163165.P9113687432349578529

namespace A163165

/-- `(12^n+8^n)/2` -/
def P9113687432349578529.Spec : Prop :=
  ∀ n, P9113687432349578529.a n = (A163165 n : ℚ)

theorem P9113687432349578529.correct : P9113687432349578529.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163165, Nat.add_sub_cancel, A163165.P9113687432349578529.a, A163165.P13745313173515505835.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163165, Nat.add_sub_cancel, A163165.P9113687432349578529.a, A163165.P13745313173515505835.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A163165

/-! ## A163165.P13745313173515505835

`20*a(n-1)-96*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A163165

/-- `20*a(n-1)-96*a(n-2)` -/
def P13745313173515505835.Spec : Prop :=
  ∀ n, P13745313173515505835.a n = A163165 n

theorem P13745313173515505835.correct : P13745313173515505835.Spec := by
  intro n
  simp only [A163165]

end A163165

/-! ## A163165.P5205498023924753391

`A000079(n)*A081187(n)`
-/

namespace A163165.P5205498023924753391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A081187 n

end

end A163165.P5205498023924753391

namespace A163165

/-- `A000079(n)*A081187(n)` -/
def P5205498023924753391.Spec : Prop :=
  ∀ n, P5205498023924753391.a n = A163165 n

end A163165

/-! ## A163165.P13531339177154274530

`Δ[A000225(n)]*A081187(n)`
-/

namespace A163165.P13531339177154274530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A081187 n

end

end A163165.P13531339177154274530

namespace A163165

/-- `Δ[A000225(n)]*A081187(n)` -/
def P13531339177154274530.Spec : Prop :=
  ∀ n, P13531339177154274530.a n = A163165 n

end A163165

/-! ## A163165.P15068348593123275945

`Δ[A000918(n)]*A081187(n)`
-/

namespace A163165.P15068348593123275945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A081187 n

end

end A163165.P15068348593123275945

namespace A163165

/-- `Δ[A000918(n)]*A081187(n)` -/
def P15068348593123275945.Spec : Prop :=
  ∀ n, P15068348593123275945.a n = A163165 n

end A163165

/-! ## A163165.P10139402192546109116

`Δ[A036563(n)]*A081187(n)`
-/

namespace A163165.P10139402192546109116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A081187 n

end

end A163165.P10139402192546109116

namespace A163165

/-- `Δ[A036563(n)]*A081187(n)` -/
def P10139402192546109116.Spec : Prop :=
  ∀ n, P10139402192546109116.a n = A163165 n

end A163165

/-! ## A163165.P6737893488857012401

`A011782(n+1)*A081187(n)`
-/

namespace A163165.P6737893488857012401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A081187 n

end

end A163165.P6737893488857012401

namespace A163165

/-- `A011782(n+1)*A081187(n)` -/
def P6737893488857012401.Spec : Prop :=
  ∀ n, P6737893488857012401.a n = A163165 n

end A163165

/-! ## A163165.P3652653281689764100

`A016116(2*n)*A081187(n)`
-/

namespace A163165.P3652653281689764100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) * A081187 n

end

end A163165.P3652653281689764100

namespace A163165

/-- `A016116(2*n)*A081187(n)` -/
def P3652653281689764100.Spec : Prop :=
  ∀ n, P3652653281689764100.a n = A163165 n

end A163165

/-! ## A163165.P4731542589710575094

`A000302(n)/2*A007689(n)`
-/

namespace A163165.P4731542589710575094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 n : ℚ) / 2 * (A007689 n : ℚ)

end

end A163165.P4731542589710575094

namespace A163165

/-- `A000302(n)/2*A007689(n)` -/
def P4731542589710575094.Spec : Prop :=
  ∀ n, P4731542589710575094.a n = (A163165 n : ℚ)

end A163165

/-! ## A163165.P6192195950929560384

`A000079(n)/2*A074612(n)`
-/

namespace A163165.P6192195950929560384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / 2 * (A074612 n : ℚ)

end

end A163165.P6192195950929560384

namespace A163165

/-- `A000079(n)/2*A074612(n)` -/
def P6192195950929560384.Spec : Prop :=
  ∀ n, P6192195950929560384.a n = (A163165 n : ℚ)

end A163165

/-!
# A163166: a(n) = 20*a(n-1)-95*a(n-2) for n > 1; a(0) = 1, a(1) = 10.

The programs for A163166, the canonical program `A163166.P4555441830589981406` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163166 has offset 0).

The definition of A163166 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-95*a(n-2)` (program `A163166.P4555441830589981406`, by `A163166.P4555441830589981406.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163166.P4555441830589981406

`20*a(n-1)-95*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A163166

/-- `20*a(n-1)-95*a(n-2)` -/
def P4555441830589981406.Spec : Prop :=
  ∀ n, P4555441830589981406.a n = A163166 n

theorem P4555441830589981406.correct : P4555441830589981406.Spec := by
  intro n
  simp only [A163166]

end A163166

/-! ## A163166.P13128990331367934212

`((10+sqrt(5))^n+(10-sqrt(5))^n)/2`
-/

namespace A163166.P13128990331367934212
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((10 + Real.sqrt (5 : ℝ)) ^ n + (10 - Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A163166.P13128990331367934212

namespace A163166

/-- `((10+sqrt(5))^n+(10-sqrt(5))^n)/2` -/
def P13128990331367934212.Spec : Prop :=
  ∀ n, P13128990331367934212.a n = (A163166 n : ℝ)

end A163166

/-!
# A163167: a(n) = sum_{d | phi(n)} mu( phi(d) ) * phi(n)/d, where phi = A000010.

The programs for A163167, the canonical program `A163167.P16243496880315818611` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163167 has offset 1).

The definition of A163167 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A289627, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163167.P16243496880315818611

`A289627(A000010(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A163167

/-- `A289627(A000010(n+1))` -/
def P16243496880315818611.Spec : Prop :=
  ∀ n, P16243496880315818611.a n = A163167 (n + 1)

theorem P16243496880315818611.correct : P16243496880315818611.Spec := by
  intro n
  simp only [A163167, Nat.add_sub_cancel]

end A163167

/-! ## A163167.P14167353083891606334

`A289627(Δ[A002088(n)])`
-/

namespace A163167.P14167353083891606334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289627 (f1 (n + 1) - f1 n).toNat

end

end A163167.P14167353083891606334

namespace A163167

/-- `A289627(Δ[A002088(n)])` -/
def P14167353083891606334.Spec : Prop :=
  ∀ n, P14167353083891606334.a n = A163167 (n + 1)

end A163167

/-! ## A163167.P8238591837834266118

`A289627(Δ[A005728(n)])`
-/

namespace A163167.P8238591837834266118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289627 (f1 (n + 1) - f1 n).toNat

end

end A163167.P8238591837834266118

namespace A163167

/-- `A289627(Δ[A005728(n)])` -/
def P8238591837834266118.Spec : Prop :=
  ∀ n, P8238591837834266118.a n = A163167 (n + 1)

end A163167

/-! ## A163167.P9579405682641264319

`A289627(A109606(n+1)+1)`
-/

namespace A163167.P9579405682641264319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289627 (A109606 (n + 1) + 1).toNat

end

end A163167.P9579405682641264319

namespace A163167

/-- `A289627(A109606(n+1)+1)` -/
def P9579405682641264319.Spec : Prop :=
  ∀ n, P9579405682641264319.a n = A163167 (n + 1)

end A163167

/-! ## A163167.P17818148631495397405

`A289627(A002618(n+1)/(n+1))`
-/

namespace A163167.P17818148631495397405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289627 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A163167.P17818148631495397405

namespace A163167

/-- `A289627(A002618(n+1)/(n+1))` -/
def P17818148631495397405.Spec : Prop :=
  ∀ n, P17818148631495397405.a n = A163167 (n + 1)

end A163167

/-! ## A163167.P4270167610561423292

`A289627(A002088(n+1)-A002088(n))`
-/

namespace A163167.P4270167610561423292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289627 (A002088 (n + 1) - A002088 n).toNat

end

end A163167.P4270167610561423292

namespace A163167

/-- `A289627(A002088(n+1)-A002088(n))` -/
def P4270167610561423292.Spec : Prop :=
  ∀ n, P4270167610561423292.a n = A163167 (n + 1)

end A163167

/-! ## A163167.P3937643390441039757

`A289627(A005728(n+1)-A005728(n))`
-/

namespace A163167.P3937643390441039757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289627 (A005728 (n + 1) - A005728 n).toNat

end

end A163167.P3937643390441039757

namespace A163167

/-- `A289627(A005728(n+1)-A005728(n))` -/
def P3937643390441039757.Spec : Prop :=
  ∀ n, P3937643390441039757.a n = A163167 (n + 1)

end A163167

/-!
# A163169: a(n) = minimal number of consecutive integers required which when summed make n.

The programs for A163169, there is no canonical definition to state claims against.
-/

/-! ## A163169.P10366041299813462629

`A259111(A028310(n))%A126759(n)²`
-/

namespace A163169.P10366041299813462629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259111 (A028310 n).toNat) (A126759 n ^ 2)

end

end A163169.P10366041299813462629

/-! ## A163169.P9426168110781523913

`char[A138591(n+1)]*A259111(A028310(n))`
-/

namespace A163169.P9426168110781523913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A259111 (A028310 n).toNat

end

end A163169.P9426168110781523913

/-! ## A163169.P17043013210265685446

`A259111(A065190(n+1))%A126759(n)²`
-/

namespace A163169.P17043013210265685446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259111 (A065190 (n + 1)).toNat) (A126759 n ^ 2)

end

end A163169.P17043013210265685446

/-! ## A163169.P12024734410822760854

`char[A138591(n+1)]*A259111(A065190(n+1))`
-/

namespace A163169.P12024734410822760854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138591 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A259111 (A065190 (n + 1)).toNat

end

end A163169.P12024734410822760854

/-! ## A163169.P12895868884152671669

`A259111(A062157(n)+1+n)%(A062157(n)+1+n)`
-/

namespace A163169.P12895868884152671669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259111 (A062157 n + 1 + (n : ℤ)).toNat) (A062157 n + 1 + (n : ℤ))

end

end A163169.P12895868884152671669

/-!
# A163170: Odd composite integers that are palindromes when written in binary.

The programs for A163170, the canonical program `A163170.P17147635865030267506` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163170 has offset 1).

The definition of A163170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 284 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163170.P15643296169913804387

`filter[A006995(n+2), A066247(#)]`
-/

namespace A163170.P15643296169913804387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A163170.P15643296169913804387

namespace A163170

/-- `filter[A006995(n+2), A066247(#)]` -/
def P15643296169913804387.Spec : Prop :=
  ∀ n, P15643296169913804387.a n = A163170 (n + 1)

end A163170

/-! ## A163170.P16510195899913766728

`filter[A006995(n+2), A202238(#)]`
-/

namespace A163170.P16510195899913766728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A163170.P16510195899913766728

namespace A163170

/-- `filter[A006995(n+2), A202238(#)]` -/
def P16510195899913766728.Spec : Prop :=
  ∀ n, P16510195899913766728.a n = A163170 (n + 1)

end A163170

/-! ## A163170.P8123386894828376713

`filter[A006995(n+2), A323162(#)]`
-/

namespace A163170.P8123386894828376713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A163170.P8123386894828376713

namespace A163170

/-- `filter[A006995(n+2), A323162(#)]` -/
def P8123386894828376713.Spec : Prop :=
  ∀ n, P8123386894828376713.a n = A163170 (n + 1)

end A163170

/-! ## A163170.P10116271370768232361

`filter[A006995(n+3), A005171(#)]`
-/

namespace A163170.P10116271370768232361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A163170.P10116271370768232361

namespace A163170

/-- `filter[A006995(n+3), A005171(#)]` -/
def P10116271370768232361.Spec : Prop :=
  ∀ n, P10116271370768232361.a n = A163170 (n + 1)

end A163170

/-! ## A163170.P18311263861715520973

`filter[A006995(n+3), A292438(#)]`
-/

namespace A163170.P18311263861715520973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A163170.P18311263861715520973

namespace A163170

/-- `filter[A006995(n+3), A292438(#)]` -/
def P18311263861715520973.Spec : Prop :=
  ∀ n, P18311263861715520973.a n = A163170 (n + 1)

end A163170

/-! ## A163170.P14851478039260460403

`∩[A006995(n+1), A071904(n+1)]`
-/

namespace A163170.P14851478039260460403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163170.P14851478039260460403

namespace A163170

/-- `∩[A006995(n+1), A071904(n+1)]` -/
def P14851478039260460403.Spec : Prop :=
  ∀ n, (P14851478039260460403.a n : ℤ) = A163170 (n + 1)

end A163170

/-! ## A163170.P17147635865030267506

`∩[A044918(n+1), A071904(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A163170

/-- `∩[A044918(n+1), A071904(n+1)]` -/
def P17147635865030267506.Spec : Prop :=
  ∀ n, (P17147635865030267506.a n : ℤ) = A163170 (n + 1)

theorem P17147635865030267506.correct : P17147635865030267506.Spec := by
  intro n
  simp only [A163170, Nat.add_sub_cancel]

end A163170

/-! ## A163170.P4950745880483150981

`∩[A057890(n+1), A071904(n+1)]`
-/

namespace A163170.P4950745880483150981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163170.P4950745880483150981

namespace A163170

/-- `∩[A057890(n+1), A071904(n+1)]` -/
def P4950745880483150981.Spec : Prop :=
  ∀ n, (P4950745880483150981.a n : ℤ) = A163170 (n + 1)

end A163170

/-! ## A163170.P3115054751632513455

`∩[A071904(n+1), A161604(n+1)]`
-/

namespace A163170.P3115054751632513455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163170.P3115054751632513455

namespace A163170

/-- `∩[A071904(n+1), A161604(n+1)]` -/
def P3115054751632513455.Spec : Prop :=
  ∀ n, (P3115054751632513455.a n : ℤ) = A163170 (n + 1)

end A163170

/-! ## A163170.P18299480017621022635

`∩[A071904(n+1), A180204(n+1)]`
-/

namespace A163170.P18299480017621022635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163170.P18299480017621022635

namespace A163170

/-- `∩[A071904(n+1), A180204(n+1)]` -/
def P18299480017621022635.Spec : Prop :=
  ∀ n, (P18299480017621022635.a n : ℤ) = A163170 (n + 1)

end A163170

/-! ## A163170.P1796377808779384472

`∩[A071904(n+1), A334918(n+1)]`
-/

namespace A163170.P1796377808779384472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163170.P1796377808779384472

namespace A163170

/-- `∩[A071904(n+1), A334918(n+1)]` -/
def P1796377808779384472.Spec : Prop :=
  ∀ n, (P1796377808779384472.a n : ℤ) = A163170 (n + 1)

end A163170

/-! ## A163170.P525994774494194614

`∩[A006995(n+1), A270574(n+1)]`
-/

namespace A163170.P525994774494194614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163170.P525994774494194614

namespace A163170

/-- `∩[A006995(n+1), A270574(n+1)]` -/
def P525994774494194614.Spec : Prop :=
  ∀ n, (P525994774494194614.a n : ℤ) = A163170 (n + 1)

end A163170

/-! ## A163170.P11050344873218941561

`∩[A180204(n+1), A270574(n+1)]`
-/

namespace A163170.P11050344873218941561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163170.P11050344873218941561

namespace A163170

/-- `∩[A180204(n+1), A270574(n+1)]` -/
def P11050344873218941561.Spec : Prop :=
  ∀ n, (P11050344873218941561.a n : ℤ) = A163170 (n + 1)

end A163170

/-! ## A163170.P9861425079292903247

`∩[A006995(n+1), A078505(n+1)]`
-/

namespace A163170.P9861425079292903247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163170.P9861425079292903247

namespace A163170

/-- `∩[A006995(n+1), A078505(n+1)]` -/
def P9861425079292903247.Spec : Prop :=
  ∀ n, (P9861425079292903247.a n : ℤ) = A163170 (n + 1)

end A163170

/-! ## A163170.P17078129370993161285

`∩[A002808(n+1), A006995(n+1)]`
-/

namespace A163170.P17078129370993161285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163170.P17078129370993161285

namespace A163170

/-- `∩[A002808(n+1), A006995(n+1)]` -/
def P17078129370993161285.Spec : Prop :=
  ∀ n, (P17078129370993161285.a n : ℤ) = A163170 (n + 1)

end A163170

/-! ## A163170.P2211447061382385274

`∩[A006995(n+1), A039769(n+1)]`
-/

namespace A163170.P2211447061382385274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163170.P2211447061382385274

namespace A163170

/-- `∩[A006995(n+1), A039769(n+1)]` -/
def P2211447061382385274.Spec : Prop :=
  ∀ n, (P2211447061382385274.a n : ℤ) = A163170 (n + 1)

end A163170

/-! ## A163170.P6782944302022669819

`∩[A006995(n+1), A058957(n+1)]`
-/

namespace A163170.P6782944302022669819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058957 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163170.P6782944302022669819

namespace A163170

/-- `∩[A006995(n+1), A058957(n+1)]` -/
def P6782944302022669819.Spec : Prop :=
  ∀ n, (P6782944302022669819.a n : ℤ) = A163170 (n + 1)

end A163170

/-! ## A163170.P3384872490746849599

`∩[A058957(n+1), A180204(n+1)]`
-/

namespace A163170.P3384872490746849599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163170.P3384872490746849599

namespace A163170

/-- `∩[A058957(n+1), A180204(n+1)]` -/
def P3384872490746849599.Spec : Prop :=
  ∀ n, (P3384872490746849599.a n : ℤ) = A163170 (n + 1)

end A163170

/-! ## A163170.P7275884790189196128

`eq[A055945(n), A339579(n+1)]`
-/

namespace A163170.P7275884790189196128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163170.P7275884790189196128

namespace A163170

/-- `eq[A055945(n), A339579(n+1)]` -/
def P7275884790189196128.Spec : Prop :=
  ∀ n, (P7275884790189196128.a n : ℤ) = A163170 (n + 1)

end A163170

/-! ## A163170.P8341713909424912680

`eq[A175919(n), A339579(n+1)]`
-/

namespace A163170.P8341713909424912680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175919 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163170.P8341713909424912680

namespace A163170

/-- `eq[A175919(n), A339579(n+1)]` -/
def P8341713909424912680.Spec : Prop :=
  ∀ n, (P8341713909424912680.a n : ℤ) = A163170 (n + 1)

end A163170

/-!
# A163172: Maxima in A163169.

The programs for A163172, there is no canonical definition to state claims against.
-/

/-! ## A163172.P11788656112004824813

`record[A270306(n+1)]`
-/

namespace A163172.P11788656112004824813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163172.P11788656112004824813

/-! ## A163172.P6704660807412616846

`A270306(A174090(n+1))`
-/

namespace A163172.P6704660807412616846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270306 (A174090 (n + 1)).toNat

end

end A163172.P6704660807412616846

/-! ## A163172.P6183501619392460773

`A270306(lt[n-1, A000010(2*(n+1))]+1)`
-/

namespace A163172.P6183501619392460773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270306 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A163172.P6183501619392460773

/-! ## A163172.P3186284546319364904

`record[Δ[A270306(A152271(n))]]`
-/

namespace A163172.P3186284546319364904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270306 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163172.P3186284546319364904

/-! ## A163172.P17436434046939791242

`record[Δ[A270306(A158416(n))]]`
-/

namespace A163172.P17436434046939791242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270306 (A158416 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163172.P17436434046939791242

/-!
# A163173: The n-th product of three primes divided by its central prime factor.

The programs for A163173, the canonical program `A163173.P18075455342719059088` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163173 has offset 1).

The definition of A163173 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014612, A162361, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163173.P18075455342719059088

`A014612(n+1)/A162361(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A163173

/-- `A014612(n+1)/A162361(n+1)` -/
def P18075455342719059088.Spec : Prop :=
  ∀ n, P18075455342719059088.a n = (A163173 (n + 1) : ℚ)

end A163173

/-! ## A163173.P158247114607526946

`(A162731(n+1)+A162361(n+1))/A162361(n+1)`
-/

namespace A163173.P158247114607526946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162731 (n + 1) + A162361 (n + 1) : ℚ) / (A162361 (n + 1) : ℚ)

end

end A163173.P158247114607526946

namespace A163173

/-- `(A162731(n+1)+A162361(n+1))/A162361(n+1)` -/
def P158247114607526946.Spec : Prop :=
  ∀ n, P158247114607526946.a n = (A163173 (n + 1) : ℚ)

end A163173

/-! ## A163173.P4836016956334233321

`A014612(n+1)/(A014612(n+1)-A162731(n+1))`
-/

namespace A163173.P4836016956334233321
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014612 (n + 1) : ℚ) / (A014612 (n + 1) - A162731 (n + 1) : ℚ)

end

end A163173.P4836016956334233321

namespace A163173

/-- `A014612(n+1)/(A014612(n+1)-A162731(n+1))` -/
def P4836016956334233321.Spec : Prop :=
  ∀ n, P4836016956334233321.a n = (A163173 (n + 1) : ℚ)

end A163173

/-! ## A163173.P10200770877530556013

`Δ[A110209(n)]/A162361(n+1)`
-/

namespace A163173.P10200770877530556013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110209 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A162361 (n + 1) : ℚ)

end

end A163173.P10200770877530556013

namespace A163173

/-- `Δ[A110209(n)]/A162361(n+1)` -/
def P10200770877530556013.Spec : Prop :=
  ∀ n, P10200770877530556013.a n = (A163173 (n + 1) : ℚ)

end A163173

/-! ## A163173.P1881037923674922539

`A066048(A014612(n+1))`
-/

namespace A163173.P1881037923674922539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A014612 (n + 1)).toNat

end

end A163173.P1881037923674922539

namespace A163173

/-- `A066048(A014612(n+1))` -/
def P1881037923674922539.Spec : Prop :=
  ∀ n, P1881037923674922539.a n = A163173 (n + 1)

end A163173

/-! ## A163173.P8992834994995967435

`filter[A079880(n+3), A064911(#)]`
-/

namespace A163173.P8992834994995967435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079880 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A163173.P8992834994995967435

namespace A163173

/-- `filter[A079880(n+3), A064911(#)]` -/
def P8992834994995967435.Spec : Prop :=
  ∀ n, P8992834994995967435.a n = A163173 (n + 1)

end A163173

/-! ## A163173.P16122468057713246994

`A066048(eq[1, A101605(n+1)]+1)`
-/

namespace A163173.P16122468057713246994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A163173.P16122468057713246994

namespace A163173

/-- `A066048(eq[1, A101605(n+1)]+1)` -/
def P16122468057713246994.Spec : Prop :=
  ∀ n, P16122468057713246994.a n = A163173 (n + 1)

end A163173

/-! ## A163173.P11018505468447295463

`A066048(eq[2, A252736(n+1)]+1)`
-/

namespace A163173.P11018505468447295463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A163173.P11018505468447295463

namespace A163173

/-- `A066048(eq[2, A252736(n+1)]+1)` -/
def P11018505468447295463.Spec : Prop :=
  ∀ n, P11018505468447295463.a n = A163173 (n + 1)

end A163173

/-! ## A163173.P11765425618090546147

`A066048(eq[3, A001222(n+1)]+1)`
-/

namespace A163173.P11765425618090546147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A163173.P11765425618090546147

namespace A163173

/-- `A066048(eq[3, A001222(n+1)]+1)` -/
def P11765425618090546147.Spec : Prop :=
  ∀ n, P11765425618090546147.a n = A163173 (n + 1)

end A163173

/-! ## A163173.P13774840584666004415

`A079880(eq[3, A001222(n+1)]+1)`
-/

namespace A163173.P13774840584666004415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079880 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A163173.P13774840584666004415

namespace A163173

/-- `A079880(eq[3, A001222(n+1)]+1)` -/
def P13774840584666004415.Spec : Prop :=
  ∀ n, P13774840584666004415.a n = A163173 (n + 1)

end A163173

/-! ## A163173.P8966357995109123657

`A066048(eq[n, n-a(A001222(n))])` with `a(0)=-2`
-/

namespace A163173.P8966357995109123657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f2 =>
  (n : ℤ) - f2 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163173.P8966357995109123657

namespace A163173

/-- `A066048(eq[n, n-a(A001222(n))])` -/
def P8966357995109123657.Spec : Prop :=
  ∀ n, P8966357995109123657.a n = A163173 (n + 1)

end A163173

/-! ## A163173.P13888893245467156204

`A014612(n+1)/p?[A070821(n+1)]`
-/

namespace A163173.P13888893245467156204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070821 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014612 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ)

end

end A163173.P13888893245467156204

namespace A163173

/-- `A014612(n+1)/p?[A070821(n+1)]` -/
def P13888893245467156204.Spec : Prop :=
  ∀ n, P13888893245467156204.a n = (A163173 (n + 1) : ℚ)

end A163173

/-! ## A163173.P6622544253810865234

`A079880(eq[n, n-a(A001222(n))])` with `a(0)=1, a(1)=3`
-/

namespace A163173.P6622544253810865234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f2 =>
  (n : ℤ) - f2 (A001222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079880 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163173.P6622544253810865234

namespace A163173

/-- `A079880(eq[n, n-a(A001222(n))])` -/
def P6622544253810865234.Spec : Prop :=
  ∀ n, P6622544253810865234.a n = A163173 (n + 1)

end A163173

/-!
# A163176: The n-th Minkowski number divided by the n-th factorial: a(n) = A053657(n)/n!.

The programs for A163176, there is no canonical definition to state claims against.
-/

/-! ## A163176.P7541177027553237494

`A053657(n+1)/(n+1)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163176.P7541177027553237494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053657 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A163176.P7541177027553237494

/-! ## A163176.P16833931525430692377

`A053657(n+1)/A000142(n+1)`
-/

namespace A163176.P16833931525430692377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053657 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A163176.P16833931525430692377

/-! ## A163176.P12176462979727964499

`A001898(n)/(n+1)`
-/

namespace A163176.P12176462979727964499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001898 n : ℚ) / (n + 1 : ℚ)

end

end A163176.P12176462979727964499

/-! ## A163176.P8731112839411736884

`A341108(n)/A003557(n+1)`
-/

namespace A163176.P8731112839411736884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341108 n : ℚ) / (A003557 (n + 1) : ℚ)

end

end A163176.P8731112839411736884

/-! ## A163176.P5758885888258801150

`floor(A001898(n)/A008619(2*n))`
-/

namespace A163176.P5758885888258801150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001898 n : ℚ) / (A008619 (2 * n) : ℚ)⌋

end

end A163176.P5758885888258801150

/-! ## A163176.P9775335382310430645

`floor(A001898(n)/A029579(2*n))`
-/

namespace A163176.P9775335382310430645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001898 n : ℚ) / (A029579 (2 * n) : ℚ)⌋

end

end A163176.P9775335382310430645

/-! ## A163176.P5925218098188838189

`abs(A000079(n)*A290030(n)/(n+1))`
-/

namespace A163176.P5925218098188838189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A000079 n * A290030 n : ℚ) / (n + 1 : ℚ)|

end

end A163176.P5925218098188838189

/-! ## A163176.P17284924034165834646

`A195441(n)/A003557(n+1)*A341107(n)`
-/

namespace A163176.P17284924034165834646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195441 n : ℚ) / (A003557 (n + 1) : ℚ) * (A341107 n : ℚ)

end

end A163176.P17284924034165834646

/-! ## A163176.P6940227548513308453

`A053657(n+1)/Δ[A007489(n)]`
-/

namespace A163176.P6940227548513308453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053657 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A163176.P6940227548513308453

/-!
# A163178: a(n) is the central prime factor of A046339(n).

The programs for A163178, there is no canonical definition to state claims against.
-/

/-! ## A163178.P4282537842440977343

`A079879(A046339(n+1))`
-/

namespace A163178.P4282537842440977343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (A046339 (n + 1)).toNat

end

end A163178.P4282537842440977343

/-! ## A163178.P5319460010634830778

`p?[A055229(A273290(n+2))]`
-/

namespace A163178.P5319460010634830778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A273290 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163178.P5319460010634830778

/-! ## A163178.P12397155320778287631

`p?[A055229(A273291(n+2))]`
-/

namespace A163178.P12397155320778287631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (A273291 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163178.P12397155320778287631

/-! ## A163178.P13829823317767604097

`p?[A335423(A273291(A002808(n+1)))]`
-/

namespace A163178.P13829823317767604097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335423 (A273291 (A002808 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163178.P13829823317767604097

/-! ## A163178.P7990158923716980444

`p?[A007913(A273291(n+2))%A065033(n)]`
-/

namespace A163178.P7990158923716980444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007913 (A273291 (n + 2)).toNat) (A065033 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163178.P7990158923716980444

/-! ## A163178.P16937835994777659508

`A079879(∩[A018252(n+1), A026424(n+1)])`
-/

namespace A163178.P16937835994777659508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026424 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A163178.P16937835994777659508

/-!
# A163179: Number of reduced words of length n in Coxeter group on 27 generators S_i with relations (S_i)^2 = (S_i S_j)^4 = I.

The programs for A163179, there is no canonical definition to state claims against.
-/

/-! ## A163179.P15335369166759803311

`A164969(n)-A282380(∑[A164971(n)])`
-/

namespace A163179.P15335369166759803311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164969 n - A282380 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A163179.P15335369166759803311

/-!
# A163180: a(n) = tau(n) + Sum_{k=1..n} (n mod k).

The programs for A163180, the canonical program `A163180.P13831125964064735918` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163180 has offset 1).

The definition of A163180 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A004125, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163180.P13831125964064735918

`A000005(n+1)+A004125(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A163180

/-- `A000005(n+1)+A004125(n+1)` -/
def P13831125964064735918.Spec : Prop :=
  ∀ n, P13831125964064735918.a n = A163180 (n + 1)

theorem P13831125964064735918.correct : P13831125964064735918.Spec := by
  intro n
  simp only [A163180, Nat.add_sub_cancel]

end A163180

/-! ## A163180.P15947970693468298050

`∏{e}[n+1, #+1]+∑[Δ[n²]-∑{d}[n+1, #]]`
-/

namespace A163180.P15947970693468298050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) - ((∑ d ∈ Nat.divisors (f4 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A163180.P15947970693468298050

namespace A163180

/-- `∏{e}[n+1, #+1]+∑[Δ[n²]-∑{d}[n+1, #]]` -/
def P15947970693468298050.Spec : Prop :=
  ∀ n, P15947970693468298050.a n = A163180 (n + 1)

end A163180

/-! ## A163180.P17759731232905122796

`∑[2*n+2-∑{d}[n+1, #]]-(n+1-∏{e}[n+1, #+1])`
-/

namespace A163180.P17759731232905122796
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (2 - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) : ℕ) : ℤ))

end

end A163180.P17759731232905122796

namespace A163180

/-- `∑[2*n+2-∑{d}[n+1, #]]-(n+1-∏{e}[n+1, #+1])` -/
def P17759731232905122796.Spec : Prop :=
  ∀ n, P17759731232905122796.a n = A163180 (n + 1)

end A163180

/-! ## A163180.P8895121039395587315

`Δ[A072481(n)+A006218(n)]`
-/

namespace A163180.P8895121039395587315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072481 n + A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163180.P8895121039395587315

namespace A163180

/-- `Δ[A072481(n)+A006218(n)]` -/
def P8895121039395587315.Spec : Prop :=
  ∀ n, P8895121039395587315.a n = A163180 (n + 1)

end A163180

/-! ## A163180.P7572112416919376920

`Δ[A072481(n)+A054519(n)]`
-/

namespace A163180.P7572112416919376920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072481 n + A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163180.P7572112416919376920

namespace A163180

/-- `Δ[A072481(n)+A054519(n)]` -/
def P7572112416919376920.Spec : Prop :=
  ∀ n, P7572112416919376920.a n = A163180 (n + 1)

end A163180

/-! ## A163180.P2164894666987980182

`A004125(n+1)+Δ[A006218(n)]`
-/

namespace A163180.P2164894666987980182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 1) + (f1 (n + 1) - f1 n)

end

end A163180.P2164894666987980182

namespace A163180

/-- `A004125(n+1)+Δ[A006218(n)]` -/
def P2164894666987980182.Spec : Prop :=
  ∀ n, P2164894666987980182.a n = A163180 (n + 1)

end A163180

/-! ## A163180.P17622399173888997471

`A000005(n+1)+Δ[A072481(n)]`
-/

namespace A163180.P17622399173888997471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (f1 (n + 1) - f1 n)

end

end A163180.P17622399173888997471

namespace A163180

/-- `A000005(n+1)+Δ[A072481(n)]` -/
def P17622399173888997471.Spec : Prop :=
  ∀ n, P17622399173888997471.a n = A163180 (n + 1)

end A163180

/-! ## A163180.P3005590330541784925

`A111490(n+1)-A049820(n+1)`
-/

namespace A163180.P3005590330541784925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111490 (n + 1) - A049820 (n + 1)

end

end A163180.P3005590330541784925

namespace A163180

/-- `A111490(n+1)-A049820(n+1)` -/
def P3005590330541784925.Spec : Prop :=
  ∀ n, P3005590330541784925.a n = A163180 (n + 1)

end A163180

/-! ## A163180.P2362437865690948906

`A123327(n+1)-A065608(n+1)`
-/

namespace A163180.P2362437865690948906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123327 (n + 1) - A065608 (n + 1)

end

end A163180.P2362437865690948906

namespace A163180

/-- `A123327(n+1)-A065608(n+1)` -/
def P2362437865690948906.Spec : Prop :=
  ∀ n, P2362437865690948906.a n = A163180 (n + 1)

end A163180

/-! ## A163180.P12610725669000353600

`A344622(n+1)-A244048(n+1)`
-/

namespace A163180.P12610725669000353600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344622 (n + 1) - A244048 (n + 1)

end

end A163180.P12610725669000353600

namespace A163180

/-- `A344622(n+1)-A244048(n+1)` -/
def P12610725669000353600.Spec : Prop :=
  ∀ n, P12610725669000353600.a n = A163180 (n + 1)

end A163180

/-! ## A163180.P2783298813364506678

`Δ[A006218(n)]-∑[A237588(n+1)]`
-/

namespace A163180.P2783298813364506678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A163180.P2783298813364506678

namespace A163180

/-- `Δ[A006218(n)]-∑[A237588(n+1)]` -/
def P2783298813364506678.Spec : Prop :=
  ∀ n, P2783298813364506678.a n = A163180 (n + 1)

end A163180

/-! ## A163180.P8857052015152089991

`A000005(n+1)+∑[A235796(n+1)]`
-/

namespace A163180.P8857052015152089991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163180.P8857052015152089991

namespace A163180

/-- `A000005(n+1)+∑[A235796(n+1)]` -/
def P8857052015152089991.Spec : Prop :=
  ∀ n, P8857052015152089991.a n = A163180 (n + 1)

end A163180

/-! ## A163180.P10932297459791561872

`A000005(n+1)-∑[A237588(n+1)]`
-/

namespace A163180.P10932297459791561872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163180.P10932297459791561872

namespace A163180

/-- `A000005(n+1)-∑[A237588(n+1)]` -/
def P10932297459791561872.Spec : Prop :=
  ∀ n, P10932297459791561872.a n = A163180 (n + 1)

end A163180

/-! ## A163180.P1192692383079453476

`A000005(n+1)-∑[A033880(n+1)+1]`
-/

namespace A163180.P1192692383079453476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163180.P1192692383079453476

namespace A163180

/-- `A000005(n+1)-∑[A033880(n+1)+1]` -/
def P1192692383079453476.Spec : Prop :=
  ∀ n, P1192692383079453476.a n = A163180 (n + 1)

end A163180

/-! ## A163180.P3253509693677863238

`∑[A033879(n+1)-1]+A000005(n+1)`
-/

namespace A163180.P3253509693677863238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000005 (n + 1)

end

end A163180.P3253509693677863238

namespace A163180

/-- `∑[A033879(n+1)-1]+A000005(n+1)` -/
def P3253509693677863238.Spec : Prop :=
  ∀ n, P3253509693677863238.a n = A163180 (n + 1)

end A163180

/-! ## A163180.P11977489725450591454

`∑[n-A001065(n+1)]+A000005(n+1)`
-/

namespace A163180.P11977489725450591454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000005 (n + 1)

end

end A163180.P11977489725450591454

namespace A163180

/-- `∑[n-A001065(n+1)]+A000005(n+1)` -/
def P11977489725450591454.Spec : Prop :=
  ∀ n, P11977489725450591454.a n = A163180 (n + 1)

end A163180

/-! ## A163180.P14432206355548798390

`A000005(n+1)+∑[n]-A153485(n+1)`
-/

namespace A163180.P14432206355548798390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A153485 (n + 1))

end

end A163180.P14432206355548798390

namespace A163180

/-- `A000005(n+1)+∑[n]-A153485(n+1)` -/
def P14432206355548798390.Spec : Prop :=
  ∀ n, P14432206355548798390.a n = A163180 (n + 1)

end A163180

/-! ## A163180.P11161058142310323400

`(n+1)²+A000005(n+1)-A024916(n+1)`
-/

namespace A163180.P11161058142310323400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A000005 (n + 1) - A024916 (n + 1))

end

end A163180.P11161058142310323400

namespace A163180

/-- `(n+1)²+A000005(n+1)-A024916(n+1)` -/
def P11161058142310323400.Spec : Prop :=
  ∀ n, P11161058142310323400.a n = A163180 (n + 1)

end A163180

/-! ## A163180.P8691235441143152181

`(n+1)²+A000005(n+1)-∑[A000203(n+1)]`
-/

namespace A163180.P8691235441143152181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A000005 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163180.P8691235441143152181

namespace A163180

/-- `(n+1)²+A000005(n+1)-∑[A000203(n+1)]` -/
def P8691235441143152181.Spec : Prop :=
  ∀ n, P8691235441143152181.a n = A163180 (n + 1)

end A163180

/-! ## A163180.P8512063606207423884

`∑{d}[n+1, A000010(#)+1]-(n+1)-∑[A237588(n+1)]`
-/

namespace A163180.P8512063606207423884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 d + 1) - (n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A163180.P8512063606207423884

namespace A163180

/-- `∑{d}[n+1, A000010(#)+1]-(n+1)-∑[A237588(n+1)]` -/
def P8512063606207423884.Spec : Prop :=
  ∀ n, P8512063606207423884.a n = A163180 (n + 1)

end A163180

/-!
# A163181: T(n,k) is the number of weak compositions of k into n parts no greater than (n-1) for n>=1, 0<=k<=n(n-1).

The programs for A163181, there is no canonical definition to state claims against.
-/

/-! ## A163181.P5914296281690922244

`A027907(lt[A299268(n), A004061(n+1)])`
-/

namespace A163181.P5914296281690922244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299268 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A163181.P5914296281690922244

/-! ## A163181.P12019370957163461781

`A027907(lt[A242250(n+2), A197639(n+1)])`
-/

namespace A163181.P12019370957163461781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242250 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A163181.P12019370957163461781

/-! ## A163181.P7355538526300140655

`A027907(lt[A193847(n), A270613(2*(n+1))])`
-/

namespace A163181.P7355538526300140655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193847 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270613 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A163181.P7355538526300140655

/-! ## A163181.P16334642456913759637

`A285126(and(A062241(2*(n+1)), A162206(n+1)))`
-/

namespace A163181.P16334642456913759637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285126 (Int.land (A062241 (2 * (n + 1))) (A162206 (n + 1))).toNat

end

end A163181.P16334642456913759637

/-! ## A163181.P6224928351462056928

`A027907(lt[A191702(n+5), A270890(2*n+3)])`
-/

namespace A163181.P6224928351462056928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191702 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270890 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A163181.P6224928351462056928

/-!
# A163182: Primes p such that neither 4p+3 nor 4p-3 are prime.

The programs for A163182, there is no canonical definition to state claims against.
-/

/-! ## A163182.P16822690873115491281

`A065091(eq[1, A086320(n+1)])`
-/

namespace A163182.P16822690873115491281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A163182.P16822690873115491281

/-! ## A163182.P8664193436318231147

`p?[A000040(n+1)*A086320(n+1)]`
-/

namespace A163182.P8664193436318231147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A086320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163182.P8664193436318231147

/-! ## A163182.P15239787309581957209

`p?[p?[A000961(n+1)]*A086320(n+1)]`
-/

namespace A163182.P15239787309581957209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A086320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163182.P15239787309581957209

/-! ## A163182.P14025958506096552901

`p?[p?[A014681(n)]*A086320(n+1)]`
-/

namespace A163182.P14025958506096552901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A086320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163182.P14025958506096552901

/-! ## A163182.P17654457188388130568

`p?[p?[A098550(n+1)]*A086320(n+1)]`
-/

namespace A163182.P17654457188388130568
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) * A086320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163182.P17654457188388130568

/-!
# A163183: Primes dividing 2^j + 1 for some odd j.

The programs for A163183, there is no canonical definition to state claims against.
-/

/-! ## A163183.P316668322554378043

`p?[A392946(n+1)]`
-/

namespace A163183.P316668322554378043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163183.P316668322554378043

/-! ## A163183.P1965065837857774674

`∩[A093515(n+1), A392946(n+1)]`
-/

namespace A163183.P1965065837857774674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163183.P1965065837857774674

/-! ## A163183.P6954951188949905000

`filter[A392946(n+1), A010051(#)]`
-/

namespace A163183.P6954951188949905000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A163183.P6954951188949905000

/-! ## A163183.P2207775787169891532

`filter[A392946(n+1), A379969(#)]`
-/

namespace A163183.P2207775787169891532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A163183.P2207775787169891532

/-! ## A163183.P14557821407315025252

`∩[A014657(n+1), A385221(n+1)]`
-/

namespace A163183.P14557821407315025252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385221 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163183.P14557821407315025252

/-! ## A163183.P6730161955906629641

`filter[A392946(n+1), A257531(#)]`
-/

namespace A163183.P6730161955906629641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A163183.P6730161955906629641

/-! ## A163183.P12705593665775110207

`filter[A392946(n+1), A323153(#)]`
-/

namespace A163183.P12705593665775110207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A163183.P12705593665775110207

/-! ## A163183.P16959294117455302176

`filter[A392946(n+1), A353670(#)]`
-/

namespace A163183.P16959294117455302176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A163183.P16959294117455302176

/-! ## A163183.P10979667003330318937

`filter[A392946(n+2), A323152(#)]`
-/

namespace A163183.P10979667003330318937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392946 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A163183.P10979667003330318937

/-! ## A163183.P18186975248454685941

`filter[A392946(n+2), A340371(#)]`
-/

namespace A163183.P18186975248454685941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392946 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A163183.P18186975248454685941

/-! ## A163183.P18119354383388667031

`∩[A001751(n+1), A392946(n+1)]`
-/

namespace A163183.P18119354383388667031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163183.P18119354383388667031

/-! ## A163183.P5568359386007143847

`∩[A085118(n+1), A392946(n+1)]`
-/

namespace A163183.P5568359386007143847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163183.P5568359386007143847

/-! ## A163183.P11456545432160388022

`∩[A058363(n+1), A392946(n+1)]`
-/

namespace A163183.P11456545432160388022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058363 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163183.P11456545432160388022

/-! ## A163183.P12799529408169053352

`∩[A098908(n+1), A392946(n+1)]`
-/

namespace A163183.P12799529408169053352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098908 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163183.P12799529408169053352

/-! ## A163183.P281235736323120025

`∩[A327906(n+1), A392946(n+1)]`
-/

namespace A163183.P281235736323120025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163183.P281235736323120025

/-!
# A163184: Primes of the form 8k + 1 dividing 2^j + 1 for some odd j.

The programs for A163184, there is no canonical definition to state claims against.
-/

/-! ## A163184.P4243295536455741196

`∩[A007519(n+1), A163183(n+1)]`
-/

namespace A163184.P4243295536455741196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163184.P4243295536455741196

/-! ## A163184.P148377670167108847

`∩[A008846(n+1), A163183(n+1)]`
-/

namespace A163184.P148377670167108847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163184.P148377670167108847

/-! ## A163184.P2182736325176978732

`∩[A014754(n+1), A163183(n+1)]`
-/

namespace A163184.P2182736325176978732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163184.P2182736325176978732

/-! ## A163184.P13107311439099577947

`∩[A045390(n+1), A163183(n+1)]`
-/

namespace A163184.P13107311439099577947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045390 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163184.P13107311439099577947

/-! ## A163184.P8222681583757958209

`∩[A163183(n+1), A242663(n+1)]`
-/

namespace A163184.P8222681583757958209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242663 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163184.P8222681583757958209

/-! ## A163184.P635791539087944629

`∩[A163183(n+1), A332226(n+1)]`
-/

namespace A163184.P635791539087944629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332226 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163184.P635791539087944629

/-! ## A163184.P904601930060885246

`∩[A163183(n+1), A332227(n+1)]`
-/

namespace A163184.P904601930060885246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163184.P904601930060885246

/-! ## A163184.P12813317274003032876

`∩[A163183(n+1), A363147(n+1)]`
-/

namespace A163184.P12813317274003032876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163184.P12813317274003032876

/-! ## A163184.P17364731951822931132

`∩[A004625(n+1), A163183(n+1)]`
-/

namespace A163184.P17364731951822931132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163184.P17364731951822931132

/-! ## A163184.P7122630066400709461

`∩[A163183(n+1), A191218(n+1)]`
-/

namespace A163184.P7122630066400709461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163184.P7122630066400709461

/-! ## A163184.P541035684660782192

`∩[A040098(n+1), A163183(n+1)]`
-/

namespace A163184.P541035684660782192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163184.P541035684660782192

/-! ## A163184.P1221984777280163575

`∩[A163183(n+1), A263011(n+1)]`
-/

namespace A163184.P1221984777280163575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163184.P1221984777280163575

/-! ## A163184.P350426255930853128

`∩[A001132(n+1), A163183(n+1)]`
-/

namespace A163184.P350426255930853128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163184.P350426255930853128

/-! ## A163184.P16646335306650056748

`∩[A002144(n+1), A163183(n+1)]`
-/

namespace A163184.P16646335306650056748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163184.P16646335306650056748

/-! ## A163184.P12935897938451556120

`∩[A002313(n+1), A163183(n+1)]`
-/

namespace A163184.P12935897938451556120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163184.P12935897938451556120

/-! ## A163184.P3819650793033994676

`∩[A038873(n+1), A163183(n+1)]`
-/

namespace A163184.P3819650793033994676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163184.P3819650793033994676

/-! ## A163184.P10162649534029315250

`∩[A163183(n+1), A280084(n+1)]`
-/

namespace A163184.P10162649534029315250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163184.P10162649534029315250

/-! ## A163184.P8959447053825575216

`∩[A055673(n+1), A163183(n+1)]`
-/

namespace A163184.P8959447053825575216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163184.P8959447053825575216

/-! ## A163184.P7785981390748317057

`∩[A055025(n+1), A163183(n+1)]`
-/

namespace A163184.P7785981390748317057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163184.P7785981390748317057

/-! ## A163184.P2074022751403393646

`∩[A120960(n+1), A163183(n+1)]`
-/

namespace A163184.P2074022751403393646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163184.P2074022751403393646

/-!
# A163185: Primes p such that the equation x^2 = -2 mod p has a solution, and ord_p(-2) is even.

The programs for A163185, there is no canonical definition to state claims against.
-/

/-! ## A163185.P14526489734627100987

`∩[A047420(n+1), A216747(n+1)]`
-/

namespace A163185.P14526489734627100987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163185.P14526489734627100987

/-! ## A163185.P11395021368288466922

`filter[A216747(n+1), A131078(#)]`
-/

namespace A163185.P11395021368288466922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131078 (f1 j).toNat = 1) n)

end

end A163185.P11395021368288466922

/-!
# A163187: Number of reduced words of length n in Coxeter group on 28 generators S_i with relations (S_i)^2 = (S_i S_j)^4 = I.

The programs for A163187, there is no canonical definition to state claims against.
-/

/-! ## A163187.P16187323157020593199

`A165980(n)-A165926(A165896(n+1))`
-/

namespace A163187.P16187323157020593199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165980 n - A165926 (A165896 (n + 1)).toNat

end

end A163187.P16187323157020593199

/-!
# A163188: Numbers of the form n = r*s = (r+s)*t with gcd(r+s,t) = 1.

The programs for A163188, there is no canonical definition to state claims against.
-/

/-! ## A163188.P6152350337288255840

`A175592(n+1)*A235224(A264855(3*n+1))`
-/

namespace A163188.P6152350337288255840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175592 (n + 1) * A235224 (A264855 (3 * n + 1)).toNat

end

end A163188.P6152350337288255840

/-! ## A163188.P4537757268148847403

`A261011(lt[A095660(3*n+1), A265692(2*(n+1))])`
-/

namespace A163188.P4537757268148847403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265692 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261011 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A163188.P4537757268148847403

/-!
# A163189: G.f.: A(x) = exp( Sum_{n>=1} (1 + A000204(n)*x)^n * x^n/n ).

The programs for A163189, there is no canonical definition to state claims against.
-/

/-! ## A163189.P7369971107309375752

`A185283(∏[∑[log2(gcd(2, n))]²])`
-/

namespace A163189.P7369971107309375752
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A163189.P7369971107309375752

/-! ## A163189.P5815438698849541409

`A001462(A088147(n!))`
-/

namespace A163189.P5815438698849541409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A088147 (Nat.factorial n)).toNat

end

end A163189.P5815438698849541409

/-! ## A163189.P12619047116031058393

`A000926(A114226(n))-n`
-/

namespace A163189.P12619047116031058393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (A114226 n).toNat - (n : ℤ)

end

end A163189.P12619047116031058393

/-!
# A163190: a(n) = Sum_{k=0..n} C(n,k)*sigma(n,k) for n>0 with a(0)=1.

The programs for A163190, there is no canonical definition to state claims against.
-/

/-! ## A163190.P3933880258612246397

`∑{d}[round(sqrt(n²+1)), (#+1)^n]`
-/

namespace A163190.P3933880258612246397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d + 1) ^ n

end

end A163190.P3933880258612246397

/-!
# A163191: a(n) = Sum_{k=0..n} (-1)^(n-k)*C(n,k)*sigma(n,k) for n>0 with a(0)=1.

The programs for A163191, there is no canonical definition to state claims against.
-/

/-! ## A163191.P8567243570376429548

`∑{d}[round(sqrt(n²+1)), (#-1)^n]`
-/

namespace A163191.P8567243570376429548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ((d : ℤ) - 1) ^ n

end

end A163191.P8567243570376429548

/-! ## A163191.P7878560289410730567

`A370791((n-1)^n)`
-/

namespace A163191.P7878560289410730567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370791 (((n : ℤ) - 1) ^ n).toNat

end

end A163191.P7878560289410730567

/-!
# A163192: a(n) = 20*a(n-1)-93*a(n-2) for n > 1; a(0) = 1, a(1) = 10.

The programs for A163192, the canonical program `A163192.P14562078213444533123` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163192 has offset 0).

The definition of A163192 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-93*a(n-2)` (program `A163192.P14562078213444533123`, by `A163192.P14562078213444533123.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163192.P14562078213444533123

`20*a(n-1)-93*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A163192

/-- `20*a(n-1)-93*a(n-2)` -/
def P14562078213444533123.Spec : Prop :=
  ∀ n, P14562078213444533123.a n = A163192 n

theorem P14562078213444533123.correct : P14562078213444533123.Spec := by
  intro n
  simp only [A163192]

end A163192

/-! ## A163192.P17481676369438135254

`((sqrt(7)+10)^n+(10-sqrt(7))^n)/2`
-/

namespace A163192.P17481676369438135254
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (7 : ℝ) + 10) ^ n + (10 - Real.sqrt (7 : ℝ)) ^ n) / 2

end

end A163192.P17481676369438135254

namespace A163192

/-- `((sqrt(7)+10)^n+(10-sqrt(7))^n)/2` -/
def P17481676369438135254.Spec : Prop :=
  ∀ n, P17481676369438135254.a n = (A163192 n : ℝ)

end A163192

/-!
# A163193: Numbers k such that sigma(k) = 2*sigma(k+1).

The programs for A163193, there is no canonical definition to state claims against.
-/

/-! ## A163193.P238570748034511033

`eq[2*A000203(n+2), A000203(n+1)]+1`
-/

namespace A163193.P238570748034511033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A163193.P238570748034511033

/-! ## A163193.P14003517846270891400

`eq[A002659(n+1), A039653(n)]`
-/

namespace A163193.P14003517846270891400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163193.P14003517846270891400

/-! ## A163193.P14058732432668989291

`eq[-A000203(n+1), A340793(n+1)]`
-/

namespace A163193.P14058732432668989291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163193.P14058732432668989291

/-! ## A163193.P11747602082883397723

`eq[A000203(A028310(n)), A074400(n+1)]`
-/

namespace A163193.P11747602082883397723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163193.P11747602082883397723

/-! ## A163193.P14600160076210188978

`eq[2*A000203(n+1), A000203(A028310(n))]`
-/

namespace A163193.P14600160076210188978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163193.P14600160076210188978

/-!
# A163194: a(n) = F(n)^2 * L(n+1)^2 * F(n-1) * L(n+2), where F(n) and L(n) are the Fibonacci and Lucas numbers, respectively.

The programs for A163194, there is no canonical definition to state claims against.
-/

/-! ## A163194.P7441721243581918403

`4*A163195(n)`
-/

namespace A163194.P7441721243581918403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A163195 n

end

end A163194.P7441721243581918403

/-! ## A163194.P18212043442590548971

`4*(A163198(n)-A000035(n))`
-/

namespace A163194.P18212043442590548971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A163198 n - A000035 n)

end

end A163194.P18212043442590548971

/-! ## A163194.P12316443803571833023

`A163195(n)/(A033999(n)/2)²`
-/

namespace A163194.P12316443803571833023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163195 n : ℚ) / ((A033999 n : ℚ) / 2) ^ 2

end

end A163194.P12316443803571833023

/-! ## A163194.P5879942386411532844

`A163195(n)/(A070748(n+1)/2)²`
-/

namespace A163194.P5879942386411532844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163195 n : ℚ) / ((A070748 (n + 1) : ℚ) / 2) ^ 2

end

end A163194.P5879942386411532844

/-! ## A163194.P669122389577815777

`A163196(n+1)%Δ[A163198(n)]`
-/

namespace A163194.P669122389577815777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163198 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163196 (n + 1)) (f1 (n + 1) - f1 n)

end

end A163194.P669122389577815777

/-! ## A163194.P16793163314060675241

`abs(A163196(n+1))%A215039(n+1)`
-/

namespace A163194.P16793163314060675241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A163196 (n + 1)| (A215039 (n + 1))

end

end A163194.P16793163314060675241

/-!
# A163195: a(n) = (1/4)*F(n)^2 * L(n+1)^2 * F(n-1) * L(n+2), where F(n) and L(n) are the Fibonacci and Lucas numbers, respectively.

The programs for A163195, there is no canonical definition to state claims against.
-/

/-! ## A163195.P17750457581188389949

`A163194(n)/4`
-/

namespace A163195.P17750457581188389949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163194 n : ℚ) / 4

end

end A163195.P17750457581188389949

/-! ## A163195.P16194889699939603025

`A163199(n)+char[2*n]`
-/

namespace A163195.P16194889699939603025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163199 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A163195.P16194889699939603025

/-! ## A163195.P2313828654818985229

`A163198(n)-char[or(1, n)]`
-/

namespace A163195.P2313828654818985229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163198 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A163195.P2313828654818985229

/-! ## A163195.P8705749955059806908

`∑[A000045(2*n)^3]-n%2`
-/

namespace A163195.P8705749955059806908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n % 2 : ℕ) : ℤ)

end

end A163195.P8705749955059806908

/-! ## A163195.P8214645830171226729

`A163197(n)+A033999(n)`
-/

namespace A163195.P8214645830171226729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163197 n + A033999 n

end

end A163195.P8214645830171226729

/-! ## A163195.P14688262410337363381

`A163198(n)-A000035(n)`
-/

namespace A163195.P14688262410337363381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163198 n - A000035 n

end

end A163195.P14688262410337363381

/-! ## A163195.P11798828735376992787

`A163198(n)-Δ[A008619(n)]`
-/

namespace A163195.P11798828735376992787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163198 n - (f1 (n + 1) - f1 n)

end

end A163195.P11798828735376992787

/-! ## A163195.P6948926882755706589

`1-(A000035(n)-A163199(n))`
-/

namespace A163195.P6948926882755706589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000035 n - A163199 n)

end

end A163195.P6948926882755706589

/-!
# A163196: a(n) = L(n)^2 * F(n+1)^2 * L(n-1) * F(n+2), where F(n) and L(n) are the Fibonacci and Lucas numbers, respectively.

The programs for A163196, there is no canonical definition to state claims against.
-/

/-! ## A163196.P10330693950707567783

`A163194(n)-4*(-1)^n`
-/

namespace A163196.P10330693950707567783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163194 n - 4 * (-1) ^ n

end

end A163196.P10330693950707567783

/-! ## A163196.P4501450926457386423

`4*A163197(n)`
-/

namespace A163196.P4501450926457386423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A163197 n

end

end A163196.P4501450926457386423

/-! ## A163196.P6154889709553949820

`4*(A163199(n)+n%2)`
-/

namespace A163196.P6154889709553949820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A163199 n + ((n % 2 : ℕ) : ℤ))

end

end A163196.P6154889709553949820

/-! ## A163196.P9026199241128214969

`4*(A163199(n)+A000035(n))`
-/

namespace A163196.P9026199241128214969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A163199 n + A000035 n)

end

end A163196.P9026199241128214969

/-! ## A163196.P408863726425357320

`4*(A163195(n)-A033999(n))`
-/

namespace A163196.P408863726425357320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A163195 n - A033999 n)

end

end A163196.P408863726425357320

/-! ## A163196.P14730656836926881882

`A163197(n)/(A033999(n)/2)²`
-/

namespace A163196.P14730656836926881882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163197 n : ℚ) / ((A033999 n : ℚ) / 2) ^ 2

end

end A163196.P14730656836926881882

/-! ## A163196.P15197250186828444172

`4*(A163198(n)-A000035(n+1))`
-/

namespace A163196.P15197250186828444172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A163198 n - A000035 (n + 1))

end

end A163196.P15197250186828444172

/-!
# A163197: a(n) = (1/4)* L(n)^2 * F(n+1)^2 * L(n-1) * F(n+2), where F(n) and L(n) are the Fibonacci and Lucas numbers, respectively.

The programs for A163197, there is no canonical definition to state claims against.
-/

/-! ## A163197.P16783380792413056773

`A163195(n)-(-1)^n`
-/

namespace A163197.P16783380792413056773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163195 n - (-1) ^ n

end

end A163197.P16783380792413056773

/-! ## A163197.P17123796557997721540

`A163196(n)/4`
-/

namespace A163197.P17123796557997721540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163196 n : ℚ) / 4

end

end A163197.P17123796557997721540

/-! ## A163197.P10001270193438133072

`A163199(n)+n%2`
-/

namespace A163197.P10001270193438133072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163199 n + ((n % 2 : ℕ) : ℤ)

end

end A163197.P10001270193438133072

/-! ## A163197.P12845157815467586010

`A163198(n)-char[2*n]`
-/

namespace A163197.P12845157815467586010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163198 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A163197.P12845157815467586010

/-! ## A163197.P9936103109948406583

`∑[A001906(n)^3]-char[2*n]`
-/

namespace A163197.P9936103109948406583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A163197.P9936103109948406583

/-! ## A163197.P1049220160275350823

`A163199(n)+A000035(n)`
-/

namespace A163197.P1049220160275350823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163199 n + A000035 n

end

end A163197.P1049220160275350823

/-! ## A163197.P4591610507767394664

`∑[A215039(n)-A033999(n)]`
-/

namespace A163197.P4591610507767394664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215039 n - A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163197.P4591610507767394664

/-! ## A163197.P3941078019925192370

`A000035(n)+A163198(n)-1`
-/

namespace A163197.P3941078019925192370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A163198 n - 1)

end

end A163197.P3941078019925192370

/-! ## A163197.P13430336273449141147

`∑[A056570(2*n)+A033999(n+1)]`
-/

namespace A163197.P13430336273449141147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 (2 * n) + A033999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163197.P13430336273449141147

/-!
# A163198: Sum of the cubes of the first n even-indexed Fibonacci numbers.

The programs for A163198, there is no canonical definition to state claims against.
-/

/-! ## A163198.P12626381591140723217

`A163199(n)+1`
-/

namespace A163198.P12626381591140723217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163199 n + 1

end

end A163198.P12626381591140723217

/-! ## A163198.P13284463642329462388

`∑[A215039(n)]`
-/

namespace A163198.P13284463642329462388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163198.P13284463642329462388

/-! ## A163198.P5002930068065105357

`∑[A056570(2*n)]`
-/

namespace A163198.P5002930068065105357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163198.P5002930068065105357

/-! ## A163198.P12858511147225349570

`∑[A001906(n)^3]`
-/

namespace A163198.P12858511147225349570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163198.P12858511147225349570

/-! ## A163198.P13178150056996629798

`∑[A000045(2*n)^3]`
-/

namespace A163198.P13178150056996629798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163198.P13178150056996629798

/-! ## A163198.P1640991704297802264

`∑[A212804(2*n+1)^3]`
-/

namespace A163198.P1640991704297802264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (2 * n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163198.P1640991704297802264

/-! ## A163198.P6783494795103441855

`∑[record[A000045(n%4+n)]^3]`
-/

namespace A163198.P6783494795103441855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n % 4 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163198.P6783494795103441855

/-! ## A163198.P5644613493243166801

`∑[record[A000045(and(n, n+1))]^3]`
-/

namespace A163198.P5644613493243166801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.land n (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163198.P5644613493243166801

/-! ## A163198.P16384203975400004840

`A163195(n)+A000035(n)`
-/

namespace A163198.P16384203975400004840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163195 n + A000035 n

end

end A163198.P16384203975400004840

/-! ## A163198.P3934013076706870963

`∑[A001906(n)*A049684(n)]`
-/

namespace A163198.P3934013076706870963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n * A049684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163198.P3934013076706870963

/-!
# A163199: Sum of the cubes of the first n even-indexed Fibonacci numbers, minus 1.

The programs for A163199, there is no canonical definition to state claims against.
-/

/-! ## A163199.P9369278080693735299

`A163198(n)-1`
-/

namespace A163199.P9369278080693735299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163198 n - 1

end

end A163199.P9369278080693735299

/-! ## A163199.P4766089958802151510

`∑[A215039(n)]-1`
-/

namespace A163199.P4766089958802151510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A163199.P4766089958802151510

/-! ## A163199.P84760913879757246

`∑[record[Δ[A119284(n)]]]`
-/

namespace A163199.P84760913879757246
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119284 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163199.P84760913879757246

/-! ## A163199.P6043702714235887923

`∑[A056570(2*n)]-1`
-/

namespace A163199.P6043702714235887923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056570 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A163199.P6043702714235887923

/-! ## A163199.P18174318182120835965

`∑[A001906(n)^3]-1`
-/

namespace A163199.P18174318182120835965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A163199.P18174318182120835965

/-! ## A163199.P6574572280814522168

`∑[A000045(2*n)^3]-1`
-/

namespace A163199.P6574572280814522168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A163199.P6574572280814522168

/-! ## A163199.P7660700412992970279

`∑[(A001611(2*n)-1)^3]-1`
-/

namespace A163199.P7660700412992970279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 (2 * n) - 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A163199.P7660700412992970279

/-! ## A163199.P13965508531630521099

`A163197(n)-A000035(n)`
-/

namespace A163199.P13965508531630521099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163197 n - A000035 n

end

end A163199.P13965508531630521099

/-! ## A163199.P5126333344235279338

`A000035(n)+A163195(n)-1`
-/

namespace A163199.P5126333344235279338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A163195 n - 1)

end

end A163199.P5126333344235279338

/-! ## A163199.P2458259985705159082

`A163197(n)+1-A000034(n)`
-/

namespace A163199.P2458259985705159082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163197 n + (1 - A000034 n)

end

end A163199.P2458259985705159082

