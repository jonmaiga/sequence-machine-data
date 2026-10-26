import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
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
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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

/-! ## A390402.P2177380372454359375

`A378285(A074263(n+1))-A099837(n+1)`
-/

namespace A390402.P2177380372454359375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378285 (A074263 (n + 1)).toNat - A099837 (n + 1)

end

end A390402.P2177380372454359375

/-! ## A390402.P10057672233740935285

`A115578(A043318(n+1))-A057079(2*n+3)`
-/

namespace A390402.P10057672233740935285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115578 (A043318 (n + 1)).toNat - A057079 (2 * n + 3)

end

end A390402.P10057672233740935285

/-! ## A390402.P1417785530048131244

`A115578(A044915(n+1))-A057079(2*n+3)`
-/

namespace A390402.P1417785530048131244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115578 (A044915 (n + 1)).toNat - A057079 (2 * n + 3)

end

end A390402.P1417785530048131244

/-!
# A390403: a(n) = (49*4^n + 6*n - 13)/9.

The programs for A390403, the canonical program `A390403.P8157210282863581429` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390403 has offset 0).

The definition of A390403 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(49*4^n+6*n-13)/9` (program `A390403.P13923469730129145418`, by `A390403.P13923469730129145418.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390403.P8157210282863581429

`6*a(n-1)-9*a(n-2)+4*a(n-3)` with `a(0)=4, a(1)=21, a(2)=87`

The canonical program, it is in `Seq.B000.C040`.
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
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

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

/-! ## A390403.P4124925849901907853

`ogf((-4+3x+3x^2)/(-1+6x-9x^2+4x^3))`
-/

namespace A390403.P4124925849901907853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3, -3] [1, -6, 9, -4] n

end

end A390403.P4124925849901907853

namespace A390403

/-- `ogf((-4+3x+3x^2)/(-1+6x-9x^2+4x^3))` -/
def P4124925849901907853.Spec : Prop :=
  ∀ n, P4124925849901907853.a n = A390403 n

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

The programs for A390407, there is no canonical definition to state claims against.
-/

/-! ## A390407.P17724428873972668748

`A361654(A064226(n))`
-/

namespace A390407.P17724428873972668748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361654 (A064226 n).toNat

end

end A390407.P17724428873972668748

/-! ## A390407.P7354625855118149559

`A361654(A140064(n+1))`
-/

namespace A390407.P7354625855118149559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361654 (A140064 (n + 1)).toNat

end

end A390407.P7354625855118149559

/-! ## A390407.P13648293476722690634

`A013580(A139276(n))`
-/

namespace A390407.P13648293476722690634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A139276 n).toNat

end

end A390407.P13648293476722690634

/-! ## A390407.P16122790771541769551

`A013580(A139277(n))`
-/

namespace A390407.P16122790771541769551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A139277 n).toNat

end

end A390407.P16122790771541769551

/-! ## A390407.P6342491946363133175

`A231147(A204675(n))`
-/

namespace A390407.P6342491946363133175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231147 (A204675 n).toNat

end

end A390407.P6342491946363133175

/-!
# A390410: a(n) = Sum_{k=0..n} binomial(4*n+4*k,n-k).

The programs for A390410, there is no canonical definition to state claims against.
-/

/-! ## A390410.P12135306699025148304

`A171462(A007051(2*n))+1`
-/

namespace A390410.P12135306699025148304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171462 (A007051 (2 * n)).toNat + 1

end

end A390410.P12135306699025148304

/-!
# A390411: a(n) = Sum_{k=0..n} binomial(4*k+1,k).

The programs for A390411, the canonical program `A390411.P2957758563450737005` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390411 has offset 0).

The definition of A390411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390411.P2957758563450737005

`∑[A052203(n)]`

The canonical program, it is in `Seq.B001.C012`.
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
# A390413: a(n) = Sum_{k=0..n} binomial(4*n-2*k+1,n-k).

The programs for A390413, there is no canonical definition to state claims against.
-/

/-! ## A390413.P15082195133693403575

`A361654(A006137(n+1))`
-/

namespace A390413.P15082195133693403575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361654 (A006137 (n + 1)).toNat

end

end A390413.P15082195133693403575

/-! ## A390413.P6096792450101242871

`A013580(A194268(n))`
-/

namespace A390413.P6096792450101242871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A194268 n).toNat

end

end A390413.P6096792450101242871

/-! ## A390413.P9123226243990649451

`A013580(A125201(n+1))`
-/

namespace A390413.P9123226243990649451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A125201 (n + 1)).toNat

end

end A390413.P9123226243990649451

/-! ## A390413.P9602565082375417089

`A013580(A002378(3*n+1)-n²)`
-/

namespace A390413.P9602565082375417089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A002378 (3 * n + 1) - (n ^ 2 : ℤ)).toNat

end

end A390413.P9602565082375417089

/-!
# A390418: Partial sums of A014829.

The programs for A390418, the canonical program `A390418.P1949512912825021070` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390418 has offset 1).

The definition of A390418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390418.P1949512912825021070

`9*a(n-1)-21*a(n-2)+19*a(n-3)-6*a(n-4)` with `a(0)=1, a(1)=9, a(2)=60, a(3)=370`

The canonical program, it is in `Seq.B000.C040`.
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
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

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

/-! ## A390418.P14313725324574140949

`floor(∑[∑[∑[6*a(n-1)]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A390418.P14313725324574140949
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

end A390418.P14313725324574140949

namespace A390418

/-- `floor(∑[∑[∑[6*a(n-1)]]])` -/
def P14313725324574140949.Spec : Prop :=
  ∀ n, (P14313725324574140949.a n : ℤ) = A390418 (n + 1)

end A390418

/-! ## A390418.P16027022319639418932

`∑[n+1]+6*a(n-1)` with `a(0)=1`
-/

namespace A390418.P16027022319639418932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6 * a (n - 1)

end

end A390418.P16027022319639418932

namespace A390418

/-- `∑[n+1]+6*a(n-1)` -/
def P16027022319639418932.Spec : Prop :=
  ∀ n, (P16027022319639418932.a n : ℤ) = A390418 (n + 1)

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
# A390424: Expansion of 1/(2 - g^2)^2, where g = 1+x*g^3 is the g.f. of A001764.

The programs for A390424, there is no canonical definition to state claims against.
-/

/-! ## A390424.P1726692415569432836

`A004526(A019299(n)+A000420(n))`
-/

namespace A390424.P1726692415569432836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A019299 n + A000420 n).toNat

end

end A390424.P1726692415569432836

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

/-! ## A390430.P5074092362206814373

`A055396(A006530(n+1))+A055396(n+1)`
-/

namespace A390430.P5074092362206814373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A006530 (n + 1)).toNat + A055396 (n + 1)

end

end A390430.P5074092362206814373

namespace A390430

/-- `A055396(A006530(n+1))+A055396(n+1)` -/
def P5074092362206814373.Spec : Prop :=
  ∀ n, P5074092362206814373.a n = A390430 (n + 1)

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

/-! ## A390430.P9951953772196236905

`A364192(n+1)+A363486(n+1)`
-/

namespace A390430.P9951953772196236905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364192 (n + 1) + A363486 (n + 1)

end

end A390430.P9951953772196236905

namespace A390430

/-- `A364192(n+1)+A363486(n+1)` -/
def P9951953772196236905.Spec : Prop :=
  ∀ n, P9951953772196236905.a n = A390430 (n + 1)

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

The programs for A390433, the canonical program `A390433.P12340580154453304815` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390433 has offset 0).

The definition of A390433 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 863 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390433.P12340580154453304815

`T(n-1,k-1)+(row(n)+col(n)-1)²*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C040`.
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

The programs for A390434, the canonical program `A390434.P11213081078864682632` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390434 has offset 0).

The definition of A390434 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 468 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390434.P11213081078864682632

`T(n-1,k-1)+(row(n)+col(n)-1)^3*T(n-1,k)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C040`.
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

/-! ## A390434.P7217006916467056151

`A276922(n)^(2*a(n-1)+3)` with `a(0)=1`
-/

namespace A390434.P7217006916467056151
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A276922 n : ℝ) ^ (2 * a (n - 1) + 3)

end

end A390434.P7217006916467056151

namespace A390434

/-- `A276922(n)^(2*a(n-1)+3)` -/
def P7217006916467056151.Spec : Prop :=
  ∀ n, P7217006916467056151.a n = (A390434 n : ℝ)

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

The programs for A390437, the canonical program `A390437.P11752335666826313270` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390437 has offset 1).

The definition of A390437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8955 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390437.P11752335666826313270

`eq[0, A366124(n+1)]+1`

The canonical program, it is in `Seq.B001.C012`.
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

/-! ## A390437.P16842119082060937843

`A392632(n+1)%A002189(n)`
-/

namespace A390437.P16842119082060937843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392632 (n + 1)) (A002189 n)

end

end A390437.P16842119082060937843

namespace A390437

/-- `A392632(n+1)%A002189(n)` -/
def P16842119082060937843.Spec : Prop :=
  ∀ n, P16842119082060937843.a n = A390437 (n + 1)

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

/-!
# A390440: Exponentially 5-rough numbers: numbers whose prime factorization exponents are all coprime to 6.

The programs for A390440, the canonical program `A390440.P2827321994001143984` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390440 has offset 1).

The definition of A390440 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390440.P2827321994001143984

`filter[A390437(n+1), A295316(#)]`

The canonical program, it is in `Seq.B004.C003`.
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

/-! ## A390440.P9050420676088504157

`filter[A333638(n+1), A353519(#)]`
-/

namespace A390440.P9050420676088504157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A390440.P9050420676088504157

namespace A390440

/-- `filter[A333638(n+1), A353519(#)]` -/
def P9050420676088504157.Spec : Prop :=
  ∀ n, P9050420676088504157.a n = A390440 (n + 1)

end A390440

/-!
# A390442: a(n) = Sum_{k<=10^n} d(k^2), where d(k^2) = number of divisors function A000005 for k^2.

The programs for A390442, the canonical program `A390442.P3251703464741091877` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390442 has offset 0).

The definition of A390442 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061503, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390442.P3251703464741091877

`A061503(10^n)`

The canonical program, it is in `Seq.B001.C012`.
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

/-!
# A390445: Heinz numbers of integer partitions that are not the first sums of any nonempty multiset.

The programs for A390445, there is no canonical definition to state claims against.
-/

/-! ## A390445.P14288685075354666520

`lt[A116494(n+4), A305470(n+1)]+1`
-/

namespace A390445.P14288685075354666520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116494 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305470 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A390445.P14288685075354666520

/-! ## A390445.P14793886290657592089

`lt[A212793(n+2), A270613(A057979(n+3))]`
-/

namespace A390445.P14793886290657592089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270613 (A057979 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390445.P14793886290657592089

/-! ## A390445.P8067580108153213199

`lt[A027642(n+1), A000005(A115589(n+1))]`
-/

namespace A390445.P8067580108153213199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A115589 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390445.P8067580108153213199

/-! ## A390445.P11589255178374220805

`lt[A377734(3*n+5), A303233(A092393(n+1))]`
-/

namespace A390445.P11589255178374220805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377734 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303233 (A092393 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390445.P11589255178374220805

/-! ## A390445.P17150922817536317097

`lt[A289023(n+2), A000265(n+1)]`
-/

namespace A390445.P17150922817536317097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289023 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390445.P17150922817536317097

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

/-! ## A390446.P8712515219415088766

`A049988(n+1)+A389811(n+1)-A390447(n+1)`
-/

namespace A390446.P8712515219415088766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049988 (n + 1) + (A389811 (n + 1) - A390447 (n + 1))

end

end A390446.P8712515219415088766

/-! ## A390446.P10517529627995173191

`A390447(n+2)-(A390447(n+1)+A390431(n+2))`
-/

namespace A390446.P10517529627995173191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390447 (n + 2) - (A390447 (n + 1) + A390431 (n + 2))

end

end A390446.P10517529627995173191

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

/-! ## A390447.P4479650478347456423

`A390431(n+1)+A389811(n)+A049988(n)`
-/

namespace A390447.P4479650478347456423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390431 (n + 1) + (A389811 n + A049988 n)

end

end A390447.P4479650478347456423

/-! ## A390447.P2174262541581535002

`A056556(A126285(n))`
-/

namespace A390447.P2174262541581535002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A126285 n).toNat

end

end A390447.P2174262541581535002

/-!
# A390448: Numbers whose prime indices are the first sums of some weakly increasing sequence of positive integers.

The programs for A390448, there is no canonical definition to state claims against.
-/

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

/-! ## A390448.P6125211964108592454

`filter[A333638(n+2), A374134(#)]`
-/

namespace A390448.P6125211964108592454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333638 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A390448.P6125211964108592454

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

The programs for A390452, there is no canonical definition to state claims against.
-/

/-! ## A390452.P906286161759872163

`A014200(A081016(n))`
-/

namespace A390452.P906286161759872163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014200 (A081016 n).toNat

end

end A390452.P906286161759872163

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

The programs for A390455, there is no canonical definition to state claims against.
-/

/-! ## A390455.P16495830710807440226

`A390437(6*a(n-1))` with `a(0)=1`
-/

namespace A390455.P16495830710807440226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A390437 (6 * a (n - 1)).toNat

end

end A390455.P16495830710807440226

/-!
# A390457: a(1) = 1 thereafter a(n) = floor(k(n)^n) where k(n) = a(1).a(2)a(3)...a(n-1) = 1.111... is the decimal digit concatenation of all preceding terms.

The programs for A390457, there is no canonical definition to state claims against.
-/

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

/-! ## A390457.P2395313477492032792

`A118759(A094996(n+1))`
-/

namespace A390457.P2395313477492032792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A094996 (n + 1)).toNat

end

end A390457.P2395313477492032792

/-! ## A390457.P8105651517943180773

`A048766(A014098(n)+1)`
-/

namespace A390457.P8105651517943180773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A014098 n + 1).toNat

end

end A390457.P8105651517943180773

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

/-! ## A390458.P11614482361165821173

`A283297(A310408(n+1))`
-/

namespace A390458.P11614482361165821173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283297 (A310408 (n + 1)).toNat

end

end A390458.P11614482361165821173

namespace A390458

/-- `A283297(A310408(n+1))` -/
def P11614482361165821173.Spec : Prop :=
  ∀ n, P11614482361165821173.a n = A390458 (n + 1)

end A390458

/-! ## A390458.P14926137040629371672

`A283297(A310409(n+1))`
-/

namespace A390458.P14926137040629371672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283297 (A310409 (n + 1)).toNat

end

end A390458.P14926137040629371672

namespace A390458

/-- `A283297(A310409(n+1))` -/
def P14926137040629371672.Spec : Prop :=
  ∀ n, P14926137040629371672.a n = A390458 (n + 1)

end A390458

/-!
# A390464: Column 3 of table A390148.

The programs for A390464, there is no canonical definition to state claims against.
-/

/-! ## A390464.P18144274800478841836

`A390148(3*(n+1)+n)`
-/

namespace A390464.P18144274800478841836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390148 (3 * (n + 1) + n)

end

end A390464.P18144274800478841836

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

/-! ## A390467.P12137285303259838422

`A071904(lt[A087705(n+2), A212009(3*n+1)])`
-/

namespace A390467.P12137285303259838422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087705 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212009 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A390467.P12137285303259838422

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

/-!
# A390469: Array read by ascending antidiagonals: A(n,k) = [x^n] (1 - x^k)/(1 - 2*x + x^(1+k)), with k >= 0.

The programs for A390469, there is no canonical definition to state claims against.
-/

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

/-! ## A390469.P15600253108460556562

`A087116(A342202(n+1))`
-/

namespace A390469.P15600253108460556562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A342202 (n + 1)).toNat

end

end A390469.P15600253108460556562

/-!
# A390472: a(n) = Sum_{k=0..n} binomial(4*n-2*k+2,n-k).

The programs for A390472, there is no canonical definition to state claims against.
-/

/-! ## A390472.P8955650128472389071

`A013580(A139272(n+1))`
-/

namespace A390472.P8955650128472389071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A139272 (n + 1)).toNat

end

end A390472.P8955650128472389071

/-! ## A390472.P1899389638007771809

`A013580(A139273(n+1))`
-/

namespace A390472.P1899389638007771809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013580 (A139273 (n + 1)).toNat

end

end A390472.P1899389638007771809

/-! ## A390472.P10684338751703314137

`A231147(A004767(n)²-2*n)`
-/

namespace A390472.P10684338751703314137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231147 (A004767 n ^ 2 - (2 * n : ℤ)).toNat

end

end A390472.P10684338751703314137

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

The programs for A390478, there is no canonical definition to state claims against.
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

/-! ## A390478.P5375612594405995179

`A144904(n+1)+A144904(n+1)-A371842(n)`
-/

namespace A390478.P5375612594405995179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144904 (n + 1) + (A144904 (n + 1) - A371842 n)

end

end A390478.P5375612594405995179

/-! ## A390478.P11592338947570295058

`A106432(A392266(n))`
-/

namespace A390478.P11592338947570295058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106432 (A392266 n).toNat

end

end A390478.P11592338947570295058

/-!
# A390479: a(n) = Sum_{k=0..floor(n/4)} (5*k+1) * binomial(2*n-3*k+1,n-4*k)/(2*n-3*k+1).

The programs for A390479, there is no canonical definition to state claims against.
-/

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

/-! ## A390479.P548760303436589025

`A226762(A150190(n))`
-/

namespace A390479.P548760303436589025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A150190 n).toNat

end

end A390479.P548760303436589025

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

/-! ## A390481.P11812272422838141982

`A063993(A391697(n))+A000108(n)`
-/

namespace A390481.P11812272422838141982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063993 (A391697 n).toNat + A000108 n

end

end A390481.P11812272422838141982

/-! ## A390481.P18419683071802860354

`A184974(A342094(n))+A000108(n)`
-/

namespace A390481.P18419683071802860354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184974 (A342094 n).toNat + A000108 n

end

end A390481.P18419683071802860354

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

The programs for A390483, the canonical program `A390483.P1083108438533826406` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390483 has offset 0).

The definition of A390483 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002819, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390483.P1083108438533826406

`A002819(2^n)`

The canonical program, it is in `Seq.B001.C012`.
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

/-! ## A390483.P2260392114415030417

`A002819(A000079(n))%A073918(n)`
-/

namespace A390483.P2260392114415030417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002819 (A000079 n).toNat) (A073918 n)

end

end A390483.P2260392114415030417

namespace A390483

/-- `A002819(A000079(n))%A073918(n)` -/
def P2260392114415030417.Spec : Prop :=
  ∀ n, P2260392114415030417.a n = A390483 n

end A390483

/-! ## A390483.P15873426886356957434

`A263787(n+1)+A002819(A000079(n))`
-/

namespace A390483.P15873426886356957434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263787 (n + 1) + A002819 (A000079 n).toNat

end

end A390483.P15873426886356957434

namespace A390483

/-- `A263787(n+1)+A002819(A000079(n))` -/
def P15873426886356957434.Spec : Prop :=
  ∀ n, P15873426886356957434.a n = A390483 n

end A390483

/-!
# A390485: a(n) = Sum_{k=0..floor(n/3)} (4*k+1) * binomial(3*n-5*k+1,n-3*k)/(3*n-5*k+1).

The programs for A390485, there is no canonical definition to state claims against.
-/

/-! ## A390485.P15084008356882235383

`A096008(A224677(n))+A000257(n)`
-/

namespace A390485.P15084008356882235383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096008 (A224677 n).toNat + A000257 n

end

end A390485.P15084008356882235383

/-! ## A390485.P14082372299276276198

`A079425(A306006(n))+A001764(n)`
-/

namespace A390485.P14082372299276276198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079425 (A306006 n).toNat + A001764 n

end

end A390485.P14082372299276276198

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

The programs for A390490, the canonical program `A390490.P12259971174261316425` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390490 has offset 1).

The definition of A390490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

The canonical program, it is in `Seq.B011.C000`.
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

