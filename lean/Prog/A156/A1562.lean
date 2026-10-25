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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
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
# A156201: Numerator of Euler(n, 1/8).

The programs for A156201, there is no canonical definition to state claims against.
-/

/-! ## A156201.P113282187122587015

`A006873(n)/A156205(n)*A225109(n)`
-/

namespace A156201.P113282187122587015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006873 n : ℚ) / (A156205 n : ℚ) * (A225109 n : ℚ)

end

end A156201.P113282187122587015

/-! ## A156201.P8318497453391855179

`A377666(∑[2*a(n-1)-a(n-2)])` with `a(0)=1, a(1)=15, a(2)=7, a(3)=8`
-/

namespace A156201.P8318497453391855179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 15, 7, 8] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377666 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A156201.P8318497453391855179

/-!
# A156202: a(n) = 2*a(n-1)+3 for n > 1, a(1) = 10.

The programs for A156202, the canonical program `A156202.P3646310756925874973` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156202 has offset 1).

The definition of A156202 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+3` (program `A156202.P3646310756925874973`, by `A156202.P3646310756925874973.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156202.P3646310756925874973

`2*a(n-1)+3` with `a(0)=10`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156202

/-- `2*a(n-1)+3` -/
def P3646310756925874973.Spec : Prop :=
  ∀ n, (P3646310756925874973.a n : ℤ) = A156202 (n + 1)

theorem P3646310756925874973.correct : P3646310756925874973.Spec := by
  intro n
  simp only [A156202, Nat.add_sub_cancel]

end A156202

/-! ## A156202.P9890983807596166377

`13*2^n-3`
-/

namespace A156202.P9890983807596166377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 * 2 ^ n : ℤ) - 3

end

end A156202.P9890983807596166377

namespace A156202

/-- `13*2^n-3` -/
def P9890983807596166377.Spec : Prop :=
  ∀ n, P9890983807596166377.a n = A156202 (n + 1)

theorem P9890983807596166377.correct : P9890983807596166377.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A156202, Nat.add_sub_cancel, A156202.P9890983807596166377.a, A156202.P3646310756925874973.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A156202, Nat.add_sub_cancel, A156202.P9890983807596166377.a, A156202.P3646310756925874973.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A156202

/-! ## A156202.P18233119699384381633

`ogf((10-7x)/(1-3x+2x^2))`
-/

namespace A156202.P18233119699384381633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -7] [1, -3, 2] n

end

end A156202.P18233119699384381633

namespace A156202

/-- `ogf((10-7x)/(1-3x+2x^2))` -/
def P18233119699384381633.Spec : Prop :=
  ∀ n, P18233119699384381633.a n = A156202 (n + 1)

end A156202

/-! ## A156202.P2384587159984873565

`∑[2*a(n-1)]` with `a(0)=10, a(1)=13`
-/

namespace A156202.P2384587159984873565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 13] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156202.P2384587159984873565

namespace A156202

/-- `∑[2*a(n-1)]` -/
def P2384587159984873565.Spec : Prop :=
  ∀ n, (P2384587159984873565.a n : ℤ) = A156202 (n + 1)

end A156202

/-! ## A156202.P405105583830928668

`∑[a(n-1)+a(n-1)]` with `a(0)=10, a(1)=13`
-/

namespace A156202.P405105583830928668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 13] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156202.P405105583830928668

namespace A156202

/-- `∑[a(n-1)+a(n-1)]` -/
def P405105583830928668.Spec : Prop :=
  ∀ n, (P405105583830928668.a n : ℤ) = A156202 (n + 1)

end A156202

/-! ## A156202.P4466870392250263217

`floor(a(n-1)+a(n-1)+3)` with `a(0)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A156202.P4466870392250263217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  a (n - 1) + (a (n - 1) + 3)

end

end A156202.P4466870392250263217

namespace A156202

/-- `floor(a(n-1)+a(n-1)+3)` -/
def P4466870392250263217.Spec : Prop :=
  ∀ n, (P4466870392250263217.a n : ℤ) = A156202 (n + 1)

theorem P4466870392250263217.correct : P4466870392250263217.Spec := by
  intro n
  simp only [A156202, Nat.add_sub_cancel, A156202.P4466870392250263217.a, A156202.P3646310756925874973.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A156202

/-! ## A156202.P14527984910910355876

`abs(2-A198274(n))`
-/

namespace A156202.P14527984910910355876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A198274 n|

end

end A156202.P14527984910910355876

namespace A156202

/-- `abs(2-A198274(n))` -/
def P14527984910910355876.Spec : Prop :=
  ∀ n, P14527984910910355876.a n = A156202 (n + 1)

end A156202

/-! ## A156202.P5805477062111873654

`abs(3-A005029(n))`
-/

namespace A156202.P5805477062111873654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A005029 n|

end

end A156202.P5805477062111873654

namespace A156202

/-- `abs(3-A005029(n))` -/
def P5805477062111873654.Spec : Prop :=
  ∀ n, P5805477062111873654.a n = A156202 (n + 1)

end A156202

/-! ## A156202.P1561264018984935252

`abs(4-A168596(n))`
-/

namespace A156202.P1561264018984935252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A168596 n|

end

end A156202.P1561264018984935252

namespace A156202

/-- `abs(4-A168596(n))` -/
def P1561264018984935252.Spec : Prop :=
  ∀ n, P1561264018984935252.a n = A156202 (n + 1)

end A156202

/-! ## A156202.P4473641987573648381

`A100206(n+2)/2`
-/

namespace A156202.P4473641987573648381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100206 (n + 2) : ℚ) / 2

end

end A156202.P4473641987573648381

namespace A156202

/-- `A100206(n+2)/2` -/
def P4473641987573648381.Spec : Prop :=
  ∀ n, P4473641987573648381.a n = (A156202 (n + 1) : ℚ)

end A156202

/-! ## A156202.P10148947663098432908

`(A168596(n)-4)%A195744(n)`
-/

namespace A156202.P10148947663098432908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168596 n - 4) (A195744 n)

end

end A156202.P10148947663098432908

namespace A156202

/-- `(A168596(n)-4)%A195744(n)` -/
def P10148947663098432908.Spec : Prop :=
  ∀ n, P10148947663098432908.a n = A156202 (n + 1)

end A156202

/-! ## A156202.P4688034240566943346

`A250654(n+1)%A198276(n)`
-/

namespace A156202.P4688034240566943346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250654 (n + 1)) (A198276 n)

end

end A156202.P4688034240566943346

namespace A156202

/-- `A250654(n+1)%A198276(n)` -/
def P4688034240566943346.Spec : Prop :=
  ∀ n, P4688034240566943346.a n = A156202 (n + 1)

end A156202

/-!
# A156203: a(n) = 2*a(n-1) + 3 for n>1, a(1)=14.

The programs for A156203, the canonical program `A156203.P16500733286195956380` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156203 has offset 1).

The definition of A156203 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+3` (program `A156203.P16500733286195956380`, by `A156203.P16500733286195956380.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A156203.P11117719344476551085

`17*2^n-3`
-/

namespace A156203.P11117719344476551085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (17 * 2 ^ n : ℤ) - 3

end

end A156203.P11117719344476551085

namespace A156203

/-- `17*2^n-3` -/
def P11117719344476551085.Spec : Prop :=
  ∀ n, P11117719344476551085.a n = A156203 (n + 1)

theorem P11117719344476551085.correct : P11117719344476551085.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A156203, Nat.add_sub_cancel, A156203.P11117719344476551085.a, A156203.P16500733286195956380.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A156203, Nat.add_sub_cancel, A156203.P11117719344476551085.a, A156203.P16500733286195956380.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A156203

/-! ## A156203.P16500733286195956380

`2*a(n-1)+3` with `a(0)=14`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156203

/-- `2*a(n-1)+3` -/
def P16500733286195956380.Spec : Prop :=
  ∀ n, (P16500733286195956380.a n : ℤ) = A156203 (n + 1)

theorem P16500733286195956380.correct : P16500733286195956380.Spec := by
  intro n
  simp only [A156203, Nat.add_sub_cancel]

end A156203

/-! ## A156203.P13957883885032334345

`ogf((14-11x)/(1-3x+2x^2))`
-/

namespace A156203.P13957883885032334345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [14, -11] [1, -3, 2] n

end

end A156203.P13957883885032334345

namespace A156203

/-- `ogf((14-11x)/(1-3x+2x^2))` -/
def P13957883885032334345.Spec : Prop :=
  ∀ n, P13957883885032334345.a n = A156203 (n + 1)

end A156203

/-! ## A156203.P902986713483091291

`∑[2*a(n-1)]` with `a(0)=14, a(1)=17`
-/

namespace A156203.P902986713483091291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [14, 17] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156203.P902986713483091291

namespace A156203

/-- `∑[2*a(n-1)]` -/
def P902986713483091291.Spec : Prop :=
  ∀ n, (P902986713483091291.a n : ℤ) = A156203 (n + 1)

end A156203

/-! ## A156203.P16282335180063885242

`∑[a(n-1)+a(n-1)]` with `a(0)=14, a(1)=17`
-/

namespace A156203.P16282335180063885242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [14, 17] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156203.P16282335180063885242

namespace A156203

/-- `∑[a(n-1)+a(n-1)]` -/
def P16282335180063885242.Spec : Prop :=
  ∀ n, (P16282335180063885242.a n : ℤ) = A156203 (n + 1)

end A156203

/-! ## A156203.P10425139617174335298

`abs(2-A198275(n))`
-/

namespace A156203.P10425139617174335298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A198275 n|

end

end A156203.P10425139617174335298

namespace A156203

/-- `abs(2-A198275(n))` -/
def P10425139617174335298.Spec : Prop :=
  ∀ n, P10425139617174335298.a n = A156203 (n + 1)

end A156203

/-! ## A156203.P2796782895559867546

`abs(3-A110287(n))`
-/

namespace A156203.P2796782895559867546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A110287 n|

end

end A156203.P2796782895559867546

namespace A156203

/-- `abs(3-A110287(n))` -/
def P2796782895559867546.Spec : Prop :=
  ∀ n, P2796782895559867546.a n = A156203 (n + 1)

end A156203

/-! ## A156203.P11548680356976521362

`abs(A166118(n+1)-A099003(n))`
-/

namespace A156203.P11548680356976521362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166118 (n + 1) - A099003 n|

end

end A156203.P11548680356976521362

namespace A156203

/-- `abs(A166118(n+1)-A099003(n))` -/
def P11548680356976521362.Spec : Prop :=
  ∀ n, P11548680356976521362.a n = A156203 (n + 1)

end A156203

/-!
# A156204: First primes of an arithmetic progression of six primes with common difference 30.

The programs for A156204, there is no canonical definition to state claims against.
-/

/-! ## A156204.P10530248039982618546

`A123085(A016921(n))`
-/

namespace A156204.P10530248039982618546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123085 (A016921 n).toNat

end

end A156204.P10530248039982618546

/-! ## A156204.P6484522080759646735

`A123085(A016861(n)+n)`
-/

namespace A156204.P6484522080759646735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123085 (A016861 n + (n : ℤ)).toNat

end

end A156204.P6484522080759646735

/-! ## A156204.P10162221673683346345

`p?[A227281(n+1)-30]`
-/

namespace A156204.P10162221673683346345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227281 (n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156204.P10162221673683346345

/-! ## A156204.P10245604364476710824

`p?[A123084(5*n+1)-30]`
-/

namespace A156204.P10245604364476710824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123084 (5 * n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156204.P10245604364476710824

/-! ## A156204.P10260510056335398143

`p?[p?[A123084(A008619(10*n))]-30]`
-/

namespace A156204.P10260510056335398143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123084 (A008619 (10 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156204.P10260510056335398143

/-!
# A156205: Numerator of Euler(n, 3/8).

The programs for A156205, there is no canonical definition to state claims against.
-/

/-! ## A156205.P10562047252098946780

`A000813(n)*A033999(A000217(n))`
-/

namespace A156205.P10562047252098946780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000813 n * A033999 (A000217 n).toNat

end

end A156205.P10562047252098946780

/-! ## A156205.P1692349419506849228

`A000813(n)*A033999(A032766(n))`
-/

namespace A156205.P1692349419506849228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000813 n * A033999 (A032766 n).toNat

end

end A156205.P1692349419506849228

/-! ## A156205.P16203030093807242389

`A000813(n)*A033999(A110654(n))`
-/

namespace A156205.P16203030093807242389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000813 n * A033999 (A110654 n).toNat

end

end A156205.P16203030093807242389

/-! ## A156205.P7983713391912947497

`A006873(n)/A156201(n)*A225109(n)`
-/

namespace A156205.P7983713391912947497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006873 n : ℚ) / (A156201 n : ℚ) * (A225109 n : ℚ)

end

end A156205.P7983713391912947497

/-! ## A156205.P16240044650120795747

`A000813(n)*A033999(A062725(n))`
-/

namespace A156205.P16240044650120795747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000813 n * A033999 (A062725 n).toNat

end

end A156205.P16240044650120795747

/-!
# A156207: Sum of the products of the digits in n and their position m in n.

The programs for A156207, there is no canonical definition to state claims against.
-/

/-! ## A156207.P8691411591569664245

`A156230(A004086(n+1))`
-/

namespace A156207.P8691411591569664245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156230 (A004086 (n + 1)).toNat

end

end A156207.P8691411591569664245

/-! ## A156207.P7316124692129484945

`∑{digits}[A059995(A056524(n+1)), #]`
-/

namespace A156207.P7316124692129484945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A056524 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A156207.P7316124692129484945

/-!
# A156208: Primes appearing as the products of digits and positions in A156207(i) in the order of appearance.

The programs for A156208, there is no canonical definition to state claims against.
-/

/-! ## A156208.P13076995474607262703

`p?[A156207(n+1)]`
-/

namespace A156208.P13076995474607262703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156208.P13076995474607262703

/-! ## A156208.P2022680908839920744

`filter[A156207(n+1), A010051(#)]`
-/

namespace A156208.P2022680908839920744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A156208.P2022680908839920744

/-! ## A156208.P16174829427944208067

`p?[A244158(A004086(n))]`
-/

namespace A156208.P16174829427944208067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244158 (A004086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156208.P16174829427944208067

/-! ## A156208.P5862054714720764501

`p?[A156230(A004086(n+1))]`
-/

namespace A156208.P5862054714720764501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156230 (A004086 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156208.P5862054714720764501

/-! ## A156208.P18321083107427577281

`A306196(A376191(n+1))`
-/

namespace A156208.P18321083107427577281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306196 (A376191 (n + 1)).toNat

end

end A156208.P18321083107427577281

/-!
# A156209: Number of possible values of C(v) = the number of valid mountain-valley assignments for a flat-foldable origami vertex v of degree 2n.

The programs for A156209, there is no canonical definition to state claims against.
-/

/-! ## A156209.P412136294410100970

`∑[A325368(∑[A002865(n+2)])]`
-/

namespace A156209.P412136294410100970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156209.P412136294410100970

/-! ## A156209.P12263697531127860183

`∑[A325368(A000041(n+2)-1)]`
-/

namespace A156209.P12263697531127860183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (A000041 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156209.P12263697531127860183

/-! ## A156209.P731879260093925011

`∑[A325368(∑[A036015(2*(n+2))])]`
-/

namespace A156209.P731879260093925011
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036015 (2 * (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156209.P731879260093925011

/-! ## A156209.P7529464523262241550

`A236912(2*(n+1))-A006519(A046866(2*(n+1)))`
-/

namespace A156209.P7529464523262241550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236912 (2 * (n + 1)) - A006519 (A046866 (2 * (n + 1))).toNat

end

end A156209.P7529464523262241550

/-!
# A156210: Prime factors of odd Lucas numbers.

The programs for A156210, there is no canonical definition to state claims against.
-/

/-! ## A156210.P16544744178924585724

`∩[A065156(n+1), A155916(n+1)]`
-/

namespace A156210.P16544744178924585724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156210.P16544744178924585724

/-! ## A156210.P14937963830670050914

`∩[A140409(n+1), A155916(n+1)]`
-/

namespace A156210.P14937963830670050914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156210.P14937963830670050914

/-! ## A156210.P8538230111140529274

`p?[∑[A088261(A317416(n+1))]]`
-/

namespace A156210.P8538230111140529274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088261 (A317416 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156210.P8538230111140529274

/-! ## A156210.P7702894836529627377

`p?[(2*n+1)*A029258(A029238(n))]`
-/

namespace A156210.P7702894836529627377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A029258 (A029238 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156210.P7702894836529627377

/-! ## A156210.P1562529503828919632

`A000040(lt[A284651(3*(n+1)), A318393(3*n+2)])`
-/

namespace A156210.P1562529503828919632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284651 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318393 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A156210.P1562529503828919632

/-!
# A156212: G.f.: A(x) = exp( Sum_{n>=1} 2^(n^2)*A000204(n)*x^n/n ), a power series in x with integer coefficients.

The programs for A156212, there is no canonical definition to state claims against.
-/

/-! ## A156212.P3555863894372432922

`A000027(A156211(n))`
-/

namespace A156212.P3555863894372432922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A156211 n).toNat

end

end A156212.P3555863894372432922

/-!
# A156215: Expansion of (chi(q^3) / chi(q))^6 + q / (chi(q^3) / chi(q))^6 in powers of q where chi() is a Ramanujan theta function.

The programs for A156215, there is no canonical definition to state claims against.
-/

/-! ## A156215.P2744267732870663819

`(-1)^n*A058490(n)`
-/

namespace A156215.P2744267732870663819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A058490 n

end

end A156215.P2744267732870663819

/-! ## A156215.P5395538027400314989

`A058490(n)/A033999(n)`
-/

namespace A156215.P5395538027400314989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058490 n : ℚ) / (A033999 n : ℚ)

end

end A156215.P5395538027400314989

/-! ## A156215.P1159784400008555238

`A058490(n)*A121373(Δ[or(1, n)])`
-/

namespace A156215.P1159784400008555238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058490 n * A121373 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A156215.P1159784400008555238

/-! ## A156215.P6946775293657746654

`A058490(n)*A332433(Δ[or(1, n)])`
-/

namespace A156215.P6946775293657746654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058490 n * A332433 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A156215.P6946775293657746654

/-! ## A156215.P1437631838789846059

`A058490(n)*A089810(Δ[or(1, n)]²)`
-/

namespace A156215.P1437631838789846059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058490 n * A089810 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A156215.P1437631838789846059

/-!
# A156216: G.f.: A(x) = exp( Sum_{n>=1} A000204(n)^n * x^n/n ), a power series in x with integer coefficients.

The programs for A156216, there is no canonical definition to state claims against.
-/

/-! ## A156216.P11923098169487621794

`∏{p}[A156217(n)², #]`
-/

namespace A156216.P11923098169487621794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156217 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A156216.P11923098169487621794

/-!
# A156218: Denominator of Euler(n, 1/9).

The programs for A156218, the canonical program `A156218.P2902771645178862920` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156218 has offset 0).

The definition of A156218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156218.P3451347755743004782

`2^val(n+1, 2)*9^n`
-/

namespace A156218.P3451347755743004782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 * 9 ^ n

end

end A156218.P3451347755743004782

namespace A156218

/-- `2^val(n+1, 2)*9^n` -/
def P3451347755743004782.Spec : Prop :=
  ∀ n, (P3451347755743004782.a n : ℤ) = A156218 n

end A156218

/-! ## A156218.P5969619614373297414

`lcm(9^n, 2^val(n+1, 2))`
-/

namespace A156218.P5969619614373297414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (9 ^ n) (2 ^ SequenceMachineLib.valuation (n + 1) 2)

end

end A156218.P5969619614373297414

namespace A156218

/-- `lcm(9^n, 2^val(n+1, 2))` -/
def P5969619614373297414.Spec : Prop :=
  ∀ n, (P5969619614373297414.a n : ℤ) = A156218 n

end A156218

/-! ## A156218.P2902771645178862920

`9^n*gcd(n+1, 2^n)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156218

/-- `9^n*gcd(n+1, 2^n)` -/
def P2902771645178862920.Spec : Prop :=
  ∀ n, (P2902771645178862920.a n : ℤ) = A156218 n

theorem P2902771645178862920.correct : P2902771645178862920.Spec := by
  intro n
  simp only [A156218]

end A156218

/-! ## A156218.P16192893584229243313

`(or(n, n+1)-n)*9^n`
-/

namespace A156218.P16192893584229243313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor n (n + 1) : ℤ) - (n : ℤ)) * (9 ^ n : ℤ)

end

end A156218.P16192893584229243313

namespace A156218

/-- `(or(n, n+1)-n)*9^n` -/
def P16192893584229243313.Spec : Prop :=
  ∀ n, P16192893584229243313.a n = A156218 n

end A156218

/-! ## A156218.P7582824996781693091

`9^n*and(n+1, -(n+1))`
-/

namespace A156218.P7582824996781693091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) * Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A156218.P7582824996781693091

namespace A156218

/-- `9^n*and(n+1, -(n+1))` -/
def P7582824996781693091.Spec : Prop :=
  ∀ n, P7582824996781693091.a n = A156218 n

end A156218

/-! ## A156218.P11202047187499272154

`(xor(n, n+1)+1)/2*9^n`
-/

namespace A156218.P11202047187499272154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) + 1 : ℚ) / 2 * (9 ^ n : ℚ)

end

end A156218.P11202047187499272154

namespace A156218

/-- `(xor(n, n+1)+1)/2*9^n` -/
def P11202047187499272154.Spec : Prop :=
  ∀ n, P11202047187499272154.a n = (A156218 n : ℚ)

end A156218

/-! ## A156218.P12854844990051803977

`(n+1-and(n, n+1))*9^n`
-/

namespace A156218.P12854844990051803977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ)) * (9 ^ n : ℤ)

end

end A156218.P12854844990051803977

namespace A156218

/-- `(n+1-and(n, n+1))*9^n` -/
def P12854844990051803977.Spec : Prop :=
  ∀ n, P12854844990051803977.a n = A156218 n

end A156218

/-! ## A156218.P4556184926417606965

`lcm(3^(2*n), or(n+1, -(n+1)))`
-/

namespace A156218.P4556184926417606965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 ^ (2 * n) : ℤ) (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)))

end

end A156218.P4556184926417606965

namespace A156218

/-- `lcm(3^(2*n), or(n+1, -(n+1)))` -/
def P4556184926417606965.Spec : Prop :=
  ∀ n, (P4556184926417606965.a n : ℤ) = A156218 n

end A156218

/-! ## A156218.P18265420195553684624

`3^n*A156180(n)`
-/

namespace A156218.P18265420195553684624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A156180 n

end

end A156218.P18265420195553684624

namespace A156218

/-- `3^n*A156180(n)` -/
def P18265420195553684624.Spec : Prop :=
  ∀ n, P18265420195553684624.a n = A156218 n

end A156218

/-! ## A156218.P10825830708548888095

`9^n*2^A007814(n+1)`
-/

namespace A156218.P10825830708548888095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℚ) * (2 : ℚ) ^ (A007814 (n + 1) : ℤ)

end

end A156218.P10825830708548888095

namespace A156218

/-- `9^n*2^A007814(n+1)` -/
def P10825830708548888095.Spec : Prop :=
  ∀ n, P10825830708548888095.a n = (A156218 n : ℚ)

end A156218

/-! ## A156218.P1665205048929930604

`and(n+1, -(n+1))*A001019(n)`
-/

namespace A156218.P1665205048929930604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) * A001019 n

end

end A156218.P1665205048929930604

namespace A156218

/-- `and(n+1, -(n+1))*A001019(n)` -/
def P1665205048929930604.Spec : Prop :=
  ∀ n, P1665205048929930604.a n = A156218 n

end A156218

/-! ## A156218.P11460307711084679874

`(n+1-A129760(n+1))*9^n`
-/

namespace A156218.P11460307711084679874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A129760 (n + 1)) * (9 ^ n : ℤ)

end

end A156218.P11460307711084679874

namespace A156218

/-- `(n+1-A129760(n+1))*9^n` -/
def P11460307711084679874.Spec : Prop :=
  ∀ n, P11460307711084679874.a n = A156218 n

end A156218

/-! ## A156218.P14411583321054930526

`A001019(n)*A006519(n+1)`
-/

namespace A156218.P14411583321054930526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n * A006519 (n + 1)

end

end A156218.P14411583321054930526

namespace A156218

/-- `A001019(n)*A006519(n+1)` -/
def P14411583321054930526.Spec : Prop :=
  ∀ n, P14411583321054930526.a n = A156218 n

end A156218

/-! ## A156218.P814592690244758876

`lcm(A156180(2*n), A156180(n))`
-/

namespace A156218.P814592690244758876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A156180 (2 * n)) (A156180 n)

end

end A156218.P814592690244758876

namespace A156218

/-- `lcm(A156180(2*n), A156180(n))` -/
def P814592690244758876.Spec : Prop :=
  ∀ n, (P814592690244758876.a n : ℤ) = A156218 n

end A156218

/-! ## A156218.P10881521943815170721

`A000244(n)²*A006519(n+1)`
-/

namespace A156218.P10881521943815170721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n ^ 2 * A006519 (n + 1)

end

end A156218.P10881521943815170721

namespace A156218

/-- `A000244(n)²*A006519(n+1)` -/
def P10881521943815170721.Spec : Prop :=
  ∀ n, P10881521943815170721.a n = A156218 n

end A156218

/-! ## A156218.P18227254978016127461

`lcm(A352779(n)², A055975(n+1))`
-/

namespace A156218.P18227254978016127461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A352779 n ^ 2) (A055975 (n + 1))

end

end A156218.P18227254978016127461

namespace A156218

/-- `lcm(A352779(n)², A055975(n+1))` -/
def P18227254978016127461.Spec : Prop :=
  ∀ n, (P18227254978016127461.a n : ℤ) = A156218 n

end A156218

/-! ## A156218.P12503873146527042011

`(A024101(n)+1)*A006519(n+1)`
-/

namespace A156218.P12503873146527042011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A024101 n + 1) * A006519 (n + 1)

end

end A156218.P12503873146527042011

namespace A156218

/-- `(A024101(n)+1)*A006519(n+1)` -/
def P12503873146527042011.Spec : Prop :=
  ∀ n, P12503873146527042011.a n = A156218 n

end A156218

/-! ## A156218.P16310796248461209728

`A000244(2*n)*A006519(n+1)`
-/

namespace A156218.P16310796248461209728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (2 * n) * A006519 (n + 1)

end

end A156218.P16310796248461209728

namespace A156218

/-- `A000244(2*n)*A006519(n+1)` -/
def P16310796248461209728.Spec : Prop :=
  ∀ n, P16310796248461209728.a n = A156218 n

end A156218

/-! ## A156218.P2008309687000678050

`2^A007814(n+1)*A001019(n)`
-/

namespace A156218.P2008309687000678050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A007814 (n + 1) : ℤ) * (A001019 n : ℚ)

end

end A156218.P2008309687000678050

namespace A156218

/-- `2^A007814(n+1)*A001019(n)` -/
def P2008309687000678050.Spec : Prop :=
  ∀ n, P2008309687000678050.a n = (A156218 n : ℚ)

end A156218

/-! ## A156218.P2577294463702274720

`A000010(xor(n, n+1)+1)*A001019(n)`
-/

namespace A156218.P2577294463702274720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.xor n (n + 1) + 1) * A001019 n

end

end A156218.P2577294463702274720

namespace A156218

/-- `A000010(xor(n, n+1)+1)*A001019(n)` -/
def P2577294463702274720.Spec : Prop :=
  ∀ n, P2577294463702274720.a n = A156218 n

end A156218

/-!
# A156223: Numbers that are products of distinct terms in A000312.

The programs for A156223, there is no canonical definition to state claims against.
-/

/-! ## A156223.P4609652109546955137

`record[A085731(A122405(n+1))]`
-/

namespace A156223.P4609652109546955137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (A122405 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156223.P4609652109546955137

/-! ## A156223.P4984673220654313387

`record[A196064(∑[A061579(n+1)])]`
-/

namespace A156223.P4984673220654313387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196064 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156223.P4984673220654313387

/-! ## A156223.P14209914619901415986

`A085731(∩[A072873(n+1), A122405(n+1)])`
-/

namespace A156223.P14209914619901415986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122405 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A156223.P14209914619901415986

/-!
# A156225: Triangle read by rows:e(n,k)=Sum[(-1)^j Binomial[n + 1, j](k + 1 - j)^n, {j, 0, k + 1}]; t(n,m)=(e[n + 1, m]*PartitionsQ[n] + e[n + 1, n - m]*(PartitionsQ[ n - m] + PartitionsQ[m])) - 2.

The programs for A156225, there is no canonical definition to state claims against.
-/

/-! ## A156225.P4233154064911819394

`A040431(A347796(n)+A196196(n))`
-/

namespace A156225.P4233154064911819394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040431 (A347796 n + A196196 n).toNat

end

end A156225.P4233154064911819394

/-! ## A156225.P256482461975991757

`A157207(n)*A302242(A191513(n+1))`
-/

namespace A156225.P256482461975991757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157207 n * A302242 (A191513 (n + 1)).toNat

end

end A156225.P256482461975991757

/-! ## A156225.P10292815618720825142

`xor(A025442(A113483(n+1)), A176491(n))`
-/

namespace A156225.P10292815618720825142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025442 (A113483 (n + 1)).toNat) (A176491 n)

end

end A156225.P10292815618720825142

/-! ## A156225.P11729933189221932599

`A036969(n+1)*A337565(A060046(n+9))`
-/

namespace A156225.P11729933189221932599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036969 (n + 1) * A337565 (A060046 (n + 9)).toNat

end

end A156225.P11729933189221932599

/-!
# A156226: Primes of the form 9*n^2 + 1.

The programs for A156226, the canonical program `A156226.P12065626002228118702` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156226 has offset 1).

The definition of A156226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3395 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156226.P6401921787745343553

`∩[A054755(n+1), A271184(n+1)]`
-/

namespace A156226.P6401921787745343553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156226.P6401921787745343553

namespace A156226

/-- `∩[A054755(n+1), A271184(n+1)]` -/
def P6401921787745343553.Spec : Prop :=
  ∀ n, (P6401921787745343553.a n : ℤ) = A156226 (n + 1)

end A156226

/-! ## A156226.P16132516120803859251

`∩[A002496(n+1), A271184(n+1)]`
-/

namespace A156226.P16132516120803859251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156226.P16132516120803859251

namespace A156226

/-- `∩[A002496(n+1), A271184(n+1)]` -/
def P16132516120803859251.Spec : Prop :=
  ∀ n, (P16132516120803859251.a n : ℤ) = A156226 (n + 1)

end A156226

/-! ## A156226.P12105854623355130298

`∩[A121326(n+1), A271184(n+1)]`
-/

namespace A156226.P12105854623355130298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156226.P12105854623355130298

namespace A156226

/-- `∩[A121326(n+1), A271184(n+1)]` -/
def P12105854623355130298.Spec : Prop :=
  ∀ n, (P12105854623355130298.a n : ℤ) = A156226 (n + 1)

end A156226

/-! ## A156226.P16081429370946817536

`∩[A163588(n+1), A271184(n+1)]`
-/

namespace A156226.P16081429370946817536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156226.P16081429370946817536

namespace A156226

/-- `∩[A163588(n+1), A271184(n+1)]` -/
def P16081429370946817536.Spec : Prop :=
  ∀ n, (P16081429370946817536.a n : ℤ) = A156226 (n + 1)

end A156226

/-! ## A156226.P13892387316550287441

`A163588(eq[1, dr(A163588(n+1))]+1)`
-/

namespace A156226.P13892387316550287441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A163588 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163588 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A156226.P13892387316550287441

namespace A156226

/-- `A163588(eq[1, dr(A163588(n+1))]+1)` -/
def P13892387316550287441.Spec : Prop :=
  ∀ n, P13892387316550287441.a n = A156226 (n + 1)

end A156226

/-! ## A156226.P12065626002228118702

`A002496(eq[1, A002496(n+1)%3]+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A156226

/-- `A002496(eq[1, A002496(n+1)%3]+1)` -/
def P12065626002228118702.Spec : Prop :=
  ∀ n, P12065626002228118702.a n = A156226 (n + 1)

theorem P12065626002228118702.correct : P12065626002228118702.Spec := by
  intro n
  simp only [A156226, Nat.add_sub_cancel]

end A156226

/-! ## A156226.P10639755416777073507

`∩[A271184(n+1), A296422(n+1)]`
-/

namespace A156226.P10639755416777073507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156226.P10639755416777073507

namespace A156226

/-- `∩[A271184(n+1), A296422(n+1)]` -/
def P10639755416777073507.Spec : Prop :=
  ∀ n, (P10639755416777073507.a n : ℤ) = A156226 (n + 1)

end A156226

/-! ## A156226.P4032683102074221653

`∩[A227829(n+1), A271184(n+1)]`
-/

namespace A156226.P4032683102074221653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156226.P4032683102074221653

namespace A156226

/-- `∩[A227829(n+1), A271184(n+1)]` -/
def P4032683102074221653.Spec : Prop :=
  ∀ n, (P4032683102074221653.a n : ℤ) = A156226 (n + 1)

end A156226

/-! ## A156226.P10262615577029967247

`∩[A125557(n+1), A271184(n+1)]`
-/

namespace A156226.P10262615577029967247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156226.P10262615577029967247

namespace A156226

/-- `∩[A125557(n+1), A271184(n+1)]` -/
def P10262615577029967247.Spec : Prop :=
  ∀ n, (P10262615577029967247.a n : ℤ) = A156226 (n + 1)

end A156226

/-! ## A156226.P18332607692420389828

`∩[A249410(n+1), A271184(n+1)]`
-/

namespace A156226.P18332607692420389828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156226.P18332607692420389828

namespace A156226

/-- `∩[A249410(n+1), A271184(n+1)]` -/
def P18332607692420389828.Spec : Prop :=
  ∀ n, (P18332607692420389828.a n : ℤ) = A156226 (n + 1)

end A156226

/-! ## A156226.P1176298938276165347

`∩[A271184(n+1), A300164(n+1)]`
-/

namespace A156226.P1176298938276165347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156226.P1176298938276165347

namespace A156226

/-- `∩[A271184(n+1), A300164(n+1)]` -/
def P1176298938276165347.Spec : Prop :=
  ∀ n, (P1176298938276165347.a n : ℤ) = A156226 (n + 1)

end A156226

/-! ## A156226.P10448672419340353366

`∩[A002496(n+1), A158591(n)]`
-/

namespace A156226.P10448672419340353366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156226.P10448672419340353366

namespace A156226

/-- `∩[A002496(n+1), A158591(n)]` -/
def P10448672419340353366.Spec : Prop :=
  ∀ n, (P10448672419340353366.a n : ℤ) = A156226 (n + 1)

end A156226

/-! ## A156226.P7612226661008075425

`∩[A054755(n+1), A158591(n)]`
-/

namespace A156226.P7612226661008075425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156226.P7612226661008075425

namespace A156226

/-- `∩[A054755(n+1), A158591(n)]` -/
def P7612226661008075425.Spec : Prop :=
  ∀ n, (P7612226661008075425.a n : ℤ) = A156226 (n + 1)

end A156226

/-! ## A156226.P14936642187014430438

`∩[A121326(n+1), A158591(n)]`
-/

namespace A156226.P14936642187014430438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156226.P14936642187014430438

namespace A156226

/-- `∩[A121326(n+1), A158591(n)]` -/
def P14936642187014430438.Spec : Prop :=
  ∀ n, (P14936642187014430438.a n : ℤ) = A156226 (n + 1)

end A156226

/-! ## A156226.P10996232772816378489

`∩[A125557(n+1), A158591(n)]`
-/

namespace A156226.P10996232772816378489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156226.P10996232772816378489

namespace A156226

/-- `∩[A125557(n+1), A158591(n)]` -/
def P10996232772816378489.Spec : Prop :=
  ∀ n, (P10996232772816378489.a n : ℤ) = A156226 (n + 1)

end A156226

/-! ## A156226.P17774942538135659147

`∩[A163588(n+1), A158591(n)]`
-/

namespace A156226.P17774942538135659147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156226.P17774942538135659147

namespace A156226

/-- `∩[A163588(n+1), A158591(n)]` -/
def P17774942538135659147.Spec : Prop :=
  ∀ n, (P17774942538135659147.a n : ℤ) = A156226 (n + 1)

end A156226

/-! ## A156226.P3796284081380085277

`∩[A158591(n), A227829(n+1)]`
-/

namespace A156226.P3796284081380085277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156226.P3796284081380085277

namespace A156226

/-- `∩[A158591(n), A227829(n+1)]` -/
def P3796284081380085277.Spec : Prop :=
  ∀ n, (P3796284081380085277.a n : ℤ) = A156226 (n + 1)

end A156226

/-! ## A156226.P7366200900967942308

`∩[A249410(n+1), A158591(n)]`
-/

namespace A156226.P7366200900967942308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156226.P7366200900967942308

namespace A156226

/-- `∩[A249410(n+1), A158591(n)]` -/
def P7366200900967942308.Spec : Prop :=
  ∀ n, (P7366200900967942308.a n : ℤ) = A156226 (n + 1)

end A156226

/-! ## A156226.P529363256148404797

`∩[A296422(n+1), A158591(n)]`
-/

namespace A156226.P529363256148404797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156226.P529363256148404797

namespace A156226

/-- `∩[A296422(n+1), A158591(n)]` -/
def P529363256148404797.Spec : Prop :=
  ∀ n, (P529363256148404797.a n : ℤ) = A156226 (n + 1)

end A156226

/-! ## A156226.P9566108120421064095

`∩[A300164(n+1), A158591(n)]`
-/

namespace A156226.P9566108120421064095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156226.P9566108120421064095

namespace A156226

/-- `∩[A300164(n+1), A158591(n)]` -/
def P9566108120421064095.Spec : Prop :=
  ∀ n, (P9566108120421064095.a n : ℤ) = A156226 (n + 1)

end A156226

/-!
# A156227: Period 12: repeat [0,1,3,8,3,1,0,8,6,1,6,8].

The programs for A156227, the canonical program `A156227.P3219091076109090078` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156227 has offset 0).

The definition of A156227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156227.P3219091076109090078

`9-dr(a(n-2)+6*a(n-1))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156227

/-- `9-dr(a(n-2)+6*a(n-1))` -/
def P3219091076109090078.Spec : Prop :=
  ∀ n, P3219091076109090078.a n = A156227 n

theorem P3219091076109090078.correct : P3219091076109090078.Spec := by
  intro n
  simp only [A156227]

end A156227

/-!
# A156228: Number of lakes in Conway's Game of Life with 8*n cells.

The programs for A156228, there is no canonical definition to state claims against.
-/

/-! ## A156228.P9396616123541477784

`A307391(n+1)/2`
-/

namespace A156228.P9396616123541477784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307391 (n + 1) : ℚ) / 2

end

end A156228.P9396616123541477784

/-! ## A156228.P15065010045300816282

`ceil(A307391(-xor(n, -1))/2)`
-/

namespace A156228.P15065010045300816282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A307391 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 2⌉

end

end A156228.P15065010045300816282

/-! ## A156228.P17907702628439267299

`A014682(A307391(n+1))`
-/

namespace A156228.P17907702628439267299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A307391 (n + 1)).toNat

end

end A156228.P17907702628439267299

/-! ## A156228.P10515012924896566569

`A273943(lcm(2, A307391(n+1)))`
-/

namespace A156228.P10515012924896566569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A307391 (n + 1)))

end

end A156228.P10515012924896566569

/-! ## A156228.P12677045387840216323

`A273943(A307391(n+1)%A061172(n))`
-/

namespace A156228.P12677045387840216323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.tmod (A307391 (n + 1)) (A061172 n)).toNat

end

end A156228.P12677045387840216323

/-!
# A156229: Partial sums of A052343.

The programs for A156229, the canonical program `A156229.P14210188501640213565` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156229 has offset 0).

The definition of A156229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156229.P14210188501640213565

`∑[A052343(n)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A156229

/-- `∑[A052343(n)]` -/
def P14210188501640213565.Spec : Prop :=
  ∀ n, P14210188501640213565.a n = A156229 n

theorem P14210188501640213565.correct : P14210188501640213565.Spec := by
  intro n
  simp only [A156229]

end A156229

/-! ## A156229.P2496250352423622993

`∑[ceil(A008441(n)/2)]`
-/

namespace A156229.P2496250352423622993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008441 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156229.P2496250352423622993

namespace A156229

/-- `∑[ceil(A008441(n)/2)]` -/
def P2496250352423622993.Spec : Prop :=
  ∀ n, P2496250352423622993.a n = A156229 n

end A156229

/-! ## A156229.P3063765052483323525

`∑[A110655(A004020(n))]`
-/

namespace A156229.P3063765052483323525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A004020 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156229.P3063765052483323525

namespace A156229

/-- `∑[A110655(A004020(n))]` -/
def P3063765052483323525.Spec : Prop :=
  ∀ n, P3063765052483323525.a n = A156229 n

end A156229

/-! ## A156229.P6622755809523229718

`∑[ceil(A116604(2*n)/2)]`
-/

namespace A156229.P6622755809523229718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A116604 (2 * n) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156229.P6622755809523229718

namespace A156229

/-- `∑[ceil(A116604(2*n)/2)]` -/
def P6622755809523229718.Spec : Prop :=
  ∀ n, P6622755809523229718.a n = A156229 n

end A156229

/-! ## A156229.P5254589971206970197

`∑[ceil(A138741(2*n)/2)]`
-/

namespace A156229.P5254589971206970197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138741 (2 * n) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156229.P5254589971206970197

namespace A156229

/-- `∑[ceil(A138741(2*n)/2)]` -/
def P5254589971206970197.Spec : Prop :=
  ∀ n, P5254589971206970197.a n = A156229 n

end A156229

/-! ## A156229.P1171545888090542032

`∑[A000161(4*n+1)]`
-/

namespace A156229.P1171545888090542032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156229.P1171545888090542032

namespace A156229

/-- `∑[A000161(4*n+1)]` -/
def P1171545888090542032.Spec : Prop :=
  ∀ n, P1171545888090542032.a n = A156229 n

end A156229

/-! ## A156229.P12741252866006453557

`∑[A025435(4*n+1)]`
-/

namespace A156229.P12741252866006453557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025435 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156229.P12741252866006453557

namespace A156229

/-- `∑[A025435(4*n+1)]` -/
def P12741252866006453557.Spec : Prop :=
  ∀ n, P12741252866006453557.a n = A156229 n

end A156229

/-! ## A156229.P12345724614672422108

`∑[A000925(4*n+1)/2]`
-/

namespace A156229.P12345724614672422108
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000925 (4 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156229.P12345724614672422108

namespace A156229

/-- `∑[A000925(4*n+1)/2]` -/
def P12345724614672422108.Spec : Prop :=
  ∀ n, P12345724614672422108.a n = (A156229 n : ℚ)

end A156229

/-! ## A156229.P12974272904489934676

`A001281(∑[A000925(4*n+1)])`
-/

namespace A156229.P12974272904489934676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A156229.P12974272904489934676

namespace A156229

/-- `A001281(∑[A000925(4*n+1)])` -/
def P12974272904489934676.Spec : Prop :=
  ∀ n, P12974272904489934676.a n = A156229 n

end A156229

/-! ## A156229.P800607906772641961

`∑[A025426(Δ[A152750(n)])]`
-/

namespace A156229.P800607906772641961
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152750 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156229.P800607906772641961

namespace A156229

/-- `∑[A025426(Δ[A152750(n)])]` -/
def P800607906772641961.Spec : Prop :=
  ∀ n, P800607906772641961.a n = A156229 n

end A156229

/-!
# A156230: Sum of the products of the digits of n and the positions of the digits m in n starting from the last digit.

The programs for A156230, the canonical program `A156230.P15120758723942565746` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156230 has offset 1).

The definition of A156230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156230.P15120758723942565746

`∑{digits}[∑[val(n+1, 10)+10], #]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156230

/-- `∑{digits}[∑[val(n+1, 10)+10], #]` -/
def P15120758723942565746.Spec : Prop :=
  ∀ n, (P15120758723942565746.a n : ℤ) = A156230 (n + 1)

theorem P15120758723942565746.correct : P15120758723942565746.Spec := by
  intro n
  simp only [A156230, Nat.add_sub_cancel]

end A156230

/-! ## A156230.P4151549309865484886

`A033930(10*(n+1))`
-/

namespace A156230.P4151549309865484886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033930 (10 * (n + 1))

end

end A156230.P4151549309865484886

namespace A156230

/-- `A033930(10*(n+1))` -/
def P4151549309865484886.Spec : Prop :=
  ∀ n, P4151549309865484886.a n = A156230 (n + 1)

end A156230

/-! ## A156230.P1367126470248678507

`a(2*n-A199343(n))+1` with `a(0)=1`
-/

namespace A156230.P1367126470248678507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((2 * n : ℤ) - A199343 n).toNat + 1

end

end A156230.P1367126470248678507

namespace A156230

/-- `a(2*n-A199343(n))+1` -/
def P1367126470248678507.Spec : Prop :=
  ∀ n, (P1367126470248678507.a n : ℤ) = A156230 (n + 1)

end A156230

/-! ## A156230.P8481909515089747869

`A307629(n+1)+A000030(n+1)`
-/

namespace A156230.P8481909515089747869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307629 (n + 1) + A000030 (n + 1)

end

end A156230.P8481909515089747869

namespace A156230

/-- `A307629(n+1)+A000030(n+1)` -/
def P8481909515089747869.Spec : Prop :=
  ∀ n, P8481909515089747869.a n = A156230 (n + 1)

end A156230

/-! ## A156230.P13503211692023389734

`A007953(n+1)+A007953(A054899(n+1))`
-/

namespace A156230.P13503211692023389734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1) + A007953 (A054899 (n + 1)).toNat

end

end A156230.P13503211692023389734

namespace A156230

/-- `A007953(n+1)+A007953(A054899(n+1))` -/
def P13503211692023389734.Spec : Prop :=
  ∀ n, P13503211692023389734.a n = A156230 (n + 1)

end A156230

/-!
# A156231: Sequence gives the Poincaré series [or Poincare series] of an ordinal Hodge algebra, or algebra with straightening law, for a ring that the braid group on four strands acts on. It is Cohen-Macaulay.

The programs for A156231, there is no canonical definition to state claims against.
-/

/-! ## A156231.P16619654067161274453

`and(A000010(A054488(n)), A139806(n))`
-/

namespace A156231.P16619654067161274453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000010 (A054488 n).toNat) (A139806 n)

end

end A156231.P16619654067161274453

/-! ## A156231.P3521730084375038756

`xor(A087158(A391600(n)), A391611(n+2))`
-/

namespace A156231.P3521730084375038756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A087158 (A391600 n).toNat) (A391611 (n + 2))

end

end A156231.P3521730084375038756

/-!
# A156232: a(n) is the number of induced subgraphs with odd number of edges in the cycle graph C(n).

The programs for A156232, the canonical program `A156232.P10236940547256789149` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156232 has offset 2).

The definition of A156232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156232.P10236940547256789149

`2*a(n-1)+2*a(n-2)-4*a(n-3)` with `a(0)=0, a(1)=4, a(2)=4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156232

/-- `2*a(n-1)+2*a(n-2)-4*a(n-3)` -/
def P10236940547256789149.Spec : Prop :=
  ∀ n, P10236940547256789149.a n = A156232 (n + 2)

theorem P10236940547256789149.correct : P10236940547256789149.Spec := by
  intro n
  simp only [A156232, Nat.add_sub_cancel]

end A156232

/-! ## A156232.P1182133386158289569

`ogf((4x-4x^2)/(1-2x-2x^2+4x^3))`
-/

namespace A156232.P1182133386158289569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -4] [1, -2, -2, 4] n

end

end A156232.P1182133386158289569

namespace A156232

/-- `ogf((4x-4x^2)/(1-2x-2x^2+4x^3))` -/
def P1182133386158289569.Spec : Prop :=
  ∀ n, P1182133386158289569.a n = A156232 (n + 2)

end A156232

/-! ## A156232.P11960332314036759346

`2^n+2*a(n-2)` with `a(0)=0, a(1)=4`
-/

namespace A156232.P11960332314036759346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  2 ^ n + 2 * a (n - 2)

end

end A156232.P11960332314036759346

namespace A156232

/-- `2^n+2*a(n-2)` -/
def P11960332314036759346.Spec : Prop :=
  ∀ n, (P11960332314036759346.a n : ℤ) = A156232 (n + 2)

end A156232

/-! ## A156232.P10705569855010732305

`2*Δ[2^n-∏[gcd(2, n+1)]]`
-/

namespace A156232.P10705569855010732305
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A156232.P10705569855010732305

namespace A156232

/-- `2*Δ[2^n-∏[gcd(2, n+1)]]` -/
def P10705569855010732305.Spec : Prop :=
  ∀ n, P10705569855010732305.a n = A156232 (n + 2)

end A156232

/-! ## A156232.P11616230886058058040

`a(n-2)+a(n-2)+2^n` with `a(0)=0, a(1)=4`
-/

namespace A156232.P11616230886058058040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n a =>
  a (n - 2) + (a (n - 2) + 2 ^ n)

end

end A156232.P11616230886058058040

namespace A156232

/-- `a(n-2)+a(n-2)+2^n` -/
def P11616230886058058040.Spec : Prop :=
  ∀ n, (P11616230886058058040.a n : ℤ) = A156232 (n + 2)

end A156232

/-! ## A156232.P11422568397815356992

`2*A014236(n)`
-/

namespace A156232.P11422568397815356992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014236 n

end

end A156232.P11422568397815356992

namespace A156232

/-- `2*A014236(n)` -/
def P11422568397815356992.Spec : Prop :=
  ∀ n, P11422568397815356992.a n = A156232 (n + 2)

end A156232

/-! ## A156232.P257621552882004290

`4*A007179(n)`
-/

namespace A156232.P257621552882004290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007179 n

end

end A156232.P257621552882004290

namespace A156232

/-- `4*A007179(n)` -/
def P257621552882004290.Spec : Prop :=
  ∀ n, P257621552882004290.a n = A156232 (n + 2)

end A156232

/-! ## A156232.P3055268210809419646

`2*Δ[A233411(n)]`
-/

namespace A156232.P3055268210809419646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A156232.P3055268210809419646

namespace A156232

/-- `2*Δ[A233411(n)]` -/
def P3055268210809419646.Spec : Prop :=
  ∀ n, P3055268210809419646.a n = A156232 (n + 2)

end A156232

/-! ## A156232.P18406344368040542821

`2*abs(A077957(n)-2^n)`
-/

namespace A156232.P18406344368040542821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * |A077957 n - (2 ^ n : ℤ)|

end

end A156232.P18406344368040542821

namespace A156232

/-- `2*abs(A077957(n)-2^n)` -/
def P18406344368040542821.Spec : Prop :=
  ∀ n, P18406344368040542821.a n = A156232 (n + 2)

end A156232

/-! ## A156232.P10760229341444904954

`2^(n+1)-A077957(n+2)`
-/

namespace A156232.P10760229341444904954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A077957 (n + 2)

end

end A156232.P10760229341444904954

namespace A156232

/-- `2^(n+1)-A077957(n+2)` -/
def P10760229341444904954.Spec : Prop :=
  ∀ n, P10760229341444904954.a n = A156232 (n + 2)

end A156232

/-! ## A156232.P13647922841154000008

`2^(n+1)-A131575(n+3)`
-/

namespace A156232.P13647922841154000008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A131575 (n + 3)

end

end A156232.P13647922841154000008

namespace A156232

/-- `2^(n+1)-A131575(n+3)` -/
def P13647922841154000008.Spec : Prop :=
  ∀ n, P13647922841154000008.a n = A156232 (n + 2)

end A156232

/-! ## A156232.P10397764270263728687

`A122746(n)-A152166(n)`
-/

namespace A156232.P10397764270263728687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122746 n - A152166 n

end

end A156232.P10397764270263728687

namespace A156232

/-- `A122746(n)-A152166(n)` -/
def P10397764270263728687.Spec : Prop :=
  ∀ n, P10397764270263728687.a n = A156232 (n + 2)

end A156232

/-! ## A156232.P10311139626326121117

`A051049(n+1)-A077896(n)`
-/

namespace A156232.P10311139626326121117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051049 (n + 1) - A077896 n

end

end A156232.P10311139626326121117

namespace A156232

/-- `A051049(n+1)-A077896(n)` -/
def P10311139626326121117.Spec : Prop :=
  ∀ n, P10311139626326121117.a n = A156232 (n + 2)

end A156232

/-! ## A156232.P15588931058024440578

`2*(A079285(n)+A008466(n))`
-/

namespace A156232.P15588931058024440578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A079285 n + A008466 n)

end

end A156232.P15588931058024440578

namespace A156232

/-- `2*(A079285(n)+A008466(n))` -/
def P15588931058024440578.Spec : Prop :=
  ∀ n, P15588931058024440578.a n = A156232 (n + 2)

end A156232

/-! ## A156232.P2155363386853667745

`2*(A097038(n)+A001045(n))`
-/

namespace A156232.P2155363386853667745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A097038 n + A001045 n)

end

end A156232.P2155363386853667745

namespace A156232

/-- `2*(A097038(n)+A001045(n))` -/
def P2155363386853667745.Spec : Prop :=
  ∀ n, P2155363386853667745.a n = A156232 (n + 2)

end A156232

/-! ## A156232.P5103327267685403897

`2*(A005126(n)-A016724(n))`
-/

namespace A156232.P5103327267685403897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005126 n - A016724 n)

end

end A156232.P5103327267685403897

namespace A156232

/-- `2*(A005126(n)-A016724(n))` -/
def P5103327267685403897.Spec : Prop :=
  ∀ n, P5103327267685403897.a n = A156232 (n + 2)

end A156232

/-! ## A156232.P17262268455248147776

`2*(A000051(n)-A052552(n))`
-/

namespace A156232.P17262268455248147776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000051 n - A052552 n)

end

end A156232.P17262268455248147776

namespace A156232

/-- `2*(A000051(n)-A052552(n))` -/
def P17262268455248147776.Spec : Prop :=
  ∀ n, P17262268455248147776.a n = A156232 (n + 2)

end A156232

/-! ## A156232.P13272213399072914518

`2*(A051437(n)-A016116(n))`
-/

namespace A156232.P13272213399072914518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A051437 n - A016116 n)

end

end A156232.P13272213399072914518

namespace A156232

/-- `2*(A051437(n)-A016116(n))` -/
def P13272213399072914518.Spec : Prop :=
  ∀ n, P13272213399072914518.a n = A156232 (n + 2)

end A156232

/-! ## A156232.P15736435241697741451

`2*(A000079(n)-A077957(n))`
-/

namespace A156232.P15736435241697741451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000079 n - A077957 n)

end

end A156232.P15736435241697741451

namespace A156232

/-- `2*(A000079(n)-A077957(n))` -/
def P15736435241697741451.Spec : Prop :=
  ∀ n, P15736435241697741451.a n = A156232 (n + 2)

end A156232

/-! ## A156232.P2856517042837329644

`2*(A285543(n)-A051049(n))`
-/

namespace A156232.P2856517042837329644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A285543 n - A051049 n)

end

end A156232.P2856517042837329644

namespace A156232

/-- `2*(A285543(n)-A051049(n))` -/
def P2856517042837329644.Spec : Prop :=
  ∀ n, P2856517042837329644.a n = A156232 (n + 2)

end A156232

/-!
# A156233: A symmetrical recursion triangular sequence: m=4; e(n,k,m)= (2* k + m - 1)e(n - 1, k, m) + (m*n - 2*k + 1 - m)e(n - 1, k - 1, m); t(n,k)=e(n, k, m) + e(n, n - k, m).

The programs for A156233, there is no canonical definition to state claims against.
-/

/-! ## A156233.P9214023254682035432

`A097290(A157155(n*a(n-2)))` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A156233.P9214023254682035432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1] fun n a =>
  A097290 (A157155 ((n : ℤ) * a (n - 2)).toNat).toNat

end

end A156233.P9214023254682035432

/-! ## A156233.P12027477976962835385

`A158116(n)+A010060(A007052(n))`
-/

namespace A156233.P12027477976962835385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158116 n + A010060 (A007052 n).toNat

end

end A156233.P12027477976962835385

/-! ## A156233.P17555824400294001014

`A172343(n)+A010054(A005425(n))`
-/

namespace A156233.P17555824400294001014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172343 n + A010054 (A005425 n).toNat

end

end A156233.P17555824400294001014

/-! ## A156233.P9193060014714235214

`A172343(n)+A010815(A017510(n))`
-/

namespace A156233.P9193060014714235214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172343 n + A010815 (A017510 n).toNat

end

end A156233.P9193060014714235214

/-! ## A156233.P14621526095969933706

`A172343(n)+A007814(A074497(n))`
-/

namespace A156233.P14621526095969933706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172343 n + A007814 (A074497 n).toNat

end

end A156233.P14621526095969933706

/-!
# A156234: G.f.: A(x) = exp( Sum_{n>=1} sigma(n)*A000204(n)*x^n/n ).

The programs for A156234, there is no canonical definition to state claims against.
-/

/-! ## A156234.P6222134336326642334

`or(A000196(A134055(n)), A087447(n))`
-/

namespace A156234.P6222134336326642334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000196 (A134055 n).toNat) (A087447 n)

end

end A156234.P6222134336326642334

/-! ## A156234.P15390266351702149736

`or(A000196(A134055(n)), A129953(n))`
-/

namespace A156234.P15390266351702149736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000196 (A134055 n).toNat) (A129953 n)

end

end A156234.P15390266351702149736

/-! ## A156234.P16076867364085495280

`or(A284559(n), A284561(A002450(n)))`
-/

namespace A156234.P16076867364085495280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A284559 n) (A284561 (A002450 n).toNat)

end

end A156234.P16076867364085495280

/-!
# A156236: Smallest pentagonal number with n distinct prime factors.

The programs for A156236, there is no canonical definition to state claims against.
-/

/-! ## A156236.P15903343164434995204

`A000326(A006688(n)+A006591(n+1))`
-/

namespace A156236.P15903343164434995204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A006688 n + A006591 (n + 1)).toNat

end

end A156236.P15903343164434995204

/-!
# A156237: Smallest hexagonal number with n distinct prime factors.

The programs for A156237, there is no canonical definition to state claims against.
-/

/-! ## A156237.P18052459901557618842

`A070150(A183300(n+1)*A308023(n+1))`
-/

namespace A156237.P18052459901557618842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070150 (A183300 (n + 1) * A308023 (n + 1)).toNat

end

end A156237.P18052459901557618842

/-!
# A156241: Triangle read by rows, T(n,k). If k divides n then A008683(n)*A008683(k).

The programs for A156241, the canonical program `A156241.P8695887676353496719` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156241 has offset 1).

The definition of A156241 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156241.P8695887676353496719

`A054525(n+1)*A156254(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A156241

/-- `A054525(n+1)*A156254(n+1)` -/
def P8695887676353496719.Spec : Prop :=
  ∀ n, P8695887676353496719.a n = A156241 (n + 1)

theorem P8695887676353496719.correct : P8695887676353496719.Spec := by
  intro n
  simp only [A156241, Nat.add_sub_cancel]

end A156241

/-! ## A156241.P9989664708399407010

`A008683(A010766(n+1))*A156254(n+1)`
-/

namespace A156241.P9989664708399407010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A010766 (n + 1)).toNat * A156254 (n + 1)

end

end A156241.P9989664708399407010

namespace A156241

/-- `A008683(A010766(n+1))*A156254(n+1)` -/
def P9989664708399407010.Spec : Prop :=
  ∀ n, P9989664708399407010.a n = A156241 (n + 1)

end A156241

/-! ## A156241.P16043366236552206262

`A008683(A049834(n+1))*A156254(n+1)`
-/

namespace A156241.P16043366236552206262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A049834 (n + 1)).toNat * A156254 (n + 1)

end

end A156241.P16043366236552206262

namespace A156241

/-- `A008683(A049834(n+1))*A156254(n+1)` -/
def P16043366236552206262.Spec : Prop :=
  ∀ n, P16043366236552206262.a n = A156241 (n + 1)

end A156241

/-! ## A156241.P12099854420348359423

`A008683(A051537(n+1))*A156254(n+1)`
-/

namespace A156241.P12099854420348359423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A051537 (n + 1)).toNat * A156254 (n + 1)

end

end A156241.P12099854420348359423

namespace A156241

/-- `A008683(A051537(n+1))*A156254(n+1)` -/
def P12099854420348359423.Spec : Prop :=
  ∀ n, P12099854420348359423.a n = A156241 (n + 1)

end A156241

/-! ## A156241.P11196489231818454902

`A008683(A054531(n+1))*A156254(n+1)`
-/

namespace A156241.P11196489231818454902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A054531 (n + 1)).toNat * A156254 (n + 1)

end

end A156241.P11196489231818454902

namespace A156241

/-- `A008683(A054531(n+1))*A156254(n+1)` -/
def P11196489231818454902.Spec : Prop :=
  ∀ n, P11196489231818454902.a n = A156241 (n + 1)

end A156241

/-! ## A156241.P12575612746518818551

`A128407(A286158(n+1))*A156254(n+1)`
-/

namespace A156241.P12575612746518818551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128407 (A286158 (n + 1)).toNat * A156254 (n + 1)

end

end A156241.P12575612746518818551

namespace A156241

/-- `A128407(A286158(n+1))*A156254(n+1)` -/
def P12575612746518818551.Spec : Prop :=
  ∀ n, P12575612746518818551.a n = A156241 (n + 1)

end A156241

/-! ## A156241.P12076656499889682963

`A128407(A286158(n+1)+1-A156254(n+1))`
-/

namespace A156241.P12076656499889682963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128407 (A286158 (n + 1) + (1 - A156254 (n + 1))).toNat

end

end A156241.P12076656499889682963

namespace A156241

/-- `A128407(A286158(n+1)+1-A156254(n+1))` -/
def P12076656499889682963.Spec : Prop :=
  ∀ n, P12076656499889682963.a n = A156241 (n + 1)

end A156241

/-! ## A156241.P6430022131738272379

`A008683(A183110(n+1))²*A054525(n+1)`
-/

namespace A156241.P6430022131738272379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A183110 (n + 1)).toNat ^ 2 * A054525 (n + 1)

end

end A156241.P6430022131738272379

namespace A156241

/-- `A008683(A183110(n+1))²*A054525(n+1)` -/
def P6430022131738272379.Spec : Prop :=
  ∀ n, P6430022131738272379.a n = A156241 (n + 1)

end A156241

/-! ## A156241.P1242173518375067761

`A156254(n+1)*A174854(n+1)`
-/

namespace A156241.P1242173518375067761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156254 (n + 1) * A174854 (n + 1)

end

end A156241.P1242173518375067761

namespace A156241

/-- `A156254(n+1)*A174854(n+1)` -/
def P1242173518375067761.Spec : Prop :=
  ∀ n, P1242173518375067761.a n = A156241 (n + 1)

end A156241

/-! ## A156241.P5578125660589515374

`A054525(n+1)*A337263(n)`
-/

namespace A156241.P5578125660589515374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A337263 n

end

end A156241.P5578125660589515374

namespace A156241

/-- `A054525(n+1)*A337263(n)` -/
def P5578125660589515374.Spec : Prop :=
  ∀ n, P5578125660589515374.a n = A156241 (n + 1)

end A156241

/-!
# A156242: Bisection of A054353.

The programs for A156242, the canonical program `A156242.P3233582996753599041` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156242 has offset 1).

The definition of A156242 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A156242.P3233582996753599041

`A054353(2*(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156242

/-- `A054353(2*(n+1))` -/
def P3233582996753599041.Spec : Prop :=
  ∀ n, P3233582996753599041.a n = A156242 (n + 1)

theorem P3233582996753599041.correct : P3233582996753599041.Spec := by
  intro n
  simp only [A156242, Nat.add_sub_cancel]

end A156242

/-! ## A156242.P15694468576577755850

`∑[A332875(n+1)]`
-/

namespace A156242.P15694468576577755850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156242.P15694468576577755850

namespace A156242

/-- `∑[A332875(n+1)]` -/
def P15694468576577755850.Spec : Prop :=
  ∀ n, P15694468576577755850.a n = A156242 (n + 1)

end A156242

/-! ## A156242.P6551760509897019933

`lt[1, A249094(n+2)]+1`
-/

namespace A156242.P6551760509897019933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249094 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A156242.P6551760509897019933

namespace A156242

/-- `lt[1, A249094(n+2)]+1` -/
def P6551760509897019933.Spec : Prop :=
  ∀ n, (P6551760509897019933.a n : ℤ) = A156242 (n + 1)

end A156242

/-! ## A156242.P9698129666356527585

`A156243(n+1)+A100429(n+1)`
-/

namespace A156242.P9698129666356527585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1) + A100429 (n + 1)

end

end A156242.P9698129666356527585

namespace A156242

/-- `A156243(n+1)+A100429(n+1)` -/
def P9698129666356527585.Spec : Prop :=
  ∀ n, P9698129666356527585.a n = A156242 (n + 1)

end A156242

/-! ## A156242.P17013757133087601146

`∑[A100429(n+1)+A100428(n+1)]`
-/

namespace A156242.P17013757133087601146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100429 (n + 1) + A100428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156242.P17013757133087601146

namespace A156242

/-- `∑[A100429(n+1)+A100428(n+1)]` -/
def P17013757133087601146.Spec : Prop :=
  ∀ n, P17013757133087601146.a n = A156242 (n + 1)

end A156242

/-! ## A156242.P17719403187128099264

`A100429(n+1)+∑[A332273(n+1)]`
-/

namespace A156242.P17719403187128099264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100429 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156242.P17719403187128099264

namespace A156242

/-- `A100429(n+1)+∑[A332273(n+1)]` -/
def P17719403187128099264.Spec : Prop :=
  ∀ n, P17719403187128099264.a n = A156242 (n + 1)

end A156242

/-! ## A156242.P4127416342280799920

`A156264(A249093(2*(n+1))+7)+A156243(n+1)`
-/

namespace A156242.P4127416342280799920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156264 (A249093 (2 * (n + 1)) + 7).toNat + A156243 (n + 1)

end

end A156242.P4127416342280799920

namespace A156242

/-- `A156264(A249093(2*(n+1))+7)+A156243(n+1)` -/
def P4127416342280799920.Spec : Prop :=
  ∀ n, P4127416342280799920.a n = A156242 (n + 1)

end A156242

/-! ## A156242.P15208723835040409159

`A156243(n+2)-A100428(n+2)`
-/

namespace A156242.P15208723835040409159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 2) - A100428 (n + 2)

end

end A156242.P15208723835040409159

namespace A156242

/-- `A156243(n+2)-A100428(n+2)` -/
def P15208723835040409159.Spec : Prop :=
  ∀ n, P15208723835040409159.a n = A156242 (n + 1)

end A156242

/-! ## A156242.P142017163060632733

`∩[A013948(n+1), A022297(n+1)]`
-/

namespace A156242.P142017163060632733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156242.P142017163060632733

namespace A156242

/-- `∩[A013948(n+1), A022297(n+1)]` -/
def P142017163060632733.Spec : Prop :=
  ∀ n, (P142017163060632733.a n : ℤ) = A156242 (n + 1)

end A156242

/-! ## A156242.P3857012985470758717

`∩[A013947(n+1)-1, A013948(n+1)]`
-/

namespace A156242.P3857012985470758717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156242.P3857012985470758717

namespace A156242

/-- `∩[A013947(n+1)-1, A013948(n+1)]` -/
def P3857012985470758717.Spec : Prop :=
  ∀ n, (P3857012985470758717.a n : ℤ) = A156242 (n + 1)

end A156242

/-! ## A156242.P16091648407567660430

`∩[A022297(n+1), A078649(n+1)-n]`
-/

namespace A156242.P16091648407567660430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156242.P16091648407567660430

namespace A156242

/-- `∩[A022297(n+1), A078649(n+1)-n]` -/
def P16091648407567660430.Spec : Prop :=
  ∀ n, (P16091648407567660430.a n : ℤ) = A156242 (n + 1)

end A156242

/-! ## A156242.P11075625041372144578

`A013948(∑[A000002(2*(n+1))])`
-/

namespace A156242.P11075625041372144578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A156242.P11075625041372144578

namespace A156242

/-- `A013948(∑[A000002(2*(n+1))])` -/
def P11075625041372144578.Spec : Prop :=
  ∀ n, P11075625041372144578.a n = A156242 (n + 1)

end A156242

/-! ## A156242.P9246172417659179907

`A156243(n+1)+A000002(2*(n+1))`
-/

namespace A156242.P9246172417659179907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156243 (n + 1) + A000002 (2 * (n + 1))

end

end A156242.P9246172417659179907

namespace A156242

/-- `A156243(n+1)+A000002(2*(n+1))` -/
def P9246172417659179907.Spec : Prop :=
  ∀ n, P9246172417659179907.a n = A156242 (n + 1)

end A156242

/-! ## A156242.P1261500339474010545

`∑[A000002(2*n+1)+A000002(2*(n+1))]`
-/

namespace A156242.P1261500339474010545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 * n + 1) + A000002 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156242.P1261500339474010545

namespace A156242

/-- `∑[A000002(2*n+1)+A000002(2*(n+1))]` -/
def P1261500339474010545.Spec : Prop :=
  ∀ n, P1261500339474010545.a n = A156242 (n + 1)

end A156242

/-! ## A156242.P11835022906459756782

`∑[A333229(2*n+1)]`
-/

namespace A156242.P11835022906459756782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333229 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156242.P11835022906459756782

namespace A156242

/-- `∑[A333229(2*n+1)]` -/
def P11835022906459756782.Spec : Prop :=
  ∀ n, P11835022906459756782.a n = A156242 (n + 1)

end A156242

/-! ## A156242.P1323479191041532105

`record[A054353(xor(1, n)+1)]`
-/

namespace A156242.P1323479191041532105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156242.P1323479191041532105

namespace A156242

/-- `record[A054353(xor(1, n)+1)]` -/
def P1323479191041532105.Spec : Prop :=
  ∀ n, P1323479191041532105.a n = A156242 (n + 1)

end A156242

/-! ## A156242.P2512667242599144403

`record[A054353(-xor(n, -2))]`
-/

namespace A156242.P2512667242599144403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (-Int.xor (n : ℤ) (-2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156242.P2512667242599144403

namespace A156242

/-- `record[A054353(-xor(n, -2))]` -/
def P2512667242599144403.Spec : Prop :=
  ∀ n, P2512667242599144403.a n = A156242 (n + 1)

end A156242

/-! ## A156242.P3994219126332046188

`or(char[2], A054353(Δ[n²]+1))`
-/

namespace A156242.P3994219126332046188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A054353 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat)

end

end A156242.P3994219126332046188

namespace A156242

/-- `or(char[2], A054353(Δ[n²]+1))` -/
def P3994219126332046188.Spec : Prop :=
  ∀ n, P3994219126332046188.a n = A156242 (n + 1)

end A156242

/-! ## A156242.P17811434299393443936

`A074286(2*(n+1))+2*(n+1)`
-/

namespace A156242.P17811434299393443936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (2 * (n + 1)) + (2 * (n + 1) : ℤ)

end

end A156242.P17811434299393443936

namespace A156242

/-- `A074286(2*(n+1))+2*(n+1)` -/
def P17811434299393443936.Spec : Prop :=
  ∀ n, P17811434299393443936.a n = A156242 (n + 1)

end A156242

/-! ## A156242.P1798893752799213418

`∩[A013948(n+1), A054353(n+1)]`
-/

namespace A156242.P1798893752799213418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156242.P1798893752799213418

namespace A156242

/-- `∩[A013948(n+1), A054353(n+1)]` -/
def P1798893752799213418.Spec : Prop :=
  ∀ n, (P1798893752799213418.a n : ℤ) = A156242 (n + 1)

end A156242

/-!
# A156243: Bisection of A054353.

The programs for A156243, the canonical program `A156243.P395087012412145335` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156243 has offset 1).

The definition of A156243 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A156243.P395087012412145335

`A054353(2*n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156243

/-- `A054353(2*n+1)` -/
def P395087012412145335.Spec : Prop :=
  ∀ n, P395087012412145335.a n = A156243 (n + 1)

theorem P395087012412145335.correct : P395087012412145335.Spec := by
  intro n
  simp only [A156243, Nat.add_sub_cancel]

end A156243

/-! ## A156243.P4780737651956849467

`∑[A332273(n+1)]`
-/

namespace A156243.P4780737651956849467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156243.P4780737651956849467

namespace A156243

/-- `∑[A332273(n+1)]` -/
def P4780737651956849467.Spec : Prop :=
  ∀ n, P4780737651956849467.a n = A156243 (n + 1)

end A156243

/-! ## A156243.P251923870894448519

`A156242(n+1)-A100429(n+1)`
-/

namespace A156243.P251923870894448519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) - A100429 (n + 1)

end

end A156243.P251923870894448519

namespace A156243

/-- `A156242(n+1)-A100429(n+1)` -/
def P251923870894448519.Spec : Prop :=
  ∀ n, P251923870894448519.a n = A156243 (n + 1)

end A156243

/-! ## A156243.P14654129822424684052

`∑[A332875(n+1)]-A100429(n+1)`
-/

namespace A156243.P14654129822424684052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A100429 (n + 1)

end

end A156243.P14654129822424684052

namespace A156243

/-- `∑[A332875(n+1)]-A100429(n+1)` -/
def P14654129822424684052.Spec : Prop :=
  ∀ n, P14654129822424684052.a n = A156243 (n + 1)

end A156243

/-! ## A156243.P5508858109377786601

`A156242(n+1)-A022303(comp[2*n+5]+2)`
-/

namespace A156243.P5508858109377786601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) - A022303 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A156243.P5508858109377786601

namespace A156243

/-- `A156242(n+1)-A022303(comp[2*n+5]+2)` -/
def P5508858109377786601.Spec : Prop :=
  ∀ n, P5508858109377786601.a n = A156243 (n + 1)

end A156243

/-! ## A156243.P2194872720602413202

`A156242(n+1)-A054977(A249094(2*(n+1)))`
-/

namespace A156243.P2194872720602413202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) - A054977 (A249094 (2 * (n + 1))).toNat

end

end A156243.P2194872720602413202

namespace A156243

/-- `A156242(n+1)-A054977(A249094(2*(n+1)))` -/
def P2194872720602413202.Spec : Prop :=
  ∀ n, P2194872720602413202.a n = A156243 (n + 1)

end A156243

/-! ## A156243.P5613472956708568280

`∑[A332875(n+1)]-A054977(A249094(2*(n+1)))`
-/

namespace A156243.P5613472956708568280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A054977 (A249094 (2 * (n + 1))).toNat

end

end A156243.P5613472956708568280

namespace A156243

/-- `∑[A332875(n+1)]-A054977(A249094(2*(n+1)))` -/
def P5613472956708568280.Spec : Prop :=
  ∀ n, P5613472956708568280.a n = A156243 (n + 1)

end A156243

/-! ## A156243.P9006801816612302916

`A156242(n+1)-A156264(A249093(2*(n+1))+7)`
-/

namespace A156243.P9006801816612302916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) - A156264 (A249093 (2 * (n + 1)) + 7).toNat

end

end A156243.P9006801816612302916

namespace A156243

/-- `A156242(n+1)-A156264(A249093(2*(n+1))+7)` -/
def P9006801816612302916.Spec : Prop :=
  ∀ n, P9006801816612302916.a n = A156243 (n + 1)

end A156243

/-! ## A156243.P8826883446565310117

`A156242(n+1)-(A332875(n+1)-A100428(n+1))`
-/

namespace A156243.P8826883446565310117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) - (A332875 (n + 1) - A100428 (n + 1))

end

end A156243.P8826883446565310117

namespace A156243

/-- `A156242(n+1)-(A332875(n+1)-A100428(n+1))` -/
def P8826883446565310117.Spec : Prop :=
  ∀ n, P8826883446565310117.a n = A156243 (n + 1)

end A156243

/-! ## A156243.P12269259478972015986

`A013947(∑[A100428(n+1)])`
-/

namespace A156243.P12269259478972015986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A156243.P12269259478972015986

namespace A156243

/-- `A013947(∑[A100428(n+1)])` -/
def P12269259478972015986.Spec : Prop :=
  ∀ n, P12269259478972015986.a n = A156243 (n + 1)

end A156243

/-! ## A156243.P4261533200732591541

`record[A013947(n+1)%A022297(n+2)]`
-/

namespace A156243.P4261533200732591541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013947 (n + 1)) (A022297 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156243.P4261533200732591541

namespace A156243

/-- `record[A013947(n+1)%A022297(n+2)]` -/
def P4261533200732591541.Spec : Prop :=
  ∀ n, P4261533200732591541.a n = A156243 (n + 1)

end A156243

/-! ## A156243.P6337386072644408531

`∩[A013947(n+1), A013948(n+1)-1]`
-/

namespace A156243.P6337386072644408531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156243.P6337386072644408531

namespace A156243

/-- `∩[A013947(n+1), A013948(n+1)-1]` -/
def P6337386072644408531.Spec : Prop :=
  ∀ n, (P6337386072644408531.a n : ℤ) = A156243 (n + 1)

end A156243

/-! ## A156243.P6429993026300816400

`A013947(∑[A000002(2*n+1)])`
-/

namespace A156243.P6429993026300816400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A156243.P6429993026300816400

namespace A156243

/-- `A013947(∑[A000002(2*n+1)])` -/
def P6429993026300816400.Spec : Prop :=
  ∀ n, P6429993026300816400.a n = A156243 (n + 1)

end A156243

/-! ## A156243.P103797850139666507

`A156242(n+1)-A000002(2*(n+1))`
-/

namespace A156243.P103797850139666507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) - A000002 (2 * (n + 1))

end

end A156243.P103797850139666507

namespace A156243

/-- `A156242(n+1)-A000002(2*(n+1))` -/
def P103797850139666507.Spec : Prop :=
  ∀ n, P103797850139666507.a n = A156243 (n + 1)

end A156243

/-! ## A156243.P2541273485426967028

`A216345(2*(n+1))-1`
-/

namespace A156243.P2541273485426967028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (2 * (n + 1)) - 1

end

end A156243.P2541273485426967028

namespace A156243

/-- `A216345(2*(n+1))-1` -/
def P2541273485426967028.Spec : Prop :=
  ∀ n, P2541273485426967028.a n = A156243 (n + 1)

end A156243

/-! ## A156243.P7186720751260139435

`record[A074286(n+1)+xor(1, n)]`
-/

namespace A156243.P7186720751260139435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (n + 1) + (Nat.xor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156243.P7186720751260139435

namespace A156243

/-- `record[A074286(n+1)+xor(1, n)]` -/
def P7186720751260139435.Spec : Prop :=
  ∀ n, P7186720751260139435.a n = A156243 (n + 1)

end A156243

/-! ## A156243.P3593614875279839791

`A156250(2*n+1)+2*n`
-/

namespace A156243.P3593614875279839791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156250 (2 * n + 1) + (2 * n : ℤ)

end

end A156243.P3593614875279839791

namespace A156243

/-- `A156250(2*n+1)+2*n` -/
def P3593614875279839791.Spec : Prop :=
  ∀ n, P3593614875279839791.a n = A156243 (n + 1)

theorem P3593614875279839791.correct : P3593614875279839791.Spec := by
  intro n
  simp only [A156243, Nat.add_sub_cancel, A156243.P3593614875279839791.a, A156243.P395087012412145335.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A156250, A156250.P8857404366207384535.a, A000002, A000002.P13330532946811820297.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156243

/-! ## A156243.P2711797788170104523

`A074286(2*n+1)+Δ[n²]`
-/

namespace A156243.P2711797788170104523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (2 * n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A156243.P2711797788170104523

namespace A156243

/-- `A074286(2*n+1)+Δ[n²]` -/
def P2711797788170104523.Spec : Prop :=
  ∀ n, P2711797788170104523.a n = A156243 (n + 1)

theorem P2711797788170104523.correct : P2711797788170104523.Spec := by
  intro n
  simp only [A156243, Nat.add_sub_cancel, A156243.P2711797788170104523.f1, A156243.P2711797788170104523.a, A156243.P395087012412145335.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A074286, A074286.P6856108592712522312.a, A000002, A000002.P13330532946811820297.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156243

/-! ## A156243.P8427909157871036506

`record[gcd(and(1, -n), A054353(n+1))]`
-/

namespace A156243.P8427909157871036506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.land 1 (-(n : ℤ))) (A054353 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156243.P8427909157871036506

namespace A156243

/-- `record[gcd(and(1, -n), A054353(n+1))]` -/
def P8427909157871036506.Spec : Prop :=
  ∀ n, (P8427909157871036506.a n : ℤ) = A156243 (n + 1)

end A156243

/-! ## A156243.P4805328768508804973

`∩[A013947(n+1), A054353(n+1)]`
-/

namespace A156243.P4805328768508804973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156243.P4805328768508804973

namespace A156243

/-- `∩[A013947(n+1), A054353(n+1)]` -/
def P4805328768508804973.Spec : Prop :=
  ∀ n, (P4805328768508804973.a n : ℤ) = A156243 (n + 1)

end A156243

/-!
# A156244: Bisection of A078649.

The programs for A156244, the canonical program `A156244.P7860944318460919725` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156244 has offset 1).

The definition of A156244 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A156244.P7860944318460919725

`A078649(2*(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A156244

/-- `A078649(2*(n+1))` -/
def P7860944318460919725.Spec : Prop :=
  ∀ n, P7860944318460919725.a n = A156244 (n + 1)

theorem P7860944318460919725.correct : P7860944318460919725.Spec := by
  intro n
  simp only [A156244, Nat.add_sub_cancel]

end A156244

/-! ## A156244.P11407086111482419562

`record[A078649(xor(1, n)+1)]`
-/

namespace A156244.P11407086111482419562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156244.P11407086111482419562

namespace A156244

/-- `record[A078649(xor(1, n)+1)]` -/
def P11407086111482419562.Spec : Prop :=
  ∀ n, P11407086111482419562.a n = A156244 (n + 1)

end A156244

/-! ## A156244.P12653281203123009361

`record[A078649(abs(xor(n, -2)))]`
-/

namespace A156244.P12653281203123009361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 |Int.xor (n : ℤ) (-2)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156244.P12653281203123009361

namespace A156244

/-- `record[A078649(abs(xor(n, -2)))]` -/
def P12653281203123009361.Spec : Prop :=
  ∀ n, P12653281203123009361.a n = A156244 (n + 1)

end A156244

/-! ## A156244.P3082590234281454753

`record[A078649(-xor(n, -2))]`
-/

namespace A156244.P3082590234281454753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (-Int.xor (n : ℤ) (-2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156244.P3082590234281454753

namespace A156244

/-- `record[A078649(-xor(n, -2))]` -/
def P3082590234281454753.Spec : Prop :=
  ∀ n, P3082590234281454753.a n = A156244 (n + 1)

end A156244

/-! ## A156244.P6721128932411845095

`root(A078649(n+2+n), 2)²`
-/

namespace A156244.P6721128932411845095
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A078649 (n + 2 + n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A156244.P6721128932411845095

namespace A156244

/-- `root(A078649(n+2+n), 2)²` -/
def P6721128932411845095.Spec : Prop :=
  ∀ n, P6721128932411845095.a n = (A156244 (n + 1) : ℝ)

end A156244

/-! ## A156244.P3068221589388856126

`record[A078649(n+3)/gcd(2, n)]`
-/

namespace A156244.P3068221589388856126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078649 (n + 3) : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156244.P3068221589388856126

namespace A156244

/-- `record[A078649(n+3)/gcd(2, n)]` -/
def P3068221589388856126.Spec : Prop :=
  ∀ n, P3068221589388856126.a n = (A156244 (n + 1) : ℚ)

end A156244

/-! ## A156244.P6409679186628494269

`record[A078649(n^(n%2)+1)]`
-/

namespace A156244.P6409679186628494269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n ^ (n % 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156244.P6409679186628494269

namespace A156244

/-- `record[A078649(n^(n%2)+1)]` -/
def P6409679186628494269.Spec : Prop :=
  ∀ n, P6409679186628494269.a n = A156244 (n + 1)

end A156244

/-! ## A156244.P2055984150494442002

`record[A078649((n+2)%20+n)]`
-/

namespace A156244.P2055984150494442002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 ((n + 2) % 20 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156244.P2055984150494442002

namespace A156244

/-- `record[A078649((n+2)%20+n)]` -/
def P2055984150494442002.Spec : Prop :=
  ∀ n, P2055984150494442002.a n = A156244 (n + 1)

end A156244

/-! ## A156244.P18305629737461056237

`A013948(2*(n+1))+Δ[n²]`
-/

namespace A156244.P18305629737461056237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (2 * (n + 1)) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A156244.P18305629737461056237

namespace A156244

/-- `A013948(2*(n+1))+Δ[n²]` -/
def P18305629737461056237.Spec : Prop :=
  ∀ n, P18305629737461056237.a n = A156244 (n + 1)

end A156244

/-! ## A156244.P10876114685312662973

`record[A078649(n+2)^(-1)^n]`
-/

namespace A156244.P10876114685312662973
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078649 (n + 2) : ℚ) ^ ((-1) ^ n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156244.P10876114685312662973

namespace A156244

/-- `record[A078649(n+2)^(-1)^n]` -/
def P10876114685312662973.Spec : Prop :=
  ∀ n, P10876114685312662973.a n = (A156244 (n + 1) : ℚ)

end A156244

/-! ## A156244.P10499656116694778641

`A156563(2*n+1)+A156563(2*(n+1))`
-/

namespace A156244.P10499656116694778641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156563 (2 * n + 1) + A156563 (2 * (n + 1))

end

end A156244.P10499656116694778641

namespace A156244

/-- `A156563(2*n+1)+A156563(2*(n+1))` -/
def P10499656116694778641.Spec : Prop :=
  ∀ n, P10499656116694778641.a n = A156244 (n + 1)

end A156244

/-! ## A156244.P5167184088401553576

`A306229(A074273(n+1))+2*n+1`
-/

namespace A156244.P5167184088401553576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306229 (A074273 (n + 1)).toNat + (2 * n + 1 : ℤ)

end

end A156244.P5167184088401553576

namespace A156244

/-- `A306229(A074273(n+1))+2*n+1` -/
def P5167184088401553576.Spec : Prop :=
  ∀ n, P5167184088401553576.a n = A156244 (n + 1)

end A156244

/-!
# A156245: Bisection of A078649.

The programs for A156245, the canonical program `A156245.P8092038638020984923` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156245 has offset 1).

The definition of A156245 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A156245.P8092038638020984923

`A078649(2*n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A156245

/-- `A078649(2*n+1)` -/
def P8092038638020984923.Spec : Prop :=
  ∀ n, P8092038638020984923.a n = A156245 (n + 1)

theorem P8092038638020984923.correct : P8092038638020984923.Spec := by
  intro n
  simp only [A156245, Nat.add_sub_cancel]

end A156245

/-! ## A156245.P13810899139724277322

`record[A078649(n^(n%2))]`
-/

namespace A156245.P13810899139724277322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156245.P13810899139724277322

namespace A156245

/-- `record[A078649(n^(n%2))]` -/
def P13810899139724277322.Spec : Prop :=
  ∀ n, P13810899139724277322.a n = A156245 (n + 1)

end A156245

/-! ## A156245.P8749430989247037038

`record[A078649(n^and(1, n))]`
-/

namespace A156245.P8749430989247037038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n ^ Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156245.P8749430989247037038

namespace A156245

/-- `record[A078649(n^and(1, n))]` -/
def P8749430989247037038.Spec : Prop :=
  ∀ n, P8749430989247037038.a n = A156245 (n + 1)

end A156245

/-! ## A156245.P12144926473670230231

`A013948(Δ[n²])+2*n`
-/

namespace A156245.P12144926473670230231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (2 * n : ℤ)

end

end A156245.P12144926473670230231

namespace A156245

/-- `A013948(Δ[n²])+2*n` -/
def P12144926473670230231.Spec : Prop :=
  ∀ n, P12144926473670230231.a n = A156245 (n + 1)

end A156245

/-! ## A156245.P1655876492032093197

`record[A078649(lcm(4, n+1)/4)]`
-/

namespace A156245.P1655876492032093197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (SequenceMachineLib.roundAway ((Nat.lcm 4 (n + 1) : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156245.P1655876492032093197

namespace A156245

/-- `record[A078649(lcm(4, n+1)/4)]` -/
def P1655876492032093197.Spec : Prop :=
  ∀ n, P1655876492032093197.a n = A156245 (n + 1)

end A156245

/-! ## A156245.P46018383727197285

`record[A078649((n+1)%6+n)]`
-/

namespace A156245.P46018383727197285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 ((n + 1) % 6 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156245.P46018383727197285

namespace A156245

/-- `record[A078649((n+1)%6+n)]` -/
def P46018383727197285.Spec : Prop :=
  ∀ n, P46018383727197285.a n = A156245 (n + 1)

end A156245

/-! ## A156245.P10479936206265325544

`record[A078649(n+2)/gcd(2, n)]`
-/

namespace A156245.P10479936206265325544
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078649 (n + 2) : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156245.P10479936206265325544

namespace A156245

/-- `record[A078649(n+2)/gcd(2, n)]` -/
def P10479936206265325544.Spec : Prop :=
  ∀ n, P10479936206265325544.a n = (A156245 (n + 1) : ℚ)

end A156245

/-! ## A156245.P4136985207561667522

`record[A078649(and(n, n+1)+1)]`
-/

namespace A156245.P4136985207561667522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (Nat.land n (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156245.P4136985207561667522

namespace A156245

/-- `record[A078649(and(n, n+1)+1)]` -/
def P4136985207561667522.Spec : Prop :=
  ∀ n, P4136985207561667522.a n = A156245 (n + 1)

end A156245

/-! ## A156245.P6840111505897717143

`∩[A074291(n+1), A078649(n+1)]`
-/

namespace A156245.P6840111505897717143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156245.P6840111505897717143

namespace A156245

/-- `∩[A074291(n+1), A078649(n+1)]` -/
def P6840111505897717143.Spec : Prop :=
  ∀ n, (P6840111505897717143.a n : ℤ) = A156245 (n + 1)

end A156245

/-! ## A156245.P14207731986430089632

`A054353(A013948(2*n+1))-1`
-/

namespace A156245.P14207731986430089632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (A013948 (2 * n + 1)).toNat - 1

end

end A156245.P14207731986430089632

namespace A156245

/-- `A054353(A013948(2*n+1))-1` -/
def P14207731986430089632.Spec : Prop :=
  ∀ n, P14207731986430089632.a n = A156245 (n + 1)

end A156245

/-! ## A156245.P11661085444693706555

`filter[A074291(n+1), A157687(#)]`
-/

namespace A156245.P11661085444693706555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074291 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A157687 (f1 j).toNat = 1) n)

end

end A156245.P11661085444693706555

namespace A156245

/-- `filter[A074291(n+1), A157687(#)]` -/
def P11661085444693706555.Spec : Prop :=
  ∀ n, P11661085444693706555.a n = A156245 (n + 1)

end A156245

/-! ## A156245.P300153151394034801

`A156253(A054353(A078649(n+1+n)))`
-/

namespace A156245.P300153151394034801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156253 (A054353 (A078649 (n + 1 + n)).toNat).toNat

end

end A156245.P300153151394034801

namespace A156245

/-- `A156253(A054353(A078649(n+1+n)))` -/
def P300153151394034801.Spec : Prop :=
  ∀ n, P300153151394034801.a n = A156245 (n + 1)

end A156245

/-! ## A156245.P13411007252831883593

`A306229(A013947(2*n+1))+2*n`
-/

namespace A156245.P13411007252831883593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306229 (A013947 (2 * n + 1)).toNat + (2 * n : ℤ)

end

end A156245.P13411007252831883593

namespace A156245

/-- `A306229(A013947(2*n+1))+2*n` -/
def P13411007252831883593.Spec : Prop :=
  ∀ n, P13411007252831883593.a n = A156245 (n + 1)

end A156245

/-!
# A156246: a(n)=sum(k=1,n,A000002(2*k-1)).

The programs for A156246, there is no canonical definition to state claims against.
-/

/-! ## A156246.P9554041453079409006

`A156562(Δ[n²])`
-/

namespace A156246.P9554041453079409006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A156246.P9554041453079409006

/-! ## A156246.P8859856072140549386

`∑[A100428(n+1)]`
-/

namespace A156246.P8859856072140549386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156246.P8859856072140549386

/-! ## A156246.P14113441469034631095

`∑[A000002(Δ[n²])]`
-/

namespace A156246.P14113441469034631095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156246.P14113441469034631095

/-! ## A156246.P5855961893336736132

`∑[A088570(Δ[n²])]`
-/

namespace A156246.P5855961893336736132
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088570 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156246.P5855961893336736132

/-! ## A156246.P8536900228863981047

`∑[gcd(2, A160051(2*n))]`
-/

namespace A156246.P8536900228863981047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A160051 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156246.P8536900228863981047

/-! ## A156246.P5474737399171887059

`record[A156562(n^(n%2))]`
-/

namespace A156246.P5474737399171887059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156246.P5474737399171887059

/-! ## A156246.P7983423157936727676

`∑[A074290(Δ[n²])+1]`
-/

namespace A156246.P7983423157936727676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156246.P7983423157936727676

/-! ## A156246.P1388674044750676378

`∑[3-A049705(Δ[n²])]`
-/

namespace A156246.P1388674044750676378
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A049705 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156246.P1388674044750676378

/-! ## A156246.P11393391403878283261

`record[A156562(C(or(1, n), n))]`
-/

namespace A156246.P11393391403878283261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (Nat.choose (Nat.lor 1 n) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A156246.P11393391403878283261

/-! ## A156246.P9908214591787954641

`∑[dr(A000002(comp[2*n]))]`
-/

namespace A156246.P9908214591787954641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000002 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156246.P9908214591787954641

/-!
# A156247: a(n)=sum(k=1,n,A000002(2*k)).

The programs for A156247, there is no canonical definition to state claims against.
-/

/-! ## A156247.P1545242273262835367

`∑[A100429(n+1)]`
-/

namespace A156247.P1545242273262835367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156247.P1545242273262835367

/-! ## A156247.P2829436326549473627

`∑[A078880(Δ[n²])]`
-/

namespace A156247.P2829436326549473627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156247.P2829436326549473627

/-! ## A156247.P12914165642433536131

`A156562(2*(n+1))`
-/

namespace A156247.P12914165642433536131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (2 * (n + 1))

end

end A156247.P12914165642433536131

/-! ## A156247.P1932446168079862250

`A074286(3*n+4)`
-/

namespace A156247.P1932446168079862250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (3 * n + 4)

end

end A156247.P1932446168079862250

/-! ## A156247.P12696364454839046072

`lt[2, A306323(n+1)]`
-/

namespace A156247.P12696364454839046072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306323 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A156247.P12696364454839046072

/-! ## A156247.P17333022399469418

`∑[A000002(2*(n+1))]`
-/

namespace A156247.P17333022399469418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156247.P17333022399469418

/-! ## A156247.P613211102109431376

`∑[A006928(Δ[n²])]+1`
-/

namespace A156247.P613211102109431376
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A156247.P613211102109431376

/-! ## A156247.P2008763359780229072

`∑[A157686(Δ[n²])+1]`
-/

namespace A156247.P2008763359780229072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156247.P2008763359780229072

/-! ## A156247.P12944569127671126328

`∑[log2(A088570(2*(n+1)))]`
-/

namespace A156247.P12944569127671126328
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A088570 (2 * (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156247.P12944569127671126328

/-! ## A156247.P18131495663663052713

`∑[A078880(2*n+1)!]`
-/

namespace A156247.P18131495663663052713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A078880 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156247.P18131495663663052713

/-!
# A156248: a(n) = Sum_{k=1..n} (-1)^k*A000002(2*k).

The programs for A156248, there is no canonical definition to state claims against.
-/

/-! ## A156248.P3615424650998139509

`∑[-(A078880(Δ[n²])/(-1)^n)]`
-/

namespace A156248.P3615424650998139509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A078880 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℚ) / ((-1) ^ n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156248.P3615424650998139509

/-! ## A156248.P1054709015787395401

`∑[-(A000002(2*(n+1))/(-1)^n)]`
-/

namespace A156248.P1054709015787395401
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A000002 (2 * (n + 1)) : ℚ) / ((-1) ^ n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156248.P1054709015787395401

/-! ## A156248.P10140615073789946731

`∑[(n-xor(1, n))*A000002(Δ[n²]+1)]`
-/

namespace A156248.P10140615073789946731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.xor 1 n : ℤ)) * A000002 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156248.P10140615073789946731

/-! ## A156248.P9639871824813678603

`∑[-((3-A088569(Δ[n²]))/(-1)^n)]`
-/

namespace A156248.P9639871824813678603
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((3 - A088569 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℚ) / ((-1) ^ n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156248.P9639871824813678603

/-! ## A156248.P7695466580023191965

`∑[-((A123594(2*(n+2))+1)/(-1)^n)]`
-/

namespace A156248.P7695466580023191965
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A123594 (2 * (n + 2)) + 1 : ℚ) / ((-1) ^ n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156248.P7695466580023191965

/-! ## A156248.P115313479568940186

`∑[-(A033999(n)*A100429(n+1))]`
-/

namespace A156248.P115313479568940186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 n * A100429 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156248.P115313479568940186

/-! ## A156248.P12337007918345508154

`∑[A033999(n+1)*A100429(n+1)]`
-/

namespace A156248.P12337007918345508154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A100429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156248.P12337007918345508154

/-! ## A156248.P16629006627805385429

`∑[(A010673(n)-1)*A100429(n+1)]`
-/

namespace A156248.P16629006627805385429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010673 n - 1) * A100429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156248.P16629006627805385429

/-! ## A156248.P18276809232856373505

`∑[A000002(2*(n+1))*A033999(n+1)]`
-/

namespace A156248.P18276809232856373505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 * (n + 1)) * A033999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156248.P18276809232856373505

/-! ## A156248.P4352586245922171817

`∑[A000002(2*(n+1))*A228826(2*n+1)]`
-/

namespace A156248.P4352586245922171817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 * (n + 1)) * A228826 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156248.P4352586245922171817

/-!
# A156249: a(n)=sum(k=1,n,(-1)^k*A000002(2*k-1)).

The programs for A156249, the canonical program `A156249.P2244503862382991979` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156249 has offset 1).

The definition of A156249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156249.P3144687847097887693

`∑[-(A000002(Δ[n²])/(-1)^n)]`
-/

namespace A156249.P3144687847097887693
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A000002 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℚ) / ((-1) ^ n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156249.P3144687847097887693

namespace A156249

/-- `∑[-(A000002(Δ[n²])/(-1)^n)]` -/
def P3144687847097887693.Spec : Prop :=
  ∀ n, P3144687847097887693.a n = (A156249 (n + 1) : ℚ)

end A156249

/-! ## A156249.P18080848152490974259

`∑[-(A088570(Δ[n²])/(-1)^n)]`
-/

namespace A156249.P18080848152490974259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A088570 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℚ) / ((-1) ^ n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156249.P18080848152490974259

namespace A156249

/-- `∑[-(A088570(Δ[n²])/(-1)^n)]` -/
def P18080848152490974259.Spec : Prop :=
  ∀ n, P18080848152490974259.a n = (A156249 (n + 1) : ℚ)

end A156249

/-! ## A156249.P2244503862382991979

`-∑[(-1)^n*A000002(2*n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A156249

/-- `-∑[(-1)^n*A000002(2*n+1)]` -/
def P2244503862382991979.Spec : Prop :=
  ∀ n, P2244503862382991979.a n = A156249 (n + 1)

theorem P2244503862382991979.correct : P2244503862382991979.Spec := by
  intro n
  simp only [A156249, Nat.add_sub_cancel]

end A156249

/-! ## A156249.P4931790916539092010

`∑[(A049705(2*n+1)-3)*(-1)^n]`
-/

namespace A156249.P4931790916539092010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049705 (2 * n + 1) - 3) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156249.P4931790916539092010

namespace A156249

/-- `∑[(A049705(2*n+1)-3)*(-1)^n]` -/
def P4931790916539092010.Spec : Prop :=
  ∀ n, P4931790916539092010.a n = A156249 (n + 1)

end A156249

/-! ## A156249.P1619071658691266722

`∑[-((A123594(2*n+3)+1)/(-1)^n)]`
-/

namespace A156249.P1619071658691266722
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A123594 (2 * n + 3) + 1 : ℚ) / ((-1) ^ n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156249.P1619071658691266722

namespace A156249

/-- `∑[-((A123594(2*n+3)+1)/(-1)^n)]` -/
def P1619071658691266722.Spec : Prop :=
  ∀ n, P1619071658691266722.a n = (A156249 (n + 1) : ℚ)

end A156249

/-! ## A156249.P7693580077885207337

`∑[-(A033999(n)*A100428(n+1))]`
-/

namespace A156249.P7693580077885207337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A033999 n * A100428 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156249.P7693580077885207337

namespace A156249

/-- `∑[-(A033999(n)*A100428(n+1))]` -/
def P7693580077885207337.Spec : Prop :=
  ∀ n, P7693580077885207337.a n = A156249 (n + 1)

end A156249

/-! ## A156249.P13637758387232051629

`-∑[A000002(Δ[n²])/A033999(n)]`
-/

namespace A156249.P13637758387232051629
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000002 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A156249.P13637758387232051629

namespace A156249

/-- `-∑[A000002(Δ[n²])/A033999(n)]` -/
def P13637758387232051629.Spec : Prop :=
  ∀ n, P13637758387232051629.a n = (A156249 (n + 1) : ℚ)

end A156249

/-! ## A156249.P2213742821873888474

`∑[A033999(n+1)*A100428(n+1)]`
-/

namespace A156249.P2213742821873888474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A100428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156249.P2213742821873888474

namespace A156249

/-- `∑[A033999(n+1)*A100428(n+1)]` -/
def P2213742821873888474.Spec : Prop :=
  ∀ n, P2213742821873888474.a n = A156249 (n + 1)

end A156249

/-! ## A156249.P13495619143832263666

`∑[A000002(Δ[n²])*A033999(n+1)]`
-/

namespace A156249.P13495619143832263666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat * A033999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156249.P13495619143832263666

namespace A156249

/-- `∑[A000002(Δ[n²])*A033999(n+1)]` -/
def P13495619143832263666.Spec : Prop :=
  ∀ n, P13495619143832263666.a n = A156249 (n + 1)

end A156249

/-! ## A156249.P14055799312079471460

`∑[A100428(n+1)*A228826(2*n+1)]`
-/

namespace A156249.P14055799312079471460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1) * A228826 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156249.P14055799312079471460

namespace A156249

/-- `∑[A100428(n+1)*A228826(2*n+1)]` -/
def P14055799312079471460.Spec : Prop :=
  ∀ n, P14055799312079471460.a n = A156249 (n + 1)

end A156249

/-! ## A156249.P15461428238105534331

`∑[A000002(2*n+1)*A062157(n+2)]`
-/

namespace A156249.P15461428238105534331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 * n + 1) * A062157 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156249.P15461428238105534331

namespace A156249

/-- `∑[A000002(2*n+1)*A062157(n+2)]` -/
def P15461428238105534331.Spec : Prop :=
  ∀ n, P15461428238105534331.a n = A156249 (n + 1)

end A156249

/-! ## A156249.P6820614041851364241

`∑[A000002(2*n+1)*A056594(2*(n+1))]`
-/

namespace A156249.P6820614041851364241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 * n + 1) * A056594 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156249.P6820614041851364241

namespace A156249

/-- `∑[A000002(2*n+1)*A056594(2*(n+1))]` -/
def P6820614041851364241.Spec : Prop :=
  ∀ n, P6820614041851364241.a n = A156249 (n + 1)

end A156249

/-! ## A156249.P8442745759324074205

`∑[A000002(2*n+1)*A228826(2*n+1)]`
-/

namespace A156249.P8442745759324074205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (2 * n + 1) * A228826 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156249.P8442745759324074205

namespace A156249

/-- `∑[A000002(2*n+1)*A228826(2*n+1)]` -/
def P8442745759324074205.Spec : Prop :=
  ∀ n, P8442745759324074205.a n = A156249 (n + 1)

end A156249

/-! ## A156249.P8721583635707589174

`∑[-((-1)^n*A100428(n+1))%A000041(n+2)]`
-/

namespace A156249.P8721583635707589174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-((-1) ^ n * A100428 (n + 1))) (A000041 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156249.P8721583635707589174

namespace A156249

/-- `∑[-((-1)^n*A100428(n+1))%A000041(n+2)]` -/
def P8721583635707589174.Spec : Prop :=
  ∀ n, P8721583635707589174.a n = A156249 (n + 1)

end A156249

/-!
# A156250: Least k such that A078649(k) >= A054353(n).

The programs for A156250, the canonical program `A156250.P8857404366207384535` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156250 has offset 1).

The definition of A156250 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A156250.P8857404366207384535

`A054353(n+1)-n`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156250

/-- `A054353(n+1)-n` -/
def P8857404366207384535.Spec : Prop :=
  ∀ n, P8857404366207384535.a n = A156250 (n + 1)

theorem P8857404366207384535.correct : P8857404366207384535.Spec := by
  intro n
  simp only [A156250, Nat.add_sub_cancel]

end A156250

/-! ## A156250.P16211104514431124359

`A074286(n+1)+1`
-/

namespace A156250.P16211104514431124359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (n + 1) + 1

end

end A156250.P16211104514431124359

namespace A156250

/-- `A074286(n+1)+1` -/
def P16211104514431124359.Spec : Prop :=
  ∀ n, P16211104514431124359.a n = A156250 (n + 1)

theorem P16211104514431124359.correct : P16211104514431124359.Spec := by
  intro n
  simp only [A156250, Nat.add_sub_cancel, A156250.P16211104514431124359.a, A156250.P8857404366207384535.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A074286, A074286.P6856108592712522312.a, A000002, A000002.P13330532946811820297.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156250

/-! ## A156250.P2955060405513696249

`∑[A000002(n+1)]-n`
-/

namespace A156250.P2955060405513696249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A156250.P2955060405513696249

namespace A156250

/-- `∑[A000002(n+1)]-n` -/
def P2955060405513696249.Spec : Prop :=
  ∀ n, P2955060405513696249.a n = A156250 (n + 1)

end A156250

/-! ## A156250.P5447412456241590047

`∑[char[comp[A022297(n+2)]]]`
-/

namespace A156250.P5447412456241590047
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022297 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156250.P5447412456241590047

namespace A156250

/-- `∑[char[comp[A022297(n+2)]]]` -/
def P5447412456241590047.Spec : Prop :=
  ∀ n, (P5447412456241590047.a n : ℤ) = A156250 (n + 1)

end A156250

/-! ## A156250.P1206836555266998145

`∑[A157686(floor(acot(n)+n))]`
-/

namespace A156250.P1206836555266998145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156250.P1206836555266998145

namespace A156250

/-- `∑[A157686(floor(acot(n)+n))]` -/
def P1206836555266998145.Spec : Prop :=
  ∀ n, P1206836555266998145.a n = A156250 (n + 1)

end A156250

/-! ## A156250.P7858114768188899811

`∑[A157686(round(acot(n)+n))]`
-/

namespace A156250.P7858114768188899811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156250.P7858114768188899811

namespace A156250

/-- `∑[A157686(round(acot(n)+n))]` -/
def P7858114768188899811.Spec : Prop :=
  ∀ n, P7858114768188899811.a n = A156250 (n + 1)

end A156250

/-! ## A156250.P3845678726822094286

`2-A156077(n+1)+n`
-/

namespace A156250.P3845678726822094286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A156077 (n + 1) + (n : ℤ)

end

end A156250.P3845678726822094286

namespace A156250

/-- `2-A156077(n+1)+n` -/
def P3845678726822094286.Spec : Prop :=
  ∀ n, P3845678726822094286.a n = A156250 (n + 1)

theorem P3845678726822094286.correct : P3845678726822094286.Spec := by
  intro n
  simp only [A156250, Nat.add_sub_cancel, A156250.P3845678726822094286.a, A156250.P8857404366207384535.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A156077, A156077.P10312704143839705778.a, A000002, A000002.P13330532946811820297.a, A074286, A074286.P6856108592712522312.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156250

/-! ## A156250.P13158295225080869512

`A157686(n)+a(n-1)` with `a(0)=1`
-/

namespace A156250.P13158295225080869512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A157686 n + a (n - 1)

end

end A156250.P13158295225080869512

namespace A156250

/-- `A157686(n)+a(n-1)` -/
def P13158295225080869512.Spec : Prop :=
  ∀ n, P13158295225080869512.a n = A156250 (n + 1)

end A156250

/-! ## A156250.P3953902868627324718

`∑[A040001(A156253(n+1))]-n`
-/

namespace A156250.P3953902868627324718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A156253 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A156250.P3953902868627324718

namespace A156250

/-- `∑[A040001(A156253(n+1))]-n` -/
def P3953902868627324718.Spec : Prop :=
  ∀ n, P3953902868627324718.a n = A156250 (n + 1)

end A156250

/-! ## A156250.P15354875708954532971

`A156077(n+1)+A294448(n+1)+1`
-/

namespace A156250.P15354875708954532971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156077 (n + 1) + (A294448 (n + 1) + 1)

end

end A156250.P15354875708954532971

namespace A156250

/-- `A156077(n+1)+A294448(n+1)+1` -/
def P15354875708954532971.Spec : Prop :=
  ∀ n, P15354875708954532971.a n = A156250 (n + 1)

end A156250

/-! ## A156250.P15414173237025075645

`A216345(n+2)-(n+1)`
-/

namespace A156250.P15414173237025075645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 2) - (n + 1 : ℤ)

end

end A156250.P15414173237025075645

namespace A156250

/-- `A216345(n+2)-(n+1)` -/
def P15414173237025075645.Spec : Prop :=
  ∀ n, P15414173237025075645.a n = A156250 (n + 1)

end A156250

/-! ## A156250.P17039526381833384730

`∑[A157686(gcd(n, ∏{d}[n, #]))]`
-/

namespace A156250.P17039526381833384730
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (Nat.gcd n (∏ d ∈ Nat.divisors (f2 n), d))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156250.P17039526381833384730

namespace A156250

/-- `∑[A157686(gcd(n, ∏{d}[n, #]))]` -/
def P17039526381833384730.Spec : Prop :=
  ∀ n, P17039526381833384730.a n = A156250 (n + 1)

end A156250

/-! ## A156250.P8487831974975646885

`A319556(2*(n+1))+A216345(n+2)`
-/

namespace A156250.P8487831974975646885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319556 (2 * (n + 1)) + A216345 (n + 2)

end

end A156250.P8487831974975646885

namespace A156250

/-- `A319556(2*(n+1))+A216345(n+2)` -/
def P8487831974975646885.Spec : Prop :=
  ∀ n, P8487831974975646885.a n = A156250 (n + 1)

end A156250

/-! ## A156250.P14781233712634438756

`∑[A123594(n+3)]+1`
-/

namespace A156250.P14781233712634438756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A156250.P14781233712634438756

namespace A156250

/-- `∑[A123594(n+3)]+1` -/
def P14781233712634438756.Spec : Prop :=
  ∀ n, P14781233712634438756.a n = A156250 (n + 1)

end A156250

/-!
# A156251: Least k such that A078649(k)>=n.

The programs for A156251, there is no canonical definition to state claims against.
-/

/-! ## A156251.P3312159890929689990

`A079726(n+1)-n`
-/

namespace A156251.P3312159890929689990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079726 (n + 1) - (n : ℤ)

end

end A156251.P3312159890929689990

/-! ## A156251.P17059021111874407689

`∑[char[comp[A054353(n+1)]]]`
-/

namespace A156251.P17059021111874407689
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156251.P17059021111874407689

/-! ## A156251.P10127939285876379078

`2-A156253(n+1)+n`
-/

namespace A156251.P10127939285876379078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A156253 (n + 1) + (n : ℤ)

end

end A156251.P10127939285876379078

/-! ## A156251.P12682518785200815396

`A157687(n)+a(n-1)` with `a(0)=1`
-/

namespace A156251.P12682518785200815396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A157687 n + a (n - 1)

end

end A156251.P12682518785200815396

/-! ## A156251.P1648810324824454473

`∑[A157687(abs(1-n)+1)]`
-/

namespace A156251.P1648810324824454473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157687 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156251.P1648810324824454473

/-! ## A156251.P15782893699432460285

`∑[char[A078649(n+1)]]+1`
-/

namespace A156251.P15782893699432460285
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A156251.P15782893699432460285

/-! ## A156251.P11254634583429328748

`∑[1-char[∑[A000002(n+1)]]]`
-/

namespace A156251.P11254634583429328748
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156251.P11254634583429328748

/-! ## A156251.P969988949011952025

`∑[char[comp[A216345(n+2)-1]]]`
-/

namespace A156251.P969988949011952025
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 2) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156251.P969988949011952025

/-! ## A156251.P3287269270117953548

`(n-A156723(n+1))/2+1`
-/

namespace A156251.P3287269270117953548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A156723 (n + 1) : ℚ) / 2 + 1

end

end A156251.P3287269270117953548

/-! ## A156251.P15814484407688026419

`A156250(1-a(n-1)+n)` with `a(0)=1`
-/

namespace A156251.P15814484407688026419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A156250 (1 - a (n - 1) + (n : ℤ)).toNat

end

end A156251.P15814484407688026419

/-!
# A156252: Primes of the form 4*n^2+6*n+43.

The programs for A156252, the canonical program `A156252.P7160313178619092280` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156252 has offset 1).

The definition of A156252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 291 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156252.P7160313178619092280

`p?[(n+1)*or(1, n)+41]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156252

/-- `p?[(n+1)*or(1, n)+41]` -/
def P7160313178619092280.Spec : Prop :=
  ∀ n, (P7160313178619092280.a n : ℤ) = A156252 (n + 1)

theorem P7160313178619092280.correct : P7160313178619092280.Spec := by
  intro n
  simp only [A156252, Nat.add_sub_cancel]

end A156252

/-! ## A156252.P2562554374996094855

`p?[∑[a(n-1)+8]+41]` with `a(0)=2`
-/

namespace A156252.P2562554374996094855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 41

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A156252.P2562554374996094855

namespace A156252

/-- `p?[∑[a(n-1)+8]+41]` -/
def P2562554374996094855.Spec : Prop :=
  ∀ n, (P2562554374996094855.a n : ℤ) = A156252 (n + 1)

end A156252

/-! ## A156252.P14970186091251158234

`p?[xor(1, a(n-2)+n+1)]` with `a(0)=60, a(1)=43`
-/

namespace A156252.P14970186091251158234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [60, 43] fun n f1 =>
  Nat.xor 1 (f1 (n - 2) + (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A156252.P14970186091251158234

namespace A156252

/-- `p?[xor(1, a(n-2)+n+1)]` -/
def P14970186091251158234.Spec : Prop :=
  ∀ n, (P14970186091251158234.a n : ℤ) = A156252 (n + 1)

end A156252

/-! ## A156252.P2568716914563882913

`p?[A202018(2*n+1)]`
-/

namespace A156252.P2568716914563882913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156252.P2568716914563882913

namespace A156252

/-- `p?[A202018(2*n+1)]` -/
def P2568716914563882913.Spec : Prop :=
  ∀ n, P2568716914563882913.a n = A156252 (n + 1)

end A156252

/-! ## A156252.P7787522708121866625

`p?[and(1, n)*A202018(n)]`
-/

namespace A156252.P7787522708121866625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A202018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156252.P7787522708121866625

namespace A156252

/-- `p?[and(1, n)*A202018(n)]` -/
def P7787522708121866625.Spec : Prop :=
  ∀ n, P7787522708121866625.a n = A156252 (n + 1)

end A156252

/-! ## A156252.P18075964114947492560

`p?[record[A202018(A000265(n+1))]]`
-/

namespace A156252.P18075964114947492560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (A000265 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156252.P18075964114947492560

namespace A156252

/-- `p?[record[A202018(A000265(n+1))]]` -/
def P18075964114947492560.Spec : Prop :=
  ∀ n, P18075964114947492560.a n = A156252 (n + 1)

end A156252

/-! ## A156252.P8346940681962549621

`p?[A202018(n+1)+A028896(n)]`
-/

namespace A156252.P8346940681962549621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (n + 1) + A028896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156252.P8346940681962549621

namespace A156252

/-- `p?[A202018(n+1)+A028896(n)]` -/
def P8346940681962549621.Spec : Prop :=
  ∀ n, P8346940681962549621.a n = A156252 (n + 1)

end A156252

/-! ## A156252.P5088175470839309392

`∩[A202018(2*n+1), A257362(n+2)]`
-/

namespace A156252.P5088175470839309392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257362 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156252.P5088175470839309392

namespace A156252

/-- `∩[A202018(2*n+1), A257362(n+2)]` -/
def P5088175470839309392.Spec : Prop :=
  ∀ n, (P5088175470839309392.a n : ℤ) = A156252 (n + 1)

end A156252

/-! ## A156252.P15446971535783245153

`∩[A202018(2*n+1), A296921(n+2)]`
-/

namespace A156252.P15446971535783245153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296921 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156252.P15446971535783245153

namespace A156252

/-- `∩[A202018(2*n+1), A296921(n+2)]` -/
def P15446971535783245153.Spec : Prop :=
  ∀ n, (P15446971535783245153.a n : ℤ) = A156252 (n + 1)

end A156252

/-! ## A156252.P16720755423816331731

`∩[A202018(2*n+1), A341790(n+2)]`
-/

namespace A156252.P16720755423816331731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156252.P16720755423816331731

namespace A156252

/-- `∩[A202018(2*n+1), A341790(n+2)]` -/
def P16720755423816331731.Spec : Prop :=
  ∀ n, (P16720755423816331731.a n : ℤ) = A156252 (n + 1)

end A156252

/-! ## A156252.P11715490457951028484

`∩[A342253(2*(n+1)), A257362(n+2)]`
-/

namespace A156252.P11715490457951028484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342253 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257362 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156252.P11715490457951028484

namespace A156252

/-- `∩[A342253(2*(n+1)), A257362(n+2)]` -/
def P11715490457951028484.Spec : Prop :=
  ∀ n, (P11715490457951028484.a n : ℤ) = A156252 (n + 1)

end A156252

/-! ## A156252.P6475691018412140482

`∩[A342253(2*(n+1)), A296921(n+2)]`
-/

namespace A156252.P6475691018412140482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342253 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296921 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156252.P6475691018412140482

namespace A156252

/-- `∩[A342253(2*(n+1)), A296921(n+2)]` -/
def P6475691018412140482.Spec : Prop :=
  ∀ n, (P6475691018412140482.a n : ℤ) = A156252 (n + 1)

end A156252

/-! ## A156252.P1706439616707703440

`∩[A342253(2*(n+1)), A341790(n+2)]`
-/

namespace A156252.P1706439616707703440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342253 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341790 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156252.P1706439616707703440

namespace A156252

/-- `∩[A342253(2*(n+1)), A341790(n+2)]` -/
def P1706439616707703440.Spec : Prop :=
  ∀ n, (P1706439616707703440.a n : ℤ) = A156252 (n + 1)

end A156252

/-! ## A156252.P193704235364366965

`∩[A202018(2*n+1), A045438(n+2)]`
-/

namespace A156252.P193704235364366965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045438 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156252.P193704235364366965

namespace A156252

/-- `∩[A202018(2*n+1), A045438(n+2)]` -/
def P193704235364366965.Spec : Prop :=
  ∀ n, (P193704235364366965.a n : ℤ) = A156252 (n + 1)

end A156252

/-! ## A156252.P5542748403468109791

`∩[A202018(2*n+1), A045448(n+2)]`
-/

namespace A156252.P5542748403468109791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045448 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156252.P5542748403468109791

namespace A156252

/-- `∩[A202018(2*n+1), A045448(n+2)]` -/
def P5542748403468109791.Spec : Prop :=
  ∀ n, (P5542748403468109791.a n : ℤ) = A156252 (n + 1)

end A156252

/-! ## A156252.P8550286649300611337

`filter[A202018(2*n+1), A010051(#)]`
-/

namespace A156252.P8550286649300611337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A156252.P8550286649300611337

namespace A156252

/-- `filter[A202018(2*n+1), A010051(#)]` -/
def P8550286649300611337.Spec : Prop :=
  ∀ n, P8550286649300611337.a n = A156252 (n + 1)

end A156252

/-! ## A156252.P7687871987400071567

`filter[A202018(2*n+1), A066829(#)]`
-/

namespace A156252.P7687871987400071567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A156252.P7687871987400071567

namespace A156252

/-- `filter[A202018(2*n+1), A066829(#)]` -/
def P7687871987400071567.Spec : Prop :=
  ∀ n, P7687871987400071567.a n = A156252 (n + 1)

end A156252

/-! ## A156252.P4947986371592584473

`filter[A202018(2*n+1), A069513(#)]`
-/

namespace A156252.P4947986371592584473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A156252.P4947986371592584473

namespace A156252

/-- `filter[A202018(2*n+1), A069513(#)]` -/
def P4947986371592584473.Spec : Prop :=
  ∀ n, P4947986371592584473.a n = A156252 (n + 1)

end A156252

/-!
# A156253: Least k such that A054353(k) >= n.

The programs for A156253, the canonical program `A156253.P16782691293242481478` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156253 has offset 1).

The definition of A156253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156253.P16782691293242481478

`a(n-gcd(a(a(n-1)-1), 2))+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156253

/-- `a(n-gcd(a(a(n-1)-1), 2))+1` -/
def P16782691293242481478.Spec : Prop :=
  ∀ n, (P16782691293242481478.a n : ℤ) = A156253 (n + 1)

theorem P16782691293242481478.correct : P16782691293242481478.Spec := by
  intro n
  simp only [A156253, Nat.add_sub_cancel]

end A156253

/-! ## A156253.P8118062655165912383

`a(n-gcd(2, a(a(n-2))))+1` with `a(0)=1, a(1)=2`
-/

namespace A156253.P8118062655165912383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - Nat.gcd 2 (a (a (n - 2)))) + 1

end

end A156253.P8118062655165912383

namespace A156253

/-- `a(n-gcd(2, a(a(n-2))))+1` -/
def P8118062655165912383.Spec : Prop :=
  ∀ n, (P8118062655165912383.a n : ℤ) = A156253 (n + 1)

end A156253

/-! ## A156253.P7451018800969058606

`a(a(a(n-2))%2+n-2)+1` with `a(0)=1, a(1)=2`
-/

namespace A156253.P7451018800969058606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (((a (a (n - 2)) % 2 : ℕ) : ℤ) + ((n : ℤ) - 2)).toNat + 1

end

end A156253.P7451018800969058606

namespace A156253

/-- `a(a(a(n-2))%2+n-2)+1` -/
def P7451018800969058606.Spec : Prop :=
  ∀ n, (P7451018800969058606.a n : ℤ) = A156253 (n + 1)

end A156253

/-! ## A156253.P3176422093330109027

`a(n-1)--a(a(n-2)%a(n-1))%2` with `a(0)=1, a(1)=2`
-/

namespace A156253.P3176422093330109027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - Int.tmod (-a (Int.tmod (a (n - 2)) (a (n - 1))).toNat) 2

end

end A156253.P3176422093330109027

namespace A156253

/-- `a(n-1)--a(a(n-2)%a(n-1))%2` -/
def P3176422093330109027.Spec : Prop :=
  ∀ n, P3176422093330109027.a n = A156253 (n + 1)

end A156253

/-! ## A156253.P964800516019155598

`a(n-1)+val(a(n-2), a(n-1))^val(a(a(n-2)), 2)` with `a(0)=1, a(1)=2`
-/

namespace A156253.P964800516019155598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation (a (n - 2)) (a (n - 1)) ^ SequenceMachineLib.valuation (a (a (n - 2))) 2

end

end A156253.P964800516019155598

namespace A156253

/-- `a(n-1)+val(a(n-2), a(n-1))^val(a(a(n-2)), 2)` -/
def P964800516019155598.Spec : Prop :=
  ∀ n, (P964800516019155598.a n : ℤ) = A156253 (n + 1)

end A156253

/-! ## A156253.P1581691493438653058

`∑[char[comp[A078649(n+1)]]]`
-/

namespace A156253.P1581691493438653058
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156253.P1581691493438653058

namespace A156253

/-- `∑[char[comp[A078649(n+1)]]]` -/
def P1581691493438653058.Spec : Prop :=
  ∀ n, (P1581691493438653058.a n : ℤ) = A156253 (n + 1)

end A156253

/-! ## A156253.P5970984442868865246

`A156728(n)+a(n-1)` with `a(0)=1`
-/

namespace A156253.P5970984442868865246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A156728 n + a (n - 1)

end

end A156253.P5970984442868865246

namespace A156253

/-- `A156728(n)+a(n-1)` -/
def P5970984442868865246.Spec : Prop :=
  ∀ n, P5970984442868865246.a n = A156253 (n + 1)

end A156253

/-! ## A156253.P14573032364173568721

`∑[char[A054353(n+1)]]+1`
-/

namespace A156253.P14573032364173568721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A156253.P14573032364173568721

namespace A156253

/-- `∑[char[A054353(n+1)]]+1` -/
def P14573032364173568721.Spec : Prop :=
  ∀ n, (P14573032364173568721.a n : ℤ) = A156253 (n + 1)

end A156253

/-! ## A156253.P4374270682748498300

`∑[char[A216345(n+1)-1]]`
-/

namespace A156253.P4374270682748498300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156253.P4374270682748498300

namespace A156253

/-- `∑[char[A216345(n+1)-1]]` -/
def P4374270682748498300.Spec : Prop :=
  ∀ n, (P4374270682748498300.a n : ℤ) = A156253 (n + 1)

end A156253

/-! ## A156253.P10861507534485227700

`a(n-1)+A054354(n)²` with `a(0)=1`
-/

namespace A156253.P10861507534485227700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A054354 n ^ 2

end

end A156253.P10861507534485227700

namespace A156253

/-- `a(n-1)+A054354(n)²` -/
def P10861507534485227700.Spec : Prop :=
  ∀ n, P10861507534485227700.a n = A156253 (n + 1)

end A156253

/-! ## A156253.P13206991288259938190

`∑[A156728(C(n, a(n-1)))]` with `a(0)=1`
-/

namespace A156253.P13206991288259938190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A156728 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156253.P13206991288259938190

namespace A156253

/-- `∑[A156728(C(n, a(n-1)))]` -/
def P13206991288259938190.Spec : Prop :=
  ∀ n, P13206991288259938190.a n = A156253 (n + 1)

end A156253

/-! ## A156253.P790204355440146934

`∑[char[∑[A000002(n+1)]]]+1`
-/

namespace A156253.P790204355440146934
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A156253.P790204355440146934

namespace A156253

/-- `∑[char[∑[A000002(n+1)]]]+1` -/
def P790204355440146934.Spec : Prop :=
  ∀ n, (P790204355440146934.a n : ℤ) = A156253 (n + 1)

end A156253

/-! ## A156253.P16968816702575409567

`∑[char[comp[A013948(n+1)+n]]]`
-/

namespace A156253.P16968816702575409567
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156253.P16968816702575409567

namespace A156253

/-- `∑[char[comp[A013948(n+1)+n]]]` -/
def P16968816702575409567.Spec : Prop :=
  ∀ n, (P16968816702575409567.a n : ℤ) = A156253 (n + 1)

end A156253

/-! ## A156253.P8986796887898425079

`2*(n+1)-A079726(n+1)`
-/

namespace A156253.P8986796887898425079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A079726 (n + 1)

end

end A156253.P8986796887898425079

namespace A156253

/-- `2*(n+1)-A079726(n+1)` -/
def P8986796887898425079.Spec : Prop :=
  ∀ n, P8986796887898425079.a n = A156253 (n + 1)

theorem P8986796887898425079.correct : P8986796887898425079.Spec := by
  intro n
  simp only [A156253, Nat.add_sub_cancel, A156253.P8986796887898425079.a, A156253.P16782691293242481478.a, A079726, A079726.P14487602782044974592.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156253

/-! ## A156253.P3628651809602005788

`1-A074286(a(n-1))+n` with `a(0)=1`
-/

namespace A156253.P3628651809602005788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - A074286 (a (n - 1)).toNat + (n : ℤ)

end

end A156253.P3628651809602005788

namespace A156253

/-- `1-A074286(a(n-1))+n` -/
def P3628651809602005788.Spec : Prop :=
  ∀ n, P3628651809602005788.a n = A156253 (n + 1)

end A156253

/-! ## A156253.P10613727246975676377

`A049705(a(n-1))+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A156253.P10613727246975676377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A049705 (a (n - 1)).toNat + a (n - 2)

end

end A156253.P10613727246975676377

namespace A156253

/-- `A049705(a(n-1))+a(n-2)` -/
def P10613727246975676377.Spec : Prop :=
  ∀ n, P10613727246975676377.a n = A156253 (n + 1)

end A156253

/-! ## A156253.P7412306970382750187

`A156351(A157687(n+1)+n+1)`
-/

namespace A156253.P7412306970382750187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156351 (A157687 (n + 1) + (n + 1 : ℤ)).toNat

end

end A156253.P7412306970382750187

namespace A156253

/-- `A156351(A157687(n+1)+n+1)` -/
def P7412306970382750187.Spec : Prop :=
  ∀ n, P7412306970382750187.a n = A156253 (n + 1)

end A156253

/-! ## A156253.P1704432358173889489

`1-A074286(A156351(n+1))+n`
-/

namespace A156253.P1704432358173889489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A074286 (A156351 (n + 1)).toNat + (n : ℤ)

end

end A156253.P1704432358173889489

namespace A156253

/-- `1-A074286(A156351(n+1))+n` -/
def P1704432358173889489.Spec : Prop :=
  ∀ n, P1704432358173889489.a n = A156253 (n + 1)

end A156253

/-! ## A156253.P14640747206861170454

`A156351(2-A156728(n+1)+n)`
-/

namespace A156253.P14640747206861170454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156351 (2 - A156728 (n + 1) + (n : ℤ)).toNat

end

end A156253.P14640747206861170454

namespace A156253

/-- `A156351(2-A156728(n+1)+n)` -/
def P14640747206861170454.Spec : Prop :=
  ∀ n, P14640747206861170454.a n = A156253 (n + 1)

end A156253

/-! ## A156253.P14558645494913008787

`A156351(n+1)+1-A054354(n+1)²`
-/

namespace A156253.P14558645494913008787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156351 (n + 1) + (1 - A054354 (n + 1) ^ 2)

end

end A156253.P14558645494913008787

namespace A156253

/-- `A156351(n+1)+1-A054354(n+1)²` -/
def P14558645494913008787.Spec : Prop :=
  ∀ n, P14558645494913008787.a n = A156253 (n + 1)

end A156253

/-!
# A156254: Triangle read by rows. Matrix inverse of A156241.

The programs for A156254, the canonical program `A156254.P15889775803240254451` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156254 has offset 1).

The definition of A156254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156254.P8477542013306479085

`abs(A156241(n+1))`
-/

namespace A156254.P8477542013306479085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156241 (n + 1)|

end

end A156254.P8477542013306479085

namespace A156254

/-- `abs(A156241(n+1))` -/
def P8477542013306479085.Spec : Prop :=
  ∀ n, P8477542013306479085.a n = A156254 (n + 1)

end A156254

/-! ## A156254.P5079082705920421634

`A156241(A000027(n+1))²`
-/

namespace A156254.P5079082705920421634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156241 (A000027 (n + 1)).toNat ^ 2

end

end A156254.P5079082705920421634

namespace A156254

/-- `A156241(A000027(n+1))²` -/
def P5079082705920421634.Spec : Prop :=
  ∀ n, P5079082705920421634.a n = A156254 (n + 1)

end A156254

/-! ## A156254.P16817596810280023624

`A156241(n+1)^A001105(n)`
-/

namespace A156254.P16817596810280023624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156241 (n + 1) : ℚ) ^ (A001105 n : ℤ)

end

end A156254.P16817596810280023624

namespace A156254

/-- `A156241(n+1)^A001105(n)` -/
def P16817596810280023624.Spec : Prop :=
  ∀ n, P16817596810280023624.a n = (A156254 (n + 1) : ℚ)

end A156254

/-! ## A156254.P2490442392942327119

`A156241(n+1)^A002378(n)`
-/

namespace A156254.P2490442392942327119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156241 (n + 1) : ℚ) ^ (A002378 n : ℤ)

end

end A156254.P2490442392942327119

namespace A156254

/-- `A156241(n+1)^A002378(n)` -/
def P2490442392942327119.Spec : Prop :=
  ∀ n, P2490442392942327119.a n = (A156254 (n + 1) : ℚ)

end A156254

/-! ## A156254.P9434269718044994461

`A156241(n+1)^A005893(n)`
-/

namespace A156254.P9434269718044994461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156241 (n + 1) : ℚ) ^ (A005893 n : ℤ)

end

end A156254.P9434269718044994461

namespace A156254

/-- `A156241(n+1)^A005893(n)` -/
def P9434269718044994461.Spec : Prop :=
  ∀ n, P9434269718044994461.a n = (A156254 (n + 1) : ℚ)

end A156254

/-! ## A156254.P15792020463608236254

`A156241(n+1)^A034262(n)`
-/

namespace A156254.P15792020463608236254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156241 (n + 1) : ℚ) ^ (A034262 n : ℤ)

end

end A156254.P15792020463608236254

namespace A156254

/-- `A156241(n+1)^A034262(n)` -/
def P15792020463608236254.Spec : Prop :=
  ∀ n, P15792020463608236254.a n = (A156254 (n + 1) : ℚ)

end A156254

/-! ## A156254.P6310090012021481106

`A156241(n+1)^A080971(n)`
-/

namespace A156254.P6310090012021481106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156241 (n + 1) : ℚ) ^ (A080971 n : ℤ)

end

end A156254.P6310090012021481106

namespace A156254

/-- `A156241(n+1)^A080971(n)` -/
def P6310090012021481106.Spec : Prop :=
  ∀ n, P6310090012021481106.a n = (A156254 (n + 1) : ℚ)

end A156254

/-! ## A156254.P11253550513325527064

`A156241(n+1)^A236931(n)`
-/

namespace A156254.P11253550513325527064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156241 (n + 1) : ℚ) ^ (A236931 n : ℤ)

end

end A156254.P11253550513325527064

namespace A156254

/-- `A156241(n+1)^A236931(n)` -/
def P11253550513325527064.Spec : Prop :=
  ∀ n, P11253550513325527064.a n = (A156254 (n + 1) : ℚ)

end A156254

/-! ## A156254.P1412163773574281014

`gcd(A000038(n), A156241(n+1))`
-/

namespace A156254.P1412163773574281014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A156241 (n + 1))

end

end A156254.P1412163773574281014

namespace A156254

/-- `gcd(A000038(n), A156241(n+1))` -/
def P1412163773574281014.Spec : Prop :=
  ∀ n, (P1412163773574281014.a n : ℤ) = A156254 (n + 1)

end A156254

/-! ## A156254.P11074397786254390578

`and(A071027(n), A156241(n+1))`
-/

namespace A156254.P11074397786254390578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071027 n) (A156241 (n + 1))

end

end A156254.P11074397786254390578

namespace A156254

/-- `and(A071027(n), A156241(n+1))` -/
def P11074397786254390578.Spec : Prop :=
  ∀ n, P11074397786254390578.a n = A156254 (n + 1)

end A156254

/-! ## A156254.P5575925265786984066

`(A128408(n+1)^A131198(n))²`
-/

namespace A156254.P5575925265786984066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A128408 (n + 1) : ℚ) ^ (A131198 n : ℤ)) ^ 2

end

end A156254.P5575925265786984066

namespace A156254

/-- `(A128408(n+1)^A131198(n))²` -/
def P5575925265786984066.Spec : Prop :=
  ∀ n, P5575925265786984066.a n = (A156254 (n + 1) : ℚ)

end A156254

/-! ## A156254.P15889775803240254451

`gcd(Δ[A003056(n)], A128408(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A156254

/-- `gcd(Δ[A003056(n)], A128408(n+1))` -/
def P15889775803240254451.Spec : Prop :=
  ∀ n, (P15889775803240254451.a n : ℤ) = A156254 (n + 1)

theorem P15889775803240254451.correct : P15889775803240254451.Spec := by
  intro n
  simp only [A156254, Nat.add_sub_cancel]

end A156254

/-! ## A156254.P13183491143305307713

`A054525(n+1)*A156241(n+1)`
-/

namespace A156254.P13183491143305307713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054525 (n + 1) * A156241 (n + 1)

end

end A156254.P13183491143305307713

namespace A156254

/-- `A054525(n+1)*A156241(n+1)` -/
def P13183491143305307713.Spec : Prop :=
  ∀ n, P13183491143305307713.a n = A156254 (n + 1)

end A156254

/-! ## A156254.P15998800843006648441

`(A128408(n+1)^A301422(n+1))²`
-/

namespace A156254.P15998800843006648441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A128408 (n + 1) : ℚ) ^ (A301422 (n + 1) : ℤ)) ^ 2

end

end A156254.P15998800843006648441

namespace A156254

/-- `(A128408(n+1)^A301422(n+1))²` -/
def P15998800843006648441.Spec : Prop :=
  ∀ n, P15998800843006648441.a n = (A156254 (n + 1) : ℚ)

end A156254

/-! ## A156254.P17975035667322523981

`and(A055080(n+1), A153659(n+1))`
-/

namespace A156254.P17975035667322523981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055080 (n + 1)) (A153659 (n + 1))

end

end A156254.P17975035667322523981

namespace A156254

/-- `and(A055080(n+1), A153659(n+1))` -/
def P17975035667322523981.Spec : Prop :=
  ∀ n, P17975035667322523981.a n = A156254 (n + 1)

end A156254

/-!
# A156256: Number of 1's separating successive 2's in the Kolakoski sequence A000002.

The programs for A156256, the canonical program `A156256.P13404197385732133803` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156256 has offset 1).

The definition of A156256 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A156256.P13404197385732133803

`A078649(n+2)-A078649(n+1)-2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A156256

/-- `A078649(n+2)-A078649(n+1)-2` -/
def P13404197385732133803.Spec : Prop :=
  ∀ n, P13404197385732133803.a n = A156256 (n + 1)

theorem P13404197385732133803.correct : P13404197385732133803.Spec := by
  intro n
  simp only [A156256, Nat.add_sub_cancel]

end A156256

/-! ## A156256.P5276845738239515903

`A306323(n+2)-2`
-/

namespace A156256.P5276845738239515903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306323 (n + 2) - 2

end

end A156256.P5276845738239515903

namespace A156256

/-- `A306323(n+2)-2` -/
def P5276845738239515903.Spec : Prop :=
  ∀ n, P5276845738239515903.a n = A156256 (n + 1)

end A156256

/-! ## A156256.P17622069535525823059

`Δ[A013948(n+1)]-1`
-/

namespace A156256.P17622069535525823059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A156256.P17622069535525823059

namespace A156256

/-- `Δ[A013948(n+1)]-1` -/
def P17622069535525823059.Spec : Prop :=
  ∀ n, P17622069535525823059.a n = A156256 (n + 1)

theorem P17622069535525823059.correct : P17622069535525823059.Spec := by
  intro n
  simp only [A156256, Nat.add_sub_cancel, A156256.P17622069535525823059.f1, A156256.P17622069535525823059.a, A156256.P13404197385732133803.a, A013948, A013948.P3339504944308927508.a, A078649, A078649.P18369770188371927822.f1, A078649.P18369770188371927822.a, A013947, A013947.P11385183315367073616.f1, A013947.P11385183315367073616.f2, A013947.P11385183315367073616.a, A156242, A156242.P3233582996753599041.a, A156243, A156243.P395087012412145335.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156256

/-! ## A156256.P5166187927693922179

`1-Δ[A156265(n+1)]`
-/

namespace A156256.P5166187927693922179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n)

end

end A156256.P5166187927693922179

namespace A156256

/-- `1-Δ[A156265(n+1)]` -/
def P5166187927693922179.Spec : Prop :=
  ∀ n, P5166187927693922179.a n = A156256 (n + 1)

theorem P5166187927693922179.correct : P5166187927693922179.Spec := by
  intro n
  simp only [A156256, Nat.add_sub_cancel, A156256.P5166187927693922179.f1, A156256.P5166187927693922179.a, A156256.P13404197385732133803.a, A078649, A078649.P18369770188371927822.f1, A078649.P18369770188371927822.a, A156265, A156265.P11083405800392652458.a, A013947, A013947.P11385183315367073616.f1, A013947.P11385183315367073616.f2, A013947.P11385183315367073616.a, A156242, A156242.P3233582996753599041.a, A156243, A156243.P395087012412145335.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156256

/-! ## A156256.P9518934113576519923

`Δ[A078649(n+1)]-2`
-/

namespace A156256.P9518934113576519923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A156256.P9518934113576519923

namespace A156256

/-- `Δ[A078649(n+1)]-2` -/
def P9518934113576519923.Spec : Prop :=
  ∀ n, P9518934113576519923.a n = A156256 (n + 1)

theorem P9518934113576519923.correct : P9518934113576519923.Spec := by
  intro n
  simp only [A156256, Nat.add_sub_cancel, A156256.P9518934113576519923.f1, A156256.P9518934113576519923.a, A156256.P13404197385732133803.a, SequenceMachineLib.memo_apply]

end A156256

/-! ## A156256.P7611796079319470283

`Δ[eq[1, A049705(n+1)]]-1`
-/

namespace A156256.P7611796079319470283
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A156256.P7611796079319470283

namespace A156256

/-- `Δ[eq[1, A049705(n+1)]]-1` -/
def P7611796079319470283.Spec : Prop :=
  ∀ n, P7611796079319470283.a n = A156256 (n + 1)

end A156256

/-! ## A156256.P11050451583337448500

`Δ[eq[1, A088569(n+1)]]-1`
-/

namespace A156256.P11050451583337448500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A156256.P11050451583337448500

namespace A156256

/-- `Δ[eq[1, A088569(n+1)]]-1` -/
def P11050451583337448500.Spec : Prop :=
  ∀ n, P11050451583337448500.a n = A156256 (n + 1)

end A156256

/-! ## A156256.P17057452908001356780

`Δ[eq[2, A000002(n+1)]]-1`
-/

namespace A156256.P17057452908001356780
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A156256.P17057452908001356780

namespace A156256

/-- `Δ[eq[2, A000002(n+1)]]-1` -/
def P17057452908001356780.Spec : Prop :=
  ∀ n, P17057452908001356780.a n = A156256 (n + 1)

end A156256

/-! ## A156256.P10047936286715237911

`Δ[eq[2, A078880(n+1)]]-1`
-/

namespace A156256.P10047936286715237911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A156256.P10047936286715237911

namespace A156256

/-- `Δ[eq[2, A078880(n+1)]]-1` -/
def P10047936286715237911.Spec : Prop :=
  ∀ n, P10047936286715237911.a n = A156256 (n + 1)

end A156256

/-! ## A156256.P15916680152546499802

`Δ[lt[A249093(n+2), 1]]-1`
-/

namespace A156256.P15916680152546499802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A156256.P15916680152546499802

namespace A156256

/-- `Δ[lt[A249093(n+2), 1]]-1` -/
def P15916680152546499802.Spec : Prop :=
  ∀ n, P15916680152546499802.a n = A156256 (n + 1)

end A156256

/-! ## A156256.P10030478529654169399

`Δ[lt[A249094(n+2), 1]]-1`
-/

namespace A156256.P10030478529654169399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249094 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A156256.P10030478529654169399

namespace A156256

/-- `Δ[lt[A249094(n+2), 1]]-1` -/
def P10030478529654169399.Spec : Prop :=
  ∀ n, P10030478529654169399.a n = A156256 (n + 1)

end A156256

/-! ## A156256.P16833682007847718760

`A000071(Δ[A078649(n+1)])`
-/

namespace A156256.P16833682007847718760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (f1 (n + 1) - f1 n).toNat

end

end A156256.P16833682007847718760

namespace A156256

/-- `A000071(Δ[A078649(n+1)])` -/
def P16833682007847718760.Spec : Prop :=
  ∀ n, P16833682007847718760.a n = A156256 (n + 1)

end A156256

/-! ## A156256.P12059344232026790715

`A000100(Δ[A078649(n+1)])`
-/

namespace A156256.P12059344232026790715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000100 (f1 (n + 1) - f1 n).toNat

end

end A156256.P12059344232026790715

namespace A156256

/-- `A000100(Δ[A078649(n+1)])` -/
def P12059344232026790715.Spec : Prop :=
  ∀ n, P12059344232026790715.a n = A156256 (n + 1)

end A156256

/-! ## A156256.P8430778615029331019

`A000900(Δ[A078649(n+1)])`
-/

namespace A156256.P8430778615029331019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000900 (f1 (n + 1) - f1 n).toNat

end

end A156256.P8430778615029331019

namespace A156256

/-- `A000900(Δ[A078649(n+1)])` -/
def P8430778615029331019.Spec : Prop :=
  ∀ n, P8430778615029331019.a n = A156256 (n + 1)

end A156256

/-! ## A156256.P17507205314813869745

`A001221(Δ[A013948(n+1)]!)`
-/

namespace A156256.P17507205314813869745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A156256.P17507205314813869745

namespace A156256

/-- `A001221(Δ[A013948(n+1)]!)` -/
def P17507205314813869745.Spec : Prop :=
  ∀ n, P17507205314813869745.a n = A156256 (n + 1)

end A156256

/-! ## A156256.P5887869162673545632

`A001222(Δ[A013948(n+1)]!)`
-/

namespace A156256.P5887869162673545632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (f1 (n + 1) - f1 n).toNat)

end

end A156256.P5887869162673545632

namespace A156256

/-- `A001222(Δ[A013948(n+1)]!)` -/
def P5887869162673545632.Spec : Prop :=
  ∀ n, P5887869162673545632.a n = A156256 (n + 1)

end A156256

/-! ## A156256.P7054167596860865869

`9%A000032(Δ[A078649(n+1)])`
-/

namespace A156256.P7054167596860865869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 9 (A000032 (f1 (n + 1) - f1 n).toNat)

end

end A156256.P7054167596860865869

namespace A156256

/-- `9%A000032(Δ[A078649(n+1)])` -/
def P7054167596860865869.Spec : Prop :=
  ∀ n, P7054167596860865869.a n = A156256 (n + 1)

end A156256

/-!
# A156257: Digit of runs of length 2 in the Kolakoski sequence A000002: a(n) = A000002(A078649(n)).

The programs for A156257, the canonical program `A156257.P13237227130742340145` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156257 has offset 1).

The definition of A156257 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A156257.P8425520433230813359

`A000002(A078649(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156257.P8425520433230813359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A078649 (n + 1)).toNat

end

end A156257.P8425520433230813359

namespace A156257

/-- `A000002(A078649(n+1))` -/
def P8425520433230813359.Spec : Prop :=
  ∀ n, P8425520433230813359.a n = A156257 (n + 1)

end A156257

/-! ## A156257.P13237227130742340145

`A000002(A078649(n+1)+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A156257

/-- `A000002(A078649(n+1)+1)` -/
def P13237227130742340145.Spec : Prop :=
  ∀ n, P13237227130742340145.a n = A156257 (n + 1)

theorem P13237227130742340145.correct : P13237227130742340145.Spec := by
  intro n
  simp only [A156257, Nat.add_sub_cancel]

end A156257

/-! ## A156257.P14576429479965430153

`gcd(2, A013948(n+1))`
-/

namespace A156257.P14576429479965430153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A013948 (n + 1))

end

end A156257.P14576429479965430153

namespace A156257

/-- `gcd(2, A013948(n+1))` -/
def P14576429479965430153.Spec : Prop :=
  ∀ n, (P14576429479965430153.a n : ℤ) = A156257 (n + 1)

end A156257

/-! ## A156257.P3094179216212491281

`2-comp[A022304(n+1)]%2`
-/

namespace A156257.P3094179216212491281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022304 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2 : ℕ) : ℤ)

end

end A156257.P3094179216212491281

namespace A156257

/-- `2-comp[A022304(n+1)]%2` -/
def P3094179216212491281.Spec : Prop :=
  ∀ n, P3094179216212491281.a n = A156257 (n + 1)

end A156257

/-! ## A156257.P8964214459213675790

`2-eq[1, A088569(n+1)]%2`
-/

namespace A156257.P8964214459213675790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 2 : ℕ) : ℤ)

end

end A156257.P8964214459213675790

namespace A156257

/-- `2-eq[1, A088569(n+1)]%2` -/
def P8964214459213675790.Spec : Prop :=
  ∀ n, P8964214459213675790.a n = A156257 (n + 1)

end A156257

/-! ## A156257.P2175356603082697312

`2-eq[0, A249093(n+2)]%2`
-/

namespace A156257.P2175356603082697312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 2 : ℕ) : ℤ)

end

end A156257.P2175356603082697312

namespace A156257

/-- `2-eq[0, A249093(n+2)]%2` -/
def P2175356603082697312.Spec : Prop :=
  ∀ n, P2175356603082697312.a n = A156257 (n + 1)

end A156257

/-! ## A156257.P3897875167204371638

`2-lt[1, A078880(n+1)]%2`
-/

namespace A156257.P3897875167204371638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n % 2 : ℕ) : ℤ)

end

end A156257.P3897875167204371638

namespace A156257

/-- `2-lt[1, A078880(n+1)]%2` -/
def P3897875167204371638.Spec : Prop :=
  ∀ n, P3897875167204371638.a n = A156257 (n + 1)

end A156257

/-! ## A156257.P7772083559257759812

`2-and(1, lt[0, A157686(n+1)])`
-/

namespace A156257.P7772083559257759812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.land 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℤ)

end

end A156257.P7772083559257759812

namespace A156257

/-- `2-and(1, lt[0, A157686(n+1)])` -/
def P7772083559257759812.Spec : Prop :=
  ∀ n, P7772083559257759812.a n = A156257 (n + 1)

end A156257

/-! ## A156257.P12564420787754756695

`2-and(1, A013948(Δ[n²]-n))`
-/

namespace A156257.P12564420787754756695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land 1 (A013948 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A156257.P12564420787754756695

namespace A156257

/-- `2-and(1, A013948(Δ[n²]-n))` -/
def P12564420787754756695.Spec : Prop :=
  ∀ n, P12564420787754756695.a n = A156257 (n + 1)

end A156257

/-! ## A156257.P13834945404873171092

`A040001(A013948(n+1))`
-/

namespace A156257.P13834945404873171092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A013948 (n + 1)).toNat

end

end A156257.P13834945404873171092

namespace A156257

/-- `A040001(A013948(n+1))` -/
def P13834945404873171092.Spec : Prop :=
  ∀ n, P13834945404873171092.a n = A156257 (n + 1)

end A156257

/-! ## A156257.P2104701657431966012

`A000034(A013948(n+1)+1)`
-/

namespace A156257.P2104701657431966012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A013948 (n + 1) + 1).toNat

end

end A156257.P2104701657431966012

namespace A156257

/-- `A000034(A013948(n+1)+1)` -/
def P2104701657431966012.Spec : Prop :=
  ∀ n, P2104701657431966012.a n = A156257 (n + 1)

end A156257

/-! ## A156257.P3676612280388099466

`A001511(or(2, A013948(n+1)))`
-/

namespace A156257.P3676612280388099466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.lor 2 (A013948 (n + 1))).toNat

end

end A156257.P3676612280388099466

namespace A156257

/-- `A001511(or(2, A013948(n+1)))` -/
def P3676612280388099466.Spec : Prop :=
  ∀ n, P3676612280388099466.a n = A156257 (n + 1)

end A156257

/-! ## A156257.P12272779871927046972

`A000034(eq[1, A049705(n+1)])`
-/

namespace A156257.P12272779871927046972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156257.P12272779871927046972

namespace A156257

/-- `A000034(eq[1, A049705(n+1)])` -/
def P12272779871927046972.Spec : Prop :=
  ∀ n, P12272779871927046972.a n = A156257 (n + 1)

end A156257

/-! ## A156257.P15022915464178276513

`A000034(lt[1, A000002(n+1)])`
-/

namespace A156257.P15022915464178276513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A156257.P15022915464178276513

namespace A156257

/-- `A000034(lt[1, A000002(n+1)])` -/
def P15022915464178276513.Spec : Prop :=
  ∀ n, P15022915464178276513.a n = A156257 (n + 1)

end A156257

/-! ## A156257.P17928534771915519945

`A000034(eq[2, A000002(n+1)])`
-/

namespace A156257.P17928534771915519945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156257.P17928534771915519945

namespace A156257

/-- `A000034(eq[2, A000002(n+1)])` -/
def P17928534771915519945.Spec : Prop :=
  ∀ n, P17928534771915519945.a n = A156257 (n + 1)

end A156257

/-! ## A156257.P8432811441469455623

`A000035(A013948(n+1)+1)+1`
-/

namespace A156257.P8432811441469455623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A013948 (n + 1) + 1).toNat + 1

end

end A156257.P8432811441469455623

namespace A156257

/-- `A000035(A013948(n+1)+1)+1` -/
def P8432811441469455623.Spec : Prop :=
  ∀ n, P8432811441469455623.a n = A156257 (n + 1)

end A156257

/-! ## A156257.P14005478214934576980

`A000035(eq[2, A000002(n+1)])+1`
-/

namespace A156257.P14005478214934576980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A156257.P14005478214934576980

namespace A156257

/-- `A000035(eq[2, A000002(n+1)])+1` -/
def P14005478214934576980.Spec : Prop :=
  ∀ n, P14005478214934576980.a n = A156257 (n + 1)

end A156257

/-! ## A156257.P5432542234487688427

`A248805(n+1)+A074292(n+1)`
-/

namespace A156257.P5432542234487688427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248805 (n + 1) + A074292 (n + 1)

end

end A156257.P5432542234487688427

namespace A156257

/-- `A248805(n+1)+A074292(n+1)` -/
def P5432542234487688427.Spec : Prop :=
  ∀ n, P5432542234487688427.a n = A156257 (n + 1)

theorem P5432542234487688427.correct : P5432542234487688427.Spec := by
  intro n
  simp only [A156257, Nat.add_sub_cancel, A156257.P5432542234487688427.a, A156257.P13237227130742340145.a, A000002, A000002.P13330532946811820297.a, A074292, A074292.P4626438801662741758.a, A078649, A078649.P18369770188371927822.f1, A078649.P18369770188371927822.a, A248805, A248805.P1988173767871098279.a, A013947, A013947.P11385183315367073616.f1, A013947.P11385183315367073616.f2, A013947.P11385183315367073616.a, A156253, A156253.P16782691293242481478.a, A156242, A156242.P3233582996753599041.a, A156243, A156243.P395087012412145335.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156257

/-! ## A156257.P14985745944346909426

`A000002(A013948(n+1)+n)`
-/

namespace A156257.P14985745944346909426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A013948 (n + 1) + (n : ℤ)).toNat

end

end A156257.P14985745944346909426

namespace A156257

/-- `A000002(A013948(n+1)+n)` -/
def P14985745944346909426.Spec : Prop :=
  ∀ n, P14985745944346909426.a n = A156257 (n + 1)

end A156257

/-! ## A156257.P8089428859575996666

`A078880(A078649(n+1)-1)`
-/

namespace A156257.P8089428859575996666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (A078649 (n + 1) - 1).toNat

end

end A156257.P8089428859575996666

namespace A156257

/-- `A078880(A078649(n+1)-1)` -/
def P8089428859575996666.Spec : Prop :=
  ∀ n, P8089428859575996666.a n = A156257 (n + 1)

end A156257

/-!
# A156258: a(n)=(1/2)*(A000002(A078649(n))-A000002(A078649(n)+2)+1).

The programs for A156258, the canonical program `A156258.P4976708628411436766` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156258 has offset 1).

The definition of A156258 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A156258.P4976708628411436766

`1/2*(A000002(A078649(n+1))-A000002(A078649(n+1)+2)+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A156258

/-- `1/2*(A000002(A078649(n+1))-A000002(A078649(n+1)+2)+1)` -/
def P4976708628411436766.Spec : Prop :=
  ∀ n, P4976708628411436766.a n = (A156258 (n + 1) : ℚ)

end A156258

/-! ## A156258.P6622011189423029261

`log2(A156257(n+1))`
-/

namespace A156258.P6622011189423029261
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A156257 (n + 1) : ℝ)

end

end A156258.P6622011189423029261

namespace A156258

/-- `log2(A156257(n+1))` -/
def P6622011189423029261.Spec : Prop :=
  ∀ n, P6622011189423029261.a n = (A156258 (n + 1) : ℝ)

end A156258

/-! ## A156258.P10551918266027917126

`1-A156259(1+n)`
-/

namespace A156258.P10551918266027917126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A156259 (1 + n)

end

end A156258.P10551918266027917126

namespace A156258

/-- `1-A156259(1+n)` -/
def P10551918266027917126.Spec : Prop :=
  ∀ n, P10551918266027917126.a n = A156258 (n + 1)

end A156258

/-! ## A156258.P2655521824637331949

`A156265(n+1)%2`
-/

namespace A156258.P2655521824637331949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156265 (n + 1)) 2

end

end A156258.P2655521824637331949

namespace A156258

/-- `A156265(n+1)%2` -/
def P2655521824637331949.Spec : Prop :=
  ∀ n, P2655521824637331949.a n = A156258 (n + 1)

end A156258

/-! ## A156258.P17727858458706041914

`log2(gcd(2, A013948(n+1)))`
-/

namespace A156258.P17727858458706041914
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A013948 (n + 1)) : ℝ)

end

end A156258.P17727858458706041914

namespace A156258

/-- `log2(gcd(2, A013948(n+1)))` -/
def P17727858458706041914.Spec : Prop :=
  ∀ n, P17727858458706041914.a n = (A156258 (n + 1) : ℝ)

end A156258

/-! ## A156258.P7813313347479065958

`eq[1, A049705(n+1)]%2`
-/

namespace A156258.P7813313347479065958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 2

end

end A156258.P7813313347479065958

namespace A156258

/-- `eq[1, A049705(n+1)]%2` -/
def P7813313347479065958.Spec : Prop :=
  ∀ n, (P7813313347479065958.a n : ℤ) = A156258 (n + 1)

end A156258

/-! ## A156258.P12246226677707906870

`lt[1, A000002(n+1)]%2`
-/

namespace A156258.P12246226677707906870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n % 2

end

end A156258.P12246226677707906870

namespace A156258

/-- `lt[1, A000002(n+1)]%2` -/
def P12246226677707906870.Spec : Prop :=
  ∀ n, (P12246226677707906870.a n : ℤ) = A156258 (n + 1)

end A156258

/-! ## A156258.P8885331361587728900

`∑[3-A306323(n+1)]%2`
-/

namespace A156258.P8885331361587728900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A306323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A156258.P8885331361587728900

namespace A156258

/-- `∑[3-A306323(n+1)]%2` -/
def P8885331361587728900.Spec : Prop :=
  ∀ n, P8885331361587728900.a n = A156258 (n + 1)

end A156258

/-! ## A156258.P14662793340867612930

`A059841(A013948(n+1))`
-/

namespace A156258.P14662793340867612930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A013948 (n + 1)).toNat

end

end A156258.P14662793340867612930

namespace A156258

/-- `A059841(A013948(n+1))` -/
def P14662793340867612930.Spec : Prop :=
  ∀ n, P14662793340867612930.a n = A156258 (n + 1)

end A156258

/-! ## A156258.P15118415267304596467

`A157686(A078649(n+1))`
-/

namespace A156258.P15118415267304596467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (A078649 (n + 1)).toNat

end

end A156258.P15118415267304596467

namespace A156258

/-- `A157686(A078649(n+1))` -/
def P15118415267304596467.Spec : Prop :=
  ∀ n, P15118415267304596467.a n = A156258 (n + 1)

end A156258

/-! ## A156258.P7797015071583839008

`A000035(A013948(n+1)+1)`
-/

namespace A156258.P7797015071583839008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A013948 (n + 1) + 1).toNat

end

end A156258.P7797015071583839008

namespace A156258

/-- `A000035(A013948(n+1)+1)` -/
def P7797015071583839008.Spec : Prop :=
  ∀ n, P7797015071583839008.a n = A156258 (n + 1)

end A156258

/-! ## A156258.P6998067731980244433

`A123594(A078649(n+1)+2)`
-/

namespace A156258.P6998067731980244433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (A078649 (n + 1) + 2).toNat

end

end A156258.P6998067731980244433

namespace A156258

/-- `A123594(A078649(n+1)+2)` -/
def P6998067731980244433.Spec : Prop :=
  ∀ n, P6998067731980244433.a n = A156258 (n + 1)

end A156258

/-! ## A156258.P1411290267717732965

`A000035(eq[2, A000002(n+1)])`
-/

namespace A156258.P1411290267717732965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156258.P1411290267717732965

namespace A156258

/-- `A000035(eq[2, A000002(n+1)])` -/
def P1411290267717732965.Spec : Prop :=
  ∀ n, P1411290267717732965.a n = A156258 (n + 1)

end A156258

/-! ## A156258.P11132231591792013117

`A156257(n+1)-A361338(n)`
-/

namespace A156258.P11132231591792013117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156257 (n + 1) - A361338 n

end

end A156258.P11132231591792013117

namespace A156258

/-- `A156257(n+1)-A361338(n)` -/
def P11132231591792013117.Spec : Prop :=
  ∀ n, P11132231591792013117.a n = A156258 (n + 1)

end A156258

/-! ## A156258.P7747829323240087976

`A000213(n)%A156257(n+1)`
-/

namespace A156258.P7747829323240087976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000213 n) (A156257 (n + 1))

end

end A156258.P7747829323240087976

namespace A156258

/-- `A000213(n)%A156257(n+1)` -/
def P7747829323240087976.Spec : Prop :=
  ∀ n, P7747829323240087976.a n = A156258 (n + 1)

end A156258

/-! ## A156258.P15067493030873928511

`A000322(n)%A156257(n+1)`
-/

namespace A156258.P15067493030873928511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000322 n) (A156257 (n + 1))

end

end A156258.P15067493030873928511

namespace A156258

/-- `A000322(n)%A156257(n+1)` -/
def P15067493030873928511.Spec : Prop :=
  ∀ n, P15067493030873928511.a n = A156258 (n + 1)

end A156258

/-! ## A156258.P6030694669167914543

`A000328(n)%A156257(n+1)`
-/

namespace A156258.P6030694669167914543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000328 n) (A156257 (n + 1))

end

end A156258.P6030694669167914543

namespace A156258

/-- `A000328(n)%A156257(n+1)` -/
def P6030694669167914543.Spec : Prop :=
  ∀ n, P6030694669167914543.a n = A156258 (n + 1)

end A156258

/-! ## A156258.P268961232271469146

`A000605(n)%A156257(n+1)`
-/

namespace A156258.P268961232271469146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000605 n) (A156257 (n + 1))

end

end A156258.P268961232271469146

namespace A156258

/-- `A000605(n)%A156257(n+1)` -/
def P268961232271469146.Spec : Prop :=
  ∀ n, P268961232271469146.a n = A156258 (n + 1)

end A156258

/-! ## A156258.P2594939265965071845

`A001148(n)%A156257(n+1)`
-/

namespace A156258.P2594939265965071845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001148 n) (A156257 (n + 1))

end

end A156258.P2594939265965071845

namespace A156258

/-- `A001148(n)%A156257(n+1)` -/
def P2594939265965071845.Spec : Prop :=
  ∀ n, P2594939265965071845.a n = A156258 (n + 1)

end A156258

/-! ## A156258.P5142372176659497511

`A001218(n)%A156257(n+1)`
-/

namespace A156258.P5142372176659497511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001218 n) (A156257 (n + 1))

end

end A156258.P5142372176659497511

namespace A156258

/-- `A001218(n)%A156257(n+1)` -/
def P5142372176659497511.Spec : Prop :=
  ∀ n, P5142372176659497511.a n = A156258 (n + 1)

end A156258

/-!
# A156259: a(n)=(1/2)*(A000002(A078649(n)+2)-A000002(A078649(n))+1).

The programs for A156259, the canonical program `A156259.P16246596672154107662` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156259 has offset 1).

The definition of A156259 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A156259.P16246596672154107662

`1/2*(A000002(A078649(n+1)+2)-A000002(A078649(n+1))+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A156259

/-- `1/2*(A000002(A078649(n+1)+2)-A000002(A078649(n+1))+1)` -/
def P16246596672154107662.Spec : Prop :=
  ∀ n, P16246596672154107662.a n = (A156259 (n + 1) : ℚ)

end A156259

/-! ## A156259.P15948419569371398233

`1-A156258(n+1)`
-/

namespace A156259.P15948419569371398233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A156258 (n + 1)

end

end A156259.P15948419569371398233

namespace A156259

/-- `1-A156258(n+1)` -/
def P15948419569371398233.Spec : Prop :=
  ∀ n, P15948419569371398233.a n = A156259 (n + 1)

end A156259

/-! ## A156259.P2705847080413856055

`2-A156257(n+1)`
-/

namespace A156259.P2705847080413856055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A156257 (n + 1)

end

end A156259.P2705847080413856055

namespace A156259

/-- `2-A156257(n+1)` -/
def P2705847080413856055.Spec : Prop :=
  ∀ n, P2705847080413856055.a n = A156259 (n + 1)

end A156259

/-! ## A156259.P17065071368560692022

`A013948(n+1)%2`
-/

namespace A156259.P17065071368560692022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013948 (n + 1)) 2

end

end A156259.P17065071368560692022

namespace A156259

/-- `A013948(n+1)%2` -/
def P17065071368560692022.Spec : Prop :=
  ∀ n, P17065071368560692022.a n = A156259 (n + 1)

end A156259

/-! ## A156259.P10919823651518664182

`log2(gcd(2, A156265(n+1)))`
-/

namespace A156259.P10919823651518664182
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A156265 (n + 1)) : ℝ)

end

end A156259.P10919823651518664182

namespace A156259

/-- `log2(gcd(2, A156265(n+1)))` -/
def P10919823651518664182.Spec : Prop :=
  ∀ n, P10919823651518664182.a n = (A156259 (n + 1) : ℝ)

end A156259

/-! ## A156259.P7805630942836361135

`comp[A022304(n+1)]%2`
-/

namespace A156259.P7805630942836361135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n % 2

end

end A156259.P7805630942836361135

namespace A156259

/-- `comp[A022304(n+1)]%2` -/
def P7805630942836361135.Spec : Prop :=
  ∀ n, (P7805630942836361135.a n : ℤ) = A156259 (n + 1)

end A156259

/-! ## A156259.P11532106452312221371

`eq[1, A088569(n+1)]%2`
-/

namespace A156259.P11532106452312221371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 2

end

end A156259.P11532106452312221371

namespace A156259

/-- `eq[1, A088569(n+1)]%2` -/
def P11532106452312221371.Spec : Prop :=
  ∀ n, (P11532106452312221371.a n : ℤ) = A156259 (n + 1)

end A156259

/-! ## A156259.P10574711489843998208

`eq[0, A249093(n+2)]%2`
-/

namespace A156259.P10574711489843998208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n % 2

end

end A156259.P10574711489843998208

namespace A156259

/-- `eq[0, A249093(n+2)]%2` -/
def P10574711489843998208.Spec : Prop :=
  ∀ n, (P10574711489843998208.a n : ℤ) = A156259 (n + 1)

end A156259

/-! ## A156259.P2670383851847180100

`lt[1, A078880(n+1)]%2`
-/

namespace A156259.P2670383851847180100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n % 2

end

end A156259.P2670383851847180100

namespace A156259

/-- `lt[1, A078880(n+1)]%2` -/
def P2670383851847180100.Spec : Prop :=
  ∀ n, (P2670383851847180100.a n : ℤ) = A156259 (n + 1)

end A156259

/-! ## A156259.P11945306182216127191

`lt[1, A000002(n+2)]%2`
-/

namespace A156259.P11945306182216127191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n % 2

end

end A156259.P11945306182216127191

namespace A156259

/-- `lt[1, A000002(n+2)]%2` -/
def P11945306182216127191.Spec : Prop :=
  ∀ n, (P11945306182216127191.a n : ℤ) = A156259 (n + 1)

end A156259

/-! ## A156259.P18175637113333844143

`and(1, lt[0, A157686(n+1)])`
-/

namespace A156259.P18175637113333844143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A156259.P18175637113333844143

namespace A156259

/-- `and(1, lt[0, A157686(n+1)])` -/
def P18175637113333844143.Spec : Prop :=
  ∀ n, (P18175637113333844143.a n : ℤ) = A156259 (n + 1)

end A156259

/-! ## A156259.P1786835367018031235

`(A078649(n+1)+n)%2`
-/

namespace A156259.P1786835367018031235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078649 (n + 1) + (n : ℤ)) 2

end

end A156259.P1786835367018031235

namespace A156259

/-- `(A078649(n+1)+n)%2` -/
def P1786835367018031235.Spec : Prop :=
  ∀ n, P1786835367018031235.a n = A156259 (n + 1)

end A156259

/-! ## A156259.P9103322343092755460

`and(1, A013948(-xor(n, -1)))`
-/

namespace A156259.P9103322343092755460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A013948 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A156259.P9103322343092755460

namespace A156259

/-- `and(1, A013948(-xor(n, -1)))` -/
def P9103322343092755460.Spec : Prop :=
  ∀ n, P9103322343092755460.a n = A156259 (n + 1)

end A156259

/-! ## A156259.P2580082220570595958

`and(1, A013948(Δ[n²]-n))`
-/

namespace A156259.P2580082220570595958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A013948 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A156259.P2580082220570595958

namespace A156259

/-- `and(1, A013948(Δ[n²]-n))` -/
def P2580082220570595958.Spec : Prop :=
  ∀ n, P2580082220570595958.a n = A156259 (n + 1)

end A156259

/-! ## A156259.P4431229024218860787

`(∑[A306323(n+1)]+n)%2`
-/

namespace A156259.P4431229024218860787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)) 2

end

end A156259.P4431229024218860787

namespace A156259

/-- `(∑[A306323(n+1)]+n)%2` -/
def P4431229024218860787.Spec : Prop :=
  ∀ n, P4431229024218860787.a n = A156259 (n + 1)

end A156259

/-! ## A156259.P2241379944035243425

`A000035(A013948(n+1))`
-/

namespace A156259.P2241379944035243425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A013948 (n + 1)).toNat

end

end A156259.P2241379944035243425

namespace A156259

/-- `A000035(A013948(n+1))` -/
def P2241379944035243425.Spec : Prop :=
  ∀ n, P2241379944035243425.a n = A156259 (n + 1)

end A156259

/-! ## A156259.P13121561877200748367

`A078650(A078649(n+1))`
-/

namespace A156259.P13121561877200748367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078650 (A078649 (n + 1)).toNat

end

end A156259.P13121561877200748367

namespace A156259

/-- `A078650(A078649(n+1))` -/
def P13121561877200748367.Spec : Prop :=
  ∀ n, P13121561877200748367.a n = A156259 (n + 1)

end A156259

/-! ## A156259.P10079479056926787110

`A059841(A013948(n+1)+1)`
-/

namespace A156259.P10079479056926787110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A013948 (n + 1) + 1).toNat

end

end A156259.P10079479056926787110

namespace A156259

/-- `A059841(A013948(n+1)+1)` -/
def P10079479056926787110.Spec : Prop :=
  ∀ n, P10079479056926787110.a n = A156259 (n + 1)

end A156259

/-! ## A156259.P7715461792045706807

`A123594(A078649(n+1)+1)`
-/

namespace A156259.P7715461792045706807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (A078649 (n + 1) + 1).toNat

end

end A156259.P7715461792045706807

namespace A156259

/-- `A123594(A078649(n+1)+1)` -/
def P7715461792045706807.Spec : Prop :=
  ∀ n, P7715461792045706807.a n = A156259 (n + 1)

end A156259

/-! ## A156259.P12619152189671303561

`A157686(A078649(n+1)+1)`
-/

namespace A156259.P12619152189671303561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (A078649 (n + 1) + 1).toNat

end

end A156259.P12619152189671303561

namespace A156259

/-- `A157686(A078649(n+1)+1)` -/
def P12619152189671303561.Spec : Prop :=
  ∀ n, P12619152189671303561.a n = A156259 (n + 1)

end A156259

/-!
# A156260: Row sums of A156254.

The programs for A156260, the canonical program `A156260.P15174732902167780730` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156260 has offset 1).

The definition of A156260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156260.P15174732902167780730

`ceil(∏{e}[n+1, 2/#^4])`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156260

/-- `ceil(∏{e}[n+1, 2/#^4])` -/
def P15174732902167780730.Spec : Prop :=
  ∀ n, P15174732902167780730.a n = A156260 (n + 1)

theorem P15174732902167780730.correct : P15174732902167780730.Spec := by
  intro n
  simp only [A156260, Nat.add_sub_cancel]

end A156260

/-! ## A156260.P13132827608609504747

`2^∑{e}[C(∏{p}[n+1, #], n), #]`
-/

namespace A156260.P13132827608609504747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), p) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A156260.P13132827608609504747

namespace A156260

/-- `2^∑{e}[C(∏{p}[n+1, #], n), #]` -/
def P13132827608609504747.Spec : Prop :=
  ∀ n, (P13132827608609504747.a n : ℤ) = A156260 (n + 1)

end A156260

/-! ## A156260.P4022857052949473724

`2^A344478(n+1)`
-/

namespace A156260.P4022857052949473724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A344478 (n + 1) : ℤ)

end

end A156260.P4022857052949473724

namespace A156260

/-- `2^A344478(n+1)` -/
def P4022857052949473724.Spec : Prop :=
  ∀ n, P4022857052949473724.a n = (A156260 (n + 1) : ℚ)

end A156260

/-! ## A156260.P10336742283466218011

`∏{d}[∏{e}[n+1, C(2, #²)], A301304(#)]`
-/

namespace A156260.P10336742283466218011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose 2 (Nat.factorization (f2 n) p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A301304 d

end

end A156260.P10336742283466218011

namespace A156260

/-- `∏{d}[∏{e}[n+1, C(2, #²)], A301304(#)]` -/
def P10336742283466218011.Spec : Prop :=
  ∀ n, P10336742283466218011.a n = A156260 (n + 1)

end A156260

/-! ## A156260.P13996638582260274856

`A028310(A074823(n+1))`
-/

namespace A156260.P13996638582260274856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A074823 (n + 1)).toNat

end

end A156260.P13996638582260274856

namespace A156260

/-- `A028310(A074823(n+1))` -/
def P13996638582260274856.Spec : Prop :=
  ∀ n, P13996638582260274856.a n = A156260 (n + 1)

end A156260

/-! ## A156260.P7732701015613280725

`A000005(A385212(n+1))`
-/

namespace A156260.P7732701015613280725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A385212 (n + 1)).toNat

end

end A156260.P7732701015613280725

namespace A156260

/-- `A000005(A385212(n+1))` -/
def P7732701015613280725.Spec : Prop :=
  ∀ n, P7732701015613280725.a n = A156260 (n + 1)

end A156260

/-! ## A156260.P14707069278615639292

`A071950(A351521(n+1))`
-/

namespace A156260.P14707069278615639292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071950 (A351521 (n + 1)).toNat

end

end A156260.P14707069278615639292

namespace A156260

/-- `A071950(A351521(n+1))` -/
def P14707069278615639292.Spec : Prop :=
  ∀ n, P14707069278615639292.a n = A156260 (n + 1)

end A156260

/-! ## A156260.P12566676864534289230

`A056671(A375931(n+1))`
-/

namespace A156260.P12566676864534289230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056671 (A375931 (n + 1)).toNat

end

end A156260.P12566676864534289230

namespace A156260

/-- `A056671(A375931(n+1))` -/
def P12566676864534289230.Spec : Prop :=
  ∀ n, P12566676864534289230.a n = A156260 (n + 1)

end A156260

/-! ## A156260.P5165460116577185975

`A345044(A074823(n+1)+1)`
-/

namespace A156260.P5165460116577185975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345044 (A074823 (n + 1) + 1).toNat

end

end A156260.P5165460116577185975

namespace A156260

/-- `A345044(A074823(n+1)+1)` -/
def P5165460116577185975.Spec : Prop :=
  ∀ n, P5165460116577185975.a n = A156260 (n + 1)

end A156260

/-! ## A156260.P8088806915111307899

`A107078(n+1)+A074823(n+1)`
-/

namespace A156260.P8088806915111307899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (n + 1) + A074823 (n + 1)

end

end A156260.P8088806915111307899

namespace A156260

/-- `A107078(n+1)+A074823(n+1)` -/
def P8088806915111307899.Spec : Prop :=
  ∀ n, P8088806915111307899.a n = A156260 (n + 1)

end A156260

/-! ## A156260.P7149761856782112627

`A034444(A385212(2*n+1-n))`
-/

namespace A156260.P7149761856782112627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A385212 (2 * n + 1 - n)).toNat

end

end A156260.P7149761856782112627

namespace A156260

/-- `A034444(A385212(2*n+1-n))` -/
def P7149761856782112627.Spec : Prop :=
  ∀ n, P7149761856782112627.a n = A156260 (n + 1)

end A156260

/-! ## A156260.P16094655163982476437

`A000005(lcm(n, A008683(n+1))+1)`
-/

namespace A156260.P16094655163982476437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm (n : ℤ) (A008683 (n + 1)) + 1)

end

end A156260.P16094655163982476437

namespace A156260

/-- `A000005(lcm(n, A008683(n+1))+1)` -/
def P16094655163982476437.Spec : Prop :=
  ∀ n, P16094655163982476437.a n = A156260 (n + 1)

end A156260

/-! ## A156260.P85646317393762866

`A000005(n*A008683(n+1)²+1)`
-/

namespace A156260.P85646317393762866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n : ℤ) * A008683 (n + 1) ^ 2 + 1).toNat

end

end A156260.P85646317393762866

namespace A156260

/-- `A000005(n*A008683(n+1)²+1)` -/
def P85646317393762866.Spec : Prop :=
  ∀ n, P85646317393762866.a n = A156260 (n + 1)

end A156260

/-! ## A156260.P15221007162670163784

`A000005((n+1)^abs(A008683(n+1)))`
-/

namespace A156260.P15221007162670163784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (|A008683 (n + 1)| : ℤ))).toNat

end

end A156260.P15221007162670163784

namespace A156260

/-- `A000005((n+1)^abs(A008683(n+1)))` -/
def P15221007162670163784.Spec : Prop :=
  ∀ n, P15221007162670163784.a n = A156260 (n + 1)

end A156260

/-! ## A156260.P12033004540052353940

`A000005((n+1)^A008683(n+1)²)`
-/

namespace A156260.P12033004540052353940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A008683 (n + 1) ^ 2 : ℤ))).toNat

end

end A156260.P12033004540052353940

namespace A156260

/-- `A000005((n+1)^A008683(n+1)²)` -/
def P12033004540052353940.Spec : Prop :=
  ∀ n, P12033004540052353940.a n = A156260 (n + 1)

end A156260

/-! ## A156260.P14032688412539915173

`A000005(C(n+1, abs(A008683(n+1))))`
-/

namespace A156260.P14032688412539915173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (n + 1) |A008683 (n + 1)|.toNat)

end

end A156260.P14032688412539915173

namespace A156260

/-- `A000005(C(n+1, abs(A008683(n+1))))` -/
def P14032688412539915173.Spec : Prop :=
  ∀ n, P14032688412539915173.a n = A156260 (n + 1)

end A156260

/-! ## A156260.P11725333840352099007

`A000005(C(n+1, A008683(n+1)²))`
-/

namespace A156260.P11725333840352099007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (n + 1) (A008683 (n + 1) ^ 2).toNat)

end

end A156260.P11725333840352099007

namespace A156260

/-- `A000005(C(n+1, A008683(n+1)²))` -/
def P11725333840352099007.Spec : Prop :=
  ∀ n, P11725333840352099007.a n = A156260 (n + 1)

end A156260

/-! ## A156260.P16386686600198842100

`A000005((n+1)^dr(A008683(n+1)))`
-/

namespace A156260.P16386686600198842100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) ^ SequenceMachineLib.digitalRoot (A008683 (n + 1)))

end

end A156260.P16386686600198842100

namespace A156260

/-- `A000005((n+1)^dr(A008683(n+1)))` -/
def P16386686600198842100.Spec : Prop :=
  ∀ n, P16386686600198842100.a n = A156260 (n + 1)

end A156260

/-! ## A156260.P13831724417028764014

`A000005(C(n+1, dr(A008683(n+1))))`
-/

namespace A156260.P13831724417028764014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.choose (n + 1) (SequenceMachineLib.digitalRoot (A008683 (n + 1))))

end

end A156260.P13831724417028764014

namespace A156260

/-- `A000005(C(n+1, dr(A008683(n+1))))` -/
def P13831724417028764014.Spec : Prop :=
  ∀ n, P13831724417028764014.a n = A156260 (n + 1)

end A156260

/-! ## A156260.P10909953514595516810

`A008966(n+1)*A056595(n+1)+1`
-/

namespace A156260.P10909953514595516810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A056595 (n + 1) + 1

end

end A156260.P10909953514595516810

namespace A156260

/-- `A008966(n+1)*A056595(n+1)+1` -/
def P10909953514595516810.Spec : Prop :=
  ∀ n, P10909953514595516810.a n = A156260 (n + 1)

end A156260

/-!
# A156261: a(n)=n/2+(1/2)*sum(k=1,n,A000002(A078649(k)+2)-A000002(A078649(k))).

The programs for A156261, there is no canonical definition to state claims against.
-/

/-! ## A156261.P8265471537159438579

`∑[A156259(n+1)]`
-/

namespace A156261.P8265471537159438579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156261.P8265471537159438579

/-! ## A156261.P16587702867727268446

`∑[1-A156258(n+1)]`
-/

namespace A156261.P16587702867727268446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A156258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156261.P16587702867727268446

/-! ## A156261.P12972686320622692174

`∑[2-A156257(n+1)]`
-/

namespace A156261.P12972686320622692174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A156257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156261.P12972686320622692174

/-! ## A156261.P11318794594794594133

`∑[A013948(n+1)%2]`
-/

namespace A156261.P11318794594794594133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013948 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156261.P11318794594794594133

/-! ## A156261.P4665878203055374889

`∑[log2(gcd(2, A156265(n+1)))]`
-/

namespace A156261.P4665878203055374889
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A156265 (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156261.P4665878203055374889

/-! ## A156261.P18014202215602385593

`∑[eq[2, A078880(n+1)]%2]`
-/

namespace A156261.P18014202215602385593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156261.P18014202215602385593

/-! ## A156261.P1323970661481542455

`∑[eq[2, A000002(n+2)]%2]`
-/

namespace A156261.P1323970661481542455
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156261.P1323970661481542455

/-! ## A156261.P1380796236981370243

`∑[(A078649(n+1)+n)%2]`
-/

namespace A156261.P1380796236981370243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078649 (n + 1) + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156261.P1380796236981370243

/-! ## A156261.P4231371544676922404

`∑[and(1, A013948(Δ[n²]-n))]`
-/

namespace A156261.P4231371544676922404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A013948 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156261.P4231371544676922404

/-! ## A156261.P3473373632760382122

`∑[(∑[A306323(n+1)]+n)%2]`
-/

namespace A156261.P3473373632760382122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306323 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156261.P3473373632760382122

/-!
# A156262: a(n)=n/2-(1/2)*sum(k=1,n,A000002(A078649(k)+2)-A000002(A078649(k))).

The programs for A156262, there is no canonical definition to state claims against.
-/

/-! ## A156262.P15283484336770585037

`∑[A156258(n+1)]`
-/

namespace A156262.P15283484336770585037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156262.P15283484336770585037

/-! ## A156262.P1900262301568591933

`∑[log2(A156257(n+1))]`
-/

namespace A156262.P1900262301568591933
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A156257 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156262.P1900262301568591933

/-! ## A156262.P5577337876922749171

`∑[1-A156259(n+1)]`
-/

namespace A156262.P5577337876922749171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A156259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156262.P5577337876922749171

/-! ## A156262.P10102733334625187051

`∑[A156265(n+1)%2]`
-/

namespace A156262.P10102733334625187051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156265 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156262.P10102733334625187051

/-! ## A156262.P11736689997662573561

`1-A156261(n+1)+n`
-/

namespace A156262.P11736689997662573561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A156261 (n + 1) + (n : ℤ)

end

end A156262.P11736689997662573561

/-! ## A156262.P14175914616375946838

`∑[log2(gcd(2, A013948(n+1)))]`
-/

namespace A156262.P14175914616375946838
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A013948 (n + 1)) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156262.P14175914616375946838

/-! ## A156262.P2050008786456873871

`∑[eq[1, A049705(n+1)]%2]`
-/

namespace A156262.P2050008786456873871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156262.P2050008786456873871

/-! ## A156262.P10280169433401254533

`∑[eq[2, A000002(n+1)]%2]`
-/

namespace A156262.P10280169433401254533
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156262.P10280169433401254533

/-! ## A156262.P7126073541741307596

`∑[and(1, ∑[A306323(n+1)-1])]`
-/

namespace A156262.P7126073541741307596
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306323 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156262.P7126073541741307596

/-! ## A156262.P12364181911867092665

`∑[A000002(A078649(n+1))-1]`
-/

namespace A156262.P12364181911867092665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A078649 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156262.P12364181911867092665

/-!
# A156263: a(n)=A000002(3*n-1).

The programs for A156263, the canonical program `A156263.P6800040278020113094` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156263 has offset 1).

The definition of A156263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156263.P6800040278020113094

`A000002(3*(n+1)-1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A156263

/-- `A000002(3*(n+1)-1)` -/
def P6800040278020113094.Spec : Prop :=
  ∀ n, P6800040278020113094.a n = A156263 (n + 1)

theorem P6800040278020113094.correct : P6800040278020113094.Spec := by
  intro n
  simp only [A156263, Nat.add_sub_cancel]

end A156263

/-! ## A156263.P13205413799050751235

`A022303(abs(3*n-2))`
-/

namespace A156263.P13205413799050751235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 |(3 * n : ℤ) - 2|.toNat

end

end A156263.P13205413799050751235

namespace A156263

/-- `A022303(abs(3*n-2))` -/
def P13205413799050751235.Spec : Prop :=
  ∀ n, P13205413799050751235.a n = A156263 (n + 1)

end A156263

/-! ## A156263.P17521505777567288438

`A078880(3*n+1)`
-/

namespace A156263.P17521505777567288438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (3 * n + 1)

end

end A156263.P17521505777567288438

namespace A156263

/-- `A078880(3*n+1)` -/
def P17521505777567288438.Spec : Prop :=
  ∀ n, P17521505777567288438.a n = A156263 (n + 1)

end A156263

/-! ## A156263.P14534427269956463067

`A078880(Δ[n²]+n)!`
-/

namespace A156263.P14534427269956463067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A078880 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat).toNat

end

end A156263.P14534427269956463067

namespace A156263

/-- `A078880(Δ[n²]+n)!` -/
def P14534427269956463067.Spec : Prop :=
  ∀ n, (P14534427269956463067.a n : ℤ) = A156263 (n + 1)

end A156263

/-! ## A156263.P16918663262408620665

`A157686(3*n+1)+1`
-/

namespace A156263.P16918663262408620665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 (3 * n + 1) + 1

end

end A156263.P16918663262408620665

namespace A156263

/-- `A157686(3*n+1)+1` -/
def P16918663262408620665.Spec : Prop :=
  ∀ n, P16918663262408620665.a n = A156263 (n + 1)

end A156263

/-! ## A156263.P8453428231751460435

`3-A088569(3*n+1)`
-/

namespace A156263.P8453428231751460435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A088569 (3 * n + 1)

end

end A156263.P8453428231751460435

namespace A156263

/-- `3-A088569(3*n+1)` -/
def P8453428231751460435.Spec : Prop :=
  ∀ n, P8453428231751460435.a n = A156263 (n + 1)

end A156263

/-! ## A156263.P15658666531479369006

`A006928(comp[2*(n+1)]+n+2)`
-/

namespace A156263.P15658666531479369006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 2))

end

end A156263.P15658666531479369006

namespace A156263

/-- `A006928(comp[2*(n+1)]+n+2)` -/
def P15658666531479369006.Spec : Prop :=
  ∀ n, P15658666531479369006.a n = A156263 (n + 1)

end A156263

/-! ## A156263.P5003384159996824649

`3-A049705(3*n+2)`
-/

namespace A156263.P5003384159996824649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A049705 (3 * n + 2)

end

end A156263.P5003384159996824649

namespace A156263

/-- `3-A049705(3*n+2)` -/
def P5003384159996824649.Spec : Prop :=
  ∀ n, P5003384159996824649.a n = A156263 (n + 1)

end A156263

/-! ## A156263.P13274268390166461624

`gcd(2, A156253(3*n+2))`
-/

namespace A156263.P13274268390166461624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A156253 (3 * n + 2))

end

end A156263.P13274268390166461624

namespace A156263

/-- `gcd(2, A156253(3*n+2))` -/
def P13274268390166461624.Spec : Prop :=
  ∀ n, (P13274268390166461624.a n : ℤ) = A156263 (n + 1)

end A156263

/-! ## A156263.P168871435688857094

`A049705(A306229(2*n+n+2))`
-/

namespace A156263.P168871435688857094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (A306229 (2 * n + (n + 2))).toNat

end

end A156263.P168871435688857094

namespace A156263

/-- `A049705(A306229(2*n+n+2))` -/
def P168871435688857094.Spec : Prop :=
  ∀ n, P168871435688857094.a n = A156263 (n + 1)

end A156263

/-! ## A156263.P17426616603886340992

`A123594(3*n+4)+1`
-/

namespace A156263.P17426616603886340992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123594 (3 * n + 4) + 1

end

end A156263.P17426616603886340992

namespace A156263

/-- `A123594(3*n+4)+1` -/
def P17426616603886340992.Spec : Prop :=
  ∀ n, P17426616603886340992.a n = A156263 (n + 1)

end A156263

/-! ## A156263.P11081037423112208419

`and(2, A216637(n+1))!`
-/

namespace A156263.P11081037423112208419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land 2 (A216637 (n + 1))).toNat

end

end A156263.P11081037423112208419

namespace A156263

/-- `and(2, A216637(n+1))!` -/
def P11081037423112208419.Spec : Prop :=
  ∀ n, (P11081037423112208419.a n : ℤ) = A156263 (n + 1)

end A156263

/-! ## A156263.P13999457289719855852

`round(∑[A306323(n+1)]/(2*n+1))`
-/

namespace A156263.P13999457289719855852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (2 * n + 1 : ℚ))

end

end A156263.P13999457289719855852

namespace A156263

/-- `round(∑[A306323(n+1)]/(2*n+1))` -/
def P13999457289719855852.Spec : Prop :=
  ∀ n, P13999457289719855852.a n = A156263 (n + 1)

end A156263

/-!
# A156264: a(n) = A000002(3*n-2), where A000002 is the Kolakoski sequence.

The programs for A156264, the canonical program `A156264.P13938307247188690438` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156264 has offset 1).

The definition of A156264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156264.P13938307247188690438

`A000002(3*n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A156264

/-- `A000002(3*n+1)` -/
def P13938307247188690438.Spec : Prop :=
  ∀ n, P13938307247188690438.a n = A156264 (n + 1)

theorem P13938307247188690438.correct : P13938307247188690438.Spec := by
  intro n
  simp only [A156264, Nat.add_sub_cancel]

end A156264

/-! ## A156264.P12906169704226546172

`A000002(3*(n+1)-2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A156264.P12906169704226546172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (3 * (n + 1) - 2)

end

end A156264.P12906169704226546172

namespace A156264

/-- `A000002(3*(n+1)-2)` -/
def P12906169704226546172.Spec : Prop :=
  ∀ n, P12906169704226546172.a n = A156264 (n + 1)

end A156264

/-! ## A156264.P14175662133094273942

`A022303(A135042(n)-A004275(n))`
-/

namespace A156264.P14175662133094273942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022303 (A135042 n - A004275 n).toNat

end

end A156264.P14175662133094273942

namespace A156264

/-- `A022303(A135042(n)-A004275(n))` -/
def P14175662133094273942.Spec : Prop :=
  ∀ n, P14175662133094273942.a n = A156264 (n + 1)

end A156264

/-! ## A156264.P12495786431423941715

`A000002(Δ[n²]+n)%3`
-/

namespace A156264.P12495786431423941715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000002 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat) 3

end

end A156264.P12495786431423941715

namespace A156264

/-- `A000002(Δ[n²]+n)%3` -/
def P12495786431423941715.Spec : Prop :=
  ∀ n, P12495786431423941715.a n = A156264 (n + 1)

end A156264

/-! ## A156264.P3994976754238258296

`A000002(n+1+n+n)!`
-/

namespace A156264.P3994976754238258296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000002 (n + 1 + (n + n))).toNat

end

end A156264.P3994976754238258296

namespace A156264

/-- `A000002(n+1+n+n)!` -/
def P3994976754238258296.Spec : Prop :=
  ∀ n, (P3994976754238258296.a n : ℤ) = A156264 (n + 1)

end A156264

/-! ## A156264.P7643662632210206274

`dr(A000002(n+n+n+1))`
-/

namespace A156264.P7643662632210206274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000002 (n + n + (n + 1)))

end

end A156264.P7643662632210206274

namespace A156264

/-- `dr(A000002(n+n+n+1))` -/
def P7643662632210206274.Spec : Prop :=
  ∀ n, (P7643662632210206274.a n : ℤ) = A156264 (n + 1)

end A156264

/-! ## A156264.P1100412045985954203

`gcd(10, A000002(n+1+n+n))`
-/

namespace A156264.P1100412045985954203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (A000002 (n + 1 + n + n))

end

end A156264.P1100412045985954203

namespace A156264

/-- `gcd(10, A000002(n+1+n+n))` -/
def P1100412045985954203.Spec : Prop :=
  ∀ n, (P1100412045985954203.a n : ℤ) = A156264 (n + 1)

end A156264

/-! ## A156264.P6929085353221219210

`A000002(A008486(n)+1)-A000007(n)`
-/

namespace A156264.P6929085353221219210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A008486 n + 1).toNat - A000007 n

end

end A156264.P6929085353221219210

namespace A156264

/-- `A000002(A008486(n)+1)-A000007(n)` -/
def P6929085353221219210.Spec : Prop :=
  ∀ n, P6929085353221219210.a n = A156264 (n + 1)

end A156264

/-! ## A156264.P1310637516403173827

`3-A049705(3*n+1)`
-/

namespace A156264.P1310637516403173827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A049705 (3 * n + 1)

end

end A156264.P1310637516403173827

namespace A156264

/-- `3-A049705(3*n+1)` -/
def P1310637516403173827.Spec : Prop :=
  ∀ n, P1310637516403173827.a n = A156264 (n + 1)

theorem P1310637516403173827.correct : P1310637516403173827.Spec := by
  intro n
  simp only [A156264, Nat.add_sub_cancel, A156264.P1310637516403173827.a, A156264.P13938307247188690438.a, A000002, A000002.P13330532946811820297.a, A049705, A049705.P11002765941806409636.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156264

/-! ## A156264.P1326077414002826019

`gcd(2, A156253(3*n+1))`
-/

namespace A156264.P1326077414002826019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A156253 (3 * n + 1))

end

end A156264.P1326077414002826019

namespace A156264

/-- `gcd(2, A156253(3*n+1))` -/
def P1326077414002826019.Spec : Prop :=
  ∀ n, (P1326077414002826019.a n : ℤ) = A156264 (n + 1)

end A156264

/-! ## A156264.P3222756173757464534

`A006928(A008486(n))`
-/

namespace A156264.P3222756173757464534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A008486 n).toNat

end

end A156264.P3222756173757464534

namespace A156264

/-- `A006928(A008486(n))` -/
def P3222756173757464534.Spec : Prop :=
  ∀ n, P3222756173757464534.a n = A156264 (n + 1)

end A156264

/-! ## A156264.P14491259263439139941

`A006928(A028310(3*n))`
-/

namespace A156264.P14491259263439139941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A028310 (3 * n)).toNat

end

end A156264.P14491259263439139941

namespace A156264

/-- `A006928(A028310(3*n))` -/
def P14491259263439139941.Spec : Prop :=
  ∀ n, P14491259263439139941.a n = A156264 (n + 1)

end A156264

/-! ## A156264.P2932757336712594750

`A078880(3*A028310(n))`
-/

namespace A156264.P2932757336712594750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (3 * A028310 n).toNat

end

end A156264.P2932757336712594750

namespace A156264

/-- `A078880(3*A028310(n))` -/
def P2932757336712594750.Spec : Prop :=
  ∀ n, P2932757336712594750.a n = A156264 (n + 1)

end A156264

/-! ## A156264.P11235337035198158666

`A006928(A004277(n)+n)`
-/

namespace A156264.P11235337035198158666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A004277 n + (n : ℤ)).toNat

end

end A156264.P11235337035198158666

namespace A156264

/-- `A006928(A004277(n)+n)` -/
def P11235337035198158666.Spec : Prop :=
  ∀ n, P11235337035198158666.a n = A156264 (n + 1)

end A156264

/-! ## A156264.P1651978477290552967

`A006928(A033627(n+1)+2)`
-/

namespace A156264.P1651978477290552967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A033627 (n + 1) + 2).toNat

end

end A156264.P1651978477290552967

namespace A156264

/-- `A006928(A033627(n+1)+2)` -/
def P1651978477290552967.Spec : Prop :=
  ∀ n, P1651978477290552967.a n = A156264 (n + 1)

end A156264

/-! ## A156264.P6978067763557755230

`A078880(A033627(n+1)+2)`
-/

namespace A156264.P6978067763557755230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (A033627 (n + 1) + 2).toNat

end

end A156264.P6978067763557755230

namespace A156264

/-- `A078880(A033627(n+1)+2)` -/
def P6978067763557755230.Spec : Prop :=
  ∀ n, P6978067763557755230.a n = A156264 (n + 1)

end A156264

/-! ## A156264.P727514542936690928

`A040001(A156253(3*n+1))`
-/

namespace A156264.P727514542936690928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A156253 (3 * n + 1)).toNat

end

end A156264.P727514542936690928

namespace A156264

/-- `A040001(A156253(3*n+1))` -/
def P727514542936690928.Spec : Prop :=
  ∀ n, P727514542936690928.a n = A156264 (n + 1)

end A156264

/-! ## A156264.P7602903039735719019

`A006928(A004275(n+1)+n)`
-/

namespace A156264.P7602903039735719019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A004275 (n + 1) + (n : ℤ)).toNat

end

end A156264.P7602903039735719019

namespace A156264

/-- `A006928(A004275(n+1)+n)` -/
def P7602903039735719019.Spec : Prop :=
  ∀ n, P7602903039735719019.a n = A156264 (n + 1)

end A156264

/-! ## A156264.P7585231617281125247

`A006928(A028310(n)+n+n)`
-/

namespace A156264.P7585231617281125247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (A028310 n + (n : ℤ) + (n : ℤ)).toNat

end

end A156264.P7585231617281125247

namespace A156264

/-- `A006928(A028310(n)+n+n)` -/
def P7585231617281125247.Spec : Prop :=
  ∀ n, P7585231617281125247.a n = A156264 (n + 1)

end A156264

/-! ## A156264.P5094473937677337240

`A000034(A156253(3*n+1)+1)`
-/

namespace A156264.P5094473937677337240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A156253 (3 * n + 1) + 1).toNat

end

end A156264.P5094473937677337240

namespace A156264

/-- `A000034(A156253(3*n+1)+1)` -/
def P5094473937677337240.Spec : Prop :=
  ∀ n, P5094473937677337240.a n = A156264 (n + 1)

end A156264

/-!
# A156265: a(n)=3*n-A078649(n).

The programs for A156265, the canonical program `A156265.P11083405800392652458` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156265 has offset 1).

The definition of A156265 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A078649, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A156265.P11083405800392652458

`3*(n+1)-A078649(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A156265

/-- `3*(n+1)-A078649(n+1)` -/
def P11083405800392652458.Spec : Prop :=
  ∀ n, P11083405800392652458.a n = A156265 (n + 1)

theorem P11083405800392652458.correct : P11083405800392652458.Spec := by
  intro n
  simp only [A156265, Nat.add_sub_cancel]

end A156265

/-! ## A156265.P2305148391264564559

`2*n+3-A013948(n+1)`
-/

namespace A156265.P2305148391264564559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (3 - A013948 (n + 1))

end

end A156265.P2305148391264564559

namespace A156265

/-- `2*n+3-A013948(n+1)` -/
def P2305148391264564559.Spec : Prop :=
  ∀ n, P2305148391264564559.a n = A156265 (n + 1)

theorem P2305148391264564559.correct : P2305148391264564559.Spec := by
  intro n
  simp only [A156265, Nat.add_sub_cancel, A156265.P2305148391264564559.a, A156265.P11083405800392652458.a, A013948, A013948.P3339504944308927508.a, A078649, A078649.P18369770188371927822.f1, A078649.P18369770188371927822.a, A013947, A013947.P11385183315367073616.f1, A013947.P11385183315367073616.f2, A013947.P11385183315367073616.a, A156242, A156242.P3233582996753599041.a, A156243, A156243.P395087012412145335.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156265

/-! ## A156265.P6954405667109892023

`Δ[n²]-eq[0, A249093(n+2)]`
-/

namespace A156265.P6954405667109892023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

end

end A156265.P6954405667109892023

namespace A156265

/-- `Δ[n²]-eq[0, A249093(n+2)]` -/
def P6954405667109892023.Spec : Prop :=
  ∀ n, P6954405667109892023.a n = A156265 (n + 1)

end A156265

/-! ## A156265.P15581658076885343671

`Δ[(n+1)²]-A013948(-xor(n, -1))`
-/

namespace A156265.P15581658076885343671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A013948 (-Int.xor (n : ℤ) (-1)).toNat

end

end A156265.P15581658076885343671

namespace A156265

/-- `Δ[(n+1)²]-A013948(-xor(n, -1))` -/
def P15581658076885343671.Spec : Prop :=
  ∀ n, P15581658076885343671.a n = A156265 (n + 1)

end A156265

/-! ## A156265.P2623240231239200815

`Δ[(n+1)²]-A013948(Δ[n²]-n)`
-/

namespace A156265.P2623240231239200815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A013948 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

end

end A156265.P2623240231239200815

namespace A156265

/-- `Δ[(n+1)²]-A013948(Δ[n²]-n)` -/
def P2623240231239200815.Spec : Prop :=
  ∀ n, P2623240231239200815.a n = A156265 (n + 1)

end A156265

/-! ## A156265.P16858407382195622515

`3*(n+1)-(comp[A013947(n+1)-1]+n+1)`
-/

namespace A156265.P16858407382195622515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (n + 1) : ℤ)

end

end A156265.P16858407382195622515

namespace A156265

/-- `3*(n+1)-(comp[A013947(n+1)-1]+n+1)` -/
def P16858407382195622515.Spec : Prop :=
  ∀ n, P16858407382195622515.a n = A156265 (n + 1)

end A156265

/-! ## A156265.P6806997315501238635

`A156268(n+1)+A088568(n+1)`
-/

namespace A156265.P6806997315501238635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156268 (n + 1) + A088568 (n + 1)

end

end A156265.P6806997315501238635

namespace A156265

/-- `A156268(n+1)+A088568(n+1)` -/
def P6806997315501238635.Spec : Prop :=
  ∀ n, P6806997315501238635.a n = A156265 (n + 1)

theorem P6806997315501238635.correct : P6806997315501238635.Spec := by
  intro n
  simp only [A156265, Nat.add_sub_cancel, A156265.P6806997315501238635.a, A156265.P11083405800392652458.a, A078649, A078649.P18369770188371927822.f1, A078649.P18369770188371927822.a, A088568, A088568.P7969983954604256845.a, A156268, A156268.P6336594155207146855.a, A013947, A013947.P11385183315367073616.f1, A013947.P11385183315367073616.f2, A013947.P11385183315367073616.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A000002, A000002.P13330532946811820297.a, A156242, A156242.P3233582996753599041.a, A156243, A156243.P395087012412145335.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156265

/-! ## A156265.P1389237206758000228

`A156268(n+1)-A294448(n+1)`
-/

namespace A156265.P1389237206758000228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156268 (n + 1) - A294448 (n + 1)

end

end A156265.P1389237206758000228

namespace A156265

/-- `A156268(n+1)-A294448(n+1)` -/
def P1389237206758000228.Spec : Prop :=
  ∀ n, P1389237206758000228.a n = A156265 (n + 1)

end A156265

/-! ## A156265.P5520904462334980512

`Δ[n²]-eq[2, A000002(n+2)]`
-/

namespace A156265.P5520904462334980512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

end

end A156265.P5520904462334980512

namespace A156265

/-- `Δ[n²]-eq[2, A000002(n+2)]` -/
def P5520904462334980512.Spec : Prop :=
  ∀ n, P5520904462334980512.a n = A156265 (n + 1)

end A156265

/-! ## A156265.P13232889173868964077

`2*(n+1)-lt[1, A000002(n+1)]`
-/

namespace A156265.P13232889173868964077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A156265.P13232889173868964077

namespace A156265

/-- `2*(n+1)-lt[1, A000002(n+1)]` -/
def P13232889173868964077.Spec : Prop :=
  ∀ n, P13232889173868964077.a n = A156265 (n + 1)

end A156265

/-! ## A156265.P5571743144416727778

`Δ[n²]-eq[1, A088569(n+1)]`
-/

namespace A156265.P5571743144416727778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

end

end A156265.P5571743144416727778

namespace A156265

/-- `Δ[n²]-eq[1, A088569(n+1)]` -/
def P5571743144416727778.Spec : Prop :=
  ∀ n, P5571743144416727778.a n = A156265 (n + 1)

end A156265

/-! ## A156265.P7926755812307420588

`Δ[n²]-eq[2, A078880(n+1)]`
-/

namespace A156265.P7926755812307420588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ)

end

end A156265.P7926755812307420588

namespace A156265

/-- `Δ[n²]-eq[2, A078880(n+1)]` -/
def P7926755812307420588.Spec : Prop :=
  ∀ n, P7926755812307420588.a n = A156265 (n + 1)

end A156265

/-! ## A156265.P8748022159555062421

`2-A088568(eq[2, A000002(n+1)])`
-/

namespace A156265.P8748022159555062421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A088568 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A156265.P8748022159555062421

namespace A156265

/-- `2-A088568(eq[2, A000002(n+1)])` -/
def P8748022159555062421.Spec : Prop :=
  ∀ n, P8748022159555062421.a n = A156265 (n + 1)

end A156265

/-! ## A156265.P11344242841606435336

`2*(n+1)-eq[1, A049705(n+1)]`
-/

namespace A156265.P11344242841606435336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A156265.P11344242841606435336

namespace A156265

/-- `2*(n+1)-eq[1, A049705(n+1)]` -/
def P11344242841606435336.Spec : Prop :=
  ∀ n, P11344242841606435336.a n = A156265 (n + 1)

end A156265

/-! ## A156265.P9324425564884587567

`1-A088568(A013948(n+1))`
-/

namespace A156265.P9324425564884587567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A088568 (A013948 (n + 1)).toNat

end

end A156265.P9324425564884587567

namespace A156265

/-- `1-A088568(A013948(n+1))` -/
def P9324425564884587567.Spec : Prop :=
  ∀ n, P9324425564884587567.a n = A156265 (n + 1)

end A156265

/-! ## A156265.P11866633050720896874

`A294448(A078649(n+1)-n)+1`
-/

namespace A156265.P11866633050720896874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (A078649 (n + 1) - (n : ℤ)).toNat + 1

end

end A156265.P11866633050720896874

namespace A156265

/-- `A294448(A078649(n+1)-n)+1` -/
def P11866633050720896874.Spec : Prop :=
  ∀ n, P11866633050720896874.a n = A156265 (n + 1)

end A156265

/-! ## A156265.P12613246812700570797

`∑[3-A306323(n+1)]`
-/

namespace A156265.P12613246812700570797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A306323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156265.P12613246812700570797

namespace A156265

/-- `∑[3-A306323(n+1)]` -/
def P12613246812700570797.Spec : Prop :=
  ∀ n, P12613246812700570797.a n = A156265 (n + 1)

end A156265

/-!
# A156266: a(n) = 7^n*Catalan(n).

The programs for A156266, the canonical program `A156266.P8245967861638923851` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156266 has offset 0).

The definition of A156266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156266.P8245967861638923851

`7^n*A000108(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156266

/-- `7^n*A000108(n)` -/
def P8245967861638923851.Spec : Prop :=
  ∀ n, P8245967861638923851.a n = A156266 n

theorem P8245967861638923851.correct : P8245967861638923851.Spec := by
  intro n
  simp only [A156266]

end A156266

/-! ## A156266.P12891960678297910487

`C(2*n, n)/(n+1)*7^n`
-/

namespace A156266.P12891960678297910487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (7 ^ n : ℚ)

end

end A156266.P12891960678297910487

namespace A156266

/-- `C(2*n, n)/(n+1)*7^n` -/
def P12891960678297910487.Spec : Prop :=
  ∀ n, P12891960678297910487.a n = (A156266 n : ℚ)

end A156266

/-! ## A156266.P9515173153974446839

`7*(4-6/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A156266.P9515173153974446839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  7 * ((4 - 6 / (n + 1 : ℚ)) * a (n - 1))

end

end A156266.P9515173153974446839

namespace A156266

/-- `7*(4-6/(n+1))*a(n-1)` -/
def P9515173153974446839.Spec : Prop :=
  ∀ n, P9515173153974446839.a n = (A156266 n : ℚ)

end A156266

/-! ## A156266.P5428098773461891842

`abs(A168491(n))*7^n`
-/

namespace A156266.P5428098773461891842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| * (7 ^ n : ℤ)

end

end A156266.P5428098773461891842

namespace A156266

/-- `abs(A168491(n))*7^n` -/
def P5428098773461891842.Spec : Prop :=
  ∀ n, P5428098773461891842.a n = A156266 n

end A156266

/-! ## A156266.P13159535380742349533

`7^n*A120588(n+1)`
-/

namespace A156266.P13159535380742349533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A120588 (n + 1)

end

end A156266.P13159535380742349533

namespace A156266

/-- `7^n*A120588(n+1)` -/
def P13159535380742349533.Spec : Prop :=
  ∀ n, P13159535380742349533.a n = A156266 n

end A156266

/-! ## A156266.P3767917178030566357

`7^n*A028303(2*n)`
-/

namespace A156266.P3767917178030566357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A028303 (2 * n)

end

end A156266.P3767917178030566357

namespace A156266

/-- `7^n*A028303(2*n)` -/
def P3767917178030566357.Spec : Prop :=
  ∀ n, P3767917178030566357.a n = A156266 n

end A156266

/-! ## A156266.P4804457469419829672

`7^n*A208355(2*n)`
-/

namespace A156266.P4804457469419829672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A208355 (2 * n)

end

end A156266.P4804457469419829672

namespace A156266

/-- `7^n*A208355(2*n)` -/
def P4804457469419829672.Spec : Prop :=
  ∀ n, P4804457469419829672.a n = A156266 n

end A156266

/-! ## A156266.P13375200221842786275

`7^n*A089408(Δ[n²])`
-/

namespace A156266.P13375200221842786275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A089408 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A156266.P13375200221842786275

namespace A156266

/-- `7^n*A089408(Δ[n²])` -/
def P13375200221842786275.Spec : Prop :=
  ∀ n, P13375200221842786275.a n = A156266 n

end A156266

/-! ## A156266.P14119860831122377018

`A000108(n)*A000420(n)`
-/

namespace A156266.P14119860831122377018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000420 n

end

end A156266.P14119860831122377018

namespace A156266

/-- `A000108(n)*A000420(n)` -/
def P14119860831122377018.Spec : Prop :=
  ∀ n, P14119860831122377018.a n = A156266 n

theorem P14119860831122377018.correct : P14119860831122377018.Spec := by
  intro n
  simp only [A156266, Nat.add_sub_cancel, A156266.P14119860831122377018.a, A156266.P8245967861638923851.a, A000108, A000108.P17551949696095299361.a, A000420, A000420.P3695589171832359676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156266

/-! ## A156266.P207285026585992071

`A000108(n)*∑[A055272(n)]`
-/

namespace A156266.P207285026585992071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A156266.P207285026585992071

namespace A156266

/-- `A000108(n)*∑[A055272(n)]` -/
def P207285026585992071.Spec : Prop :=
  ∀ n, P207285026585992071.a n = A156266 n

end A156266

/-!
# A156267: a(n)=A054353(2*n)-A078649(n).

The programs for A156267, the canonical program `A156267.P4727819822386795291` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156267 has offset 1).

The definition of A156267 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, A078649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A156267.P4727819822386795291

`A054353(2*(n+1))-A078649(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A156267

/-- `A054353(2*(n+1))-A078649(n+1)` -/
def P4727819822386795291.Spec : Prop :=
  ∀ n, P4727819822386795291.a n = A156267 (n + 1)

theorem P4727819822386795291.correct : P4727819822386795291.Spec := by
  intro n
  simp only [A156267, Nat.add_sub_cancel]

end A156267

/-! ## A156267.P13114692484058735544

`A156242(n+1)-A078649(n+1)`
-/

namespace A156267.P13114692484058735544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) - A078649 (n + 1)

end

end A156267.P13114692484058735544

namespace A156267

/-- `A156242(n+1)-A078649(n+1)` -/
def P13114692484058735544.Spec : Prop :=
  ∀ n, P13114692484058735544.a n = A156267 (n + 1)

end A156267

/-! ## A156267.P9593562310145916535

`∑[A332875(n+1)]-A078649(n+1)`
-/

namespace A156267.P9593562310145916535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A078649 (n + 1)

end

end A156267.P9593562310145916535

namespace A156267

/-- `∑[A332875(n+1)]-A078649(n+1)` -/
def P9593562310145916535.Spec : Prop :=
  ∀ n, P9593562310145916535.a n = A156267 (n + 1)

end A156267

/-! ## A156267.P3506744093137201035

`A156242(n+1)-∑[A306323(n+1)]`
-/

namespace A156267.P3506744093137201035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156267.P3506744093137201035

namespace A156267

/-- `A156242(n+1)-∑[A306323(n+1)]` -/
def P3506744093137201035.Spec : Prop :=
  ∀ n, P3506744093137201035.a n = A156267 (n + 1)

end A156267

/-! ## A156267.P6246324356309630883

`∑[A332875(n+1)-A306323(n+1)]`
-/

namespace A156267.P6246324356309630883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332875 (n + 1) - A306323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156267.P6246324356309630883

namespace A156267

/-- `∑[A332875(n+1)-A306323(n+1)]` -/
def P6246324356309630883.Spec : Prop :=
  ∀ n, P6246324356309630883.a n = A156267 (n + 1)

end A156267

/-! ## A156267.P13323633062956936719

`A156242(n+1)-(A013948(n+1)+n)`
-/

namespace A156267.P13323633062956936719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) - (A013948 (n + 1) + (n : ℤ))

end

end A156267.P13323633062956936719

namespace A156267

/-- `A156242(n+1)-(A013948(n+1)+n)` -/
def P13323633062956936719.Spec : Prop :=
  ∀ n, P13323633062956936719.a n = A156267 (n + 1)

theorem P13323633062956936719.correct : P13323633062956936719.Spec := by
  intro n
  simp only [A156267, Nat.add_sub_cancel, A156267.P13323633062956936719.a, A156267.P4727819822386795291.a, A013948, A013948.P3339504944308927508.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A078649, A078649.P18369770188371927822.f1, A078649.P18369770188371927822.a, A156242, A156242.P3233582996753599041.a, A000002, A000002.P13330532946811820297.a, A013947, A013947.P11385183315367073616.f1, A013947.P11385183315367073616.f2, A013947.P11385183315367073616.a, A156243, A156243.P395087012412145335.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156267

/-! ## A156267.P5021662952650829531

`A054353(2*(n+1))-∑[A306323(n+1)]`
-/

namespace A156267.P5021662952650829531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (2 * (n + 1)) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156267.P5021662952650829531

namespace A156267

/-- `A054353(2*(n+1))-∑[A306323(n+1)]` -/
def P5021662952650829531.Spec : Prop :=
  ∀ n, P5021662952650829531.a n = A156267 (n + 1)

end A156267

/-! ## A156267.P1069387904390447236

`A156242(n+1)-comp[A216345(n+1)-1]`
-/

namespace A156267.P1069387904390447236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216345 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A156267.P1069387904390447236

namespace A156267

/-- `A156242(n+1)-comp[A216345(n+1)-1]` -/
def P1069387904390447236.Spec : Prop :=
  ∀ n, P1069387904390447236.a n = A156267 (n + 1)

end A156267

/-! ## A156267.P18280586605933784936

`record[A054353(xor(1, n)+1)]-A078649(n+1)`
-/

namespace A156267.P18280586605933784936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (Nat.xor 1 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A078649 (n + 1)

end

end A156267.P18280586605933784936

namespace A156267

/-- `record[A054353(xor(1, n)+1)]-A078649(n+1)` -/
def P18280586605933784936.Spec : Prop :=
  ∀ n, P18280586605933784936.a n = A156267 (n + 1)

end A156267

/-! ## A156267.P11747760732432054335

`∑[A332875(n+1)]-(A013948(n+1)+n)`
-/

namespace A156267.P11747760732432054335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332875 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A013948 (n + 1) + (n : ℤ))

end

end A156267.P11747760732432054335

namespace A156267

/-- `∑[A332875(n+1)]-(A013948(n+1)+n)` -/
def P11747760732432054335.Spec : Prop :=
  ∀ n, P11747760732432054335.a n = A156267 (n + 1)

end A156267

/-! ## A156267.P6611779504292462931

`A156242(n+1)-(eq[2, A000002(n+1)]+1+n)`
-/

namespace A156267.P6611779504292462931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 + n : ℤ)

end

end A156267.P6611779504292462931

namespace A156267

/-- `A156242(n+1)-(eq[2, A000002(n+1)]+1+n)` -/
def P6611779504292462931.Spec : Prop :=
  ∀ n, P6611779504292462931.a n = A156267 (n + 1)

end A156267

/-! ## A156267.P5501690796530137366

`A156242(n+1)-(comp[A013947(n+1)-1]+n+1)`
-/

namespace A156267.P5501690796530137366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013947 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + (n + 1) : ℤ)

end

end A156267.P5501690796530137366

namespace A156267

/-- `A156242(n+1)-(comp[A013947(n+1)-1]+n+1)` -/
def P5501690796530137366.Spec : Prop :=
  ∀ n, P5501690796530137366.a n = A156267 (n + 1)

end A156267

/-! ## A156267.P17887282398538210145

`A156242(n+1)-A216345(A013948(n+1))`
-/

namespace A156267.P17887282398538210145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) - A216345 (A013948 (n + 1)).toNat

end

end A156267.P17887282398538210145

namespace A156267

/-- `A156242(n+1)-A216345(A013948(n+1))` -/
def P17887282398538210145.Spec : Prop :=
  ∀ n, P17887282398538210145.a n = A156267 (n + 1)

end A156267

/-! ## A156267.P6272948730529540330

`A013948(A074286(3*n+4))-A078649(n+1)`
-/

namespace A156267.P6272948730529540330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013948 (A074286 (3 * n + 4)).toNat - A078649 (n + 1)

end

end A156267.P6272948730529540330

namespace A156267

/-- `A013948(A074286(3*n+4))-A078649(n+1)` -/
def P6272948730529540330.Spec : Prop :=
  ∀ n, P6272948730529540330.a n = A156267 (n + 1)

end A156267

/-! ## A156267.P5501658164749259606

`A156242(n+1)-(A306229(A013947(n+1))+n)`
-/

namespace A156267.P5501658164749259606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156242 (n + 1) - (A306229 (A013947 (n + 1)).toNat + (n : ℤ))

end

end A156267.P5501658164749259606

namespace A156267

/-- `A156242(n+1)-(A306229(A013947(n+1))+n)` -/
def P5501658164749259606.Spec : Prop :=
  ∀ n, P5501658164749259606.a n = A156267 (n + 1)

end A156267

/-! ## A156267.P2998006461015348299

`∑[A100429(n+1)+A100428(n+1)]-A078649(n+1)`
-/

namespace A156267.P2998006461015348299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100429 (n + 1) + A100428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A078649 (n + 1)

end

end A156267.P2998006461015348299

namespace A156267

/-- `∑[A100429(n+1)+A100428(n+1)]-A078649(n+1)` -/
def P2998006461015348299.Spec : Prop :=
  ∀ n, P2998006461015348299.a n = A156267 (n + 1)

end A156267

/-! ## A156267.P14289864198839925794

`∑[A100428(n+1)+A100429(n+1)-A306323(n+1)]`
-/

namespace A156267.P14289864198839925794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100428 (n + 1) + (A100429 (n + 1) - A306323 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156267.P14289864198839925794

namespace A156267

/-- `∑[A100428(n+1)+A100429(n+1)-A306323(n+1)]` -/
def P14289864198839925794.Spec : Prop :=
  ∀ n, P14289864198839925794.a n = A156267 (n + 1)

end A156267

/-!
# A156268: a(n)=2*A054353(n)-A078649(n).

The programs for A156268, the canonical program `A156268.P6336594155207146855` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156268 has offset 1).

The definition of A156268 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054353, A078649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A156268.P6336594155207146855

`2*A054353(n+1)-A078649(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A156268

/-- `2*A054353(n+1)-A078649(n+1)` -/
def P6336594155207146855.Spec : Prop :=
  ∀ n, P6336594155207146855.a n = A156268 (n + 1)

theorem P6336594155207146855.correct : P6336594155207146855.Spec := by
  intro n
  simp only [A156268, Nat.add_sub_cancel]

end A156268

/-! ## A156268.P16442417662887503953

`A294448(n+1)+A156265(n+1)`
-/

namespace A156268.P16442417662887503953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (n + 1) + A156265 (n + 1)

end

end A156268.P16442417662887503953

namespace A156268

/-- `A294448(n+1)+A156265(n+1)` -/
def P16442417662887503953.Spec : Prop :=
  ∀ n, P16442417662887503953.a n = A156268 (n + 1)

end A156268

/-! ## A156268.P13133011005837203375

`A156265(n+1)-A088568(n+1)`
-/

namespace A156268.P13133011005837203375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156265 (n + 1) - A088568 (n + 1)

end

end A156268.P13133011005837203375

namespace A156268

/-- `A156265(n+1)-A088568(n+1)` -/
def P13133011005837203375.Spec : Prop :=
  ∀ n, P13133011005837203375.a n = A156268 (n + 1)

theorem P13133011005837203375.correct : P13133011005837203375.Spec := by
  intro n
  simp only [A156268, Nat.add_sub_cancel, A156268.P13133011005837203375.a, A156268.P6336594155207146855.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A078649, A078649.P18369770188371927822.f1, A078649.P18369770188371927822.a, A088568, A088568.P7969983954604256845.a, A156265, A156265.P11083405800392652458.a, A000002, A000002.P13330532946811820297.a, A013947, A013947.P11385183315367073616.f1, A013947.P11385183315367073616.f2, A013947.P11385183315367073616.a, A156242, A156242.P3233582996753599041.a, A156243, A156243.P395087012412145335.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156268

/-! ## A156268.P5681078486874412603

`∑[2*A000002(n+1)]-A078649(n+1)`
-/

namespace A156268.P5681078486874412603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A078649 (n + 1)

end

end A156268.P5681078486874412603

namespace A156268

/-- `∑[2*A000002(n+1)]-A078649(n+1)` -/
def P5681078486874412603.Spec : Prop :=
  ∀ n, P5681078486874412603.a n = A156268 (n + 1)

end A156268

/-! ## A156268.P9593337821533680566

`A156265(n+1)-(n+1-2*A074286(n+1))`
-/

namespace A156268.P9593337821533680566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156265 (n + 1) - ((n + 1 : ℤ) - 2 * A074286 (n + 1))

end

end A156268.P9593337821533680566

namespace A156268

/-- `A156265(n+1)-(n+1-2*A074286(n+1))` -/
def P9593337821533680566.Spec : Prop :=
  ∀ n, P9593337821533680566.a n = A156268 (n + 1)

theorem P9593337821533680566.correct : P9593337821533680566.Spec := by
  intro n
  simp only [A156268, Nat.add_sub_cancel, A156268.P9593337821533680566.a, A156268.P6336594155207146855.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A074286, A074286.P6856108592712522312.a, A078649, A078649.P18369770188371927822.f1, A078649.P18369770188371927822.a, A156265, A156265.P11083405800392652458.a, A000002, A000002.P13330532946811820297.a, A013947, A013947.P11385183315367073616.f1, A013947.P11385183315367073616.f2, A013947.P11385183315367073616.a, A156242, A156242.P3233582996753599041.a, A156243, A156243.P395087012412145335.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156268

/-! ## A156268.P9752764793225373946

`2*n+3-(A088568(n+1)+A013948(n+1))`
-/

namespace A156268.P9752764793225373946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - (A088568 (n + 1) + A013948 (n + 1))

end

end A156268.P9752764793225373946

namespace A156268

/-- `2*n+3-(A088568(n+1)+A013948(n+1))` -/
def P9752764793225373946.Spec : Prop :=
  ∀ n, P9752764793225373946.a n = A156268 (n + 1)

theorem P9752764793225373946.correct : P9752764793225373946.Spec := by
  intro n
  simp only [A156268, Nat.add_sub_cancel, A156268.P9752764793225373946.a, A156268.P6336594155207146855.a, A013948, A013948.P3339504944308927508.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A078649, A078649.P18369770188371927822.f1, A078649.P18369770188371927822.a, A088568, A088568.P7969983954604256845.a, A000002, A000002.P13330532946811820297.a, A013947, A013947.P11385183315367073616.f1, A013947.P11385183315367073616.f2, A013947.P11385183315367073616.a, A156242, A156242.P3233582996753599041.a, A156243, A156243.P395087012412145335.a, A156253, A156253.P16782691293242481478.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156268

/-! ## A156268.P10914286361996932179

`A156265(n+1)+∑[A033999(A156253(n+1))]`
-/

namespace A156268.P10914286361996932179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A156253 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156265 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156268.P10914286361996932179

namespace A156268

/-- `A156265(n+1)+∑[A033999(A156253(n+1))]` -/
def P10914286361996932179.Spec : Prop :=
  ∀ n, P10914286361996932179.a n = A156268 (n + 1)

end A156268

/-! ## A156268.P136605909071081728

`∑[A000002(n+1)]+A054353(n+1)-A078649(n+1)`
-/

namespace A156268.P136605909071081728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A054353 (n + 1) - A078649 (n + 1))

end

end A156268.P136605909071081728

namespace A156268

/-- `∑[A000002(n+1)]+A054353(n+1)-A078649(n+1)` -/
def P136605909071081728.Spec : Prop :=
  ∀ n, P136605909071081728.a n = A156268 (n + 1)

theorem P136605909071081728.correct : P136605909071081728.Spec := by
  intro n
  simp only [A156268, Nat.add_sub_cancel, A156268.P136605909071081728.f1, A156268.P136605909071081728.a, A156268.P6336594155207146855.a, A000002, A000002.P13330532946811820297.a, A054353, A054353.P16739713460901819012.f1, A054353.P16739713460901819012.a, A078649, A078649.P18369770188371927822.f1, A078649.P18369770188371927822.a, A013947, A013947.P11385183315367073616.f1, A013947.P11385183315367073616.f2, A013947.P11385183315367073616.a, A156253, A156253.P16782691293242481478.a, A156242, A156242.P3233582996753599041.a, A156243, A156243.P395087012412145335.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A156268

/-! ## A156268.P3859995042741839365

`A156265(n+1)+∑[A000002(n+1)-A049705(n+1)]`
-/

namespace A156268.P3859995042741839365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1) - A049705 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156265 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156268.P3859995042741839365

namespace A156268

/-- `A156265(n+1)+∑[A000002(n+1)-A049705(n+1)]` -/
def P3859995042741839365.Spec : Prop :=
  ∀ n, P3859995042741839365.a n = A156268 (n + 1)

end A156268

/-! ## A156268.P7286891091212725564

`A074286(n+1)+A156265(n+1)-∑[A078650(n+1)]`
-/

namespace A156268.P7286891091212725564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074286 (n + 1) + (A156265 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A156268.P7286891091212725564

namespace A156268

/-- `A074286(n+1)+A156265(n+1)-∑[A078650(n+1)]` -/
def P7286891091212725564.Spec : Prop :=
  ∀ n, P7286891091212725564.a n = A156268 (n + 1)

end A156268

/-! ## A156268.P8684179218605741346

`A004277(A054353(n+1))-A078649(n+1)`
-/

namespace A156268.P8684179218605741346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A054353 (n + 1)).toNat - A078649 (n + 1)

end

end A156268.P8684179218605741346

namespace A156268

/-- `A004277(A054353(n+1))-A078649(n+1)` -/
def P8684179218605741346.Spec : Prop :=
  ∀ n, P8684179218605741346.a n = A156268 (n + 1)

end A156268

/-! ## A156268.P6131220011583059647

`A005843(∑[A000002(n+1)])-A078649(n+1)`
-/

namespace A156268.P6131220011583059647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A078649 (n + 1)

end

end A156268.P6131220011583059647

namespace A156268

/-- `A005843(∑[A000002(n+1)])-A078649(n+1)` -/
def P6131220011583059647.Spec : Prop :=
  ∀ n, P6131220011583059647.a n = A156268 (n + 1)

end A156268

/-! ## A156268.P12559826800433547310

`2*(n+1)-eq[2, A000002(n+1)]-A088568(n+1)`
-/

namespace A156268.P12559826800433547310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A088568 (n + 1)

end

end A156268.P12559826800433547310

namespace A156268

/-- `2*(n+1)-eq[2, A000002(n+1)]-A088568(n+1)` -/
def P12559826800433547310.Spec : Prop :=
  ∀ n, P12559826800433547310.a n = A156268 (n + 1)

end A156268

/-! ## A156268.P6086510042792843720

`1-(A088568(A013948(n+1))+A088568(n+1))`
-/

namespace A156268.P6086510042792843720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A088568 (A013948 (n + 1)).toNat + A088568 (n + 1))

end

end A156268.P6086510042792843720

namespace A156268

/-- `1-(A088568(A013948(n+1))+A088568(n+1))` -/
def P6086510042792843720.Spec : Prop :=
  ∀ n, P6086510042792843720.a n = A156268 (n + 1)

end A156268

/-! ## A156268.P13478840923651303698

`A294448(n+1)+∑[3-A306323(n+1)]`
-/

namespace A156268.P13478840923651303698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A306323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156268.P13478840923651303698

namespace A156268

/-- `A294448(n+1)+∑[3-A306323(n+1)]` -/
def P13478840923651303698.Spec : Prop :=
  ∀ n, P13478840923651303698.a n = A156268 (n + 1)

end A156268

/-! ## A156268.P6238717050424021835

`∑[2*A000002(n+1)-A306323(n+1)]`
-/

namespace A156268.P6238717050424021835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000002 (n + 1) - A306323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156268.P6238717050424021835

namespace A156268

/-- `∑[2*A000002(n+1)-A306323(n+1)]` -/
def P6238717050424021835.Spec : Prop :=
  ∀ n, P6238717050424021835.a n = A156268 (n + 1)

end A156268

/-! ## A156268.P17945100434245009909

`2*A054353(n+1)-∑[A306323(n+1)]`
-/

namespace A156268.P17945100434245009909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054353 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156268.P17945100434245009909

namespace A156268

/-- `2*A054353(n+1)-∑[A306323(n+1)]` -/
def P17945100434245009909.Spec : Prop :=
  ∀ n, P17945100434245009909.a n = A156268 (n + 1)

end A156268

/-! ## A156268.P9380820841040214571

`∑[3-A306323(n+1)]-A088568(n+1)`
-/

namespace A156268.P9380820841040214571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A306323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A088568 (n + 1)

end

end A156268.P9380820841040214571

namespace A156268

/-- `∑[3-A306323(n+1)]-A088568(n+1)` -/
def P9380820841040214571.Spec : Prop :=
  ∀ n, P9380820841040214571.a n = A156268 (n + 1)

end A156268

/-! ## A156268.P12185392638464595164

`A005843(A054353(n+1))-∑[A306323(n+1)]`
-/

namespace A156268.P12185392638464595164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A054353 (n + 1)).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156268.P12185392638464595164

namespace A156268

/-- `A005843(A054353(n+1))-∑[A306323(n+1)]` -/
def P12185392638464595164.Spec : Prop :=
  ∀ n, P12185392638464595164.a n = A156268 (n + 1)

end A156268

/-!
# A156269: Denominators of a series expansion for Pi/2.

The programs for A156269, the canonical program `A156269.P821415153029621083` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156269 has offset 0).

The definition of A156269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 484 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156269.P821415153029621083

`A042968(n+1)*A320770(comp[4*n+2])`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156269

/-- `A042968(n+1)*A320770(comp[4*n+2])` -/
def P821415153029621083.Spec : Prop :=
  ∀ n, P821415153029621083.a n = A156269 n

theorem P821415153029621083.correct : P821415153029621083.Spec := by
  intro n
  simp only [A156269]

end A156269

/-! ## A156269.P3224349051083813022

`∑[A100063(n)]*A320770(A004773(n))`
-/

namespace A156269.P3224349051083813022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A320770 (A004773 n).toNat

end

end A156269.P3224349051083813022

namespace A156269

/-- `∑[A100063(n)]*A320770(A004773(n))` -/
def P3224349051083813022.Spec : Prop :=
  ∀ n, P3224349051083813022.a n = A156269 n

end A156269

/-!
# A156270: a(n) = 8^n*Catalan(n).

The programs for A156270, the canonical program `A156270.P10850469450774389515` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156270 has offset 0).

The definition of A156270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156270.P10850469450774389515

`8^n*A000108(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156270

/-- `8^n*A000108(n)` -/
def P10850469450774389515.Spec : Prop :=
  ∀ n, P10850469450774389515.a n = A156270 n

theorem P10850469450774389515.correct : P10850469450774389515.Spec := by
  intro n
  simp only [A156270]

end A156270

/-! ## A156270.P12364741008982269911

`C(2*n, n)/(n+1)*8^n`
-/

namespace A156270.P12364741008982269911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (8 ^ n : ℚ)

end

end A156270.P12364741008982269911

namespace A156270

/-- `C(2*n, n)/(n+1)*8^n` -/
def P12364741008982269911.Spec : Prop :=
  ∀ n, P12364741008982269911.a n = (A156270 n : ℚ)

end A156270

/-! ## A156270.P10243087169473063967

`8*(4-6/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A156270.P10243087169473063967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  8 * ((4 - 6 / (n + 1 : ℚ)) * a (n - 1))

end

end A156270.P10243087169473063967

namespace A156270

/-- `8*(4-6/(n+1))*a(n-1)` -/
def P10243087169473063967.Spec : Prop :=
  ∀ n, P10243087169473063967.a n = (A156270 n : ℚ)

end A156270

/-! ## A156270.P13276215454773710121

`4^n*A151374(n)`
-/

namespace A156270.P13276215454773710121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A151374 n

end

end A156270.P13276215454773710121

namespace A156270

/-- `4^n*A151374(n)` -/
def P13276215454773710121.Spec : Prop :=
  ∀ n, P13276215454773710121.a n = A156270 n

end A156270

/-! ## A156270.P10686652203371929607

`8^n*A008313(n²)`
-/

namespace A156270.P10686652203371929607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * A008313 (n ^ 2)

end

end A156270.P10686652203371929607

namespace A156270

/-- `8^n*A008313(n²)` -/
def P10686652203371929607.Spec : Prop :=
  ∀ n, P10686652203371929607.a n = A156270 n

end A156270

/-! ## A156270.P152011697733615418

`abs(A168491(n))*2^n*2^n*2^n`
-/

namespace A156270.P152011697733615418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| * (2 ^ n : ℤ) * (2 ^ n : ℤ) * (2 ^ n : ℤ)

end

end A156270.P152011697733615418

namespace A156270

/-- `abs(A168491(n))*2^n*2^n*2^n` -/
def P152011697733615418.Spec : Prop :=
  ∀ n, P152011697733615418.a n = A156270 n

end A156270

/-! ## A156270.P15948422947868197465

`A000108(n)*A001018(n)`
-/

namespace A156270.P15948422947868197465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A001018 n

end

end A156270.P15948422947868197465

namespace A156270

/-- `A000108(n)*A001018(n)` -/
def P15948422947868197465.Spec : Prop :=
  ∀ n, P15948422947868197465.a n = A156270 n

theorem P15948422947868197465.correct : P15948422947868197465.Spec := by
  intro n
  simp only [A156270, Nat.add_sub_cancel, A156270.P15948422947868197465.a, A156270.P10850469450774389515.a, A000108, A000108.P17551949696095299361.a, A001018, A001018.P5588564631493008987.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156270

/-! ## A156270.P10068532646213190184

`A000108(n)*∑[A055274(n)]`
-/

namespace A156270.P10068532646213190184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A156270.P10068532646213190184

namespace A156270

/-- `A000108(n)*∑[A055274(n)]` -/
def P10068532646213190184.Spec : Prop :=
  ∀ n, P10068532646213190184.a n = A156270 n

end A156270

/-! ## A156270.P3612310621283106866

`A000108(n)*Δ[A023001(n)]`
-/

namespace A156270.P3612310621283106866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (f1 (n + 1) - f1 n)

end

end A156270.P3612310621283106866

namespace A156270

/-- `A000108(n)*Δ[A023001(n)]` -/
def P3612310621283106866.Spec : Prop :=
  ∀ n, P3612310621283106866.a n = A156270 n

end A156270

/-! ## A156270.P8467967201850980296

`A000108(n)*Δ[A047853(n)]`
-/

namespace A156270.P8467967201850980296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047853 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (f1 (n + 1) - f1 n)

end

end A156270.P8467967201850980296

namespace A156270

/-- `A000108(n)*Δ[A047853(n)]` -/
def P8467967201850980296.Spec : Prop :=
  ∀ n, P8467967201850980296.a n = A156270 n

end A156270

/-!
# A156271: a(n)=sum(k=1,n,A000002(A078649(k))).

The programs for A156271, there is no canonical definition to state claims against.
-/

/-! ## A156271.P8912797843737231560

`∑[A156257(n+1)]`
-/

namespace A156271.P8912797843737231560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156271.P8912797843737231560

/-! ## A156271.P13227765856607428989

`∑[A156258(n+1)+1]`
-/

namespace A156271.P13227765856607428989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156258 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156271.P13227765856607428989

/-! ## A156271.P9825697445424425695

`∑[2-A156259(n+1)]`
-/

namespace A156271.P9825697445424425695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A156259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156271.P9825697445424425695

/-! ## A156271.P14100557053431145720

`∑[gcd(2, A013948(n+1))]`
-/

namespace A156271.P14100557053431145720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A013948 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156271.P14100557053431145720

/-! ## A156271.P14500515925949541821

`A156262(n+1)+1+n`
-/

namespace A156271.P14500515925949541821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (n + 1) + 1 + (n : ℤ)

end

end A156271.P14500515925949541821

/-! ## A156271.P12518805224766622444

`∑[A156265(n+1)%2+1]`
-/

namespace A156271.P12518805224766622444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156265 (n + 1)) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156271.P12518805224766622444

/-! ## A156271.P7605010019476480021

`2*(n+1)-A156261(n+1)`
-/

namespace A156271.P7605010019476480021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A156261 (n + 1)

end

end A156271.P7605010019476480021

/-! ## A156271.P10341789729939208401

`∑[2-(∑[A306323(n+1)]+n)%2]`
-/

namespace A156271.P10341789729939208401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306323 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156271.P10341789729939208401

/-! ## A156271.P12098323361093425302

`∑[A000002(A078649(n+1))]`
-/

namespace A156271.P12098323361093425302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A078649 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156271.P12098323361093425302

/-! ## A156271.P889618381258506302

`∑[A000002(∑[A306323(n+1)])]`
-/

namespace A156271.P889618381258506302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306323 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156271.P889618381258506302

/-!
# A156272: Numerator of Euler(n, 1/10).

The programs for A156272, there is no canonical definition to state claims against.
-/

/-! ## A156272.P10060265220146855185

`A377665(n)/A066099(A056686(2*n+3))`
-/

namespace A156272.P10060265220146855185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377665 n : ℚ) / (A066099 (A056686 (2 * n + 3)).toNat : ℚ)

end

end A156272.P10060265220146855185

/-!
# A156273: a(n) = 9^n*Catalan(n).

The programs for A156273, the canonical program `A156273.P11938944850300387714` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156273 has offset 0).

The definition of A156273 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156273.P11938944850300387714

`9^n*A000108(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156273

/-- `9^n*A000108(n)` -/
def P11938944850300387714.Spec : Prop :=
  ∀ n, P11938944850300387714.a n = A156273 n

theorem P11938944850300387714.correct : P11938944850300387714.Spec := by
  intro n
  simp only [A156273]

end A156273

/-! ## A156273.P17395723948786277080

`C(2*n, n)/(n+1)*9^n`
-/

namespace A156273.P17395723948786277080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (9 ^ n : ℚ)

end

end A156273.P17395723948786277080

namespace A156273

/-- `C(2*n, n)/(n+1)*9^n` -/
def P17395723948786277080.Spec : Prop :=
  ∀ n, P17395723948786277080.a n = (A156273 n : ℚ)

end A156273

/-! ## A156273.P15215626814060744507

`9*(4-6/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A156273.P15215626814060744507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  9 * ((4 - 6 / (n + 1 : ℚ)) * a (n - 1))

end

end A156273.P15215626814060744507

namespace A156273

/-- `9*(4-6/(n+1))*a(n-1)` -/
def P15215626814060744507.Spec : Prop :=
  ∀ n, P15215626814060744507.a n = (A156273 n : ℚ)

end A156273

/-! ## A156273.P7312393311975319061

`3^n*A005159(n)`
-/

namespace A156273.P7312393311975319061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A005159 n

end

end A156273.P7312393311975319061

namespace A156273

/-- `3^n*A005159(n)` -/
def P7312393311975319061.Spec : Prop :=
  ∀ n, P7312393311975319061.a n = A156273 n

end A156273

/-! ## A156273.P14721975751662797452

`9^n*A039599(∑[n])`
-/

namespace A156273.P14721975751662797452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 ^ n : ℤ) * A039599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A156273.P14721975751662797452

namespace A156273

/-- `9^n*A039599(∑[n])` -/
def P14721975751662797452.Spec : Prop :=
  ∀ n, P14721975751662797452.a n = A156273 n

end A156273

/-! ## A156273.P2077921184835580865

`A000108(n)*A001019(n)`
-/

namespace A156273.P2077921184835580865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A001019 n

end

end A156273.P2077921184835580865

namespace A156273

/-- `A000108(n)*A001019(n)` -/
def P2077921184835580865.Spec : Prop :=
  ∀ n, P2077921184835580865.a n = A156273 n

theorem P2077921184835580865.correct : P2077921184835580865.Spec := by
  intro n
  simp only [A156273, Nat.add_sub_cancel, A156273.P2077921184835580865.a, A156273.P11938944850300387714.a, A000108, A000108.P17551949696095299361.a, A001019, A001019.P4632907595368420400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156273

/-! ## A156273.P766791919466779832

`A000108(n)*A000244(n)²`
-/

namespace A156273.P766791919466779832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000244 n ^ 2

end

end A156273.P766791919466779832

namespace A156273

/-- `A000108(n)*A000244(n)²` -/
def P766791919466779832.Spec : Prop :=
  ∀ n, P766791919466779832.a n = A156273 n

end A156273

/-! ## A156273.P18296405177905265229

`A000108(n)*∑[A055275(n)]`
-/

namespace A156273.P18296405177905265229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A156273.P18296405177905265229

namespace A156273

/-- `A000108(n)*∑[A055275(n)]` -/
def P18296405177905265229.Spec : Prop :=
  ∀ n, P18296405177905265229.a n = A156273 n

end A156273

/-! ## A156273.P2230651093393644418

`A000108(n)*Δ[A002452(n)]`
-/

namespace A156273.P2230651093393644418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (f1 (n + 1) - f1 n)

end

end A156273.P2230651093393644418

namespace A156273

/-- `A000108(n)*Δ[A002452(n)]` -/
def P2230651093393644418.Spec : Prop :=
  ∀ n, P2230651093393644418.a n = A156273 n

end A156273

/-! ## A156273.P9553296528203451989

`A000108(n)*A000244(2*n)`
-/

namespace A156273.P9553296528203451989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000244 (2 * n)

end

end A156273.P9553296528203451989

namespace A156273

/-- `A000108(n)*A000244(2*n)` -/
def P9553296528203451989.Spec : Prop :=
  ∀ n, P9553296528203451989.a n = A156273 n

end A156273

/-!
# A156274: List of prime pairs of the form (p, p+6).

The programs for A156274, the canonical program `A156274.P1595059407233853913` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156274 has offset 1).

The definition of A156274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156274.P1595059407233853913

`A023201(A008619(n))+6*n%2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A156274

/-- `A023201(A008619(n))+6*n%2` -/
def P1595059407233853913.Spec : Prop :=
  ∀ n, P1595059407233853913.a n = A156274 (n + 1)

theorem P1595059407233853913.correct : P1595059407233853913.Spec := by
  intro n
  simp only [A156274, Nat.add_sub_cancel]

end A156274

/-!
# A156275: a(n) = 10^n*Catalan(n).

The programs for A156275, the canonical program `A156275.P5423901398526623183` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156275 has offset 0).

The definition of A156275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156275.P5423901398526623183

`10^n*A000108(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156275

/-- `10^n*A000108(n)` -/
def P5423901398526623183.Spec : Prop :=
  ∀ n, P5423901398526623183.a n = A156275 n

theorem P5423901398526623183.correct : P5423901398526623183.Spec := by
  intro n
  simp only [A156275]

end A156275

/-! ## A156275.P13989736309614644992

`C(2*n, n)/(n+1)*10^n`
-/

namespace A156275.P13989736309614644992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ) * (10 ^ n : ℚ)

end

end A156275.P13989736309614644992

namespace A156275

/-- `C(2*n, n)/(n+1)*10^n` -/
def P13989736309614644992.Spec : Prop :=
  ∀ n, P13989736309614644992.a n = (A156275 n : ℚ)

end A156275

/-! ## A156275.P3826221988947486759

`10*(4-6/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A156275.P3826221988947486759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  10 * ((4 - 6 / (n + 1 : ℚ)) * a (n - 1))

end

end A156275.P3826221988947486759

namespace A156275

/-- `10*(4-6/(n+1))*a(n-1)` -/
def P3826221988947486759.Spec : Prop :=
  ∀ n, P3826221988947486759.a n = (A156275 n : ℚ)

end A156275

/-! ## A156275.P3136310645582037954

`2^n*A156058(n)`
-/

namespace A156275.P3136310645582037954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A156058 n

end

end A156275.P3136310645582037954

namespace A156275

/-- `2^n*A156058(n)` -/
def P3136310645582037954.Spec : Prop :=
  ∀ n, P3136310645582037954.a n = A156275 n

end A156275

/-! ## A156275.P1348527046146693723

`abs(10^n*A168491(n))`
-/

namespace A156275.P1348527046146693723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 ^ n : ℤ) * A168491 n|

end

end A156275.P1348527046146693723

namespace A156275

/-- `abs(10^n*A168491(n))` -/
def P1348527046146693723.Spec : Prop :=
  ∀ n, P1348527046146693723.a n = A156275 n

end A156275

/-! ## A156275.P18085208023939962763

`10^n*A008313(n²)`
-/

namespace A156275.P18085208023939962763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ n : ℤ) * A008313 (n ^ 2)

end

end A156275.P18085208023939962763

namespace A156275

/-- `10^n*A008313(n²)` -/
def P18085208023939962763.Spec : Prop :=
  ∀ n, P18085208023939962763.a n = A156275 n

end A156275

/-! ## A156275.P15652887441850442346

`A000108(n)*A011557(n)`
-/

namespace A156275.P15652887441850442346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A011557 n

end

end A156275.P15652887441850442346

namespace A156275

/-- `A000108(n)*A011557(n)` -/
def P15652887441850442346.Spec : Prop :=
  ∀ n, P15652887441850442346.a n = A156275 n

theorem P15652887441850442346.correct : P15652887441850442346.Spec := by
  intro n
  simp only [A156275, Nat.add_sub_cancel, A156275.P15652887441850442346.a, A156275.P5423901398526623183.a, A000108, A000108.P17551949696095299361.a, A011557, A011557.P11220211478167790856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156275

/-! ## A156275.P10944296385637718894

`A000108(n)*Δ[A002275(n)]`
-/

namespace A156275.P10944296385637718894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (f1 (n + 1) - f1 n)

end

end A156275.P10944296385637718894

namespace A156275

/-- `A000108(n)*Δ[A002275(n)]` -/
def P10944296385637718894.Spec : Prop :=
  ∀ n, P10944296385637718894.a n = A156275 n

end A156275

/-! ## A156275.P13008216498333195798

`A000108(n)*Δ[A047855(n)]`
-/

namespace A156275.P13008216498333195798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (f1 (n + 1) - f1 n)

end

end A156275.P13008216498333195798

namespace A156275

/-- `A000108(n)*Δ[A047855(n)]` -/
def P13008216498333195798.Spec : Prop :=
  ∀ n, P13008216498333195798.a n = A156275 n

end A156275

/-! ## A156275.P17453751768597120225

`A000108(n)*A178501(n+1)`
-/

namespace A156275.P17453751768597120225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A178501 (n + 1)

end

end A156275.P17453751768597120225

namespace A156275

/-- `A000108(n)*A178501(n+1)` -/
def P17453751768597120225.Spec : Prop :=
  ∀ n, P17453751768597120225.a n = A156275 n

end A156275

/-!
# A156276: Denominator of Euler(n, 1/10).

The programs for A156276, the canonical program `A156276.P2956332392884539004` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156276 has offset 0).

The definition of A156276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156276.P2956332392884539004

`5^n*A011782(xor(1, n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A156276

/-- `5^n*A011782(xor(1, n))` -/
def P2956332392884539004.Spec : Prop :=
  ∀ n, P2956332392884539004.a n = A156276 n

theorem P2956332392884539004.correct : P2956332392884539004.Spec := by
  intro n
  simp only [A156276]

end A156276

/-! ## A156276.P2315079283639649589

`A000351(n)*A011782(A004442(n))`
-/

namespace A156276.P2315079283639649589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n * A011782 (A004442 n).toNat

end

end A156276.P2315079283639649589

namespace A156276

/-- `A000351(n)*A011782(A004442(n))` -/
def P2315079283639649589.Spec : Prop :=
  ∀ n, P2315079283639649589.a n = A156276 n

end A156276

/-! ## A156276.P18351516844884573959

`A011557(n)/A040005(A004442(n))`
-/

namespace A156276.P18351516844884573959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 n : ℚ) / (A040005 (A004442 n).toNat : ℚ)

end

end A156276.P18351516844884573959

namespace A156276

/-- `A011557(n)/A040005(A004442(n))` -/
def P18351516844884573959.Spec : Prop :=
  ∀ n, P18351516844884573959.a n = (A156276 n : ℚ)

end A156276

/-! ## A156276.P4157416994018125552

`A011557(n)/A040005(A008611(n))`
-/

namespace A156276.P4157416994018125552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011557 n : ℚ) / (A040005 (A008611 n).toNat : ℚ)

end

end A156276.P4157416994018125552

namespace A156276

/-- `A011557(n)/A040005(A008611(n))` -/
def P4157416994018125552.Spec : Prop :=
  ∀ n, P4157416994018125552.a n = (A156276 n : ℚ)

end A156276

/-! ## A156276.P2197934798519756467

`A004643(2*n)/A040005(A008611(n))`
-/

namespace A156276.P2197934798519756467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004643 (2 * n) : ℚ) / (A040005 (A008611 n).toNat : ℚ)

end

end A156276.P2197934798519756467

namespace A156276

/-- `A004643(2*n)/A040005(A008611(n))` -/
def P2197934798519756467.Spec : Prop :=
  ∀ n, P2197934798519756467.a n = (A156276 n : ℚ)

end A156276

/-! ## A156276.P10370562670465693588

`lcm(A010702(n), A011557(n))/A010702(n)`
-/

namespace A156276.P10370562670465693588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A010702 n) (A011557 n) : ℚ) / (A010702 n : ℚ)

end

end A156276.P10370562670465693588

namespace A156276

/-- `lcm(A010702(n), A011557(n))/A010702(n)` -/
def P10370562670465693588.Spec : Prop :=
  ∀ n, P10370562670465693588.a n = (A156276 n : ℚ)

end A156276

/-!
# A156277: Dirichlet inverse of A011655, characteristic function of numbers that are not multiples of 3; Numbers appearing at every third row in the third column of A156241.

The programs for A156277, the canonical program `A156277.P12894621483553332177` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156277 has offset 1).

The definition of A156277 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A156277.P12894621483553332177

`-A008683(3*(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A156277

/-- `-A008683(3*(n+1))` -/
def P12894621483553332177.Spec : Prop :=
  ∀ n, P12894621483553332177.a n = A156277 (n + 1)

theorem P12894621483553332177.correct : P12894621483553332177.Spec := by
  intro n
  simp only [A156277, Nat.add_sub_cancel]

end A156277

/-! ## A156277.P16861373314057615380

`(C(∏{p}[n+1, #], n)*∏{p}[n+1, -#])%3`
-/

namespace A156277.P16861373314057615380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), p) n : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)))) 3

end

end A156277.P16861373314057615380

namespace A156277

/-- `(C(∏{p}[n+1, #], n)*∏{p}[n+1, -#])%3` -/
def P16861373314057615380.Spec : Prop :=
  ∀ n, P16861373314057615380.a n = A156277 (n + 1)

end A156277

/-! ## A156277.P12530056518152058683

`A117997(n+1)%2`
-/

namespace A156277.P12530056518152058683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117997 (n + 1)) 2

end

end A156277.P12530056518152058683

namespace A156277

/-- `A117997(n+1)%2` -/
def P12530056518152058683.Spec : Prop :=
  ∀ n, P12530056518152058683.a n = A156277 (n + 1)

end A156277

/-! ## A156277.P17974505352772120299

`A349125(n+1)%2`
-/

namespace A156277.P17974505352772120299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349125 (n + 1)) 2

end

end A156277.P17974505352772120299

namespace A156277

/-- `A349125(n+1)%2` -/
def P17974505352772120299.Spec : Prop :=
  ∀ n, P17974505352772120299.a n = A156277 (n + 1)

end A156277

/-! ## A156277.P13419168585558380438

`A349368(n+1)%2`
-/

namespace A156277.P13419168585558380438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349368 (n + 1)) 2

end

end A156277.P13419168585558380438

namespace A156277

/-- `A349368(n+1)%2` -/
def P13419168585558380438.Spec : Prop :=
  ∀ n, P13419168585558380438.a n = A156277 (n + 1)

end A156277

/-! ## A156277.P10499826819488236962

`A334657(n+1)%3`
-/

namespace A156277.P10499826819488236962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334657 (n + 1)) 3

end

end A156277.P10499826819488236962

namespace A156277

/-- `A334657(n+1)%3` -/
def P10499826819488236962.Spec : Prop :=
  ∀ n, P10499826819488236962.a n = A156277 (n + 1)

end A156277

/-! ## A156277.P11020624886857959185

`A334660(n+1)%3`
-/

namespace A156277.P11020624886857959185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334660 (n + 1)) 3

end

end A156277.P11020624886857959185

namespace A156277

/-- `A334660(n+1)%3` -/
def P11020624886857959185.Spec : Prop :=
  ∀ n, P11020624886857959185.a n = A156277 (n + 1)

end A156277

/-! ## A156277.P13532323080729511079

`A008683((n+1)*gcd(3, n+1))`
-/

namespace A156277.P13532323080729511079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) * Nat.gcd 3 (n + 1))

end

end A156277.P13532323080729511079

namespace A156277

/-- `A008683((n+1)*gcd(3, n+1))` -/
def P13532323080729511079.Spec : Prop :=
  ∀ n, P13532323080729511079.a n = A156277 (n + 1)

end A156277

/-! ## A156277.P14111445931801197998

`A008683(n+1)%(3-n%3)`
-/

namespace A156277.P14111445931801197998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008683 (n + 1)) (3 - ((n % 3 : ℕ) : ℤ))

end

end A156277.P14111445931801197998

namespace A156277

/-- `A008683(n+1)%(3-n%3)` -/
def P14111445931801197998.Spec : Prop :=
  ∀ n, P14111445931801197998.a n = A156277 (n + 1)

end A156277

/-! ## A156277.P15917393545837326517

`A008683((n+1)*dr((n+1)^6))`
-/

namespace A156277.P15917393545837326517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) * SequenceMachineLib.digitalRoot ((n + 1) ^ 6 : ℤ))

end

end A156277.P15917393545837326517

namespace A156277

/-- `A008683((n+1)*dr((n+1)^6))` -/
def P15917393545837326517.Spec : Prop :=
  ∀ n, P15917393545837326517.a n = A156277 (n + 1)

end A156277

/-! ## A156277.P18043878980323137416

`Δ[a(n-1)-A008683(3*n)]` with `a(0)=1`
-/

namespace A156277.P18043878980323137416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A008683 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A156277.P18043878980323137416

namespace A156277

/-- `Δ[a(n-1)-A008683(3*n)]` -/
def P18043878980323137416.Spec : Prop :=
  ∀ n, P18043878980323137416.a n = A156277 (n + 1)

end A156277

/-! ## A156277.P745008777208045730

`A008683(gcd(n²²+n, (n+1)²))`
-/

namespace A156277.P745008777208045730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.gcd ((n ^ 2) ^ 2 + n) ((n + 1) ^ 2))

end

end A156277.P745008777208045730

namespace A156277

/-- `A008683(gcd(n²²+n, (n+1)²))` -/
def P745008777208045730.Spec : Prop :=
  ∀ n, P745008777208045730.a n = A156277 (n + 1)

end A156277

/-! ## A156277.P1890678743059644432

`A008683(4*(n+1)-lcm(3, n+1))`
-/

namespace A156277.P1890678743059644432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1) - Nat.lcm 3 (n + 1))

end

end A156277.P1890678743059644432

namespace A156277

/-- `A008683(4*(n+1)-lcm(3, n+1))` -/
def P1890678743059644432.Spec : Prop :=
  ∀ n, P1890678743059644432.a n = A156277 (n + 1)

end A156277

/-! ## A156277.P17689738236240693287

`C(2, n+3)-A008683(2*n+n+3)`
-/

namespace A156277.P17689738236240693287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 3) : ℤ) - A008683 (2 * n + (n + 3))

end

end A156277.P17689738236240693287

namespace A156277

/-- `C(2, n+3)-A008683(2*n+n+3)` -/
def P17689738236240693287.Spec : Prop :=
  ∀ n, P17689738236240693287.a n = A156277 (n + 1)

end A156277

/-! ## A156277.P14020682066941715941

`A008683(∑[∑[n+1]]%(n+1)+n+1)`
-/

namespace A156277.P14020682066941715941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) + (n + 1))

end

end A156277.P14020682066941715941

namespace A156277

/-- `A008683(∑[∑[n+1]]%(n+1)+n+1)` -/
def P14020682066941715941.Spec : Prop :=
  ∀ n, P14020682066941715941.a n = A156277 (n + 1)

end A156277

/-! ## A156277.P14526689853522211946

`A008683(A203648(n+1))`
-/

namespace A156277.P14526689853522211946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A203648 (n + 1)).toNat

end

end A156277.P14526689853522211946

namespace A156277

/-- `A008683(A203648(n+1))` -/
def P14526689853522211946.Spec : Prop :=
  ∀ n, P14526689853522211946.a n = A156277 (n + 1)

end A156277

/-! ## A156277.P14083972509444466553

`A049347(n)*A365428(n+1)`
-/

namespace A156277.P14083972509444466553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A365428 (n + 1)

end

end A156277.P14083972509444466553

namespace A156277

/-- `A049347(n)*A365428(n+1)` -/
def P14083972509444466553.Spec : Prop :=
  ∀ n, P14083972509444466553.a n = A156277 (n + 1)

end A156277

/-! ## A156277.P17496473699509021599

`A257075(n)*A365428(n+1)`
-/

namespace A156277.P17496473699509021599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 n * A365428 (n + 1)

end

end A156277.P17496473699509021599

namespace A156277

/-- `A257075(n)*A365428(n+1)` -/
def P17496473699509021599.Spec : Prop :=
  ∀ n, P17496473699509021599.a n = A156277 (n + 1)

end A156277

/-! ## A156277.P9695045703603940493

`A008683(n+1)%A132708(n)`
-/

namespace A156277.P9695045703603940493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008683 (n + 1)) (A132708 n)

end

end A156277.P9695045703603940493

namespace A156277

/-- `A008683(n+1)%A132708(n)` -/
def P9695045703603940493.Spec : Prop :=
  ∀ n, P9695045703603940493.a n = A156277 (n + 1)

end A156277

/-! ## A156277.P913386528961057702

`A085097(n+1)%A132708(n)`
-/

namespace A156277.P913386528961057702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085097 (n + 1)) (A132708 n)

end

end A156277.P913386528961057702

namespace A156277

/-- `A085097(n+1)%A132708(n)` -/
def P913386528961057702.Spec : Prop :=
  ∀ n, P913386528961057702.a n = A156277 (n + 1)

end A156277

/-!
# A156278: A higher order recursion triangle sequence: m=3;l=3;e(n,k,m)=(l*k + m - 1)e(n - 1, k, m) + (m*n - l*k + 1 - m)e(n - 1, k - 1, m).

The programs for A156278, there is no canonical definition to state claims against.
-/

/-! ## A156278.P3370233092027077979

`A224835(A321192(n))`
-/

namespace A156278.P3370233092027077979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224835 (A321192 n).toNat

end

end A156278.P3370233092027077979

/-!
# A156279: 4 times the Lucas number A000032(n).

The programs for A156279, the canonical program `A156279.P9077705383115846954` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156279 has offset 0).

The definition of A156279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A156279.P9077705383115846954

`a(n-1)+a(n-2)` with `a(0)=8, a(1)=4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156279

/-- `a(n-1)+a(n-2)` -/
def P9077705383115846954.Spec : Prop :=
  ∀ n, (P9077705383115846954.a n : ℤ) = A156279 n

theorem P9077705383115846954.correct : P9077705383115846954.Spec := by
  intro n
  simp only [A156279]

end A156279

/-! ## A156279.P18128034786933148277

`4*A000032(n)`
-/

namespace A156279.P18128034786933148277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000032 n

end

end A156279.P18128034786933148277

namespace A156279

/-- `4*A000032(n)` -/
def P18128034786933148277.Spec : Prop :=
  ∀ n, P18128034786933148277.a n = A156279 n

end A156279

/-! ## A156279.P17178261865020640135

`ogf((-8+4x)/(-1+x+x^2))`
-/

namespace A156279.P17178261865020640135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -4] [1, -1, -1] n

end

end A156279.P17178261865020640135

namespace A156279

/-- `ogf((-8+4x)/(-1+x+x^2))` -/
def P17178261865020640135.Spec : Prop :=
  ∀ n, P17178261865020640135.a n = A156279 n

end A156279

/-! ## A156279.P15504963512152519472

`a(n-1)-floor(-a(n-2))` with `a(0)=8, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A156279.P15504963512152519472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 4] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A156279.P15504963512152519472

namespace A156279

/-- `a(n-1)-floor(-a(n-2))` -/
def P15504963512152519472.Spec : Prop :=
  ∀ n, P15504963512152519472.a n = A156279 n

end A156279

/-! ## A156279.P11530083476263986424

`a(n-1)-ceil(-a(n-2))` with `a(0)=8, a(1)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A156279.P11530083476263986424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 4] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A156279.P11530083476263986424

namespace A156279

/-- `a(n-1)-ceil(-a(n-2))` -/
def P11530083476263986424.Spec : Prop :=
  ∀ n, P11530083476263986424.a n = A156279 n

end A156279

/-! ## A156279.P14117449548281721305

`a(n-1)-round(-a(n-2))` with `a(0)=8, a(1)=4`

`round` is left out, it is the identity on integers.
-/

namespace A156279.P14117449548281721305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 4] fun n a =>
  a (n - 1) - (-a (n - 2))

end

end A156279.P14117449548281721305

namespace A156279

/-- `a(n-1)-round(-a(n-2))` -/
def P14117449548281721305.Spec : Prop :=
  ∀ n, P14117449548281721305.a n = A156279 n

end A156279

/-! ## A156279.P15429346586732688012

`2*a(n-1)-(a(n-1)-a(n-2))` with `a(0)=8, a(1)=4`
-/

namespace A156279.P15429346586732688012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 4] fun n a =>
  2 * a (n - 1) - (a (n - 1) - a (n - 2))

end

end A156279.P15429346586732688012

namespace A156279

/-- `2*a(n-1)-(a(n-1)-a(n-2))` -/
def P15429346586732688012.Spec : Prop :=
  ∀ n, P15429346586732688012.a n = A156279 n

end A156279

/-! ## A156279.P3642879908900532285

`a(n-1)-(a(n-1)%2-a(n-2))` with `a(0)=8, a(1)=4`
-/

namespace A156279.P3642879908900532285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 4] fun n a =>
  a (n - 1) - (Int.tmod (a (n - 1)) 2 - a (n - 2))

end

end A156279.P3642879908900532285

namespace A156279

/-- `a(n-1)-(a(n-1)%2-a(n-2))` -/
def P3642879908900532285.Spec : Prop :=
  ∀ n, P3642879908900532285.a n = A156279 n

end A156279

/-! ## A156279.P880960908927029984

`2*Δ[A022112(n)]`
-/

namespace A156279.P880960908927029984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A156279.P880960908927029984

namespace A156279

/-- `2*Δ[A022112(n)]` -/
def P880960908927029984.Spec : Prop :=
  ∀ n, P880960908927029984.a n = A156279 n

end A156279

/-! ## A156279.P1544135052605587648

`2*Δ[A022319(n)]`
-/

namespace A156279.P1544135052605587648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A156279.P1544135052605587648

namespace A156279

/-- `2*Δ[A022319(n)]` -/
def P1544135052605587648.Spec : Prop :=
  ∀ n, P1544135052605587648.a n = A156279 n

end A156279

/-! ## A156279.P8294665665564586878

`2*Δ[A168674(n)]`
-/

namespace A156279.P8294665665564586878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A156279.P8294665665564586878

namespace A156279

/-- `2*Δ[A168674(n)]` -/
def P8294665665564586878.Spec : Prop :=
  ∀ n, P8294665665564586878.a n = A156279 n

end A156279

/-! ## A156279.P6299245390374805819

`2*(A380821(n)-1)`
-/

namespace A156279.P6299245390374805819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A380821 n - 1)

end

end A156279.P6299245390374805819

namespace A156279

/-- `2*(A380821(n)-1)` -/
def P6299245390374805819.Spec : Prop :=
  ∀ n, P6299245390374805819.a n = A156279 n

end A156279

/-! ## A156279.P16609186406260047831

`4*(A001612(n)-1)`
-/

namespace A156279.P16609186406260047831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A001612 n - 1)

end

end A156279.P16609186406260047831

namespace A156279

/-- `4*(A001612(n)-1)` -/
def P16609186406260047831.Spec : Prop :=
  ∀ n, P16609186406260047831.a n = A156279 n

end A156279

/-! ## A156279.P12851670847701001278

`4*A329723(n+2)`
-/

namespace A156279.P12851670847701001278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A329723 (n + 2)

end

end A156279.P12851670847701001278

namespace A156279

/-- `4*A329723(n+2)` -/
def P12851670847701001278.Spec : Prop :=
  ∀ n, P12851670847701001278.a n = A156279 n

end A156279

/-! ## A156279.P1149853957688072107

`4*(A000211(n)-2)`
-/

namespace A156279.P1149853957688072107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A000211 n - 2)

end

end A156279.P1149853957688072107

namespace A156279

/-- `4*(A000211(n)-2)` -/
def P1149853957688072107.Spec : Prop :=
  ∀ n, P1149853957688072107.a n = A156279 n

end A156279

/-! ## A156279.P15576119703639365630

`4*A127218(2*n)`
-/

namespace A156279.P15576119703639365630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A127218 (2 * n)

end

end A156279.P15576119703639365630

namespace A156279

/-- `4*A127218(2*n)` -/
def P15576119703639365630.Spec : Prop :=
  ∀ n, P15576119703639365630.a n = A156279 n

end A156279

/-! ## A156279.P6530261656945810154

`4*A303427(2*n)`
-/

namespace A156279.P6530261656945810154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A303427 (2 * n)

end

end A156279.P6530261656945810154

namespace A156279

/-- `4*A303427(2*n)` -/
def P6530261656945810154.Spec : Prop :=
  ∀ n, P6530261656945810154.a n = A156279 n

end A156279

/-! ## A156279.P2965141927686276402

`4/5*A280154(n)`
-/

namespace A156279.P2965141927686276402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 5 * (A280154 n : ℚ)

end

end A156279.P2965141927686276402

namespace A156279

/-- `4/5*A280154(n)` -/
def P2965141927686276402.Spec : Prop :=
  ∀ n, P2965141927686276402.a n = (A156279 n : ℚ)

end A156279

/-! ## A156279.P5344810645527598055

`abs(4*A061084(n+1))`
-/

namespace A156279.P5344810645527598055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 * A061084 (n + 1)|

end

end A156279.P5344810645527598055

namespace A156279

/-- `abs(4*A061084(n+1))` -/
def P5344810645527598055.Spec : Prop :=
  ∀ n, P5344810645527598055.a n = A156279 n

end A156279

/-! ## A156279.P7855997961390986837

`4*A090244(2*n+1)`
-/

namespace A156279.P7855997961390986837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A090244 (2 * n + 1)

end

end A156279.P7855997961390986837

namespace A156279

/-- `4*A090244(2*n+1)` -/
def P7855997961390986837.Spec : Prop :=
  ∀ n, P7855997961390986837.a n = A156279 n

end A156279

/-!
# A156280: A higher order recursion triangle sequence: m=4;l=4;e(n,k,m)=(l*k + m - 1)e(n - 1, k, m) + (m*n - l*k + 1 - m)e(n - 1, k - 1, m).

The programs for A156280, there is no canonical definition to state claims against.
-/

/-! ## A156280.P6863674215981177644

`A292240(A114296(n))+A157273(n)`
-/

namespace A156280.P6863674215981177644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292240 (A114296 n).toNat + A157273 n

end

end A156280.P6863674215981177644

/-!
# A156283: Period 6: repeat [1, 2, 4, -4, -2, -1].

The programs for A156283, the canonical program `A156283.P1315199372255809000` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156283 has offset 0).

The definition of A156283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156283.P1315199372255809000

`-(4/a(n-3))` with `a(0)=1, a(1)=2, a(2)=4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156283

/-- `-(4/a(n-3))` -/
def P1315199372255809000.Spec : Prop :=
  ∀ n, P1315199372255809000.a n = (A156283 n : ℚ)

end A156283

/-!
# A156284: From every interval (2^(m-1), 2^m), m >= 3, we remove primes p for which 2^m-p is a prime that was not removed for smaller values of m; the sequence gives all remaining odd primes.

The programs for A156284, there is no canonical definition to state claims against.
-/

/-! ## A156284.P9430280319830469275

`∪[p?[8*n+3], A152451(n+1)]`
-/

namespace A156284.P9430280319830469275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A156284.P9430280319830469275

/-! ## A156284.P16493586742520277283

`∪[A007520(n+1), A152451(n+1)]`
-/

namespace A156284.P16493586742520277283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152451 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A156284.P16493586742520277283

/-! ## A156284.P224413927251770593

`∪[A152451(n+1), A163183(n+1)]`
-/

namespace A156284.P224413927251770593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A156284.P224413927251770593

/-! ## A156284.P5044564409313196903

`∪[A152451(n+1), A224383(n+1)]`
-/

namespace A156284.P5044564409313196903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A156284.P5044564409313196903

/-! ## A156284.P7501934305723362738

`∪[A152451(n+1), A294993(n+1)]`
-/

namespace A156284.P7501934305723362738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A156284.P7501934305723362738

/-!
# A156286: Triangle T(n, k) = (1/k^n)*Product_{j=1..n} ( (k-1)*(k+1)^j + 1 ), read by rows.

The programs for A156286, there is no canonical definition to state claims against.
-/

/-! ## A156286.P2708940520668229767

`A347046(∏[comp[∑[n]]])`
-/

namespace A156286.P2708940520668229767
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347046 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A156286.P2708940520668229767

/-!
# A156287: Numbers k such that 4*k-5 is a prime number.

The programs for A156287, the canonical program `A156287.P14892850201557753402` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156287 has offset 1).

The definition of A156287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156287.P8090114414335462776

`(p?[4*n-1]+5)/4`
-/

namespace A156287.P8090114414335462776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 5 : ℚ) / 4

end

end A156287.P8090114414335462776

namespace A156287

/-- `(p?[4*n-1]+5)/4` -/
def P8090114414335462776.Spec : Prop :=
  ∀ n, P8090114414335462776.a n = (A156287 (n + 1) : ℚ)

end A156287

/-! ## A156287.P14892850201557753402

`A005099(n+1)+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A156287

/-- `A005099(n+1)+1` -/
def P14892850201557753402.Spec : Prop :=
  ∀ n, P14892850201557753402.a n = A156287 (n + 1)

theorem P14892850201557753402.correct : P14892850201557753402.Spec := by
  intro n
  simp only [A156287, Nat.add_sub_cancel]

end A156287

/-! ## A156287.P15205122602133114636

`A095278(n+1)+2`
-/

namespace A156287.P15205122602133114636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1) + 2

end

end A156287.P15205122602133114636

namespace A156287

/-- `A095278(n+1)+2` -/
def P15205122602133114636.Spec : Prop :=
  ∀ n, P15205122602133114636.a n = A156287 (n + 1)

end A156287

/-! ## A156287.P4771899867708353312

`A089986(n+1)+3`
-/

namespace A156287.P4771899867708353312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 1) + 3

end

end A156287.P4771899867708353312

namespace A156287

/-- `A089986(n+1)+3` -/
def P4771899867708353312.Spec : Prop :=
  ∀ n, P4771899867708353312.a n = A156287 (n + 1)

theorem P4771899867708353312.correct : P4771899867708353312.Spec := by
  intro n
  simp only [A156287, Nat.add_sub_cancel, A156287.P4771899867708353312.a, A156287.P14892850201557753402.a, A005099, A005099.P16814233129974845155.a, A089986, A089986.P3429274986940726883.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156287

/-! ## A156287.P11195386867505558204

`A089257(n+1)/2`
-/

namespace A156287.P11195386867505558204
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089257 (n + 1) : ℚ) / 2

end

end A156287.P11195386867505558204

namespace A156287

/-- `A089257(n+1)/2` -/
def P11195386867505558204.Spec : Prop :=
  ∀ n, P11195386867505558204.a n = (A156287 (n + 1) : ℚ)

theorem P11195386867505558204.correct : P11195386867505558204.Spec := by
  intro n
  simp only [A156287, Nat.add_sub_cancel, A156287.P11195386867505558204.a, A156287.P14892850201557753402.a, A005099, A005099.P16814233129974845155.a, A089257, A089257.P243562782731200786.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, A089193, A089193.P2689755802632067634.a, A087915, A087915.P15618837605475670392.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156287

/-! ## A156287.P249024757966752186

`round(A090670(n+1)/2)`
-/

namespace A156287.P249024757966752186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A090670 (n + 1) : ℚ) / 2)

end

end A156287.P249024757966752186

namespace A156287

/-- `round(A090670(n+1)/2)` -/
def P249024757966752186.Spec : Prop :=
  ∀ n, P249024757966752186.a n = A156287 (n + 1)

end A156287

/-! ## A156287.P7704371360262575681

`A087915(n+1)/2+2`
-/

namespace A156287.P7704371360262575681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087915 (n + 1) : ℚ) / 2 + 2

end

end A156287.P7704371360262575681

namespace A156287

/-- `A087915(n+1)/2+2` -/
def P7704371360262575681.Spec : Prop :=
  ∀ n, P7704371360262575681.a n = (A156287 (n + 1) : ℚ)

theorem P7704371360262575681.correct : P7704371360262575681.Spec := by
  intro n
  simp only [A156287, Nat.add_sub_cancel, A156287.P7704371360262575681.a, A156287.P14892850201557753402.a, A005099, A005099.P16814233129974845155.a, A087915, A087915.P15618837605475670392.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156287

/-! ## A156287.P16632690848760710766

`(A089193(n+1)-1)/2`
-/

namespace A156287.P16632690848760710766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089193 (n + 1) - 1 : ℚ) / 2

end

end A156287.P16632690848760710766

namespace A156287

/-- `(A089193(n+1)-1)/2` -/
def P16632690848760710766.Spec : Prop :=
  ∀ n, P16632690848760710766.a n = (A156287 (n + 1) : ℚ)

theorem P16632690848760710766.correct : P16632690848760710766.Spec := by
  intro n
  simp only [A156287, Nat.add_sub_cancel, A156287.P16632690848760710766.a, A156287.P14892850201557753402.a, A005099, A005099.P16814233129974845155.a, A089193, A089193.P2689755802632067634.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, A087915, A087915.P15618837605475670392.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156287

/-! ## A156287.P15797214998503492563

`A090658(n+1)/4+1`
-/

namespace A156287.P15797214998503492563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090658 (n + 1) : ℚ) / 4 + 1

end

end A156287.P15797214998503492563

namespace A156287

/-- `A090658(n+1)/4+1` -/
def P15797214998503492563.Spec : Prop :=
  ∀ n, P15797214998503492563.a n = (A156287 (n + 1) : ℚ)

theorem P15797214998503492563.correct : P15797214998503492563.Spec := by
  intro n
  simp only [A156287, Nat.add_sub_cancel, A156287.P15797214998503492563.a, A156287.P14892850201557753402.a, A005099, A005099.P16814233129974845155.a, A090658, A090658.P13517223795634800117.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, A087915, A087915.P15618837605475670392.a, A089257, A089257.P243562782731200786.a, A089193, A089193.P2689755802632067634.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156287

/-! ## A156287.P16625119499793366056

`(A104635(n+1)+3)/2`
-/

namespace A156287.P16625119499793366056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104635 (n + 1) + 3 : ℚ) / 2

end

end A156287.P16625119499793366056

namespace A156287

/-- `(A104635(n+1)+3)/2` -/
def P16625119499793366056.Spec : Prop :=
  ∀ n, P16625119499793366056.a n = (A156287 (n + 1) : ℚ)

end A156287

/-! ## A156287.P223391195268627594

`(A089217(n+1)+3)/4`
-/

namespace A156287.P223391195268627594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089217 (n + 1) + 3 : ℚ) / 4

end

end A156287.P223391195268627594

namespace A156287

/-- `(A089217(n+1)+3)/4` -/
def P223391195268627594.Spec : Prop :=
  ∀ n, P223391195268627594.a n = (A156287 (n + 1) : ℚ)

theorem P223391195268627594.correct : P223391195268627594.Spec := by
  intro n
  simp only [A156287, Nat.add_sub_cancel, A156287.P223391195268627594.a, A156287.P14892850201557753402.a, A005099, A005099.P16814233129974845155.a, A089217, A089217.P8919220155031244683.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, A087915, A087915.P15618837605475670392.a, A089193, A089193.P2689755802632067634.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A156287

/-! ## A156287.P16774656565745755308

`(A190105(n+1)+4)/3`
-/

namespace A156287.P16774656565745755308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190105 (n + 1) + 4 : ℚ) / 3

end

end A156287.P16774656565745755308

namespace A156287

/-- `(A190105(n+1)+4)/3` -/
def P16774656565745755308.Spec : Prop :=
  ∀ n, P16774656565745755308.a n = (A156287 (n + 1) : ℚ)

end A156287

/-! ## A156287.P9811834494947854697

`(A002145(n+1)+5)/4`
-/

namespace A156287.P9811834494947854697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002145 (n + 1) + 5 : ℚ) / 4

end

end A156287.P9811834494947854697

namespace A156287

/-- `(A002145(n+1)+5)/4` -/
def P9811834494947854697.Spec : Prop :=
  ∀ n, P9811834494947854697.a n = (A156287 (n + 1) : ℚ)

end A156287

/-! ## A156287.P5502759199432033023

`A082076(n)+a(n-1)` with `a(0)=2`
-/

namespace A156287.P5502759199432033023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A082076 n + a (n - 1)

end

end A156287.P5502759199432033023

namespace A156287

/-- `A082076(n)+a(n-1)` -/
def P5502759199432033023.Spec : Prop :=
  ∀ n, P5502759199432033023.a n = A156287 (n + 1)

end A156287

/-! ## A156287.P2054209256334804867

`A022758(n+1)-A111215(n+1)`
-/

namespace A156287.P2054209256334804867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022758 (n + 1) - A111215 (n + 1)

end

end A156287.P2054209256334804867

namespace A156287

/-- `A022758(n+1)-A111215(n+1)` -/
def P2054209256334804867.Spec : Prop :=
  ∀ n, P2054209256334804867.a n = A156287 (n + 1)

end A156287

/-! ## A156287.P17145190471705833943

`A190105(n+1)-A087915(n+1)`
-/

namespace A156287.P17145190471705833943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190105 (n + 1) - A087915 (n + 1)

end

end A156287.P17145190471705833943

namespace A156287

/-- `A190105(n+1)-A087915(n+1)` -/
def P17145190471705833943.Spec : Prop :=
  ∀ n, P17145190471705833943.a n = A156287 (n + 1)

end A156287

/-! ## A156287.P17330889867687050125

`A090658(n+1)-A190105(n+1)`
-/

namespace A156287.P17330889867687050125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090658 (n + 1) - A190105 (n + 1)

end

end A156287.P17330889867687050125

namespace A156287

/-- `A090658(n+1)-A190105(n+1)` -/
def P17330889867687050125.Spec : Prop :=
  ∀ n, P17330889867687050125.a n = A156287 (n + 1)

end A156287

/-! ## A156287.P2351362063225061779

`A022758(n+1)+1-A005098(n+1)`
-/

namespace A156287.P2351362063225061779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022758 (n + 1) + (1 - A005098 (n + 1))

end

end A156287.P2351362063225061779

namespace A156287

/-- `A022758(n+1)+1-A005098(n+1)` -/
def P2351362063225061779.Spec : Prop :=
  ∀ n, P2351362063225061779.a n = A156287 (n + 1)

end A156287

/-! ## A156287.P5137952068143224809

`A005098(n+1)+1-A118480(n+1)`
-/

namespace A156287.P5137952068143224809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) + (1 - A118480 (n + 1))

end

end A156287.P5137952068143224809

namespace A156287

/-- `A005098(n+1)+1-A118480(n+1)` -/
def P5137952068143224809.Spec : Prop :=
  ∀ n, P5137952068143224809.a n = A156287 (n + 1)

end A156287

/-! ## A156287.P17983563194931755618

`A002145(n+1)+1-A190105(n+1)`
-/

namespace A156287.P17983563194931755618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1) + (1 - A190105 (n + 1))

end

end A156287.P17983563194931755618

namespace A156287

/-- `A002145(n+1)+1-A190105(n+1)` -/
def P17983563194931755618.Spec : Prop :=
  ∀ n, P17983563194931755618.a n = A156287 (n + 1)

end A156287

/-!
# A156288: Numbers n such that 4*n-5 is not a prime number.

The programs for A156288, the canonical program `A156288.P15180538053269533863` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156288 has offset 1).

The definition of A156288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156288.P15180538053269533863

`lt[1, ∑{e}[a(n-1)-4, #]]` with `a(0)=5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A156288

/-- `lt[1, ∑{e}[a(n-1)-4, #]]` -/
def P15180538053269533863.Spec : Prop :=
  ∀ n, (P15180538053269533863.a n : ℤ) = A156288 (n + 1)

theorem P15180538053269533863.correct : P15180538053269533863.Spec := by
  intro n
  simp only [A156288, Nat.add_sub_cancel]

end A156288

/-! ## A156288.P14910146909426651343

`A045752(n+1)+1`
-/

namespace A156288.P14910146909426651343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045752 (n + 1) + 1

end

end A156288.P14910146909426651343

namespace A156288

/-- `A045752(n+1)+1` -/
def P14910146909426651343.Spec : Prop :=
  ∀ n, P14910146909426651343.a n = A156288 (n + 1)

end A156288

/-! ## A156288.P2075361124724892720

`A095277(n+1)+2`
-/

namespace A156288.P2075361124724892720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095277 (n + 1) + 2

end

end A156288.P2075361124724892720

namespace A156288

/-- `A095277(n+1)+2` -/
def P2075361124724892720.Spec : Prop :=
  ∀ n, P2075361124724892720.a n = A156288 (n + 1)

end A156288

/-! ## A156288.P11251323115575305706

`A153086(n+1)+3`
-/

namespace A156288.P11251323115575305706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153086 (n + 1) + 3

end

end A156288.P11251323115575305706

namespace A156288

/-- `A153086(n+1)+3` -/
def P11251323115575305706.Spec : Prop :=
  ∀ n, P11251323115575305706.a n = A156288 (n + 1)

end A156288

/-! ## A156288.P10806353346435218805

`comp[A095278(n+1)]+2`
-/

namespace A156288.P10806353346435218805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A156288.P10806353346435218805

namespace A156288

/-- `comp[A095278(n+1)]+2` -/
def P10806353346435218805.Spec : Prop :=
  ∀ n, (P10806353346435218805.a n : ℤ) = A156288 (n + 1)

end A156288

/-! ## A156288.P15261560742536788038

`(A091236(n+1)+5)/4`
-/

namespace A156288.P15261560742536788038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091236 (n + 1) + 5 : ℚ) / 4

end

end A156288.P15261560742536788038

namespace A156288

/-- `(A091236(n+1)+5)/4` -/
def P15261560742536788038.Spec : Prop :=
  ∀ n, P15261560742536788038.a n = (A156288 (n + 1) : ℚ)

end A156288

/-! ## A156288.P6988741154406954955

`lt[1, A046067(n+1)]+2`
-/

namespace A156288.P6988741154406954955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046067 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A156288.P6988741154406954955

namespace A156288

/-- `lt[1, A046067(n+1)]+2` -/
def P6988741154406954955.Spec : Prop :=
  ∀ n, (P6988741154406954955.a n : ℤ) = A156288 (n + 1)

end A156288

/-! ## A156288.P3894119666497511802

`lt[1, A078703(n+1)]+2`
-/

namespace A156288.P3894119666497511802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078703 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A156288.P3894119666497511802

namespace A156288

/-- `lt[1, A078703(n+1)]+2` -/
def P3894119666497511802.Spec : Prop :=
  ∀ n, (P3894119666497511802.a n : ℤ) = A156288 (n + 1)

end A156288

/-! ## A156288.P7254654227287517493

`lt[1, A364082(n+1)]+2`
-/

namespace A156288.P7254654227287517493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364082 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A156288.P7254654227287517493

namespace A156288

/-- `lt[1, A364082(n+1)]+2` -/
def P7254654227287517493.Spec : Prop :=
  ∀ n, (P7254654227287517493.a n : ℤ) = A156288 (n + 1)

end A156288

/-! ## A156288.P11627257819891932987

`eq[1, A282026(2*n)]+2`
-/

namespace A156288.P11627257819891932987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282026 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A156288.P11627257819891932987

namespace A156288

/-- `eq[1, A282026(2*n)]+2` -/
def P11627257819891932987.Spec : Prop :=
  ∀ n, (P11627257819891932987.a n : ℤ) = A156288 (n + 1)

end A156288

/-! ## A156288.P15256847147965231071

`eq[1, A282194(2*n)]+2`
-/

namespace A156288.P15256847147965231071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282194 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A156288.P15256847147965231071

namespace A156288

/-- `eq[1, A282194(2*n)]+2` -/
def P15256847147965231071.Spec : Prop :=
  ∀ n, (P15256847147965231071.a n : ℤ) = A156288 (n + 1)

end A156288

/-! ## A156288.P5594720224718059317

`lt[2, A219252(2*n+1)]`
-/

namespace A156288.P5594720224718059317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219252 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A156288.P5594720224718059317

namespace A156288

/-- `lt[2, A219252(2*n+1)]` -/
def P5594720224718059317.Spec : Prop :=
  ∀ n, (P5594720224718059317.a n : ℤ) = A156288 (n + 1)

end A156288

/-! ## A156288.P229566133006917673

`comp[A089986(n+1)+1]+2`
-/

namespace A156288.P229566133006917673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A156288.P229566133006917673

namespace A156288

/-- `comp[A089986(n+1)+1]+2` -/
def P229566133006917673.Spec : Prop :=
  ∀ n, (P229566133006917673.a n : ℤ) = A156288 (n + 1)

end A156288

/-! ## A156288.P3212063096906226084

`eq[0, A101264(2*n+1)]+2`
-/

namespace A156288.P3212063096906226084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A156288.P3212063096906226084

namespace A156288

/-- `eq[0, A101264(2*n+1)]+2` -/
def P3212063096906226084.Spec : Prop :=
  ∀ n, (P3212063096906226084.a n : ℤ) = A156288 (n + 1)

end A156288

/-! ## A156288.P4253858079403857946

`lt[1, A016014(2*n+1)]+2`
-/

namespace A156288.P4253858079403857946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A156288.P4253858079403857946

namespace A156288

/-- `lt[1, A016014(2*n+1)]+2` -/
def P4253858079403857946.Spec : Prop :=
  ∀ n, (P4253858079403857946.a n : ℤ) = A156288 (n + 1)

end A156288

/-! ## A156288.P8266270516525412430

`lt[1, A040076(2*n+1)]+2`
-/

namespace A156288.P8266270516525412430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A156288.P8266270516525412430

namespace A156288

/-- `lt[1, A040076(2*n+1)]+2` -/
def P8266270516525412430.Spec : Prop :=
  ∀ n, (P8266270516525412430.a n : ℤ) = A156288 (n + 1)

end A156288

/-! ## A156288.P10116409926568794807

`lt[1, A060266(2*n+1)]+2`
-/

namespace A156288.P10116409926568794807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060266 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A156288.P10116409926568794807

namespace A156288

/-- `lt[1, A060266(2*n+1)]+2` -/
def P10116409926568794807.Spec : Prop :=
  ∀ n, (P10116409926568794807.a n : ℤ) = A156288 (n + 1)

end A156288

/-! ## A156288.P16830250145505891299

`eq[2, A087896(2*(n+1))]+2`
-/

namespace A156288.P16830250145505891299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087896 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A156288.P16830250145505891299

namespace A156288

/-- `eq[2, A087896(2*(n+1))]+2` -/
def P16830250145505891299.Spec : Prop :=
  ∀ n, (P16830250145505891299.a n : ℤ) = A156288 (n + 1)

end A156288

/-! ## A156288.P1087991112405705425

`lt[A089367(2*n+1), 1]+2`
-/

namespace A156288.P1087991112405705425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089367 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A156288.P1087991112405705425

namespace A156288

/-- `lt[A089367(2*n+1), 1]+2` -/
def P1087991112405705425.Spec : Prop :=
  ∀ n, (P1087991112405705425.a n : ℤ) = A156288 (n + 1)

end A156288

/-! ## A156288.P12487426914099123875

`lt[1, A091304(2*(n+1))]+2`
-/

namespace A156288.P12487426914099123875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A156288.P12487426914099123875

namespace A156288

/-- `lt[1, A091304(2*(n+1))]+2` -/
def P12487426914099123875.Spec : Prop :=
  ∀ n, (P12487426914099123875.a n : ℤ) = A156288 (n + 1)

end A156288

/-!
# A156289: Triangle read by rows: T(n,k) is the number of end rhyme patterns of a poem of an even number of lines (2n) with 1<=k<=n evenly rhymed sounds.

The programs for A156289, there is no canonical definition to state claims against.
-/

/-! ## A156289.P4975572987562498607

`A001147(A002260(n+1))*A036969(n+1)`
-/

namespace A156289.P4975572987562498607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (A002260 (n + 1)).toNat * A036969 (n + 1)

end

end A156289.P4975572987562498607

/-! ## A156289.P8738974331570666878

`A241171(n+1)/A166350(n+1)`
-/

namespace A156289.P8738974331570666878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241171 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A156289.P8738974331570666878

/-! ## A156289.P4552383652849567454

`A241171(n+1)/A002260(n+1)!`
-/

namespace A156289.P4552383652849567454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241171 (n + 1) : ℚ) / (Nat.factorial (A002260 (n + 1)).toNat : ℚ)

end

end A156289.P4552383652849567454

/-! ## A156289.P3191949106530203674

`A241171(n+1)/A233543(A080036(n))`
-/

namespace A156289.P3191949106530203674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241171 (n + 1) : ℚ) / (A233543 (A080036 n).toNat : ℚ)

end

end A156289.P3191949106530203674

/-! ## A156289.P1424727731607437252

`A008277(n+1)/A019538(n+1)*A241171(n+1)`
-/

namespace A156289.P1424727731607437252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008277 (n + 1) : ℚ) / (A019538 (n + 1) : ℚ) * (A241171 (n + 1) : ℚ)

end

end A156289.P1424727731607437252

/-!
# A156290: Triangle read by rows: alternating binomial coefficients with signs.

The programs for A156290, there is no canonical definition to state claims against.
-/

/-! ## A156290.P707251338521482153

`A130595(eq[1, (floor(sqrt(8*n+1))+3)%4])`
-/

namespace A156290.P707251338521482153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (8 * n + 1) + 3) % 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A156290.P707251338521482153

/-! ## A156290.P13694902378303026851

`A111527(A185869(n+1))`
-/

namespace A156290.P13694902378303026851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111527 (A185869 (n + 1)).toNat

end

end A156290.P13694902378303026851

/-! ## A156290.P15832911164470740215

`A120616(A185871(n+1))`
-/

namespace A156290.P15832911164470740215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120616 (A185871 (n + 1)).toNat

end

end A156290.P15832911164470740215

/-! ## A156290.P11513959939491305668

`A091917(A292565(n+1))`
-/

namespace A156290.P11513959939491305668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091917 (A292565 (n + 1)).toNat

end

end A156290.P11513959939491305668

/-! ## A156290.P159706146316867187

`A130595(lt[A056023(n+1), n])`
-/

namespace A156290.P159706146316867187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056023 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A156290.P159706146316867187

/-!
# A156291: Triangle read by rows: T(n,m) = Product_{k=1..n} Phi(k, m+1) where Phi(k,m) is the k-th cyclotomic polynomial evaluated at m.

The programs for A156291, there is no canonical definition to state claims against.
-/

/-! ## A156291.P1775927630658987287

`A203848(∑[A067059(24*C(n, 4))])`
-/

namespace A156291.P1775927630658987287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067059 (24 * Nat.choose n 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203848 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A156291.P1775927630658987287

/-! ## A156291.P3680323312035053642

`∑[record[A006530(A212382(7*n+11))]]`
-/

namespace A156291.P3680323312035053642
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A212382 (7 * n + 11)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A156291.P3680323312035053642

/-!
# A156293: Denominator of Euler(n, 1/11).

The programs for A156293, there is no canonical definition to state claims against.
-/

/-! ## A156293.P15323956012103063350

`2^val(n+1, 2)*11^n`
-/

namespace A156293.P15323956012103063350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2 * 11 ^ n

end

end A156293.P15323956012103063350

/-! ## A156293.P7895428739764671795

`lcm(2^val(n+1, 2), 11^n)`
-/

namespace A156293.P7895428739764671795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 ^ SequenceMachineLib.valuation (n + 1) 2) (11 ^ n)

end

end A156293.P7895428739764671795

/-! ## A156293.P4342951994319479590

`11^n*and(n+1, -(n+1))`
-/

namespace A156293.P4342951994319479590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 ^ n : ℤ) * Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

end

end A156293.P4342951994319479590

/-! ## A156293.P5034341923846648441

`abs(11^n*Δ[xor(n, floor(n/2))])`
-/

namespace A156293.P5034341923846648441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(11 ^ n : ℤ) * (f1 (n + 1) - f1 n)|

end

end A156293.P5034341923846648441

/-! ## A156293.P12424530187469591358

`11^n*A006519(n+1)`
-/

namespace A156293.P12424530187469591358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (11 ^ n : ℤ) * A006519 (n + 1)

end

end A156293.P12424530187469591358

/-! ## A156293.P17365429054508783964

`lcm(11^n, A055975(n+1))`
-/

namespace A156293.P17365429054508783964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (11 ^ n : ℤ) (A055975 (n + 1))

end

end A156293.P17365429054508783964

/-! ## A156293.P10797720356753748973

`and(n+1, -(n+1))*A001020(n)`
-/

namespace A156293.P10797720356753748973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) * A001020 n

end

end A156293.P10797720356753748973

/-! ## A156293.P13625606356191967626

`11^n*gcd(A000225(n)+1, n+1)`
-/

namespace A156293.P13625606356191967626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 ^ n * Int.gcd (A000225 n + 1) (n + 1 : ℤ)

end

end A156293.P13625606356191967626

/-! ## A156293.P17181034636971263033

`abs(A055975(n+1))*A001020(n)`
-/

namespace A156293.P17181034636971263033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055975 (n + 1)| * A001020 n

end

end A156293.P17181034636971263033

/-! ## A156293.P14587877624202470554

`A171977(n+1)/2*A001020(n)`
-/

namespace A156293.P14587877624202470554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171977 (n + 1) : ℚ) / 2 * (A001020 n : ℚ)

end

end A156293.P14587877624202470554

/-!
# A156294: Sum of products of the digits of prime numbers and the position of the digits in the prime numbers.

The programs for A156294, there is no canonical definition to state claims against.
-/

/-! ## A156294.P962600923332629323

`A156207(A000040(n+1))`
-/

namespace A156294.P962600923332629323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156207 (A000040 (n + 1)).toNat

end

end A156294.P962600923332629323

/-! ## A156294.P14874380000577513918

`A156207(A008578(n+2))`
-/

namespace A156294.P14874380000577513918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156207 (A008578 (n + 2)).toNat

end

end A156294.P14874380000577513918

/-! ## A156294.P6277376449970089990

`A156207(A182986(n+2))`
-/

namespace A156294.P6277376449970089990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156207 (A182986 (n + 2)).toNat

end

end A156294.P6277376449970089990

/-! ## A156294.P8134126985166918953

`A156207(record[A006530(n+2)])`
-/

namespace A156294.P8134126985166918953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156207 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A156294.P8134126985166918953

/-! ## A156294.P4390369849659899547

`A156207(record[A020639(n+2)])`
-/

namespace A156294.P4390369849659899547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156207 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A156294.P4390369849659899547

/-! ## A156294.P13611050824063653746

`A156207(eq[1, A001222(n+1)]+1)`
-/

namespace A156294.P13611050824063653746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156207 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A156294.P13611050824063653746

/-! ## A156294.P10976297487154422741

`A156207(record[A014963(n+2)])`
-/

namespace A156294.P10976297487154422741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156207 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A156294.P10976297487154422741

/-! ## A156294.P6618529726965407268

`A156207(A142342(n+1))`
-/

namespace A156294.P6618529726965407268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156207 (A142342 (n + 1)).toNat

end

end A156294.P6618529726965407268

/-!
# A156296: a(1)=1, a(n) = 2 * Sum_{k=1..n-1} (3^k-1)/2 * a(k) for n>=2.

The programs for A156296, there is no canonical definition to state claims against.
-/

/-! ## A156296.P5810694559463381727

`∏[ceil(3^n/2)]`
-/

namespace A156296.P5810694559463381727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 ^ n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A156296.P5810694559463381727

/-! ## A156296.P8860363188782020493

`and(∏[∑[ceil(3^(n-1))]], -1)`
-/

namespace A156296.P8860363188782020493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∏ j ∈ Finset.range (n + 1), f1 j) (-1)

end

end A156296.P8860363188782020493

/-! ## A156296.P13168849624937251702

`ceil(3^n/2)*a(n-1)` with `a(0)=1`
-/

namespace A156296.P13168849624937251702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(3 ^ n : ℚ) / 2⌉ * a (n - 1)

end

end A156296.P13168849624937251702

/-! ## A156296.P11897288474047225198

`abs(∏[-xor(1, 3*a(n-1))])` with `a(0)=1`
-/

namespace A156296.P11897288474047225198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -Int.xor 1 (3 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A156296.P11897288474047225198

/-! ## A156296.P8699297995673053586

`lcm((-1)^n, ∏[∑[ceil(3^(n-1))]])`
-/

namespace A156296.P8699297995673053586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A156296.P8699297995673053586

/-!
# A156297: Triangle T(n,k) read by rows. If n = k^2 then 1 else 0.

The programs for A156297, the canonical program `A156297.P17455290593663372909` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156297 has offset 1).

The definition of A156297 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156297.P6872563587918473304

`char[C((n+1)², 2)+n]`
-/

namespace A156297.P6872563587918473304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ 2) 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A156297.P6872563587918473304

namespace A156297

/-- `char[C((n+1)², 2)+n]` -/
def P6872563587918473304.Spec : Prop :=
  ∀ n, (P6872563587918473304.a n : ℤ) = A156297 (n + 1)

end A156297

/-! ## A156297.P393229967593512284

`char[∑[∑[6*n²]]+n]`
-/

namespace A156297.P393229967593512284
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A156297.P393229967593512284

namespace A156297

/-- `char[∑[∑[6*n²]]+n]` -/
def P393229967593512284.Spec : Prop :=
  ∀ n, (P393229967593512284.a n : ℤ) = A156297 (n + 1)

end A156297

/-! ## A156297.P4225045277295962997

`A000007(A358052(n+1)-A051731(n+1))`
-/

namespace A156297.P4225045277295962997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A358052 (n + 1) - A051731 (n + 1)).toNat

end

end A156297.P4225045277295962997

namespace A156297

/-- `A000007(A358052(n+1)-A051731(n+1))` -/
def P4225045277295962997.Spec : Prop :=
  ∀ n, P4225045277295962997.a n = A156297 (n + 1)

end A156297

/-! ## A156297.P10117940180204856539

`val(A037126(n+1), A000040(A054531(n+1)))`
-/

namespace A156297.P10117940180204856539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A037126 (n + 1)).toNat (A000040 (A054531 (n + 1)).toNat).toNat

end

end A156297.P10117940180204856539

namespace A156297

/-- `val(A037126(n+1), A000040(A054531(n+1)))` -/
def P10117940180204856539.Spec : Prop :=
  ∀ n, (P10117940180204856539.a n : ℤ) = A156297 (n + 1)

end A156297

/-! ## A156297.P17455290593663372909

`val(A001105(A002260(n+1)), A092283(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A156297

/-- `val(A001105(A002260(n+1)), A092283(n+1))` -/
def P17455290593663372909.Spec : Prop :=
  ∀ n, (P17455290593663372909.a n : ℤ) = A156297 (n + 1)

theorem P17455290593663372909.correct : P17455290593663372909.Spec := by
  intro n
  simp only [A156297, Nat.add_sub_cancel]

end A156297

/-! ## A156297.P3574334671077564714

`val(A004277(A002024(n+1)), A092283(n+1))`
-/

namespace A156297.P3574334671077564714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004277 (A002024 (n + 1)).toNat).toNat (A092283 (n + 1)).toNat

end

end A156297.P3574334671077564714

namespace A156297

/-- `val(A004277(A002024(n+1)), A092283(n+1))` -/
def P3574334671077564714.Spec : Prop :=
  ∀ n, (P3574334671077564714.a n : ℤ) = A156297 (n + 1)

end A156297

/-! ## A156297.P11564994492409043176

`A000007(xor(A002260(n+1), A054531(n+1)))`
-/

namespace A156297.P11564994492409043176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor (A002260 (n + 1)) (A054531 (n + 1))).toNat

end

end A156297.P11564994492409043176

namespace A156297

/-- `A000007(xor(A002260(n+1), A054531(n+1)))` -/
def P11564994492409043176.Spec : Prop :=
  ∀ n, P11564994492409043176.a n = A156297 (n + 1)

end A156297

/-! ## A156297.P8792484204728911115

`A000007(xor(A002260(n+1), A126988(n+1)))`
-/

namespace A156297.P8792484204728911115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor (A002260 (n + 1)) (A126988 (n + 1))).toNat

end

end A156297.P8792484204728911115

namespace A156297

/-- `A000007(xor(A002260(n+1), A126988(n+1)))` -/
def P8792484204728911115.Spec : Prop :=
  ∀ n, P8792484204728911115.a n = A156297 (n + 1)

end A156297

/-! ## A156297.P18317869246924157187

`A000007(xor(A010766(n+1), A127093(n+1)))`
-/

namespace A156297.P18317869246924157187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor (A010766 (n + 1)) (A127093 (n + 1))).toNat

end

end A156297.P18317869246924157187

namespace A156297

/-- `A000007(xor(A010766(n+1), A127093(n+1)))` -/
def P18317869246924157187.Spec : Prop :=
  ∀ n, P18317869246924157187.a n = A156297 (n + 1)

end A156297

/-! ## A156297.P7204004833849954676

`A000007(xor(A123275(n+1), A126988(n+1)))`
-/

namespace A156297.P7204004833849954676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor (A123275 (n + 1)) (A126988 (n + 1))).toNat

end

end A156297.P7204004833849954676

namespace A156297

/-- `A000007(xor(A123275(n+1), A126988(n+1)))` -/
def P7204004833849954676.Spec : Prop :=
  ∀ n, P7204004833849954676.a n = A156297 (n + 1)

end A156297

/-! ## A156297.P1894312212002710928

`A000007((n+1)%(A057944(n)+A054531(n+1)))`
-/

namespace A156297.P1894312212002710928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (n + 1 : ℤ) (A057944 n + A054531 (n + 1))).toNat

end

end A156297.P1894312212002710928

namespace A156297

/-- `A000007((n+1)%(A057944(n)+A054531(n+1)))` -/
def P1894312212002710928.Spec : Prop :=
  ∀ n, P1894312212002710928.a n = A156297 (n + 1)

end A156297

/-! ## A156297.P18224623330928079482

`val(2*(n+1), A005843(A057944(n)+A054531(n+1)))`
-/

namespace A156297.P18224623330928079482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * (n + 1)) (A005843 (A057944 n + A054531 (n + 1)).toNat).toNat

end

end A156297.P18224623330928079482

namespace A156297

/-- `val(2*(n+1), A005843(A057944(n)+A054531(n+1)))` -/
def P18224623330928079482.Spec : Prop :=
  ∀ n, (P18224623330928079482.a n : ℤ) = A156297 (n + 1)

end A156297

/-! ## A156297.P12646314243003966041

`A000007(xor(A049834(n+1), A307662(n+1)))`
-/

namespace A156297.P12646314243003966041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor (A049834 (n + 1)) (A307662 (n + 1))).toNat

end

end A156297.P12646314243003966041

namespace A156297

/-- `A000007(xor(A049834(n+1), A307662(n+1)))` -/
def P12646314243003966041.Spec : Prop :=
  ∀ n, P12646314243003966041.a n = A156297 (n + 1)

end A156297

/-! ## A156297.P14883735073988549209

`A000007(xor(A126988(n+1), A307662(n+1)))`
-/

namespace A156297.P14883735073988549209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor (A126988 (n + 1)) (A307662 (n + 1))).toNat

end

end A156297.P14883735073988549209

namespace A156297

/-- `A000007(xor(A126988(n+1), A307662(n+1)))` -/
def P14883735073988549209.Spec : Prop :=
  ∀ n, P14883735073988549209.a n = A156297 (n + 1)

end A156297

/-! ## A156297.P16860522849697800126

`A000007((2*n+1)%A094728(n+1))`
-/

namespace A156297.P16860522849697800126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (2 * n + 1 : ℤ) (A094728 (n + 1))).toNat

end

end A156297.P16860522849697800126

namespace A156297

/-- `A000007((2*n+1)%A094728(n+1))` -/
def P16860522849697800126.Spec : Prop :=
  ∀ n, P16860522849697800126.a n = A156297 (n + 1)

end A156297

/-! ## A156297.P9678399787674303816

`A000007(xor(A002024(n+1), A133819(n+1)))`
-/

namespace A156297.P9678399787674303816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor (A002024 (n + 1)) (A133819 (n + 1))).toNat

end

end A156297.P9678399787674303816

namespace A156297

/-- `A000007(xor(A002024(n+1), A133819(n+1)))` -/
def P9678399787674303816.Spec : Prop :=
  ∀ n, P9678399787674303816.a n = A156297 (n + 1)

end A156297

/-! ## A156297.P3287971571509079669

`A000007(xor(A097285(2*n+1)², A002024(n+1)))`
-/

namespace A156297.P3287971571509079669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor (A097285 (2 * n + 1) ^ 2) (A002024 (n + 1))).toNat

end

end A156297.P3287971571509079669

namespace A156297

/-- `A000007(xor(A097285(2*n+1)², A002024(n+1)))` -/
def P3287971571509079669.Spec : Prop :=
  ∀ n, P3287971571509079669.a n = A156297 (n + 1)

end A156297

/-! ## A156297.P16207992097605053758

`A000007(xor(2*n+1, A094728(n+1)))`
-/

namespace A156297.P16207992097605053758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.xor (2 * n + 1 : ℤ) (A094728 (n + 1))).toNat

end

end A156297.P16207992097605053758

namespace A156297

/-- `A000007(xor(2*n+1, A094728(n+1)))` -/
def P16207992097605053758.Spec : Prop :=
  ∀ n, P16207992097605053758.a n = A156297 (n + 1)

end A156297

/-! ## A156297.P11710481836284346273

`and(A175087(n+1), A271410(A005384(n+2)-3))`
-/

namespace A156297.P11710481836284346273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A175087 (n + 1)) (A271410 (A005384 (n + 2) - 3).toNat)

end

end A156297.P11710481836284346273

namespace A156297

/-- `and(A175087(n+1), A271410(A005384(n+2)-3))` -/
def P11710481836284346273.Spec : Prop :=
  ∀ n, P11710481836284346273.a n = A156297 (n + 1)

end A156297

/-! ## A156297.P11699498038696764102

`A014653(A210978(n))`
-/

namespace A156297.P11699498038696764102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014653 (A210978 n).toNat

end

end A156297.P11699498038696764102

namespace A156297

/-- `A014653(A210978(n))` -/
def P11699498038696764102.Spec : Prop :=
  ∀ n, P11699498038696764102.a n = A156297 (n + 1)

end A156297

/-!
# A156298: Primes where the first digit is greater than the second digit.

The programs for A156298, the canonical program `A156298.P2984020510876517705` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A156298 has offset 1).

The definition of A156298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 593 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A156298.P2984020510876517705

`p?[lt[n, A098488(n)]]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A156298

/-- `p?[lt[n, A098488(n)]]` -/
def P2984020510876517705.Spec : Prop :=
  ∀ n, (P2984020510876517705.a n : ℤ) = A156298 (n + 1)

theorem P2984020510876517705.correct : P2984020510876517705.Spec := by
  intro n
  simp only [A156298, Nat.add_sub_cancel]

end A156298

/-! ## A156298.P2829245175276664284

`lt[n, A098488(A047814(n))]`
-/

namespace A156298.P2829245175276664284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 (A047814 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A156298.P2829245175276664284

namespace A156298

/-- `lt[n, A098488(A047814(n))]` -/
def P2829245175276664284.Spec : Prop :=
  ∀ n, (P2829245175276664284.a n : ℤ) = A156298 (n + 1)

end A156298

/-! ## A156298.P4557892014384067110

`lt[A062584(n), A098488(n)]`
-/

namespace A156298.P4557892014384067110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A156298.P4557892014384067110

namespace A156298

/-- `lt[A062584(n), A098488(n)]` -/
def P4557892014384067110.Spec : Prop :=
  ∀ n, (P4557892014384067110.a n : ℤ) = A156298 (n + 1)

end A156298

/-! ## A156298.P4488864046249938860

`lt[n+1, A098488(A020639(n+1))]+1`
-/

namespace A156298.P4488864046249938860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 (A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A156298.P4488864046249938860

namespace A156298

/-- `lt[n+1, A098488(A020639(n+1))]+1` -/
def P4488864046249938860.Spec : Prop :=
  ∀ n, (P4488864046249938860.a n : ℤ) = A156298 (n + 1)

end A156298

/-! ## A156298.P11582103799135943797

`lt[A342768(A028310(n)), A098488(n)]`
-/

namespace A156298.P11582103799135943797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342768 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A156298.P11582103799135943797

namespace A156298

/-- `lt[A342768(A028310(n)), A098488(n)]` -/
def P11582103799135943797.Spec : Prop :=
  ∀ n, (P11582103799135943797.a n : ℤ) = A156298 (n + 1)

end A156298

/-!
# A156299: Primes where the first digit is greater than any other digit.

The programs for A156299, there is no canonical definition to state claims against.
-/

/-! ## A156299.P9169485001597760193

`A028867(A062399(n)+6)`
-/

namespace A156299.P9169485001597760193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028867 (A062399 n + 6).toNat

end

end A156299.P9169485001597760193

/-! ## A156299.P5467792287568492676

`A007947(p?[A296714(n+1)]²)`
-/

namespace A156299.P5467792287568492676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A156299.P5467792287568492676

/-! ## A156299.P14139887345025833737

`A052410(p?[A296714(n+1)]²)`
-/

namespace A156299.P14139887345025833737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat

end

end A156299.P14139887345025833737

/-! ## A156299.P7230962456540052549

`p?[A296714(n+1)%A296715(n)]`
-/

namespace A156299.P7230962456540052549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296714 (n + 1)) (A296715 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A156299.P7230962456540052549

/-! ## A156299.P5791282330236220041

`∩[A100725(n+1), A296714(n+1)]`
-/

namespace A156299.P5791282330236220041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100725 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296714 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A156299.P5791282330236220041

