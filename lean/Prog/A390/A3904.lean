import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A390402: a(n) is the smallest k > 1 such that n^k reaches n under repeated application of the Collatz or 3x+1 map (A006370), or a(n) = -1 if no such k exists.

The programs for A390402, there is no canonical definition to state claims against.
-/

/-! ## A390402.P3198492930807260666

`A323872(A110981(n+2))+A057079(2*n)`
-/

namespace A390402.P3198492930807260666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323872 (A110981 (n + 2)).toNat + A057079 (2 * n)

end

end A390402.P3198492930807260666

/-! ## A390402.P2421131080615812941

`A329312(A025487(n+1))-A099837(n+1)`
-/

namespace A390402.P2421131080615812941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329312 (A025487 (n + 1)).toNat - A099837 (n + 1)

end

end A390402.P2421131080615812941

/-! ## A390402.P2177380372454359375

`A378285(A074263(n+1))-A099837(n+1)`
-/

namespace A390402.P2177380372454359375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378285 (A074263 (n + 1)).toNat - A099837 (n + 1)

end

end A390402.P2177380372454359375

/-! ## A390402.P6948154602374890761

`A368979(A145581(2*(n+2)))+A061347(n+1)`
-/

namespace A390402.P6948154602374890761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368979 (A145581 (2 * (n + 2))).toNat + A061347 (n + 1)

end

end A390402.P6948154602374890761

/-! ## A390402.P10057672233740935285

`A115578(A043318(n+1))-A057079(2*n+3)`
-/

namespace A390402.P10057672233740935285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115578 (A043318 (n + 1)).toNat - A057079 (2 * n + 3)

end

end A390402.P10057672233740935285

/-!
# A390403: a(n) = (49*4^n + 6*n - 13)/9.

The programs for A390403, the canonical program `A390403.P8157210282863581429` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390403 has offset 0).

The definition of A390403 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(49*4^n+6*n-13)/9` (program `A390403.P13923469730129145418`, by `A390403.P13923469730129145418.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390403.P4242368685179572997

`ogf((4-3x-3x^2)/(1-6x+9x^2-4x^3))`
-/

namespace A390403.P4242368685179572997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3, -3] [1, -6, 9, -4] n

end

end A390403.P4242368685179572997

namespace A390403

/-- `ogf((4-3x-3x^2)/(1-6x+9x^2-4x^3))` -/
def P4242368685179572997.Spec : Prop :=
  ∀ n, P4242368685179572997.a n = A390403 n

end A390403

/-! ## A390403.P8157210282863581429

`6*a(n-1)-9*a(n-2)+4*a(n-3)` with `a(0)=4, a(1)=21, a(2)=87`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390403

/-- `6*a(n-1)-9*a(n-2)+4*a(n-3)` -/
def P8157210282863581429.Spec : Prop :=
  ∀ n, P8157210282863581429.a n = A390403 n

theorem P8157210282863581429.correct : P8157210282863581429.Spec := by
  intro n
  simp only [A390403]

end A390403

/-! ## A390403.P13923469730129145418

`(49*4^n+6*n-13)/9`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390403.P13923469730129145418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((49 * 4 ^ n + 6 * n : ℤ) - 13 : ℚ) / 9

end

end A390403.P13923469730129145418

namespace A390403

/-- `(49*4^n+6*n-13)/9` -/
def P13923469730129145418.Spec : Prop :=
  ∀ n, P13923469730129145418.a n = (A390403 n : ℚ)

theorem P13923469730129145418.correct : P13923469730129145418.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A390403, Nat.add_sub_cancel, A390403.P13923469730129145418.a, A390403.P8157210282863581429.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A390403, Nat.add_sub_cancel, A390403.P13923469730129145418.a, A390403.P8157210282863581429.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A390403

/-! ## A390403.P8576080361960631975

`∑[∑[ogf((-4+3x+3x^2)/(-1+4x))]]`
-/

namespace A390403.P8576080361960631975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3, -3] [1, -4] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390403.P8576080361960631975

namespace A390403

/-- `∑[∑[ogf((-4+3x+3x^2)/(-1+4x))]]` -/
def P8576080361960631975.Spec : Prop :=
  ∀ n, P8576080361960631975.a n = A390403 n

end A390403

/-! ## A390403.P13121701186794165277

`4*(a(n-1)+2)-(2*n+1)` with `a(0)=4`
-/

namespace A390403.P13121701186794165277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  4 * (a (n - 1) + 2) - (2 * n + 1 : ℤ)

end

end A390403.P13121701186794165277

namespace A390403

/-- `4*(a(n-1)+2)-(2*n+1)` -/
def P13121701186794165277.Spec : Prop :=
  ∀ n, P13121701186794165277.a n = A390403 n

end A390403

/-!
# A390406: Row sums of triangle A390419.

The programs for A390406, there is no canonical definition to state claims against.
-/

/-! ## A390406.P860579840278760519

`A096524(a(n-1))-3` with `a(0)=2, a(1)=1`
-/

namespace A390406.P860579840278760519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  A096524 (a (n - 1)).toNat - 3

end

end A390406.P860579840278760519

/-!
# A390407: a(n) = Sum_{k=0..n} binomial(4*n-2*k,n-k).

The programs for A390407, the canonical program `A390407.P5468386598490952472` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390407 has offset 0).

The definition of A390407 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(4*n-2*#, n-#)]` (program `A390407.P5468386598490952472`, by `A390407.P5468386598490952472.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390407.P5468386598490952472

`∑{#}[n, C(4*n-2*#, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390407

/-- `∑{#}[n, C(4*n-2*#, n-#)]` -/
def P5468386598490952472.Spec : Prop :=
  ∀ n, (P5468386598490952472.a n : ℤ) = A390407 n

theorem P5468386598490952472.correct : P5468386598490952472.Spec := by
  intro n
  simp only [A390407]

end A390407

/-! ## A390407.P17724428873972668748

`A361654(A064226(n))`
-/

namespace A390407.P17724428873972668748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361654 (A064226 n).toNat

end

end A390407.P17724428873972668748

namespace A390407

/-- `A361654(A064226(n))` -/
def P17724428873972668748.Spec : Prop :=
  ∀ n, P17724428873972668748.a n = A390407 n

end A390407

/-! ## A390407.P7354625855118149559

`A361654(A140064(n+1))`
-/

namespace A390407.P7354625855118149559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361654 (A140064 (n + 1)).toNat

end

end A390407.P7354625855118149559

namespace A390407

/-- `A361654(A140064(n+1))` -/
def P7354625855118149559.Spec : Prop :=
  ∀ n, P7354625855118149559.a n = A390407 n

end A390407

/-! ## A390407.P13648293476722690634

`A013580(A139276(n))`
-/

namespace A390407.P13648293476722690634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A139276 n).toNat

end

end A390407.P13648293476722690634

namespace A390407

/-- `A013580(A139276(n))` -/
def P13648293476722690634.Spec : Prop :=
  ∀ n, P13648293476722690634.a n = A390407 n

end A390407

/-! ## A390407.P16122790771541769551

`A013580(A139277(n))`
-/

namespace A390407.P16122790771541769551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A139277 n).toNat

end

end A390407.P16122790771541769551

namespace A390407

/-- `A013580(A139277(n))` -/
def P16122790771541769551.Spec : Prop :=
  ∀ n, P16122790771541769551.a n = A390407 n

end A390407

/-!
# A390408: a(n) = Sum_{k=0..n} binomial(4*n+2*k,n-k).

The programs for A390408, the canonical program `A390408.P13504453010937837822` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390408 has offset 0).

The definition of A390408 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(4*n+2*#, n-#)]` (program `A390408.P13504453010937837822`, by `A390408.P13504453010937837822.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390408.P13504453010937837822

`∑{#}[n, C(4*n+2*#, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390408

/-- `∑{#}[n, C(4*n+2*#, n-#)]` -/
def P13504453010937837822.Spec : Prop :=
  ∀ n, (P13504453010937837822.a n : ℤ) = A390408 n

theorem P13504453010937837822.correct : P13504453010937837822.Spec := by
  intro n
  simp only [A390408]

end A390408

/-!
# A390409: a(n) = Sum_{k=0..n} binomial(4*n+3*k,n-k).

The programs for A390409, the canonical program `A390409.P2042761053706667770` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390409 has offset 0).

The definition of A390409 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(4*n+3*#, n-#)]` (program `A390409.P2042761053706667770`, by `A390409.P2042761053706667770.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390409.P2042761053706667770

`∑{#}[n, C(4*n+3*#, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390409

/-- `∑{#}[n, C(4*n+3*#, n-#)]` -/
def P2042761053706667770.Spec : Prop :=
  ∀ n, (P2042761053706667770.a n : ℤ) = A390409 n

theorem P2042761053706667770.correct : P2042761053706667770.Spec := by
  intro n
  simp only [A390409]

end A390409

/-!
# A390410: a(n) = Sum_{k=0..n} binomial(4*n+4*k,n-k).

The programs for A390410, the canonical program `A390410.P2914426341530739129` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390410 has offset 0).

The definition of A390410 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(4*n+4*#, n-#)]` (program `A390410.P2914426341530739129`, by `A390410.P2914426341530739129.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390410.P2914426341530739129

`∑{#}[n, C(4*n+4*#, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390410

/-- `∑{#}[n, C(4*n+4*#, n-#)]` -/
def P2914426341530739129.Spec : Prop :=
  ∀ n, (P2914426341530739129.a n : ℤ) = A390410 n

theorem P2914426341530739129.correct : P2914426341530739129.Spec := by
  intro n
  simp only [A390410]

end A390410

/-!
# A390411: a(n) = Sum_{k=0..n} binomial(4*k+1,k).

The programs for A390411, the canonical program `A390411.P2957758563450737005` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390411 has offset 0).

The definition of A390411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390411.P2957758563450737005

`∑[A052203(n)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390411

/-- `∑[A052203(n)]` -/
def P2957758563450737005.Spec : Prop :=
  ∀ n, P2957758563450737005.a n = A390411 n

theorem P2957758563450737005.correct : P2957758563450737005.Spec := by
  intro n
  simp only [A390411]

end A390411

/-! ## A390411.P15069482924234672516

`∑[A283799(2*n)]`
-/

namespace A390411.P15069482924234672516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283799 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390411.P15069482924234672516

namespace A390411

/-- `∑[A283799(2*n)]` -/
def P15069482924234672516.Spec : Prop :=
  ∀ n, P15069482924234672516.a n = A390411 n

end A390411

/-! ## A390411.P6829325759346721935

`∑[C(4*n+1, n)]`
-/

namespace A390411.P6829325759346721935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n + 1) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390411.P6829325759346721935

namespace A390411

/-- `∑[C(4*n+1, n)]` -/
def P6829325759346721935.Spec : Prop :=
  ∀ n, (P6829325759346721935.a n : ℤ) = A390411 n

theorem P6829325759346721935.correct : P6829325759346721935.Spec := by
  intro n
  simp only [A390411, Nat.add_sub_cancel, A390411.P6829325759346721935.f1, A390411.P6829325759346721935.a, A390411.P2957758563450737005.f1, A390411.P2957758563450737005.a, A052203, A052203.P16183877862599356469.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A390411

/-! ## A390411.P4193358661670550984

`a(n-1)+C(2*n+2*n+1, n)` with `a(0)=1`
-/

namespace A390411.P4193358661670550984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.choose (2 * n + (2 * n + 1)) n

end

end A390411.P4193358661670550984

namespace A390411

/-- `a(n-1)+C(2*n+2*n+1, n)` -/
def P4193358661670550984.Spec : Prop :=
  ∀ n, (P4193358661670550984.a n : ℤ) = A390411 n

end A390411

/-! ## A390411.P15414965203603225548

`∑[A264772(2*(n+1)²)]`
-/

namespace A390411.P15414965203603225548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264772 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390411.P15414965203603225548

namespace A390411

/-- `∑[A264772(2*(n+1)²)]` -/
def P15414965203603225548.Spec : Prop :=
  ∀ n, P15414965203603225548.a n = A390411 n

end A390411

/-!
# A390412: a(n) = Sum_{k=0..n} binomial(n+3*k+1,k).

The programs for A390412, the canonical program `A390412.P2413762109422708924` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390412 has offset 0).

The definition of A390412 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+3*#+1, #)]` (program `A390412.P2413762109422708924`, by `A390412.P2413762109422708924.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390412.P2413762109422708924

`∑{#}[n, C(n+3*#+1, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390412

/-- `∑{#}[n, C(n+3*#+1, #)]` -/
def P2413762109422708924.Spec : Prop :=
  ∀ n, (P2413762109422708924.a n : ℤ) = A390412 n

theorem P2413762109422708924.correct : P2413762109422708924.Spec := by
  intro n
  simp only [A390412]

end A390412

/-!
# A390413: a(n) = Sum_{k=0..n} binomial(4*n-2*k+1,n-k).

The programs for A390413, the canonical program `A390413.P10811862494989114449` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390413 has offset 0).

The definition of A390413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(4*n-2*#+1, n-#)]` (program `A390413.P10811862494989114449`, by `A390413.P10811862494989114449.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390413.P10811862494989114449

`∑{#}[n, C(4*n-2*#+1, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390413

/-- `∑{#}[n, C(4*n-2*#+1, n-#)]` -/
def P10811862494989114449.Spec : Prop :=
  ∀ n, (P10811862494989114449.a n : ℤ) = A390413 n

theorem P10811862494989114449.correct : P10811862494989114449.Spec := by
  intro n
  simp only [A390413]

end A390413

/-! ## A390413.P15082195133693403575

`A361654(A006137(n+1))`
-/

namespace A390413.P15082195133693403575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361654 (A006137 (n + 1)).toNat

end

end A390413.P15082195133693403575

namespace A390413

/-- `A361654(A006137(n+1))` -/
def P15082195133693403575.Spec : Prop :=
  ∀ n, P15082195133693403575.a n = A390413 n

end A390413

/-! ## A390413.P6096792450101242871

`A013580(A194268(n))`
-/

namespace A390413.P6096792450101242871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A194268 n).toNat

end

end A390413.P6096792450101242871

namespace A390413

/-- `A013580(A194268(n))` -/
def P6096792450101242871.Spec : Prop :=
  ∀ n, P6096792450101242871.a n = A390413 n

end A390413

/-! ## A390413.P9123226243990649451

`A013580(A125201(n+1))`
-/

namespace A390413.P9123226243990649451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A125201 (n + 1)).toNat

end

end A390413.P9123226243990649451

namespace A390413

/-- `A013580(A125201(n+1))` -/
def P9123226243990649451.Spec : Prop :=
  ∀ n, P9123226243990649451.a n = A390413 n

end A390413

/-! ## A390413.P9602565082375417089

`A013580(A002378(3*n+1)-n²)`
-/

namespace A390413.P9602565082375417089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A002378 (3 * n + 1) - (n ^ 2 : ℤ)).toNat

end

end A390413.P9602565082375417089

namespace A390413

/-- `A013580(A002378(3*n+1)-n²)` -/
def P9602565082375417089.Spec : Prop :=
  ∀ n, P9602565082375417089.a n = A390413 n

end A390413

/-!
# A390414: a(n) = Sum_{k=0..n} binomial(4*n+2*k+1,n-k).

The programs for A390414, the canonical program `A390414.P10599666325140863047` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390414 has offset 0).

The definition of A390414 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(4*n+2*#+1, n-#)]` (program `A390414.P10599666325140863047`, by `A390414.P10599666325140863047.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390414.P10599666325140863047

`∑{#}[n, C(4*n+2*#+1, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390414

/-- `∑{#}[n, C(4*n+2*#+1, n-#)]` -/
def P10599666325140863047.Spec : Prop :=
  ∀ n, (P10599666325140863047.a n : ℤ) = A390414 n

theorem P10599666325140863047.correct : P10599666325140863047.Spec := by
  intro n
  simp only [A390414]

end A390414

/-!
# A390415: a(n) = Sum_{k=0..n} binomial(4*n+3*k+1,n-k).

The programs for A390415, the canonical program `A390415.P4232441199116338421` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390415 has offset 0).

The definition of A390415 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(4*n+3*#+1, n-#)]` (program `A390415.P4232441199116338421`, by `A390415.P4232441199116338421.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390415.P4232441199116338421

`∑{#}[n, C(4*n+3*#+1, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390415

/-- `∑{#}[n, C(4*n+3*#+1, n-#)]` -/
def P4232441199116338421.Spec : Prop :=
  ∀ n, (P4232441199116338421.a n : ℤ) = A390415 n

theorem P4232441199116338421.correct : P4232441199116338421.Spec := by
  intro n
  simp only [A390415]

end A390415

/-!
# A390416: a(n) = Sum_{k=0..n} binomial(4*n+4*k+1,n-k).

The programs for A390416, the canonical program `A390416.P10929598865021876941` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390416 has offset 0).

The definition of A390416 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(4*n+4*#+1, n-#)]` (program `A390416.P10929598865021876941`, by `A390416.P10929598865021876941.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390416.P10929598865021876941

`∑{#}[n, C(4*n+4*#+1, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390416

/-- `∑{#}[n, C(4*n+4*#+1, n-#)]` -/
def P10929598865021876941.Spec : Prop :=
  ∀ n, (P10929598865021876941.a n : ℤ) = A390416 n

theorem P10929598865021876941.correct : P10929598865021876941.Spec := by
  intro n
  simp only [A390416]

end A390416

/-!
# A390418: Partial sums of A014829.

The programs for A390418, the canonical program `A390418.P1949512912825021070` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390418 has offset 1).

The definition of A390418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390418.P15384206213115288148

`ogf(1/(1-9x+21x^2-19x^3+6x^4))`
-/

namespace A390418.P15384206213115288148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -9, 21, -19, 6] n

end

end A390418.P15384206213115288148

namespace A390418

/-- `ogf(1/(1-9x+21x^2-19x^3+6x^4))` -/
def P15384206213115288148.Spec : Prop :=
  ∀ n, P15384206213115288148.a n = A390418 (n + 1)

end A390418

/-! ## A390418.P1949512912825021070

`9*a(n-1)-21*a(n-2)+19*a(n-3)-6*a(n-4)` with `a(0)=1, a(1)=9, a(2)=60, a(3)=370`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390418

/-- `9*a(n-1)-21*a(n-2)+19*a(n-3)-6*a(n-4)` -/
def P1949512912825021070.Spec : Prop :=
  ∀ n, P1949512912825021070.a n = A390418 (n + 1)

theorem P1949512912825021070.correct : P1949512912825021070.Spec := by
  intro n
  simp only [A390418, Nat.add_sub_cancel]

end A390418

/-! ## A390418.P2989085293247737229

`(72*6^(n+1)-25*(n+1)²-85*(n+1)-72)/250`
-/

namespace A390418.P2989085293247737229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((72 * 6 ^ (n + 1) : ℤ) - (25 * (n + 1) ^ 2 : ℤ) - (85 * (n + 1) : ℤ) - 72 : ℚ) / 250

end

end A390418.P2989085293247737229

namespace A390418

/-- `(72*6^(n+1)-25*(n+1)²-85*(n+1)-72)/250` -/
def P2989085293247737229.Spec : Prop :=
  ∀ n, P2989085293247737229.a n = (A390418 (n + 1) : ℚ)

theorem P2989085293247737229.correct : P2989085293247737229.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A390418, Nat.add_sub_cancel, A390418.P2989085293247737229.a, A390418.P1949512912825021070.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A390418, Nat.add_sub_cancel, A390418.P2989085293247737229.a, A390418.P1949512912825021070.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A390418

/-! ## A390418.P13373948935805192453

`∑[∑[ogf(1/(1-7x+6x^2))]]`
-/

namespace A390418.P13373948935805192453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -7, 6] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390418.P13373948935805192453

namespace A390418

/-- `∑[∑[ogf(1/(1-7x+6x^2))]]` -/
def P13373948935805192453.Spec : Prop :=
  ∀ n, P13373948935805192453.a n = A390418 (n + 1)

end A390418

/-! ## A390418.P3438164528720804392

`∑[∑[∑[6*a(n-1)]]]` with `a(0)=1`
-/

namespace A390418.P3438164528720804392
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  6 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390418.P3438164528720804392

namespace A390418

/-- `∑[∑[∑[6*a(n-1)]]]` -/
def P3438164528720804392.Spec : Prop :=
  ∀ n, (P3438164528720804392.a n : ℤ) = A390418 (n + 1)

end A390418

/-! ## A390418.P10559715899556052542

`∑[A014829(n+1)]`
-/

namespace A390418.P10559715899556052542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390418.P10559715899556052542

namespace A390418

/-- `∑[A014829(n+1)]` -/
def P10559715899556052542.Spec : Prop :=
  ∀ n, P10559715899556052542.a n = A390418 (n + 1)

end A390418

/-! ## A390418.P14136703809048457324

`∑[∑[A003464(n+1)]]`
-/

namespace A390418.P14136703809048457324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003464 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390418.P14136703809048457324

namespace A390418

/-- `∑[∑[A003464(n+1)]]` -/
def P14136703809048457324.Spec : Prop :=
  ∀ n, P14136703809048457324.a n = A390418 (n + 1)

end A390418

/-! ## A390418.P3315348750676771056

`A229702(n+1)-(A229702(n)+A014829(n+2))`
-/

namespace A390418.P3315348750676771056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229702 (n + 1) - (A229702 n + A014829 (n + 2))

end

end A390418.P3315348750676771056

namespace A390418

/-- `A229702(n+1)-(A229702(n)+A014829(n+2))` -/
def P3315348750676771056.Spec : Prop :=
  ∀ n, P3315348750676771056.a n = A390418 (n + 1)

end A390418

/-! ## A390418.P15386237457538112602

`∑[∑[∑[a(n-1)²/a(n-2)]]]` with `a(0)=1, a(1)=6`
-/

namespace A390418.P15386237457538112602
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n f3 =>
  f3 (n - 1) ^ 2 / f3 (n - 2)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390418.P15386237457538112602

namespace A390418

/-- `∑[∑[∑[a(n-1)²/a(n-2)]]]` -/
def P15386237457538112602.Spec : Prop :=
  ∀ n, P15386237457538112602.a n = (A390418 (n + 1) : ℚ)

end A390418

/-!
# A390419: Triangle read by rows: T(n,k) is the number of ways to place k non-attacking kings in each row of an n X n board, 0 <= k <= floor((n+1)/4) + [n=1].

The programs for A390419, there is no canonical definition to state claims against.
-/

/-! ## A390419.P6245242359658989043

`A124530(A240207(2*n+3))%A108917(3*n+4)`
-/

namespace A390419.P6245242359658989043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A124530 (A240207 (2 * n + 3)).toNat) (A108917 (3 * n + 4))

end

end A390419.P6245242359658989043

/-!
# A390422: Norms of irreducible elements of Z[(1+sqrt(-15))/2], the ring of integers of Q(sqrt(-15)).

The programs for A390422, there is no canonical definition to state claims against.
-/

/-! ## A390422.P994897286732474722

`lt[0, A391360(n+1)]+1`
-/

namespace A390422.P994897286732474722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391360 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A390422.P994897286732474722

/-!
# A390423: Expansion of 1/(2 - g^2)^2, where g = 1+x*g^2 is the g.f. of A000108.

The programs for A390423, the canonical program `A390423.P17417933540098587345` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390423 has offset 0).

The definition of A390423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390423.P17417933540098587345

`∑{#}[n, A289684(#)*A289684(n-#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A390423

/-- `∑{#}[n, A289684(#)*A289684(n-#)]` -/
def P17417933540098587345.Spec : Prop :=
  ∀ n, P17417933540098587345.a n = A390423 n

theorem P17417933540098587345.correct : P17417933540098587345.Spec := by
  intro n
  simp only [A390423]

end A390423

/-!
# A390424: Expansion of 1/(2 - g^2)^2, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A390424, there is no canonical definition to state claims against.
-/

/-! ## A390424.P12125316246654482301

`∑{#}[n, A391461(#)*A391461(n-#)]`
-/

namespace A390424.P12125316246654482301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A391461 k * A391461 (n - k)

end

end A390424.P12125316246654482301

/-!
# A390425: Number of distinct lattice points on the Lévy C curve after n iterations.

The programs for A390425, there is no canonical definition to state claims against.
-/

/-! ## A390425.P10322015562720100603

`A121373(A373519(n))+A091865(n+2)`
-/

namespace A390425.P10322015562720100603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A373519 n).toNat + A091865 (n + 2)

end

end A390425.P10322015562720100603

/-! ## A390425.P8774212453722546797

`A027434(A149994(n))`
-/

namespace A390425.P8774212453722546797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (A149994 n).toNat

end

end A390425.P8774212453722546797

/-! ## A390425.P17557278742487025280

`A027434(A150054(n))`
-/

namespace A390425.P17557278742487025280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (A150054 n).toNat

end

end A390425.P17557278742487025280

/-! ## A390425.P1528967739146242195

`A126848(A293070(n))`
-/

namespace A390425.P1528967739146242195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126848 (A293070 n).toNat

end

end A390425.P1528967739146242195

/-!
# A390429: Number of integer partitions that are the first sums of some integer partition of n > 0.

The programs for A390429, there is no canonical definition to state claims against.
-/

/-! ## A390429.P13918532502393335007

`A391620(n+1)-A244220(A063834(n))`
-/

namespace A390429.P13918532502393335007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391620 (n + 1) - A244220 (A063834 n).toNat

end

end A390429.P13918532502393335007

/-! ## A390429.P9718427452528910066

`A391620(n+1)-A157928(A391645(n+1))`
-/

namespace A390429.P9718427452528910066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391620 (n + 1) - A157928 (A391645 (n + 1)).toNat

end

end A390429.P9718427452528910066

/-! ## A390429.P12793383629042338432

`A067086(A347460(2*(n+1))+A001523(n))`
-/

namespace A390429.P12793383629042338432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (A347460 (2 * (n + 1)) + A001523 n).toNat

end

end A390429.P12793383629042338432

/-! ## A390429.P3817329270158857982

`A241823(n+1)+A001222(A178991(2*n+3))`
-/

namespace A390429.P3817329270158857982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241823 (n + 1) + A001222 (A178991 (2 * n + 3)).toNat

end

end A390429.P3817329270158857982

/-! ## A390429.P3703589619740413133

`A000196(A171871(2*n+3)+A090984(n))-A135665(n+1)`
-/

namespace A390429.P3703589619740413133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A171871 (2 * n + 3) + A090984 n).toNat - A135665 (n + 1)

end

end A390429.P3703589619740413133

/-!
# A390430: Least prime index of n plus greatest prime index of n; a(1) = 0.

The programs for A390430, the canonical program `A390430.P10162283032244462444` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390430 has offset 1).

The definition of A390430 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390430.P12063177541404331495

`A061395(n+1)+A055396(n+1)`
-/

namespace A390430.P12063177541404331495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) + A055396 (n + 1)

end

end A390430.P12063177541404331495

namespace A390430

/-- `A061395(n+1)+A055396(n+1)` -/
def P12063177541404331495.Spec : Prop :=
  ∀ n, P12063177541404331495.a n = A390430 (n + 1)

end A390430

/-! ## A390430.P5180162829467420745

`A108230(∏{p}[n+1, #])+A055396(n+1)`
-/

namespace A390430.P5180162829467420745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108230 (∏ p ∈ Nat.primeFactors (f1 n), p) + A055396 (n + 1)

end

end A390430.P5180162829467420745

namespace A390430

/-- `A108230(∏{p}[n+1, #])+A055396(n+1)` -/
def P5180162829467420745.Spec : Prop :=
  ∀ n, P5180162829467420745.a n = A390430 (n + 1)

end A390430

/-! ## A390430.P5668074039457429939

`A263297(∏{p}[n+1, #])+A055396(n+1)`
-/

namespace A390430.P5668074039457429939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (∏ p ∈ Nat.primeFactors (f1 n), p) + A055396 (n + 1)

end

end A390430.P5668074039457429939

namespace A390430

/-- `A263297(∏{p}[n+1, #])+A055396(n+1)` -/
def P5668074039457429939.Spec : Prop :=
  ∀ n, P5668074039457429939.a n = A390430 (n + 1)

end A390430

/-! ## A390430.P9775371745551992286

`A263323(∏{p}[n+1, #])+A055396(n+1)`
-/

namespace A390430.P9775371745551992286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263323 (∏ p ∈ Nat.primeFactors (f1 n), p) + A055396 (n + 1)

end

end A390430.P9775371745551992286

namespace A390430

/-- `A263323(∏{p}[n+1, #])+A055396(n+1)` -/
def P9775371745551992286.Spec : Prop :=
  ∀ n, P9775371745551992286.a n = A390430 (n + 1)

end A390430

/-! ## A390430.P5087140325369235629

`A277707(∏{p}[n+1, #])+A061395(n+1)`
-/

namespace A390430.P5087140325369235629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277707 (∏ p ∈ Nat.primeFactors (f1 n), p) + A061395 (n + 1)

end

end A390430.P5087140325369235629

namespace A390430

/-- `A277707(∏{p}[n+1, #])+A061395(n+1)` -/
def P5087140325369235629.Spec : Prop :=
  ∀ n, P5087140325369235629.a n = A390430 (n + 1)

end A390430

/-! ## A390430.P199979052262636259

`A297113(∏{p}[n+1, #])+A055396(n+1)`
-/

namespace A390430.P199979052262636259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297113 (∏ p ∈ Nat.primeFactors (f1 n), p) + A055396 (n + 1)

end

end A390430.P199979052262636259

namespace A390430

/-- `A297113(∏{p}[n+1, #])+A055396(n+1)` -/
def P199979052262636259.Spec : Prop :=
  ∀ n, P199979052262636259.a n = A390430 (n + 1)

end A390430

/-! ## A390430.P12362967972963585803

`A335603(∏{p}[n+1, #])+A055396(n+1)`
-/

namespace A390430.P12362967972963585803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335603 (∏ p ∈ Nat.primeFactors (f1 n), p) + A055396 (n + 1)

end

end A390430.P12362967972963585803

namespace A390430

/-- `A335603(∏{p}[n+1, #])+A055396(n+1)` -/
def P12362967972963585803.Spec : Prop :=
  ∀ n, P12362967972963585803.a n = A390430 (n + 1)

end A390430

/-! ## A390430.P5428938352838882198

`A055396(n+1)+A000720(A006530(n+1))`
-/

namespace A390430.P5428938352838882198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) + A000720 (A006530 (n + 1)).toNat

end

end A390430.P5428938352838882198

namespace A390430

/-- `A055396(n+1)+A000720(A006530(n+1))` -/
def P5428938352838882198.Spec : Prop :=
  ∀ n, P5428938352838882198.a n = A390430 (n + 1)

end A390430

/-! ## A390430.P8628238627279610463

`A061395(n+1)+A000720(A020639(n+1))`
-/

namespace A390430.P8628238627279610463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) + A000720 (A020639 (n + 1)).toNat

end

end A390430.P8628238627279610463

namespace A390430

/-- `A061395(n+1)+A000720(A020639(n+1))` -/
def P8628238627279610463.Spec : Prop :=
  ∀ n, P8628238627279610463.a n = A390430 (n + 1)

end A390430

/-! ## A390430.P15976371421563786897

`A061395(A068794(n+1))+A061395(n+1)`
-/

namespace A390430.P15976371421563786897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A068794 (n + 1)).toNat + A061395 (n + 1)

end

end A390430.P15976371421563786897

namespace A390430

/-- `A061395(A068794(n+1))+A061395(n+1)` -/
def P15976371421563786897.Spec : Prop :=
  ∀ n, P15976371421563786897.a n = A390430 (n + 1)

end A390430

/-! ## A390430.P2981865724342035869

`A055396(n+1)+A243055(n+1)+A055396(n+1)`
-/

namespace A390430.P2981865724342035869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) + (A243055 (n + 1) + A055396 (n + 1))

end

end A390430.P2981865724342035869

namespace A390430

/-- `A055396(n+1)+A243055(n+1)+A055396(n+1)` -/
def P2981865724342035869.Spec : Prop :=
  ∀ n, P2981865724342035869.a n = A390430 (n + 1)

end A390430

/-! ## A390430.P10162283032244462444

`A061395(n+1)+A061395(n+1)-A243055(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A390430

/-- `A061395(n+1)+A061395(n+1)-A243055(n+1)` -/
def P10162283032244462444.Spec : Prop :=
  ∀ n, P10162283032244462444.a n = A390430 (n + 1)

theorem P10162283032244462444.correct : P10162283032244462444.Spec := by
  intro n
  simp only [A390430, Nat.add_sub_cancel]

end A390430

/-! ## A390430.P153005838386100998

`A056239(n+1)+A056239(n+1)-A390990(n+1)`
-/

namespace A390430.P153005838386100998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + (A056239 (n + 1) - A390990 (n + 1))

end

end A390430.P153005838386100998

namespace A390430

/-- `A056239(n+1)+A056239(n+1)-A390990(n+1)` -/
def P153005838386100998.Spec : Prop :=
  ∀ n, P153005838386100998.a n = A390430 (n + 1)

theorem P153005838386100998.correct : P153005838386100998.Spec := by
  intro n
  simp only [A390430, Nat.add_sub_cancel, A390430.P153005838386100998.a, A390430.P10162283032244462444.a, A056239, A056239.P11316688788989965672.a, A061395, A061395.P8431317036300486107.a, A243055, A243055.P2464886309294058059.a, A390990, A390990.P11391089079633860080.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, A117371, A117371.P12406732587805932156.a, A156552, A156552.P4268073137713085227.a, A161511, A161511.P16266007976091900386.a, A297155, A297155.P1611206963555320167.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A048896, A048896.P6461019053085857547.a, A079067, A079067.P15788458216202685682.a, A252464, A252464.P11274602121942962009.a, A297113, A297113.P441289280190658386.a, A348717, A348717.P703712104273003584.a, A046660, A046660.P3614759855976580945.a, A048881, A048881.P16567064232951496228.a, A080791, A080791.P6131873509789506769.a, A122111, A122111.P18124015185857335041.a, A243074, A243074.P6910029884229255604.a, A252736, A252736.P2865412191134230649.f1, A252736.P2865412191134230649.a, A297108, A297108.P15990807296291497671.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A390430

/-! ## A390430.P2766920865965049687

`A286471(2*(n+1))+A061395(n+1)`
-/

namespace A390430.P2766920865965049687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286471 (2 * (n + 1)) + A061395 (n + 1)

end

end A390430.P2766920865965049687

namespace A390430

/-- `A286471(2*(n+1))+A061395(n+1)` -/
def P2766920865965049687.Spec : Prop :=
  ∀ n, P2766920865965049687.a n = A390430 (n + 1)

end A390430

/-! ## A390430.P14077830380273109564

`A055396(n+1)+A055396(A298268(n+1))`
-/

namespace A390430.P14077830380273109564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) + A055396 (A298268 (n + 1)).toNat

end

end A390430.P14077830380273109564

namespace A390430

/-- `A055396(n+1)+A055396(A298268(n+1))` -/
def P14077830380273109564.Spec : Prop :=
  ∀ n, P14077830380273109564.a n = A390430 (n + 1)

end A390430

/-! ## A390430.P17760276010728340364

`A056239(A066048(n+1))`
-/

namespace A390430.P17760276010728340364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A066048 (n + 1)).toNat

end

end A390430.P17760276010728340364

namespace A390430

/-- `A056239(A066048(n+1))` -/
def P17760276010728340364.Spec : Prop :=
  ∀ n, P17760276010728340364.a n = A390430 (n + 1)

end A390430

/-!
# A390431: Number of multisets summing to n that do not contain 1 and are not the first sums of any multiset.

The programs for A390431, there is no canonical definition to state claims against.
-/

/-! ## A390431.P6214181404259537991

`Δ[A000041(n)]-A390446(n+1)`
-/

namespace A390431.P6214181404259537991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A390446 (n + 1)

end

end A390431.P6214181404259537991

/-! ## A390431.P4726470993808787349

`A238353(A087327(2*n+5))-A390446(n+1)`
-/

namespace A390431.P4726470993808787349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238353 (A087327 (2 * n + 5)).toNat - A390446 (n + 1)

end

end A390431.P4726470993808787349

/-! ## A390431.P6856894304839735342

`A000041(n+1)-(A390446(n+1)+A000041(n))`
-/

namespace A390431.P6856894304839735342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A390446 (n + 1) + A000041 n)

end

end A390431.P6856894304839735342

/-! ## A390431.P3890971896358532434

`A390447(n+1)-A000041(n)`
-/

namespace A390431.P3890971896358532434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390447 (n + 1) - A000041 n

end

end A390431.P3890971896358532434

/-! ## A390431.P8537421499283322250

`A390447(n+1)-A213598(n)`
-/

namespace A390431.P8537421499283322250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390447 (n + 1) - A213598 n

end

end A390431.P8537421499283322250

/-!
# A390432: First sums of the n-th composition in standard order.

The programs for A390432, there is no canonical definition to state claims against.
-/

/-! ## A390432.P11208036503022576789

`A060953(A038460(n+1))+2`
-/

namespace A390432.P11208036503022576789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A038460 (n + 1)).toNat + 2

end

end A390432.P11208036503022576789

/-! ## A390432.P17402199922741052571

`A143331(2*(n+1))+A104248(A088560(n+1))`
-/

namespace A390432.P17402199922741052571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143331 (2 * (n + 1)) + A104248 (A088560 (n + 1)).toNat

end

end A390432.P17402199922741052571

/-!
# A390433: Triangle read by rows, Lah numbers with level 2.

The programs for A390433, the canonical program `A390433.P12340580154453304815` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390433 has offset 0).

The definition of A390433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 863 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390433.P12340580154453304815

`T(n-1,k-1)+(row(n)+col(n)-1)²*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390433

/-- `T(n-1,k-1)+(row(n)+col(n)-1)²*T(n-1,k)` -/
def P12340580154453304815.Spec : Prop :=
  ∀ n, P12340580154453304815.a n = A390433 n

theorem P12340580154453304815.correct : P12340580154453304815.Spec := by
  intro n
  simp only [A390433]

end A390433

/-!
# A390434: Triangle read by rows, Lah numbers with level 3.

The programs for A390434, the canonical program `A390434.P11213081078864682632` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390434 has offset 0).

The definition of A390434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390434.P11213081078864682632

`T(n-1,k-1)+(row(n)+col(n)-1)^3*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390434

/-- `T(n-1,k-1)+(row(n)+col(n)-1)^3*T(n-1,k)` -/
def P11213081078864682632.Spec : Prop :=
  ∀ n, P11213081078864682632.a n = A390434 n

theorem P11213081078864682632.correct : P11213081078864682632.Spec := by
  intro n
  simp only [A390434]

end A390434

/-! ## A390434.P234424668124225260

`A129062(n)^(a(n-1)+3)` with `a(0)=1`
-/

namespace A390434.P234424668124225260
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A129062 n : ℝ) ^ (a (n - 1) + 3)

end

end A390434.P234424668124225260

namespace A390434

/-- `A129062(n)^(a(n-1)+3)` -/
def P234424668124225260.Spec : Prop :=
  ∀ n, P234424668124225260.a n = (A390434 n : ℝ)

end A390434

/-! ## A390434.P15337413234373586579

`A271703(n)^(a(n-1)+3)` with `a(0)=1`
-/

namespace A390434.P15337413234373586579
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A271703 n : ℝ) ^ (a (n - 1) + 3)

end

end A390434.P15337413234373586579

namespace A390434

/-- `A271703(n)^(a(n-1)+3)` -/
def P15337413234373586579.Spec : Prop :=
  ∀ n, P15337413234373586579.a n = (A390434 n : ℝ)

end A390434

/-! ## A390434.P1062939918155795473

`A301924(n+1)^(a(n-1)+3)` with `a(0)=1`
-/

namespace A390434.P1062939918155795473
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A301924 (n + 1) : ℝ) ^ (a (n - 1) + 3)

end

end A390434.P1062939918155795473

namespace A390434

/-- `A301924(n+1)^(a(n-1)+3)` -/
def P1062939918155795473.Spec : Prop :=
  ∀ n, P1062939918155795473.a n = (A390434 n : ℝ)

end A390434

/-!
# A390435: Squares of Achilles numbers.

The programs for A390435, there is no canonical definition to state claims against.
-/

/-! ## A390435.P17783299347109968079

`A052486(n+1)²`
-/

namespace A390435.P17783299347109968079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1) ^ 2

end

end A390435.P17783299347109968079

/-! ## A390435.P12034263408276087819

`record[A052486(A291769(n))²]`
-/

namespace A390435.P12034263408276087819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (A291769 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390435.P12034263408276087819

/-! ## A390435.P12743854762180253748

`A052486(A000027(n+1))^2`
-/

namespace A390435.P12743854762180253748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (A000027 (n + 1)).toNat ^ 2

end

end A390435.P12743854762180253748

/-! ## A390435.P4571725790136416877

`A052486(A028310(n+1))^2`
-/

namespace A390435.P4571725790136416877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (A028310 (n + 1)).toNat ^ 2

end

end A390435.P4571725790136416877

/-! ## A390435.P8459353268429601943

`A052486(n+1)^A001316(A001316(n))`
-/

namespace A390435.P8459353268429601943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052486 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A390435.P8459353268429601943

/-! ## A390435.P2600623642501845871

`A052486(A000027(n+1))*A052486(n+1)`
-/

namespace A390435.P2600623642501845871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (A000027 (n + 1)).toNat * A052486 (n + 1)

end

end A390435.P2600623642501845871

/-! ## A390435.P3868907996592595777

`A052486(n+1)^A000005(A000040(n+1))`
-/

namespace A390435.P3868907996592595777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052486 (n + 1) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A390435.P3868907996592595777

/-! ## A390435.P12870966585063274429

`A052486(A001057(2*n+1))^2`
-/

namespace A390435.P12870966585063274429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (A001057 (2 * n + 1)).toNat ^ 2

end

end A390435.P12870966585063274429

/-! ## A390435.P4303247836257564195

`A052486(A001057(2*n+1))*A052486(n+1)`
-/

namespace A390435.P4303247836257564195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (A001057 (2 * n + 1)).toNat * A052486 (n + 1)

end

end A390435.P4303247836257564195

/-! ## A390435.P7807641024834122378

`A374291(A399522(n+1))`
-/

namespace A390435.P7807641024834122378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374291 (A399522 (n + 1)).toNat

end

end A390435.P7807641024834122378

/-! ## A390435.P5435640626591192294

`A001694(A399522(n+1))*A052486(n+1)`
-/

namespace A390435.P5435640626591192294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A399522 (n + 1)).toNat * A052486 (n + 1)

end

end A390435.P5435640626591192294

/-! ## A390435.P10386966974066087608

`record[A052486(A262519(n))²]`
-/

namespace A390435.P10386966974066087608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (A262519 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390435.P10386966974066087608

/-! ## A390435.P16551797842532461303

`A052486(n+1)^A000005(A006512(n+1))`
-/

namespace A390435.P16551797842532461303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052486 (n + 1) : ℚ) ^ (A000005 (A006512 (n + 1)).toNat : ℤ)

end

end A390435.P16551797842532461303

/-! ## A390435.P1310650334927826190

`A052486(n+1)^A000005(A198776(n+1))`
-/

namespace A390435.P1310650334927826190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052486 (n + 1) : ℚ) ^ (A000005 (A198776 (n + 1)).toNat : ℤ)

end

end A390435.P1310650334927826190

/-! ## A390435.P5581322655243677921

`A052486(n+1)^A000005(A077128(n+1))`
-/

namespace A390435.P5581322655243677921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052486 (n + 1) : ℚ) ^ (A000005 (A077128 (n + 1)).toNat : ℤ)

end

end A390435.P5581322655243677921

/-!
# A390437: Numbers whose prime factorization exponents are not divisible by 3.

The programs for A390437, the canonical program `A390437.P11752335666826313270` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390437 has offset 1).

The definition of A390437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8955 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390437.P1940285333733005029

`eq[1, gcd(3, A072411(n+1))]+1`
-/

namespace A390437.P1940285333733005029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A072411 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A390437.P1940285333733005029

namespace A390437

/-- `eq[1, gcd(3, A072411(n+1))]+1` -/
def P1940285333733005029.Spec : Prop :=
  ∀ n, (P1940285333733005029.a n : ℤ) = A390437 (n + 1)

end A390437

/-! ## A390437.P11752335666826313270

`eq[0, A366124(n+1)]+1`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390437

/-- `eq[0, A366124(n+1)]+1` -/
def P11752335666826313270.Spec : Prop :=
  ∀ n, (P11752335666826313270.a n : ℤ) = A390437 (n + 1)

theorem P11752335666826313270.correct : P11752335666826313270.Spec := by
  intro n
  simp only [A390437, Nat.add_sub_cancel]

end A390437

/-! ## A390437.P13559949242491325808

`eq[1, A366126(n+1)]+1`
-/

namespace A390437.P13559949242491325808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366126 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A390437.P13559949242491325808

namespace A390437

/-- `eq[1, A366126(n+1)]+1` -/
def P13559949242491325808.Spec : Prop :=
  ∀ n, (P13559949242491325808.a n : ℤ) = A390437 (n + 1)

end A390437

/-! ## A390437.P6448185684186794306

`eq[1, A380395(n+1)]+1`
-/

namespace A390437.P6448185684186794306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380395 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A390437.P6448185684186794306

namespace A390437

/-- `eq[1, A380395(n+1)]+1` -/
def P6448185684186794306.Spec : Prop :=
  ∀ n, (P6448185684186794306.a n : ℤ) = A390437 (n + 1)

end A390437

/-! ## A390437.P7759101062930813653

`eq[1, A380396(n+1)]+1`
-/

namespace A390437.P7759101062930813653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380396 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A390437.P7759101062930813653

namespace A390437

/-- `eq[1, A380396(n+1)]+1` -/
def P7759101062930813653.Spec : Prop :=
  ∀ n, (P7759101062930813653.a n : ℤ) = A390437 (n + 1)

end A390437

/-! ## A390437.P1893154923423780863

`lt[A366125(n+1), 1]+1`
-/

namespace A390437.P1893154923423780863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366125 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A390437.P1893154923423780863

namespace A390437

/-- `lt[A366125(n+1), 1]+1` -/
def P1893154923423780863.Spec : Prop :=
  ∀ n, (P1893154923423780863.a n : ℤ) = A390437 (n + 1)

end A390437

/-! ## A390437.P7355286040193411921

`record[gcd(n+1, A399737(n+1))]`
-/

namespace A390437.P7355286040193411921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A399737 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390437.P7355286040193411921

namespace A390437

/-- `record[gcd(n+1, A399737(n+1))]` -/
def P7355286040193411921.Spec : Prop :=
  ∀ n, (P7355286040193411921.a n : ℤ) = A390437 (n + 1)

end A390437

/-! ## A390437.P7434130058594715034

`record[A000027(n+1)/A366126(n+1)]`
-/

namespace A390437.P7434130058594715034
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A366126 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390437.P7434130058594715034

namespace A390437

/-- `record[A000027(n+1)/A366126(n+1)]` -/
def P7434130058594715034.Spec : Prop :=
  ∀ n, P7434130058594715034.a n = (A390437 (n + 1) : ℚ)

end A390437

/-! ## A390437.P13126318530586225982

`lt[A366126(n+1), A373531(A136019(n+1)+1)]+1`
-/

namespace A390437.P13126318530586225982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373531 (A136019 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A390437.P13126318530586225982

namespace A390437

/-- `lt[A366126(n+1), A373531(A136019(n+1)+1)]+1` -/
def P13126318530586225982.Spec : Prop :=
  ∀ n, (P13126318530586225982.a n : ℤ) = A390437 (n + 1)

end A390437

/-! ## A390437.P10235437950620948987

`lt[A366126(n+1), A373531(A366126(n+1)+1)]+1`
-/

namespace A390437.P10235437950620948987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373531 (A366126 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A390437.P10235437950620948987

namespace A390437

/-- `lt[A366126(n+1), A373531(A366126(n+1)+1)]+1` -/
def P10235437950620948987.Spec : Prop :=
  ∀ n, (P10235437950620948987.a n : ℤ) = A390437 (n + 1)

end A390437

/-! ## A390437.P9712168081272381535

`and(A086827(n+1), A392632(n+1))`
-/

namespace A390437.P9712168081272381535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A392632 (n + 1))

end

end A390437.P9712168081272381535

namespace A390437

/-- `and(A086827(n+1), A392632(n+1))` -/
def P9712168081272381535.Spec : Prop :=
  ∀ n, P9712168081272381535.a n = A390437 (n + 1)

end A390437

/-!
# A390439: Exponentially noncomposite numbers: numbers whose prime factorization exponents are all noncomposites.

The programs for A390439, there is no canonical definition to state claims against.
-/

/-! ## A390439.P5302376605151850523

`comp[A322448(n+1)-1]+1`
-/

namespace A390439.P5302376605151850523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322448 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A390439.P5302376605151850523

/-! ## A390439.P15446641349145372840

`record[A366994(n+1)]`
-/

namespace A390439.P15446641349145372840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390439.P15446641349145372840

/-! ## A390439.P8778632364358282949

`A366994(eq[n+1, A366994(n+1)]+1)`
-/

namespace A390439.P8778632364358282949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366994 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366994 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A390439.P8778632364358282949

/-!
# A390440: Exponentially 5-rough numbers: numbers whose prime factorization exponents are all coprime to 6.

The programs for A390440, the canonical program `A390440.P2827321994001143984` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390440 has offset 1).

The definition of A390440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390440.P6173635447243039778

`eq[1, A086436(6+A005361(n+1))]+1`
-/

namespace A390440.P6173635447243039778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (6 + A005361 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A390440.P6173635447243039778

namespace A390440

/-- `eq[1, A086436(6+A005361(n+1))]+1` -/
def P6173635447243039778.Spec : Prop :=
  ∀ n, (P6173635447243039778.a n : ℤ) = A390440 (n + 1)

end A390440

/-! ## A390440.P2827321994001143984

`filter[A390437(n+1), A295316(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A390440

/-- `filter[A390437(n+1), A295316(#)]` -/
def P2827321994001143984.Spec : Prop :=
  ∀ n, P2827321994001143984.a n = A390440 (n + 1)

theorem P2827321994001143984.correct : P2827321994001143984.Spec := by
  intro n
  simp only [A390440, Nat.add_sub_cancel]

end A390440

/-! ## A390440.P4554091112777683809

`∩[A390439(n+1), A390441(n+1)]`
-/

namespace A390440.P4554091112777683809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390440.P4554091112777683809

namespace A390440

/-- `∩[A390439(n+1), A390441(n+1)]` -/
def P4554091112777683809.Spec : Prop :=
  ∀ n, (P4554091112777683809.a n : ℤ) = A390440 (n + 1)

end A390440

/-! ## A390440.P8455741661086212986

`eq[A307037(n+1), A384053(n+1)]+1`
-/

namespace A390440.P8455741661086212986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384053 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A390440.P8455741661086212986

namespace A390440

/-- `eq[A307037(n+1), A384053(n+1)]+1` -/
def P8455741661086212986.Spec : Prop :=
  ∀ n, (P8455741661086212986.a n : ℤ) = A390440 (n + 1)

end A390440

/-! ## A390440.P2980422455541900008

`lt[A010145(A294875(n+1)), 2]+1`
-/

namespace A390440.P2980422455541900008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010145 (A294875 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A390440.P2980422455541900008

namespace A390440

/-- `lt[A010145(A294875(n+1)), 2]+1` -/
def P2980422455541900008.Spec : Prop :=
  ∀ n, (P2980422455541900008.a n : ℤ) = A390440 (n + 1)

end A390440

/-! ## A390440.P2076811576809602086

`∪[A077377(n+1), A169743(A331687(n+1))]`
-/

namespace A390440.P2076811576809602086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169743 (A331687 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390440.P2076811576809602086

namespace A390440

/-- `∪[A077377(n+1), A169743(A331687(n+1))]` -/
def P2076811576809602086.Spec : Prop :=
  ∀ n, (P2076811576809602086.a n : ℤ) = A390440 (n + 1)

end A390440

/-! ## A390440.P11458040925192396018

`∪[A005117(n+1), A328867(A306190(n+1)+1)]`
-/

namespace A390440.P11458040925192396018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328867 (A306190 (n + 1) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390440.P11458040925192396018

namespace A390440

/-- `∪[A005117(n+1), A328867(A306190(n+1)+1)]` -/
def P11458040925192396018.Spec : Prop :=
  ∀ n, (P11458040925192396018.a n : ℤ) = A390440 (n + 1)

end A390440

/-! ## A390440.P1942868099245516859

`∪[A005117(n+1), A399997(A389265(3*(n+1)))]`
-/

namespace A390440.P1942868099245516859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399997 (A389265 (3 * (n + 1))).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390440.P1942868099245516859

namespace A390440

/-- `∪[A005117(n+1), A399997(A389265(3*(n+1)))]` -/
def P1942868099245516859.Spec : Prop :=
  ∀ n, (P1942868099245516859.a n : ℤ) = A390440 (n + 1)

end A390440

/-!
# A390441: Numbers whose prime factorization exponents are neither 2 nor 3.

The programs for A390441, there is no canonical definition to state claims against.
-/

/-! ## A390441.P2488806188305563957

`lt[A277698(A000188(n+1))-1, 1]+1`
-/

namespace A390441.P2488806188305563957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277698 (A000188 (n + 1)).toNat - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A390441.P2488806188305563957

/-!
# A390442: a(n) = Sum_{k<=10^n} d(k^2), where d(k^2) = number of divisors function A000005 for k^2.

The programs for A390442, the canonical program `A390442.P3251703464741091877` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390442 has offset 0).

The definition of A390442 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390442.P3251703464741091877

`A061503(10^n)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A390442

/-- `A061503(10^n)` -/
def P3251703464741091877.Spec : Prop :=
  ∀ n, P3251703464741091877.a n = A390442 n

theorem P3251703464741091877.correct : P3251703464741091877.Spec := by
  intro n
  simp only [A390442]

end A390442

/-!
# A390443: Irregular triangle read by rows: T(n,k) is the sum of even numbers in the k-th 2-dense sublist of divisors of n, with n >= 1, k >= 1.

The programs for A390443, there is no canonical definition to state claims against.
-/

/-! ## A390443.P11104610161808900661

`A384149(n+1)-A384226(n+1)`
-/

namespace A390443.P11104610161808900661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384149 (n + 1) - A384226 (n + 1)

end

end A390443.P11104610161808900661

/-! ## A390443.P2276526181015804810

`A379288(n+1)+A389592(n+1)-A384226(n+1)`
-/

namespace A390443.P2276526181015804810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379288 (n + 1) + (A389592 (n + 1) - A384226 (n + 1))

end

end A390443.P2276526181015804810

/-! ## A390443.P10956088264277612878

`and(A345641(A276086(n+4)), A389592(n+1))`
-/

namespace A390443.P10956088264277612878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A345641 (A276086 (n + 4)).toNat) (A389592 (n + 1))

end

end A390443.P10956088264277612878

/-!
# A390444: Number of multisets whose first sums are the prime indices of 2n + 1.

The programs for A390444, there is no canonical definition to state claims against.
-/

/-! ## A390444.P8306904360356619611

`A086971(A322783(n+1))`
-/

namespace A390444.P8306904360356619611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086971 (A322783 (n + 1)).toNat

end

end A390444.P8306904360356619611

/-! ## A390444.P11003113774292030424

`A127322(A329883(n+1))`
-/

namespace A390444.P11003113774292030424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127322 (A329883 (n + 1)).toNat

end

end A390444.P11003113774292030424

/-! ## A390444.P5275873115255354691

`A366785(A291051(n+1))`
-/

namespace A390444.P5275873115255354691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366785 (A291051 (n + 1)).toNat

end

end A390444.P5275873115255354691

/-! ## A390444.P4240030981538616130

`A127322(A025487(comp[∑[n-1]]))`
-/

namespace A390444.P4240030981538616130
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127322 (A025487 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A390444.P4240030981538616130

/-! ## A390444.P14974462929412894693

`runs[A137735(n)]%A095062(3*n+2)`
-/

namespace A390444.P14974462929412894693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) (A095062 (3 * n + 2))

end

end A390444.P14974462929412894693

/-!
# A390445: Heinz numbers of integer partitions that are not the first sums of any nonempty multiset.

The programs for A390445, there is no canonical definition to state claims against.
-/

/-! ## A390445.P7258223663516309299

`comp[A390449(n+1)-1]+1`
-/

namespace A390445.P7258223663516309299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390449 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A390445.P7258223663516309299

/-! ## A390445.P14560270069763407817

`comp[A390449(n+1)-A000007(n)]`
-/

namespace A390445.P14560270069763407817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390449 (n + 1) - A000007 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A390445.P14560270069763407817

/-! ## A390445.P171094199631126680

`comp[A057427(n)*A390449(n+1)]`
-/

namespace A390445.P171094199631126680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A390449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A390445.P171094199631126680

/-! ## A390445.P9210395308093829453

`comp[A390449(n+1)%A077115(n+1)]`
-/

namespace A390445.P9210395308093829453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390449 (n + 1)) (A077115 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A390445.P9210395308093829453

/-! ## A390445.P13765257768286108279

`lt[A062157(A059729(n)), A060951(n+1)]`
-/

namespace A390445.P13765257768286108279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A059729 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390445.P13765257768286108279

/-!
# A390446: Number of multisets summing to n that are the first sums of some nonempty multiset.

The programs for A390446, there is no canonical definition to state claims against.
-/

/-! ## A390446.P12833825976822993980

`Δ[A000041(n)]-A390431(n+1)`
-/

namespace A390446.P12833825976822993980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A390431 (n + 1)

end

end A390446.P12833825976822993980

/-! ## A390446.P18268662761635640548

`A000041(n+1)-(A390431(n+1)+A000041(n))`
-/

namespace A390446.P18268662761635640548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A390431 (n + 1) + A000041 n)

end

end A390446.P18268662761635640548

/-! ## A390446.P17380780813898308101

`A000041(n+1)-A390447(n+1)`
-/

namespace A390446.P17380780813898308101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A390447 (n + 1)

end

end A390446.P17380780813898308101

/-! ## A390446.P603737515147572830

`A008284(A005893(n+3))-A390447(n+1)`
-/

namespace A390446.P603737515147572830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A005893 (n + 3)).toNat - A390447 (n + 1)

end

end A390446.P603737515147572830

/-! ## A390446.P8712515219415088766

`A049988(n+1)+A389811(n+1)-A390447(n+1)`
-/

namespace A390446.P8712515219415088766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (n + 1) + (A389811 (n + 1) - A390447 (n + 1))

end

end A390446.P8712515219415088766

/-!
# A390447: Number of multisets summing to n not equal to the first sums of any nonempty multiset.

The programs for A390447, there is no canonical definition to state claims against.
-/

/-! ## A390447.P17805990922097982488

`A390431(n+1)+A000041(n)`
-/

namespace A390447.P17805990922097982488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390431 (n + 1) + A000041 n

end

end A390447.P17805990922097982488

/-! ## A390447.P13442137973297223268

`A390431(n+1)+A213598(n)`
-/

namespace A390447.P13442137973297223268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390431 (n + 1) + A213598 n

end

end A390447.P13442137973297223268

/-! ## A390447.P6801437923398181594

`A000041(n+1)-A390446(n+1)`
-/

namespace A390447.P6801437923398181594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A390446 (n + 1)

end

end A390447.P6801437923398181594

/-! ## A390447.P163748716858337198

`A299200(A000040(n+1))-A390446(n+1)`
-/

namespace A390447.P163748716858337198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (A000040 (n + 1)).toNat - A390446 (n + 1)

end

end A390447.P163748716858337198

/-! ## A390447.P4479650478347456423

`A390431(n+1)+A389811(n)+A049988(n)`
-/

namespace A390447.P4479650478347456423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390431 (n + 1) + (A389811 n + A049988 n)

end

end A390447.P4479650478347456423

/-!
# A390448: Numbers whose prime indices are the first sums of some weakly increasing sequence of positive integers.

The programs for A390448, there is no canonical definition to state claims against.
-/

/-! ## A390448.P8726925584362722511

`record[Δ[A002620(A390445(n+1))]]`
-/

namespace A390448.P8726925584362722511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A390445 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390448.P8726925584362722511

/-! ## A390448.P9827109187769143415

`eq[A138703(n), A353294(n+1)]`
-/

namespace A390448.P9827109187769143415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138703 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353294 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A390448.P9827109187769143415

/-! ## A390448.P13704122832984707578

`∩[2*n+1, A333638(n+2)]`
-/

namespace A390448.P13704122832984707578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333638 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390448.P13704122832984707578

/-! ## A390448.P18196279024342333614

`filter[A333638(n+1), A266070(#)]`
-/

namespace A390448.P18196279024342333614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A390448.P18196279024342333614

/-! ## A390448.P2834085446001693643

`filter[A333638(n+2), A000035(#)]`
-/

namespace A390448.P2834085446001693643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333638 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A390448.P2834085446001693643

/-!
# A390449: Heinz number of first sums of prime indices of n.

The programs for A390449, there is no canonical definition to state claims against.
-/

/-! ## A390449.P7930464581939943527

`A000005(A052126(n+1)^A399995(n+1))`
-/

namespace A390449.P7930464581939943527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A052126 (n + 1) : ℚ) ^ (A399995 (n + 1) : ℤ))).toNat

end

end A390449.P7930464581939943527

/-!
# A390450: Sum of indices of the positions of 2 in all heapable permutations of length n (positions starting from 0).

The programs for A390450, there is no canonical definition to state claims against.
-/

/-! ## A390450.P6820598380841565395

`A048299(A148946(n+1))`
-/

namespace A390450.P6820598380841565395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048299 (A148946 (n + 1)).toNat

end

end A390450.P6820598380841565395

/-! ## A390450.P7741103421133120979

`A319916(n*A244154(n))`
-/

namespace A390450.P7741103421133120979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319916 ((n : ℤ) * A244154 n).toNat

end

end A390450.P7741103421133120979

/-!
# A390451: Numbers k such that the concatenation of a permutation of its divisors is prime.

The programs for A390451, there is no canonical definition to state claims against.
-/

/-! ## A390451.P16124441938316234425

`A198772(n+3)%A177152(A001358(n+1))`
-/

namespace A390451.P16124441938316234425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198772 (n + 3)) (A177152 (A001358 (n + 1)).toNat)

end

end A390451.P16124441938316234425

/-! ## A390451.P7252604640657548054

`A329963(n+2)+A256280(A080859(2*n+1))`
-/

namespace A390451.P7252604640657548054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329963 (n + 2) + A256280 (A080859 (2 * n + 1)).toNat

end

end A390451.P7252604640657548054

/-! ## A390451.P10502328563096410883

`A329963(n+2)-A365421(A211636(3*n+4))`
-/

namespace A390451.P10502328563096410883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329963 (n + 2) - A365421 (A211636 (3 * n + 4)).toNat

end

end A390451.P10502328563096410883

/-! ## A390451.P6788555797666577574

`or(A055667(A049404(2*n+1)), A198772(n+3))`
-/

namespace A390451.P6788555797666577574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055667 (A049404 (2 * n + 1)).toNat) (A198772 (n + 3))

end

end A390451.P6788555797666577574

/-! ## A390451.P5013914667447686944

`filter[A171524(n+1), A353815(#)]`
-/

namespace A390451.P5013914667447686944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353815 (f1 j).toNat = 1) n)

end

end A390451.P5013914667447686944

/-!
# A390452: a(n) = Sum_{k=0..n} binomial(3*n+3*k+1,n-k).

The programs for A390452, the canonical program `A390452.P4102427067127400104` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390452 has offset 0).

The definition of A390452 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(3*n+3*#+1, n-#)]` (program `A390452.P4102427067127400104`, by `A390452.P4102427067127400104.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390452.P4102427067127400104

`∑{#}[n, C(3*n+3*#+1, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390452

/-- `∑{#}[n, C(3*n+3*#+1, n-#)]` -/
def P4102427067127400104.Spec : Prop :=
  ∀ n, (P4102427067127400104.a n : ℤ) = A390452 n

theorem P4102427067127400104.correct : P4102427067127400104.Spec := by
  intro n
  simp only [A390452]

end A390452

/-!
# A390454: Records in A390108.

The programs for A390454, there is no canonical definition to state claims against.
-/

/-! ## A390454.P2811004940336138377

`record[A390108(n+1)]`
-/

namespace A390454.P2811004940336138377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390108 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A390454.P2811004940336138377

/-! ## A390454.P3094123157288977136

`A390108(A390453(n+1))`
-/

namespace A390454.P3094123157288977136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390108 (A390453 (n + 1)).toNat

end

end A390454.P3094123157288977136

/-!
# A390455: a(n) = Sum_{k=0..n} binomial(3*n+2*k+2,n-k).

The programs for A390455, the canonical program `A390455.P17933915389210504709` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390455 has offset 0).

The definition of A390455 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(3*n+2*#+2, n-#)]` (program `A390455.P17933915389210504709`, by `A390455.P17933915389210504709.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390455.P17933915389210504709

`∑{#}[n, C(3*n+2*#+2, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390455

/-- `∑{#}[n, C(3*n+2*#+2, n-#)]` -/
def P17933915389210504709.Spec : Prop :=
  ∀ n, (P17933915389210504709.a n : ℤ) = A390455 n

theorem P17933915389210504709.correct : P17933915389210504709.Spec := by
  intro n
  simp only [A390455]

end A390455

/-!
# A390456: a(n) = Sum_{k=0..n} binomial(3*n+3*k+2,n-k).

The programs for A390456, the canonical program `A390456.P10190430294895522746` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390456 has offset 0).

The definition of A390456 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(3*n+3*#+2, n-#)]` (program `A390456.P10190430294895522746`, by `A390456.P10190430294895522746.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390456.P10190430294895522746

`∑{#}[n, C(3*n+3*#+2, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390456

/-- `∑{#}[n, C(3*n+3*#+2, n-#)]` -/
def P10190430294895522746.Spec : Prop :=
  ∀ n, (P10190430294895522746.a n : ℤ) = A390456 n

theorem P10190430294895522746.correct : P10190430294895522746.Spec := by
  intro n
  simp only [A390456]

end A390456

/-!
# A390457: a(1) = 1 thereafter a(n) = floor(k(n)^n) where k(n) = a(1).a(2)a(3)...a(n-1) = 1.111... is the decimal digit concatenation of all preceding terms.

The programs for A390457, there is no canonical definition to state claims against.
-/

/-! ## A390457.P7512918596835710820

`A094996(n+1)%A250477(C(n+3, 2)-2)`
-/

namespace A390457.P7512918596835710820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094996 (n + 1)) (A250477 (Nat.choose (n + 3) 2 - 2))

end

end A390457.P7512918596835710820

/-! ## A390457.P3558265323681758016

`A094996(n+1)%A046101(A250474(n+1))`
-/

namespace A390457.P3558265323681758016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094996 (n + 1)) (A046101 (A250474 (n + 1)).toNat)

end

end A390457.P3558265323681758016

/-! ## A390457.P12961085498906815398

`A094996(n+1)%A063011(A094996(n))`
-/

namespace A390457.P12961085498906815398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094996 (n + 1)) (A063011 (A094996 n).toNat)

end

end A390457.P12961085498906815398

/-! ## A390457.P9898987225578462305

`A027907(A326707(n+1))*A094996(n+1)`
-/

namespace A390457.P9898987225578462305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027907 (A326707 (n + 1)).toNat * A094996 (n + 1)

end

end A390457.P9898987225578462305

/-! ## A390457.P6948222264200829803

`A072170(A000217(3*n))*A094996(n+1)`
-/

namespace A390457.P6948222264200829803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072170 (A000217 (3 * n)).toNat * A094996 (n + 1)

end

end A390457.P6948222264200829803

/-!
# A390458: Minimum site perimeter of a polyiamond with n cells.

The programs for A390458, the canonical program `A390458.P808166892872410916` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390458 has offset 1).

The definition of A390458 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6599 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390458.P808166892872410916

`A060018(A137228(n+2))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A390458

/-- `A060018(A137228(n+2))` -/
def P808166892872410916.Spec : Prop :=
  ∀ n, P808166892872410916.a n = A390458 (n + 1)

theorem P808166892872410916.correct : P808166892872410916.Spec := by
  intro n
  simp only [A390458, Nat.add_sub_cancel]

end A390458

/-! ## A390458.P6112408710461365411

`A102515(A116942(3*n+1)+1)`
-/

namespace A390458.P6112408710461365411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102515 (A116942 (3 * n + 1) + 1).toNat

end

end A390458.P6112408710461365411

namespace A390458

/-- `A102515(A116942(3*n+1)+1)` -/
def P6112408710461365411.Spec : Prop :=
  ∀ n, P6112408710461365411.a n = A390458 (n + 1)

end A390458

/-! ## A390458.P18053335570742813167

`A309407(A183988(n+1))+1`
-/

namespace A390458.P18053335570742813167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309407 (A183988 (n + 1)).toNat + 1

end

end A390458.P18053335570742813167

namespace A390458

/-- `A309407(A183988(n+1))+1` -/
def P18053335570742813167.Spec : Prop :=
  ∀ n, P18053335570742813167.a n = A390458 (n + 1)

end A390458

/-! ## A390458.P8017920732047205246

`round(sqrt(A333382(3*n+2)+A028260(3*n+5)))`
-/

namespace A390458.P8017920732047205246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A333382 (3 * n + 2) + A028260 (3 * n + 5) : ℝ))

end

end A390458.P8017920732047205246

namespace A390458

/-- `round(sqrt(A333382(3*n+2)+A028260(3*n+5)))` -/
def P8017920732047205246.Spec : Prop :=
  ∀ n, P8017920732047205246.a n = A390458 (n + 1)

end A390458

/-! ## A390458.P2594969419572743759

`round(sqrt(A357180(3*n+2)+A028260(3*n+5)))`
-/

namespace A390458.P2594969419572743759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A357180 (3 * n + 2) + A028260 (3 * n + 5) : ℝ))

end

end A390458.P2594969419572743759

namespace A390458

/-- `round(sqrt(A357180(3*n+2)+A028260(3*n+5)))` -/
def P2594969419572743759.Spec : Prop :=
  ∀ n, P2594969419572743759.a n = A390458 (n + 1)

end A390458

/-!
# A390464: Column 3 of table A390148.

The programs for A390464, there is no canonical definition to state claims against.
-/

/-! ## A390464.P4968620743402329736

`A390148((20*n+15)/5)`
-/

namespace A390464.P4968620743402329736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390148 (SequenceMachineLib.roundAway ((20 * n + 15 : ℚ) / 5)).toNat

end

end A390464.P4968620743402329736

/-!
# A390465: Column 4 of table A390148.

The programs for A390465, there is no canonical definition to state claims against.
-/

/-! ## A390465.P3668304871483273581

`A390148(4*(n+1))`
-/

namespace A390465.P3668304871483273581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390148 (4 * (n + 1))

end

end A390465.P3668304871483273581

/-!
# A390467: Smallest composite member of an arithmetic progression of length k >= 3 where all preceding terms are primes.

The programs for A390467, there is no canonical definition to state claims against.
-/

/-! ## A390467.P1781267517413218719

`∩[A046350(n+1), A232779(n)]`
-/

namespace A390467.P1781267517413218719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232779 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390467.P1781267517413218719

/-! ## A390467.P7864582884163520289

`∩[A046350(n+1), A323733(n+1)]`
-/

namespace A390467.P7864582884163520289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323733 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390467.P7864582884163520289

/-! ## A390467.P2709479763760402127

`A071904(lt[A305148(n), A376755(n+1)])`
-/

namespace A390467.P2709479763760402127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305148 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A390467.P2709479763760402127

/-! ## A390467.P291216104175445157

`∩[A046350(n+1), A338331(n+1)]`
-/

namespace A390467.P291216104175445157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390467.P291216104175445157

/-! ## A390467.P13681289852102580492

`∩[A046350(n+1), A338555(n+1)]`
-/

namespace A390467.P13681289852102580492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390467.P13681289852102580492

/-!
# A390468: Average of the number of "ON" cells at n-th stage in the "Ulam-Warburton" two-dimensional cellular automaton (A147562) and the number of toothpicks at n-th stage in the "Toothpick" two-dimensional automaton (A139250).

The programs for A390468, there is no canonical definition to state claims against.
-/

/-! ## A390468.P8037644176768171802

`(A147562(n)+A139250(n))/2`
-/

namespace A390468.P8037644176768171802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147562 n + A139250 n : ℚ) / 2

end

end A390468.P8037644176768171802

/-! ## A390468.P15091036394453426292

`A026741(A266530(Δ[n²])+A147562(n))`
-/

namespace A390468.P15091036394453426292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A266530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A147562 n).toNat

end

end A390468.P15091036394453426292

/-! ## A390468.P243684490519658103

`A004526(A147562(n)+floor(A187220(n+1)/2))`
-/

namespace A390468.P243684490519658103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A147562 n + ⌊(A187220 (n + 1) : ℚ) / 2⌋).toNat

end

end A390468.P243684490519658103

/-! ## A390468.P16604506952838522501

`A004526(A147562(n)+A173522(n)+A173454(n))`
-/

namespace A390468.P16604506952838522501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A147562 n + (A173522 n + A173454 n)).toNat

end

end A390468.P16604506952838522501

/-! ## A390468.P7448690915175389399

`A004526(A147562(n)+2*A153006(n)-A152998(n))`
-/

namespace A390468.P7448690915175389399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A147562 n + (2 * A153006 n - A152998 n)).toNat

end

end A390468.P7448690915175389399

/-! ## A390468.P3396849007151372929

`A004526(A147562(n)+A266530(2*(n+1))-A160552(n))`
-/

namespace A390468.P3396849007151372929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A147562 n + (A266530 (2 * (n + 1)) - A160552 n)).toNat

end

end A390468.P3396849007151372929

/-!
# A390469: Array read by ascending antidiagonals: A(n,k) = [x^n] (1 - x^k)/(1 - 2*x + x^(1+k)), with k >= 0.

The programs for A390469, there is no canonical definition to state claims against.
-/

/-! ## A390469.P11020270798880891688

`A092921(row(n)+n)`
-/

namespace A390469.P11020270798880891688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (SequenceMachineLib.triRow n + n)

end

end A390469.P11020270798880891688

/-! ## A390469.P7602158303827304674

`A092921(comp[∑[n]-2])`
-/

namespace A390469.P7602158303827304674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A390469.P7602158303827304674

/-! ## A390469.P6612026359831754582

`A342148(A209695(n+1))`
-/

namespace A390469.P6612026359831754582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342148 (A209695 (n + 1)).toNat

end

end A390469.P6612026359831754582

/-! ## A390469.P2170248944411643279

`A287272(A390159(n+1))`
-/

namespace A390469.P2170248944411643279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A390159 (n + 1)).toNat

end

end A390469.P2170248944411643279

/-! ## A390469.P6689703589201074626

`∑{e}[A052856(A369324(n)), #]`
-/

namespace A390469.P6689703589201074626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052856 (A369324 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A390469.P6689703589201074626

/-!
# A390471: a(n) = Sum_{k=0..n} binomial(n+3*k+2,k).

The programs for A390471, the canonical program `A390471.P13962306610908555252` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390471 has offset 0).

The definition of A390471 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+3*#+2, #)]` (program `A390471.P13962306610908555252`, by `A390471.P13962306610908555252.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390471.P13962306610908555252

`∑{#}[n, C(n+3*#+2, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390471

/-- `∑{#}[n, C(n+3*#+2, #)]` -/
def P13962306610908555252.Spec : Prop :=
  ∀ n, (P13962306610908555252.a n : ℤ) = A390471 n

theorem P13962306610908555252.correct : P13962306610908555252.Spec := by
  intro n
  simp only [A390471]

end A390471

/-!
# A390472: a(n) = Sum_{k=0..n} binomial(4*n-2*k+2,n-k).

The programs for A390472, the canonical program `A390472.P3228241714337842559` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390472 has offset 0).

The definition of A390472 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(4*n-2*#+2, n-#)]` (program `A390472.P3228241714337842559`, by `A390472.P3228241714337842559.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390472.P3228241714337842559

`∑{#}[n, C(4*n-2*#+2, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390472

/-- `∑{#}[n, C(4*n-2*#+2, n-#)]` -/
def P3228241714337842559.Spec : Prop :=
  ∀ n, (P3228241714337842559.a n : ℤ) = A390472 n

theorem P3228241714337842559.correct : P3228241714337842559.Spec := by
  intro n
  simp only [A390472]

end A390472

/-! ## A390472.P15564924401116027295

`A361654(A000217(3*n+4)-n)`
-/

namespace A390472.P15564924401116027295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361654 (A000217 (3 * n + 4) - (n : ℤ)).toNat

end

end A390472.P15564924401116027295

namespace A390472

/-- `A361654(A000217(3*n+4)-n)` -/
def P15564924401116027295.Spec : Prop :=
  ∀ n, P15564924401116027295.a n = A390472 n

end A390472

/-! ## A390472.P8955650128472389071

`A013580(A139272(n+1))`
-/

namespace A390472.P8955650128472389071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A139272 (n + 1)).toNat

end

end A390472.P8955650128472389071

namespace A390472

/-- `A013580(A139272(n+1))` -/
def P8955650128472389071.Spec : Prop :=
  ∀ n, P8955650128472389071.a n = A390472 n

end A390472

/-! ## A390472.P1899389638007771809

`A013580(A139273(n+1))`
-/

namespace A390472.P1899389638007771809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A139273 (n + 1)).toNat

end

end A390472.P1899389638007771809

namespace A390472

/-- `A013580(A139273(n+1))` -/
def P1899389638007771809.Spec : Prop :=
  ∀ n, P1899389638007771809.a n = A390472 n

end A390472

/-! ## A390472.P10684338751703314137

`A231147(A004767(n)²-2*n)`
-/

namespace A390472.P10684338751703314137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231147 (A004767 n ^ 2 - (2 * n : ℤ)).toNat

end

end A390472.P10684338751703314137

namespace A390472

/-- `A231147(A004767(n)²-2*n)` -/
def P10684338751703314137.Spec : Prop :=
  ∀ n, P10684338751703314137.a n = A390472 n

end A390472

/-!
# A390473: a(n) = Sum_{k=0..n} binomial(4*n+2*k+2,n-k).

The programs for A390473, the canonical program `A390473.P7319105291058753331` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390473 has offset 0).

The definition of A390473 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(4*n+2*#+2, n-#)]` (program `A390473.P7319105291058753331`, by `A390473.P7319105291058753331.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390473.P7319105291058753331

`∑{#}[n, C(4*n+2*#+2, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390473

/-- `∑{#}[n, C(4*n+2*#+2, n-#)]` -/
def P7319105291058753331.Spec : Prop :=
  ∀ n, (P7319105291058753331.a n : ℤ) = A390473 n

theorem P7319105291058753331.correct : P7319105291058753331.Spec := by
  intro n
  simp only [A390473]

end A390473

/-!
# A390474: a(n) = Sum_{k=0..n} binomial(4*n+3*k+2,n-k).

The programs for A390474, the canonical program `A390474.P3145572163840063601` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390474 has offset 0).

The definition of A390474 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(4*n+3*#+2, n-#)]` (program `A390474.P3145572163840063601`, by `A390474.P3145572163840063601.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390474.P3145572163840063601

`∑{#}[n, C(4*n+3*#+2, n-#)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A390474

/-- `∑{#}[n, C(4*n+3*#+2, n-#)]` -/
def P3145572163840063601.Spec : Prop :=
  ∀ n, (P3145572163840063601.a n : ℤ) = A390474 n

theorem P3145572163840063601.correct : P3145572163840063601.Spec := by
  intro n
  simp only [A390474]

end A390474

/-!
# A390476: a(n) = Sum_{k=0..floor(n/5)} (-1)^k * (6*k+1) * binomial(2*n-4*k+1,n-5*k)/(2*n-4*k+1).

The programs for A390476, there is no canonical definition to state claims against.
-/

/-! ## A390476.P15120674681231765285

`A138194(A121401(n))`
-/

namespace A390476.P15120674681231765285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (A121401 n).toNat

end

end A390476.P15120674681231765285

/-! ## A390476.P15875568328126430280

`A370422(A148155(n))`
-/

namespace A390476.P15875568328126430280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370422 (A148155 n).toNat

end

end A390476.P15875568328126430280

/-! ## A390476.P9095104673941149986

`A259178(A076822(n+1))`
-/

namespace A390476.P9095104673941149986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259178 (A076822 (n + 1)).toNat

end

end A390476.P9095104673941149986

/-! ## A390476.P8736503467862953735

`A389835(A036623(n+1))`
-/

namespace A390476.P8736503467862953735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389835 (A036623 (n + 1)).toNat

end

end A390476.P8736503467862953735

/-!
# A390477: a(n) = Sum_{k=0..floor(n/6)} (-1)^k * (7*k+1) * binomial(2*n-5*k+1,n-6*k)/(2*n-5*k+1).

The programs for A390477, there is no canonical definition to state claims against.
-/

/-! ## A390477.P13013141442063012028

`A056170(A184508(n))+A036767(n)`
-/

namespace A390477.P13013141442063012028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A184508 n).toNat + A036767 n

end

end A390477.P13013141442063012028

/-! ## A390477.P15201163989594582330

`A354996(A000085(n+3))+A036767(n)`
-/

namespace A390477.P15201163989594582330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354996 (A000085 (n + 3)).toNat + A036767 n

end

end A390477.P15201163989594582330

/-!
# A390478: a(n) = Sum_{k=0..floor(n/3)} (4*k+1) * binomial(2*n-2*k+1,n-3*k)/(2*n-2*k+1).

The programs for A390478, the canonical program `A390478.P5375612594405995179` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390478 has offset 0).

The definition of A390478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390478.P4947540382604679606

`A309976(2*n+1)+A309976(2*n)`
-/

namespace A390478.P4947540382604679606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309976 (2 * n + 1) + A309976 (2 * n)

end

end A390478.P4947540382604679606

namespace A390478

/-- `A309976(2*n+1)+A309976(2*n)` -/
def P4947540382604679606.Spec : Prop :=
  ∀ n, P4947540382604679606.a n = A390478 n

end A390478

/-! ## A390478.P5375612594405995179

`A144904(n+1)+A144904(n+1)-A371842(n)`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A390478

/-- `A144904(n+1)+A144904(n+1)-A371842(n)` -/
def P5375612594405995179.Spec : Prop :=
  ∀ n, P5375612594405995179.a n = A390478 n

theorem P5375612594405995179.correct : P5375612594405995179.Spec := by
  intro n
  simp only [A390478]

end A390478

/-! ## A390478.P11592338947570295058

`A106432(A392266(n))`
-/

namespace A390478.P11592338947570295058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A392266 n).toNat

end

end A390478.P11592338947570295058

namespace A390478

/-- `A106432(A392266(n))` -/
def P11592338947570295058.Spec : Prop :=
  ∀ n, P11592338947570295058.a n = A390478 n

end A390478

/-!
# A390479: a(n) = Sum_{k=0..floor(n/4)} (5*k+1) * binomial(2*n-3*k+1,n-4*k)/(2*n-3*k+1).

The programs for A390479, there is no canonical definition to state claims against.
-/

/-! ## A390479.P13985073981882920971

`A054899(A289654(n+3)+16)`
-/

namespace A390479.P13985073981882920971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A289654 (n + 3) + 16).toNat

end

end A390479.P13985073981882920971

/-! ## A390479.P6269505615335727473

`A054899(A000108(n+2))+A007862(3*n+5)`
-/

namespace A390479.P6269505615335727473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A000108 (n + 2)).toNat + A007862 (3 * n + 5)

end

end A390479.P6269505615335727473

/-! ## A390479.P13951634813042271854

`A108141(A148391(n))`
-/

namespace A390479.P13951634813042271854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A148391 n).toNat

end

end A390479.P13951634813042271854

/-!
# A390480: a(n) = Sum_{k=0..floor(n/5)} (6*k+1) * binomial(2*n-4*k+1,n-5*k)/(2*n-4*k+1).

The programs for A390480, there is no canonical definition to state claims against.
-/

/-! ## A390480.P12825097654283450559

`A084500(A259858(n))`
-/

namespace A390480.P12825097654283450559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084500 (A259858 n).toNat

end

end A390480.P12825097654283450559

/-! ## A390480.P15229258598156077613

`A157271(A272484(n+2))`
-/

namespace A390480.P15229258598156077613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A272484 (n + 2)).toNat

end

end A390480.P15229258598156077613

/-! ## A390480.P13837257956104803512

`A366042(n)-A288314(A306939(n))`
-/

namespace A390480.P13837257956104803512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366042 n - A288314 (A306939 n).toNat

end

end A390480.P13837257956104803512

/-! ## A390480.P6239859267742127980

`A254011(A277567(n+1)+A014138(n+2)+2)`
-/

namespace A390480.P6239859267742127980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254011 (A277567 (n + 1) + A014138 (n + 2) + 2).toNat

end

end A390480.P6239859267742127980

/-!
# A390481: a(n) = Sum_{k=0..floor(n/6)} (7*k+1) * binomial(2*n-5*k+1,n-6*k)/(2*n-5*k+1).

The programs for A390481, there is no canonical definition to state claims against.
-/

/-! ## A390481.P12907689876270692611

`A072619(A148330(n))`
-/

namespace A390481.P12907689876270692611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072619 (A148330 n).toNat

end

end A390481.P12907689876270692611

/-! ## A390481.P9392426152004705686

`A109497(A229665(n+2))`
-/

namespace A390481.P9392426152004705686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A229665 (n + 2)).toNat

end

end A390481.P9392426152004705686

/-! ## A390481.P5413659718655638777

`A351357(A000207(n+1))+C(2*n, n)/(n+1)`
-/

namespace A390481.P5413659718655638777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351357 (A000207 (n + 1)).toNat : ℚ) + (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ)

end

end A390481.P5413659718655638777

/-! ## A390481.P11812272422838141982

`A063993(A391697(n))+A000108(n)`
-/

namespace A390481.P11812272422838141982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063993 (A391697 n).toNat + A000108 n

end

end A390481.P11812272422838141982

/-!
# A390482: Least positive integer k such that (2^n*k)^2+1 is prime, or 0 if no such k exists.

The programs for A390482, there is no canonical definition to state claims against.
-/

/-! ## A390482.P4452620967883782121

`A122913(A004277(n))`
-/

namespace A390482.P4452620967883782121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122913 (A004277 n).toNat

end

end A390482.P4452620967883782121

/-! ## A390482.P3711460263191282842

`A122913(A004275(n+1))`
-/

namespace A390482.P3711460263191282842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122913 (A004275 (n + 1)).toNat

end

end A390482.P3711460263191282842

/-! ## A390482.P8522378795401312895

`A122913(A105360(n+1))`
-/

namespace A390482.P8522378795401312895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122913 (A105360 (n + 1)).toNat

end

end A390482.P8522378795401312895

/-! ## A390482.P8923116602556377483

`A122913(A300576(n+2))`
-/

namespace A390482.P8923116602556377483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122913 (A300576 (n + 2)).toNat

end

end A390482.P8923116602556377483

/-!
# A390483: Values of L(2^n), where L(n) is the summatory function of the Liouville function A008836(n).

The programs for A390483, the canonical program `A390483.P1083108438533826406` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390483 has offset 0).

The definition of A390483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390483.P1083108438533826406

`A002819(2^n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A390483

/-- `A002819(2^n)` -/
def P1083108438533826406.Spec : Prop :=
  ∀ n, P1083108438533826406.a n = A390483 n

theorem P1083108438533826406.correct : P1083108438533826406.Spec := by
  intro n
  simp only [A390483]

end A390483

/-! ## A390483.P10959940409711034836

`1-A072203(2^n)`
-/

namespace A390483.P10959940409711034836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A072203 (2 ^ n)

end

end A390483.P10959940409711034836

namespace A390483

/-- `1-A072203(2^n)` -/
def P10959940409711034836.Spec : Prop :=
  ∀ n, P10959940409711034836.a n = A390483 n

end A390483

/-! ## A390483.P8290491446900660359

`and(-1, A002819(A000079(n)))`
-/

namespace A390483.P8290491446900660359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A002819 (A000079 n).toNat)

end

end A390483.P8290491446900660359

namespace A390483

/-- `and(-1, A002819(A000079(n)))` -/
def P8290491446900660359.Spec : Prop :=
  ∀ n, P8290491446900660359.a n = A390483 n

end A390483

/-! ## A390483.P14738625758300906262

`A066035(n)+A002819(A000079(n))`
-/

namespace A390483.P14738625758300906262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066035 n + A002819 (A000079 n).toNat

end

end A390483.P14738625758300906262

namespace A390483

/-- `A066035(n)+A002819(A000079(n))` -/
def P14738625758300906262.Spec : Prop :=
  ∀ n, P14738625758300906262.a n = A390483 n

end A390483

/-! ## A390483.P1520399456090691929

`A326544(n)+A002819(A000079(n))`
-/

namespace A390483.P1520399456090691929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326544 n + A002819 (A000079 n).toNat

end

end A390483.P1520399456090691929

namespace A390483

/-- `A326544(n)+A002819(A000079(n))` -/
def P1520399456090691929.Spec : Prop :=
  ∀ n, P1520399456090691929.a n = A390483 n

end A390483

/-!
# A390485: a(n) = Sum_{k=0..floor(n/3)} (4*k+1) * binomial(3*n-5*k+1,n-3*k)/(3*n-5*k+1).

The programs for A390485, there is no canonical definition to state claims against.
-/

/-! ## A390485.P11093405628203873319

`xor(1, A054899(A086347(n)))`
-/

namespace A390485.P11093405628203873319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A054899 (A086347 n).toNat)

end

end A390485.P11093405628203873319

/-! ## A390485.P15084008356882235383

`A096008(A224677(n))+A000257(n)`
-/

namespace A390485.P15084008356882235383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096008 (A224677 n).toNat + A000257 n

end

end A390485.P15084008356882235383

/-!
# A390489: Decimal expansion of log_2(1 + 1/3).

The programs for A390489, there is no canonical definition to state claims against.
-/

/-! ## A390489.P3330217307237803203

`9-A020864(n+1)`
-/

namespace A390489.P3330217307237803203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A020864 (n + 1 + 1)

end

end A390489.P3330217307237803203

/-! ## A390489.P5782851917859799961

`9-A020857(n+1)`
-/

namespace A390489.P5782851917859799961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A020857 (n + 1 + 1)

end

end A390489.P5782851917859799961

/-! ## A390489.P14698065105989156602

`9-A020859(n+1)`
-/

namespace A390489.P14698065105989156602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A020859 (n + 1 + 1)

end

end A390489.P14698065105989156602

/-! ## A390489.P9355279958084310186

`9-A155921(n+1)`
-/

namespace A390489.P9355279958084310186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A155921 (n + 1 + 1)

end

end A390489.P9355279958084310186

/-!
# A390490: Dirichlet g.f.: (zeta(2*s))^2 / (zeta(s) * zeta(4*s)).

The programs for A390490, the canonical program `A390490.P12259971174261316425` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390490 has offset 1).

The definition of A390490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390490.P8015899195128634541

`∏{e}[n+1, 2*(-1)^#]/∏{e}[n+1, ceil(2/#)]`
-/

namespace A390490.P8015899195128634541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), 2 * (-1) ^ Nat.factorization (f1 n) p : ℤ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), ⌈2 / (Nat.factorization (f2 n) p : ℚ)⌉ : ℤ) : ℚ)

end

end A390490.P8015899195128634541

namespace A390490

/-- `∏{e}[n+1, 2*(-1)^#]/∏{e}[n+1, ceil(2/#)]` -/
def P8015899195128634541.Spec : Prop :=
  ∀ n, P8015899195128634541.a n = (A390490 (n + 1) : ℚ)

end A390490

/-! ## A390490.P4893998921128679999

`(-1)^∑{e}[n+1, #]*A323308(n+1)`
-/

namespace A390490.P4893998921128679999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A323308 (n + 1)

end

end A390490.P4893998921128679999

namespace A390490

/-- `(-1)^∑{e}[n+1, #]*A323308(n+1)` -/
def P4893998921128679999.Spec : Prop :=
  ∀ n, P4893998921128679999.a n = A390490 (n + 1)

end A390490

/-! ## A390490.P15828085524842739246

`(-1)^∑{e}[n+1, #]*A034444((n+1)/∏{p}[n+1, #])`
-/

namespace A390490.P15828085524842739246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A390490.P15828085524842739246

namespace A390490

/-- `(-1)^∑{e}[n+1, #]*A034444((n+1)/∏{p}[n+1, #])` -/
def P15828085524842739246.Spec : Prop :=
  ∀ n, P15828085524842739246.a n = A390490 (n + 1)

end A390490

/-! ## A390490.P11895921798169292460

`(-1)^∑{e}[n+1, #]*A000688(∏{p}[n+1, gcd(n+1, #²)])`
-/

namespace A390490.P11895921798169292460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) * A000688 (∏ p ∈ Nat.primeFactors (f2 n), Nat.gcd (n + 1) (p ^ 2))

end

end A390490.P11895921798169292460

namespace A390490

/-- `(-1)^∑{e}[n+1, #]*A000688(∏{p}[n+1, gcd(n+1, #²)])` -/
def P11895921798169292460.Spec : Prop :=
  ∀ n, P11895921798169292460.a n = A390490 (n + 1)

end A390490

/-! ## A390490.P11295139555599544930

`∏{e}[n+1, 2*(-1)^#]/A000005(∏{p}[n+1, lcm(n+1, #²)/(n+1)])`
-/

namespace A390490.P11295139555599544930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), 2 * (-1) ^ Nat.factorization (f1 n) p : ℤ) : ℚ) / (A000005 (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ))).toNat : ℚ)

end

end A390490.P11295139555599544930

namespace A390490

/-- `∏{e}[n+1, 2*(-1)^#]/A000005(∏{p}[n+1, lcm(n+1, #²)/(n+1)])` -/
def P11295139555599544930.Spec : Prop :=
  ∀ n, P11295139555599544930.a n = (A390490 (n + 1) : ℚ)

end A390490

/-! ## A390490.P16368746757988660408

`A008836(n+1)*A323308(n+1)`
-/

namespace A390490.P16368746757988660408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A323308 (n + 1)

end

end A390490.P16368746757988660408

namespace A390490

/-- `A008836(n+1)*A323308(n+1)` -/
def P16368746757988660408.Spec : Prop :=
  ∀ n, P16368746757988660408.a n = A390490 (n + 1)

end A390490

/-! ## A390490.P12259971174261316425

`A307428(n+1)*A368885(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A390490

/-- `A307428(n+1)*A368885(n+1)` -/
def P12259971174261316425.Spec : Prop :=
  ∀ n, P12259971174261316425.a n = A390490 (n + 1)

theorem P12259971174261316425.correct : P12259971174261316425.Spec := by
  intro n
  simp only [A390490, Nat.add_sub_cancel]

end A390490

/-! ## A390490.P8900671014477502250

`A158522(n+1)/A056671(n+1)`
-/

namespace A390490.P8900671014477502250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158522 (n + 1) : ℚ) / (A056671 (n + 1) : ℚ)

end

end A390490.P8900671014477502250

namespace A390490

/-- `A158522(n+1)/A056671(n+1)` -/
def P8900671014477502250.Spec : Prop :=
  ∀ n, P8900671014477502250.a n = (A390490 (n + 1) : ℚ)

end A390490

/-! ## A390490.P6402644811043811597

`∑{d}[n+1, A008836(#)*A227291((n+1)/#)]`
-/

namespace A390490.P6402644811043811597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A227291 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390490.P6402644811043811597

namespace A390490

/-- `∑{d}[n+1, A008836(#)*A227291((n+1)/#)]` -/
def P6402644811043811597.Spec : Prop :=
  ∀ n, P6402644811043811597.a n = A390490 (n + 1)

end A390490

/-! ## A390490.P3245919794634605354

`∑{d}[n+1, A007427(#)*A365331((n+1)/#)]`
-/

namespace A390490.P3245919794634605354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A365331 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390490.P3245919794634605354

namespace A390490

/-- `∑{d}[n+1, A007427(#)*A365331((n+1)/#)]` -/
def P3245919794634605354.Spec : Prop :=
  ∀ n, P3245919794634605354.a n = A390490 (n + 1)

end A390490

/-! ## A390490.P7428873991945005113

`∑{d}[n+1, A158522(#)*A323308((n+1)/#)]`
-/

namespace A390490.P7428873991945005113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A323308 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390490.P7428873991945005113

namespace A390490

/-- `∑{d}[n+1, A158522(#)*A323308((n+1)/#)]` -/
def P7428873991945005113.Spec : Prop :=
  ∀ n, P7428873991945005113.a n = A390490 (n + 1)

end A390490

/-! ## A390490.P14624737963525357676

`∑{d}[n+1, A307430(#)*A329484((n+1)/#)]`
-/

namespace A390490.P14624737963525357676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307430 d * A329484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390490.P14624737963525357676

namespace A390490

/-- `∑{d}[n+1, A307430(#)*A329484((n+1)/#)]` -/
def P14624737963525357676.Spec : Prop :=
  ∀ n, P14624737963525357676.a n = A390490 (n + 1)

end A390490

/-! ## A390490.P15393419461529493596

`∑{d}[n+1, A322327(#)*A326415((n+1)/#)]`
-/

namespace A390490.P15393419461529493596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322327 d * A326415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390490.P15393419461529493596

namespace A390490

/-- `∑{d}[n+1, A322327(#)*A326415((n+1)/#)]` -/
def P15393419461529493596.Spec : Prop :=
  ∀ n, P15393419461529493596.a n = A390490 (n + 1)

end A390490

/-! ## A390490.P3430702484436277743

`∑{d}[n+1, A307428(#)*A355448((n+1)/#)]`
-/

namespace A390490.P3430702484436277743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307428 d * A355448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390490.P3430702484436277743

namespace A390490

/-- `∑{d}[n+1, A307428(#)*A355448((n+1)/#)]` -/
def P3430702484436277743.Spec : Prop :=
  ∀ n, P3430702484436277743.a n = A390490 (n + 1)

end A390490

/-! ## A390490.P5055759532968702099

`A008836(n+1)*A034444(A008833(n+1))`
-/

namespace A390490.P5055759532968702099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A034444 (A008833 (n + 1)).toNat

end

end A390490.P5055759532968702099

namespace A390490

/-- `A008836(n+1)*A034444(A008833(n+1))` -/
def P5055759532968702099.Spec : Prop :=
  ∀ n, P5055759532968702099.a n = A390490 (n + 1)

end A390490

/-!
# A390493: Number of symmetric Catalan triangles of size n.

The programs for A390493, there is no canonical definition to state claims against.
-/

/-! ## A390493.P2344390261320574878

`A097755(A166861(n))`
-/

namespace A390493.P2344390261320574878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097755 (A166861 n).toNat

end

end A390493.P2344390261320574878

/-! ## A390493.P1024933878053209367

`A371284(A233758(n+1))`
-/

namespace A390493.P1024933878053209367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371284 (A233758 (n + 1)).toNat

end

end A390493.P1024933878053209367

/-! ## A390493.P6934284015165341659

`A141452(A054357(n))`
-/

namespace A390493.P6934284015165341659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141452 (A054357 n).toNat

end

end A390493.P6934284015165341659

/-!
# A390494: Irregular triangle read by rows: T(n,k) is the sum of nonprime numbers in the k-th 2-dense sublist of divisors of n, with n >= 1, k >= 1.

The programs for A390494, there is no canonical definition to state claims against.
-/

/-! ## A390494.P14390419096573771621

`A390609(n+1)+A390610(n+1)-A390495(n+1)`
-/

namespace A390494.P14390419096573771621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390609 (n + 1) + (A390610 (n + 1) - A390495 (n + 1))

end

end A390494.P14390419096573771621

/-! ## A390494.P14634994084975292407

`A384149(n+1)-A390495(n+1)`
-/

namespace A390494.P14634994084975292407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384149 (n + 1) - A390495 (n + 1)

end

end A390494.P14634994084975292407

/-!
# A390495: Irregular triangle read by rows: T(n,k) is the sum of prime numbers in the k-th 2-dense sublist of divisors of n, with n >= 1, k >= 1.

The programs for A390495, there is no canonical definition to state claims against.
-/

/-! ## A390495.P13953143128075609415

`A390609(n+1)+A390610(n+1)-A390494(n+1)`
-/

namespace A390495.P13953143128075609415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390609 (n + 1) + (A390610 (n + 1) - A390494 (n + 1))

end

end A390495.P13953143128075609415

/-! ## A390495.P898790289707911254

`A384149(n+1)-A390494(n+1)`
-/

namespace A390495.P898790289707911254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384149 (n + 1) - A390494 (n + 1)

end

end A390495.P898790289707911254

/-! ## A390495.P9904406769689714483

`∑{p}[A386989(n+1)^A020483(2*n), #]`
-/

namespace A390495.P9904406769689714483
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386989 (n + 1) : ℚ) ^ (A020483 (2 * n) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p

end

end A390495.P9904406769689714483

/-!
# A390496: Irregular triangle read by rows: T(n,k) is the largest number in the k-th 2-dense sublist of divisors of n, with n >= 1, k >= 1.

The programs for A390496, there is no canonical definition to state claims against.
-/

/-! ## A390496.P3948545784209068835

`A027750(∑[A384222(n+1)])`
-/

namespace A390496.P3948545784209068835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A390496.P3948545784209068835

/-! ## A390496.P11226556077981790590

`A177040(A226023(n))`
-/

namespace A390496.P11226556077981790590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177040 (A226023 n).toNat

end

end A390496.P11226556077981790590

/-! ## A390496.P12299098714380912647

`A008480(A076738(n+1))`
-/

namespace A390496.P12299098714380912647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A076738 (n + 1)).toNat

end

end A390496.P12299098714380912647

/-! ## A390496.P8294137615370773413

`A319226(A355027(n+1))`
-/

namespace A390496.P8294137615370773413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319226 (A355027 (n + 1)).toNat

end

end A390496.P8294137615370773413

/-! ## A390496.P3484729049350388061

`A185679(A139213(n)*A143823(n))`
-/

namespace A390496.P3484729049350388061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185679 (A139213 n * A143823 n).toNat

end

end A390496.P3484729049350388061

/-!
# A390497: a(n) is the least prime that starts a sequence of two or more consecutive primes whose sum is A050936(n).

The programs for A390497, there is no canonical definition to state claims against.
-/

/-! ## A390497.P18135219848367954668

`p?[A086834(n+1)]`
-/

namespace A390497.P18135219848367954668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A390497.P18135219848367954668

/-! ## A390497.P16452096609469383274

`A086834(A050936(n+1))`
-/

namespace A390497.P16452096609469383274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086834 (A050936 (n + 1)).toNat

end

end A390497.P16452096609469383274

/-! ## A390497.P13421068925974230321

`filter[A086834(n+1), A014306(#)]`
-/

namespace A390497.P13421068925974230321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A390497.P13421068925974230321

/-! ## A390497.P17699114355283598699

`filter[A086834(n+1), A097325(#)]`
-/

namespace A390497.P17699114355283598699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A390497.P17699114355283598699

/-! ## A390497.P75518918199765549

`filter[A086834(n+1), A098725(#)]`
-/

namespace A390497.P75518918199765549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A390497.P75518918199765549

/-! ## A390497.P7353469858296103341

`filter[A086834(n+1), A165560(#)]`
-/

namespace A390497.P7353469858296103341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165560 (f1 j).toNat = 1) n)

end

end A390497.P7353469858296103341

/-! ## A390497.P3111979276481202076

`filter[A086834(n+1), A166486(#)]`
-/

namespace A390497.P3111979276481202076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A390497.P3111979276481202076

/-! ## A390497.P4078901896512117691

`filter[A086834(n+1), A168181(#)]`
-/

namespace A390497.P4078901896512117691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A390497.P4078901896512117691

/-! ## A390497.P2671717883744245458

`filter[A086834(n+1), A168182(#)]`
-/

namespace A390497.P2671717883744245458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A390497.P2671717883744245458

/-! ## A390497.P2874606014195760552

`filter[A086834(n+1), A168184(#)]`
-/

namespace A390497.P2874606014195760552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A390497.P2874606014195760552

/-! ## A390497.P10949664863887797119

`filter[A086834(n+1), A168185(#)]`
-/

namespace A390497.P10949664863887797119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A390497.P10949664863887797119

/-! ## A390497.P17658560661397814061

`filter[A086834(n+1), A182067(#)]`
-/

namespace A390497.P17658560661397814061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182067 (f1 j).toNat = 1) n)

end

end A390497.P17658560661397814061

/-! ## A390497.P6796881568012412716

`filter[A086834(n+1), A257000(#)]`
-/

namespace A390497.P6796881568012412716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A390497.P6796881568012412716

/-! ## A390497.P15017448173671476627

`filter[A086834(n+1), A257680(#)]`
-/

namespace A390497.P15017448173671476627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257680 (f1 j).toNat = 1) n)

end

end A390497.P15017448173671476627

/-! ## A390497.P525565721861224913

`filter[A086834(n+1), A341625(#)]`
-/

namespace A390497.P525565721861224913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341625 (f1 j).toNat = 1) n)

end

end A390497.P525565721861224913

/-! ## A390497.P7063680410262885640

`filter[A086834(n+1), A354874(#)]`
-/

namespace A390497.P7063680410262885640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A390497.P7063680410262885640

/-! ## A390497.P15001403259322455647

`filter[A086834(n+1), A358220(#)]`
-/

namespace A390497.P15001403259322455647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A390497.P15001403259322455647

/-! ## A390497.P17113456011776204328

`filter[A086834(n+1), A358771(#)]`
-/

namespace A390497.P17113456011776204328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A390497.P17113456011776204328

/-! ## A390497.P12936770448005693268

`filter[A086834(n+1), A359550(#)]`
-/

namespace A390497.P12936770448005693268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A390497.P12936770448005693268

/-! ## A390497.P18075050751801644827

`filter[A086834(n+1), A373254(#)]`
-/

namespace A390497.P18075050751801644827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373254 (f1 j).toNat = 1) n)

end

end A390497.P18075050751801644827

/-!
# A390498: Norms of irreducible elements of Z[sqrt(-6)].

The programs for A390498, there is no canonical definition to state claims against.
-/

/-! ## A390498.P14653240190459562937

`∪[A111206(n+1), A181141(A377530(n))]`
-/

namespace A390498.P14653240190459562937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181141 (A377530 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390498.P14653240190459562937

